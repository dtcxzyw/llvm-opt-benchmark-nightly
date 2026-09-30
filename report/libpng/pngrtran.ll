Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrtran?download=true
inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 51
begin_hunk_0_@png_do_read_transformations:bb.a
  store i8 %i.bbu, ptr %i.bbv, align 1, !tbaa !26, !noalias !318
  %i.bbw = trunc i16 %i.bbs to i8
  %i.bbx = getelementptr inbounds nuw i8, ptr %.25834.i, i64 5
  store i8 %i.bbw, ptr %i.bbx, align 1, !tbaa !26, !noalias !318
  br label %bb.gb

bb.ga:                                            ; preds = %bb.fy
  %i.bby = load i8, ptr %.25834.i, align 1, !tbaa !26, !noalias !318
  %i.bbz = zext i8 %i.bby to i32
  %i.bca = shl nuw nsw i32 %i.bbz, 8
  %i.bcb = getelementptr inbounds nuw i8, ptr %.25834.i, i64 1 ; 2 uses
  %i.bcc = load i8, ptr %i.bcb, align 1, !tbaa !26, !noalias !318
  %i.bcd = zext i8 %i.bcc to i32
  %i.bce = or disjoint i32 %i.bca, %i.bcd
  %i.bcf = getelementptr inbounds nuw i8, ptr %.25834.i, i64 2 ; 2 uses
  %i.bcg = load i8, ptr %i.bcf, align 1, !tbaa !26, !noalias !318
  %i.bch = zext i8 %i.bcg to i32
  %i.bci = shl nuw nsw i32 %i.bch, 8
  %i.bcj = getelementptr inbounds nuw i8, ptr %.25834.i, i64 3 ; 2 uses
  %i.bck = load i8, ptr %i.bcj, align 1, !tbaa !26, !noalias !318
  %i.bcl = zext i8 %i.bck to i32
  %i.bcm = or disjoint i32 %i.bci, %i.bcl
  %i.bcn = getelementptr inbounds nuw i8, ptr %.25834.i, i64 4 ; 2 uses
  %i.bco = load i8, ptr %i.bcn, align 1, !tbaa !26, !noalias !318
  %i.bcp = zext i8 %i.bco to i32
  %i.bcq = shl nuw nsw i32 %i.bcp, 8
  %i.bcr = getelementptr inbounds nuw i8, ptr %.25834.i, i64 5 ; 2 uses
  %i.bcs = load i8, ptr %i.bcr, align 1, !tbaa !26, !noalias !318
  %i.bct = zext i8 %i.bcs to i32
  %i.bcu = or disjoint i32 %i.bcq, %i.bct
  %i.bcv = mul nuw i32 %i.bce, %i.bbg
  %i.bcw = load i16, ptr %i.atw, align 2, !tbaa !52, !alias.scope !318
  %i.bcx = zext i16 %i.bcw to i32
  %i.bcy = xor i32 %i.bbg, 65535                  ; 3 uses
  %i.bcz = mul nuw i32 %i.bcy, %i.bcx
  %i.bda = add nuw i32 %i.bcv, 32768
  %i.bdb = add i32 %i.bda, %i.bcz                 ; 2 uses
  %i.bdc = lshr i32 %i.bdb, 16
  %i.bdd = add i32 %i.bdc, %i.bdb                 ; 2 uses
  %i.bde = lshr i32 %i.bdd, 16
  %i.bdf = lshr i32 %i.bdd, 24
  %i.bdg = trunc nuw i32 %i.bdf to i8
  store i8 %i.bdg, ptr %.25834.i, align 1, !tbaa !26, !noalias !318
  %i.bdh = trunc i32 %i.bde to i8
  store i8 %i.bdh, ptr %i.bcb, align 1, !tbaa !26, !noalias !318
  %i.bdi = mul nuw i32 %i.bcm, %i.bbg
  %i.bdj = load i16, ptr %i.atx, align 8, !tbaa !53, !alias.scope !318
  %i.bdk = zext i16 %i.bdj to i32
  %i.bdl = mul nuw i32 %i.bcy, %i.bdk
  %i.bdm = add nuw i32 %i.bdi, 32768
  %i.bdn = add i32 %i.bdm, %i.bdl                 ; 2 uses
  %i.bdo = lshr i32 %i.bdn, 16
  %i.bdp = add i32 %i.bdo, %i.bdn                 ; 2 uses
  %i.bdq = lshr i32 %i.bdp, 16
  %i.bdr = lshr i32 %i.bdp, 24
  %i.bds = trunc nuw i32 %i.bdr to i8
  store i8 %i.bds, ptr %i.bcf, align 1, !tbaa !26, !noalias !318
  %i.bdt = trunc i32 %i.bdq to i8
  store i8 %i.bdt, ptr %i.bcj, align 1, !tbaa !26, !noalias !318
  %i.bdu = mul nuw i32 %i.bcu, %i.bbg
  %i.bdv = load i16, ptr %i.aty, align 2, !tbaa !54, !alias.scope !318
  %i.bdw = zext i16 %i.bdv to i32
  %i.bdx = mul nuw i32 %i.bcy, %i.bdw
  %i.bdy = add nuw i32 %i.bdu, 32768
  %i.bdz = add i32 %i.bdy, %i.bdx                 ; 2 uses
  %i.bea = lshr i32 %i.bdz, 16
  %i.beb = add i32 %i.bea, %i.bdz                 ; 2 uses
  %i.bec = lshr i32 %i.beb, 16
  %i.bed = lshr i32 %i.beb, 24
  %i.bee = trunc nuw i32 %i.bed to i8
  store i8 %i.bee, ptr %i.bcn, align 1, !tbaa !26, !noalias !318
  %i.bef = trunc i32 %i.bec to i8
  store i8 %i.bef, ptr %i.bcr, align 1, !tbaa !26, !noalias !318
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz, %bb.fy
  %i.beg = add nuw i32 %.20722833.i, 1            ; 2 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %.25834.i, i64 8
  %exitcond.not.i187 = icmp eq i32 %i.beg, %i.sd
  br i1 %exitcond.not.i187, label %png_do_compose.exit, label %bb.fy, !llvm.loop !247

png_do_compose.exit.loopexit692.unr-lcssa:        ; preds = %bb.cp
  %lcmp.mod744.not = icmp eq i32 %xtraiter743, 0
  br i1 %lcmp.mod744.not, label %png_do_compose.exit, label %.epil.preheader742

.epil.preheader742:                               ; preds = %png_do_compose.exit.loopexit692.unr-lcssa, %.lr.ph879.i
  %.11878.i.epil.init = phi ptr [ %i.rm, %.lr.ph879.i ], [ %i.xx, %png_do_compose.exit.loopexit692.unr-lcssa ] ; 2 uses
  %lcmp.mod745 = trunc i32 %i.sd to i1
  tail call void @llvm.assume(i1 %lcmp.mod745)
  %i.bei = load i8, ptr %.11878.i.epil.init, align 1, !tbaa !26, !noalias !318
  %i.bej = zext i8 %i.bei to i16
  %i.bek = icmp eq i16 %i.wr, %i.bej
  br i1 %i.bek, label %bb.gc, label %png_do_compose.exit

bb.gc:                                            ; preds = %.epil.preheader742
  %i.bel = load i16, ptr %i.ws, align 4, !tbaa !55, !alias.scope !318
  %i.bem = trunc i16 %i.bel to i8
  store i8 %i.bem, ptr %.11878.i.epil.init, align 1, !tbaa !26, !noalias !318
  br label %png_do_compose.exit

png_do_compose.exit.loopexit693.unr-lcssa:        ; preds = %bb.ck
  %lcmp.mod738.not = icmp eq i32 %xtraiter737, 0
  br i1 %lcmp.mod738.not, label %png_do_compose.exit, label %.epil.preheader736

.epil.preheader736:                               ; preds = %png_do_compose.exit.loopexit693.unr-lcssa, %.lr.ph876.i
  %.10875.i.epil.init = phi ptr [ %i.rm, %.lr.ph876.i ], [ %i.xl, %png_do_compose.exit.loopexit693.unr-lcssa ] ; 2 uses
  %lcmp.mod739 = trunc i32 %i.sd to i1
  tail call void @llvm.assume(i1 %lcmp.mod739)
  %i.ben = load i8, ptr %.10875.i.epil.init, align 1, !tbaa !26, !noalias !318 ; 2 uses
  %i.beo = zext i8 %i.ben to i16
  %i.bep = icmp eq i16 %i.wn, %i.beo
  br i1 %i.bep, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %.epil.preheader736
  %i.beq = zext i8 %i.ben to i64
  %i.ber = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.beq
  %i.bes = load i8, ptr %i.ber, align 1, !tbaa !26
  br label %png_do_compose.exit.loopexit693.epilog-lcssa

bb.ge:                                            ; preds = %.epil.preheader736
  %i.bet = load i16, ptr %i.wo, align 4, !tbaa !55, !alias.scope !318
  %i.beu = trunc i16 %i.bet to i8
  br label %png_do_compose.exit.loopexit693.epilog-lcssa

png_do_compose.exit.loopexit693.epilog-lcssa:     ; preds = %bb.ge, %bb.gd
  %storemerge781.i.epil = phi i8 [ %i.bes, %bb.gd ], [ %i.beu, %bb.ge ]
  store i8 %storemerge781.i.epil, ptr %.10875.i.epil.init, align 1, !tbaa !26, !noalias !318
  br label %png_do_compose.exit

png_do_compose.exit.loopexit694.unr-lcssa:        ; preds = %bb.cy
  %lcmp.mod732.not = icmp eq i32 %xtraiter731, 0
  br i1 %lcmp.mod732.not, label %png_do_compose.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %png_do_compose.exit.loopexit694.unr-lcssa, %.lr.ph873.i
  %.13872.i.epil.init = phi ptr [ %i.rm, %.lr.ph873.i ], [ %i.zw, %png_do_compose.exit.loopexit694.unr-lcssa ] ; 3 uses
  %lcmp.mod733 = trunc i32 %i.sd to i1
  tail call void @llvm.assume(i1 %lcmp.mod733)
  %i.bev = load i8, ptr %.13872.i.epil.init, align 1, !tbaa !26, !noalias !318
  %i.bew = zext i8 %i.bev to i32
  %i.bex = shl nuw nsw i32 %i.bew, 8
  %i.bey = getelementptr inbounds nuw i8, ptr %.13872.i.epil.init, i64 1 ; 2 uses
  %i.bez = load i8, ptr %i.bey, align 1, !tbaa !26, !noalias !318
  %i.bfa = zext i8 %i.bez to i32
  %i.bfb = or disjoint i32 %i.bex, %i.bfa
  %i.bfc = icmp eq i32 %i.bfb, %i.ye
  br i1 %i.bfc, label %bb.gf, label %png_do_compose.exit

bb.gf:                                            ; preds = %.epil.preheader
  %i.bfd = load i16, ptr %i.yf, align 4, !tbaa !55, !alias.scope !318 ; 2 uses
  %i.bfe = lshr i16 %i.bfd, 8
  %i.bff = trunc nuw i16 %i.bfe to i8
  store i8 %i.bff, ptr %.13872.i.epil.init, align 1, !tbaa !26, !noalias !318
  %i.bfg = trunc i16 %i.bfd to i8
  store i8 %i.bfg, ptr %i.bey, align 1, !tbaa !26, !noalias !318
  br label %png_do_compose.exit

png_do_compose.exit:                              ; preds = %bb.gb, %bb.fx, %bb.fl, %bb.fh, %bb.eu, %bb.eq, %bb.ei, %bb.ee, %bb.dr, %bb.dw, %bb.df, %bb.dk, %bb.ct, %png_do_compose.exit.loopexit694.unr-lcssa, %bb.gf, %.epil.preheader, %png_do_compose.exit.loopexit693.epilog-lcssa, %png_do_compose.exit.loopexit693.unr-lcssa, %png_do_compose.exit.loopexit692.unr-lcssa, %bb.gc, %.epil.preheader742, %bb.bz, %bb.cc, %bb.br, %bb.bu, %bb.bm, %.preheader829.i, %.preheader831.i, %.preheader825.i, %.preheader827.i, %.preheader821.i, %.preheader823.i, %.preheader817.i, %.preheader819.i, %.preheader813.i, %.preheader815.i, %.preheader809.i, %.preheader811.i, %.preheader805.i, %.preheader807.i, %.preheader801.i, %.preheader803.i, %.preheader797.i, %.preheader799.i, %.preheader793.i, %.preheader795.i, %.preheader.i199, %.split.i, %bb.bj, %bb.bi, %bb.bh
  %i.bfh = load i32, ptr %i.h, align 4, !tbaa !25 ; 2 uses
  %i.bfi = and i32 %i.bfh, 6299648
  %or.cond179 = icmp eq i32 %i.bfi, 8192
  br i1 %or.cond179, label %bb.gg, label %png_do_gamma.exit

bb.gg:                                            ; preds = %png_do_compose.exit
  %i.bfj = and i32 %i.bfh, 128
  %.not147 = icmp eq i32 %i.bfj, 0
  br i1 %.not147, label %._crit_edge, label %bb.gh

._crit_edge:                                      ; preds = %bb.gg
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 623
  %.pre384 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !48
  br label %bb.gj

bb.gh:                                            ; preds = %bb.gg
  %i.bfk = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bfl = load i16, ptr %i.bfk, align 8, !tbaa !51
  %.not148 = icmp eq i16 %i.bfl, 0
  br i1 %.not148, label %bb.gi, label %png_do_gamma.exit

bb.gi:                                            ; preds = %bb.gh
  %i.bfm = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.bfn = load i8, ptr %i.bfm, align 1, !tbaa !48 ; 2 uses
  %i.bfo = and i8 %i.bfn, 4
  %.not149 = icmp eq i8 %i.bfo, 0
  br i1 %.not149, label %bb.gj, label %png_do_gamma.exit

bb.gj:                                            ; preds = %._crit_edge, %bb.gi
  %i.bfp = phi i8 [ %.pre384, %._crit_edge ], [ %i.bfn, %bb.gi ]
  %.not150 = icmp eq i8 %i.bfp, 3
  br i1 %.not150, label %png_do_gamma.exit, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.bfq = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfq, i64 1 ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.bfs = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bft = load ptr, ptr %i.bfs, align 8, !tbaa !61, !alias.scope !319 ; 39 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bfv = load ptr, ptr %i.bfu, align 8, !tbaa !314, !alias.scope !319 ; 13 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bfx = load i32, ptr %i.bfw, align 8, !tbaa !315, !alias.scope !319 ; 12 uses
  %i.bfy = load i32, ptr %1, align 8, !tbaa !74, !noalias !319 ; 33 uses
  %i.bfz = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.bga = load i8, ptr %i.bfz, align 1, !tbaa !75, !noalias !319 ; 7 uses
  %i.bgb = icmp ult i8 %i.bga, 9
  %i.bgc = icmp ne ptr %i.bft, null
  %or.cond.i201 = select i1 %i.bgb, i1 %i.bgc, i1 false
  br i1 %or.cond.i201, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.bgd = icmp eq i8 %i.bga, 16
  %i.bge = icmp ne ptr %i.bfv, null
  %or.cond3.i202 = select i1 %i.bgd, i1 %i.bge, i1 false
  br i1 %or.cond3.i202, label %bb.gm, label %png_do_gamma.exit

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.bgf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bgg = load i8, ptr %i.bgf, align 8, !tbaa !73, !noalias !319
  switch i8 %i.bgg, label %png_do_gamma.exit [
    i8 2, label %bb.gn
    i8 6, label %bb.go
    i8 4, label %bb.gp
    i8 0, label %bb.gq
  ]

