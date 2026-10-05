Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe?download=true
inline.NumInlined: 74
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@cli_scanpe:bb.a
  %.not2659 = icmp eq i32 %i.bdf, 0               ; 2 uses
  br i1 %.not2658, label %bb.pr, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  br i1 %.not2659, label %bb.po, label %bb.pq

bb.po:                                            ; preds = %bb.pn
  %i.bdg = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.bdh = call i32 @cli_unlink(ptr noundef %i.bdg) #22
  %.not2662 = icmp eq i32 %i.bdh, 0
  br i1 %.not2662, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.bdi = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.bdi) #22
  br label %.thread2995

bb.pq:                                            ; preds = %bb.po, %bb.pn
  %i.bdj = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.bdj) #22
  br label %.thread2995

bb.pr:                                            ; preds = %bb.pm
  br i1 %.not2659, label %bb.ps, label %bb.pu

bb.ps:                                            ; preds = %bb.pr
  %i.bdk = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.bdl = call i32 @cli_unlink(ptr noundef %i.bdk) #22
  %.not2660 = icmp eq i32 %i.bdl, 0
  br i1 %.not2660, label %bb.pu, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.bdm = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.bdm) #22
  br label %.thread2995

bb.pu:                                            ; preds = %bb.ps, %bb.pr
  %i.bdn = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.bdn) #22
  br label %.thread2995

bb.pv:                                            ; preds = %bb.pl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.72) #22
  %i.bdo = call i32 @close(i32 noundef %i.bch) #22 ; 0 uses
  %i.bdp = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.bdq = call i32 @cli_unlink(ptr noundef %i.bdp) #22
  %.not2657 = icmp eq i32 %i.bdq, 0
  br i1 %.not2657, label %bb.px, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.bdr = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.bdr) #22
  call void @free(ptr noundef nonnull %i.bai) #22
  br label %.thread2995

bb.px:                                            ; preds = %bb.pv
  %i.bds = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.bds) #22
  br label %.sink.split3693

bb.py:                                            ; preds = %bb.pl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.73) #22
  %i.bdt = call i32 @close(i32 noundef %i.bch) #22 ; 0 uses
  %i.bdu = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.bdv = call i32 @cli_unlink(ptr noundef %i.bdu) #22
  %.not2663 = icmp eq i32 %i.bdv, 0
  br i1 %.not2663, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.bdw = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.bdw) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bbn, ptr noundef nonnull %i.bai, i32 noundef 0)
  br label %.thread2995

bb.qa:                                            ; preds = %bb.py
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bbn, ptr noundef nonnull %i.bai, i32 noundef 0)
  %i.bdx = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.bdx) #22
  br label %bb.qb

bb.qb:                                            ; preds = %bb.od, %bb.oc, %bb.ob, %.loopexit, %bb.oe, %bb.oh, %bb.oj, %.thread3047, %bb.ox, %bb.qa
  %i.bdy = load ptr, ptr %i.kx, align 8, !tbaa !58
  %i.bdz = load i32, ptr %i.bdy, align 4, !tbaa !60
  %i.bea = and i32 %i.bdz, 32
  %.not2665 = icmp eq i32 %i.bea, 0
  br i1 %.not2665, label %.critedge129, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.beb = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bec = add i32 %.622202992, 1                 ; 2 uses
  %i.bed = zext i32 %i.bec to i64                 ; 15 uses
  %i.bee = getelementptr inbounds nuw [36 x i8], ptr %i.beb, i64 %i.bed ; 2 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 12
  %i.beg = load i32, ptr %i.bef, align 4, !tbaa !13 ; 16 uses
  %i.beh = zext i32 %.622202992 to i64            ; 11 uses
  %i.bei = getelementptr inbounds nuw [36 x i8], ptr %i.beb, i64 %i.beh
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 4
  %i.bek = load i32, ptr %i.bej, align 4, !tbaa !61
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bee, i64 4
  %i.bem = load i32, ptr %i.bel, align 4, !tbaa !61
  %i.ben = add i32 %i.bem, %i.bek                 ; 2 uses
  store i32 %i.ben, ptr %i.i, align 4, !tbaa !16
  %i.beo = call i32 @llvm.umax.i32(i32 %i.ben, i32 %i.beg)
  %i.bep = zext i32 %i.beo to i64
  %i.beq = call i32 @cli_checklimits(ptr noundef nonnull @.str.81, ptr noundef nonnull %0, i64 noundef %i.bep, i64 noundef 0, i64 noundef 0) #22
  %.not2666 = icmp eq i32 %i.beq, 0
  br i1 %.not2666, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.qe:                                            ; preds = %bb.qc
  %i.ber = icmp ult i32 %i.beg, 26
  %.pre3433 = load i32, ptr %i.i, align 4, !tbaa !16 ; 3 uses
  br i1 %i.ber, label %bb.qg, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.bes = icmp ule i32 %.pre3433, %i.beg
  %i.bet = icmp ugt i32 %.pre3433, 1073741824
  %or.cond133 = or i1 %i.bes, %i.bet
  br i1 %or.cond133, label %bb.qg, label %bb.qh

bb.qg:                                            ; preds = %bb.qf, %bb.qe
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.82, i32 noundef %i.beg, i32 noundef %.pre3433) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.qh:                                            ; preds = %bb.qf
  %i.beu = load ptr, ptr %2, align 8, !tbaa !29
  %i.bev = getelementptr inbounds nuw [36 x i8], ptr %i.beu, i64 %i.bed ; 2 uses
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bev, i64 12
  %i.bex = load i32, ptr %i.bew, align 4, !tbaa !13
  %.not2667 = icmp eq i32 %i.bex, 0
  br i1 %.not2667, label %bb.qj, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bev, i64 8
  %i.bez = load i32, ptr %i.bey, align 4, !tbaa !15
  %i.bfa = zext i32 %i.bez to i64
  %i.bfb = zext i32 %i.beg to i64
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.bfd = load ptr, ptr %i.bfc, align 8, !tbaa !38
  %i.bfe = call ptr %i.bfd(ptr noundef %i.ac, i64 noundef range(i64 0, 8589934855) %i.bfa, i64 noundef %i.bfb, i32 noundef 0) #22, !inline_history !0 ; 11 uses
  %.not2668 = icmp eq ptr %i.bfe, null
  br i1 %.not2668, label %bb.qj, label %bb.qk

