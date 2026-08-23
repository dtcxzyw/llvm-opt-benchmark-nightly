Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/lzma_encoder_optimum_normal?download=true
inline.NumInlined: 85
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 20
begin_hunk_0_@lzma_lzma_optimum_normal:bb.a
  %i.aqe = icmp ult i32 %spec.select, 2
  br i1 %i.aqe, label %helper2.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.aqf = call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.ahk) ; 9 uses
  %or.cond.i = or i1 %i.apd, %.2488.i
  br i1 %or.cond.i, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.aqg = add i32 %i.ahk, 1
  %i.aqh = call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.aqg) ; 4 uses
  %i.aqi = icmp ugt i32 %i.aqh, 1
  br i1 %i.aqi, label %.lr.ph663.i, label %lzma_memcmplen.exit562.i.thread

.lr.ph663.i:                                      ; preds = %bb.ch, %bb.ci
  %.017.i556662.i = phi i32 [ %i.aqs, %bb.ci ], [ 1, %bb.ch ] ; 3 uses
  %i.aqj = zext i32 %.017.i556662.i to i64        ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.aqj
  %.val565.i = load i64, ptr %i.aqk, align 1      ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.alr, i64 %i.aqj
  %.val564.i = load i64, ptr %i.aql, align 1      ; 2 uses
  %.not.i559.not.i = icmp eq i64 %.val565.i, %.val564.i
  br i1 %.not.i559.not.i, label %bb.ci, label %.thread615.i

.thread615.i:                                     ; preds = %.lr.ph663.i
  %i.aqm = sub i64 %.val565.i, %.val564.i
  %i.aqn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aqm, i1 true)
  %i.aqo = trunc nuw nsw i64 %i.aqn to i32
  %i.aqp = lshr i32 %i.aqo, 3
  %i.aqq = add i32 %i.aqp, %.017.i556662.i
  %i.aqr = call i32 @llvm.umin.i32(i32 %i.aqq, i32 %i.aqh)
  br label %lzma_memcmplen.exit562.i

bb.ci:                                            ; preds = %.lr.ph663.i
  %i.aqs = add i32 %.017.i556662.i, 8             ; 2 uses
  %i.aqt = icmp ult i32 %i.aqs, %i.aqh
  br i1 %i.aqt, label %.lr.ph663.i, label %lzma_memcmplen.exit562.i

lzma_memcmplen.exit562.i:                         ; preds = %bb.ci, %.thread615.i
  %.2.i558.i = phi i32 [ %i.aqr, %.thread615.i ], [ %i.aqh, %bb.ci ] ; 2 uses
  %i.aqu = add i32 %.2.i558.i, -3                 ; 2 uses
  %i.aqv = icmp ult i32 %i.aqu, -2
  br i1 %i.aqv, label %lzma_memcmplen.exit562.i.thread, label %bb.ck

lzma_memcmplen.exit562.i.thread:                  ; preds = %bb.ch, %lzma_memcmplen.exit562.i
  %i.aqw = phi i32 [ %i.aqu, %lzma_memcmplen.exit562.i ], [ -3, %bb.ch ]
  %.2.i558.i112 = phi i32 [ %.2.i558.i, %lzma_memcmplen.exit562.i ], [ 0, %bb.ch ]
  %i.aqx = icmp ult i32 %.3497.i, 4
  %i.aqy = icmp ult i32 %.3497.i, 10
  %.v537.i = select i1 %i.aqy, i32 -3, i32 -6
  %i.aqz = add i32 %.v537.i, %.3497.i
  %i.ara = select i1 %i.aqx, i32 0, i32 %i.aqz
  %i.arb = add i32 %i.ahp, 1
  %i.arc = and i32 %i.alt, %i.arb
  %i.ard = zext i32 %i.ara to i64                 ; 4 uses
  %i.are = getelementptr inbounds nuw [32 x i8], ptr %i.qa, i64 %i.ard
  %i.arf = zext i32 %i.arc to i64                 ; 3 uses
  %i.arg = getelementptr inbounds nuw [2 x i8], ptr %i.are, i64 %i.arf
  %i.arh = load i16, ptr %i.arg, align 2, !tbaa !47
  %i.ari = lshr i16 %i.arh, 4
  %i.arj = xor i16 %i.ari, 127
  %i.ark = zext nneg i16 %i.arj to i64
  %i.arl = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.ark
  %i.arm = load i8, ptr %i.arl, align 1, !tbaa !48
  %i.arn = zext i8 %i.arm to i32
  %i.aro = getelementptr inbounds nuw [2 x i8], ptr %i.sw, i64 %i.ard
  %i.arp = load i16, ptr %i.aro, align 2, !tbaa !47
  %i.arq = lshr i16 %i.arp, 4
  %i.arr = xor i16 %i.arq, 127
  %i.ars = zext nneg i16 %i.arr to i64
  %i.art = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.ars
  %i.aru = load i8, ptr %i.art, align 1, !tbaa !48
  %i.arv = zext i8 %i.aru to i32
  %i.arw = add i32 %.2.i558.i112, %i.ahl          ; 5 uses
  %i.arx = icmp ult i32 %.047160, %i.arw
  br i1 %i.arx, label %.lr.ph665.preheader.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %lzma_memcmplen.exit562.i.thread
  %.pre763.i = zext i32 %i.arw to i64
  br label %._crit_edge.i

