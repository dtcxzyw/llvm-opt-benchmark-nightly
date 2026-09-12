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

png_do_compose.exit.loopexit695.unr-lcssa:        ; preds = %bb.cp
  %lcmp.mod747.not = icmp eq i32 %xtraiter746, 0
  br i1 %lcmp.mod747.not, label %png_do_compose.exit, label %.epil.preheader745

.epil.preheader745:                               ; preds = %png_do_compose.exit.loopexit695.unr-lcssa, %.lr.ph879.i
  %.11878.i.epil.init = phi ptr [ %i.rm, %.lr.ph879.i ], [ %i.xx, %png_do_compose.exit.loopexit695.unr-lcssa ] ; 2 uses
  %lcmp.mod748 = trunc i32 %i.sd to i1
  tail call void @llvm.assume(i1 %lcmp.mod748)
  %i.bei = load i8, ptr %.11878.i.epil.init, align 1, !tbaa !26, !noalias !318
  %i.bej = zext i8 %i.bei to i16
  %i.bek = icmp eq i16 %i.wr, %i.bej
  br i1 %i.bek, label %bb.gc, label %png_do_compose.exit

bb.gc:                                            ; preds = %.epil.preheader745
  %i.bel = load i16, ptr %i.ws, align 4, !tbaa !55, !alias.scope !318
  %i.bem = trunc i16 %i.bel to i8
  store i8 %i.bem, ptr %.11878.i.epil.init, align 1, !tbaa !26, !noalias !318
  br label %png_do_compose.exit

png_do_compose.exit.loopexit696.unr-lcssa:        ; preds = %bb.ck
  %lcmp.mod741.not = icmp eq i32 %xtraiter740, 0
  br i1 %lcmp.mod741.not, label %png_do_compose.exit, label %.epil.preheader739

.epil.preheader739:                               ; preds = %png_do_compose.exit.loopexit696.unr-lcssa, %.lr.ph876.i
  %.10875.i.epil.init = phi ptr [ %i.rm, %.lr.ph876.i ], [ %i.xl, %png_do_compose.exit.loopexit696.unr-lcssa ] ; 2 uses
  %lcmp.mod742 = trunc i32 %i.sd to i1
  tail call void @llvm.assume(i1 %lcmp.mod742)
  %i.ben = load i8, ptr %.10875.i.epil.init, align 1, !tbaa !26, !noalias !318 ; 2 uses
  %i.beo = zext i8 %i.ben to i16
  %i.bep = icmp eq i16 %i.wn, %i.beo
  br i1 %i.bep, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %.epil.preheader739
  %i.beq = zext i8 %i.ben to i64
  %i.ber = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.beq
  %i.bes = load i8, ptr %i.ber, align 1, !tbaa !26
  br label %png_do_compose.exit.loopexit696.epilog-lcssa

bb.ge:                                            ; preds = %.epil.preheader739
  %i.bet = load i16, ptr %i.wo, align 4, !tbaa !55, !alias.scope !318
  %i.beu = trunc i16 %i.bet to i8
  br label %png_do_compose.exit.loopexit696.epilog-lcssa

png_do_compose.exit.loopexit696.epilog-lcssa:     ; preds = %bb.ge, %bb.gd
  %storemerge781.i.epil = phi i8 [ %i.bes, %bb.gd ], [ %i.beu, %bb.ge ]
  store i8 %storemerge781.i.epil, ptr %.10875.i.epil.init, align 1, !tbaa !26, !noalias !318
  br label %png_do_compose.exit

png_do_compose.exit.loopexit697.unr-lcssa:        ; preds = %bb.cy
  %lcmp.mod735.not = icmp eq i32 %xtraiter734, 0
  br i1 %lcmp.mod735.not, label %png_do_compose.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %png_do_compose.exit.loopexit697.unr-lcssa, %.lr.ph873.i
  %.13872.i.epil.init = phi ptr [ %i.rm, %.lr.ph873.i ], [ %i.zw, %png_do_compose.exit.loopexit697.unr-lcssa ] ; 3 uses
  %lcmp.mod736 = trunc i32 %i.sd to i1
  tail call void @llvm.assume(i1 %lcmp.mod736)
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