bb.gn:                                            ; preds = %bb.gm
  %i.bgh = icmp eq i8 %i.bga, 8
  %.not265.i = icmp eq i32 %i.bfy, 0              ; 2 uses
  br i1 %i.bgh, label %.preheader.i210, label %.preheader210.i

.preheader210.i:                                  ; preds = %bb.gn
  br i1 %.not265.i, label %png_do_gamma.exit, label %.lr.ph253.i

.preheader.i210:                                  ; preds = %bb.gn
  br i1 %.not265.i, label %png_do_gamma.exit, label %.lr.ph256.i211.preheader

.lr.ph256.i211.preheader:                         ; preds = %.preheader.i210
  %xtraiter782 = and i32 %i.bfy, 1
  %i.bgi = icmp eq i32 %i.bfy, 1
  br i1 %i.bgi, label %.lr.ph256.i211.epil.preheader, label %.lr.ph256.i211.preheader.new

.lr.ph256.i211.preheader.new:                     ; preds = %.lr.ph256.i211.preheader
  %unroll_iter786 = and i32 %i.bfy, -2
  br label %.lr.ph256.i211

.lr.ph256.i211:                                   ; preds = %.lr.ph256.i211, %.lr.ph256.i211.preheader.new
  %.0255.i = phi ptr [ %i.bfr, %.lr.ph256.i211.preheader.new ], [ %i.bhm, %.lr.ph256.i211 ] ; 8 uses
  %niter787 = phi i32 [ 0, %.lr.ph256.i211.preheader.new ], [ %niter787.next.1, %.lr.ph256.i211 ]
  %i.bgj = load i8, ptr %.0255.i, align 1, !tbaa !26, !noalias !319
  %i.bgk = zext i8 %i.bgj to i64
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bgk
  %i.bgm = load i8, ptr %i.bgl, align 1, !tbaa !26, !noalias !319
  store i8 %i.bgm, ptr %.0255.i, align 1, !tbaa !26, !noalias !319
  %i.bgn = getelementptr inbounds nuw i8, ptr %.0255.i, i64 1 ; 2 uses
  %i.bgo = load i8, ptr %i.bgn, align 1, !tbaa !26, !noalias !319
  %i.bgp = zext i8 %i.bgo to i64
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bgp
  %i.bgr = load i8, ptr %i.bgq, align 1, !tbaa !26, !noalias !319
  store i8 %i.bgr, ptr %i.bgn, align 1, !tbaa !26, !noalias !319
  %i.bgs = getelementptr inbounds nuw i8, ptr %.0255.i, i64 2 ; 2 uses
  %i.bgt = load i8, ptr %i.bgs, align 1, !tbaa !26, !noalias !319
  %i.bgu = zext i8 %i.bgt to i64
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bgu
  %i.bgw = load i8, ptr %i.bgv, align 1, !tbaa !26, !noalias !319
  store i8 %i.bgw, ptr %i.bgs, align 1, !tbaa !26, !noalias !319
  %i.bgx = getelementptr inbounds nuw i8, ptr %.0255.i, i64 3 ; 2 uses
  %i.bgy = load i8, ptr %i.bgx, align 1, !tbaa !26, !noalias !319
  %i.bgz = zext i8 %i.bgy to i64
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bgz
  %i.bhb = load i8, ptr %i.bha, align 1, !tbaa !26, !noalias !319
  store i8 %i.bhb, ptr %i.bgx, align 1, !tbaa !26, !noalias !319
  %i.bhc = getelementptr inbounds nuw i8, ptr %.0255.i, i64 4 ; 2 uses
  %i.bhd = load i8, ptr %i.bhc, align 1, !tbaa !26, !noalias !319
  %i.bhe = zext i8 %i.bhd to i64
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bhe
  %i.bhg = load i8, ptr %i.bhf, align 1, !tbaa !26, !noalias !319
  store i8 %i.bhg, ptr %i.bhc, align 1, !tbaa !26, !noalias !319
  %i.bhh = getelementptr inbounds nuw i8, ptr %.0255.i, i64 5 ; 2 uses
  %i.bhi = load i8, ptr %i.bhh, align 1, !tbaa !26, !noalias !319
  %i.bhj = zext i8 %i.bhi to i64
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bhj
  %i.bhl = load i8, ptr %i.bhk, align 1, !tbaa !26, !noalias !319
  store i8 %i.bhl, ptr %i.bhh, align 1, !tbaa !26, !noalias !319
  %i.bhm = getelementptr inbounds nuw i8, ptr %.0255.i, i64 6 ; 2 uses
  %niter787.next.1 = add nuw i32 %niter787, 2     ; 2 uses
  %niter787.ncmp.1 = icmp eq i32 %niter787.next.1, %unroll_iter786
  br i1 %niter787.ncmp.1, label %png_do_gamma.exit.loopexit.unr-lcssa, label %.lr.ph256.i211, !llvm.loop !250

.lr.ph253.i:                                      ; preds = %.preheader210.i, %.lr.ph253.i
  %.1252.i = phi ptr [ %i.bjf, %.lr.ph253.i ], [ %i.bfr, %.preheader210.i ] ; 8 uses
  %.1200251.i = phi i32 [ %i.bjg, %.lr.ph253.i ], [ 0, %.preheader210.i ]
  %i.bhn = getelementptr inbounds nuw i8, ptr %.1252.i, i64 1 ; 2 uses
  %i.bho = load i8, ptr %i.bhn, align 1, !tbaa !26, !noalias !319
  %i.bhp = zext i8 %i.bho to i32
  %i.bhq = lshr i32 %i.bhp, %i.bfx
  %i.bhr = zext nneg i32 %i.bhq to i64
  %i.bhs = getelementptr inbounds nuw [8 x i8], ptr %i.bfv, i64 %i.bhr
  %i.bht = load ptr, ptr %i.bhs, align 8, !tbaa !316, !noalias !319
  %i.bhu = load i8, ptr %.1252.i, align 1, !tbaa !26, !noalias !319
  %i.bhv = zext i8 %i.bhu to i64
  %i.bhw = getelementptr inbounds nuw [2 x i8], ptr %i.bht, i64 %i.bhv
  %i.bhx = load i16, ptr %i.bhw, align 2, !tbaa !27, !noalias !319 ; 2 uses
  %i.bhy = lshr i16 %i.bhx, 8
  %i.bhz = trunc nuw i16 %i.bhy to i8
  store i8 %i.bhz, ptr %.1252.i, align 1, !tbaa !26, !noalias !319
  %i.bia = trunc i16 %i.bhx to i8
  store i8 %i.bia, ptr %i.bhn, align 1, !tbaa !26, !noalias !319
  %i.bib = getelementptr inbounds nuw i8, ptr %.1252.i, i64 2 ; 2 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %.1252.i, i64 3 ; 2 uses
  %i.bid = load i8, ptr %i.bic, align 1, !tbaa !26, !noalias !319
  %i.bie = zext i8 %i.bid to i32
  %i.bif = lshr i32 %i.bie, %i.bfx
  %i.big = zext nneg i32 %i.bif to i64
  %i.bih = getelementptr inbounds nuw [8 x i8], ptr %i.bfv, i64 %i.big
  %i.bii = load ptr, ptr %i.bih, align 8, !tbaa !316, !noalias !319
  %i.bij = load i8, ptr %i.bib, align 1, !tbaa !26, !noalias !319
  %i.bik = zext i8 %i.bij to i64
  %i.bil = getelementptr inbounds nuw [2 x i8], ptr %i.bii, i64 %i.bik
  %i.bim = load i16, ptr %i.bil, align 2, !tbaa !27, !noalias !319 ; 2 uses
  %i.bin = lshr i16 %i.bim, 8
  %i.bio = trunc nuw i16 %i.bin to i8
  store i8 %i.bio, ptr %i.bib, align 1, !tbaa !26, !noalias !319
  %i.bip = trunc i16 %i.bim to i8
  store i8 %i.bip, ptr %i.bic, align 1, !tbaa !26, !noalias !319
  %i.biq = getelementptr inbounds nuw i8, ptr %.1252.i, i64 4 ; 2 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %.1252.i, i64 5 ; 2 uses
  %i.bis = load i8, ptr %i.bir, align 1, !tbaa !26, !noalias !319
  %i.bit = zext i8 %i.bis to i32
  %i.biu = lshr i32 %i.bit, %i.bfx
  %i.biv = zext nneg i32 %i.biu to i64
  %i.biw = getelementptr inbounds nuw [8 x i8], ptr %i.bfv, i64 %i.biv
  %i.bix = load ptr, ptr %i.biw, align 8, !tbaa !316, !noalias !319
  %i.biy = load i8, ptr %i.biq, align 1, !tbaa !26, !noalias !319
  %i.biz = zext i8 %i.biy to i64
  %i.bja = getelementptr inbounds nuw [2 x i8], ptr %i.bix, i64 %i.biz
  %i.bjb = load i16, ptr %i.bja, align 2, !tbaa !27, !noalias !319 ; 2 uses
  %i.bjc = lshr i16 %i.bjb, 8
  %i.bjd = trunc nuw i16 %i.bjc to i8
  store i8 %i.bjd, ptr %i.biq, align 1, !tbaa !26, !noalias !319
  %i.bje = trunc i16 %i.bjb to i8
  store i8 %i.bje, ptr %i.bir, align 1, !tbaa !26, !noalias !319
  %i.bjf = getelementptr inbounds nuw i8, ptr %.1252.i, i64 6
  %i.bjg = add nuw i32 %.1200251.i, 1             ; 2 uses
  %exitcond279.not.i = icmp eq i32 %i.bjg, %i.bfy
  br i1 %exitcond279.not.i, label %png_do_gamma.exit, label %.lr.ph253.i, !llvm.loop !251

bb.go:                                            ; preds = %bb.gm
  %i.bjh = icmp eq i8 %i.bga, 8
  %.not263.i = icmp eq i32 %i.bfy, 0              ; 2 uses
  br i1 %i.bjh, label %.preheader212.i, label %.preheader214.i

.preheader214.i:                                  ; preds = %bb.go
  br i1 %.not263.i, label %png_do_gamma.exit, label %.lr.ph247.i

.preheader212.i:                                  ; preds = %bb.go
  br i1 %.not263.i, label %png_do_gamma.exit, label %.lr.ph250.i209.preheader

.lr.ph250.i209.preheader:                         ; preds = %.preheader212.i
  %xtraiter776 = and i32 %i.bfy, 1
  %i.bji = icmp eq i32 %i.bfy, 1
  br i1 %i.bji, label %.lr.ph250.i209.epil.preheader, label %.lr.ph250.i209.preheader.new

.lr.ph250.i209.preheader.new:                     ; preds = %.lr.ph250.i209.preheader
  %unroll_iter780 = and i32 %i.bfy, -2
  br label %.lr.ph250.i209

.lr.ph250.i209:                                   ; preds = %.lr.ph250.i209, %.lr.ph250.i209.preheader.new
  %.2249.i = phi ptr [ %i.bfr, %.lr.ph250.i209.preheader.new ], [ %i.bkm, %.lr.ph250.i209 ] ; 8 uses
  %niter781 = phi i32 [ 0, %.lr.ph250.i209.preheader.new ], [ %niter781.next.1, %.lr.ph250.i209 ]
  %i.bjj = load i8, ptr %.2249.i, align 1, !tbaa !26, !noalias !319
  %i.bjk = zext i8 %i.bjj to i64
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bjk
  %i.bjm = load i8, ptr %i.bjl, align 1, !tbaa !26, !noalias !319
  store i8 %i.bjm, ptr %.2249.i, align 1, !tbaa !26, !noalias !319
  %i.bjn = getelementptr inbounds nuw i8, ptr %.2249.i, i64 1 ; 2 uses
  %i.bjo = load i8, ptr %i.bjn, align 1, !tbaa !26, !noalias !319
  %i.bjp = zext i8 %i.bjo to i64
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bjp
  %i.bjr = load i8, ptr %i.bjq, align 1, !tbaa !26, !noalias !319
  store i8 %i.bjr, ptr %i.bjn, align 1, !tbaa !26, !noalias !319
  %i.bjs = getelementptr inbounds nuw i8, ptr %.2249.i, i64 2 ; 2 uses
  %i.bjt = load i8, ptr %i.bjs, align 1, !tbaa !26, !noalias !319
  %i.bju = zext i8 %i.bjt to i64
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bju
  %i.bjw = load i8, ptr %i.bjv, align 1, !tbaa !26, !noalias !319
  store i8 %i.bjw, ptr %i.bjs, align 1, !tbaa !26, !noalias !319
  %i.bjx = getelementptr inbounds nuw i8, ptr %.2249.i, i64 4 ; 2 uses
  %i.bjy = load i8, ptr %i.bjx, align 1, !tbaa !26, !noalias !319
  %i.bjz = zext i8 %i.bjy to i64
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bjz
  %i.bkb = load i8, ptr %i.bka, align 1, !tbaa !26, !noalias !319
  store i8 %i.bkb, ptr %i.bjx, align 1, !tbaa !26, !noalias !319
  %i.bkc = getelementptr inbounds nuw i8, ptr %.2249.i, i64 5 ; 2 uses
  %i.bkd = load i8, ptr %i.bkc, align 1, !tbaa !26, !noalias !319
  %i.bke = zext i8 %i.bkd to i64
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bke
  %i.bkg = load i8, ptr %i.bkf, align 1, !tbaa !26, !noalias !319
  store i8 %i.bkg, ptr %i.bkc, align 1, !tbaa !26, !noalias !319
  %i.bkh = getelementptr inbounds nuw i8, ptr %.2249.i, i64 6 ; 2 uses
  %i.bki = load i8, ptr %i.bkh, align 1, !tbaa !26, !noalias !319
  %i.bkj = zext i8 %i.bki to i64
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bkj
  %i.bkl = load i8, ptr %i.bkk, align 1, !tbaa !26, !noalias !319
  store i8 %i.bkl, ptr %i.bkh, align 1, !tbaa !26, !noalias !319
  %i.bkm = getelementptr inbounds nuw i8, ptr %.2249.i, i64 8 ; 2 uses
  %niter781.next.1 = add nuw i32 %niter781, 2     ; 2 uses
  %niter781.ncmp.1 = icmp eq i32 %niter781.next.1, %unroll_iter780
  br i1 %niter781.ncmp.1, label %png_do_gamma.exit.loopexit681.unr-lcssa, label %.lr.ph250.i209, !llvm.loop !252