.lr.ph665.preheader.i:                            ; preds = %lzma_memcmplen.exit562.i.thread
  %i.ary = zext i32 %.047160 to i64               ; 4 uses
  %wide.trip.count732.i = zext i32 %i.arw to i64  ; 5 uses
  %i.arz = sub nsw i64 %wide.trip.count732.i, %i.ary
  %xtraiter455 = and i64 %i.arz, 7                ; 2 uses
  %lcmp.mod456.not = icmp eq i64 %xtraiter455, 0
  br i1 %lcmp.mod456.not, label %.lr.ph665.i.prol.loopexit, label %.lr.ph665.i.prol

.lr.ph665.i.prol:                                 ; preds = %.lr.ph665.preheader.i, %.lr.ph665.i.prol
  %indvars.iv729.i.prol = phi i64 [ %indvars.iv.next730.i.prol, %.lr.ph665.i.prol ], [ %i.ary, %.lr.ph665.preheader.i ]
  %prol.iter457 = phi i64 [ %prol.iter457.next, %.lr.ph665.i.prol ], [ 0, %.lr.ph665.preheader.i ]
  %indvars.iv.next730.i.prol = add nuw nsw i64 %indvars.iv729.i.prol, 1 ; 3 uses
  %i.asa = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv.next730.i.prol
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 16
  store i32 1073741824, ptr %i.asb, align 4, !tbaa !77
  %prol.iter457.next = add i64 %prol.iter457, 1   ; 2 uses
  %prol.iter457.cmp.not = icmp eq i64 %prol.iter457.next, %xtraiter455
  br i1 %prol.iter457.cmp.not, label %.lr.ph665.i.prol.loopexit, label %.lr.ph665.i.prol, !llvm.loop !94

.lr.ph665.i.prol.loopexit:                        ; preds = %.lr.ph665.i.prol, %.lr.ph665.preheader.i
  %indvars.iv729.i.unr = phi i64 [ %i.ary, %.lr.ph665.preheader.i ], [ %indvars.iv.next730.i.prol, %.lr.ph665.i.prol ]
  %i.asc = sub nsw i64 %i.ary, %wide.trip.count732.i
  %i.asd = icmp ugt i64 %i.asc, -8
  br i1 %i.asd, label %._crit_edge.i, label %.lr.ph665.i

.lr.ph665.i:                                      ; preds = %.lr.ph665.i.prol.loopexit, %.lr.ph665.i
  %indvars.iv729.i = phi i64 [ %indvars.iv.next730.i.7, %.lr.ph665.i ], [ %indvars.iv729.i.unr, %.lr.ph665.i.prol.loopexit ] ; 8 uses
  %i.ase = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv729.i
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 60
  store i32 1073741824, ptr %i.asf, align 4, !tbaa !77
  %i.asg = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv729.i
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 104
  store i32 1073741824, ptr %i.ash, align 4, !tbaa !77
  %i.asi = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv729.i
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 148
  store i32 1073741824, ptr %i.asj, align 4, !tbaa !77
  %i.ask = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv729.i
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 192
  store i32 1073741824, ptr %i.asl, align 4, !tbaa !77
  %i.asm = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv729.i
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 236
  store i32 1073741824, ptr %i.asn, align 4, !tbaa !77
  %i.aso = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv729.i
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 280
  store i32 1073741824, ptr %i.asp, align 4, !tbaa !77
  %i.asq = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv729.i
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 324
  store i32 1073741824, ptr %i.asr, align 4, !tbaa !77
  %indvars.iv.next730.i.7 = add nuw nsw i64 %indvars.iv729.i, 8 ; 3 uses
  %i.ass = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv.next730.i.7
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 16
  store i32 1073741824, ptr %i.ast, align 4, !tbaa !77
  %exitcond733.not.i.7 = icmp eq i64 %indvars.iv.next730.i.7, %wide.trip.count732.i
  br i1 %exitcond733.not.i.7, label %._crit_edge.i, label %.lr.ph665.i, !llvm.loop !95