png_do_compose.exit:                              ; preds = %bb.gb, %bb.fx, %bb.fl, %bb.fh, %bb.eu, %bb.eq, %bb.ei, %bb.ee, %bb.dr, %bb.dw, %bb.df, %bb.dk, %bb.ct, %png_do_compose.exit.loopexit697.unr-lcssa, %bb.gf, %.epil.preheader, %png_do_compose.exit.loopexit696.epilog-lcssa, %png_do_compose.exit.loopexit696.unr-lcssa, %png_do_compose.exit.loopexit695.unr-lcssa, %bb.gc, %.epil.preheader745, %bb.bz, %bb.cc, %bb.br, %bb.bu, %bb.bm, %.preheader829.i, %.preheader831.i, %.preheader825.i, %.preheader827.i, %.preheader821.i, %.preheader823.i, %.preheader817.i, %.preheader819.i, %.preheader813.i, %.preheader815.i, %.preheader809.i, %.preheader811.i, %.preheader805.i, %.preheader807.i, %.preheader801.i, %.preheader803.i, %.preheader797.i, %.preheader799.i, %.preheader793.i, %.preheader795.i, %.preheader.i199, %.split.i, %bb.bj, %bb.bi, %bb.bh
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
  %.pre387.a = load i8, ptr %.phi.trans.insert, align 1, !tbaa !48
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
  %i.bfp = phi i8 [ %.pre387.a, %._crit_edge ], [ %i.bfn, %bb.gi ]
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
  br i1 %i.bgh, label %.preheader.i213, label %.preheader210.i

.preheader210.i:                                  ; preds = %bb.gn
  br i1 %.not265.i, label %png_do_gamma.exit, label %.lr.ph253.i

.preheader.i213:                                  ; preds = %bb.gn
  br i1 %.not265.i, label %png_do_gamma.exit, label %.lr.ph256.i214.preheader

.lr.ph256.i214.preheader:                         ; preds = %.preheader.i213
  %xtraiter785 = and i32 %i.bfy, 1
  %i.bgi = icmp eq i32 %i.bfy, 1
  br i1 %i.bgi, label %.lr.ph256.i214.epil.preheader, label %.lr.ph256.i214.preheader.new

.lr.ph256.i214.preheader.new:                     ; preds = %.lr.ph256.i214.preheader
  %unroll_iter789 = and i32 %i.bfy, -2
  br label %.lr.ph256.i214

.lr.ph256.i214:                                   ; preds = %.lr.ph256.i214, %.lr.ph256.i214.preheader.new
  %.0255.i = phi ptr [ %i.bfr, %.lr.ph256.i214.preheader.new ], [ %i.bhm, %.lr.ph256.i214 ] ; 8 uses
  %niter790 = phi i32 [ 0, %.lr.ph256.i214.preheader.new ], [ %niter790.next.1, %.lr.ph256.i214 ]
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
  %niter790.next.1 = add nuw i32 %niter790, 2     ; 2 uses
  %niter790.ncmp.1 = icmp eq i32 %niter790.next.1, %unroll_iter789
  br i1 %niter790.ncmp.1, label %png_do_gamma.exit.loopexit.unr-lcssa, label %.lr.ph256.i214, !llvm.loop !250

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
  br i1 %.not263.i, label %png_do_gamma.exit, label %.lr.ph250.i212.preheader

.lr.ph250.i212.preheader:                         ; preds = %.preheader212.i
  %xtraiter779 = and i32 %i.bfy, 1
  %i.bji = icmp eq i32 %i.bfy, 1
  br i1 %i.bji, label %.lr.ph250.i212.epil.preheader, label %.lr.ph250.i212.preheader.new

.lr.ph250.i212.preheader.new:                     ; preds = %.lr.ph250.i212.preheader
  %unroll_iter783 = and i32 %i.bfy, -2
  br label %.lr.ph250.i212

.lr.ph250.i212:                                   ; preds = %.lr.ph250.i212, %.lr.ph250.i212.preheader.new
  %.2249.i = phi ptr [ %i.bfr, %.lr.ph250.i212.preheader.new ], [ %i.bkm, %.lr.ph250.i212 ] ; 8 uses
  %niter784 = phi i32 [ 0, %.lr.ph250.i212.preheader.new ], [ %niter784.next.1, %.lr.ph250.i212 ]
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
  %niter784.next.1 = add nuw i32 %niter784, 2     ; 2 uses
  %niter784.ncmp.1 = icmp eq i32 %niter784.next.1, %unroll_iter783
  br i1 %niter784.ncmp.1, label %png_do_gamma.exit.loopexit684.unr-lcssa.a, label %.lr.ph250.i212, !llvm.loop !252

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
  %.not261.i210 = icmp eq i32 %i.bfy, 0           ; 2 uses
  br i1 %i.bmh, label %.preheader216.i, label %.preheader218.i