.lr.ph247.i:                                      ; preds = %.preheader214.i, %.lr.ph247.i
  %.3246.i = phi ptr [ %i.bmf, %.lr.ph247.i ], [ %i.bfr, %.preheader214.i ] ; 8 uses
  %.3202245.i = phi i32 [ %i.bmg, %.lr.ph247.i ], [ 0, %.preheader214.i ]
  %i.bkn = getelementptr inbounds nuw i8, ptr %.3246.i, i64 1 ; 2 uses
  %i.bko = load i8, ptr %i.bkn, align 1, !tbaa !26, !noalias !319
  %i.bkp = zext i8 %i.bko to i32
  %i.bkq = lshr i32 %i.bkp, %i.bfx
  %i.bkr = zext nneg i32 %i.bkq to i64
  %i.bks = getelementptr inbounds nuw [8 x i8], ptr %i.bfv, i64 %i.bkr
  %i.bkt = load ptr, ptr %i.bks, align 8, !tbaa !316, !noalias !319
  %i.bku = load i8, ptr %.3246.i, align 1, !tbaa !26, !noalias !319
  %i.bkv = zext i8 %i.bku to i64
  %i.bkw = getelementptr inbounds nuw [2 x i8], ptr %i.bkt, i64 %i.bkv
  %i.bkx = load i16, ptr %i.bkw, align 2, !tbaa !27, !noalias !319 ; 2 uses
  %i.bky = lshr i16 %i.bkx, 8
  %i.bkz = trunc nuw i16 %i.bky to i8
  store i8 %i.bkz, ptr %.3246.i, align 1, !tbaa !26, !noalias !319
  %i.bla = trunc i16 %i.bkx to i8
  store i8 %i.bla, ptr %i.bkn, align 1, !tbaa !26, !noalias !319
  %i.blb = getelementptr inbounds nuw i8, ptr %.3246.i, i64 2 ; 2 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %.3246.i, i64 3 ; 2 uses
  %i.bld = load i8, ptr %i.blc, align 1, !tbaa !26, !noalias !319
  %i.ble = zext i8 %i.bld to i32
  %i.blf = lshr i32 %i.ble, %i.bfx
  %i.blg = zext nneg i32 %i.blf to i64
  %i.blh = getelementptr inbounds nuw [8 x i8], ptr %i.bfv, i64 %i.blg
  %i.bli = load ptr, ptr %i.blh, align 8, !tbaa !316, !noalias !319
  %i.blj = load i8, ptr %i.blb, align 1, !tbaa !26, !noalias !319
  %i.blk = zext i8 %i.blj to i64
  %i.bll = getelementptr inbounds nuw [2 x i8], ptr %i.bli, i64 %i.blk
  %i.blm = load i16, ptr %i.bll, align 2, !tbaa !27, !noalias !319 ; 2 uses
  %i.bln = lshr i16 %i.blm, 8
  %i.blo = trunc nuw i16 %i.bln to i8
  store i8 %i.blo, ptr %i.blb, align 1, !tbaa !26, !noalias !319
  %i.blp = trunc i16 %i.blm to i8
  store i8 %i.blp, ptr %i.blc, align 1, !tbaa !26, !noalias !319
  %i.blq = getelementptr inbounds nuw i8, ptr %.3246.i, i64 4 ; 2 uses
  %i.blr = getelementptr inbounds nuw i8, ptr %.3246.i, i64 5 ; 2 uses
  %i.bls = load i8, ptr %i.blr, align 1, !tbaa !26, !noalias !319
  %i.blt = zext i8 %i.bls to i32
  %i.blu = lshr i32 %i.blt, %i.bfx
  %i.blv = zext nneg i32 %i.blu to i64
  %i.blw = getelementptr inbounds nuw [8 x i8], ptr %i.bfv, i64 %i.blv
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !316, !noalias !319
  %i.bly = load i8, ptr %i.blq, align 1, !tbaa !26, !noalias !319
  %i.blz = zext i8 %i.bly to i64
  %i.bma = getelementptr inbounds nuw [2 x i8], ptr %i.blx, i64 %i.blz
  %i.bmb = load i16, ptr %i.bma, align 2, !tbaa !27, !noalias !319 ; 2 uses
  %i.bmc = lshr i16 %i.bmb, 8
  %i.bmd = trunc nuw i16 %i.bmc to i8
  store i8 %i.bmd, ptr %i.blq, align 1, !tbaa !26, !noalias !319
  %i.bme = trunc i16 %i.bmb to i8
  store i8 %i.bme, ptr %i.blr, align 1, !tbaa !26, !noalias !319
  %i.bmf = getelementptr inbounds nuw i8, ptr %.3246.i, i64 8
  %i.bmg = add nuw i32 %.3202245.i, 1             ; 2 uses
  %exitcond277.not.i = icmp eq i32 %i.bmg, %i.bfy
  br i1 %exitcond277.not.i, label %png_do_gamma.exit, label %.lr.ph247.i, !llvm.loop !253

bb.gp:                                            ; preds = %bb.gm
  %i.bmh = icmp eq i8 %i.bga, 8
  %.not261.i207 = icmp eq i32 %i.bfy, 0           ; 2 uses
  br i1 %i.bmh, label %.preheader216.i, label %.preheader218.i

.preheader218.i:                                  ; preds = %bb.gp
  br i1 %.not261.i207, label %png_do_gamma.exit, label %.lr.ph241.i.preheader

.lr.ph241.i.preheader:                            ; preds = %.preheader218.i
  %xtraiter764 = and i32 %i.bfy, 1
  %i.bmi = icmp eq i32 %i.bfy, 1
  br i1 %i.bmi, label %.lr.ph241.i.epil.preheader, label %.lr.ph241.i.preheader.new

.lr.ph241.i.preheader.new:                        ; preds = %.lr.ph241.i.preheader
  %unroll_iter768 = and i32 %i.bfy, -2
  br label %.lr.ph241.i

.preheader216.i:                                  ; preds = %bb.gp
  br i1 %.not261.i207, label %png_do_gamma.exit, label %.lr.ph244.i208.preheader

.lr.ph244.i208.preheader:                         ; preds = %.preheader216.i
  %i.bmj = add i32 %i.bfy, -1
  %xtraiter770 = and i32 %i.bfy, 3                ; 3 uses
  %i.bmk = icmp ult i32 %i.bmj, 3
  br i1 %i.bmk, label %.lr.ph244.i208.epil.preheader, label %.lr.ph244.i208.preheader.new

.lr.ph244.i208.preheader.new:                     ; preds = %.lr.ph244.i208.preheader
  %unroll_iter774 = and i32 %i.bfy, -4
  br label %.lr.ph244.i208

.lr.ph244.i208:                                   ; preds = %.lr.ph244.i208, %.lr.ph244.i208.preheader.new
  %.4243.i = phi ptr [ %i.bfr, %.lr.ph244.i208.preheader.new ], [ %i.bne, %.lr.ph244.i208 ] ; 6 uses
  %niter775 = phi i32 [ 0, %.lr.ph244.i208.preheader.new ], [ %niter775.next.3, %.lr.ph244.i208 ]
  %i.bml = load i8, ptr %.4243.i, align 1, !tbaa !26, !noalias !319
  %i.bmm = zext i8 %i.bml to i64
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bmm
  %i.bmo = load i8, ptr %i.bmn, align 1, !tbaa !26, !noalias !319
  store i8 %i.bmo, ptr %.4243.i, align 1, !tbaa !26, !noalias !319
  %i.bmp = getelementptr inbounds nuw i8, ptr %.4243.i, i64 2 ; 2 uses
  %i.bmq = load i8, ptr %i.bmp, align 1, !tbaa !26, !noalias !319
  %i.bmr = zext i8 %i.bmq to i64
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bmr
  %i.bmt = load i8, ptr %i.bms, align 1, !tbaa !26, !noalias !319
  store i8 %i.bmt, ptr %i.bmp, align 1, !tbaa !26, !noalias !319
  %i.bmu = getelementptr inbounds nuw i8, ptr %.4243.i, i64 4 ; 2 uses
  %i.bmv = load i8, ptr %i.bmu, align 1, !tbaa !26, !noalias !319
  %i.bmw = zext i8 %i.bmv to i64
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bmw
  %i.bmy = load i8, ptr %i.bmx, align 1, !tbaa !26, !noalias !319
  store i8 %i.bmy, ptr %i.bmu, align 1, !tbaa !26, !noalias !319
  %i.bmz = getelementptr inbounds nuw i8, ptr %.4243.i, i64 6 ; 2 uses
  %i.bna = load i8, ptr %i.bmz, align 1, !tbaa !26, !noalias !319
  %i.bnb = zext i8 %i.bna to i64
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bnb
  %i.bnd = load i8, ptr %i.bnc, align 1, !tbaa !26, !noalias !319
  store i8 %i.bnd, ptr %i.bmz, align 1, !tbaa !26, !noalias !319
  %i.bne = getelementptr inbounds nuw i8, ptr %.4243.i, i64 8 ; 2 uses
  %niter775.next.3 = add nuw i32 %niter775, 4     ; 2 uses
  %niter775.ncmp.3 = icmp eq i32 %niter775.next.3, %unroll_iter774
  br i1 %niter775.ncmp.3, label %png_do_gamma.exit.loopexit683.unr-lcssa, label %.lr.ph244.i208, !llvm.loop !254

.lr.ph241.i:                                      ; preds = %.lr.ph241.i, %.lr.ph241.i.preheader.new
  %.5240.i = phi ptr [ %i.bfr, %.lr.ph241.i.preheader.new ], [ %i.boi, %.lr.ph241.i ] ; 6 uses
  %niter769 = phi i32 [ 0, %.lr.ph241.i.preheader.new ], [ %niter769.next.1, %.lr.ph241.i ]
  %i.bnf = getelementptr inbounds nuw i8, ptr %.5240.i, i64 1 ; 2 uses
  %i.bng = load i8, ptr %i.bnf, align 1, !tbaa !26, !noalias !319
  %i.bnh = zext i8 %i.bng to i32
  %i.bni = lshr i32 %i.bnh, %i.bfx
  %i.bnj = zext nneg i32 %i.bni to i64
  %i.bnk = getelementptr inbounds nuw [8 x i8], ptr %i.bfv, i64 %i.bnj
  %i.bnl = load ptr, ptr %i.bnk, align 8, !tbaa !316, !noalias !319
  %i.bnm = load i8, ptr %.5240.i, align 1, !tbaa !26, !noalias !319
  %i.bnn = zext i8 %i.bnm to i64
  %i.bno = getelementptr inbounds nuw [2 x i8], ptr %i.bnl, i64 %i.bnn
  %i.bnp = load i16, ptr %i.bno, align 2, !tbaa !27, !noalias !319 ; 2 uses
  %i.bnq = lshr i16 %i.bnp, 8
  %i.bnr = trunc nuw i16 %i.bnq to i8
  store i8 %i.bnr, ptr %.5240.i, align 1, !tbaa !26, !noalias !319
  %i.bns = trunc i16 %i.bnp to i8
  store i8 %i.bns, ptr %i.bnf, align 1, !tbaa !26, !noalias !319
  %i.bnt = getelementptr inbounds nuw i8, ptr %.5240.i, i64 4 ; 2 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %.5240.i, i64 5 ; 2 uses
  %i.bnv = load i8, ptr %i.bnu, align 1, !tbaa !26, !noalias !319
  %i.bnw = zext i8 %i.bnv to i32
  %i.bnx = lshr i32 %i.bnw, %i.bfx
  %i.bny = zext nneg i32 %i.bnx to i64
  %i.bnz = getelementptr inbounds nuw [8 x i8], ptr %i.bfv, i64 %i.bny
  %i.boa = load ptr, ptr %i.bnz, align 8, !tbaa !316, !noalias !319
  %i.bob = load i8, ptr %i.bnt, align 1, !tbaa !26, !noalias !319
  %i.boc = zext i8 %i.bob to i64
  %i.bod = getelementptr inbounds nuw [2 x i8], ptr %i.boa, i64 %i.boc
  %i.boe = load i16, ptr %i.bod, align 2, !tbaa !27, !noalias !319 ; 2 uses
  %i.bof = lshr i16 %i.boe, 8
  %i.bog = trunc nuw i16 %i.bof to i8
  store i8 %i.bog, ptr %i.bnt, align 1, !tbaa !26, !noalias !319
  %i.boh = trunc i16 %i.boe to i8
  store i8 %i.boh, ptr %i.bnu, align 1, !tbaa !26, !noalias !319
  %i.boi = getelementptr inbounds nuw i8, ptr %.5240.i, i64 8 ; 2 uses
  %niter769.next.1 = add nuw i32 %niter769, 2     ; 2 uses
  %niter769.ncmp.1 = icmp eq i32 %niter769.next.1, %unroll_iter768
  br i1 %niter769.ncmp.1, label %png_do_gamma.exit.loopexit684.unr-lcssa, label %.lr.ph241.i, !llvm.loop !255

bb.gq:                                            ; preds = %bb.gm
  %i.boj = icmp eq i8 %i.bga, 2
  %i.bok = icmp ne i32 %i.bfy, 0
  %or.cond257.i = select i1 %i.boj, i1 %i.bok, i1 false
  br i1 %or.cond257.i, label %.lr.ph.i205, label %.loopexit227.i

.lr.ph.i205:                                      ; preds = %bb.gq, %.lr.ph.i205
  %.6229.i = phi ptr [ %i.bqd, %.lr.ph.i205 ], [ %i.bfr, %bb.gq ] ; 3 uses
  %.6205228.i = phi i32 [ %i.bqe, %.lr.ph.i205 ], [ 0, %bb.gq ]
  %i.bol = load i8, ptr %.6229.i, align 1, !tbaa !26, !noalias !319
  %i.bom = zext i8 %i.bol to i32                  ; 5 uses
  %i.bon = and i32 %i.bom, 192                    ; 3 uses
  %i.boo = and i32 %i.bom, 48                     ; 4 uses
  %i.bop = and i32 %i.bom, 12                     ; 3 uses
  %i.boq = and i32 %i.bom, 3
  %i.bor = lshr exact i32 %i.bon, 2
  %i.bos = lshr exact i32 %i.bon, 4
  %i.bot = lshr i32 %i.bom, 6
  %i.bou = or disjoint i32 %i.bot, %i.bos
  %i.bov = or disjoint i32 %i.bou, %i.bor
  %i.bow = or disjoint i32 %i.bov, %i.bon
  %i.box = zext nneg i32 %i.bow to i64
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.box
  %i.boz = load i8, ptr %i.boy, align 1, !tbaa !26, !noalias !319
  %i.bpa = and i8 %i.boz, -64
  %i.bpb = shl nuw nsw i32 %i.boo, 2
  %i.bpc = lshr exact i32 %i.boo, 2
  %i.bpd = or disjoint i32 %i.bpb, %i.bpc
  %i.bpe = lshr exact i32 %i.boo, 4
  %i.bpf = or disjoint i32 %i.bpd, %i.bpe
  %i.bpg = or disjoint i32 %i.bpf, %i.boo
  %i.bph = zext nneg i32 %i.bpg to i64
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bph
  %i.bpj = load i8, ptr %i.bpi, align 1, !tbaa !26, !noalias !319
  %i.bpk = lshr i8 %i.bpj, 2
  %i.bpl = and i8 %i.bpk, 48
  %i.bpm = or disjoint i8 %i.bpl, %i.bpa
  %i.bpn = mul nuw nsw i32 %i.bop, 20
  %i.bpo = lshr exact i32 %i.bop, 2
  %i.bpp = or disjoint i32 %i.bpn, %i.bpo
  %i.bpq = or disjoint i32 %i.bpp, %i.bop
  %i.bpr = zext nneg i32 %i.bpq to i64
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bpr
  %i.bpt = load i8, ptr %i.bps, align 1, !tbaa !26, !noalias !319
  %i.bpu = lshr i8 %i.bpt, 4
  %i.bpv = and i8 %i.bpu, 12
  %i.bpw = or disjoint i8 %i.bpm, %i.bpv
  %i.bpx = mul nuw nsw i32 %i.boq, 85
  %i.bpy = zext nneg i32 %i.bpx to i64
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bpy
  %i.bqa = load i8, ptr %i.bpz, align 1, !tbaa !26, !noalias !319
  %i.bqb = lshr i8 %i.bqa, 6
  %i.bqc = or disjoint i8 %i.bpw, %i.bqb
  store i8 %i.bqc, ptr %.6229.i, align 1, !tbaa !26, !noalias !319
  %i.bqd = getelementptr inbounds nuw i8, ptr %.6229.i, i64 1
  %i.bqe = add nuw i32 %.6205228.i, 4             ; 2 uses
  %i.bqf = icmp ult i32 %i.bqe, %i.bfy
  br i1 %i.bqf, label %.lr.ph.i205, label %.loopexit227.loopexit.i, !llvm.loop !256