._crit_edge.i:                                    ; preds = %.lr.ph665.i.prol.loopexit, %.lr.ph665.i, %.._crit_edge_crit_edge.i
  %.pre-phi764.i = phi i64 [ %.pre763.i, %.._crit_edge_crit_edge.i ], [ %wide.trip.count732.i, %.lr.ph665.i ], [ %wide.trip.count732.i, %.lr.ph665.i.prol.loopexit ]
  %.0504.lcssa.i = phi i32 [ %.047160, %.._crit_edge_crit_edge.i ], [ %i.arw, %.lr.ph665.i ], [ %i.arw, %.lr.ph665.i.prol.loopexit ] ; 2 uses
  %i.asu = getelementptr inbounds nuw [1088 x i8], ptr %i.vd, i64 %i.arf
  %i.asv = zext i32 %i.aqw to i64
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %i.asu, i64 %i.asv
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !21
  %i.asy = getelementptr inbounds nuw [2 x i8], ptr %i.ux, i64 %i.ard
  %i.asz = load i16, ptr %i.asy, align 2, !tbaa !47
  %i.ata = lshr i16 %i.asz, 4
  %i.atb = zext nneg i16 %i.ata to i64
  %i.atc = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.atb
  %i.atd = load i8, ptr %i.atc, align 1, !tbaa !48
  %i.ate = zext i8 %i.atd to i32
  %i.atf = getelementptr inbounds nuw [32 x i8], ptr %i.agw, i64 %i.ard
  %i.atg = getelementptr inbounds nuw [2 x i8], ptr %i.atf, i64 %i.arf
  %i.ath = load i16, ptr %i.atg, align 2, !tbaa !47
  %i.ati = lshr i16 %i.ath, 4
  %i.atj = xor i16 %i.ati, 127
  %i.atk = zext nneg i16 %i.atj to i64
  %i.atl = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.atk
  %i.atm = load i8, ptr %i.atl, align 1, !tbaa !48
  %i.atn = zext i8 %i.atm to i32
  %i.ato = add i32 %i.aof, %i.arn
  %i.atp = add i32 %i.ato, %i.arv
  %i.atq = add i32 %i.atp, %i.asx
  %i.atr = add i32 %i.atq, %i.ate
  %i.ats = add i32 %i.atr, %i.atn                 ; 2 uses
  %i.att = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %.pre-phi764.i ; 5 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 16 ; 2 uses
  %i.atv = load i32, ptr %i.atu, align 4, !tbaa !77
  %i.atw = icmp ult i32 %i.ats, %i.atv
  br i1 %i.atw, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %._crit_edge.i
  store i32 %i.ats, ptr %i.atu, align 4, !tbaa !77
  %i.atx = getelementptr inbounds nuw i8, ptr %i.att, i64 20
  store i32 %indvars, ptr %i.atx, align 4, !tbaa !19
  %i.aty = getelementptr inbounds nuw i8, ptr %i.att, i64 24
  store i32 0, ptr %i.aty, align 4, !tbaa !22
  %i.atz = getelementptr inbounds nuw i8, ptr %i.att, i64 4
  store i8 1, ptr %i.atz, align 4, !tbaa !78
  %i.aua = getelementptr inbounds nuw i8, ptr %i.att, i64 5
  store i8 0, ptr %i.aua, align 1, !tbaa !87
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge.i, %lzma_memcmplen.exit562.i, %bb.cg
  %.2506.i = phi i32 [ %.047160, %bb.cg ], [ %.047160, %lzma_memcmplen.exit562.i ], [ %.0504.lcssa.i, %bb.cj ], [ %.0504.lcssa.i, %._crit_edge.i ]
  %i.aub = icmp ugt i32 %i.aqf, 2
  %i.auc = getelementptr inbounds nuw [2 x i8], ptr %i.ux, i64 %i.alv
  %i.aud = getelementptr inbounds nuw [2 x i8], ptr %i.uz, i64 %i.alv
  %i.aue = getelementptr inbounds nuw [2 x i8], ptr %i.vb, i64 %i.alv
  %i.auf = getelementptr inbounds nuw [32 x i8], ptr %i.agw, i64 %i.alv
  %i.aug = getelementptr inbounds nuw [2 x i8], ptr %i.auf, i64 %i.alx
  %i.auh = getelementptr inbounds nuw [1088 x i8], ptr %i.vd, i64 %i.alx ; 2 uses
  %i.aui = select i1 %i.amj, i64 11, i64 8
  %i.auj = getelementptr inbounds nuw [32 x i8], ptr %i.qa, i64 %i.aui
  br label %bb.cm

bb.cl:                                            ; preds = %bb.da
  %i.auk = icmp ugt i32 %i.ahj, %i.aqf
  br i1 %i.auk, label %.preheader636.i, label %bb.dc