bb.qj:                                            ; preds = %bb.qi, %bb.qh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.83, i32 noundef %i.bec) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.qk:                                            ; preds = %bb.qi
  %i.bff = load i32, ptr %i.i, align 4, !tbaa !16
  %i.bfg = add i32 %i.bff, 8192
  %i.bfh = zext i32 %i.bfg to i64
  %i.bfi = call ptr @cli_max_calloc(i64 noundef %i.bfh, i64 noundef 1) #22 ; 13 uses
  %i.bfj = icmp eq ptr %i.bfi, null
  br i1 %i.bfj, label %bb.ql, label %bb.qm

bb.ql:                                            ; preds = %bb.qk
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.qm:                                            ; preds = %bb.qk
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.f, i64 105 ; 3 uses
  %i.bfl = call ptr @cli_memstr(ptr noundef nonnull @.str.84, i64 noundef 24, ptr noundef nonnull %i.bfk, i64 noundef 13) #22
  %.not2669 = icmp eq ptr %i.bfl, null
  br i1 %.not2669, label %bb.qn, label %bb.qs

bb.qn:                                            ; preds = %bb.qm
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.f, i64 113 ; 3 uses
  %i.bfn = call ptr @cli_memstr(ptr noundef nonnull @.str.84, i64 noundef 24, ptr noundef nonnull %i.bfm, i64 noundef 13) #22
  %.not2670 = icmp eq ptr %i.bfn, null
  br i1 %.not2670, label %bb.qo, label %bb.qs

bb.qo:                                            ; preds = %bb.qn
  %i.bfo = call ptr @cli_memstr(ptr noundef nonnull @.str.86, i64 noundef 24, ptr noundef nonnull %i.bfk, i64 noundef 13) #22
  %.not2671 = icmp eq ptr %i.bfo, null
  br i1 %.not2671, label %bb.qp, label %bb.qs

bb.qp:                                            ; preds = %bb.qo
  %i.bfp = call ptr @cli_memstr(ptr noundef nonnull @.str.86, i64 noundef 24, ptr noundef nonnull %i.bfm, i64 noundef 13) #22
  %.not2672 = icmp eq ptr %i.bfp, null
  br i1 %.not2672, label %bb.qq, label %bb.qs

bb.qq:                                            ; preds = %bb.qp
  %i.bfq = call ptr @cli_memstr(ptr noundef nonnull @.str.88, i64 noundef 24, ptr noundef nonnull %i.bfk, i64 noundef 13) #22
  %.not2673 = icmp eq ptr %i.bfq, null
  br i1 %.not2673, label %bb.qr, label %bb.qs

bb.qr:                                            ; preds = %bb.qq
  %i.bfr = call ptr @cli_memstr(ptr noundef nonnull @.str.88, i64 noundef 24, ptr noundef nonnull %i.bfm, i64 noundef 13) #22
  %.not2674 = icmp eq ptr %i.bfr, null
  br i1 %.not2674, label %.thread3655, label %bb.qs

bb.qs:                                            ; preds = %bb.qq, %bb.qr, %bb.qo, %bb.qp, %bb.qm, %bb.qn
  %.str.85.sink = phi ptr [ @.str.87, %bb.qo ], [ @.str.85, %bb.qm ], [ @.str.85, %bb.qn ], [ @.str.87, %bb.qp ], [ @.str.89, %bb.qr ], [ @.str.89, %bb.qq ]
  %.02178.ph = phi ptr [ @upx_inflate2d, %bb.qo ], [ @upx_inflate2b, %bb.qm ], [ @upx_inflate2b, %bb.qn ], [ @upx_inflate2d, %bb.qp ], [ @upx_inflate2e, %bb.qr ], [ @upx_inflate2e, %bb.qq ] ; 4 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.85.sink) #22
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bft = load i32, ptr %i.bfs, align 2, !tbaa !39
  %i.bfu = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.bfv = load i32, ptr %i.bfu, align 4, !tbaa !39
  %i.bfw = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bfx = getelementptr inbounds nuw [36 x i8], ptr %i.bfw, i64 %i.bed
  %i.bfy = load i32, ptr %i.bfx, align 4, !tbaa !14 ; 2 uses
  %i.bfz = add i32 %i.bfv, %i.bfy
  %i.bga = sub i32 %i.bft, %i.bfz                 ; 4 uses
  %i.bgb = load i8, ptr %i.aji, align 1, !tbaa !39
  %i.bgc = icmp ne i8 %i.bgb, -66
  %i.bgd = add i32 %i.bga, -4096
  %i.bge = icmp ult i32 %i.bgd, -4095
  %i.bgf = icmp ugt i32 %i.bga, %i.beg
  %i.bgg = or i1 %i.bgf, %i.bge
  %or.cond2920 = select i1 %i.bgc, i1 true, i1 %i.bgg
  br i1 %or.cond2920, label %bb.qu, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.90, i32 noundef %i.bga) #22
  %.pre3431 = load ptr, ptr %2, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [36 x i8], ptr %.pre3431, i64 %i.bed
  %.pre3432 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !14
  br label %bb.qu