.preheader218.i:                                  ; preds = %bb.gp
  br i1 %.not261.i210, label %png_do_gamma.exit, label %.lr.ph241.i.preheader

.lr.ph241.i.preheader:                            ; preds = %.preheader218.i
  %xtraiter767 = and i32 %i.bfy, 1
  %i.bmi = icmp eq i32 %i.bfy, 1
  br i1 %i.bmi, label %.lr.ph241.i.epil.preheader, label %.lr.ph241.i.preheader.new

.lr.ph241.i.preheader.new:                        ; preds = %.lr.ph241.i.preheader
  %unroll_iter771 = and i32 %i.bfy, -2
  br label %.lr.ph241.i

.preheader216.i:                                  ; preds = %bb.gp
  br i1 %.not261.i210, label %png_do_gamma.exit, label %.lr.ph244.i211.preheader

.lr.ph244.i211.preheader:                         ; preds = %.preheader216.i
  %i.bmj = add i32 %i.bfy, -1
  %xtraiter773 = and i32 %i.bfy, 3                ; 3 uses
  %i.bmk = icmp ult i32 %i.bmj, 3
  br i1 %i.bmk, label %.lr.ph244.i211.epil.preheader, label %.lr.ph244.i211.preheader.new

.lr.ph244.i211.preheader.new:                     ; preds = %.lr.ph244.i211.preheader
  %unroll_iter777 = and i32 %i.bfy, -4
  br label %.lr.ph244.i211

.lr.ph244.i211:                                   ; preds = %.lr.ph244.i211, %.lr.ph244.i211.preheader.new
  %.4243.i = phi ptr [ %i.bfr, %.lr.ph244.i211.preheader.new ], [ %i.bne, %.lr.ph244.i211 ] ; 6 uses
  %niter778 = phi i32 [ 0, %.lr.ph244.i211.preheader.new ], [ %niter778.next.3, %.lr.ph244.i211 ]
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
  %niter778.next.3 = add nuw i32 %niter778, 4     ; 2 uses
  %niter778.ncmp.3 = icmp eq i32 %niter778.next.3, %unroll_iter777
  br i1 %niter778.ncmp.3, label %png_do_gamma.exit.loopexit686.unr-lcssa.a, label %.lr.ph244.i211, !llvm.loop !254

.lr.ph241.i:                                      ; preds = %.lr.ph241.i, %.lr.ph241.i.preheader.new
  %.5240.i = phi ptr [ %i.bfr, %.lr.ph241.i.preheader.new ], [ %i.boi, %.lr.ph241.i ] ; 6 uses
  %niter772 = phi i32 [ 0, %.lr.ph241.i.preheader.new ], [ %niter772.next.1, %.lr.ph241.i ]
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
  %niter772.next.1 = add nuw i32 %niter772, 2     ; 2 uses
  %niter772.ncmp.1 = icmp eq i32 %niter772.next.1, %unroll_iter771
  br i1 %niter772.ncmp.1, label %png_do_gamma.exit.loopexit687.unr-lcssa.a, label %.lr.ph241.i, !llvm.loop !255

bb.gq:                                            ; preds = %bb.gm
  %i.boj = icmp eq i8 %i.bga, 2
  %i.bok = icmp ne i32 %i.bfy, 0
  %or.cond257.i = select i1 %i.boj, i1 %i.bok, i1 false
  br i1 %or.cond257.i, label %.lr.ph.i208, label %.loopexit227.i

.lr.ph.i208:                                      ; preds = %bb.gq, %.lr.ph.i208
  %.6229.i = phi ptr [ %i.bqd, %.lr.ph.i208 ], [ %i.bfr, %bb.gq ] ; 3 uses
  %.6205228.i = phi i32 [ %i.bqe, %.lr.ph.i208 ], [ 0, %bb.gq ]
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
  br i1 %i.bqf, label %.lr.ph.i208, label %.loopexit227.loopexit.i, !llvm.loop !256

.loopexit227.loopexit.i:                          ; preds = %.lr.ph.i208
  %.pre.i209 = load i8, ptr %i.bfz, align 1, !tbaa !75, !noalias !319
  br label %.loopexit227.i