bb.cm:                                            ; preds = %bb.da, %bb.ck
  %indvars.iv744.i = phi i64 [ 0, %bb.ck ], [ %indvars.iv.next745.i, %bb.da ] ; 6 uses
  %.0481680.i = phi i32 [ 2, %bb.ck ], [ %.2483.i, %bb.da ] ; 2 uses
  %.3507679.i = phi i32 [ %.2506.i, %bb.ck ], [ %.7.i, %bb.da ] ; 4 uses
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv744.i
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !21
  %i.aun = zext i32 %i.aum to i64
  %i.auo = sub nsw i64 0, %i.aun
  %i.aup = getelementptr inbounds i8, ptr %i.aho, i64 %i.auo
  %i.auq = getelementptr inbounds i8, ptr %i.aup, i64 -1 ; 4 uses
  %.val563.i = load i16, ptr %i.aho, align 1
  %.val.i = load i16, ptr %i.auq, align 1
  %.not540.i = icmp eq i16 %.val563.i, %.val.i
  br i1 %.not540.i, label %.preheader638.i, label %bb.da

.preheader638.i:                                  ; preds = %bb.cm
  br i1 %i.aub, label %.lr.ph668.i, label %lzma_memcmplen.exit555.i

.lr.ph668.i:                                      ; preds = %.preheader638.i, %bb.cn
  %.017.i549667.i = phi i32 [ %i.ava, %bb.cn ], [ 2, %.preheader638.i ] ; 3 uses
  %i.aur = zext i32 %.017.i549667.i to i64        ; 2 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.aur
  %.val567.i = load i64, ptr %i.aus, align 1      ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.auq, i64 %i.aur
  %.val566.i = load i64, ptr %i.aut, align 1      ; 2 uses
  %.not.i552.not.i = icmp eq i64 %.val567.i, %.val566.i
  br i1 %.not.i552.not.i, label %bb.cn, label %.thread618.i

.thread618.i:                                     ; preds = %.lr.ph668.i
  %i.auu = sub i64 %.val567.i, %.val566.i
  %i.auv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.auu, i1 true)
  %i.auw = trunc nuw nsw i64 %i.auv to i32
  %i.aux = lshr i32 %i.auw, 3
  %i.auy = add i32 %i.aux, %.017.i549667.i
  %i.auz = call i32 @llvm.umin.i32(i32 %i.auy, i32 %i.aqf)
  br label %lzma_memcmplen.exit555.i

bb.cn:                                            ; preds = %.lr.ph668.i
  %i.ava = add i32 %.017.i549667.i, 8             ; 2 uses
  %i.avb = icmp ult i32 %i.ava, %i.aqf
  br i1 %i.avb, label %.lr.ph668.i, label %lzma_memcmplen.exit555.i

lzma_memcmplen.exit555.i:                         ; preds = %bb.cn, %.thread618.i, %.preheader638.i
  %.2.i551.i = phi i32 [ %i.auz, %.thread618.i ], [ %i.aqf, %.preheader638.i ], [ %i.aqf, %bb.cn ] ; 7 uses
  %i.avc = add i32 %.2.i551.i, %i.ahl             ; 5 uses
  %i.avd = icmp ult i32 %.3507679.i, %i.avc
  br i1 %i.avd, label %.lr.ph670.preheader.i, label %._crit_edge671.i

.lr.ph670.preheader.i:                            ; preds = %lzma_memcmplen.exit555.i
  %i.ave = zext i32 %.3507679.i to i64            ; 4 uses
  %wide.trip.count737.i = zext i32 %i.avc to i64  ; 3 uses
  %i.avf = sub nsw i64 %wide.trip.count737.i, %i.ave
  %xtraiter458 = and i64 %i.avf, 7                ; 2 uses
  %lcmp.mod459.not = icmp eq i64 %xtraiter458, 0
  br i1 %lcmp.mod459.not, label %.lr.ph670.i.prol.loopexit, label %.lr.ph670.i.prol

.lr.ph670.i.prol:                                 ; preds = %.lr.ph670.preheader.i, %.lr.ph670.i.prol
  %indvars.iv734.i.prol = phi i64 [ %indvars.iv.next735.i.prol, %.lr.ph670.i.prol ], [ %i.ave, %.lr.ph670.preheader.i ]
  %prol.iter460 = phi i64 [ %prol.iter460.next, %.lr.ph670.i.prol ], [ 0, %.lr.ph670.preheader.i ]
  %indvars.iv.next735.i.prol = add nuw nsw i64 %indvars.iv734.i.prol, 1 ; 3 uses
  %i.avg = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv.next735.i.prol
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 16
  store i32 1073741824, ptr %i.avh, align 4, !tbaa !77
  %prol.iter460.next = add i64 %prol.iter460, 1   ; 2 uses
  %prol.iter460.cmp.not = icmp eq i64 %prol.iter460.next, %xtraiter458
  br i1 %prol.iter460.cmp.not, label %.lr.ph670.i.prol.loopexit, label %.lr.ph670.i.prol, !llvm.loop !96