bb.qu:                                            ; preds = %bb.qs, %bb.qt
  %i.bgh = phi i32 [ %.pre3432, %bb.qt ], [ %i.bfy, %bb.qs ]
  %i.bgi = phi ptr [ %.pre3431, %bb.qt ], [ %i.bfw, %bb.qs ]
  %.02094 = phi i32 [ %i.bga, %bb.qt ], [ 0, %bb.qs ] ; 4 uses
  %i.bgj = zext nneg i32 %.02094 to i64
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bfe, i64 %i.bgj
  %i.bgl = sub i32 %i.beg, %.02094
  %i.bgm = getelementptr inbounds nuw [36 x i8], ptr %i.bgi, i64 %i.beh
  %i.bgn = load i32, ptr %i.bgm, align 4, !tbaa !14
  %i.bgo = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bgp = load i32, ptr %i.bgo, align 8, !tbaa !95
  %i.bgq = sub i32 %i.bgp, %.02094
  %i.bgr = call i32 %.02178.ph(ptr noundef nonnull %i.bgk, i32 noundef %i.bgl, ptr noundef nonnull %i.bfi, ptr noundef nonnull %i.i, i32 noundef %i.bgn, i32 noundef %i.bgh, i32 noundef %i.bgq) #22, !callees !135
  %i.bgs = icmp sgt i32 %i.bgr, -1
  br i1 %i.bgs, label %.thread3089.sink.split, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %.not2676 = icmp eq i32 %.02094, 0
  br i1 %.not2676, label %bb.qx, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.bgt = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bgu = getelementptr inbounds nuw [36 x i8], ptr %i.bgt, i64 %i.beh
  %i.bgv = load i32, ptr %i.bgu, align 4, !tbaa !14
  %i.bgw = getelementptr inbounds nuw [36 x i8], ptr %i.bgt, i64 %i.bed
  %i.bgx = load i32, ptr %i.bgw, align 4, !tbaa !14
  %i.bgy = load i32, ptr %i.bgo, align 8, !tbaa !95
  %i.bgz = call i32 %.02178.ph(ptr noundef nonnull %i.bfe, i32 noundef %i.beg, ptr noundef nonnull %i.bfi, ptr noundef nonnull %i.i, i32 noundef %i.bgv, i32 noundef %i.bgx, i32 noundef %i.bgy) #22, !callees !135
  %i.bha = icmp sgt i32 %i.bgz, -1
  br i1 %i.bha, label %.thread3089.sink.split, label %bb.qx

bb.qx:                                            ; preds = %bb.qw, %bb.qv
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.92) #22
  %.not3153 = icmp eq ptr %.02178.ph, @upx_inflate2b
  br i1 %.not3153, label %bb.qz, label %.thread3655

.thread3655:                                      ; preds = %bb.qr, %bb.qx
  %.0217830713662 = phi ptr [ %.02178.ph, %bb.qx ], [ null, %bb.qr ]
  %i.bhb = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bhc = getelementptr inbounds nuw [36 x i8], ptr %i.bhb, i64 %i.beh
  %i.bhd = load i32, ptr %i.bhc, align 4, !tbaa !14
  %i.bhe = getelementptr inbounds nuw [36 x i8], ptr %i.bhb, i64 %i.bed
  %i.bhf = load i32, ptr %i.bhe, align 4, !tbaa !14
  %i.bhg = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bhh = load i32, ptr %i.bhg, align 8, !tbaa !95
  %i.bhi = call i32 @upx_inflate2b(ptr noundef nonnull %i.bfe, i32 noundef %i.beg, ptr noundef nonnull %i.bfi, ptr noundef nonnull %i.i, i32 noundef %i.bhd, i32 noundef %i.bhf, i32 noundef %i.bhh) #22
  %i.bhj = icmp eq i32 %i.bhi, -1
  br i1 %i.bhj, label %bb.qy, label %.thread3089.sink.split

bb.qy:                                            ; preds = %.thread3655
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bfe, i64 21
  %i.bhl = add nsw i32 %i.beg, -21
  %i.bhm = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bhn = getelementptr inbounds nuw [36 x i8], ptr %i.bhm, i64 %i.beh
  %i.bho = load i32, ptr %i.bhn, align 4, !tbaa !14
  %i.bhp = getelementptr inbounds nuw [36 x i8], ptr %i.bhm, i64 %i.bed
  %i.bhq = load i32, ptr %i.bhp, align 4, !tbaa !14
  %i.bhr = load i32, ptr %i.bhg, align 8, !tbaa !95
  %i.bhs = add i32 %i.bhr, -21
  %i.bht = call i32 @upx_inflate2b(ptr noundef nonnull %i.bhk, i32 noundef %i.bhl, ptr noundef nonnull %i.bfi, ptr noundef nonnull %i.i, i32 noundef %i.bho, i32 noundef %i.bhq, i32 noundef %i.bhs) #22
  %i.bhu = icmp eq i32 %i.bht, -1
  br i1 %i.bhu, label %.split, label %.thread3089.sink.split

.split:                                           ; preds = %bb.qy
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.93) #22
  br label %bb.qz

bb.qz:                                            ; preds = %.split, %bb.qx
  %.0217830713663 = phi ptr [ %.0217830713662, %.split ], [ @upx_inflate2b, %bb.qx ] ; 2 uses
  %.not3154 = icmp eq ptr %.0217830713663, @upx_inflate2d
  br i1 %.not3154, label %bb.rc, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.bhv = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bhw = getelementptr inbounds nuw [36 x i8], ptr %i.bhv, i64 %i.beh
  %i.bhx = load i32, ptr %i.bhw, align 4, !tbaa !14
  %i.bhy = getelementptr inbounds nuw [36 x i8], ptr %i.bhv, i64 %i.bed
  %i.bhz = load i32, ptr %i.bhy, align 4, !tbaa !14
  %i.bia = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bib = load i32, ptr %i.bia, align 8, !tbaa !95
  %i.bic = call i32 @upx_inflate2d(ptr noundef nonnull %i.bfe, i32 noundef %i.beg, ptr noundef nonnull %i.bfi, ptr noundef nonnull %i.i, i32 noundef %i.bhx, i32 noundef %i.bhz, i32 noundef %i.bib) #22
  %i.bid = icmp eq i32 %i.bic, -1
  br i1 %i.bid, label %bb.rb, label %.thread3089.sink.split