.loopexit227.loopexit.i:                          ; preds = %.lr.ph.i205
  %.pre.i206 = load i8, ptr %i.bfz, align 1, !tbaa !75, !noalias !319
  br label %.loopexit227.i

.loopexit227.i:                                   ; preds = %.loopexit227.loopexit.i, %bb.gq
  %i.bqg = phi i8 [ %.pre.i206, %.loopexit227.loopexit.i ], [ %i.bga, %bb.gq ]
  switch i8 %i.bqg, label %png_do_gamma.exit [
    i8 4, label %.preheader220.i
    i8 8, label %.preheader222.i
    i8 16, label %.preheader224.i
  ]

.preheader224.i:                                  ; preds = %.loopexit227.i
  %.not = icmp eq i32 %i.bfy, 0
  br i1 %.not, label %png_do_gamma.exit, label %.lr.ph232.i.preheader

.lr.ph232.i.preheader:                            ; preds = %.preheader224.i
  %xtraiter748 = and i32 %i.bfy, 1
  %i.bqh = icmp eq i32 %i.bfy, 1
  br i1 %i.bqh, label %.lr.ph232.i.epil.preheader, label %.lr.ph232.i.preheader.new

.lr.ph232.i.preheader.new:                        ; preds = %.lr.ph232.i.preheader
  %unroll_iter751 = and i32 %i.bfy, -2
  br label %.lr.ph232.i

.preheader222.i:                                  ; preds = %.loopexit227.i
  %.not386 = icmp eq i32 %i.bfy, 0
  br i1 %.not386, label %png_do_gamma.exit, label %.lr.ph235.i.preheader

.lr.ph235.i.preheader:                            ; preds = %.preheader222.i
  %i.bqi = add i32 %i.bfy, -1
  %xtraiter753 = and i32 %i.bfy, 3                ; 3 uses
  %i.bqj = icmp ult i32 %i.bqi, 3
  br i1 %i.bqj, label %.lr.ph235.i.epil.preheader, label %.lr.ph235.i.preheader.new

.lr.ph235.i.preheader.new:                        ; preds = %.lr.ph235.i.preheader
  %unroll_iter756 = and i32 %i.bfy, -4
  br label %.lr.ph235.i

.preheader220.i:                                  ; preds = %.loopexit227.i
  %.not387 = icmp eq i32 %i.bfy, 0
  br i1 %.not387, label %png_do_gamma.exit, label %.lr.ph238.i.preheader

.lr.ph238.i.preheader:                            ; preds = %.preheader220.i
  %i.bqk = add i32 %i.bfy, -1                     ; 2 uses
  %i.bql = lshr i32 %i.bqk, 1                     ; 2 uses
  %i.bqm = add nuw i32 %i.bql, 1                  ; 2 uses
  %i.bqn = icmp eq i32 %i.bql, 0
  br i1 %i.bqn, label %.lr.ph238.i.epil.preheader, label %.lr.ph238.i.preheader.new

.lr.ph238.i.preheader.new:                        ; preds = %.lr.ph238.i.preheader
  %unroll_iter762 = and i32 %i.bqm, -2
  br label %.lr.ph238.i

.lr.ph238.i:                                      ; preds = %.lr.ph238.i, %.lr.ph238.i.preheader.new
  %.7237.i = phi ptr [ %i.bfr, %.lr.ph238.i.preheader.new ], [ %i.brv, %.lr.ph238.i ] ; 4 uses
  %niter763 = phi i32 [ 0, %.lr.ph238.i.preheader.new ], [ %niter763.next.1, %.lr.ph238.i ]
  %i.bqo = load i8, ptr %.7237.i, align 1, !tbaa !26, !noalias !319
  %i.bqp = zext i8 %i.bqo to i32                  ; 3 uses
  %i.bqq = and i32 %i.bqp, 240
  %i.bqr = and i32 %i.bqp, 15
  %i.bqs = lshr i32 %i.bqp, 4
  %i.bqt = or disjoint i32 %i.bqq, %i.bqs
  %i.bqu = zext nneg i32 %i.bqt to i64
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bqu
  %i.bqw = load i8, ptr %i.bqv, align 1, !tbaa !26, !noalias !319
  %i.bqx = and i8 %i.bqw, -16
  %i.bqy = mul nuw nsw i32 %i.bqr, 17
  %i.bqz = zext nneg i32 %i.bqy to i64
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bqz
  %i.brb = load i8, ptr %i.bra, align 1, !tbaa !26, !noalias !319
  %i.brc = lshr i8 %i.brb, 4
  %i.brd = or disjoint i8 %i.brc, %i.bqx
  store i8 %i.brd, ptr %.7237.i, align 1, !tbaa !26, !noalias !319
  %i.bre = getelementptr inbounds nuw i8, ptr %.7237.i, i64 1 ; 2 uses
  %i.brf = load i8, ptr %i.bre, align 1, !tbaa !26, !noalias !319
  %i.brg = zext i8 %i.brf to i32                  ; 3 uses
  %i.brh = and i32 %i.brg, 240
  %i.bri = and i32 %i.brg, 15
  %i.brj = lshr i32 %i.brg, 4
  %i.brk = or disjoint i32 %i.brh, %i.brj
  %i.brl = zext nneg i32 %i.brk to i64
  %i.brm = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.brl
  %i.brn = load i8, ptr %i.brm, align 1, !tbaa !26, !noalias !319
  %i.bro = and i8 %i.brn, -16
  %i.brp = mul nuw nsw i32 %i.bri, 17
  %i.brq = zext nneg i32 %i.brp to i64
  %i.brr = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.brq
  %i.brs = load i8, ptr %i.brr, align 1, !tbaa !26, !noalias !319
  %i.brt = lshr i8 %i.brs, 4
  %i.bru = or disjoint i8 %i.brt, %i.bro
  store i8 %i.bru, ptr %i.bre, align 1, !tbaa !26, !noalias !319
  %i.brv = getelementptr inbounds nuw i8, ptr %.7237.i, i64 2 ; 2 uses
  %niter763.next.1 = add nuw i32 %niter763, 2     ; 2 uses
  %niter763.ncmp.1.not = icmp eq i32 %niter763.next.1, %unroll_iter762
  br i1 %niter763.ncmp.1.not, label %png_do_gamma.exit.loopexit685.unr-lcssa, label %.lr.ph238.i, !llvm.loop !257

.lr.ph235.i:                                      ; preds = %.lr.ph235.i, %.lr.ph235.i.preheader.new
  %.8234.i = phi ptr [ %i.bfr, %.lr.ph235.i.preheader.new ], [ %i.bsp, %.lr.ph235.i ] ; 6 uses
  %niter757 = phi i32 [ 0, %.lr.ph235.i.preheader.new ], [ %niter757.next.3, %.lr.ph235.i ]
  %i.brw = load i8, ptr %.8234.i, align 1, !tbaa !26, !noalias !319
  %i.brx = zext i8 %i.brw to i64
  %i.bry = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.brx
  %i.brz = load i8, ptr %i.bry, align 1, !tbaa !26, !noalias !319
  store i8 %i.brz, ptr %.8234.i, align 1, !tbaa !26, !noalias !319
  %i.bsa = getelementptr inbounds nuw i8, ptr %.8234.i, i64 1 ; 2 uses
  %i.bsb = load i8, ptr %i.bsa, align 1, !tbaa !26, !noalias !319
  %i.bsc = zext i8 %i.bsb to i64
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bsc
  %i.bse = load i8, ptr %i.bsd, align 1, !tbaa !26, !noalias !319
  store i8 %i.bse, ptr %i.bsa, align 1, !tbaa !26, !noalias !319
  %i.bsf = getelementptr inbounds nuw i8, ptr %.8234.i, i64 2 ; 2 uses
  %i.bsg = load i8, ptr %i.bsf, align 1, !tbaa !26, !noalias !319
  %i.bsh = zext i8 %i.bsg to i64
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bsh
  %i.bsj = load i8, ptr %i.bsi, align 1, !tbaa !26, !noalias !319
  store i8 %i.bsj, ptr %i.bsf, align 1, !tbaa !26, !noalias !319
  %i.bsk = getelementptr inbounds nuw i8, ptr %.8234.i, i64 3 ; 2 uses
  %i.bsl = load i8, ptr %i.bsk, align 1, !tbaa !26, !noalias !319
  %i.bsm = zext i8 %i.bsl to i64
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bsm
  %i.bso = load i8, ptr %i.bsn, align 1, !tbaa !26, !noalias !319
  store i8 %i.bso, ptr %i.bsk, align 1, !tbaa !26, !noalias !319
  %i.bsp = getelementptr inbounds nuw i8, ptr %.8234.i, i64 4 ; 2 uses
  %niter757.next.3 = add nuw i32 %niter757, 4     ; 2 uses
  %niter757.ncmp.3 = icmp eq i32 %niter757.next.3, %unroll_iter756
  br i1 %niter757.ncmp.3, label %png_do_gamma.exit.loopexit686.unr-lcssa, label %.lr.ph235.i, !llvm.loop !258

.lr.ph232.i:                                      ; preds = %.lr.ph232.i, %.lr.ph232.i.preheader.new
  %.9231.i = phi ptr [ %i.bfr, %.lr.ph232.i.preheader.new ], [ %i.btt, %.lr.ph232.i ] ; 6 uses
  %niter752 = phi i32 [ 0, %.lr.ph232.i.preheader.new ], [ %niter752.next.1, %.lr.ph232.i ]
  %i.bsq = getelementptr inbounds nuw i8, ptr %.9231.i, i64 1 ; 2 uses
  %i.bsr = load i8, ptr %i.bsq, align 1, !tbaa !26, !noalias !319
  %i.bss = zext i8 %i.bsr to i32
  %i.bst = lshr i32 %i.bss, %i.bfx
  %i.bsu = zext nneg i32 %i.bst to i64
  %i.bsv = getelementptr inbounds nuw [8 x i8], ptr %i.bfv, i64 %i.bsu
  %i.bsw = load ptr, ptr %i.bsv, align 8, !tbaa !316, !noalias !319
  %i.bsx = load i8, ptr %.9231.i, align 1, !tbaa !26, !noalias !319
  %i.bsy = zext i8 %i.bsx to i64
  %i.bsz = getelementptr inbounds nuw [2 x i8], ptr %i.bsw, i64 %i.bsy
  %i.bta = load i16, ptr %i.bsz, align 2, !tbaa !27, !noalias !319 ; 2 uses
  %i.btb = lshr i16 %i.bta, 8
  %i.btc = trunc nuw i16 %i.btb to i8
  store i8 %i.btc, ptr %.9231.i, align 1, !tbaa !26, !noalias !319
  %i.btd = trunc i16 %i.bta to i8
  store i8 %i.btd, ptr %i.bsq, align 1, !tbaa !26, !noalias !319
  %i.bte = getelementptr inbounds nuw i8, ptr %.9231.i, i64 2 ; 2 uses
  %i.btf = getelementptr inbounds nuw i8, ptr %.9231.i, i64 3 ; 2 uses
  %i.btg = load i8, ptr %i.btf, align 1, !tbaa !26, !noalias !319
  %i.bth = zext i8 %i.btg to i32
  %i.bti = lshr i32 %i.bth, %i.bfx
  %i.btj = zext nneg i32 %i.bti to i64
  %i.btk = getelementptr inbounds nuw [8 x i8], ptr %i.bfv, i64 %i.btj
  %i.btl = load ptr, ptr %i.btk, align 8, !tbaa !316, !noalias !319
  %i.btm = load i8, ptr %i.bte, align 1, !tbaa !26, !noalias !319
  %i.btn = zext i8 %i.btm to i64
  %i.bto = getelementptr inbounds nuw [2 x i8], ptr %i.btl, i64 %i.btn
  %i.btp = load i16, ptr %i.bto, align 2, !tbaa !27, !noalias !319 ; 2 uses
  %i.btq = lshr i16 %i.btp, 8
  %i.btr = trunc nuw i16 %i.btq to i8
  store i8 %i.btr, ptr %i.bte, align 1, !tbaa !26, !noalias !319
  %i.bts = trunc i16 %i.btp to i8
  store i8 %i.bts, ptr %i.btf, align 1, !tbaa !26, !noalias !319
  %i.btt = getelementptr inbounds nuw i8, ptr %.9231.i, i64 4 ; 2 uses
  %niter752.next.1 = add nuw i32 %niter752, 2     ; 2 uses
  %niter752.ncmp.1 = icmp eq i32 %niter752.next.1, %unroll_iter751
  br i1 %niter752.ncmp.1, label %png_do_gamma.exit.loopexit687.unr-lcssa, label %.lr.ph232.i, !llvm.loop !259

png_do_gamma.exit.loopexit.unr-lcssa:             ; preds = %.lr.ph256.i211
  %lcmp.mod784.not = icmp eq i32 %xtraiter782, 0
  br i1 %lcmp.mod784.not, label %png_do_gamma.exit, label %.lr.ph256.i211.epil.preheader