.lr.ph670.i.prol.loopexit:                        ; preds = %.lr.ph670.i.prol, %.lr.ph670.preheader.i
  %indvars.iv734.i.unr = phi i64 [ %i.ave, %.lr.ph670.preheader.i ], [ %indvars.iv.next735.i.prol, %.lr.ph670.i.prol ]
  %i.avi = sub nsw i64 %i.ave, %wide.trip.count737.i
  %i.avj = icmp ugt i64 %i.avi, -8
  br i1 %i.avj, label %._crit_edge671.i, label %.lr.ph670.i

.lr.ph670.i:                                      ; preds = %.lr.ph670.i.prol.loopexit, %.lr.ph670.i
  %indvars.iv734.i = phi i64 [ %indvars.iv.next735.i.7, %.lr.ph670.i ], [ %indvars.iv734.i.unr, %.lr.ph670.i.prol.loopexit ] ; 8 uses
  %i.avk = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv734.i
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 60
  store i32 1073741824, ptr %i.avl, align 4, !tbaa !77
  %i.avm = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv734.i
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 104
  store i32 1073741824, ptr %i.avn, align 4, !tbaa !77
  %i.avo = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv734.i
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 148
  store i32 1073741824, ptr %i.avp, align 4, !tbaa !77
  %i.avq = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv734.i
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 192
  store i32 1073741824, ptr %i.avr, align 4, !tbaa !77
  %i.avs = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv734.i
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avs, i64 236
  store i32 1073741824, ptr %i.avt, align 4, !tbaa !77
  %i.avu = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv734.i
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 280
  store i32 1073741824, ptr %i.avv, align 4, !tbaa !77
  %i.avw = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv734.i
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 324
  store i32 1073741824, ptr %i.avx, align 4, !tbaa !77
  %indvars.iv.next735.i.7 = add nuw nsw i64 %indvars.iv734.i, 8 ; 3 uses
  %i.avy = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv.next735.i.7
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 16
  store i32 1073741824, ptr %i.avz, align 4, !tbaa !77
  %exitcond738.not.i.7 = icmp eq i64 %indvars.iv.next735.i.7, %wide.trip.count737.i
  br i1 %exitcond738.not.i.7, label %._crit_edge671.i, label %.lr.ph670.i, !llvm.loop !97

._crit_edge671.i:                                 ; preds = %.lr.ph670.i.prol.loopexit, %.lr.ph670.i, %lzma_memcmplen.exit555.i
  %.4.lcssa.i = phi i32 [ %.3507679.i, %lzma_memcmplen.exit555.i ], [ %i.avc, %.lr.ph670.i ], [ %i.avc, %.lr.ph670.i.prol.loopexit ] ; 4 uses
  %i.awa = icmp eq i64 %indvars.iv744.i, 0        ; 2 uses
  %i.awb = load i16, ptr %i.auc, align 2, !tbaa !47
  %i.awc = lshr i16 %i.awb, 4                     ; 2 uses
  br i1 %i.awa, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %._crit_edge671.i
  %i.awd = zext nneg i16 %i.awc to i64
  %i.awe = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.awd
  %i.awf = load i8, ptr %i.awe, align 1, !tbaa !48
  %i.awg = zext i8 %i.awf to i32
  %i.awh = load i16, ptr %i.aug, align 2, !tbaa !47
  %i.awi = lshr i16 %i.awh, 4
  %i.awj = xor i16 %i.awi, 127
  %i.awk = zext nneg i16 %i.awj to i64
  %i.awl = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.awk
  %i.awm = load i8, ptr %i.awl, align 1, !tbaa !48
  %i.awn = zext i8 %i.awm to i32
  %i.awo = add nuw nsw i32 %i.awn, %i.awg
  br label %get_pure_rep_price.exit.i92

bb.cp:                                            ; preds = %._crit_edge671.i
  %i.awp = xor i16 %i.awc, 127
  %i.awq = zext nneg i16 %i.awp to i64
  %i.awr = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.awq
  %i.aws = load i8, ptr %i.awr, align 1, !tbaa !48
  %i.awt = zext i8 %i.aws to i32                  ; 2 uses
  %i.awu = icmp eq i64 %indvars.iv744.i, 1
  %i.awv = load i16, ptr %i.aud, align 2, !tbaa !47
  %i.aww = lshr i16 %i.awv, 4                     ; 2 uses
  br i1 %i.awu, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.awx = zext nneg i16 %i.aww to i64
  %i.awy = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.awx
  %i.awz = load i8, ptr %i.awy, align 1, !tbaa !48
  %i.axa = zext i8 %i.awz to i32
  %i.axb = add nuw nsw i32 %i.axa, %i.awt
  br label %get_pure_rep_price.exit.i92