bb.rb:                                            ; preds = %bb.ra
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bfe, i64 21
  %i.bif = add nsw i32 %i.beg, -21
  %i.big = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bih = getelementptr inbounds nuw [36 x i8], ptr %i.big, i64 %i.beh
  %i.bii = load i32, ptr %i.bih, align 4, !tbaa !14
  %i.bij = getelementptr inbounds nuw [36 x i8], ptr %i.big, i64 %i.bed
  %i.bik = load i32, ptr %i.bij, align 4, !tbaa !14
  %i.bil = load i32, ptr %i.bia, align 8, !tbaa !95
  %i.bim = add i32 %i.bil, -21
  %i.bin = call i32 @upx_inflate2d(ptr noundef nonnull %i.bie, i32 noundef %i.bif, ptr noundef nonnull %i.bfi, ptr noundef nonnull %i.i, i32 noundef %i.bii, i32 noundef %i.bik, i32 noundef %i.bim) #22
  %i.bio = icmp eq i32 %i.bin, -1
  br i1 %i.bio, label %.split3657, label %.thread3089.sink.split

.split3657:                                       ; preds = %bb.rb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.95) #22
  br label %bb.rc

bb.rc:                                            ; preds = %.split3657, %bb.qz
  %.not3155 = icmp eq ptr %.0217830713663, @upx_inflate2e
  br i1 %.not3155, label %.thread3089, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  %i.bip = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.biq = getelementptr inbounds nuw [36 x i8], ptr %i.bip, i64 %i.beh
  %i.bir = load i32, ptr %i.biq, align 4, !tbaa !14
  %i.bis = getelementptr inbounds nuw [36 x i8], ptr %i.bip, i64 %i.bed
  %i.bit = load i32, ptr %i.bis, align 4, !tbaa !14
  %i.biu = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.biv = load i32, ptr %i.biu, align 8, !tbaa !95
  %i.biw = call i32 @upx_inflate2e(ptr noundef nonnull %i.bfe, i32 noundef %i.beg, ptr noundef nonnull %i.bfi, ptr noundef nonnull %i.i, i32 noundef %i.bir, i32 noundef %i.bit, i32 noundef %i.biv) #22
  %i.bix = icmp eq i32 %i.biw, -1
  br i1 %i.bix, label %bb.re, label %bb.rf

bb.re:                                            ; preds = %bb.rd
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bfe, i64 21
  %i.biz = add nsw i32 %i.beg, -21
  %i.bja = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bjb = getelementptr inbounds nuw [36 x i8], ptr %i.bja, i64 %i.beh
  %i.bjc = load i32, ptr %i.bjb, align 4, !tbaa !14
  %i.bjd = getelementptr inbounds nuw [36 x i8], ptr %i.bja, i64 %i.bed
  %i.bje = load i32, ptr %i.bjd, align 4, !tbaa !14
  %i.bjf = load i32, ptr %i.biu, align 8, !tbaa !95
  %i.bjg = add i32 %i.bjf, -21
  %i.bjh = call i32 @upx_inflate2e(ptr noundef nonnull %i.biy, i32 noundef %i.biz, ptr noundef nonnull %i.bfi, ptr noundef nonnull %i.i, i32 noundef %i.bjc, i32 noundef %i.bje, i32 noundef %i.bjg) #22
  %i.bji = icmp eq i32 %i.bjh, -1
  br i1 %i.bji, label %.thread3089.sink.split, label %bb.rf

bb.rf:                                            ; preds = %bb.re, %bb.rd
  br label %.thread3089.sink.split

.thread3089.sink.split:                           ; preds = %bb.re, %bb.ra, %bb.rb, %.thread3655, %bb.qy, %bb.qw, %bb.qu, %bb.rf
  %.str.91.sink = phi ptr [ @.str.98, %bb.rf ], [ @.str.91, %bb.qw ], [ @.str.94, %.thread3655 ], [ @.str.96, %bb.ra ], [ @.str.91, %bb.qu ], [ @.str.94, %bb.qy ], [ @.str.96, %bb.rb ], [ @.str.97, %bb.re ]
  %.132197.ph = phi i32 [ 1, %bb.rf ], [ 1, %bb.qw ], [ 1, %.thread3655 ], [ 1, %bb.ra ], [ 1, %bb.qu ], [ 1, %bb.qy ], [ 1, %bb.rb ], [ 0, %bb.re ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.91.sink) #22
  br label %.thread3089

.thread3089:                                      ; preds = %.thread3089.sink.split, %bb.rc
  %.132197 = phi i32 [ 0, %bb.rc ], [ %.132197.ph, %.thread3089.sink.split ] ; 4 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.f, i64 47
  %i.bjk = call ptr @cli_memstr(ptr noundef nonnull @.str.99, i64 noundef 20, ptr noundef nonnull %i.bjj, i64 noundef 20) #22
  %.not2678 = icmp eq ptr %i.bjk, null
  br i1 %.not2678, label %bb.rl, label %bb.rg