.lr.ph256.i211.epil.preheader:                    ; preds = %png_do_gamma.exit.loopexit.unr-lcssa, %.lr.ph256.i211.preheader
  %.0255.i.epil.init = phi ptr [ %i.bfr, %.lr.ph256.i211.preheader ], [ %i.bhm, %png_do_gamma.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod785 = trunc i32 %i.bfy to i1
  tail call void @llvm.assume(i1 %lcmp.mod785)
  %i.btu = load i8, ptr %.0255.i.epil.init, align 1, !tbaa !26, !noalias !319
  %i.btv = zext i8 %i.btu to i64
  %i.btw = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.btv
  %i.btx = load i8, ptr %i.btw, align 1, !tbaa !26, !noalias !319
  store i8 %i.btx, ptr %.0255.i.epil.init, align 1, !tbaa !26, !noalias !319
  %i.bty = getelementptr inbounds nuw i8, ptr %.0255.i.epil.init, i64 1 ; 2 uses
  %i.btz = load i8, ptr %i.bty, align 1, !tbaa !26, !noalias !319
  %i.bua = zext i8 %i.btz to i64
  %i.bub = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bua
  %i.buc = load i8, ptr %i.bub, align 1, !tbaa !26, !noalias !319
  store i8 %i.buc, ptr %i.bty, align 1, !tbaa !26, !noalias !319
  %i.bud = getelementptr inbounds nuw i8, ptr %.0255.i.epil.init, i64 2 ; 2 uses
  %i.bue = load i8, ptr %i.bud, align 1, !tbaa !26, !noalias !319
  %i.buf = zext i8 %i.bue to i64
  %i.bug = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.buf
  %i.buh = load i8, ptr %i.bug, align 1, !tbaa !26, !noalias !319
  store i8 %i.buh, ptr %i.bud, align 1, !tbaa !26, !noalias !319
  br label %png_do_gamma.exit

png_do_gamma.exit.loopexit681.unr-lcssa:          ; preds = %.lr.ph250.i209
  %lcmp.mod778.not = icmp eq i32 %xtraiter776, 0
  br i1 %lcmp.mod778.not, label %png_do_gamma.exit, label %.lr.ph250.i209.epil.preheader

.lr.ph250.i209.epil.preheader:                    ; preds = %png_do_gamma.exit.loopexit681.unr-lcssa, %.lr.ph250.i209.preheader
  %.2249.i.epil.init = phi ptr [ %i.bfr, %.lr.ph250.i209.preheader ], [ %i.bkm, %png_do_gamma.exit.loopexit681.unr-lcssa ] ; 4 uses
  %lcmp.mod779 = trunc i32 %i.bfy to i1
  tail call void @llvm.assume(i1 %lcmp.mod779)
  %i.bui = load i8, ptr %.2249.i.epil.init, align 1, !tbaa !26, !noalias !319
  %i.buj = zext i8 %i.bui to i64
  %i.buk = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.buj
  %i.bul = load i8, ptr %i.buk, align 1, !tbaa !26, !noalias !319
  store i8 %i.bul, ptr %.2249.i.epil.init, align 1, !tbaa !26, !noalias !319
  %i.bum = getelementptr inbounds nuw i8, ptr %.2249.i.epil.init, i64 1 ; 2 uses
  %i.bun = load i8, ptr %i.bum, align 1, !tbaa !26, !noalias !319
  %i.buo = zext i8 %i.bun to i64
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.buo
  %i.buq = load i8, ptr %i.bup, align 1, !tbaa !26, !noalias !319
  store i8 %i.buq, ptr %i.bum, align 1, !tbaa !26, !noalias !319
  %i.bur = getelementptr inbounds nuw i8, ptr %.2249.i.epil.init, i64 2 ; 2 uses
  %i.bus = load i8, ptr %i.bur, align 1, !tbaa !26, !noalias !319
  %i.but = zext i8 %i.bus to i64
  %i.buu = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.but
  %i.buv = load i8, ptr %i.buu, align 1, !tbaa !26, !noalias !319
  store i8 %i.buv, ptr %i.bur, align 1, !tbaa !26, !noalias !319
  br label %png_do_gamma.exit

png_do_gamma.exit.loopexit683.unr-lcssa:          ; preds = %.lr.ph244.i208
  %lcmp.mod772.not = icmp eq i32 %xtraiter770, 0
  br i1 %lcmp.mod772.not, label %png_do_gamma.exit, label %.lr.ph244.i208.epil.preheader

.lr.ph244.i208.epil.preheader:                    ; preds = %png_do_gamma.exit.loopexit683.unr-lcssa, %.lr.ph244.i208.preheader
  %.4243.i.epil.init = phi ptr [ %i.bfr, %.lr.ph244.i208.preheader ], [ %i.bne, %png_do_gamma.exit.loopexit683.unr-lcssa ]
  %lcmp.mod773 = icmp ne i32 %xtraiter770, 0
  tail call void @llvm.assume(i1 %lcmp.mod773)
  br label %.lr.ph244.i208.epil

.lr.ph244.i208.epil:                              ; preds = %.lr.ph244.i208.epil, %.lr.ph244.i208.epil.preheader
  %.4243.i.epil = phi ptr [ %i.bva, %.lr.ph244.i208.epil ], [ %.4243.i.epil.init, %.lr.ph244.i208.epil.preheader ] ; 3 uses
  %epil.iter771 = phi i32 [ %epil.iter771.next, %.lr.ph244.i208.epil ], [ 0, %.lr.ph244.i208.epil.preheader ]
  %i.buw = load i8, ptr %.4243.i.epil, align 1, !tbaa !26, !noalias !319
  %i.bux = zext i8 %i.buw to i64
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bux
  %i.buz = load i8, ptr %i.buy, align 1, !tbaa !26, !noalias !319
  store i8 %i.buz, ptr %.4243.i.epil, align 1, !tbaa !26, !noalias !319
  %i.bva = getelementptr inbounds nuw i8, ptr %.4243.i.epil, i64 2
end_hunk_0
begin_hunk_1_@png_do_read_transformations:bb.a
  %i.cuc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cub
  %i.cud = load i32, ptr %i.cuc, align 4, !tbaa !32
  %i.cue = lshr i32 %i.cua, %i.cud
  %i.cuf = add nsw i32 %.081107.i, 1              ; 2 uses
  %.not96.i = icmp slt i32 %i.cuf, %.1.i248
  %spec.store.select.i = select i1 %.not96.i, i32 %i.cuf, i32 0
  %i.cug = trunc nuw i32 %i.cue to i8
  %i.cuh = getelementptr inbounds nuw i8, ptr %.082106.i, i64 1 ; 2 uses
  store i8 %i.cug, ptr %.082106.i, align 1, !tbaa !26
  %i.cui = icmp ult ptr %i.cuh, %i.cty
  br i1 %i.cui, label %.lr.ph108.i, label %.sink.split.i251, !llvm.loop !286

bb.ip:                                            ; preds = %.split.i252
  %i.cuj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cuk = load i64, ptr %i.cuj, align 8, !tbaa !77 ; 2 uses
  %i.cul = getelementptr inbounds nuw i8, ptr %i.cqa, i64 %i.cuk
  %.not113.i = icmp eq i64 %i.cuk, 0
  br i1 %.not113.i, label %.sink.split.i251, label %.lr.ph.i253

.lr.ph.i253:                                      ; preds = %bb.ip, %.lr.ph.i253
  %.0105.i = phi i32 [ %spec.store.select2.i, %.lr.ph.i253 ], [ 0, %bb.ip ] ; 2 uses
  %.079104.i = phi ptr [ %i.cvb, %.lr.ph.i253 ], [ %i.cqa, %bb.ip ] ; 4 uses
  %i.cum = load i8, ptr %.079104.i, align 1, !tbaa !26
  %i.cun = zext i8 %i.cum to i32
  %i.cuo = shl nuw nsw i32 %i.cun, 8
  %i.cup = getelementptr inbounds nuw i8, ptr %.079104.i, i64 1 ; 2 uses
  %i.cuq = load i8, ptr %i.cup, align 1, !tbaa !26
  %i.cur = zext i8 %i.cuq to i32
  %i.cus = or disjoint i32 %i.cuo, %i.cur
  %i.cut = sext i32 %.0105.i to i64
  %i.cuu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cut
  %i.cuv = load i32, ptr %i.cuu, align 4, !tbaa !32
  %i.cuw = lshr i32 %i.cus, %i.cuv                ; 2 uses
  %i.cux = add nsw i32 %.0105.i, 1                ; 2 uses
  %.not95.i = icmp slt i32 %i.cux, %.1.i248
  %spec.store.select2.i = select i1 %.not95.i, i32 %i.cux, i32 0
  %i.cuy = lshr i32 %i.cuw, 8
  %i.cuz = trunc nuw i32 %i.cuy to i8
  store i8 %i.cuz, ptr %.079104.i, align 1, !tbaa !26
  %i.cva = trunc i32 %i.cuw to i8
  %i.cvb = getelementptr inbounds nuw i8, ptr %.079104.i, i64 2 ; 2 uses
  store i8 %i.cva, ptr %i.cup, align 1, !tbaa !26
  %i.cvc = icmp ult ptr %i.cvb, %i.cul
  br i1 %i.cvc, label %.lr.ph.i253, label %.sink.split.i251, !llvm.loop !287

.sink.split.i251:                                 ; preds = %.lr.ph.i253, %.lr.ph108.i, %.lr.ph110.i, %.lr.ph112.i, %middle.block, %vec.epilog.middle.block, %middle.block648, %vec.epilog.middle.block662, %bb.ip, %bb.io, %bb.in, %bb.im, %.split.i252, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.pre391 = load i32, ptr %i.h, align 4, !tbaa !25
  br label %png_do_unshift.exit

png_do_unshift.exit:                              ; preds = %.sink.split.i251, %bb.ib, %png_do_read_invert_alpha.exit
  %i.cvd = phi i32 [ %.pre391, %.sink.split.i251 ], [ %i.cpw, %bb.ib ], [ %i.cpw, %png_do_read_invert_alpha.exit ]
  %i.cve = and i32 %i.cvd, 4
  %.not164 = icmp eq i32 %i.cve, 0
  br i1 %.not164, label %png_do_unpack.exit, label %bb.iq

bb.iq:                                            ; preds = %png_do_unshift.exit
  %i.cvf = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cvf, i64 1 ; 6 uses
  %i.cvh = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.cvi = load i8, ptr %i.cvh, align 1, !tbaa !75 ; 2 uses
  %i.cvj = icmp ult i8 %i.cvi, 8
  br i1 %i.cvj, label %bb.ir, label %png_do_unpack.exit

bb.ir:                                            ; preds = %bb.iq
  %i.cvk = load i32, ptr %1, align 8, !tbaa !74   ; 19 uses
  %.pre.i254 = zext i32 %i.cvk to i64             ; 10 uses
  switch i8 %i.cvi, label %.loopexit.i260 [
    i8 1, label %bb.is
    i8 2, label %bb.it
    i8 4, label %bb.iu
  ]

bb.is:                                            ; preds = %bb.ir
  %.not88.i = icmp eq i32 %i.cvk, 0
  br i1 %.not88.i, label %.loopexit.i260, label %.lr.ph85.preheader.i

.lr.ph85.preheader.i:                             ; preds = %bb.is
  %i.cvl = sub i32 0, %i.cvk
  %i.cvm = and i32 %i.cvl, 7                      ; 2 uses
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %.pre.i254 ; 2 uses
  %i.cvo = add i32 %i.cvk, -1                     ; 2 uses
  %i.cvp = lshr i32 %i.cvo, 3
  %i.cvq = zext nneg i32 %i.cvp to i64
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %i.cvq ; 2 uses
  %xtraiter846 = and i32 %i.cvk, 1
  %i.cvs = icmp eq i32 %i.cvo, 0
  br i1 %i.cvs, label %.lr.ph85.i.epil.preheader, label %.lr.ph85.preheader.i.new

.lr.ph85.preheader.i.new:                         ; preds = %.lr.ph85.preheader.i
  %unroll_iter850 = and i32 %i.cvk, -2
  br label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %.lr.ph85.i, %.lr.ph85.preheader.i.new
  %.06084.i = phi i32 [ %i.cvm, %.lr.ph85.preheader.i.new ], [ %.161.i.1, %.lr.ph85.i ] ; 3 uses
  %.pn6983.i = phi ptr [ %i.cvn, %.lr.ph85.preheader.i.new ], [ %.062.i.1, %.lr.ph85.i ] ; 2 uses
  %.06382.i = phi ptr [ %i.cvr, %.lr.ph85.preheader.i.new ], [ %.164.i.1, %.lr.ph85.i ] ; 2 uses
  %niter851 = phi i32 [ 0, %.lr.ph85.preheader.i.new ], [ %niter851.next.1, %.lr.ph85.i ]
  %.062.i = getelementptr inbounds i8, ptr %.pn6983.i, i64 -1
  %i.cvt = load i8, ptr %.06382.i, align 1, !tbaa !26
  %i.cvu = zext i8 %i.cvt to i32
  %i.cvv = lshr i32 %i.cvu, %.06084.i
  %i.cvw = trunc nuw i32 %i.cvv to i8
  %i.cvx = and i8 %i.cvw, 1
  store i8 %i.cvx, ptr %.062.i, align 1, !tbaa !26
  %i.cvy = icmp eq i32 %.06084.i, 7               ; 2 uses
  %i.cvz = add nuw nsw i32 %.06084.i, 1
  %.164.idx.i = sext i1 %i.cvy to i64
  %.164.i = getelementptr inbounds i8, ptr %.06382.i, i64 %.164.idx.i ; 2 uses
  %.161.i = select i1 %i.cvy, i32 0, i32 %i.cvz   ; 3 uses
  %.062.i.1 = getelementptr inbounds i8, ptr %.pn6983.i, i64 -2 ; 3 uses
  %i.cwa = load i8, ptr %.164.i, align 1, !tbaa !26
  %i.cwb = zext i8 %i.cwa to i32
  %i.cwc = lshr i32 %i.cwb, %.161.i
  %i.cwd = trunc nuw i32 %i.cwc to i8
  %i.cwe = and i8 %i.cwd, 1
  store i8 %i.cwe, ptr %.062.i.1, align 1, !tbaa !26
  %i.cwf = icmp eq i32 %.161.i, 7                 ; 2 uses
  %i.cwg = add nuw nsw i32 %.161.i, 1
  %.164.idx.i.1 = sext i1 %i.cwf to i64
  %.164.i.1 = getelementptr inbounds i8, ptr %.164.i, i64 %.164.idx.i.1 ; 2 uses
  %.161.i.1 = select i1 %i.cwf, i32 0, i32 %i.cwg ; 2 uses
  %niter851.next.1 = add nuw i32 %niter851, 2     ; 2 uses
  %niter851.ncmp.1 = icmp eq i32 %niter851.next.1, %unroll_iter850
  br i1 %niter851.ncmp.1, label %.loopexit.i260.loopexit.unr-lcssa, label %.lr.ph85.i, !llvm.loop !288

bb.it:                                            ; preds = %bb.ir
  %.not87.i = icmp eq i32 %i.cvk, 0
  br i1 %.not87.i, label %.loopexit.i260, label %.lr.ph80.preheader.i

.lr.ph80.preheader.i:                             ; preds = %bb.it
  %.neg.i262 = mul i32 %i.cvk, 6
  %i.cwh = and i32 %.neg.i262, 6                  ; 2 uses
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %.pre.i254 ; 2 uses
  %i.cwj = add i32 %i.cvk, -1                     ; 2 uses
  %i.cwk = lshr i32 %i.cwj, 2
  %i.cwl = zext nneg i32 %i.cwk to i64
  %i.cwm = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %i.cwl ; 2 uses
  %xtraiter840 = and i32 %i.cvk, 1
  %i.cwn = icmp eq i32 %i.cwj, 0
  br i1 %i.cwn, label %.lr.ph80.i.epil.preheader, label %.lr.ph80.preheader.i.new

.lr.ph80.preheader.i.new:                         ; preds = %.lr.ph80.preheader.i
  %unroll_iter844 = and i32 %i.cvk, -2
  br label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %.lr.ph80.i, %.lr.ph80.preheader.i.new
  %.05579.i = phi i32 [ %i.cwh, %.lr.ph80.preheader.i.new ], [ %.156.i.1, %.lr.ph80.i ] ; 3 uses
  %.pn6878.i = phi ptr [ %i.cwi, %.lr.ph80.preheader.i.new ], [ %.057.i.1, %.lr.ph80.i ] ; 2 uses
  %.05877.i = phi ptr [ %i.cwm, %.lr.ph80.preheader.i.new ], [ %.159.i.1, %.lr.ph80.i ] ; 2 uses
  %niter845 = phi i32 [ 0, %.lr.ph80.preheader.i.new ], [ %niter845.next.1, %.lr.ph80.i ]
  %.057.i = getelementptr inbounds i8, ptr %.pn6878.i, i64 -1
  %i.cwo = load i8, ptr %.05877.i, align 1, !tbaa !26
  %i.cwp = zext i8 %i.cwo to i32
  %i.cwq = lshr i32 %i.cwp, %.05579.i
  %i.cwr = trunc nuw i32 %i.cwq to i8
  %i.cws = and i8 %i.cwr, 3
  store i8 %i.cws, ptr %.057.i, align 1, !tbaa !26
  %i.cwt = icmp eq i32 %.05579.i, 6               ; 2 uses
  %i.cwu = add i32 %.05579.i, 2
  %.159.idx.i = sext i1 %i.cwt to i64
  %.159.i = getelementptr inbounds i8, ptr %.05877.i, i64 %.159.idx.i ; 2 uses
  %.156.i = select i1 %i.cwt, i32 0, i32 %i.cwu   ; 3 uses
  %.057.i.1 = getelementptr inbounds i8, ptr %.pn6878.i, i64 -2 ; 3 uses
  %i.cwv = load i8, ptr %.159.i, align 1, !tbaa !26
  %i.cww = zext i8 %i.cwv to i32
  %i.cwx = lshr i32 %i.cww, %.156.i
  %i.cwy = trunc nuw i32 %i.cwx to i8
  %i.cwz = and i8 %i.cwy, 3
  store i8 %i.cwz, ptr %.057.i.1, align 1, !tbaa !26
  %i.cxa = icmp eq i32 %.156.i, 6                 ; 2 uses
  %i.cxb = add i32 %.156.i, 2
  %.159.idx.i.1 = sext i1 %i.cxa to i64
  %.159.i.1 = getelementptr inbounds i8, ptr %.159.i, i64 %.159.idx.i.1 ; 2 uses
  %.156.i.1 = select i1 %i.cxa, i32 0, i32 %i.cxb ; 2 uses
  %niter845.next.1 = add nuw i32 %niter845, 2     ; 2 uses
  %niter845.ncmp.1 = icmp eq i32 %niter845.next.1, %unroll_iter844
  br i1 %niter845.ncmp.1, label %.loopexit.i260.loopexit671.unr-lcssa, label %.lr.ph80.i, !llvm.loop !289

bb.iu:                                            ; preds = %bb.ir
  %.not86.i = icmp eq i32 %i.cvk, 0
  br i1 %.not86.i, label %.loopexit.i260, label %.lr.ph.preheader.i255

.lr.ph.preheader.i255:                            ; preds = %bb.iu
  %i.cxc = shl i32 %i.cvk, 2
  %i.cxd = and i32 %i.cxc, 4                      ; 2 uses
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %.pre.i254 ; 2 uses
  %i.cxf = add i32 %i.cvk, -1                     ; 2 uses
  %i.cxg = lshr i32 %i.cxf, 1
  %i.cxh = zext nneg i32 %i.cxg to i64
  %i.cxi = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %i.cxh ; 2 uses
  %xtraiter834 = and i32 %i.cvk, 1
  %i.cxj = icmp eq i32 %i.cxf, 0
  br i1 %i.cxj, label %.lr.ph.i256.epil.preheader, label %.lr.ph.preheader.i255.new

.lr.ph.preheader.i255.new:                        ; preds = %.lr.ph.preheader.i255
  %unroll_iter838 = and i32 %i.cvk, -2
  br label %.lr.ph.i256

.lr.ph.i256:                                      ; preds = %.lr.ph.i256, %.lr.ph.preheader.i255.new
  %.075.i = phi i32 [ %i.cxd, %.lr.ph.preheader.i255.new ], [ %.1.i258.1, %.lr.ph.i256 ] ; 3 uses
  %.pn74.i = phi ptr [ %i.cxe, %.lr.ph.preheader.i255.new ], [ %.052.i.1, %.lr.ph.i256 ] ; 2 uses
  %.05373.i = phi ptr [ %i.cxi, %.lr.ph.preheader.i255.new ], [ %.154.i.1, %.lr.ph.i256 ] ; 2 uses
  %niter839 = phi i32 [ 0, %.lr.ph.preheader.i255.new ], [ %niter839.next.1, %.lr.ph.i256 ]
  %.052.i = getelementptr inbounds i8, ptr %.pn74.i, i64 -1
  %i.cxk = load i8, ptr %.05373.i, align 1, !tbaa !26
  %i.cxl = zext i8 %i.cxk to i32
  %i.cxm = lshr i32 %i.cxl, %.075.i
  %i.cxn = trunc nuw i32 %i.cxm to i8
  %i.cxo = and i8 %i.cxn, 15
  store i8 %i.cxo, ptr %.052.i, align 1, !tbaa !26
  %.not.i257 = icmp ne i32 %.075.i, 0             ; 2 uses
  %.154.idx.i = sext i1 %.not.i257 to i64
  %.154.i = getelementptr inbounds i8, ptr %.05373.i, i64 %.154.idx.i ; 2 uses
  %.1.i258 = select i1 %.not.i257, i32 0, i32 4
  %.052.i.1 = getelementptr inbounds i8, ptr %.pn74.i, i64 -2 ; 3 uses
  %i.cxp = load i8, ptr %.154.i, align 1, !tbaa !26
  %i.cxq = zext i8 %i.cxp to i32
  %i.cxr = lshr i32 %i.cxq, %.1.i258
  %i.cxs = trunc nuw i32 %i.cxr to i8
  %i.cxt = and i8 %i.cxs, 15
  store i8 %i.cxt, ptr %.052.i.1, align 1, !tbaa !26
  %not..not.i258 = icmp eq i32 %.075.i, 0         ; 2 uses
  %.154.idx.i.1 = sext i1 %not..not.i258 to i64
  %.154.i.1 = getelementptr inbounds i8, ptr %.154.i, i64 %.154.idx.i.1 ; 2 uses
  %.1.i258.1 = select i1 %not..not.i258, i32 0, i32 4 ; 2 uses
  %niter839.next.1 = add nuw i32 %niter839, 2     ; 2 uses
  %niter839.ncmp.1 = icmp eq i32 %niter839.next.1, %unroll_iter838
  br i1 %niter839.ncmp.1, label %.loopexit.i260.loopexit672.unr-lcssa, label %.lr.ph.i256, !llvm.loop !290

.loopexit.i260.loopexit.unr-lcssa:                ; preds = %.lr.ph85.i
  %lcmp.mod848.not = icmp eq i32 %xtraiter846, 0
  br i1 %lcmp.mod848.not, label %.loopexit.i260, label %.lr.ph85.i.epil.preheader

.lr.ph85.i.epil.preheader:                        ; preds = %.loopexit.i260.loopexit.unr-lcssa, %.lr.ph85.preheader.i
  %.06084.i.epil.init = phi i32 [ %i.cvm, %.lr.ph85.preheader.i ], [ %.161.i.1, %.loopexit.i260.loopexit.unr-lcssa ]
  %.pn6983.i.epil.init = phi ptr [ %i.cvn, %.lr.ph85.preheader.i ], [ %.062.i.1, %.loopexit.i260.loopexit.unr-lcssa ]
  %.06382.i.epil.init = phi ptr [ %i.cvr, %.lr.ph85.preheader.i ], [ %.164.i.1, %.loopexit.i260.loopexit.unr-lcssa ]
  %lcmp.mod849 = trunc i32 %i.cvk to i1
  tail call void @llvm.assume(i1 %lcmp.mod849)
  %.062.i.epil = getelementptr inbounds i8, ptr %.pn6983.i.epil.init, i64 -1
  %i.cxu = load i8, ptr %.06382.i.epil.init, align 1, !tbaa !26
  %i.cxv = zext i8 %i.cxu to i32
  %i.cxw = lshr i32 %i.cxv, %.06084.i.epil.init
  %i.cxx = trunc nuw i32 %i.cxw to i8
  %i.cxy = and i8 %i.cxx, 1
  store i8 %i.cxy, ptr %.062.i.epil, align 1, !tbaa !26
  br label %.loopexit.i260

.loopexit.i260.loopexit671.unr-lcssa:             ; preds = %.lr.ph80.i
  %lcmp.mod842.not = icmp eq i32 %xtraiter840, 0
  br i1 %lcmp.mod842.not, label %.loopexit.i260, label %.lr.ph80.i.epil.preheader

.lr.ph80.i.epil.preheader:                        ; preds = %.loopexit.i260.loopexit671.unr-lcssa, %.lr.ph80.preheader.i
  %.05579.i.epil.init = phi i32 [ %i.cwh, %.lr.ph80.preheader.i ], [ %.156.i.1, %.loopexit.i260.loopexit671.unr-lcssa ]
  %.pn6878.i.epil.init = phi ptr [ %i.cwi, %.lr.ph80.preheader.i ], [ %.057.i.1, %.loopexit.i260.loopexit671.unr-lcssa ]
  %.05877.i.epil.init = phi ptr [ %i.cwm, %.lr.ph80.preheader.i ], [ %.159.i.1, %.loopexit.i260.loopexit671.unr-lcssa ]
  %lcmp.mod843 = trunc i32 %i.cvk to i1
  tail call void @llvm.assume(i1 %lcmp.mod843)
  %.057.i.epil = getelementptr inbounds i8, ptr %.pn6878.i.epil.init, i64 -1
  %i.cxz = load i8, ptr %.05877.i.epil.init, align 1, !tbaa !26
  %i.cya = zext i8 %i.cxz to i32
  %i.cyb = lshr i32 %i.cya, %.05579.i.epil.init
  %i.cyc = trunc nuw i32 %i.cyb to i8
  %i.cyd = and i8 %i.cyc, 3
  store i8 %i.cyd, ptr %.057.i.epil, align 1, !tbaa !26
  br label %.loopexit.i260

.loopexit.i260.loopexit672.unr-lcssa:             ; preds = %.lr.ph.i256
  %lcmp.mod836.not = icmp eq i32 %xtraiter834, 0
  br i1 %lcmp.mod836.not, label %.loopexit.i260, label %.lr.ph.i256.epil.preheader

.lr.ph.i256.epil.preheader:                       ; preds = %.loopexit.i260.loopexit672.unr-lcssa, %.lr.ph.preheader.i255
  %.075.i.epil.init = phi i32 [ %i.cxd, %.lr.ph.preheader.i255 ], [ %.1.i258.1, %.loopexit.i260.loopexit672.unr-lcssa ]
  %.pn74.i.epil.init = phi ptr [ %i.cxe, %.lr.ph.preheader.i255 ], [ %.052.i.1, %.loopexit.i260.loopexit672.unr-lcssa ]
  %.05373.i.epil.init = phi ptr [ %i.cxi, %.lr.ph.preheader.i255 ], [ %.154.i.1, %.loopexit.i260.loopexit672.unr-lcssa ]
  %lcmp.mod837 = trunc i32 %i.cvk to i1
  tail call void @llvm.assume(i1 %lcmp.mod837)
  %.052.i.epil = getelementptr inbounds i8, ptr %.pn74.i.epil.init, i64 -1
  %i.cye = load i8, ptr %.05373.i.epil.init, align 1, !tbaa !26
  %i.cyf = zext i8 %i.cye to i32
  %i.cyg = lshr i32 %i.cyf, %.075.i.epil.init
  %i.cyh = trunc nuw i32 %i.cyg to i8
  %i.cyi = and i8 %i.cyh, 15
  store i8 %i.cyi, ptr %.052.i.epil, align 1, !tbaa !26
  br label %.loopexit.i260

.loopexit.i260:                                   ; preds = %.lr.ph.i256.epil.preheader, %.loopexit.i260.loopexit672.unr-lcssa, %.lr.ph80.i.epil.preheader, %.loopexit.i260.loopexit671.unr-lcssa, %.lr.ph85.i.epil.preheader, %.loopexit.i260.loopexit.unr-lcssa, %bb.iu, %bb.it, %bb.is, %bb.ir
  %.pre-phi.i261 = phi i64 [ %.pre.i254, %.lr.ph80.i.epil.preheader ], [ %.pre.i254, %bb.ir ], [ %.pre.i254, %.lr.ph85.i.epil.preheader ], [ 0, %bb.is ], [ 0, %bb.iu ], [ 0, %bb.it ], [ %.pre.i254, %.loopexit.i260.loopexit.unr-lcssa ], [ %.pre.i254, %.loopexit.i260.loopexit671.unr-lcssa ], [ %.pre.i254, %.loopexit.i260.loopexit672.unr-lcssa ], [ %.pre.i254, %.lr.ph.i256.epil.preheader ]
  store i8 8, ptr %i.cvh, align 1, !tbaa !75
  %i.cyj = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.cyk = load i8, ptr %i.cyj, align 2, !tbaa !78 ; 2 uses
  %i.cyl = shl i8 %i.cyk, 3
  %i.cym = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.cyl, ptr %i.cym, align 1, !tbaa !76
  %i.cyn = zext i8 %i.cyk to i64
  %i.cyo = mul nuw nsw i64 %.pre-phi.i261, %i.cyn
  %i.cyp = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.cyo, ptr %i.cyp, align 8, !tbaa !77
  br label %png_do_unpack.exit

png_do_unpack.exit:                               ; preds = %.loopexit.i260, %bb.iq, %png_do_unshift.exit
  %i.cyq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cyr = load i8, ptr %i.cyq, align 8, !tbaa !73
  %i.cys = icmp eq i8 %i.cyr, 3
  br i1 %i.cys, label %bb.iv, label %bb.ix

bb.iv:                                            ; preds = %png_do_unpack.exit
  %i.cyt = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.cyu = load i32, ptr %i.cyt, align 4, !tbaa !327
  %i.cyv = icmp sgt i32 %i.cyu, -1
  br i1 %i.cyv, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  tail call void @png_do_check_palette_indexes(ptr noundef nonnull %0, ptr noundef nonnull %1) #11
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv, %png_do_unpack.exit
  %i.cyw = load i32, ptr %i.h, align 4, !tbaa !25 ; 2 uses
  %i.cyx = and i32 %i.cyw, 1
  %.not165 = icmp eq i32 %i.cyx, 0
  br i1 %.not165, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.cyy = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cyy, i64 1
  tail call void @png_do_bgr(ptr noundef nonnull %1, ptr noundef nonnull %i.cyz) #11
  %.pre392 = load i32, ptr %i.h, align 4, !tbaa !25
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %i.cza = phi i32 [ %.pre392, %bb.iy ], [ %i.cyw, %bb.ix ] ; 2 uses
  %i.czb = and i32 %i.cza, 65536
  %.not166 = icmp eq i32 %i.czb, 0
  br i1 %.not166, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.czc = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.czd = getelementptr inbounds nuw i8, ptr %i.czc, i64 1
  tail call void @png_do_packswap(ptr noundef nonnull %1, ptr noundef nonnull %i.czd) #11
  %.pre393 = load i32, ptr %i.h, align 4, !tbaa !25
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.cze = phi i32 [ %.pre393, %bb.ja ], [ %i.cza, %bb.iz ] ; 5 uses
  %i.czf = and i32 %i.cze, 32768
  %.not167 = icmp eq i32 %i.czf, 0
  br i1 %.not167, label %png_do_read_filler.exit, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.czg = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.czh = getelementptr inbounds nuw i8, ptr %i.czg, i64 1 ; 8 uses
  %i.czi = getelementptr inbounds nuw i8, ptr %0, i64 634
  %i.czj = load i16, ptr %i.czi, align 2, !tbaa !328 ; 2 uses
  %i.czk = load i32, ptr %i.e, align 8, !tbaa !24 ; 4 uses
  %i.czl = load i32, ptr %1, align 8, !tbaa !74   ; 31 uses
  %i.czm = lshr i16 %i.czj, 8
  %i.czn = trunc nuw i16 %i.czm to i8             ; 10 uses
  %i.czo = trunc i16 %i.czj to i8                 ; 28 uses
  %i.czp = load i8, ptr %i.cyq, align 8, !tbaa !73
  switch i8 %i.czp, label %png_do_read_filler.exit [
    i8 0, label %bb.jd
    i8 2, label %bb.jk
  ]

bb.jd:                                            ; preds = %bb.jc
  %i.czq = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.czr = load i8, ptr %i.czq, align 1, !tbaa !75
  switch i8 %i.czr, label %png_do_read_filler.exit [
    i8 8, label %bb.je
    i8 16, label %bb.jh
  ]

bb.je:                                            ; preds = %bb.jd
  %i.czs = and i32 %i.czk, 128
  %.not205.i = icmp eq i32 %i.czs, 0
  %i.czt = zext i32 %i.czl to i64                 ; 6 uses
  br i1 %.not205.i, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.czu = getelementptr inbounds nuw i8, ptr %i.czh, i64 %i.czt ; 3 uses
  %i.czv = getelementptr inbounds nuw i8, ptr %i.czu, i64 %i.czt ; 3 uses
  %i.czw = icmp ugt i32 %i.czl, 1
  br i1 %i.czw, label %.lr.ph245.i.preheader, label %._crit_edge246.i

.lr.ph245.i.preheader:                            ; preds = %bb.jf
  %i.czx = add i32 %i.czl, -1                     ; 2 uses
  %i.czy = add i32 %i.czl, -2
  %xtraiter878 = and i32 %i.czx, 3                ; 3 uses
  %i.czz = icmp ult i32 %i.czy, 3
  br i1 %i.czz, label %.lr.ph245.i.epil.preheader, label %.lr.ph245.i.preheader.new

.lr.ph245.i.preheader.new:                        ; preds = %.lr.ph245.i.preheader
  %unroll_iter883 = and i32 %i.czx, -4
  br label %.lr.ph245.i

.lr.ph245.i:                                      ; preds = %.lr.ph245.i, %.lr.ph245.i.preheader.new
  %.0197243.i = phi ptr [ %i.czv, %.lr.ph245.i.preheader.new ], [ %i.dap, %.lr.ph245.i ] ; 8 uses
  %.0198242.i = phi ptr [ %i.czu, %.lr.ph245.i.preheader.new ], [ %i.dan, %.lr.ph245.i ] ; 4 uses
  %niter884 = phi i32 [ 0, %.lr.ph245.i.preheader.new ], [ %niter884.next.3, %.lr.ph245.i ]
  %i.daa = getelementptr inbounds i8, ptr %.0197243.i, i64 -1
  store i8 %i.czo, ptr %i.daa, align 1, !tbaa !26
  %i.dab = getelementptr inbounds i8, ptr %.0198242.i, i64 -1
  %i.dac = load i8, ptr %i.dab, align 1, !tbaa !26
  %i.dad = getelementptr inbounds i8, ptr %.0197243.i, i64 -2
  store i8 %i.dac, ptr %i.dad, align 1, !tbaa !26
  %i.dae = getelementptr inbounds i8, ptr %.0197243.i, i64 -3
  store i8 %i.czo, ptr %i.dae, align 1, !tbaa !26
  %i.daf = getelementptr inbounds i8, ptr %.0198242.i, i64 -2
  %i.dag = load i8, ptr %i.daf, align 1, !tbaa !26
  %i.dah = getelementptr inbounds i8, ptr %.0197243.i, i64 -4
  store i8 %i.dag, ptr %i.dah, align 1, !tbaa !26
  %i.dai = getelementptr inbounds i8, ptr %.0197243.i, i64 -5
  store i8 %i.czo, ptr %i.dai, align 1, !tbaa !26
  %i.daj = getelementptr inbounds i8, ptr %.0198242.i, i64 -3
  %i.dak = load i8, ptr %i.daj, align 1, !tbaa !26
  %i.dal = getelementptr inbounds i8, ptr %.0197243.i, i64 -6
  store i8 %i.dak, ptr %i.dal, align 1, !tbaa !26
  %i.dam = getelementptr inbounds i8, ptr %.0197243.i, i64 -7
  store i8 %i.czo, ptr %i.dam, align 1, !tbaa !26
  %i.dan = getelementptr inbounds i8, ptr %.0198242.i, i64 -4 ; 3 uses
  %i.dao = load i8, ptr %i.dan, align 1, !tbaa !26
  %i.dap = getelementptr inbounds i8, ptr %.0197243.i, i64 -8 ; 4 uses
  store i8 %i.dao, ptr %i.dap, align 1, !tbaa !26
  %niter884.next.3 = add i32 %niter884, 4         ; 2 uses
  %niter884.ncmp.3 = icmp eq i32 %niter884.next.3, %unroll_iter883
end_hunk_1
begin_hunk_2_@png_do_read_transformations:bb.a
  %i.doi = zext nneg i8 %i.doh to i64
  %i.doj = mul nuw nsw i64 %i.dog, %i.doi
  br label %bb.kj

bb.ki:                                            ; preds = %bb.kg
  %i.dok = zext nneg i8 %i.doc to i64
  %i.dol = mul nuw nsw i64 %i.dog, %i.dok
  %i.dom = add nuw nsw i64 %i.dol, 7
  %i.don = lshr i64 %i.dom, 3
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.kh
  %i.doo = phi i64 [ %i.doj, %bb.kh ], [ %i.don, %bb.ki ]
  %i.dop = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.doo, ptr %i.dop, align 8, !tbaa !77
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.jz
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @png_do_expand(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !74     ; 38 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !73    ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i16, ptr %i.e, align 2, !tbaa !336
  %i.g = zext i16 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ]    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !75    ; 3 uses
  %i.k = icmp ult i8 %i.j, 8
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  switch i8 %i.j, label %..loopexit231_crit_edge [
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 4, label %bb.h
  ]

..loopexit231_crit_edge:                          ; preds = %bb.e
  %.pre = zext i32 %i.a to i64
  br label %.loopexit231

bb.f:                                             ; preds = %bb.e
  %i.l = trunc i32 %i.h to i1
  %i.m = select i1 %i.l, i32 255, i32 0           ; 3 uses
  %i.n = zext i32 %i.a to i64                     ; 3 uses
  %.not270 = icmp eq i32 %i.a, 0
  br i1 %.not270, label %.loopexit231, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %bb.f
  %i.o = sub i32 0, %i.a
  %i.p = and i32 %i.o, 7                          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  %i.r = add i32 %i.a, -1                         ; 2 uses
  %i.s = lshr i32 %i.r, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t ; 2 uses
  %xtraiter322 = and i32 %i.a, 1
  %i.v = icmp eq i32 %i.r, 0
  br i1 %i.v, label %.lr.ph257.epil.preheader, label %.lr.ph257.preheader.new

.lr.ph257.preheader.new:                          ; preds = %.lr.ph257.preheader
  %unroll_iter325 = and i32 %i.a, -2
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257, %.lr.ph257.preheader.new
  %.pn225255 = phi ptr [ %i.q, %.lr.ph257.preheader.new ], [ %.0193.1, %.lr.ph257 ] ; 2 uses
  %.0200254 = phi ptr [ %i.u, %.lr.ph257.preheader.new ], [ %.1201.1, %.lr.ph257 ] ; 2 uses
  %.0210253 = phi i32 [ %i.p, %.lr.ph257.preheader.new ], [ %.1211.1, %.lr.ph257 ] ; 3 uses
  %niter326 = phi i32 [ 0, %.lr.ph257.preheader.new ], [ %niter326.next.1, %.lr.ph257 ]
  %.0193 = getelementptr inbounds i8, ptr %.pn225255, i64 -1
  %i.w = load i8, ptr %.0200254, align 1, !tbaa !26
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw i32 1, %.0210253
  %i.z = and i32 %i.y, %i.x
  %.not223 = icmp ne i32 %i.z, 0
  %. = sext i1 %.not223 to i8
  store i8 %., ptr %.0193, align 1, !tbaa !26
  %i.aa = icmp eq i32 %.0210253, 7                ; 2 uses
  %i.ab = add nuw nsw i32 %.0210253, 1
  %.1211 = select i1 %i.aa, i32 0, i32 %i.ab      ; 3 uses
  %.1201.idx = sext i1 %i.aa to i64
  %.1201 = getelementptr inbounds i8, ptr %.0200254, i64 %.1201.idx ; 2 uses
  %.0193.1 = getelementptr inbounds i8, ptr %.pn225255, i64 -2 ; 3 uses
  %i.ac = load i8, ptr %.1201, align 1, !tbaa !26
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw i32 1, %.1211
  %i.af = and i32 %i.ae, %i.ad
  %.not223.1 = icmp ne i32 %i.af, 0
  %..1 = sext i1 %.not223.1 to i8
  store i8 %..1, ptr %.0193.1, align 1, !tbaa !26
  %i.ag = icmp eq i32 %.1211, 7                   ; 2 uses
  %i.ah = add nuw nsw i32 %.1211, 1
  %.1211.1 = select i1 %i.ag, i32 0, i32 %i.ah    ; 2 uses
  %.1201.idx.1 = sext i1 %i.ag to i64
  %.1201.1 = getelementptr inbounds i8, ptr %.1201, i64 %.1201.idx.1 ; 2 uses
  %niter326.next.1 = add nuw i32 %niter326, 2     ; 2 uses
  %niter326.ncmp.1 = icmp eq i32 %niter326.next.1, %unroll_iter325
  br i1 %niter326.ncmp.1, label %.loopexit231.loopexit.unr-lcssa, label %.lr.ph257, !llvm.loop !329

bb.g:                                             ; preds = %bb.e
  %i.ai = and i32 %i.h, 3
  %i.aj = mul nuw nsw i32 %i.ai, 85               ; 3 uses
  %i.ak = zext i32 %i.a to i64                    ; 3 uses
  %.not269 = icmp eq i32 %i.a, 0
  br i1 %.not269, label %.loopexit231, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %bb.g
  %.neg = mul i32 %i.a, 6
  %i.al = and i32 %.neg, 6                        ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak ; 2 uses
  %i.an = add i32 %i.a, -1                        ; 2 uses
  %i.ao = lshr i32 %i.an, 2
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap ; 2 uses
  %xtraiter317 = and i32 %i.a, 1
  %i.ar = icmp eq i32 %i.an, 0
  br i1 %i.ar, label %.lr.ph252.epil.preheader, label %.lr.ph252.preheader.new

.lr.ph252.preheader.new:                          ; preds = %.lr.ph252.preheader
  %unroll_iter320 = and i32 %i.a, -2
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252, %.lr.ph252.preheader.new
  %.pn222250 = phi ptr [ %i.am, %.lr.ph252.preheader.new ], [ %.1194.1, %.lr.ph252 ] ; 2 uses
  %.2202249 = phi ptr [ %i.aq, %.lr.ph252.preheader.new ], [ %.3203.1, %.lr.ph252 ] ; 2 uses
  %.2212248 = phi i32 [ %i.al, %.lr.ph252.preheader.new ], [ %.3213.1, %.lr.ph252 ] ; 3 uses
  %niter321 = phi i32 [ 0, %.lr.ph252.preheader.new ], [ %niter321.next.1, %.lr.ph252 ]
  %.1194 = getelementptr inbounds i8, ptr %.pn222250, i64 -1
  %i.as = load i8, ptr %.2202249, align 1, !tbaa !26
  %i.at = zext i8 %i.as to i32
  %i.au = lshr i32 %i.at, %.2212248
  %i.av = trunc nuw i32 %i.au to i8
  %i.aw = and i8 %i.av, 3
  %i.ax = mul nuw i8 %i.aw, 85
  store i8 %i.ax, ptr %.1194, align 1, !tbaa !26
  %i.ay = icmp eq i32 %.2212248, 6                ; 2 uses
  %i.az = add nsw i32 %.2212248, 2
  %.3213 = select i1 %i.ay, i32 0, i32 %i.az      ; 3 uses
  %.3203.idx = sext i1 %i.ay to i64
  %.3203 = getelementptr inbounds i8, ptr %.2202249, i64 %.3203.idx ; 2 uses
  %.1194.1 = getelementptr inbounds i8, ptr %.pn222250, i64 -2 ; 3 uses
  %i.ba = load i8, ptr %.3203, align 1, !tbaa !26
  %i.bb = zext i8 %i.ba to i32
  %i.bc = lshr i32 %i.bb, %.3213
  %i.bd = trunc nuw i32 %i.bc to i8
  %i.be = and i8 %i.bd, 3
  %i.bf = mul nuw i8 %i.be, 85
  store i8 %i.bf, ptr %.1194.1, align 1, !tbaa !26
  %i.bg = icmp eq i32 %.3213, 6                   ; 2 uses
  %i.bh = add nsw i32 %.3213, 2
  %.3213.1 = select i1 %i.bg, i32 0, i32 %i.bh    ; 2 uses
  %.3203.idx.1 = sext i1 %i.bg to i64
  %.3203.1 = getelementptr inbounds i8, ptr %.3203, i64 %.3203.idx.1 ; 2 uses
  %niter321.next.1 = add nuw i32 %niter321, 2     ; 2 uses
  %niter321.ncmp.1 = icmp eq i32 %niter321.next.1, %unroll_iter320
  br i1 %niter321.ncmp.1, label %.loopexit231.loopexit313.unr-lcssa, label %.lr.ph252, !llvm.loop !330

bb.h:                                             ; preds = %bb.e
  %i.bi = and i32 %i.h, 15
  %i.bj = mul nuw nsw i32 %i.bi, 17               ; 3 uses
  %i.bk = zext i32 %i.a to i64                    ; 3 uses
  %.not268 = icmp eq i32 %i.a, 0
  br i1 %.not268, label %.loopexit231, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %bb.h
  %i.bl = shl i32 %i.a, 2
  %i.bm = and i32 %i.bl, 4                        ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bk ; 2 uses
  %i.bo = add i32 %i.a, -1                        ; 2 uses
  %i.bp = lshr i32 %i.bo, 1
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bq ; 2 uses
  %xtraiter = and i32 %i.a, 1
  %i.bs = icmp eq i32 %i.bo, 0
  br i1 %i.bs, label %.lr.ph247.epil.preheader, label %.lr.ph247.preheader.new

.lr.ph247.preheader.new:                          ; preds = %.lr.ph247.preheader
  %unroll_iter = and i32 %i.a, -2
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247, %.lr.ph247.preheader.new
  %.pn245 = phi ptr [ %i.bn, %.lr.ph247.preheader.new ], [ %.2195.1, %.lr.ph247 ] ; 2 uses
  %.4204244 = phi ptr [ %i.br, %.lr.ph247.preheader.new ], [ %.5205.1, %.lr.ph247 ] ; 2 uses
  %.4214243 = phi i32 [ %i.bm, %.lr.ph247.preheader.new ], [ %.5215.1, %.lr.ph247 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph247.preheader.new ], [ %niter.next.1, %.lr.ph247 ]
  %.2195 = getelementptr inbounds i8, ptr %.pn245, i64 -1
  %i.bt = load i8, ptr %.4204244, align 1, !tbaa !26
  %i.bu = zext i8 %i.bt to i32
  %i.bv = lshr i32 %i.bu, %.4214243               ; 2 uses
  %i.bw = and i32 %i.bv, 15
  %i.bx = shl nuw nsw i32 %i.bv, 4
  %i.by = or disjoint i32 %i.bw, %i.bx
  %i.bz = trunc i32 %i.by to i8
  store i8 %i.bz, ptr %.2195, align 1, !tbaa !26
  %.not229 = icmp ne i32 %.4214243, 0             ; 2 uses
  %.5215 = select i1 %.not229, i32 0, i32 4
  %.5205.idx = sext i1 %.not229 to i64
  %.5205 = getelementptr inbounds i8, ptr %.4204244, i64 %.5205.idx ; 2 uses
  %.2195.1 = getelementptr inbounds i8, ptr %.pn245, i64 -2 ; 3 uses
  %i.ca = load i8, ptr %.5205, align 1, !tbaa !26
  %i.cb = zext i8 %i.ca to i32
  %i.cc = lshr i32 %i.cb, %.5215                  ; 2 uses
  %i.cd = and i32 %i.cc, 15
  %i.ce = shl nuw nsw i32 %i.cc, 4
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = trunc i32 %i.cf to i8
  store i8 %i.cg, ptr %.2195.1, align 1, !tbaa !26
  %not..not229 = icmp eq i32 %.4214243, 0         ; 2 uses
  %.5215.1 = select i1 %not..not229, i32 0, i32 4 ; 2 uses
  %.5205.idx.1 = sext i1 %not..not229 to i64
  %.5205.1 = getelementptr inbounds i8, ptr %.5205, i64 %.5205.idx.1 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit231.loopexit314.unr-lcssa, label %.lr.ph247, !llvm.loop !331

.loopexit231.loopexit.unr-lcssa:                  ; preds = %.lr.ph257
  %lcmp.mod323.not = icmp eq i32 %xtraiter322, 0
  br i1 %lcmp.mod323.not, label %.loopexit231, label %.lr.ph257.epil.preheader

.lr.ph257.epil.preheader:                         ; preds = %.loopexit231.loopexit.unr-lcssa, %.lr.ph257.preheader
  %.pn225255.epil.init = phi ptr [ %i.q, %.lr.ph257.preheader ], [ %.0193.1, %.loopexit231.loopexit.unr-lcssa ]
  %.0200254.epil.init = phi ptr [ %i.u, %.lr.ph257.preheader ], [ %.1201.1, %.loopexit231.loopexit.unr-lcssa ]
  %.0210253.epil.init = phi i32 [ %i.p, %.lr.ph257.preheader ], [ %.1211.1, %.loopexit231.loopexit.unr-lcssa ]
  %lcmp.mod324 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod324)
  %.0193.epil = getelementptr inbounds i8, ptr %.pn225255.epil.init, i64 -1
  %i.ch = load i8, ptr %.0200254.epil.init, align 1, !tbaa !26
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw i32 1, %.0210253.epil.init
  %i.ck = and i32 %i.cj, %i.ci
  %.not223.epil = icmp ne i32 %i.ck, 0
  %..epil = sext i1 %.not223.epil to i8
  store i8 %..epil, ptr %.0193.epil, align 1, !tbaa !26
  br label %.loopexit231