bb.cr:                                            ; preds = %bb.cp
  %i.axc = xor i16 %i.aww, 127
  %i.axd = zext nneg i16 %i.axc to i64
  %i.axe = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.axd
  %i.axf = load i8, ptr %i.axe, align 1, !tbaa !48
  %i.axg = zext i8 %i.axf to i32
  %i.axh = add nuw nsw i32 %i.axg, %i.awt
  %i.axi = load i16, ptr %i.aue, align 2, !tbaa !47
  %5 = zext i16 %i.axi to i64
  %6 = sub nsw i64 2, %indvars.iv744.i
  %7 = and i64 %6, 2032
  %8 = xor i64 %7, %5
  %9 = lshr i64 %8, 4
  %i.axj = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %9
  %i.axk = load i8, ptr %i.axj, align 1, !tbaa !48
  %i.axl = zext i8 %i.axk to i32
  %i.axm = add nuw nsw i32 %i.axh, %i.axl
  br label %get_pure_rep_price.exit.i92

get_pure_rep_price.exit.i92:                      ; preds = %bb.cr, %bb.cq, %bb.co
  %.0.i573.i = phi i32 [ %i.awo, %bb.co ], [ %i.axb, %bb.cq ], [ %i.axm, %bb.cr ]
  %i.axn = add i32 %.0.i573.i, %i.apc             ; 2 uses
  %i.axo = trunc nuw nsw i64 %indvars.iv744.i to i32 ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cu, %get_pure_rep_price.exit.i92
  %.0479.i = phi i32 [ %.2.i551.i, %get_pure_rep_price.exit.i92 ], [ %i.ayd, %bb.cu ] ; 3 uses
  %i.axp = add i32 %.0479.i, -2
  %i.axq = zext i32 %i.axp to i64
  %i.axr = getelementptr inbounds nuw [4 x i8], ptr %i.auh, i64 %i.axq
  %i.axs = load i32, ptr %i.axr, align 4, !tbaa !21
  %i.axt = add i32 %i.axs, %i.axn                 ; 2 uses
  %i.axu = add i32 %.0479.i, %i.ahl
  %i.axv = zext i32 %i.axu to i64
  %i.axw = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %i.axv ; 4 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 16 ; 2 uses
  %i.axy = load i32, ptr %i.axx, align 4, !tbaa !77
  %i.axz = icmp ult i32 %i.axt, %i.axy
  br i1 %i.axz, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 %i.axt, ptr %i.axx, align 4, !tbaa !77
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axw, i64 20
  store i32 %i.ahl, ptr %i.aya, align 4, !tbaa !19
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axw, i64 24
  store i32 %i.axo, ptr %i.ayb, align 4, !tbaa !22
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axw, i64 4
  store i8 0, ptr %i.ayc, align 4, !tbaa !78
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.ayd = add i32 %.0479.i, -1                   ; 2 uses
  %i.aye = icmp ugt i32 %i.ayd, 1
  br i1 %i.aye, label %bb.cs, label %bb.cv, !llvm.loop !98

bb.cv:                                            ; preds = %bb.cu
  %i.ayf = add i32 %.2.i551.i, 1                  ; 6 uses
  %spec.select.i = select i1 %i.awa, i32 %i.ayf, i32 %.0481680.i ; 3 uses
  %i.ayg = add i32 %i.ayf, %i.ahk
  %i.ayh = call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.ayg) ; 4 uses
  %i.ayi = icmp ult i32 %i.ayf, %i.ayh
  br i1 %i.ayi, label %.preheader637.i, label %lzma_memcmplen.exit548.i

.preheader637.i:                                  ; preds = %bb.cv, %bb.cw
  %.017.i542674.i = phi i32 [ %i.ays, %bb.cw ], [ %i.ayf, %bb.cv ] ; 3 uses
  %i.ayj = zext i32 %.017.i542674.i to i64        ; 2 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.ayj
  %.val569.i = load i64, ptr %i.ayk, align 1      ; 2 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.auq, i64 %i.ayj
  %.val568.i = load i64, ptr %i.ayl, align 1      ; 2 uses
  %.not.i545.not.i = icmp eq i64 %.val569.i, %.val568.i
  br i1 %.not.i545.not.i, label %bb.cw, label %.thread621.i

.thread621.i:                                     ; preds = %.preheader637.i
  %i.aym = sub i64 %.val569.i, %.val568.i
  %i.ayn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aym, i1 true)
  %i.ayo = trunc nuw nsw i64 %i.ayn to i32
  %i.ayp = lshr i32 %i.ayo, 3
  %i.ayq = add i32 %i.ayp, %.017.i542674.i
  %i.ayr = call i32 @llvm.umin.i32(i32 %i.ayq, i32 %i.ayh)
  br label %lzma_memcmplen.exit548.i