bb.rg:                                            ; preds = %.thread3089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  %i.bjm = load i32, ptr %i.bjl, align 1, !tbaa !39 ; 2 uses
  store i32 %i.bjm, ptr %i.m, align 4, !tbaa !16
  %i.bjn = load i8, ptr %i.f, align 16
  %i.bjo = icmp eq i8 %i.bjn, 96
  %i.bjp = load i8, ptr %i.aji, align 1
  %i.bjq = icmp eq i8 %i.bjp, -66
  %or.cond151 = select i1 %i.bjo, i1 %i.bjq, i1 false
  br i1 %or.cond151, label %bb.rh, label %bb.ri

bb.rh:                                            ; preds = %bb.rg
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bjs = load i32, ptr %i.bjr, align 2, !tbaa !39
  %i.bjt = load ptr, ptr %2, align 8, !tbaa !29
  %i.bju = getelementptr inbounds nuw [36 x i8], ptr %i.bjt, i64 %i.bed
  %i.bjv = load i32, ptr %i.bju, align 4, !tbaa !14
  %i.bjw = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.bjx = load i32, ptr %i.bjw, align 4, !tbaa !39
  %i.bjy = add i32 %i.bjv, %i.bjx
  %i.bjz = sub i32 %i.bjs, %i.bjy
  %.not2683 = icmp eq i32 %i.bjz, 21
  %spec.store.select = select i1 %.not2683, i32 21, i32 0
  br label %bb.ri

bb.ri:                                            ; preds = %bb.rh, %bb.rg
  %.02093 = phi i32 [ %spec.store.select, %bb.rh ], [ 0, %bb.rg ] ; 2 uses
  %i.bka = load i32, ptr %i.i, align 4, !tbaa !16
  %.not2684 = icmp ugt i32 %i.bjm, %i.bka
  br i1 %.not2684, label %bb.rk, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.bkb = zext nneg i32 %.02093 to i64
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bfe, i64 %i.bkb
  %i.bkd = sub nuw i32 %i.beg, %.02093
  %i.bke = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bkf = getelementptr inbounds nuw [36 x i8], ptr %i.bke, i64 %i.beh
  %i.bkg = load i32, ptr %i.bkf, align 4, !tbaa !14
  %i.bkh = getelementptr inbounds nuw [36 x i8], ptr %i.bke, i64 %i.bed
  %i.bki = load i32, ptr %i.bkh, align 4, !tbaa !14
  %i.bkj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bkk = load i32, ptr %i.bkj, align 8, !tbaa !95
  %i.bkl = call i32 @upx_inflatelzma(ptr noundef nonnull %i.bkc, i32 noundef %i.bkd, ptr noundef nonnull %i.bfi, ptr noundef nonnull %i.m, i32 noundef %i.bkg, i32 noundef %i.bki, i32 noundef %i.bkk, i32 noundef 131075) #22
  %i.bkm = icmp sgt i32 %i.bkl, -1
  %i.bkn = zext i1 %i.bkm to i32
  br label %bb.rk