.loopexit231.loopexit313.unr-lcssa:               ; preds = %.lr.ph252
  %lcmp.mod318.not = icmp eq i32 %xtraiter317, 0
  br i1 %lcmp.mod318.not, label %.loopexit231, label %.lr.ph252.epil.preheader

.lr.ph252.epil.preheader:                         ; preds = %.loopexit231.loopexit313.unr-lcssa, %.lr.ph252.preheader
  %.pn222250.epil.init = phi ptr [ %i.am, %.lr.ph252.preheader ], [ %.1194.1, %.loopexit231.loopexit313.unr-lcssa ]
  %.2202249.epil.init = phi ptr [ %i.aq, %.lr.ph252.preheader ], [ %.3203.1, %.loopexit231.loopexit313.unr-lcssa ]
  %.2212248.epil.init = phi i32 [ %i.al, %.lr.ph252.preheader ], [ %.3213.1, %.loopexit231.loopexit313.unr-lcssa ]
  %lcmp.mod319 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod319)
  %.1194.epil = getelementptr inbounds i8, ptr %.pn222250.epil.init, i64 -1
  %i.cl = load i8, ptr %.2202249.epil.init, align 1, !tbaa !26
  %i.cm = zext i8 %i.cl to i32
  %i.cn = lshr i32 %i.cm, %.2212248.epil.init
  %i.co = trunc nuw i32 %i.cn to i8
  %i.cp = and i8 %i.co, 3
  %i.cq = mul nuw i8 %i.cp, 85
  store i8 %i.cq, ptr %.1194.epil, align 1, !tbaa !26
  br label %.loopexit231