bb.cw:                                            ; preds = %.preheader637.i
  %i.ays = add i32 %.017.i542674.i, 8             ; 2 uses
  %i.ayt = icmp ult i32 %i.ays, %i.ayh
  br i1 %i.ayt, label %.preheader637.i, label %lzma_memcmplen.exit548.i

lzma_memcmplen.exit548.i:                         ; preds = %bb.cw, %.thread621.i, %bb.cv
  %.0478.i = phi i32 [ %i.ayf, %bb.cv ], [ %i.ayr, %.thread621.i ], [ %i.ayh, %bb.cw ]
  %i.ayu = sub i32 %.0478.i, %i.ayf               ; 3 uses
  %i.ayv = icmp ugt i32 %i.ayu, 1
  br i1 %i.ayv, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %lzma_memcmplen.exit548.i
  %i.ayw = add i32 %.2.i551.i, %i.ahp             ; 3 uses
  %i.ayx = and i32 %i.ayw, %i.alt
  %i.ayy = add i32 %.2.i551.i, -2
  %i.ayz = zext i32 %i.ayy to i64
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %i.auh, i64 %i.ayz
  %i.azb = load i32, ptr %i.aza, align 4, !tbaa !21
  %i.azc = zext i32 %i.ayx to i64
  %i.azd = getelementptr inbounds nuw [2 x i8], ptr %i.auj, i64 %i.azc
  %i.aze = load i16, ptr %i.azd, align 2, !tbaa !47
  %i.azf = lshr i16 %i.aze, 4
  %i.azg = zext nneg i16 %i.azf to i64
  %i.azh = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.azg
  %i.azi = load i8, ptr %i.azh, align 1, !tbaa !48
  %i.azj = add i32 %.2.i551.i, -1
  %i.azk = zext i32 %i.azj to i64
  %i.azl = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.azk
  %i.azm = load i8, ptr %i.azl, align 1, !tbaa !48
  %i.azn = zext i8 %i.azm to i32
  %i.azo = zext i32 %.2.i551.i to i64             ; 2 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %i.auq, i64 %i.azo
  %i.azq = load i8, ptr %i.azp, align 1, !tbaa !48
  %i.azr = zext i8 %i.azq to i32
  %i.azs = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.azo
  %i.azt = load i8, ptr %i.azs, align 1, !tbaa !48
  %i.azu = zext i8 %i.azt to i32
  %i.azv = shl i32 %i.ayw, 8
  %i.azw = or disjoint i32 %i.azv, %i.azn
  %i.azx = and i32 %i.azw, %i.amn
  %i.azy = shl i32 %i.azx, %i.amp
  %i.azz = mul i32 %i.azy, 3
  %i.baa = zext i32 %i.azz to i64
  %i.bab = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.baa
  %i.bac = or disjoint i32 %i.azu, 256
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cy, %bb.cx
  %.027.i574.i = phi i32 [ %i.bas, %bb.cy ], [ 0, %bb.cx ]
  %.026.i575.i = phi i32 [ %i.baw, %bb.cy ], [ 256, %bb.cx ] ; 3 uses
  %.025.i576.i = phi i32 [ %i.bat, %bb.cy ], [ %i.bac, %bb.cx ] ; 4 uses
  %.0.i577.i = phi i32 [ %i.bad, %bb.cy ], [ %i.azr, %bb.cx ]
  %i.bad = shl i32 %.0.i577.i, 1                  ; 3 uses
  %i.bae = and i32 %i.bad, %.026.i575.i
  %i.baf = lshr i32 %.025.i576.i, 8
  %i.bag = add nuw nsw i32 %i.baf, %.026.i575.i
  %i.bah = add nuw nsw i32 %i.bag, %i.bae
  %i.bai = zext nneg i32 %i.bah to i64
  %i.baj = getelementptr inbounds nuw [2 x i8], ptr %i.bab, i64 %i.bai
  %i.bak = load i16, ptr %i.baj, align 2, !tbaa !47
  %i.bal = zext i16 %i.bak to i64
  %.mask.i578.i = and i32 %.025.i576.i, 128
  %isneg.not.i579.i = icmp eq i32 %.mask.i578.i, 0
  %i.bam = select i1 %isneg.not.i579.i, i64 0, i64 2032
  %i.ban = xor i64 %i.bam, %i.bal
  %i.bao = lshr i64 %i.ban, 4
  %i.bap = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.bao
  %i.baq = load i8, ptr %i.bap, align 1, !tbaa !48
  %i.bar = zext i8 %i.baq to i32
  %i.bas = add i32 %.027.i574.i, %i.bar           ; 2 uses
  %i.bat = shl nuw nsw i32 %.025.i576.i, 1        ; 2 uses
  %i.bau = xor i32 %i.bat, %i.bad
  %i.bav = xor i32 %i.bau, -1
  %i.baw = and i32 %.026.i575.i, %i.bav
  %i.bax = icmp samesign ult i32 %.025.i576.i, 32768
  br i1 %i.bax, label %bb.cy, label %get_literal_price.exit581.i, !llvm.loop !76