bb.rk:                                            ; preds = %bb.rj, %bb.ri
  %.142198 = phi i32 [ %i.bkn, %bb.rj ], [ %.132197, %bb.ri ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  br label %bb.rs

bb.rl:                                            ; preds = %.thread3089
  %i.bko = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  %i.bkp = call ptr @cli_memstr(ptr noundef nonnull @.str.100, i64 noundef 8, ptr noundef nonnull %i.bko, i64 noundef 8) #22
  %.not2679 = icmp eq ptr %i.bkp, null
  br i1 %.not2679, label %bb.rs, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.f, i64 69
  %i.bkr = call ptr @cli_memstr(ptr noundef nonnull @.str.101, i64 noundef 8, ptr noundef nonnull %i.bkq, i64 noundef 8) #22
  %.not2680 = icmp eq ptr %i.bkr, null
  br i1 %.not2680, label %bb.rs, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #22
  %i.bks = getelementptr inbounds nuw i8, ptr %i.f, i64 43
  %i.bkt = load i32, ptr %i.bks, align 1, !tbaa !39 ; 2 uses
  store i32 %i.bkt, ptr %i.n, align 4, !tbaa !16
  %i.bku = getelementptr inbounds nuw i8, ptr %i.f, i64 65
  %i.bkv = load i32, ptr %i.bku, align 1, !tbaa !39
  %i.bkw = load i8, ptr %i.f, align 16
  %i.bkx = icmp eq i8 %i.bkw, 96
  %i.bky = load i8, ptr %i.aji, align 1
  %i.bkz = icmp eq i8 %i.bky, -66
  %or.cond159 = select i1 %i.bkx, i1 %i.bkz, i1 false
  br i1 %or.cond159, label %bb.ro, label %bb.rp

bb.ro:                                            ; preds = %bb.rn
  %i.bla = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.blb = load i32, ptr %i.bla, align 2, !tbaa !39
  %i.blc = load ptr, ptr %2, align 8, !tbaa !29
  %i.bld = getelementptr inbounds nuw [36 x i8], ptr %i.blc, i64 %i.bed
  %i.ble = load i32, ptr %i.bld, align 4, !tbaa !14
  %i.blf = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.blg = load i32, ptr %i.blf, align 4, !tbaa !39
  %i.blh = add i32 %i.ble, %i.blg
  %i.bli = sub i32 %i.blb, %i.blh
  %.not2681 = icmp eq i32 %i.bli, 21
  %spec.store.select160 = select i1 %.not2681, i32 21, i32 0
  br label %bb.rp

bb.rp:                                            ; preds = %bb.ro, %bb.rn
  %.02092 = phi i32 [ %spec.store.select160, %bb.ro ], [ 0, %bb.rn ] ; 2 uses
  %i.blj = load i32, ptr %i.i, align 4, !tbaa !16
  %.not2682 = icmp ugt i32 %i.bkt, %i.blj
  br i1 %.not2682, label %bb.rr, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.blk = zext nneg i32 %.02092 to i64
  %i.bll = getelementptr inbounds nuw i8, ptr %i.bfe, i64 %i.blk
  %i.blm = sub nuw i32 %i.beg, %.02092
  %i.bln = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.blo = getelementptr inbounds nuw [36 x i8], ptr %i.bln, i64 %i.beh
  %i.blp = load i32, ptr %i.blo, align 4, !tbaa !14
  %i.blq = getelementptr inbounds nuw [36 x i8], ptr %i.bln, i64 %i.bed
  %i.blr = load i32, ptr %i.blq, align 4, !tbaa !14
  %i.bls = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.blt = load i32, ptr %i.bls, align 8, !tbaa !95
  %i.blu = call i32 @upx_inflatelzma(ptr noundef nonnull %i.bll, i32 noundef %i.blm, ptr noundef nonnull %i.bfi, ptr noundef nonnull %i.n, i32 noundef %i.blp, i32 noundef %i.blr, i32 noundef %i.blt, i32 noundef %i.bkv) #22
  %i.blv = icmp sgt i32 %i.blu, -1
  %i.blw = zext i1 %i.blv to i32
  br label %bb.rr

bb.rr:                                            ; preds = %bb.rq, %bb.rp
  %.152199 = phi i32 [ %i.blw, %bb.rq ], [ %.132197, %bb.rp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rl, %bb.rm, %bb.rr, %bb.rk
  %.162200 = phi i32 [ %.142198, %bb.rk ], [ %.152199, %bb.rr ], [ %.132197, %bb.rm ], [ %.132197, %bb.rl ]
  %.not2685 = icmp eq i32 %.162200, 0
  br i1 %.not2685, label %bb.rt, label %bb.ru

bb.rt:                                            ; preds = %bb.rs
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.102) #22
  call void @free(ptr noundef nonnull %i.bfi) #22
  br label %.critedge129

.sink.split3693:                                  ; preds = %bb.ma, %bb.px, %bb.nx
  %.sink = phi ptr [ %i.arz, %bb.nx ], [ %i.bai, %bb.px ], [ %i.aol, %bb.ma ]
  %.82175.ph.ph = phi ptr [ %i.auk, %bb.nx ], [ %i.bbn, %bb.px ], [ %i.amw, %bb.ma ]
  call void @free(ptr noundef %.sink) #22
  br label %bb.ru

bb.ru:                                            ; preds = %.sink.split3693, %bb.rs
  %.82175.ph = phi ptr [ %i.bfi, %bb.rs ], [ %.82175.ph.ph, %.sink.split3693 ] ; 5 uses
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.blx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bly = load ptr, ptr %i.blx, align 8, !tbaa !127
  %i.blz = call ptr @cli_gentemp(ptr noundef %i.bly) #22 ; 3 uses
  store ptr %i.blz, ptr %i.g, align 8, !tbaa !82
  %.not2820 = icmp eq ptr %i.blz, null
  br i1 %.not2820, label %bb.rv, label %bb.rw

bb.rv:                                            ; preds = %bb.ru
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %.82175.ph, i32 noundef 0)
  br label %.thread2995

bb.rw:                                            ; preds = %bb.ru
  %i.bma = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.blz, i32 noundef 578, i32 noundef 384) #22 ; 7 uses
  %i.bmb = icmp slt i32 %i.bma, 0
  br i1 %i.bmb, label %bb.rx, label %bb.ry

bb.rx:                                            ; preds = %bb.rw
  %i.bmc = load ptr, ptr %i.g, align 8, !tbaa !82
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.103, ptr noundef %i.bmc) #22
  %i.bmd = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.bmd) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %.82175.ph, i32 noundef 0)
  br label %.thread2995

bb.ry:                                            ; preds = %bb.rw
  %.not2821 = icmp eq ptr %.02164, null
  br i1 %.not2821, label %bb.sa, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.bme = call i32 @cli_jsonstr(ptr noundef nonnull %.02164, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.104) #22 ; 0 uses
  br label %bb.sa

bb.sa:                                            ; preds = %bb.rz, %bb.ry
  %i.bmf = load i32, ptr %i.i, align 4, !tbaa !16
  %i.bmg = zext i32 %i.bmf to i64
  %i.bmh = call i64 @write(i32 noundef %i.bma, ptr noundef nonnull %.82175.ph, i64 noundef %i.bmg) #22
  %i.bmi = trunc i64 %i.bmh to i32
  %i.bmj = load i32, ptr %i.i, align 4, !tbaa !16 ; 2 uses
  %.not2822 = icmp eq i32 %i.bmj, %i.bmi
  br i1 %.not2822, label %bb.sc, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.105, i32 noundef %i.bmj) #22
  %i.bmk = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.bmk) #22
  call void @free(ptr noundef nonnull %.82175.ph) #22
  %i.bml = call i32 @close(i32 noundef %i.bma) #22 ; 0 uses
  br label %.thread2995

bb.sc:                                            ; preds = %bb.sa
  call void @free(ptr noundef nonnull %.82175.ph) #22
  %i.bmm = call i64 @lseek(i32 noundef %i.bma, i64 noundef 0, i32 noundef 0) #22
  %i.bmn = icmp eq i64 %i.bmm, -1
  br i1 %i.bmn, label %bb.sd, label %bb.sh
end_hunk_0
begin_hunk_1_@cli_parseres_special:bb.a
  %i.cc = load i16, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.cd = load i32, ptr %i.d, align 8, !tbaa !31
  %i.ce = icmp ult i32 %i.ca, %i.cd
  br i1 %i.ce, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cf = zext i32 %i.ca to i64
  %.not36.i134.not = icmp samesign ugt i64 %4, %i.cf ; 2 uses
  %.48.i136 = select i1 %.not36.i134.not, i32 %i.ca, i32 0
  br label %cli_rawaddr.exit137

