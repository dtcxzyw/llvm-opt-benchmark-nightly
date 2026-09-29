Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/backward_references?download=true
inline.NumInlined: 243
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 78
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 99
begin_hunk_0_@CreateBackwardReferencesDH5:bb.a
  %i.asq = icmp ult i64 %i.ask, 7
  br i1 %i.asq, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %.tr25.i = trunc nuw nsw i64 %i.ask to i32
  %i.asr = shl nuw nsw i32 %.tr25.i, 2
  %i.ass = lshr i32 158663784, %i.asr
  %i.ast = and i32 %i.ass, 15
  %i.asu = zext nneg i32 %i.ast to i64
  br label %ComputeDistanceCode.exit

bb.gm:                                            ; preds = %bb.gk
  %i.asv = icmp ult i64 %i.asn, 7
  br i1 %i.asv, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %.tr.i = trunc nuw nsw i64 %i.asn to i32
  %i.asw = shl nuw nsw i32 %.tr.i, 2
  %i.asx = lshr i32 266017486, %i.asw
  %i.asy = and i32 %i.asx, 15
  %i.asz = zext nneg i32 %i.asy to i64
  br label %ComputeDistanceCode.exit

bb.go:                                            ; preds = %bb.gm
  %i.ata = load i32, ptr %i.bn, align 4, !tbaa !64
  %i.atb = sext i32 %i.ata to i64
  %i.atc = icmp eq i64 %.sroa.18437.1.ph, %i.atb
  br i1 %i.atc, label %ComputeDistanceCode.exit, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.atd = load i32, ptr %i.bo, align 4, !tbaa !64
  %i.ate = sext i32 %i.atd to i64
  %.not584 = icmp eq i64 %.sroa.18437.1.ph, %i.ate
  br i1 %.not584, label %ComputeDistanceCode.exit, label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %split
  %i.atf = add i64 %.sroa.18437.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.gj, %bb.gn, %bb.gl, %bb.go, %bb.gp, %bb.gq
  %.1.i242 = phi i64 [ %i.atf, %bb.gq ], [ 3, %bb.gp ], [ 1, %bb.gj ], [ %i.asz, %bb.gn ], [ %i.asu, %bb.gl ], [ 2, %bb.go ] ; 5 uses
  %i.atg = icmp ule i64 %.sroa.18437.1.ph, %i.asg
  %i.ath = icmp ne i64 %.1.i242, 0
  %or.cond = select i1 %i.atg, i1 %i.ath, i1 false
  br i1 %or.cond, label %bb.gr, label %PrepareDistanceCache.exit244

bb.gr:                                            ; preds = %ComputeDistanceCode.exit
  %i.ati = load i32, ptr %i.bn, align 4, !tbaa !64
  store i32 %i.ati, ptr %i.bo, align 4, !tbaa !64
  %i.atj = load <2 x i32>, ptr %7, align 4, !tbaa !64 ; 3 uses
  store <2 x i32> %i.atj, ptr %i.bm, align 4, !tbaa !64
  %i.atk = trunc i64 %.sroa.18437.1.ph to i32     ; 4 uses
  store i32 %i.atk, ptr %7, align 4, !tbaa !64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.atl = load i32, ptr %i.t, align 4, !tbaa !63, !alias.scope !250, !noalias !251 ; 2 uses
  %i.atm = icmp sgt i32 %i.atl, 4
  br i1 %i.atm, label %bb.gs, label %PrepareDistanceCache.exit244

bb.gs:                                            ; preds = %bb.gr
  %i.atn = insertelement <4 x i32> poison, i32 %i.atk, i64 0
  %i.ato = shufflevector <4 x i32> %i.atn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.atp = add nsw <4 x i32> %i.ato, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.atp, ptr %i.bp, align 4, !tbaa !64, !alias.scope !252, !noalias !250
  %i.atq = add nsw i32 %i.atk, -3
  store i32 %i.atq, ptr %i.bq, align 4, !tbaa !64, !alias.scope !252, !noalias !250
  %i.atr = add nsw i32 %i.atk, 3
  store i32 %i.atr, ptr %i.br, align 4, !tbaa !64, !alias.scope !252, !noalias !250
  %i.ats = icmp samesign ugt i32 %i.atl, 10
  br i1 %i.ats, label %bb.gt, label %PrepareDistanceCache.exit244

bb.gt:                                            ; preds = %bb.gs
  %i.att = shufflevector <2 x i32> %i.atj, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.atu = add nsw <4 x i32> %i.att, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.atu, ptr %i.bs, align 4, !tbaa !64, !alias.scope !252, !noalias !250
  %i.atv = shufflevector <2 x i32> %i.atj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.atw = add nsw <2 x i32> %i.atv, <i32 -3, i32 3>
  store <2 x i32> %i.atw, ptr %i.bt, align 4, !tbaa !64, !alias.scope !252, !noalias !250
  br label %PrepareDistanceCache.exit244

PrepareDistanceCache.exit244:                     ; preds = %bb.gi, %bb.gt, %bb.gs, %bb.gr, %ComputeDistanceCode.exit
  %.1.i242580 = phi i64 [ %.1.i242, %ComputeDistanceCode.exit ], [ %.1.i242, %bb.gt ], [ %.1.i242, %bb.gs ], [ %.1.i242, %bb.gr ], [ 0, %bb.gi ] ; 3 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %.0201971, i64 16 ; 3 uses
  %i.aty = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.aty, ptr %.0201971, align 4, !tbaa !103
  %i.atz = shl i32 %.sroa.42.1.ph, 25
  %i.aua = trunc i64 %.sroa.0429.1.ph to i32      ; 2 uses
  %i.aub = or i32 %i.atz, %i.aua
  %i.auc = getelementptr inbounds nuw i8, ptr %.0201971, i64 4
  store i32 %i.aub, ptr %i.auc, align 4, !tbaa !104
  %i.aud = load i32, ptr %i.bu, align 4, !tbaa !105
  %i.aue = zext i32 %i.aud to i64                 ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %.0201971, i64 14
  %i.aug = getelementptr inbounds nuw i8, ptr %.0201971, i64 8
  %i.auh = add nuw nsw i64 %i.aue, 16             ; 2 uses
  %i.aui = icmp ult i64 %.1.i242580, %i.auh
  br i1 %i.aui, label %PrefixEncodeCopyDistance.exit, label %bb.gu

bb.gu:                                            ; preds = %PrepareDistanceCache.exit244
  %i.auj = load i32, ptr %i.aw, align 8, !tbaa !106 ; 2 uses
  %i.auk = zext i32 %i.auj to i64                 ; 4 uses
  %i.aul = shl nuw i64 4, %i.auk
  %i.aum = add i64 %.1.i242580, -16
  %i.aun = sub i64 %i.aum, %i.aue
  %i.auo = add i64 %i.aun, %i.aul                 ; 4 uses
  %i.aup = trunc i64 %i.auo to i32
  %i.auq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aup, i1 true)
  %i.aur = sub nsw i32 30, %i.auq
  %i.aus = zext i32 %i.aur to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.auj
  %i.aut = xor i32 %notmask.i, -1
  %i.auu = zext nneg i32 %i.aut to i64
  %i.auv = and i64 %i.auo, %i.auu
  %i.auw = lshr i64 %i.auo, %i.aus                ; 2 uses
  %i.aux = and i64 %i.auw, 1
  %i.auy = or disjoint i64 %i.aux, 2
  %i.auz = shl i64 %i.auy, %i.aus
  %i.ava = sub nsw i64 %i.aus, %i.auk             ; 2 uses
  %i.avb = shl nsw i64 %i.ava, 10
  %i.avc = shl nsw i64 %i.ava, 1
  %i.avd = or i64 %i.auw, 65534
  %i.ave = add i64 %i.avc, %i.avd
  %i.avf = shl i64 %i.ave, %i.auk
  %i.avg = add nuw nsw i64 %i.auv, %i.auh
  %i.avh = add i64 %i.avg, %i.avf
  %i.avi = or i64 %i.avh, %i.avb
  %i.avj = sub i64 %i.auo, %i.auz
  %i.avk = lshr i64 %i.avj, %i.auk
  %i.avl = trunc i64 %i.avk to i32
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %PrepareDistanceCache.exit244, %bb.gu
  %.sink.in = phi i64 [ %i.avi, %bb.gu ], [ %.1.i242580, %PrepareDistanceCache.exit244 ]
  %storemerge.i = phi i32 [ %i.avl, %bb.gu ], [ 0, %PrepareDistanceCache.exit244 ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.auf, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.aug, align 4, !tbaa !64
  %i.avm = add nsw i32 %.sroa.42.1.ph, %i.aua     ; 6 uses
  %i.avn = and i16 %.sink, 1023
  %i.avo = icmp eq i16 %i.avn, 0
  %i.avp = getelementptr inbounds nuw i8, ptr %.0201971, i64 12
  %i.avq = icmp ult i64 %.3.ph, 6
  br i1 %i.avq, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.avr = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.gw:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.avs = icmp ult i64 %.3.ph, 130
  br i1 %i.avs, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.avt = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.avu = trunc nuw nsw i64 %i.avt to i32
  %i.avv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.avu, i1 true)
  %i.avw = sub nuw nsw i32 30, %i.avv             ; 2 uses
  %i.avx = shl nuw nsw i32 %i.avw, 1
  %i.avy = zext nneg i32 %i.avx to i64
  %i.avz = zext nneg i32 %i.avw to i64
  %i.awa = lshr i64 %i.avt, %i.avz
  %i.awb = add nuw nsw i64 %i.awa, %i.avy
  %i.awc = trunc nuw nsw i64 %i.awb to i16
  %i.awd = add nuw nsw i16 %i.awc, 2
  br label %GetInsertLengthCode.exit

bb.gy:                                            ; preds = %bb.gw
  %i.awe = icmp ult i64 %.3.ph, 2114
  br i1 %i.awe, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.awf = add nsw i32 %i.aty, -66
  %i.awg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.awf, i1 true)
  %i.awh = trunc nuw nsw i32 %i.awg to i16
  %i.awi = sub nuw nsw i16 41, %i.awh
  br label %GetInsertLengthCode.exit

bb.ha:                                            ; preds = %bb.gy
  %i.awj = icmp ult i64 %.3.ph, 6210
  br i1 %i.awj, label %GetInsertLengthCode.exit, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.awk = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.awk, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.gv, %bb.gx, %bb.gz, %bb.ha, %bb.hb
  %.0.i415 = phi i16 [ %i.avr, %bb.gv ], [ %i.awd, %bb.gx ], [ %i.awi, %bb.gz ], [ 21, %bb.ha ], [ %..i, %bb.hb ] ; 3 uses
  %i.awl = icmp ult i32 %i.avm, 10
  br i1 %i.awl, label %GetCopyLengthCode.exit, label %bb.hc

bb.hc:                                            ; preds = %GetInsertLengthCode.exit
  %i.awm = icmp ult i32 %i.avm, 134
  br i1 %i.awm, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %narrow = add nsw i32 %i.avm, -6                ; 2 uses
  %i.awn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.awo = sub nuw nsw i32 30, %i.awn             ; 2 uses
  %i.awp = shl nuw nsw i32 %i.awo, 1
  %i.awq = lshr i32 %narrow, %i.awo
  %i.awr = add nuw nsw i32 %i.awq, %i.awp
  br label %GetCopyLengthCode.exit

bb.he:                                            ; preds = %bb.hc
  %i.aws = icmp ult i32 %i.avm, 2118
  br i1 %i.aws, label %GetCopyLengthCode.exit.thread1296, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread1296:                ; preds = %bb.he
  %i.awt = add nsw i32 %i.avm, -70
  %i.awu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.awt, i1 true)
  %i.awv = trunc nuw nsw i32 %i.awu to i16
  %i.aww = sub nuw nsw i16 43, %i.awv
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.hd
  %.sink1428 = phi i32 [ %i.awr, %bb.hd ], [ %i.avm, %GetInsertLengthCode.exit ]
  %.sink1427 = phi i16 [ 4, %bb.hd ], [ -2, %GetInsertLengthCode.exit ]
  %i.awx = trunc nuw nsw i32 %.sink1428 to i16
  %i.awy = add nsw i16 %.sink1427, %i.awx         ; 4 uses
  %i.awz = icmp samesign ult i16 %.0.i415, 8
  %or.cond.i417 = and i1 %i.avo, %i.awz
  %i.axa = icmp ult i16 %i.awy, 16
  %or.cond5.i = and i1 %or.cond.i417, %i.axa
  br i1 %or.cond5.i, label %bb.hf, label %GetCopyLengthCode.exit.thread

bb.hf:                                            ; preds = %GetCopyLengthCode.exit
  %i.axb = shl nuw nsw i16 %i.awy, 3
  %i.axc = and i16 %i.axb, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread1296, %bb.he, %GetCopyLengthCode.exit
  %.0.i416574 = phi i16 [ %i.awy, %GetCopyLengthCode.exit ], [ 23, %bb.he ], [ %i.aww, %GetCopyLengthCode.exit.thread1296 ] ; 2 uses
  %i.axd = lshr i16 %.0.i416574, 3
  %i.axe = lshr i16 %.0.i415, 3
  %narrow.i418 = mul nuw nsw i16 %i.axe, 3
  %narrow21.i = add nuw nsw i16 %i.axd, %narrow.i418
  %i.axf = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.axg = shl nuw nsw i32 %i.axf, 1
  %i.axh = shl nuw nsw i32 %i.axf, 6
  %i.axi = add nuw nsw i32 %i.axh, 64
  %i.axj = lshr i32 5377344, %i.axg
  %i.axk = and i32 %i.axj, 192
  %i.axl = add nuw nsw i32 %i.axi, %i.axk
  %i.axm = trunc i32 %i.axl to i16
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.hf, %GetCopyLengthCode.exit.thread
  %.0.i416575 = phi i16 [ %i.awy, %bb.hf ], [ %.0.i416574, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.axc, %bb.hf ], [ %i.axm, %GetCopyLengthCode.exit.thread ]
  %i.axn = and i16 %.0.i416575, 7
  %i.axo = shl nuw nsw i16 %.0.i415, 3
  %i.axp = and i16 %i.axo, 56
  %i.axq = or disjoint i16 %i.axn, %i.axp
  %.0.i419 = or disjoint i16 %i.axq, %.pn.i
  store i16 %.0.i419, ptr %i.avp, align 4, !tbaa !76
  %i.axr = load i64, ptr %11, align 8, !tbaa !58
  %i.axs = add i64 %i.axr, %.3.ph
  store i64 %i.axs, ptr %11, align 8, !tbaa !58
  %i.axt = add i64 %.3197.ph, 2                   ; 2 uses
  %i.axu = add i64 %.3197.ph, %.sroa.0429.1.ph    ; 5 uses
  %i.axv = tail call i64 @llvm.umin.i64(i64 %i.axu, i64 %spec.select) ; 5 uses
  %i.axw = lshr i64 %.sroa.0429.1.ph, 2
  %i.axx = icmp ult i64 %.sroa.18437.1.ph, %i.axw
  br i1 %i.axx, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %CombineLengthCodes.exit
  %i.axy = shl nuw i64 %.sroa.18437.1.ph, 2
  %i.axz = sub i64 %i.axu, %i.axy
  %i.aya = tail call i64 @llvm.umax.i64(i64 %i.axt, i64 %i.axz)
  %i.ayb = tail call i64 @llvm.umin.i64(i64 %i.axv, i64 %i.aya)
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.ayb, %bb.hg ], [ %i.axt, %CombineLengthCodes.exit ] ; 7 uses
  %i.ayc = icmp ult i64 %.0, %i.axv
  br i1 %i.ayc, label %.lr.ph970, label %StoreRangeH5.exit

.lr.ph970:                                        ; preds = %bb.hh
  %i.ayd = load i32, ptr %i.bc, align 8, !tbaa !71, !alias.scope !253, !noalias !254 ; 3 uses
  %i.aye = load i32, ptr %i.bf, align 4, !tbaa !78, !alias.scope !253, !noalias !254 ; 3 uses
  %i.ayf = load i32, ptr %i.bd, align 8, !tbaa !72, !alias.scope !253, !noalias !254 ; 3 uses
  %i.ayg = sub nuw i64 %i.axv, %.0
  %.neg1681 = add i64 %.0, 1
  %xtraiter = and i64 %i.ayg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph970
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.ayh = and i64 %.0, %3
  %i.ayi = getelementptr inbounds nuw i8, ptr %2, i64 %i.ayh
  %.val421.prol = load i32, ptr %i.ayi, align 1
  %i.ayj = mul i32 %.val421.prol, 506832829
  %i.ayk = lshr i32 %i.ayj, %i.ayd                ; 2 uses
  %i.ayl = zext i32 %i.ayk to i64
  %i.aym = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ayl ; 2 uses
  %i.ayn = load i16, ptr %i.aym, align 2, !tbaa !76, !noalias !253 ; 2 uses
  %i.ayo = zext i16 %i.ayn to i32
  %i.ayp = and i32 %i.aye, %i.ayo
  %i.ayq = zext nneg i32 %i.ayp to i64
  %i.ayr = shl i32 %i.ayk, %i.ayf
  %i.ays = zext i32 %i.ayr to i64
  %i.ayt = add i16 %i.ayn, 1
  store i16 %i.ayt, ptr %i.aym, align 2, !tbaa !76, !noalias !253
  %i.ayu = trunc i64 %.0 to i32
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ayq
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.ayv, i64 %i.ays
  store i32 %i.ayu, ptr %i.ayw, align 4, !tbaa !64, !noalias !253
  %i.ayx = add nuw i64 %.0, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph970
  %.0.i243968.unr = phi i64 [ %.0, %.lr.ph970 ], [ %i.ayx, %.prol.loopexit.unr-lcssa ]
  %i.ayy = icmp eq i64 %i.axv, %.neg1681
  br i1 %i.ayy, label %StoreRangeH5.exit, label %.lr.ph970.new

.lr.ph970.new:                                    ; preds = %.prol.loopexit, %.lr.ph970.new
  %.0.i243968 = phi i64 [ %i.bag, %.lr.ph970.new ], [ %.0.i243968.unr, %.prol.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.ayz = and i64 %.0.i243968, %3
  %i.aza = getelementptr inbounds nuw i8, ptr %2, i64 %i.ayz
  %.val421 = load i32, ptr %i.aza, align 1
  %i.azb = mul i32 %.val421, 506832829
  %i.azc = lshr i32 %i.azb, %i.ayd                ; 2 uses
  %i.azd = zext i32 %i.azc to i64
  %i.aze = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.azd ; 2 uses
  %i.azf = load i16, ptr %i.aze, align 2, !tbaa !76, !noalias !253 ; 2 uses
  %i.azg = zext i16 %i.azf to i32
  %i.azh = and i32 %i.aye, %i.azg
  %i.azi = zext nneg i32 %i.azh to i64
  %i.azj = shl i32 %i.azc, %i.ayf
  %i.azk = zext i32 %i.azj to i64
  %i.azl = add i16 %i.azf, 1
  store i16 %i.azl, ptr %i.aze, align 2, !tbaa !76, !noalias !253
  %i.azm = trunc i64 %.0.i243968 to i32
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.azi
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %i.azk
  store i32 %i.azm, ptr %i.azo, align 4, !tbaa !64, !noalias !253
  %i.azp = add nuw i64 %.0.i243968, 1             ; 2 uses
  %i.azq = and i64 %i.azp, %3
  %i.azr = getelementptr inbounds nuw i8, ptr %2, i64 %i.azq
  %.val421.1 = load i32, ptr %i.azr, align 1
  %i.azs = mul i32 %.val421.1, 506832829
  %i.azt = lshr i32 %i.azs, %i.ayd                ; 2 uses
  %i.azu = zext i32 %i.azt to i64
  %i.azv = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.azu ; 2 uses
  %i.azw = load i16, ptr %i.azv, align 2, !tbaa !76, !noalias !255 ; 2 uses
  %i.azx = zext i16 %i.azw to i32
  %i.azy = and i32 %i.aye, %i.azx
  %i.azz = zext nneg i32 %i.azy to i64
  %i.baa = shl i32 %i.azt, %i.ayf
  %i.bab = zext i32 %i.baa to i64
  %i.bac = add i16 %i.azw, 1
  store i16 %i.bac, ptr %i.azv, align 2, !tbaa !76, !noalias !255
  %i.bad = trunc i64 %i.azp to i32
  %i.bae = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.azz
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr %i.bae, i64 %i.bab
  store i32 %i.bad, ptr %i.baf, align 4, !tbaa !64, !noalias !255
  %i.bag = add nuw i64 %.0.i243968, 2             ; 2 uses
  %exitcond1072.not.1 = icmp eq i64 %i.bag, %i.axv
  br i1 %exitcond1072.not.1, label %StoreRangeH5.exit, label %.lr.ph970.new, !llvm.loop !6

bb.hi:                                            ; preds = %LookupCompoundDictionaryMatch.exit239
  %i.bah = add i64 %.0191973, 1                   ; 5 uses
  %i.bai = add i64 %.0194972, 1                   ; 9 uses
  %i.baj = icmp ugt i64 %i.bai, %.0189974
  br i1 %i.baj, label %bb.hj, label %StoreRangeH5.exit

bb.hj:                                            ; preds = %bb.hi
  %i.bak = add i64 %.0189974, %i.bk
  %i.bal = icmp ugt i64 %i.bai, %i.bak
  br i1 %i.bal, label %bb.hk, label %bb.hm

bb.hk:                                            ; preds = %bb.hj
  %i.bam = add i64 %.0194972, 17
  %i.ban = tail call i64 @llvm.umin.i64(i64 %i.bam, i64 %i.bl) ; 2 uses
  %i.bao = icmp ult i64 %i.bai, %i.ban
  br i1 %i.bao, label %.lr.ph807, label %StoreRangeH5.exit

.lr.ph807:                                        ; preds = %bb.hk
  %i.bap = load i32, ptr %i.bc, align 8, !tbaa !71, !alias.scope !256, !noalias !257
  %i.baq = load i32, ptr %i.bf, align 4, !tbaa !78, !alias.scope !256, !noalias !257
  %i.bar = load i32, ptr %i.bd, align 8, !tbaa !72, !alias.scope !256, !noalias !257
  br label %bb.hl

bb.hl:                                            ; preds = %.lr.ph807, %bb.hl
  %.4805 = phi i64 [ %i.bah, %.lr.ph807 ], [ %i.bbi, %bb.hl ]
  %.4198804 = phi i64 [ %i.bai, %.lr.ph807 ], [ %i.bbj, %bb.hl ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.bas = and i64 %.4198804, %3
  %i.bat = getelementptr inbounds nuw i8, ptr %2, i64 %i.bas
  %.val = load i32, ptr %i.bat, align 1
  %i.bau = mul i32 %.val, 506832829
  %i.bav = lshr i32 %i.bau, %i.bap                ; 2 uses
  %i.baw = zext i32 %i.bav to i64
  %i.bax = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.baw ; 2 uses
  %i.bay = load i16, ptr %i.bax, align 2, !tbaa !76, !noalias !256 ; 2 uses
  %i.baz = zext i16 %i.bay to i32
  %i.bba = and i32 %i.baq, %i.baz
  %i.bbb = zext nneg i32 %i.bba to i64
  %i.bbc = shl i32 %i.bav, %i.bar
  %i.bbd = zext i32 %i.bbc to i64
  %i.bbe = add i16 %i.bay, 1
  store i16 %i.bbe, ptr %i.bax, align 2, !tbaa !76, !noalias !256
  %i.bbf = trunc i64 %.4198804 to i32
  %i.bbg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bbb
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %i.bbg, i64 %i.bbd
  store i32 %i.bbf, ptr %i.bbh, align 4, !tbaa !64, !noalias !256
  %i.bbi = add i64 %.4805, 4                      ; 2 uses
  %i.bbj = add i64 %.4198804, 4                   ; 3 uses
  %i.bbk = icmp ult i64 %i.bbj, %i.ban
  br i1 %i.bbk, label %bb.hl, label %StoreRangeH5.exit, !llvm.loop !215

bb.hm:                                            ; preds = %bb.hj
  %i.bbl = add i64 %.0194972, 9
  %i.bbm = tail call i64 @llvm.umin.i64(i64 %i.bbl, i64 %i.k) ; 2 uses
  %i.bbn = icmp ult i64 %i.bai, %i.bbm
  br i1 %i.bbn, label %.lr.ph801, label %StoreRangeH5.exit
end_hunk_0
begin_hunk_1_@CreateBackwardReferencesDH6:bb.a
  br i1 %i.asu, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %.tr25.i = trunc nuw nsw i64 %i.aso to i32
  %i.asv = shl nuw nsw i32 %.tr25.i, 2
  %i.asw = lshr i32 158663784, %i.asv
  %i.asx = and i32 %i.asw, 15
  %i.asy = zext nneg i32 %i.asx to i64
  br label %ComputeDistanceCode.exit

bb.gm:                                            ; preds = %bb.gk
  %i.asz = icmp ult i64 %i.asr, 7
  br i1 %i.asz, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %.tr.i = trunc nuw nsw i64 %i.asr to i32
  %i.ata = shl nuw nsw i32 %.tr.i, 2
  %i.atb = lshr i32 266017486, %i.ata
  %i.atc = and i32 %i.atb, 15
  %i.atd = zext nneg i32 %i.atc to i64
  br label %ComputeDistanceCode.exit

bb.go:                                            ; preds = %bb.gm
  %i.ate = load i32, ptr %i.bm, align 4, !tbaa !64
  %i.atf = sext i32 %i.ate to i64
  %i.atg = icmp eq i64 %.sroa.18412.1.ph, %i.atf
  br i1 %i.atg, label %ComputeDistanceCode.exit, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ath = load i32, ptr %i.bn, align 4, !tbaa !64
  %i.ati = sext i32 %i.ath to i64
  %.not559 = icmp eq i64 %.sroa.18412.1.ph, %i.ati
  br i1 %.not559, label %ComputeDistanceCode.exit, label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %split
  %i.atj = add i64 %.sroa.18412.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.gj, %bb.gn, %bb.gl, %bb.go, %bb.gp, %bb.gq
  %.1.i = phi i64 [ %i.atj, %bb.gq ], [ 3, %bb.gp ], [ 1, %bb.gj ], [ %i.atd, %bb.gn ], [ %i.asy, %bb.gl ], [ 2, %bb.go ] ; 5 uses
  %i.atk = icmp ule i64 %.sroa.18412.1.ph, %i.ask
  %i.atl = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.atk, i1 %i.atl, i1 false
  br i1 %or.cond, label %bb.gr, label %PrepareDistanceCacheH6.exit

bb.gr:                                            ; preds = %ComputeDistanceCode.exit
  %i.atm = load i32, ptr %i.bm, align 4, !tbaa !64
  store i32 %i.atm, ptr %i.bn, align 4, !tbaa !64
  %i.atn = load <2 x i32>, ptr %7, align 4, !tbaa !64 ; 3 uses
  store <2 x i32> %i.atn, ptr %i.bl, align 4, !tbaa !64
  %i.ato = trunc i64 %.sroa.18412.1.ph to i32     ; 4 uses
  store i32 %i.ato, ptr %7, align 4, !tbaa !64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.atp = load i32, ptr %i.t, align 8, !tbaa !108, !alias.scope !348, !noalias !349 ; 2 uses
  %i.atq = icmp sgt i32 %i.atp, 4
  br i1 %i.atq, label %bb.gs, label %PrepareDistanceCacheH6.exit

bb.gs:                                            ; preds = %bb.gr
  %i.atr = insertelement <4 x i32> poison, i32 %i.ato, i64 0
  %i.ats = shufflevector <4 x i32> %i.atr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.att = add nsw <4 x i32> %i.ats, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.att, ptr %i.bo, align 4, !tbaa !64, !alias.scope !350, !noalias !348
  %i.atu = add nsw i32 %i.ato, -3
  store i32 %i.atu, ptr %i.bp, align 4, !tbaa !64, !alias.scope !350, !noalias !348
  %i.atv = add nsw i32 %i.ato, 3
  store i32 %i.atv, ptr %i.bq, align 4, !tbaa !64, !alias.scope !350, !noalias !348
  %i.atw = icmp samesign ugt i32 %i.atp, 10
  br i1 %i.atw, label %bb.gt, label %PrepareDistanceCacheH6.exit

bb.gt:                                            ; preds = %bb.gs
  %i.atx = shufflevector <2 x i32> %i.atn, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.aty = add nsw <4 x i32> %i.atx, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.aty, ptr %i.br, align 4, !tbaa !64, !alias.scope !350, !noalias !348
  %i.atz = shufflevector <2 x i32> %i.atn, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aua = add nsw <2 x i32> %i.atz, <i32 -3, i32 3>
  store <2 x i32> %i.aua, ptr %i.bs, align 4, !tbaa !64, !alias.scope !350, !noalias !348
  br label %PrepareDistanceCacheH6.exit

PrepareDistanceCacheH6.exit:                      ; preds = %bb.gi, %bb.gt, %bb.gs, %bb.gr, %ComputeDistanceCode.exit
  %.1.i555 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.gt ], [ %.1.i, %bb.gs ], [ %.1.i, %bb.gr ], [ 0, %bb.gi ] ; 3 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %.0201946, i64 16 ; 3 uses
  %i.auc = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.auc, ptr %.0201946, align 4, !tbaa !103
  %i.aud = shl i32 %.sroa.42.1.ph, 25
  %i.aue = trunc i64 %.sroa.0404.1.ph to i32      ; 2 uses
  %i.auf = or i32 %i.aud, %i.aue
  %i.aug = getelementptr inbounds nuw i8, ptr %.0201946, i64 4
  store i32 %i.auf, ptr %i.aug, align 4, !tbaa !104
  %i.auh = load i32, ptr %i.bt, align 4, !tbaa !105
  %i.aui = zext i32 %i.auh to i64                 ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %.0201946, i64 14
  %i.auk = getelementptr inbounds nuw i8, ptr %.0201946, i64 8
  %i.aul = add nuw nsw i64 %i.aui, 16             ; 2 uses
  %i.aum = icmp ult i64 %.1.i555, %i.aul
  br i1 %i.aum, label %PrefixEncodeCopyDistance.exit, label %bb.gu

bb.gu:                                            ; preds = %PrepareDistanceCacheH6.exit
  %i.aun = load i32, ptr %i.aw, align 8, !tbaa !106 ; 2 uses
  %i.auo = zext i32 %i.aun to i64                 ; 4 uses
  %i.aup = shl nuw i64 4, %i.auo
  %i.auq = add i64 %.1.i555, -16
  %i.aur = sub i64 %i.auq, %i.aui
  %i.aus = add i64 %i.aur, %i.aup                 ; 4 uses
  %i.aut = trunc i64 %i.aus to i32
  %i.auu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aut, i1 true)
  %i.auv = sub nsw i32 30, %i.auu
  %i.auw = zext i32 %i.auv to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.aun
  %i.aux = xor i32 %notmask.i, -1
  %i.auy = zext nneg i32 %i.aux to i64
  %i.auz = and i64 %i.aus, %i.auy
  %i.ava = lshr i64 %i.aus, %i.auw                ; 2 uses
  %i.avb = and i64 %i.ava, 1
  %i.avc = or disjoint i64 %i.avb, 2
  %i.avd = shl i64 %i.avc, %i.auw
  %i.ave = sub nsw i64 %i.auw, %i.auo             ; 2 uses
  %i.avf = shl nsw i64 %i.ave, 10
  %i.avg = shl nsw i64 %i.ave, 1
  %i.avh = or i64 %i.ava, 65534
  %i.avi = add i64 %i.avg, %i.avh
  %i.avj = shl i64 %i.avi, %i.auo
  %i.avk = add nuw nsw i64 %i.auz, %i.aul
  %i.avl = add i64 %i.avk, %i.avj
  %i.avm = or i64 %i.avl, %i.avf
  %i.avn = sub i64 %i.aus, %i.avd
  %i.avo = lshr i64 %i.avn, %i.auo
  %i.avp = trunc i64 %i.avo to i32
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %PrepareDistanceCacheH6.exit, %bb.gu
  %.sink.in = phi i64 [ %i.avm, %bb.gu ], [ %.1.i555, %PrepareDistanceCacheH6.exit ]
  %storemerge.i = phi i32 [ %i.avp, %bb.gu ], [ 0, %PrepareDistanceCacheH6.exit ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.auj, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.auk, align 4, !tbaa !64
  %i.avq = add nsw i32 %.sroa.42.1.ph, %i.aue     ; 6 uses
  %i.avr = and i16 %.sink, 1023
  %i.avs = icmp eq i16 %i.avr, 0
  %i.avt = getelementptr inbounds nuw i8, ptr %.0201946, i64 12
  %i.avu = icmp ult i64 %.3.ph, 6
  br i1 %i.avu, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.avv = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.gw:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.avw = icmp ult i64 %.3.ph, 130
  br i1 %i.avw, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.avx = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.avy = trunc nuw nsw i64 %i.avx to i32
  %i.avz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.avy, i1 true)
  %i.awa = sub nuw nsw i32 30, %i.avz             ; 2 uses
  %i.awb = shl nuw nsw i32 %i.awa, 1
  %i.awc = zext nneg i32 %i.awb to i64
  %i.awd = zext nneg i32 %i.awa to i64
  %i.awe = lshr i64 %i.avx, %i.awd
  %i.awf = add nuw nsw i64 %i.awe, %i.awc
  %i.awg = trunc nuw nsw i64 %i.awf to i16
  %i.awh = add nuw nsw i16 %i.awg, 2
  br label %GetInsertLengthCode.exit

bb.gy:                                            ; preds = %bb.gw
  %i.awi = icmp ult i64 %.3.ph, 2114
  br i1 %i.awi, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.awj = add nsw i32 %i.auc, -66
  %i.awk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.awj, i1 true)
  %i.awl = trunc nuw nsw i32 %i.awk to i16
  %i.awm = sub nuw nsw i16 41, %i.awl
  br label %GetInsertLengthCode.exit

bb.ha:                                            ; preds = %bb.gy
  %i.awn = icmp ult i64 %.3.ph, 6210
  br i1 %i.awn, label %GetInsertLengthCode.exit, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.awo = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.awo, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.gv, %bb.gx, %bb.gz, %bb.ha, %bb.hb
  %.0.i277 = phi i16 [ %i.avv, %bb.gv ], [ %i.awh, %bb.gx ], [ %i.awm, %bb.gz ], [ 21, %bb.ha ], [ %..i, %bb.hb ] ; 3 uses
  %i.awp = icmp ult i32 %i.avq, 10
  br i1 %i.awp, label %GetCopyLengthCode.exit, label %bb.hc

bb.hc:                                            ; preds = %GetInsertLengthCode.exit
  %i.awq = icmp ult i32 %i.avq, 134
  br i1 %i.awq, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %narrow = add nsw i32 %i.avq, -6                ; 2 uses
  %i.awr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.aws = sub nuw nsw i32 30, %i.awr             ; 2 uses
  %i.awt = shl nuw nsw i32 %i.aws, 1
  %i.awu = lshr i32 %narrow, %i.aws
  %i.awv = add nuw nsw i32 %i.awu, %i.awt
  br label %GetCopyLengthCode.exit

bb.he:                                            ; preds = %bb.hc
  %i.aww = icmp ult i32 %i.avq, 2118
  br i1 %i.aww, label %GetCopyLengthCode.exit.thread1273, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread1273:                ; preds = %bb.he
  %i.awx = add nsw i32 %i.avq, -70
  %i.awy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.awx, i1 true)
  %i.awz = trunc nuw nsw i32 %i.awy to i16
  %i.axa = sub nuw nsw i16 43, %i.awz
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.hd
  %.sink1405 = phi i32 [ %i.awv, %bb.hd ], [ %i.avq, %GetInsertLengthCode.exit ]
  %.sink1404 = phi i16 [ 4, %bb.hd ], [ -2, %GetInsertLengthCode.exit ]
  %i.axb = trunc nuw nsw i32 %.sink1405 to i16
  %i.axc = add nsw i16 %.sink1404, %i.axb         ; 4 uses
  %i.axd = icmp samesign ult i16 %.0.i277, 8
  %or.cond.i279 = and i1 %i.avs, %i.axd
  %i.axe = icmp ult i16 %i.axc, 16
  %or.cond5.i = and i1 %or.cond.i279, %i.axe
  br i1 %or.cond5.i, label %bb.hf, label %GetCopyLengthCode.exit.thread

bb.hf:                                            ; preds = %GetCopyLengthCode.exit
  %i.axf = shl nuw nsw i16 %i.axc, 3
  %i.axg = and i16 %i.axf, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread1273, %bb.he, %GetCopyLengthCode.exit
  %.0.i278549 = phi i16 [ %i.axc, %GetCopyLengthCode.exit ], [ 23, %bb.he ], [ %i.axa, %GetCopyLengthCode.exit.thread1273 ] ; 2 uses
  %i.axh = lshr i16 %.0.i278549, 3
  %i.axi = lshr i16 %.0.i277, 3
  %narrow.i = mul nuw nsw i16 %i.axi, 3
  %narrow21.i = add nuw nsw i16 %i.axh, %narrow.i
  %i.axj = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.axk = shl nuw nsw i32 %i.axj, 1
  %i.axl = shl nuw nsw i32 %i.axj, 6
  %i.axm = add nuw nsw i32 %i.axl, 64
  %i.axn = lshr i32 5377344, %i.axk
  %i.axo = and i32 %i.axn, 192
  %i.axp = add nuw nsw i32 %i.axm, %i.axo
  %i.axq = trunc i32 %i.axp to i16
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.hf, %GetCopyLengthCode.exit.thread
  %.0.i278550 = phi i16 [ %i.axc, %bb.hf ], [ %.0.i278549, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.axg, %bb.hf ], [ %i.axq, %GetCopyLengthCode.exit.thread ]
  %i.axr = and i16 %.0.i278550, 7
  %i.axs = shl nuw nsw i16 %.0.i277, 3
  %i.axt = and i16 %i.axs, 56
  %i.axu = or disjoint i16 %i.axr, %i.axt
  %.0.i280 = or disjoint i16 %i.axu, %.pn.i
  store i16 %.0.i280, ptr %i.avt, align 4, !tbaa !76
  %i.axv = load i64, ptr %11, align 8, !tbaa !58
  %i.axw = add i64 %i.axv, %.3.ph
  store i64 %i.axw, ptr %11, align 8, !tbaa !58
  %i.axx = add i64 %.3197.ph, 2                   ; 2 uses
  %i.axy = add i64 %.3197.ph, %.sroa.0404.1.ph    ; 5 uses
  %i.axz = tail call i64 @llvm.umin.i64(i64 %i.axy, i64 %spec.select) ; 5 uses
  %i.aya = lshr i64 %.sroa.0404.1.ph, 2
  %i.ayb = icmp ult i64 %.sroa.18412.1.ph, %i.aya
  br i1 %i.ayb, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %CombineLengthCodes.exit
  %i.ayc = shl nuw i64 %.sroa.18412.1.ph, 2
  %i.ayd = sub i64 %i.axy, %i.ayc
  %i.aye = tail call i64 @llvm.umax.i64(i64 %i.axx, i64 %i.ayd)
  %i.ayf = tail call i64 @llvm.umin.i64(i64 %i.axz, i64 %i.aye)
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.ayf, %bb.hg ], [ %i.axx, %CombineLengthCodes.exit ] ; 7 uses
  %i.ayg = icmp ult i64 %.0, %i.axz
  br i1 %i.ayg, label %.lr.ph945, label %StoreRangeH6.exit

.lr.ph945:                                        ; preds = %bb.hh
  %i.ayh = load i64, ptr %i.bc, align 8, !tbaa !111, !alias.scope !351, !noalias !352 ; 3 uses
  %i.ayi = load i32, ptr %i.bf, align 8, !tbaa !114, !alias.scope !351, !noalias !352 ; 3 uses
  %i.ayj = load i32, ptr %i.bd, align 4, !tbaa !112, !alias.scope !351, !noalias !352
  %i.ayk = zext nneg i32 %i.ayj to i64            ; 3 uses
  %i.ayl = sub nuw i64 %i.axz, %.0
  %.neg1658 = add i64 %.0, 1
  %xtraiter = and i64 %i.ayl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph945
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.aym = and i64 %.0, %3
  %i.ayn = getelementptr inbounds nuw i8, ptr %2, i64 %i.aym
  %.0.copyload.i.i396.prol = load i64, ptr %i.ayn, align 1, !alias.scope !353, !noalias !351
  %i.ayo = mul i64 %.0.copyload.i.i396.prol, %i.ayh
  %i.ayp = lshr i64 %i.ayo, 49                    ; 2 uses
  %i.ayq = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ayp ; 2 uses
  %i.ayr = load i16, ptr %i.ayq, align 2, !tbaa !76, !noalias !351 ; 2 uses
  %i.ays = zext i16 %i.ayr to i32
  %i.ayt = and i32 %i.ayi, %i.ays
  %i.ayu = zext nneg i32 %i.ayt to i64
  %i.ayv = shl i64 %i.ayp, %i.ayk
  %i.ayw = add i16 %i.ayr, 1
  store i16 %i.ayw, ptr %i.ayq, align 2, !tbaa !76, !noalias !351
  %i.ayx = trunc i64 %.0 to i32
  %i.ayy = getelementptr [4 x i8], ptr %i.bb, i64 %i.ayv
  %i.ayz = getelementptr [4 x i8], ptr %i.ayy, i64 %i.ayu
  store i32 %i.ayx, ptr %i.ayz, align 4, !tbaa !64, !noalias !351
  %i.aza = add nuw i64 %.0, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph945
  %.0.i393943.unr = phi i64 [ %.0, %.lr.ph945 ], [ %i.aza, %.prol.loopexit.unr-lcssa ]
  %i.azb = icmp eq i64 %i.axz, %.neg1658
  br i1 %i.azb, label %StoreRangeH6.exit, label %.lr.ph945.new

.lr.ph945.new:                                    ; preds = %.prol.loopexit, %.lr.ph945.new
  %.0.i393943 = phi i64 [ %i.baf, %.lr.ph945.new ], [ %.0.i393943.unr, %.prol.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.azc = and i64 %.0.i393943, %3
  %i.azd = getelementptr inbounds nuw i8, ptr %2, i64 %i.azc
  %.0.copyload.i.i396 = load i64, ptr %i.azd, align 1, !alias.scope !353, !noalias !351
  %i.aze = mul i64 %.0.copyload.i.i396, %i.ayh
  %i.azf = lshr i64 %i.aze, 49                    ; 2 uses
  %i.azg = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.azf ; 2 uses
  %i.azh = load i16, ptr %i.azg, align 2, !tbaa !76, !noalias !351 ; 2 uses
  %i.azi = zext i16 %i.azh to i32
  %i.azj = and i32 %i.ayi, %i.azi
  %i.azk = zext nneg i32 %i.azj to i64
  %i.azl = shl i64 %i.azf, %i.ayk
  %i.azm = add i16 %i.azh, 1
  store i16 %i.azm, ptr %i.azg, align 2, !tbaa !76, !noalias !351
  %i.azn = trunc i64 %.0.i393943 to i32
  %i.azo = getelementptr [4 x i8], ptr %i.bb, i64 %i.azl
  %i.azp = getelementptr [4 x i8], ptr %i.azo, i64 %i.azk
  store i32 %i.azn, ptr %i.azp, align 4, !tbaa !64, !noalias !351
  %i.azq = add nuw i64 %.0.i393943, 1             ; 2 uses
  %i.azr = and i64 %i.azq, %3
  %i.azs = getelementptr inbounds nuw i8, ptr %2, i64 %i.azr
  %.0.copyload.i.i396.1 = load i64, ptr %i.azs, align 1, !alias.scope !353, !noalias !354
  %i.azt = mul i64 %.0.copyload.i.i396.1, %i.ayh
  %i.azu = lshr i64 %i.azt, 49                    ; 2 uses
  %i.azv = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.azu ; 2 uses
  %i.azw = load i16, ptr %i.azv, align 2, !tbaa !76, !noalias !354 ; 2 uses
  %i.azx = zext i16 %i.azw to i32
  %i.azy = and i32 %i.ayi, %i.azx
  %i.azz = zext nneg i32 %i.azy to i64
  %i.baa = shl i64 %i.azu, %i.ayk
  %i.bab = add i16 %i.azw, 1
  store i16 %i.bab, ptr %i.azv, align 2, !tbaa !76, !noalias !354
  %i.bac = trunc i64 %i.azq to i32
  %i.bad = getelementptr [4 x i8], ptr %i.bb, i64 %i.baa
  %i.bae = getelementptr [4 x i8], ptr %i.bad, i64 %i.azz
  store i32 %i.bac, ptr %i.bae, align 4, !tbaa !64, !noalias !354
  %i.baf = add nuw i64 %.0.i393943, 2             ; 2 uses
  %exitcond1047.not.1 = icmp eq i64 %i.baf, %i.axz
  br i1 %exitcond1047.not.1, label %StoreRangeH6.exit, label %.lr.ph945.new, !llvm.loop !9

bb.hi:                                            ; preds = %LookupCompoundDictionaryMatch.exit214
  %i.bag = add i64 %.0191948, 1                   ; 5 uses
  %i.bah = add i64 %.0194947, 1                   ; 9 uses
  %i.bai = icmp ugt i64 %i.bah, %.0189949
  br i1 %i.bai, label %bb.hj, label %StoreRangeH6.exit

bb.hj:                                            ; preds = %bb.hi
  %i.baj = add i64 %.0189949, %i.bk
  %i.bak = icmp ugt i64 %i.bah, %i.baj
  br i1 %i.bak, label %bb.hk, label %bb.hm

bb.hk:                                            ; preds = %bb.hj
  %i.bal = add i64 %.0194947, 17
  %i.bam = tail call i64 @llvm.umin.i64(i64 %i.bal, i64 %i.k) ; 2 uses
  %i.ban = icmp ult i64 %i.bah, %i.bam
  br i1 %i.ban, label %.lr.ph782, label %StoreRangeH6.exit

.lr.ph782:                                        ; preds = %bb.hk
  %i.bao = load i32, ptr %i.bf, align 8, !tbaa !114, !alias.scope !355, !noalias !356
  %i.bap = load i32, ptr %i.bd, align 4, !tbaa !112, !alias.scope !355, !noalias !356
  %i.baq = zext nneg i32 %i.bap to i64
  br label %bb.hl

bb.hl:                                            ; preds = %.lr.ph782, %bb.hl
  %.4780 = phi i64 [ %i.bag, %.lr.ph782 ], [ %i.bbf, %bb.hl ]
  %.4198779 = phi i64 [ %i.bah, %.lr.ph782 ], [ %i.bbg, %bb.hl ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.bar = and i64 %.4198779, %3
  %i.bas = getelementptr inbounds nuw i8, ptr %2, i64 %i.bar
  %.0.copyload.i.i394 = load i64, ptr %i.bas, align 1, !alias.scope !357, !noalias !355
  %i.bat = mul i64 %.0.copyload.i.i394, %i.da
  %i.bau = lshr i64 %i.bat, 49                    ; 2 uses
  %i.bav = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bau ; 2 uses
  %i.baw = load i16, ptr %i.bav, align 2, !tbaa !76, !noalias !355 ; 2 uses
  %i.bax = zext i16 %i.baw to i32
  %i.bay = and i32 %i.bao, %i.bax
  %i.baz = zext nneg i32 %i.bay to i64
  %i.bba = shl i64 %i.bau, %i.baq
  %i.bbb = add i16 %i.baw, 1
  store i16 %i.bbb, ptr %i.bav, align 2, !tbaa !76, !noalias !355
  %i.bbc = trunc i64 %.4198779 to i32
  %i.bbd = getelementptr [4 x i8], ptr %i.bb, i64 %i.bba
  %i.bbe = getelementptr [4 x i8], ptr %i.bbd, i64 %i.baz
  store i32 %i.bbc, ptr %i.bbe, align 4, !tbaa !64, !noalias !355
  %i.bbf = add i64 %.4780, 4                      ; 2 uses
  %i.bbg = add i64 %.4198779, 4                   ; 3 uses
  %i.bbh = icmp ult i64 %i.bbg, %i.bam
  br i1 %i.bbh, label %bb.hl, label %StoreRangeH6.exit, !llvm.loop !309

bb.hm:                                            ; preds = %bb.hj
  %i.bbi = add i64 %.0194947, 9
  %i.bbj = tail call i64 @llvm.umin.i64(i64 %i.bbi, i64 %i.k) ; 2 uses
  %i.bbk = icmp ult i64 %i.bah, %i.bbj
  br i1 %i.bbk, label %.lr.ph776, label %StoreRangeH6.exit

.lr.ph776:                                        ; preds = %bb.hm
  %i.bbl = load i32, ptr %i.bf, align 8, !tbaa !114, !alias.scope !358, !noalias !359
  %i.bbm = load i32, ptr %i.bd, align 4, !tbaa !112, !alias.scope !358, !noalias !359
  %i.bbn = zext nneg i32 %i.bbm to i64
  br label %bb.hn

end_hunk_1
begin_hunk_2_@CreateBackwardReferencesDH58:bb.a
  br i1 %i.axh, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %.tr25.i = trunc nuw nsw i64 %i.axb to i32
  %i.axi = shl nuw nsw i32 %.tr25.i, 2
  %i.axj = lshr i32 158663784, %i.axi
  %i.axk = and i32 %i.axj, 15
  %i.axl = zext nneg i32 %i.axk to i64
  br label %ComputeDistanceCode.exit

bb.gq:                                            ; preds = %bb.go
  %i.axm = icmp ult i64 %i.axe, 7
  br i1 %i.axm, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %.tr.i = trunc nuw nsw i64 %i.axe to i32
  %i.axn = shl nuw nsw i32 %.tr.i, 2
  %i.axo = lshr i32 266017486, %i.axn
  %i.axp = and i32 %i.axo, 15
  %i.axq = zext nneg i32 %i.axp to i64
  br label %ComputeDistanceCode.exit

bb.gs:                                            ; preds = %bb.gq
  %i.axr = load i32, ptr %i.bm, align 4, !tbaa !64
  %i.axs = sext i32 %i.axr to i64
  %i.axt = icmp eq i64 %.sroa.18414.1.ph, %i.axs
  br i1 %i.axt, label %ComputeDistanceCode.exit, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.axu = load i32, ptr %i.bn, align 4, !tbaa !64
  %i.axv = sext i32 %i.axu to i64
  %.not571 = icmp eq i64 %.sroa.18414.1.ph, %i.axv
  br i1 %.not571, label %ComputeDistanceCode.exit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %split
  %i.axw = add i64 %.sroa.18414.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.gn, %bb.gr, %bb.gp, %bb.gs, %bb.gt, %bb.gu
  %.1.i = phi i64 [ %i.axw, %bb.gu ], [ 3, %bb.gt ], [ 1, %bb.gn ], [ %i.axq, %bb.gr ], [ %i.axl, %bb.gp ], [ 2, %bb.gs ] ; 5 uses
  %i.axx = icmp ule i64 %.sroa.18414.1.ph, %i.awx
  %i.axy = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.axx, i1 %i.axy, i1 false
  br i1 %or.cond, label %bb.gv, label %PrepareDistanceCacheH58.exit

bb.gv:                                            ; preds = %ComputeDistanceCode.exit
  %i.axz = load i32, ptr %i.bm, align 4, !tbaa !64
  store i32 %i.axz, ptr %i.bn, align 4, !tbaa !64
  %i.aya = load <2 x i32>, ptr %7, align 4, !tbaa !64 ; 3 uses
  store <2 x i32> %i.aya, ptr %i.bl, align 4, !tbaa !64
  %i.ayb = trunc i64 %.sroa.18414.1.ph to i32     ; 4 uses
  store i32 %i.ayb, ptr %7, align 4, !tbaa !64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.ayc = load i32, ptr %i.t, align 4, !tbaa !117, !alias.scope !436, !noalias !437 ; 2 uses
  %i.ayd = icmp sgt i32 %i.ayc, 4
  br i1 %i.ayd, label %bb.gw, label %PrepareDistanceCacheH58.exit

bb.gw:                                            ; preds = %bb.gv
  %i.aye = insertelement <4 x i32> poison, i32 %i.ayb, i64 0
  %i.ayf = shufflevector <4 x i32> %i.aye, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ayg = add nsw <4 x i32> %i.ayf, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.ayg, ptr %i.bo, align 4, !tbaa !64, !alias.scope !438, !noalias !436
  %i.ayh = add nsw i32 %i.ayb, -3
  store i32 %i.ayh, ptr %i.bp, align 4, !tbaa !64, !alias.scope !438, !noalias !436
  %i.ayi = add nsw i32 %i.ayb, 3
  store i32 %i.ayi, ptr %i.bq, align 4, !tbaa !64, !alias.scope !438, !noalias !436
  %i.ayj = icmp samesign ugt i32 %i.ayc, 10
  br i1 %i.ayj, label %bb.gx, label %PrepareDistanceCacheH58.exit

bb.gx:                                            ; preds = %bb.gw
  %i.ayk = shufflevector <2 x i32> %i.aya, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.ayl = add nsw <4 x i32> %i.ayk, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.ayl, ptr %i.br, align 4, !tbaa !64, !alias.scope !438, !noalias !436
  %i.aym = shufflevector <2 x i32> %i.aya, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ayn = add nsw <2 x i32> %i.aym, <i32 -3, i32 3>
  store <2 x i32> %i.ayn, ptr %i.bs, align 4, !tbaa !64, !alias.scope !438, !noalias !436
  br label %PrepareDistanceCacheH58.exit

PrepareDistanceCacheH58.exit:                     ; preds = %bb.gm, %bb.gx, %bb.gw, %bb.gv, %ComputeDistanceCode.exit
  %.1.i567 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.gx ], [ %.1.i, %bb.gw ], [ %.1.i, %bb.gv ], [ 0, %bb.gm ] ; 3 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %.0201973, i64 16 ; 2 uses
  %i.ayp = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.ayp, ptr %.0201973, align 4, !tbaa !103
  %i.ayq = shl i32 %.sroa.42.1.ph, 25
  %i.ayr = trunc i64 %.sroa.0406.1.ph to i32      ; 2 uses
  %i.ays = or i32 %i.ayq, %i.ayr
  %i.ayt = getelementptr inbounds nuw i8, ptr %.0201973, i64 4
  store i32 %i.ays, ptr %i.ayt, align 4, !tbaa !104
  %i.ayu = load i32, ptr %i.bt, align 4, !tbaa !105
  %i.ayv = zext i32 %i.ayu to i64                 ; 2 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %.0201973, i64 14
  %i.ayx = getelementptr inbounds nuw i8, ptr %.0201973, i64 8
  %i.ayy = add nuw nsw i64 %i.ayv, 16             ; 2 uses
  %i.ayz = icmp ult i64 %.1.i567, %i.ayy
  br i1 %i.ayz, label %PrefixEncodeCopyDistance.exit, label %bb.gy

bb.gy:                                            ; preds = %PrepareDistanceCacheH58.exit
  %i.aza = load i32, ptr %i.aw, align 8, !tbaa !106 ; 2 uses
  %i.azb = zext i32 %i.aza to i64                 ; 4 uses
  %i.azc = shl nuw i64 4, %i.azb
  %i.azd = add i64 %.1.i567, -16
  %i.aze = sub i64 %i.azd, %i.ayv
  %i.azf = add i64 %i.aze, %i.azc                 ; 4 uses
  %i.azg = trunc i64 %i.azf to i32
  %i.azh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.azg, i1 true)
  %i.azi = sub nsw i32 30, %i.azh
  %i.azj = zext i32 %i.azi to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.aza
  %i.azk = xor i32 %notmask.i, -1
  %i.azl = zext nneg i32 %i.azk to i64
  %i.azm = and i64 %i.azf, %i.azl
  %i.azn = lshr i64 %i.azf, %i.azj                ; 2 uses
  %i.azo = and i64 %i.azn, 1
  %i.azp = or disjoint i64 %i.azo, 2
  %i.azq = shl i64 %i.azp, %i.azj
  %i.azr = sub nsw i64 %i.azj, %i.azb             ; 2 uses
  %i.azs = shl nsw i64 %i.azr, 10
  %i.azt = shl nsw i64 %i.azr, 1
  %i.azu = or i64 %i.azn, 65534
  %i.azv = add i64 %i.azt, %i.azu
  %i.azw = shl i64 %i.azv, %i.azb
  %i.azx = add nuw nsw i64 %i.azm, %i.ayy
  %i.azy = add i64 %i.azx, %i.azw
  %i.azz = or i64 %i.azy, %i.azs
  %i.baa = sub i64 %i.azf, %i.azq
  %i.bab = lshr i64 %i.baa, %i.azb
  %i.bac = trunc i64 %i.bab to i32
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %PrepareDistanceCacheH58.exit, %bb.gy
  %.sink.in = phi i64 [ %i.azz, %bb.gy ], [ %.1.i567, %PrepareDistanceCacheH58.exit ]
  %storemerge.i = phi i32 [ %i.bac, %bb.gy ], [ 0, %PrepareDistanceCacheH58.exit ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.ayw, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.ayx, align 4, !tbaa !64
  %i.bad = add nsw i32 %.sroa.42.1.ph, %i.ayr     ; 6 uses
  %i.bae = and i16 %.sink, 1023
  %i.baf = icmp eq i16 %i.bae, 0
  %i.bag = getelementptr inbounds nuw i8, ptr %.0201973, i64 12
  %i.bah = icmp ult i64 %.3.ph, 6
  br i1 %i.bah, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.bai = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.ha:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.baj = icmp ult i64 %.3.ph, 130
  br i1 %i.baj, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.bak = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.bal = trunc nuw nsw i64 %i.bak to i32
  %i.bam = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bal, i1 true)
  %i.ban = sub nuw nsw i32 30, %i.bam             ; 2 uses
  %i.bao = shl nuw nsw i32 %i.ban, 1
  %i.bap = zext nneg i32 %i.bao to i64
  %i.baq = zext nneg i32 %i.ban to i64
  %i.bar = lshr i64 %i.bak, %i.baq
  %i.bas = add nuw nsw i64 %i.bar, %i.bap
  %i.bat = trunc nuw nsw i64 %i.bas to i16
  %i.bau = add nuw nsw i16 %i.bat, 2
  br label %GetInsertLengthCode.exit

bb.hc:                                            ; preds = %bb.ha
  %i.bav = icmp ult i64 %.3.ph, 2114
  br i1 %i.bav, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.baw = add nsw i32 %i.ayp, -66
  %i.bax = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.baw, i1 true)
  %i.bay = trunc nuw nsw i32 %i.bax to i16
  %i.baz = sub nuw nsw i16 41, %i.bay
  br label %GetInsertLengthCode.exit

bb.he:                                            ; preds = %bb.hc
  %i.bba = icmp ult i64 %.3.ph, 6210
  br i1 %i.bba, label %GetInsertLengthCode.exit, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bbb = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.bbb, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.gz, %bb.hb, %bb.hd, %bb.he, %bb.hf
  %.0.i277 = phi i16 [ %i.bai, %bb.gz ], [ %i.bau, %bb.hb ], [ %i.baz, %bb.hd ], [ 21, %bb.he ], [ %..i, %bb.hf ] ; 3 uses
  %i.bbc = icmp ult i32 %i.bad, 10
  br i1 %i.bbc, label %GetCopyLengthCode.exit, label %bb.hg

bb.hg:                                            ; preds = %GetInsertLengthCode.exit
  %i.bbd = icmp ult i32 %i.bad, 134
  br i1 %i.bbd, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %narrow = add nsw i32 %i.bad, -6                ; 2 uses
  %i.bbe = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.bbf = sub nuw nsw i32 30, %i.bbe             ; 2 uses
  %i.bbg = shl nuw nsw i32 %i.bbf, 1
  %i.bbh = lshr i32 %narrow, %i.bbf
  %i.bbi = add nuw nsw i32 %i.bbh, %i.bbg
  br label %GetCopyLengthCode.exit

bb.hi:                                            ; preds = %bb.hg
  %i.bbj = icmp ult i32 %i.bad, 2118
  br i1 %i.bbj, label %GetCopyLengthCode.exit.thread1308, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread1308:                ; preds = %bb.hi
  %i.bbk = add nsw i32 %i.bad, -70
  %i.bbl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bbk, i1 true)
  %i.bbm = trunc nuw nsw i32 %i.bbl to i16
  %i.bbn = sub nuw nsw i16 43, %i.bbm
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.hh
  %.sink1442 = phi i32 [ %i.bbi, %bb.hh ], [ %i.bad, %GetInsertLengthCode.exit ]
  %.sink1441 = phi i16 [ 4, %bb.hh ], [ -2, %GetInsertLengthCode.exit ]
  %i.bbo = trunc nuw nsw i32 %.sink1442 to i16
  %i.bbp = add nsw i16 %.sink1441, %i.bbo         ; 4 uses
  %i.bbq = icmp samesign ult i16 %.0.i277, 8
  %or.cond.i279 = and i1 %i.baf, %i.bbq
  %i.bbr = icmp ult i16 %i.bbp, 16
  %or.cond5.i = and i1 %or.cond.i279, %i.bbr
  br i1 %or.cond5.i, label %bb.hj, label %GetCopyLengthCode.exit.thread

bb.hj:                                            ; preds = %GetCopyLengthCode.exit
  %i.bbs = shl nuw nsw i16 %i.bbp, 3
  %i.bbt = and i16 %i.bbs, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread1308, %bb.hi, %GetCopyLengthCode.exit
  %.0.i278561 = phi i16 [ %i.bbp, %GetCopyLengthCode.exit ], [ 23, %bb.hi ], [ %i.bbn, %GetCopyLengthCode.exit.thread1308 ] ; 2 uses
  %i.bbu = lshr i16 %.0.i278561, 3
  %i.bbv = lshr i16 %.0.i277, 3
  %narrow.i = mul nuw nsw i16 %i.bbv, 3
  %narrow21.i = add nuw nsw i16 %i.bbu, %narrow.i
  %i.bbw = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.bbx = shl nuw nsw i32 %i.bbw, 1
  %i.bby = shl nuw nsw i32 %i.bbw, 6
  %i.bbz = add nuw nsw i32 %i.bby, 64
  %i.bca = lshr i32 5377344, %i.bbx
  %i.bcb = and i32 %i.bca, 192
  %i.bcc = add nuw nsw i32 %i.bbz, %i.bcb
  %i.bcd = trunc i32 %i.bcc to i16
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.hj, %GetCopyLengthCode.exit.thread
  %.0.i278562 = phi i16 [ %i.bbp, %bb.hj ], [ %.0.i278561, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.bbt, %bb.hj ], [ %i.bcd, %GetCopyLengthCode.exit.thread ]
  %i.bce = and i16 %.0.i278562, 7
  %i.bcf = shl nuw nsw i16 %.0.i277, 3
  %i.bcg = and i16 %i.bcf, 56
  %i.bch = or disjoint i16 %i.bce, %i.bcg
  %.0.i280 = or disjoint i16 %i.bch, %.pn.i
  store i16 %.0.i280, ptr %i.bag, align 4, !tbaa !76
  %i.bci = load i64, ptr %11, align 8, !tbaa !58
  %i.bcj = add i64 %i.bci, %.3.ph
  store i64 %i.bcj, ptr %11, align 8, !tbaa !58
  %i.bck = add i64 %.3197.ph, 2                   ; 2 uses
  %i.bcl = add i64 %.3197.ph, %.sroa.0406.1.ph    ; 4 uses
  %i.bcm = tail call i64 @llvm.umin.i64(i64 %i.bcl, i64 %spec.select) ; 3 uses
  %i.bcn = lshr i64 %.sroa.0406.1.ph, 2
  %i.bco = icmp ult i64 %.sroa.18414.1.ph, %i.bcn
  br i1 %i.bco, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %CombineLengthCodes.exit
  %i.bcp = shl nuw i64 %.sroa.18414.1.ph, 2
  %i.bcq = sub i64 %i.bcl, %i.bcp
  %i.bcr = tail call i64 @llvm.umax.i64(i64 %i.bck, i64 %i.bcq)
  %i.bcs = tail call i64 @llvm.umin.i64(i64 %i.bcm, i64 %i.bcr)
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.bcs, %bb.hk ], [ %i.bck, %CombineLengthCodes.exit ] ; 2 uses
  %i.bct = icmp ult i64 %.0, %i.bcm
  br i1 %i.bct, label %.lr.ph972, label %StoreRangeH58.exit

.lr.ph972:                                        ; preds = %bb.hl
  %i.bcu = load ptr, ptr %i.ay, align 8, !tbaa !118, !alias.scope !439, !noalias !440
  %i.bcv = load ptr, ptr %i.ba, align 8, !tbaa !120, !alias.scope !439, !noalias !440
  %i.bcw = load ptr, ptr %i.az, align 8, !tbaa !119, !alias.scope !439, !noalias !440
  %i.bcx = load i32, ptr %i.bb, align 8, !tbaa !121, !alias.scope !439, !noalias !440
  %i.bcy = load i32, ptr %i.bd, align 4, !tbaa !123, !alias.scope !439, !noalias !440
  %i.bcz = load i32, ptr %i.bc, align 8, !tbaa !122, !alias.scope !439, !noalias !440
  %i.bda = zext nneg i32 %i.bcz to i64
  br label %bb.hm

bb.hm:                                            ; preds = %.lr.ph972, %bb.hm
  %.0.i390970 = phi i64 [ %.0, %.lr.ph972 ], [ %i.bdt, %bb.hm ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.bdb = and i64 %.0.i390970, %3
  %i.bdc = getelementptr inbounds nuw i8, ptr %2, i64 %i.bdb
  %.val398 = load i32, ptr %i.bdc, align 1
  %i.bdd = mul i32 %.val398, 506832829
  %i.bde = lshr i32 %i.bdd, %i.bcx                ; 2 uses
  %i.bdf = lshr i32 %i.bde, 8
  %i.bdg = zext nneg i32 %i.bdf to i64            ; 2 uses
  %i.bdh = trunc i32 %i.bde to i8
  %i.bdi = getelementptr inbounds nuw [2 x i8], ptr %i.bcu, i64 %i.bdg ; 2 uses
  %i.bdj = load i16, ptr %i.bdi, align 2, !tbaa !76, !noalias !439 ; 2 uses
  %i.bdk = zext i16 %i.bdj to i32
  %i.bdl = and i32 %i.bcy, %i.bdk
  %i.bdm = zext nneg i32 %i.bdl to i64
  %i.bdn = shl i64 %i.bdg, %i.bda
  %i.bdo = add i64 %i.bdn, %i.bdm                 ; 2 uses
  %i.bdp = add i16 %i.bdj, -1
  store i16 %i.bdp, ptr %i.bdi, align 2, !tbaa !76, !noalias !439
  %i.bdq = trunc i64 %.0.i390970 to i32
  %i.bdr = getelementptr inbounds nuw [4 x i8], ptr %i.bcw, i64 %i.bdo
  store i32 %i.bdq, ptr %i.bdr, align 4, !tbaa !64, !noalias !439
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bcv, i64 %i.bdo
  store i8 %i.bdh, ptr %i.bds, align 1, !tbaa !68, !noalias !439
  %i.bdt = add nuw i64 %.0.i390970, 1             ; 2 uses
  %exitcond1081.not = icmp eq i64 %i.bdt, %i.bcm
  br i1 %exitcond1081.not, label %StoreRangeH58.exit, label %bb.hm, !llvm.loop !13

bb.hn:                                            ; preds = %LookupCompoundDictionaryMatch.exit214
  %i.bdu = add i64 %.0191975, 1                   ; 5 uses
  %i.bdv = add i64 %.0194974, 1                   ; 9 uses
  %i.bdw = icmp ugt i64 %i.bdv, %.0189976
  br i1 %i.bdw, label %bb.ho, label %StoreRangeH58.exit

bb.ho:                                            ; preds = %bb.hn
  %i.bdx = add i64 %.0189976, %i.bj
  %i.bdy = icmp ugt i64 %i.bdv, %i.bdx
  br i1 %i.bdy, label %bb.hp, label %bb.hr

bb.hp:                                            ; preds = %bb.ho
  %i.bdz = add i64 %.0194974, 17
  %i.bea = tail call i64 @llvm.umin.i64(i64 %i.bdz, i64 %i.bk) ; 2 uses
  %i.beb = icmp ult i64 %i.bdv, %i.bea
  br i1 %i.beb, label %.lr.ph800, label %StoreRangeH58.exit

.lr.ph800:                                        ; preds = %bb.hp
  %i.bec = load ptr, ptr %i.ay, align 8, !tbaa !118, !alias.scope !441, !noalias !442
  %i.bed = load ptr, ptr %i.ba, align 8, !tbaa !120, !alias.scope !441, !noalias !442
  %i.bee = load ptr, ptr %i.az, align 8, !tbaa !119, !alias.scope !441, !noalias !442
  %i.bef = load i32, ptr %i.bb, align 8, !tbaa !121, !alias.scope !441, !noalias !442
  %i.beg = load i32, ptr %i.bd, align 4, !tbaa !123, !alias.scope !441, !noalias !442
  %i.beh = load i32, ptr %i.bc, align 8, !tbaa !122, !alias.scope !441, !noalias !442
  %i.bei = zext nneg i32 %i.beh to i64
  br label %bb.hq

bb.hq:                                            ; preds = %.lr.ph800, %bb.hq
  %.4798 = phi i64 [ %i.bdu, %.lr.ph800 ], [ %i.bfb, %bb.hq ]
  %.4198797 = phi i64 [ %i.bdv, %.lr.ph800 ], [ %i.bfc, %bb.hq ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.bej = and i64 %.4198797, %3
  %i.bek = getelementptr inbounds nuw i8, ptr %2, i64 %i.bej
  %.val = load i32, ptr %i.bek, align 1
  %i.bel = mul i32 %.val, 506832829
  %i.bem = lshr i32 %i.bel, %i.bef                ; 2 uses
  %i.ben = lshr i32 %i.bem, 8
  %i.beo = zext nneg i32 %i.ben to i64            ; 2 uses
  %i.bep = trunc i32 %i.bem to i8
  %i.beq = getelementptr inbounds nuw [2 x i8], ptr %i.bec, i64 %i.beo ; 2 uses
  %i.ber = load i16, ptr %i.beq, align 2, !tbaa !76, !noalias !441 ; 2 uses
  %i.bes = zext i16 %i.ber to i32
  %i.bet = and i32 %i.beg, %i.bes
  %i.beu = zext nneg i32 %i.bet to i64
  %i.bev = shl i64 %i.beo, %i.bei
  %i.bew = add i64 %i.bev, %i.beu                 ; 2 uses
  %i.bex = add i16 %i.ber, -1
  store i16 %i.bex, ptr %i.beq, align 2, !tbaa !76, !noalias !441
  %i.bey = trunc i64 %.4198797 to i32
  %i.bez = getelementptr inbounds nuw [4 x i8], ptr %i.bee, i64 %i.bew
  store i32 %i.bey, ptr %i.bez, align 4, !tbaa !64, !noalias !441
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bed, i64 %i.bew
  store i8 %i.bep, ptr %i.bfa, align 1, !tbaa !68, !noalias !441
  %i.bfb = add i64 %.4798, 4                      ; 2 uses
  %i.bfc = add i64 %.4198797, 4                   ; 3 uses
  %i.bfd = icmp ult i64 %i.bfc, %i.bea
  br i1 %i.bfd, label %bb.hq, label %StoreRangeH58.exit, !llvm.loop !401

bb.hr:                                            ; preds = %bb.ho
  %i.bfe = add i64 %.0194974, 9
  %i.bff = tail call i64 @llvm.umin.i64(i64 %i.bfe, i64 %i.k) ; 2 uses
  %i.bfg = icmp ult i64 %i.bdv, %i.bff
  br i1 %i.bfg, label %.lr.ph794, label %StoreRangeH58.exit

.lr.ph794:                                        ; preds = %bb.hr
  %i.bfh = load ptr, ptr %i.ay, align 8, !tbaa !118, !alias.scope !443, !noalias !444
  %i.bfi = load ptr, ptr %i.ba, align 8, !tbaa !120, !alias.scope !443, !noalias !444
  %i.bfj = load ptr, ptr %i.az, align 8, !tbaa !119, !alias.scope !443, !noalias !444
  %i.bfk = load i32, ptr %i.bb, align 8, !tbaa !121, !alias.scope !443, !noalias !444
  %i.bfl = load i32, ptr %i.bd, align 4, !tbaa !123, !alias.scope !443, !noalias !444
  %i.bfm = load i32, ptr %i.bc, align 8, !tbaa !122, !alias.scope !443, !noalias !444
  %i.bfn = zext nneg i32 %i.bfm to i64
  br label %bb.hs

bb.hs:                                            ; preds = %.lr.ph794, %bb.hs
  %.5792 = phi i64 [ %i.bdu, %.lr.ph794 ], [ %i.bgg, %bb.hs ]
  %.5199791 = phi i64 [ %i.bdv, %.lr.ph794 ], [ %i.bgh, %bb.hs ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.bfo = and i64 %.5199791, %3
  %i.bfp = getelementptr inbounds nuw i8, ptr %2, i64 %i.bfo
  %.val397 = load i32, ptr %i.bfp, align 1
  %i.bfq = mul i32 %.val397, 506832829
  %i.bfr = lshr i32 %i.bfq, %i.bfk                ; 2 uses
  %i.bfs = lshr i32 %i.bfr, 8
  %i.bft = zext nneg i32 %i.bfs to i64            ; 2 uses
  %i.bfu = trunc i32 %i.bfr to i8
  %i.bfv = getelementptr inbounds nuw [2 x i8], ptr %i.bfh, i64 %i.bft ; 2 uses
  %i.bfw = load i16, ptr %i.bfv, align 2, !tbaa !76, !noalias !443 ; 2 uses
  %i.bfx = zext i16 %i.bfw to i32
  %i.bfy = and i32 %i.bfl, %i.bfx
  %i.bfz = zext nneg i32 %i.bfy to i64
  %i.bga = shl i64 %i.bft, %i.bfn
  %i.bgb = add i64 %i.bga, %i.bfz                 ; 2 uses
  %i.bgc = add i16 %i.bfw, -1
  store i16 %i.bgc, ptr %i.bfv, align 2, !tbaa !76, !noalias !443
  %i.bgd = trunc i64 %.5199791 to i32
  %i.bge = getelementptr inbounds nuw [4 x i8], ptr %i.bfj, i64 %i.bgb
  store i32 %i.bgd, ptr %i.bge, align 4, !tbaa !64, !noalias !443
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bfi, i64 %i.bgb
  store i8 %i.bfu, ptr %i.bgf, align 1, !tbaa !68, !noalias !443
  %i.bgg = add i64 %.5792, 2                      ; 2 uses
  %i.bgh = add i64 %.5199791, 2                   ; 3 uses
end_hunk_2
begin_hunk_3_@CreateBackwardReferencesDH68:bb.a
  br i1 %i.axm, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %.tr25.i = trunc nuw nsw i64 %i.axg to i32
  %i.axn = shl nuw nsw i32 %.tr25.i, 2
  %i.axo = lshr i32 158663784, %i.axn
  %i.axp = and i32 %i.axo, 15
  %i.axq = zext nneg i32 %i.axp to i64
  br label %ComputeDistanceCode.exit

bb.gq:                                            ; preds = %bb.go
  %i.axr = icmp ult i64 %i.axj, 7
  br i1 %i.axr, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %.tr.i = trunc nuw nsw i64 %i.axj to i32
  %i.axs = shl nuw nsw i32 %.tr.i, 2
  %i.axt = lshr i32 266017486, %i.axs
  %i.axu = and i32 %i.axt, 15
  %i.axv = zext nneg i32 %i.axu to i64
  br label %ComputeDistanceCode.exit

bb.gs:                                            ; preds = %bb.gq
  %i.axw = load i32, ptr %i.bl, align 4, !tbaa !64
  %i.axx = sext i32 %i.axw to i64
  %i.axy = icmp eq i64 %.sroa.18415.1.ph, %i.axx
  br i1 %i.axy, label %ComputeDistanceCode.exit, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.axz = load i32, ptr %i.bm, align 4, !tbaa !64
  %i.aya = sext i32 %i.axz to i64
  %.not572 = icmp eq i64 %.sroa.18415.1.ph, %i.aya
  br i1 %.not572, label %ComputeDistanceCode.exit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %split
  %i.ayb = add i64 %.sroa.18415.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.gn, %bb.gr, %bb.gp, %bb.gs, %bb.gt, %bb.gu
  %.1.i = phi i64 [ %i.ayb, %bb.gu ], [ 3, %bb.gt ], [ 1, %bb.gn ], [ %i.axv, %bb.gr ], [ %i.axq, %bb.gp ], [ 2, %bb.gs ] ; 5 uses
  %i.ayc = icmp ule i64 %.sroa.18415.1.ph, %i.axc
  %i.ayd = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.ayc, i1 %i.ayd, i1 false
  br i1 %or.cond, label %bb.gv, label %PrepareDistanceCacheH68.exit

bb.gv:                                            ; preds = %ComputeDistanceCode.exit
  %i.aye = load i32, ptr %i.bl, align 4, !tbaa !64
  store i32 %i.aye, ptr %i.bm, align 4, !tbaa !64
  %i.ayf = load <2 x i32>, ptr %7, align 4, !tbaa !64 ; 3 uses
  store <2 x i32> %i.ayf, ptr %i.bk, align 4, !tbaa !64
  %i.ayg = trunc i64 %.sroa.18415.1.ph to i32     ; 4 uses
  store i32 %i.ayg, ptr %7, align 4, !tbaa !64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.ayh = load i32, ptr %i.t, align 8, !tbaa !127, !alias.scope !532, !noalias !533 ; 2 uses
  %i.ayi = icmp sgt i32 %i.ayh, 4
  br i1 %i.ayi, label %bb.gw, label %PrepareDistanceCacheH68.exit

bb.gw:                                            ; preds = %bb.gv
  %i.ayj = insertelement <4 x i32> poison, i32 %i.ayg, i64 0
  %i.ayk = shufflevector <4 x i32> %i.ayj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ayl = add nsw <4 x i32> %i.ayk, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.ayl, ptr %i.bn, align 4, !tbaa !64, !alias.scope !534, !noalias !532
  %i.aym = add nsw i32 %i.ayg, -3
  store i32 %i.aym, ptr %i.bo, align 4, !tbaa !64, !alias.scope !534, !noalias !532
  %i.ayn = add nsw i32 %i.ayg, 3
  store i32 %i.ayn, ptr %i.bp, align 4, !tbaa !64, !alias.scope !534, !noalias !532
  %i.ayo = icmp samesign ugt i32 %i.ayh, 10
  br i1 %i.ayo, label %bb.gx, label %PrepareDistanceCacheH68.exit

bb.gx:                                            ; preds = %bb.gw
  %i.ayp = shufflevector <2 x i32> %i.ayf, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.ayq = add nsw <4 x i32> %i.ayp, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.ayq, ptr %i.bq, align 4, !tbaa !64, !alias.scope !534, !noalias !532
  %i.ayr = shufflevector <2 x i32> %i.ayf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ays = add nsw <2 x i32> %i.ayr, <i32 -3, i32 3>
  store <2 x i32> %i.ays, ptr %i.br, align 4, !tbaa !64, !alias.scope !534, !noalias !532
  br label %PrepareDistanceCacheH68.exit

PrepareDistanceCacheH68.exit:                     ; preds = %bb.gm, %bb.gx, %bb.gw, %bb.gv, %ComputeDistanceCode.exit
  %.1.i568 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.gx ], [ %.1.i, %bb.gw ], [ %.1.i, %bb.gv ], [ 0, %bb.gm ] ; 3 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %.0201974, i64 16 ; 2 uses
  %i.ayu = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.ayu, ptr %.0201974, align 4, !tbaa !103
  %i.ayv = shl i32 %.sroa.42.1.ph, 25
  %i.ayw = trunc i64 %.sroa.0407.1.ph to i32      ; 2 uses
  %i.ayx = or i32 %i.ayv, %i.ayw
  %i.ayy = getelementptr inbounds nuw i8, ptr %.0201974, i64 4
  store i32 %i.ayx, ptr %i.ayy, align 4, !tbaa !104
  %i.ayz = load i32, ptr %i.bs, align 4, !tbaa !105
  %i.aza = zext i32 %i.ayz to i64                 ; 2 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %.0201974, i64 14
  %i.azc = getelementptr inbounds nuw i8, ptr %.0201974, i64 8
  %i.azd = add nuw nsw i64 %i.aza, 16             ; 2 uses
  %i.aze = icmp ult i64 %.1.i568, %i.azd
  br i1 %i.aze, label %PrefixEncodeCopyDistance.exit, label %bb.gy

bb.gy:                                            ; preds = %PrepareDistanceCacheH68.exit
  %i.azf = load i32, ptr %i.aw, align 8, !tbaa !106 ; 2 uses
  %i.azg = zext i32 %i.azf to i64                 ; 4 uses
  %i.azh = shl nuw i64 4, %i.azg
  %i.azi = add i64 %.1.i568, -16
  %i.azj = sub i64 %i.azi, %i.aza
  %i.azk = add i64 %i.azj, %i.azh                 ; 4 uses
  %i.azl = trunc i64 %i.azk to i32
  %i.azm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.azl, i1 true)
  %i.azn = sub nsw i32 30, %i.azm
  %i.azo = zext i32 %i.azn to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.azf
  %i.azp = xor i32 %notmask.i, -1
  %i.azq = zext nneg i32 %i.azp to i64
  %i.azr = and i64 %i.azk, %i.azq
  %i.azs = lshr i64 %i.azk, %i.azo                ; 2 uses
  %i.azt = and i64 %i.azs, 1
  %i.azu = or disjoint i64 %i.azt, 2
  %i.azv = shl i64 %i.azu, %i.azo
  %i.azw = sub nsw i64 %i.azo, %i.azg             ; 2 uses
  %i.azx = shl nsw i64 %i.azw, 10
  %i.azy = shl nsw i64 %i.azw, 1
  %i.azz = or i64 %i.azs, 65534
  %i.baa = add i64 %i.azy, %i.azz
  %i.bab = shl i64 %i.baa, %i.azg
  %i.bac = add nuw nsw i64 %i.azr, %i.azd
  %i.bad = add i64 %i.bac, %i.bab
  %i.bae = or i64 %i.bad, %i.azx
  %i.baf = sub i64 %i.azk, %i.azv
  %i.bag = lshr i64 %i.baf, %i.azg
  %i.bah = trunc i64 %i.bag to i32
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %PrepareDistanceCacheH68.exit, %bb.gy
  %.sink.in = phi i64 [ %i.bae, %bb.gy ], [ %.1.i568, %PrepareDistanceCacheH68.exit ]
  %storemerge.i = phi i32 [ %i.bah, %bb.gy ], [ 0, %PrepareDistanceCacheH68.exit ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.azb, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.azc, align 4, !tbaa !64
  %i.bai = add nsw i32 %.sroa.42.1.ph, %i.ayw     ; 6 uses
  %i.baj = and i16 %.sink, 1023
  %i.bak = icmp eq i16 %i.baj, 0
  %i.bal = getelementptr inbounds nuw i8, ptr %.0201974, i64 12
  %i.bam = icmp ult i64 %.3.ph, 6
  br i1 %i.bam, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.ban = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.ha:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.bao = icmp ult i64 %.3.ph, 130
  br i1 %i.bao, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.bap = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.baq = trunc nuw nsw i64 %i.bap to i32
  %i.bar = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.baq, i1 true)
  %i.bas = sub nuw nsw i32 30, %i.bar             ; 2 uses
  %i.bat = shl nuw nsw i32 %i.bas, 1
  %i.bau = zext nneg i32 %i.bat to i64
  %i.bav = zext nneg i32 %i.bas to i64
  %i.baw = lshr i64 %i.bap, %i.bav
  %i.bax = add nuw nsw i64 %i.baw, %i.bau
  %i.bay = trunc nuw nsw i64 %i.bax to i16
  %i.baz = add nuw nsw i16 %i.bay, 2
  br label %GetInsertLengthCode.exit

bb.hc:                                            ; preds = %bb.ha
  %i.bba = icmp ult i64 %.3.ph, 2114
  br i1 %i.bba, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.bbb = add nsw i32 %i.ayu, -66
  %i.bbc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bbb, i1 true)
  %i.bbd = trunc nuw nsw i32 %i.bbc to i16
  %i.bbe = sub nuw nsw i16 41, %i.bbd
  br label %GetInsertLengthCode.exit

bb.he:                                            ; preds = %bb.hc
  %i.bbf = icmp ult i64 %.3.ph, 6210
  br i1 %i.bbf, label %GetInsertLengthCode.exit, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bbg = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.bbg, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.gz, %bb.hb, %bb.hd, %bb.he, %bb.hf
  %.0.i277 = phi i16 [ %i.ban, %bb.gz ], [ %i.baz, %bb.hb ], [ %i.bbe, %bb.hd ], [ 21, %bb.he ], [ %..i, %bb.hf ] ; 3 uses
  %i.bbh = icmp ult i32 %i.bai, 10
  br i1 %i.bbh, label %GetCopyLengthCode.exit, label %bb.hg

bb.hg:                                            ; preds = %GetInsertLengthCode.exit
  %i.bbi = icmp ult i32 %i.bai, 134
  br i1 %i.bbi, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %narrow = add nsw i32 %i.bai, -6                ; 2 uses
  %i.bbj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.bbk = sub nuw nsw i32 30, %i.bbj             ; 2 uses
  %i.bbl = shl nuw nsw i32 %i.bbk, 1
  %i.bbm = lshr i32 %narrow, %i.bbk
  %i.bbn = add nuw nsw i32 %i.bbm, %i.bbl
  br label %GetCopyLengthCode.exit

bb.hi:                                            ; preds = %bb.hg
  %i.bbo = icmp ult i32 %i.bai, 2118
  br i1 %i.bbo, label %GetCopyLengthCode.exit.thread1311, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread1311:                ; preds = %bb.hi
  %i.bbp = add nsw i32 %i.bai, -70
  %i.bbq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bbp, i1 true)
  %i.bbr = trunc nuw nsw i32 %i.bbq to i16
  %i.bbs = sub nuw nsw i16 43, %i.bbr
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.hh
  %.sink1445 = phi i32 [ %i.bbn, %bb.hh ], [ %i.bai, %GetInsertLengthCode.exit ]
  %.sink1444 = phi i16 [ 4, %bb.hh ], [ -2, %GetInsertLengthCode.exit ]
  %i.bbt = trunc nuw nsw i32 %.sink1445 to i16
  %i.bbu = add nsw i16 %.sink1444, %i.bbt         ; 4 uses
  %i.bbv = icmp samesign ult i16 %.0.i277, 8
  %or.cond.i279 = and i1 %i.bak, %i.bbv
  %i.bbw = icmp ult i16 %i.bbu, 16
  %or.cond5.i = and i1 %or.cond.i279, %i.bbw
  br i1 %or.cond5.i, label %bb.hj, label %GetCopyLengthCode.exit.thread

bb.hj:                                            ; preds = %GetCopyLengthCode.exit
  %i.bbx = shl nuw nsw i16 %i.bbu, 3
  %i.bby = and i16 %i.bbx, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread1311, %bb.hi, %GetCopyLengthCode.exit
  %.0.i278562 = phi i16 [ %i.bbu, %GetCopyLengthCode.exit ], [ 23, %bb.hi ], [ %i.bbs, %GetCopyLengthCode.exit.thread1311 ] ; 2 uses
  %i.bbz = lshr i16 %.0.i278562, 3
  %i.bca = lshr i16 %.0.i277, 3
  %narrow.i = mul nuw nsw i16 %i.bca, 3
  %narrow21.i = add nuw nsw i16 %i.bbz, %narrow.i
  %i.bcb = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.bcc = shl nuw nsw i32 %i.bcb, 1
  %i.bcd = shl nuw nsw i32 %i.bcb, 6
  %i.bce = add nuw nsw i32 %i.bcd, 64
  %i.bcf = lshr i32 5377344, %i.bcc
  %i.bcg = and i32 %i.bcf, 192
  %i.bch = add nuw nsw i32 %i.bce, %i.bcg
  %i.bci = trunc i32 %i.bch to i16
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.hj, %GetCopyLengthCode.exit.thread
  %.0.i278563 = phi i16 [ %i.bbu, %bb.hj ], [ %.0.i278562, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.bby, %bb.hj ], [ %i.bci, %GetCopyLengthCode.exit.thread ]
  %i.bcj = and i16 %.0.i278563, 7
  %i.bck = shl nuw nsw i16 %.0.i277, 3
  %i.bcl = and i16 %i.bck, 56
  %i.bcm = or disjoint i16 %i.bcj, %i.bcl
  %.0.i280 = or disjoint i16 %i.bcm, %.pn.i
  store i16 %.0.i280, ptr %i.bal, align 4, !tbaa !76
  %i.bcn = load i64, ptr %11, align 8, !tbaa !58
  %i.bco = add i64 %i.bcn, %.3.ph
  store i64 %i.bco, ptr %11, align 8, !tbaa !58
  %i.bcp = add i64 %.3197.ph, 2                   ; 2 uses
  %i.bcq = add i64 %.3197.ph, %.sroa.0407.1.ph    ; 4 uses
  %i.bcr = tail call i64 @llvm.umin.i64(i64 %i.bcq, i64 %spec.select) ; 3 uses
  %i.bcs = lshr i64 %.sroa.0407.1.ph, 2
  %i.bct = icmp ult i64 %.sroa.18415.1.ph, %i.bcs
  br i1 %i.bct, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %CombineLengthCodes.exit
  %i.bcu = shl nuw i64 %.sroa.18415.1.ph, 2
  %i.bcv = sub i64 %i.bcq, %i.bcu
  %i.bcw = tail call i64 @llvm.umax.i64(i64 %i.bcp, i64 %i.bcv)
  %i.bcx = tail call i64 @llvm.umin.i64(i64 %i.bcr, i64 %i.bcw)
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.bcx, %bb.hk ], [ %i.bcp, %CombineLengthCodes.exit ] ; 2 uses
  %i.bcy = icmp ult i64 %.0, %i.bcr
  br i1 %i.bcy, label %.lr.ph973, label %StoreRangeH68.exit

.lr.ph973:                                        ; preds = %bb.hl
  %i.bcz = load ptr, ptr %i.ay, align 8, !tbaa !128, !alias.scope !535, !noalias !536
  %i.bda = load ptr, ptr %i.ba, align 8, !tbaa !130, !alias.scope !535, !noalias !536
  %i.bdb = load ptr, ptr %i.az, align 8, !tbaa !129, !alias.scope !535, !noalias !536
  %i.bdc = load i64, ptr %i.bb, align 8, !tbaa !131, !alias.scope !535, !noalias !536
  %i.bdd = load i32, ptr %i.bd, align 8, !tbaa !133, !alias.scope !535, !noalias !536
  %i.bde = load i32, ptr %i.bc, align 4, !tbaa !132, !alias.scope !535, !noalias !536
  %i.bdf = zext nneg i32 %i.bde to i64
  br label %bb.hm

bb.hm:                                            ; preds = %.lr.ph973, %bb.hm
  %.0.i396971 = phi i64 [ %.0, %.lr.ph973 ], [ %i.bdx, %bb.hm ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.bdg = and i64 %.0.i396971, %3
  %i.bdh = getelementptr inbounds nuw i8, ptr %2, i64 %i.bdg
  %.0.copyload.i.i399 = load i64, ptr %i.bdh, align 1, !alias.scope !537, !noalias !535
  %i.bdi = mul i64 %.0.copyload.i.i399, %i.bdc    ; 2 uses
  %i.bdj = lshr i64 %i.bdi, 41
  %i.bdk = lshr i64 %i.bdi, 49                    ; 2 uses
  %i.bdl = trunc i64 %i.bdj to i8
  %i.bdm = getelementptr inbounds nuw [2 x i8], ptr %i.bcz, i64 %i.bdk ; 2 uses
  %i.bdn = load i16, ptr %i.bdm, align 2, !tbaa !76, !noalias !535 ; 2 uses
  %i.bdo = zext i16 %i.bdn to i32
  %i.bdp = and i32 %i.bdd, %i.bdo
  %i.bdq = zext nneg i32 %i.bdp to i64
  %i.bdr = shl i64 %i.bdk, %i.bdf
  %i.bds = add i64 %i.bdr, %i.bdq                 ; 2 uses
  %i.bdt = add i16 %i.bdn, -1
  store i16 %i.bdt, ptr %i.bdm, align 2, !tbaa !76, !noalias !535
  %i.bdu = trunc i64 %.0.i396971 to i32
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %i.bdb, i64 %i.bds
  store i32 %i.bdu, ptr %i.bdv, align 4, !tbaa !64, !noalias !535
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bda, i64 %i.bds
  store i8 %i.bdl, ptr %i.bdw, align 1, !tbaa !68, !noalias !535
  %i.bdx = add nuw i64 %.0.i396971, 1             ; 2 uses
  %exitcond1082.not = icmp eq i64 %i.bdx, %i.bcr
  br i1 %exitcond1082.not, label %StoreRangeH68.exit, label %bb.hm, !llvm.loop !16

bb.hn:                                            ; preds = %LookupCompoundDictionaryMatch.exit214
  %i.bdy = add i64 %.0191976, 1                   ; 5 uses
  %i.bdz = add i64 %.0194975, 1                   ; 9 uses
  %i.bea = icmp ugt i64 %i.bdz, %.0189977
  br i1 %i.bea, label %bb.ho, label %StoreRangeH68.exit

bb.ho:                                            ; preds = %bb.hn
  %i.beb = add i64 %.0189977, %i.bj
  %i.bec = icmp ugt i64 %i.bdz, %i.beb
  br i1 %i.bec, label %bb.hp, label %bb.hr

bb.hp:                                            ; preds = %bb.ho
  %i.bed = add i64 %.0194975, 17
  %i.bee = tail call i64 @llvm.umin.i64(i64 %i.bed, i64 %i.k) ; 2 uses
  %i.bef = icmp ult i64 %i.bdz, %i.bee
  br i1 %i.bef, label %.lr.ph801, label %StoreRangeH68.exit

.lr.ph801:                                        ; preds = %bb.hp
  %i.beg = load ptr, ptr %i.ay, align 8, !tbaa !128, !alias.scope !538, !noalias !539
  %i.beh = load ptr, ptr %i.ba, align 8, !tbaa !130, !alias.scope !538, !noalias !539
  %i.bei = load ptr, ptr %i.az, align 8, !tbaa !129, !alias.scope !538, !noalias !539
  %i.bej = load i64, ptr %i.bb, align 8, !tbaa !131, !alias.scope !538, !noalias !539
  %i.bek = load i32, ptr %i.bd, align 8, !tbaa !133, !alias.scope !538, !noalias !539
  %i.bel = load i32, ptr %i.bc, align 4, !tbaa !132, !alias.scope !538, !noalias !539
  %i.bem = zext nneg i32 %i.bel to i64
  br label %bb.hq

bb.hq:                                            ; preds = %.lr.ph801, %bb.hq
  %.4799 = phi i64 [ %i.bdy, %.lr.ph801 ], [ %i.bfe, %bb.hq ]
  %.4198798 = phi i64 [ %i.bdz, %.lr.ph801 ], [ %i.bff, %bb.hq ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.ben = and i64 %.4198798, %3
  %i.beo = getelementptr inbounds nuw i8, ptr %2, i64 %i.ben
  %.0.copyload.i.i397 = load i64, ptr %i.beo, align 1, !alias.scope !540, !noalias !538
  %i.bep = mul i64 %.0.copyload.i.i397, %i.bej    ; 2 uses
  %i.beq = lshr i64 %i.bep, 41
  %i.ber = lshr i64 %i.bep, 49                    ; 2 uses
  %i.bes = trunc i64 %i.beq to i8
  %i.bet = getelementptr inbounds nuw [2 x i8], ptr %i.beg, i64 %i.ber ; 2 uses
  %i.beu = load i16, ptr %i.bet, align 2, !tbaa !76, !noalias !538 ; 2 uses
  %i.bev = zext i16 %i.beu to i32
  %i.bew = and i32 %i.bek, %i.bev
  %i.bex = zext nneg i32 %i.bew to i64
  %i.bey = shl i64 %i.ber, %i.bem
  %i.bez = add i64 %i.bey, %i.bex                 ; 2 uses
  %i.bfa = add i16 %i.beu, -1
  store i16 %i.bfa, ptr %i.bet, align 2, !tbaa !76, !noalias !538
  %i.bfb = trunc i64 %.4198798 to i32
  %i.bfc = getelementptr inbounds nuw [4 x i8], ptr %i.bei, i64 %i.bez
  store i32 %i.bfb, ptr %i.bfc, align 4, !tbaa !64, !noalias !538
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.beh, i64 %i.bez
  store i8 %i.bes, ptr %i.bfd, align 1, !tbaa !68, !noalias !538
  %i.bfe = add i64 %.4799, 4                      ; 2 uses
  %i.bff = add i64 %.4198798, 4                   ; 3 uses
  %i.bfg = icmp ult i64 %i.bff, %i.bee
  br i1 %i.bfg, label %bb.hq, label %StoreRangeH68.exit, !llvm.loop !493

bb.hr:                                            ; preds = %bb.ho
  %i.bfh = add i64 %.0194975, 9
  %i.bfi = tail call i64 @llvm.umin.i64(i64 %i.bfh, i64 %i.k) ; 2 uses
  %i.bfj = icmp ult i64 %i.bdz, %i.bfi
  br i1 %i.bfj, label %.lr.ph795, label %StoreRangeH68.exit

.lr.ph795:                                        ; preds = %bb.hr
  %i.bfk = load ptr, ptr %i.ay, align 8, !tbaa !128, !alias.scope !541, !noalias !542
  %i.bfl = load ptr, ptr %i.ba, align 8, !tbaa !130, !alias.scope !541, !noalias !542
  %i.bfm = load ptr, ptr %i.az, align 8, !tbaa !129, !alias.scope !541, !noalias !542
  %i.bfn = load i64, ptr %i.bb, align 8, !tbaa !131, !alias.scope !541, !noalias !542
  %i.bfo = load i32, ptr %i.bd, align 8, !tbaa !133, !alias.scope !541, !noalias !542
  %i.bfp = load i32, ptr %i.bc, align 4, !tbaa !132, !alias.scope !541, !noalias !542
  %i.bfq = zext nneg i32 %i.bfp to i64
  br label %bb.hs

bb.hs:                                            ; preds = %.lr.ph795, %bb.hs
  %.5793 = phi i64 [ %i.bdy, %.lr.ph795 ], [ %i.bgi, %bb.hs ]
  %.5199792 = phi i64 [ %i.bdz, %.lr.ph795 ], [ %i.bgj, %bb.hs ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.bfr = and i64 %.5199792, %3
  %i.bfs = getelementptr inbounds nuw i8, ptr %2, i64 %i.bfr
  %.0.copyload.i.i398 = load i64, ptr %i.bfs, align 1, !alias.scope !543, !noalias !541
  %i.bft = mul i64 %.0.copyload.i.i398, %i.bfn    ; 2 uses
  %i.bfu = lshr i64 %i.bft, 41
  %i.bfv = lshr i64 %i.bft, 49                    ; 2 uses
  %i.bfw = trunc i64 %i.bfu to i8
  %i.bfx = getelementptr inbounds nuw [2 x i8], ptr %i.bfk, i64 %i.bfv ; 2 uses
  %i.bfy = load i16, ptr %i.bfx, align 2, !tbaa !76, !noalias !541 ; 2 uses
  %i.bfz = zext i16 %i.bfy to i32
  %i.bga = and i32 %i.bfo, %i.bfz
  %i.bgb = zext nneg i32 %i.bga to i64
  %i.bgc = shl i64 %i.bfv, %i.bfq
  %i.bgd = add i64 %i.bgc, %i.bgb                 ; 2 uses
  %i.bge = add i16 %i.bfy, -1
  store i16 %i.bge, ptr %i.bfx, align 2, !tbaa !76, !noalias !541
  %i.bgf = trunc i64 %.5199792 to i32
  %i.bgg = getelementptr inbounds nuw [4 x i8], ptr %i.bfm, i64 %i.bgd
  store i32 %i.bgf, ptr %i.bgg, align 4, !tbaa !64, !noalias !541
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bfl, i64 %i.bgd
  store i8 %i.bfw, ptr %i.bgh, align 1, !tbaa !68, !noalias !541
  %i.bgi = add i64 %.5793, 2                      ; 2 uses
  %i.bgj = add i64 %.5199792, 2                   ; 3 uses
  %i.bgk = icmp ult i64 %i.bgj, %i.bfi
  br i1 %i.bgk, label %bb.hs, label %StoreRangeH68.exit, !llvm.loop !499

end_hunk_3
begin_hunk_4_@CreateBackwardReferencesDH40:bb.a
  %.3.ph = phi i64 [ %.1192, %LookupCompoundDictionaryMatch.exit._crit_edge ], [ %i.axn, %bb.hn ] ; 9 uses
  %i.axs = shl i64 %.sroa.0416.1.ph, 1
  %i.axt = add i64 %i.axs, %i.p
  %i.axu = add i64 %i.axt, %.3197.ph              ; 2 uses
  %i.axv = add i64 %.pre-phi1023, %i.s            ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.18424.1.ph, %i.axv
  br i1 %.not.i, label %bb.hw, label %bb.ho

bb.ho:                                            ; preds = %split
  %i.axw = add i64 %.sroa.18424.1.ph, 3           ; 2 uses
  %i.axx = load i32, ptr %7, align 4, !tbaa !64
  %i.axy = sext i32 %i.axx to i64                 ; 2 uses
  %i.axz = sub i64 %i.axw, %i.axy                 ; 2 uses
  %i.aya = load i32, ptr %i.al, align 4, !tbaa !64
  %i.ayb = sext i32 %i.aya to i64                 ; 2 uses
  %i.ayc = sub i64 %i.axw, %i.ayb                 ; 2 uses
  %i.ayd = icmp eq i64 %.sroa.18424.1.ph, %i.axy
  br i1 %i.ayd, label %ComputeDistanceCode.exit.thread, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.aye = icmp eq i64 %.sroa.18424.1.ph, %i.ayb
  br i1 %i.aye, label %ComputeDistanceCode.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.ayf = icmp ult i64 %i.axz, 7
  br i1 %i.ayf, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %.tr25.i = trunc nuw nsw i64 %i.axz to i32
  %i.ayg = shl nuw nsw i32 %.tr25.i, 2
  %i.ayh = lshr i32 158663784, %i.ayg
  %i.ayi = and i32 %i.ayh, 15
  %i.ayj = zext nneg i32 %i.ayi to i64
  br label %ComputeDistanceCode.exit

bb.hs:                                            ; preds = %bb.hq
  %i.ayk = icmp ult i64 %i.ayc, 7
  br i1 %i.ayk, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %.tr.i = trunc nuw nsw i64 %i.ayc to i32
  %i.ayl = shl nuw nsw i32 %.tr.i, 2
  %i.aym = lshr i32 266017486, %i.ayl
  %i.ayn = and i32 %i.aym, 15
  %i.ayo = zext nneg i32 %i.ayn to i64
  br label %ComputeDistanceCode.exit

bb.hu:                                            ; preds = %bb.hs
  %i.ayp = load i32, ptr %i.am, align 4, !tbaa !64
  %i.ayq = sext i32 %i.ayp to i64
  %i.ayr = icmp eq i64 %.sroa.18424.1.ph, %i.ayq
  br i1 %i.ayr, label %ComputeDistanceCode.exit, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.ays = load i32, ptr %i.an, align 4, !tbaa !64
  %i.ayt = sext i32 %i.ays to i64
  %.not547 = icmp eq i64 %.sroa.18424.1.ph, %i.ayt
  br i1 %.not547, label %ComputeDistanceCode.exit, label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %split
  %i.ayu = add i64 %.sroa.18424.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.hp, %bb.ht, %bb.hr, %bb.hu, %bb.hv, %bb.hw
  %.1.i = phi i64 [ %i.ayu, %bb.hw ], [ 3, %bb.hv ], [ 1, %bb.hp ], [ %i.ayo, %bb.ht ], [ %i.ayj, %bb.hr ], [ 2, %bb.hu ] ; 3 uses
  %i.ayv = icmp ule i64 %.sroa.18424.1.ph, %i.axv
  %i.ayw = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.ayv, i1 %i.ayw, i1 false
  br i1 %or.cond, label %bb.hx, label %ComputeDistanceCode.exit.thread

bb.hx:                                            ; preds = %ComputeDistanceCode.exit
  %i.ayx = load i32, ptr %i.am, align 4, !tbaa !64
  store i32 %i.ayx, ptr %i.an, align 4, !tbaa !64
  %i.ayy = load <2 x i32>, ptr %7, align 4, !tbaa !64
  store <2 x i32> %i.ayy, ptr %i.al, align 4, !tbaa !64
  %i.ayz = trunc i64 %.sroa.18424.1.ph to i32
  store i32 %i.ayz, ptr %7, align 4, !tbaa !64
  br label %ComputeDistanceCode.exit.thread

ComputeDistanceCode.exit.thread:                  ; preds = %bb.ho, %bb.hx, %ComputeDistanceCode.exit
  %.1.i543 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.hx ], [ 0, %bb.ho ] ; 3 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %.0201897, i64 16 ; 2 uses
  %i.azb = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.azb, ptr %.0201897, align 4, !tbaa !103
  %i.azc = shl i32 %.sroa.42.1.ph, 25
  %i.azd = trunc i64 %.sroa.0416.1.ph to i32      ; 2 uses
  %i.aze = or i32 %i.azc, %i.azd
  %i.azf = getelementptr inbounds nuw i8, ptr %.0201897, i64 4
  store i32 %i.aze, ptr %i.azf, align 4, !tbaa !104
  %i.azg = load i32, ptr %i.ao, align 4, !tbaa !105
  %i.azh = zext i32 %i.azg to i64                 ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %.0201897, i64 14
  %i.azj = getelementptr inbounds nuw i8, ptr %.0201897, i64 8
  %i.azk = add nuw nsw i64 %i.azh, 16             ; 2 uses
  %i.azl = icmp ult i64 %.1.i543, %i.azk
  br i1 %i.azl, label %PrefixEncodeCopyDistance.exit, label %bb.hy

bb.hy:                                            ; preds = %ComputeDistanceCode.exit.thread
  %i.azm = load i32, ptr %i.aa, align 8, !tbaa !106 ; 2 uses
  %i.azn = zext i32 %i.azm to i64                 ; 4 uses
  %i.azo = shl nuw i64 4, %i.azn
  %i.azp = add i64 %.1.i543, -16
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
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %ComputeDistanceCode.exit.thread, %bb.hy
  %.sink.in = phi i64 [ %i.bal, %bb.hy ], [ %.1.i543, %ComputeDistanceCode.exit.thread ]
  %storemerge.i = phi i32 [ %i.bao, %bb.hy ], [ 0, %ComputeDistanceCode.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.azi, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.azj, align 4, !tbaa !64
  %i.bap = add nsw i32 %.sroa.42.1.ph, %i.azd     ; 6 uses
  %i.baq = and i16 %.sink, 1023
  %i.bar = icmp eq i16 %i.baq, 0
  %i.bas = getelementptr inbounds nuw i8, ptr %.0201897, i64 12
  %i.bat = icmp ult i64 %.3.ph, 6
  br i1 %i.bat, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.bau = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.ia:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.bav = icmp ult i64 %.3.ph, 130
  br i1 %i.bav, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
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
  br label %GetInsertLengthCode.exit

bb.ic:                                            ; preds = %bb.ia
  %i.bbh = icmp ult i64 %.3.ph, 2114
  br i1 %i.bbh, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.bbi = add nsw i32 %i.azb, -66
  %i.bbj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bbi, i1 true)
  %i.bbk = trunc nuw nsw i32 %i.bbj to i16
  %i.bbl = sub nuw nsw i16 41, %i.bbk
  br label %GetInsertLengthCode.exit

bb.ie:                                            ; preds = %bb.ic
  %i.bbm = icmp ult i64 %.3.ph, 6210
  br i1 %i.bbm, label %GetInsertLengthCode.exit, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.bbn = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.bbn, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.hz, %bb.ib, %bb.id, %bb.ie, %bb.if
  %.0.i277 = phi i16 [ %i.bau, %bb.hz ], [ %i.bbg, %bb.ib ], [ %i.bbl, %bb.id ], [ 21, %bb.ie ], [ %..i, %bb.if ] ; 3 uses
  %i.bbo = icmp ult i32 %i.bap, 10
  br i1 %i.bbo, label %GetCopyLengthCode.exit, label %bb.ig

bb.ig:                                            ; preds = %GetInsertLengthCode.exit
  %i.bbp = icmp ult i32 %i.bap, 134
  br i1 %i.bbp, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %narrow = add nsw i32 %i.bap, -6                ; 2 uses
  %i.bbq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.bbr = sub nuw nsw i32 30, %i.bbq             ; 2 uses
  %i.bbs = shl nuw nsw i32 %i.bbr, 1
  %i.bbt = lshr i32 %narrow, %i.bbr
  %i.bbu = add nuw nsw i32 %i.bbt, %i.bbs
  br label %GetCopyLengthCode.exit

bb.ii:                                            ; preds = %bb.ig
  %i.bbv = icmp ult i32 %i.bap, 2118
  br i1 %i.bbv, label %GetCopyLengthCode.exit.thread1265, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread1265:                ; preds = %bb.ii
  %i.bbw = add nsw i32 %i.bap, -70
  %i.bbx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bbw, i1 true)
  %i.bby = trunc nuw nsw i32 %i.bbx to i16
  %i.bbz = sub nuw nsw i16 43, %i.bby
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.ih
  %.sink1434 = phi i32 [ %i.bbu, %bb.ih ], [ %i.bap, %GetInsertLengthCode.exit ]
  %.sink1433 = phi i16 [ 4, %bb.ih ], [ -2, %GetInsertLengthCode.exit ]
  %i.bca = trunc nuw nsw i32 %.sink1434 to i16
  %i.bcb = add nsw i16 %.sink1433, %i.bca         ; 4 uses
  %i.bcc = icmp samesign ult i16 %.0.i277, 8
  %or.cond.i279 = and i1 %i.bar, %i.bcc
  %i.bcd = icmp ult i16 %i.bcb, 16
  %or.cond5.i = and i1 %or.cond.i279, %i.bcd
  br i1 %or.cond5.i, label %bb.ij, label %GetCopyLengthCode.exit.thread

bb.ij:                                            ; preds = %GetCopyLengthCode.exit
  %i.bce = shl nuw nsw i16 %i.bcb, 3
  %i.bcf = and i16 %i.bce, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread1265, %bb.ii, %GetCopyLengthCode.exit
  %.0.i278537 = phi i16 [ %i.bcb, %GetCopyLengthCode.exit ], [ 23, %bb.ii ], [ %i.bbz, %GetCopyLengthCode.exit.thread1265 ] ; 2 uses
  %i.bcg = lshr i16 %.0.i278537, 3
  %i.bch = lshr i16 %.0.i277, 3
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
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.ij, %GetCopyLengthCode.exit.thread
  %.0.i278538 = phi i16 [ %i.bcb, %bb.ij ], [ %.0.i278537, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.bcf, %bb.ij ], [ %i.bcp, %GetCopyLengthCode.exit.thread ]
  %i.bcq = and i16 %.0.i278538, 7
  %i.bcr = shl nuw nsw i16 %.0.i277, 3
  %i.bcs = and i16 %i.bcr, 56
  %i.bct = or disjoint i16 %i.bcq, %i.bcs
  %.0.i280 = or disjoint i16 %i.bct, %.pn.i
  store i16 %.0.i280, ptr %i.bas, align 4, !tbaa !76
  %i.bcu = load i64, ptr %11, align 8, !tbaa !58
  %i.bcv = add i64 %i.bcu, %.3.ph
  store i64 %i.bcv, ptr %11, align 8, !tbaa !58
  %i.bcw = add i64 %.3197.ph, 2                   ; 2 uses
  %i.bcx = add i64 %.3197.ph, %.sroa.0416.1.ph    ; 4 uses
  %i.bcy = tail call i64 @llvm.umin.i64(i64 %i.bcx, i64 %spec.select) ; 3 uses
  %i.bcz = lshr i64 %.sroa.0416.1.ph, 2
  %i.bda = icmp ult i64 %.sroa.18424.1.ph, %i.bcz
  br i1 %i.bda, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %CombineLengthCodes.exit
  %i.bdb = shl nuw i64 %.sroa.18424.1.ph, 2
  %i.bdc = sub i64 %i.bcx, %i.bdb
  %i.bdd = tail call i64 @llvm.umax.i64(i64 %i.bcw, i64 %i.bdc)
  %i.bde = tail call i64 @llvm.umin.i64(i64 %i.bcy, i64 %i.bdd)
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.bde, %bb.ik ], [ %i.bcw, %CombineLengthCodes.exit ] ; 2 uses
  %i.bdf = icmp ult i64 %.0, %i.bcy
  br i1 %i.bdf, label %.lr.ph894, label %StoreRangeH40.exit

.lr.ph894:                                        ; preds = %bb.il
  %i.bdg = load ptr, ptr %i.ac, align 8, !tbaa !136, !alias.scope !632, !noalias !633 ; 3 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 131072
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdg, i64 196608
  %i.bdj = load ptr, ptr %i.ad, align 8, !tbaa !136, !alias.scope !632, !noalias !633
  %.promoted895 = load i16, ptr %i.a, align 8, !tbaa !76, !alias.scope !632, !noalias !633
  br label %bb.im

bb.im:                                            ; preds = %.lr.ph894, %bb.im
  %i.bdk = phi i16 [ %.promoted895, %.lr.ph894 ], [ %i.bdq, %bb.im ] ; 3 uses
  %.0.i398893 = phi i64 [ %.0, %.lr.ph894 ], [ %i.bef, %bb.im ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.bdl = and i64 %.0.i398893, %3
  %i.bdm = getelementptr inbounds nuw i8, ptr %2, i64 %i.bdl
  %.0.copyload.i.i408 = load i32, ptr %i.bdm, align 1, !alias.scope !634, !noalias !632
  %i.bdn = mul i32 %.0.copyload.i.i408, 506832829
  %i.bdo = lshr i32 %i.bdn, 17                    ; 2 uses
  %i.bdp = zext nneg i32 %i.bdo to i64            ; 2 uses
  %i.bdq = add i16 %i.bdk, 1                      ; 2 uses
  %i.bdr = zext i16 %i.bdk to i64
  %i.bds = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %i.bdp ; 2 uses
  %i.bdt = load i32, ptr %i.bds, align 4, !tbaa !64, !noalias !632
  %i.bdu = zext i32 %i.bdt to i64
  %i.bdv = sub i64 %.0.i398893, %i.bdu
  %i.bdw = trunc i32 %i.bdo to i8
  %i.bdx = and i64 %.0.i398893, 65535
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdi, i64 %i.bdx
  store i8 %i.bdw, ptr %i.bdy, align 1, !tbaa !68, !noalias !632
  %spec.store.select.i399 = tail call i64 @llvm.umin.i64(i64 %i.bdv, i64 65535)
  %i.bdz = trunc nuw i64 %spec.store.select.i399 to i16
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %i.bdj, i64 %i.bdr ; 2 uses
  store i16 %i.bdz, ptr %i.bea, align 2, !tbaa !141, !noalias !632
  %i.beb = getelementptr inbounds nuw [2 x i8], ptr %i.bdh, i64 %i.bdp ; 2 uses
  %i.bec = load i16, ptr %i.beb, align 2, !tbaa !76, !noalias !632
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bea, i64 2
  store i16 %i.bec, ptr %i.bed, align 2, !tbaa !140, !noalias !632
  %i.bee = trunc i64 %.0.i398893 to i32
  store i32 %i.bee, ptr %i.bds, align 4, !tbaa !64, !noalias !632
  store i16 %i.bdk, ptr %i.beb, align 2, !tbaa !76, !noalias !632
  %i.bef = add nuw i64 %.0.i398893, 1             ; 2 uses
  %exitcond995.not = icmp eq i64 %i.bef, %i.bcy
  br i1 %exitcond995.not, label %StoreRangeH40.exit.sink.split, label %bb.im, !llvm.loop !18

bb.in:                                            ; preds = %LookupCompoundDictionaryMatch.exit214
  %i.beg = add i64 %.0191899, 1                   ; 5 uses
  %i.beh = add i64 %.0194898, 1                   ; 9 uses
  %i.bei = icmp ugt i64 %i.beh, %.0189900
  br i1 %i.bei, label %bb.io, label %StoreRangeH40.exit

bb.io:                                            ; preds = %bb.in
  %i.bej = add i64 %.0189900, %i.aj
  %i.bek = icmp ugt i64 %i.beh, %i.bej
  br i1 %i.bek, label %bb.ip, label %bb.ir

bb.ip:                                            ; preds = %bb.io
  %i.bel = add i64 %.0194898, 17
  %i.bem = tail call i64 @llvm.umin.i64(i64 %i.bel, i64 %i.ak) ; 2 uses
  %i.ben = icmp ult i64 %i.beh, %i.bem
  br i1 %i.ben, label %.lr.ph750, label %StoreRangeH40.exit

.lr.ph750:                                        ; preds = %bb.ip
  %i.beo = load ptr, ptr %i.ac, align 8, !tbaa !136, !alias.scope !635, !noalias !636 ; 3 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 131072
  %i.beq = getelementptr inbounds nuw i8, ptr %i.beo, i64 196608
  %i.ber = load ptr, ptr %i.ad, align 8, !tbaa !136, !alias.scope !635, !noalias !636
  %.promoted753 = load i16, ptr %i.a, align 8, !tbaa !76, !alias.scope !635, !noalias !636
  br label %bb.iq

bb.iq:                                            ; preds = %.lr.ph750, %bb.iq
  %i.bes = phi i16 [ %.promoted753, %.lr.ph750 ], [ %i.bey, %bb.iq ] ; 3 uses
  %.4749 = phi i64 [ %i.beg, %.lr.ph750 ], [ %i.bfn, %bb.iq ]
  %.4198748 = phi i64 [ %i.beh, %.lr.ph750 ], [ %i.bfo, %bb.iq ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.bet = and i64 %.4198748, %3
  %i.beu = getelementptr inbounds nuw i8, ptr %2, i64 %i.bet
  %.0.copyload.i.i404 = load i32, ptr %i.beu, align 1, !alias.scope !637, !noalias !635
  %i.bev = mul i32 %.0.copyload.i.i404, 506832829
  %i.bew = lshr i32 %i.bev, 17                    ; 2 uses
  %i.bex = zext nneg i32 %i.bew to i64            ; 2 uses
  %i.bey = add i16 %i.bes, 1                      ; 2 uses
  %i.bez = zext i16 %i.bes to i64
  %i.bfa = getelementptr inbounds nuw [4 x i8], ptr %i.beo, i64 %i.bex ; 2 uses
  %i.bfb = load i32, ptr %i.bfa, align 4, !tbaa !64, !noalias !635
  %i.bfc = zext i32 %i.bfb to i64
  %i.bfd = sub i64 %.4198748, %i.bfc
  %i.bfe = trunc i32 %i.bew to i8
  %i.bff = and i64 %.4198748, 65535
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.beq, i64 %i.bff
  store i8 %i.bfe, ptr %i.bfg, align 1, !tbaa !68, !noalias !635
  %spec.store.select.i403 = tail call i64 @llvm.umin.i64(i64 %i.bfd, i64 65535)
  %i.bfh = trunc nuw i64 %spec.store.select.i403 to i16
  %i.bfi = getelementptr inbounds nuw [4 x i8], ptr %i.ber, i64 %i.bez ; 2 uses
  store i16 %i.bfh, ptr %i.bfi, align 2, !tbaa !141, !noalias !635
  %i.bfj = getelementptr inbounds nuw [2 x i8], ptr %i.bep, i64 %i.bex ; 2 uses
  %i.bfk = load i16, ptr %i.bfj, align 2, !tbaa !76, !noalias !635
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfi, i64 2
  store i16 %i.bfk, ptr %i.bfl, align 2, !tbaa !140, !noalias !635
  %i.bfm = trunc i64 %.4198748 to i32
  store i32 %i.bfm, ptr %i.bfa, align 4, !tbaa !64, !noalias !635
  store i16 %i.bes, ptr %i.bfj, align 2, !tbaa !76, !noalias !635
  %i.bfn = add i64 %.4749, 4                      ; 2 uses
  %i.bfo = add i64 %.4198748, 4                   ; 3 uses
  %i.bfp = icmp ult i64 %i.bfo, %i.bem
  br i1 %i.bfp, label %bb.iq, label %StoreRangeH40.exit.sink.split, !llvm.loop !588

bb.ir:                                            ; preds = %bb.io
  %i.bfq = add i64 %.0194898, 9
  %i.bfr = tail call i64 @llvm.umin.i64(i64 %i.bfq, i64 %i.l) ; 2 uses
  %i.bfs = icmp ult i64 %i.beh, %i.bfr
  br i1 %i.bfs, label %.lr.ph744, label %StoreRangeH40.exit

.lr.ph744:                                        ; preds = %bb.ir
  %i.bft = load ptr, ptr %i.ac, align 8, !tbaa !136, !alias.scope !638, !noalias !639 ; 3 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 131072
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bft, i64 196608
  %i.bfw = load ptr, ptr %i.ad, align 8, !tbaa !136, !alias.scope !638, !noalias !639
  %.promoted747 = load i16, ptr %i.a, align 8, !tbaa !76, !alias.scope !638, !noalias !639
  br label %bb.is

bb.is:                                            ; preds = %.lr.ph744, %bb.is
  %i.bfx = phi i16 [ %.promoted747, %.lr.ph744 ], [ %i.bgd, %bb.is ] ; 3 uses
  %.5743 = phi i64 [ %i.beg, %.lr.ph744 ], [ %i.bgs, %bb.is ]
  %.5199742 = phi i64 [ %i.beh, %.lr.ph744 ], [ %i.bgt, %bb.is ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.bfy = and i64 %.5199742, %3
  %i.bfz = getelementptr inbounds nuw i8, ptr %2, i64 %i.bfy
  %.0.copyload.i.i405 = load i32, ptr %i.bfz, align 1, !alias.scope !640, !noalias !638
  %i.bga = mul i32 %.0.copyload.i.i405, 506832829
  %i.bgb = lshr i32 %i.bga, 17                    ; 2 uses
  %i.bgc = zext nneg i32 %i.bgb to i64            ; 2 uses
  %i.bgd = add i16 %i.bfx, 1                      ; 2 uses
  %i.bge = zext i16 %i.bfx to i64
  %i.bgf = getelementptr inbounds nuw [4 x i8], ptr %i.bft, i64 %i.bgc ; 2 uses
  %i.bgg = load i32, ptr %i.bgf, align 4, !tbaa !64, !noalias !638
  %i.bgh = zext i32 %i.bgg to i64
  %i.bgi = sub i64 %.5199742, %i.bgh
  %i.bgj = trunc i32 %i.bgb to i8
  %i.bgk = and i64 %.5199742, 65535
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %i.bgk
  store i8 %i.bgj, ptr %i.bgl, align 1, !tbaa !68, !noalias !638
  %spec.store.select.i402 = tail call i64 @llvm.umin.i64(i64 %i.bgi, i64 65535)
end_hunk_4
begin_hunk_5_@CreateBackwardReferencesDH41:bb.a
bb.ga:                                            ; preds = %split
  %i.arc = add i64 %.sroa.18424.1.ph, 3           ; 2 uses
  %i.ard = load i32, ptr %7, align 4, !tbaa !64
  %i.are = sext i32 %i.ard to i64                 ; 2 uses
  %i.arf = sub i64 %i.arc, %i.are                 ; 2 uses
  %i.arg = load i32, ptr %i.av, align 4, !tbaa !64
  %i.arh = sext i32 %i.arg to i64                 ; 2 uses
  %i.ari = sub i64 %i.arc, %i.arh                 ; 2 uses
  %i.arj = icmp eq i64 %.sroa.18424.1.ph, %i.are
  br i1 %i.arj, label %ComputeDistanceCode.exit.thread, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ark = icmp eq i64 %.sroa.18424.1.ph, %i.arh
  br i1 %i.ark, label %ComputeDistanceCode.exit, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.arl = icmp ult i64 %i.arf, 7
  br i1 %i.arl, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %.tr25.i = trunc nuw nsw i64 %i.arf to i32
  %i.arm = shl nuw nsw i32 %.tr25.i, 2
  %i.arn = lshr i32 158663784, %i.arm
  %i.aro = and i32 %i.arn, 15
  %i.arp = zext nneg i32 %i.aro to i64
  br label %ComputeDistanceCode.exit

bb.ge:                                            ; preds = %bb.gc
  %i.arq = icmp ult i64 %i.ari, 7
  br i1 %i.arq, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %.tr.i = trunc nuw nsw i64 %i.ari to i32
  %i.arr = shl nuw nsw i32 %.tr.i, 2
  %i.ars = lshr i32 266017486, %i.arr
  %i.art = and i32 %i.ars, 15
  %i.aru = zext nneg i32 %i.art to i64
  br label %ComputeDistanceCode.exit

bb.gg:                                            ; preds = %bb.ge
  %i.arv = load i32, ptr %i.aw, align 4, !tbaa !64
  %i.arw = sext i32 %i.arv to i64
  %i.arx = icmp eq i64 %.sroa.18424.1.ph, %i.arw
  br i1 %i.arx, label %ComputeDistanceCode.exit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.ary = load i32, ptr %i.ax, align 4, !tbaa !64
  %i.arz = sext i32 %i.ary to i64
  %.not547 = icmp eq i64 %.sroa.18424.1.ph, %i.arz
  br i1 %.not547, label %ComputeDistanceCode.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %split
  %i.asa = add i64 %.sroa.18424.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.gb, %bb.gf, %bb.gd, %bb.gg, %bb.gh, %bb.gi
  %.1.i = phi i64 [ %i.asa, %bb.gi ], [ 3, %bb.gh ], [ 1, %bb.gb ], [ %i.aru, %bb.gf ], [ %i.arp, %bb.gd ], [ 2, %bb.gg ] ; 3 uses
  %i.asb = icmp ule i64 %.sroa.18424.1.ph, %i.arb
  %i.asc = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.asb, i1 %i.asc, i1 false
  br i1 %or.cond, label %bb.gj, label %ComputeDistanceCode.exit.thread

bb.gj:                                            ; preds = %ComputeDistanceCode.exit
  %i.asd = load i32, ptr %i.aw, align 4, !tbaa !64
  store i32 %i.asd, ptr %i.ax, align 4, !tbaa !64
  %i.ase = load <2 x i32>, ptr %7, align 4, !tbaa !64
  store <2 x i32> %i.ase, ptr %i.av, align 4, !tbaa !64
  %i.asf = trunc i64 %.sroa.18424.1.ph to i32     ; 4 uses
  store i32 %i.asf, ptr %7, align 4, !tbaa !64
  %i.asg = insertelement <4 x i32> poison, i32 %i.asf, i64 0
  %i.ash = shufflevector <4 x i32> %i.asg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.asi = add nsw <4 x i32> %i.ash, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.asi, ptr %i.u, align 4, !tbaa !64, !alias.scope !738
  %i.asj = add nsw i32 %i.asf, -3
  store i32 %i.asj, ptr %i.y, align 4, !tbaa !64, !alias.scope !738
  %i.ask = add nsw i32 %i.asf, 3
  store i32 %i.ask, ptr %i.z, align 4, !tbaa !64, !alias.scope !738
  br label %ComputeDistanceCode.exit.thread

ComputeDistanceCode.exit.thread:                  ; preds = %bb.ga, %bb.gj, %ComputeDistanceCode.exit
  %.1.i543 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.gj ], [ 0, %bb.ga ] ; 3 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %.0201897, i64 16 ; 2 uses
  %i.asm = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.asm, ptr %.0201897, align 4, !tbaa !103
  %i.asn = shl i32 %.sroa.42.1.ph, 25
  %i.aso = trunc i64 %.sroa.0416.1.ph to i32      ; 2 uses
  %i.asp = or i32 %i.asn, %i.aso
  %i.asq = getelementptr inbounds nuw i8, ptr %.0201897, i64 4
  store i32 %i.asp, ptr %i.asq, align 4, !tbaa !104
  %i.asr = load i32, ptr %i.ay, align 4, !tbaa !105
  %i.ass = zext i32 %i.asr to i64                 ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %.0201897, i64 14
  %i.asu = getelementptr inbounds nuw i8, ptr %.0201897, i64 8
  %i.asv = add nuw nsw i64 %i.ass, 16             ; 2 uses
  %i.asw = icmp ult i64 %.1.i543, %i.asv
  br i1 %i.asw, label %PrefixEncodeCopyDistance.exit, label %bb.gk

bb.gk:                                            ; preds = %ComputeDistanceCode.exit.thread
  %i.asx = load i32, ptr %i.ak, align 8, !tbaa !106 ; 2 uses
  %i.asy = zext i32 %i.asx to i64                 ; 4 uses
  %i.asz = shl nuw i64 4, %i.asy
  %i.ata = add i64 %.1.i543, -16
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
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %ComputeDistanceCode.exit.thread, %bb.gk
  %.sink.in = phi i64 [ %i.atw, %bb.gk ], [ %.1.i543, %ComputeDistanceCode.exit.thread ]
  %storemerge.i = phi i32 [ %i.atz, %bb.gk ], [ 0, %ComputeDistanceCode.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.ast, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.asu, align 4, !tbaa !64
  %i.aua = add nsw i32 %.sroa.42.1.ph, %i.aso     ; 6 uses
  %i.aub = and i16 %.sink, 1023
  %i.auc = icmp eq i16 %i.aub, 0
  %i.aud = getelementptr inbounds nuw i8, ptr %.0201897, i64 12
  %i.aue = icmp ult i64 %.3.ph, 6
  br i1 %i.aue, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.auf = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.gm:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.aug = icmp ult i64 %.3.ph, 130
  br i1 %i.aug, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
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
  br label %GetInsertLengthCode.exit

bb.go:                                            ; preds = %bb.gm
  %i.aus = icmp ult i64 %.3.ph, 2114
  br i1 %i.aus, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.aut = add nsw i32 %i.asm, -66
  %i.auu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aut, i1 true)
  %i.auv = trunc nuw nsw i32 %i.auu to i16
  %i.auw = sub nuw nsw i16 41, %i.auv
  br label %GetInsertLengthCode.exit

bb.gq:                                            ; preds = %bb.go
  %i.aux = icmp ult i64 %.3.ph, 6210
  br i1 %i.aux, label %GetInsertLengthCode.exit, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.auy = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.auy, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.gl, %bb.gn, %bb.gp, %bb.gq, %bb.gr
  %.0.i277 = phi i16 [ %i.auf, %bb.gl ], [ %i.aur, %bb.gn ], [ %i.auw, %bb.gp ], [ 21, %bb.gq ], [ %..i, %bb.gr ] ; 3 uses
  %i.auz = icmp ult i32 %i.aua, 10
  br i1 %i.auz, label %GetCopyLengthCode.exit, label %bb.gs

bb.gs:                                            ; preds = %GetInsertLengthCode.exit
  %i.ava = icmp ult i32 %i.aua, 134
  br i1 %i.ava, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %narrow = add nsw i32 %i.aua, -6                ; 2 uses
  %i.avb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.avc = sub nuw nsw i32 30, %i.avb             ; 2 uses
  %i.avd = shl nuw nsw i32 %i.avc, 1
  %i.ave = lshr i32 %narrow, %i.avc
  %i.avf = add nuw nsw i32 %i.ave, %i.avd
  br label %GetCopyLengthCode.exit

bb.gu:                                            ; preds = %bb.gs
  %i.avg = icmp ult i32 %i.aua, 2118
  br i1 %i.avg, label %GetCopyLengthCode.exit.thread1212, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread1212:                ; preds = %bb.gu
  %i.avh = add nsw i32 %i.aua, -70
  %i.avi = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.avh, i1 true)
  %i.avj = trunc nuw nsw i32 %i.avi to i16
  %i.avk = sub nuw nsw i16 43, %i.avj
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.gt
  %.sink1345 = phi i32 [ %i.avf, %bb.gt ], [ %i.aua, %GetInsertLengthCode.exit ]
  %.sink1344 = phi i16 [ 4, %bb.gt ], [ -2, %GetInsertLengthCode.exit ]
  %i.avl = trunc nuw nsw i32 %.sink1345 to i16
  %i.avm = add nsw i16 %.sink1344, %i.avl         ; 4 uses
  %i.avn = icmp samesign ult i16 %.0.i277, 8
  %or.cond.i279 = and i1 %i.auc, %i.avn
  %i.avo = icmp ult i16 %i.avm, 16
  %or.cond5.i = and i1 %or.cond.i279, %i.avo
  br i1 %or.cond5.i, label %bb.gv, label %GetCopyLengthCode.exit.thread

bb.gv:                                            ; preds = %GetCopyLengthCode.exit
  %i.avp = shl nuw nsw i16 %i.avm, 3
  %i.avq = and i16 %i.avp, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread1212, %bb.gu, %GetCopyLengthCode.exit
  %.0.i278537 = phi i16 [ %i.avm, %GetCopyLengthCode.exit ], [ 23, %bb.gu ], [ %i.avk, %GetCopyLengthCode.exit.thread1212 ] ; 2 uses
  %i.avr = lshr i16 %.0.i278537, 3
  %i.avs = lshr i16 %.0.i277, 3
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
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.gv, %GetCopyLengthCode.exit.thread
  %.0.i278538 = phi i16 [ %i.avm, %bb.gv ], [ %.0.i278537, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.avq, %bb.gv ], [ %i.awa, %GetCopyLengthCode.exit.thread ]
  %i.awb = and i16 %.0.i278538, 7
  %i.awc = shl nuw nsw i16 %.0.i277, 3
  %i.awd = and i16 %i.awc, 56
  %i.awe = or disjoint i16 %i.awb, %i.awd
  %.0.i280 = or disjoint i16 %i.awe, %.pn.i
  store i16 %.0.i280, ptr %i.aud, align 4, !tbaa !76
  %i.awf = load i64, ptr %11, align 8, !tbaa !58
  %i.awg = add i64 %i.awf, %.3.ph
  store i64 %i.awg, ptr %11, align 8, !tbaa !58
  %i.awh = add i64 %.3197.ph, 2                   ; 2 uses
  %i.awi = add i64 %.3197.ph, %.sroa.0416.1.ph    ; 4 uses
  %i.awj = tail call i64 @llvm.umin.i64(i64 %i.awi, i64 %spec.select) ; 3 uses
  %i.awk = lshr i64 %.sroa.0416.1.ph, 2
  %i.awl = icmp ult i64 %.sroa.18424.1.ph, %i.awk
  br i1 %i.awl, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %CombineLengthCodes.exit
  %i.awm = shl nuw i64 %.sroa.18424.1.ph, 2
  %i.awn = sub i64 %i.awi, %i.awm
  %i.awo = tail call i64 @llvm.umax.i64(i64 %i.awh, i64 %i.awn)
  %i.awp = tail call i64 @llvm.umin.i64(i64 %i.awj, i64 %i.awo)
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.awp, %bb.gw ], [ %i.awh, %CombineLengthCodes.exit ] ; 2 uses
  %i.awq = icmp ult i64 %.0, %i.awj
  br i1 %i.awq, label %.lr.ph894, label %StoreRangeH41.exit

.lr.ph894:                                        ; preds = %bb.gx
  %i.awr = load ptr, ptr %i.am, align 8, !tbaa !136, !alias.scope !739, !noalias !740 ; 3 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 131072
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awr, i64 196608
  %i.awu = load ptr, ptr %i.an, align 8, !tbaa !136, !alias.scope !739, !noalias !740
  %.promoted895 = load i16, ptr %i.a, align 8, !tbaa !76, !alias.scope !739, !noalias !740
  br label %bb.gy

bb.gy:                                            ; preds = %.lr.ph894, %bb.gy
  %i.awv = phi i16 [ %.promoted895, %.lr.ph894 ], [ %i.axb, %bb.gy ] ; 3 uses
  %.0.i398893 = phi i64 [ %.0, %.lr.ph894 ], [ %i.axq, %bb.gy ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.aww = and i64 %.0.i398893, %3
  %i.awx = getelementptr inbounds nuw i8, ptr %2, i64 %i.aww
  %.0.copyload.i.i408 = load i32, ptr %i.awx, align 1, !alias.scope !741, !noalias !739
  %i.awy = mul i32 %.0.copyload.i.i408, 506832829
  %i.awz = lshr i32 %i.awy, 17                    ; 2 uses
  %i.axa = zext nneg i32 %i.awz to i64            ; 2 uses
  %i.axb = add i16 %i.awv, 1                      ; 2 uses
  %i.axc = zext i16 %i.awv to i64
  %i.axd = getelementptr inbounds nuw [4 x i8], ptr %i.awr, i64 %i.axa ; 2 uses
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !64, !noalias !739
  %i.axf = zext i32 %i.axe to i64
  %i.axg = sub i64 %.0.i398893, %i.axf
  %i.axh = trunc i32 %i.awz to i8
  %i.axi = and i64 %.0.i398893, 65535
  %i.axj = getelementptr inbounds nuw i8, ptr %i.awt, i64 %i.axi
  store i8 %i.axh, ptr %i.axj, align 1, !tbaa !68, !noalias !739
  %spec.store.select.i399 = tail call i64 @llvm.umin.i64(i64 %i.axg, i64 65535)
  %i.axk = trunc nuw i64 %spec.store.select.i399 to i16
  %i.axl = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %i.axc ; 2 uses
  store i16 %i.axk, ptr %i.axl, align 2, !tbaa !148, !noalias !739
  %i.axm = getelementptr inbounds nuw [2 x i8], ptr %i.aws, i64 %i.axa ; 2 uses
  %i.axn = load i16, ptr %i.axm, align 2, !tbaa !76, !noalias !739
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axl, i64 2
  store i16 %i.axn, ptr %i.axo, align 2, !tbaa !147, !noalias !739
  %i.axp = trunc i64 %.0.i398893 to i32
  store i32 %i.axp, ptr %i.axd, align 4, !tbaa !64, !noalias !739
  store i16 %i.awv, ptr %i.axm, align 2, !tbaa !76, !noalias !739
  %i.axq = add nuw i64 %.0.i398893, 1             ; 2 uses
  %exitcond997.not = icmp eq i64 %i.axq, %i.awj
  br i1 %exitcond997.not, label %StoreRangeH41.exit.sink.split, label %bb.gy, !llvm.loop !21

bb.gz:                                            ; preds = %LookupCompoundDictionaryMatch.exit214
  %i.axr = add i64 %.0191899, 1                   ; 5 uses
  %i.axs = add i64 %.0194898, 1                   ; 9 uses
  %i.axt = icmp ugt i64 %i.axs, %.0189900
  br i1 %i.axt, label %bb.ha, label %StoreRangeH41.exit

bb.ha:                                            ; preds = %bb.gz
  %i.axu = add i64 %.0189900, %i.at
  %i.axv = icmp ugt i64 %i.axs, %i.axu
  br i1 %i.axv, label %bb.hb, label %bb.hd

bb.hb:                                            ; preds = %bb.ha
  %i.axw = add i64 %.0194898, 17
  %i.axx = tail call i64 @llvm.umin.i64(i64 %i.axw, i64 %i.au) ; 2 uses
  %i.axy = icmp ult i64 %i.axs, %i.axx
  br i1 %i.axy, label %.lr.ph750, label %StoreRangeH41.exit

.lr.ph750:                                        ; preds = %bb.hb
  %i.axz = load ptr, ptr %i.am, align 8, !tbaa !136, !alias.scope !742, !noalias !743 ; 3 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 131072
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axz, i64 196608
  %i.ayc = load ptr, ptr %i.an, align 8, !tbaa !136, !alias.scope !742, !noalias !743
  %.promoted753 = load i16, ptr %i.a, align 8, !tbaa !76, !alias.scope !742, !noalias !743
  br label %bb.hc

bb.hc:                                            ; preds = %.lr.ph750, %bb.hc
  %i.ayd = phi i16 [ %.promoted753, %.lr.ph750 ], [ %i.ayj, %bb.hc ] ; 3 uses
  %.4749 = phi i64 [ %i.axr, %.lr.ph750 ], [ %i.ayy, %bb.hc ]
  %.4198748 = phi i64 [ %i.axs, %.lr.ph750 ], [ %i.ayz, %bb.hc ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.aye = and i64 %.4198748, %3
  %i.ayf = getelementptr inbounds nuw i8, ptr %2, i64 %i.aye
  %.0.copyload.i.i404 = load i32, ptr %i.ayf, align 1, !alias.scope !744, !noalias !742
  %i.ayg = mul i32 %.0.copyload.i.i404, 506832829
  %i.ayh = lshr i32 %i.ayg, 17                    ; 2 uses
  %i.ayi = zext nneg i32 %i.ayh to i64            ; 2 uses
  %i.ayj = add i16 %i.ayd, 1                      ; 2 uses
  %i.ayk = zext i16 %i.ayd to i64
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %i.axz, i64 %i.ayi ; 2 uses
  %i.aym = load i32, ptr %i.ayl, align 4, !tbaa !64, !noalias !742
  %i.ayn = zext i32 %i.aym to i64
  %i.ayo = sub i64 %.4198748, %i.ayn
  %i.ayp = trunc i32 %i.ayh to i8
  %i.ayq = and i64 %.4198748, 65535
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayb, i64 %i.ayq
  store i8 %i.ayp, ptr %i.ayr, align 1, !tbaa !68, !noalias !742
  %spec.store.select.i403 = tail call i64 @llvm.umin.i64(i64 %i.ayo, i64 65535)
  %i.ays = trunc nuw i64 %spec.store.select.i403 to i16
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %i.ayc, i64 %i.ayk ; 2 uses
  store i16 %i.ays, ptr %i.ayt, align 2, !tbaa !148, !noalias !742
  %i.ayu = getelementptr inbounds nuw [2 x i8], ptr %i.aya, i64 %i.ayi ; 2 uses
  %i.ayv = load i16, ptr %i.ayu, align 2, !tbaa !76, !noalias !742
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayt, i64 2
  store i16 %i.ayv, ptr %i.ayw, align 2, !tbaa !147, !noalias !742
  %i.ayx = trunc i64 %.4198748 to i32
  store i32 %i.ayx, ptr %i.ayl, align 4, !tbaa !64, !noalias !742
  store i16 %i.ayd, ptr %i.ayu, align 2, !tbaa !76, !noalias !742
  %i.ayy = add i64 %.4749, 4                      ; 2 uses
  %i.ayz = add i64 %.4198748, 4                   ; 3 uses
  %i.aza = icmp ult i64 %i.ayz, %i.axx
  br i1 %i.aza, label %bb.hc, label %StoreRangeH41.exit.sink.split, !llvm.loop !693

bb.hd:                                            ; preds = %bb.ha
  %i.azb = add i64 %.0194898, 9
  %i.azc = tail call i64 @llvm.umin.i64(i64 %i.azb, i64 %i.l) ; 2 uses
  %i.azd = icmp ult i64 %i.axs, %i.azc
  br i1 %i.azd, label %.lr.ph744, label %StoreRangeH41.exit

.lr.ph744:                                        ; preds = %bb.hd
  %i.aze = load ptr, ptr %i.am, align 8, !tbaa !136, !alias.scope !745, !noalias !746 ; 3 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 131072
  %i.azg = getelementptr inbounds nuw i8, ptr %i.aze, i64 196608
  %i.azh = load ptr, ptr %i.an, align 8, !tbaa !136, !alias.scope !745, !noalias !746
  %.promoted747 = load i16, ptr %i.a, align 8, !tbaa !76, !alias.scope !745, !noalias !746
  br label %bb.he

bb.he:                                            ; preds = %.lr.ph744, %bb.he
  %i.azi = phi i16 [ %.promoted747, %.lr.ph744 ], [ %i.azo, %bb.he ] ; 3 uses
  %.5743 = phi i64 [ %i.axr, %.lr.ph744 ], [ %i.bad, %bb.he ]
  %.5199742 = phi i64 [ %i.axs, %.lr.ph744 ], [ %i.bae, %bb.he ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.azj = and i64 %.5199742, %3
  %i.azk = getelementptr inbounds nuw i8, ptr %2, i64 %i.azj
  %.0.copyload.i.i405 = load i32, ptr %i.azk, align 1, !alias.scope !747, !noalias !745
  %i.azl = mul i32 %.0.copyload.i.i405, 506832829
  %i.azm = lshr i32 %i.azl, 17                    ; 2 uses
  %i.azn = zext nneg i32 %i.azm to i64            ; 2 uses
  %i.azo = add i16 %i.azi, 1                      ; 2 uses
  %i.azp = zext i16 %i.azi to i64
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %i.aze, i64 %i.azn ; 2 uses
  %i.azr = load i32, ptr %i.azq, align 4, !tbaa !64, !noalias !745
  %i.azs = zext i32 %i.azr to i64
  %i.azt = sub i64 %.5199742, %i.azs
  %i.azu = trunc i32 %i.azm to i8
  %i.azv = and i64 %.5199742, 65535
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azg, i64 %i.azv
  store i8 %i.azu, ptr %i.azw, align 1, !tbaa !68, !noalias !745
  %spec.store.select.i402 = tail call i64 @llvm.umin.i64(i64 %i.azt, i64 65535)
end_hunk_5
begin_hunk_6_@CreateBackwardReferencesDH42:bb.a
  %i.arw = icmp eq i64 %.sroa.18424.1.ph, %i.arr
  br i1 %i.arw, label %ComputeDistanceCode.exit.thread, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.arx = icmp eq i64 %.sroa.18424.1.ph, %i.aru
  br i1 %i.arx, label %ComputeDistanceCode.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ary = icmp ult i64 %i.ars, 7
  br i1 %i.ary, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %.tr25.i = trunc nuw nsw i64 %i.ars to i32
  %i.arz = shl nuw nsw i32 %.tr25.i, 2
  %i.asa = lshr i32 158663784, %i.arz
  %i.asb = and i32 %i.asa, 15
  %i.asc = zext nneg i32 %i.asb to i64
  br label %ComputeDistanceCode.exit

bb.gd:                                            ; preds = %bb.gb
  %i.asd = icmp ult i64 %i.arv, 7
  br i1 %i.asd, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %.tr.i = trunc nuw nsw i64 %i.arv to i32
  %i.ase = shl nuw nsw i32 %.tr.i, 2
  %i.asf = lshr i32 266017486, %i.ase
  %i.asg = and i32 %i.asf, 15
  %i.ash = zext nneg i32 %i.asg to i64
  br label %ComputeDistanceCode.exit

bb.gf:                                            ; preds = %bb.gd
  %i.asi = load i32, ptr %i.az, align 4, !tbaa !64
  %i.asj = sext i32 %i.asi to i64
  %i.ask = icmp eq i64 %.sroa.18424.1.ph, %i.asj
  br i1 %i.ask, label %ComputeDistanceCode.exit, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.asl = load i32, ptr %i.ba, align 4, !tbaa !64
  %i.asm = sext i32 %i.asl to i64
  %.not547 = icmp eq i64 %.sroa.18424.1.ph, %i.asm
  br i1 %.not547, label %ComputeDistanceCode.exit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %split
  %i.asn = add i64 %.sroa.18424.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.ga, %bb.ge, %bb.gc, %bb.gf, %bb.gg, %bb.gh
  %.1.i = phi i64 [ %i.asn, %bb.gh ], [ 3, %bb.gg ], [ 1, %bb.ga ], [ %i.ash, %bb.ge ], [ %i.asc, %bb.gc ], [ 2, %bb.gf ] ; 3 uses
  %i.aso = icmp ule i64 %.sroa.18424.1.ph, %i.aro
  %i.asp = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.aso, i1 %i.asp, i1 false
  br i1 %or.cond, label %bb.gi, label %ComputeDistanceCode.exit.thread

bb.gi:                                            ; preds = %ComputeDistanceCode.exit
  %i.asq = load i32, ptr %i.az, align 4, !tbaa !64
  store i32 %i.asq, ptr %i.ba, align 4, !tbaa !64
  %i.asr = load <2 x i32>, ptr %7, align 4, !tbaa !64 ; 2 uses
  %i.ass = load i32, ptr %7, align 4, !tbaa !64
  store <2 x i32> %i.asr, ptr %i.w, align 4, !tbaa !64
  %i.ast = trunc i64 %.sroa.18424.1.ph to i32     ; 4 uses
  store i32 %i.ast, ptr %7, align 4, !tbaa !64
  %i.asu = insertelement <4 x i32> poison, i32 %i.ast, i64 0
  %i.asv = shufflevector <4 x i32> %i.asu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.asw = add nsw <4 x i32> %i.asv, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.asw, ptr %i.t, align 4, !tbaa !64, !alias.scope !845
  %i.asx = add nsw i32 %i.ast, -3
  store i32 %i.asx, ptr %i.u, align 4, !tbaa !64, !alias.scope !845
  %i.asy = add nsw i32 %i.ast, 3
  store i32 %i.asy, ptr %i.v, align 4, !tbaa !64, !alias.scope !845
  %i.asz = shufflevector <2 x i32> %i.asr, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.ata = add nsw <4 x i32> %i.asz, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.ata, ptr %i.x, align 4, !tbaa !64, !alias.scope !845
  %i.atb = insertelement <2 x i32> poison, i32 %i.ass, i64 0
  %i.atc = shufflevector <2 x i32> %i.atb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.atd = add nsw <2 x i32> %i.atc, <i32 -3, i32 3>
  store <2 x i32> %i.atd, ptr %i.ae, align 4, !tbaa !64, !alias.scope !845
  br label %ComputeDistanceCode.exit.thread

ComputeDistanceCode.exit.thread:                  ; preds = %bb.fz, %bb.gi, %ComputeDistanceCode.exit
  %.1.i543 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.gi ], [ 0, %bb.fz ] ; 3 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %.0201891, i64 16 ; 2 uses
  %i.atf = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.atf, ptr %.0201891, align 4, !tbaa !103
  %i.atg = shl i32 %.sroa.42.1.ph, 25
  %i.ath = trunc i64 %.sroa.0416.1.ph to i32      ; 2 uses
  %i.ati = or i32 %i.atg, %i.ath
  %i.atj = getelementptr inbounds nuw i8, ptr %.0201891, i64 4
  store i32 %i.ati, ptr %i.atj, align 4, !tbaa !104
  %i.atk = load i32, ptr %i.bb, align 4, !tbaa !105
  %i.atl = zext i32 %i.atk to i64                 ; 2 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %.0201891, i64 14
  %i.atn = getelementptr inbounds nuw i8, ptr %.0201891, i64 8
  %i.ato = add nuw nsw i64 %i.atl, 16             ; 2 uses
  %i.atp = icmp ult i64 %.1.i543, %i.ato
  br i1 %i.atp, label %PrefixEncodeCopyDistance.exit, label %bb.gj

bb.gj:                                            ; preds = %ComputeDistanceCode.exit.thread
  %i.atq = load i32, ptr %i.ao, align 8, !tbaa !106 ; 2 uses
  %i.atr = zext i32 %i.atq to i64                 ; 4 uses
  %i.ats = shl nuw i64 4, %i.atr
  %i.att = add i64 %.1.i543, -16
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
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %ComputeDistanceCode.exit.thread, %bb.gj
  %.sink.in = phi i64 [ %i.aup, %bb.gj ], [ %.1.i543, %ComputeDistanceCode.exit.thread ]
  %storemerge.i = phi i32 [ %i.aus, %bb.gj ], [ 0, %ComputeDistanceCode.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.atm, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.atn, align 4, !tbaa !64
  %i.aut = add nsw i32 %.sroa.42.1.ph, %i.ath     ; 6 uses
  %i.auu = and i16 %.sink, 1023
  %i.auv = icmp eq i16 %i.auu, 0
  %i.auw = getelementptr inbounds nuw i8, ptr %.0201891, i64 12
  %i.aux = icmp ult i64 %.3.ph, 6
  br i1 %i.aux, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.auy = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.gl:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.auz = icmp ult i64 %.3.ph, 130
  br i1 %i.auz, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
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
  br label %GetInsertLengthCode.exit

bb.gn:                                            ; preds = %bb.gl
  %i.avl = icmp ult i64 %.3.ph, 2114
  br i1 %i.avl, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.avm = add nsw i32 %i.atf, -66
  %i.avn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.avm, i1 true)
  %i.avo = trunc nuw nsw i32 %i.avn to i16
  %i.avp = sub nuw nsw i16 41, %i.avo
  br label %GetInsertLengthCode.exit

bb.gp:                                            ; preds = %bb.gn
  %i.avq = icmp ult i64 %.3.ph, 6210
  br i1 %i.avq, label %GetInsertLengthCode.exit, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.avr = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.avr, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.gk, %bb.gm, %bb.go, %bb.gp, %bb.gq
  %.0.i277 = phi i16 [ %i.auy, %bb.gk ], [ %i.avk, %bb.gm ], [ %i.avp, %bb.go ], [ 21, %bb.gp ], [ %..i, %bb.gq ] ; 3 uses
  %i.avs = icmp ult i32 %i.aut, 10
  br i1 %i.avs, label %GetCopyLengthCode.exit, label %bb.gr

bb.gr:                                            ; preds = %GetInsertLengthCode.exit
  %i.avt = icmp ult i32 %i.aut, 134
  br i1 %i.avt, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %narrow = add nsw i32 %i.aut, -6                ; 2 uses
  %i.avu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.avv = sub nuw nsw i32 30, %i.avu             ; 2 uses
  %i.avw = shl nuw nsw i32 %i.avv, 1
  %i.avx = lshr i32 %narrow, %i.avv
  %i.avy = add nuw nsw i32 %i.avx, %i.avw
  br label %GetCopyLengthCode.exit

bb.gt:                                            ; preds = %bb.gr
  %i.avz = icmp ult i32 %i.aut, 2118
  br i1 %i.avz, label %GetCopyLengthCode.exit.thread1205, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread1205:                ; preds = %bb.gt
  %i.awa = add nsw i32 %i.aut, -70
  %i.awb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.awa, i1 true)
  %i.awc = trunc nuw nsw i32 %i.awb to i16
  %i.awd = sub nuw nsw i16 43, %i.awc
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.gs
  %.sink1337 = phi i32 [ %i.avy, %bb.gs ], [ %i.aut, %GetInsertLengthCode.exit ]
  %.sink1336 = phi i16 [ 4, %bb.gs ], [ -2, %GetInsertLengthCode.exit ]
  %i.awe = trunc nuw nsw i32 %.sink1337 to i16
  %i.awf = add nsw i16 %.sink1336, %i.awe         ; 4 uses
  %i.awg = icmp samesign ult i16 %.0.i277, 8
  %or.cond.i279 = and i1 %i.auv, %i.awg
  %i.awh = icmp ult i16 %i.awf, 16
  %or.cond5.i = and i1 %or.cond.i279, %i.awh
  br i1 %or.cond5.i, label %bb.gu, label %GetCopyLengthCode.exit.thread

bb.gu:                                            ; preds = %GetCopyLengthCode.exit
  %i.awi = shl nuw nsw i16 %i.awf, 3
  %i.awj = and i16 %i.awi, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread1205, %bb.gt, %GetCopyLengthCode.exit
  %.0.i278537 = phi i16 [ %i.awf, %GetCopyLengthCode.exit ], [ 23, %bb.gt ], [ %i.awd, %GetCopyLengthCode.exit.thread1205 ] ; 2 uses
  %i.awk = lshr i16 %.0.i278537, 3
  %i.awl = lshr i16 %.0.i277, 3
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
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.gu, %GetCopyLengthCode.exit.thread
  %.0.i278538 = phi i16 [ %i.awf, %bb.gu ], [ %.0.i278537, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.awj, %bb.gu ], [ %i.awt, %GetCopyLengthCode.exit.thread ]
  %i.awu = and i16 %.0.i278538, 7
  %i.awv = shl nuw nsw i16 %.0.i277, 3
  %i.aww = and i16 %i.awv, 56
  %i.awx = or disjoint i16 %i.awu, %i.aww
  %.0.i280 = or disjoint i16 %i.awx, %.pn.i
  store i16 %.0.i280, ptr %i.auw, align 4, !tbaa !76
  %i.awy = load i64, ptr %11, align 8, !tbaa !58
  %i.awz = add i64 %i.awy, %.3.ph
  store i64 %i.awz, ptr %11, align 8, !tbaa !58
  %i.axa = add i64 %.3197.ph, 2                   ; 2 uses
  %i.axb = add i64 %.3197.ph, %.sroa.0416.1.ph    ; 4 uses
  %i.axc = tail call i64 @llvm.umin.i64(i64 %i.axb, i64 %spec.select) ; 3 uses
  %i.axd = lshr i64 %.sroa.0416.1.ph, 2
  %i.axe = icmp ult i64 %.sroa.18424.1.ph, %i.axd
  br i1 %i.axe, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %CombineLengthCodes.exit
  %i.axf = shl nuw i64 %.sroa.18424.1.ph, 2
  %i.axg = sub i64 %i.axb, %i.axf
  %i.axh = tail call i64 @llvm.umax.i64(i64 %i.axa, i64 %i.axg)
  %i.axi = tail call i64 @llvm.umin.i64(i64 %i.axc, i64 %i.axh)
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.axi, %bb.gv ], [ %i.axa, %CombineLengthCodes.exit ] ; 2 uses
  %i.axj = icmp ult i64 %.0, %i.axc
  br i1 %i.axj, label %.lr.ph890, label %StoreRangeH42.exit

.lr.ph890:                                        ; preds = %bb.gw
  %i.axk = load ptr, ptr %i.aq, align 8, !tbaa !136, !alias.scope !846, !noalias !847 ; 3 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 131072
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axk, i64 196608
  %i.axn = load ptr, ptr %i.ar, align 8, !tbaa !136, !alias.scope !846, !noalias !847
  br label %bb.gx

bb.gx:                                            ; preds = %.lr.ph890, %bb.gx
  %.0.i398889 = phi i64 [ %.0, %.lr.ph890 ], [ %i.ayn, %bb.gx ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %i.axo = and i64 %.0.i398889, %3
  %i.axp = getelementptr inbounds nuw i8, ptr %2, i64 %i.axo
  %.0.copyload.i.i408 = load i32, ptr %i.axp, align 1, !alias.scope !848, !noalias !846
  %i.axq = mul i32 %.0.copyload.i.i408, 506832829
  %i.axr = lshr i32 %i.axq, 17                    ; 2 uses
  %i.axs = zext nneg i32 %i.axr to i64            ; 3 uses
  %i.axt = and i64 %i.axs, 511                    ; 2 uses
  %i.axu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.axt ; 2 uses
  %i.axv = load i16, ptr %i.axu, align 2, !tbaa !76, !alias.scope !846, !noalias !847 ; 2 uses
  %i.axw = add i16 %i.axv, 1
  store i16 %i.axw, ptr %i.axu, align 2, !tbaa !76, !alias.scope !846, !noalias !847
  %i.axx = and i16 %i.axv, 511                    ; 2 uses
  %i.axy = zext nneg i16 %i.axx to i64
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %i.axk, i64 %i.axs ; 2 uses
  %i.aya = load i32, ptr %i.axz, align 4, !tbaa !64, !noalias !846
  %i.ayb = zext i32 %i.aya to i64
  %i.ayc = sub i64 %.0.i398889, %i.ayb
  %i.ayd = trunc i32 %i.axr to i8
  %i.aye = and i64 %.0.i398889, 65535
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axm, i64 %i.aye
  store i8 %i.ayd, ptr %i.ayf, align 1, !tbaa !68, !noalias !846
  %spec.store.select.i399 = tail call i64 @llvm.umin.i64(i64 %i.ayc, i64 65535)
  %i.ayg = trunc nuw i64 %spec.store.select.i399 to i16
  %i.ayh = getelementptr inbounds nuw [2048 x i8], ptr %i.axn, i64 %i.axt
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %i.ayh, i64 %i.axy ; 2 uses
  store i16 %i.ayg, ptr %i.ayi, align 2, !tbaa !154, !noalias !846
  %i.ayj = getelementptr inbounds nuw [2 x i8], ptr %i.axl, i64 %i.axs ; 2 uses
  %i.ayk = load i16, ptr %i.ayj, align 2, !tbaa !76, !noalias !846
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayi, i64 2
  store i16 %i.ayk, ptr %i.ayl, align 2, !tbaa !153, !noalias !846
  %i.aym = trunc i64 %.0.i398889 to i32
  store i32 %i.aym, ptr %i.axz, align 4, !tbaa !64, !noalias !846
  store i16 %i.axx, ptr %i.ayj, align 2, !tbaa !76, !noalias !846
  %i.ayn = add nuw i64 %.0.i398889, 1             ; 2 uses
  %exitcond990.not = icmp eq i64 %i.ayn, %i.axc
  br i1 %exitcond990.not, label %StoreRangeH42.exit, label %bb.gx, !llvm.loop !24

bb.gy:                                            ; preds = %LookupCompoundDictionaryMatch.exit214
  %i.ayo = add i64 %.0191893, 1                   ; 5 uses
  %i.ayp = add i64 %.0194892, 1                   ; 9 uses
  %i.ayq = icmp ugt i64 %i.ayp, %.0189894
  br i1 %i.ayq, label %bb.gz, label %StoreRangeH42.exit

bb.gz:                                            ; preds = %bb.gy
  %i.ayr = add i64 %.0189894, %i.ax
  %i.ays = icmp ugt i64 %i.ayp, %i.ayr
  br i1 %i.ays, label %bb.ha, label %bb.hc

bb.ha:                                            ; preds = %bb.gz
  %i.ayt = add i64 %.0194892, 17
  %i.ayu = tail call i64 @llvm.umin.i64(i64 %i.ayt, i64 %i.ay) ; 2 uses
  %i.ayv = icmp ult i64 %i.ayp, %i.ayu
  br i1 %i.ayv, label %.lr.ph749, label %StoreRangeH42.exit

.lr.ph749:                                        ; preds = %bb.ha
  %i.ayw = load ptr, ptr %i.aq, align 8, !tbaa !136, !alias.scope !849, !noalias !850 ; 3 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 131072
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayw, i64 196608
  %i.ayz = load ptr, ptr %i.ar, align 8, !tbaa !136, !alias.scope !849, !noalias !850
  br label %bb.hb

bb.hb:                                            ; preds = %.lr.ph749, %bb.hb
  %.4748 = phi i64 [ %i.ayo, %.lr.ph749 ], [ %i.azz, %bb.hb ]
  %.4198747 = phi i64 [ %i.ayp, %.lr.ph749 ], [ %i.baa, %bb.hb ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.aza = and i64 %.4198747, %3
  %i.azb = getelementptr inbounds nuw i8, ptr %2, i64 %i.aza
  %.0.copyload.i.i404 = load i32, ptr %i.azb, align 1, !alias.scope !851, !noalias !849
  %i.azc = mul i32 %.0.copyload.i.i404, 506832829
  %i.azd = lshr i32 %i.azc, 17                    ; 2 uses
  %i.aze = zext nneg i32 %i.azd to i64            ; 3 uses
  %i.azf = and i64 %i.aze, 511                    ; 2 uses
  %i.azg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.azf ; 2 uses
  %i.azh = load i16, ptr %i.azg, align 2, !tbaa !76, !alias.scope !849, !noalias !850 ; 2 uses
  %i.azi = add i16 %i.azh, 1
  store i16 %i.azi, ptr %i.azg, align 2, !tbaa !76, !alias.scope !849, !noalias !850
  %i.azj = and i16 %i.azh, 511                    ; 2 uses
  %i.azk = zext nneg i16 %i.azj to i64
  %i.azl = getelementptr inbounds nuw [4 x i8], ptr %i.ayw, i64 %i.aze ; 2 uses
  %i.azm = load i32, ptr %i.azl, align 4, !tbaa !64, !noalias !849
  %i.azn = zext i32 %i.azm to i64
  %i.azo = sub i64 %.4198747, %i.azn
  %i.azp = trunc i32 %i.azd to i8
  %i.azq = and i64 %.4198747, 65535
  %i.azr = getelementptr inbounds nuw i8, ptr %i.ayy, i64 %i.azq
  store i8 %i.azp, ptr %i.azr, align 1, !tbaa !68, !noalias !849
  %spec.store.select.i403 = tail call i64 @llvm.umin.i64(i64 %i.azo, i64 65535)
  %i.azs = trunc nuw i64 %spec.store.select.i403 to i16
  %i.azt = getelementptr inbounds nuw [2048 x i8], ptr %i.ayz, i64 %i.azf
  %i.azu = getelementptr inbounds nuw [4 x i8], ptr %i.azt, i64 %i.azk ; 2 uses
  store i16 %i.azs, ptr %i.azu, align 2, !tbaa !154, !noalias !849
  %i.azv = getelementptr inbounds nuw [2 x i8], ptr %i.ayx, i64 %i.aze ; 2 uses
  %i.azw = load i16, ptr %i.azv, align 2, !tbaa !76, !noalias !849
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azu, i64 2
  store i16 %i.azw, ptr %i.azx, align 2, !tbaa !153, !noalias !849
  %i.azy = trunc i64 %.4198747 to i32
  store i32 %i.azy, ptr %i.azl, align 4, !tbaa !64, !noalias !849
  store i16 %i.azj, ptr %i.azv, align 2, !tbaa !76, !noalias !849
  %i.azz = add i64 %.4748, 4                      ; 2 uses
  %i.baa = add i64 %.4198747, 4                   ; 3 uses
  %i.bab = icmp ult i64 %i.baa, %i.ayu
  br i1 %i.bab, label %bb.hb, label %StoreRangeH42.exit, !llvm.loop !800

bb.hc:                                            ; preds = %bb.gz
  %i.bac = add i64 %.0194892, 9
  %i.bad = tail call i64 @llvm.umin.i64(i64 %i.bac, i64 %i.l) ; 2 uses
  %i.bae = icmp ult i64 %i.ayp, %i.bad
  br i1 %i.bae, label %.lr.ph744, label %StoreRangeH42.exit

.lr.ph744:                                        ; preds = %bb.hc
  %i.baf = load ptr, ptr %i.aq, align 8, !tbaa !136, !alias.scope !852, !noalias !853 ; 3 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 131072
  %i.bah = getelementptr inbounds nuw i8, ptr %i.baf, i64 196608
  %i.bai = load ptr, ptr %i.ar, align 8, !tbaa !136, !alias.scope !852, !noalias !853
  br label %bb.hd

bb.hd:                                            ; preds = %.lr.ph744, %bb.hd
  %.5743 = phi i64 [ %i.ayo, %.lr.ph744 ], [ %i.bbi, %bb.hd ]
  %.5199742 = phi i64 [ %i.ayp, %.lr.ph744 ], [ %i.bbj, %bb.hd ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.baj = and i64 %.5199742, %3
  %i.bak = getelementptr inbounds nuw i8, ptr %2, i64 %i.baj
  %.0.copyload.i.i405 = load i32, ptr %i.bak, align 1, !alias.scope !854, !noalias !852
  %i.bal = mul i32 %.0.copyload.i.i405, 506832829
  %i.bam = lshr i32 %i.bal, 17                    ; 2 uses
  %i.ban = zext nneg i32 %i.bam to i64            ; 3 uses
  %i.bao = and i64 %i.ban, 511                    ; 2 uses
  %i.bap = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bao ; 2 uses
  %i.baq = load i16, ptr %i.bap, align 2, !tbaa !76, !alias.scope !852, !noalias !853 ; 2 uses
  %i.bar = add i16 %i.baq, 1
  store i16 %i.bar, ptr %i.bap, align 2, !tbaa !76, !alias.scope !852, !noalias !853
end_hunk_6
begin_hunk_7_@CreateBackwardReferencesDH65:bb.a
bb.hg:                                            ; preds = %bb.hf
  %.tr25.i = trunc nuw nsw i64 %i.axn to i32
  %i.axu = shl nuw nsw i32 %.tr25.i, 2
  %i.axv = lshr i32 158663784, %i.axu
  %i.axw = and i32 %i.axv, 15
  %i.axx = zext nneg i32 %i.axw to i64
  br label %ComputeDistanceCode.exit

bb.hh:                                            ; preds = %bb.hf
  %i.axy = icmp ult i64 %i.axq, 7
  br i1 %i.axy, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %.tr.i = trunc nuw nsw i64 %i.axq to i32
  %i.axz = shl nuw nsw i32 %.tr.i, 2
  %i.aya = lshr i32 266017486, %i.axz
  %i.ayb = and i32 %i.aya, 15
  %i.ayc = zext nneg i32 %i.ayb to i64
  br label %ComputeDistanceCode.exit

bb.hj:                                            ; preds = %bb.hh
  %i.ayd = load i32, ptr %i.br, align 4, !tbaa !64
  %i.aye = sext i32 %i.ayd to i64
  %i.ayf = icmp eq i64 %.sroa.20.1.ph, %i.aye
  br i1 %i.ayf, label %ComputeDistanceCode.exit, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ayg = load i32, ptr %i.bs, align 4, !tbaa !64
  %i.ayh = sext i32 %i.ayg to i64
  %.not591 = icmp eq i64 %.sroa.20.1.ph, %i.ayh
  br i1 %.not591, label %ComputeDistanceCode.exit, label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %split
  %i.ayi = add i64 %.sroa.20.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.he, %bb.hi, %bb.hg, %bb.hj, %bb.hk, %bb.hl
  %.1.i = phi i64 [ %i.ayi, %bb.hl ], [ 3, %bb.hk ], [ 1, %bb.he ], [ %i.ayc, %bb.hi ], [ %i.axx, %bb.hg ], [ 2, %bb.hj ] ; 5 uses
  %i.ayj = icmp ule i64 %.sroa.20.1.ph, %i.axj
  %i.ayk = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.ayj, i1 %i.ayk, i1 false
  br i1 %or.cond, label %bb.hm, label %PrepareDistanceCacheH65.exit

bb.hm:                                            ; preds = %ComputeDistanceCode.exit
  %i.ayl = load i32, ptr %i.br, align 4, !tbaa !64
  store i32 %i.ayl, ptr %i.bs, align 4, !tbaa !64
  %i.aym = load <2 x i32>, ptr %7, align 4, !tbaa !64 ; 3 uses
  store <2 x i32> %i.aym, ptr %i.bq, align 4, !tbaa !64
  %i.ayn = trunc i64 %.sroa.20.1.ph to i32        ; 4 uses
  store i32 %i.ayn, ptr %7, align 4, !tbaa !64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.ayo = load i32, ptr %i.t, align 8, !tbaa !108, !alias.scope !1082, !noalias !1083 ; 2 uses
  %i.ayp = icmp sgt i32 %i.ayo, 4
  br i1 %i.ayp, label %bb.hn, label %PrepareDistanceCacheH65.exit

bb.hn:                                            ; preds = %bb.hm
  %i.ayq = insertelement <4 x i32> poison, i32 %i.ayn, i64 0
  %i.ayr = shufflevector <4 x i32> %i.ayq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ays = add nsw <4 x i32> %i.ayr, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.ays, ptr %i.bt, align 4, !tbaa !64, !alias.scope !1084, !noalias !1082
  %i.ayt = add nsw i32 %i.ayn, -3
  store i32 %i.ayt, ptr %i.bu, align 4, !tbaa !64, !alias.scope !1084, !noalias !1082
  %i.ayu = add nsw i32 %i.ayn, 3
  store i32 %i.ayu, ptr %i.bv, align 4, !tbaa !64, !alias.scope !1084, !noalias !1082
  %i.ayv = icmp samesign ugt i32 %i.ayo, 10
  br i1 %i.ayv, label %bb.ho, label %PrepareDistanceCacheH65.exit

bb.ho:                                            ; preds = %bb.hn
  %i.ayw = shufflevector <2 x i32> %i.aym, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.ayx = add nsw <4 x i32> %i.ayw, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.ayx, ptr %i.bw, align 4, !tbaa !64, !alias.scope !1084, !noalias !1082
  %i.ayy = shufflevector <2 x i32> %i.aym, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ayz = add nsw <2 x i32> %i.ayy, <i32 -3, i32 3>
  store <2 x i32> %i.ayz, ptr %i.bx, align 4, !tbaa !64, !alias.scope !1084, !noalias !1082
  br label %PrepareDistanceCacheH65.exit

PrepareDistanceCacheH65.exit:                     ; preds = %bb.hd, %bb.ho, %bb.hn, %bb.hm, %ComputeDistanceCode.exit
  %.1.i585 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.ho ], [ %.1.i, %bb.hn ], [ %.1.i, %bb.hm ], [ 0, %bb.hd ] ; 3 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %.02011052, i64 16 ; 3 uses
  %i.azb = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.azb, ptr %.02011052, align 4, !tbaa !103
  %i.azc = shl i32 %.sroa.47.1.ph, 25
  %i.azd = trunc i64 %.sroa.0424.1.ph to i32      ; 2 uses
  %i.aze = or i32 %i.azc, %i.azd
  %i.azf = getelementptr inbounds nuw i8, ptr %.02011052, i64 4
  store i32 %i.aze, ptr %i.azf, align 4, !tbaa !104
  %i.azg = load i32, ptr %i.by, align 4, !tbaa !105
  %i.azh = zext i32 %i.azg to i64                 ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %.02011052, i64 14
  %i.azj = getelementptr inbounds nuw i8, ptr %.02011052, i64 8
  %i.azk = add nuw nsw i64 %i.azh, 16             ; 2 uses
  %i.azl = icmp ult i64 %.1.i585, %i.azk
  br i1 %i.azl, label %PrefixEncodeCopyDistance.exit, label %bb.hp

bb.hp:                                            ; preds = %PrepareDistanceCacheH65.exit
  %i.azm = load i32, ptr %i.aw, align 8, !tbaa !106 ; 2 uses
  %i.azn = zext i32 %i.azm to i64                 ; 4 uses
  %i.azo = shl nuw i64 4, %i.azn
  %i.azp = add i64 %.1.i585, -16
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
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %PrepareDistanceCacheH65.exit, %bb.hp
  %.sink.in = phi i64 [ %i.bal, %bb.hp ], [ %.1.i585, %PrepareDistanceCacheH65.exit ]
  %storemerge.i = phi i32 [ %i.bao, %bb.hp ], [ 0, %PrepareDistanceCacheH65.exit ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.azi, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.azj, align 4, !tbaa !64
  %i.bap = add nsw i32 %.sroa.47.1.ph, %i.azd     ; 6 uses
  %i.baq = and i16 %.sink, 1023
  %i.bar = icmp eq i16 %i.baq, 0
  %i.bas = getelementptr inbounds nuw i8, ptr %.02011052, i64 12
  %i.bat = icmp ult i64 %.3.ph, 6
  br i1 %i.bat, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.bau = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.hr:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.bav = icmp ult i64 %.3.ph, 130
  br i1 %i.bav, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
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
  br label %GetInsertLengthCode.exit

bb.ht:                                            ; preds = %bb.hr
  %i.bbh = icmp ult i64 %.3.ph, 2114
  br i1 %i.bbh, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.bbi = add nsw i32 %i.azb, -66
  %i.bbj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bbi, i1 true)
  %i.bbk = trunc nuw nsw i32 %i.bbj to i16
  %i.bbl = sub nuw nsw i16 41, %i.bbk
  br label %GetInsertLengthCode.exit

bb.hv:                                            ; preds = %bb.ht
  %i.bbm = icmp ult i64 %.3.ph, 6210
  br i1 %i.bbm, label %GetInsertLengthCode.exit, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.bbn = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.bbn, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.hq, %bb.hs, %bb.hu, %bb.hv, %bb.hw
  %.0.i277 = phi i16 [ %i.bau, %bb.hq ], [ %i.bbg, %bb.hs ], [ %i.bbl, %bb.hu ], [ 21, %bb.hv ], [ %..i, %bb.hw ] ; 3 uses
  %i.bbo = icmp ult i32 %i.bap, 10
  br i1 %i.bbo, label %GetCopyLengthCode.exit, label %bb.hx

bb.hx:                                            ; preds = %GetInsertLengthCode.exit
  %i.bbp = icmp ult i32 %i.bap, 134
  br i1 %i.bbp, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %narrow = add nsw i32 %i.bap, -6                ; 2 uses
  %i.bbq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.bbr = sub nuw nsw i32 30, %i.bbq             ; 2 uses
  %i.bbs = shl nuw nsw i32 %i.bbr, 1
  %i.bbt = lshr i32 %narrow, %i.bbr
  %i.bbu = add nuw nsw i32 %i.bbt, %i.bbs
  br label %GetCopyLengthCode.exit

bb.hz:                                            ; preds = %bb.hx
  %i.bbv = icmp ult i32 %i.bap, 2118
  br i1 %i.bbv, label %GetCopyLengthCode.exit.thread1419, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread1419:                ; preds = %bb.hz
  %i.bbw = add nsw i32 %i.bap, -70
  %i.bbx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bbw, i1 true)
  %i.bby = trunc nuw nsw i32 %i.bbx to i16
  %i.bbz = sub nuw nsw i16 43, %i.bby
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.hy
  %.sink1567 = phi i32 [ %i.bbu, %bb.hy ], [ %i.bap, %GetInsertLengthCode.exit ]
  %.sink1566 = phi i16 [ 4, %bb.hy ], [ -2, %GetInsertLengthCode.exit ]
  %i.bca = trunc nuw nsw i32 %.sink1567 to i16
  %i.bcb = add nsw i16 %.sink1566, %i.bca         ; 4 uses
  %i.bcc = icmp samesign ult i16 %.0.i277, 8
  %or.cond.i279 = and i1 %i.bar, %i.bcc
  %i.bcd = icmp ult i16 %i.bcb, 16
  %or.cond5.i = and i1 %or.cond.i279, %i.bcd
  br i1 %or.cond5.i, label %bb.ia, label %GetCopyLengthCode.exit.thread

bb.ia:                                            ; preds = %GetCopyLengthCode.exit
  %i.bce = shl nuw nsw i16 %i.bcb, 3
  %i.bcf = and i16 %i.bce, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread1419, %bb.hz, %GetCopyLengthCode.exit
  %.0.i278579 = phi i16 [ %i.bcb, %GetCopyLengthCode.exit ], [ 23, %bb.hz ], [ %i.bbz, %GetCopyLengthCode.exit.thread1419 ] ; 2 uses
  %i.bcg = lshr i16 %.0.i278579, 3
  %i.bch = lshr i16 %.0.i277, 3
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
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.ia, %GetCopyLengthCode.exit.thread
  %.0.i278580 = phi i16 [ %i.bcb, %bb.ia ], [ %.0.i278579, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.bcf, %bb.ia ], [ %i.bcp, %GetCopyLengthCode.exit.thread ]
  %i.bcq = and i16 %.0.i278580, 7
  %i.bcr = shl nuw nsw i16 %.0.i277, 3
  %i.bcs = and i16 %i.bcr, 56
  %i.bct = or disjoint i16 %i.bcq, %i.bcs
  %.0.i280 = or disjoint i16 %i.bct, %.pn.i
  store i16 %.0.i280, ptr %i.bas, align 4, !tbaa !76
  %i.bcu = load i64, ptr %11, align 8, !tbaa !58
  %i.bcv = add i64 %i.bcu, %.3.ph
  store i64 %i.bcv, ptr %11, align 8, !tbaa !58
  %i.bcw = add i64 %.3197.ph, 2                   ; 2 uses
  %i.bcx = add i64 %.3197.ph, %.sroa.0424.1.ph    ; 5 uses
  %i.bcy = tail call i64 @llvm.umin.i64(i64 %i.bcx, i64 %spec.select) ; 5 uses
  %i.bcz = lshr i64 %.sroa.0424.1.ph, 2
  %i.bda = icmp ult i64 %.sroa.20.1.ph, %i.bcz
  br i1 %i.bda, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %CombineLengthCodes.exit
  %i.bdb = shl nuw i64 %.sroa.20.1.ph, 2
  %i.bdc = sub i64 %i.bcx, %i.bdb
  %i.bdd = tail call i64 @llvm.umax.i64(i64 %i.bcw, i64 %i.bdc)
  %i.bde = tail call i64 @llvm.umin.i64(i64 %i.bcy, i64 %i.bdd)
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.bde, %bb.ib ], [ %i.bcw, %CombineLengthCodes.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %i.bdf = icmp ult i64 %.0, %i.bcy
  br i1 %i.bdf, label %.lr.ph1051, label %StoreRangeH65.exit

.lr.ph1051:                                       ; preds = %bb.ic
  %i.bdg = load i64, ptr %i.bc, align 8, !tbaa !111, !alias.scope !1087, !noalias !1088 ; 3 uses
  %i.bdh = load i32, ptr %i.bf, align 8, !tbaa !114, !alias.scope !1087, !noalias !1088 ; 3 uses
  %i.bdi = load i32, ptr %i.bd, align 4, !tbaa !112, !alias.scope !1087, !noalias !1088
  %i.bdj = zext nneg i32 %i.bdi to i64            ; 3 uses
  %i.bdk = sub nuw i64 %i.bcy, %.0
  %.neg1852 = add i64 %.0, 1
  %xtraiter = and i64 %i.bdk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph1051
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %i.bdl = and i64 %.0, %3
  %i.bdm = getelementptr inbounds nuw i8, ptr %2, i64 %i.bdl
  %.0.copyload.i.i.i373.prol = load i64, ptr %i.bdm, align 1, !alias.scope !1090, !noalias !1087
  %i.bdn = mul i64 %.0.copyload.i.i.i373.prol, %i.bdg
  %i.bdo = lshr i64 %i.bdn, 49                    ; 2 uses
  %i.bdp = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bdo ; 2 uses
  %i.bdq = load i16, ptr %i.bdp, align 2, !tbaa !76, !noalias !1091 ; 2 uses
  %i.bdr = zext i16 %i.bdq to i32
  %i.bds = and i32 %i.bdh, %i.bdr
  %i.bdt = zext nneg i32 %i.bds to i64
  %i.bdu = shl i64 %i.bdo, %i.bdj
  %i.bdv = add i16 %i.bdq, 1
  store i16 %i.bdv, ptr %i.bdp, align 2, !tbaa !76, !noalias !1091
  %i.bdw = trunc i64 %.0 to i32
  %i.bdx = getelementptr [4 x i8], ptr %i.bb, i64 %i.bdu
  %i.bdy = getelementptr [4 x i8], ptr %i.bdx, i64 %i.bdt
  store i32 %i.bdw, ptr %i.bdy, align 4, !tbaa !64, !noalias !1091
  %i.bdz = add nuw i64 %.0, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph1051
  %.0.i.i3721049.unr = phi i64 [ %.0, %.lr.ph1051 ], [ %i.bdz, %.prol.loopexit.unr-lcssa ]
  %i.bea = icmp eq i64 %i.bcy, %.neg1852
  br i1 %i.bea, label %StoreRangeH65.exit, label %.lr.ph1051.new

.lr.ph1051.new:                                   ; preds = %.prol.loopexit, %.lr.ph1051.new
  %.0.i.i3721049 = phi i64 [ %i.bfe, %.lr.ph1051.new ], [ %.0.i.i3721049.unr, %.prol.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %i.beb = and i64 %.0.i.i3721049, %3
  %i.bec = getelementptr inbounds nuw i8, ptr %2, i64 %i.beb
  %.0.copyload.i.i.i373 = load i64, ptr %i.bec, align 1, !alias.scope !1090, !noalias !1087
  %i.bed = mul i64 %.0.copyload.i.i.i373, %i.bdg
  %i.bee = lshr i64 %i.bed, 49                    ; 2 uses
  %i.bef = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bee ; 2 uses
  %i.beg = load i16, ptr %i.bef, align 2, !tbaa !76, !noalias !1091 ; 2 uses
  %i.beh = zext i16 %i.beg to i32
  %i.bei = and i32 %i.bdh, %i.beh
  %i.bej = zext nneg i32 %i.bei to i64
  %i.bek = shl i64 %i.bee, %i.bdj
  %i.bel = add i16 %i.beg, 1
  store i16 %i.bel, ptr %i.bef, align 2, !tbaa !76, !noalias !1091
  %i.bem = trunc i64 %.0.i.i3721049 to i32
  %i.ben = getelementptr [4 x i8], ptr %i.bb, i64 %i.bek
  %i.beo = getelementptr [4 x i8], ptr %i.ben, i64 %i.bej
  store i32 %i.bem, ptr %i.beo, align 4, !tbaa !64, !noalias !1091
  %i.bep = add nuw i64 %.0.i.i3721049, 1          ; 2 uses
  %i.beq = and i64 %i.bep, %3
  %i.ber = getelementptr inbounds nuw i8, ptr %2, i64 %i.beq
  %.0.copyload.i.i.i373.1 = load i64, ptr %i.ber, align 1, !alias.scope !1090, !noalias !1092
  %i.bes = mul i64 %.0.copyload.i.i.i373.1, %i.bdg
  %i.bet = lshr i64 %i.bes, 49                    ; 2 uses
  %i.beu = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bet ; 2 uses
  %i.bev = load i16, ptr %i.beu, align 2, !tbaa !76, !noalias !1093 ; 2 uses
  %i.bew = zext i16 %i.bev to i32
  %i.bex = and i32 %i.bdh, %i.bew
  %i.bey = zext nneg i32 %i.bex to i64
  %i.bez = shl i64 %i.bet, %i.bdj
  %i.bfa = add i16 %i.bev, 1
  store i16 %i.bfa, ptr %i.beu, align 2, !tbaa !76, !noalias !1093
  %i.bfb = trunc i64 %i.bep to i32
  %i.bfc = getelementptr [4 x i8], ptr %i.bb, i64 %i.bez
  %i.bfd = getelementptr [4 x i8], ptr %i.bfc, i64 %i.bey
  store i32 %i.bfb, ptr %i.bfd, align 4, !tbaa !64, !noalias !1093
  %i.bfe = add nuw i64 %.0.i.i3721049, 2          ; 2 uses
  %exitcond1173.not.1 = icmp eq i64 %i.bfe, %i.bcy
  br i1 %exitcond1173.not.1, label %StoreRangeH65.exit, label %.lr.ph1051.new, !llvm.loop !9

bb.id:                                            ; preds = %LookupCompoundDictionaryMatch.exit214
  %i.bff = add i64 %.01911054, 1                  ; 5 uses
  %i.bfg = add i64 %.01941053, 1                  ; 9 uses
  %i.bfh = icmp ugt i64 %i.bfg, %.01891055
  br i1 %i.bfh, label %bb.ie, label %StoreRangeH65.exit

bb.ie:                                            ; preds = %bb.id
  %i.bfi = add i64 %.01891055, %i.bp
  %i.bfj = icmp ugt i64 %i.bfg, %i.bfi
  br i1 %i.bfj, label %bb.if, label %bb.ih

bb.if:                                            ; preds = %bb.ie
  %i.bfk = add i64 %.01941053, 17
  %i.bfl = tail call i64 @llvm.umin.i64(i64 %i.bfk, i64 %i.k) ; 2 uses
  %i.bfm = icmp ult i64 %i.bfg, %i.bfl
  br i1 %i.bfm, label %.lr.ph857, label %StoreRangeH65.exit

.lr.ph857:                                        ; preds = %bb.if
  %i.bfn = load i32, ptr %i.bf, align 8, !tbaa !114, !alias.scope !1094, !noalias !1095
  %i.bfo = load i32, ptr %i.bd, align 4, !tbaa !112, !alias.scope !1094, !noalias !1095
  %i.bfp = zext nneg i32 %i.bfo to i64
  br label %bb.ig

bb.ig:                                            ; preds = %.lr.ph857, %bb.ig
  %.4855 = phi i64 [ %i.bff, %.lr.ph857 ], [ %i.bge, %bb.ig ]
  %.4198854 = phi i64 [ %i.bfg, %.lr.ph857 ], [ %i.bgf, %bb.ig ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  %i.bfq = and i64 %.4198854, %3
  %i.bfr = getelementptr inbounds nuw i8, ptr %2, i64 %i.bfq
  %.0.copyload.i.i.i375 = load i64, ptr %i.bfr, align 1, !alias.scope !1099, !noalias !1094
  %i.bfs = mul i64 %.0.copyload.i.i.i375, %i.df
  %i.bft = lshr i64 %i.bfs, 49                    ; 2 uses
  %i.bfu = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bft ; 2 uses
  %i.bfv = load i16, ptr %i.bfu, align 2, !tbaa !76, !noalias !1100 ; 2 uses
  %i.bfw = zext i16 %i.bfv to i32
  %i.bfx = and i32 %i.bfn, %i.bfw
  %i.bfy = zext nneg i32 %i.bfx to i64
  %i.bfz = shl i64 %i.bft, %i.bfp
  %i.bga = add i16 %i.bfv, 1
  store i16 %i.bga, ptr %i.bfu, align 2, !tbaa !76, !noalias !1100
  %i.bgb = trunc i64 %.4198854 to i32
  %i.bgc = getelementptr [4 x i8], ptr %i.bb, i64 %i.bfz
  %i.bgd = getelementptr [4 x i8], ptr %i.bgc, i64 %i.bfy
  store i32 %i.bgb, ptr %i.bgd, align 4, !tbaa !64, !noalias !1100
  %i.bge = add i64 %.4855, 4                      ; 2 uses
  %i.bgf = add i64 %.4198854, 4                   ; 3 uses
  %i.bgg = icmp ult i64 %i.bgf, %i.bfl
  br i1 %i.bgg, label %bb.ig, label %StoreRangeH65.exit, !llvm.loop !1010

bb.ih:                                            ; preds = %bb.ie
  %i.bgh = add i64 %.01941053, 9
  %i.bgi = tail call i64 @llvm.umin.i64(i64 %i.bgh, i64 %i.k) ; 2 uses
  %i.bgj = icmp ult i64 %i.bfg, %i.bgi
  br i1 %i.bgj, label %.lr.ph851, label %StoreRangeH65.exit

.lr.ph851:                                        ; preds = %bb.ih
  %i.bgk = load i32, ptr %i.bf, align 8, !tbaa !114, !alias.scope !1101, !noalias !1102
end_hunk_7
begin_hunk_8_@CreateBackwardReferencesNH2:bb.a
  %.3.ph = phi i64 [ %.1176, %FindLongestMatchH2.exit._crit_edge ], [ %i.pn, %bb.aw ] ; 9 uses
  %i.ps = shl i64 %.sroa.0272.1.ph, 1
  %i.pt = add i64 %i.ps, %i.p
  %i.pu = add i64 %i.pt, %.3181.ph                ; 3 uses
  %i.pv = add i64 %.pre-phi576, %i.r              ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.14.1.ph, %i.pv
  br i1 %.not.i, label %bb.bf, label %bb.ax

bb.ax:                                            ; preds = %split
  %i.pw = add i64 %.sroa.14.1.ph, 3               ; 2 uses
  %i.px = load i32, ptr %7, align 4, !tbaa !64
  %i.py = sext i32 %i.px to i64                   ; 2 uses
  %i.pz = sub i64 %i.pw, %i.py                    ; 2 uses
  %i.qa = load i32, ptr %i.ag, align 4, !tbaa !64
  %i.qb = sext i32 %i.qa to i64                   ; 2 uses
  %i.qc = sub i64 %i.pw, %i.qb                    ; 2 uses
  %i.qd = icmp eq i64 %.sroa.14.1.ph, %i.py
  br i1 %i.qd, label %ComputeDistanceCode.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.qe = icmp eq i64 %.sroa.14.1.ph, %i.qb
  br i1 %i.qe, label %ComputeDistanceCode.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.qf = icmp ult i64 %i.pz, 7
  br i1 %i.qf, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %.tr25.i = trunc nuw nsw i64 %i.pz to i32
  %i.qg = shl nuw nsw i32 %.tr25.i, 2
  %i.qh = lshr i32 158663784, %i.qg
  %i.qi = and i32 %i.qh, 15
  %i.qj = zext nneg i32 %i.qi to i64
  br label %ComputeDistanceCode.exit

bb.bb:                                            ; preds = %bb.az
  %i.qk = icmp ult i64 %i.qc, 7
  br i1 %i.qk, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.tr.i = trunc nuw nsw i64 %i.qc to i32
  %i.ql = shl nuw nsw i32 %.tr.i, 2
  %i.qm = lshr i32 266017486, %i.ql
  %i.qn = and i32 %i.qm, 15
  %i.qo = zext nneg i32 %i.qn to i64
  br label %ComputeDistanceCode.exit

bb.bd:                                            ; preds = %bb.bb
  %i.qp = load i32, ptr %i.ah, align 4, !tbaa !64
  %i.qq = sext i32 %i.qp to i64
  %i.qr = icmp eq i64 %.sroa.14.1.ph, %i.qq
  br i1 %i.qr, label %ComputeDistanceCode.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.qs = load i32, ptr %i.ai, align 4, !tbaa !64
  %i.qt = sext i32 %i.qs to i64
  %.not366 = icmp eq i64 %.sroa.14.1.ph, %i.qt
  br i1 %.not366, label %ComputeDistanceCode.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %split
  %i.qu = add i64 %.sroa.14.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.ay, %bb.bc, %bb.ba, %bb.bd, %bb.be, %bb.bf
  %.1.i = phi i64 [ %i.qu, %bb.bf ], [ 3, %bb.be ], [ 1, %bb.ay ], [ %i.qo, %bb.bc ], [ %i.qj, %bb.ba ], [ 2, %bb.bd ] ; 3 uses
  %i.qv = icmp ule i64 %.sroa.14.1.ph, %i.pv
  %i.qw = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.qv, i1 %i.qw, i1 false
  br i1 %or.cond, label %bb.bg, label %ComputeDistanceCode.exit.thread

bb.bg:                                            ; preds = %ComputeDistanceCode.exit
  %i.qx = load i32, ptr %i.ah, align 4, !tbaa !64
  store i32 %i.qx, ptr %i.ai, align 4, !tbaa !64
  %i.qy = load <2 x i32>, ptr %7, align 4, !tbaa !64
  store <2 x i32> %i.qy, ptr %i.ag, align 4, !tbaa !64
  %i.qz = trunc i64 %.sroa.14.1.ph to i32
  store i32 %i.qz, ptr %7, align 4, !tbaa !64
  br label %ComputeDistanceCode.exit.thread

ComputeDistanceCode.exit.thread:                  ; preds = %bb.ax, %bb.bg, %ComputeDistanceCode.exit
  %.1.i362 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.bg ], [ 0, %bb.ax ] ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.0185518, i64 16 ; 3 uses
  %i.rb = trunc i64 %.3.ph to i32                 ; 2 uses
  store i32 %i.rb, ptr %.0185518, align 4, !tbaa !103
  %i.rc = shl i32 %.sroa.33.1.ph, 25
  %i.rd = trunc i64 %.sroa.0272.1.ph to i32       ; 2 uses
  %i.re = or i32 %i.rc, %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %.0185518, i64 4
  store i32 %i.re, ptr %i.rf, align 4, !tbaa !104
  %i.rg = load i32, ptr %i.aj, align 4, !tbaa !105
  %i.rh = zext i32 %i.rg to i64                   ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.0185518, i64 14
  %i.rj = getelementptr inbounds nuw i8, ptr %.0185518, i64 8
  %i.rk = add nuw nsw i64 %i.rh, 16               ; 2 uses
  %i.rl = icmp ult i64 %.1.i362, %i.rk
  br i1 %i.rl, label %PrefixEncodeCopyDistance.exit, label %bb.bh

bb.bh:                                            ; preds = %ComputeDistanceCode.exit.thread
  %i.rm = load i32, ptr %i.z, align 8, !tbaa !106 ; 2 uses
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
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %ComputeDistanceCode.exit.thread, %bb.bh
  %.sink.in = phi i64 [ %i.sl, %bb.bh ], [ %.1.i362, %ComputeDistanceCode.exit.thread ]
  %storemerge.i = phi i32 [ %i.so, %bb.bh ], [ 0, %ComputeDistanceCode.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.ri, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.rj, align 4, !tbaa !64
  %i.sp = add nsw i32 %.sroa.33.1.ph, %i.rd       ; 6 uses
  %i.sq = and i16 %.sink, 1023
  %i.sr = icmp eq i16 %i.sq, 0
  %i.ss = getelementptr inbounds nuw i8, ptr %.0185518, i64 12
  %i.st = icmp ult i64 %.3.ph, 6
  br i1 %i.st, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.su = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.bj:                                            ; preds = %PrefixEncodeCopyDistance.exit
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
  br label %GetInsertLengthCode.exit

bb.bl:                                            ; preds = %bb.bj
  %i.th = icmp ult i64 %.3.ph, 2114
  br i1 %i.th, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ti = add nsw i32 %i.rb, -66
  %i.tj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ti, i1 true)
  %i.tk = trunc nuw nsw i32 %i.tj to i16
  %i.tl = sub nuw nsw i16 41, %i.tk
  br label %GetInsertLengthCode.exit

bb.bn:                                            ; preds = %bb.bl
  %i.tm = icmp ult i64 %.3.ph, 6210
  br i1 %i.tm, label %GetInsertLengthCode.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.tn = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.tn, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.bi, %bb.bk, %bb.bm, %bb.bn, %bb.bo
  %.0.i197 = phi i16 [ %i.su, %bb.bi ], [ %i.tg, %bb.bk ], [ %i.tl, %bb.bm ], [ 21, %bb.bn ], [ %..i, %bb.bo ] ; 3 uses
  %i.to = icmp ult i32 %i.sp, 10
  br i1 %i.to, label %GetCopyLengthCode.exit, label %bb.bp

bb.bp:                                            ; preds = %GetInsertLengthCode.exit
  %i.tp = icmp ult i32 %i.sp, 134
  br i1 %i.tp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %narrow = add nsw i32 %i.sp, -6                 ; 2 uses
  %i.tq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.tr = sub nuw nsw i32 30, %i.tq               ; 2 uses
  %i.ts = shl nuw nsw i32 %i.tr, 1
  %i.tt = lshr i32 %narrow, %i.tr
  %i.tu = add nuw nsw i32 %i.tt, %i.ts
  br label %GetCopyLengthCode.exit

bb.br:                                            ; preds = %bb.bp
  %i.tv = icmp ult i32 %i.sp, 2118
  br i1 %i.tv, label %GetCopyLengthCode.exit.thread657, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread657:                 ; preds = %bb.br
  %i.tw = add nsw i32 %i.sp, -70
  %i.tx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.tw, i1 true)
  %i.ty = trunc nuw nsw i32 %i.tx to i16
  %i.tz = sub nuw nsw i16 43, %i.ty
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.bq
  %.sink717 = phi i32 [ %i.tu, %bb.bq ], [ %i.sp, %GetInsertLengthCode.exit ]
  %.sink716 = phi i16 [ 4, %bb.bq ], [ -2, %GetInsertLengthCode.exit ]
  %i.ua = trunc nuw nsw i32 %.sink717 to i16
  %i.ub = add nsw i16 %.sink716, %i.ua            ; 4 uses
  %i.uc = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.sr, %i.uc
  %i.ud = icmp ult i16 %i.ub, 16
  %or.cond5.i = and i1 %or.cond.i, %i.ud
  br i1 %or.cond5.i, label %bb.bs, label %GetCopyLengthCode.exit.thread

bb.bs:                                            ; preds = %GetCopyLengthCode.exit
  %i.ue = shl nuw nsw i16 %i.ub, 3
  %i.uf = and i16 %i.ue, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread657, %bb.br, %GetCopyLengthCode.exit
  %.0.i198356 = phi i16 [ %i.ub, %GetCopyLengthCode.exit ], [ 23, %bb.br ], [ %i.tz, %GetCopyLengthCode.exit.thread657 ] ; 2 uses
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
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.bs, %GetCopyLengthCode.exit.thread
  %.0.i198357 = phi i16 [ %i.ub, %bb.bs ], [ %.0.i198356, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.uf, %bb.bs ], [ %i.up, %GetCopyLengthCode.exit.thread ]
  %i.uq = and i16 %.0.i198357, 7
  %i.ur = shl nuw nsw i16 %.0.i197, 3
  %i.us = and i16 %i.ur, 56
  %i.ut = or disjoint i16 %i.uq, %i.us
  %.0.i199 = or disjoint i16 %i.ut, %.pn.i
  store i16 %.0.i199, ptr %i.ss, align 4, !tbaa !76
  %i.uu = load i64, ptr %11, align 8, !tbaa !58
  %i.uv = add i64 %i.uu, %.3.ph
  store i64 %i.uv, ptr %11, align 8, !tbaa !58
  %i.uw = add i64 %.3181.ph, 2                    ; 2 uses
  %i.ux = add i64 %.3181.ph, %.sroa.0272.1.ph     ; 5 uses
  %i.uy = tail call i64 @llvm.umin.i64(i64 %i.ux, i64 %spec.select) ; 5 uses
  %i.uz = lshr i64 %.sroa.0272.1.ph, 2
  %i.va = icmp ult i64 %.sroa.14.1.ph, %i.uz
  br i1 %i.va, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %CombineLengthCodes.exit
  %i.vb = shl nuw i64 %.sroa.14.1.ph, 2
  %i.vc = sub i64 %i.ux, %i.vb
  %i.vd = tail call i64 @llvm.umax.i64(i64 %i.uw, i64 %i.vc)
  %i.ve = tail call i64 @llvm.umin.i64(i64 %i.uy, i64 %i.vd)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.ve, %bb.bt ], [ %i.uw, %CombineLengthCodes.exit ] ; 7 uses
  %i.vf = icmp ult i64 %.0, %i.uy
  br i1 %i.vf, label %.lr.ph517.preheader, label %StoreRangeH2.exit

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
  store i32 %i.vl, ptr %i.vm, align 4, !tbaa !64, !noalias !1145
  %i.vn = add nuw i64 %.0, 1
  br label %.lr.ph517.prol.loopexit

.lr.ph517.prol.loopexit:                          ; preds = %.lr.ph517.prol, %.lr.ph517.preheader
  %.0.i264516.unr = phi i64 [ %.0, %.lr.ph517.preheader ], [ %i.vn, %.lr.ph517.prol ]
  %i.vo = icmp eq i64 %i.uy, %.neg827
  br i1 %i.vo, label %StoreRangeH2.exit, label %.lr.ph517

.lr.ph517:                                        ; preds = %.lr.ph517.prol.loopexit, %.lr.ph517
  %.0.i264516 = phi i64 [ %i.wc, %.lr.ph517 ], [ %.0.i264516.unr, %.lr.ph517.prol.loopexit ] ; 4 uses
  %i.vp = and i64 %.0.i264516, %3
  %i.vq = getelementptr inbounds nuw i8, ptr %2, i64 %i.vp
  %.val266 = load i64, ptr %i.vq, align 1
  %i.vr = mul i64 %.val266, 8922571613522624512
  %i.vs = lshr i64 %i.vr, 48
  %i.vt = trunc i64 %.0.i264516 to i32
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.vs
  store i32 %i.vt, ptr %i.vu, align 4, !tbaa !64, !noalias !1145
  %i.vv = add nuw i64 %.0.i264516, 1              ; 2 uses
  %i.vw = and i64 %i.vv, %3
  %i.vx = getelementptr inbounds nuw i8, ptr %2, i64 %i.vw
  %.val266.1 = load i64, ptr %i.vx, align 1
  %i.vy = mul i64 %.val266.1, 8922571613522624512
  %i.vz = lshr i64 %i.vy, 48
  %i.wa = trunc i64 %i.vv to i32
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.vz
  store i32 %i.wa, ptr %i.wb, align 4, !tbaa !64, !noalias !1145
  %i.wc = add nuw i64 %.0.i264516, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.wc, %i.uy
  br i1 %exitcond.not.1, label %StoreRangeH2.exit, label %.lr.ph517, !llvm.loop !1120

FindLongestMatchH2.exit263.thread:                ; preds = %bb.y, %bb.x, %FindMatchLengthWithLimit.exit.i.i229, %bb.s, %bb.r, %.critedge102.i214, %.critedge100.i201, %bb.m, %FindLongestMatchH2.exit263
  %i.wd = add i64 %.0175520, 1                    ; 5 uses
  %i.we = add i64 %.0178519, 1                    ; 9 uses
  %i.wf = icmp ugt i64 %i.we, %.0173521
  br i1 %i.wf, label %bb.bv, label %StoreRangeH2.exit

bb.bv:                                            ; preds = %FindLongestMatchH2.exit263.thread
  %i.wg = add i64 %.0173521, %i.af
  %i.wh = icmp ugt i64 %i.we, %i.wg
  br i1 %i.wh, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.wi = add i64 %.0178519, 17
  %i.wj = tail call i64 @llvm.umin.i64(i64 %i.wi, i64 %i.l) ; 2 uses
  %i.wk = icmp ult i64 %i.we, %i.wj
  br i1 %i.wk, label %.lr.ph462, label %StoreRangeH2.exit

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
  store i32 %i.wp, ptr %i.wq, align 4, !tbaa !64, !noalias !1146
  %i.wr = add i64 %.4461, 4                       ; 2 uses
  %i.ws = add i64 %.4182460, 4                    ; 3 uses
  %i.wt = icmp ult i64 %i.ws, %i.wj
  br i1 %i.wt, label %.lr.ph462, label %StoreRangeH2.exit, !llvm.loop !1123

bb.bx:                                            ; preds = %bb.bv
  %i.wu = add i64 %.0178519, 9
  %i.wv = tail call i64 @llvm.umin.i64(i64 %i.wu, i64 %i.l) ; 2 uses
  %i.ww = icmp ult i64 %i.we, %i.wv
  br i1 %i.ww, label %.lr.ph457, label %StoreRangeH2.exit

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
  store i32 %i.xb, ptr %i.xc, align 4, !tbaa !64, !noalias !1147
  %i.xd = add i64 %.5456, 2                       ; 2 uses
  %i.xe = add i64 %.5183455, 2                    ; 3 uses
  %i.xf = icmp ult i64 %i.xe, %i.wv
  br i1 %i.xf, label %.lr.ph457, label %StoreRangeH2.exit, !llvm.loop !1126

StoreRangeH2.exit:                                ; preds = %.lr.ph457, %.lr.ph462, %.lr.ph517.prol.loopexit, %.lr.ph517, %bb.bx, %bb.bw, %bb.bu, %FindLongestMatchH2.exit263.thread
  %.1186 = phi ptr [ %i.ra, %bb.bu ], [ %.0185518, %FindLongestMatchH2.exit263.thread ], [ %.0185518, %bb.bw ], [ %.0185518, %bb.bx ], [ %.0185518, %.lr.ph462 ], [ %i.ra, %.lr.ph517.prol.loopexit ], [ %i.ra, %.lr.ph517 ], [ %.0185518, %.lr.ph457 ] ; 2 uses
  %.6184 = phi i64 [ %i.ux, %bb.bu ], [ %i.we, %FindLongestMatchH2.exit263.thread ], [ %i.we, %bb.bw ], [ %i.we, %bb.bx ], [ %i.ws, %.lr.ph462 ], [ %i.ux, %.lr.ph517.prol.loopexit ], [ %i.ux, %.lr.ph517 ], [ %i.xe, %.lr.ph457 ] ; 3 uses
  %.6 = phi i64 [ 0, %bb.bu ], [ %i.wd, %FindLongestMatchH2.exit263.thread ], [ %i.wd, %bb.bw ], [ %i.wd, %bb.bx ], [ %i.wr, %.lr.ph462 ], [ 0, %.lr.ph517.prol.loopexit ], [ 0, %.lr.ph517 ], [ %i.xd, %.lr.ph457 ] ; 2 uses
  %.1174 = phi i64 [ %i.pu, %bb.bu ], [ %.0173521, %FindLongestMatchH2.exit263.thread ], [ %.0173521, %bb.bw ], [ %.0173521, %bb.bx ], [ %.0173521, %.lr.ph462 ], [ %i.pu, %.lr.ph517.prol.loopexit ], [ %i.pu, %.lr.ph517 ], [ %.0173521, %.lr.ph457 ]
  %i.xg = add i64 %.6184, 8
  %i.xh = icmp ult i64 %i.xg, %i.j
  br i1 %i.xh, label %bb.b, label %._crit_edge, !llvm.loop !1127

._crit_edge:                                      ; preds = %StoreRangeH2.exit, %bb.a
  %.0185.lcssa = phi ptr [ %9, %bb.a ], [ %.1186, %StoreRangeH2.exit ]
  %.0178.lcssa = phi i64 [ %1, %bb.a ], [ %.6184, %StoreRangeH2.exit ]
  %.0175.lcssa = phi i64 [ %i.i, %bb.a ], [ %.6, %StoreRangeH2.exit ]
  %i.xi = sub i64 %i.j, %.0178.lcssa
  %i.xj = add i64 %i.xi, %.0175.lcssa
  store i64 %i.xj, ptr %8, align 8, !tbaa !58
  %i.xk = ptrtoint ptr %.0185.lcssa to i64
  %i.xl = ptrtoint ptr %9 to i64
  %i.xm = sub i64 %i.xk, %i.xl
  %i.xn = ashr exact i64 %i.xm, 4
  %i.xo = load i64, ptr %10, align 8, !tbaa !58
  %i.xp = add i64 %i.xo, %i.xn
  store i64 %i.xp, ptr %10, align 8, !tbaa !58
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @CreateBackwardReferencesNH3(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr noundef %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = add i64 %i.f, -16                        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !57
  %i.j = load i64, ptr %7, align 8, !tbaa !58     ; 2 uses
end_hunk_8
begin_hunk_9_@CreateBackwardReferencesNH4:bb.a
  %.3.ph = phi i64 [ %.1176, %FindLongestMatchH4.exit._crit_edge ], [ %i.aaj, %bb.cv ] ; 9 uses
  %i.aao = shl i64 %.sroa.0281.1.ph, 1
  %i.aap = add i64 %i.aao, %i.r
  %i.aaq = add i64 %i.aap, %.3181.ph              ; 3 uses
  %i.aar = add i64 %.pre-phi601, %i.t             ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.14.1.ph, %i.aar
  br i1 %.not.i, label %bb.de, label %bb.cw

bb.cw:                                            ; preds = %split
  %i.aas = add i64 %.sroa.14.1.ph, 3              ; 2 uses
  %i.aat = load i32, ptr %7, align 4, !tbaa !64
  %i.aau = sext i32 %i.aat to i64                 ; 2 uses
  %i.aav = sub i64 %i.aas, %i.aau                 ; 2 uses
  %i.aaw = load i32, ptr %i.ah, align 4, !tbaa !64
  %i.aax = sext i32 %i.aaw to i64                 ; 2 uses
  %i.aay = sub i64 %i.aas, %i.aax                 ; 2 uses
  %i.aaz = icmp eq i64 %.sroa.14.1.ph, %i.aau
  br i1 %i.aaz, label %ComputeDistanceCode.exit.thread, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.aba = icmp eq i64 %.sroa.14.1.ph, %i.aax
  br i1 %i.aba, label %ComputeDistanceCode.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.abb = icmp ult i64 %i.aav, 7
  br i1 %i.abb, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %.tr25.i = trunc nuw nsw i64 %i.aav to i32
  %i.abc = shl nuw nsw i32 %.tr25.i, 2
  %i.abd = lshr i32 158663784, %i.abc
  %i.abe = and i32 %i.abd, 15
  %i.abf = zext nneg i32 %i.abe to i64
  br label %ComputeDistanceCode.exit

bb.da:                                            ; preds = %bb.cy
  %i.abg = icmp ult i64 %i.aay, 7
  br i1 %i.abg, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %.tr.i = trunc nuw nsw i64 %i.aay to i32
  %i.abh = shl nuw nsw i32 %.tr.i, 2
  %i.abi = lshr i32 266017486, %i.abh
  %i.abj = and i32 %i.abi, 15
  %i.abk = zext nneg i32 %i.abj to i64
  br label %ComputeDistanceCode.exit

bb.dc:                                            ; preds = %bb.da
  %i.abl = load i32, ptr %i.ai, align 4, !tbaa !64
  %i.abm = sext i32 %i.abl to i64
  %i.abn = icmp eq i64 %.sroa.14.1.ph, %i.abm
  br i1 %i.abn, label %ComputeDistanceCode.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.abo = load i32, ptr %i.aj, align 4, !tbaa !64
  %i.abp = sext i32 %i.abo to i64
  %.not375 = icmp eq i64 %.sroa.14.1.ph, %i.abp
  br i1 %.not375, label %ComputeDistanceCode.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd, %split
  %i.abq = add i64 %.sroa.14.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.cx, %bb.db, %bb.cz, %bb.dc, %bb.dd, %bb.de
  %.1.i = phi i64 [ %i.abq, %bb.de ], [ 3, %bb.dd ], [ 1, %bb.cx ], [ %i.abk, %bb.db ], [ %i.abf, %bb.cz ], [ 2, %bb.dc ] ; 3 uses
  %i.abr = icmp ule i64 %.sroa.14.1.ph, %i.aar
  %i.abs = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.abr, i1 %i.abs, i1 false
  br i1 %or.cond, label %bb.df, label %ComputeDistanceCode.exit.thread

bb.df:                                            ; preds = %ComputeDistanceCode.exit
  %i.abt = load i32, ptr %i.ai, align 4, !tbaa !64
  store i32 %i.abt, ptr %i.aj, align 4, !tbaa !64
  %i.abu = load <2 x i32>, ptr %7, align 4, !tbaa !64
  store <2 x i32> %i.abu, ptr %i.ah, align 4, !tbaa !64
  %i.abv = trunc i64 %.sroa.14.1.ph to i32
  store i32 %i.abv, ptr %7, align 4, !tbaa !64
  br label %ComputeDistanceCode.exit.thread

ComputeDistanceCode.exit.thread:                  ; preds = %bb.cw, %bb.df, %ComputeDistanceCode.exit
  %.1.i371 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.df ], [ 0, %bb.cw ] ; 3 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %.0185543, i64 16 ; 3 uses
  %i.abx = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.abx, ptr %.0185543, align 4, !tbaa !103
  %i.aby = shl i32 %.sroa.33.1.ph, 25
  %i.abz = trunc i64 %.sroa.0281.1.ph to i32      ; 2 uses
  %i.aca = or i32 %i.aby, %i.abz
  %i.acb = getelementptr inbounds nuw i8, ptr %.0185543, i64 4
  store i32 %i.aca, ptr %i.acb, align 4, !tbaa !104
  %i.acc = load i32, ptr %i.ak, align 4, !tbaa !105
  %i.acd = zext i32 %i.acc to i64                 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.0185543, i64 14
  %i.acf = getelementptr inbounds nuw i8, ptr %.0185543, i64 8
  %i.acg = add nuw nsw i64 %i.acd, 16             ; 2 uses
  %i.ach = icmp ult i64 %.1.i371, %i.acg
  br i1 %i.ach, label %PrefixEncodeCopyDistance.exit, label %bb.dg

bb.dg:                                            ; preds = %ComputeDistanceCode.exit.thread
  %i.aci = load i32, ptr %i.ab, align 8, !tbaa !106 ; 2 uses
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
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %ComputeDistanceCode.exit.thread, %bb.dg
  %.sink.in = phi i64 [ %i.adh, %bb.dg ], [ %.1.i371, %ComputeDistanceCode.exit.thread ]
  %storemerge.i = phi i32 [ %i.adk, %bb.dg ], [ 0, %ComputeDistanceCode.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.ace, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.acf, align 4, !tbaa !64
  %i.adl = add nsw i32 %.sroa.33.1.ph, %i.abz     ; 6 uses
  %i.adm = and i16 %.sink, 1023
  %i.adn = icmp eq i16 %i.adm, 0
  %i.ado = getelementptr inbounds nuw i8, ptr %.0185543, i64 12
  %i.adp = icmp ult i64 %.3.ph, 6
  br i1 %i.adp, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.adq = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.di:                                            ; preds = %PrefixEncodeCopyDistance.exit
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
  br label %GetInsertLengthCode.exit

bb.dk:                                            ; preds = %bb.di
  %i.aed = icmp ult i64 %.3.ph, 2114
  br i1 %i.aed, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.aee = add nsw i32 %i.abx, -66
  %i.aef = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aee, i1 true)
  %i.aeg = trunc nuw nsw i32 %i.aef to i16
  %i.aeh = sub nuw nsw i16 41, %i.aeg
  br label %GetInsertLengthCode.exit

bb.dm:                                            ; preds = %bb.dk
  %i.aei = icmp ult i64 %.3.ph, 6210
  br i1 %i.aei, label %GetInsertLengthCode.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aej = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.aej, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.dh, %bb.dj, %bb.dl, %bb.dm, %bb.dn
  %.0.i197 = phi i16 [ %i.adq, %bb.dh ], [ %i.aec, %bb.dj ], [ %i.aeh, %bb.dl ], [ 21, %bb.dm ], [ %..i, %bb.dn ] ; 3 uses
  %i.aek = icmp ult i32 %i.adl, 10
  br i1 %i.aek, label %GetCopyLengthCode.exit, label %bb.do

bb.do:                                            ; preds = %GetInsertLengthCode.exit
  %i.ael = icmp ult i32 %i.adl, 134
  br i1 %i.ael, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %narrow = add nsw i32 %i.adl, -6                ; 2 uses
  %i.aem = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.aen = sub nuw nsw i32 30, %i.aem             ; 2 uses
  %i.aeo = shl nuw nsw i32 %i.aen, 1
  %i.aep = lshr i32 %narrow, %i.aen
  %i.aeq = add nuw nsw i32 %i.aep, %i.aeo
  br label %GetCopyLengthCode.exit

bb.dq:                                            ; preds = %bb.do
  %i.aer = icmp ult i32 %i.adl, 2118
  br i1 %i.aer, label %GetCopyLengthCode.exit.thread708, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread708:                 ; preds = %bb.dq
  %i.aes = add nsw i32 %i.adl, -70
  %i.aet = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aes, i1 true)
  %i.aeu = trunc nuw nsw i32 %i.aet to i16
  %i.aev = sub nuw nsw i16 43, %i.aeu
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.dp
  %.sink804 = phi i32 [ %i.aeq, %bb.dp ], [ %i.adl, %GetInsertLengthCode.exit ]
  %.sink803 = phi i16 [ 4, %bb.dp ], [ -2, %GetInsertLengthCode.exit ]
  %i.aew = trunc nuw nsw i32 %.sink804 to i16
  %i.aex = add nsw i16 %.sink803, %i.aew          ; 4 uses
  %i.aey = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.adn, %i.aey
  %i.aez = icmp ult i16 %i.aex, 16
  %or.cond5.i = and i1 %or.cond.i, %i.aez
  br i1 %or.cond5.i, label %bb.dr, label %GetCopyLengthCode.exit.thread

bb.dr:                                            ; preds = %GetCopyLengthCode.exit
  %i.afa = shl nuw nsw i16 %i.aex, 3
  %i.afb = and i16 %i.afa, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread708, %bb.dq, %GetCopyLengthCode.exit
  %.0.i198365 = phi i16 [ %i.aex, %GetCopyLengthCode.exit ], [ 23, %bb.dq ], [ %i.aev, %GetCopyLengthCode.exit.thread708 ] ; 2 uses
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
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.dr, %GetCopyLengthCode.exit.thread
  %.0.i198366 = phi i16 [ %i.aex, %bb.dr ], [ %.0.i198365, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.afb, %bb.dr ], [ %i.afl, %GetCopyLengthCode.exit.thread ]
  %i.afm = and i16 %.0.i198366, 7
  %i.afn = shl nuw nsw i16 %.0.i197, 3
  %i.afo = and i16 %i.afn, 56
  %i.afp = or disjoint i16 %i.afm, %i.afo
  %.0.i199 = or disjoint i16 %i.afp, %.pn.i
  store i16 %.0.i199, ptr %i.ado, align 4, !tbaa !76
  %i.afq = load i64, ptr %11, align 8, !tbaa !58
  %i.afr = add i64 %i.afq, %.3.ph
  store i64 %i.afr, ptr %11, align 8, !tbaa !58
  %i.afs = add i64 %.3181.ph, 2                   ; 2 uses
  %i.aft = add i64 %.3181.ph, %.sroa.0281.1.ph    ; 5 uses
  %i.afu = tail call i64 @llvm.umin.i64(i64 %i.aft, i64 %spec.select) ; 5 uses
  %i.afv = lshr i64 %.sroa.0281.1.ph, 2
  %i.afw = icmp ult i64 %.sroa.14.1.ph, %i.afv
  br i1 %i.afw, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %CombineLengthCodes.exit
  %i.afx = shl nuw i64 %.sroa.14.1.ph, 2
  %i.afy = sub i64 %i.aft, %i.afx
  %i.afz = tail call i64 @llvm.umax.i64(i64 %i.afs, i64 %i.afy)
  %i.aga = tail call i64 @llvm.umin.i64(i64 %i.afu, i64 %i.afz)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.aga, %bb.ds ], [ %i.afs, %CombineLengthCodes.exit ] ; 8 uses
  %i.agb = icmp ult i64 %.0, %i.afu
  br i1 %i.agb, label %.lr.ph532.preheader, label %StoreRangeH4.exit

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
  store i32 %i.agh, ptr %i.agl, align 4, !tbaa !64, !noalias !1219
  %i.agm = add nuw i64 %.0, 1
  br label %.lr.ph532.prol.loopexit

.lr.ph532.prol.loopexit:                          ; preds = %.lr.ph532.prol, %.lr.ph532.preheader
  %.0.i273531.unr = phi i64 [ %.0, %.lr.ph532.preheader ], [ %i.agm, %.lr.ph532.prol ]
  %i.agn = icmp eq i64 %i.afu, %.neg987
  br i1 %i.agn, label %StoreRangeH4.exit, label %.lr.ph532

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
  store i32 %i.ags, ptr %i.agw, align 4, !tbaa !64, !noalias !1219
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
  store i32 %i.ahc, ptr %i.ahg, align 4, !tbaa !64, !noalias !1219
  %i.ahh = add nuw i64 %.0.i273531, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ahh, %i.afu
  br i1 %exitcond.not.1, label %StoreRangeH4.exit, label %.lr.ph532, !llvm.loop !1194

.sink.split:                                      ; preds = %bb.ax, %bb.aw, %FindMatchLengthWithLimit.exit.i.i225, %bb.ar, %bb.aq, %bb.ap
  %i.ahi = trunc i64 %.0178544 to i32
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.dt
  store i32 %i.ahi, ptr %i.ahj, align 4, !tbaa !64, !noalias !1208
  br label %bb.du

bb.du:                                            ; preds = %.sink.split, %FindLongestMatchH4.exit272
  %i.ahk = add i64 %.0175545, 1                   ; 5 uses
  %i.ahl = add i64 %.0178544, 1                   ; 9 uses
  %i.ahm = icmp ugt i64 %i.ahl, %.0173546
  br i1 %i.ahm, label %bb.dv, label %StoreRangeH4.exit

bb.dv:                                            ; preds = %bb.du
  %i.ahn = add i64 %.0173546, %i.al
  %i.aho = icmp ugt i64 %i.ahl, %i.ahn
  br i1 %i.aho, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.ahp = add i64 %.0178544, 17
  %i.ahq = tail call i64 @llvm.umin.i64(i64 %i.ahp, i64 %i.n) ; 2 uses
  %i.ahr = icmp ult i64 %i.ahl, %i.ahq
  br i1 %i.ahr, label %.lr.ph540, label %StoreRangeH4.exit

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
  store i32 %i.ahw, ptr %i.aia, align 4, !tbaa !64, !noalias !1220
  %i.aib = add i64 %.4539, 4                      ; 2 uses
  %i.aic = add i64 %.4182538, 4                   ; 3 uses
  %i.aid = icmp ult i64 %i.aic, %i.ahq
  br i1 %i.aid, label %.lr.ph540, label %StoreRangeH4.exit, !llvm.loop !1197

bb.dx:                                            ; preds = %bb.dv
  %i.aie = add i64 %.0178544, 9
  %i.aif = tail call i64 @llvm.umin.i64(i64 %i.aie, i64 %i.n) ; 2 uses
  %i.aig = icmp ult i64 %i.ahl, %i.aif
  br i1 %i.aig, label %.lr.ph535, label %StoreRangeH4.exit

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
  store i32 %i.ail, ptr %i.aip, align 4, !tbaa !64, !noalias !1221
  %i.aiq = add i64 %.5534, 2                      ; 2 uses
  %i.air = add i64 %.5183533, 2                   ; 3 uses
  %i.ais = icmp ult i64 %i.air, %i.aif
  br i1 %i.ais, label %.lr.ph535, label %StoreRangeH4.exit, !llvm.loop !1200

StoreRangeH4.exit:                                ; preds = %.lr.ph532.prol.loopexit, %.lr.ph532, %.lr.ph535, %.lr.ph540, %bb.dt, %bb.dx, %bb.dw, %bb.du
  %.1186 = phi ptr [ %.0185543, %bb.dx ], [ %.0185543, %bb.du ], [ %.0185543, %bb.dw ], [ %i.abw, %bb.dt ], [ %.0185543, %.lr.ph535 ], [ %.0185543, %.lr.ph540 ], [ %i.abw, %.lr.ph532 ], [ %i.abw, %.lr.ph532.prol.loopexit ] ; 2 uses
  %.6184 = phi i64 [ %i.ahl, %bb.dx ], [ %i.ahl, %bb.du ], [ %i.ahl, %bb.dw ], [ %i.aft, %bb.dt ], [ %i.air, %.lr.ph535 ], [ %i.aic, %.lr.ph540 ], [ %i.aft, %.lr.ph532 ], [ %i.aft, %.lr.ph532.prol.loopexit ] ; 3 uses
  %.6 = phi i64 [ %i.ahk, %bb.dx ], [ %i.ahk, %bb.du ], [ %i.ahk, %bb.dw ], [ 0, %bb.dt ], [ %i.aiq, %.lr.ph535 ], [ %i.aib, %.lr.ph540 ], [ 0, %.lr.ph532 ], [ 0, %.lr.ph532.prol.loopexit ] ; 2 uses
  %.1174 = phi i64 [ %.0173546, %bb.dx ], [ %.0173546, %bb.du ], [ %.0173546, %bb.dw ], [ %i.aaq, %bb.dt ], [ %.0173546, %.lr.ph535 ], [ %.0173546, %.lr.ph540 ], [ %i.aaq, %.lr.ph532 ], [ %i.aaq, %.lr.ph532.prol.loopexit ]
  %i.ait = add i64 %.6184, 8
  %i.aiu = icmp ult i64 %i.ait, %i.l
  br i1 %i.aiu, label %bb.b, label %._crit_edge, !llvm.loop !1201

._crit_edge:                                      ; preds = %StoreRangeH4.exit, %bb.a
  %.0185.lcssa = phi ptr [ %9, %bb.a ], [ %.1186, %StoreRangeH4.exit ]
  %.0178.lcssa = phi i64 [ %1, %bb.a ], [ %.6184, %StoreRangeH4.exit ]
  %.0175.lcssa = phi i64 [ %i.k, %bb.a ], [ %.6, %StoreRangeH4.exit ]
  %i.aiv = sub i64 %i.l, %.0178.lcssa
  %i.aiw = add i64 %i.aiv, %.0175.lcssa
  store i64 %i.aiw, ptr %8, align 8, !tbaa !58
  %i.aix = ptrtoint ptr %.0185.lcssa to i64
  %i.aiy = ptrtoint ptr %9 to i64
end_hunk_9
begin_hunk_10_@CreateBackwardReferencesNH5:bb.a
  %i.aao = icmp ult i64 %i.aai, 7
  br i1 %i.aao, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %.tr25.i = trunc nuw nsw i64 %i.aai to i32
  %i.aap = shl nuw nsw i32 %.tr25.i, 2
  %i.aaq = lshr i32 158663784, %i.aap
  %i.aar = and i32 %i.aaq, 15
  %i.aas = zext nneg i32 %i.aar to i64
  br label %ComputeDistanceCode.exit

bb.de:                                            ; preds = %bb.dc
  %i.aat = icmp ult i64 %i.aal, 7
  br i1 %i.aat, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %.tr.i = trunc nuw nsw i64 %i.aal to i32
  %i.aau = shl nuw nsw i32 %.tr.i, 2
  %i.aav = lshr i32 266017486, %i.aau
  %i.aaw = and i32 %i.aav, 15
  %i.aax = zext nneg i32 %i.aaw to i64
  br label %ComputeDistanceCode.exit

bb.dg:                                            ; preds = %bb.de
  %i.aay = load i32, ptr %i.bi, align 4, !tbaa !64
  %i.aaz = sext i32 %i.aay to i64
  %i.aba = icmp eq i64 %.sroa.15.1.ph, %i.aaz
  br i1 %i.aba, label %ComputeDistanceCode.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.abb = load i32, ptr %i.bj, align 4, !tbaa !64
  %i.abc = sext i32 %i.abb to i64
  %.not461 = icmp eq i64 %.sroa.15.1.ph, %i.abc
  br i1 %.not461, label %ComputeDistanceCode.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh, %split
  %i.abd = add i64 %.sroa.15.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.db, %bb.df, %bb.dd, %bb.dg, %bb.dh, %bb.di
  %.1.i223 = phi i64 [ %i.abd, %bb.di ], [ 3, %bb.dh ], [ 1, %bb.db ], [ %i.aax, %bb.df ], [ %i.aas, %bb.dd ], [ 2, %bb.dg ] ; 5 uses
  %i.abe = icmp ule i64 %.sroa.15.1.ph, %i.aae
  %i.abf = icmp ne i64 %.1.i223, 0
  %or.cond = select i1 %i.abe, i1 %i.abf, i1 false
  br i1 %or.cond, label %bb.dj, label %PrepareDistanceCache.exit225

bb.dj:                                            ; preds = %ComputeDistanceCode.exit
  %i.abg = load i32, ptr %i.bi, align 4, !tbaa !64
  store i32 %i.abg, ptr %i.bj, align 4, !tbaa !64
  %i.abh = load <2 x i32>, ptr %7, align 4, !tbaa !64 ; 3 uses
  store <2 x i32> %i.abh, ptr %i.bh, align 4, !tbaa !64
  %i.abi = trunc i64 %.sroa.15.1.ph to i32        ; 4 uses
  store i32 %i.abi, ptr %7, align 4, !tbaa !64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  %i.abj = load i32, ptr %i.s, align 4, !tbaa !63, !alias.scope !1272, !noalias !1273 ; 2 uses
  %i.abk = icmp sgt i32 %i.abj, 4
  br i1 %i.abk, label %bb.dk, label %PrepareDistanceCache.exit225

bb.dk:                                            ; preds = %bb.dj
  %i.abl = insertelement <4 x i32> poison, i32 %i.abi, i64 0
  %i.abm = shufflevector <4 x i32> %i.abl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abn = add nsw <4 x i32> %i.abm, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.abn, ptr %i.bk, align 4, !tbaa !64, !alias.scope !1274, !noalias !1272
  %i.abo = add nsw i32 %i.abi, -3
  store i32 %i.abo, ptr %i.bl, align 4, !tbaa !64, !alias.scope !1274, !noalias !1272
  %i.abp = add nsw i32 %i.abi, 3
  store i32 %i.abp, ptr %i.bm, align 4, !tbaa !64, !alias.scope !1274, !noalias !1272
  %i.abq = icmp samesign ugt i32 %i.abj, 10
  br i1 %i.abq, label %bb.dl, label %PrepareDistanceCache.exit225

bb.dl:                                            ; preds = %bb.dk
  %i.abr = shufflevector <2 x i32> %i.abh, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.abs = add nsw <4 x i32> %i.abr, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.abs, ptr %i.bn, align 4, !tbaa !64, !alias.scope !1274, !noalias !1272
  %i.abt = shufflevector <2 x i32> %i.abh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.abu = add nsw <2 x i32> %i.abt, <i32 -3, i32 3>
  store <2 x i32> %i.abu, ptr %i.bo, align 4, !tbaa !64, !alias.scope !1274, !noalias !1272
  br label %PrepareDistanceCache.exit225

PrepareDistanceCache.exit225:                     ; preds = %bb.da, %bb.dl, %bb.dk, %bb.dj, %ComputeDistanceCode.exit
  %.1.i223457 = phi i64 [ %.1.i223, %ComputeDistanceCode.exit ], [ %.1.i223, %bb.dl ], [ %.1.i223, %bb.dk ], [ %.1.i223, %bb.dj ], [ 0, %bb.da ] ; 3 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.0185697, i64 16 ; 3 uses
  %i.abw = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.abw, ptr %.0185697, align 4, !tbaa !103
  %i.abx = shl i32 %.sroa.34.1.ph, 25
  %i.aby = trunc i64 %.sroa.0325.1.ph to i32      ; 2 uses
  %i.abz = or i32 %i.abx, %i.aby
  %i.aca = getelementptr inbounds nuw i8, ptr %.0185697, i64 4
  store i32 %i.abz, ptr %i.aca, align 4, !tbaa !104
  %i.acb = load i32, ptr %i.bp, align 4, !tbaa !105
  %i.acc = zext i32 %i.acb to i64                 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.0185697, i64 14
  %i.ace = getelementptr inbounds nuw i8, ptr %.0185697, i64 8
  %i.acf = add nuw nsw i64 %i.acc, 16             ; 2 uses
  %i.acg = icmp ult i64 %.1.i223457, %i.acf
  br i1 %i.acg, label %PrefixEncodeCopyDistance.exit, label %bb.dm

bb.dm:                                            ; preds = %PrepareDistanceCache.exit225
  %i.ach = load i32, ptr %i.av, align 8, !tbaa !106 ; 2 uses
  %i.aci = zext i32 %i.ach to i64                 ; 4 uses
  %i.acj = shl nuw i64 4, %i.aci
  %i.ack = add i64 %.1.i223457, -16
  %i.acl = sub i64 %i.ack, %i.acc
  %i.acm = add i64 %i.acl, %i.acj                 ; 4 uses
  %i.acn = trunc i64 %i.acm to i32
  %i.aco = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.acn, i1 true)
  %i.acp = sub nsw i32 30, %i.aco
  %i.acq = zext i32 %i.acp to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.ach
  %i.acr = xor i32 %notmask.i, -1
  %i.acs = zext nneg i32 %i.acr to i64
  %i.act = and i64 %i.acm, %i.acs
  %i.acu = lshr i64 %i.acm, %i.acq                ; 2 uses
  %i.acv = and i64 %i.acu, 1
  %i.acw = or disjoint i64 %i.acv, 2
  %i.acx = shl i64 %i.acw, %i.acq
  %i.acy = sub nsw i64 %i.acq, %i.aci             ; 2 uses
  %i.acz = shl nsw i64 %i.acy, 10
  %i.ada = shl nsw i64 %i.acy, 1
  %i.adb = or i64 %i.acu, 65534
  %i.adc = add i64 %i.ada, %i.adb
  %i.add = shl i64 %i.adc, %i.aci
  %i.ade = add nuw nsw i64 %i.act, %i.acf
  %i.adf = add i64 %i.ade, %i.add
  %i.adg = or i64 %i.adf, %i.acz
  %i.adh = sub i64 %i.acm, %i.acx
  %i.adi = lshr i64 %i.adh, %i.aci
  %i.adj = trunc i64 %i.adi to i32
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %PrepareDistanceCache.exit225, %bb.dm
  %.sink.in = phi i64 [ %i.adg, %bb.dm ], [ %.1.i223457, %PrepareDistanceCache.exit225 ]
  %storemerge.i = phi i32 [ %i.adj, %bb.dm ], [ 0, %PrepareDistanceCache.exit225 ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.acd, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.ace, align 4, !tbaa !64
  %i.adk = add nsw i32 %.sroa.34.1.ph, %i.aby     ; 6 uses
  %i.adl = and i16 %.sink, 1023
  %i.adm = icmp eq i16 %i.adl, 0
  %i.adn = getelementptr inbounds nuw i8, ptr %.0185697, i64 12
  %i.ado = icmp ult i64 %.3.ph, 6
  br i1 %i.ado, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.adp = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.do:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.adq = icmp ult i64 %.3.ph, 130
  br i1 %i.adq, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.adr = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.ads = trunc nuw nsw i64 %i.adr to i32
  %i.adt = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ads, i1 true)
  %i.adu = sub nuw nsw i32 30, %i.adt             ; 2 uses
  %i.adv = shl nuw nsw i32 %i.adu, 1
  %i.adw = zext nneg i32 %i.adv to i64
  %i.adx = zext nneg i32 %i.adu to i64
  %i.ady = lshr i64 %i.adr, %i.adx
  %i.adz = add nuw nsw i64 %i.ady, %i.adw
  %i.aea = trunc nuw nsw i64 %i.adz to i16
  %i.aeb = add nuw nsw i16 %i.aea, 2
  br label %GetInsertLengthCode.exit

bb.dq:                                            ; preds = %bb.do
  %i.aec = icmp ult i64 %.3.ph, 2114
  br i1 %i.aec, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.aed = add nsw i32 %i.abw, -66
  %i.aee = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aed, i1 true)
  %i.aef = trunc nuw nsw i32 %i.aee to i16
  %i.aeg = sub nuw nsw i16 41, %i.aef
  br label %GetInsertLengthCode.exit

bb.ds:                                            ; preds = %bb.dq
  %i.aeh = icmp ult i64 %.3.ph, 6210
  br i1 %i.aeh, label %GetInsertLengthCode.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aei = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.aei, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.dn, %bb.dp, %bb.dr, %bb.ds, %bb.dt
  %.0.i313 = phi i16 [ %i.adp, %bb.dn ], [ %i.aeb, %bb.dp ], [ %i.aeg, %bb.dr ], [ 21, %bb.ds ], [ %..i, %bb.dt ] ; 3 uses
  %i.aej = icmp ult i32 %i.adk, 10
  br i1 %i.aej, label %GetCopyLengthCode.exit, label %bb.du

bb.du:                                            ; preds = %GetInsertLengthCode.exit
  %i.aek = icmp ult i32 %i.adk, 134
  br i1 %i.aek, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %narrow = add nsw i32 %i.adk, -6                ; 2 uses
  %i.ael = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.aem = sub nuw nsw i32 30, %i.ael             ; 2 uses
  %i.aen = shl nuw nsw i32 %i.aem, 1
  %i.aeo = lshr i32 %narrow, %i.aem
  %i.aep = add nuw nsw i32 %i.aeo, %i.aen
  br label %GetCopyLengthCode.exit

bb.dw:                                            ; preds = %bb.du
  %i.aeq = icmp ult i32 %i.adk, 2118
  br i1 %i.aeq, label %GetCopyLengthCode.exit.thread876, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread876:                 ; preds = %bb.dw
  %i.aer = add nsw i32 %i.adk, -70
  %i.aes = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aer, i1 true)
  %i.aet = trunc nuw nsw i32 %i.aes to i16
  %i.aeu = sub nuw nsw i16 43, %i.aet
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.dv
  %.sink948 = phi i32 [ %i.aep, %bb.dv ], [ %i.adk, %GetInsertLengthCode.exit ]
  %.sink947 = phi i16 [ 4, %bb.dv ], [ -2, %GetInsertLengthCode.exit ]
  %i.aev = trunc nuw nsw i32 %.sink948 to i16
  %i.aew = add nsw i16 %.sink947, %i.aev          ; 4 uses
  %i.aex = icmp samesign ult i16 %.0.i313, 8
  %or.cond.i315 = and i1 %i.adm, %i.aex
  %i.aey = icmp ult i16 %i.aew, 16
  %or.cond5.i = and i1 %or.cond.i315, %i.aey
  br i1 %or.cond5.i, label %bb.dx, label %GetCopyLengthCode.exit.thread

bb.dx:                                            ; preds = %GetCopyLengthCode.exit
  %i.aez = shl nuw nsw i16 %i.aew, 3
  %i.afa = and i16 %i.aez, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread876, %bb.dw, %GetCopyLengthCode.exit
  %.0.i314451 = phi i16 [ %i.aew, %GetCopyLengthCode.exit ], [ 23, %bb.dw ], [ %i.aeu, %GetCopyLengthCode.exit.thread876 ] ; 2 uses
  %i.afb = lshr i16 %.0.i314451, 3
  %i.afc = lshr i16 %.0.i313, 3
  %narrow.i316 = mul nuw nsw i16 %i.afc, 3
  %narrow21.i = add nuw nsw i16 %i.afb, %narrow.i316
  %i.afd = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.afe = shl nuw nsw i32 %i.afd, 1
  %i.aff = shl nuw nsw i32 %i.afd, 6
  %i.afg = add nuw nsw i32 %i.aff, 64
  %i.afh = lshr i32 5377344, %i.afe
  %i.afi = and i32 %i.afh, 192
  %i.afj = add nuw nsw i32 %i.afg, %i.afi
  %i.afk = trunc i32 %i.afj to i16
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.dx, %GetCopyLengthCode.exit.thread
  %.0.i314452 = phi i16 [ %i.aew, %bb.dx ], [ %.0.i314451, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.afa, %bb.dx ], [ %i.afk, %GetCopyLengthCode.exit.thread ]
  %i.afl = and i16 %.0.i314452, 7
  %i.afm = shl nuw nsw i16 %.0.i313, 3
  %i.afn = and i16 %i.afm, 56
  %i.afo = or disjoint i16 %i.afl, %i.afn
  %.0.i317 = or disjoint i16 %i.afo, %.pn.i
  store i16 %.0.i317, ptr %i.adn, align 4, !tbaa !76
  %i.afp = load i64, ptr %11, align 8, !tbaa !58
  %i.afq = add i64 %i.afp, %.3.ph
  store i64 %i.afq, ptr %11, align 8, !tbaa !58
  %i.afr = add i64 %.3181.ph, 2                   ; 2 uses
  %i.afs = add i64 %.3181.ph, %.sroa.0325.1.ph    ; 5 uses
  %i.aft = tail call i64 @llvm.umin.i64(i64 %i.afs, i64 %spec.select) ; 5 uses
  %i.afu = lshr i64 %.sroa.0325.1.ph, 2
  %i.afv = icmp ult i64 %.sroa.15.1.ph, %i.afu
  br i1 %i.afv, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %CombineLengthCodes.exit
  %i.afw = shl nuw i64 %.sroa.15.1.ph, 2
  %i.afx = sub i64 %i.afs, %i.afw
  %i.afy = tail call i64 @llvm.umax.i64(i64 %i.afr, i64 %i.afx)
  %i.afz = tail call i64 @llvm.umin.i64(i64 %i.aft, i64 %i.afy)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.afz, %bb.dy ], [ %i.afr, %CombineLengthCodes.exit ] ; 7 uses
  %i.aga = icmp ult i64 %.0, %i.aft
  br i1 %i.aga, label %.lr.ph684, label %StoreRangeH5.exit

.lr.ph684:                                        ; preds = %bb.dz
  %i.agb = load i32, ptr %i.bb, align 8, !tbaa !71, !alias.scope !1275, !noalias !1276 ; 3 uses
  %i.agc = load i32, ptr %i.be, align 4, !tbaa !78, !alias.scope !1275, !noalias !1276 ; 3 uses
  %i.agd = load i32, ptr %i.bc, align 8, !tbaa !72, !alias.scope !1275, !noalias !1276 ; 3 uses
  %i.age = sub nuw i64 %i.aft, %.0
  %.neg1081 = add i64 %.0, 1
  %xtraiter = and i64 %i.age, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  %i.agf = and i64 %.0, %3
  %i.agg = getelementptr inbounds nuw i8, ptr %2, i64 %i.agf
  %.val319.prol = load i32, ptr %i.agg, align 1
  %i.agh = mul i32 %.val319.prol, 506832829
  %i.agi = lshr i32 %i.agh, %i.agb                ; 2 uses
  %i.agj = zext i32 %i.agi to i64
  %i.agk = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.agj ; 2 uses
  %i.agl = load i16, ptr %i.agk, align 2, !tbaa !76, !noalias !1275 ; 2 uses
  %i.agm = zext i16 %i.agl to i32
  %i.agn = and i32 %i.agc, %i.agm
  %i.ago = zext nneg i32 %i.agn to i64
  %i.agp = shl i32 %i.agi, %i.agd
  %i.agq = zext i32 %i.agp to i64
  %i.agr = add i16 %i.agl, 1
  store i16 %i.agr, ptr %i.agk, align 2, !tbaa !76, !noalias !1275
  %i.ags = trunc i64 %.0 to i32
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ago
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %i.agq
  store i32 %i.ags, ptr %i.agu, align 4, !tbaa !64, !noalias !1275
  %i.agv = add nuw i64 %.0, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph684
  %.0.i224682.unr = phi i64 [ %.0, %.lr.ph684 ], [ %i.agv, %.prol.loopexit.unr-lcssa ]
  %i.agw = icmp eq i64 %i.aft, %.neg1081
  br i1 %i.agw, label %StoreRangeH5.exit, label %.lr.ph684.new

.lr.ph684.new:                                    ; preds = %.prol.loopexit, %.lr.ph684.new
  %.0.i224682 = phi i64 [ %i.aie, %.lr.ph684.new ], [ %.0.i224682.unr, %.prol.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  %i.agx = and i64 %.0.i224682, %3
  %i.agy = getelementptr inbounds nuw i8, ptr %2, i64 %i.agx
  %.val319 = load i32, ptr %i.agy, align 1
  %i.agz = mul i32 %.val319, 506832829
  %i.aha = lshr i32 %i.agz, %i.agb                ; 2 uses
  %i.ahb = zext i32 %i.aha to i64
  %i.ahc = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ahb ; 2 uses
  %i.ahd = load i16, ptr %i.ahc, align 2, !tbaa !76, !noalias !1275 ; 2 uses
  %i.ahe = zext i16 %i.ahd to i32
  %i.ahf = and i32 %i.agc, %i.ahe
  %i.ahg = zext nneg i32 %i.ahf to i64
  %i.ahh = shl i32 %i.aha, %i.agd
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = add i16 %i.ahd, 1
  store i16 %i.ahj, ptr %i.ahc, align 2, !tbaa !76, !noalias !1275
  %i.ahk = trunc i64 %.0.i224682 to i32
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ahg
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %i.ahi
  store i32 %i.ahk, ptr %i.ahm, align 4, !tbaa !64, !noalias !1275
  %i.ahn = add nuw i64 %.0.i224682, 1             ; 2 uses
  %i.aho = and i64 %i.ahn, %3
  %i.ahp = getelementptr inbounds nuw i8, ptr %2, i64 %i.aho
  %.val319.1 = load i32, ptr %i.ahp, align 1
  %i.ahq = mul i32 %.val319.1, 506832829
  %i.ahr = lshr i32 %i.ahq, %i.agb                ; 2 uses
  %i.ahs = zext i32 %i.ahr to i64
  %i.aht = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ahs ; 2 uses
  %i.ahu = load i16, ptr %i.aht, align 2, !tbaa !76, !noalias !1277 ; 2 uses
  %i.ahv = zext i16 %i.ahu to i32
  %i.ahw = and i32 %i.agc, %i.ahv
  %i.ahx = zext nneg i32 %i.ahw to i64
  %i.ahy = shl i32 %i.ahr, %i.agd
  %i.ahz = zext i32 %i.ahy to i64
  %i.aia = add i16 %i.ahu, 1
  store i16 %i.aia, ptr %i.aht, align 2, !tbaa !76, !noalias !1277
  %i.aib = trunc i64 %i.ahn to i32
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ahx
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.ahz
  store i32 %i.aib, ptr %i.aid, align 4, !tbaa !64, !noalias !1277
  %i.aie = add nuw i64 %.0.i224682, 2             ; 2 uses
  %exitcond758.not.1 = icmp eq i64 %i.aie, %i.aft
  br i1 %exitcond758.not.1, label %StoreRangeH5.exit, label %.lr.ph684.new, !llvm.loop !6

FindLongestMatchH5.exit220.thread:                ; preds = %bb.ak, %FindLongestMatchH5.exit220
  %i.aif = add i64 %.0175699, 1                   ; 5 uses
  %i.aig = add i64 %.0178698, 1                   ; 9 uses
  %i.aih = icmp ugt i64 %i.aig, %.0173700
  br i1 %i.aih, label %bb.ea, label %StoreRangeH5.exit

bb.ea:                                            ; preds = %FindLongestMatchH5.exit220.thread
  %i.aii = add i64 %.0173700, %i.bq
  %i.aij = icmp ugt i64 %i.aig, %i.aii
  br i1 %i.aij, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.aik = add i64 %.0178698, 17
  %i.ail = tail call i64 @llvm.umin.i64(i64 %i.aik, i64 %i.br) ; 2 uses
  %i.aim = icmp ult i64 %i.aig, %i.ail
  br i1 %i.aim, label %.lr.ph694, label %StoreRangeH5.exit

.lr.ph694:                                        ; preds = %bb.eb
  %i.ain = load i32, ptr %i.bb, align 8, !tbaa !71, !alias.scope !1278, !noalias !1279
  %i.aio = load i32, ptr %i.be, align 4, !tbaa !78, !alias.scope !1278, !noalias !1279
  %i.aip = load i32, ptr %i.bc, align 8, !tbaa !72, !alias.scope !1278, !noalias !1279
  br label %bb.ec

bb.ec:                                            ; preds = %.lr.ph694, %bb.ec
  %.4692 = phi i64 [ %i.aif, %.lr.ph694 ], [ %i.ajg, %bb.ec ]
  %.4182691 = phi i64 [ %i.aig, %.lr.ph694 ], [ %i.ajh, %bb.ec ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %i.aiq = and i64 %.4182691, %3
  %i.air = getelementptr inbounds nuw i8, ptr %2, i64 %i.aiq
  %.val = load i32, ptr %i.air, align 1
  %i.ais = mul i32 %.val, 506832829
  %i.ait = lshr i32 %i.ais, %i.ain                ; 2 uses
  %i.aiu = zext i32 %i.ait to i64
  %i.aiv = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.aiu ; 2 uses
  %i.aiw = load i16, ptr %i.aiv, align 2, !tbaa !76, !noalias !1278 ; 2 uses
  %i.aix = zext i16 %i.aiw to i32
  %i.aiy = and i32 %i.aio, %i.aix
  %i.aiz = zext nneg i32 %i.aiy to i64
  %i.aja = shl i32 %i.ait, %i.aip
  %i.ajb = zext i32 %i.aja to i64
  %i.ajc = add i16 %i.aiw, 1
  store i16 %i.ajc, ptr %i.aiv, align 2, !tbaa !76, !noalias !1278
  %i.ajd = trunc i64 %.4182691 to i32
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.aiz
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %i.ajb
  store i32 %i.ajd, ptr %i.ajf, align 4, !tbaa !64, !noalias !1278
  %i.ajg = add i64 %.4692, 4                      ; 2 uses
  %i.ajh = add i64 %.4182691, 4                   ; 3 uses
  %i.aji = icmp ult i64 %i.ajh, %i.ail
  br i1 %i.aji, label %bb.ec, label %StoreRangeH5.exit, !llvm.loop !1249

bb.ed:                                            ; preds = %bb.ea
  %i.ajj = add i64 %.0178698, 9
  %i.ajk = tail call i64 @llvm.umin.i64(i64 %i.ajj, i64 %i.k) ; 2 uses
  %i.ajl = icmp ult i64 %i.aig, %i.ajk
  br i1 %i.ajl, label %.lr.ph688, label %StoreRangeH5.exit
end_hunk_10
begin_hunk_11_@CreateBackwardReferencesNH6:bb.a
  br i1 %i.aas, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %.tr25.i = trunc nuw nsw i64 %i.aam to i32
  %i.aat = shl nuw nsw i32 %.tr25.i, 2
  %i.aau = lshr i32 158663784, %i.aat
  %i.aav = and i32 %i.aau, 15
  %i.aaw = zext nneg i32 %i.aav to i64
  br label %ComputeDistanceCode.exit

bb.de:                                            ; preds = %bb.dc
  %i.aax = icmp ult i64 %i.aap, 7
  br i1 %i.aax, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %.tr.i = trunc nuw nsw i64 %i.aap to i32
  %i.aay = shl nuw nsw i32 %.tr.i, 2
  %i.aaz = lshr i32 266017486, %i.aay
  %i.aba = and i32 %i.aaz, 15
  %i.abb = zext nneg i32 %i.aba to i64
  br label %ComputeDistanceCode.exit

bb.dg:                                            ; preds = %bb.de
  %i.abc = load i32, ptr %i.bi, align 4, !tbaa !64
  %i.abd = sext i32 %i.abc to i64
  %i.abe = icmp eq i64 %.sroa.15.1.ph, %i.abd
  br i1 %i.abe, label %ComputeDistanceCode.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.abf = load i32, ptr %i.bj, align 4, !tbaa !64
  %i.abg = sext i32 %i.abf to i64
  %.not437 = icmp eq i64 %.sroa.15.1.ph, %i.abg
  br i1 %.not437, label %ComputeDistanceCode.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh, %split
  %i.abh = add i64 %.sroa.15.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.db, %bb.df, %bb.dd, %bb.dg, %bb.dh, %bb.di
  %.1.i = phi i64 [ %i.abh, %bb.di ], [ 3, %bb.dh ], [ 1, %bb.db ], [ %i.abb, %bb.df ], [ %i.aaw, %bb.dd ], [ 2, %bb.dg ] ; 5 uses
  %i.abi = icmp ule i64 %.sroa.15.1.ph, %i.aai
  %i.abj = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.abi, i1 %i.abj, i1 false
  br i1 %or.cond, label %bb.dj, label %PrepareDistanceCacheH6.exit

bb.dj:                                            ; preds = %ComputeDistanceCode.exit
  %i.abk = load i32, ptr %i.bi, align 4, !tbaa !64
  store i32 %i.abk, ptr %i.bj, align 4, !tbaa !64
  %i.abl = load <2 x i32>, ptr %7, align 4, !tbaa !64 ; 3 uses
  store <2 x i32> %i.abl, ptr %i.bh, align 4, !tbaa !64
  %i.abm = trunc i64 %.sroa.15.1.ph to i32        ; 4 uses
  store i32 %i.abm, ptr %7, align 4, !tbaa !64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.abn = load i32, ptr %i.s, align 8, !tbaa !108, !alias.scope !1344, !noalias !1345 ; 2 uses
  %i.abo = icmp sgt i32 %i.abn, 4
  br i1 %i.abo, label %bb.dk, label %PrepareDistanceCacheH6.exit

bb.dk:                                            ; preds = %bb.dj
  %i.abp = insertelement <4 x i32> poison, i32 %i.abm, i64 0
  %i.abq = shufflevector <4 x i32> %i.abp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abr = add nsw <4 x i32> %i.abq, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.abr, ptr %i.bk, align 4, !tbaa !64, !alias.scope !1346, !noalias !1344
  %i.abs = add nsw i32 %i.abm, -3
  store i32 %i.abs, ptr %i.bl, align 4, !tbaa !64, !alias.scope !1346, !noalias !1344
  %i.abt = add nsw i32 %i.abm, 3
  store i32 %i.abt, ptr %i.bm, align 4, !tbaa !64, !alias.scope !1346, !noalias !1344
  %i.abu = icmp samesign ugt i32 %i.abn, 10
  br i1 %i.abu, label %bb.dl, label %PrepareDistanceCacheH6.exit

bb.dl:                                            ; preds = %bb.dk
  %i.abv = shufflevector <2 x i32> %i.abl, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.abw = add nsw <4 x i32> %i.abv, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.abw, ptr %i.bn, align 4, !tbaa !64, !alias.scope !1346, !noalias !1344
  %i.abx = shufflevector <2 x i32> %i.abl, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aby = add nsw <2 x i32> %i.abx, <i32 -3, i32 3>
  store <2 x i32> %i.aby, ptr %i.bo, align 4, !tbaa !64, !alias.scope !1346, !noalias !1344
  br label %PrepareDistanceCacheH6.exit

PrepareDistanceCacheH6.exit:                      ; preds = %bb.da, %bb.dl, %bb.dk, %bb.dj, %ComputeDistanceCode.exit
  %.1.i433 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.dl ], [ %.1.i, %bb.dk ], [ %.1.i, %bb.dj ], [ 0, %bb.da ] ; 3 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.0185673, i64 16 ; 3 uses
  %i.aca = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.aca, ptr %.0185673, align 4, !tbaa !103
  %i.acb = shl i32 %.sroa.34.1.ph, 25
  %i.acc = trunc i64 %.sroa.0301.1.ph to i32      ; 2 uses
  %i.acd = or i32 %i.acb, %i.acc
  %i.ace = getelementptr inbounds nuw i8, ptr %.0185673, i64 4
  store i32 %i.acd, ptr %i.ace, align 4, !tbaa !104
  %i.acf = load i32, ptr %i.bp, align 4, !tbaa !105
  %i.acg = zext i32 %i.acf to i64                 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %.0185673, i64 14
  %i.aci = getelementptr inbounds nuw i8, ptr %.0185673, i64 8
  %i.acj = add nuw nsw i64 %i.acg, 16             ; 2 uses
  %i.ack = icmp ult i64 %.1.i433, %i.acj
  br i1 %i.ack, label %PrefixEncodeCopyDistance.exit, label %bb.dm

bb.dm:                                            ; preds = %PrepareDistanceCacheH6.exit
  %i.acl = load i32, ptr %i.av, align 8, !tbaa !106 ; 2 uses
  %i.acm = zext i32 %i.acl to i64                 ; 4 uses
  %i.acn = shl nuw i64 4, %i.acm
  %i.aco = add i64 %.1.i433, -16
  %i.acp = sub i64 %i.aco, %i.acg
  %i.acq = add i64 %i.acp, %i.acn                 ; 4 uses
  %i.acr = trunc i64 %i.acq to i32
  %i.acs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.acr, i1 true)
  %i.act = sub nsw i32 30, %i.acs
  %i.acu = zext i32 %i.act to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.acl
  %i.acv = xor i32 %notmask.i, -1
  %i.acw = zext nneg i32 %i.acv to i64
  %i.acx = and i64 %i.acq, %i.acw
  %i.acy = lshr i64 %i.acq, %i.acu                ; 2 uses
  %i.acz = and i64 %i.acy, 1
  %i.ada = or disjoint i64 %i.acz, 2
  %i.adb = shl i64 %i.ada, %i.acu
  %i.adc = sub nsw i64 %i.acu, %i.acm             ; 2 uses
  %i.add = shl nsw i64 %i.adc, 10
  %i.ade = shl nsw i64 %i.adc, 1
  %i.adf = or i64 %i.acy, 65534
  %i.adg = add i64 %i.ade, %i.adf
  %i.adh = shl i64 %i.adg, %i.acm
  %i.adi = add nuw nsw i64 %i.acx, %i.acj
  %i.adj = add i64 %i.adi, %i.adh
  %i.adk = or i64 %i.adj, %i.add
  %i.adl = sub i64 %i.acq, %i.adb
  %i.adm = lshr i64 %i.adl, %i.acm
  %i.adn = trunc i64 %i.adm to i32
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %PrepareDistanceCacheH6.exit, %bb.dm
  %.sink.in = phi i64 [ %i.adk, %bb.dm ], [ %.1.i433, %PrepareDistanceCacheH6.exit ]
  %storemerge.i = phi i32 [ %i.adn, %bb.dm ], [ 0, %PrepareDistanceCacheH6.exit ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.ach, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.aci, align 4, !tbaa !64
  %i.ado = add nsw i32 %.sroa.34.1.ph, %i.acc     ; 6 uses
  %i.adp = and i16 %.sink, 1023
  %i.adq = icmp eq i16 %i.adp, 0
  %i.adr = getelementptr inbounds nuw i8, ptr %.0185673, i64 12
  %i.ads = icmp ult i64 %.3.ph, 6
  br i1 %i.ads, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.adt = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.do:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.adu = icmp ult i64 %.3.ph, 130
  br i1 %i.adu, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.adv = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.adw = trunc nuw nsw i64 %i.adv to i32
  %i.adx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adw, i1 true)
  %i.ady = sub nuw nsw i32 30, %i.adx             ; 2 uses
  %i.adz = shl nuw nsw i32 %i.ady, 1
  %i.aea = zext nneg i32 %i.adz to i64
  %i.aeb = zext nneg i32 %i.ady to i64
  %i.aec = lshr i64 %i.adv, %i.aeb
  %i.aed = add nuw nsw i64 %i.aec, %i.aea
  %i.aee = trunc nuw nsw i64 %i.aed to i16
  %i.aef = add nuw nsw i16 %i.aee, 2
  br label %GetInsertLengthCode.exit

bb.dq:                                            ; preds = %bb.do
  %i.aeg = icmp ult i64 %.3.ph, 2114
  br i1 %i.aeg, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.aeh = add nsw i32 %i.aca, -66
  %i.aei = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aeh, i1 true)
  %i.aej = trunc nuw nsw i32 %i.aei to i16
  %i.aek = sub nuw nsw i16 41, %i.aej
  br label %GetInsertLengthCode.exit

bb.ds:                                            ; preds = %bb.dq
  %i.ael = icmp ult i64 %.3.ph, 6210
  br i1 %i.ael, label %GetInsertLengthCode.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aem = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.aem, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.dn, %bb.dp, %bb.dr, %bb.ds, %bb.dt
  %.0.i197 = phi i16 [ %i.adt, %bb.dn ], [ %i.aef, %bb.dp ], [ %i.aek, %bb.dr ], [ 21, %bb.ds ], [ %..i, %bb.dt ] ; 3 uses
  %i.aen = icmp ult i32 %i.ado, 10
  br i1 %i.aen, label %GetCopyLengthCode.exit, label %bb.du

bb.du:                                            ; preds = %GetInsertLengthCode.exit
  %i.aeo = icmp ult i32 %i.ado, 134
  br i1 %i.aeo, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %narrow = add nsw i32 %i.ado, -6                ; 2 uses
  %i.aep = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.aeq = sub nuw nsw i32 30, %i.aep             ; 2 uses
  %i.aer = shl nuw nsw i32 %i.aeq, 1
  %i.aes = lshr i32 %narrow, %i.aeq
  %i.aet = add nuw nsw i32 %i.aes, %i.aer
  br label %GetCopyLengthCode.exit

bb.dw:                                            ; preds = %bb.du
  %i.aeu = icmp ult i32 %i.ado, 2118
  br i1 %i.aeu, label %GetCopyLengthCode.exit.thread854, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread854:                 ; preds = %bb.dw
  %i.aev = add nsw i32 %i.ado, -70
  %i.aew = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aev, i1 true)
  %i.aex = trunc nuw nsw i32 %i.aew to i16
  %i.aey = sub nuw nsw i16 43, %i.aex
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.dv
  %.sink926 = phi i32 [ %i.aet, %bb.dv ], [ %i.ado, %GetInsertLengthCode.exit ]
  %.sink925 = phi i16 [ 4, %bb.dv ], [ -2, %GetInsertLengthCode.exit ]
  %i.aez = trunc nuw nsw i32 %.sink926 to i16
  %i.afa = add nsw i16 %.sink925, %i.aez          ; 4 uses
  %i.afb = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.adq, %i.afb
  %i.afc = icmp ult i16 %i.afa, 16
  %or.cond5.i = and i1 %or.cond.i, %i.afc
  br i1 %or.cond5.i, label %bb.dx, label %GetCopyLengthCode.exit.thread

bb.dx:                                            ; preds = %GetCopyLengthCode.exit
  %i.afd = shl nuw nsw i16 %i.afa, 3
  %i.afe = and i16 %i.afd, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread854, %bb.dw, %GetCopyLengthCode.exit
  %.0.i198427 = phi i16 [ %i.afa, %GetCopyLengthCode.exit ], [ 23, %bb.dw ], [ %i.aey, %GetCopyLengthCode.exit.thread854 ] ; 2 uses
  %i.aff = lshr i16 %.0.i198427, 3
  %i.afg = lshr i16 %.0.i197, 3
  %narrow.i = mul nuw nsw i16 %i.afg, 3
  %narrow21.i = add nuw nsw i16 %i.aff, %narrow.i
  %i.afh = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.afi = shl nuw nsw i32 %i.afh, 1
  %i.afj = shl nuw nsw i32 %i.afh, 6
  %i.afk = add nuw nsw i32 %i.afj, 64
  %i.afl = lshr i32 5377344, %i.afi
  %i.afm = and i32 %i.afl, 192
  %i.afn = add nuw nsw i32 %i.afk, %i.afm
  %i.afo = trunc i32 %i.afn to i16
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.dx, %GetCopyLengthCode.exit.thread
  %.0.i198428 = phi i16 [ %i.afa, %bb.dx ], [ %.0.i198427, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.afe, %bb.dx ], [ %i.afo, %GetCopyLengthCode.exit.thread ]
  %i.afp = and i16 %.0.i198428, 7
  %i.afq = shl nuw nsw i16 %.0.i197, 3
  %i.afr = and i16 %i.afq, 56
  %i.afs = or disjoint i16 %i.afp, %i.afr
  %.0.i199 = or disjoint i16 %i.afs, %.pn.i
  store i16 %.0.i199, ptr %i.adr, align 4, !tbaa !76
  %i.aft = load i64, ptr %11, align 8, !tbaa !58
  %i.afu = add i64 %i.aft, %.3.ph
  store i64 %i.afu, ptr %11, align 8, !tbaa !58
  %i.afv = add i64 %.3181.ph, 2                   ; 2 uses
  %i.afw = add i64 %.3181.ph, %.sroa.0301.1.ph    ; 5 uses
  %i.afx = tail call i64 @llvm.umin.i64(i64 %i.afw, i64 %spec.select) ; 5 uses
  %i.afy = lshr i64 %.sroa.0301.1.ph, 2
  %i.afz = icmp ult i64 %.sroa.15.1.ph, %i.afy
  br i1 %i.afz, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %CombineLengthCodes.exit
  %i.aga = shl nuw i64 %.sroa.15.1.ph, 2
  %i.agb = sub i64 %i.afw, %i.aga
  %i.agc = tail call i64 @llvm.umax.i64(i64 %i.afv, i64 %i.agb)
  %i.agd = tail call i64 @llvm.umin.i64(i64 %i.afx, i64 %i.agc)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.agd, %bb.dy ], [ %i.afv, %CombineLengthCodes.exit ] ; 7 uses
  %i.age = icmp ult i64 %.0, %i.afx
  br i1 %i.age, label %.lr.ph660, label %StoreRangeH6.exit

.lr.ph660:                                        ; preds = %bb.dz
  %i.agf = load i64, ptr %i.bb, align 8, !tbaa !111, !alias.scope !1347, !noalias !1348 ; 3 uses
  %i.agg = load i32, ptr %i.be, align 8, !tbaa !114, !alias.scope !1347, !noalias !1348 ; 3 uses
  %i.agh = load i32, ptr %i.bc, align 4, !tbaa !112, !alias.scope !1347, !noalias !1348
  %i.agi = zext nneg i32 %i.agh to i64            ; 3 uses
  %i.agj = sub nuw i64 %i.afx, %.0
  %.neg1059 = add i64 %.0, 1
  %xtraiter = and i64 %i.agj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph660
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  %i.agk = and i64 %.0, %3
  %i.agl = getelementptr inbounds nuw i8, ptr %2, i64 %i.agk
  %.0.copyload.i.i295.prol = load i64, ptr %i.agl, align 1, !alias.scope !1349, !noalias !1347
  %i.agm = mul i64 %.0.copyload.i.i295.prol, %i.agf
  %i.agn = lshr i64 %i.agm, 49                    ; 2 uses
  %i.ago = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.agn ; 2 uses
  %i.agp = load i16, ptr %i.ago, align 2, !tbaa !76, !noalias !1347 ; 2 uses
  %i.agq = zext i16 %i.agp to i32
  %i.agr = and i32 %i.agg, %i.agq
  %i.ags = zext nneg i32 %i.agr to i64
  %i.agt = shl i64 %i.agn, %i.agi
  %i.agu = add i16 %i.agp, 1
  store i16 %i.agu, ptr %i.ago, align 2, !tbaa !76, !noalias !1347
  %i.agv = trunc i64 %.0 to i32
  %i.agw = getelementptr [4 x i8], ptr %i.ba, i64 %i.agt
  %i.agx = getelementptr [4 x i8], ptr %i.agw, i64 %i.ags
  store i32 %i.agv, ptr %i.agx, align 4, !tbaa !64, !noalias !1347
  %i.agy = add nuw i64 %.0, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph660
  %.0.i292658.unr = phi i64 [ %.0, %.lr.ph660 ], [ %i.agy, %.prol.loopexit.unr-lcssa ]
  %i.agz = icmp eq i64 %i.afx, %.neg1059
  br i1 %i.agz, label %StoreRangeH6.exit, label %.lr.ph660.new

.lr.ph660.new:                                    ; preds = %.prol.loopexit, %.lr.ph660.new
  %.0.i292658 = phi i64 [ %i.aid, %.lr.ph660.new ], [ %.0.i292658.unr, %.prol.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  %i.aha = and i64 %.0.i292658, %3
  %i.ahb = getelementptr inbounds nuw i8, ptr %2, i64 %i.aha
  %.0.copyload.i.i295 = load i64, ptr %i.ahb, align 1, !alias.scope !1349, !noalias !1347
  %i.ahc = mul i64 %.0.copyload.i.i295, %i.agf
  %i.ahd = lshr i64 %i.ahc, 49                    ; 2 uses
  %i.ahe = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ahd ; 2 uses
  %i.ahf = load i16, ptr %i.ahe, align 2, !tbaa !76, !noalias !1347 ; 2 uses
  %i.ahg = zext i16 %i.ahf to i32
  %i.ahh = and i32 %i.agg, %i.ahg
  %i.ahi = zext nneg i32 %i.ahh to i64
  %i.ahj = shl i64 %i.ahd, %i.agi
  %i.ahk = add i16 %i.ahf, 1
  store i16 %i.ahk, ptr %i.ahe, align 2, !tbaa !76, !noalias !1347
  %i.ahl = trunc i64 %.0.i292658 to i32
  %i.ahm = getelementptr [4 x i8], ptr %i.ba, i64 %i.ahj
  %i.ahn = getelementptr [4 x i8], ptr %i.ahm, i64 %i.ahi
  store i32 %i.ahl, ptr %i.ahn, align 4, !tbaa !64, !noalias !1347
  %i.aho = add nuw i64 %.0.i292658, 1             ; 2 uses
  %i.ahp = and i64 %i.aho, %3
  %i.ahq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ahp
  %.0.copyload.i.i295.1 = load i64, ptr %i.ahq, align 1, !alias.scope !1349, !noalias !1350
  %i.ahr = mul i64 %.0.copyload.i.i295.1, %i.agf
  %i.ahs = lshr i64 %i.ahr, 49                    ; 2 uses
  %i.aht = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ahs ; 2 uses
  %i.ahu = load i16, ptr %i.aht, align 2, !tbaa !76, !noalias !1350 ; 2 uses
  %i.ahv = zext i16 %i.ahu to i32
  %i.ahw = and i32 %i.agg, %i.ahv
  %i.ahx = zext nneg i32 %i.ahw to i64
  %i.ahy = shl i64 %i.ahs, %i.agi
  %i.ahz = add i16 %i.ahu, 1
  store i16 %i.ahz, ptr %i.aht, align 2, !tbaa !76, !noalias !1350
  %i.aia = trunc i64 %i.aho to i32
  %i.aib = getelementptr [4 x i8], ptr %i.ba, i64 %i.ahy
  %i.aic = getelementptr [4 x i8], ptr %i.aib, i64 %i.ahx
  store i32 %i.aia, ptr %i.aic, align 4, !tbaa !64, !noalias !1350
  %i.aid = add nuw i64 %.0.i292658, 2             ; 2 uses
  %exitcond734.not.1 = icmp eq i64 %i.aid, %i.afx
  br i1 %exitcond734.not.1, label %StoreRangeH6.exit, label %.lr.ph660.new, !llvm.loop !9

FindLongestMatchH6.exit291.thread:                ; preds = %bb.ak, %FindLongestMatchH6.exit291
  %i.aie = add i64 %.0175675, 1                   ; 5 uses
  %i.aif = add i64 %.0178674, 1                   ; 9 uses
  %i.aig = icmp ugt i64 %i.aif, %.0173676
  br i1 %i.aig, label %bb.ea, label %StoreRangeH6.exit

bb.ea:                                            ; preds = %FindLongestMatchH6.exit291.thread
  %i.aih = add i64 %.0173676, %i.bq
  %i.aii = icmp ugt i64 %i.aif, %i.aih
  br i1 %i.aii, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.aij = add i64 %.0178674, 17
  %i.aik = tail call i64 @llvm.umin.i64(i64 %i.aij, i64 %i.k) ; 2 uses
  %i.ail = icmp ult i64 %i.aif, %i.aik
  br i1 %i.ail, label %.lr.ph670, label %StoreRangeH6.exit

.lr.ph670:                                        ; preds = %bb.eb
  %i.aim = load i32, ptr %i.be, align 8, !tbaa !114, !alias.scope !1351, !noalias !1352
  %i.ain = load i32, ptr %i.bc, align 4, !tbaa !112, !alias.scope !1351, !noalias !1352
  %i.aio = zext nneg i32 %i.ain to i64
  br label %bb.ec

bb.ec:                                            ; preds = %.lr.ph670, %bb.ec
  %.4668 = phi i64 [ %i.aie, %.lr.ph670 ], [ %i.ajd, %bb.ec ]
  %.4182667 = phi i64 [ %i.aif, %.lr.ph670 ], [ %i.aje, %bb.ec ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.aip = and i64 %.4182667, %3
  %i.aiq = getelementptr inbounds nuw i8, ptr %2, i64 %i.aip
  %.0.copyload.i.i293 = load i64, ptr %i.aiq, align 1, !alias.scope !1353, !noalias !1351
  %i.air = mul i64 %.0.copyload.i.i293, %i.cx
  %i.ais = lshr i64 %i.air, 49                    ; 2 uses
  %i.ait = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ais ; 2 uses
  %i.aiu = load i16, ptr %i.ait, align 2, !tbaa !76, !noalias !1351 ; 2 uses
  %i.aiv = zext i16 %i.aiu to i32
  %i.aiw = and i32 %i.aim, %i.aiv
  %i.aix = zext nneg i32 %i.aiw to i64
  %i.aiy = shl i64 %i.ais, %i.aio
  %i.aiz = add i16 %i.aiu, 1
  store i16 %i.aiz, ptr %i.ait, align 2, !tbaa !76, !noalias !1351
  %i.aja = trunc i64 %.4182667 to i32
  %i.ajb = getelementptr [4 x i8], ptr %i.ba, i64 %i.aiy
  %i.ajc = getelementptr [4 x i8], ptr %i.ajb, i64 %i.aix
  store i32 %i.aja, ptr %i.ajc, align 4, !tbaa !64, !noalias !1351
  %i.ajd = add i64 %.4668, 4                      ; 2 uses
  %i.aje = add i64 %.4182667, 4                   ; 3 uses
  %i.ajf = icmp ult i64 %i.aje, %i.aik
  br i1 %i.ajf, label %bb.ec, label %StoreRangeH6.exit, !llvm.loop !1317

bb.ed:                                            ; preds = %bb.ea
  %i.ajg = add i64 %.0178674, 9
  %i.ajh = tail call i64 @llvm.umin.i64(i64 %i.ajg, i64 %i.k) ; 2 uses
  %i.aji = icmp ult i64 %i.aif, %i.ajh
  br i1 %i.aji, label %.lr.ph664, label %StoreRangeH6.exit

.lr.ph664:                                        ; preds = %bb.ed
  %i.ajj = load i32, ptr %i.be, align 8, !tbaa !114, !alias.scope !1354, !noalias !1355
  %i.ajk = load i32, ptr %i.bc, align 4, !tbaa !112, !alias.scope !1354, !noalias !1355
  %i.ajl = zext nneg i32 %i.ajk to i64
  br label %bb.ee

end_hunk_11
begin_hunk_12_@CreateBackwardReferencesNH40:bb.a
  %.3.ph = phi i64 [ %.1176, %FindLongestMatchH40.exit._crit_edge ], [ %i.afi, %bb.ef ] ; 9 uses
  %i.afn = shl i64 %.sroa.0306.1.ph, 1
  %i.afo = add i64 %i.afn, %i.p
  %i.afp = add i64 %i.afo, %.3181.ph              ; 2 uses
  %i.afq = add i64 %.pre-phi702, %i.r             ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.15.1.ph, %i.afq
  br i1 %.not.i, label %bb.eo, label %bb.eg

bb.eg:                                            ; preds = %split
  %i.afr = add i64 %.sroa.15.1.ph, 3              ; 2 uses
  %i.afs = load i32, ptr %7, align 4, !tbaa !64
  %i.aft = sext i32 %i.afs to i64                 ; 2 uses
  %i.afu = sub i64 %i.afr, %i.aft                 ; 2 uses
  %i.afv = load i32, ptr %i.ag, align 4, !tbaa !64
  %i.afw = sext i32 %i.afv to i64                 ; 2 uses
  %i.afx = sub i64 %i.afr, %i.afw                 ; 2 uses
  %i.afy = icmp eq i64 %.sroa.15.1.ph, %i.aft
  br i1 %i.afy, label %ComputeDistanceCode.exit.thread, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.afz = icmp eq i64 %.sroa.15.1.ph, %i.afw
  br i1 %i.afz, label %ComputeDistanceCode.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.aga = icmp ult i64 %i.afu, 7
  br i1 %i.aga, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %.tr25.i = trunc nuw nsw i64 %i.afu to i32
  %i.agb = shl nuw nsw i32 %.tr25.i, 2
  %i.agc = lshr i32 158663784, %i.agb
  %i.agd = and i32 %i.agc, 15
  %i.age = zext nneg i32 %i.agd to i64
  br label %ComputeDistanceCode.exit

bb.ek:                                            ; preds = %bb.ei
  %i.agf = icmp ult i64 %i.afx, 7
  br i1 %i.agf, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %.tr.i = trunc nuw nsw i64 %i.afx to i32
  %i.agg = shl nuw nsw i32 %.tr.i, 2
  %i.agh = lshr i32 266017486, %i.agg
  %i.agi = and i32 %i.agh, 15
  %i.agj = zext nneg i32 %i.agi to i64
  br label %ComputeDistanceCode.exit

bb.em:                                            ; preds = %bb.ek
  %i.agk = load i32, ptr %i.ah, align 4, !tbaa !64
  %i.agl = sext i32 %i.agk to i64
  %i.agm = icmp eq i64 %.sroa.15.1.ph, %i.agl
  br i1 %i.agm, label %ComputeDistanceCode.exit, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.agn = load i32, ptr %i.ai, align 4, !tbaa !64
  %i.ago = sext i32 %i.agn to i64
  %.not418 = icmp eq i64 %.sroa.15.1.ph, %i.ago
  br i1 %.not418, label %ComputeDistanceCode.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %split
  %i.agp = add i64 %.sroa.15.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.eh, %bb.el, %bb.ej, %bb.em, %bb.en, %bb.eo
  %.1.i = phi i64 [ %i.agp, %bb.eo ], [ 3, %bb.en ], [ 1, %bb.eh ], [ %i.agj, %bb.el ], [ %i.age, %bb.ej ], [ 2, %bb.em ] ; 3 uses
  %i.agq = icmp ule i64 %.sroa.15.1.ph, %i.afq
  %i.agr = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.agq, i1 %i.agr, i1 false
  br i1 %or.cond, label %bb.ep, label %ComputeDistanceCode.exit.thread

bb.ep:                                            ; preds = %ComputeDistanceCode.exit
  %i.ags = load i32, ptr %i.ah, align 4, !tbaa !64
  store i32 %i.ags, ptr %i.ai, align 4, !tbaa !64
  %i.agt = load <2 x i32>, ptr %7, align 4, !tbaa !64
  store <2 x i32> %i.agt, ptr %i.ag, align 4, !tbaa !64
  %i.agu = trunc i64 %.sroa.15.1.ph to i32
  store i32 %i.agu, ptr %7, align 4, !tbaa !64
  br label %ComputeDistanceCode.exit.thread

ComputeDistanceCode.exit.thread:                  ; preds = %bb.eg, %bb.ep, %ComputeDistanceCode.exit
  %.1.i414 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.ep ], [ 0, %bb.eg ] ; 3 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %.0185624, i64 16 ; 2 uses
  %i.agw = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.agw, ptr %.0185624, align 4, !tbaa !103
  %i.agx = shl i32 %.sroa.34.1.ph, 25
  %i.agy = trunc i64 %.sroa.0306.1.ph to i32      ; 2 uses
  %i.agz = or i32 %i.agx, %i.agy
  %i.aha = getelementptr inbounds nuw i8, ptr %.0185624, i64 4
  store i32 %i.agz, ptr %i.aha, align 4, !tbaa !104
  %i.ahb = load i32, ptr %i.aj, align 4, !tbaa !105
  %i.ahc = zext i32 %i.ahb to i64                 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0185624, i64 14
  %i.ahe = getelementptr inbounds nuw i8, ptr %.0185624, i64 8
  %i.ahf = add nuw nsw i64 %i.ahc, 16             ; 2 uses
  %i.ahg = icmp ult i64 %.1.i414, %i.ahf
  br i1 %i.ahg, label %PrefixEncodeCopyDistance.exit, label %bb.eq

bb.eq:                                            ; preds = %ComputeDistanceCode.exit.thread
  %i.ahh = load i32, ptr %i.z, align 8, !tbaa !106 ; 2 uses
  %i.ahi = zext i32 %i.ahh to i64                 ; 4 uses
  %i.ahj = shl nuw i64 4, %i.ahi
  %i.ahk = add i64 %.1.i414, -16
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
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %ComputeDistanceCode.exit.thread, %bb.eq
  %.sink.in = phi i64 [ %i.aig, %bb.eq ], [ %.1.i414, %ComputeDistanceCode.exit.thread ]
  %storemerge.i = phi i32 [ %i.aij, %bb.eq ], [ 0, %ComputeDistanceCode.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.ahd, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.ahe, align 4, !tbaa !64
  %i.aik = add nsw i32 %.sroa.34.1.ph, %i.agy     ; 6 uses
  %i.ail = and i16 %.sink, 1023
  %i.aim = icmp eq i16 %i.ail, 0
  %i.ain = getelementptr inbounds nuw i8, ptr %.0185624, i64 12
  %i.aio = icmp ult i64 %.3.ph, 6
  br i1 %i.aio, label %bb.er, label %bb.es

bb.er:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.aip = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.es:                                            ; preds = %PrefixEncodeCopyDistance.exit
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
  br label %GetInsertLengthCode.exit

bb.eu:                                            ; preds = %bb.es
  %i.ajc = icmp ult i64 %.3.ph, 2114
  br i1 %i.ajc, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.ajd = add nsw i32 %i.agw, -66
  %i.aje = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ajd, i1 true)
  %i.ajf = trunc nuw nsw i32 %i.aje to i16
  %i.ajg = sub nuw nsw i16 41, %i.ajf
  br label %GetInsertLengthCode.exit

bb.ew:                                            ; preds = %bb.eu
  %i.ajh = icmp ult i64 %.3.ph, 6210
  br i1 %i.ajh, label %GetInsertLengthCode.exit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aji = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.aji, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.er, %bb.et, %bb.ev, %bb.ew, %bb.ex
  %.0.i197 = phi i16 [ %i.aip, %bb.er ], [ %i.ajb, %bb.et ], [ %i.ajg, %bb.ev ], [ 21, %bb.ew ], [ %..i, %bb.ex ] ; 3 uses
  %i.ajj = icmp ult i32 %i.aik, 10
  br i1 %i.ajj, label %GetCopyLengthCode.exit, label %bb.ey

bb.ey:                                            ; preds = %GetInsertLengthCode.exit
  %i.ajk = icmp ult i32 %i.aik, 134
  br i1 %i.ajk, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %narrow = add nsw i32 %i.aik, -6                ; 2 uses
  %i.ajl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.ajm = sub nuw nsw i32 30, %i.ajl             ; 2 uses
  %i.ajn = shl nuw nsw i32 %i.ajm, 1
  %i.ajo = lshr i32 %narrow, %i.ajm
  %i.ajp = add nuw nsw i32 %i.ajo, %i.ajn
  br label %GetCopyLengthCode.exit

bb.fa:                                            ; preds = %bb.ey
  %i.ajq = icmp ult i32 %i.aik, 2118
  br i1 %i.ajq, label %GetCopyLengthCode.exit.thread846, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread846:                 ; preds = %bb.fa
  %i.ajr = add nsw i32 %i.aik, -70
  %i.ajs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ajr, i1 true)
  %i.ajt = trunc nuw nsw i32 %i.ajs to i16
  %i.aju = sub nuw nsw i16 43, %i.ajt
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.ez
  %.sink955 = phi i32 [ %i.ajp, %bb.ez ], [ %i.aik, %GetInsertLengthCode.exit ]
  %.sink954 = phi i16 [ 4, %bb.ez ], [ -2, %GetInsertLengthCode.exit ]
  %i.ajv = trunc nuw nsw i32 %.sink955 to i16
  %i.ajw = add nsw i16 %.sink954, %i.ajv          ; 4 uses
  %i.ajx = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.aim, %i.ajx
  %i.ajy = icmp ult i16 %i.ajw, 16
  %or.cond5.i = and i1 %or.cond.i, %i.ajy
  br i1 %or.cond5.i, label %bb.fb, label %GetCopyLengthCode.exit.thread

bb.fb:                                            ; preds = %GetCopyLengthCode.exit
  %i.ajz = shl nuw nsw i16 %i.ajw, 3
  %i.aka = and i16 %i.ajz, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread846, %bb.fa, %GetCopyLengthCode.exit
  %.0.i198408 = phi i16 [ %i.ajw, %GetCopyLengthCode.exit ], [ 23, %bb.fa ], [ %i.aju, %GetCopyLengthCode.exit.thread846 ] ; 2 uses
  %i.akb = lshr i16 %.0.i198408, 3
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
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.fb, %GetCopyLengthCode.exit.thread
  %.0.i198409 = phi i16 [ %i.ajw, %bb.fb ], [ %.0.i198408, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.aka, %bb.fb ], [ %i.akk, %GetCopyLengthCode.exit.thread ]
  %i.akl = and i16 %.0.i198409, 7
  %i.akm = shl nuw nsw i16 %.0.i197, 3
  %i.akn = and i16 %i.akm, 56
  %i.ako = or disjoint i16 %i.akl, %i.akn
  %.0.i199 = or disjoint i16 %i.ako, %.pn.i
  store i16 %.0.i199, ptr %i.ain, align 4, !tbaa !76
  %i.akp = load i64, ptr %11, align 8, !tbaa !58
  %i.akq = add i64 %i.akp, %.3.ph
  store i64 %i.akq, ptr %11, align 8, !tbaa !58
  %i.akr = add i64 %.3181.ph, 2                   ; 2 uses
  %i.aks = add i64 %.3181.ph, %.sroa.0306.1.ph    ; 4 uses
  %i.akt = tail call i64 @llvm.umin.i64(i64 %i.aks, i64 %spec.select) ; 3 uses
  %i.aku = lshr i64 %.sroa.0306.1.ph, 2
  %i.akv = icmp ult i64 %.sroa.15.1.ph, %i.aku
  br i1 %i.akv, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %CombineLengthCodes.exit
  %i.akw = shl nuw i64 %.sroa.15.1.ph, 2
  %i.akx = sub i64 %i.aks, %i.akw
  %i.aky = tail call i64 @llvm.umax.i64(i64 %i.akr, i64 %i.akx)
  %i.akz = tail call i64 @llvm.umin.i64(i64 %i.akt, i64 %i.aky)
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.akz, %bb.fc ], [ %i.akr, %CombineLengthCodes.exit ] ; 2 uses
  %i.ala = icmp ult i64 %.0, %i.akt
  br i1 %i.ala, label %.lr.ph608, label %StoreRangeH40.exit

.lr.ph608:                                        ; preds = %bb.fd
  %i.alb = load ptr, ptr %i.ab, align 8, !tbaa !136, !alias.scope !1419, !noalias !1420 ; 3 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 131072
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alb, i64 196608
  %i.ale = load ptr, ptr %i.ac, align 8, !tbaa !136, !alias.scope !1419, !noalias !1420
  %.promoted609 = load i16, ptr %i.a, align 8, !tbaa !76, !alias.scope !1419, !noalias !1420
  br label %bb.fe

bb.fe:                                            ; preds = %.lr.ph608, %bb.fe
  %i.alf = phi i16 [ %.promoted609, %.lr.ph608 ], [ %i.all, %bb.fe ] ; 3 uses
  %.0.i290607 = phi i64 [ %.0, %.lr.ph608 ], [ %i.ama, %bb.fe ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.alg = and i64 %.0.i290607, %3
  %i.alh = getelementptr inbounds nuw i8, ptr %2, i64 %i.alg
  %.0.copyload.i.i300 = load i32, ptr %i.alh, align 1, !alias.scope !1421, !noalias !1419
  %i.ali = mul i32 %.0.copyload.i.i300, 506832829
  %i.alj = lshr i32 %i.ali, 17                    ; 2 uses
  %i.alk = zext nneg i32 %i.alj to i64            ; 2 uses
  %i.all = add i16 %i.alf, 1                      ; 2 uses
  %i.alm = zext i16 %i.alf to i64
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %i.alk ; 2 uses
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !64, !noalias !1419
  %i.alp = zext i32 %i.alo to i64
  %i.alq = sub i64 %.0.i290607, %i.alp
  %i.alr = trunc i32 %i.alj to i8
  %i.als = and i64 %.0.i290607, 65535
  %i.alt = getelementptr inbounds nuw i8, ptr %i.ald, i64 %i.als
  store i8 %i.alr, ptr %i.alt, align 1, !tbaa !68, !noalias !1419
  %spec.store.select.i291 = tail call i64 @llvm.umin.i64(i64 %i.alq, i64 65535)
  %i.alu = trunc nuw i64 %spec.store.select.i291 to i16
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.ale, i64 %i.alm ; 2 uses
  store i16 %i.alu, ptr %i.alv, align 2, !tbaa !141, !noalias !1419
  %i.alw = getelementptr inbounds nuw [2 x i8], ptr %i.alc, i64 %i.alk ; 2 uses
  %i.alx = load i16, ptr %i.alw, align 2, !tbaa !76, !noalias !1419
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alv, i64 2
  store i16 %i.alx, ptr %i.aly, align 2, !tbaa !140, !noalias !1419
  %i.alz = trunc i64 %.0.i290607 to i32
  store i32 %i.alz, ptr %i.aln, align 4, !tbaa !64, !noalias !1419
  store i16 %i.alf, ptr %i.alw, align 2, !tbaa !76, !noalias !1419
  %i.ama = add nuw i64 %.0.i290607, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ama, %i.akt
  br i1 %exitcond.not, label %StoreRangeH40.exit.sink.split, label %bb.fe, !llvm.loop !18

FindLongestMatchH40.exit289.thread:               ; preds = %bb.az, %FindLongestMatchH40.exit289
  %i.amb = add i64 %.0175626, 1                   ; 5 uses
  %i.amc = add i64 %.0178625, 1                   ; 9 uses
  %i.amd = icmp ugt i64 %i.amc, %.0173627
  br i1 %i.amd, label %bb.ff, label %StoreRangeH40.exit

bb.ff:                                            ; preds = %FindLongestMatchH40.exit289.thread
  %i.ame = add i64 %.0173627, %i.ak
  %i.amf = icmp ugt i64 %i.amc, %i.ame
  br i1 %i.amf, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  %i.amg = add i64 %.0178625, 17
  %i.amh = tail call i64 @llvm.umin.i64(i64 %i.amg, i64 %i.al) ; 2 uses
  %i.ami = icmp ult i64 %i.amc, %i.amh
  br i1 %i.ami, label %.lr.ph619, label %StoreRangeH40.exit

.lr.ph619:                                        ; preds = %bb.fg
  %i.amj = load ptr, ptr %i.ab, align 8, !tbaa !136, !alias.scope !1422, !noalias !1423 ; 3 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 131072
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amj, i64 196608
  %i.amm = load ptr, ptr %i.ac, align 8, !tbaa !136, !alias.scope !1422, !noalias !1423
  %.promoted622 = load i16, ptr %i.a, align 8, !tbaa !76, !alias.scope !1422, !noalias !1423
  br label %bb.fh

bb.fh:                                            ; preds = %.lr.ph619, %bb.fh
  %i.amn = phi i16 [ %.promoted622, %.lr.ph619 ], [ %i.amt, %bb.fh ] ; 3 uses
  %.4618 = phi i64 [ %i.amb, %.lr.ph619 ], [ %i.ani, %bb.fh ]
  %.4182617 = phi i64 [ %i.amc, %.lr.ph619 ], [ %i.anj, %bb.fh ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  %i.amo = and i64 %.4182617, %3
  %i.amp = getelementptr inbounds nuw i8, ptr %2, i64 %i.amo
  %.0.copyload.i.i296 = load i32, ptr %i.amp, align 1, !alias.scope !1424, !noalias !1422
  %i.amq = mul i32 %.0.copyload.i.i296, 506832829
  %i.amr = lshr i32 %i.amq, 17                    ; 2 uses
  %i.ams = zext nneg i32 %i.amr to i64            ; 2 uses
  %i.amt = add i16 %i.amn, 1                      ; 2 uses
  %i.amu = zext i16 %i.amn to i64
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %i.amj, i64 %i.ams ; 2 uses
  %i.amw = load i32, ptr %i.amv, align 4, !tbaa !64, !noalias !1422
  %i.amx = zext i32 %i.amw to i64
  %i.amy = sub i64 %.4182617, %i.amx
  %i.amz = trunc i32 %i.amr to i8
  %i.ana = and i64 %.4182617, 65535
  %i.anb = getelementptr inbounds nuw i8, ptr %i.aml, i64 %i.ana
  store i8 %i.amz, ptr %i.anb, align 1, !tbaa !68, !noalias !1422
  %spec.store.select.i295 = tail call i64 @llvm.umin.i64(i64 %i.amy, i64 65535)
  %i.anc = trunc nuw i64 %spec.store.select.i295 to i16
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %i.amm, i64 %i.amu ; 2 uses
  store i16 %i.anc, ptr %i.and, align 2, !tbaa !141, !noalias !1422
  %i.ane = getelementptr inbounds nuw [2 x i8], ptr %i.amk, i64 %i.ams ; 2 uses
  %i.anf = load i16, ptr %i.ane, align 2, !tbaa !76, !noalias !1422
  %i.ang = getelementptr inbounds nuw i8, ptr %i.and, i64 2
  store i16 %i.anf, ptr %i.ang, align 2, !tbaa !140, !noalias !1422
  %i.anh = trunc i64 %.4182617 to i32
  store i32 %i.anh, ptr %i.amv, align 4, !tbaa !64, !noalias !1422
  store i16 %i.amn, ptr %i.ane, align 2, !tbaa !76, !noalias !1422
  %i.ani = add i64 %.4618, 4                      ; 2 uses
  %i.anj = add i64 %.4182617, 4                   ; 3 uses
  %i.ank = icmp ult i64 %i.anj, %i.amh
  br i1 %i.ank, label %bb.fh, label %StoreRangeH40.exit.sink.split, !llvm.loop !1387

bb.fi:                                            ; preds = %bb.ff
  %i.anl = add i64 %.0178625, 9
  %i.anm = tail call i64 @llvm.umin.i64(i64 %i.anl, i64 %i.l) ; 2 uses
  %i.ann = icmp ult i64 %i.amc, %i.anm
  br i1 %i.ann, label %.lr.ph612, label %StoreRangeH40.exit

.lr.ph612:                                        ; preds = %bb.fi
  %i.ano = load ptr, ptr %i.ab, align 8, !tbaa !136, !alias.scope !1425, !noalias !1426 ; 3 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 131072
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ano, i64 196608
  %i.anr = load ptr, ptr %i.ac, align 8, !tbaa !136, !alias.scope !1425, !noalias !1426
  %.promoted615 = load i16, ptr %i.a, align 8, !tbaa !76, !alias.scope !1425, !noalias !1426
  br label %bb.fj

bb.fj:                                            ; preds = %.lr.ph612, %bb.fj
  %i.ans = phi i16 [ %.promoted615, %.lr.ph612 ], [ %i.any, %bb.fj ] ; 3 uses
  %.5611 = phi i64 [ %i.amb, %.lr.ph612 ], [ %i.aon, %bb.fj ]
  %.5183610 = phi i64 [ %i.amc, %.lr.ph612 ], [ %i.aoo, %bb.fj ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  %i.ant = and i64 %.5183610, %3
  %i.anu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ant
  %.0.copyload.i.i297 = load i32, ptr %i.anu, align 1, !alias.scope !1427, !noalias !1425
  %i.anv = mul i32 %.0.copyload.i.i297, 506832829
  %i.anw = lshr i32 %i.anv, 17                    ; 2 uses
  %i.anx = zext nneg i32 %i.anw to i64            ; 2 uses
  %i.any = add i16 %i.ans, 1                      ; 2 uses
  %i.anz = zext i16 %i.ans to i64
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.ano, i64 %i.anx ; 2 uses
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !64, !noalias !1425
  %i.aoc = zext i32 %i.aob to i64
  %i.aod = sub i64 %.5183610, %i.aoc
  %i.aoe = trunc i32 %i.anw to i8
  %i.aof = and i64 %.5183610, 65535
  %i.aog = getelementptr inbounds nuw i8, ptr %i.anq, i64 %i.aof
  store i8 %i.aoe, ptr %i.aog, align 1, !tbaa !68, !noalias !1425
  %spec.store.select.i294 = tail call i64 @llvm.umin.i64(i64 %i.aod, i64 65535)
end_hunk_12
begin_hunk_13_@CreateBackwardReferencesNH41:bb.a
bb.cs:                                            ; preds = %split
  %i.yx = add i64 %.sroa.15.1.ph, 3               ; 2 uses
  %i.yy = load i32, ptr %7, align 4, !tbaa !64
  %i.yz = sext i32 %i.yy to i64                   ; 2 uses
  %i.za = sub i64 %i.yx, %i.yz                    ; 2 uses
  %i.zb = load i32, ptr %i.aq, align 4, !tbaa !64
  %i.zc = sext i32 %i.zb to i64                   ; 2 uses
  %i.zd = sub i64 %i.yx, %i.zc                    ; 2 uses
  %i.ze = icmp eq i64 %.sroa.15.1.ph, %i.yz
  br i1 %i.ze, label %ComputeDistanceCode.exit.thread, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.zf = icmp eq i64 %.sroa.15.1.ph, %i.zc
  br i1 %i.zf, label %ComputeDistanceCode.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.zg = icmp ult i64 %i.za, 7
  br i1 %i.zg, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %.tr25.i = trunc nuw nsw i64 %i.za to i32
  %i.zh = shl nuw nsw i32 %.tr25.i, 2
  %i.zi = lshr i32 158663784, %i.zh
  %i.zj = and i32 %i.zi, 15
  %i.zk = zext nneg i32 %i.zj to i64
  br label %ComputeDistanceCode.exit

bb.cw:                                            ; preds = %bb.cu
  %i.zl = icmp ult i64 %i.zd, 7
  br i1 %i.zl, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %.tr.i = trunc nuw nsw i64 %i.zd to i32
  %i.zm = shl nuw nsw i32 %.tr.i, 2
  %i.zn = lshr i32 266017486, %i.zm
  %i.zo = and i32 %i.zn, 15
  %i.zp = zext nneg i32 %i.zo to i64
  br label %ComputeDistanceCode.exit

bb.cy:                                            ; preds = %bb.cw
  %i.zq = load i32, ptr %i.ar, align 4, !tbaa !64
  %i.zr = sext i32 %i.zq to i64
  %i.zs = icmp eq i64 %.sroa.15.1.ph, %i.zr
  br i1 %i.zs, label %ComputeDistanceCode.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zt = load i32, ptr %i.as, align 4, !tbaa !64
  %i.zu = sext i32 %i.zt to i64
  %.not418 = icmp eq i64 %.sroa.15.1.ph, %i.zu
  br i1 %.not418, label %ComputeDistanceCode.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz, %split
  %i.zv = add i64 %.sroa.15.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.ct, %bb.cx, %bb.cv, %bb.cy, %bb.cz, %bb.da
  %.1.i = phi i64 [ %i.zv, %bb.da ], [ 3, %bb.cz ], [ 1, %bb.ct ], [ %i.zp, %bb.cx ], [ %i.zk, %bb.cv ], [ 2, %bb.cy ] ; 3 uses
  %i.zw = icmp ule i64 %.sroa.15.1.ph, %i.yw
  %i.zx = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.zw, i1 %i.zx, i1 false
  br i1 %or.cond, label %bb.db, label %ComputeDistanceCode.exit.thread

bb.db:                                            ; preds = %ComputeDistanceCode.exit
  %i.zy = load i32, ptr %i.ar, align 4, !tbaa !64
  store i32 %i.zy, ptr %i.as, align 4, !tbaa !64
  %i.zz = load <2 x i32>, ptr %7, align 4, !tbaa !64
  store <2 x i32> %i.zz, ptr %i.aq, align 4, !tbaa !64
  %i.aaa = trunc i64 %.sroa.15.1.ph to i32        ; 4 uses
  store i32 %i.aaa, ptr %7, align 4, !tbaa !64
  %i.aab = insertelement <4 x i32> poison, i32 %i.aaa, i64 0
  %i.aac = shufflevector <4 x i32> %i.aab, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aad = add nsw <4 x i32> %i.aac, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.aad, ptr %i.t, align 4, !tbaa !64, !alias.scope !1499
  %i.aae = add nsw i32 %i.aaa, -3
  store i32 %i.aae, ptr %i.x, align 4, !tbaa !64, !alias.scope !1499
  %i.aaf = add nsw i32 %i.aaa, 3
  store i32 %i.aaf, ptr %i.y, align 4, !tbaa !64, !alias.scope !1499
  br label %ComputeDistanceCode.exit.thread

ComputeDistanceCode.exit.thread:                  ; preds = %bb.cs, %bb.db, %ComputeDistanceCode.exit
  %.1.i414 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.db ], [ 0, %bb.cs ] ; 3 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.0185624, i64 16 ; 2 uses
  %i.aah = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.aah, ptr %.0185624, align 4, !tbaa !103
  %i.aai = shl i32 %.sroa.34.1.ph, 25
  %i.aaj = trunc i64 %.sroa.0306.1.ph to i32      ; 2 uses
  %i.aak = or i32 %i.aai, %i.aaj
  %i.aal = getelementptr inbounds nuw i8, ptr %.0185624, i64 4
  store i32 %i.aak, ptr %i.aal, align 4, !tbaa !104
  %i.aam = load i32, ptr %i.at, align 4, !tbaa !105
  %i.aan = zext i32 %i.aam to i64                 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.0185624, i64 14
  %i.aap = getelementptr inbounds nuw i8, ptr %.0185624, i64 8
  %i.aaq = add nuw nsw i64 %i.aan, 16             ; 2 uses
  %i.aar = icmp ult i64 %.1.i414, %i.aaq
  br i1 %i.aar, label %PrefixEncodeCopyDistance.exit, label %bb.dc

bb.dc:                                            ; preds = %ComputeDistanceCode.exit.thread
  %i.aas = load i32, ptr %i.aj, align 8, !tbaa !106 ; 2 uses
  %i.aat = zext i32 %i.aas to i64                 ; 4 uses
  %i.aau = shl nuw i64 4, %i.aat
  %i.aav = add i64 %.1.i414, -16
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
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %ComputeDistanceCode.exit.thread, %bb.dc
  %.sink.in = phi i64 [ %i.abr, %bb.dc ], [ %.1.i414, %ComputeDistanceCode.exit.thread ]
  %storemerge.i = phi i32 [ %i.abu, %bb.dc ], [ 0, %ComputeDistanceCode.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.aao, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.aap, align 4, !tbaa !64
  %i.abv = add nsw i32 %.sroa.34.1.ph, %i.aaj     ; 6 uses
  %i.abw = and i16 %.sink, 1023
  %i.abx = icmp eq i16 %i.abw, 0
  %i.aby = getelementptr inbounds nuw i8, ptr %.0185624, i64 12
  %i.abz = icmp ult i64 %.3.ph, 6
  br i1 %i.abz, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.aca = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.de:                                            ; preds = %PrefixEncodeCopyDistance.exit
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
  br label %GetInsertLengthCode.exit

bb.dg:                                            ; preds = %bb.de
  %i.acn = icmp ult i64 %.3.ph, 2114
  br i1 %i.acn, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.aco = add nsw i32 %i.aah, -66
  %i.acp = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aco, i1 true)
  %i.acq = trunc nuw nsw i32 %i.acp to i16
  %i.acr = sub nuw nsw i16 41, %i.acq
  br label %GetInsertLengthCode.exit

bb.di:                                            ; preds = %bb.dg
  %i.acs = icmp ult i64 %.3.ph, 6210
  br i1 %i.acs, label %GetInsertLengthCode.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.act = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.act, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.dd, %bb.df, %bb.dh, %bb.di, %bb.dj
  %.0.i197 = phi i16 [ %i.aca, %bb.dd ], [ %i.acm, %bb.df ], [ %i.acr, %bb.dh ], [ 21, %bb.di ], [ %..i, %bb.dj ] ; 3 uses
  %i.acu = icmp ult i32 %i.abv, 10
  br i1 %i.acu, label %GetCopyLengthCode.exit, label %bb.dk

bb.dk:                                            ; preds = %GetInsertLengthCode.exit
  %i.acv = icmp ult i32 %i.abv, 134
  br i1 %i.acv, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %narrow = add nsw i32 %i.abv, -6                ; 2 uses
  %i.acw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.acx = sub nuw nsw i32 30, %i.acw             ; 2 uses
  %i.acy = shl nuw nsw i32 %i.acx, 1
  %i.acz = lshr i32 %narrow, %i.acx
  %i.ada = add nuw nsw i32 %i.acz, %i.acy
  br label %GetCopyLengthCode.exit

bb.dm:                                            ; preds = %bb.dk
  %i.adb = icmp ult i32 %i.abv, 2118
  br i1 %i.adb, label %GetCopyLengthCode.exit.thread793, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread793:                 ; preds = %bb.dm
  %i.adc = add nsw i32 %i.abv, -70
  %i.add = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adc, i1 true)
  %i.ade = trunc nuw nsw i32 %i.add to i16
  %i.adf = sub nuw nsw i16 43, %i.ade
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.dl
  %.sink866 = phi i32 [ %i.ada, %bb.dl ], [ %i.abv, %GetInsertLengthCode.exit ]
  %.sink865 = phi i16 [ 4, %bb.dl ], [ -2, %GetInsertLengthCode.exit ]
  %i.adg = trunc nuw nsw i32 %.sink866 to i16
  %i.adh = add nsw i16 %.sink865, %i.adg          ; 4 uses
  %i.adi = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.abx, %i.adi
  %i.adj = icmp ult i16 %i.adh, 16
  %or.cond5.i = and i1 %or.cond.i, %i.adj
  br i1 %or.cond5.i, label %bb.dn, label %GetCopyLengthCode.exit.thread

bb.dn:                                            ; preds = %GetCopyLengthCode.exit
  %i.adk = shl nuw nsw i16 %i.adh, 3
  %i.adl = and i16 %i.adk, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread793, %bb.dm, %GetCopyLengthCode.exit
  %.0.i198408 = phi i16 [ %i.adh, %GetCopyLengthCode.exit ], [ 23, %bb.dm ], [ %i.adf, %GetCopyLengthCode.exit.thread793 ] ; 2 uses
  %i.adm = lshr i16 %.0.i198408, 3
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
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.dn, %GetCopyLengthCode.exit.thread
  %.0.i198409 = phi i16 [ %i.adh, %bb.dn ], [ %.0.i198408, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.adl, %bb.dn ], [ %i.adv, %GetCopyLengthCode.exit.thread ]
  %i.adw = and i16 %.0.i198409, 7
  %i.adx = shl nuw nsw i16 %.0.i197, 3
  %i.ady = and i16 %i.adx, 56
  %i.adz = or disjoint i16 %i.adw, %i.ady
  %.0.i199 = or disjoint i16 %i.adz, %.pn.i
  store i16 %.0.i199, ptr %i.aby, align 4, !tbaa !76
  %i.aea = load i64, ptr %11, align 8, !tbaa !58
  %i.aeb = add i64 %i.aea, %.3.ph
  store i64 %i.aeb, ptr %11, align 8, !tbaa !58
  %i.aec = add i64 %.3181.ph, 2                   ; 2 uses
  %i.aed = add i64 %.3181.ph, %.sroa.0306.1.ph    ; 4 uses
  %i.aee = tail call i64 @llvm.umin.i64(i64 %i.aed, i64 %spec.select) ; 3 uses
  %i.aef = lshr i64 %.sroa.0306.1.ph, 2
  %i.aeg = icmp ult i64 %.sroa.15.1.ph, %i.aef
  br i1 %i.aeg, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %CombineLengthCodes.exit
  %i.aeh = shl nuw i64 %.sroa.15.1.ph, 2
  %i.aei = sub i64 %i.aed, %i.aeh
  %i.aej = tail call i64 @llvm.umax.i64(i64 %i.aec, i64 %i.aei)
  %i.aek = tail call i64 @llvm.umin.i64(i64 %i.aee, i64 %i.aej)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.aek, %bb.do ], [ %i.aec, %CombineLengthCodes.exit ] ; 2 uses
  %i.ael = icmp ult i64 %.0, %i.aee
  br i1 %i.ael, label %.lr.ph608, label %StoreRangeH41.exit

.lr.ph608:                                        ; preds = %bb.dp
  %i.aem = load ptr, ptr %i.al, align 8, !tbaa !136, !alias.scope !1500, !noalias !1501 ; 3 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 131072
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aem, i64 196608
  %i.aep = load ptr, ptr %i.am, align 8, !tbaa !136, !alias.scope !1500, !noalias !1501
  %.promoted609 = load i16, ptr %i.a, align 8, !tbaa !76, !alias.scope !1500, !noalias !1501
  br label %bb.dq

bb.dq:                                            ; preds = %.lr.ph608, %bb.dq
  %i.aeq = phi i16 [ %.promoted609, %.lr.ph608 ], [ %i.aew, %bb.dq ] ; 3 uses
  %.0.i290607 = phi i64 [ %.0, %.lr.ph608 ], [ %i.afl, %bb.dq ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  %i.aer = and i64 %.0.i290607, %3
  %i.aes = getelementptr inbounds nuw i8, ptr %2, i64 %i.aer
  %.0.copyload.i.i300 = load i32, ptr %i.aes, align 1, !alias.scope !1502, !noalias !1500
  %i.aet = mul i32 %.0.copyload.i.i300, 506832829
  %i.aeu = lshr i32 %i.aet, 17                    ; 2 uses
  %i.aev = zext nneg i32 %i.aeu to i64            ; 2 uses
  %i.aew = add i16 %i.aeq, 1                      ; 2 uses
  %i.aex = zext i16 %i.aeq to i64
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %i.aev ; 2 uses
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !64, !noalias !1500
  %i.afa = zext i32 %i.aez to i64
  %i.afb = sub i64 %.0.i290607, %i.afa
  %i.afc = trunc i32 %i.aeu to i8
  %i.afd = and i64 %.0.i290607, 65535
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aeo, i64 %i.afd
  store i8 %i.afc, ptr %i.afe, align 1, !tbaa !68, !noalias !1500
  %spec.store.select.i291 = tail call i64 @llvm.umin.i64(i64 %i.afb, i64 65535)
  %i.aff = trunc nuw i64 %spec.store.select.i291 to i16
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %i.aex ; 2 uses
  store i16 %i.aff, ptr %i.afg, align 2, !tbaa !148, !noalias !1500
  %i.afh = getelementptr inbounds nuw [2 x i8], ptr %i.aen, i64 %i.aev ; 2 uses
  %i.afi = load i16, ptr %i.afh, align 2, !tbaa !76, !noalias !1500
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afg, i64 2
  store i16 %i.afi, ptr %i.afj, align 2, !tbaa !147, !noalias !1500
  %i.afk = trunc i64 %.0.i290607 to i32
  store i32 %i.afk, ptr %i.aey, align 4, !tbaa !64, !noalias !1500
  store i16 %i.aeq, ptr %i.afh, align 2, !tbaa !76, !noalias !1500
  %i.afl = add nuw i64 %.0.i290607, 1             ; 2 uses
  %exitcond684.not = icmp eq i64 %i.afl, %i.aee
  br i1 %exitcond684.not, label %StoreRangeH41.exit.sink.split, label %bb.dq, !llvm.loop !21

FindLongestMatchH41.exit289.thread:               ; preds = %bb.af, %FindLongestMatchH41.exit289
  %i.afm = add i64 %.0175626, 1                   ; 5 uses
  %i.afn = add i64 %.0178625, 1                   ; 9 uses
  %i.afo = icmp ugt i64 %i.afn, %.0173627
  br i1 %i.afo, label %bb.dr, label %StoreRangeH41.exit

bb.dr:                                            ; preds = %FindLongestMatchH41.exit289.thread
  %i.afp = add i64 %.0173627, %i.au
  %i.afq = icmp ugt i64 %i.afn, %i.afp
  br i1 %i.afq, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.afr = add i64 %.0178625, 17
  %i.afs = tail call i64 @llvm.umin.i64(i64 %i.afr, i64 %i.av) ; 2 uses
  %i.aft = icmp ult i64 %i.afn, %i.afs
  br i1 %i.aft, label %.lr.ph619, label %StoreRangeH41.exit

.lr.ph619:                                        ; preds = %bb.ds
  %i.afu = load ptr, ptr %i.al, align 8, !tbaa !136, !alias.scope !1503, !noalias !1504 ; 3 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 131072
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afu, i64 196608
  %i.afx = load ptr, ptr %i.am, align 8, !tbaa !136, !alias.scope !1503, !noalias !1504
  %.promoted622 = load i16, ptr %i.a, align 8, !tbaa !76, !alias.scope !1503, !noalias !1504
  br label %bb.dt

bb.dt:                                            ; preds = %.lr.ph619, %bb.dt
  %i.afy = phi i16 [ %.promoted622, %.lr.ph619 ], [ %i.age, %bb.dt ] ; 3 uses
  %.4618 = phi i64 [ %i.afm, %.lr.ph619 ], [ %i.agt, %bb.dt ]
  %.4182617 = phi i64 [ %i.afn, %.lr.ph619 ], [ %i.agu, %bb.dt ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1503)
  %i.afz = and i64 %.4182617, %3
  %i.aga = getelementptr inbounds nuw i8, ptr %2, i64 %i.afz
  %.0.copyload.i.i296 = load i32, ptr %i.aga, align 1, !alias.scope !1505, !noalias !1503
  %i.agb = mul i32 %.0.copyload.i.i296, 506832829
  %i.agc = lshr i32 %i.agb, 17                    ; 2 uses
  %i.agd = zext nneg i32 %i.agc to i64            ; 2 uses
  %i.age = add i16 %i.afy, 1                      ; 2 uses
  %i.agf = zext i16 %i.afy to i64
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.agd ; 2 uses
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !64, !noalias !1503
  %i.agi = zext i32 %i.agh to i64
  %i.agj = sub i64 %.4182617, %i.agi
  %i.agk = trunc i32 %i.agc to i8
  %i.agl = and i64 %.4182617, 65535
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afw, i64 %i.agl
  store i8 %i.agk, ptr %i.agm, align 1, !tbaa !68, !noalias !1503
  %spec.store.select.i295 = tail call i64 @llvm.umin.i64(i64 %i.agj, i64 65535)
  %i.agn = trunc nuw i64 %spec.store.select.i295 to i16
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %i.agf ; 2 uses
  store i16 %i.agn, ptr %i.ago, align 2, !tbaa !148, !noalias !1503
  %i.agp = getelementptr inbounds nuw [2 x i8], ptr %i.afv, i64 %i.agd ; 2 uses
  %i.agq = load i16, ptr %i.agp, align 2, !tbaa !76, !noalias !1503
  %i.agr = getelementptr inbounds nuw i8, ptr %i.ago, i64 2
  store i16 %i.agq, ptr %i.agr, align 2, !tbaa !147, !noalias !1503
  %i.ags = trunc i64 %.4182617 to i32
  store i32 %i.ags, ptr %i.agg, align 4, !tbaa !64, !noalias !1503
  store i16 %i.afy, ptr %i.agp, align 2, !tbaa !76, !noalias !1503
  %i.agt = add i64 %.4618, 4                      ; 2 uses
  %i.agu = add i64 %.4182617, 4                   ; 3 uses
  %i.agv = icmp ult i64 %i.agu, %i.afs
  br i1 %i.agv, label %bb.dt, label %StoreRangeH41.exit.sink.split, !llvm.loop !1466

bb.du:                                            ; preds = %bb.dr
  %i.agw = add i64 %.0178625, 9
  %i.agx = tail call i64 @llvm.umin.i64(i64 %i.agw, i64 %i.l) ; 2 uses
  %i.agy = icmp ult i64 %i.afn, %i.agx
  br i1 %i.agy, label %.lr.ph612, label %StoreRangeH41.exit

.lr.ph612:                                        ; preds = %bb.du
  %i.agz = load ptr, ptr %i.al, align 8, !tbaa !136, !alias.scope !1506, !noalias !1507 ; 3 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 131072
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 196608
  %i.ahc = load ptr, ptr %i.am, align 8, !tbaa !136, !alias.scope !1506, !noalias !1507
  %.promoted615 = load i16, ptr %i.a, align 8, !tbaa !76, !alias.scope !1506, !noalias !1507
  br label %bb.dv

bb.dv:                                            ; preds = %.lr.ph612, %bb.dv
  %i.ahd = phi i16 [ %.promoted615, %.lr.ph612 ], [ %i.ahj, %bb.dv ] ; 3 uses
  %.5611 = phi i64 [ %i.afm, %.lr.ph612 ], [ %i.ahy, %bb.dv ]
  %.5183610 = phi i64 [ %i.afn, %.lr.ph612 ], [ %i.ahz, %bb.dv ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  %i.ahe = and i64 %.5183610, %3
  %i.ahf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ahe
  %.0.copyload.i.i297 = load i32, ptr %i.ahf, align 1, !alias.scope !1508, !noalias !1506
  %i.ahg = mul i32 %.0.copyload.i.i297, 506832829
  %i.ahh = lshr i32 %i.ahg, 17                    ; 2 uses
  %i.ahi = zext nneg i32 %i.ahh to i64            ; 2 uses
  %i.ahj = add i16 %i.ahd, 1                      ; 2 uses
  %i.ahk = zext i16 %i.ahd to i64
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.ahi ; 2 uses
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !64, !noalias !1506
  %i.ahn = zext i32 %i.ahm to i64
  %i.aho = sub i64 %.5183610, %i.ahn
  %i.ahp = trunc i32 %i.ahh to i8
  %i.ahq = and i64 %.5183610, 65535
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %i.ahq
  store i8 %i.ahp, ptr %i.ahr, align 1, !tbaa !68, !noalias !1506
  %spec.store.select.i294 = tail call i64 @llvm.umin.i64(i64 %i.aho, i64 65535)
end_hunk_13
begin_hunk_14_@CreateBackwardReferencesNH42:bb.a
  %i.zr = icmp eq i64 %.sroa.15.1.ph, %i.zm
  br i1 %i.zr, label %ComputeDistanceCode.exit.thread, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.zs = icmp eq i64 %.sroa.15.1.ph, %i.zp
  br i1 %i.zs, label %ComputeDistanceCode.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.zt = icmp ult i64 %i.zn, 7
  br i1 %i.zt, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %.tr25.i = trunc nuw nsw i64 %i.zn to i32
  %i.zu = shl nuw nsw i32 %.tr25.i, 2
  %i.zv = lshr i32 158663784, %i.zu
  %i.zw = and i32 %i.zv, 15
  %i.zx = zext nneg i32 %i.zw to i64
  br label %ComputeDistanceCode.exit

bb.cv:                                            ; preds = %bb.ct
  %i.zy = icmp ult i64 %i.zq, 7
  br i1 %i.zy, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %.tr.i = trunc nuw nsw i64 %i.zq to i32
  %i.zz = shl nuw nsw i32 %.tr.i, 2
  %i.aaa = lshr i32 266017486, %i.zz
  %i.aab = and i32 %i.aaa, 15
  %i.aac = zext nneg i32 %i.aab to i64
  br label %ComputeDistanceCode.exit

bb.cx:                                            ; preds = %bb.cv
  %i.aad = load i32, ptr %i.au, align 4, !tbaa !64
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = icmp eq i64 %.sroa.15.1.ph, %i.aae
  br i1 %i.aaf, label %ComputeDistanceCode.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aag = load i32, ptr %i.av, align 4, !tbaa !64
  %i.aah = sext i32 %i.aag to i64
  %.not418 = icmp eq i64 %.sroa.15.1.ph, %i.aah
  br i1 %.not418, label %ComputeDistanceCode.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %split
  %i.aai = add i64 %.sroa.15.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.cs, %bb.cw, %bb.cu, %bb.cx, %bb.cy, %bb.cz
  %.1.i = phi i64 [ %i.aai, %bb.cz ], [ 3, %bb.cy ], [ 1, %bb.cs ], [ %i.aac, %bb.cw ], [ %i.zx, %bb.cu ], [ 2, %bb.cx ] ; 3 uses
  %i.aaj = icmp ule i64 %.sroa.15.1.ph, %i.zj
  %i.aak = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.aaj, i1 %i.aak, i1 false
  br i1 %or.cond, label %bb.da, label %ComputeDistanceCode.exit.thread

bb.da:                                            ; preds = %ComputeDistanceCode.exit
  %i.aal = load i32, ptr %i.au, align 4, !tbaa !64
  store i32 %i.aal, ptr %i.av, align 4, !tbaa !64
  %i.aam = load <2 x i32>, ptr %7, align 4, !tbaa !64 ; 2 uses
  %i.aan = load i32, ptr %7, align 4, !tbaa !64
  store <2 x i32> %i.aam, ptr %i.v, align 4, !tbaa !64
  %i.aao = trunc i64 %.sroa.15.1.ph to i32        ; 4 uses
  store i32 %i.aao, ptr %7, align 4, !tbaa !64
  %i.aap = insertelement <4 x i32> poison, i32 %i.aao, i64 0
  %i.aaq = shufflevector <4 x i32> %i.aap, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aar = add nsw <4 x i32> %i.aaq, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.aar, ptr %i.s, align 4, !tbaa !64, !alias.scope !1580
  %i.aas = add nsw i32 %i.aao, -3
  store i32 %i.aas, ptr %i.t, align 4, !tbaa !64, !alias.scope !1580
  %i.aat = add nsw i32 %i.aao, 3
  store i32 %i.aat, ptr %i.u, align 4, !tbaa !64, !alias.scope !1580
  %i.aau = shufflevector <2 x i32> %i.aam, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.aav = add nsw <4 x i32> %i.aau, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.aav, ptr %i.w, align 4, !tbaa !64, !alias.scope !1580
  %i.aaw = insertelement <2 x i32> poison, i32 %i.aan, i64 0
  %i.aax = shufflevector <2 x i32> %i.aaw, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aay = add nsw <2 x i32> %i.aax, <i32 -3, i32 3>
  store <2 x i32> %i.aay, ptr %i.ad, align 4, !tbaa !64, !alias.scope !1580
  br label %ComputeDistanceCode.exit.thread

ComputeDistanceCode.exit.thread:                  ; preds = %bb.cr, %bb.da, %ComputeDistanceCode.exit
  %.1.i414 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.da ], [ 0, %bb.cr ] ; 3 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0185618, i64 16 ; 2 uses
  %i.aba = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.aba, ptr %.0185618, align 4, !tbaa !103
  %i.abb = shl i32 %.sroa.34.1.ph, 25
  %i.abc = trunc i64 %.sroa.0306.1.ph to i32      ; 2 uses
  %i.abd = or i32 %i.abb, %i.abc
  %i.abe = getelementptr inbounds nuw i8, ptr %.0185618, i64 4
  store i32 %i.abd, ptr %i.abe, align 4, !tbaa !104
  %i.abf = load i32, ptr %i.aw, align 4, !tbaa !105
  %i.abg = zext i32 %i.abf to i64                 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.0185618, i64 14
  %i.abi = getelementptr inbounds nuw i8, ptr %.0185618, i64 8
  %i.abj = add nuw nsw i64 %i.abg, 16             ; 2 uses
  %i.abk = icmp ult i64 %.1.i414, %i.abj
  br i1 %i.abk, label %PrefixEncodeCopyDistance.exit, label %bb.db

bb.db:                                            ; preds = %ComputeDistanceCode.exit.thread
  %i.abl = load i32, ptr %i.an, align 8, !tbaa !106 ; 2 uses
  %i.abm = zext i32 %i.abl to i64                 ; 4 uses
  %i.abn = shl nuw i64 4, %i.abm
  %i.abo = add i64 %.1.i414, -16
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
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %ComputeDistanceCode.exit.thread, %bb.db
  %.sink.in = phi i64 [ %i.ack, %bb.db ], [ %.1.i414, %ComputeDistanceCode.exit.thread ]
  %storemerge.i = phi i32 [ %i.acn, %bb.db ], [ 0, %ComputeDistanceCode.exit.thread ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.abh, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.abi, align 4, !tbaa !64
  %i.aco = add nsw i32 %.sroa.34.1.ph, %i.abc     ; 6 uses
  %i.acp = and i16 %.sink, 1023
  %i.acq = icmp eq i16 %i.acp, 0
  %i.acr = getelementptr inbounds nuw i8, ptr %.0185618, i64 12
  %i.acs = icmp ult i64 %.3.ph, 6
  br i1 %i.acs, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.act = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.dd:                                            ; preds = %PrefixEncodeCopyDistance.exit
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
  br label %GetInsertLengthCode.exit

bb.df:                                            ; preds = %bb.dd
  %i.adg = icmp ult i64 %.3.ph, 2114
  br i1 %i.adg, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.adh = add nsw i32 %i.aba, -66
  %i.adi = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adh, i1 true)
  %i.adj = trunc nuw nsw i32 %i.adi to i16
  %i.adk = sub nuw nsw i16 41, %i.adj
  br label %GetInsertLengthCode.exit

bb.dh:                                            ; preds = %bb.df
  %i.adl = icmp ult i64 %.3.ph, 6210
  br i1 %i.adl, label %GetInsertLengthCode.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.adm = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.adm, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.dc, %bb.de, %bb.dg, %bb.dh, %bb.di
  %.0.i197 = phi i16 [ %i.act, %bb.dc ], [ %i.adf, %bb.de ], [ %i.adk, %bb.dg ], [ 21, %bb.dh ], [ %..i, %bb.di ] ; 3 uses
  %i.adn = icmp ult i32 %i.aco, 10
  br i1 %i.adn, label %GetCopyLengthCode.exit, label %bb.dj

bb.dj:                                            ; preds = %GetInsertLengthCode.exit
  %i.ado = icmp ult i32 %i.aco, 134
  br i1 %i.ado, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %narrow = add nsw i32 %i.aco, -6                ; 2 uses
  %i.adp = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.adq = sub nuw nsw i32 30, %i.adp             ; 2 uses
  %i.adr = shl nuw nsw i32 %i.adq, 1
  %i.ads = lshr i32 %narrow, %i.adq
  %i.adt = add nuw nsw i32 %i.ads, %i.adr
  br label %GetCopyLengthCode.exit

bb.dl:                                            ; preds = %bb.dj
  %i.adu = icmp ult i32 %i.aco, 2118
  br i1 %i.adu, label %GetCopyLengthCode.exit.thread786, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread786:                 ; preds = %bb.dl
  %i.adv = add nsw i32 %i.aco, -70
  %i.adw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adv, i1 true)
  %i.adx = trunc nuw nsw i32 %i.adw to i16
  %i.ady = sub nuw nsw i16 43, %i.adx
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.dk
  %.sink858 = phi i32 [ %i.adt, %bb.dk ], [ %i.aco, %GetInsertLengthCode.exit ]
  %.sink857 = phi i16 [ 4, %bb.dk ], [ -2, %GetInsertLengthCode.exit ]
  %i.adz = trunc nuw nsw i32 %.sink858 to i16
  %i.aea = add nsw i16 %.sink857, %i.adz          ; 4 uses
  %i.aeb = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.acq, %i.aeb
  %i.aec = icmp ult i16 %i.aea, 16
  %or.cond5.i = and i1 %or.cond.i, %i.aec
  br i1 %or.cond5.i, label %bb.dm, label %GetCopyLengthCode.exit.thread

bb.dm:                                            ; preds = %GetCopyLengthCode.exit
  %i.aed = shl nuw nsw i16 %i.aea, 3
  %i.aee = and i16 %i.aed, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread786, %bb.dl, %GetCopyLengthCode.exit
  %.0.i198408 = phi i16 [ %i.aea, %GetCopyLengthCode.exit ], [ 23, %bb.dl ], [ %i.ady, %GetCopyLengthCode.exit.thread786 ] ; 2 uses
  %i.aef = lshr i16 %.0.i198408, 3
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
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.dm, %GetCopyLengthCode.exit.thread
  %.0.i198409 = phi i16 [ %i.aea, %bb.dm ], [ %.0.i198408, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.aee, %bb.dm ], [ %i.aeo, %GetCopyLengthCode.exit.thread ]
  %i.aep = and i16 %.0.i198409, 7
  %i.aeq = shl nuw nsw i16 %.0.i197, 3
  %i.aer = and i16 %i.aeq, 56
  %i.aes = or disjoint i16 %i.aep, %i.aer
  %.0.i199 = or disjoint i16 %i.aes, %.pn.i
  store i16 %.0.i199, ptr %i.acr, align 4, !tbaa !76
  %i.aet = load i64, ptr %11, align 8, !tbaa !58
  %i.aeu = add i64 %i.aet, %.3.ph
  store i64 %i.aeu, ptr %11, align 8, !tbaa !58
  %i.aev = add i64 %.3181.ph, 2                   ; 2 uses
  %i.aew = add i64 %.3181.ph, %.sroa.0306.1.ph    ; 4 uses
  %i.aex = tail call i64 @llvm.umin.i64(i64 %i.aew, i64 %spec.select) ; 3 uses
  %i.aey = lshr i64 %.sroa.0306.1.ph, 2
  %i.aez = icmp ult i64 %.sroa.15.1.ph, %i.aey
  br i1 %i.aez, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %CombineLengthCodes.exit
  %i.afa = shl nuw i64 %.sroa.15.1.ph, 2
  %i.afb = sub i64 %i.aew, %i.afa
  %i.afc = tail call i64 @llvm.umax.i64(i64 %i.aev, i64 %i.afb)
  %i.afd = tail call i64 @llvm.umin.i64(i64 %i.aex, i64 %i.afc)
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.afd, %bb.dn ], [ %i.aev, %CombineLengthCodes.exit ] ; 2 uses
  %i.afe = icmp ult i64 %.0, %i.aex
  br i1 %i.afe, label %.lr.ph607, label %StoreRangeH42.exit

.lr.ph607:                                        ; preds = %bb.do
  %i.aff = load ptr, ptr %i.ap, align 8, !tbaa !136, !alias.scope !1581, !noalias !1582 ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 131072
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 196608
  %i.afi = load ptr, ptr %i.aq, align 8, !tbaa !136, !alias.scope !1581, !noalias !1582
  br label %bb.dp

bb.dp:                                            ; preds = %.lr.ph607, %bb.dp
  %.0.i290606 = phi i64 [ %.0, %.lr.ph607 ], [ %i.agi, %bb.dp ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  %i.afj = and i64 %.0.i290606, %3
  %i.afk = getelementptr inbounds nuw i8, ptr %2, i64 %i.afj
  %.0.copyload.i.i300 = load i32, ptr %i.afk, align 1, !alias.scope !1583, !noalias !1581
  %i.afl = mul i32 %.0.copyload.i.i300, 506832829
  %i.afm = lshr i32 %i.afl, 17                    ; 2 uses
  %i.afn = zext nneg i32 %i.afm to i64            ; 3 uses
  %i.afo = and i64 %i.afn, 511                    ; 2 uses
  %i.afp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.afo ; 2 uses
  %i.afq = load i16, ptr %i.afp, align 2, !tbaa !76, !alias.scope !1581, !noalias !1582 ; 2 uses
  %i.afr = add i16 %i.afq, 1
  store i16 %i.afr, ptr %i.afp, align 2, !tbaa !76, !alias.scope !1581, !noalias !1582
  %i.afs = and i16 %i.afq, 511                    ; 2 uses
  %i.aft = zext nneg i16 %i.afs to i64
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %i.afn ; 2 uses
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !64, !noalias !1581
  %i.afw = zext i32 %i.afv to i64
  %i.afx = sub i64 %.0.i290606, %i.afw
  %i.afy = trunc i32 %i.afm to i8
  %i.afz = and i64 %.0.i290606, 65535
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afh, i64 %i.afz
  store i8 %i.afy, ptr %i.aga, align 1, !tbaa !68, !noalias !1581
  %spec.store.select.i291 = tail call i64 @llvm.umin.i64(i64 %i.afx, i64 65535)
  %i.agb = trunc nuw i64 %spec.store.select.i291 to i16
  %i.agc = getelementptr inbounds nuw [2048 x i8], ptr %i.afi, i64 %i.afo
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %i.aft ; 2 uses
  store i16 %i.agb, ptr %i.agd, align 2, !tbaa !154, !noalias !1581
  %i.age = getelementptr inbounds nuw [2 x i8], ptr %i.afg, i64 %i.afn ; 2 uses
  %i.agf = load i16, ptr %i.age, align 2, !tbaa !76, !noalias !1581
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agd, i64 2
  store i16 %i.agf, ptr %i.agg, align 2, !tbaa !153, !noalias !1581
  %i.agh = trunc i64 %.0.i290606 to i32
  store i32 %i.agh, ptr %i.afu, align 4, !tbaa !64, !noalias !1581
  store i16 %i.afs, ptr %i.age, align 2, !tbaa !76, !noalias !1581
  %i.agi = add nuw i64 %.0.i290606, 1             ; 2 uses
  %exitcond677.not = icmp eq i64 %i.agi, %i.aex
  br i1 %exitcond677.not, label %StoreRangeH42.exit, label %bb.dp, !llvm.loop !24

FindLongestMatchH42.exit289.thread:               ; preds = %bb.af, %FindLongestMatchH42.exit289
  %i.agj = add i64 %.0175620, 1                   ; 5 uses
  %i.agk = add i64 %.0178619, 1                   ; 9 uses
  %i.agl = icmp ugt i64 %i.agk, %.0173621
  br i1 %i.agl, label %bb.dq, label %StoreRangeH42.exit

bb.dq:                                            ; preds = %FindLongestMatchH42.exit289.thread
  %i.agm = add i64 %.0173621, %i.ax
  %i.agn = icmp ugt i64 %i.agk, %i.agm
  br i1 %i.agn, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.ago = add i64 %.0178619, 17
  %i.agp = tail call i64 @llvm.umin.i64(i64 %i.ago, i64 %i.ay) ; 2 uses
  %i.agq = icmp ult i64 %i.agk, %i.agp
  br i1 %i.agq, label %.lr.ph615, label %StoreRangeH42.exit

.lr.ph615:                                        ; preds = %bb.dr
  %i.agr = load ptr, ptr %i.ap, align 8, !tbaa !136, !alias.scope !1584, !noalias !1585 ; 3 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 131072
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agr, i64 196608
  %i.agu = load ptr, ptr %i.aq, align 8, !tbaa !136, !alias.scope !1584, !noalias !1585
  br label %bb.ds

bb.ds:                                            ; preds = %.lr.ph615, %bb.ds
  %.4614 = phi i64 [ %i.agj, %.lr.ph615 ], [ %i.ahu, %bb.ds ]
  %.4182613 = phi i64 [ %i.agk, %.lr.ph615 ], [ %i.ahv, %bb.ds ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1584)
  %i.agv = and i64 %.4182613, %3
  %i.agw = getelementptr inbounds nuw i8, ptr %2, i64 %i.agv
  %.0.copyload.i.i296 = load i32, ptr %i.agw, align 1, !alias.scope !1586, !noalias !1584
  %i.agx = mul i32 %.0.copyload.i.i296, 506832829
  %i.agy = lshr i32 %i.agx, 17                    ; 2 uses
  %i.agz = zext nneg i32 %i.agy to i64            ; 3 uses
  %i.aha = and i64 %i.agz, 511                    ; 2 uses
  %i.ahb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aha ; 2 uses
  %i.ahc = load i16, ptr %i.ahb, align 2, !tbaa !76, !alias.scope !1584, !noalias !1585 ; 2 uses
  %i.ahd = add i16 %i.ahc, 1
  store i16 %i.ahd, ptr %i.ahb, align 2, !tbaa !76, !alias.scope !1584, !noalias !1585
  %i.ahe = and i16 %i.ahc, 511                    ; 2 uses
  %i.ahf = zext nneg i16 %i.ahe to i64
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.agr, i64 %i.agz ; 2 uses
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !64, !noalias !1584
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = sub i64 %.4182613, %i.ahi
  %i.ahk = trunc i32 %i.agy to i8
  %i.ahl = and i64 %.4182613, 65535
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agt, i64 %i.ahl
  store i8 %i.ahk, ptr %i.ahm, align 1, !tbaa !68, !noalias !1584
  %spec.store.select.i295 = tail call i64 @llvm.umin.i64(i64 %i.ahj, i64 65535)
  %i.ahn = trunc nuw i64 %spec.store.select.i295 to i16
  %i.aho = getelementptr inbounds nuw [2048 x i8], ptr %i.agu, i64 %i.aha
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.ahf ; 2 uses
  store i16 %i.ahn, ptr %i.ahp, align 2, !tbaa !154, !noalias !1584
  %i.ahq = getelementptr inbounds nuw [2 x i8], ptr %i.ags, i64 %i.agz ; 2 uses
  %i.ahr = load i16, ptr %i.ahq, align 2, !tbaa !76, !noalias !1584
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahp, i64 2
  store i16 %i.ahr, ptr %i.ahs, align 2, !tbaa !153, !noalias !1584
  %i.aht = trunc i64 %.4182613 to i32
  store i32 %i.aht, ptr %i.ahg, align 4, !tbaa !64, !noalias !1584
  store i16 %i.ahe, ptr %i.ahq, align 2, !tbaa !76, !noalias !1584
  %i.ahu = add i64 %.4614, 4                      ; 2 uses
  %i.ahv = add i64 %.4182613, 4                   ; 3 uses
  %i.ahw = icmp ult i64 %i.ahv, %i.agp
  br i1 %i.ahw, label %bb.ds, label %StoreRangeH42.exit, !llvm.loop !1547

bb.dt:                                            ; preds = %bb.dq
  %i.ahx = add i64 %.0178619, 9
  %i.ahy = tail call i64 @llvm.umin.i64(i64 %i.ahx, i64 %i.l) ; 2 uses
  %i.ahz = icmp ult i64 %i.agk, %i.ahy
  br i1 %i.ahz, label %.lr.ph610, label %StoreRangeH42.exit

.lr.ph610:                                        ; preds = %bb.dt
  %i.aia = load ptr, ptr %i.ap, align 8, !tbaa !136, !alias.scope !1587, !noalias !1588 ; 3 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 131072
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aia, i64 196608
  %i.aid = load ptr, ptr %i.aq, align 8, !tbaa !136, !alias.scope !1587, !noalias !1588
  br label %bb.du

bb.du:                                            ; preds = %.lr.ph610, %bb.du
  %.5609 = phi i64 [ %i.agj, %.lr.ph610 ], [ %i.ajd, %bb.du ]
  %.5183608 = phi i64 [ %i.agk, %.lr.ph610 ], [ %i.aje, %bb.du ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  %i.aie = and i64 %.5183608, %3
  %i.aif = getelementptr inbounds nuw i8, ptr %2, i64 %i.aie
  %.0.copyload.i.i297 = load i32, ptr %i.aif, align 1, !alias.scope !1589, !noalias !1587
  %i.aig = mul i32 %.0.copyload.i.i297, 506832829
  %i.aih = lshr i32 %i.aig, 17                    ; 2 uses
  %i.aii = zext nneg i32 %i.aih to i64            ; 3 uses
  %i.aij = and i64 %i.aii, 511                    ; 2 uses
  %i.aik = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aij ; 2 uses
  %i.ail = load i16, ptr %i.aik, align 2, !tbaa !76, !alias.scope !1587, !noalias !1588 ; 2 uses
  %i.aim = add i16 %i.ail, 1
  store i16 %i.aim, ptr %i.aik, align 2, !tbaa !76, !alias.scope !1587, !noalias !1588
end_hunk_14
begin_hunk_15_@CreateBackwardReferencesNH58:bb.a
  br i1 %i.afc, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %.tr25.i = trunc nuw nsw i64 %i.aew to i32
  %i.afd = shl nuw nsw i32 %.tr25.i, 2
  %i.afe = lshr i32 158663784, %i.afd
  %i.aff = and i32 %i.afe, 15
  %i.afg = zext nneg i32 %i.aff to i64
  br label %ComputeDistanceCode.exit

bb.di:                                            ; preds = %bb.dg
  %i.afh = icmp ult i64 %i.aez, 7
  br i1 %i.afh, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %.tr.i = trunc nuw nsw i64 %i.aez to i32
  %i.afi = shl nuw nsw i32 %.tr.i, 2
  %i.afj = lshr i32 266017486, %i.afi
  %i.afk = and i32 %i.afj, 15
  %i.afl = zext nneg i32 %i.afk to i64
  br label %ComputeDistanceCode.exit

bb.dk:                                            ; preds = %bb.di
  %i.afm = load i32, ptr %i.bh, align 4, !tbaa !64
  %i.afn = sext i32 %i.afm to i64
  %i.afo = icmp eq i64 %.sroa.15.1.ph, %i.afn
  br i1 %i.afo, label %ComputeDistanceCode.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.afp = load i32, ptr %i.bi, align 4, !tbaa !64
  %i.afq = sext i32 %i.afp to i64
  %.not449 = icmp eq i64 %.sroa.15.1.ph, %i.afq
  br i1 %.not449, label %ComputeDistanceCode.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %split
  %i.afr = add i64 %.sroa.15.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.df, %bb.dj, %bb.dh, %bb.dk, %bb.dl, %bb.dm
  %.1.i = phi i64 [ %i.afr, %bb.dm ], [ 3, %bb.dl ], [ 1, %bb.df ], [ %i.afl, %bb.dj ], [ %i.afg, %bb.dh ], [ 2, %bb.dk ] ; 5 uses
  %i.afs = icmp ule i64 %.sroa.15.1.ph, %i.aes
  %i.aft = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.afs, i1 %i.aft, i1 false
  br i1 %or.cond, label %bb.dn, label %PrepareDistanceCacheH58.exit

bb.dn:                                            ; preds = %ComputeDistanceCode.exit
  %i.afu = load i32, ptr %i.bh, align 4, !tbaa !64
  store i32 %i.afu, ptr %i.bi, align 4, !tbaa !64
  %i.afv = load <2 x i32>, ptr %7, align 4, !tbaa !64 ; 3 uses
  store <2 x i32> %i.afv, ptr %i.bg, align 4, !tbaa !64
  %i.afw = trunc i64 %.sroa.15.1.ph to i32        ; 4 uses
  store i32 %i.afw, ptr %7, align 4, !tbaa !64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  %i.afx = load i32, ptr %i.s, align 4, !tbaa !117, !alias.scope !1673, !noalias !1674 ; 2 uses
  %i.afy = icmp sgt i32 %i.afx, 4
  br i1 %i.afy, label %bb.do, label %PrepareDistanceCacheH58.exit

bb.do:                                            ; preds = %bb.dn
  %i.afz = insertelement <4 x i32> poison, i32 %i.afw, i64 0
  %i.aga = shufflevector <4 x i32> %i.afz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.agb = add nsw <4 x i32> %i.aga, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.agb, ptr %i.bj, align 4, !tbaa !64, !alias.scope !1675, !noalias !1673
  %i.agc = add nsw i32 %i.afw, -3
  store i32 %i.agc, ptr %i.bk, align 4, !tbaa !64, !alias.scope !1675, !noalias !1673
  %i.agd = add nsw i32 %i.afw, 3
  store i32 %i.agd, ptr %i.bl, align 4, !tbaa !64, !alias.scope !1675, !noalias !1673
  %i.age = icmp samesign ugt i32 %i.afx, 10
  br i1 %i.age, label %bb.dp, label %PrepareDistanceCacheH58.exit

bb.dp:                                            ; preds = %bb.do
  %i.agf = shufflevector <2 x i32> %i.afv, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.agg = add nsw <4 x i32> %i.agf, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.agg, ptr %i.bm, align 4, !tbaa !64, !alias.scope !1675, !noalias !1673
  %i.agh = shufflevector <2 x i32> %i.afv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.agi = add nsw <2 x i32> %i.agh, <i32 -3, i32 3>
  store <2 x i32> %i.agi, ptr %i.bn, align 4, !tbaa !64, !alias.scope !1675, !noalias !1673
  br label %PrepareDistanceCacheH58.exit

PrepareDistanceCacheH58.exit:                     ; preds = %bb.de, %bb.dp, %bb.do, %bb.dn, %ComputeDistanceCode.exit
  %.1.i445 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.dp ], [ %.1.i, %bb.do ], [ %.1.i, %bb.dn ], [ 0, %bb.de ] ; 3 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %.0185701, i64 16 ; 2 uses
  %i.agk = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.agk, ptr %.0185701, align 4, !tbaa !103
  %i.agl = shl i32 %.sroa.34.1.ph, 25
  %i.agm = trunc i64 %.sroa.0303.1.ph to i32      ; 2 uses
  %i.agn = or i32 %i.agl, %i.agm
  %i.ago = getelementptr inbounds nuw i8, ptr %.0185701, i64 4
  store i32 %i.agn, ptr %i.ago, align 4, !tbaa !104
  %i.agp = load i32, ptr %i.bo, align 4, !tbaa !105
  %i.agq = zext i32 %i.agp to i64                 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %.0185701, i64 14
  %i.ags = getelementptr inbounds nuw i8, ptr %.0185701, i64 8
  %i.agt = add nuw nsw i64 %i.agq, 16             ; 2 uses
  %i.agu = icmp ult i64 %.1.i445, %i.agt
  br i1 %i.agu, label %PrefixEncodeCopyDistance.exit, label %bb.dq

bb.dq:                                            ; preds = %PrepareDistanceCacheH58.exit
  %i.agv = load i32, ptr %i.av, align 8, !tbaa !106 ; 2 uses
  %i.agw = zext i32 %i.agv to i64                 ; 4 uses
  %i.agx = shl nuw i64 4, %i.agw
  %i.agy = add i64 %.1.i445, -16
  %i.agz = sub i64 %i.agy, %i.agq
  %i.aha = add i64 %i.agz, %i.agx                 ; 4 uses
  %i.ahb = trunc i64 %i.aha to i32
  %i.ahc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahb, i1 true)
  %i.ahd = sub nsw i32 30, %i.ahc
  %i.ahe = zext i32 %i.ahd to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.agv
  %i.ahf = xor i32 %notmask.i, -1
  %i.ahg = zext nneg i32 %i.ahf to i64
  %i.ahh = and i64 %i.aha, %i.ahg
  %i.ahi = lshr i64 %i.aha, %i.ahe                ; 2 uses
  %i.ahj = and i64 %i.ahi, 1
  %i.ahk = or disjoint i64 %i.ahj, 2
  %i.ahl = shl i64 %i.ahk, %i.ahe
  %i.ahm = sub nsw i64 %i.ahe, %i.agw             ; 2 uses
  %i.ahn = shl nsw i64 %i.ahm, 10
  %i.aho = shl nsw i64 %i.ahm, 1
  %i.ahp = or i64 %i.ahi, 65534
  %i.ahq = add i64 %i.aho, %i.ahp
  %i.ahr = shl i64 %i.ahq, %i.agw
  %i.ahs = add nuw nsw i64 %i.ahh, %i.agt
  %i.aht = add i64 %i.ahs, %i.ahr
  %i.ahu = or i64 %i.aht, %i.ahn
  %i.ahv = sub i64 %i.aha, %i.ahl
  %i.ahw = lshr i64 %i.ahv, %i.agw
  %i.ahx = trunc i64 %i.ahw to i32
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %PrepareDistanceCacheH58.exit, %bb.dq
  %.sink.in = phi i64 [ %i.ahu, %bb.dq ], [ %.1.i445, %PrepareDistanceCacheH58.exit ]
  %storemerge.i = phi i32 [ %i.ahx, %bb.dq ], [ 0, %PrepareDistanceCacheH58.exit ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.agr, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.ags, align 4, !tbaa !64
  %i.ahy = add nsw i32 %.sroa.34.1.ph, %i.agm     ; 6 uses
  %i.ahz = and i16 %.sink, 1023
  %i.aia = icmp eq i16 %i.ahz, 0
  %i.aib = getelementptr inbounds nuw i8, ptr %.0185701, i64 12
  %i.aic = icmp ult i64 %.3.ph, 6
  br i1 %i.aic, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.aid = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.ds:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.aie = icmp ult i64 %.3.ph, 130
  br i1 %i.aie, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.aif = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.aig = trunc nuw nsw i64 %i.aif to i32
  %i.aih = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aig, i1 true)
  %i.aii = sub nuw nsw i32 30, %i.aih             ; 2 uses
  %i.aij = shl nuw nsw i32 %i.aii, 1
  %i.aik = zext nneg i32 %i.aij to i64
  %i.ail = zext nneg i32 %i.aii to i64
  %i.aim = lshr i64 %i.aif, %i.ail
  %i.ain = add nuw nsw i64 %i.aim, %i.aik
  %i.aio = trunc nuw nsw i64 %i.ain to i16
  %i.aip = add nuw nsw i16 %i.aio, 2
  br label %GetInsertLengthCode.exit

bb.du:                                            ; preds = %bb.ds
  %i.aiq = icmp ult i64 %.3.ph, 2114
  br i1 %i.aiq, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.air = add nsw i32 %i.agk, -66
  %i.ais = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.air, i1 true)
  %i.ait = trunc nuw nsw i32 %i.ais to i16
  %i.aiu = sub nuw nsw i16 41, %i.ait
  br label %GetInsertLengthCode.exit

bb.dw:                                            ; preds = %bb.du
  %i.aiv = icmp ult i64 %.3.ph, 6210
  br i1 %i.aiv, label %GetInsertLengthCode.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aiw = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.aiw, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.dr, %bb.dt, %bb.dv, %bb.dw, %bb.dx
  %.0.i197 = phi i16 [ %i.aid, %bb.dr ], [ %i.aip, %bb.dt ], [ %i.aiu, %bb.dv ], [ 21, %bb.dw ], [ %..i, %bb.dx ] ; 3 uses
  %i.aix = icmp ult i32 %i.ahy, 10
  br i1 %i.aix, label %GetCopyLengthCode.exit, label %bb.dy

bb.dy:                                            ; preds = %GetInsertLengthCode.exit
  %i.aiy = icmp ult i32 %i.ahy, 134
  br i1 %i.aiy, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %narrow = add nsw i32 %i.ahy, -6                ; 2 uses
  %i.aiz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.aja = sub nuw nsw i32 30, %i.aiz             ; 2 uses
  %i.ajb = shl nuw nsw i32 %i.aja, 1
  %i.ajc = lshr i32 %narrow, %i.aja
  %i.ajd = add nuw nsw i32 %i.ajc, %i.ajb
  br label %GetCopyLengthCode.exit

bb.ea:                                            ; preds = %bb.dy
  %i.aje = icmp ult i32 %i.ahy, 2118
  br i1 %i.aje, label %GetCopyLengthCode.exit.thread890, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread890:                 ; preds = %bb.ea
  %i.ajf = add nsw i32 %i.ahy, -70
  %i.ajg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ajf, i1 true)
  %i.ajh = trunc nuw nsw i32 %i.ajg to i16
  %i.aji = sub nuw nsw i16 43, %i.ajh
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.dz
  %.sink964 = phi i32 [ %i.ajd, %bb.dz ], [ %i.ahy, %GetInsertLengthCode.exit ]
  %.sink963 = phi i16 [ 4, %bb.dz ], [ -2, %GetInsertLengthCode.exit ]
  %i.ajj = trunc nuw nsw i32 %.sink964 to i16
  %i.ajk = add nsw i16 %.sink963, %i.ajj          ; 4 uses
  %i.ajl = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.aia, %i.ajl
  %i.ajm = icmp ult i16 %i.ajk, 16
  %or.cond5.i = and i1 %or.cond.i, %i.ajm
  br i1 %or.cond5.i, label %bb.eb, label %GetCopyLengthCode.exit.thread

bb.eb:                                            ; preds = %GetCopyLengthCode.exit
  %i.ajn = shl nuw nsw i16 %i.ajk, 3
  %i.ajo = and i16 %i.ajn, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread890, %bb.ea, %GetCopyLengthCode.exit
  %.0.i198439 = phi i16 [ %i.ajk, %GetCopyLengthCode.exit ], [ 23, %bb.ea ], [ %i.aji, %GetCopyLengthCode.exit.thread890 ] ; 2 uses
  %i.ajp = lshr i16 %.0.i198439, 3
  %i.ajq = lshr i16 %.0.i197, 3
  %narrow.i = mul nuw nsw i16 %i.ajq, 3
  %narrow21.i = add nuw nsw i16 %i.ajp, %narrow.i
  %i.ajr = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.ajs = shl nuw nsw i32 %i.ajr, 1
  %i.ajt = shl nuw nsw i32 %i.ajr, 6
  %i.aju = add nuw nsw i32 %i.ajt, 64
  %i.ajv = lshr i32 5377344, %i.ajs
  %i.ajw = and i32 %i.ajv, 192
  %i.ajx = add nuw nsw i32 %i.aju, %i.ajw
  %i.ajy = trunc i32 %i.ajx to i16
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.eb, %GetCopyLengthCode.exit.thread
  %.0.i198440 = phi i16 [ %i.ajk, %bb.eb ], [ %.0.i198439, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.ajo, %bb.eb ], [ %i.ajy, %GetCopyLengthCode.exit.thread ]
  %i.ajz = and i16 %.0.i198440, 7
  %i.aka = shl nuw nsw i16 %.0.i197, 3
  %i.akb = and i16 %i.aka, 56
  %i.akc = or disjoint i16 %i.ajz, %i.akb
  %.0.i199 = or disjoint i16 %i.akc, %.pn.i
  store i16 %.0.i199, ptr %i.aib, align 4, !tbaa !76
  %i.akd = load i64, ptr %11, align 8, !tbaa !58
  %i.ake = add i64 %i.akd, %.3.ph
  store i64 %i.ake, ptr %11, align 8, !tbaa !58
  %i.akf = add i64 %.3181.ph, 2                   ; 2 uses
  %i.akg = add i64 %.3181.ph, %.sroa.0303.1.ph    ; 4 uses
  %i.akh = tail call i64 @llvm.umin.i64(i64 %i.akg, i64 %spec.select) ; 3 uses
  %i.aki = lshr i64 %.sroa.0303.1.ph, 2
  %i.akj = icmp ult i64 %.sroa.15.1.ph, %i.aki
  br i1 %i.akj, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %CombineLengthCodes.exit
  %i.akk = shl nuw i64 %.sroa.15.1.ph, 2
  %i.akl = sub i64 %i.akg, %i.akk
  %i.akm = tail call i64 @llvm.umax.i64(i64 %i.akf, i64 %i.akl)
  %i.akn = tail call i64 @llvm.umin.i64(i64 %i.akh, i64 %i.akm)
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.akn, %bb.ec ], [ %i.akf, %CombineLengthCodes.exit ] ; 2 uses
  %i.ako = icmp ult i64 %.0, %i.akh
  br i1 %i.ako, label %.lr.ph688, label %StoreRangeH58.exit

.lr.ph688:                                        ; preds = %bb.ed
  %i.akp = load ptr, ptr %i.ax, align 8, !tbaa !118, !alias.scope !1676, !noalias !1677
  %i.akq = load ptr, ptr %i.az, align 8, !tbaa !120, !alias.scope !1676, !noalias !1677
  %i.akr = load ptr, ptr %i.ay, align 8, !tbaa !119, !alias.scope !1676, !noalias !1677
  %i.aks = load i32, ptr %i.ba, align 8, !tbaa !121, !alias.scope !1676, !noalias !1677
  %i.akt = load i32, ptr %i.bc, align 4, !tbaa !123, !alias.scope !1676, !noalias !1677
  %i.aku = load i32, ptr %i.bb, align 8, !tbaa !122, !alias.scope !1676, !noalias !1677
  %i.akv = zext nneg i32 %i.aku to i64
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph688, %bb.ee
  %.0.i289686 = phi i64 [ %.0, %.lr.ph688 ], [ %i.alo, %bb.ee ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  %i.akw = and i64 %.0.i289686, %3
  %i.akx = getelementptr inbounds nuw i8, ptr %2, i64 %i.akw
  %.val297 = load i32, ptr %i.akx, align 1
  %i.aky = mul i32 %.val297, 506832829
  %i.akz = lshr i32 %i.aky, %i.aks                ; 2 uses
  %i.ala = lshr i32 %i.akz, 8
  %i.alb = zext nneg i32 %i.ala to i64            ; 2 uses
  %i.alc = trunc i32 %i.akz to i8
  %i.ald = getelementptr inbounds nuw [2 x i8], ptr %i.akp, i64 %i.alb ; 2 uses
  %i.ale = load i16, ptr %i.ald, align 2, !tbaa !76, !noalias !1676 ; 2 uses
  %i.alf = zext i16 %i.ale to i32
  %i.alg = and i32 %i.akt, %i.alf
  %i.alh = zext nneg i32 %i.alg to i64
  %i.ali = shl i64 %i.alb, %i.akv
  %i.alj = add i64 %i.ali, %i.alh                 ; 2 uses
  %i.alk = add i16 %i.ale, -1
  store i16 %i.alk, ptr %i.ald, align 2, !tbaa !76, !noalias !1676
  %i.all = trunc i64 %.0.i289686 to i32
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.akr, i64 %i.alj
  store i32 %i.all, ptr %i.alm, align 4, !tbaa !64, !noalias !1676
  %i.aln = getelementptr inbounds nuw i8, ptr %i.akq, i64 %i.alj
  store i8 %i.alc, ptr %i.aln, align 1, !tbaa !68, !noalias !1676
  %i.alo = add nuw i64 %.0.i289686, 1             ; 2 uses
  %exitcond769.not = icmp eq i64 %i.alo, %i.akh
  br i1 %exitcond769.not, label %StoreRangeH58.exit, label %bb.ee, !llvm.loop !13

FindLongestMatchH58.exit288.thread:               ; preds = %bb.am, %FindLongestMatchH58.exit288
  %i.alp = add i64 %.0175703, 1                   ; 5 uses
  %i.alq = add i64 %.0178702, 1                   ; 9 uses
  %i.alr = icmp ugt i64 %i.alq, %.0173704
  br i1 %i.alr, label %bb.ef, label %StoreRangeH58.exit

bb.ef:                                            ; preds = %FindLongestMatchH58.exit288.thread
  %i.als = add i64 %.0173704, %i.bp
  %i.alt = icmp ugt i64 %i.alq, %i.als
  br i1 %i.alt, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.alu = add i64 %.0178702, 17
  %i.alv = tail call i64 @llvm.umin.i64(i64 %i.alu, i64 %i.bq) ; 2 uses
  %i.alw = icmp ult i64 %i.alq, %i.alv
  br i1 %i.alw, label %.lr.ph698, label %StoreRangeH58.exit

.lr.ph698:                                        ; preds = %bb.eg
  %i.alx = load ptr, ptr %i.ax, align 8, !tbaa !118, !alias.scope !1678, !noalias !1679
  %i.aly = load ptr, ptr %i.az, align 8, !tbaa !120, !alias.scope !1678, !noalias !1679
  %i.alz = load ptr, ptr %i.ay, align 8, !tbaa !119, !alias.scope !1678, !noalias !1679
  %i.ama = load i32, ptr %i.ba, align 8, !tbaa !121, !alias.scope !1678, !noalias !1679
  %i.amb = load i32, ptr %i.bc, align 4, !tbaa !123, !alias.scope !1678, !noalias !1679
  %i.amc = load i32, ptr %i.bb, align 8, !tbaa !122, !alias.scope !1678, !noalias !1679
  %i.amd = zext nneg i32 %i.amc to i64
  br label %bb.eh

bb.eh:                                            ; preds = %.lr.ph698, %bb.eh
  %.4696 = phi i64 [ %i.alp, %.lr.ph698 ], [ %i.amw, %bb.eh ]
  %.4182695 = phi i64 [ %i.alq, %.lr.ph698 ], [ %i.amx, %bb.eh ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  %i.ame = and i64 %.4182695, %3
  %i.amf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ame
  %.val = load i32, ptr %i.amf, align 1
  %i.amg = mul i32 %.val, 506832829
  %i.amh = lshr i32 %i.amg, %i.ama                ; 2 uses
  %i.ami = lshr i32 %i.amh, 8
  %i.amj = zext nneg i32 %i.ami to i64            ; 2 uses
  %i.amk = trunc i32 %i.amh to i8
  %i.aml = getelementptr inbounds nuw [2 x i8], ptr %i.alx, i64 %i.amj ; 2 uses
  %i.amm = load i16, ptr %i.aml, align 2, !tbaa !76, !noalias !1678 ; 2 uses
  %i.amn = zext i16 %i.amm to i32
  %i.amo = and i32 %i.amb, %i.amn
  %i.amp = zext nneg i32 %i.amo to i64
  %i.amq = shl i64 %i.amj, %i.amd
  %i.amr = add i64 %i.amq, %i.amp                 ; 2 uses
  %i.ams = add i16 %i.amm, -1
  store i16 %i.ams, ptr %i.aml, align 2, !tbaa !76, !noalias !1678
  %i.amt = trunc i64 %.4182695 to i32
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %i.amr
  store i32 %i.amt, ptr %i.amu, align 4, !tbaa !64, !noalias !1678
  %i.amv = getelementptr inbounds nuw i8, ptr %i.aly, i64 %i.amr
  store i8 %i.amk, ptr %i.amv, align 1, !tbaa !68, !noalias !1678
  %i.amw = add i64 %.4696, 4                      ; 2 uses
  %i.amx = add i64 %.4182695, 4                   ; 3 uses
  %i.amy = icmp ult i64 %i.amx, %i.alv
  br i1 %i.amy, label %bb.eh, label %StoreRangeH58.exit, !llvm.loop !1650

bb.ei:                                            ; preds = %bb.ef
  %i.amz = add i64 %.0178702, 9
  %i.ana = tail call i64 @llvm.umin.i64(i64 %i.amz, i64 %i.k) ; 2 uses
  %i.anb = icmp ult i64 %i.alq, %i.ana
  br i1 %i.anb, label %.lr.ph692, label %StoreRangeH58.exit

.lr.ph692:                                        ; preds = %bb.ei
  %i.anc = load ptr, ptr %i.ax, align 8, !tbaa !118, !alias.scope !1680, !noalias !1681
  %i.and = load ptr, ptr %i.az, align 8, !tbaa !120, !alias.scope !1680, !noalias !1681
  %i.ane = load ptr, ptr %i.ay, align 8, !tbaa !119, !alias.scope !1680, !noalias !1681
  %i.anf = load i32, ptr %i.ba, align 8, !tbaa !121, !alias.scope !1680, !noalias !1681
  %i.ang = load i32, ptr %i.bc, align 4, !tbaa !123, !alias.scope !1680, !noalias !1681
  %i.anh = load i32, ptr %i.bb, align 8, !tbaa !122, !alias.scope !1680, !noalias !1681
  %i.ani = zext nneg i32 %i.anh to i64
  br label %bb.ej

bb.ej:                                            ; preds = %.lr.ph692, %bb.ej
  %.5690 = phi i64 [ %i.alp, %.lr.ph692 ], [ %i.aob, %bb.ej ]
  %.5183689 = phi i64 [ %i.alq, %.lr.ph692 ], [ %i.aoc, %bb.ej ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  %i.anj = and i64 %.5183689, %3
  %i.ank = getelementptr inbounds nuw i8, ptr %2, i64 %i.anj
  %.val296 = load i32, ptr %i.ank, align 1
  %i.anl = mul i32 %.val296, 506832829
  %i.anm = lshr i32 %i.anl, %i.anf                ; 2 uses
  %i.ann = lshr i32 %i.anm, 8
  %i.ano = zext nneg i32 %i.ann to i64            ; 2 uses
  %i.anp = trunc i32 %i.anm to i8
  %i.anq = getelementptr inbounds nuw [2 x i8], ptr %i.anc, i64 %i.ano ; 2 uses
  %i.anr = load i16, ptr %i.anq, align 2, !tbaa !76, !noalias !1680 ; 2 uses
  %i.ans = zext i16 %i.anr to i32
  %i.ant = and i32 %i.ang, %i.ans
  %i.anu = zext nneg i32 %i.ant to i64
  %i.anv = shl i64 %i.ano, %i.ani
  %i.anw = add i64 %i.anv, %i.anu                 ; 2 uses
  %i.anx = add i16 %i.anr, -1
  store i16 %i.anx, ptr %i.anq, align 2, !tbaa !76, !noalias !1680
  %i.any = trunc i64 %.5183689 to i32
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.ane, i64 %i.anw
  store i32 %i.any, ptr %i.anz, align 4, !tbaa !64, !noalias !1680
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.and, i64 %i.anw
  store i8 %i.anp, ptr %i.aoa, align 1, !tbaa !68, !noalias !1680
  %i.aob = add i64 %.5690, 2                      ; 2 uses
  %i.aoc = add i64 %.5183689, 2                   ; 3 uses
end_hunk_15
begin_hunk_16_@CreateBackwardReferencesNH68:bb.a
  br i1 %i.afh, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %.tr25.i = trunc nuw nsw i64 %i.afb to i32
  %i.afi = shl nuw nsw i32 %.tr25.i, 2
  %i.afj = lshr i32 158663784, %i.afi
  %i.afk = and i32 %i.afj, 15
  %i.afl = zext nneg i32 %i.afk to i64
  br label %ComputeDistanceCode.exit

bb.di:                                            ; preds = %bb.dg
  %i.afm = icmp ult i64 %i.afe, 7
  br i1 %i.afm, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %.tr.i = trunc nuw nsw i64 %i.afe to i32
  %i.afn = shl nuw nsw i32 %.tr.i, 2
  %i.afo = lshr i32 266017486, %i.afn
  %i.afp = and i32 %i.afo, 15
  %i.afq = zext nneg i32 %i.afp to i64
  br label %ComputeDistanceCode.exit

bb.dk:                                            ; preds = %bb.di
  %i.afr = load i32, ptr %i.bh, align 4, !tbaa !64
  %i.afs = sext i32 %i.afr to i64
  %i.aft = icmp eq i64 %.sroa.15.1.ph, %i.afs
  br i1 %i.aft, label %ComputeDistanceCode.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.afu = load i32, ptr %i.bi, align 4, !tbaa !64
  %i.afv = sext i32 %i.afu to i64
  %.not451 = icmp eq i64 %.sroa.15.1.ph, %i.afv
  br i1 %.not451, label %ComputeDistanceCode.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %split
  %i.afw = add i64 %.sroa.15.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.df, %bb.dj, %bb.dh, %bb.dk, %bb.dl, %bb.dm
  %.1.i = phi i64 [ %i.afw, %bb.dm ], [ 3, %bb.dl ], [ 1, %bb.df ], [ %i.afq, %bb.dj ], [ %i.afl, %bb.dh ], [ 2, %bb.dk ] ; 5 uses
  %i.afx = icmp ule i64 %.sroa.15.1.ph, %i.aex
  %i.afy = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.afx, i1 %i.afy, i1 false
  br i1 %or.cond, label %bb.dn, label %PrepareDistanceCacheH68.exit

bb.dn:                                            ; preds = %ComputeDistanceCode.exit
  %i.afz = load i32, ptr %i.bh, align 4, !tbaa !64
  store i32 %i.afz, ptr %i.bi, align 4, !tbaa !64
  %i.aga = load <2 x i32>, ptr %7, align 4, !tbaa !64 ; 3 uses
  store <2 x i32> %i.aga, ptr %i.bg, align 4, !tbaa !64
  %i.agb = trunc i64 %.sroa.15.1.ph to i32        ; 4 uses
  store i32 %i.agb, ptr %7, align 4, !tbaa !64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  %i.agc = load i32, ptr %i.s, align 8, !tbaa !127, !alias.scope !1743, !noalias !1744 ; 2 uses
  %i.agd = icmp sgt i32 %i.agc, 4
  br i1 %i.agd, label %bb.do, label %PrepareDistanceCacheH68.exit

bb.do:                                            ; preds = %bb.dn
  %i.age = insertelement <4 x i32> poison, i32 %i.agb, i64 0
  %i.agf = shufflevector <4 x i32> %i.age, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.agg = add nsw <4 x i32> %i.agf, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.agg, ptr %i.bj, align 4, !tbaa !64, !alias.scope !1745, !noalias !1743
  %i.agh = add nsw i32 %i.agb, -3
  store i32 %i.agh, ptr %i.bk, align 4, !tbaa !64, !alias.scope !1745, !noalias !1743
  %i.agi = add nsw i32 %i.agb, 3
  store i32 %i.agi, ptr %i.bl, align 4, !tbaa !64, !alias.scope !1745, !noalias !1743
  %i.agj = icmp samesign ugt i32 %i.agc, 10
  br i1 %i.agj, label %bb.dp, label %PrepareDistanceCacheH68.exit

bb.dp:                                            ; preds = %bb.do
  %i.agk = shufflevector <2 x i32> %i.aga, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.agl = add nsw <4 x i32> %i.agk, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.agl, ptr %i.bm, align 4, !tbaa !64, !alias.scope !1745, !noalias !1743
  %i.agm = shufflevector <2 x i32> %i.aga, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.agn = add nsw <2 x i32> %i.agm, <i32 -3, i32 3>
  store <2 x i32> %i.agn, ptr %i.bn, align 4, !tbaa !64, !alias.scope !1745, !noalias !1743
  br label %PrepareDistanceCacheH68.exit

PrepareDistanceCacheH68.exit:                     ; preds = %bb.de, %bb.dp, %bb.do, %bb.dn, %ComputeDistanceCode.exit
  %.1.i447 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.dp ], [ %.1.i, %bb.do ], [ %.1.i, %bb.dn ], [ 0, %bb.de ] ; 3 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %.0185703, i64 16 ; 2 uses
  %i.agp = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.agp, ptr %.0185703, align 4, !tbaa !103
  %i.agq = shl i32 %.sroa.34.1.ph, 25
  %i.agr = trunc i64 %.sroa.0305.1.ph to i32      ; 2 uses
  %i.ags = or i32 %i.agq, %i.agr
  %i.agt = getelementptr inbounds nuw i8, ptr %.0185703, i64 4
  store i32 %i.ags, ptr %i.agt, align 4, !tbaa !104
  %i.agu = load i32, ptr %i.bo, align 4, !tbaa !105
  %i.agv = zext i32 %i.agu to i64                 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.0185703, i64 14
  %i.agx = getelementptr inbounds nuw i8, ptr %.0185703, i64 8
  %i.agy = add nuw nsw i64 %i.agv, 16             ; 2 uses
  %i.agz = icmp ult i64 %.1.i447, %i.agy
  br i1 %i.agz, label %PrefixEncodeCopyDistance.exit, label %bb.dq

bb.dq:                                            ; preds = %PrepareDistanceCacheH68.exit
  %i.aha = load i32, ptr %i.av, align 8, !tbaa !106 ; 2 uses
  %i.ahb = zext i32 %i.aha to i64                 ; 4 uses
  %i.ahc = shl nuw i64 4, %i.ahb
  %i.ahd = add i64 %.1.i447, -16
  %i.ahe = sub i64 %i.ahd, %i.agv
  %i.ahf = add i64 %i.ahe, %i.ahc                 ; 4 uses
  %i.ahg = trunc i64 %i.ahf to i32
  %i.ahh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahg, i1 true)
  %i.ahi = sub nsw i32 30, %i.ahh
  %i.ahj = zext i32 %i.ahi to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.aha
  %i.ahk = xor i32 %notmask.i, -1
  %i.ahl = zext nneg i32 %i.ahk to i64
  %i.ahm = and i64 %i.ahf, %i.ahl
  %i.ahn = lshr i64 %i.ahf, %i.ahj                ; 2 uses
  %i.aho = and i64 %i.ahn, 1
  %i.ahp = or disjoint i64 %i.aho, 2
  %i.ahq = shl i64 %i.ahp, %i.ahj
  %i.ahr = sub nsw i64 %i.ahj, %i.ahb             ; 2 uses
  %i.ahs = shl nsw i64 %i.ahr, 10
  %i.aht = shl nsw i64 %i.ahr, 1
  %i.ahu = or i64 %i.ahn, 65534
  %i.ahv = add i64 %i.aht, %i.ahu
  %i.ahw = shl i64 %i.ahv, %i.ahb
  %i.ahx = add nuw nsw i64 %i.ahm, %i.agy
  %i.ahy = add i64 %i.ahx, %i.ahw
  %i.ahz = or i64 %i.ahy, %i.ahs
  %i.aia = sub i64 %i.ahf, %i.ahq
  %i.aib = lshr i64 %i.aia, %i.ahb
  %i.aic = trunc i64 %i.aib to i32
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %PrepareDistanceCacheH68.exit, %bb.dq
  %.sink.in = phi i64 [ %i.ahz, %bb.dq ], [ %.1.i447, %PrepareDistanceCacheH68.exit ]
  %storemerge.i = phi i32 [ %i.aic, %bb.dq ], [ 0, %PrepareDistanceCacheH68.exit ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.agw, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.agx, align 4, !tbaa !64
  %i.aid = add nsw i32 %.sroa.34.1.ph, %i.agr     ; 6 uses
  %i.aie = and i16 %.sink, 1023
  %i.aif = icmp eq i16 %i.aie, 0
  %i.aig = getelementptr inbounds nuw i8, ptr %.0185703, i64 12
  %i.aih = icmp ult i64 %.3.ph, 6
  br i1 %i.aih, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.aii = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.ds:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.aij = icmp ult i64 %.3.ph, 130
  br i1 %i.aij, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.aik = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.ail = trunc nuw nsw i64 %i.aik to i32
  %i.aim = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ail, i1 true)
  %i.ain = sub nuw nsw i32 30, %i.aim             ; 2 uses
  %i.aio = shl nuw nsw i32 %i.ain, 1
  %i.aip = zext nneg i32 %i.aio to i64
  %i.aiq = zext nneg i32 %i.ain to i64
  %i.air = lshr i64 %i.aik, %i.aiq
  %i.ais = add nuw nsw i64 %i.air, %i.aip
  %i.ait = trunc nuw nsw i64 %i.ais to i16
  %i.aiu = add nuw nsw i16 %i.ait, 2
  br label %GetInsertLengthCode.exit

bb.du:                                            ; preds = %bb.ds
  %i.aiv = icmp ult i64 %.3.ph, 2114
  br i1 %i.aiv, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.aiw = add nsw i32 %i.agp, -66
  %i.aix = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aiw, i1 true)
  %i.aiy = trunc nuw nsw i32 %i.aix to i16
  %i.aiz = sub nuw nsw i16 41, %i.aiy
  br label %GetInsertLengthCode.exit

bb.dw:                                            ; preds = %bb.du
  %i.aja = icmp ult i64 %.3.ph, 6210
  br i1 %i.aja, label %GetInsertLengthCode.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ajb = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.ajb, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.dr, %bb.dt, %bb.dv, %bb.dw, %bb.dx
  %.0.i197 = phi i16 [ %i.aii, %bb.dr ], [ %i.aiu, %bb.dt ], [ %i.aiz, %bb.dv ], [ 21, %bb.dw ], [ %..i, %bb.dx ] ; 3 uses
  %i.ajc = icmp ult i32 %i.aid, 10
  br i1 %i.ajc, label %GetCopyLengthCode.exit, label %bb.dy

bb.dy:                                            ; preds = %GetInsertLengthCode.exit
  %i.ajd = icmp ult i32 %i.aid, 134
  br i1 %i.ajd, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %narrow = add nsw i32 %i.aid, -6                ; 2 uses
  %i.aje = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.ajf = sub nuw nsw i32 30, %i.aje             ; 2 uses
  %i.ajg = shl nuw nsw i32 %i.ajf, 1
  %i.ajh = lshr i32 %narrow, %i.ajf
  %i.aji = add nuw nsw i32 %i.ajh, %i.ajg
  br label %GetCopyLengthCode.exit

bb.ea:                                            ; preds = %bb.dy
  %i.ajj = icmp ult i32 %i.aid, 2118
  br i1 %i.ajj, label %GetCopyLengthCode.exit.thread894, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread894:                 ; preds = %bb.ea
  %i.ajk = add nsw i32 %i.aid, -70
  %i.ajl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ajk, i1 true)
  %i.ajm = trunc nuw nsw i32 %i.ajl to i16
  %i.ajn = sub nuw nsw i16 43, %i.ajm
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.dz
  %.sink968 = phi i32 [ %i.aji, %bb.dz ], [ %i.aid, %GetInsertLengthCode.exit ]
  %.sink967 = phi i16 [ 4, %bb.dz ], [ -2, %GetInsertLengthCode.exit ]
  %i.ajo = trunc nuw nsw i32 %.sink968 to i16
  %i.ajp = add nsw i16 %.sink967, %i.ajo          ; 4 uses
  %i.ajq = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.aif, %i.ajq
  %i.ajr = icmp ult i16 %i.ajp, 16
  %or.cond5.i = and i1 %or.cond.i, %i.ajr
  br i1 %or.cond5.i, label %bb.eb, label %GetCopyLengthCode.exit.thread

bb.eb:                                            ; preds = %GetCopyLengthCode.exit
  %i.ajs = shl nuw nsw i16 %i.ajp, 3
  %i.ajt = and i16 %i.ajs, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread894, %bb.ea, %GetCopyLengthCode.exit
  %.0.i198441 = phi i16 [ %i.ajp, %GetCopyLengthCode.exit ], [ 23, %bb.ea ], [ %i.ajn, %GetCopyLengthCode.exit.thread894 ] ; 2 uses
  %i.aju = lshr i16 %.0.i198441, 3
  %i.ajv = lshr i16 %.0.i197, 3
  %narrow.i = mul nuw nsw i16 %i.ajv, 3
  %narrow21.i = add nuw nsw i16 %i.aju, %narrow.i
  %i.ajw = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.ajx = shl nuw nsw i32 %i.ajw, 1
  %i.ajy = shl nuw nsw i32 %i.ajw, 6
  %i.ajz = add nuw nsw i32 %i.ajy, 64
  %i.aka = lshr i32 5377344, %i.ajx
  %i.akb = and i32 %i.aka, 192
  %i.akc = add nuw nsw i32 %i.ajz, %i.akb
  %i.akd = trunc i32 %i.akc to i16
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.eb, %GetCopyLengthCode.exit.thread
  %.0.i198442 = phi i16 [ %i.ajp, %bb.eb ], [ %.0.i198441, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.ajt, %bb.eb ], [ %i.akd, %GetCopyLengthCode.exit.thread ]
  %i.ake = and i16 %.0.i198442, 7
  %i.akf = shl nuw nsw i16 %.0.i197, 3
  %i.akg = and i16 %i.akf, 56
  %i.akh = or disjoint i16 %i.ake, %i.akg
  %.0.i199 = or disjoint i16 %i.akh, %.pn.i
  store i16 %.0.i199, ptr %i.aig, align 4, !tbaa !76
  %i.aki = load i64, ptr %11, align 8, !tbaa !58
  %i.akj = add i64 %i.aki, %.3.ph
  store i64 %i.akj, ptr %11, align 8, !tbaa !58
  %i.akk = add i64 %.3181.ph, 2                   ; 2 uses
  %i.akl = add i64 %.3181.ph, %.sroa.0305.1.ph    ; 4 uses
  %i.akm = tail call i64 @llvm.umin.i64(i64 %i.akl, i64 %spec.select) ; 3 uses
  %i.akn = lshr i64 %.sroa.0305.1.ph, 2
  %i.ako = icmp ult i64 %.sroa.15.1.ph, %i.akn
  br i1 %i.ako, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %CombineLengthCodes.exit
  %i.akp = shl nuw i64 %.sroa.15.1.ph, 2
  %i.akq = sub i64 %i.akl, %i.akp
  %i.akr = tail call i64 @llvm.umax.i64(i64 %i.akk, i64 %i.akq)
  %i.aks = tail call i64 @llvm.umin.i64(i64 %i.akm, i64 %i.akr)
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.aks, %bb.ec ], [ %i.akk, %CombineLengthCodes.exit ] ; 2 uses
  %i.akt = icmp ult i64 %.0, %i.akm
  br i1 %i.akt, label %.lr.ph690, label %StoreRangeH68.exit

.lr.ph690:                                        ; preds = %bb.ed
  %i.aku = load ptr, ptr %i.ax, align 8, !tbaa !128, !alias.scope !1746, !noalias !1747
  %i.akv = load ptr, ptr %i.az, align 8, !tbaa !130, !alias.scope !1746, !noalias !1747
  %i.akw = load ptr, ptr %i.ay, align 8, !tbaa !129, !alias.scope !1746, !noalias !1747
  %i.akx = load i64, ptr %i.ba, align 8, !tbaa !131, !alias.scope !1746, !noalias !1747
  %i.aky = load i32, ptr %i.bc, align 8, !tbaa !133, !alias.scope !1746, !noalias !1747
  %i.akz = load i32, ptr %i.bb, align 4, !tbaa !132, !alias.scope !1746, !noalias !1747
  %i.ala = zext nneg i32 %i.akz to i64
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph690, %bb.ee
  %.0.i296688 = phi i64 [ %.0, %.lr.ph690 ], [ %i.als, %bb.ee ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  %i.alb = and i64 %.0.i296688, %3
  %i.alc = getelementptr inbounds nuw i8, ptr %2, i64 %i.alb
  %.0.copyload.i.i299 = load i64, ptr %i.alc, align 1, !alias.scope !1748, !noalias !1746
  %i.ald = mul i64 %.0.copyload.i.i299, %i.akx    ; 2 uses
  %i.ale = lshr i64 %i.ald, 41
  %i.alf = lshr i64 %i.ald, 49                    ; 2 uses
  %i.alg = trunc i64 %i.ale to i8
  %i.alh = getelementptr inbounds nuw [2 x i8], ptr %i.aku, i64 %i.alf ; 2 uses
  %i.ali = load i16, ptr %i.alh, align 2, !tbaa !76, !noalias !1746 ; 2 uses
  %i.alj = zext i16 %i.ali to i32
  %i.alk = and i32 %i.aky, %i.alj
  %i.all = zext nneg i32 %i.alk to i64
  %i.alm = shl i64 %i.alf, %i.ala
  %i.aln = add i64 %i.alm, %i.all                 ; 2 uses
  %i.alo = add i16 %i.ali, -1
  store i16 %i.alo, ptr %i.alh, align 2, !tbaa !76, !noalias !1746
  %i.alp = trunc i64 %.0.i296688 to i32
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.akw, i64 %i.aln
  store i32 %i.alp, ptr %i.alq, align 4, !tbaa !64, !noalias !1746
  %i.alr = getelementptr inbounds nuw i8, ptr %i.akv, i64 %i.aln
  store i8 %i.alg, ptr %i.alr, align 1, !tbaa !68, !noalias !1746
  %i.als = add nuw i64 %.0.i296688, 1             ; 2 uses
  %exitcond771.not = icmp eq i64 %i.als, %i.akm
  br i1 %exitcond771.not, label %StoreRangeH68.exit, label %bb.ee, !llvm.loop !16

FindLongestMatchH68.exit295.thread:               ; preds = %bb.am, %FindLongestMatchH68.exit295
  %i.alt = add i64 %.0175705, 1                   ; 5 uses
  %i.alu = add i64 %.0178704, 1                   ; 9 uses
  %i.alv = icmp ugt i64 %i.alu, %.0173706
  br i1 %i.alv, label %bb.ef, label %StoreRangeH68.exit

bb.ef:                                            ; preds = %FindLongestMatchH68.exit295.thread
  %i.alw = add i64 %.0173706, %i.bp
  %i.alx = icmp ugt i64 %i.alu, %i.alw
  br i1 %i.alx, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.aly = add i64 %.0178704, 17
  %i.alz = tail call i64 @llvm.umin.i64(i64 %i.aly, i64 %i.k) ; 2 uses
  %i.ama = icmp ult i64 %i.alu, %i.alz
  br i1 %i.ama, label %.lr.ph700, label %StoreRangeH68.exit

.lr.ph700:                                        ; preds = %bb.eg
  %i.amb = load ptr, ptr %i.ax, align 8, !tbaa !128, !alias.scope !1749, !noalias !1750
  %i.amc = load ptr, ptr %i.az, align 8, !tbaa !130, !alias.scope !1749, !noalias !1750
  %i.amd = load ptr, ptr %i.ay, align 8, !tbaa !129, !alias.scope !1749, !noalias !1750
  %i.ame = load i64, ptr %i.ba, align 8, !tbaa !131, !alias.scope !1749, !noalias !1750
  %i.amf = load i32, ptr %i.bc, align 8, !tbaa !133, !alias.scope !1749, !noalias !1750
  %i.amg = load i32, ptr %i.bb, align 4, !tbaa !132, !alias.scope !1749, !noalias !1750
  %i.amh = zext nneg i32 %i.amg to i64
  br label %bb.eh

bb.eh:                                            ; preds = %.lr.ph700, %bb.eh
  %.4698 = phi i64 [ %i.alt, %.lr.ph700 ], [ %i.amz, %bb.eh ]
  %.4182697 = phi i64 [ %i.alu, %.lr.ph700 ], [ %i.ana, %bb.eh ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  %i.ami = and i64 %.4182697, %3
  %i.amj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ami
  %.0.copyload.i.i297 = load i64, ptr %i.amj, align 1, !alias.scope !1751, !noalias !1749
  %i.amk = mul i64 %.0.copyload.i.i297, %i.ame    ; 2 uses
  %i.aml = lshr i64 %i.amk, 41
  %i.amm = lshr i64 %i.amk, 49                    ; 2 uses
  %i.amn = trunc i64 %i.aml to i8
  %i.amo = getelementptr inbounds nuw [2 x i8], ptr %i.amb, i64 %i.amm ; 2 uses
  %i.amp = load i16, ptr %i.amo, align 2, !tbaa !76, !noalias !1749 ; 2 uses
  %i.amq = zext i16 %i.amp to i32
  %i.amr = and i32 %i.amf, %i.amq
  %i.ams = zext nneg i32 %i.amr to i64
  %i.amt = shl i64 %i.amm, %i.amh
  %i.amu = add i64 %i.amt, %i.ams                 ; 2 uses
  %i.amv = add i16 %i.amp, -1
  store i16 %i.amv, ptr %i.amo, align 2, !tbaa !76, !noalias !1749
  %i.amw = trunc i64 %.4182697 to i32
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %i.amu
  store i32 %i.amw, ptr %i.amx, align 4, !tbaa !64, !noalias !1749
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.amu
  store i8 %i.amn, ptr %i.amy, align 1, !tbaa !68, !noalias !1749
  %i.amz = add i64 %.4698, 4                      ; 2 uses
  %i.ana = add i64 %.4182697, 4                   ; 3 uses
  %i.anb = icmp ult i64 %i.ana, %i.alz
  br i1 %i.anb, label %bb.eh, label %StoreRangeH68.exit, !llvm.loop !1716

bb.ei:                                            ; preds = %bb.ef
  %i.anc = add i64 %.0178704, 9
  %i.and = tail call i64 @llvm.umin.i64(i64 %i.anc, i64 %i.k) ; 2 uses
  %i.ane = icmp ult i64 %i.alu, %i.and
  br i1 %i.ane, label %.lr.ph694, label %StoreRangeH68.exit

.lr.ph694:                                        ; preds = %bb.ei
  %i.anf = load ptr, ptr %i.ax, align 8, !tbaa !128, !alias.scope !1752, !noalias !1753
  %i.ang = load ptr, ptr %i.az, align 8, !tbaa !130, !alias.scope !1752, !noalias !1753
  %i.anh = load ptr, ptr %i.ay, align 8, !tbaa !129, !alias.scope !1752, !noalias !1753
  %i.ani = load i64, ptr %i.ba, align 8, !tbaa !131, !alias.scope !1752, !noalias !1753
  %i.anj = load i32, ptr %i.bc, align 8, !tbaa !133, !alias.scope !1752, !noalias !1753
  %i.ank = load i32, ptr %i.bb, align 4, !tbaa !132, !alias.scope !1752, !noalias !1753
  %i.anl = zext nneg i32 %i.ank to i64
  br label %bb.ej

bb.ej:                                            ; preds = %.lr.ph694, %bb.ej
  %.5692 = phi i64 [ %i.alt, %.lr.ph694 ], [ %i.aod, %bb.ej ]
  %.5183691 = phi i64 [ %i.alu, %.lr.ph694 ], [ %i.aoe, %bb.ej ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  %i.anm = and i64 %.5183691, %3
  %i.ann = getelementptr inbounds nuw i8, ptr %2, i64 %i.anm
  %.0.copyload.i.i298 = load i64, ptr %i.ann, align 1, !alias.scope !1754, !noalias !1752
  %i.ano = mul i64 %.0.copyload.i.i298, %i.ani    ; 2 uses
  %i.anp = lshr i64 %i.ano, 41
  %i.anq = lshr i64 %i.ano, 49                    ; 2 uses
  %i.anr = trunc i64 %i.anp to i8
  %i.ans = getelementptr inbounds nuw [2 x i8], ptr %i.anf, i64 %i.anq ; 2 uses
  %i.ant = load i16, ptr %i.ans, align 2, !tbaa !76, !noalias !1752 ; 2 uses
  %i.anu = zext i16 %i.ant to i32
  %i.anv = and i32 %i.anj, %i.anu
  %i.anw = zext nneg i32 %i.anv to i64
  %i.anx = shl i64 %i.anq, %i.anl
  %i.any = add i64 %i.anx, %i.anw                 ; 2 uses
  %i.anz = add i16 %i.ant, -1
  store i16 %i.anz, ptr %i.ans, align 2, !tbaa !76, !noalias !1752
  %i.aoa = trunc i64 %.5183691 to i32
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.anh, i64 %i.any
  store i32 %i.aoa, ptr %i.aob, align 4, !tbaa !64, !noalias !1752
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.ang, i64 %i.any
  store i8 %i.anr, ptr %i.aoc, align 1, !tbaa !68, !noalias !1752
  %i.aod = add i64 %.5692, 2                      ; 2 uses
  %i.aoe = add i64 %.5183691, 2                   ; 3 uses
  %i.aof = icmp ult i64 %i.aoe, %i.and
  br i1 %i.aof, label %bb.ej, label %StoreRangeH68.exit, !llvm.loop !1722

end_hunk_16
begin_hunk_17_@CreateBackwardReferencesNH65:bb.a
bb.dy:                                            ; preds = %bb.dx
  %.tr25.i = trunc nuw nsw i64 %i.afk to i32
  %i.afr = shl nuw nsw i32 %.tr25.i, 2
  %i.afs = lshr i32 158663784, %i.afr
  %i.aft = and i32 %i.afs, 15
  %i.afu = zext nneg i32 %i.aft to i64
  br label %ComputeDistanceCode.exit

bb.dz:                                            ; preds = %bb.dx
  %i.afv = icmp ult i64 %i.afn, 7
  br i1 %i.afv, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %.tr.i = trunc nuw nsw i64 %i.afn to i32
  %i.afw = shl nuw nsw i32 %.tr.i, 2
  %i.afx = lshr i32 266017486, %i.afw
  %i.afy = and i32 %i.afx, 15
  %i.afz = zext nneg i32 %i.afy to i64
  br label %ComputeDistanceCode.exit

bb.eb:                                            ; preds = %bb.dz
  %i.aga = load i32, ptr %i.bo, align 4, !tbaa !64
  %i.agb = sext i32 %i.aga to i64
  %i.agc = icmp eq i64 %.sroa.17.1.ph, %i.agb
  br i1 %i.agc, label %ComputeDistanceCode.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.agd = load i32, ptr %i.bp, align 4, !tbaa !64
  %i.age = sext i32 %i.agd to i64
  %.not471 = icmp eq i64 %.sroa.17.1.ph, %i.age
  br i1 %.not471, label %ComputeDistanceCode.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %split
  %i.agf = add i64 %.sroa.17.1.ph, 15
  br label %ComputeDistanceCode.exit

ComputeDistanceCode.exit:                         ; preds = %bb.dw, %bb.ea, %bb.dy, %bb.eb, %bb.ec, %bb.ed
  %.1.i = phi i64 [ %i.agf, %bb.ed ], [ 3, %bb.ec ], [ 1, %bb.dw ], [ %i.afz, %bb.ea ], [ %i.afu, %bb.dy ], [ 2, %bb.eb ] ; 5 uses
  %i.agg = icmp ule i64 %.sroa.17.1.ph, %i.afg
  %i.agh = icmp ne i64 %.1.i, 0
  %or.cond = select i1 %i.agg, i1 %i.agh, i1 false
  br i1 %or.cond, label %bb.ee, label %PrepareDistanceCacheH65.exit

bb.ee:                                            ; preds = %ComputeDistanceCode.exit
  %i.agi = load i32, ptr %i.bo, align 4, !tbaa !64
  store i32 %i.agi, ptr %i.bp, align 4, !tbaa !64
  %i.agj = load <2 x i32>, ptr %7, align 4, !tbaa !64 ; 3 uses
  store <2 x i32> %i.agj, ptr %i.bn, align 4, !tbaa !64
  %i.agk = trunc i64 %.sroa.17.1.ph to i32        ; 4 uses
  store i32 %i.agk, ptr %7, align 4, !tbaa !64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  %i.agl = load i32, ptr %i.s, align 8, !tbaa !108, !alias.scope !2011, !noalias !2012 ; 2 uses
  %i.agm = icmp sgt i32 %i.agl, 4
  br i1 %i.agm, label %bb.ef, label %PrepareDistanceCacheH65.exit

bb.ef:                                            ; preds = %bb.ee
  %i.agn = insertelement <4 x i32> poison, i32 %i.agk, i64 0
  %i.ago = shufflevector <4 x i32> %i.agn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.agp = add nsw <4 x i32> %i.ago, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.agp, ptr %i.bq, align 4, !tbaa !64, !alias.scope !2013, !noalias !2011
  %i.agq = add nsw i32 %i.agk, -3
  store i32 %i.agq, ptr %i.br, align 4, !tbaa !64, !alias.scope !2013, !noalias !2011
  %i.agr = add nsw i32 %i.agk, 3
  store i32 %i.agr, ptr %i.bs, align 4, !tbaa !64, !alias.scope !2013, !noalias !2011
  %i.ags = icmp samesign ugt i32 %i.agl, 10
  br i1 %i.ags, label %bb.eg, label %PrepareDistanceCacheH65.exit

bb.eg:                                            ; preds = %bb.ef
  %i.agt = shufflevector <2 x i32> %i.agj, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.agu = add nsw <4 x i32> %i.agt, <i32 -1, i32 1, i32 -2, i32 2>
  store <4 x i32> %i.agu, ptr %i.bt, align 4, !tbaa !64, !alias.scope !2013, !noalias !2011
  %i.agv = shufflevector <2 x i32> %i.agj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.agw = add nsw <2 x i32> %i.agv, <i32 -3, i32 3>
  store <2 x i32> %i.agw, ptr %i.bu, align 4, !tbaa !64, !alias.scope !2013, !noalias !2011
  br label %PrepareDistanceCacheH65.exit

PrepareDistanceCacheH65.exit:                     ; preds = %bb.dv, %bb.eg, %bb.ef, %bb.ee, %ComputeDistanceCode.exit
  %.1.i465 = phi i64 [ %.1.i, %ComputeDistanceCode.exit ], [ %.1.i, %bb.eg ], [ %.1.i, %bb.ef ], [ %.1.i, %bb.ee ], [ 0, %bb.dv ] ; 3 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.0185780, i64 16 ; 3 uses
  %i.agy = trunc i64 %.3.ph to i32                ; 2 uses
  store i32 %i.agy, ptr %.0185780, align 4, !tbaa !103
  %i.agz = shl i32 %.sroa.39.1.ph, 25
  %i.aha = trunc i64 %.sroa.0326.1.ph to i32      ; 2 uses
  %i.ahb = or i32 %i.agz, %i.aha
  %i.ahc = getelementptr inbounds nuw i8, ptr %.0185780, i64 4
  store i32 %i.ahb, ptr %i.ahc, align 4, !tbaa !104
  %i.ahd = load i32, ptr %i.bv, align 4, !tbaa !105
  %i.ahe = zext i32 %i.ahd to i64                 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.0185780, i64 14
  %i.ahg = getelementptr inbounds nuw i8, ptr %.0185780, i64 8
  %i.ahh = add nuw nsw i64 %i.ahe, 16             ; 2 uses
  %i.ahi = icmp ult i64 %.1.i465, %i.ahh
  br i1 %i.ahi, label %PrefixEncodeCopyDistance.exit, label %bb.eh

bb.eh:                                            ; preds = %PrepareDistanceCacheH65.exit
  %i.ahj = load i32, ptr %i.av, align 8, !tbaa !106 ; 2 uses
  %i.ahk = zext i32 %i.ahj to i64                 ; 4 uses
  %i.ahl = shl nuw i64 4, %i.ahk
  %i.ahm = add i64 %.1.i465, -16
  %i.ahn = sub i64 %i.ahm, %i.ahe
  %i.aho = add i64 %i.ahn, %i.ahl                 ; 4 uses
  %i.ahp = trunc i64 %i.aho to i32
  %i.ahq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahp, i1 true)
  %i.ahr = sub nsw i32 30, %i.ahq
  %i.ahs = zext i32 %i.ahr to i64                 ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.ahj
  %i.aht = xor i32 %notmask.i, -1
  %i.ahu = zext nneg i32 %i.aht to i64
  %i.ahv = and i64 %i.aho, %i.ahu
  %i.ahw = lshr i64 %i.aho, %i.ahs                ; 2 uses
  %i.ahx = and i64 %i.ahw, 1
  %i.ahy = or disjoint i64 %i.ahx, 2
  %i.ahz = shl i64 %i.ahy, %i.ahs
  %i.aia = sub nsw i64 %i.ahs, %i.ahk             ; 2 uses
  %i.aib = shl nsw i64 %i.aia, 10
  %i.aic = shl nsw i64 %i.aia, 1
  %i.aid = or i64 %i.ahw, 65534
  %i.aie = add i64 %i.aic, %i.aid
  %i.aif = shl i64 %i.aie, %i.ahk
  %i.aig = add nuw nsw i64 %i.ahv, %i.ahh
  %i.aih = add i64 %i.aig, %i.aif
  %i.aii = or i64 %i.aih, %i.aib
  %i.aij = sub i64 %i.aho, %i.ahz
  %i.aik = lshr i64 %i.aij, %i.ahk
  %i.ail = trunc i64 %i.aik to i32
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %PrepareDistanceCacheH65.exit, %bb.eh
  %.sink.in = phi i64 [ %i.aii, %bb.eh ], [ %.1.i465, %PrepareDistanceCacheH65.exit ]
  %storemerge.i = phi i32 [ %i.ail, %bb.eh ], [ 0, %PrepareDistanceCacheH65.exit ]
  %.sink = trunc i64 %.sink.in to i16             ; 2 uses
  store i16 %.sink, ptr %i.ahf, align 2, !tbaa !76
  store i32 %storemerge.i, ptr %i.ahg, align 4, !tbaa !64
  %i.aim = add nsw i32 %.sroa.39.1.ph, %i.aha     ; 6 uses
  %i.ain = and i16 %.sink, 1023
  %i.aio = icmp eq i16 %i.ain, 0
  %i.aip = getelementptr inbounds nuw i8, ptr %.0185780, i64 12
  %i.aiq = icmp ult i64 %.3.ph, 6
  br i1 %i.aiq, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.air = trunc nuw nsw i64 %.3.ph to i16
  br label %GetInsertLengthCode.exit

bb.ej:                                            ; preds = %PrefixEncodeCopyDistance.exit
  %i.ais = icmp ult i64 %.3.ph, 130
  br i1 %i.ais, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.ait = add nsw i64 %.3.ph, -2                 ; 2 uses
  %i.aiu = trunc nuw nsw i64 %i.ait to i32
  %i.aiv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aiu, i1 true)
  %i.aiw = sub nuw nsw i32 30, %i.aiv             ; 2 uses
  %i.aix = shl nuw nsw i32 %i.aiw, 1
  %i.aiy = zext nneg i32 %i.aix to i64
  %i.aiz = zext nneg i32 %i.aiw to i64
  %i.aja = lshr i64 %i.ait, %i.aiz
  %i.ajb = add nuw nsw i64 %i.aja, %i.aiy
  %i.ajc = trunc nuw nsw i64 %i.ajb to i16
  %i.ajd = add nuw nsw i16 %i.ajc, 2
  br label %GetInsertLengthCode.exit

bb.el:                                            ; preds = %bb.ej
  %i.aje = icmp ult i64 %.3.ph, 2114
  br i1 %i.aje, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.ajf = add nsw i32 %i.agy, -66
  %i.ajg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ajf, i1 true)
  %i.ajh = trunc nuw nsw i32 %i.ajg to i16
  %i.aji = sub nuw nsw i16 41, %i.ajh
  br label %GetInsertLengthCode.exit

bb.en:                                            ; preds = %bb.el
  %i.ajj = icmp ult i64 %.3.ph, 6210
  br i1 %i.ajj, label %GetInsertLengthCode.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ajk = icmp ult i64 %.3.ph, 22594
  %..i = select i1 %i.ajk, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.ei, %bb.ek, %bb.em, %bb.en, %bb.eo
  %.0.i197 = phi i16 [ %i.air, %bb.ei ], [ %i.ajd, %bb.ek ], [ %i.aji, %bb.em ], [ 21, %bb.en ], [ %..i, %bb.eo ] ; 3 uses
  %i.ajl = icmp ult i32 %i.aim, 10
  br i1 %i.ajl, label %GetCopyLengthCode.exit, label %bb.ep

bb.ep:                                            ; preds = %GetInsertLengthCode.exit
  %i.ajm = icmp ult i32 %i.aim, 134
  br i1 %i.ajm, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %narrow = add nsw i32 %i.aim, -6                ; 2 uses
  %i.ajn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %narrow, i1 true)
  %i.ajo = sub nuw nsw i32 30, %i.ajn             ; 2 uses
  %i.ajp = shl nuw nsw i32 %i.ajo, 1
  %i.ajq = lshr i32 %narrow, %i.ajo
  %i.ajr = add nuw nsw i32 %i.ajq, %i.ajp
  br label %GetCopyLengthCode.exit

bb.er:                                            ; preds = %bb.ep
  %i.ajs = icmp ult i32 %i.aim, 2118
  br i1 %i.ajs, label %GetCopyLengthCode.exit.thread1002, label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit.thread1002:                ; preds = %bb.er
  %i.ajt = add nsw i32 %i.aim, -70
  %i.aju = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ajt, i1 true)
  %i.ajv = trunc nuw nsw i32 %i.aju to i16
  %i.ajw = sub nuw nsw i16 43, %i.ajv
  br label %GetCopyLengthCode.exit.thread

GetCopyLengthCode.exit:                           ; preds = %GetInsertLengthCode.exit, %bb.eq
  %.sink1090 = phi i32 [ %i.ajr, %bb.eq ], [ %i.aim, %GetInsertLengthCode.exit ]
  %.sink1089 = phi i16 [ 4, %bb.eq ], [ -2, %GetInsertLengthCode.exit ]
  %i.ajx = trunc nuw nsw i32 %.sink1090 to i16
  %i.ajy = add nsw i16 %.sink1089, %i.ajx         ; 4 uses
  %i.ajz = icmp samesign ult i16 %.0.i197, 8
  %or.cond.i = and i1 %i.aio, %i.ajz
  %i.aka = icmp ult i16 %i.ajy, 16
  %or.cond5.i = and i1 %or.cond.i, %i.aka
  br i1 %or.cond5.i, label %bb.es, label %GetCopyLengthCode.exit.thread

bb.es:                                            ; preds = %GetCopyLengthCode.exit
  %i.akb = shl nuw nsw i16 %i.ajy, 3
  %i.akc = and i16 %i.akb, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit.thread:                    ; preds = %GetCopyLengthCode.exit.thread1002, %bb.er, %GetCopyLengthCode.exit
  %.0.i198459 = phi i16 [ %i.ajy, %GetCopyLengthCode.exit ], [ 23, %bb.er ], [ %i.ajw, %GetCopyLengthCode.exit.thread1002 ] ; 2 uses
  %i.akd = lshr i16 %.0.i198459, 3
  %i.ake = lshr i16 %.0.i197, 3
  %narrow.i = mul nuw nsw i16 %i.ake, 3
  %narrow21.i = add nuw nsw i16 %i.akd, %narrow.i
  %i.akf = zext nneg i16 %narrow21.i to i32       ; 2 uses
  %i.akg = shl nuw nsw i32 %i.akf, 1
  %i.akh = shl nuw nsw i32 %i.akf, 6
  %i.aki = add nuw nsw i32 %i.akh, 64
  %i.akj = lshr i32 5377344, %i.akg
  %i.akk = and i32 %i.akj, 192
  %i.akl = add nuw nsw i32 %i.aki, %i.akk
  %i.akm = trunc i32 %i.akl to i16
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.es, %GetCopyLengthCode.exit.thread
  %.0.i198460 = phi i16 [ %i.ajy, %bb.es ], [ %.0.i198459, %GetCopyLengthCode.exit.thread ]
  %.pn.i = phi i16 [ %i.akc, %bb.es ], [ %i.akm, %GetCopyLengthCode.exit.thread ]
  %i.akn = and i16 %.0.i198460, 7
  %i.ako = shl nuw nsw i16 %.0.i197, 3
  %i.akp = and i16 %i.ako, 56
  %i.akq = or disjoint i16 %i.akn, %i.akp
  %.0.i199 = or disjoint i16 %i.akq, %.pn.i
  store i16 %.0.i199, ptr %i.aip, align 4, !tbaa !76
  %i.akr = load i64, ptr %11, align 8, !tbaa !58
  %i.aks = add i64 %i.akr, %.3.ph
  store i64 %i.aks, ptr %11, align 8, !tbaa !58
  %i.akt = add i64 %.3181.ph, 2                   ; 2 uses
  %i.aku = add i64 %.3181.ph, %.sroa.0326.1.ph    ; 5 uses
  %i.akv = tail call i64 @llvm.umin.i64(i64 %i.aku, i64 %spec.select) ; 5 uses
  %i.akw = lshr i64 %.sroa.0326.1.ph, 2
  %i.akx = icmp ult i64 %.sroa.17.1.ph, %i.akw
  br i1 %i.akx, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %CombineLengthCodes.exit
  %i.aky = shl nuw i64 %.sroa.17.1.ph, 2
  %i.akz = sub i64 %i.aku, %i.aky
  %i.ala = tail call i64 @llvm.umax.i64(i64 %i.akt, i64 %i.akz)
  %i.alb = tail call i64 @llvm.umin.i64(i64 %i.akv, i64 %i.ala)
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %CombineLengthCodes.exit
  %.0 = phi i64 [ %i.alb, %bb.et ], [ %i.akt, %CombineLengthCodes.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  %i.alc = icmp ult i64 %.0, %i.akv
  br i1 %i.alc, label %.lr.ph779, label %StoreRangeH65.exit

.lr.ph779:                                        ; preds = %bb.eu
  %i.ald = load i64, ptr %i.bb, align 8, !tbaa !111, !alias.scope !2016, !noalias !2017 ; 3 uses
  %i.ale = load i32, ptr %i.be, align 8, !tbaa !114, !alias.scope !2016, !noalias !2017 ; 3 uses
  %i.alf = load i32, ptr %i.bc, align 4, !tbaa !112, !alias.scope !2016, !noalias !2017
  %i.alg = zext nneg i32 %i.alf to i64            ; 3 uses
  %i.alh = sub nuw i64 %i.akv, %.0
  %.neg1255 = add i64 %.0, 1
  %xtraiter = and i64 %i.alh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph779
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  %i.ali = and i64 %.0, %3
  %i.alj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ali
  %.0.copyload.i.i.i290.prol = load i64, ptr %i.alj, align 1, !alias.scope !2019, !noalias !2016
  %i.alk = mul i64 %.0.copyload.i.i.i290.prol, %i.ald
  %i.all = lshr i64 %i.alk, 49                    ; 2 uses
  %i.alm = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.all ; 2 uses
  %i.aln = load i16, ptr %i.alm, align 2, !tbaa !76, !noalias !2020 ; 2 uses
  %i.alo = zext i16 %i.aln to i32
  %i.alp = and i32 %i.ale, %i.alo
  %i.alq = zext nneg i32 %i.alp to i64
  %i.alr = shl i64 %i.all, %i.alg
  %i.als = add i16 %i.aln, 1
  store i16 %i.als, ptr %i.alm, align 2, !tbaa !76, !noalias !2020
  %i.alt = trunc i64 %.0 to i32
  %i.alu = getelementptr [4 x i8], ptr %i.ba, i64 %i.alr
  %i.alv = getelementptr [4 x i8], ptr %i.alu, i64 %i.alq
  store i32 %i.alt, ptr %i.alv, align 4, !tbaa !64, !noalias !2020
  %i.alw = add nuw i64 %.0, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph779
  %.0.i.i289777.unr = phi i64 [ %.0, %.lr.ph779 ], [ %i.alw, %.prol.loopexit.unr-lcssa ]
  %i.alx = icmp eq i64 %i.akv, %.neg1255
  br i1 %i.alx, label %StoreRangeH65.exit, label %.lr.ph779.new

.lr.ph779.new:                                    ; preds = %.prol.loopexit, %.lr.ph779.new
  %.0.i.i289777 = phi i64 [ %i.anb, %.lr.ph779.new ], [ %.0.i.i289777.unr, %.prol.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  %i.aly = and i64 %.0.i.i289777, %3
  %i.alz = getelementptr inbounds nuw i8, ptr %2, i64 %i.aly
  %.0.copyload.i.i.i290 = load i64, ptr %i.alz, align 1, !alias.scope !2019, !noalias !2016
  %i.ama = mul i64 %.0.copyload.i.i.i290, %i.ald
  %i.amb = lshr i64 %i.ama, 49                    ; 2 uses
  %i.amc = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.amb ; 2 uses
  %i.amd = load i16, ptr %i.amc, align 2, !tbaa !76, !noalias !2020 ; 2 uses
  %i.ame = zext i16 %i.amd to i32
  %i.amf = and i32 %i.ale, %i.ame
  %i.amg = zext nneg i32 %i.amf to i64
  %i.amh = shl i64 %i.amb, %i.alg
  %i.ami = add i16 %i.amd, 1
  store i16 %i.ami, ptr %i.amc, align 2, !tbaa !76, !noalias !2020
  %i.amj = trunc i64 %.0.i.i289777 to i32
  %i.amk = getelementptr [4 x i8], ptr %i.ba, i64 %i.amh
  %i.aml = getelementptr [4 x i8], ptr %i.amk, i64 %i.amg
  store i32 %i.amj, ptr %i.aml, align 4, !tbaa !64, !noalias !2020
  %i.amm = add nuw i64 %.0.i.i289777, 1           ; 2 uses
  %i.amn = and i64 %i.amm, %3
  %i.amo = getelementptr inbounds nuw i8, ptr %2, i64 %i.amn
  %.0.copyload.i.i.i290.1 = load i64, ptr %i.amo, align 1, !alias.scope !2019, !noalias !2021
  %i.amp = mul i64 %.0.copyload.i.i.i290.1, %i.ald
  %i.amq = lshr i64 %i.amp, 49                    ; 2 uses
  %i.amr = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.amq ; 2 uses
  %i.ams = load i16, ptr %i.amr, align 2, !tbaa !76, !noalias !2022 ; 2 uses
  %i.amt = zext i16 %i.ams to i32
  %i.amu = and i32 %i.ale, %i.amt
  %i.amv = zext nneg i32 %i.amu to i64
  %i.amw = shl i64 %i.amq, %i.alg
  %i.amx = add i16 %i.ams, 1
  store i16 %i.amx, ptr %i.amr, align 2, !tbaa !76, !noalias !2022
  %i.amy = trunc i64 %i.amm to i32
  %i.amz = getelementptr [4 x i8], ptr %i.ba, i64 %i.amw
  %i.ana = getelementptr [4 x i8], ptr %i.amz, i64 %i.amv
  store i32 %i.amy, ptr %i.ana, align 4, !tbaa !64, !noalias !2022
  %i.anb = add nuw i64 %.0.i.i289777, 2           ; 2 uses
  %exitcond861.not.1 = icmp eq i64 %i.anb, %i.akv
  br i1 %exitcond861.not.1, label %StoreRangeH65.exit, label %.lr.ph779.new, !llvm.loop !9

bb.ev:                                            ; preds = %FindLongestMatchHROLLING.exit
  %i.anc = add i64 %.0175782, 1                   ; 5 uses
  %i.and = add i64 %.0178781, 1                   ; 9 uses
  %i.ane = icmp ugt i64 %i.and, %.0173783
  br i1 %i.ane, label %bb.ew, label %StoreRangeH65.exit

bb.ew:                                            ; preds = %bb.ev
  %i.anf = add i64 %.0173783, %i.bm
  %i.ang = icmp ugt i64 %i.and, %i.anf
  br i1 %i.ang, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.anh = add i64 %.0178781, 17
  %i.ani = tail call i64 @llvm.umin.i64(i64 %i.anh, i64 %i.k) ; 2 uses
  %i.anj = icmp ult i64 %i.and, %i.ani
  br i1 %i.anj, label %.lr.ph648, label %StoreRangeH65.exit

.lr.ph648:                                        ; preds = %bb.ex
  %i.ank = load i32, ptr %i.be, align 8, !tbaa !114, !alias.scope !2023, !noalias !2024
  %i.anl = load i32, ptr %i.bc, align 4, !tbaa !112, !alias.scope !2023, !noalias !2024
  %i.anm = zext nneg i32 %i.anl to i64
  br label %bb.ey

bb.ey:                                            ; preds = %.lr.ph648, %bb.ey
  %.4646 = phi i64 [ %i.anc, %.lr.ph648 ], [ %i.aob, %bb.ey ]
  %.4182645 = phi i64 [ %i.and, %.lr.ph648 ], [ %i.aoc, %bb.ey ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  %i.ann = and i64 %.4182645, %3
  %i.ano = getelementptr inbounds nuw i8, ptr %2, i64 %i.ann
  %.0.copyload.i.i.i292 = load i64, ptr %i.ano, align 1, !alias.scope !2028, !noalias !2023
  %i.anp = mul i64 %.0.copyload.i.i.i292, %i.dc
  %i.anq = lshr i64 %i.anp, 49                    ; 2 uses
  %i.anr = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.anq ; 2 uses
  %i.ans = load i16, ptr %i.anr, align 2, !tbaa !76, !noalias !2029 ; 2 uses
  %i.ant = zext i16 %i.ans to i32
  %i.anu = and i32 %i.ank, %i.ant
  %i.anv = zext nneg i32 %i.anu to i64
  %i.anw = shl i64 %i.anq, %i.anm
  %i.anx = add i16 %i.ans, 1
  store i16 %i.anx, ptr %i.anr, align 2, !tbaa !76, !noalias !2029
  %i.any = trunc i64 %.4182645 to i32
  %i.anz = getelementptr [4 x i8], ptr %i.ba, i64 %i.anw
  %i.aoa = getelementptr [4 x i8], ptr %i.anz, i64 %i.anv
  store i32 %i.any, ptr %i.aoa, align 4, !tbaa !64, !noalias !2029
  %i.aob = add i64 %.4646, 4                      ; 2 uses
  %i.aoc = add i64 %.4182645, 4                   ; 3 uses
  %i.aod = icmp ult i64 %i.aoc, %i.ani
  br i1 %i.aod, label %bb.ey, label %StoreRangeH65.exit, !llvm.loop !1951

bb.ez:                                            ; preds = %bb.ew
  %i.aoe = add i64 %.0178781, 9
  %i.aof = tail call i64 @llvm.umin.i64(i64 %i.aoe, i64 %i.k) ; 2 uses
  %i.aog = icmp ult i64 %i.and, %i.aof
  br i1 %i.aog, label %.lr.ph642, label %StoreRangeH65.exit

.lr.ph642:                                        ; preds = %bb.ez
  %i.aoh = load i32, ptr %i.be, align 8, !tbaa !114, !alias.scope !2030, !noalias !2031
end_hunk_17