get_literal_price.exit581.i:                      ; preds = %bb.cy
  %i.bay = zext i8 %i.azi to i32
  %i.baz = add i32 %i.ayw, 1
  %i.bba = and i32 %i.baz, %i.alt
  %i.bbb = zext i32 %i.bba to i64                 ; 3 uses
  %i.bbc = getelementptr inbounds nuw [2 x i8], ptr %i.agx, i64 %i.bbb
  %i.bbd = load i16, ptr %i.bbc, align 2, !tbaa !47
  %i.bbe = lshr i16 %i.bbd, 4
  %i.bbf = xor i16 %i.bbe, 127
  %i.bbg = zext nneg i16 %i.bbf to i64
  %i.bbh = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.bbg
  %i.bbi = load i8, ptr %i.bbh, align 1, !tbaa !48
  %i.bbj = zext i8 %i.bbi to i32
  %i.bbk = load i16, ptr %i.agy, align 2, !tbaa !47
  %i.bbl = lshr i16 %i.bbk, 4
  %i.bbm = xor i16 %i.bbl, 127
  %i.bbn = zext nneg i16 %i.bbm to i64
  %i.bbo = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.bbn
  %i.bbp = load i8, ptr %i.bbo, align 1, !tbaa !48
  %i.bbq = zext i8 %i.bbp to i32
  %i.bbr = add i32 %i.avc, 1                      ; 2 uses
  %i.bbs = add i32 %i.ayu, %i.bbr                 ; 5 uses
  %i.bbt = icmp ult i32 %.4.lcssa.i, %i.bbs
  br i1 %i.bbt, label %.lr.ph676.preheader.i, label %get_literal_price.exit581.._crit_edge677_crit_edge.i

get_literal_price.exit581.._crit_edge677_crit_edge.i: ; preds = %get_literal_price.exit581.i
  %.pre.i93 = zext i32 %i.bbs to i64
  br label %._crit_edge677.i

.lr.ph676.preheader.i:                            ; preds = %get_literal_price.exit581.i
  %i.bbu = zext i32 %.4.lcssa.i to i64            ; 4 uses
  %wide.trip.count742.i = zext i32 %i.bbs to i64  ; 5 uses
  %i.bbv = sub nsw i64 %wide.trip.count742.i, %i.bbu
  %xtraiter461 = and i64 %i.bbv, 7                ; 2 uses
  %lcmp.mod462.not = icmp eq i64 %xtraiter461, 0
  br i1 %lcmp.mod462.not, label %.lr.ph676.i.prol.loopexit, label %.lr.ph676.i.prol

.lr.ph676.i.prol:                                 ; preds = %.lr.ph676.preheader.i, %.lr.ph676.i.prol
  %indvars.iv739.i.prol = phi i64 [ %indvars.iv.next740.i.prol, %.lr.ph676.i.prol ], [ %i.bbu, %.lr.ph676.preheader.i ]
  %prol.iter463 = phi i64 [ %prol.iter463.next, %.lr.ph676.i.prol ], [ 0, %.lr.ph676.preheader.i ]
  %indvars.iv.next740.i.prol = add nuw nsw i64 %indvars.iv739.i.prol, 1 ; 3 uses
  %i.bbw = getelementptr inbounds nuw [44 x i8], ptr %i.pw, i64 %indvars.iv.next740.i.prol
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbw, i64 16
  store i32 1073741824, ptr %i.bbx, align 4, !tbaa !77
  %prol.iter463.next = add i64 %prol.iter463, 1   ; 2 uses
  %prol.iter463.cmp.not = icmp eq i64 %prol.iter463.next, %xtraiter461
  br i1 %prol.iter463.cmp.not, label %.lr.ph676.i.prol.loopexit, label %.lr.ph676.i.prol, !llvm.loop !99

.lr.ph676.i.prol.loopexit:                        ; preds = %.lr.ph676.i.prol, %.lr.ph676.preheader.i
  %indvars.iv739.i.unr = phi i64 [ %i.bbu, %.lr.ph676.preheader.i ], [ %indvars.iv.next740.i.prol, %.lr.ph676.i.prol ]
  %i.bby = sub nsw i64 %i.bbu, %wide.trip.count742.i
  %i.bbz = icmp ugt i64 %i.bby, -8
  br i1 %i.bbz, label %._crit_edge677.i, label %.lr.ph676.i

.lr.ph676.i:                                      ; preds = %.lr.ph676.i.prol.loopexit, %.lr.ph676.i
end_hunk_0