bb.aa:                                            ; preds = %bb.y
  %i.cg = icmp eq i16 %i.cc, 0
  br i1 %i.cg, label %cli_rawaddr.exit137.thread, label %.lr.ph.preheader.i125

.lr.ph.preheader.i125:                            ; preds = %bb.aa
  %i.ch = zext i16 %i.cc to i64
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %bb.ac, %.lr.ph.preheader.i125
  %indvars.iv.i127 = phi i64 [ %i.ch, %.lr.ph.preheader.i125 ], [ %indvars.iv.next.i128, %bb.ac ] ; 2 uses
  %indvars.iv.next.i128 = add nsw i64 %indvars.iv.i127, -1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [36 x i8], ptr %i.cb, i64 %indvars.iv.next.i128 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !13 ; 2 uses
  %.not.i129 = icmp eq i32 %i.ck, 0
  br i1 %.not.i129, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i126
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !14 ; 2 uses
  %.not34.i130 = icmp ule i32 %i.cl, %i.ca
  %i.cm = sub i32 %i.ca, %i.cl                    ; 2 uses
  %i.cn = icmp ugt i32 %i.ck, %i.cm
  %or.cond.i131 = and i1 %.not34.i130, %i.cn
  br i1 %or.cond.i131, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i126
  %i.co = icmp samesign ult i64 %indvars.iv.i127, 2
  br i1 %i.co, label %cli_rawaddr.exit137.thread, label %.lr.ph.i126

bb.ad:                                            ; preds = %bb.ab
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !15
  %i.cr = add i32 %i.cq, %i.cm
  br label %cli_rawaddr.exit137

cli_rawaddr.exit137:                              ; preds = %bb.z, %bb.ad
  %.sink.i132 = phi i1 [ true, %bb.ad ], [ %.not36.i134.not, %bb.z ]
  %.030.i133 = phi i32 [ %i.cr, %bb.ad ], [ %.48.i136, %bb.z ] ; 4 uses
  %i.cs = icmp ne i32 %i.bz, 0
  %or.cond = select i1 %.sink.i132, i1 %i.cs, i1 false
  br i1 %or.cond, label %bb.ae, label %cli_rawaddr.exit137.thread

bb.ae:                                            ; preds = %cli_rawaddr.exit137
  %i.ct = zext i32 %i.bz to i64                   ; 2 uses
  %.not106 = icmp samesign ugt i64 %4, %i.ct
  %i.cu = add i32 %.030.i133, %i.bz
  %i.cv = zext i32 %i.cu to i64
  %.not107 = icmp samesign ugt i64 %4, %i.cv
  %or.cond111 = select i1 %.not106, i1 %.not107, i1 false
  br i1 %or.cond111, label %bb.af, label %cli_rawaddr.exit137.thread

cli_rawaddr.exit137.thread:                       ; preds = %bb.ac, %bb.aa, %bb.ae, %cli_rawaddr.exit137
  %.030.i133160 = phi i32 [ %.030.i133, %cli_rawaddr.exit137 ], [ %.030.i133, %bb.ae ], [ 0, %bb.aa ], [ 0, %bb.ac ]
  %i.cw = zext i32 %.030.i133160 to i64
  %i.cx = zext i32 %i.bz to i64
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.354, i64 noundef %i.cw, i64 noundef %i.cx) #22
  %i.cy = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.ao, align 4, !tbaa !147
  br label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.da = and i32 %i.ax, 255
  %.not108 = icmp eq i32 %i.da, 9
  br i1 %.not108, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.db = zext i32 %.030.i133 to i64
  %i.dc = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.dd = tail call ptr %i.dc(ptr noundef nonnull %2, i64 noundef range(i64 0, 8589934855) %i.db, i64 noundef %i.ct, i32 noundef 0) #22, !inline_history !0 ; 2 uses
  %.not109 = icmp eq ptr %i.dd, null
  br i1 %.not109, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @cli_detect_swizz_str(ptr noundef nonnull %i.dd, i32 noundef %i.bz, ptr noundef nonnull %8, i32 noundef %.186148) #22
  br label %.thread

bb.ai:                                            ; preds = %bb.m
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.353) #22
  br label %bb.ak

.thread:                                          ; preds = %bb.w, %bb.ag, %bb.ah, %bb.u, %bb.q, %bb.o, %bb.af, %bb.r, %cli_rawaddr.exit137.thread, %cli_rawaddr.exit124, %bb.x, %bb.s
  %.2.ph = phi i32 [ %.186148, %bb.s ], [ %.186148, %bb.x ], [ %.186148, %cli_rawaddr.exit124 ], [ 0, %bb.q ], [ %.186148, %bb.u ], [ %.186148, %cli_rawaddr.exit137.thread ], [ 0, %bb.r ], [ %.186148, %bb.af ], [ 0, %bb.o ], [ %.186148, %bb.ag ], [ %.186148, %bb.ah ], [ %.186148, %bb.w ]
  %i.de = add nuw nsw i32 %.084181, 1             ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.083182, i64 8
  %exitcond.not = icmp eq i32 %i.de, %i.ac
  br i1 %exitcond.not, label %bb.aj, label %bb.m

bb.aj:                                            ; preds = %.thread
  %i.dg = getelementptr i8, ptr %2, i64 16
  %.val.i = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.dh = getelementptr i8, ptr %2, i64 72
  %.val3.i = load i64, ptr %i.dh, align 8, !tbaa !41
  %i.di = ptrtoint ptr %i.an to i64
  %i.dj = ptrtoint ptr %.val.i to i64
  %i.dk = add i64 %.val3.i, %i.dj
  %i.dl = sub i64 %i.di, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !99
  tail call void %i.dn(ptr noundef nonnull %2, i64 noundef %i.dl, i64 noundef range(i64 8, 524281) %i.al) #22, !inline_history !145
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.j, %bb.h, %bb.i, %cli_rawaddr.exit, %bb.g, %bb.aj, %bb.l
  ret void
}

