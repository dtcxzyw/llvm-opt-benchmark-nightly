Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/backward_references?download=true
inline.NumInlined: 233
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZL27CreateBackwardReferencesDH5mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  %i.asn = icmp ult i64 %i.ash, 7
  br i1 %i.asn, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %.tr25.i = trunc nuw nsw i64 %i.ash to i32
  %i.aso = shl nuw nsw i32 %.tr25.i, 2
  %i.asp = lshr i32 158663784, %i.aso
  %i.asq = and i32 %i.asp, 15
  %i.asr = zext nneg i32 %i.asq to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.gg:                                            ; preds = %bb.ge
  %i.ass = icmp ult i64 %i.ask, 7
  br i1 %i.ass, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %.tr.i = trunc nuw nsw i64 %i.ask to i32
  %i.ast = shl nuw nsw i32 %.tr.i, 2
  %i.asu = lshr i32 266017486, %i.ast
  %i.asv = and i32 %i.asu, 15
  %i.asw = zext nneg i32 %i.asv to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.gi:                                            ; preds = %bb.gg
  %i.asx = load i32, ptr %i.bn, align 4, !tbaa !28
  %i.asy = sext i32 %i.asx to i64
  %i.asz = icmp eq i64 %.sroa.18423.1.ph, %i.asy
  br i1 %i.asz, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.ata = load i32, ptr %i.bo, align 4, !tbaa !28
  %i.atb = sext i32 %i.ata to i64
  %.not542 = icmp eq i64 %.sroa.18423.1.ph, %i.atb
  br i1 %.not542, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %split
  %i.atc = add i64 %.sroa.18423.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.gd, %bb.gh, %bb.gf, %bb.gi, %bb.gj, %bb.gk
  %.1.i238 = phi i64 [ %i.atc, %bb.gk ], [ 3, %bb.gj ], [ 1, %bb.gd ], [ %i.asw, %bb.gh ], [ %i.asr, %bb.gf ], [ 2, %bb.gi ] ; 5 uses
  %i.atd = icmp ule i64 %.sroa.18423.1.ph, %i.asd
  %i.ate = icmp ne i64 %.1.i238, 0
  %or.cond = and i1 %i.atd, %i.ate
  br i1 %or.cond, label %bb.gl, label %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit240

bb.gl:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.atf = load i32, ptr %i.bn, align 4, !tbaa !28
  store i32 %i.atf, ptr %i.bo, align 4, !tbaa !28
  %i.atg = load <2 x i32>, ptr %7, align 4, !tbaa !28 ; 3 uses
  store <2 x i32> %i.atg, ptr %i.bm, align 4, !tbaa !28
  %i.ath = trunc i64 %.sroa.18423.1.ph to i32     ; 4 uses
  store i32 %i.ath, ptr %7, align 4, !tbaa !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.ati = load i32, ptr %i.t, align 4, !tbaa !55, !alias.scope !222, !noalias !223 ; 2 uses
  %i.atj = icmp sgt i32 %i.ati, 4
  br i1 %i.atj, label %bb.gm, label %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit240

bb.gm:                                            ; preds = %bb.gl
  %i.atk = insertelement <4 x i32> poison, i32 %i.ath, i64 0
  %i.atl = shufflevector <4 x i32> %i.atk, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.atm = add nsw <4 x i32> %i.atl, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.atm, ptr %i.bp, align 4, !tbaa !28, !alias.scope !224, !noalias !222
  %i.atn = add nsw i32 %i.ath, -3
  store i32 %i.atn, ptr %i.bq, align 4, !tbaa !28, !alias.scope !224, !noalias !222
  %i.ato = add nsw i32 %i.ath, 3
  store i32 %i.ato, ptr %i.br, align 4, !tbaa !28, !alias.scope !224, !noalias !222
  %i.atp = icmp samesign ugt i32 %i.ati, 10
  br i1 %i.atp, label %bb.gn, label %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit240

bb.gn:                                            ; preds = %bb.gm
  %i.atq = shufflevector <2 x i32> %i.atg, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.atr = add nsw <4 x i32> %i.atq, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.atr, ptr %i.bs, align 4, !tbaa !28, !alias.scope !224, !noalias !222
  %i.ats = shufflevector <2 x i32> %i.atg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.att = add nsw <2 x i32> %i.ats, <i32 -3, i32 3>
  store <2 x i32> %i.att, ptr %i.bt, align 4, !tbaa !28, !alias.scope !224, !noalias !222
  br label %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit240

_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit240: ; preds = %bb.gc, %bb.gn, %bb.gm, %bb.gl, %_ZL19ComputeDistanceCodemmPKi.exit
  %.1.i238538 = phi i64 [ %.1.i238, %_ZL19ComputeDistanceCodemmPKi.exit ], [ %.1.i238, %bb.gn ], [ %.1.i238, %bb.gm ], [ %.1.i238, %bb.gl ], [ 0, %bb.gc ] ; 3 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %.0201909, i64 16 ; 3 uses
  %i.atv = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.atv, ptr %.0201909, align 4, !tbaa !94
  %i.atw = shl i32 %.sroa.42.1.ph, 25
  %i.atx = trunc i64 %.sroa.0415.1.ph to i32      ; 2 uses
  %i.aty = or i32 %i.atw, %i.atx
  %i.atz = getelementptr inbounds nuw i8, ptr %.0201909, i64 4
  store i32 %i.aty, ptr %i.atz, align 4, !tbaa !95
  %i.aua = load i32, ptr %i.bu, align 4, !tbaa !96
  %i.aub = zext i32 %i.aua to i64                 ; 2 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %.0201909, i64 14
  %i.aud = getelementptr inbounds nuw i8, ptr %.0201909, i64 8
  %i.aue = add nuw nsw i64 %i.aub, 16             ; 2 uses
  %i.auf = icmp ult i64 %.1.i238538, %i.aue
  br i1 %i.auf, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.go

bb.go:                                            ; preds = %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit240
  %i.aug = load i32, ptr %i.aw, align 8, !tbaa !97 ; 2 uses
  %i.auh = zext i32 %i.aug to i64                 ; 4 uses
  %i.aui = shl nuw i64 4, %i.auh
  %i.auj = add i64 %.1.i238538, -16
  %i.auk = sub i64 %i.auj, %i.aub
  %i.aul = add i64 %i.auk, %i.aui                 ; 4 uses
  %i.aum = trunc i64 %i.aul to i32
  %i.aun = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aum, i1 true)
  %i.auo = sub nsw i32 30, %i.aun
  %i.aup = zext i32 %i.auo to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.aug
  %i.auq = xor i32 %notmask.i, -1
  %i.aur = zext nneg i32 %i.auq to i64
  %i.aus = and i64 %i.aul, %i.aur
  %i.aut = lshr i64 %i.aul, %i.aup                ; 2 uses
  %i.auu = and i64 %i.aut, 1
  %i.auv = or disjoint i64 %i.auu, 2
  %i.auw = shl i64 %i.auv, %i.aup
  %i.aux = sub nsw i64 %i.aup, %i.auh             ; 2 uses
  %i.auy = shl nsw i64 %i.aux, 10
  %i.auz = shl nsw i64 %i.aux, 1
  %i.ava = or i64 %i.aut, 65534
  %i.avb = add i64 %i.auz, %i.ava
  %i.avc = shl i64 %i.avb, %i.auh
  %i.avd = add nuw nsw i64 %i.aus, %i.aue
  %i.ave = add i64 %i.avd, %i.avc
  %i.avf = or i64 %i.ave, %i.auy
  %i.avg = sub i64 %i.aul, %i.auw
  %i.avh = lshr i64 %i.avg, %i.auh
  %i.avi = trunc i64 %i.avh to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit240, %bb.go
  %.sink.in = phi i64 [ %i.avf, %bb.go ], [ %.1.i238538, %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit240 ]
  %storemerge.i = phi i32 [ %i.avi, %bb.go ], [ 0, %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit240 ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.auc, align 2, !tbaa !67
  store i32 %storemerge.i, ptr %i.aud, align 4, !tbaa !28
  %i.avj = add nsw i32 %.sroa.42.1.ph, %i.atx     ; 6 uses
  %i.avk = and i16 %.sink, 1023
  %i.avl = icmp eq i16 %i.avk, 0
  %i.avm = getelementptr inbounds nuw i8, ptr %.0201909, i64 12
  %i.avn = icmp ult i64 %.3.ph, 6
  br i1 %i.avn, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.avo = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.gq:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.avp = icmp ult i64 %.3.ph, 130
  br i1 %i.avp, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.avq = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.avr = trunc nuw nsw i64 %i.avq to i32
  %i.avs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.avr, i1 true)
  %i.avt = sub nuw nsw i32 30, %i.avs             ; 2 uses
  %i.avu = shl nuw nsw i32 %i.avt, 1
  %i.avv = zext nneg i32 %i.avu to i64
  %i.avw = zext nneg i32 %i.avt to i64
  %i.avx = lshr i64 %i.avq, %i.avw
  %i.avy = add nuw nsw i64 %i.avx, %i.avv
  %i.avz = trunc nuw nsw i64 %i.avy to i16
  %i.awa = add nuw nsw i16 %i.avz, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.gs:                                            ; preds = %bb.gq
  %i.awb = icmp ult i64 %.3.ph, 2114
  br i1 %i.awb, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.awc = add nsw i32 %i.atv, -66
  %i.awd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.awc, i1 true)
  %i.awe = trunc nuw nsw i32 %i.awd to i16
  %i.awf = sub nuw nsw i16 41, %i.awe
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.gu:                                            ; preds = %bb.gs
  %i.awg = icmp ult i64 %.3.ph, 6210
  br i1 %i.awg, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.awh = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.awh, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.gp, %bb.gr, %bb.gt, %bb.gu, %bb.gv
  %.0.i401 = phi i16 [ %i.avo, %bb.gp ], [ %i.awa, %bb.gr ], [ %i.awf, %bb.gt ], [ 21, %bb.gu ], [ %..i, %bb.gv ] ; 3 uses
  %i.awi = icmp ult i32 %i.avj, 10
  br i1 %i.awi, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit, label %bb.gw

bb.gw:                                            ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.awj = icmp ult i32 %i.avj, 134
  br i1 %i.awj, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %narrow = add nsw i32 %i.avj, -6                ; 2 uses
  %i.awk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.awl = sub nuw nsw i32 30, %i.awk             ; 2 uses
  %i.awm = shl nuw nsw i32 %i.awl, 1
  %i.awn = lshr i32 %narrow, %i.awl
  %i.awo = add i32 %i.awn, %i.awm
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.gy:                                            ; preds = %bb.gw
  %i.awp = icmp ult i32 %i.avj, 2118
  br i1 %i.awp, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1234, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1234: ; preds = %bb.gy
  %i.awq = add nsw i32 %i.avj, -70
  %i.awr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.awq, i1 true)
  %i.aws = trunc nuw nsw i32 %i.awr to i16
  %i.awt = sub nuw nsw i16 43, %i.aws
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, %bb.gx
  %.sink1366 = phi i32 [ %i.awo, %bb.gx ], [ %i.avj, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %.sink1365 = phi i16 [ 4, %bb.gx ], [ -2, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %i.awu = trunc i32 %.sink1366 to i16
  %i.awv = add nsw i16 %.sink1365, %i.awu         ; 4 uses
  %i.aww = icmp samesign ult i16 %.0.i401, 8
  %or.cond.i403 = and i1 %i.avl, %i.aww
  %i.awx = icmp ult i16 %i.awv, 16
  %or.cond5.i = and i1 %or.cond.i403, %i.awx
  br i1 %or.cond5.i, label %bb.gz, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.gz:                                            ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.awy = shl nuw nsw i16 %i.awv, 3
  %i.awz = and i16 %i.awy, 64
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread: ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1234, %bb.gy, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.0.i402532 = phi i16 [ %i.awv, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ], [ 23, %bb.gy ], [ %i.awt, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1234 ] ; 2 uses
  %i.axa = lshr i16 %.0.i402532, 3
  %i.axb = lshr i16 %.0.i401, 3
  %narrow.i404 = mul nuw nsw i16 %i.axb, 3
  %narrow21.i = add nuw nsw i16 %i.axa, %narrow.i404
  %i.axc = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.axd = shl nuw nsw i32 %i.axc, 1
  %i.axe = shl nuw nsw i32 %i.axc, 6
  %i.axf = add nuw nsw i32 %i.axe, 64
  %i.axg = lshr i32 5377344, %i.axd
  %i.axh = and i32 %i.axg, 192
  %i.axi = add nuw nsw i32 %i.axf, %i.axh
  %i.axj = trunc i32 %i.axi to i16
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit: ; preds = %bb.gz, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread
  %.0.i402533 = phi i16 [ %i.awv, %bb.gz ], [ %.0.i402532, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %.pn.i = phi i16 [ %i.awz, %bb.gz ], [ %i.axj, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %i.axk = and i16 %.0.i402533, 7
  %i.axl = shl nuw nsw i16 %.0.i401, 3
  %i.axm = and i16 %i.axl, 56
  %i.axn = or disjoint i16 %i.axk, %i.axm
  %.0.i405 = or disjoint i16 %i.axn, %.pn.i
  store i16 %.0.i405, ptr %i.avm, align 4, !tbaa !67
  %i.axo = load i64, ptr %11, align 8, !tbaa !50
  %i.axp = add i64 %i.axo, %.3.ph
  store i64 %i.axp, ptr %11, align 8, !tbaa !50
  %i.axq = add i64 %.3197.ph, 2                   ; 2 uses
  %i.axr = add i64 %.3197.ph, %.sroa.0415.1.ph    ; 5 uses
  %i.axs = tail call noundef i64 @llvm.umin.i64(i64 %i.axr, i64 %spec.select) ; 5 uses
  %i.axt = lshr i64 %.sroa.0415.1.ph, 2
  %i.axu = icmp ult i64 %.sroa.18423.1.ph, %i.axt
  br i1 %i.axu, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.axv = shl nuw i64 %.sroa.18423.1.ph, 2
  %i.axw = sub i64 %i.axr, %i.axv
  %i.axx = tail call noundef i64 @llvm.umax.i64(i64 %i.axq, i64 %i.axw)
  %i.axy = tail call noundef i64 @llvm.umin.i64(i64 %i.axs, i64 %i.axx)
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %.0 = phi i64 [ %i.axy, %bb.ha ], [ %i.axq, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit ] ; 7 uses
  %i.axz = icmp ult i64 %.0, %i.axs
  br i1 %i.axz, label %.lr.ph908, label %_ZN13duckdb_brotliL12StoreRangeH5EPNS_2H5EPKhmmm.exit

.lr.ph908:                                        ; preds = %bb.hb
  %i.aya = load i32, ptr %i.bc, align 8, !tbaa !64, !alias.scope !225, !noalias !226 ; 3 uses
  %i.ayb = load i32, ptr %i.bf, align 4, !tbaa !69, !alias.scope !225, !noalias !226 ; 3 uses
  %i.ayc = load i32, ptr %i.bd, align 8, !tbaa !65, !alias.scope !225, !noalias !226 ; 3 uses
  %i.ayd = sub nuw i64 %i.axs, %.0
  %.neg1619 = add i64 %.0, 1
  %xtraiter = and i64 %i.ayd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph908
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.aye = and i64 %.0, %3
  %i.ayf = getelementptr inbounds nuw i8, ptr %2, i64 %i.aye
  %.val407.prol = load i32, ptr %i.ayf, align 1
  %i.ayg = mul i32 %.val407.prol, 506832829
  %i.ayh = lshr i32 %i.ayg, %i.aya                ; 2 uses
  %i.ayi = zext i32 %i.ayh to i64
  %i.ayj = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ayi ; 2 uses
  %i.ayk = load i16, ptr %i.ayj, align 2, !tbaa !67, !noalias !225 ; 2 uses
  %i.ayl = zext i16 %i.ayk to i32
  %i.aym = and i32 %i.ayb, %i.ayl
  %i.ayn = zext nneg i32 %i.aym to i64
  %i.ayo = shl i32 %i.ayh, %i.ayc
  %i.ayp = zext i32 %i.ayo to i64
  %i.ayq = trunc i64 %.0 to i32
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ayn
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %i.ayr, i64 %i.ayp
  store i32 %i.ayq, ptr %i.ays, align 4, !tbaa !28, !noalias !225
  %i.ayt = add i16 %i.ayk, 1
  store i16 %i.ayt, ptr %i.ayj, align 2, !tbaa !67, !noalias !225
  %i.ayu = add nuw i64 %.0, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph908
  %.0.i239906.unr = phi i64 [ %.0, %.lr.ph908 ], [ %i.ayu, %.prol.loopexit.unr-lcssa ]
  %i.ayv = icmp eq i64 %i.axs, %.neg1619
  br i1 %i.ayv, label %_ZN13duckdb_brotliL12StoreRangeH5EPNS_2H5EPKhmmm.exit, label %.lr.ph908.new

.lr.ph908.new:                                    ; preds = %.prol.loopexit, %.lr.ph908.new
  %.0.i239906 = phi i64 [ %i.bad, %.lr.ph908.new ], [ %.0.i239906.unr, %.prol.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.ayw = and i64 %.0.i239906, %3
  %i.ayx = getelementptr inbounds nuw i8, ptr %2, i64 %i.ayw
  %.val407 = load i32, ptr %i.ayx, align 1
  %i.ayy = mul i32 %.val407, 506832829
  %i.ayz = lshr i32 %i.ayy, %i.aya                ; 2 uses
  %i.aza = zext i32 %i.ayz to i64
  %i.azb = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.aza ; 2 uses
  %i.azc = load i16, ptr %i.azb, align 2, !tbaa !67, !noalias !225 ; 2 uses
  %i.azd = zext i16 %i.azc to i32
  %i.aze = and i32 %i.ayb, %i.azd
  %i.azf = zext nneg i32 %i.aze to i64
  %i.azg = shl i32 %i.ayz, %i.ayc
  %i.azh = zext i32 %i.azg to i64
  %i.azi = trunc i64 %.0.i239906 to i32
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.azf
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.azj, i64 %i.azh
  store i32 %i.azi, ptr %i.azk, align 4, !tbaa !28, !noalias !225
  %i.azl = add i16 %i.azc, 1
  store i16 %i.azl, ptr %i.azb, align 2, !tbaa !67, !noalias !225
  %i.azm = add nuw i64 %.0.i239906, 1             ; 2 uses
  %i.azn = and i64 %i.azm, %3
  %i.azo = getelementptr inbounds nuw i8, ptr %2, i64 %i.azn
  %.val407.1 = load i32, ptr %i.azo, align 1
  %i.azp = mul i32 %.val407.1, 506832829
  %i.azq = lshr i32 %i.azp, %i.aya                ; 2 uses
  %i.azr = zext i32 %i.azq to i64
  %i.azs = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.azr ; 2 uses
  %i.azt = load i16, ptr %i.azs, align 2, !tbaa !67, !noalias !227 ; 2 uses
  %i.azu = zext i16 %i.azt to i32
  %i.azv = and i32 %i.ayb, %i.azu
  %i.azw = zext nneg i32 %i.azv to i64
  %i.azx = shl i32 %i.azq, %i.ayc
  %i.azy = zext i32 %i.azx to i64
  %i.azz = trunc i64 %i.azm to i32
  %i.baa = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.azw
  %i.bab = getelementptr inbounds nuw [4 x i8], ptr %i.baa, i64 %i.azy
  store i32 %i.azz, ptr %i.bab, align 4, !tbaa !28, !noalias !227
  %i.bac = add i16 %i.azt, 1
  store i16 %i.bac, ptr %i.azs, align 2, !tbaa !67, !noalias !227
  %i.bad = add nuw i64 %.0.i239906, 2             ; 2 uses
  %exitcond1010.not.1 = icmp eq i64 %i.bad, %i.axs
  br i1 %exitcond1010.not.1, label %_ZN13duckdb_brotliL12StoreRangeH5EPNS_2H5EPKhmmm.exit, label %.lr.ph908.new, !llvm.loop !6

bb.hc:                                            ; preds = %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit235
  %i.bae = add i64 %.0191911, 1                   ; 5 uses
  %i.baf = add i64 %.0194910, 1                   ; 9 uses
  %i.bag = icmp ugt i64 %i.baf, %.0189912
  br i1 %i.bag, label %bb.hd, label %_ZN13duckdb_brotliL12StoreRangeH5EPNS_2H5EPKhmmm.exit

bb.hd:                                            ; preds = %bb.hc
  %i.bah = add i64 %.0189912, %i.bk
  %i.bai = icmp ugt i64 %i.baf, %i.bah
  br i1 %i.bai, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %bb.hd
  %i.baj = add i64 %.0194910, 17
  %i.bak = tail call noundef i64 @llvm.umin.i64(i64 %i.baj, i64 %i.bl) ; 2 uses
  %i.bal = icmp ult i64 %i.baf, %i.bak
  br i1 %i.bal, label %.lr.ph756, label %_ZN13duckdb_brotliL12StoreRangeH5EPNS_2H5EPKhmmm.exit

.lr.ph756:                                        ; preds = %bb.he
  %i.bam = load i32, ptr %i.bc, align 8, !tbaa !64, !alias.scope !228, !noalias !229
  %i.ban = load i32, ptr %i.bf, align 4, !tbaa !69, !alias.scope !228, !noalias !229
  %i.bao = load i32, ptr %i.bd, align 8, !tbaa !65, !alias.scope !228, !noalias !229
  br label %bb.hf

bb.hf:                                            ; preds = %.lr.ph756, %bb.hf
  %.4754 = phi i64 [ %i.bae, %.lr.ph756 ], [ %i.bbf, %bb.hf ]
  %.4198753 = phi i64 [ %i.baf, %.lr.ph756 ], [ %i.bbg, %bb.hf ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.bap = and i64 %.4198753, %3
  %i.baq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bap
  %.val = load i32, ptr %i.baq, align 1
  %i.bar = mul i32 %.val, 506832829
  %i.bas = lshr i32 %i.bar, %i.bam                ; 2 uses
  %i.bat = zext i32 %i.bas to i64
  %i.bau = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bat ; 2 uses
  %i.bav = load i16, ptr %i.bau, align 2, !tbaa !67, !noalias !228 ; 2 uses
  %i.baw = zext i16 %i.bav to i32
  %i.bax = and i32 %i.ban, %i.baw
  %i.bay = zext nneg i32 %i.bax to i64
  %i.baz = shl i32 %i.bas, %i.bao
  %i.bba = zext i32 %i.baz to i64
  %i.bbb = trunc i64 %.4198753 to i32
  %i.bbc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bay
  %i.bbd = getelementptr inbounds nuw [4 x i8], ptr %i.bbc, i64 %i.bba
  store i32 %i.bbb, ptr %i.bbd, align 4, !tbaa !28, !noalias !228
  %i.bbe = add i16 %i.bav, 1
  store i16 %i.bbe, ptr %i.bau, align 2, !tbaa !67, !noalias !228
  %i.bbf = add i64 %.4754, 4                      ; 2 uses
  %i.bbg = add i64 %.4198753, 4                   ; 3 uses
  %i.bbh = icmp ult i64 %i.bbg, %i.bak
  br i1 %i.bbh, label %bb.hf, label %_ZN13duckdb_brotliL12StoreRangeH5EPNS_2H5EPKhmmm.exit, !llvm.loop !187

bb.hg:                                            ; preds = %bb.hd
  %i.bbi = add i64 %.0194910, 9
  %i.bbj = tail call noundef i64 @llvm.umin.i64(i64 %i.bbi, i64 %i.k) ; 2 uses
  %i.bbk = icmp ult i64 %i.baf, %i.bbj
  br i1 %i.bbk, label %.lr.ph750, label %_ZN13duckdb_brotliL12StoreRangeH5EPNS_2H5EPKhmmm.exit
end_hunk_0
begin_hunk_1_@_ZL27CreateBackwardReferencesDH6mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  br i1 %i.asr, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %.tr25.i = trunc nuw nsw i64 %i.asl to i32
  %i.ass = shl nuw nsw i32 %.tr25.i, 2
  %i.ast = lshr i32 158663784, %i.ass
  %i.asu = and i32 %i.ast, 15
  %i.asv = zext nneg i32 %i.asu to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.gg:                                            ; preds = %bb.ge
  %i.asw = icmp ult i64 %i.aso, 7
  br i1 %i.asw, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %.tr.i = trunc nuw nsw i64 %i.aso to i32
  %i.asx = shl nuw nsw i32 %.tr.i, 2
  %i.asy = lshr i32 266017486, %i.asx
  %i.asz = and i32 %i.asy, 15
  %i.ata = zext nneg i32 %i.asz to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.gi:                                            ; preds = %bb.gg
  %i.atb = load i32, ptr %i.bm, align 4, !tbaa !28
  %i.atc = sext i32 %i.atb to i64
  %i.atd = icmp eq i64 %.sroa.18401.1.ph, %i.atc
  br i1 %i.atd, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.ate = load i32, ptr %i.bn, align 4, !tbaa !28
  %i.atf = sext i32 %i.ate to i64
  %.not520 = icmp eq i64 %.sroa.18401.1.ph, %i.atf
  br i1 %.not520, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %split
  %i.atg = add i64 %.sroa.18401.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.gd, %bb.gh, %bb.gf, %bb.gi, %bb.gj, %bb.gk
  %.1.i = phi i64 [ %i.atg, %bb.gk ], [ 3, %bb.gj ], [ 1, %bb.gd ], [ %i.ata, %bb.gh ], [ %i.asv, %bb.gf ], [ 2, %bb.gi ] ; 5 uses
  %i.ath = icmp ule i64 %.sroa.18401.1.ph, %i.ash
  %i.ati = icmp ne i64 %.1.i, 0
  %or.cond = and i1 %i.ath, %i.ati
  br i1 %or.cond, label %bb.gl, label %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit

bb.gl:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.atj = load i32, ptr %i.bm, align 4, !tbaa !28
  store i32 %i.atj, ptr %i.bn, align 4, !tbaa !28
  %i.atk = load <2 x i32>, ptr %7, align 4, !tbaa !28 ; 3 uses
  store <2 x i32> %i.atk, ptr %i.bl, align 4, !tbaa !28
  %i.atl = trunc i64 %.sroa.18401.1.ph to i32     ; 4 uses
  store i32 %i.atl, ptr %7, align 4, !tbaa !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.atm = load i32, ptr %i.t, align 8, !tbaa !99, !alias.scope !321, !noalias !322 ; 2 uses
  %i.atn = icmp sgt i32 %i.atm, 4
  br i1 %i.atn, label %bb.gm, label %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit

bb.gm:                                            ; preds = %bb.gl
  %i.ato = insertelement <4 x i32> poison, i32 %i.atl, i64 0
  %i.atp = shufflevector <4 x i32> %i.ato, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.atq = add nsw <4 x i32> %i.atp, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.atq, ptr %i.bo, align 4, !tbaa !28, !alias.scope !323, !noalias !321
  %i.atr = add nsw i32 %i.atl, -3
  store i32 %i.atr, ptr %i.bp, align 4, !tbaa !28, !alias.scope !323, !noalias !321
  %i.ats = add nsw i32 %i.atl, 3
  store i32 %i.ats, ptr %i.bq, align 4, !tbaa !28, !alias.scope !323, !noalias !321
  %i.att = icmp samesign ugt i32 %i.atm, 10
  br i1 %i.att, label %bb.gn, label %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit

bb.gn:                                            ; preds = %bb.gm
  %i.atu = shufflevector <2 x i32> %i.atk, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.atv = add nsw <4 x i32> %i.atu, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.atv, ptr %i.br, align 4, !tbaa !28, !alias.scope !323, !noalias !321
  %i.atw = shufflevector <2 x i32> %i.atk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.atx = add nsw <2 x i32> %i.atw, <i32 -3, i32 3>
  store <2 x i32> %i.atx, ptr %i.bs, align 4, !tbaa !28, !alias.scope !323, !noalias !321
  br label %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit

_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit: ; preds = %bb.gc, %bb.gn, %bb.gm, %bb.gl, %_ZL19ComputeDistanceCodemmPKi.exit
  %.1.i516 = phi i64 [ %.1.i, %_ZL19ComputeDistanceCodemmPKi.exit ], [ %.1.i, %bb.gn ], [ %.1.i, %bb.gm ], [ %.1.i, %bb.gl ], [ 0, %bb.gc ] ; 3 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %.0201887, i64 16 ; 3 uses
  %i.atz = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.atz, ptr %.0201887, align 4, !tbaa !94
  %i.aua = shl i32 %.sroa.42.1.ph, 25
  %i.aub = trunc i64 %.sroa.0393.1.ph to i32      ; 2 uses
  %i.auc = or i32 %i.aua, %i.aub
  %i.aud = getelementptr inbounds nuw i8, ptr %.0201887, i64 4
  store i32 %i.auc, ptr %i.aud, align 4, !tbaa !95
  %i.aue = load i32, ptr %i.bt, align 4, !tbaa !96
  %i.auf = zext i32 %i.aue to i64                 ; 2 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %.0201887, i64 14
  %i.auh = getelementptr inbounds nuw i8, ptr %.0201887, i64 8
  %i.aui = add nuw nsw i64 %i.auf, 16             ; 2 uses
  %i.auj = icmp ult i64 %.1.i516, %i.aui
  br i1 %i.auj, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.go

bb.go:                                            ; preds = %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit
  %i.auk = load i32, ptr %i.aw, align 8, !tbaa !97 ; 2 uses
  %i.aul = zext i32 %i.auk to i64                 ; 4 uses
  %i.aum = shl nuw i64 4, %i.aul
  %i.aun = add i64 %.1.i516, -16
  %i.auo = sub i64 %i.aun, %i.auf
  %i.aup = add i64 %i.auo, %i.aum                 ; 4 uses
  %i.auq = trunc i64 %i.aup to i32
  %i.aur = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.auq, i1 true)
  %i.aus = sub nsw i32 30, %i.aur
  %i.aut = zext i32 %i.aus to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.auk
  %i.auu = xor i32 %notmask.i, -1
  %i.auv = zext nneg i32 %i.auu to i64
  %i.auw = and i64 %i.aup, %i.auv
  %i.aux = lshr i64 %i.aup, %i.aut                ; 2 uses
  %i.auy = and i64 %i.aux, 1
  %i.auz = or disjoint i64 %i.auy, 2
  %i.ava = shl i64 %i.auz, %i.aut
  %i.avb = sub nsw i64 %i.aut, %i.aul             ; 2 uses
  %i.avc = shl nsw i64 %i.avb, 10
  %i.avd = shl nsw i64 %i.avb, 1
  %i.ave = or i64 %i.aux, 65534
  %i.avf = add i64 %i.avd, %i.ave
  %i.avg = shl i64 %i.avf, %i.aul
  %i.avh = add nuw nsw i64 %i.auw, %i.aui
  %i.avi = add i64 %i.avh, %i.avg
  %i.avj = or i64 %i.avi, %i.avc
  %i.avk = sub i64 %i.aup, %i.ava
  %i.avl = lshr i64 %i.avk, %i.aul
  %i.avm = trunc i64 %i.avl to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit, %bb.go
  %.sink.in = phi i64 [ %i.avj, %bb.go ], [ %.1.i516, %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit ]
  %storemerge.i = phi i32 [ %i.avm, %bb.go ], [ 0, %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.aug, align 2, !tbaa !67
  store i32 %storemerge.i, ptr %i.auh, align 4, !tbaa !28
  %i.avn = add nsw i32 %.sroa.42.1.ph, %i.aub     ; 6 uses
  %i.avo = and i16 %.sink, 1023
  %i.avp = icmp eq i16 %i.avo, 0
  %i.avq = getelementptr inbounds nuw i8, ptr %.0201887, i64 12
  %i.avr = icmp ult i64 %.3.ph, 6
  br i1 %i.avr, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.avs = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.gq:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.avt = icmp ult i64 %.3.ph, 130
  br i1 %i.avt, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.avu = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.avv = trunc nuw nsw i64 %i.avu to i32
  %i.avw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.avv, i1 true)
  %i.avx = sub nuw nsw i32 30, %i.avw             ; 2 uses
  %i.avy = shl nuw nsw i32 %i.avx, 1
  %i.avz = zext nneg i32 %i.avy to i64
  %i.awa = zext nneg i32 %i.avx to i64
  %i.awb = lshr i64 %i.avu, %i.awa
  %i.awc = add nuw nsw i64 %i.awb, %i.avz
  %i.awd = trunc nuw nsw i64 %i.awc to i16
  %i.awe = add nuw nsw i16 %i.awd, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.gs:                                            ; preds = %bb.gq
  %i.awf = icmp ult i64 %.3.ph, 2114
  br i1 %i.awf, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.awg = add nsw i32 %i.atz, -66
  %i.awh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.awg, i1 true)
  %i.awi = trunc nuw nsw i32 %i.awh to i16
  %i.awj = sub nuw nsw i16 41, %i.awi
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.gu:                                            ; preds = %bb.gs
  %i.awk = icmp ult i64 %.3.ph, 6210
  br i1 %i.awk, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.awl = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.awl, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.gp, %bb.gr, %bb.gt, %bb.gu, %bb.gv
  %.0.i274 = phi i16 [ %i.avs, %bb.gp ], [ %i.awe, %bb.gr ], [ %i.awj, %bb.gt ], [ 21, %bb.gu ], [ %..i, %bb.gv ] ; 3 uses
  %i.awm = icmp ult i32 %i.avn, 10
  br i1 %i.awm, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit, label %bb.gw

bb.gw:                                            ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.awn = icmp ult i32 %i.avn, 134
  br i1 %i.awn, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %narrow = add nsw i32 %i.avn, -6                ; 2 uses
  %i.awo = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.awp = sub nuw nsw i32 30, %i.awo             ; 2 uses
  %i.awq = shl nuw nsw i32 %i.awp, 1
  %i.awr = lshr i32 %narrow, %i.awp
  %i.aws = add i32 %i.awr, %i.awq
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.gy:                                            ; preds = %bb.gw
  %i.awt = icmp ult i32 %i.avn, 2118
  br i1 %i.awt, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1214, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1214: ; preds = %bb.gy
  %i.awu = add nsw i32 %i.avn, -70
  %i.awv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.awu, i1 true)
  %i.aww = trunc nuw nsw i32 %i.awv to i16
  %i.awx = sub nuw nsw i16 43, %i.aww
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, %bb.gx
  %.sink1346 = phi i32 [ %i.aws, %bb.gx ], [ %i.avn, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %.sink1345 = phi i16 [ 4, %bb.gx ], [ -2, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %i.awy = trunc i32 %.sink1346 to i16
  %i.awz = add nsw i16 %.sink1345, %i.awy         ; 4 uses
  %i.axa = icmp samesign ult i16 %.0.i274, 8
  %or.cond.i276 = and i1 %i.avp, %i.axa
  %i.axb = icmp ult i16 %i.awz, 16
  %or.cond5.i = and i1 %or.cond.i276, %i.axb
  br i1 %or.cond5.i, label %bb.gz, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.gz:                                            ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.axc = shl nuw nsw i16 %i.awz, 3
  %i.axd = and i16 %i.axc, 64
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread: ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1214, %bb.gy, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.0.i275510 = phi i16 [ %i.awz, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ], [ 23, %bb.gy ], [ %i.awx, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1214 ] ; 2 uses
  %i.axe = lshr i16 %.0.i275510, 3
  %i.axf = lshr i16 %.0.i274, 3
  %narrow.i = mul nuw nsw i16 %i.axf, 3
  %narrow21.i = add nuw nsw i16 %i.axe, %narrow.i
  %i.axg = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.axh = shl nuw nsw i32 %i.axg, 1
  %i.axi = shl nuw nsw i32 %i.axg, 6
  %i.axj = add nuw nsw i32 %i.axi, 64
  %i.axk = lshr i32 5377344, %i.axh
  %i.axl = and i32 %i.axk, 192
  %i.axm = add nuw nsw i32 %i.axj, %i.axl
  %i.axn = trunc i32 %i.axm to i16
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit: ; preds = %bb.gz, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread
  %.0.i275511 = phi i16 [ %i.awz, %bb.gz ], [ %.0.i275510, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %.pn.i = phi i16 [ %i.axd, %bb.gz ], [ %i.axn, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %i.axo = and i16 %.0.i275511, 7
  %i.axp = shl nuw nsw i16 %.0.i274, 3
  %i.axq = and i16 %i.axp, 56
  %i.axr = or disjoint i16 %i.axo, %i.axq
  %.0.i277 = or disjoint i16 %i.axr, %.pn.i
  store i16 %.0.i277, ptr %i.avq, align 4, !tbaa !67
  %i.axs = load i64, ptr %11, align 8, !tbaa !50
  %i.axt = add i64 %i.axs, %.3.ph
  store i64 %i.axt, ptr %11, align 8, !tbaa !50
  %i.axu = add i64 %.3197.ph, 2                   ; 2 uses
  %i.axv = add i64 %.3197.ph, %.sroa.0393.1.ph    ; 5 uses
  %i.axw = tail call noundef i64 @llvm.umin.i64(i64 %i.axv, i64 %spec.select) ; 5 uses
  %i.axx = lshr i64 %.sroa.0393.1.ph, 2
  %i.axy = icmp ult i64 %.sroa.18401.1.ph, %i.axx
  br i1 %i.axy, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.axz = shl nuw i64 %.sroa.18401.1.ph, 2
  %i.aya = sub i64 %i.axv, %i.axz
  %i.ayb = tail call noundef i64 @llvm.umax.i64(i64 %i.axu, i64 %i.aya)
  %i.ayc = tail call noundef i64 @llvm.umin.i64(i64 %i.axw, i64 %i.ayb)
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %.0 = phi i64 [ %i.ayc, %bb.ha ], [ %i.axu, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit ] ; 7 uses
  %i.ayd = icmp ult i64 %.0, %i.axw
  br i1 %i.ayd, label %.lr.ph886, label %_ZN13duckdb_brotliL12StoreRangeH6EPNS_2H6EPKhmmm.exit

.lr.ph886:                                        ; preds = %bb.hb
  %i.aye = load i64, ptr %i.bc, align 8, !tbaa !102, !alias.scope !324, !noalias !325 ; 3 uses
  %i.ayf = load i32, ptr %i.bf, align 8, !tbaa !105, !alias.scope !324, !noalias !325 ; 3 uses
  %i.ayg = load i32, ptr %i.bd, align 4, !tbaa !103, !alias.scope !324, !noalias !325
  %i.ayh = zext nneg i32 %i.ayg to i64            ; 3 uses
  %i.ayi = sub nuw i64 %i.axw, %.0
  %.neg1599 = add i64 %.0, 1
  %xtraiter = and i64 %i.ayi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph886
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.ayj = and i64 %.0, %3
  %i.ayk = getelementptr inbounds nuw i8, ptr %2, i64 %i.ayj
  %.0.copyload.i.i385.prol = load i64, ptr %i.ayk, align 1, !alias.scope !326, !noalias !324
  %i.ayl = mul i64 %.0.copyload.i.i385.prol, %i.aye
  %i.aym = lshr i64 %i.ayl, 49                    ; 2 uses
  %i.ayn = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.aym ; 2 uses
  %i.ayo = load i16, ptr %i.ayn, align 2, !tbaa !67, !noalias !324 ; 2 uses
  %i.ayp = zext i16 %i.ayo to i32
  %i.ayq = and i32 %i.ayf, %i.ayp
  %i.ayr = zext nneg i32 %i.ayq to i64
  %i.ays = shl i64 %i.aym, %i.ayh
  %i.ayt = add i16 %i.ayo, 1
  store i16 %i.ayt, ptr %i.ayn, align 2, !tbaa !67, !noalias !324
  %i.ayu = trunc i64 %.0 to i32
  %i.ayv = getelementptr [4 x i8], ptr %i.bb, i64 %i.ays
  %i.ayw = getelementptr [4 x i8], ptr %i.ayv, i64 %i.ayr
  store i32 %i.ayu, ptr %i.ayw, align 4, !tbaa !28, !noalias !324
  %i.ayx = add nuw i64 %.0, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph886
  %.0.i382884.unr = phi i64 [ %.0, %.lr.ph886 ], [ %i.ayx, %.prol.loopexit.unr-lcssa ]
  %i.ayy = icmp eq i64 %i.axw, %.neg1599
  br i1 %i.ayy, label %_ZN13duckdb_brotliL12StoreRangeH6EPNS_2H6EPKhmmm.exit, label %.lr.ph886.new

.lr.ph886.new:                                    ; preds = %.prol.loopexit, %.lr.ph886.new
  %.0.i382884 = phi i64 [ %i.bac, %.lr.ph886.new ], [ %.0.i382884.unr, %.prol.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.ayz = and i64 %.0.i382884, %3
  %i.aza = getelementptr inbounds nuw i8, ptr %2, i64 %i.ayz
  %.0.copyload.i.i385 = load i64, ptr %i.aza, align 1, !alias.scope !326, !noalias !324
  %i.azb = mul i64 %.0.copyload.i.i385, %i.aye
  %i.azc = lshr i64 %i.azb, 49                    ; 2 uses
  %i.azd = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.azc ; 2 uses
  %i.aze = load i16, ptr %i.azd, align 2, !tbaa !67, !noalias !324 ; 2 uses
  %i.azf = zext i16 %i.aze to i32
  %i.azg = and i32 %i.ayf, %i.azf
  %i.azh = zext nneg i32 %i.azg to i64
  %i.azi = shl i64 %i.azc, %i.ayh
  %i.azj = add i16 %i.aze, 1
  store i16 %i.azj, ptr %i.azd, align 2, !tbaa !67, !noalias !324
  %i.azk = trunc i64 %.0.i382884 to i32
  %i.azl = getelementptr [4 x i8], ptr %i.bb, i64 %i.azi
  %i.azm = getelementptr [4 x i8], ptr %i.azl, i64 %i.azh
  store i32 %i.azk, ptr %i.azm, align 4, !tbaa !28, !noalias !324
  %i.azn = add nuw i64 %.0.i382884, 1             ; 2 uses
  %i.azo = and i64 %i.azn, %3
  %i.azp = getelementptr inbounds nuw i8, ptr %2, i64 %i.azo
  %.0.copyload.i.i385.1 = load i64, ptr %i.azp, align 1, !alias.scope !326, !noalias !327
  %i.azq = mul i64 %.0.copyload.i.i385.1, %i.aye
  %i.azr = lshr i64 %i.azq, 49                    ; 2 uses
  %i.azs = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.azr ; 2 uses
  %i.azt = load i16, ptr %i.azs, align 2, !tbaa !67, !noalias !327 ; 2 uses
  %i.azu = zext i16 %i.azt to i32
  %i.azv = and i32 %i.ayf, %i.azu
  %i.azw = zext nneg i32 %i.azv to i64
  %i.azx = shl i64 %i.azr, %i.ayh
  %i.azy = add i16 %i.azt, 1
  store i16 %i.azy, ptr %i.azs, align 2, !tbaa !67, !noalias !327
  %i.azz = trunc i64 %i.azn to i32
  %i.baa = getelementptr [4 x i8], ptr %i.bb, i64 %i.azx
  %i.bab = getelementptr [4 x i8], ptr %i.baa, i64 %i.azw
  store i32 %i.azz, ptr %i.bab, align 4, !tbaa !28, !noalias !327
  %i.bac = add nuw i64 %.0.i382884, 2             ; 2 uses
  %exitcond988.not.1 = icmp eq i64 %i.bac, %i.axw
  br i1 %exitcond988.not.1, label %_ZN13duckdb_brotliL12StoreRangeH6EPNS_2H6EPKhmmm.exit, label %.lr.ph886.new, !llvm.loop !9

bb.hc:                                            ; preds = %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214
  %i.bad = add i64 %.0191889, 1                   ; 5 uses
  %i.bae = add i64 %.0194888, 1                   ; 9 uses
  %i.baf = icmp ugt i64 %i.bae, %.0189890
  br i1 %i.baf, label %bb.hd, label %_ZN13duckdb_brotliL12StoreRangeH6EPNS_2H6EPKhmmm.exit

bb.hd:                                            ; preds = %bb.hc
  %i.bag = add i64 %.0189890, %i.bk
  %i.bah = icmp ugt i64 %i.bae, %i.bag
  br i1 %i.bah, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %bb.hd
  %i.bai = add i64 %.0194888, 17
  %i.baj = tail call noundef i64 @llvm.umin.i64(i64 %i.bai, i64 %i.k) ; 2 uses
  %i.bak = icmp ult i64 %i.bae, %i.baj
  br i1 %i.bak, label %.lr.ph734, label %_ZN13duckdb_brotliL12StoreRangeH6EPNS_2H6EPKhmmm.exit

.lr.ph734:                                        ; preds = %bb.he
  %i.bal = load i32, ptr %i.bf, align 8, !tbaa !105, !alias.scope !328, !noalias !329
  %i.bam = load i32, ptr %i.bd, align 4, !tbaa !103, !alias.scope !328, !noalias !329
  %i.ban = zext nneg i32 %i.bam to i64
  br label %bb.hf

bb.hf:                                            ; preds = %.lr.ph734, %bb.hf
  %.4732 = phi i64 [ %i.bad, %.lr.ph734 ], [ %i.bbc, %bb.hf ]
  %.4198731 = phi i64 [ %i.bae, %.lr.ph734 ], [ %i.bbd, %bb.hf ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.bao = and i64 %.4198731, %3
  %i.bap = getelementptr inbounds nuw i8, ptr %2, i64 %i.bao
  %.0.copyload.i.i383 = load i64, ptr %i.bap, align 1, !alias.scope !330, !noalias !328
  %i.baq = mul i64 %.0.copyload.i.i383, %i.fb
  %i.bar = lshr i64 %i.baq, 49                    ; 2 uses
  %i.bas = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bar ; 2 uses
  %i.bat = load i16, ptr %i.bas, align 2, !tbaa !67, !noalias !328 ; 2 uses
  %i.bau = zext i16 %i.bat to i32
  %i.bav = and i32 %i.bal, %i.bau
  %i.baw = zext nneg i32 %i.bav to i64
  %i.bax = shl i64 %i.bar, %i.ban
  %i.bay = add i16 %i.bat, 1
  store i16 %i.bay, ptr %i.bas, align 2, !tbaa !67, !noalias !328
  %i.baz = trunc i64 %.4198731 to i32
  %i.bba = getelementptr [4 x i8], ptr %i.bb, i64 %i.bax
  %i.bbb = getelementptr [4 x i8], ptr %i.bba, i64 %i.baw
  store i32 %i.baz, ptr %i.bbb, align 4, !tbaa !28, !noalias !328
  %i.bbc = add i64 %.4732, 4                      ; 2 uses
  %i.bbd = add i64 %.4198731, 4                   ; 3 uses
  %i.bbe = icmp ult i64 %i.bbd, %i.baj
  br i1 %i.bbe, label %bb.hf, label %_ZN13duckdb_brotliL12StoreRangeH6EPNS_2H6EPKhmmm.exit, !llvm.loop !282

bb.hg:                                            ; preds = %bb.hd
  %i.bbf = add i64 %.0194888, 9
  %i.bbg = tail call noundef i64 @llvm.umin.i64(i64 %i.bbf, i64 %i.k) ; 2 uses
  %i.bbh = icmp ult i64 %i.bae, %i.bbg
  br i1 %i.bbh, label %.lr.ph728, label %_ZN13duckdb_brotliL12StoreRangeH6EPNS_2H6EPKhmmm.exit

.lr.ph728:                                        ; preds = %bb.hg
  %i.bbi = load i32, ptr %i.bf, align 8, !tbaa !105, !alias.scope !331, !noalias !332
  %i.bbj = load i32, ptr %i.bd, align 4, !tbaa !103, !alias.scope !331, !noalias !332
  %i.bbk = zext nneg i32 %i.bbj to i64
  br label %bb.hh

end_hunk_1
begin_hunk_2_@_ZL28CreateBackwardReferencesDH40mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  %.3.ph = phi i64 [ %.1192, %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit._crit_edge ], [ %i.axn, %bb.hl ] ; 9 uses
  %i.axs = shl i64 %.sroa.0406.1.ph, 1
  %i.axt = add i64 %i.axs, %i.p
  %i.axu = add i64 %i.axt, %.3197.ph              ; 2 uses
  %i.axv = add i64 %.pre-phi1015, %i.s            ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.18414.1.ph, %i.axv
  br i1 %.not.i, label %bb.hu, label %bb.hm

bb.hm:                                            ; preds = %split
  %i.axw = add i64 %.sroa.18414.1.ph, 3           ; 2 uses
  %i.axx = load i32, ptr %7, align 4, !tbaa !28
  %i.axy = sext i32 %i.axx to i64                 ; 2 uses
  %i.axz = sub i64 %i.axw, %i.axy                 ; 2 uses
  %i.aya = load i32, ptr %i.al, align 4, !tbaa !28
  %i.ayb = sext i32 %i.aya to i64                 ; 2 uses
  %i.ayc = sub i64 %i.axw, %i.ayb                 ; 2 uses
  %i.ayd = icmp eq i64 %.sroa.18414.1.ph, %i.axy
  br i1 %i.ayd, label %_ZL19ComputeDistanceCodemmPKi.exit.thread, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.aye = icmp eq i64 %.sroa.18414.1.ph, %i.ayb
  br i1 %i.aye, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.ayf = icmp ult i64 %i.axz, 7
  br i1 %i.ayf, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %.tr25.i = trunc nuw nsw i64 %i.axz to i32
  %i.ayg = shl nuw nsw i32 %.tr25.i, 2
  %i.ayh = lshr i32 158663784, %i.ayg
  %i.ayi = and i32 %i.ayh, 15
  %i.ayj = zext nneg i32 %i.ayi to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.hq:                                            ; preds = %bb.ho
  %i.ayk = icmp ult i64 %i.ayc, 7
  br i1 %i.ayk, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %.tr.i = trunc nuw nsw i64 %i.ayc to i32
  %i.ayl = shl nuw nsw i32 %.tr.i, 2
  %i.aym = lshr i32 266017486, %i.ayl
  %i.ayn = and i32 %i.aym, 15
  %i.ayo = zext nneg i32 %i.ayn to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.hs:                                            ; preds = %bb.hq
  %i.ayp = load i32, ptr %i.am, align 4, !tbaa !28
  %i.ayq = sext i32 %i.ayp to i64
  %i.ayr = icmp eq i64 %.sroa.18414.1.ph, %i.ayq
  br i1 %i.ayr, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.ays = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ayt = sext i32 %i.ays to i64
  %.not537 = icmp eq i64 %.sroa.18414.1.ph, %i.ayt
  br i1 %.not537, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %split
  %i.ayu = add i64 %.sroa.18414.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.hn, %bb.hr, %bb.hp, %bb.hs, %bb.ht, %bb.hu
  %.1.i = phi i64 [ %i.ayu, %bb.hu ], [ 3, %bb.ht ], [ 1, %bb.hn ], [ %i.ayo, %bb.hr ], [ %i.ayj, %bb.hp ], [ 2, %bb.hs ] ; 3 uses
  %i.ayv = icmp ule i64 %.sroa.18414.1.ph, %i.axv
  %i.ayw = icmp ne i64 %.1.i, 0
  %or.cond = and i1 %i.ayv, %i.ayw
  br i1 %or.cond, label %bb.hv, label %_ZL19ComputeDistanceCodemmPKi.exit.thread

bb.hv:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.ayx = load i32, ptr %i.am, align 4, !tbaa !28
  store i32 %i.ayx, ptr %i.an, align 4, !tbaa !28
  %i.ayy = load <2 x i32>, ptr %7, align 4, !tbaa !28
  store <2 x i32> %i.ayy, ptr %i.al, align 4, !tbaa !28
  %i.ayz = trunc i64 %.sroa.18414.1.ph to i32
  store i32 %i.ayz, ptr %7, align 4, !tbaa !28
  br label %_ZL19ComputeDistanceCodemmPKi.exit.thread

_ZL19ComputeDistanceCodemmPKi.exit.thread:        ; preds = %bb.hm, %bb.hv, %_ZL19ComputeDistanceCodemmPKi.exit
  %.1.i533 = phi i64 [ %.1.i, %_ZL19ComputeDistanceCodemmPKi.exit ], [ %.1.i, %bb.hv ], [ 0, %bb.hm ] ; 3 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %.0201889, i64 16 ; 2 uses
  %i.azb = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.azb, ptr %.0201889, align 4, !tbaa !94
  %i.azc = shl i32 %.sroa.42.1.ph, 25
  %i.azd = trunc i64 %.sroa.0406.1.ph to i32      ; 2 uses
  %i.aze = or i32 %i.azc, %i.azd
  %i.azf = getelementptr inbounds nuw i8, ptr %.0201889, i64 4
  store i32 %i.aze, ptr %i.azf, align 4, !tbaa !95
  %i.azg = load i32, ptr %i.ao, align 4, !tbaa !96
  %i.azh = zext i32 %i.azg to i64                 ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %.0201889, i64 14
  %i.azj = getelementptr inbounds nuw i8, ptr %.0201889, i64 8
  %i.azk = add nuw nsw i64 %i.azh, 16             ; 2 uses
  %i.azl = icmp ult i64 %.1.i533, %i.azk
  br i1 %i.azl, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.hw

bb.hw:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread
  %i.azm = load i32, ptr %i.aa, align 8, !tbaa !97 ; 2 uses
  %i.azn = zext i32 %i.azm to i64                 ; 4 uses
  %i.azo = shl nuw i64 4, %i.azn
  %i.azp = add i64 %.1.i533, -16
  %i.azq = sub i64 %i.azp, %i.azh
  %i.azr = add i64 %i.azq, %i.azo                 ; 4 uses
  %i.azs = trunc i64 %i.azr to i32
  %i.azt = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.azs, i1 true)
  %i.azu = sub nsw i32 30, %i.azt
  %i.azv = zext i32 %i.azu to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.azm
  %i.azw = xor i32 %notmask.i, -1
  %i.azx = zext nneg i32 %i.azw to i64
  %i.azy = and i64 %i.azr, %i.azx
  %i.azz = lshr i64 %i.azr, %i.azv                ; 2 uses
  %i.baa = and i64 %i.azz, 1
  %i.bab = or disjoint i64 %i.baa, 2
  %i.bac = shl i64 %i.bab, %i.azv
  %i.bad = sub nsw i64 %i.azv, %i.azn             ; 2 uses
  %i.bae = shl nsw i64 %i.bad, 10
  %i.baf = shl nsw i64 %i.bad, 1
  %i.bag = or i64 %i.azz, 65534
  %i.bah = add i64 %i.baf, %i.bag
  %i.bai = shl i64 %i.bah, %i.azn
  %i.baj = add nuw nsw i64 %i.azy, %i.azk
  %i.bak = add i64 %i.baj, %i.bai
  %i.bal = or i64 %i.bak, %i.bae
  %i.bam = sub i64 %i.azr, %i.bac
  %i.ban = lshr i64 %i.bam, %i.azn
  %i.bao = trunc i64 %i.ban to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread, %bb.hw
  %.sink.in = phi i64 [ %i.bal, %bb.hw ], [ %.1.i533, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %storemerge.i = phi i32 [ %i.bao, %bb.hw ], [ 0, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.azi, align 2, !tbaa !67
  store i32 %storemerge.i, ptr %i.azj, align 4, !tbaa !28
  %i.bap = add nsw i32 %.sroa.42.1.ph, %i.azd     ; 6 uses
  %i.baq = and i16 %.sink, 1023
  %i.bar = icmp eq i16 %i.baq, 0
  %i.bas = getelementptr inbounds nuw i8, ptr %.0201889, i64 12
  %i.bat = icmp ult i64 %.3.ph, 6
  br i1 %i.bat, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.bau = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.hy:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.bav = icmp ult i64 %.3.ph, 130
  br i1 %i.bav, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.baw = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.bax = trunc nuw nsw i64 %i.baw to i32
  %i.bay = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bax, i1 true)
  %i.baz = sub nuw nsw i32 30, %i.bay             ; 2 uses
  %i.bba = shl nuw nsw i32 %i.baz, 1
  %i.bbb = zext nneg i32 %i.bba to i64
  %i.bbc = zext nneg i32 %i.baz to i64
  %i.bbd = lshr i64 %i.baw, %i.bbc
  %i.bbe = add nuw nsw i64 %i.bbd, %i.bbb
  %i.bbf = trunc nuw nsw i64 %i.bbe to i16
  %i.bbg = add nuw nsw i16 %i.bbf, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.ia:                                            ; preds = %bb.hy
  %i.bbh = icmp ult i64 %.3.ph, 2114
  br i1 %i.bbh, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.bbi = add nsw i32 %i.azb, -66
  %i.bbj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bbi, i1 true)
  %i.bbk = trunc nuw nsw i32 %i.bbj to i16
  %i.bbl = sub nuw nsw i16 41, %i.bbk
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.ic:                                            ; preds = %bb.ia
  %i.bbm = icmp ult i64 %.3.ph, 6210
  br i1 %i.bbm, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.bbn = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.bbn, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.hx, %bb.hz, %bb.ib, %bb.ic, %bb.id
  %.0.i274 = phi i16 [ %i.bau, %bb.hx ], [ %i.bbg, %bb.hz ], [ %i.bbl, %bb.ib ], [ 21, %bb.ic ], [ %..i, %bb.id ] ; 3 uses
  %i.bbo = icmp ult i32 %i.bap, 10
  br i1 %i.bbo, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit, label %bb.ie

bb.ie:                                            ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.bbp = icmp ult i32 %i.bap, 134
  br i1 %i.bbp, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %narrow = add nsw i32 %i.bap, -6                ; 2 uses
  %i.bbq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.bbr = sub nuw nsw i32 30, %i.bbq             ; 2 uses
  %i.bbs = shl nuw nsw i32 %i.bbr, 1
  %i.bbt = lshr i32 %narrow, %i.bbr
  %i.bbu = add i32 %i.bbt, %i.bbs
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.ig:                                            ; preds = %bb.ie
  %i.bbv = icmp ult i32 %i.bap, 2118
  br i1 %i.bbv, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1257, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1257: ; preds = %bb.ig
  %i.bbw = add nsw i32 %i.bap, -70
  %i.bbx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bbw, i1 true)
  %i.bby = trunc nuw nsw i32 %i.bbx to i16
  %i.bbz = sub nuw nsw i16 43, %i.bby
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, %bb.if
  %.sink1426 = phi i32 [ %i.bbu, %bb.if ], [ %i.bap, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %.sink1425 = phi i16 [ 4, %bb.if ], [ -2, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %i.bca = trunc i32 %.sink1426 to i16
  %i.bcb = add nsw i16 %.sink1425, %i.bca         ; 4 uses
  %i.bcc = icmp samesign ult i16 %.0.i274, 8
  %or.cond.i276 = and i1 %i.bar, %i.bcc
  %i.bcd = icmp ult i16 %i.bcb, 16
  %or.cond5.i = and i1 %or.cond.i276, %i.bcd
  br i1 %or.cond5.i, label %bb.ih, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.ih:                                            ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.bce = shl nuw nsw i16 %i.bcb, 3
  %i.bcf = and i16 %i.bce, 64
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread: ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1257, %bb.ig, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.0.i275527 = phi i16 [ %i.bcb, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ], [ 23, %bb.ig ], [ %i.bbz, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1257 ] ; 2 uses
  %i.bcg = lshr i16 %.0.i275527, 3
  %i.bch = lshr i16 %.0.i274, 3
  %narrow.i = mul nuw nsw i16 %i.bch, 3
  %narrow21.i = add nuw nsw i16 %i.bcg, %narrow.i
  %i.bci = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.bcj = shl nuw nsw i32 %i.bci, 1
  %i.bck = shl nuw nsw i32 %i.bci, 6
  %i.bcl = add nuw nsw i32 %i.bck, 64
  %i.bcm = lshr i32 5377344, %i.bcj
  %i.bcn = and i32 %i.bcm, 192
  %i.bco = add nuw nsw i32 %i.bcl, %i.bcn
  %i.bcp = trunc i32 %i.bco to i16
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit: ; preds = %bb.ih, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread
  %.0.i275528 = phi i16 [ %i.bcb, %bb.ih ], [ %.0.i275527, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %.pn.i = phi i16 [ %i.bcf, %bb.ih ], [ %i.bcp, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %i.bcq = and i16 %.0.i275528, 7
  %i.bcr = shl nuw nsw i16 %.0.i274, 3
  %i.bcs = and i16 %i.bcr, 56
  %i.bct = or disjoint i16 %i.bcq, %i.bcs
  %.0.i277 = or disjoint i16 %i.bct, %.pn.i
  store i16 %.0.i277, ptr %i.bas, align 4, !tbaa !67
  %i.bcu = load i64, ptr %11, align 8, !tbaa !50
  %i.bcv = add i64 %i.bcu, %.3.ph
  store i64 %i.bcv, ptr %11, align 8, !tbaa !50
  %i.bcw = add i64 %.3197.ph, 2                   ; 2 uses
  %i.bcx = add i64 %.3197.ph, %.sroa.0406.1.ph    ; 4 uses
  %i.bcy = tail call noundef i64 @llvm.umin.i64(i64 %i.bcx, i64 %spec.select) ; 3 uses
  %i.bcz = lshr i64 %.sroa.0406.1.ph, 2
  %i.bda = icmp ult i64 %.sroa.18414.1.ph, %i.bcz
  br i1 %i.bda, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.bdb = shl nuw i64 %.sroa.18414.1.ph, 2
  %i.bdc = sub i64 %i.bcx, %i.bdb
  %i.bdd = tail call noundef i64 @llvm.umax.i64(i64 %i.bcw, i64 %i.bdc)
  %i.bde = tail call noundef i64 @llvm.umin.i64(i64 %i.bcy, i64 %i.bdd)
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %.0 = phi i64 [ %i.bde, %bb.ii ], [ %i.bcw, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit ] ; 2 uses
  %i.bdf = icmp ult i64 %.0, %i.bcy
  br i1 %i.bdf, label %.lr.ph886, label %_ZN13duckdb_brotliL13StoreRangeH40EPNS_3H40EPKhmmm.exit

.lr.ph886:                                        ; preds = %bb.ij
  %i.bdg = load ptr, ptr %i.ac, align 8, !tbaa !107, !alias.scope !423, !noalias !424 ; 3 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 131072
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdg, i64 196608
  %i.bdj = load ptr, ptr %i.ad, align 8, !tbaa !107, !alias.scope !423, !noalias !424
  %.promoted887 = load i16, ptr %i.a, align 8, !tbaa !67, !alias.scope !423, !noalias !424
  br label %bb.ik

bb.ik:                                            ; preds = %.lr.ph886, %bb.ik
  %i.bdk = phi i16 [ %.promoted887, %.lr.ph886 ], [ %i.bdq, %bb.ik ] ; 3 uses
  %.0.i389885 = phi i64 [ %.0, %.lr.ph886 ], [ %i.bef, %bb.ik ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.bdl = and i64 %.0.i389885, %3
  %i.bdm = getelementptr inbounds nuw i8, ptr %2, i64 %i.bdl
  %.0.copyload.i.i398 = load i32, ptr %i.bdm, align 1, !alias.scope !425, !noalias !423
  %i.bdn = mul i32 %.0.copyload.i.i398, 506832829
  %i.bdo = lshr i32 %i.bdn, 17                    ; 2 uses
  %i.bdp = zext nneg i32 %i.bdo to i64            ; 2 uses
  %i.bdq = add i16 %i.bdk, 1                      ; 2 uses
  %i.bdr = zext i16 %i.bdk to i64
  %i.bds = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %i.bdp ; 2 uses
  %i.bdt = load i32, ptr %i.bds, align 4, !tbaa !28, !noalias !423
  %i.bdu = zext i32 %i.bdt to i64
  %i.bdv = sub i64 %.0.i389885, %i.bdu
  %i.bdw = trunc i32 %i.bdo to i8
  %i.bdx = and i64 %.0.i389885, 65535
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdi, i64 %i.bdx
  store i8 %i.bdw, ptr %i.bdy, align 1, !tbaa !59, !noalias !423
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.bdv, i64 65535)
  %i.bdz = trunc nuw i64 %spec.store.select.i to i16
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %i.bdj, i64 %i.bdr ; 2 uses
  store i16 %i.bdz, ptr %i.bea, align 2, !tbaa !112, !noalias !423
  %i.beb = getelementptr inbounds nuw [2 x i8], ptr %i.bdh, i64 %i.bdp ; 2 uses
  %i.bec = load i16, ptr %i.beb, align 2, !tbaa !67, !noalias !423
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bea, i64 2
  store i16 %i.bec, ptr %i.bed, align 2, !tbaa !111, !noalias !423
  %i.bee = trunc i64 %.0.i389885 to i32
  store i32 %i.bee, ptr %i.bds, align 4, !tbaa !28, !noalias !423
  store i16 %i.bdk, ptr %i.beb, align 2, !tbaa !67, !noalias !423
  %i.bef = add nuw i64 %.0.i389885, 1             ; 2 uses
  %exitcond987.not = icmp eq i64 %i.bef, %i.bcy
  br i1 %exitcond987.not, label %_ZN13duckdb_brotliL13StoreRangeH40EPNS_3H40EPKhmmm.exit.sink.split, label %bb.ik, !llvm.loop !11

bb.il:                                            ; preds = %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214
  %i.beg = add i64 %.0191891, 1                   ; 5 uses
  %i.beh = add i64 %.0194890, 1                   ; 9 uses
  %i.bei = icmp ugt i64 %i.beh, %.0189892
  br i1 %i.bei, label %bb.im, label %_ZN13duckdb_brotliL13StoreRangeH40EPNS_3H40EPKhmmm.exit

bb.im:                                            ; preds = %bb.il
  %i.bej = add i64 %.0189892, %i.aj
  %i.bek = icmp ugt i64 %i.beh, %i.bej
  br i1 %i.bek, label %bb.in, label %bb.ip

bb.in:                                            ; preds = %bb.im
  %i.bel = add i64 %.0194890, 17
  %i.bem = tail call noundef i64 @llvm.umin.i64(i64 %i.bel, i64 %i.ak) ; 2 uses
  %i.ben = icmp ult i64 %i.beh, %i.bem
  br i1 %i.ben, label %.lr.ph742, label %_ZN13duckdb_brotliL13StoreRangeH40EPNS_3H40EPKhmmm.exit

.lr.ph742:                                        ; preds = %bb.in
  %i.beo = load ptr, ptr %i.ac, align 8, !tbaa !107, !alias.scope !426, !noalias !427 ; 3 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 131072
  %i.beq = getelementptr inbounds nuw i8, ptr %i.beo, i64 196608
  %i.ber = load ptr, ptr %i.ad, align 8, !tbaa !107, !alias.scope !426, !noalias !427
  %.promoted745 = load i16, ptr %i.a, align 8, !tbaa !67, !alias.scope !426, !noalias !427
  br label %bb.io

bb.io:                                            ; preds = %.lr.ph742, %bb.io
  %i.bes = phi i16 [ %.promoted745, %.lr.ph742 ], [ %i.bey, %bb.io ] ; 3 uses
  %.4741 = phi i64 [ %i.beg, %.lr.ph742 ], [ %i.bfn, %bb.io ]
  %.4198740 = phi i64 [ %i.beh, %.lr.ph742 ], [ %i.bfo, %bb.io ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.bet = and i64 %.4198740, %3
  %i.beu = getelementptr inbounds nuw i8, ptr %2, i64 %i.bet
  %.0.copyload.i.i394 = load i32, ptr %i.beu, align 1, !alias.scope !428, !noalias !426
  %i.bev = mul i32 %.0.copyload.i.i394, 506832829
  %i.bew = lshr i32 %i.bev, 17                    ; 2 uses
  %i.bex = zext nneg i32 %i.bew to i64            ; 2 uses
  %i.bey = add i16 %i.bes, 1                      ; 2 uses
  %i.bez = zext i16 %i.bes to i64
  %i.bfa = getelementptr inbounds nuw [4 x i8], ptr %i.beo, i64 %i.bex ; 2 uses
  %i.bfb = load i32, ptr %i.bfa, align 4, !tbaa !28, !noalias !426
  %i.bfc = zext i32 %i.bfb to i64
  %i.bfd = sub i64 %.4198740, %i.bfc
  %i.bfe = trunc i32 %i.bew to i8
  %i.bff = and i64 %.4198740, 65535
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.beq, i64 %i.bff
  store i8 %i.bfe, ptr %i.bfg, align 1, !tbaa !59, !noalias !426
  %spec.store.select.i393 = tail call i64 @llvm.umin.i64(i64 %i.bfd, i64 65535)
  %i.bfh = trunc nuw i64 %spec.store.select.i393 to i16
  %i.bfi = getelementptr inbounds nuw [4 x i8], ptr %i.ber, i64 %i.bez ; 2 uses
  store i16 %i.bfh, ptr %i.bfi, align 2, !tbaa !112, !noalias !426
  %i.bfj = getelementptr inbounds nuw [2 x i8], ptr %i.bep, i64 %i.bex ; 2 uses
  %i.bfk = load i16, ptr %i.bfj, align 2, !tbaa !67, !noalias !426
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfi, i64 2
  store i16 %i.bfk, ptr %i.bfl, align 2, !tbaa !111, !noalias !426
  %i.bfm = trunc i64 %.4198740 to i32
  store i32 %i.bfm, ptr %i.bfa, align 4, !tbaa !28, !noalias !426
  store i16 %i.bes, ptr %i.bfj, align 2, !tbaa !67, !noalias !426
  %i.bfn = add i64 %.4741, 4                      ; 2 uses
  %i.bfo = add i64 %.4198740, 4                   ; 3 uses
  %i.bfp = icmp ult i64 %i.bfo, %i.bem
  br i1 %i.bfp, label %bb.io, label %_ZN13duckdb_brotliL13StoreRangeH40EPNS_3H40EPKhmmm.exit.sink.split, !llvm.loop !379

bb.ip:                                            ; preds = %bb.im
  %i.bfq = add i64 %.0194890, 9
  %i.bfr = tail call noundef i64 @llvm.umin.i64(i64 %i.bfq, i64 %i.l) ; 2 uses
  %i.bfs = icmp ult i64 %i.beh, %i.bfr
  br i1 %i.bfs, label %.lr.ph736, label %_ZN13duckdb_brotliL13StoreRangeH40EPNS_3H40EPKhmmm.exit

.lr.ph736:                                        ; preds = %bb.ip
  %i.bft = load ptr, ptr %i.ac, align 8, !tbaa !107, !alias.scope !429, !noalias !430 ; 3 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 131072
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bft, i64 196608
  %i.bfw = load ptr, ptr %i.ad, align 8, !tbaa !107, !alias.scope !429, !noalias !430
  %.promoted739 = load i16, ptr %i.a, align 8, !tbaa !67, !alias.scope !429, !noalias !430
  br label %bb.iq

bb.iq:                                            ; preds = %.lr.ph736, %bb.iq
  %i.bfx = phi i16 [ %.promoted739, %.lr.ph736 ], [ %i.bgd, %bb.iq ] ; 3 uses
  %.5735 = phi i64 [ %i.beg, %.lr.ph736 ], [ %i.bgs, %bb.iq ]
  %.5199734 = phi i64 [ %i.beh, %.lr.ph736 ], [ %i.bgt, %bb.iq ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %i.bfy = and i64 %.5199734, %3
  %i.bfz = getelementptr inbounds nuw i8, ptr %2, i64 %i.bfy
  %.0.copyload.i.i395 = load i32, ptr %i.bfz, align 1, !alias.scope !431, !noalias !429
  %i.bga = mul i32 %.0.copyload.i.i395, 506832829
  %i.bgb = lshr i32 %i.bga, 17                    ; 2 uses
  %i.bgc = zext nneg i32 %i.bgb to i64            ; 2 uses
  %i.bgd = add i16 %i.bfx, 1                      ; 2 uses
  %i.bge = zext i16 %i.bfx to i64
  %i.bgf = getelementptr inbounds nuw [4 x i8], ptr %i.bft, i64 %i.bgc ; 2 uses
  %i.bgg = load i32, ptr %i.bgf, align 4, !tbaa !28, !noalias !429
  %i.bgh = zext i32 %i.bgg to i64
  %i.bgi = sub i64 %.5199734, %i.bgh
  %i.bgj = trunc i32 %i.bgb to i8
  %i.bgk = and i64 %.5199734, 65535
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %i.bgk
  store i8 %i.bgj, ptr %i.bgl, align 1, !tbaa !59, !noalias !429
  %spec.store.select.i392 = tail call i64 @llvm.umin.i64(i64 %i.bgi, i64 65535)
end_hunk_2
begin_hunk_3_@_ZL28CreateBackwardReferencesDH41mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
bb.fy:                                            ; preds = %split
  %i.arc = add i64 %.sroa.18414.1.ph, 3           ; 2 uses
  %i.ard = load i32, ptr %7, align 4, !tbaa !28
  %i.are = sext i32 %i.ard to i64                 ; 2 uses
  %i.arf = sub i64 %i.arc, %i.are                 ; 2 uses
  %i.arg = load i32, ptr %i.av, align 4, !tbaa !28
  %i.arh = sext i32 %i.arg to i64                 ; 2 uses
  %i.ari = sub i64 %i.arc, %i.arh                 ; 2 uses
  %i.arj = icmp eq i64 %.sroa.18414.1.ph, %i.are
  br i1 %i.arj, label %_ZL19ComputeDistanceCodemmPKi.exit.thread, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ark = icmp eq i64 %.sroa.18414.1.ph, %i.arh
  br i1 %i.ark, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.arl = icmp ult i64 %i.arf, 7
  br i1 %i.arl, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %.tr25.i = trunc nuw nsw i64 %i.arf to i32
  %i.arm = shl nuw nsw i32 %.tr25.i, 2
  %i.arn = lshr i32 158663784, %i.arm
  %i.aro = and i32 %i.arn, 15
  %i.arp = zext nneg i32 %i.aro to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.gc:                                            ; preds = %bb.ga
  %i.arq = icmp ult i64 %i.ari, 7
  br i1 %i.arq, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %.tr.i = trunc nuw nsw i64 %i.ari to i32
  %i.arr = shl nuw nsw i32 %.tr.i, 2
  %i.ars = lshr i32 266017486, %i.arr
  %i.art = and i32 %i.ars, 15
  %i.aru = zext nneg i32 %i.art to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.ge:                                            ; preds = %bb.gc
  %i.arv = load i32, ptr %i.aw, align 4, !tbaa !28
  %i.arw = sext i32 %i.arv to i64
  %i.arx = icmp eq i64 %.sroa.18414.1.ph, %i.arw
  br i1 %i.arx, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.ary = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.arz = sext i32 %i.ary to i64
  %.not537 = icmp eq i64 %.sroa.18414.1.ph, %i.arz
  br i1 %.not537, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %split
  %i.asa = add i64 %.sroa.18414.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.fz, %bb.gd, %bb.gb, %bb.ge, %bb.gf, %bb.gg
  %.1.i = phi i64 [ %i.asa, %bb.gg ], [ 3, %bb.gf ], [ 1, %bb.fz ], [ %i.aru, %bb.gd ], [ %i.arp, %bb.gb ], [ 2, %bb.ge ] ; 3 uses
  %i.asb = icmp ule i64 %.sroa.18414.1.ph, %i.arb
  %i.asc = icmp ne i64 %.1.i, 0
  %or.cond = and i1 %i.asb, %i.asc
  br i1 %or.cond, label %bb.gh, label %_ZL19ComputeDistanceCodemmPKi.exit.thread

bb.gh:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.asd = load i32, ptr %i.aw, align 4, !tbaa !28
  store i32 %i.asd, ptr %i.ax, align 4, !tbaa !28
  %i.ase = load <2 x i32>, ptr %7, align 4, !tbaa !28
  store <2 x i32> %i.ase, ptr %i.av, align 4, !tbaa !28
  %i.asf = trunc i64 %.sroa.18414.1.ph to i32     ; 4 uses
  store i32 %i.asf, ptr %7, align 4, !tbaa !28
  %i.asg = insertelement <4 x i32> poison, i32 %i.asf, i64 0
  %i.ash = shufflevector <4 x i32> %i.asg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.asi = add nsw <4 x i32> %i.ash, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.asi, ptr %i.u, align 4, !tbaa !28, !alias.scope !530
  %i.asj = add nsw i32 %i.asf, -3
  store i32 %i.asj, ptr %i.y, align 4, !tbaa !28, !alias.scope !530
  %i.ask = add nsw i32 %i.asf, 3
  store i32 %i.ask, ptr %i.z, align 4, !tbaa !28, !alias.scope !530
  br label %_ZL19ComputeDistanceCodemmPKi.exit.thread

_ZL19ComputeDistanceCodemmPKi.exit.thread:        ; preds = %bb.fy, %bb.gh, %_ZL19ComputeDistanceCodemmPKi.exit
  %.1.i533 = phi i64 [ %.1.i, %_ZL19ComputeDistanceCodemmPKi.exit ], [ %.1.i, %bb.gh ], [ 0, %bb.fy ] ; 3 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %.0201889, i64 16 ; 2 uses
  %i.asm = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.asm, ptr %.0201889, align 4, !tbaa !94
  %i.asn = shl i32 %.sroa.42.1.ph, 25
  %i.aso = trunc i64 %.sroa.0406.1.ph to i32      ; 2 uses
  %i.asp = or i32 %i.asn, %i.aso
  %i.asq = getelementptr inbounds nuw i8, ptr %.0201889, i64 4
  store i32 %i.asp, ptr %i.asq, align 4, !tbaa !95
  %i.asr = load i32, ptr %i.ay, align 4, !tbaa !96
  %i.ass = zext i32 %i.asr to i64                 ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %.0201889, i64 14
  %i.asu = getelementptr inbounds nuw i8, ptr %.0201889, i64 8
  %i.asv = add nuw nsw i64 %i.ass, 16             ; 2 uses
  %i.asw = icmp ult i64 %.1.i533, %i.asv
  br i1 %i.asw, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.gi

bb.gi:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread
  %i.asx = load i32, ptr %i.ak, align 8, !tbaa !97 ; 2 uses
  %i.asy = zext i32 %i.asx to i64                 ; 4 uses
  %i.asz = shl nuw i64 4, %i.asy
  %i.ata = add i64 %.1.i533, -16
  %i.atb = sub i64 %i.ata, %i.ass
  %i.atc = add i64 %i.atb, %i.asz                 ; 4 uses
  %i.atd = trunc i64 %i.atc to i32
  %i.ate = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.atd, i1 true)
  %i.atf = sub nsw i32 30, %i.ate
  %i.atg = zext i32 %i.atf to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.asx
  %i.ath = xor i32 %notmask.i, -1
  %i.ati = zext nneg i32 %i.ath to i64
  %i.atj = and i64 %i.atc, %i.ati
  %i.atk = lshr i64 %i.atc, %i.atg                ; 2 uses
  %i.atl = and i64 %i.atk, 1
  %i.atm = or disjoint i64 %i.atl, 2
  %i.atn = shl i64 %i.atm, %i.atg
  %i.ato = sub nsw i64 %i.atg, %i.asy             ; 2 uses
  %i.atp = shl nsw i64 %i.ato, 10
  %i.atq = shl nsw i64 %i.ato, 1
  %i.atr = or i64 %i.atk, 65534
  %i.ats = add i64 %i.atq, %i.atr
  %i.att = shl i64 %i.ats, %i.asy
  %i.atu = add nuw nsw i64 %i.atj, %i.asv
  %i.atv = add i64 %i.atu, %i.att
  %i.atw = or i64 %i.atv, %i.atp
  %i.atx = sub i64 %i.atc, %i.atn
  %i.aty = lshr i64 %i.atx, %i.asy
  %i.atz = trunc i64 %i.aty to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread, %bb.gi
  %.sink.in = phi i64 [ %i.atw, %bb.gi ], [ %.1.i533, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %storemerge.i = phi i32 [ %i.atz, %bb.gi ], [ 0, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.ast, align 2, !tbaa !67
  store i32 %storemerge.i, ptr %i.asu, align 4, !tbaa !28
  %i.aua = add nsw i32 %.sroa.42.1.ph, %i.aso     ; 6 uses
  %i.aub = and i16 %.sink, 1023
  %i.auc = icmp eq i16 %i.aub, 0
  %i.aud = getelementptr inbounds nuw i8, ptr %.0201889, i64 12
  %i.aue = icmp ult i64 %.3.ph, 6
  br i1 %i.aue, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.auf = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.gk:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.aug = icmp ult i64 %.3.ph, 130
  br i1 %i.aug, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.auh = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.aui = trunc nuw nsw i64 %i.auh to i32
  %i.auj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aui, i1 true)
  %i.auk = sub nuw nsw i32 30, %i.auj             ; 2 uses
  %i.aul = shl nuw nsw i32 %i.auk, 1
  %i.aum = zext nneg i32 %i.aul to i64
  %i.aun = zext nneg i32 %i.auk to i64
  %i.auo = lshr i64 %i.auh, %i.aun
  %i.aup = add nuw nsw i64 %i.auo, %i.aum
  %i.auq = trunc nuw nsw i64 %i.aup to i16
  %i.aur = add nuw nsw i16 %i.auq, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.gm:                                            ; preds = %bb.gk
  %i.aus = icmp ult i64 %.3.ph, 2114
  br i1 %i.aus, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.aut = add nsw i32 %i.asm, -66
  %i.auu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aut, i1 true)
  %i.auv = trunc nuw nsw i32 %i.auu to i16
  %i.auw = sub nuw nsw i16 41, %i.auv
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.go:                                            ; preds = %bb.gm
  %i.aux = icmp ult i64 %.3.ph, 6210
  br i1 %i.aux, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.auy = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.auy, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.gj, %bb.gl, %bb.gn, %bb.go, %bb.gp
  %.0.i274 = phi i16 [ %i.auf, %bb.gj ], [ %i.aur, %bb.gl ], [ %i.auw, %bb.gn ], [ 21, %bb.go ], [ %..i, %bb.gp ] ; 3 uses
  %i.auz = icmp ult i32 %i.aua, 10
  br i1 %i.auz, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit, label %bb.gq

bb.gq:                                            ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.ava = icmp ult i32 %i.aua, 134
  br i1 %i.ava, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %narrow = add nsw i32 %i.aua, -6                ; 2 uses
  %i.avb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.avc = sub nuw nsw i32 30, %i.avb             ; 2 uses
  %i.avd = shl nuw nsw i32 %i.avc, 1
  %i.ave = lshr i32 %narrow, %i.avc
  %i.avf = add i32 %i.ave, %i.avd
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.gs:                                            ; preds = %bb.gq
  %i.avg = icmp ult i32 %i.aua, 2118
  br i1 %i.avg, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1204, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1204: ; preds = %bb.gs
  %i.avh = add nsw i32 %i.aua, -70
  %i.avi = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.avh, i1 true)
  %i.avj = trunc nuw nsw i32 %i.avi to i16
  %i.avk = sub nuw nsw i16 43, %i.avj
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, %bb.gr
  %.sink1337 = phi i32 [ %i.avf, %bb.gr ], [ %i.aua, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %.sink1336 = phi i16 [ 4, %bb.gr ], [ -2, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %i.avl = trunc i32 %.sink1337 to i16
  %i.avm = add nsw i16 %.sink1336, %i.avl         ; 4 uses
  %i.avn = icmp samesign ult i16 %.0.i274, 8
  %or.cond.i276 = and i1 %i.auc, %i.avn
  %i.avo = icmp ult i16 %i.avm, 16
  %or.cond5.i = and i1 %or.cond.i276, %i.avo
  br i1 %or.cond5.i, label %bb.gt, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.gt:                                            ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.avp = shl nuw nsw i16 %i.avm, 3
  %i.avq = and i16 %i.avp, 64
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread: ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1204, %bb.gs, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.0.i275527 = phi i16 [ %i.avm, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ], [ 23, %bb.gs ], [ %i.avk, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1204 ] ; 2 uses
  %i.avr = lshr i16 %.0.i275527, 3
  %i.avs = lshr i16 %.0.i274, 3
  %narrow.i = mul nuw nsw i16 %i.avs, 3
  %narrow21.i = add nuw nsw i16 %i.avr, %narrow.i
  %i.avt = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.avu = shl nuw nsw i32 %i.avt, 1
  %i.avv = shl nuw nsw i32 %i.avt, 6
  %i.avw = add nuw nsw i32 %i.avv, 64
  %i.avx = lshr i32 5377344, %i.avu
  %i.avy = and i32 %i.avx, 192
  %i.avz = add nuw nsw i32 %i.avw, %i.avy
  %i.awa = trunc i32 %i.avz to i16
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit: ; preds = %bb.gt, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread
  %.0.i275528 = phi i16 [ %i.avm, %bb.gt ], [ %.0.i275527, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %.pn.i = phi i16 [ %i.avq, %bb.gt ], [ %i.awa, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %i.awb = and i16 %.0.i275528, 7
  %i.awc = shl nuw nsw i16 %.0.i274, 3
  %i.awd = and i16 %i.awc, 56
  %i.awe = or disjoint i16 %i.awb, %i.awd
  %.0.i277 = or disjoint i16 %i.awe, %.pn.i
  store i16 %.0.i277, ptr %i.aud, align 4, !tbaa !67
  %i.awf = load i64, ptr %11, align 8, !tbaa !50
  %i.awg = add i64 %i.awf, %.3.ph
  store i64 %i.awg, ptr %11, align 8, !tbaa !50
  %i.awh = add i64 %.3197.ph, 2                   ; 2 uses
  %i.awi = add i64 %.3197.ph, %.sroa.0406.1.ph    ; 4 uses
  %i.awj = tail call noundef i64 @llvm.umin.i64(i64 %i.awi, i64 %spec.select) ; 3 uses
  %i.awk = lshr i64 %.sroa.0406.1.ph, 2
  %i.awl = icmp ult i64 %.sroa.18414.1.ph, %i.awk
  br i1 %i.awl, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.awm = shl nuw i64 %.sroa.18414.1.ph, 2
  %i.awn = sub i64 %i.awi, %i.awm
  %i.awo = tail call noundef i64 @llvm.umax.i64(i64 %i.awh, i64 %i.awn)
  %i.awp = tail call noundef i64 @llvm.umin.i64(i64 %i.awj, i64 %i.awo)
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %.0 = phi i64 [ %i.awp, %bb.gu ], [ %i.awh, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit ] ; 2 uses
  %i.awq = icmp ult i64 %.0, %i.awj
  br i1 %i.awq, label %.lr.ph886, label %_ZN13duckdb_brotliL13StoreRangeH41EPNS_3H41EPKhmmm.exit

.lr.ph886:                                        ; preds = %bb.gv
  %i.awr = load ptr, ptr %i.am, align 8, !tbaa !107, !alias.scope !531, !noalias !532 ; 3 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 131072
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awr, i64 196608
  %i.awu = load ptr, ptr %i.an, align 8, !tbaa !107, !alias.scope !531, !noalias !532
  %.promoted887 = load i16, ptr %i.a, align 8, !tbaa !67, !alias.scope !531, !noalias !532
  br label %bb.gw

bb.gw:                                            ; preds = %.lr.ph886, %bb.gw
  %i.awv = phi i16 [ %.promoted887, %.lr.ph886 ], [ %i.axb, %bb.gw ] ; 3 uses
  %.0.i389885 = phi i64 [ %.0, %.lr.ph886 ], [ %i.axq, %bb.gw ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.aww = and i64 %.0.i389885, %3
  %i.awx = getelementptr inbounds nuw i8, ptr %2, i64 %i.aww
  %.0.copyload.i.i398 = load i32, ptr %i.awx, align 1, !alias.scope !533, !noalias !531
  %i.awy = mul i32 %.0.copyload.i.i398, 506832829
  %i.awz = lshr i32 %i.awy, 17                    ; 2 uses
  %i.axa = zext nneg i32 %i.awz to i64            ; 2 uses
  %i.axb = add i16 %i.awv, 1                      ; 2 uses
  %i.axc = zext i16 %i.awv to i64
  %i.axd = getelementptr inbounds nuw [4 x i8], ptr %i.awr, i64 %i.axa ; 2 uses
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !28, !noalias !531
  %i.axf = zext i32 %i.axe to i64
  %i.axg = sub i64 %.0.i389885, %i.axf
  %i.axh = trunc i32 %i.awz to i8
  %i.axi = and i64 %.0.i389885, 65535
  %i.axj = getelementptr inbounds nuw i8, ptr %i.awt, i64 %i.axi
  store i8 %i.axh, ptr %i.axj, align 1, !tbaa !59, !noalias !531
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.axg, i64 65535)
  %i.axk = trunc nuw i64 %spec.store.select.i to i16
  %i.axl = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %i.axc ; 2 uses
  store i16 %i.axk, ptr %i.axl, align 2, !tbaa !119, !noalias !531
  %i.axm = getelementptr inbounds nuw [2 x i8], ptr %i.aws, i64 %i.axa ; 2 uses
  %i.axn = load i16, ptr %i.axm, align 2, !tbaa !67, !noalias !531
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axl, i64 2
  store i16 %i.axn, ptr %i.axo, align 2, !tbaa !118, !noalias !531
  %i.axp = trunc i64 %.0.i389885 to i32
  store i32 %i.axp, ptr %i.axd, align 4, !tbaa !28, !noalias !531
  store i16 %i.awv, ptr %i.axm, align 2, !tbaa !67, !noalias !531
  %i.axq = add nuw i64 %.0.i389885, 1             ; 2 uses
  %exitcond989.not = icmp eq i64 %i.axq, %i.awj
  br i1 %exitcond989.not, label %_ZN13duckdb_brotliL13StoreRangeH41EPNS_3H41EPKhmmm.exit.sink.split, label %bb.gw, !llvm.loop !14

bb.gx:                                            ; preds = %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214
  %i.axr = add i64 %.0191891, 1                   ; 5 uses
  %i.axs = add i64 %.0194890, 1                   ; 9 uses
  %i.axt = icmp ugt i64 %i.axs, %.0189892
  br i1 %i.axt, label %bb.gy, label %_ZN13duckdb_brotliL13StoreRangeH41EPNS_3H41EPKhmmm.exit

bb.gy:                                            ; preds = %bb.gx
  %i.axu = add i64 %.0189892, %i.at
  %i.axv = icmp ugt i64 %i.axs, %i.axu
  br i1 %i.axv, label %bb.gz, label %bb.hb

bb.gz:                                            ; preds = %bb.gy
  %i.axw = add i64 %.0194890, 17
  %i.axx = tail call noundef i64 @llvm.umin.i64(i64 %i.axw, i64 %i.au) ; 2 uses
  %i.axy = icmp ult i64 %i.axs, %i.axx
  br i1 %i.axy, label %.lr.ph742, label %_ZN13duckdb_brotliL13StoreRangeH41EPNS_3H41EPKhmmm.exit

.lr.ph742:                                        ; preds = %bb.gz
  %i.axz = load ptr, ptr %i.am, align 8, !tbaa !107, !alias.scope !534, !noalias !535 ; 3 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 131072
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axz, i64 196608
  %i.ayc = load ptr, ptr %i.an, align 8, !tbaa !107, !alias.scope !534, !noalias !535
  %.promoted745 = load i16, ptr %i.a, align 8, !tbaa !67, !alias.scope !534, !noalias !535
  br label %bb.ha

bb.ha:                                            ; preds = %.lr.ph742, %bb.ha
  %i.ayd = phi i16 [ %.promoted745, %.lr.ph742 ], [ %i.ayj, %bb.ha ] ; 3 uses
  %.4741 = phi i64 [ %i.axr, %.lr.ph742 ], [ %i.ayy, %bb.ha ]
  %.4198740 = phi i64 [ %i.axs, %.lr.ph742 ], [ %i.ayz, %bb.ha ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.aye = and i64 %.4198740, %3
  %i.ayf = getelementptr inbounds nuw i8, ptr %2, i64 %i.aye
  %.0.copyload.i.i394 = load i32, ptr %i.ayf, align 1, !alias.scope !536, !noalias !534
  %i.ayg = mul i32 %.0.copyload.i.i394, 506832829
  %i.ayh = lshr i32 %i.ayg, 17                    ; 2 uses
  %i.ayi = zext nneg i32 %i.ayh to i64            ; 2 uses
  %i.ayj = add i16 %i.ayd, 1                      ; 2 uses
  %i.ayk = zext i16 %i.ayd to i64
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %i.ayi ; 2 uses
  %i.aym = load i32, ptr %i.ayl, align 4, !tbaa !28, !noalias !534
  %i.ayn = zext i32 %i.aym to i64
  %i.ayo = sub i64 %.4198740, %i.ayn
  %i.ayp = trunc i32 %i.ayh to i8
  %i.ayq = and i64 %.4198740, 65535
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayb, i64 %i.ayq
  store i8 %i.ayp, ptr %i.ayr, align 1, !tbaa !59, !noalias !534
  %spec.store.select.i393 = tail call i64 @llvm.umin.i64(i64 %i.ayo, i64 65535)
  %i.ays = trunc nuw i64 %spec.store.select.i393 to i16
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %i.ayc, i64 %i.ayk ; 2 uses
  store i16 %i.ays, ptr %i.ayt, align 2, !tbaa !119, !noalias !534
  %i.ayu = getelementptr inbounds nuw [2 x i8], ptr %i.aya, i64 %i.ayi ; 2 uses
  %i.ayv = load i16, ptr %i.ayu, align 2, !tbaa !67, !noalias !534
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayt, i64 2
  store i16 %i.ayv, ptr %i.ayw, align 2, !tbaa !118, !noalias !534
  %i.ayx = trunc i64 %.4198740 to i32
  store i32 %i.ayx, ptr %i.ayl, align 4, !tbaa !28, !noalias !534
  store i16 %i.ayd, ptr %i.ayu, align 2, !tbaa !67, !noalias !534
  %i.ayy = add i64 %.4741, 4                      ; 2 uses
  %i.ayz = add i64 %.4198740, 4                   ; 3 uses
  %i.aza = icmp ult i64 %i.ayz, %i.axx
  br i1 %i.aza, label %bb.ha, label %_ZN13duckdb_brotliL13StoreRangeH41EPNS_3H41EPKhmmm.exit.sink.split, !llvm.loop !485

bb.hb:                                            ; preds = %bb.gy
  %i.azb = add i64 %.0194890, 9
  %i.azc = tail call noundef i64 @llvm.umin.i64(i64 %i.azb, i64 %i.l) ; 2 uses
  %i.azd = icmp ult i64 %i.axs, %i.azc
  br i1 %i.azd, label %.lr.ph736, label %_ZN13duckdb_brotliL13StoreRangeH41EPNS_3H41EPKhmmm.exit

.lr.ph736:                                        ; preds = %bb.hb
  %i.aze = load ptr, ptr %i.am, align 8, !tbaa !107, !alias.scope !537, !noalias !538 ; 3 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 131072
  %i.azg = getelementptr inbounds nuw i8, ptr %i.aze, i64 196608
  %i.azh = load ptr, ptr %i.an, align 8, !tbaa !107, !alias.scope !537, !noalias !538
  %.promoted739 = load i16, ptr %i.a, align 8, !tbaa !67, !alias.scope !537, !noalias !538
  br label %bb.hc

bb.hc:                                            ; preds = %.lr.ph736, %bb.hc
  %i.azi = phi i16 [ %.promoted739, %.lr.ph736 ], [ %i.azo, %bb.hc ] ; 3 uses
  %.5735 = phi i64 [ %i.axr, %.lr.ph736 ], [ %i.bad, %bb.hc ]
  %.5199734 = phi i64 [ %i.axs, %.lr.ph736 ], [ %i.bae, %bb.hc ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.azj = and i64 %.5199734, %3
  %i.azk = getelementptr inbounds nuw i8, ptr %2, i64 %i.azj
  %.0.copyload.i.i395 = load i32, ptr %i.azk, align 1, !alias.scope !539, !noalias !537
  %i.azl = mul i32 %.0.copyload.i.i395, 506832829
  %i.azm = lshr i32 %i.azl, 17                    ; 2 uses
  %i.azn = zext nneg i32 %i.azm to i64            ; 2 uses
  %i.azo = add i16 %i.azi, 1                      ; 2 uses
  %i.azp = zext i16 %i.azi to i64
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %i.aze, i64 %i.azn ; 2 uses
  %i.azr = load i32, ptr %i.azq, align 4, !tbaa !28, !noalias !537
  %i.azs = zext i32 %i.azr to i64
  %i.azt = sub i64 %.5199734, %i.azs
  %i.azu = trunc i32 %i.azm to i8
  %i.azv = and i64 %.5199734, 65535
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azg, i64 %i.azv
  store i8 %i.azu, ptr %i.azw, align 1, !tbaa !59, !noalias !537
  %spec.store.select.i392 = tail call i64 @llvm.umin.i64(i64 %i.azt, i64 65535)
end_hunk_3
begin_hunk_4_@_ZL28CreateBackwardReferencesDH42mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  %i.arw = icmp eq i64 %.sroa.18414.1.ph, %i.arr
  br i1 %i.arw, label %_ZL19ComputeDistanceCodemmPKi.exit.thread, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.arx = icmp eq i64 %.sroa.18414.1.ph, %i.aru
  br i1 %i.arx, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ary = icmp ult i64 %i.ars, 7
  br i1 %i.ary, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %.tr25.i = trunc nuw nsw i64 %i.ars to i32
  %i.arz = shl nuw nsw i32 %.tr25.i, 2
  %i.asa = lshr i32 158663784, %i.arz
  %i.asb = and i32 %i.asa, 15
  %i.asc = zext nneg i32 %i.asb to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.gb:                                            ; preds = %bb.fz
  %i.asd = icmp ult i64 %i.arv, 7
  br i1 %i.asd, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %.tr.i = trunc nuw nsw i64 %i.arv to i32
  %i.ase = shl nuw nsw i32 %.tr.i, 2
  %i.asf = lshr i32 266017486, %i.ase
  %i.asg = and i32 %i.asf, 15
  %i.ash = zext nneg i32 %i.asg to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.gd:                                            ; preds = %bb.gb
  %i.asi = load i32, ptr %i.az, align 4, !tbaa !28
  %i.asj = sext i32 %i.asi to i64
  %i.ask = icmp eq i64 %.sroa.18414.1.ph, %i.asj
  br i1 %i.ask, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.asl = load i32, ptr %i.ba, align 4, !tbaa !28
  %i.asm = sext i32 %i.asl to i64
  %.not537 = icmp eq i64 %.sroa.18414.1.ph, %i.asm
  br i1 %.not537, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %split
  %i.asn = add i64 %.sroa.18414.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.fy, %bb.gc, %bb.ga, %bb.gd, %bb.ge, %bb.gf
  %.1.i = phi i64 [ %i.asn, %bb.gf ], [ 3, %bb.ge ], [ 1, %bb.fy ], [ %i.ash, %bb.gc ], [ %i.asc, %bb.ga ], [ 2, %bb.gd ] ; 3 uses
  %i.aso = icmp ule i64 %.sroa.18414.1.ph, %i.aro
  %i.asp = icmp ne i64 %.1.i, 0
  %or.cond = and i1 %i.aso, %i.asp
  br i1 %or.cond, label %bb.gg, label %_ZL19ComputeDistanceCodemmPKi.exit.thread

bb.gg:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.asq = load i32, ptr %i.az, align 4, !tbaa !28
  store i32 %i.asq, ptr %i.ba, align 4, !tbaa !28
  %i.asr = load <2 x i32>, ptr %7, align 4, !tbaa !28 ; 2 uses
  %i.ass = load i32, ptr %7, align 4, !tbaa !28
  store <2 x i32> %i.asr, ptr %i.w, align 4, !tbaa !28
  %i.ast = trunc i64 %.sroa.18414.1.ph to i32     ; 4 uses
  store i32 %i.ast, ptr %7, align 4, !tbaa !28
  %i.asu = insertelement <4 x i32> poison, i32 %i.ast, i64 0
  %i.asv = shufflevector <4 x i32> %i.asu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.asw = add nsw <4 x i32> %i.asv, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.asw, ptr %i.t, align 4, !tbaa !28, !alias.scope !638
  %i.asx = add nsw i32 %i.ast, -3
  store i32 %i.asx, ptr %i.u, align 4, !tbaa !28, !alias.scope !638
  %i.asy = add nsw i32 %i.ast, 3
  store i32 %i.asy, ptr %i.v, align 4, !tbaa !28, !alias.scope !638
  %i.asz = shufflevector <2 x i32> %i.asr, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.ata = add nsw <4 x i32> %i.asz, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.ata, ptr %i.x, align 4, !tbaa !28, !alias.scope !638
  %i.atb = insertelement <2 x i32> poison, i32 %i.ass, i64 0
  %i.atc = shufflevector <2 x i32> %i.atb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.atd = add nsw <2 x i32> %i.atc, <i32 -3, i32 3>
  store <2 x i32> %i.atd, ptr %i.ae, align 4, !tbaa !28, !alias.scope !638
  br label %_ZL19ComputeDistanceCodemmPKi.exit.thread

_ZL19ComputeDistanceCodemmPKi.exit.thread:        ; preds = %bb.fx, %bb.gg, %_ZL19ComputeDistanceCodemmPKi.exit
  %.1.i533 = phi i64 [ %.1.i, %_ZL19ComputeDistanceCodemmPKi.exit ], [ %.1.i, %bb.gg ], [ 0, %bb.fx ] ; 3 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %.0201883, i64 16 ; 2 uses
  %i.atf = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.atf, ptr %.0201883, align 4, !tbaa !94
  %i.atg = shl i32 %.sroa.42.1.ph, 25
  %i.ath = trunc i64 %.sroa.0406.1.ph to i32      ; 2 uses
  %i.ati = or i32 %i.atg, %i.ath
  %i.atj = getelementptr inbounds nuw i8, ptr %.0201883, i64 4
  store i32 %i.ati, ptr %i.atj, align 4, !tbaa !95
  %i.atk = load i32, ptr %i.bb, align 4, !tbaa !96
  %i.atl = zext i32 %i.atk to i64                 ; 2 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %.0201883, i64 14
  %i.atn = getelementptr inbounds nuw i8, ptr %.0201883, i64 8
  %i.ato = add nuw nsw i64 %i.atl, 16             ; 2 uses
  %i.atp = icmp ult i64 %.1.i533, %i.ato
  br i1 %i.atp, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.gh

bb.gh:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread
  %i.atq = load i32, ptr %i.ao, align 8, !tbaa !97 ; 2 uses
  %i.atr = zext i32 %i.atq to i64                 ; 4 uses
  %i.ats = shl nuw i64 4, %i.atr
  %i.att = add i64 %.1.i533, -16
  %i.atu = sub i64 %i.att, %i.atl
  %i.atv = add i64 %i.atu, %i.ats                 ; 4 uses
  %i.atw = trunc i64 %i.atv to i32
  %i.atx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.atw, i1 true)
  %i.aty = sub nsw i32 30, %i.atx
  %i.atz = zext i32 %i.aty to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.atq
  %i.aua = xor i32 %notmask.i, -1
  %i.aub = zext nneg i32 %i.aua to i64
  %i.auc = and i64 %i.atv, %i.aub
  %i.aud = lshr i64 %i.atv, %i.atz                ; 2 uses
  %i.aue = and i64 %i.aud, 1
  %i.auf = or disjoint i64 %i.aue, 2
  %i.aug = shl i64 %i.auf, %i.atz
  %i.auh = sub nsw i64 %i.atz, %i.atr             ; 2 uses
  %i.aui = shl nsw i64 %i.auh, 10
  %i.auj = shl nsw i64 %i.auh, 1
  %i.auk = or i64 %i.aud, 65534
  %i.aul = add i64 %i.auj, %i.auk
  %i.aum = shl i64 %i.aul, %i.atr
  %i.aun = add nuw nsw i64 %i.auc, %i.ato
  %i.auo = add i64 %i.aun, %i.aum
  %i.aup = or i64 %i.auo, %i.aui
  %i.auq = sub i64 %i.atv, %i.aug
  %i.aur = lshr i64 %i.auq, %i.atr
  %i.aus = trunc i64 %i.aur to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread, %bb.gh
  %.sink.in = phi i64 [ %i.aup, %bb.gh ], [ %.1.i533, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %storemerge.i = phi i32 [ %i.aus, %bb.gh ], [ 0, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.atm, align 2, !tbaa !67
  store i32 %storemerge.i, ptr %i.atn, align 4, !tbaa !28
  %i.aut = add nsw i32 %.sroa.42.1.ph, %i.ath     ; 6 uses
  %i.auu = and i16 %.sink, 1023
  %i.auv = icmp eq i16 %i.auu, 0
  %i.auw = getelementptr inbounds nuw i8, ptr %.0201883, i64 12
  %i.aux = icmp ult i64 %.3.ph, 6
  br i1 %i.aux, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.auy = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.gj:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.auz = icmp ult i64 %.3.ph, 130
  br i1 %i.auz, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.ava = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.avb = trunc nuw nsw i64 %i.ava to i32
  %i.avc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.avb, i1 true)
  %i.avd = sub nuw nsw i32 30, %i.avc             ; 2 uses
  %i.ave = shl nuw nsw i32 %i.avd, 1
  %i.avf = zext nneg i32 %i.ave to i64
  %i.avg = zext nneg i32 %i.avd to i64
  %i.avh = lshr i64 %i.ava, %i.avg
  %i.avi = add nuw nsw i64 %i.avh, %i.avf
  %i.avj = trunc nuw nsw i64 %i.avi to i16
  %i.avk = add nuw nsw i16 %i.avj, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.gl:                                            ; preds = %bb.gj
  %i.avl = icmp ult i64 %.3.ph, 2114
  br i1 %i.avl, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.avm = add nsw i32 %i.atf, -66
  %i.avn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.avm, i1 true)
  %i.avo = trunc nuw nsw i32 %i.avn to i16
  %i.avp = sub nuw nsw i16 41, %i.avo
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.gn:                                            ; preds = %bb.gl
  %i.avq = icmp ult i64 %.3.ph, 6210
  br i1 %i.avq, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.avr = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.avr, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.gi, %bb.gk, %bb.gm, %bb.gn, %bb.go
  %.0.i274 = phi i16 [ %i.auy, %bb.gi ], [ %i.avk, %bb.gk ], [ %i.avp, %bb.gm ], [ 21, %bb.gn ], [ %..i, %bb.go ] ; 3 uses
  %i.avs = icmp ult i32 %i.aut, 10
  br i1 %i.avs, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit, label %bb.gp

bb.gp:                                            ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.avt = icmp ult i32 %i.aut, 134
  br i1 %i.avt, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %narrow = add nsw i32 %i.aut, -6                ; 2 uses
  %i.avu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.avv = sub nuw nsw i32 30, %i.avu             ; 2 uses
  %i.avw = shl nuw nsw i32 %i.avv, 1
  %i.avx = lshr i32 %narrow, %i.avv
  %i.avy = add i32 %i.avx, %i.avw
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.gr:                                            ; preds = %bb.gp
  %i.avz = icmp ult i32 %i.aut, 2118
  br i1 %i.avz, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1197, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1197: ; preds = %bb.gr
  %i.awa = add nsw i32 %i.aut, -70
  %i.awb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.awa, i1 true)
  %i.awc = trunc nuw nsw i32 %i.awb to i16
  %i.awd = sub nuw nsw i16 43, %i.awc
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, %bb.gq
  %.sink1329 = phi i32 [ %i.avy, %bb.gq ], [ %i.aut, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %.sink1328 = phi i16 [ 4, %bb.gq ], [ -2, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %i.awe = trunc i32 %.sink1329 to i16
  %i.awf = add nsw i16 %.sink1328, %i.awe         ; 4 uses
  %i.awg = icmp samesign ult i16 %.0.i274, 8
  %or.cond.i276 = and i1 %i.auv, %i.awg
  %i.awh = icmp ult i16 %i.awf, 16
  %or.cond5.i = and i1 %or.cond.i276, %i.awh
  br i1 %or.cond5.i, label %bb.gs, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.gs:                                            ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.awi = shl nuw nsw i16 %i.awf, 3
  %i.awj = and i16 %i.awi, 64
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread: ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1197, %bb.gr, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.0.i275527 = phi i16 [ %i.awf, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ], [ 23, %bb.gr ], [ %i.awd, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1197 ] ; 2 uses
  %i.awk = lshr i16 %.0.i275527, 3
  %i.awl = lshr i16 %.0.i274, 3
  %narrow.i = mul nuw nsw i16 %i.awl, 3
  %narrow21.i = add nuw nsw i16 %i.awk, %narrow.i
  %i.awm = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.awn = shl nuw nsw i32 %i.awm, 1
  %i.awo = shl nuw nsw i32 %i.awm, 6
  %i.awp = add nuw nsw i32 %i.awo, 64
  %i.awq = lshr i32 5377344, %i.awn
  %i.awr = and i32 %i.awq, 192
  %i.aws = add nuw nsw i32 %i.awp, %i.awr
  %i.awt = trunc i32 %i.aws to i16
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit: ; preds = %bb.gs, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread
  %.0.i275528 = phi i16 [ %i.awf, %bb.gs ], [ %.0.i275527, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %.pn.i = phi i16 [ %i.awj, %bb.gs ], [ %i.awt, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %i.awu = and i16 %.0.i275528, 7
  %i.awv = shl nuw nsw i16 %.0.i274, 3
  %i.aww = and i16 %i.awv, 56
  %i.awx = or disjoint i16 %i.awu, %i.aww
  %.0.i277 = or disjoint i16 %i.awx, %.pn.i
  store i16 %.0.i277, ptr %i.auw, align 4, !tbaa !67
  %i.awy = load i64, ptr %11, align 8, !tbaa !50
  %i.awz = add i64 %i.awy, %.3.ph
  store i64 %i.awz, ptr %11, align 8, !tbaa !50
  %i.axa = add i64 %.3197.ph, 2                   ; 2 uses
  %i.axb = add i64 %.3197.ph, %.sroa.0406.1.ph    ; 4 uses
  %i.axc = tail call noundef i64 @llvm.umin.i64(i64 %i.axb, i64 %spec.select) ; 3 uses
  %i.axd = lshr i64 %.sroa.0406.1.ph, 2
  %i.axe = icmp ult i64 %.sroa.18414.1.ph, %i.axd
  br i1 %i.axe, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.axf = shl nuw i64 %.sroa.18414.1.ph, 2
  %i.axg = sub i64 %i.axb, %i.axf
  %i.axh = tail call noundef i64 @llvm.umax.i64(i64 %i.axa, i64 %i.axg)
  %i.axi = tail call noundef i64 @llvm.umin.i64(i64 %i.axc, i64 %i.axh)
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %.0 = phi i64 [ %i.axi, %bb.gt ], [ %i.axa, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit ] ; 2 uses
  %i.axj = icmp ult i64 %.0, %i.axc
  br i1 %i.axj, label %.lr.ph882, label %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit

.lr.ph882:                                        ; preds = %bb.gu
  %i.axk = load ptr, ptr %i.aq, align 8, !tbaa !107, !alias.scope !639, !noalias !640 ; 3 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 131072
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axk, i64 196608
  %i.axn = load ptr, ptr %i.ar, align 8, !tbaa !107, !alias.scope !639, !noalias !640
  br label %bb.gv

bb.gv:                                            ; preds = %.lr.ph882, %bb.gv
  %.0.i389881 = phi i64 [ %.0, %.lr.ph882 ], [ %i.ayn, %bb.gv ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.axo = and i64 %.0.i389881, %3
  %i.axp = getelementptr inbounds nuw i8, ptr %2, i64 %i.axo
  %.0.copyload.i.i398 = load i32, ptr %i.axp, align 1, !alias.scope !641, !noalias !639
  %i.axq = mul i32 %.0.copyload.i.i398, 506832829
  %i.axr = lshr i32 %i.axq, 17                    ; 2 uses
  %i.axs = zext nneg i32 %i.axr to i64            ; 3 uses
  %i.axt = and i64 %i.axs, 511                    ; 2 uses
  %i.axu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.axt ; 2 uses
  %i.axv = load i16, ptr %i.axu, align 2, !tbaa !67, !alias.scope !639, !noalias !640 ; 2 uses
  %i.axw = add i16 %i.axv, 1
  store i16 %i.axw, ptr %i.axu, align 2, !tbaa !67, !alias.scope !639, !noalias !640
  %i.axx = and i16 %i.axv, 511                    ; 2 uses
  %i.axy = zext nneg i16 %i.axx to i64
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %i.axk, i64 %i.axs ; 2 uses
  %i.aya = load i32, ptr %i.axz, align 4, !tbaa !28, !noalias !639
  %i.ayb = zext i32 %i.aya to i64
  %i.ayc = sub i64 %.0.i389881, %i.ayb
  %i.ayd = trunc i32 %i.axr to i8
  %i.aye = and i64 %.0.i389881, 65535
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axm, i64 %i.aye
  store i8 %i.ayd, ptr %i.ayf, align 1, !tbaa !59, !noalias !639
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.ayc, i64 65535)
  %i.ayg = trunc nuw i64 %spec.store.select.i to i16
  %i.ayh = getelementptr inbounds nuw [2048 x i8], ptr %i.axn, i64 %i.axt
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %i.ayh, i64 %i.axy ; 2 uses
  store i16 %i.ayg, ptr %i.ayi, align 2, !tbaa !125, !noalias !639
  %i.ayj = getelementptr inbounds nuw [2 x i8], ptr %i.axl, i64 %i.axs ; 2 uses
  %i.ayk = load i16, ptr %i.ayj, align 2, !tbaa !67, !noalias !639
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayi, i64 2
  store i16 %i.ayk, ptr %i.ayl, align 2, !tbaa !124, !noalias !639
  %i.aym = trunc i64 %.0.i389881 to i32
  store i32 %i.aym, ptr %i.axz, align 4, !tbaa !28, !noalias !639
  store i16 %i.axx, ptr %i.ayj, align 2, !tbaa !67, !noalias !639
  %i.ayn = add nuw i64 %.0.i389881, 1             ; 2 uses
  %exitcond982.not = icmp eq i64 %i.ayn, %i.axc
  br i1 %exitcond982.not, label %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit, label %bb.gv, !llvm.loop !17

bb.gw:                                            ; preds = %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214
  %i.ayo = add i64 %.0191885, 1                   ; 5 uses
  %i.ayp = add i64 %.0194884, 1                   ; 9 uses
  %i.ayq = icmp ugt i64 %i.ayp, %.0189886
  br i1 %i.ayq, label %bb.gx, label %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit

bb.gx:                                            ; preds = %bb.gw
  %i.ayr = add i64 %.0189886, %i.ax
  %i.ays = icmp ugt i64 %i.ayp, %i.ayr
  br i1 %i.ays, label %bb.gy, label %bb.ha

bb.gy:                                            ; preds = %bb.gx
  %i.ayt = add i64 %.0194884, 17
  %i.ayu = tail call noundef i64 @llvm.umin.i64(i64 %i.ayt, i64 %i.ay) ; 2 uses
  %i.ayv = icmp ult i64 %i.ayp, %i.ayu
  br i1 %i.ayv, label %.lr.ph741, label %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit

.lr.ph741:                                        ; preds = %bb.gy
  %i.ayw = load ptr, ptr %i.aq, align 8, !tbaa !107, !alias.scope !642, !noalias !643 ; 3 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 131072
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayw, i64 196608
  %i.ayz = load ptr, ptr %i.ar, align 8, !tbaa !107, !alias.scope !642, !noalias !643
  br label %bb.gz

bb.gz:                                            ; preds = %.lr.ph741, %bb.gz
  %.4740 = phi i64 [ %i.ayo, %.lr.ph741 ], [ %i.azz, %bb.gz ]
  %.4198739 = phi i64 [ %i.ayp, %.lr.ph741 ], [ %i.baa, %bb.gz ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %i.aza = and i64 %.4198739, %3
  %i.azb = getelementptr inbounds nuw i8, ptr %2, i64 %i.aza
  %.0.copyload.i.i394 = load i32, ptr %i.azb, align 1, !alias.scope !644, !noalias !642
  %i.azc = mul i32 %.0.copyload.i.i394, 506832829
  %i.azd = lshr i32 %i.azc, 17                    ; 2 uses
  %i.aze = zext nneg i32 %i.azd to i64            ; 3 uses
  %i.azf = and i64 %i.aze, 511                    ; 2 uses
  %i.azg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.azf ; 2 uses
  %i.azh = load i16, ptr %i.azg, align 2, !tbaa !67, !alias.scope !642, !noalias !643 ; 2 uses
  %i.azi = add i16 %i.azh, 1
  store i16 %i.azi, ptr %i.azg, align 2, !tbaa !67, !alias.scope !642, !noalias !643
  %i.azj = and i16 %i.azh, 511                    ; 2 uses
  %i.azk = zext nneg i16 %i.azj to i64
  %i.azl = getelementptr inbounds nuw [4 x i8], ptr %i.ayw, i64 %i.aze ; 2 uses
  %i.azm = load i32, ptr %i.azl, align 4, !tbaa !28, !noalias !642
  %i.azn = zext i32 %i.azm to i64
  %i.azo = sub i64 %.4198739, %i.azn
  %i.azp = trunc i32 %i.azd to i8
  %i.azq = and i64 %.4198739, 65535
  %i.azr = getelementptr inbounds nuw i8, ptr %i.ayy, i64 %i.azq
  store i8 %i.azp, ptr %i.azr, align 1, !tbaa !59, !noalias !642
  %spec.store.select.i393 = tail call i64 @llvm.umin.i64(i64 %i.azo, i64 65535)
  %i.azs = trunc nuw i64 %spec.store.select.i393 to i16
  %i.azt = getelementptr inbounds nuw [2048 x i8], ptr %i.ayz, i64 %i.azf
  %i.azu = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %i.azk ; 2 uses
  store i16 %i.azs, ptr %i.azu, align 2, !tbaa !125, !noalias !642
  %i.azv = getelementptr inbounds nuw [2 x i8], ptr %i.ayx, i64 %i.aze ; 2 uses
  %i.azw = load i16, ptr %i.azv, align 2, !tbaa !67, !noalias !642
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azu, i64 2
  store i16 %i.azw, ptr %i.azx, align 2, !tbaa !124, !noalias !642
  %i.azy = trunc i64 %.4198739 to i32
  store i32 %i.azy, ptr %i.azl, align 4, !tbaa !28, !noalias !642
  store i16 %i.azj, ptr %i.azv, align 2, !tbaa !67, !noalias !642
  %i.azz = add i64 %.4740, 4                      ; 2 uses
  %i.baa = add i64 %.4198739, 4                   ; 3 uses
  %i.bab = icmp ult i64 %i.baa, %i.ayu
  br i1 %i.bab, label %bb.gz, label %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit, !llvm.loop !593

bb.ha:                                            ; preds = %bb.gx
  %i.bac = add i64 %.0194884, 9
  %i.bad = tail call noundef i64 @llvm.umin.i64(i64 %i.bac, i64 %i.l) ; 2 uses
  %i.bae = icmp ult i64 %i.ayp, %i.bad
  br i1 %i.bae, label %.lr.ph736, label %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit

.lr.ph736:                                        ; preds = %bb.ha
  %i.baf = load ptr, ptr %i.aq, align 8, !tbaa !107, !alias.scope !645, !noalias !646 ; 3 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 131072
  %i.bah = getelementptr inbounds nuw i8, ptr %i.baf, i64 196608
  %i.bai = load ptr, ptr %i.ar, align 8, !tbaa !107, !alias.scope !645, !noalias !646
  br label %bb.hb

bb.hb:                                            ; preds = %.lr.ph736, %bb.hb
  %.5735 = phi i64 [ %i.ayo, %.lr.ph736 ], [ %i.bbi, %bb.hb ]
  %.5199734 = phi i64 [ %i.ayp, %.lr.ph736 ], [ %i.bbj, %bb.hb ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.baj = and i64 %.5199734, %3
  %i.bak = getelementptr inbounds nuw i8, ptr %2, i64 %i.baj
  %.0.copyload.i.i395 = load i32, ptr %i.bak, align 1, !alias.scope !647, !noalias !645
  %i.bal = mul i32 %.0.copyload.i.i395, 506832829
  %i.bam = lshr i32 %i.bal, 17                    ; 2 uses
  %i.ban = zext nneg i32 %i.bam to i64            ; 3 uses
  %i.bao = and i64 %i.ban, 511                    ; 2 uses
  %i.bap = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bao ; 2 uses
  %i.baq = load i16, ptr %i.bap, align 2, !tbaa !67, !alias.scope !645, !noalias !646 ; 2 uses
  %i.bar = add i16 %i.baq, 1
  store i16 %i.bar, ptr %i.bap, align 2, !tbaa !67, !alias.scope !645, !noalias !646
end_hunk_4
begin_hunk_5_@_ZL28CreateBackwardReferencesDH65mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
bb.ha:                                            ; preds = %bb.gz
  %.tr25.i = trunc nuw nsw i64 %i.axk to i32
  %i.axr = shl nuw nsw i32 %.tr25.i, 2
  %i.axs = lshr i32 158663784, %i.axr
  %i.axt = and i32 %i.axs, 15
  %i.axu = zext nneg i32 %i.axt to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.hb:                                            ; preds = %bb.gz
  %i.axv = icmp ult i64 %i.axn, 7
  br i1 %i.axv, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %.tr.i = trunc nuw nsw i64 %i.axn to i32
  %i.axw = shl nuw nsw i32 %.tr.i, 2
  %i.axx = lshr i32 266017486, %i.axw
  %i.axy = and i32 %i.axx, 15
  %i.axz = zext nneg i32 %i.axy to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.hd:                                            ; preds = %bb.hb
  %i.aya = load i32, ptr %i.br, align 4, !tbaa !28
  %i.ayb = sext i32 %i.aya to i64
  %i.ayc = icmp eq i64 %.sroa.20.1.ph, %i.ayb
  br i1 %i.ayc, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.ayd = load i32, ptr %i.bs, align 4, !tbaa !28
  %i.aye = sext i32 %i.ayd to i64
  %.not554 = icmp eq i64 %.sroa.20.1.ph, %i.aye
  br i1 %.not554, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.hf

bb.hf:                                            ; preds = %bb.he, %split
  %i.ayf = add i64 %.sroa.20.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.gy, %bb.hc, %bb.ha, %bb.hd, %bb.he, %bb.hf
  %.1.i = phi i64 [ %i.ayf, %bb.hf ], [ 3, %bb.he ], [ 1, %bb.gy ], [ %i.axz, %bb.hc ], [ %i.axu, %bb.ha ], [ 2, %bb.hd ] ; 5 uses
  %i.ayg = icmp ule i64 %.sroa.20.1.ph, %i.axg
  %i.ayh = icmp ne i64 %.1.i, 0
  %or.cond = and i1 %i.ayg, %i.ayh
  br i1 %or.cond, label %bb.hg, label %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit

bb.hg:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.ayi = load i32, ptr %i.br, align 4, !tbaa !28
  store i32 %i.ayi, ptr %i.bs, align 4, !tbaa !28
  %i.ayj = load <2 x i32>, ptr %7, align 4, !tbaa !28 ; 3 uses
  store <2 x i32> %i.ayj, ptr %i.bq, align 4, !tbaa !28
  %i.ayk = trunc i64 %.sroa.20.1.ph to i32        ; 4 uses
  store i32 %i.ayk, ptr %7, align 4, !tbaa !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.ayl = load i32, ptr %i.t, align 8, !tbaa !99, !alias.scope !875, !noalias !876 ; 2 uses
  %i.aym = icmp sgt i32 %i.ayl, 4
  br i1 %i.aym, label %bb.hh, label %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit

bb.hh:                                            ; preds = %bb.hg
  %i.ayn = insertelement <4 x i32> poison, i32 %i.ayk, i64 0
  %i.ayo = shufflevector <4 x i32> %i.ayn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ayp = add nsw <4 x i32> %i.ayo, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.ayp, ptr %i.bt, align 4, !tbaa !28, !alias.scope !877, !noalias !875
  %i.ayq = add nsw i32 %i.ayk, -3
  store i32 %i.ayq, ptr %i.bu, align 4, !tbaa !28, !alias.scope !877, !noalias !875
  %i.ayr = add nsw i32 %i.ayk, 3
  store i32 %i.ayr, ptr %i.bv, align 4, !tbaa !28, !alias.scope !877, !noalias !875
  %i.ays = icmp samesign ugt i32 %i.ayl, 10
  br i1 %i.ays, label %bb.hi, label %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit

bb.hi:                                            ; preds = %bb.hh
  %i.ayt = shufflevector <2 x i32> %i.ayj, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.ayu = add nsw <4 x i32> %i.ayt, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.ayu, ptr %i.bw, align 4, !tbaa !28, !alias.scope !877, !noalias !875
  %i.ayv = shufflevector <2 x i32> %i.ayj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ayw = add nsw <2 x i32> %i.ayv, <i32 -3, i32 3>
  store <2 x i32> %i.ayw, ptr %i.bx, align 4, !tbaa !28, !alias.scope !877, !noalias !875
  br label %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit

_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit: ; preds = %bb.gx, %bb.hi, %bb.hh, %bb.hg, %_ZL19ComputeDistanceCodemmPKi.exit
  %.1.i548 = phi i64 [ %.1.i, %_ZL19ComputeDistanceCodemmPKi.exit ], [ %.1.i, %bb.hi ], [ %.1.i, %bb.hh ], [ %.1.i, %bb.hg ], [ 0, %bb.gx ] ; 3 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %.0201995, i64 16 ; 3 uses
  %i.ayy = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.ayy, ptr %.0201995, align 4, !tbaa !94
  %i.ayz = shl i32 %.sroa.47.1.ph, 25
  %i.aza = trunc i64 %.sroa.0415.1.ph to i32      ; 2 uses
  %i.azb = or i32 %i.ayz, %i.aza
  %i.azc = getelementptr inbounds nuw i8, ptr %.0201995, i64 4
  store i32 %i.azb, ptr %i.azc, align 4, !tbaa !95
  %i.azd = load i32, ptr %i.by, align 4, !tbaa !96
  %i.aze = zext i32 %i.azd to i64                 ; 2 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %.0201995, i64 14
  %i.azg = getelementptr inbounds nuw i8, ptr %.0201995, i64 8
  %i.azh = add nuw nsw i64 %i.aze, 16             ; 2 uses
  %i.azi = icmp ult i64 %.1.i548, %i.azh
  br i1 %i.azi, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.hj

bb.hj:                                            ; preds = %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit
  %i.azj = load i32, ptr %i.aw, align 8, !tbaa !97 ; 2 uses
  %i.azk = zext i32 %i.azj to i64                 ; 4 uses
  %i.azl = shl nuw i64 4, %i.azk
  %i.azm = add i64 %.1.i548, -16
  %i.azn = sub i64 %i.azm, %i.aze
  %i.azo = add i64 %i.azn, %i.azl                 ; 4 uses
  %i.azp = trunc i64 %i.azo to i32
  %i.azq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.azp, i1 true)
  %i.azr = sub nsw i32 30, %i.azq
  %i.azs = zext i32 %i.azr to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.azj
  %i.azt = xor i32 %notmask.i, -1
  %i.azu = zext nneg i32 %i.azt to i64
  %i.azv = and i64 %i.azo, %i.azu
  %i.azw = lshr i64 %i.azo, %i.azs                ; 2 uses
  %i.azx = and i64 %i.azw, 1
  %i.azy = or disjoint i64 %i.azx, 2
  %i.azz = shl i64 %i.azy, %i.azs
  %i.baa = sub nsw i64 %i.azs, %i.azk             ; 2 uses
  %i.bab = shl nsw i64 %i.baa, 10
  %i.bac = shl nsw i64 %i.baa, 1
  %i.bad = or i64 %i.azw, 65534
  %i.bae = add i64 %i.bac, %i.bad
  %i.baf = shl i64 %i.bae, %i.azk
  %i.bag = add nuw nsw i64 %i.azv, %i.azh
  %i.bah = add i64 %i.bag, %i.baf
  %i.bai = or i64 %i.bah, %i.bab
  %i.baj = sub i64 %i.azo, %i.azz
  %i.bak = lshr i64 %i.baj, %i.azk
  %i.bal = trunc i64 %i.bak to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit, %bb.hj
  %.sink.in = phi i64 [ %i.bai, %bb.hj ], [ %.1.i548, %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit ]
  %storemerge.i = phi i32 [ %i.bal, %bb.hj ], [ 0, %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.azf, align 2, !tbaa !67
  store i32 %storemerge.i, ptr %i.azg, align 4, !tbaa !28
  %i.bam = add nsw i32 %.sroa.47.1.ph, %i.aza     ; 6 uses
  %i.ban = and i16 %.sink, 1023
  %i.bao = icmp eq i16 %i.ban, 0
  %i.bap = getelementptr inbounds nuw i8, ptr %.0201995, i64 12
  %i.baq = icmp ult i64 %.3.ph, 6
  br i1 %i.baq, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.bar = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.hl:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.bas = icmp ult i64 %.3.ph, 130
  br i1 %i.bas, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.bat = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.bau = trunc nuw nsw i64 %i.bat to i32
  %i.bav = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bau, i1 true)
  %i.baw = sub nuw nsw i32 30, %i.bav             ; 2 uses
  %i.bax = shl nuw nsw i32 %i.baw, 1
  %i.bay = zext nneg i32 %i.bax to i64
  %i.baz = zext nneg i32 %i.baw to i64
  %i.bba = lshr i64 %i.bat, %i.baz
  %i.bbb = add nuw nsw i64 %i.bba, %i.bay
  %i.bbc = trunc nuw nsw i64 %i.bbb to i16
  %i.bbd = add nuw nsw i16 %i.bbc, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.hn:                                            ; preds = %bb.hl
  %i.bbe = icmp ult i64 %.3.ph, 2114
  br i1 %i.bbe, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.bbf = add nsw i32 %i.ayy, -66
  %i.bbg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bbf, i1 true)
  %i.bbh = trunc nuw nsw i32 %i.bbg to i16
  %i.bbi = sub nuw nsw i16 41, %i.bbh
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.hp:                                            ; preds = %bb.hn
  %i.bbj = icmp ult i64 %.3.ph, 6210
  br i1 %i.bbj, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.bbk = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.bbk, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.hk, %bb.hm, %bb.ho, %bb.hp, %bb.hq
  %.0.i274 = phi i16 [ %i.bar, %bb.hk ], [ %i.bbd, %bb.hm ], [ %i.bbi, %bb.ho ], [ 21, %bb.hp ], [ %..i, %bb.hq ] ; 3 uses
  %i.bbl = icmp ult i32 %i.bam, 10
  br i1 %i.bbl, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit, label %bb.hr

bb.hr:                                            ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.bbm = icmp ult i32 %i.bam, 134
  br i1 %i.bbm, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %narrow = add nsw i32 %i.bam, -6                ; 2 uses
  %i.bbn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.bbo = sub nuw nsw i32 30, %i.bbn             ; 2 uses
  %i.bbp = shl nuw nsw i32 %i.bbo, 1
  %i.bbq = lshr i32 %narrow, %i.bbo
  %i.bbr = add i32 %i.bbq, %i.bbp
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.ht:                                            ; preds = %bb.hr
  %i.bbs = icmp ult i32 %i.bam, 2118
  br i1 %i.bbs, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1362, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1362: ; preds = %bb.ht
  %i.bbt = add nsw i32 %i.bam, -70
  %i.bbu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bbt, i1 true)
  %i.bbv = trunc nuw nsw i32 %i.bbu to i16
  %i.bbw = sub nuw nsw i16 43, %i.bbv
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, %bb.hs
  %.sink1510 = phi i32 [ %i.bbr, %bb.hs ], [ %i.bam, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %.sink1509 = phi i16 [ 4, %bb.hs ], [ -2, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %i.bbx = trunc i32 %.sink1510 to i16
  %i.bby = add nsw i16 %.sink1509, %i.bbx         ; 4 uses
  %i.bbz = icmp samesign ult i16 %.0.i274, 8
  %or.cond.i276 = and i1 %i.bao, %i.bbz
  %i.bca = icmp ult i16 %i.bby, 16
  %or.cond5.i = and i1 %or.cond.i276, %i.bca
  br i1 %or.cond5.i, label %bb.hu, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.hu:                                            ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.bcb = shl nuw nsw i16 %i.bby, 3
  %i.bcc = and i16 %i.bcb, 64
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread: ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1362, %bb.ht, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.0.i275542 = phi i16 [ %i.bby, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ], [ 23, %bb.ht ], [ %i.bbw, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread1362 ] ; 2 uses
  %i.bcd = lshr i16 %.0.i275542, 3
  %i.bce = lshr i16 %.0.i274, 3
  %narrow.i = mul nuw nsw i16 %i.bce, 3
  %narrow21.i = add nuw nsw i16 %i.bcd, %narrow.i
  %i.bcf = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.bcg = shl nuw nsw i32 %i.bcf, 1
  %i.bch = shl nuw nsw i32 %i.bcf, 6
  %i.bci = add nuw nsw i32 %i.bch, 64
  %i.bcj = lshr i32 5377344, %i.bcg
  %i.bck = and i32 %i.bcj, 192
  %i.bcl = add nuw nsw i32 %i.bci, %i.bck
  %i.bcm = trunc i32 %i.bcl to i16
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit: ; preds = %bb.hu, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread
  %.0.i275543 = phi i16 [ %i.bby, %bb.hu ], [ %.0.i275542, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %.pn.i = phi i16 [ %i.bcc, %bb.hu ], [ %i.bcm, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %i.bcn = and i16 %.0.i275543, 7
  %i.bco = shl nuw nsw i16 %.0.i274, 3
  %i.bcp = and i16 %i.bco, 56
  %i.bcq = or disjoint i16 %i.bcn, %i.bcp
  %.0.i277 = or disjoint i16 %i.bcq, %.pn.i
  store i16 %.0.i277, ptr %i.bap, align 4, !tbaa !67
  %i.bcr = load i64, ptr %11, align 8, !tbaa !50
  %i.bcs = add i64 %i.bcr, %.3.ph
  store i64 %i.bcs, ptr %11, align 8, !tbaa !50
  %i.bct = add i64 %.3197.ph, 2                   ; 2 uses
  %i.bcu = add i64 %.3197.ph, %.sroa.0415.1.ph    ; 5 uses
  %i.bcv = tail call noundef i64 @llvm.umin.i64(i64 %i.bcu, i64 %spec.select) ; 5 uses
  %i.bcw = lshr i64 %.sroa.0415.1.ph, 2
  %i.bcx = icmp ult i64 %.sroa.20.1.ph, %i.bcw
  br i1 %i.bcx, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.bcy = shl nuw i64 %.sroa.20.1.ph, 2
  %i.bcz = sub i64 %i.bcu, %i.bcy
  %i.bda = tail call noundef i64 @llvm.umax.i64(i64 %i.bct, i64 %i.bcz)
  %i.bdb = tail call noundef i64 @llvm.umin.i64(i64 %i.bcv, i64 %i.bda)
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %.0 = phi i64 [ %i.bdb, %bb.hv ], [ %i.bct, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %i.bdc = icmp ult i64 %.0, %i.bcv
  br i1 %i.bdc, label %.lr.ph994, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit

.lr.ph994:                                        ; preds = %bb.hw
  %i.bdd = load i64, ptr %i.bc, align 8, !tbaa !102, !alias.scope !880, !noalias !881 ; 3 uses
  %i.bde = load i32, ptr %i.bf, align 8, !tbaa !105, !alias.scope !880, !noalias !881 ; 3 uses
  %i.bdf = load i32, ptr %i.bd, align 4, !tbaa !103, !alias.scope !880, !noalias !881
  %i.bdg = zext nneg i32 %i.bdf to i64            ; 3 uses
  %i.bdh = sub nuw i64 %i.bcv, %.0
  %.neg1795 = add i64 %.0, 1
  %xtraiter = and i64 %i.bdh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph994
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.bdi = and i64 %.0, %3
  %i.bdj = getelementptr inbounds nuw i8, ptr %2, i64 %i.bdi
  %.0.copyload.i.i.i364.prol = load i64, ptr %i.bdj, align 1, !alias.scope !883, !noalias !880
  %i.bdk = mul i64 %.0.copyload.i.i.i364.prol, %i.bdd
  %i.bdl = lshr i64 %i.bdk, 49                    ; 2 uses
  %i.bdm = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bdl ; 2 uses
  %i.bdn = load i16, ptr %i.bdm, align 2, !tbaa !67, !noalias !884 ; 2 uses
  %i.bdo = zext i16 %i.bdn to i32
  %i.bdp = and i32 %i.bde, %i.bdo
  %i.bdq = zext nneg i32 %i.bdp to i64
  %i.bdr = shl i64 %i.bdl, %i.bdg
  %i.bds = add i16 %i.bdn, 1
  store i16 %i.bds, ptr %i.bdm, align 2, !tbaa !67, !noalias !884
  %i.bdt = trunc i64 %.0 to i32
  %i.bdu = getelementptr [4 x i8], ptr %i.bb, i64 %i.bdr
  %i.bdv = getelementptr [4 x i8], ptr %i.bdu, i64 %i.bdq
  store i32 %i.bdt, ptr %i.bdv, align 4, !tbaa !28, !noalias !884
  %i.bdw = add nuw i64 %.0, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph994
  %.0.i.i363992.unr = phi i64 [ %.0, %.lr.ph994 ], [ %i.bdw, %.prol.loopexit.unr-lcssa ]
  %i.bdx = icmp eq i64 %i.bcv, %.neg1795
  br i1 %i.bdx, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit, label %.lr.ph994.new

.lr.ph994.new:                                    ; preds = %.prol.loopexit, %.lr.ph994.new
  %.0.i.i363992 = phi i64 [ %i.bfb, %.lr.ph994.new ], [ %.0.i.i363992.unr, %.prol.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.bdy = and i64 %.0.i.i363992, %3
  %i.bdz = getelementptr inbounds nuw i8, ptr %2, i64 %i.bdy
  %.0.copyload.i.i.i364 = load i64, ptr %i.bdz, align 1, !alias.scope !883, !noalias !880
  %i.bea = mul i64 %.0.copyload.i.i.i364, %i.bdd
  %i.beb = lshr i64 %i.bea, 49                    ; 2 uses
  %i.bec = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.beb ; 2 uses
  %i.bed = load i16, ptr %i.bec, align 2, !tbaa !67, !noalias !884 ; 2 uses
  %i.bee = zext i16 %i.bed to i32
  %i.bef = and i32 %i.bde, %i.bee
  %i.beg = zext nneg i32 %i.bef to i64
  %i.beh = shl i64 %i.beb, %i.bdg
  %i.bei = add i16 %i.bed, 1
  store i16 %i.bei, ptr %i.bec, align 2, !tbaa !67, !noalias !884
  %i.bej = trunc i64 %.0.i.i363992 to i32
  %i.bek = getelementptr [4 x i8], ptr %i.bb, i64 %i.beh
  %i.bel = getelementptr [4 x i8], ptr %i.bek, i64 %i.beg
  store i32 %i.bej, ptr %i.bel, align 4, !tbaa !28, !noalias !884
  %i.bem = add nuw i64 %.0.i.i363992, 1           ; 2 uses
  %i.ben = and i64 %i.bem, %3
  %i.beo = getelementptr inbounds nuw i8, ptr %2, i64 %i.ben
  %.0.copyload.i.i.i364.1 = load i64, ptr %i.beo, align 1, !alias.scope !883, !noalias !885
  %i.bep = mul i64 %.0.copyload.i.i.i364.1, %i.bdd
  %i.beq = lshr i64 %i.bep, 49                    ; 2 uses
  %i.ber = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.beq ; 2 uses
  %i.bes = load i16, ptr %i.ber, align 2, !tbaa !67, !noalias !886 ; 2 uses
  %i.bet = zext i16 %i.bes to i32
  %i.beu = and i32 %i.bde, %i.bet
  %i.bev = zext nneg i32 %i.beu to i64
  %i.bew = shl i64 %i.beq, %i.bdg
  %i.bex = add i16 %i.bes, 1
  store i16 %i.bex, ptr %i.ber, align 2, !tbaa !67, !noalias !886
  %i.bey = trunc i64 %i.bem to i32
  %i.bez = getelementptr [4 x i8], ptr %i.bb, i64 %i.bew
  %i.bfa = getelementptr [4 x i8], ptr %i.bez, i64 %i.bev
  store i32 %i.bey, ptr %i.bfa, align 4, !tbaa !28, !noalias !886
  %i.bfb = add nuw i64 %.0.i.i363992, 2           ; 2 uses
  %exitcond1116.not.1 = icmp eq i64 %i.bfb, %i.bcv
  br i1 %exitcond1116.not.1, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit, label %.lr.ph994.new, !llvm.loop !9

bb.hx:                                            ; preds = %_ZN13duckdb_brotliL29LookupCompoundDictionaryMatchEPKNS_18CompoundDictionaryEPKhmPKimmmmPNS_18HasherSearchResultE.exit214
  %i.bfc = add i64 %.0191997, 1                   ; 5 uses
  %i.bfd = add i64 %.0194996, 1                   ; 9 uses
  %i.bfe = icmp ugt i64 %i.bfd, %.0189998
  br i1 %i.bfe, label %bb.hy, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit

bb.hy:                                            ; preds = %bb.hx
  %i.bff = add i64 %.0189998, %i.bp
  %i.bfg = icmp ugt i64 %i.bfd, %i.bff
  br i1 %i.bfg, label %bb.hz, label %bb.ib

bb.hz:                                            ; preds = %bb.hy
  %i.bfh = add i64 %.0194996, 17
  %i.bfi = tail call noundef i64 @llvm.umin.i64(i64 %i.bfh, i64 %i.k) ; 2 uses
  %i.bfj = icmp ult i64 %i.bfd, %i.bfi
  br i1 %i.bfj, label %.lr.ph811, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit

.lr.ph811:                                        ; preds = %bb.hz
  %i.bfk = load i32, ptr %i.bf, align 8, !tbaa !105, !alias.scope !887, !noalias !888
  %i.bfl = load i32, ptr %i.bd, align 4, !tbaa !103, !alias.scope !887, !noalias !888
  %i.bfm = zext nneg i32 %i.bfl to i64
  br label %bb.ia

bb.ia:                                            ; preds = %.lr.ph811, %bb.ia
  %.4809 = phi i64 [ %i.bfc, %.lr.ph811 ], [ %i.bgb, %bb.ia ]
  %.4198808 = phi i64 [ %i.bfd, %.lr.ph811 ], [ %i.bgc, %bb.ia ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.bfn = and i64 %.4198808, %3
  %i.bfo = getelementptr inbounds nuw i8, ptr %2, i64 %i.bfn
  %.0.copyload.i.i.i366 = load i64, ptr %i.bfo, align 1, !alias.scope !892, !noalias !887
  %i.bfp = mul i64 %.0.copyload.i.i.i366, %i.fg
  %i.bfq = lshr i64 %i.bfp, 49                    ; 2 uses
  %i.bfr = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bfq ; 2 uses
  %i.bfs = load i16, ptr %i.bfr, align 2, !tbaa !67, !noalias !893 ; 2 uses
  %i.bft = zext i16 %i.bfs to i32
  %i.bfu = and i32 %i.bfk, %i.bft
  %i.bfv = zext nneg i32 %i.bfu to i64
  %i.bfw = shl i64 %i.bfq, %i.bfm
  %i.bfx = add i16 %i.bfs, 1
  store i16 %i.bfx, ptr %i.bfr, align 2, !tbaa !67, !noalias !893
  %i.bfy = trunc i64 %.4198808 to i32
  %i.bfz = getelementptr [4 x i8], ptr %i.bb, i64 %i.bfw
  %i.bga = getelementptr [4 x i8], ptr %i.bfz, i64 %i.bfv
  store i32 %i.bfy, ptr %i.bga, align 4, !tbaa !28, !noalias !893
  %i.bgb = add i64 %.4809, 4                      ; 2 uses
  %i.bgc = add i64 %.4198808, 4                   ; 3 uses
  %i.bgd = icmp ult i64 %i.bgc, %i.bfi
  br i1 %i.bgd, label %bb.ia, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit, !llvm.loop !805

bb.ib:                                            ; preds = %bb.hy
  %i.bge = add i64 %.0194996, 9
  %i.bgf = tail call noundef i64 @llvm.umin.i64(i64 %i.bge, i64 %i.k) ; 2 uses
  %i.bgg = icmp ult i64 %i.bfd, %i.bgf
  br i1 %i.bgg, label %.lr.ph805, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit

.lr.ph805:                                        ; preds = %bb.ib
  %i.bgh = load i32, ptr %i.bf, align 8, !tbaa !105, !alias.scope !894, !noalias !895
end_hunk_5
begin_hunk_6_@_ZL27CreateBackwardReferencesNH2mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  %.3.ph = phi i64 [ %.1176, %_ZN13duckdb_brotliL18FindLongestMatchH2EPNS_2H2EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit._crit_edge ], [ %i.pn, %bb.aw ] ; 9 uses
  %i.ps = shl i64 %.sroa.0272.1.ph, 1
  %i.pt = add i64 %i.ps, %i.p
  %i.pu = add i64 %i.pt, %.3181.ph                ; 3 uses
  %i.pv = add i64 %.pre-phi576, %i.r              ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.14.1.ph, %i.pv
  br i1 %.not.i, label %bb.bf, label %bb.ax

bb.ax:                                            ; preds = %split
  %i.pw = add i64 %.sroa.14.1.ph, 3               ; 2 uses
  %i.px = load i32, ptr %7, align 4, !tbaa !28
  %i.py = sext i32 %i.px to i64                   ; 2 uses
  %i.pz = sub i64 %i.pw, %i.py                    ; 2 uses
  %i.qa = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.qb = sext i32 %i.qa to i64                   ; 2 uses
  %i.qc = sub i64 %i.pw, %i.qb                    ; 2 uses
  %i.qd = icmp eq i64 %.sroa.14.1.ph, %i.py
  br i1 %i.qd, label %_ZL19ComputeDistanceCodemmPKi.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.qe = icmp eq i64 %.sroa.14.1.ph, %i.qb
  br i1 %i.qe, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.qf = icmp ult i64 %i.pz, 7
  br i1 %i.qf, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %.tr25.i = trunc nuw nsw i64 %i.pz to i32
  %i.qg = shl nuw nsw i32 %.tr25.i, 2
  %i.qh = lshr i32 158663784, %i.qg
  %i.qi = and i32 %i.qh, 15
  %i.qj = zext nneg i32 %i.qi to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.bb:                                            ; preds = %bb.az
  %i.qk = icmp ult i64 %i.qc, 7
  br i1 %i.qk, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.tr.i = trunc nuw nsw i64 %i.qc to i32
  %i.ql = shl nuw nsw i32 %.tr.i, 2
  %i.qm = lshr i32 266017486, %i.ql
  %i.qn = and i32 %i.qm, 15
  %i.qo = zext nneg i32 %i.qn to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.bd:                                            ; preds = %bb.bb
  %i.qp = load i32, ptr %i.ah, align 4, !tbaa !28
  %i.qq = sext i32 %i.qp to i64
  %i.qr = icmp eq i64 %.sroa.14.1.ph, %i.qq
  br i1 %i.qr, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.qs = load i32, ptr %i.ai, align 4, !tbaa !28
  %i.qt = sext i32 %i.qs to i64
  %.not366 = icmp eq i64 %.sroa.14.1.ph, %i.qt
  br i1 %.not366, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %split
  %i.qu = add i64 %.sroa.14.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.ay, %bb.bc, %bb.ba, %bb.bd, %bb.be, %bb.bf
  %.1.i = phi i64 [ %i.qu, %bb.bf ], [ 3, %bb.be ], [ 1, %bb.ay ], [ %i.qo, %bb.bc ], [ %i.qj, %bb.ba ], [ 2, %bb.bd ] ; 3 uses
  %i.qv = icmp ule i64 %.sroa.14.1.ph, %i.pv
  %i.qw = icmp ne i64 %.1.i, 0
  %or.cond = and i1 %i.qv, %i.qw
  br i1 %or.cond, label %bb.bg, label %_ZL19ComputeDistanceCodemmPKi.exit.thread

bb.bg:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.qx = load i32, ptr %i.ah, align 4, !tbaa !28
  store i32 %i.qx, ptr %i.ai, align 4, !tbaa !28
  %i.qy = load <2 x i32>, ptr %7, align 4, !tbaa !28
  store <2 x i32> %i.qy, ptr %i.ag, align 4, !tbaa !28
  %i.qz = trunc i64 %.sroa.14.1.ph to i32
  store i32 %i.qz, ptr %7, align 4, !tbaa !28
  br label %_ZL19ComputeDistanceCodemmPKi.exit.thread

_ZL19ComputeDistanceCodemmPKi.exit.thread:        ; preds = %bb.ax, %bb.bg, %_ZL19ComputeDistanceCodemmPKi.exit
  %.1.i362 = phi i64 [ %.1.i, %_ZL19ComputeDistanceCodemmPKi.exit ], [ %.1.i, %bb.bg ], [ 0, %bb.ax ] ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.0185518, i64 16 ; 3 uses
  %i.rb = trunc i64 %.3.ph to i32                 ; 2 uses
  store i32 %i.rb, ptr %.0185518, align 4, !tbaa !94
  %i.rc = shl i32 %.sroa.33.1.ph, 25
  %i.rd = trunc i64 %.sroa.0272.1.ph to i32       ; 2 uses
  %i.re = or i32 %i.rc, %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %.0185518, i64 4
  store i32 %i.re, ptr %i.rf, align 4, !tbaa !95
  %i.rg = load i32, ptr %i.aj, align 4, !tbaa !96
  %i.rh = zext i32 %i.rg to i64                   ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.0185518, i64 14
  %i.rj = getelementptr inbounds nuw i8, ptr %.0185518, i64 8
  %i.rk = add nuw nsw i64 %i.rh, 16               ; 2 uses
  %i.rl = icmp ult i64 %.1.i362, %i.rk
  br i1 %i.rl, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread
  %i.rm = load i32, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.rn = zext i32 %i.rm to i64                   ; 4 uses
  %i.ro = shl nuw i64 4, %i.rn
  %i.rp = add i64 %.1.i362, -16
  %i.rq = sub i64 %i.rp, %i.rh
  %i.rr = add i64 %i.rq, %i.ro                    ; 4 uses
  %i.rs = trunc i64 %i.rr to i32
  %i.rt = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.rs, i1 true)
  %i.ru = sub nsw i32 30, %i.rt
  %i.rv = zext i32 %i.ru to i64                   ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.rm
  %i.rw = xor i32 %notmask.i, -1
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = and i64 %i.rr, %i.rx
  %i.rz = lshr i64 %i.rr, %i.rv                   ; 2 uses
  %i.sa = and i64 %i.rz, 1
  %i.sb = or disjoint i64 %i.sa, 2
  %i.sc = shl i64 %i.sb, %i.rv
  %i.sd = sub nsw i64 %i.rv, %i.rn                ; 2 uses
  %i.se = shl nsw i64 %i.sd, 10
  %i.sf = shl nsw i64 %i.sd, 1
  %i.sg = or i64 %i.rz, 65534
  %i.sh = add i64 %i.sf, %i.sg
  %i.si = shl i64 %i.sh, %i.rn
  %i.sj = add nuw nsw i64 %i.ry, %i.rk
  %i.sk = add i64 %i.sj, %i.si
  %i.sl = or i64 %i.sk, %i.se
  %i.sm = sub i64 %i.rr, %i.sc
  %i.sn = lshr i64 %i.sm, %i.rn
  %i.so = trunc i64 %i.sn to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread, %bb.bh
  %.sink.in = phi i64 [ %i.sl, %bb.bh ], [ %.1.i362, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %storemerge.i = phi i32 [ %i.so, %bb.bh ], [ 0, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.ri, align 2, !tbaa !67
  store i32 %storemerge.i, ptr %i.rj, align 4, !tbaa !28
  %i.sp = add nsw i32 %.sroa.33.1.ph, %i.rd       ; 6 uses
  %i.sq = and i16 %.sink, 1023
  %i.sr = icmp eq i16 %i.sq, 0
  %i.ss = getelementptr inbounds nuw i8, ptr %.0185518, i64 12
  %i.st = icmp ult i64 %.3.ph, 6
  br i1 %i.st, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.su = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.bj:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.sv = icmp ult i64 %.3.ph, 130
  br i1 %i.sv, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.sw = add nsw i64 %.3.ph, -2                  ; 2 uses
  %i.sx = trunc nuw nsw i64 %i.sw to i32
  %i.sy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sx, i1 true)
  %i.sz = sub nuw nsw i32 30, %i.sy               ; 2 uses
  %i.ta = shl nuw nsw i32 %i.sz, 1
  %i.tb = zext nneg i32 %i.ta to i64
  %i.tc = zext nneg i32 %i.sz to i64
  %i.td = lshr i64 %i.sw, %i.tc
  %i.te = add nuw nsw i64 %i.td, %i.tb
  %i.tf = trunc nuw nsw i64 %i.te to i16
  %i.tg = add nuw nsw i16 %i.tf, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.bl:                                            ; preds = %bb.bj
  %i.th = icmp ult i64 %.3.ph, 2114
  br i1 %i.th, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ti = add nsw i32 %i.rb, -66
  %i.tj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ti, i1 true)
  %i.tk = trunc nuw nsw i32 %i.tj to i16
  %i.tl = sub nuw nsw i16 41, %i.tk
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.bn:                                            ; preds = %bb.bl
  %i.tm = icmp ult i64 %.3.ph, 6210
  br i1 %i.tm, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.tn = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.tn, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.bi, %bb.bk, %bb.bm, %bb.bn, %bb.bo
  %.0.i197 = phi i16 [ %i.su, %bb.bi ], [ %i.tg, %bb.bk ], [ %i.tl, %bb.bm ], [ 21, %bb.bn ], [ %..i, %bb.bo ] ; 3 uses
  %i.to = icmp ult i32 %i.sp, 10
  br i1 %i.to, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.tp = icmp ult i32 %i.sp, 134
  br i1 %i.tp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %narrow = add nsw i32 %i.sp, -6                 ; 2 uses
  %i.tq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.tr = sub nuw nsw i32 30, %i.tq               ; 2 uses
  %i.ts = shl nuw nsw i32 %i.tr, 1
  %i.tt = lshr i32 %narrow, %i.tr
  %i.tu = add i32 %i.tt, %i.ts
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.br:                                            ; preds = %bb.bp
  %i.tv = icmp ult i32 %i.sp, 2118
  br i1 %i.tv, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread657, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread657: ; preds = %bb.br
  %i.tw = add nsw i32 %i.sp, -70
  %i.tx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.tw, i1 true)
  %i.ty = trunc nuw nsw i32 %i.tx to i16
  %i.tz = sub nuw nsw i16 43, %i.ty
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, %bb.bq
  %.sink717 = phi i32 [ %i.tu, %bb.bq ], [ %i.sp, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %.sink716 = phi i16 [ 4, %bb.bq ], [ -2, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %i.ua = trunc i32 %.sink717 to i16
  %i.ub = add nsw i16 %.sink716, %i.ua            ; 4 uses
  %i.uc = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.sr, %i.uc
  %i.ud = icmp ult i16 %i.ub, 16
  %or.cond5.i = and i1 %or.cond.i, %i.ud
  br i1 %or.cond5.i, label %bb.bs, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.bs:                                            ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.ue = shl nuw nsw i16 %i.ub, 3
  %i.uf = and i16 %i.ue, 64
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread: ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread657, %bb.br, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.0.i198356 = phi i16 [ %i.ub, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ], [ 23, %bb.br ], [ %i.tz, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread657 ] ; 2 uses
  %i.ug = lshr i16 %.0.i198356, 3
  %i.uh = lshr i16 %.0.i197, 3
  %narrow.i = mul nuw nsw i16 %i.uh, 3
  %narrow21.i = add nuw nsw i16 %i.ug, %narrow.i
  %i.ui = zext nneg i16 %narrow21.i to i32        ; 2 uses
  %i.uj = shl nuw nsw i32 %i.ui, 1
  %i.uk = shl nuw nsw i32 %i.ui, 6
  %i.ul = add nuw nsw i32 %i.uk, 64
  %i.um = lshr i32 5377344, %i.uj
  %i.un = and i32 %i.um, 192
  %i.uo = add nuw nsw i32 %i.ul, %i.un
  %i.up = trunc i32 %i.uo to i16
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit: ; preds = %bb.bs, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread
  %.0.i198357 = phi i16 [ %i.ub, %bb.bs ], [ %.0.i198356, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %.pn.i = phi i16 [ %i.uf, %bb.bs ], [ %i.up, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %i.uq = and i16 %.0.i198357, 7
  %i.ur = shl nuw nsw i16 %.0.i197, 3
  %i.us = and i16 %i.ur, 56
  %i.ut = or disjoint i16 %i.uq, %i.us
  %.0.i199 = or disjoint i16 %i.ut, %.pn.i
  store i16 %.0.i199, ptr %i.ss, align 4, !tbaa !67
  %i.uu = load i64, ptr %11, align 8, !tbaa !50
  %i.uv = add i64 %i.uu, %.3.ph
  store i64 %i.uv, ptr %11, align 8, !tbaa !50
  %i.uw = add i64 %.3181.ph, 2                    ; 2 uses
  %i.ux = add i64 %.3181.ph, %.sroa.0272.1.ph     ; 5 uses
  %i.uy = tail call noundef i64 @llvm.umin.i64(i64 %i.ux, i64 %spec.select) ; 5 uses
  %i.uz = lshr i64 %.sroa.0272.1.ph, 2
  %i.va = icmp ult i64 %.sroa.14.1.ph, %i.uz
  br i1 %i.va, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.vb = shl nuw i64 %.sroa.14.1.ph, 2
  %i.vc = sub i64 %i.ux, %i.vb
  %i.vd = tail call noundef i64 @llvm.umax.i64(i64 %i.uw, i64 %i.vc)
  %i.ve = tail call noundef i64 @llvm.umin.i64(i64 %i.uy, i64 %i.vd)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %.0 = phi i64 [ %i.ve, %bb.bt ], [ %i.uw, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit ] ; 7 uses
  %i.vf = icmp ult i64 %.0, %i.uy
  br i1 %i.vf, label %.lr.ph517.preheader, label %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit

.lr.ph517.preheader:                              ; preds = %bb.bu
  %i.vg = sub nuw i64 %i.uy, %.0
  %.neg827 = add i64 %.0, 1
  %xtraiter = and i64 %i.vg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph517.prol.loopexit, label %.lr.ph517.prol

.lr.ph517.prol:                                   ; preds = %.lr.ph517.preheader
  %i.vh = and i64 %.0, %3
  %i.vi = getelementptr inbounds nuw i8, ptr %2, i64 %i.vh
  %.val266.prol = load i64, ptr %i.vi, align 1
  %i.vj = mul i64 %.val266.prol, 8922571613522624512
  %i.vk = lshr i64 %i.vj, 48
  %i.vl = trunc i64 %.0 to i32
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.vk
  store i32 %i.vl, ptr %i.vm, align 4, !tbaa !28, !noalias !939
  %i.vn = add nuw i64 %.0, 1
  br label %.lr.ph517.prol.loopexit

.lr.ph517.prol.loopexit:                          ; preds = %.lr.ph517.prol, %.lr.ph517.preheader
  %.0.i264516.unr = phi i64 [ %.0, %.lr.ph517.preheader ], [ %i.vn, %.lr.ph517.prol ]
  %i.vo = icmp eq i64 %i.uy, %.neg827
  br i1 %i.vo, label %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit, label %.lr.ph517

.lr.ph517:                                        ; preds = %.lr.ph517.prol.loopexit, %.lr.ph517
  %.0.i264516 = phi i64 [ %i.wc, %.lr.ph517 ], [ %.0.i264516.unr, %.lr.ph517.prol.loopexit ] ; 4 uses
  %i.vp = and i64 %.0.i264516, %3
  %i.vq = getelementptr inbounds nuw i8, ptr %2, i64 %i.vp
  %.val266 = load i64, ptr %i.vq, align 1
  %i.vr = mul i64 %.val266, 8922571613522624512
  %i.vs = lshr i64 %i.vr, 48
  %i.vt = trunc i64 %.0.i264516 to i32
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.vs
  store i32 %i.vt, ptr %i.vu, align 4, !tbaa !28, !noalias !939
  %i.vv = add nuw i64 %.0.i264516, 1              ; 2 uses
  %i.vw = and i64 %i.vv, %3
  %i.vx = getelementptr inbounds nuw i8, ptr %2, i64 %i.vw
  %.val266.1 = load i64, ptr %i.vx, align 1
  %i.vy = mul i64 %.val266.1, 8922571613522624512
  %i.vz = lshr i64 %i.vy, 48
  %i.wa = trunc i64 %i.vv to i32
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.vz
  store i32 %i.wa, ptr %i.wb, align 4, !tbaa !28, !noalias !939
  %i.wc = add nuw i64 %.0.i264516, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.wc, %i.uy
  br i1 %exitcond.not.1, label %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit, label %.lr.ph517, !llvm.loop !914

_ZN13duckdb_brotliL18FindLongestMatchH2EPNS_2H2EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit263.thread: ; preds = %bb.y, %bb.x, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i229, %bb.s, %bb.r, %.critedge102.i214, %.critedge100.i201, %bb.m, %_ZN13duckdb_brotliL18FindLongestMatchH2EPNS_2H2EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit263
  %i.wd = add i64 %.0175520, 1                    ; 5 uses
  %i.we = add i64 %.0178519, 1                    ; 9 uses
  %i.wf = icmp ugt i64 %i.we, %.0173521
  br i1 %i.wf, label %bb.bv, label %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit

bb.bv:                                            ; preds = %_ZN13duckdb_brotliL18FindLongestMatchH2EPNS_2H2EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit263.thread
  %i.wg = add i64 %.0173521, %i.af
  %i.wh = icmp ugt i64 %i.we, %i.wg
  br i1 %i.wh, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.wi = add i64 %.0178519, 17
  %i.wj = tail call noundef i64 @llvm.umin.i64(i64 %i.wi, i64 %i.l) ; 2 uses
  %i.wk = icmp ult i64 %i.we, %i.wj
  br i1 %i.wk, label %.lr.ph462, label %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit

.lr.ph462:                                        ; preds = %bb.bw, %.lr.ph462
  %.4461 = phi i64 [ %i.wr, %.lr.ph462 ], [ %i.wd, %bb.bw ]
  %.4182460 = phi i64 [ %i.ws, %.lr.ph462 ], [ %i.we, %bb.bw ] ; 3 uses
  %i.wl = and i64 %.4182460, %3
  %i.wm = getelementptr inbounds nuw i8, ptr %2, i64 %i.wl
  %.val = load i64, ptr %i.wm, align 1
  %i.wn = mul i64 %.val, 8922571613522624512
  %i.wo = lshr i64 %i.wn, 48
  %i.wp = trunc i64 %.4182460 to i32
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.wo
  store i32 %i.wp, ptr %i.wq, align 4, !tbaa !28, !noalias !940
  %i.wr = add i64 %.4461, 4                       ; 2 uses
  %i.ws = add i64 %.4182460, 4                    ; 3 uses
  %i.wt = icmp ult i64 %i.ws, %i.wj
  br i1 %i.wt, label %.lr.ph462, label %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit, !llvm.loop !917

bb.bx:                                            ; preds = %bb.bv
  %i.wu = add i64 %.0178519, 9
  %i.wv = tail call noundef i64 @llvm.umin.i64(i64 %i.wu, i64 %i.l) ; 2 uses
  %i.ww = icmp ult i64 %i.we, %i.wv
  br i1 %i.ww, label %.lr.ph457, label %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit

.lr.ph457:                                        ; preds = %bb.bx, %.lr.ph457
  %.5456 = phi i64 [ %i.xd, %.lr.ph457 ], [ %i.wd, %bb.bx ]
  %.5183455 = phi i64 [ %i.xe, %.lr.ph457 ], [ %i.we, %bb.bx ] ; 3 uses
  %i.wx = and i64 %.5183455, %3
  %i.wy = getelementptr inbounds nuw i8, ptr %2, i64 %i.wx
  %.val265 = load i64, ptr %i.wy, align 1
  %i.wz = mul i64 %.val265, 8922571613522624512
  %i.xa = lshr i64 %i.wz, 48
  %i.xb = trunc i64 %.5183455 to i32
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.xa
  store i32 %i.xb, ptr %i.xc, align 4, !tbaa !28, !noalias !941
  %i.xd = add i64 %.5456, 2                       ; 2 uses
  %i.xe = add i64 %.5183455, 2                    ; 3 uses
  %i.xf = icmp ult i64 %i.xe, %i.wv
  br i1 %i.xf, label %.lr.ph457, label %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit, !llvm.loop !920

_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit: ; preds = %.lr.ph457, %.lr.ph462, %.lr.ph517.prol.loopexit, %.lr.ph517, %bb.bx, %bb.bw, %bb.bu, %_ZN13duckdb_brotliL18FindLongestMatchH2EPNS_2H2EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit263.thread
  %.1186 = phi ptr [ %i.ra, %bb.bu ], [ %.0185518, %_ZN13duckdb_brotliL18FindLongestMatchH2EPNS_2H2EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit263.thread ], [ %.0185518, %bb.bw ], [ %.0185518, %bb.bx ], [ %.0185518, %.lr.ph462 ], [ %i.ra, %.lr.ph517.prol.loopexit ], [ %i.ra, %.lr.ph517 ], [ %.0185518, %.lr.ph457 ] ; 2 uses
  %.6184 = phi i64 [ %i.ux, %bb.bu ], [ %i.we, %_ZN13duckdb_brotliL18FindLongestMatchH2EPNS_2H2EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit263.thread ], [ %i.we, %bb.bw ], [ %i.we, %bb.bx ], [ %i.ws, %.lr.ph462 ], [ %i.ux, %.lr.ph517.prol.loopexit ], [ %i.ux, %.lr.ph517 ], [ %i.xe, %.lr.ph457 ] ; 3 uses
  %.6 = phi i64 [ 0, %bb.bu ], [ %i.wd, %_ZN13duckdb_brotliL18FindLongestMatchH2EPNS_2H2EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit263.thread ], [ %i.wd, %bb.bw ], [ %i.wd, %bb.bx ], [ %i.wr, %.lr.ph462 ], [ 0, %.lr.ph517.prol.loopexit ], [ 0, %.lr.ph517 ], [ %i.xd, %.lr.ph457 ] ; 2 uses
  %.1174 = phi i64 [ %i.pu, %bb.bu ], [ %.0173521, %_ZN13duckdb_brotliL18FindLongestMatchH2EPNS_2H2EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit263.thread ], [ %.0173521, %bb.bw ], [ %.0173521, %bb.bx ], [ %.0173521, %.lr.ph462 ], [ %i.pu, %.lr.ph517.prol.loopexit ], [ %i.pu, %.lr.ph517 ], [ %.0173521, %.lr.ph457 ]
  %i.xg = add i64 %.6184, 8
  %i.xh = icmp ult i64 %i.xg, %i.j
  br i1 %i.xh, label %bb.b, label %._crit_edge, !llvm.loop !921

._crit_edge:                                      ; preds = %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit, %bb.a
  %.0185.lcssa = phi ptr [ %9, %bb.a ], [ %.1186, %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit ]
  %.0178.lcssa = phi i64 [ %1, %bb.a ], [ %.6184, %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit ]
  %.0175.lcssa = phi i64 [ %i.i, %bb.a ], [ %.6, %_ZN13duckdb_brotliL12StoreRangeH2EPNS_2H2EPKhmmm.exit ]
  %i.xi = sub i64 %i.j, %.0178.lcssa
  %i.xj = add i64 %i.xi, %.0175.lcssa
  store i64 %i.xj, ptr %8, align 8, !tbaa !50
  %i.xk = ptrtoint ptr %.0185.lcssa to i64
  %i.xl = ptrtoint ptr %9 to i64
  %i.xm = sub i64 %i.xk, %i.xl
  %i.xn = ashr exact i64 %i.xm, 4
  %i.xo = load i64, ptr %10, align 8, !tbaa !50
  %i.xp = add i64 %i.xo, %i.xn
  store i64 %i.xp, ptr %10, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL27CreateBackwardReferencesNH3mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr noundef %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !48
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = add i64 %i.f, -16                        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49
  %i.j = load i64, ptr %7, align 8, !tbaa !50     ; 2 uses
end_hunk_6
begin_hunk_7_@_ZL27CreateBackwardReferencesNH4mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  %.3.ph = phi i64 [ %.1176, %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit._crit_edge ], [ %i.aaj, %bb.cv ] ; 9 uses
  %i.aao = shl i64 %.sroa.0281.1.ph, 1
  %i.aap = add i64 %i.aao, %i.r
  %i.aaq = add i64 %i.aap, %.3181.ph              ; 3 uses
  %i.aar = add i64 %.pre-phi601, %i.t             ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.14.1.ph, %i.aar
  br i1 %.not.i, label %bb.de, label %bb.cw

bb.cw:                                            ; preds = %split
  %i.aas = add i64 %.sroa.14.1.ph, 3              ; 2 uses
  %i.aat = load i32, ptr %7, align 4, !tbaa !28
  %i.aau = sext i32 %i.aat to i64                 ; 2 uses
  %i.aav = sub i64 %i.aas, %i.aau                 ; 2 uses
  %i.aaw = load i32, ptr %i.ah, align 4, !tbaa !28
  %i.aax = sext i32 %i.aaw to i64                 ; 2 uses
  %i.aay = sub i64 %i.aas, %i.aax                 ; 2 uses
  %i.aaz = icmp eq i64 %.sroa.14.1.ph, %i.aau
  br i1 %i.aaz, label %_ZL19ComputeDistanceCodemmPKi.exit.thread, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.aba = icmp eq i64 %.sroa.14.1.ph, %i.aax
  br i1 %i.aba, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.abb = icmp ult i64 %i.aav, 7
  br i1 %i.abb, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %.tr25.i = trunc nuw nsw i64 %i.aav to i32
  %i.abc = shl nuw nsw i32 %.tr25.i, 2
  %i.abd = lshr i32 158663784, %i.abc
  %i.abe = and i32 %i.abd, 15
  %i.abf = zext nneg i32 %i.abe to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.da:                                            ; preds = %bb.cy
  %i.abg = icmp ult i64 %i.aay, 7
  br i1 %i.abg, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %.tr.i = trunc nuw nsw i64 %i.aay to i32
  %i.abh = shl nuw nsw i32 %.tr.i, 2
  %i.abi = lshr i32 266017486, %i.abh
  %i.abj = and i32 %i.abi, 15
  %i.abk = zext nneg i32 %i.abj to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.dc:                                            ; preds = %bb.da
  %i.abl = load i32, ptr %i.ai, align 4, !tbaa !28
  %i.abm = sext i32 %i.abl to i64
  %i.abn = icmp eq i64 %.sroa.14.1.ph, %i.abm
  br i1 %i.abn, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.abo = load i32, ptr %i.aj, align 4, !tbaa !28
  %i.abp = sext i32 %i.abo to i64
  %.not375 = icmp eq i64 %.sroa.14.1.ph, %i.abp
  br i1 %.not375, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd, %split
  %i.abq = add i64 %.sroa.14.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.cx, %bb.db, %bb.cz, %bb.dc, %bb.dd, %bb.de
  %.1.i = phi i64 [ %i.abq, %bb.de ], [ 3, %bb.dd ], [ 1, %bb.cx ], [ %i.abk, %bb.db ], [ %i.abf, %bb.cz ], [ 2, %bb.dc ] ; 3 uses
  %i.abr = icmp ule i64 %.sroa.14.1.ph, %i.aar
  %i.abs = icmp ne i64 %.1.i, 0
  %or.cond = and i1 %i.abr, %i.abs
  br i1 %or.cond, label %bb.df, label %_ZL19ComputeDistanceCodemmPKi.exit.thread

bb.df:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.abt = load i32, ptr %i.ai, align 4, !tbaa !28
  store i32 %i.abt, ptr %i.aj, align 4, !tbaa !28
  %i.abu = load <2 x i32>, ptr %7, align 4, !tbaa !28
  store <2 x i32> %i.abu, ptr %i.ah, align 4, !tbaa !28
  %i.abv = trunc i64 %.sroa.14.1.ph to i32
  store i32 %i.abv, ptr %7, align 4, !tbaa !28
  br label %_ZL19ComputeDistanceCodemmPKi.exit.thread

_ZL19ComputeDistanceCodemmPKi.exit.thread:        ; preds = %bb.cw, %bb.df, %_ZL19ComputeDistanceCodemmPKi.exit
  %.1.i371 = phi i64 [ %.1.i, %_ZL19ComputeDistanceCodemmPKi.exit ], [ %.1.i, %bb.df ], [ 0, %bb.cw ] ; 3 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %.0185543, i64 16 ; 3 uses
  %i.abx = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.abx, ptr %.0185543, align 4, !tbaa !94
  %i.aby = shl i32 %.sroa.33.1.ph, 25
  %i.abz = trunc i64 %.sroa.0281.1.ph to i32      ; 2 uses
  %i.aca = or i32 %i.aby, %i.abz
  %i.acb = getelementptr inbounds nuw i8, ptr %.0185543, i64 4
  store i32 %i.aca, ptr %i.acb, align 4, !tbaa !95
  %i.acc = load i32, ptr %i.ak, align 4, !tbaa !96
  %i.acd = zext i32 %i.acc to i64                 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.0185543, i64 14
  %i.acf = getelementptr inbounds nuw i8, ptr %.0185543, i64 8
  %i.acg = add nuw nsw i64 %i.acd, 16             ; 2 uses
  %i.ach = icmp ult i64 %.1.i371, %i.acg
  br i1 %i.ach, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread
  %i.aci = load i32, ptr %i.ab, align 8, !tbaa !97 ; 2 uses
  %i.acj = zext i32 %i.aci to i64                 ; 4 uses
  %i.ack = shl nuw i64 4, %i.acj
  %i.acl = add i64 %.1.i371, -16
  %i.acm = sub i64 %i.acl, %i.acd
  %i.acn = add i64 %i.acm, %i.ack                 ; 4 uses
  %i.aco = trunc i64 %i.acn to i32
  %i.acp = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aco, i1 true)
  %i.acq = sub nsw i32 30, %i.acp
  %i.acr = zext i32 %i.acq to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.aci
  %i.acs = xor i32 %notmask.i, -1
  %i.act = zext nneg i32 %i.acs to i64
  %i.acu = and i64 %i.acn, %i.act
  %i.acv = lshr i64 %i.acn, %i.acr                ; 2 uses
  %i.acw = and i64 %i.acv, 1
  %i.acx = or disjoint i64 %i.acw, 2
  %i.acy = shl i64 %i.acx, %i.acr
  %i.acz = sub nsw i64 %i.acr, %i.acj             ; 2 uses
  %i.ada = shl nsw i64 %i.acz, 10
  %i.adb = shl nsw i64 %i.acz, 1
  %i.adc = or i64 %i.acv, 65534
  %i.add = add i64 %i.adb, %i.adc
  %i.ade = shl i64 %i.add, %i.acj
  %i.adf = add nuw nsw i64 %i.acu, %i.acg
  %i.adg = add i64 %i.adf, %i.ade
  %i.adh = or i64 %i.adg, %i.ada
  %i.adi = sub i64 %i.acn, %i.acy
  %i.adj = lshr i64 %i.adi, %i.acj
  %i.adk = trunc i64 %i.adj to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread, %bb.dg
  %.sink.in = phi i64 [ %i.adh, %bb.dg ], [ %.1.i371, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %storemerge.i = phi i32 [ %i.adk, %bb.dg ], [ 0, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.ace, align 2, !tbaa !67
  store i32 %storemerge.i, ptr %i.acf, align 4, !tbaa !28
  %i.adl = add nsw i32 %.sroa.33.1.ph, %i.abz     ; 6 uses
  %i.adm = and i16 %.sink, 1023
  %i.adn = icmp eq i16 %i.adm, 0
  %i.ado = getelementptr inbounds nuw i8, ptr %.0185543, i64 12
  %i.adp = icmp ult i64 %.3.ph, 6
  br i1 %i.adp, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.adq = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.di:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.adr = icmp ult i64 %.3.ph, 130
  br i1 %i.adr, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ads = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.adt = trunc nuw nsw i64 %i.ads to i32
  %i.adu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adt, i1 true)
  %i.adv = sub nuw nsw i32 30, %i.adu             ; 2 uses
  %i.adw = shl nuw nsw i32 %i.adv, 1
  %i.adx = zext nneg i32 %i.adw to i64
  %i.ady = zext nneg i32 %i.adv to i64
  %i.adz = lshr i64 %i.ads, %i.ady
  %i.aea = add nuw nsw i64 %i.adz, %i.adx
  %i.aeb = trunc nuw nsw i64 %i.aea to i16
  %i.aec = add nuw nsw i16 %i.aeb, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.dk:                                            ; preds = %bb.di
  %i.aed = icmp ult i64 %.3.ph, 2114
  br i1 %i.aed, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.aee = add nsw i32 %i.abx, -66
  %i.aef = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aee, i1 true)
  %i.aeg = trunc nuw nsw i32 %i.aef to i16
  %i.aeh = sub nuw nsw i16 41, %i.aeg
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.dm:                                            ; preds = %bb.dk
  %i.aei = icmp ult i64 %.3.ph, 6210
  br i1 %i.aei, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aej = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.aej, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.dh, %bb.dj, %bb.dl, %bb.dm, %bb.dn
  %.0.i197 = phi i16 [ %i.adq, %bb.dh ], [ %i.aec, %bb.dj ], [ %i.aeh, %bb.dl ], [ 21, %bb.dm ], [ %..i, %bb.dn ] ; 3 uses
  %i.aek = icmp ult i32 %i.adl, 10
  br i1 %i.aek, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit, label %bb.do

bb.do:                                            ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.ael = icmp ult i32 %i.adl, 134
  br i1 %i.ael, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %narrow = add nsw i32 %i.adl, -6                ; 2 uses
  %i.aem = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.aen = sub nuw nsw i32 30, %i.aem             ; 2 uses
  %i.aeo = shl nuw nsw i32 %i.aen, 1
  %i.aep = lshr i32 %narrow, %i.aen
  %i.aeq = add i32 %i.aep, %i.aeo
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.dq:                                            ; preds = %bb.do
  %i.aer = icmp ult i32 %i.adl, 2118
  br i1 %i.aer, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread708, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread708: ; preds = %bb.dq
  %i.aes = add nsw i32 %i.adl, -70
  %i.aet = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aes, i1 true)
  %i.aeu = trunc nuw nsw i32 %i.aet to i16
  %i.aev = sub nuw nsw i16 43, %i.aeu
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, %bb.dp
  %.sink804 = phi i32 [ %i.aeq, %bb.dp ], [ %i.adl, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %.sink803 = phi i16 [ 4, %bb.dp ], [ -2, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %i.aew = trunc i32 %.sink804 to i16
  %i.aex = add nsw i16 %.sink803, %i.aew          ; 4 uses
  %i.aey = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.adn, %i.aey
  %i.aez = icmp ult i16 %i.aex, 16
  %or.cond5.i = and i1 %or.cond.i, %i.aez
  br i1 %or.cond5.i, label %bb.dr, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.dr:                                            ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.afa = shl nuw nsw i16 %i.aex, 3
  %i.afb = and i16 %i.afa, 64
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread: ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread708, %bb.dq, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.0.i198365 = phi i16 [ %i.aex, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ], [ 23, %bb.dq ], [ %i.aev, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread708 ] ; 2 uses
  %i.afc = lshr i16 %.0.i198365, 3
  %i.afd = lshr i16 %.0.i197, 3
  %narrow.i = mul nuw nsw i16 %i.afd, 3
  %narrow21.i = add nuw nsw i16 %i.afc, %narrow.i
  %i.afe = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.aff = shl nuw nsw i32 %i.afe, 1
  %i.afg = shl nuw nsw i32 %i.afe, 6
  %i.afh = add nuw nsw i32 %i.afg, 64
  %i.afi = lshr i32 5377344, %i.aff
  %i.afj = and i32 %i.afi, 192
  %i.afk = add nuw nsw i32 %i.afh, %i.afj
  %i.afl = trunc i32 %i.afk to i16
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit: ; preds = %bb.dr, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread
  %.0.i198366 = phi i16 [ %i.aex, %bb.dr ], [ %.0.i198365, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %.pn.i = phi i16 [ %i.afb, %bb.dr ], [ %i.afl, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %i.afm = and i16 %.0.i198366, 7
  %i.afn = shl nuw nsw i16 %.0.i197, 3
  %i.afo = and i16 %i.afn, 56
  %i.afp = or disjoint i16 %i.afm, %i.afo
  %.0.i199 = or disjoint i16 %i.afp, %.pn.i
  store i16 %.0.i199, ptr %i.ado, align 4, !tbaa !67
  %i.afq = load i64, ptr %11, align 8, !tbaa !50
  %i.afr = add i64 %i.afq, %.3.ph
  store i64 %i.afr, ptr %11, align 8, !tbaa !50
  %i.afs = add i64 %.3181.ph, 2                   ; 2 uses
  %i.aft = add i64 %.3181.ph, %.sroa.0281.1.ph    ; 5 uses
  %i.afu = tail call noundef i64 @llvm.umin.i64(i64 %i.aft, i64 %spec.select) ; 5 uses
  %i.afv = lshr i64 %.sroa.0281.1.ph, 2
  %i.afw = icmp ult i64 %.sroa.14.1.ph, %i.afv
  br i1 %i.afw, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.afx = shl nuw i64 %.sroa.14.1.ph, 2
  %i.afy = sub i64 %i.aft, %i.afx
  %i.afz = tail call noundef i64 @llvm.umax.i64(i64 %i.afs, i64 %i.afy)
  %i.aga = tail call noundef i64 @llvm.umin.i64(i64 %i.afu, i64 %i.afz)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %.0 = phi i64 [ %i.aga, %bb.ds ], [ %i.afs, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit ] ; 8 uses
  %i.agb = icmp ult i64 %.0, %i.afu
  br i1 %i.agb, label %.lr.ph532.preheader, label %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit

.lr.ph532.preheader:                              ; preds = %bb.dt
  %i.agc = sub nuw i64 %i.afu, %.0
  %.neg987 = add i64 %.0, 1
  %xtraiter = and i64 %i.agc, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph532.prol.loopexit, label %.lr.ph532.prol

.lr.ph532.prol:                                   ; preds = %.lr.ph532.preheader
  %i.agd = and i64 %.0, %3
  %i.age = getelementptr inbounds nuw i8, ptr %2, i64 %i.agd
  %.val275.prol = load i64, ptr %i.age, align 1
  %i.agf = mul i64 %.val275.prol, 8922571613522624512
  %i.agg = lshr i64 %i.agf, 47
  %i.agh = trunc i64 %.0 to i32
  %i.agi = and i64 %.0, 24
  %i.agj = add nuw nsw i64 %i.agg, %i.agi
  %i.agk = and i64 %i.agj, 131071
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.agk
  store i32 %i.agh, ptr %i.agl, align 4, !tbaa !28, !noalias !1015
  %i.agm = add nuw i64 %.0, 1
  br label %.lr.ph532.prol.loopexit

.lr.ph532.prol.loopexit:                          ; preds = %.lr.ph532.prol, %.lr.ph532.preheader
  %.0.i273531.unr = phi i64 [ %.0, %.lr.ph532.preheader ], [ %i.agm, %.lr.ph532.prol ]
  %i.agn = icmp eq i64 %i.afu, %.neg987
  br i1 %i.agn, label %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit, label %.lr.ph532

.lr.ph532:                                        ; preds = %.lr.ph532.prol.loopexit, %.lr.ph532
  %.0.i273531 = phi i64 [ %i.ahh, %.lr.ph532 ], [ %.0.i273531.unr, %.lr.ph532.prol.loopexit ] ; 5 uses
  %i.ago = and i64 %.0.i273531, %3
  %i.agp = getelementptr inbounds nuw i8, ptr %2, i64 %i.ago
  %.val275 = load i64, ptr %i.agp, align 1
  %i.agq = mul i64 %.val275, 8922571613522624512
  %i.agr = lshr i64 %i.agq, 47
  %i.ags = trunc i64 %.0.i273531 to i32
  %i.agt = and i64 %.0.i273531, 24
  %i.agu = add nuw nsw i64 %i.agr, %i.agt
  %i.agv = and i64 %i.agu, 131071
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.agv
  store i32 %i.ags, ptr %i.agw, align 4, !tbaa !28, !noalias !1015
  %i.agx = add nuw i64 %.0.i273531, 1             ; 3 uses
  %i.agy = and i64 %i.agx, %3
  %i.agz = getelementptr inbounds nuw i8, ptr %2, i64 %i.agy
  %.val275.1 = load i64, ptr %i.agz, align 1
  %i.aha = mul i64 %.val275.1, 8922571613522624512
  %i.ahb = lshr i64 %i.aha, 47
  %i.ahc = trunc i64 %i.agx to i32
  %i.ahd = and i64 %i.agx, 24
  %i.ahe = add nuw nsw i64 %i.ahb, %i.ahd
  %i.ahf = and i64 %i.ahe, 131071
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ahf
  store i32 %i.ahc, ptr %i.ahg, align 4, !tbaa !28, !noalias !1015
  %i.ahh = add nuw i64 %.0.i273531, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ahh, %i.afu
  br i1 %exitcond.not.1, label %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit, label %.lr.ph532, !llvm.loop !990

.sink.split:                                      ; preds = %bb.ax, %bb.aw, %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit.i.i225, %bb.ar, %bb.aq, %bb.ap
  %i.ahi = trunc i64 %.0178544 to i32
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.dt
  store i32 %i.ahi, ptr %i.ahj, align 4, !tbaa !28, !noalias !1004
  br label %bb.du

bb.du:                                            ; preds = %.sink.split, %_ZN13duckdb_brotliL18FindLongestMatchH4EPNS_2H4EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit272
  %i.ahk = add i64 %.0175545, 1                   ; 5 uses
  %i.ahl = add i64 %.0178544, 1                   ; 9 uses
  %i.ahm = icmp ugt i64 %i.ahl, %.0173546
  br i1 %i.ahm, label %bb.dv, label %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit

bb.dv:                                            ; preds = %bb.du
  %i.ahn = add i64 %.0173546, %i.al
  %i.aho = icmp ugt i64 %i.ahl, %i.ahn
  br i1 %i.aho, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.ahp = add i64 %.0178544, 17
  %i.ahq = tail call noundef i64 @llvm.umin.i64(i64 %i.ahp, i64 %i.n) ; 2 uses
  %i.ahr = icmp ult i64 %i.ahl, %i.ahq
  br i1 %i.ahr, label %.lr.ph540, label %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit

.lr.ph540:                                        ; preds = %bb.dw, %.lr.ph540
  %.4539 = phi i64 [ %i.aib, %.lr.ph540 ], [ %i.ahk, %bb.dw ]
  %.4182538 = phi i64 [ %i.aic, %.lr.ph540 ], [ %i.ahl, %bb.dw ] ; 4 uses
  %i.ahs = and i64 %.4182538, %3
  %i.aht = getelementptr inbounds nuw i8, ptr %2, i64 %i.ahs
  %.val = load i64, ptr %i.aht, align 1
  %i.ahu = mul i64 %.val, 8922571613522624512
  %i.ahv = lshr i64 %i.ahu, 47
  %i.ahw = trunc i64 %.4182538 to i32
  %i.ahx = and i64 %.4182538, 24
  %i.ahy = add nuw nsw i64 %i.ahv, %i.ahx
  %i.ahz = and i64 %i.ahy, 131071
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ahz
  store i32 %i.ahw, ptr %i.aia, align 4, !tbaa !28, !noalias !1016
  %i.aib = add i64 %.4539, 4                      ; 2 uses
  %i.aic = add i64 %.4182538, 4                   ; 3 uses
  %i.aid = icmp ult i64 %i.aic, %i.ahq
  br i1 %i.aid, label %.lr.ph540, label %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit, !llvm.loop !993

bb.dx:                                            ; preds = %bb.dv
  %i.aie = add i64 %.0178544, 9
  %i.aif = tail call noundef i64 @llvm.umin.i64(i64 %i.aie, i64 %i.n) ; 2 uses
  %i.aig = icmp ult i64 %i.ahl, %i.aif
  br i1 %i.aig, label %.lr.ph535, label %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit

.lr.ph535:                                        ; preds = %bb.dx, %.lr.ph535
  %.5534 = phi i64 [ %i.aiq, %.lr.ph535 ], [ %i.ahk, %bb.dx ]
  %.5183533 = phi i64 [ %i.air, %.lr.ph535 ], [ %i.ahl, %bb.dx ] ; 4 uses
  %i.aih = and i64 %.5183533, %3
  %i.aii = getelementptr inbounds nuw i8, ptr %2, i64 %i.aih
  %.val274 = load i64, ptr %i.aii, align 1
  %i.aij = mul i64 %.val274, 8922571613522624512
  %i.aik = lshr i64 %i.aij, 47
  %i.ail = trunc i64 %.5183533 to i32
  %i.aim = and i64 %.5183533, 24
  %i.ain = add nuw nsw i64 %i.aik, %i.aim
  %i.aio = and i64 %i.ain, 131071
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aio
  store i32 %i.ail, ptr %i.aip, align 4, !tbaa !28, !noalias !1017
  %i.aiq = add i64 %.5534, 2                      ; 2 uses
  %i.air = add i64 %.5183533, 2                   ; 3 uses
  %i.ais = icmp ult i64 %i.air, %i.aif
  br i1 %i.ais, label %.lr.ph535, label %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit, !llvm.loop !996

_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit: ; preds = %.lr.ph532.prol.loopexit, %.lr.ph532, %.lr.ph535, %.lr.ph540, %bb.dt, %bb.dx, %bb.dw, %bb.du
  %.1186 = phi ptr [ %.0185543, %bb.dx ], [ %.0185543, %bb.du ], [ %.0185543, %bb.dw ], [ %i.abw, %bb.dt ], [ %.0185543, %.lr.ph535 ], [ %.0185543, %.lr.ph540 ], [ %i.abw, %.lr.ph532 ], [ %i.abw, %.lr.ph532.prol.loopexit ] ; 2 uses
  %.6184 = phi i64 [ %i.ahl, %bb.dx ], [ %i.ahl, %bb.du ], [ %i.ahl, %bb.dw ], [ %i.aft, %bb.dt ], [ %i.air, %.lr.ph535 ], [ %i.aic, %.lr.ph540 ], [ %i.aft, %.lr.ph532 ], [ %i.aft, %.lr.ph532.prol.loopexit ] ; 3 uses
  %.6 = phi i64 [ %i.ahk, %bb.dx ], [ %i.ahk, %bb.du ], [ %i.ahk, %bb.dw ], [ 0, %bb.dt ], [ %i.aiq, %.lr.ph535 ], [ %i.aib, %.lr.ph540 ], [ 0, %.lr.ph532 ], [ 0, %.lr.ph532.prol.loopexit ] ; 2 uses
  %.1174 = phi i64 [ %.0173546, %bb.dx ], [ %.0173546, %bb.du ], [ %.0173546, %bb.dw ], [ %i.aaq, %bb.dt ], [ %.0173546, %.lr.ph535 ], [ %.0173546, %.lr.ph540 ], [ %i.aaq, %.lr.ph532 ], [ %i.aaq, %.lr.ph532.prol.loopexit ]
  %i.ait = add i64 %.6184, 8
  %i.aiu = icmp ult i64 %i.ait, %i.l
  br i1 %i.aiu, label %bb.b, label %._crit_edge, !llvm.loop !997

._crit_edge:                                      ; preds = %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit, %bb.a
  %.0185.lcssa = phi ptr [ %9, %bb.a ], [ %.1186, %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit ]
  %.0178.lcssa = phi i64 [ %1, %bb.a ], [ %.6184, %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit ]
  %.0175.lcssa = phi i64 [ %i.k, %bb.a ], [ %.6, %_ZN13duckdb_brotliL12StoreRangeH4EPNS_2H4EPKhmmm.exit ]
  %i.aiv = sub i64 %i.l, %.0178.lcssa
  %i.aiw = add i64 %i.aiv, %.0175.lcssa
  store i64 %i.aiw, ptr %8, align 8, !tbaa !50
  %i.aix = ptrtoint ptr %.0185.lcssa to i64
  %i.aiy = ptrtoint ptr %9 to i64
end_hunk_7
begin_hunk_8_@_ZL27CreateBackwardReferencesNH5mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  %i.aal = icmp ult i64 %i.aaf, 7
  br i1 %i.aal, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %.tr25.i = trunc nuw nsw i64 %i.aaf to i32
  %i.aam = shl nuw nsw i32 %.tr25.i, 2
  %i.aan = lshr i32 158663784, %i.aam
  %i.aao = and i32 %i.aan, 15
  %i.aap = zext nneg i32 %i.aao to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.da:                                            ; preds = %bb.cy
  %i.aaq = icmp ult i64 %i.aai, 7
  br i1 %i.aaq, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %.tr.i = trunc nuw nsw i64 %i.aai to i32
  %i.aar = shl nuw nsw i32 %.tr.i, 2
  %i.aas = lshr i32 266017486, %i.aar
  %i.aat = and i32 %i.aas, 15
  %i.aau = zext nneg i32 %i.aat to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.dc:                                            ; preds = %bb.da
  %i.aav = load i32, ptr %i.bi, align 4, !tbaa !28
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = icmp eq i64 %.sroa.15.1.ph, %i.aaw
  br i1 %i.aax, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aay = load i32, ptr %i.bj, align 4, !tbaa !28
  %i.aaz = sext i32 %i.aay to i64
  %.not425 = icmp eq i64 %.sroa.15.1.ph, %i.aaz
  br i1 %.not425, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd, %split
  %i.aba = add i64 %.sroa.15.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.cx, %bb.db, %bb.cz, %bb.dc, %bb.dd, %bb.de
  %.1.i219 = phi i64 [ %i.aba, %bb.de ], [ 3, %bb.dd ], [ 1, %bb.cx ], [ %i.aau, %bb.db ], [ %i.aap, %bb.cz ], [ 2, %bb.dc ] ; 5 uses
  %i.abb = icmp ule i64 %.sroa.15.1.ph, %i.aab
  %i.abc = icmp ne i64 %.1.i219, 0
  %or.cond = and i1 %i.abb, %i.abc
  br i1 %or.cond, label %bb.df, label %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit221

bb.df:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.abd = load i32, ptr %i.bi, align 4, !tbaa !28
  store i32 %i.abd, ptr %i.bj, align 4, !tbaa !28
  %i.abe = load <2 x i32>, ptr %7, align 4, !tbaa !28 ; 3 uses
  store <2 x i32> %i.abe, ptr %i.bh, align 4, !tbaa !28
  %i.abf = trunc i64 %.sroa.15.1.ph to i32        ; 4 uses
  store i32 %i.abf, ptr %7, align 4, !tbaa !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  %i.abg = load i32, ptr %i.s, align 4, !tbaa !55, !alias.scope !1069, !noalias !1070 ; 2 uses
  %i.abh = icmp sgt i32 %i.abg, 4
  br i1 %i.abh, label %bb.dg, label %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit221

bb.dg:                                            ; preds = %bb.df
  %i.abi = insertelement <4 x i32> poison, i32 %i.abf, i64 0
  %i.abj = shufflevector <4 x i32> %i.abi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abk = add nsw <4 x i32> %i.abj, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.abk, ptr %i.bk, align 4, !tbaa !28, !alias.scope !1071, !noalias !1069
  %i.abl = add nsw i32 %i.abf, -3
  store i32 %i.abl, ptr %i.bl, align 4, !tbaa !28, !alias.scope !1071, !noalias !1069
  %i.abm = add nsw i32 %i.abf, 3
  store i32 %i.abm, ptr %i.bm, align 4, !tbaa !28, !alias.scope !1071, !noalias !1069
  %i.abn = icmp samesign ugt i32 %i.abg, 10
  br i1 %i.abn, label %bb.dh, label %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit221

bb.dh:                                            ; preds = %bb.dg
  %i.abo = shufflevector <2 x i32> %i.abe, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.abp = add nsw <4 x i32> %i.abo, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.abp, ptr %i.bn, align 4, !tbaa !28, !alias.scope !1071, !noalias !1069
  %i.abq = shufflevector <2 x i32> %i.abe, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.abr = add nsw <2 x i32> %i.abq, <i32 -3, i32 3>
  store <2 x i32> %i.abr, ptr %i.bo, align 4, !tbaa !28, !alias.scope !1071, !noalias !1069
  br label %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit221

_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit221: ; preds = %bb.cw, %bb.dh, %bb.dg, %bb.df, %_ZL19ComputeDistanceCodemmPKi.exit
  %.1.i219421 = phi i64 [ %.1.i219, %_ZL19ComputeDistanceCodemmPKi.exit ], [ %.1.i219, %bb.dh ], [ %.1.i219, %bb.dg ], [ %.1.i219, %bb.df ], [ 0, %bb.cw ] ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.0185641, i64 16 ; 3 uses
  %i.abt = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.abt, ptr %.0185641, align 4, !tbaa !94
  %i.abu = shl i32 %.sroa.34.1.ph, 25
  %i.abv = trunc i64 %.sroa.0317.1.ph to i32      ; 2 uses
  %i.abw = or i32 %i.abu, %i.abv
  %i.abx = getelementptr inbounds nuw i8, ptr %.0185641, i64 4
  store i32 %i.abw, ptr %i.abx, align 4, !tbaa !95
  %i.aby = load i32, ptr %i.bp, align 4, !tbaa !96
  %i.abz = zext i32 %i.aby to i64                 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %.0185641, i64 14
  %i.acb = getelementptr inbounds nuw i8, ptr %.0185641, i64 8
  %i.acc = add nuw nsw i64 %i.abz, 16             ; 2 uses
  %i.acd = icmp ult i64 %.1.i219421, %i.acc
  br i1 %i.acd, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.di

bb.di:                                            ; preds = %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit221
  %i.ace = load i32, ptr %i.av, align 8, !tbaa !97 ; 2 uses
  %i.acf = zext i32 %i.ace to i64                 ; 4 uses
  %i.acg = shl nuw i64 4, %i.acf
  %i.ach = add i64 %.1.i219421, -16
  %i.aci = sub i64 %i.ach, %i.abz
  %i.acj = add i64 %i.aci, %i.acg                 ; 4 uses
  %i.ack = trunc i64 %i.acj to i32
  %i.acl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ack, i1 true)
  %i.acm = sub nsw i32 30, %i.acl
  %i.acn = zext i32 %i.acm to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.ace
  %i.aco = xor i32 %notmask.i, -1
  %i.acp = zext nneg i32 %i.aco to i64
  %i.acq = and i64 %i.acj, %i.acp
  %i.acr = lshr i64 %i.acj, %i.acn                ; 2 uses
  %i.acs = and i64 %i.acr, 1
  %i.act = or disjoint i64 %i.acs, 2
  %i.acu = shl i64 %i.act, %i.acn
  %i.acv = sub nsw i64 %i.acn, %i.acf             ; 2 uses
  %i.acw = shl nsw i64 %i.acv, 10
  %i.acx = shl nsw i64 %i.acv, 1
  %i.acy = or i64 %i.acr, 65534
  %i.acz = add i64 %i.acx, %i.acy
  %i.ada = shl i64 %i.acz, %i.acf
  %i.adb = add nuw nsw i64 %i.acq, %i.acc
  %i.adc = add i64 %i.adb, %i.ada
  %i.add = or i64 %i.adc, %i.acw
  %i.ade = sub i64 %i.acj, %i.acu
  %i.adf = lshr i64 %i.ade, %i.acf
  %i.adg = trunc i64 %i.adf to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit221, %bb.di
  %.sink.in = phi i64 [ %i.add, %bb.di ], [ %.1.i219421, %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit221 ]
  %storemerge.i = phi i32 [ %i.adg, %bb.di ], [ 0, %_ZN13duckdb_brotliL20PrepareDistanceCacheEPii.exit221 ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.aca, align 2, !tbaa !67
  store i32 %storemerge.i, ptr %i.acb, align 4, !tbaa !28
  %i.adh = add nsw i32 %.sroa.34.1.ph, %i.abv     ; 6 uses
  %i.adi = and i16 %.sink, 1023
  %i.adj = icmp eq i16 %i.adi, 0
  %i.adk = getelementptr inbounds nuw i8, ptr %.0185641, i64 12
  %i.adl = icmp ult i64 %.3.ph, 6
  br i1 %i.adl, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.adm = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.dk:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.adn = icmp ult i64 %.3.ph, 130
  br i1 %i.adn, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ado = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.adp = trunc nuw nsw i64 %i.ado to i32
  %i.adq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adp, i1 true)
  %i.adr = sub nuw nsw i32 30, %i.adq             ; 2 uses
  %i.ads = shl nuw nsw i32 %i.adr, 1
  %i.adt = zext nneg i32 %i.ads to i64
  %i.adu = zext nneg i32 %i.adr to i64
  %i.adv = lshr i64 %i.ado, %i.adu
  %i.adw = add nuw nsw i64 %i.adv, %i.adt
  %i.adx = trunc nuw nsw i64 %i.adw to i16
  %i.ady = add nuw nsw i16 %i.adx, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.dm:                                            ; preds = %bb.dk
  %i.adz = icmp ult i64 %.3.ph, 2114
  br i1 %i.adz, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.aea = add nsw i32 %i.abt, -66
  %i.aeb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aea, i1 true)
  %i.aec = trunc nuw nsw i32 %i.aeb to i16
  %i.aed = sub nuw nsw i16 41, %i.aec
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.do:                                            ; preds = %bb.dm
  %i.aee = icmp ult i64 %.3.ph, 6210
  br i1 %i.aee, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aef = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.aef, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.dj, %bb.dl, %bb.dn, %bb.do, %bb.dp
  %.0.i305 = phi i16 [ %i.adm, %bb.dj ], [ %i.ady, %bb.dl ], [ %i.aed, %bb.dn ], [ 21, %bb.do ], [ %..i, %bb.dp ] ; 3 uses
  %i.aeg = icmp ult i32 %i.adh, 10
  br i1 %i.aeg, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit, label %bb.dq

bb.dq:                                            ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.aeh = icmp ult i32 %i.adh, 134
  br i1 %i.aeh, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %narrow = add nsw i32 %i.adh, -6                ; 2 uses
  %i.aei = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.aej = sub nuw nsw i32 30, %i.aei             ; 2 uses
  %i.aek = shl nuw nsw i32 %i.aej, 1
  %i.ael = lshr i32 %narrow, %i.aej
  %i.aem = add i32 %i.ael, %i.aek
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.ds:                                            ; preds = %bb.dq
  %i.aen = icmp ult i32 %i.adh, 2118
  br i1 %i.aen, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread820, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread820: ; preds = %bb.ds
  %i.aeo = add nsw i32 %i.adh, -70
  %i.aep = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aeo, i1 true)
  %i.aeq = trunc nuw nsw i32 %i.aep to i16
  %i.aer = sub nuw nsw i16 43, %i.aeq
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, %bb.dr
  %.sink892 = phi i32 [ %i.aem, %bb.dr ], [ %i.adh, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %.sink891 = phi i16 [ 4, %bb.dr ], [ -2, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %i.aes = trunc i32 %.sink892 to i16
  %i.aet = add nsw i16 %.sink891, %i.aes          ; 4 uses
  %i.aeu = icmp samesign ult i16 %.0.i305, 8
  %or.cond.i307 = and i1 %i.adj, %i.aeu
  %i.aev = icmp ult i16 %i.aet, 16
  %or.cond5.i = and i1 %or.cond.i307, %i.aev
  br i1 %or.cond5.i, label %bb.dt, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.dt:                                            ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.aew = shl nuw nsw i16 %i.aet, 3
  %i.aex = and i16 %i.aew, 64
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread: ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread820, %bb.ds, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.0.i306415 = phi i16 [ %i.aet, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ], [ 23, %bb.ds ], [ %i.aer, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread820 ] ; 2 uses
  %i.aey = lshr i16 %.0.i306415, 3
  %i.aez = lshr i16 %.0.i305, 3
  %narrow.i308 = mul nuw nsw i16 %i.aez, 3
  %narrow21.i = add nuw nsw i16 %i.aey, %narrow.i308
  %i.afa = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.afb = shl nuw nsw i32 %i.afa, 1
  %i.afc = shl nuw nsw i32 %i.afa, 6
  %i.afd = add nuw nsw i32 %i.afc, 64
  %i.afe = lshr i32 5377344, %i.afb
  %i.aff = and i32 %i.afe, 192
  %i.afg = add nuw nsw i32 %i.afd, %i.aff
  %i.afh = trunc i32 %i.afg to i16
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit: ; preds = %bb.dt, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread
  %.0.i306416 = phi i16 [ %i.aet, %bb.dt ], [ %.0.i306415, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %.pn.i = phi i16 [ %i.aex, %bb.dt ], [ %i.afh, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %i.afi = and i16 %.0.i306416, 7
  %i.afj = shl nuw nsw i16 %.0.i305, 3
  %i.afk = and i16 %i.afj, 56
  %i.afl = or disjoint i16 %i.afi, %i.afk
  %.0.i309 = or disjoint i16 %i.afl, %.pn.i
  store i16 %.0.i309, ptr %i.adk, align 4, !tbaa !67
  %i.afm = load i64, ptr %11, align 8, !tbaa !50
  %i.afn = add i64 %i.afm, %.3.ph
  store i64 %i.afn, ptr %11, align 8, !tbaa !50
  %i.afo = add i64 %.3181.ph, 2                   ; 2 uses
  %i.afp = add i64 %.3181.ph, %.sroa.0317.1.ph    ; 5 uses
  %i.afq = tail call noundef i64 @llvm.umin.i64(i64 %i.afp, i64 %spec.select) ; 5 uses
  %i.afr = lshr i64 %.sroa.0317.1.ph, 2
  %i.afs = icmp ult i64 %.sroa.15.1.ph, %i.afr
  br i1 %i.afs, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.aft = shl nuw i64 %.sroa.15.1.ph, 2
  %i.afu = sub i64 %i.afp, %i.aft
  %i.afv = tail call noundef i64 @llvm.umax.i64(i64 %i.afo, i64 %i.afu)
  %i.afw = tail call noundef i64 @llvm.umin.i64(i64 %i.afq, i64 %i.afv)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %.0 = phi i64 [ %i.afw, %bb.du ], [ %i.afo, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit ] ; 7 uses
  %i.afx = icmp ult i64 %.0, %i.afq
  br i1 %i.afx, label %.lr.ph628, label %_ZN13duckdb_brotliL12StoreRangeH5EPNS_2H5EPKhmmm.exit

.lr.ph628:                                        ; preds = %bb.dv
  %i.afy = load i32, ptr %i.bb, align 8, !tbaa !64, !alias.scope !1072, !noalias !1073 ; 3 uses
  %i.afz = load i32, ptr %i.be, align 4, !tbaa !69, !alias.scope !1072, !noalias !1073 ; 3 uses
  %i.aga = load i32, ptr %i.bc, align 8, !tbaa !65, !alias.scope !1072, !noalias !1073 ; 3 uses
  %i.agb = sub nuw i64 %i.afq, %.0
  %.neg1025 = add i64 %.0, 1
  %xtraiter = and i64 %i.agb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph628
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %i.agc = and i64 %.0, %3
  %i.agd = getelementptr inbounds nuw i8, ptr %2, i64 %i.agc
  %.val311.prol = load i32, ptr %i.agd, align 1
  %i.age = mul i32 %.val311.prol, 506832829
  %i.agf = lshr i32 %i.age, %i.afy                ; 2 uses
  %i.agg = zext i32 %i.agf to i64
  %i.agh = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.agg ; 2 uses
  %i.agi = load i16, ptr %i.agh, align 2, !tbaa !67, !noalias !1072 ; 2 uses
  %i.agj = zext i16 %i.agi to i32
  %i.agk = and i32 %i.afz, %i.agj
  %i.agl = zext nneg i32 %i.agk to i64
  %i.agm = shl i32 %i.agf, %i.aga
  %i.agn = zext i32 %i.agm to i64
  %i.ago = trunc i64 %.0 to i32
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.agl
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %i.agn
  store i32 %i.ago, ptr %i.agq, align 4, !tbaa !28, !noalias !1072
  %i.agr = add i16 %i.agi, 1
  store i16 %i.agr, ptr %i.agh, align 2, !tbaa !67, !noalias !1072
  %i.ags = add nuw i64 %.0, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph628
  %.0.i220626.unr = phi i64 [ %.0, %.lr.ph628 ], [ %i.ags, %.prol.loopexit.unr-lcssa ]
  %i.agt = icmp eq i64 %i.afq, %.neg1025
  br i1 %i.agt, label %_ZN13duckdb_brotliL12StoreRangeH5EPNS_2H5EPKhmmm.exit, label %.lr.ph628.new

.lr.ph628.new:                                    ; preds = %.prol.loopexit, %.lr.ph628.new
  %.0.i220626 = phi i64 [ %i.aib, %.lr.ph628.new ], [ %.0.i220626.unr, %.prol.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %i.agu = and i64 %.0.i220626, %3
  %i.agv = getelementptr inbounds nuw i8, ptr %2, i64 %i.agu
  %.val311 = load i32, ptr %i.agv, align 1
  %i.agw = mul i32 %.val311, 506832829
  %i.agx = lshr i32 %i.agw, %i.afy                ; 2 uses
  %i.agy = zext i32 %i.agx to i64
  %i.agz = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.agy ; 2 uses
  %i.aha = load i16, ptr %i.agz, align 2, !tbaa !67, !noalias !1072 ; 2 uses
  %i.ahb = zext i16 %i.aha to i32
  %i.ahc = and i32 %i.afz, %i.ahb
  %i.ahd = zext nneg i32 %i.ahc to i64
  %i.ahe = shl i32 %i.agx, %i.aga
  %i.ahf = zext i32 %i.ahe to i64
  %i.ahg = trunc i64 %.0.i220626 to i32
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ahd
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %i.ahf
  store i32 %i.ahg, ptr %i.ahi, align 4, !tbaa !28, !noalias !1072
  %i.ahj = add i16 %i.aha, 1
  store i16 %i.ahj, ptr %i.agz, align 2, !tbaa !67, !noalias !1072
  %i.ahk = add nuw i64 %.0.i220626, 1             ; 2 uses
  %i.ahl = and i64 %i.ahk, %3
  %i.ahm = getelementptr inbounds nuw i8, ptr %2, i64 %i.ahl
  %.val311.1 = load i32, ptr %i.ahm, align 1
  %i.ahn = mul i32 %.val311.1, 506832829
  %i.aho = lshr i32 %i.ahn, %i.afy                ; 2 uses
  %i.ahp = zext i32 %i.aho to i64
  %i.ahq = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ahp ; 2 uses
  %i.ahr = load i16, ptr %i.ahq, align 2, !tbaa !67, !noalias !1074 ; 2 uses
  %i.ahs = zext i16 %i.ahr to i32
  %i.aht = and i32 %i.afz, %i.ahs
  %i.ahu = zext nneg i32 %i.aht to i64
  %i.ahv = shl i32 %i.aho, %i.aga
  %i.ahw = zext i32 %i.ahv to i64
  %i.ahx = trunc i64 %i.ahk to i32
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ahu
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.ahy, i64 %i.ahw
  store i32 %i.ahx, ptr %i.ahz, align 4, !tbaa !28, !noalias !1074
  %i.aia = add i16 %i.ahr, 1
  store i16 %i.aia, ptr %i.ahq, align 2, !tbaa !67, !noalias !1074
  %i.aib = add nuw i64 %.0.i220626, 2             ; 2 uses
  %exitcond702.not.1 = icmp eq i64 %i.aib, %i.afq
  br i1 %exitcond702.not.1, label %_ZN13duckdb_brotliL12StoreRangeH5EPNS_2H5EPKhmmm.exit, label %.lr.ph628.new, !llvm.loop !6

_ZN13duckdb_brotliL18FindLongestMatchH5EPNS_2H5EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit216.thread: ; preds = %bb.ai, %_ZN13duckdb_brotliL18FindLongestMatchH5EPNS_2H5EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit216
  %i.aic = add i64 %.0175643, 1                   ; 5 uses
  %i.aid = add i64 %.0178642, 1                   ; 9 uses
  %i.aie = icmp ugt i64 %i.aid, %.0173644
  br i1 %i.aie, label %bb.dw, label %_ZN13duckdb_brotliL12StoreRangeH5EPNS_2H5EPKhmmm.exit

bb.dw:                                            ; preds = %_ZN13duckdb_brotliL18FindLongestMatchH5EPNS_2H5EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit216.thread
  %i.aif = add i64 %.0173644, %i.bq
  %i.aig = icmp ugt i64 %i.aid, %i.aif
  br i1 %i.aig, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.aih = add i64 %.0178642, 17
  %i.aii = tail call noundef i64 @llvm.umin.i64(i64 %i.aih, i64 %i.br) ; 2 uses
  %i.aij = icmp ult i64 %i.aid, %i.aii
  br i1 %i.aij, label %.lr.ph638, label %_ZN13duckdb_brotliL12StoreRangeH5EPNS_2H5EPKhmmm.exit

.lr.ph638:                                        ; preds = %bb.dx
  %i.aik = load i32, ptr %i.bb, align 8, !tbaa !64, !alias.scope !1075, !noalias !1076
  %i.ail = load i32, ptr %i.be, align 4, !tbaa !69, !alias.scope !1075, !noalias !1076
  %i.aim = load i32, ptr %i.bc, align 8, !tbaa !65, !alias.scope !1075, !noalias !1076
  br label %bb.dy

bb.dy:                                            ; preds = %.lr.ph638, %bb.dy
  %.4636 = phi i64 [ %i.aic, %.lr.ph638 ], [ %i.ajd, %bb.dy ]
  %.4182635 = phi i64 [ %i.aid, %.lr.ph638 ], [ %i.aje, %bb.dy ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %i.ain = and i64 %.4182635, %3
  %i.aio = getelementptr inbounds nuw i8, ptr %2, i64 %i.ain
  %.val = load i32, ptr %i.aio, align 1
  %i.aip = mul i32 %.val, 506832829
  %i.aiq = lshr i32 %i.aip, %i.aik                ; 2 uses
  %i.air = zext i32 %i.aiq to i64
  %i.ais = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.air ; 2 uses
  %i.ait = load i16, ptr %i.ais, align 2, !tbaa !67, !noalias !1075 ; 2 uses
  %i.aiu = zext i16 %i.ait to i32
  %i.aiv = and i32 %i.ail, %i.aiu
  %i.aiw = zext nneg i32 %i.aiv to i64
  %i.aix = shl i32 %i.aiq, %i.aim
  %i.aiy = zext i32 %i.aix to i64
  %i.aiz = trunc i64 %.4182635 to i32
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.aiw
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %i.aiy
  store i32 %i.aiz, ptr %i.ajb, align 4, !tbaa !28, !noalias !1075
  %i.ajc = add i16 %i.ait, 1
  store i16 %i.ajc, ptr %i.ais, align 2, !tbaa !67, !noalias !1075
  %i.ajd = add i64 %.4636, 4                      ; 2 uses
  %i.aje = add i64 %.4182635, 4                   ; 3 uses
  %i.ajf = icmp ult i64 %i.aje, %i.aii
  br i1 %i.ajf, label %bb.dy, label %_ZN13duckdb_brotliL12StoreRangeH5EPNS_2H5EPKhmmm.exit, !llvm.loop !1046

bb.dz:                                            ; preds = %bb.dw
  %i.ajg = add i64 %.0178642, 9
  %i.ajh = tail call noundef i64 @llvm.umin.i64(i64 %i.ajg, i64 %i.k) ; 2 uses
  %i.aji = icmp ult i64 %i.aid, %i.ajh
  br i1 %i.aji, label %.lr.ph632, label %_ZN13duckdb_brotliL12StoreRangeH5EPNS_2H5EPKhmmm.exit
end_hunk_8
begin_hunk_9_@_ZL27CreateBackwardReferencesNH6mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  br i1 %i.aap, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %.tr25.i = trunc nuw nsw i64 %i.aaj to i32
  %i.aaq = shl nuw nsw i32 %.tr25.i, 2
  %i.aar = lshr i32 158663784, %i.aaq
  %i.aas = and i32 %i.aar, 15
  %i.aat = zext nneg i32 %i.aas to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.da:                                            ; preds = %bb.cy
  %i.aau = icmp ult i64 %i.aam, 7
  br i1 %i.aau, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %.tr.i = trunc nuw nsw i64 %i.aam to i32
  %i.aav = shl nuw nsw i32 %.tr.i, 2
  %i.aaw = lshr i32 266017486, %i.aav
  %i.aax = and i32 %i.aaw, 15
  %i.aay = zext nneg i32 %i.aax to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.dc:                                            ; preds = %bb.da
  %i.aaz = load i32, ptr %i.bi, align 4, !tbaa !28
  %i.aba = sext i32 %i.aaz to i64
  %i.abb = icmp eq i64 %.sroa.15.1.ph, %i.aba
  br i1 %i.abb, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.abc = load i32, ptr %i.bj, align 4, !tbaa !28
  %i.abd = sext i32 %i.abc to i64
  %.not403 = icmp eq i64 %.sroa.15.1.ph, %i.abd
  br i1 %.not403, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd, %split
  %i.abe = add i64 %.sroa.15.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.cx, %bb.db, %bb.cz, %bb.dc, %bb.dd, %bb.de
  %.1.i = phi i64 [ %i.abe, %bb.de ], [ 3, %bb.dd ], [ 1, %bb.cx ], [ %i.aay, %bb.db ], [ %i.aat, %bb.cz ], [ 2, %bb.dc ] ; 5 uses
  %i.abf = icmp ule i64 %.sroa.15.1.ph, %i.aaf
  %i.abg = icmp ne i64 %.1.i, 0
  %or.cond = and i1 %i.abf, %i.abg
  br i1 %or.cond, label %bb.df, label %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit

bb.df:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.abh = load i32, ptr %i.bi, align 4, !tbaa !28
  store i32 %i.abh, ptr %i.bj, align 4, !tbaa !28
  %i.abi = load <2 x i32>, ptr %7, align 4, !tbaa !28 ; 3 uses
  store <2 x i32> %i.abi, ptr %i.bh, align 4, !tbaa !28
  %i.abj = trunc i64 %.sroa.15.1.ph to i32        ; 4 uses
  store i32 %i.abj, ptr %7, align 4, !tbaa !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  %i.abk = load i32, ptr %i.s, align 8, !tbaa !99, !alias.scope !1142, !noalias !1143 ; 2 uses
  %i.abl = icmp sgt i32 %i.abk, 4
  br i1 %i.abl, label %bb.dg, label %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit

bb.dg:                                            ; preds = %bb.df
  %i.abm = insertelement <4 x i32> poison, i32 %i.abj, i64 0
  %i.abn = shufflevector <4 x i32> %i.abm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abo = add nsw <4 x i32> %i.abn, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.abo, ptr %i.bk, align 4, !tbaa !28, !alias.scope !1144, !noalias !1142
  %i.abp = add nsw i32 %i.abj, -3
  store i32 %i.abp, ptr %i.bl, align 4, !tbaa !28, !alias.scope !1144, !noalias !1142
  %i.abq = add nsw i32 %i.abj, 3
  store i32 %i.abq, ptr %i.bm, align 4, !tbaa !28, !alias.scope !1144, !noalias !1142
  %i.abr = icmp samesign ugt i32 %i.abk, 10
  br i1 %i.abr, label %bb.dh, label %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit

bb.dh:                                            ; preds = %bb.dg
  %i.abs = shufflevector <2 x i32> %i.abi, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.abt = add nsw <4 x i32> %i.abs, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.abt, ptr %i.bn, align 4, !tbaa !28, !alias.scope !1144, !noalias !1142
  %i.abu = shufflevector <2 x i32> %i.abi, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.abv = add nsw <2 x i32> %i.abu, <i32 -3, i32 3>
  store <2 x i32> %i.abv, ptr %i.bo, align 4, !tbaa !28, !alias.scope !1144, !noalias !1142
  br label %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit

_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit: ; preds = %bb.cw, %bb.dh, %bb.dg, %bb.df, %_ZL19ComputeDistanceCodemmPKi.exit
  %.1.i399 = phi i64 [ %.1.i, %_ZL19ComputeDistanceCodemmPKi.exit ], [ %.1.i, %bb.dh ], [ %.1.i, %bb.dg ], [ %.1.i, %bb.df ], [ 0, %bb.cw ] ; 3 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %.0185619, i64 16 ; 3 uses
  %i.abx = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.abx, ptr %.0185619, align 4, !tbaa !94
  %i.aby = shl i32 %.sroa.34.1.ph, 25
  %i.abz = trunc i64 %.sroa.0295.1.ph to i32      ; 2 uses
  %i.aca = or i32 %i.aby, %i.abz
  %i.acb = getelementptr inbounds nuw i8, ptr %.0185619, i64 4
  store i32 %i.aca, ptr %i.acb, align 4, !tbaa !95
  %i.acc = load i32, ptr %i.bp, align 4, !tbaa !96
  %i.acd = zext i32 %i.acc to i64                 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.0185619, i64 14
  %i.acf = getelementptr inbounds nuw i8, ptr %.0185619, i64 8
  %i.acg = add nuw nsw i64 %i.acd, 16             ; 2 uses
  %i.ach = icmp ult i64 %.1.i399, %i.acg
  br i1 %i.ach, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.di

bb.di:                                            ; preds = %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit
  %i.aci = load i32, ptr %i.av, align 8, !tbaa !97 ; 2 uses
  %i.acj = zext i32 %i.aci to i64                 ; 4 uses
  %i.ack = shl nuw i64 4, %i.acj
  %i.acl = add i64 %.1.i399, -16
  %i.acm = sub i64 %i.acl, %i.acd
  %i.acn = add i64 %i.acm, %i.ack                 ; 4 uses
  %i.aco = trunc i64 %i.acn to i32
  %i.acp = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aco, i1 true)
  %i.acq = sub nsw i32 30, %i.acp
  %i.acr = zext i32 %i.acq to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.aci
  %i.acs = xor i32 %notmask.i, -1
  %i.act = zext nneg i32 %i.acs to i64
  %i.acu = and i64 %i.acn, %i.act
  %i.acv = lshr i64 %i.acn, %i.acr                ; 2 uses
  %i.acw = and i64 %i.acv, 1
  %i.acx = or disjoint i64 %i.acw, 2
  %i.acy = shl i64 %i.acx, %i.acr
  %i.acz = sub nsw i64 %i.acr, %i.acj             ; 2 uses
  %i.ada = shl nsw i64 %i.acz, 10
  %i.adb = shl nsw i64 %i.acz, 1
  %i.adc = or i64 %i.acv, 65534
  %i.add = add i64 %i.adb, %i.adc
  %i.ade = shl i64 %i.add, %i.acj
  %i.adf = add nuw nsw i64 %i.acu, %i.acg
  %i.adg = add i64 %i.adf, %i.ade
  %i.adh = or i64 %i.adg, %i.ada
  %i.adi = sub i64 %i.acn, %i.acy
  %i.adj = lshr i64 %i.adi, %i.acj
  %i.adk = trunc i64 %i.adj to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit, %bb.di
  %.sink.in = phi i64 [ %i.adh, %bb.di ], [ %.1.i399, %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit ]
  %storemerge.i = phi i32 [ %i.adk, %bb.di ], [ 0, %_ZN13duckdb_brotliL22PrepareDistanceCacheH6EPNS_2H6EPi.exit ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.ace, align 2, !tbaa !67
  store i32 %storemerge.i, ptr %i.acf, align 4, !tbaa !28
  %i.adl = add nsw i32 %.sroa.34.1.ph, %i.abz     ; 6 uses
  %i.adm = and i16 %.sink, 1023
  %i.adn = icmp eq i16 %i.adm, 0
  %i.ado = getelementptr inbounds nuw i8, ptr %.0185619, i64 12
  %i.adp = icmp ult i64 %.3.ph, 6
  br i1 %i.adp, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.adq = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.dk:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.adr = icmp ult i64 %.3.ph, 130
  br i1 %i.adr, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ads = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.adt = trunc nuw nsw i64 %i.ads to i32
  %i.adu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adt, i1 true)
  %i.adv = sub nuw nsw i32 30, %i.adu             ; 2 uses
  %i.adw = shl nuw nsw i32 %i.adv, 1
  %i.adx = zext nneg i32 %i.adw to i64
  %i.ady = zext nneg i32 %i.adv to i64
  %i.adz = lshr i64 %i.ads, %i.ady
  %i.aea = add nuw nsw i64 %i.adz, %i.adx
  %i.aeb = trunc nuw nsw i64 %i.aea to i16
  %i.aec = add nuw nsw i16 %i.aeb, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.dm:                                            ; preds = %bb.dk
  %i.aed = icmp ult i64 %.3.ph, 2114
  br i1 %i.aed, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.aee = add nsw i32 %i.abx, -66
  %i.aef = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aee, i1 true)
  %i.aeg = trunc nuw nsw i32 %i.aef to i16
  %i.aeh = sub nuw nsw i16 41, %i.aeg
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.do:                                            ; preds = %bb.dm
  %i.aei = icmp ult i64 %.3.ph, 6210
  br i1 %i.aei, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aej = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.aej, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.dj, %bb.dl, %bb.dn, %bb.do, %bb.dp
  %.0.i197 = phi i16 [ %i.adq, %bb.dj ], [ %i.aec, %bb.dl ], [ %i.aeh, %bb.dn ], [ 21, %bb.do ], [ %..i, %bb.dp ] ; 3 uses
  %i.aek = icmp ult i32 %i.adl, 10
  br i1 %i.aek, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit, label %bb.dq

bb.dq:                                            ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.ael = icmp ult i32 %i.adl, 134
  br i1 %i.ael, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %narrow = add nsw i32 %i.adl, -6                ; 2 uses
  %i.aem = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.aen = sub nuw nsw i32 30, %i.aem             ; 2 uses
  %i.aeo = shl nuw nsw i32 %i.aen, 1
  %i.aep = lshr i32 %narrow, %i.aen
  %i.aeq = add i32 %i.aep, %i.aeo
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.ds:                                            ; preds = %bb.dq
  %i.aer = icmp ult i32 %i.adl, 2118
  br i1 %i.aer, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread800, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread800: ; preds = %bb.ds
  %i.aes = add nsw i32 %i.adl, -70
  %i.aet = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aes, i1 true)
  %i.aeu = trunc nuw nsw i32 %i.aet to i16
  %i.aev = sub nuw nsw i16 43, %i.aeu
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, %bb.dr
  %.sink872 = phi i32 [ %i.aeq, %bb.dr ], [ %i.adl, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %.sink871 = phi i16 [ 4, %bb.dr ], [ -2, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %i.aew = trunc i32 %.sink872 to i16
  %i.aex = add nsw i16 %.sink871, %i.aew          ; 4 uses
  %i.aey = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.adn, %i.aey
  %i.aez = icmp ult i16 %i.aex, 16
  %or.cond5.i = and i1 %or.cond.i, %i.aez
  br i1 %or.cond5.i, label %bb.dt, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.dt:                                            ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.afa = shl nuw nsw i16 %i.aex, 3
  %i.afb = and i16 %i.afa, 64
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread: ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread800, %bb.ds, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.0.i198393 = phi i16 [ %i.aex, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ], [ 23, %bb.ds ], [ %i.aev, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread800 ] ; 2 uses
  %i.afc = lshr i16 %.0.i198393, 3
  %i.afd = lshr i16 %.0.i197, 3
  %narrow.i = mul nuw nsw i16 %i.afd, 3
  %narrow21.i = add nuw nsw i16 %i.afc, %narrow.i
  %i.afe = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.aff = shl nuw nsw i32 %i.afe, 1
  %i.afg = shl nuw nsw i32 %i.afe, 6
  %i.afh = add nuw nsw i32 %i.afg, 64
  %i.afi = lshr i32 5377344, %i.aff
  %i.afj = and i32 %i.afi, 192
  %i.afk = add nuw nsw i32 %i.afh, %i.afj
  %i.afl = trunc i32 %i.afk to i16
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit: ; preds = %bb.dt, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread
  %.0.i198394 = phi i16 [ %i.aex, %bb.dt ], [ %.0.i198393, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %.pn.i = phi i16 [ %i.afb, %bb.dt ], [ %i.afl, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %i.afm = and i16 %.0.i198394, 7
  %i.afn = shl nuw nsw i16 %.0.i197, 3
  %i.afo = and i16 %i.afn, 56
  %i.afp = or disjoint i16 %i.afm, %i.afo
  %.0.i199 = or disjoint i16 %i.afp, %.pn.i
  store i16 %.0.i199, ptr %i.ado, align 4, !tbaa !67
  %i.afq = load i64, ptr %11, align 8, !tbaa !50
  %i.afr = add i64 %i.afq, %.3.ph
  store i64 %i.afr, ptr %11, align 8, !tbaa !50
  %i.afs = add i64 %.3181.ph, 2                   ; 2 uses
  %i.aft = add i64 %.3181.ph, %.sroa.0295.1.ph    ; 5 uses
  %i.afu = tail call noundef i64 @llvm.umin.i64(i64 %i.aft, i64 %spec.select) ; 5 uses
  %i.afv = lshr i64 %.sroa.0295.1.ph, 2
  %i.afw = icmp ult i64 %.sroa.15.1.ph, %i.afv
  br i1 %i.afw, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.afx = shl nuw i64 %.sroa.15.1.ph, 2
  %i.afy = sub i64 %i.aft, %i.afx
  %i.afz = tail call noundef i64 @llvm.umax.i64(i64 %i.afs, i64 %i.afy)
  %i.aga = tail call noundef i64 @llvm.umin.i64(i64 %i.afu, i64 %i.afz)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %.0 = phi i64 [ %i.aga, %bb.du ], [ %i.afs, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit ] ; 7 uses
  %i.agb = icmp ult i64 %.0, %i.afu
  br i1 %i.agb, label %.lr.ph606, label %_ZN13duckdb_brotliL12StoreRangeH6EPNS_2H6EPKhmmm.exit

.lr.ph606:                                        ; preds = %bb.dv
  %i.agc = load i64, ptr %i.bb, align 8, !tbaa !102, !alias.scope !1145, !noalias !1146 ; 3 uses
  %i.agd = load i32, ptr %i.be, align 8, !tbaa !105, !alias.scope !1145, !noalias !1146 ; 3 uses
  %i.age = load i32, ptr %i.bc, align 4, !tbaa !103, !alias.scope !1145, !noalias !1146
  %i.agf = zext nneg i32 %i.age to i64            ; 3 uses
  %i.agg = sub nuw i64 %i.afu, %.0
  %.neg1005 = add i64 %.0, 1
  %xtraiter = and i64 %i.agg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph606
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  %i.agh = and i64 %.0, %3
  %i.agi = getelementptr inbounds nuw i8, ptr %2, i64 %i.agh
  %.0.copyload.i.i289.prol = load i64, ptr %i.agi, align 1, !alias.scope !1147, !noalias !1145
  %i.agj = mul i64 %.0.copyload.i.i289.prol, %i.agc
  %i.agk = lshr i64 %i.agj, 49                    ; 2 uses
  %i.agl = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.agk ; 2 uses
  %i.agm = load i16, ptr %i.agl, align 2, !tbaa !67, !noalias !1145 ; 2 uses
  %i.agn = zext i16 %i.agm to i32
  %i.ago = and i32 %i.agd, %i.agn
  %i.agp = zext nneg i32 %i.ago to i64
  %i.agq = shl i64 %i.agk, %i.agf
  %i.agr = add i16 %i.agm, 1
  store i16 %i.agr, ptr %i.agl, align 2, !tbaa !67, !noalias !1145
  %i.ags = trunc i64 %.0 to i32
  %i.agt = getelementptr [4 x i8], ptr %i.ba, i64 %i.agq
  %i.agu = getelementptr [4 x i8], ptr %i.agt, i64 %i.agp
  store i32 %i.ags, ptr %i.agu, align 4, !tbaa !28, !noalias !1145
  %i.agv = add nuw i64 %.0, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph606
  %.0.i286604.unr = phi i64 [ %.0, %.lr.ph606 ], [ %i.agv, %.prol.loopexit.unr-lcssa ]
  %i.agw = icmp eq i64 %i.afu, %.neg1005
  br i1 %i.agw, label %_ZN13duckdb_brotliL12StoreRangeH6EPNS_2H6EPKhmmm.exit, label %.lr.ph606.new

.lr.ph606.new:                                    ; preds = %.prol.loopexit, %.lr.ph606.new
  %.0.i286604 = phi i64 [ %i.aia, %.lr.ph606.new ], [ %.0.i286604.unr, %.prol.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  %i.agx = and i64 %.0.i286604, %3
  %i.agy = getelementptr inbounds nuw i8, ptr %2, i64 %i.agx
  %.0.copyload.i.i289 = load i64, ptr %i.agy, align 1, !alias.scope !1147, !noalias !1145
  %i.agz = mul i64 %.0.copyload.i.i289, %i.agc
  %i.aha = lshr i64 %i.agz, 49                    ; 2 uses
  %i.ahb = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.aha ; 2 uses
  %i.ahc = load i16, ptr %i.ahb, align 2, !tbaa !67, !noalias !1145 ; 2 uses
  %i.ahd = zext i16 %i.ahc to i32
  %i.ahe = and i32 %i.agd, %i.ahd
  %i.ahf = zext nneg i32 %i.ahe to i64
  %i.ahg = shl i64 %i.aha, %i.agf
  %i.ahh = add i16 %i.ahc, 1
  store i16 %i.ahh, ptr %i.ahb, align 2, !tbaa !67, !noalias !1145
  %i.ahi = trunc i64 %.0.i286604 to i32
  %i.ahj = getelementptr [4 x i8], ptr %i.ba, i64 %i.ahg
  %i.ahk = getelementptr [4 x i8], ptr %i.ahj, i64 %i.ahf
  store i32 %i.ahi, ptr %i.ahk, align 4, !tbaa !28, !noalias !1145
  %i.ahl = add nuw i64 %.0.i286604, 1             ; 2 uses
  %i.ahm = and i64 %i.ahl, %3
  %i.ahn = getelementptr inbounds nuw i8, ptr %2, i64 %i.ahm
  %.0.copyload.i.i289.1 = load i64, ptr %i.ahn, align 1, !alias.scope !1147, !noalias !1148
  %i.aho = mul i64 %.0.copyload.i.i289.1, %i.agc
  %i.ahp = lshr i64 %i.aho, 49                    ; 2 uses
  %i.ahq = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ahp ; 2 uses
  %i.ahr = load i16, ptr %i.ahq, align 2, !tbaa !67, !noalias !1148 ; 2 uses
  %i.ahs = zext i16 %i.ahr to i32
  %i.aht = and i32 %i.agd, %i.ahs
  %i.ahu = zext nneg i32 %i.aht to i64
  %i.ahv = shl i64 %i.ahp, %i.agf
  %i.ahw = add i16 %i.ahr, 1
  store i16 %i.ahw, ptr %i.ahq, align 2, !tbaa !67, !noalias !1148
  %i.ahx = trunc i64 %i.ahl to i32
  %i.ahy = getelementptr [4 x i8], ptr %i.ba, i64 %i.ahv
  %i.ahz = getelementptr [4 x i8], ptr %i.ahy, i64 %i.ahu
  store i32 %i.ahx, ptr %i.ahz, align 4, !tbaa !28, !noalias !1148
  %i.aia = add nuw i64 %.0.i286604, 2             ; 2 uses
  %exitcond680.not.1 = icmp eq i64 %i.aia, %i.afu
  br i1 %exitcond680.not.1, label %_ZN13duckdb_brotliL12StoreRangeH6EPNS_2H6EPKhmmm.exit, label %.lr.ph606.new, !llvm.loop !9

_ZN13duckdb_brotliL18FindLongestMatchH6EPNS_2H6EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit285.thread: ; preds = %bb.ai, %_ZN13duckdb_brotliL18FindLongestMatchH6EPNS_2H6EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit285
  %i.aib = add i64 %.0175621, 1                   ; 5 uses
  %i.aic = add i64 %.0178620, 1                   ; 9 uses
  %i.aid = icmp ugt i64 %i.aic, %.0173622
  br i1 %i.aid, label %bb.dw, label %_ZN13duckdb_brotliL12StoreRangeH6EPNS_2H6EPKhmmm.exit

bb.dw:                                            ; preds = %_ZN13duckdb_brotliL18FindLongestMatchH6EPNS_2H6EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit285.thread
  %i.aie = add i64 %.0173622, %i.bq
  %i.aif = icmp ugt i64 %i.aic, %i.aie
  br i1 %i.aif, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.aig = add i64 %.0178620, 17
  %i.aih = tail call noundef i64 @llvm.umin.i64(i64 %i.aig, i64 %i.k) ; 2 uses
  %i.aii = icmp ult i64 %i.aic, %i.aih
  br i1 %i.aii, label %.lr.ph616, label %_ZN13duckdb_brotliL12StoreRangeH6EPNS_2H6EPKhmmm.exit

.lr.ph616:                                        ; preds = %bb.dx
  %i.aij = load i32, ptr %i.be, align 8, !tbaa !105, !alias.scope !1149, !noalias !1150
  %i.aik = load i32, ptr %i.bc, align 4, !tbaa !103, !alias.scope !1149, !noalias !1150
  %i.ail = zext nneg i32 %i.aik to i64
  br label %bb.dy

bb.dy:                                            ; preds = %.lr.ph616, %bb.dy
  %.4614 = phi i64 [ %i.aib, %.lr.ph616 ], [ %i.aja, %bb.dy ]
  %.4182613 = phi i64 [ %i.aic, %.lr.ph616 ], [ %i.ajb, %bb.dy ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %i.aim = and i64 %.4182613, %3
  %i.ain = getelementptr inbounds nuw i8, ptr %2, i64 %i.aim
  %.0.copyload.i.i287 = load i64, ptr %i.ain, align 1, !alias.scope !1151, !noalias !1149
  %i.aio = mul i64 %.0.copyload.i.i287, %i.ey
  %i.aip = lshr i64 %i.aio, 49                    ; 2 uses
  %i.aiq = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.aip ; 2 uses
  %i.air = load i16, ptr %i.aiq, align 2, !tbaa !67, !noalias !1149 ; 2 uses
  %i.ais = zext i16 %i.air to i32
  %i.ait = and i32 %i.aij, %i.ais
  %i.aiu = zext nneg i32 %i.ait to i64
  %i.aiv = shl i64 %i.aip, %i.ail
  %i.aiw = add i16 %i.air, 1
  store i16 %i.aiw, ptr %i.aiq, align 2, !tbaa !67, !noalias !1149
  %i.aix = trunc i64 %.4182613 to i32
  %i.aiy = getelementptr [4 x i8], ptr %i.ba, i64 %i.aiv
  %i.aiz = getelementptr [4 x i8], ptr %i.aiy, i64 %i.aiu
  store i32 %i.aix, ptr %i.aiz, align 4, !tbaa !28, !noalias !1149
  %i.aja = add i64 %.4614, 4                      ; 2 uses
  %i.ajb = add i64 %.4182613, 4                   ; 3 uses
  %i.ajc = icmp ult i64 %i.ajb, %i.aih
  br i1 %i.ajc, label %bb.dy, label %_ZN13duckdb_brotliL12StoreRangeH6EPNS_2H6EPKhmmm.exit, !llvm.loop !1115

bb.dz:                                            ; preds = %bb.dw
  %i.ajd = add i64 %.0178620, 9
  %i.aje = tail call noundef i64 @llvm.umin.i64(i64 %i.ajd, i64 %i.k) ; 2 uses
  %i.ajf = icmp ult i64 %i.aic, %i.aje
  br i1 %i.ajf, label %.lr.ph610, label %_ZN13duckdb_brotliL12StoreRangeH6EPNS_2H6EPKhmmm.exit

.lr.ph610:                                        ; preds = %bb.dz
  %i.ajg = load i32, ptr %i.be, align 8, !tbaa !105, !alias.scope !1152, !noalias !1153
  %i.ajh = load i32, ptr %i.bc, align 4, !tbaa !103, !alias.scope !1152, !noalias !1153
  %i.aji = zext nneg i32 %i.ajh to i64
  br label %bb.ea

end_hunk_9
begin_hunk_10_@_ZL28CreateBackwardReferencesNH40mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  %.3.ph = phi i64 [ %.1176, %_ZN13duckdb_brotliL19FindLongestMatchH40EPNS_3H40EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit._crit_edge ], [ %i.afi, %bb.ef ] ; 9 uses
  %i.afn = shl i64 %.sroa.0302.1.ph, 1
  %i.afo = add i64 %i.afn, %i.p
  %i.afp = add i64 %i.afo, %.3181.ph              ; 2 uses
  %i.afq = add i64 %.pre-phi698, %i.r             ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.15.1.ph, %i.afq
  br i1 %.not.i, label %bb.eo, label %bb.eg

bb.eg:                                            ; preds = %split
  %i.afr = add i64 %.sroa.15.1.ph, 3              ; 2 uses
  %i.afs = load i32, ptr %7, align 4, !tbaa !28
  %i.aft = sext i32 %i.afs to i64                 ; 2 uses
  %i.afu = sub i64 %i.afr, %i.aft                 ; 2 uses
  %i.afv = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.afw = sext i32 %i.afv to i64                 ; 2 uses
  %i.afx = sub i64 %i.afr, %i.afw                 ; 2 uses
  %i.afy = icmp eq i64 %.sroa.15.1.ph, %i.aft
  br i1 %i.afy, label %_ZL19ComputeDistanceCodemmPKi.exit.thread, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.afz = icmp eq i64 %.sroa.15.1.ph, %i.afw
  br i1 %i.afz, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.aga = icmp ult i64 %i.afu, 7
  br i1 %i.aga, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %.tr25.i = trunc nuw nsw i64 %i.afu to i32
  %i.agb = shl nuw nsw i32 %.tr25.i, 2
  %i.agc = lshr i32 158663784, %i.agb
  %i.agd = and i32 %i.agc, 15
  %i.age = zext nneg i32 %i.agd to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.ek:                                            ; preds = %bb.ei
  %i.agf = icmp ult i64 %i.afx, 7
  br i1 %i.agf, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %.tr.i = trunc nuw nsw i64 %i.afx to i32
  %i.agg = shl nuw nsw i32 %.tr.i, 2
  %i.agh = lshr i32 266017486, %i.agg
  %i.agi = and i32 %i.agh, 15
  %i.agj = zext nneg i32 %i.agi to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.em:                                            ; preds = %bb.ek
  %i.agk = load i32, ptr %i.ah, align 4, !tbaa !28
  %i.agl = sext i32 %i.agk to i64
  %i.agm = icmp eq i64 %.sroa.15.1.ph, %i.agl
  br i1 %i.agm, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.agn = load i32, ptr %i.ai, align 4, !tbaa !28
  %i.ago = sext i32 %i.agn to i64
  %.not414 = icmp eq i64 %.sroa.15.1.ph, %i.ago
  br i1 %.not414, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %split
  %i.agp = add i64 %.sroa.15.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.eh, %bb.el, %bb.ej, %bb.em, %bb.en, %bb.eo
  %.1.i = phi i64 [ %i.agp, %bb.eo ], [ 3, %bb.en ], [ 1, %bb.eh ], [ %i.agj, %bb.el ], [ %i.age, %bb.ej ], [ 2, %bb.em ] ; 3 uses
  %i.agq = icmp ule i64 %.sroa.15.1.ph, %i.afq
  %i.agr = icmp ne i64 %.1.i, 0
  %or.cond = and i1 %i.agq, %i.agr
  br i1 %or.cond, label %bb.ep, label %_ZL19ComputeDistanceCodemmPKi.exit.thread

bb.ep:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.ags = load i32, ptr %i.ah, align 4, !tbaa !28
  store i32 %i.ags, ptr %i.ai, align 4, !tbaa !28
  %i.agt = load <2 x i32>, ptr %7, align 4, !tbaa !28
  store <2 x i32> %i.agt, ptr %i.ag, align 4, !tbaa !28
  %i.agu = trunc i64 %.sroa.15.1.ph to i32
  store i32 %i.agu, ptr %7, align 4, !tbaa !28
  br label %_ZL19ComputeDistanceCodemmPKi.exit.thread

_ZL19ComputeDistanceCodemmPKi.exit.thread:        ; preds = %bb.eg, %bb.ep, %_ZL19ComputeDistanceCodemmPKi.exit
  %.1.i410 = phi i64 [ %.1.i, %_ZL19ComputeDistanceCodemmPKi.exit ], [ %.1.i, %bb.ep ], [ 0, %bb.eg ] ; 3 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %.0185620, i64 16 ; 2 uses
  %i.agw = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.agw, ptr %.0185620, align 4, !tbaa !94
  %i.agx = shl i32 %.sroa.34.1.ph, 25
  %i.agy = trunc i64 %.sroa.0302.1.ph to i32      ; 2 uses
  %i.agz = or i32 %i.agx, %i.agy
  %i.aha = getelementptr inbounds nuw i8, ptr %.0185620, i64 4
  store i32 %i.agz, ptr %i.aha, align 4, !tbaa !95
  %i.ahb = load i32, ptr %i.aj, align 4, !tbaa !96
  %i.ahc = zext i32 %i.ahb to i64                 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0185620, i64 14
  %i.ahe = getelementptr inbounds nuw i8, ptr %.0185620, i64 8
  %i.ahf = add nuw nsw i64 %i.ahc, 16             ; 2 uses
  %i.ahg = icmp ult i64 %.1.i410, %i.ahf
  br i1 %i.ahg, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.eq

bb.eq:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread
  %i.ahh = load i32, ptr %i.z, align 8, !tbaa !97 ; 2 uses
  %i.ahi = zext i32 %i.ahh to i64                 ; 4 uses
  %i.ahj = shl nuw i64 4, %i.ahi
  %i.ahk = add i64 %.1.i410, -16
  %i.ahl = sub i64 %i.ahk, %i.ahc
  %i.ahm = add i64 %i.ahl, %i.ahj                 ; 4 uses
  %i.ahn = trunc i64 %i.ahm to i32
  %i.aho = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahn, i1 true)
  %i.ahp = sub nsw i32 30, %i.aho
  %i.ahq = zext i32 %i.ahp to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.ahh
  %i.ahr = xor i32 %notmask.i, -1
  %i.ahs = zext nneg i32 %i.ahr to i64
  %i.aht = and i64 %i.ahm, %i.ahs
  %i.ahu = lshr i64 %i.ahm, %i.ahq                ; 2 uses
  %i.ahv = and i64 %i.ahu, 1
  %i.ahw = or disjoint i64 %i.ahv, 2
  %i.ahx = shl i64 %i.ahw, %i.ahq
  %i.ahy = sub nsw i64 %i.ahq, %i.ahi             ; 2 uses
  %i.ahz = shl nsw i64 %i.ahy, 10
  %i.aia = shl nsw i64 %i.ahy, 1
  %i.aib = or i64 %i.ahu, 65534
  %i.aic = add i64 %i.aia, %i.aib
  %i.aid = shl i64 %i.aic, %i.ahi
  %i.aie = add nuw nsw i64 %i.aht, %i.ahf
  %i.aif = add i64 %i.aie, %i.aid
  %i.aig = or i64 %i.aif, %i.ahz
  %i.aih = sub i64 %i.ahm, %i.ahx
  %i.aii = lshr i64 %i.aih, %i.ahi
  %i.aij = trunc i64 %i.aii to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread, %bb.eq
  %.sink.in = phi i64 [ %i.aig, %bb.eq ], [ %.1.i410, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %storemerge.i = phi i32 [ %i.aij, %bb.eq ], [ 0, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.ahd, align 2, !tbaa !67
  store i32 %storemerge.i, ptr %i.ahe, align 4, !tbaa !28
  %i.aik = add nsw i32 %.sroa.34.1.ph, %i.agy     ; 6 uses
  %i.ail = and i16 %.sink, 1023
  %i.aim = icmp eq i16 %i.ail, 0
  %i.ain = getelementptr inbounds nuw i8, ptr %.0185620, i64 12
  %i.aio = icmp ult i64 %.3.ph, 6
  br i1 %i.aio, label %bb.er, label %bb.es

bb.er:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.aip = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.es:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.aiq = icmp ult i64 %.3.ph, 130
  br i1 %i.aiq, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.air = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.ais = trunc nuw nsw i64 %i.air to i32
  %i.ait = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ais, i1 true)
  %i.aiu = sub nuw nsw i32 30, %i.ait             ; 2 uses
  %i.aiv = shl nuw nsw i32 %i.aiu, 1
  %i.aiw = zext nneg i32 %i.aiv to i64
  %i.aix = zext nneg i32 %i.aiu to i64
  %i.aiy = lshr i64 %i.air, %i.aix
  %i.aiz = add nuw nsw i64 %i.aiy, %i.aiw
  %i.aja = trunc nuw nsw i64 %i.aiz to i16
  %i.ajb = add nuw nsw i16 %i.aja, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.eu:                                            ; preds = %bb.es
  %i.ajc = icmp ult i64 %.3.ph, 2114
  br i1 %i.ajc, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.ajd = add nsw i32 %i.agw, -66
  %i.aje = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ajd, i1 true)
  %i.ajf = trunc nuw nsw i32 %i.aje to i16
  %i.ajg = sub nuw nsw i16 41, %i.ajf
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.ew:                                            ; preds = %bb.eu
  %i.ajh = icmp ult i64 %.3.ph, 6210
  br i1 %i.ajh, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aji = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.aji, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.er, %bb.et, %bb.ev, %bb.ew, %bb.ex
  %.0.i197 = phi i16 [ %i.aip, %bb.er ], [ %i.ajb, %bb.et ], [ %i.ajg, %bb.ev ], [ 21, %bb.ew ], [ %..i, %bb.ex ] ; 3 uses
  %i.ajj = icmp ult i32 %i.aik, 10
  br i1 %i.ajj, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit, label %bb.ey

bb.ey:                                            ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.ajk = icmp ult i32 %i.aik, 134
  br i1 %i.ajk, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %narrow = add nsw i32 %i.aik, -6                ; 2 uses
  %i.ajl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.ajm = sub nuw nsw i32 30, %i.ajl             ; 2 uses
  %i.ajn = shl nuw nsw i32 %i.ajm, 1
  %i.ajo = lshr i32 %narrow, %i.ajm
  %i.ajp = add i32 %i.ajo, %i.ajn
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.fa:                                            ; preds = %bb.ey
  %i.ajq = icmp ult i32 %i.aik, 2118
  br i1 %i.ajq, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread842, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread842: ; preds = %bb.fa
  %i.ajr = add nsw i32 %i.aik, -70
  %i.ajs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ajr, i1 true)
  %i.ajt = trunc nuw nsw i32 %i.ajs to i16
  %i.aju = sub nuw nsw i16 43, %i.ajt
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, %bb.ez
  %.sink951 = phi i32 [ %i.ajp, %bb.ez ], [ %i.aik, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %.sink950 = phi i16 [ 4, %bb.ez ], [ -2, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %i.ajv = trunc i32 %.sink951 to i16
  %i.ajw = add nsw i16 %.sink950, %i.ajv          ; 4 uses
  %i.ajx = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.aim, %i.ajx
  %i.ajy = icmp ult i16 %i.ajw, 16
  %or.cond5.i = and i1 %or.cond.i, %i.ajy
  br i1 %or.cond5.i, label %bb.fb, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.fb:                                            ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.ajz = shl nuw nsw i16 %i.ajw, 3
  %i.aka = and i16 %i.ajz, 64
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread: ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread842, %bb.fa, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.0.i198404 = phi i16 [ %i.ajw, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ], [ 23, %bb.fa ], [ %i.aju, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread842 ] ; 2 uses
  %i.akb = lshr i16 %.0.i198404, 3
  %i.akc = lshr i16 %.0.i197, 3
  %narrow.i = mul nuw nsw i16 %i.akc, 3
  %narrow21.i = add nuw nsw i16 %i.akb, %narrow.i
  %i.akd = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.ake = shl nuw nsw i32 %i.akd, 1
  %i.akf = shl nuw nsw i32 %i.akd, 6
  %i.akg = add nuw nsw i32 %i.akf, 64
  %i.akh = lshr i32 5377344, %i.ake
  %i.aki = and i32 %i.akh, 192
  %i.akj = add nuw nsw i32 %i.akg, %i.aki
  %i.akk = trunc i32 %i.akj to i16
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit: ; preds = %bb.fb, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread
  %.0.i198405 = phi i16 [ %i.ajw, %bb.fb ], [ %.0.i198404, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %.pn.i = phi i16 [ %i.aka, %bb.fb ], [ %i.akk, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %i.akl = and i16 %.0.i198405, 7
  %i.akm = shl nuw nsw i16 %.0.i197, 3
  %i.akn = and i16 %i.akm, 56
  %i.ako = or disjoint i16 %i.akl, %i.akn
  %.0.i199 = or disjoint i16 %i.ako, %.pn.i
  store i16 %.0.i199, ptr %i.ain, align 4, !tbaa !67
  %i.akp = load i64, ptr %11, align 8, !tbaa !50
  %i.akq = add i64 %i.akp, %.3.ph
  store i64 %i.akq, ptr %11, align 8, !tbaa !50
  %i.akr = add i64 %.3181.ph, 2                   ; 2 uses
  %i.aks = add i64 %.3181.ph, %.sroa.0302.1.ph    ; 4 uses
  %i.akt = tail call noundef i64 @llvm.umin.i64(i64 %i.aks, i64 %spec.select) ; 3 uses
  %i.aku = lshr i64 %.sroa.0302.1.ph, 2
  %i.akv = icmp ult i64 %.sroa.15.1.ph, %i.aku
  br i1 %i.akv, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.akw = shl nuw i64 %.sroa.15.1.ph, 2
  %i.akx = sub i64 %i.aks, %i.akw
  %i.aky = tail call noundef i64 @llvm.umax.i64(i64 %i.akr, i64 %i.akx)
  %i.akz = tail call noundef i64 @llvm.umin.i64(i64 %i.akt, i64 %i.aky)
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %.0 = phi i64 [ %i.akz, %bb.fc ], [ %i.akr, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit ] ; 2 uses
  %i.ala = icmp ult i64 %.0, %i.akt
  br i1 %i.ala, label %.lr.ph604, label %_ZN13duckdb_brotliL13StoreRangeH40EPNS_3H40EPKhmmm.exit

.lr.ph604:                                        ; preds = %bb.fd
  %i.alb = load ptr, ptr %i.ab, align 8, !tbaa !107, !alias.scope !1218, !noalias !1219 ; 3 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 131072
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alb, i64 196608
  %i.ale = load ptr, ptr %i.ac, align 8, !tbaa !107, !alias.scope !1218, !noalias !1219
  %.promoted605 = load i16, ptr %i.a, align 8, !tbaa !67, !alias.scope !1218, !noalias !1219
  br label %bb.fe

bb.fe:                                            ; preds = %.lr.ph604, %bb.fe
  %i.alf = phi i16 [ %.promoted605, %.lr.ph604 ], [ %i.all, %bb.fe ] ; 3 uses
  %.0.i287603 = phi i64 [ %.0, %.lr.ph604 ], [ %i.ama, %bb.fe ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.alg = and i64 %.0.i287603, %3
  %i.alh = getelementptr inbounds nuw i8, ptr %2, i64 %i.alg
  %.0.copyload.i.i296 = load i32, ptr %i.alh, align 1, !alias.scope !1220, !noalias !1218
  %i.ali = mul i32 %.0.copyload.i.i296, 506832829
  %i.alj = lshr i32 %i.ali, 17                    ; 2 uses
  %i.alk = zext nneg i32 %i.alj to i64            ; 2 uses
  %i.all = add i16 %i.alf, 1                      ; 2 uses
  %i.alm = zext i16 %i.alf to i64
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %i.alk ; 2 uses
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !28, !noalias !1218
  %i.alp = zext i32 %i.alo to i64
  %i.alq = sub i64 %.0.i287603, %i.alp
  %i.alr = trunc i32 %i.alj to i8
  %i.als = and i64 %.0.i287603, 65535
  %i.alt = getelementptr inbounds nuw i8, ptr %i.ald, i64 %i.als
  store i8 %i.alr, ptr %i.alt, align 1, !tbaa !59, !noalias !1218
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.alq, i64 65535)
  %i.alu = trunc nuw i64 %spec.store.select.i to i16
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.ale, i64 %i.alm ; 2 uses
  store i16 %i.alu, ptr %i.alv, align 2, !tbaa !112, !noalias !1218
  %i.alw = getelementptr inbounds nuw [2 x i8], ptr %i.alc, i64 %i.alk ; 2 uses
  %i.alx = load i16, ptr %i.alw, align 2, !tbaa !67, !noalias !1218
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alv, i64 2
  store i16 %i.alx, ptr %i.aly, align 2, !tbaa !111, !noalias !1218
  %i.alz = trunc i64 %.0.i287603 to i32
  store i32 %i.alz, ptr %i.aln, align 4, !tbaa !28, !noalias !1218
  store i16 %i.alf, ptr %i.alw, align 2, !tbaa !67, !noalias !1218
  %i.ama = add nuw i64 %.0.i287603, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ama, %i.akt
  br i1 %exitcond.not, label %_ZN13duckdb_brotliL13StoreRangeH40EPNS_3H40EPKhmmm.exit.sink.split, label %bb.fe, !llvm.loop !11

_ZN13duckdb_brotliL19FindLongestMatchH40EPNS_3H40EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit286.thread: ; preds = %bb.az, %_ZN13duckdb_brotliL19FindLongestMatchH40EPNS_3H40EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit286
  %i.amb = add i64 %.0175622, 1                   ; 5 uses
  %i.amc = add i64 %.0178621, 1                   ; 9 uses
  %i.amd = icmp ugt i64 %i.amc, %.0173623
  br i1 %i.amd, label %bb.ff, label %_ZN13duckdb_brotliL13StoreRangeH40EPNS_3H40EPKhmmm.exit

bb.ff:                                            ; preds = %_ZN13duckdb_brotliL19FindLongestMatchH40EPNS_3H40EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit286.thread
  %i.ame = add i64 %.0173623, %i.ak
  %i.amf = icmp ugt i64 %i.amc, %i.ame
  br i1 %i.amf, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  %i.amg = add i64 %.0178621, 17
  %i.amh = tail call noundef i64 @llvm.umin.i64(i64 %i.amg, i64 %i.al) ; 2 uses
  %i.ami = icmp ult i64 %i.amc, %i.amh
  br i1 %i.ami, label %.lr.ph615, label %_ZN13duckdb_brotliL13StoreRangeH40EPNS_3H40EPKhmmm.exit

.lr.ph615:                                        ; preds = %bb.fg
  %i.amj = load ptr, ptr %i.ab, align 8, !tbaa !107, !alias.scope !1221, !noalias !1222 ; 3 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 131072
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amj, i64 196608
  %i.amm = load ptr, ptr %i.ac, align 8, !tbaa !107, !alias.scope !1221, !noalias !1222
  %.promoted618 = load i16, ptr %i.a, align 8, !tbaa !67, !alias.scope !1221, !noalias !1222
  br label %bb.fh

bb.fh:                                            ; preds = %.lr.ph615, %bb.fh
  %i.amn = phi i16 [ %.promoted618, %.lr.ph615 ], [ %i.amt, %bb.fh ] ; 3 uses
  %.4614 = phi i64 [ %i.amb, %.lr.ph615 ], [ %i.ani, %bb.fh ]
  %.4182613 = phi i64 [ %i.amc, %.lr.ph615 ], [ %i.anj, %bb.fh ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  %i.amo = and i64 %.4182613, %3
  %i.amp = getelementptr inbounds nuw i8, ptr %2, i64 %i.amo
  %.0.copyload.i.i292 = load i32, ptr %i.amp, align 1, !alias.scope !1223, !noalias !1221
  %i.amq = mul i32 %.0.copyload.i.i292, 506832829
  %i.amr = lshr i32 %i.amq, 17                    ; 2 uses
  %i.ams = zext nneg i32 %i.amr to i64            ; 2 uses
  %i.amt = add i16 %i.amn, 1                      ; 2 uses
  %i.amu = zext i16 %i.amn to i64
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %i.amj, i64 %i.ams ; 2 uses
  %i.amw = load i32, ptr %i.amv, align 4, !tbaa !28, !noalias !1221
  %i.amx = zext i32 %i.amw to i64
  %i.amy = sub i64 %.4182613, %i.amx
  %i.amz = trunc i32 %i.amr to i8
  %i.ana = and i64 %.4182613, 65535
  %i.anb = getelementptr inbounds nuw i8, ptr %i.aml, i64 %i.ana
  store i8 %i.amz, ptr %i.anb, align 1, !tbaa !59, !noalias !1221
  %spec.store.select.i291 = tail call i64 @llvm.umin.i64(i64 %i.amy, i64 65535)
  %i.anc = trunc nuw i64 %spec.store.select.i291 to i16
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %i.amm, i64 %i.amu ; 2 uses
  store i16 %i.anc, ptr %i.and, align 2, !tbaa !112, !noalias !1221
  %i.ane = getelementptr inbounds nuw [2 x i8], ptr %i.amk, i64 %i.ams ; 2 uses
  %i.anf = load i16, ptr %i.ane, align 2, !tbaa !67, !noalias !1221
  %i.ang = getelementptr inbounds nuw i8, ptr %i.and, i64 2
  store i16 %i.anf, ptr %i.ang, align 2, !tbaa !111, !noalias !1221
  %i.anh = trunc i64 %.4182613 to i32
  store i32 %i.anh, ptr %i.amv, align 4, !tbaa !28, !noalias !1221
  store i16 %i.amn, ptr %i.ane, align 2, !tbaa !67, !noalias !1221
  %i.ani = add i64 %.4614, 4                      ; 2 uses
  %i.anj = add i64 %.4182613, 4                   ; 3 uses
  %i.ank = icmp ult i64 %i.anj, %i.amh
  br i1 %i.ank, label %bb.fh, label %_ZN13duckdb_brotliL13StoreRangeH40EPNS_3H40EPKhmmm.exit.sink.split, !llvm.loop !1186

bb.fi:                                            ; preds = %bb.ff
  %i.anl = add i64 %.0178621, 9
  %i.anm = tail call noundef i64 @llvm.umin.i64(i64 %i.anl, i64 %i.l) ; 2 uses
  %i.ann = icmp ult i64 %i.amc, %i.anm
  br i1 %i.ann, label %.lr.ph608, label %_ZN13duckdb_brotliL13StoreRangeH40EPNS_3H40EPKhmmm.exit

.lr.ph608:                                        ; preds = %bb.fi
  %i.ano = load ptr, ptr %i.ab, align 8, !tbaa !107, !alias.scope !1224, !noalias !1225 ; 3 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 131072
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ano, i64 196608
  %i.anr = load ptr, ptr %i.ac, align 8, !tbaa !107, !alias.scope !1224, !noalias !1225
  %.promoted611 = load i16, ptr %i.a, align 8, !tbaa !67, !alias.scope !1224, !noalias !1225
  br label %bb.fj

bb.fj:                                            ; preds = %.lr.ph608, %bb.fj
  %i.ans = phi i16 [ %.promoted611, %.lr.ph608 ], [ %i.any, %bb.fj ] ; 3 uses
  %.5607 = phi i64 [ %i.amb, %.lr.ph608 ], [ %i.aon, %bb.fj ]
  %.5183606 = phi i64 [ %i.amc, %.lr.ph608 ], [ %i.aoo, %bb.fj ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %i.ant = and i64 %.5183606, %3
  %i.anu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ant
  %.0.copyload.i.i293 = load i32, ptr %i.anu, align 1, !alias.scope !1226, !noalias !1224
  %i.anv = mul i32 %.0.copyload.i.i293, 506832829
  %i.anw = lshr i32 %i.anv, 17                    ; 2 uses
  %i.anx = zext nneg i32 %i.anw to i64            ; 2 uses
  %i.any = add i16 %i.ans, 1                      ; 2 uses
  %i.anz = zext i16 %i.ans to i64
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.ano, i64 %i.anx ; 2 uses
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !28, !noalias !1224
  %i.aoc = zext i32 %i.aob to i64
  %i.aod = sub i64 %.5183606, %i.aoc
  %i.aoe = trunc i32 %i.anw to i8
  %i.aof = and i64 %.5183606, 65535
  %i.aog = getelementptr inbounds nuw i8, ptr %i.anq, i64 %i.aof
  store i8 %i.aoe, ptr %i.aog, align 1, !tbaa !59, !noalias !1224
  %spec.store.select.i290 = tail call i64 @llvm.umin.i64(i64 %i.aod, i64 65535)
end_hunk_10
begin_hunk_11_@_ZL28CreateBackwardReferencesNH41mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
bb.cs:                                            ; preds = %split
  %i.yx = add i64 %.sroa.15.1.ph, 3               ; 2 uses
  %i.yy = load i32, ptr %7, align 4, !tbaa !28
  %i.yz = sext i32 %i.yy to i64                   ; 2 uses
  %i.za = sub i64 %i.yx, %i.yz                    ; 2 uses
  %i.zb = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.zc = sext i32 %i.zb to i64                   ; 2 uses
  %i.zd = sub i64 %i.yx, %i.zc                    ; 2 uses
  %i.ze = icmp eq i64 %.sroa.15.1.ph, %i.yz
  br i1 %i.ze, label %_ZL19ComputeDistanceCodemmPKi.exit.thread, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.zf = icmp eq i64 %.sroa.15.1.ph, %i.zc
  br i1 %i.zf, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.zg = icmp ult i64 %i.za, 7
  br i1 %i.zg, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %.tr25.i = trunc nuw nsw i64 %i.za to i32
  %i.zh = shl nuw nsw i32 %.tr25.i, 2
  %i.zi = lshr i32 158663784, %i.zh
  %i.zj = and i32 %i.zi, 15
  %i.zk = zext nneg i32 %i.zj to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.cw:                                            ; preds = %bb.cu
  %i.zl = icmp ult i64 %i.zd, 7
  br i1 %i.zl, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %.tr.i = trunc nuw nsw i64 %i.zd to i32
  %i.zm = shl nuw nsw i32 %.tr.i, 2
  %i.zn = lshr i32 266017486, %i.zm
  %i.zo = and i32 %i.zn, 15
  %i.zp = zext nneg i32 %i.zo to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.cy:                                            ; preds = %bb.cw
  %i.zq = load i32, ptr %i.ar, align 4, !tbaa !28
  %i.zr = sext i32 %i.zq to i64
  %i.zs = icmp eq i64 %.sroa.15.1.ph, %i.zr
  br i1 %i.zs, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zt = load i32, ptr %i.as, align 4, !tbaa !28
  %i.zu = sext i32 %i.zt to i64
  %.not414 = icmp eq i64 %.sroa.15.1.ph, %i.zu
  br i1 %.not414, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz, %split
  %i.zv = add i64 %.sroa.15.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.ct, %bb.cx, %bb.cv, %bb.cy, %bb.cz, %bb.da
  %.1.i = phi i64 [ %i.zv, %bb.da ], [ 3, %bb.cz ], [ 1, %bb.ct ], [ %i.zp, %bb.cx ], [ %i.zk, %bb.cv ], [ 2, %bb.cy ] ; 3 uses
  %i.zw = icmp ule i64 %.sroa.15.1.ph, %i.yw
  %i.zx = icmp ne i64 %.1.i, 0
  %or.cond = and i1 %i.zw, %i.zx
  br i1 %or.cond, label %bb.db, label %_ZL19ComputeDistanceCodemmPKi.exit.thread

bb.db:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.zy = load i32, ptr %i.ar, align 4, !tbaa !28
  store i32 %i.zy, ptr %i.as, align 4, !tbaa !28
  %i.zz = load <2 x i32>, ptr %7, align 4, !tbaa !28
  store <2 x i32> %i.zz, ptr %i.aq, align 4, !tbaa !28
  %i.aaa = trunc i64 %.sroa.15.1.ph to i32        ; 4 uses
  store i32 %i.aaa, ptr %7, align 4, !tbaa !28
  %i.aab = insertelement <4 x i32> poison, i32 %i.aaa, i64 0
  %i.aac = shufflevector <4 x i32> %i.aab, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aad = add nsw <4 x i32> %i.aac, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.aad, ptr %i.t, align 4, !tbaa !28, !alias.scope !1299
  %i.aae = add nsw i32 %i.aaa, -3
  store i32 %i.aae, ptr %i.x, align 4, !tbaa !28, !alias.scope !1299
  %i.aaf = add nsw i32 %i.aaa, 3
  store i32 %i.aaf, ptr %i.y, align 4, !tbaa !28, !alias.scope !1299
  br label %_ZL19ComputeDistanceCodemmPKi.exit.thread

_ZL19ComputeDistanceCodemmPKi.exit.thread:        ; preds = %bb.cs, %bb.db, %_ZL19ComputeDistanceCodemmPKi.exit
  %.1.i410 = phi i64 [ %.1.i, %_ZL19ComputeDistanceCodemmPKi.exit ], [ %.1.i, %bb.db ], [ 0, %bb.cs ] ; 3 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.0185620, i64 16 ; 2 uses
  %i.aah = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.aah, ptr %.0185620, align 4, !tbaa !94
  %i.aai = shl i32 %.sroa.34.1.ph, 25
  %i.aaj = trunc i64 %.sroa.0302.1.ph to i32      ; 2 uses
  %i.aak = or i32 %i.aai, %i.aaj
  %i.aal = getelementptr inbounds nuw i8, ptr %.0185620, i64 4
  store i32 %i.aak, ptr %i.aal, align 4, !tbaa !95
  %i.aam = load i32, ptr %i.at, align 4, !tbaa !96
  %i.aan = zext i32 %i.aam to i64                 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.0185620, i64 14
  %i.aap = getelementptr inbounds nuw i8, ptr %.0185620, i64 8
  %i.aaq = add nuw nsw i64 %i.aan, 16             ; 2 uses
  %i.aar = icmp ult i64 %.1.i410, %i.aaq
  br i1 %i.aar, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread
  %i.aas = load i32, ptr %i.aj, align 8, !tbaa !97 ; 2 uses
  %i.aat = zext i32 %i.aas to i64                 ; 4 uses
  %i.aau = shl nuw i64 4, %i.aat
  %i.aav = add i64 %.1.i410, -16
  %i.aaw = sub i64 %i.aav, %i.aan
  %i.aax = add i64 %i.aaw, %i.aau                 ; 4 uses
  %i.aay = trunc i64 %i.aax to i32
  %i.aaz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aay, i1 true)
  %i.aba = sub nsw i32 30, %i.aaz
  %i.abb = zext i32 %i.aba to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.aas
  %i.abc = xor i32 %notmask.i, -1
  %i.abd = zext nneg i32 %i.abc to i64
  %i.abe = and i64 %i.aax, %i.abd
  %i.abf = lshr i64 %i.aax, %i.abb                ; 2 uses
  %i.abg = and i64 %i.abf, 1
  %i.abh = or disjoint i64 %i.abg, 2
  %i.abi = shl i64 %i.abh, %i.abb
  %i.abj = sub nsw i64 %i.abb, %i.aat             ; 2 uses
  %i.abk = shl nsw i64 %i.abj, 10
  %i.abl = shl nsw i64 %i.abj, 1
  %i.abm = or i64 %i.abf, 65534
  %i.abn = add i64 %i.abl, %i.abm
  %i.abo = shl i64 %i.abn, %i.aat
  %i.abp = add nuw nsw i64 %i.abe, %i.aaq
  %i.abq = add i64 %i.abp, %i.abo
  %i.abr = or i64 %i.abq, %i.abk
  %i.abs = sub i64 %i.aax, %i.abi
  %i.abt = lshr i64 %i.abs, %i.aat
  %i.abu = trunc i64 %i.abt to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread, %bb.dc
  %.sink.in = phi i64 [ %i.abr, %bb.dc ], [ %.1.i410, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %storemerge.i = phi i32 [ %i.abu, %bb.dc ], [ 0, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.aao, align 2, !tbaa !67
  store i32 %storemerge.i, ptr %i.aap, align 4, !tbaa !28
  %i.abv = add nsw i32 %.sroa.34.1.ph, %i.aaj     ; 6 uses
  %i.abw = and i16 %.sink, 1023
  %i.abx = icmp eq i16 %i.abw, 0
  %i.aby = getelementptr inbounds nuw i8, ptr %.0185620, i64 12
  %i.abz = icmp ult i64 %.3.ph, 6
  br i1 %i.abz, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.aca = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.de:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.acb = icmp ult i64 %.3.ph, 130
  br i1 %i.acb, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.acc = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.acd = trunc nuw nsw i64 %i.acc to i32
  %i.ace = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.acd, i1 true)
  %i.acf = sub nuw nsw i32 30, %i.ace             ; 2 uses
  %i.acg = shl nuw nsw i32 %i.acf, 1
  %i.ach = zext nneg i32 %i.acg to i64
  %i.aci = zext nneg i32 %i.acf to i64
  %i.acj = lshr i64 %i.acc, %i.aci
  %i.ack = add nuw nsw i64 %i.acj, %i.ach
  %i.acl = trunc nuw nsw i64 %i.ack to i16
  %i.acm = add nuw nsw i16 %i.acl, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.dg:                                            ; preds = %bb.de
  %i.acn = icmp ult i64 %.3.ph, 2114
  br i1 %i.acn, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.aco = add nsw i32 %i.aah, -66
  %i.acp = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aco, i1 true)
  %i.acq = trunc nuw nsw i32 %i.acp to i16
  %i.acr = sub nuw nsw i16 41, %i.acq
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.di:                                            ; preds = %bb.dg
  %i.acs = icmp ult i64 %.3.ph, 6210
  br i1 %i.acs, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.act = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.act, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.dd, %bb.df, %bb.dh, %bb.di, %bb.dj
  %.0.i197 = phi i16 [ %i.aca, %bb.dd ], [ %i.acm, %bb.df ], [ %i.acr, %bb.dh ], [ 21, %bb.di ], [ %..i, %bb.dj ] ; 3 uses
  %i.acu = icmp ult i32 %i.abv, 10
  br i1 %i.acu, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit, label %bb.dk

bb.dk:                                            ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.acv = icmp ult i32 %i.abv, 134
  br i1 %i.acv, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %narrow = add nsw i32 %i.abv, -6                ; 2 uses
  %i.acw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.acx = sub nuw nsw i32 30, %i.acw             ; 2 uses
  %i.acy = shl nuw nsw i32 %i.acx, 1
  %i.acz = lshr i32 %narrow, %i.acx
  %i.ada = add i32 %i.acz, %i.acy
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.dm:                                            ; preds = %bb.dk
  %i.adb = icmp ult i32 %i.abv, 2118
  br i1 %i.adb, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread789, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread789: ; preds = %bb.dm
  %i.adc = add nsw i32 %i.abv, -70
  %i.add = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adc, i1 true)
  %i.ade = trunc nuw nsw i32 %i.add to i16
  %i.adf = sub nuw nsw i16 43, %i.ade
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, %bb.dl
  %.sink862 = phi i32 [ %i.ada, %bb.dl ], [ %i.abv, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %.sink861 = phi i16 [ 4, %bb.dl ], [ -2, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %i.adg = trunc i32 %.sink862 to i16
  %i.adh = add nsw i16 %.sink861, %i.adg          ; 4 uses
  %i.adi = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.abx, %i.adi
  %i.adj = icmp ult i16 %i.adh, 16
  %or.cond5.i = and i1 %or.cond.i, %i.adj
  br i1 %or.cond5.i, label %bb.dn, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.dn:                                            ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.adk = shl nuw nsw i16 %i.adh, 3
  %i.adl = and i16 %i.adk, 64
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread: ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread789, %bb.dm, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.0.i198404 = phi i16 [ %i.adh, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ], [ 23, %bb.dm ], [ %i.adf, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread789 ] ; 2 uses
  %i.adm = lshr i16 %.0.i198404, 3
  %i.adn = lshr i16 %.0.i197, 3
  %narrow.i = mul nuw nsw i16 %i.adn, 3
  %narrow21.i = add nuw nsw i16 %i.adm, %narrow.i
  %i.ado = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.adp = shl nuw nsw i32 %i.ado, 1
  %i.adq = shl nuw nsw i32 %i.ado, 6
  %i.adr = add nuw nsw i32 %i.adq, 64
  %i.ads = lshr i32 5377344, %i.adp
  %i.adt = and i32 %i.ads, 192
  %i.adu = add nuw nsw i32 %i.adr, %i.adt
  %i.adv = trunc i32 %i.adu to i16
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit: ; preds = %bb.dn, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread
  %.0.i198405 = phi i16 [ %i.adh, %bb.dn ], [ %.0.i198404, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %.pn.i = phi i16 [ %i.adl, %bb.dn ], [ %i.adv, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %i.adw = and i16 %.0.i198405, 7
  %i.adx = shl nuw nsw i16 %.0.i197, 3
  %i.ady = and i16 %i.adx, 56
  %i.adz = or disjoint i16 %i.adw, %i.ady
  %.0.i199 = or disjoint i16 %i.adz, %.pn.i
  store i16 %.0.i199, ptr %i.aby, align 4, !tbaa !67
  %i.aea = load i64, ptr %11, align 8, !tbaa !50
  %i.aeb = add i64 %i.aea, %.3.ph
  store i64 %i.aeb, ptr %11, align 8, !tbaa !50
  %i.aec = add i64 %.3181.ph, 2                   ; 2 uses
  %i.aed = add i64 %.3181.ph, %.sroa.0302.1.ph    ; 4 uses
  %i.aee = tail call noundef i64 @llvm.umin.i64(i64 %i.aed, i64 %spec.select) ; 3 uses
  %i.aef = lshr i64 %.sroa.0302.1.ph, 2
  %i.aeg = icmp ult i64 %.sroa.15.1.ph, %i.aef
  br i1 %i.aeg, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.aeh = shl nuw i64 %.sroa.15.1.ph, 2
  %i.aei = sub i64 %i.aed, %i.aeh
  %i.aej = tail call noundef i64 @llvm.umax.i64(i64 %i.aec, i64 %i.aei)
  %i.aek = tail call noundef i64 @llvm.umin.i64(i64 %i.aee, i64 %i.aej)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %.0 = phi i64 [ %i.aek, %bb.do ], [ %i.aec, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit ] ; 2 uses
  %i.ael = icmp ult i64 %.0, %i.aee
  br i1 %i.ael, label %.lr.ph604, label %_ZN13duckdb_brotliL13StoreRangeH41EPNS_3H41EPKhmmm.exit

.lr.ph604:                                        ; preds = %bb.dp
  %i.aem = load ptr, ptr %i.al, align 8, !tbaa !107, !alias.scope !1300, !noalias !1301 ; 3 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 131072
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aem, i64 196608
  %i.aep = load ptr, ptr %i.am, align 8, !tbaa !107, !alias.scope !1300, !noalias !1301
  %.promoted605 = load i16, ptr %i.a, align 8, !tbaa !67, !alias.scope !1300, !noalias !1301
  br label %bb.dq

bb.dq:                                            ; preds = %.lr.ph604, %bb.dq
  %i.aeq = phi i16 [ %.promoted605, %.lr.ph604 ], [ %i.aew, %bb.dq ] ; 3 uses
  %.0.i287603 = phi i64 [ %.0, %.lr.ph604 ], [ %i.afl, %bb.dq ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  %i.aer = and i64 %.0.i287603, %3
  %i.aes = getelementptr inbounds nuw i8, ptr %2, i64 %i.aer
  %.0.copyload.i.i296 = load i32, ptr %i.aes, align 1, !alias.scope !1302, !noalias !1300
  %i.aet = mul i32 %.0.copyload.i.i296, 506832829
  %i.aeu = lshr i32 %i.aet, 17                    ; 2 uses
  %i.aev = zext nneg i32 %i.aeu to i64            ; 2 uses
  %i.aew = add i16 %i.aeq, 1                      ; 2 uses
  %i.aex = zext i16 %i.aeq to i64
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %i.aev ; 2 uses
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !28, !noalias !1300
  %i.afa = zext i32 %i.aez to i64
  %i.afb = sub i64 %.0.i287603, %i.afa
  %i.afc = trunc i32 %i.aeu to i8
  %i.afd = and i64 %.0.i287603, 65535
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aeo, i64 %i.afd
  store i8 %i.afc, ptr %i.afe, align 1, !tbaa !59, !noalias !1300
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.afb, i64 65535)
  %i.aff = trunc nuw i64 %spec.store.select.i to i16
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %i.aex ; 2 uses
  store i16 %i.aff, ptr %i.afg, align 2, !tbaa !119, !noalias !1300
  %i.afh = getelementptr inbounds nuw [2 x i8], ptr %i.aen, i64 %i.aev ; 2 uses
  %i.afi = load i16, ptr %i.afh, align 2, !tbaa !67, !noalias !1300
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afg, i64 2
  store i16 %i.afi, ptr %i.afj, align 2, !tbaa !118, !noalias !1300
  %i.afk = trunc i64 %.0.i287603 to i32
  store i32 %i.afk, ptr %i.aey, align 4, !tbaa !28, !noalias !1300
  store i16 %i.aeq, ptr %i.afh, align 2, !tbaa !67, !noalias !1300
  %i.afl = add nuw i64 %.0.i287603, 1             ; 2 uses
  %exitcond680.not = icmp eq i64 %i.afl, %i.aee
  br i1 %exitcond680.not, label %_ZN13duckdb_brotliL13StoreRangeH41EPNS_3H41EPKhmmm.exit.sink.split, label %bb.dq, !llvm.loop !14

_ZN13duckdb_brotliL19FindLongestMatchH41EPNS_3H41EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit286.thread: ; preds = %bb.af, %_ZN13duckdb_brotliL19FindLongestMatchH41EPNS_3H41EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit286
  %i.afm = add i64 %.0175622, 1                   ; 5 uses
  %i.afn = add i64 %.0178621, 1                   ; 9 uses
  %i.afo = icmp ugt i64 %i.afn, %.0173623
  br i1 %i.afo, label %bb.dr, label %_ZN13duckdb_brotliL13StoreRangeH41EPNS_3H41EPKhmmm.exit

bb.dr:                                            ; preds = %_ZN13duckdb_brotliL19FindLongestMatchH41EPNS_3H41EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit286.thread
  %i.afp = add i64 %.0173623, %i.au
  %i.afq = icmp ugt i64 %i.afn, %i.afp
  br i1 %i.afq, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.afr = add i64 %.0178621, 17
  %i.afs = tail call noundef i64 @llvm.umin.i64(i64 %i.afr, i64 %i.av) ; 2 uses
  %i.aft = icmp ult i64 %i.afn, %i.afs
  br i1 %i.aft, label %.lr.ph615, label %_ZN13duckdb_brotliL13StoreRangeH41EPNS_3H41EPKhmmm.exit

.lr.ph615:                                        ; preds = %bb.ds
  %i.afu = load ptr, ptr %i.al, align 8, !tbaa !107, !alias.scope !1303, !noalias !1304 ; 3 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 131072
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afu, i64 196608
  %i.afx = load ptr, ptr %i.am, align 8, !tbaa !107, !alias.scope !1303, !noalias !1304
  %.promoted618 = load i16, ptr %i.a, align 8, !tbaa !67, !alias.scope !1303, !noalias !1304
  br label %bb.dt

bb.dt:                                            ; preds = %.lr.ph615, %bb.dt
  %i.afy = phi i16 [ %.promoted618, %.lr.ph615 ], [ %i.age, %bb.dt ] ; 3 uses
  %.4614 = phi i64 [ %i.afm, %.lr.ph615 ], [ %i.agt, %bb.dt ]
  %.4182613 = phi i64 [ %i.afn, %.lr.ph615 ], [ %i.agu, %bb.dt ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.afz = and i64 %.4182613, %3
  %i.aga = getelementptr inbounds nuw i8, ptr %2, i64 %i.afz
  %.0.copyload.i.i292 = load i32, ptr %i.aga, align 1, !alias.scope !1305, !noalias !1303
  %i.agb = mul i32 %.0.copyload.i.i292, 506832829
  %i.agc = lshr i32 %i.agb, 17                    ; 2 uses
  %i.agd = zext nneg i32 %i.agc to i64            ; 2 uses
  %i.age = add i16 %i.afy, 1                      ; 2 uses
  %i.agf = zext i16 %i.afy to i64
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.agd ; 2 uses
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !28, !noalias !1303
  %i.agi = zext i32 %i.agh to i64
  %i.agj = sub i64 %.4182613, %i.agi
  %i.agk = trunc i32 %i.agc to i8
  %i.agl = and i64 %.4182613, 65535
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afw, i64 %i.agl
  store i8 %i.agk, ptr %i.agm, align 1, !tbaa !59, !noalias !1303
  %spec.store.select.i291 = tail call i64 @llvm.umin.i64(i64 %i.agj, i64 65535)
  %i.agn = trunc nuw i64 %spec.store.select.i291 to i16
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %i.agf ; 2 uses
  store i16 %i.agn, ptr %i.ago, align 2, !tbaa !119, !noalias !1303
  %i.agp = getelementptr inbounds nuw [2 x i8], ptr %i.afv, i64 %i.agd ; 2 uses
  %i.agq = load i16, ptr %i.agp, align 2, !tbaa !67, !noalias !1303
  %i.agr = getelementptr inbounds nuw i8, ptr %i.ago, i64 2
  store i16 %i.agq, ptr %i.agr, align 2, !tbaa !118, !noalias !1303
  %i.ags = trunc i64 %.4182613 to i32
  store i32 %i.ags, ptr %i.agg, align 4, !tbaa !28, !noalias !1303
  store i16 %i.afy, ptr %i.agp, align 2, !tbaa !67, !noalias !1303
  %i.agt = add i64 %.4614, 4                      ; 2 uses
  %i.agu = add i64 %.4182613, 4                   ; 3 uses
  %i.agv = icmp ult i64 %i.agu, %i.afs
  br i1 %i.agv, label %bb.dt, label %_ZN13duckdb_brotliL13StoreRangeH41EPNS_3H41EPKhmmm.exit.sink.split, !llvm.loop !1266

bb.du:                                            ; preds = %bb.dr
  %i.agw = add i64 %.0178621, 9
  %i.agx = tail call noundef i64 @llvm.umin.i64(i64 %i.agw, i64 %i.l) ; 2 uses
  %i.agy = icmp ult i64 %i.afn, %i.agx
  br i1 %i.agy, label %.lr.ph608, label %_ZN13duckdb_brotliL13StoreRangeH41EPNS_3H41EPKhmmm.exit

.lr.ph608:                                        ; preds = %bb.du
  %i.agz = load ptr, ptr %i.al, align 8, !tbaa !107, !alias.scope !1306, !noalias !1307 ; 3 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 131072
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 196608
  %i.ahc = load ptr, ptr %i.am, align 8, !tbaa !107, !alias.scope !1306, !noalias !1307
  %.promoted611 = load i16, ptr %i.a, align 8, !tbaa !67, !alias.scope !1306, !noalias !1307
  br label %bb.dv

bb.dv:                                            ; preds = %.lr.ph608, %bb.dv
  %i.ahd = phi i16 [ %.promoted611, %.lr.ph608 ], [ %i.ahj, %bb.dv ] ; 3 uses
  %.5607 = phi i64 [ %i.afm, %.lr.ph608 ], [ %i.ahy, %bb.dv ]
  %.5183606 = phi i64 [ %i.afn, %.lr.ph608 ], [ %i.ahz, %bb.dv ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  %i.ahe = and i64 %.5183606, %3
  %i.ahf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ahe
  %.0.copyload.i.i293 = load i32, ptr %i.ahf, align 1, !alias.scope !1308, !noalias !1306
  %i.ahg = mul i32 %.0.copyload.i.i293, 506832829
  %i.ahh = lshr i32 %i.ahg, 17                    ; 2 uses
  %i.ahi = zext nneg i32 %i.ahh to i64            ; 2 uses
  %i.ahj = add i16 %i.ahd, 1                      ; 2 uses
  %i.ahk = zext i16 %i.ahd to i64
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.ahi ; 2 uses
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !28, !noalias !1306
  %i.ahn = zext i32 %i.ahm to i64
  %i.aho = sub i64 %.5183606, %i.ahn
  %i.ahp = trunc i32 %i.ahh to i8
  %i.ahq = and i64 %.5183606, 65535
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %i.ahq
  store i8 %i.ahp, ptr %i.ahr, align 1, !tbaa !59, !noalias !1306
  %spec.store.select.i290 = tail call i64 @llvm.umin.i64(i64 %i.aho, i64 65535)
end_hunk_11
begin_hunk_12_@_ZL28CreateBackwardReferencesNH42mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
  %i.zr = icmp eq i64 %.sroa.15.1.ph, %i.zm
  br i1 %i.zr, label %_ZL19ComputeDistanceCodemmPKi.exit.thread, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.zs = icmp eq i64 %.sroa.15.1.ph, %i.zp
  br i1 %i.zs, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.zt = icmp ult i64 %i.zn, 7
  br i1 %i.zt, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %.tr25.i = trunc nuw nsw i64 %i.zn to i32
  %i.zu = shl nuw nsw i32 %.tr25.i, 2
  %i.zv = lshr i32 158663784, %i.zu
  %i.zw = and i32 %i.zv, 15
  %i.zx = zext nneg i32 %i.zw to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.cv:                                            ; preds = %bb.ct
  %i.zy = icmp ult i64 %i.zq, 7
  br i1 %i.zy, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %.tr.i = trunc nuw nsw i64 %i.zq to i32
  %i.zz = shl nuw nsw i32 %.tr.i, 2
  %i.aaa = lshr i32 266017486, %i.zz
  %i.aab = and i32 %i.aaa, 15
  %i.aac = zext nneg i32 %i.aab to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.cx:                                            ; preds = %bb.cv
  %i.aad = load i32, ptr %i.au, align 4, !tbaa !28
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = icmp eq i64 %.sroa.15.1.ph, %i.aae
  br i1 %i.aaf, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aag = load i32, ptr %i.av, align 4, !tbaa !28
  %i.aah = sext i32 %i.aag to i64
  %.not414 = icmp eq i64 %.sroa.15.1.ph, %i.aah
  br i1 %.not414, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %split
  %i.aai = add i64 %.sroa.15.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.cs, %bb.cw, %bb.cu, %bb.cx, %bb.cy, %bb.cz
  %.1.i = phi i64 [ %i.aai, %bb.cz ], [ 3, %bb.cy ], [ 1, %bb.cs ], [ %i.aac, %bb.cw ], [ %i.zx, %bb.cu ], [ 2, %bb.cx ] ; 3 uses
  %i.aaj = icmp ule i64 %.sroa.15.1.ph, %i.zj
  %i.aak = icmp ne i64 %.1.i, 0
  %or.cond = and i1 %i.aaj, %i.aak
  br i1 %or.cond, label %bb.da, label %_ZL19ComputeDistanceCodemmPKi.exit.thread

bb.da:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.aal = load i32, ptr %i.au, align 4, !tbaa !28
  store i32 %i.aal, ptr %i.av, align 4, !tbaa !28
  %i.aam = load <2 x i32>, ptr %7, align 4, !tbaa !28 ; 2 uses
  %i.aan = load i32, ptr %7, align 4, !tbaa !28
  store <2 x i32> %i.aam, ptr %i.v, align 4, !tbaa !28
  %i.aao = trunc i64 %.sroa.15.1.ph to i32        ; 4 uses
  store i32 %i.aao, ptr %7, align 4, !tbaa !28
  %i.aap = insertelement <4 x i32> poison, i32 %i.aao, i64 0
  %i.aaq = shufflevector <4 x i32> %i.aap, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aar = add nsw <4 x i32> %i.aaq, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.aar, ptr %i.s, align 4, !tbaa !28, !alias.scope !1381
  %i.aas = add nsw i32 %i.aao, -3
  store i32 %i.aas, ptr %i.t, align 4, !tbaa !28, !alias.scope !1381
  %i.aat = add nsw i32 %i.aao, 3
  store i32 %i.aat, ptr %i.u, align 4, !tbaa !28, !alias.scope !1381
  %i.aau = shufflevector <2 x i32> %i.aam, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.aav = add nsw <4 x i32> %i.aau, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.aav, ptr %i.w, align 4, !tbaa !28, !alias.scope !1381
  %i.aaw = insertelement <2 x i32> poison, i32 %i.aan, i64 0
  %i.aax = shufflevector <2 x i32> %i.aaw, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aay = add nsw <2 x i32> %i.aax, <i32 -3, i32 3>
  store <2 x i32> %i.aay, ptr %i.ad, align 4, !tbaa !28, !alias.scope !1381
  br label %_ZL19ComputeDistanceCodemmPKi.exit.thread

_ZL19ComputeDistanceCodemmPKi.exit.thread:        ; preds = %bb.cr, %bb.da, %_ZL19ComputeDistanceCodemmPKi.exit
  %.1.i410 = phi i64 [ %.1.i, %_ZL19ComputeDistanceCodemmPKi.exit ], [ %.1.i, %bb.da ], [ 0, %bb.cr ] ; 3 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0185614, i64 16 ; 2 uses
  %i.aba = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.aba, ptr %.0185614, align 4, !tbaa !94
  %i.abb = shl i32 %.sroa.34.1.ph, 25
  %i.abc = trunc i64 %.sroa.0302.1.ph to i32      ; 2 uses
  %i.abd = or i32 %i.abb, %i.abc
  %i.abe = getelementptr inbounds nuw i8, ptr %.0185614, i64 4
  store i32 %i.abd, ptr %i.abe, align 4, !tbaa !95
  %i.abf = load i32, ptr %i.aw, align 4, !tbaa !96
  %i.abg = zext i32 %i.abf to i64                 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.0185614, i64 14
  %i.abi = getelementptr inbounds nuw i8, ptr %.0185614, i64 8
  %i.abj = add nuw nsw i64 %i.abg, 16             ; 2 uses
  %i.abk = icmp ult i64 %.1.i410, %i.abj
  br i1 %i.abk, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.db

bb.db:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread
  %i.abl = load i32, ptr %i.an, align 8, !tbaa !97 ; 2 uses
  %i.abm = zext i32 %i.abl to i64                 ; 4 uses
  %i.abn = shl nuw i64 4, %i.abm
  %i.abo = add i64 %.1.i410, -16
  %i.abp = sub i64 %i.abo, %i.abg
  %i.abq = add i64 %i.abp, %i.abn                 ; 4 uses
  %i.abr = trunc i64 %i.abq to i32
  %i.abs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.abr, i1 true)
  %i.abt = sub nsw i32 30, %i.abs
  %i.abu = zext i32 %i.abt to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.abl
  %i.abv = xor i32 %notmask.i, -1
  %i.abw = zext nneg i32 %i.abv to i64
  %i.abx = and i64 %i.abq, %i.abw
  %i.aby = lshr i64 %i.abq, %i.abu                ; 2 uses
  %i.abz = and i64 %i.aby, 1
  %i.aca = or disjoint i64 %i.abz, 2
  %i.acb = shl i64 %i.aca, %i.abu
  %i.acc = sub nsw i64 %i.abu, %i.abm             ; 2 uses
  %i.acd = shl nsw i64 %i.acc, 10
  %i.ace = shl nsw i64 %i.acc, 1
  %i.acf = or i64 %i.aby, 65534
  %i.acg = add i64 %i.ace, %i.acf
  %i.ach = shl i64 %i.acg, %i.abm
  %i.aci = add nuw nsw i64 %i.abx, %i.abj
  %i.acj = add i64 %i.aci, %i.ach
  %i.ack = or i64 %i.acj, %i.acd
  %i.acl = sub i64 %i.abq, %i.acb
  %i.acm = lshr i64 %i.acl, %i.abm
  %i.acn = trunc i64 %i.acm to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZL19ComputeDistanceCodemmPKi.exit.thread, %bb.db
  %.sink.in = phi i64 [ %i.ack, %bb.db ], [ %.1.i410, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %storemerge.i = phi i32 [ %i.acn, %bb.db ], [ 0, %_ZL19ComputeDistanceCodemmPKi.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.abh, align 2, !tbaa !67
  store i32 %storemerge.i, ptr %i.abi, align 4, !tbaa !28
  %i.aco = add nsw i32 %.sroa.34.1.ph, %i.abc     ; 6 uses
  %i.acp = and i16 %.sink, 1023
  %i.acq = icmp eq i16 %i.acp, 0
  %i.acr = getelementptr inbounds nuw i8, ptr %.0185614, i64 12
  %i.acs = icmp ult i64 %.3.ph, 6
  br i1 %i.acs, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.act = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.dd:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.acu = icmp ult i64 %.3.ph, 130
  br i1 %i.acu, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.acv = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.acw = trunc nuw nsw i64 %i.acv to i32
  %i.acx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.acw, i1 true)
  %i.acy = sub nuw nsw i32 30, %i.acx             ; 2 uses
  %i.acz = shl nuw nsw i32 %i.acy, 1
  %i.ada = zext nneg i32 %i.acz to i64
  %i.adb = zext nneg i32 %i.acy to i64
  %i.adc = lshr i64 %i.acv, %i.adb
  %i.add = add nuw nsw i64 %i.adc, %i.ada
  %i.ade = trunc nuw nsw i64 %i.add to i16
  %i.adf = add nuw nsw i16 %i.ade, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.df:                                            ; preds = %bb.dd
  %i.adg = icmp ult i64 %.3.ph, 2114
  br i1 %i.adg, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.adh = add nsw i32 %i.aba, -66
  %i.adi = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adh, i1 true)
  %i.adj = trunc nuw nsw i32 %i.adi to i16
  %i.adk = sub nuw nsw i16 41, %i.adj
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.dh:                                            ; preds = %bb.df
  %i.adl = icmp ult i64 %.3.ph, 6210
  br i1 %i.adl, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.adm = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.adm, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.dc, %bb.de, %bb.dg, %bb.dh, %bb.di
  %.0.i197 = phi i16 [ %i.act, %bb.dc ], [ %i.adf, %bb.de ], [ %i.adk, %bb.dg ], [ 21, %bb.dh ], [ %..i, %bb.di ] ; 3 uses
  %i.adn = icmp ult i32 %i.aco, 10
  br i1 %i.adn, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit, label %bb.dj

bb.dj:                                            ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.ado = icmp ult i32 %i.aco, 134
  br i1 %i.ado, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %narrow = add nsw i32 %i.aco, -6                ; 2 uses
  %i.adp = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.adq = sub nuw nsw i32 30, %i.adp             ; 2 uses
  %i.adr = shl nuw nsw i32 %i.adq, 1
  %i.ads = lshr i32 %narrow, %i.adq
  %i.adt = add i32 %i.ads, %i.adr
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.dl:                                            ; preds = %bb.dj
  %i.adu = icmp ult i32 %i.aco, 2118
  br i1 %i.adu, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread782, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread782: ; preds = %bb.dl
  %i.adv = add nsw i32 %i.aco, -70
  %i.adw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adv, i1 true)
  %i.adx = trunc nuw nsw i32 %i.adw to i16
  %i.ady = sub nuw nsw i16 43, %i.adx
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, %bb.dk
  %.sink854 = phi i32 [ %i.adt, %bb.dk ], [ %i.aco, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %.sink853 = phi i16 [ 4, %bb.dk ], [ -2, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %i.adz = trunc i32 %.sink854 to i16
  %i.aea = add nsw i16 %.sink853, %i.adz          ; 4 uses
  %i.aeb = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.acq, %i.aeb
  %i.aec = icmp ult i16 %i.aea, 16
  %or.cond5.i = and i1 %or.cond.i, %i.aec
  br i1 %or.cond5.i, label %bb.dm, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.dm:                                            ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.aed = shl nuw nsw i16 %i.aea, 3
  %i.aee = and i16 %i.aed, 64
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread: ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread782, %bb.dl, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.0.i198404 = phi i16 [ %i.aea, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ], [ 23, %bb.dl ], [ %i.ady, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread782 ] ; 2 uses
  %i.aef = lshr i16 %.0.i198404, 3
  %i.aeg = lshr i16 %.0.i197, 3
  %narrow.i = mul nuw nsw i16 %i.aeg, 3
  %narrow21.i = add nuw nsw i16 %i.aef, %narrow.i
  %i.aeh = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.aei = shl nuw nsw i32 %i.aeh, 1
  %i.aej = shl nuw nsw i32 %i.aeh, 6
  %i.aek = add nuw nsw i32 %i.aej, 64
  %i.ael = lshr i32 5377344, %i.aei
  %i.aem = and i32 %i.ael, 192
  %i.aen = add nuw nsw i32 %i.aek, %i.aem
  %i.aeo = trunc i32 %i.aen to i16
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit: ; preds = %bb.dm, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread
  %.0.i198405 = phi i16 [ %i.aea, %bb.dm ], [ %.0.i198404, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %.pn.i = phi i16 [ %i.aee, %bb.dm ], [ %i.aeo, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %i.aep = and i16 %.0.i198405, 7
  %i.aeq = shl nuw nsw i16 %.0.i197, 3
  %i.aer = and i16 %i.aeq, 56
  %i.aes = or disjoint i16 %i.aep, %i.aer
  %.0.i199 = or disjoint i16 %i.aes, %.pn.i
  store i16 %.0.i199, ptr %i.acr, align 4, !tbaa !67
  %i.aet = load i64, ptr %11, align 8, !tbaa !50
  %i.aeu = add i64 %i.aet, %.3.ph
  store i64 %i.aeu, ptr %11, align 8, !tbaa !50
  %i.aev = add i64 %.3181.ph, 2                   ; 2 uses
  %i.aew = add i64 %.3181.ph, %.sroa.0302.1.ph    ; 4 uses
  %i.aex = tail call noundef i64 @llvm.umin.i64(i64 %i.aew, i64 %spec.select) ; 3 uses
  %i.aey = lshr i64 %.sroa.0302.1.ph, 2
  %i.aez = icmp ult i64 %.sroa.15.1.ph, %i.aey
  br i1 %i.aez, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.afa = shl nuw i64 %.sroa.15.1.ph, 2
  %i.afb = sub i64 %i.aew, %i.afa
  %i.afc = tail call noundef i64 @llvm.umax.i64(i64 %i.aev, i64 %i.afb)
  %i.afd = tail call noundef i64 @llvm.umin.i64(i64 %i.aex, i64 %i.afc)
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %.0 = phi i64 [ %i.afd, %bb.dn ], [ %i.aev, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit ] ; 2 uses
  %i.afe = icmp ult i64 %.0, %i.aex
  br i1 %i.afe, label %.lr.ph603, label %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit

.lr.ph603:                                        ; preds = %bb.do
  %i.aff = load ptr, ptr %i.ap, align 8, !tbaa !107, !alias.scope !1382, !noalias !1383 ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 131072
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 196608
  %i.afi = load ptr, ptr %i.aq, align 8, !tbaa !107, !alias.scope !1382, !noalias !1383
  br label %bb.dp

bb.dp:                                            ; preds = %.lr.ph603, %bb.dp
  %.0.i287602 = phi i64 [ %.0, %.lr.ph603 ], [ %i.agi, %bb.dp ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  %i.afj = and i64 %.0.i287602, %3
  %i.afk = getelementptr inbounds nuw i8, ptr %2, i64 %i.afj
  %.0.copyload.i.i296 = load i32, ptr %i.afk, align 1, !alias.scope !1384, !noalias !1382
  %i.afl = mul i32 %.0.copyload.i.i296, 506832829
  %i.afm = lshr i32 %i.afl, 17                    ; 2 uses
  %i.afn = zext nneg i32 %i.afm to i64            ; 3 uses
  %i.afo = and i64 %i.afn, 511                    ; 2 uses
  %i.afp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.afo ; 2 uses
  %i.afq = load i16, ptr %i.afp, align 2, !tbaa !67, !alias.scope !1382, !noalias !1383 ; 2 uses
  %i.afr = add i16 %i.afq, 1
  store i16 %i.afr, ptr %i.afp, align 2, !tbaa !67, !alias.scope !1382, !noalias !1383
  %i.afs = and i16 %i.afq, 511                    ; 2 uses
  %i.aft = zext nneg i16 %i.afs to i64
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %i.afn ; 2 uses
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !28, !noalias !1382
  %i.afw = zext i32 %i.afv to i64
  %i.afx = sub i64 %.0.i287602, %i.afw
  %i.afy = trunc i32 %i.afm to i8
  %i.afz = and i64 %.0.i287602, 65535
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afh, i64 %i.afz
  store i8 %i.afy, ptr %i.aga, align 1, !tbaa !59, !noalias !1382
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.afx, i64 65535)
  %i.agb = trunc nuw i64 %spec.store.select.i to i16
  %i.agc = getelementptr inbounds nuw [2048 x i8], ptr %i.afi, i64 %i.afo
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %i.aft ; 2 uses
  store i16 %i.agb, ptr %i.agd, align 2, !tbaa !125, !noalias !1382
  %i.age = getelementptr inbounds nuw [2 x i8], ptr %i.afg, i64 %i.afn ; 2 uses
  %i.agf = load i16, ptr %i.age, align 2, !tbaa !67, !noalias !1382
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agd, i64 2
  store i16 %i.agf, ptr %i.agg, align 2, !tbaa !124, !noalias !1382
  %i.agh = trunc i64 %.0.i287602 to i32
  store i32 %i.agh, ptr %i.afu, align 4, !tbaa !28, !noalias !1382
  store i16 %i.afs, ptr %i.age, align 2, !tbaa !67, !noalias !1382
  %i.agi = add nuw i64 %.0.i287602, 1             ; 2 uses
  %exitcond673.not = icmp eq i64 %i.agi, %i.aex
  br i1 %exitcond673.not, label %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit, label %bb.dp, !llvm.loop !17

_ZN13duckdb_brotliL19FindLongestMatchH42EPNS_3H42EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit286.thread: ; preds = %bb.af, %_ZN13duckdb_brotliL19FindLongestMatchH42EPNS_3H42EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit286
  %i.agj = add i64 %.0175616, 1                   ; 5 uses
  %i.agk = add i64 %.0178615, 1                   ; 9 uses
  %i.agl = icmp ugt i64 %i.agk, %.0173617
  br i1 %i.agl, label %bb.dq, label %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit

bb.dq:                                            ; preds = %_ZN13duckdb_brotliL19FindLongestMatchH42EPNS_3H42EPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit286.thread
  %i.agm = add i64 %.0173617, %i.ax
  %i.agn = icmp ugt i64 %i.agk, %i.agm
  br i1 %i.agn, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.ago = add i64 %.0178615, 17
  %i.agp = tail call noundef i64 @llvm.umin.i64(i64 %i.ago, i64 %i.ay) ; 2 uses
  %i.agq = icmp ult i64 %i.agk, %i.agp
  br i1 %i.agq, label %.lr.ph611, label %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit

.lr.ph611:                                        ; preds = %bb.dr
  %i.agr = load ptr, ptr %i.ap, align 8, !tbaa !107, !alias.scope !1385, !noalias !1386 ; 3 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 131072
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agr, i64 196608
  %i.agu = load ptr, ptr %i.aq, align 8, !tbaa !107, !alias.scope !1385, !noalias !1386
  br label %bb.ds

bb.ds:                                            ; preds = %.lr.ph611, %bb.ds
  %.4610 = phi i64 [ %i.agj, %.lr.ph611 ], [ %i.ahu, %bb.ds ]
  %.4182609 = phi i64 [ %i.agk, %.lr.ph611 ], [ %i.ahv, %bb.ds ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  %i.agv = and i64 %.4182609, %3
  %i.agw = getelementptr inbounds nuw i8, ptr %2, i64 %i.agv
  %.0.copyload.i.i292 = load i32, ptr %i.agw, align 1, !alias.scope !1387, !noalias !1385
  %i.agx = mul i32 %.0.copyload.i.i292, 506832829
  %i.agy = lshr i32 %i.agx, 17                    ; 2 uses
  %i.agz = zext nneg i32 %i.agy to i64            ; 3 uses
  %i.aha = and i64 %i.agz, 511                    ; 2 uses
  %i.ahb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aha ; 2 uses
  %i.ahc = load i16, ptr %i.ahb, align 2, !tbaa !67, !alias.scope !1385, !noalias !1386 ; 2 uses
  %i.ahd = add i16 %i.ahc, 1
  store i16 %i.ahd, ptr %i.ahb, align 2, !tbaa !67, !alias.scope !1385, !noalias !1386
  %i.ahe = and i16 %i.ahc, 511                    ; 2 uses
  %i.ahf = zext nneg i16 %i.ahe to i64
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.agr, i64 %i.agz ; 2 uses
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !28, !noalias !1385
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = sub i64 %.4182609, %i.ahi
  %i.ahk = trunc i32 %i.agy to i8
  %i.ahl = and i64 %.4182609, 65535
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agt, i64 %i.ahl
  store i8 %i.ahk, ptr %i.ahm, align 1, !tbaa !59, !noalias !1385
  %spec.store.select.i291 = tail call i64 @llvm.umin.i64(i64 %i.ahj, i64 65535)
  %i.ahn = trunc nuw i64 %spec.store.select.i291 to i16
  %i.aho = getelementptr inbounds nuw [2048 x i8], ptr %i.agu, i64 %i.aha
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.ahf ; 2 uses
  store i16 %i.ahn, ptr %i.ahp, align 2, !tbaa !125, !noalias !1385
  %i.ahq = getelementptr inbounds nuw [2 x i8], ptr %i.ags, i64 %i.agz ; 2 uses
  %i.ahr = load i16, ptr %i.ahq, align 2, !tbaa !67, !noalias !1385
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahp, i64 2
  store i16 %i.ahr, ptr %i.ahs, align 2, !tbaa !124, !noalias !1385
  %i.aht = trunc i64 %.4182609 to i32
  store i32 %i.aht, ptr %i.ahg, align 4, !tbaa !28, !noalias !1385
  store i16 %i.ahe, ptr %i.ahq, align 2, !tbaa !67, !noalias !1385
  %i.ahu = add i64 %.4610, 4                      ; 2 uses
  %i.ahv = add i64 %.4182609, 4                   ; 3 uses
  %i.ahw = icmp ult i64 %i.ahv, %i.agp
  br i1 %i.ahw, label %bb.ds, label %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit, !llvm.loop !1348

bb.dt:                                            ; preds = %bb.dq
  %i.ahx = add i64 %.0178615, 9
  %i.ahy = tail call noundef i64 @llvm.umin.i64(i64 %i.ahx, i64 %i.l) ; 2 uses
  %i.ahz = icmp ult i64 %i.agk, %i.ahy
  br i1 %i.ahz, label %.lr.ph606, label %_ZN13duckdb_brotliL13StoreRangeH42EPNS_3H42EPKhmmm.exit

.lr.ph606:                                        ; preds = %bb.dt
  %i.aia = load ptr, ptr %i.ap, align 8, !tbaa !107, !alias.scope !1388, !noalias !1389 ; 3 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 131072
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aia, i64 196608
  %i.aid = load ptr, ptr %i.aq, align 8, !tbaa !107, !alias.scope !1388, !noalias !1389
  br label %bb.du

bb.du:                                            ; preds = %.lr.ph606, %bb.du
  %.5605 = phi i64 [ %i.agj, %.lr.ph606 ], [ %i.ajd, %bb.du ]
  %.5183604 = phi i64 [ %i.agk, %.lr.ph606 ], [ %i.aje, %bb.du ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  %i.aie = and i64 %.5183604, %3
  %i.aif = getelementptr inbounds nuw i8, ptr %2, i64 %i.aie
  %.0.copyload.i.i293 = load i32, ptr %i.aif, align 1, !alias.scope !1390, !noalias !1388
  %i.aig = mul i32 %.0.copyload.i.i293, 506832829
  %i.aih = lshr i32 %i.aig, 17                    ; 2 uses
  %i.aii = zext nneg i32 %i.aih to i64            ; 3 uses
  %i.aij = and i64 %i.aii, 511                    ; 2 uses
  %i.aik = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aij ; 2 uses
  %i.ail = load i16, ptr %i.aik, align 2, !tbaa !67, !alias.scope !1388, !noalias !1389 ; 2 uses
  %i.aim = add i16 %i.ail, 1
  store i16 %i.aim, ptr %i.aik, align 2, !tbaa !67, !alias.scope !1388, !noalias !1389
end_hunk_12
begin_hunk_13_@_ZL28CreateBackwardReferencesNH65mmPKhmS0_PK19BrotliEncoderParamsPN13duckdb_brotli6HasherEPiPmPNS4_7CommandES8_S8_:bb.a
bb.du:                                            ; preds = %bb.dt
  %.tr25.i = trunc nuw nsw i64 %i.afh to i32
  %i.afo = shl nuw nsw i32 %.tr25.i, 2
  %i.afp = lshr i32 158663784, %i.afo
  %i.afq = and i32 %i.afp, 15
  %i.afr = zext nneg i32 %i.afq to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.dv:                                            ; preds = %bb.dt
  %i.afs = icmp ult i64 %i.afk, 7
  br i1 %i.afs, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %.tr.i = trunc nuw nsw i64 %i.afk to i32
  %i.aft = shl nuw nsw i32 %.tr.i, 2
  %i.afu = lshr i32 266017486, %i.aft
  %i.afv = and i32 %i.afu, 15
  %i.afw = zext nneg i32 %i.afv to i64
  br label %_ZL19ComputeDistanceCodemmPKi.exit

bb.dx:                                            ; preds = %bb.dv
  %i.afx = load i32, ptr %i.bo, align 4, !tbaa !28
  %i.afy = sext i32 %i.afx to i64
  %i.afz = icmp eq i64 %.sroa.17.1.ph, %i.afy
  br i1 %i.afz, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.aga = load i32, ptr %i.bp, align 4, !tbaa !28
  %i.agb = sext i32 %i.aga to i64
  %.not437 = icmp eq i64 %.sroa.17.1.ph, %i.agb
  br i1 %.not437, label %_ZL19ComputeDistanceCodemmPKi.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %split
  %i.agc = add i64 %.sroa.17.1.ph, 15
  br label %_ZL19ComputeDistanceCodemmPKi.exit

_ZL19ComputeDistanceCodemmPKi.exit:               ; preds = %bb.ds, %bb.dw, %bb.du, %bb.dx, %bb.dy, %bb.dz
  %.1.i = phi i64 [ %i.agc, %bb.dz ], [ 3, %bb.dy ], [ 1, %bb.ds ], [ %i.afw, %bb.dw ], [ %i.afr, %bb.du ], [ 2, %bb.dx ] ; 5 uses
  %i.agd = icmp ule i64 %.sroa.17.1.ph, %i.afd
  %i.age = icmp ne i64 %.1.i, 0
  %or.cond = and i1 %i.agd, %i.age
  br i1 %or.cond, label %bb.ea, label %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit

bb.ea:                                            ; preds = %_ZL19ComputeDistanceCodemmPKi.exit
  %i.agf = load i32, ptr %i.bo, align 4, !tbaa !28
  store i32 %i.agf, ptr %i.bp, align 4, !tbaa !28
  %i.agg = load <2 x i32>, ptr %7, align 4, !tbaa !28 ; 3 uses
  store <2 x i32> %i.agg, ptr %i.bn, align 4, !tbaa !28
  %i.agh = trunc i64 %.sroa.17.1.ph to i32        ; 4 uses
  store i32 %i.agh, ptr %7, align 4, !tbaa !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  %i.agi = load i32, ptr %i.s, align 8, !tbaa !99, !alias.scope !1683, !noalias !1684 ; 2 uses
  %i.agj = icmp sgt i32 %i.agi, 4
  br i1 %i.agj, label %bb.eb, label %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit

bb.eb:                                            ; preds = %bb.ea
  %i.agk = insertelement <4 x i32> poison, i32 %i.agh, i64 0
  %i.agl = shufflevector <4 x i32> %i.agk, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.agm = add nsw <4 x i32> %i.agl, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.agm, ptr %i.bq, align 4, !tbaa !28, !alias.scope !1685, !noalias !1683
  %i.agn = add nsw i32 %i.agh, -3
  store i32 %i.agn, ptr %i.br, align 4, !tbaa !28, !alias.scope !1685, !noalias !1683
  %i.ago = add nsw i32 %i.agh, 3
  store i32 %i.ago, ptr %i.bs, align 4, !tbaa !28, !alias.scope !1685, !noalias !1683
  %i.agp = icmp samesign ugt i32 %i.agi, 10
  br i1 %i.agp, label %bb.ec, label %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit

bb.ec:                                            ; preds = %bb.eb
  %i.agq = shufflevector <2 x i32> %i.agg, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.agr = add nsw <4 x i32> %i.agq, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.agr, ptr %i.bt, align 4, !tbaa !28, !alias.scope !1685, !noalias !1683
  %i.ags = shufflevector <2 x i32> %i.agg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.agt = add nsw <2 x i32> %i.ags, <i32 -3, i32 3>
  store <2 x i32> %i.agt, ptr %i.bu, align 4, !tbaa !28, !alias.scope !1685, !noalias !1683
  br label %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit

_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit: ; preds = %bb.dr, %bb.ec, %bb.eb, %bb.ea, %_ZL19ComputeDistanceCodemmPKi.exit
  %.1.i431 = phi i64 [ %.1.i, %_ZL19ComputeDistanceCodemmPKi.exit ], [ %.1.i, %bb.ec ], [ %.1.i, %bb.eb ], [ %.1.i, %bb.ea ], [ 0, %bb.dr ] ; 3 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %.0185726, i64 16 ; 3 uses
  %i.agv = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.agv, ptr %.0185726, align 4, !tbaa !94
  %i.agw = shl i32 %.sroa.39.1.ph, 25
  %i.agx = trunc i64 %.sroa.0320.1.ph to i32      ; 2 uses
  %i.agy = or i32 %i.agw, %i.agx
  %i.agz = getelementptr inbounds nuw i8, ptr %.0185726, i64 4
  store i32 %i.agy, ptr %i.agz, align 4, !tbaa !95
  %i.aha = load i32, ptr %i.bv, align 4, !tbaa !96
  %i.ahb = zext i32 %i.aha to i64                 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.0185726, i64 14
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0185726, i64 8
  %i.ahe = add nuw nsw i64 %i.ahb, 16             ; 2 uses
  %i.ahf = icmp ult i64 %.1.i431, %i.ahe
  br i1 %i.ahf, label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit, label %bb.ed

bb.ed:                                            ; preds = %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit
  %i.ahg = load i32, ptr %i.av, align 8, !tbaa !97 ; 2 uses
  %i.ahh = zext i32 %i.ahg to i64                 ; 4 uses
  %i.ahi = shl nuw i64 4, %i.ahh
  %i.ahj = add i64 %.1.i431, -16
  %i.ahk = sub i64 %i.ahj, %i.ahb
  %i.ahl = add i64 %i.ahk, %i.ahi                 ; 4 uses
  %i.ahm = trunc i64 %i.ahl to i32
  %i.ahn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahm, i1 true)
  %i.aho = sub nsw i32 30, %i.ahn
  %i.ahp = zext i32 %i.aho to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.ahg
  %i.ahq = xor i32 %notmask.i, -1
  %i.ahr = zext nneg i32 %i.ahq to i64
  %i.ahs = and i64 %i.ahl, %i.ahr
  %i.aht = lshr i64 %i.ahl, %i.ahp                ; 2 uses
  %i.ahu = and i64 %i.aht, 1
  %i.ahv = or disjoint i64 %i.ahu, 2
  %i.ahw = shl i64 %i.ahv, %i.ahp
  %i.ahx = sub nsw i64 %i.ahp, %i.ahh             ; 2 uses
  %i.ahy = shl nsw i64 %i.ahx, 10
  %i.ahz = shl nsw i64 %i.ahx, 1
  %i.aia = or i64 %i.aht, 65534
  %i.aib = add i64 %i.ahz, %i.aia
  %i.aic = shl i64 %i.aib, %i.ahh
  %i.aid = add nuw nsw i64 %i.ahs, %i.ahe
  %i.aie = add i64 %i.aid, %i.aic
  %i.aif = or i64 %i.aie, %i.ahy
  %i.aig = sub i64 %i.ahl, %i.ahw
  %i.aih = lshr i64 %i.aig, %i.ahh
  %i.aii = trunc i64 %i.aih to i32
  br label %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit

_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit: ; preds = %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit, %bb.ed
  %.sink.in = phi i64 [ %i.aif, %bb.ed ], [ %.1.i431, %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit ]
  %storemerge.i = phi i32 [ %i.aii, %bb.ed ], [ 0, %_ZN13duckdb_brotliL23PrepareDistanceCacheH65EPNS_3H65EPi.exit ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.ahc, align 2, !tbaa !67
  store i32 %storemerge.i, ptr %i.ahd, align 4, !tbaa !28
  %i.aij = add nsw i32 %.sroa.39.1.ph, %i.agx     ; 6 uses
  %i.aik = and i16 %.sink, 1023
  %i.ail = icmp eq i16 %i.aik, 0
  %i.aim = getelementptr inbounds nuw i8, ptr %.0185726, i64 12
  %i.ain = icmp ult i64 %.3.ph, 6
  br i1 %i.ain, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.aio = trunc nuw nsw i64 %.3.ph to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.ef:                                            ; preds = %_ZN13duckdb_brotliL24PrefixEncodeCopyDistanceEmmmPtPj.exit
  %i.aip = icmp ult i64 %.3.ph, 130
  br i1 %i.aip, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.aiq = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.air = trunc nuw nsw i64 %i.aiq to i32
  %i.ais = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.air, i1 true)
  %i.ait = sub nuw nsw i32 30, %i.ais             ; 2 uses
  %i.aiu = shl nuw nsw i32 %i.ait, 1
  %i.aiv = zext nneg i32 %i.aiu to i64
  %i.aiw = zext nneg i32 %i.ait to i64
  %i.aix = lshr i64 %i.aiq, %i.aiw
  %i.aiy = add nuw nsw i64 %i.aix, %i.aiv
  %i.aiz = trunc nuw nsw i64 %i.aiy to i16
  %i.aja = add nuw nsw i16 %i.aiz, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.eh:                                            ; preds = %bb.ef
  %i.ajb = icmp ult i64 %.3.ph, 2114
  br i1 %i.ajb, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ajc = add nsw i32 %i.agv, -66
  %i.ajd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ajc, i1 true)
  %i.aje = trunc nuw nsw i32 %i.ajd to i16
  %i.ajf = sub nuw nsw i16 41, %i.aje
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.ej:                                            ; preds = %bb.eh
  %i.ajg = icmp ult i64 %.3.ph, 6210
  br i1 %i.ajg, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ajh = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.ajh, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.ee, %bb.eg, %bb.ei, %bb.ej, %bb.ek
  %.0.i197 = phi i16 [ %i.aio, %bb.ee ], [ %i.aja, %bb.eg ], [ %i.ajf, %bb.ei ], [ 21, %bb.ej ], [ %..i, %bb.ek ] ; 3 uses
  %i.aji = icmp ult i32 %i.aij, 10
  br i1 %i.aji, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit, label %bb.el

bb.el:                                            ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.ajj = icmp ult i32 %i.aij, 134
  br i1 %i.ajj, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %narrow = add nsw i32 %i.aij, -6                ; 2 uses
  %i.ajk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.ajl = sub nuw nsw i32 30, %i.ajk             ; 2 uses
  %i.ajm = shl nuw nsw i32 %i.ajl, 1
  %i.ajn = lshr i32 %narrow, %i.ajl
  %i.ajo = add i32 %i.ajn, %i.ajm
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.en:                                            ; preds = %bb.el
  %i.ajp = icmp ult i32 %i.aij, 2118
  br i1 %i.ajp, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread948, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread948: ; preds = %bb.en
  %i.ajq = add nsw i32 %i.aij, -70
  %i.ajr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ajq, i1 true)
  %i.ajs = trunc nuw nsw i32 %i.ajr to i16
  %i.ajt = sub nuw nsw i16 43, %i.ajs
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, %bb.em
  %.sink1036 = phi i32 [ %i.ajo, %bb.em ], [ %i.aij, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %.sink1035 = phi i16 [ 4, %bb.em ], [ -2, %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit ]
  %i.aju = trunc i32 %.sink1036 to i16
  %i.ajv = add nsw i16 %.sink1035, %i.aju         ; 4 uses
  %i.ajw = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.ail, %i.ajw
  %i.ajx = icmp ult i16 %i.ajv, 16
  %or.cond5.i = and i1 %or.cond.i, %i.ajx
  br i1 %or.cond5.i, label %bb.eo, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread

bb.eo:                                            ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %i.ajy = shl nuw nsw i16 %i.ajv, 3
  %i.ajz = and i16 %i.ajy, 64
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread: ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread948, %bb.en, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  %.0.i198425 = phi i16 [ %i.ajv, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit ], [ 23, %bb.en ], [ %i.ajt, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread948 ] ; 2 uses
  %i.aka = lshr i16 %.0.i198425, 3
  %i.akb = lshr i16 %.0.i197, 3
  %narrow.i = mul nuw nsw i16 %i.akb, 3
  %narrow21.i = add nuw nsw i16 %i.aka, %narrow.i
  %i.akc = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.akd = shl nuw nsw i32 %i.akc, 1
  %i.ake = shl nuw nsw i32 %i.akc, 6
  %i.akf = add nuw nsw i32 %i.ake, 64
  %i.akg = lshr i32 5377344, %i.akd
  %i.akh = and i32 %i.akg, 192
  %i.aki = add nuw nsw i32 %i.akf, %i.akh
  %i.akj = trunc i32 %i.aki to i16
  br label %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit

_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit: ; preds = %bb.eo, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread
  %.0.i198426 = phi i16 [ %i.ajv, %bb.eo ], [ %.0.i198425, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %.pn.i = phi i16 [ %i.ajz, %bb.eo ], [ %i.akj, %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit.thread ]
  %i.akk = and i16 %.0.i198426, 7
  %i.akl = shl nuw nsw i16 %.0.i197, 3
  %i.akm = and i16 %i.akl, 56
  %i.akn = or disjoint i16 %i.akk, %i.akm
  %.0.i199 = or disjoint i16 %i.akn, %.pn.i
  store i16 %.0.i199, ptr %i.aim, align 4, !tbaa !67
  %i.ako = load i64, ptr %11, align 8, !tbaa !50
  %i.akp = add i64 %i.ako, %.3.ph
  store i64 %i.akp, ptr %11, align 8, !tbaa !50
  %i.akq = add i64 %.3181.ph, 2                   ; 2 uses
  %i.akr = add i64 %.3181.ph, %.sroa.0320.1.ph    ; 5 uses
  %i.aks = tail call noundef i64 @llvm.umin.i64(i64 %i.akr, i64 %spec.select) ; 5 uses
  %i.akt = lshr i64 %.sroa.0320.1.ph, 2
  %i.aku = icmp ult i64 %.sroa.17.1.ph, %i.akt
  br i1 %i.aku, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %i.akv = shl nuw i64 %.sroa.17.1.ph, 2
  %i.akw = sub i64 %i.akr, %i.akv
  %i.akx = tail call noundef i64 @llvm.umax.i64(i64 %i.akq, i64 %i.akw)
  %i.aky = tail call noundef i64 @llvm.umin.i64(i64 %i.aks, i64 %i.akx)
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit
  %.0 = phi i64 [ %i.aky, %bb.ep ], [ %i.akq, %_ZN13duckdb_brotliL18CombineLengthCodesEtti.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  %i.akz = icmp ult i64 %.0, %i.aks
  br i1 %i.akz, label %.lr.ph725, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit

.lr.ph725:                                        ; preds = %bb.eq
  %i.ala = load i64, ptr %i.bb, align 8, !tbaa !102, !alias.scope !1688, !noalias !1689 ; 3 uses
  %i.alb = load i32, ptr %i.be, align 8, !tbaa !105, !alias.scope !1688, !noalias !1689 ; 3 uses
  %i.alc = load i32, ptr %i.bc, align 4, !tbaa !103, !alias.scope !1688, !noalias !1689
  %i.ald = zext nneg i32 %i.alc to i64            ; 3 uses
  %i.ale = sub nuw i64 %i.aks, %.0
  %.neg1201 = add i64 %.0, 1
  %xtraiter = and i64 %i.ale, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph725
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  %i.alf = and i64 %.0, %3
  %i.alg = getelementptr inbounds nuw i8, ptr %2, i64 %i.alf
  %.0.copyload.i.i.i284.prol = load i64, ptr %i.alg, align 1, !alias.scope !1691, !noalias !1688
  %i.alh = mul i64 %.0.copyload.i.i.i284.prol, %i.ala
  %i.ali = lshr i64 %i.alh, 49                    ; 2 uses
  %i.alj = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ali ; 2 uses
  %i.alk = load i16, ptr %i.alj, align 2, !tbaa !67, !noalias !1692 ; 2 uses
  %i.all = zext i16 %i.alk to i32
  %i.alm = and i32 %i.alb, %i.all
  %i.aln = zext nneg i32 %i.alm to i64
  %i.alo = shl i64 %i.ali, %i.ald
  %i.alp = add i16 %i.alk, 1
  store i16 %i.alp, ptr %i.alj, align 2, !tbaa !67, !noalias !1692
  %i.alq = trunc i64 %.0 to i32
  %i.alr = getelementptr [4 x i8], ptr %i.ba, i64 %i.alo
  %i.als = getelementptr [4 x i8], ptr %i.alr, i64 %i.aln
  store i32 %i.alq, ptr %i.als, align 4, !tbaa !28, !noalias !1692
  %i.alt = add nuw i64 %.0, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph725
  %.0.i.i283723.unr = phi i64 [ %.0, %.lr.ph725 ], [ %i.alt, %.prol.loopexit.unr-lcssa ]
  %i.alu = icmp eq i64 %i.aks, %.neg1201
  br i1 %i.alu, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit, label %.lr.ph725.new

.lr.ph725.new:                                    ; preds = %.prol.loopexit, %.lr.ph725.new
  %.0.i.i283723 = phi i64 [ %i.amy, %.lr.ph725.new ], [ %.0.i.i283723.unr, %.prol.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  %i.alv = and i64 %.0.i.i283723, %3
  %i.alw = getelementptr inbounds nuw i8, ptr %2, i64 %i.alv
  %.0.copyload.i.i.i284 = load i64, ptr %i.alw, align 1, !alias.scope !1691, !noalias !1688
  %i.alx = mul i64 %.0.copyload.i.i.i284, %i.ala
  %i.aly = lshr i64 %i.alx, 49                    ; 2 uses
  %i.alz = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.aly ; 2 uses
  %i.ama = load i16, ptr %i.alz, align 2, !tbaa !67, !noalias !1692 ; 2 uses
  %i.amb = zext i16 %i.ama to i32
  %i.amc = and i32 %i.alb, %i.amb
  %i.amd = zext nneg i32 %i.amc to i64
  %i.ame = shl i64 %i.aly, %i.ald
  %i.amf = add i16 %i.ama, 1
  store i16 %i.amf, ptr %i.alz, align 2, !tbaa !67, !noalias !1692
  %i.amg = trunc i64 %.0.i.i283723 to i32
  %i.amh = getelementptr [4 x i8], ptr %i.ba, i64 %i.ame
  %i.ami = getelementptr [4 x i8], ptr %i.amh, i64 %i.amd
  store i32 %i.amg, ptr %i.ami, align 4, !tbaa !28, !noalias !1692
  %i.amj = add nuw i64 %.0.i.i283723, 1           ; 2 uses
  %i.amk = and i64 %i.amj, %3
  %i.aml = getelementptr inbounds nuw i8, ptr %2, i64 %i.amk
  %.0.copyload.i.i.i284.1 = load i64, ptr %i.aml, align 1, !alias.scope !1691, !noalias !1693
  %i.amm = mul i64 %.0.copyload.i.i.i284.1, %i.ala
  %i.amn = lshr i64 %i.amm, 49                    ; 2 uses
  %i.amo = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.amn ; 2 uses
  %i.amp = load i16, ptr %i.amo, align 2, !tbaa !67, !noalias !1694 ; 2 uses
  %i.amq = zext i16 %i.amp to i32
  %i.amr = and i32 %i.alb, %i.amq
  %i.ams = zext nneg i32 %i.amr to i64
  %i.amt = shl i64 %i.amn, %i.ald
  %i.amu = add i16 %i.amp, 1
  store i16 %i.amu, ptr %i.amo, align 2, !tbaa !67, !noalias !1694
  %i.amv = trunc i64 %i.amj to i32
  %i.amw = getelementptr [4 x i8], ptr %i.ba, i64 %i.amt
  %i.amx = getelementptr [4 x i8], ptr %i.amw, i64 %i.ams
  store i32 %i.amv, ptr %i.amx, align 4, !tbaa !28, !noalias !1694
  %i.amy = add nuw i64 %.0.i.i283723, 2           ; 2 uses
  %exitcond807.not.1 = icmp eq i64 %i.amy, %i.aks
  br i1 %exitcond807.not.1, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit, label %.lr.ph725.new, !llvm.loop !9

bb.er:                                            ; preds = %_ZN13duckdb_brotliL24FindLongestMatchHROLLINGEPNS_8HROLLINGEPKNS_23BrotliEncoderDictionaryEPKhmPKimmmmmPNS_18HasherSearchResultE.exit
  %i.amz = add i64 %.0175728, 1                   ; 5 uses
  %i.ana = add i64 %.0178727, 1                   ; 9 uses
  %i.anb = icmp ugt i64 %i.ana, %.0173729
  br i1 %i.anb, label %bb.es, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit

bb.es:                                            ; preds = %bb.er
  %i.anc = add i64 %.0173729, %i.bm
  %i.and = icmp ugt i64 %i.ana, %i.anc
  br i1 %i.and, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.ane = add i64 %.0178727, 17
  %i.anf = tail call noundef i64 @llvm.umin.i64(i64 %i.ane, i64 %i.k) ; 2 uses
  %i.ang = icmp ult i64 %i.ana, %i.anf
  br i1 %i.ang, label %.lr.ph604, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit

.lr.ph604:                                        ; preds = %bb.et
  %i.anh = load i32, ptr %i.be, align 8, !tbaa !105, !alias.scope !1695, !noalias !1696
  %i.ani = load i32, ptr %i.bc, align 4, !tbaa !103, !alias.scope !1695, !noalias !1696
  %i.anj = zext nneg i32 %i.ani to i64
  br label %bb.eu

bb.eu:                                            ; preds = %.lr.ph604, %bb.eu
  %.4602 = phi i64 [ %i.amz, %.lr.ph604 ], [ %i.any, %bb.eu ]
  %.4182601 = phi i64 [ %i.ana, %.lr.ph604 ], [ %i.anz, %bb.eu ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  %i.ank = and i64 %.4182601, %3
  %i.anl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ank
  %.0.copyload.i.i.i286 = load i64, ptr %i.anl, align 1, !alias.scope !1700, !noalias !1695
  %i.anm = mul i64 %.0.copyload.i.i.i286, %i.fd
  %i.ann = lshr i64 %i.anm, 49                    ; 2 uses
  %i.ano = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ann ; 2 uses
  %i.anp = load i16, ptr %i.ano, align 2, !tbaa !67, !noalias !1701 ; 2 uses
  %i.anq = zext i16 %i.anp to i32
  %i.anr = and i32 %i.anh, %i.anq
  %i.ans = zext nneg i32 %i.anr to i64
  %i.ant = shl i64 %i.ann, %i.anj
  %i.anu = add i16 %i.anp, 1
  store i16 %i.anu, ptr %i.ano, align 2, !tbaa !67, !noalias !1701
  %i.anv = trunc i64 %.4182601 to i32
  %i.anw = getelementptr [4 x i8], ptr %i.ba, i64 %i.ant
  %i.anx = getelementptr [4 x i8], ptr %i.anw, i64 %i.ans
  store i32 %i.anv, ptr %i.anx, align 4, !tbaa !28, !noalias !1701
  %i.any = add i64 %.4602, 4                      ; 2 uses
  %i.anz = add i64 %.4182601, 4                   ; 3 uses
  %i.aoa = icmp ult i64 %i.anz, %i.anf
  br i1 %i.aoa, label %bb.eu, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit, !llvm.loop !1625

bb.ev:                                            ; preds = %bb.es
  %i.aob = add i64 %.0178727, 9
  %i.aoc = tail call noundef i64 @llvm.umin.i64(i64 %i.aob, i64 %i.k) ; 2 uses
  %i.aod = icmp ult i64 %i.ana, %i.aoc
  br i1 %i.aod, label %.lr.ph598, label %_ZN13duckdb_brotliL13StoreRangeH65EPNS_3H65EPKhmmm.exit

.lr.ph598:                                        ; preds = %bb.ev
  %i.aoe = load i32, ptr %i.be, align 8, !tbaa !105, !alias.scope !1702, !noalias !1703
end_hunk_13