.loopexit231.loopexit314.unr-lcssa:               ; preds = %.lr.ph247
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit231, label %.lr.ph247.epil.preheader

.lr.ph247.epil.preheader:                         ; preds = %.loopexit231.loopexit314.unr-lcssa, %.lr.ph247.preheader
  %.pn245.epil.init = phi ptr [ %i.bn, %.lr.ph247.preheader ], [ %.2195.1, %.loopexit231.loopexit314.unr-lcssa ]
  %.4204244.epil.init = phi ptr [ %i.br, %.lr.ph247.preheader ], [ %.5205.1, %.loopexit231.loopexit314.unr-lcssa ]
  %.4214243.epil.init = phi i32 [ %i.bm, %.lr.ph247.preheader ], [ %.5215.1, %.loopexit231.loopexit314.unr-lcssa ]
  %lcmp.mod316 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod316)
  %.2195.epil = getelementptr inbounds i8, ptr %.pn245.epil.init, i64 -1
  %i.cr = load i8, ptr %.4204244.epil.init, align 1, !tbaa !26
  %i.cs = zext i8 %i.cr to i32
  %i.ct = lshr i32 %i.cs, %.4214243.epil.init     ; 2 uses
  %i.cu = and i32 %i.ct, 15
  %i.cv = shl nuw nsw i32 %i.ct, 4
  %i.cw = or disjoint i32 %i.cu, %i.cv
  %i.cx = trunc i32 %i.cw to i8
  store i8 %i.cx, ptr %.2195.epil, align 1, !tbaa !26
  br label %.loopexit231