declare i32 @cli_detect_swizz(ptr noundef) local_unnamed_addr #3

declare i32 @cli_jsonbool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cli_checklimits(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @cli_max_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @cli_jsonstr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cli_gentemp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @cli_multifree(ptr noundef captures(none) %0, ...) unnamed_addr #2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  tail call void @free(ptr noundef %0) #22
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.c = load i32, ptr %1, align 16               ; 3 uses
  %i.d = icmp ult i32 %i.c, 41
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 16
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = add nuw nsw i32 %i.c, 8
  store i32 %i.h, ptr %1, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ]
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !103  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.l) #22
  br label %bb.b

bb.g:                                             ; preds = %bb.e
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #7

declare i32 @unmew11(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

declare i32 @cli_magic_scan_desc(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare i32 @cli_unlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i32 @unupack(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @unfsg_200(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #3

declare i32 @unfsg_133(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @upx_inflate2b(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare i32 @upx_inflate2d(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare i32 @upx_inflate2e(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare i32 @upx_inflatelzma(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

declare i32 @petite_inflate2x_1to9(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @unspin(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @evidence_num_alerts(ptr noundef) local_unnamed_addr #3

declare i32 @yc_decrypt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #3

declare i32 @wwunpack(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @unaspack(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @unspack(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cli_bytecode_context_getresult_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 35) i32 @cli_pe_targetinfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @cli_peheader(ptr noundef %0, ptr noundef %1, i32 noundef 4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pe_add_heuristic_property(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %get_pe_property.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @json_object_object_get_ex(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.a) #22
  %.not8.i = icmp eq i32 %i.e, 0
  br i1 %.not8.i, label %bb.c, label %get_pe_property.exit

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @json_object_new_object() #22   ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !54
  %.not9.i = icmp eq ptr %i.f, null
  br i1 %.not9.i, label %get_pe_property.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.h = call i32 @json_object_object_add(ptr noundef %i.g, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.f) #22 ; 0 uses
  br label %get_pe_property.exit

get_pe_property.exit.thread:                      ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.j

get_pe_property.exit:                             ; preds = %bb.b, %bb.d
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %get_pe_property.exit
  %i.j = call i32 @json_object_object_get_ex(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.355, ptr noundef nonnull %i.b) #22
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call ptr @json_object_new_array() #22    ; 3 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !54
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = call i32 @json_object_object_add(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.355, ptr noundef nonnull %i.k) #22 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.m = call ptr @json_object_new_string(ptr noundef %1) #22 ; 2 uses
  %.not11 = icmp eq ptr %i.m, null
  br i1 %.not11, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.o = call i32 @json_object_array_add(ptr noundef %i.n, ptr noundef nonnull %i.m) #22 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %get_pe_property.exit.thread, %bb.h, %bb.f, %get_pe_property.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret void
}

declare ptr @cli_ctime(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @cli_jsonint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @add_section_info(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %get_pe_property.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @json_object_object_get_ex(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.a) #22
  %.not8.i.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i.i, label %bb.c, label %get_pe_property.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @json_object_new_object() #22   ; 3 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !54
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %get_pe_property.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.i = call i32 @json_object_object_add(ptr noundef %i.h, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.g) #22 ; 0 uses
  br label %get_pe_property.exit.i

get_pe_property.exit.thread.i:                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %get_section_json.exit.thread

get_pe_property.exit.i:                           ; preds = %bb.d, %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %get_section_json.exit.thread, label %bb.e

bb.e:                                             ; preds = %get_pe_property.exit.i
  %i.k = call i32 @json_object_object_get_ex(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.363, ptr noundef nonnull %i.b) #22
  %.not7.i = icmp eq i32 %i.k, 0
  br i1 %.not7.i, label %bb.f, label %get_section_json.exit

bb.f:                                             ; preds = %bb.e
  %i.l = call ptr @json_object_new_array() #22    ; 3 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !54
  %.not8.i = icmp eq ptr %i.l, null
  br i1 %.not8.i, label %get_section_json.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = call i32 @json_object_object_add(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.363, ptr noundef nonnull %i.l) #22 ; 0 uses
  br label %get_section_json.exit

get_section_json.exit.thread:                     ; preds = %get_pe_property.exit.i, %bb.f, %get_pe_property.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.x

get_section_json.exit:                            ; preds = %bb.e, %bb.g
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.x, label %bb.h

bb.h:                                             ; preds = %get_section_json.exit
  %i.o = call ptr @json_object_new_object() #22   ; 8 uses
  %.not40 = icmp eq ptr %i.o, null
  br i1 %.not40, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !13
  %i.r = call ptr @json_object_new_int(i32 noundef %i.q) #22 ; 2 uses
  %.not41 = icmp eq ptr %i.r, null
  br i1 %.not41, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.356, ptr noundef nonnull %i.r) #22 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !15
  %i.v = call ptr @json_object_new_int(i32 noundef %i.u) #22 ; 2 uses
  %.not42 = icmp eq ptr %i.v, null
  br i1 %.not42, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.357, ptr noundef nonnull %i.v) #22 ; 0 uses
  %i.x = load i32, ptr %1, align 4, !tbaa !14
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 16, ptr noundef nonnull @.str.358, i32 noundef %i.x) #22 ; 0 uses
  %i.z = call ptr @json_object_new_string(ptr noundef nonnull %i.c) #22 ; 2 uses
end_hunk_1