.loopexit227.i:                                   ; preds = %.loopexit227.loopexit.i, %bb.gq
  %i.bqg = phi i8 [ %.pre.i209, %.loopexit227.loopexit.i ], [ %i.bga, %bb.gq ]
  switch i8 %i.bqg, label %png_do_gamma.exit [
    i8 4, label %.preheader220.i
    i8 8, label %.preheader222.i
    i8 16, label %.preheader224.i
  ]

.preheader224.i:                                  ; preds = %.loopexit227.i
  %.not.i204 = icmp eq i32 %i.bfy, 0
  br i1 %.not.i204, label %png_do_gamma.exit, label %.lr.ph232.i.preheader

.lr.ph232.i.preheader:                            ; preds = %.preheader224.i
  %xtraiter751 = and i32 %i.bfy, 1
  %i.bqh = icmp eq i32 %i.bfy, 1
  br i1 %i.bqh, label %.lr.ph232.i.epil.preheader, label %.lr.ph232.i.preheader.new

.lr.ph232.i.preheader.new:                        ; preds = %.lr.ph232.i.preheader
  %unroll_iter754 = and i32 %i.bfy, -2
  br label %.lr.ph232.i

.preheader222.i:                                  ; preds = %.loopexit227.i
  %.not258.i206 = icmp eq i32 %i.bfy, 0
  br i1 %.not258.i206, label %png_do_gamma.exit, label %.lr.ph235.i.preheader

.lr.ph235.i.preheader:                            ; preds = %.preheader222.i
  %i.bqi = add i32 %i.bfy, -1
  %xtraiter756 = and i32 %i.bfy, 3                ; 3 uses
  %i.bqj = icmp ult i32 %i.bqi, 3
  br i1 %i.bqj, label %.lr.ph235.i.epil.preheader, label %.lr.ph235.i.preheader.new

.lr.ph235.i.preheader.new:                        ; preds = %.lr.ph235.i.preheader
  %unroll_iter759 = and i32 %i.bfy, -4
  br label %.lr.ph235.i

.preheader220.i:                                  ; preds = %.loopexit227.i
  %.not259.i207 = icmp eq i32 %i.bfy, 0
  br i1 %.not259.i207, label %png_do_gamma.exit, label %.lr.ph238.i.preheader

.lr.ph238.i.preheader:                            ; preds = %.preheader220.i
  %i.bqk = add i32 %i.bfy, -1                     ; 2 uses
  %i.bql = lshr i32 %i.bqk, 1                     ; 2 uses
  %i.bqm = add nuw i32 %i.bql, 1                  ; 2 uses
  %i.bqn = icmp eq i32 %i.bql, 0
  br i1 %i.bqn, label %.lr.ph238.i.epil.preheader, label %.lr.ph238.i.preheader.new

.lr.ph238.i.preheader.new:                        ; preds = %.lr.ph238.i.preheader
  %unroll_iter765 = and i32 %i.bqm, -2
  br label %.lr.ph238.i

.lr.ph238.i:                                      ; preds = %.lr.ph238.i, %.lr.ph238.i.preheader.new
  %.7237.i = phi ptr [ %i.bfr, %.lr.ph238.i.preheader.new ], [ %i.brv, %.lr.ph238.i ] ; 4 uses
  %niter766 = phi i32 [ 0, %.lr.ph238.i.preheader.new ], [ %niter766.next.1, %.lr.ph238.i ]
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
  %niter766.next.1 = add nuw i32 %niter766, 2     ; 2 uses
  %niter766.ncmp.1.not = icmp eq i32 %niter766.next.1, %unroll_iter765
  br i1 %niter766.ncmp.1.not, label %png_do_gamma.exit.loopexit688.unr-lcssa, label %.lr.ph238.i, !llvm.loop !257

.lr.ph235.i:                                      ; preds = %.lr.ph235.i, %.lr.ph235.i.preheader.new
  %.8234.i = phi ptr [ %i.bfr, %.lr.ph235.i.preheader.new ], [ %i.bsp, %.lr.ph235.i ] ; 6 uses
  %niter760 = phi i32 [ 0, %.lr.ph235.i.preheader.new ], [ %niter760.next.3, %.lr.ph235.i ]
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
  %niter760.next.3 = add nuw i32 %niter760, 4     ; 2 uses
  %niter760.ncmp.3 = icmp eq i32 %niter760.next.3, %unroll_iter759
  br i1 %niter760.ncmp.3, label %png_do_gamma.exit.loopexit689.unr-lcssa, label %.lr.ph235.i, !llvm.loop !258