.loopexit231:                                     ; preds = %.lr.ph247.epil.preheader, %.loopexit231.loopexit314.unr-lcssa, %.lr.ph252.epil.preheader, %.loopexit231.loopexit313.unr-lcssa, %.lr.ph257.epil.preheader, %.loopexit231.loopexit.unr-lcssa, %..loopexit231_crit_edge, %bb.h, %bb.g, %bb.f
  %.pre-phi = phi i64 [ %.pre, %..loopexit231_crit_edge ], [ %i.ak, %.lr.ph252.epil.preheader ], [ %i.n, %.lr.ph257.epil.preheader ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.g ], [ %i.n, %.loopexit231.loopexit.unr-lcssa ], [ %i.ak, %.loopexit231.loopexit313.unr-lcssa ], [ %i.bk, %.loopexit231.loopexit314.unr-lcssa ], [ %i.bk, %.lr.ph247.epil.preheader ]
  %.0 = phi i32 [ %i.h, %..loopexit231_crit_edge ], [ %i.aj, %.lr.ph252.epil.preheader ], [ %i.m, %.lr.ph257.epil.preheader ], [ %i.m, %bb.f ], [ %i.bj, %bb.h ], [ %i.aj, %bb.g ], [ %i.m, %.loopexit231.loopexit.unr-lcssa ], [ %i.aj, %.loopexit231.loopexit313.unr-lcssa ], [ %i.bj, %.loopexit231.loopexit314.unr-lcssa ], [ %i.bj, %.lr.ph247.epil.preheader ]
  store i8 8, ptr %i.i, align 1, !tbaa !75
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 8, ptr %i.cy, align 1, !tbaa !76
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pre-phi, ptr %i.cz, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %.loopexit231, %bb.d
  %i.da = phi i8 [ 8, %.loopexit231 ], [ %i.j, %bb.d ]
  %.1 = phi i32 [ %.0, %.loopexit231 ], [ %i.h, %bb.d ] ; 3 uses
  br i1 %.not, label %bb.am, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i8 %i.da, label %.loopexit [
    i8 8, label %bb.k
    i8 16, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %.not272 = icmp eq i32 %i.a, 0
  br i1 %.not272, label %.loopexit, label %.lr.ph265

.lr.ph265:                                        ; preds = %bb.k
  %i.db = zext i32 %i.a to i64                    ; 2 uses
  %i.dc = shl nuw nsw i64 %i.db, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -1 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %i.db ; 2 uses
  %i.dg = trunc i32 %.1 to i8                     ; 3 uses
  %xtraiter327 = and i32 %i.a, 1
  %i.dh = icmp eq i32 %i.a, 1
  br i1 %i.dh, label %.epil.preheader, label %.lr.ph265.new

.lr.ph265.new:                                    ; preds = %.lr.ph265
  %unroll_iter330 = and i32 %i.a, -2
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph265.new
  %.3196263 = phi ptr [ %i.de, %.lr.ph265.new ], [ %i.dp, %bb.l ] ; 5 uses
  %.pn227262 = phi ptr [ %i.df, %.lr.ph265.new ], [ %.6206.1, %bb.l ] ; 2 uses
  %niter331 = phi i32 [ 0, %.lr.ph265.new ], [ %niter331.next.1, %bb.l ]
  %.6206 = getelementptr inbounds i8, ptr %.pn227262, i64 -1 ; 2 uses
  %i.di = load i8, ptr %.6206, align 1, !tbaa !26
  %i.dj = icmp ne i8 %i.di, %i.dg
  %.228 = sext i1 %i.dj to i8
  %.4197 = getelementptr inbounds i8, ptr %.3196263, i64 -1
  store i8 %.228, ptr %.3196263, align 1, !tbaa !26
  %i.dk = load i8, ptr %.6206, align 1, !tbaa !26
  %i.dl = getelementptr inbounds i8, ptr %.3196263, i64 -2
  store i8 %i.dk, ptr %.4197, align 1, !tbaa !26
  %.6206.1 = getelementptr inbounds i8, ptr %.pn227262, i64 -2 ; 4 uses
  %i.dm = load i8, ptr %.6206.1, align 1, !tbaa !26
  %i.dn = icmp ne i8 %i.dm, %i.dg
  %.228.1 = sext i1 %i.dn to i8
  %.4197.1 = getelementptr inbounds i8, ptr %.3196263, i64 -3
  store i8 %.228.1, ptr %i.dl, align 1, !tbaa !26
  %i.do = load i8, ptr %.6206.1, align 1, !tbaa !26
  %i.dp = getelementptr inbounds i8, ptr %.3196263, i64 -4 ; 2 uses
  store i8 %i.do, ptr %.4197.1, align 1, !tbaa !26
  %niter331.next.1 = add nuw i32 %niter331, 2     ; 2 uses
  %niter331.ncmp.1 = icmp eq i32 %niter331.next.1, %unroll_iter330
  br i1 %niter331.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.l, !llvm.loop !332

bb.m:                                             ; preds = %bb.j
  %i.dq = lshr i32 %.1, 8
  %.not271 = icmp eq i32 %i.a, 0
  br i1 %.not271, label %.loopexit, label %.lr.ph261

.lr.ph261:                                        ; preds = %bb.m
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !77 ; 2 uses
  %i.dt = shl i64 %i.ds, 1
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -1
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %i.ds
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -1
  %i.dy = trunc i32 %.1 to i8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph261, %bb.q
  %.4260 = phi i32 [ 0, %.lr.ph261 ], [ %i.el, %bb.q ]
  %.5198259 = phi ptr [ %i.dv, %.lr.ph261 ], [ %i.ek, %bb.q ] ; 5 uses
  %.7207258 = phi ptr [ %i.dx, %.lr.ph261 ], [ %i.ei, %bb.q ] ; 4 uses
  %i.dz = getelementptr inbounds i8, ptr %.7207258, i64 -1 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !26
  %i.eb = zext i8 %i.ea to i32
  %i.ec = icmp eq i32 %i.dq, %i.eb
  br i1 %i.ec, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ed = load i8, ptr %.7207258, align 1, !tbaa !26
  %i.ee = icmp eq i8 %i.ed, %i.dy
  br i1 %i.ee, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sink302 = phi i8 [ -1, %bb.p ], [ 0, %bb.o ]  ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.5198259, i64 -1
  store i8 %.sink302, ptr %.5198259, align 1, !tbaa !26
  store i8 %.sink302, ptr %i.ef, align 1, !tbaa !26
  %.6199 = getelementptr inbounds i8, ptr %.5198259, i64 -2
  %i.eg = load i8, ptr %.7207258, align 1, !tbaa !26
  %i.eh = getelementptr inbounds i8, ptr %.5198259, i64 -3
  store i8 %i.eg, ptr %.6199, align 1, !tbaa !26
  %i.ei = getelementptr inbounds i8, ptr %.7207258, i64 -2
  %i.ej = load i8, ptr %i.dz, align 1, !tbaa !26
  %i.ek = getelementptr inbounds i8, ptr %.5198259, i64 -4
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !26
  %i.el = add nuw i32 %.4260, 1                   ; 2 uses
  %exitcond281.not = icmp eq i32 %i.el, %i.a
  br i1 %exitcond281.not, label %.loopexit, label %bb.n, !llvm.loop !333

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod328.not = icmp eq i32 %xtraiter327, 0
  br i1 %lcmp.mod328.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph265
  %.3196263.epil.init = phi ptr [ %i.de, %.lr.ph265 ], [ %i.dp, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.pn227262.epil.init = phi ptr [ %i.df, %.lr.ph265 ], [ %.6206.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod329 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod329)
  %.6206.epil = getelementptr inbounds i8, ptr %.pn227262.epil.init, i64 -1 ; 2 uses
  %i.em = load i8, ptr %.6206.epil, align 1, !tbaa !26
  %i.en = icmp ne i8 %i.em, %i.dg
  %.228.epil = sext i1 %i.en to i8
  %.4197.epil = getelementptr inbounds i8, ptr %.3196263.epil.init, i64 -1
  store i8 %.228.epil, ptr %.3196263.epil.init, align 1, !tbaa !26
  %i.eo = load i8, ptr %.6206.epil, align 1, !tbaa !26
end_hunk_2