.lr.ph232.i:                                      ; preds = %.lr.ph232.i, %.lr.ph232.i.preheader.new
  %.9231.i = phi ptr [ %i.bfr, %.lr.ph232.i.preheader.new ], [ %i.btt, %.lr.ph232.i ] ; 6 uses
  %niter755 = phi i32 [ 0, %.lr.ph232.i.preheader.new ], [ %niter755.next.1, %.lr.ph232.i ]
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
  %niter755.next.1 = add nuw i32 %niter755, 2     ; 2 uses
  %niter755.ncmp.1 = icmp eq i32 %niter755.next.1, %unroll_iter754
  br i1 %niter755.ncmp.1, label %png_do_gamma.exit.loopexit690.unr-lcssa, label %.lr.ph232.i, !llvm.loop !259

png_do_gamma.exit.loopexit.unr-lcssa:             ; preds = %.lr.ph256.i214
  %lcmp.mod787.not = icmp eq i32 %xtraiter785, 0
  br i1 %lcmp.mod787.not, label %png_do_gamma.exit, label %.lr.ph256.i214.epil.preheader

.lr.ph256.i214.epil.preheader:                    ; preds = %png_do_gamma.exit.loopexit.unr-lcssa, %.lr.ph256.i214.preheader
  %.0255.i.epil.init = phi ptr [ %i.bfr, %.lr.ph256.i214.preheader ], [ %i.bhm, %png_do_gamma.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod788 = trunc i32 %i.bfy to i1
  tail call void @llvm.assume(i1 %lcmp.mod788)
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

png_do_gamma.exit.loopexit684.unr-lcssa.a:        ; preds = %.lr.ph250.i212
  %lcmp.mod781.not = icmp eq i32 %xtraiter779, 0
  br i1 %lcmp.mod781.not, label %png_do_gamma.exit, label %.lr.ph250.i212.epil.preheader

.lr.ph250.i212.epil.preheader:                    ; preds = %png_do_gamma.exit.loopexit684.unr-lcssa.a, %.lr.ph250.i212.preheader
  %.2249.i.epil.init = phi ptr [ %i.bfr, %.lr.ph250.i212.preheader ], [ %i.bkm, %png_do_gamma.exit.loopexit684.unr-lcssa.a ] ; 4 uses
  %lcmp.mod782 = trunc i32 %i.bfy to i1
  tail call void @llvm.assume(i1 %lcmp.mod782)
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

png_do_gamma.exit.loopexit686.unr-lcssa.a:        ; preds = %.lr.ph244.i211
  %lcmp.mod775.not = icmp eq i32 %xtraiter773, 0
  br i1 %lcmp.mod775.not, label %png_do_gamma.exit, label %.lr.ph244.i211.epil.preheader

.lr.ph244.i211.epil.preheader:                    ; preds = %png_do_gamma.exit.loopexit686.unr-lcssa.a, %.lr.ph244.i211.preheader
  %.4243.i.epil.init = phi ptr [ %i.bfr, %.lr.ph244.i211.preheader ], [ %i.bne, %png_do_gamma.exit.loopexit686.unr-lcssa.a ]
  %lcmp.mod776 = icmp ne i32 %xtraiter773, 0
  tail call void @llvm.assume(i1 %lcmp.mod776)
  br label %.lr.ph244.i211.epil

.lr.ph244.i211.epil:                              ; preds = %.lr.ph244.i211.epil, %.lr.ph244.i211.epil.preheader
  %.4243.i.epil = phi ptr [ %i.bva, %.lr.ph244.i211.epil ], [ %.4243.i.epil.init, %.lr.ph244.i211.epil.preheader ] ; 3 uses
  %epil.iter774 = phi i32 [ %epil.iter774.next, %.lr.ph244.i211.epil ], [ 0, %.lr.ph244.i211.epil.preheader ]
  %i.buw = load i8, ptr %.4243.i.epil, align 1, !tbaa !26, !noalias !319
  %i.bux = zext i8 %i.buw to i64
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bft, i64 %i.bux
  %i.buz = load i8, ptr %i.buy, align 1, !tbaa !26, !noalias !319
  store i8 %i.buz, ptr %.4243.i.epil, align 1, !tbaa !26, !noalias !319
  %i.bva = getelementptr inbounds nuw i8, ptr %.4243.i.epil, i64 2
end_hunk_0
