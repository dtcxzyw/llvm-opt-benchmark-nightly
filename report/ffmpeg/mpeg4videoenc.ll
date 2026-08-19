inline.NumInlined: 162
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@mpeg4_encode_mb:bb.a
  %i.bua = load i8, ptr %i.bey, align 16, !tbaa !50
  %i.bub = zext i8 %i.bua to i64
  %i.buc = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bub ; 2 uses
  %i.bud = load i16, ptr %i.buc, align 2, !tbaa !57 ; 2 uses
  %i.bue = getelementptr inbounds i8, ptr %i.bgl, i64 -22
  %i.buf = load i16, ptr %i.bue, align 2, !tbaa !57
  %i.bug = sext i16 %i.buf to i32
  %i.buh = load i8, ptr %i.bqo, align 1, !tbaa !50
  %i.bui = sext i8 %i.buh to i32
  %i.buj = mul nsw i32 %i.bui, %i.bug             ; 2 uses
  %i.buk = icmp slt i32 %i.buj, 0
  %.p222.4.i = select i1 %i.buk, i32 %i.bqv, i32 %i.bqu
  %i.bul = add nsw i32 %.p222.4.i, %i.buj
  %i.bum = sdiv i32 %i.bul, %i.bqm
  %i.bun = trunc i32 %i.bum to i16
  %i.buo = sub i16 %i.bud, %i.bun
  store i16 %i.buo, ptr %i.buc, align 2, !tbaa !57
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bgl, i64 10
  store i16 %i.bud, ptr %i.bup, align 2, !tbaa !57
  %i.buq = load i8, ptr %i.bex, align 1, !tbaa !50
  %i.bur = zext i8 %i.buq to i64
  %i.bus = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bur
  %i.but = load i16, ptr %i.bus, align 2, !tbaa !57
  %i.buu = getelementptr inbounds nuw i8, ptr %i.bgl, i64 26
  store i16 %i.but, ptr %i.buu, align 2, !tbaa !57
  %i.buv = load i8, ptr %i.bfa, align 8, !tbaa !50
  %i.buw = zext i8 %i.buv to i64
  %i.bux = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.buw ; 2 uses
  %i.buy = load i16, ptr %i.bux, align 2, !tbaa !57 ; 2 uses
  %i.buz = getelementptr inbounds i8, ptr %i.bgl, i64 -20
  %i.bva = load i16, ptr %i.buz, align 2, !tbaa !57
  %i.bvb = sext i16 %i.bva to i32
  %i.bvc = load i8, ptr %i.bqo, align 1, !tbaa !50
  %i.bvd = sext i8 %i.bvc to i32
  %i.bve = mul nsw i32 %i.bvd, %i.bvb             ; 2 uses
  %i.bvf = icmp slt i32 %i.bve, 0
  %.p222.5.i = select i1 %i.bvf, i32 %i.bqv, i32 %i.bqu
  %i.bvg = add nsw i32 %.p222.5.i, %i.bve
  %i.bvh = sdiv i32 %i.bvg, %i.bqm
  %i.bvi = trunc i32 %i.bvh to i16
  %i.bvj = sub i16 %i.buy, %i.bvi
  store i16 %i.bvj, ptr %i.bux, align 2, !tbaa !57
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bgl, i64 12
  store i16 %i.buy, ptr %i.bvk, align 2, !tbaa !57
  %i.bvl = load i8, ptr %i.bez, align 2, !tbaa !50
  %i.bvm = zext i8 %i.bvl to i64
  %i.bvn = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bvm
  %i.bvo = load i16, ptr %i.bvn, align 2, !tbaa !57
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bgl, i64 28
  store i16 %i.bvo, ptr %i.bvp, align 2, !tbaa !57
  %i.bvq = load i8, ptr %i.bfc, align 16, !tbaa !50
  %i.bvr = zext i8 %i.bvq to i64
  %i.bvs = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bvr ; 2 uses
  %i.bvt = load i16, ptr %i.bvs, align 2, !tbaa !57 ; 2 uses
  %i.bvu = getelementptr inbounds i8, ptr %i.bgl, i64 -18
  %i.bvv = load i16, ptr %i.bvu, align 2, !tbaa !57
  %i.bvw = sext i16 %i.bvv to i32
  %i.bvx = load i8, ptr %i.bqo, align 1, !tbaa !50
  %i.bvy = sext i8 %i.bvx to i32
  %i.bvz = mul nsw i32 %i.bvy, %i.bvw             ; 2 uses
  %i.bwa = icmp slt i32 %i.bvz, 0
  %.p222.6.i = select i1 %i.bwa, i32 %i.bqv, i32 %i.bqu
  %i.bwb = add nsw i32 %.p222.6.i, %i.bvz
  %i.bwc = sdiv i32 %i.bwb, %i.bqm
  %i.bwd = trunc i32 %i.bwc to i16
  %i.bwe = sub i16 %i.bvt, %i.bwd
  store i16 %i.bwe, ptr %i.bvs, align 2, !tbaa !57
  br label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.gz, %bb.gy
  %i.bwf = load i8, ptr %i.beq, align 16, !tbaa !50
  %i.bwg = zext i8 %i.bwf to i64
  %i.bwh = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bwg ; 2 uses
  %i.bwi = load i16, ptr %i.bwh, align 2, !tbaa !57 ; 2 uses
  %i.bwj = getelementptr inbounds i8, ptr %i.bgl, i64 -30
  %i.bwk = load i16, ptr %i.bwj, align 2, !tbaa !57
  %i.bwl = sub i16 %i.bwi, %i.bwk
  store i16 %i.bwl, ptr %i.bwh, align 2, !tbaa !57
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 2
  store i16 %i.bwi, ptr %i.bwm, align 2, !tbaa !57
  %i.bwn = load i8, ptr %i.bep, align 1, !tbaa !50
  %i.bwo = zext i8 %i.bwn to i64
  %i.bwp = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bwo
  %i.bwq = load i16, ptr %i.bwp, align 2, !tbaa !57
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bgl, i64 18
  store i16 %i.bwq, ptr %i.bwr, align 2, !tbaa !57
  %i.bws = load i8, ptr %i.bes, align 8, !tbaa !50
  %i.bwt = zext i8 %i.bws to i64
  %i.bwu = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bwt ; 2 uses
  %i.bwv = load i16, ptr %i.bwu, align 2, !tbaa !57 ; 2 uses
  %i.bww = getelementptr inbounds i8, ptr %i.bgl, i64 -28
  %i.bwx = load i16, ptr %i.bww, align 2, !tbaa !57
  %i.bwy = sub i16 %i.bwv, %i.bwx
  store i16 %i.bwy, ptr %i.bwu, align 2, !tbaa !57
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bgl, i64 4
  store i16 %i.bwv, ptr %i.bwz, align 2, !tbaa !57
  %i.bxa = load i8, ptr %i.ber, align 2, !tbaa !50
  %i.bxb = zext i8 %i.bxa to i64
  %i.bxc = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bxb
  %i.bxd = load i16, ptr %i.bxc, align 2, !tbaa !57
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bgl, i64 20
  store i16 %i.bxd, ptr %i.bxe, align 2, !tbaa !57
  %i.bxf = load i8, ptr %i.beu, align 16, !tbaa !50
  %i.bxg = zext i8 %i.bxf to i64
  %i.bxh = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bxg ; 2 uses
  %i.bxi = load i16, ptr %i.bxh, align 2, !tbaa !57 ; 2 uses
  %i.bxj = getelementptr inbounds i8, ptr %i.bgl, i64 -26
  %i.bxk = load i16, ptr %i.bxj, align 2, !tbaa !57
  %i.bxl = sub i16 %i.bxi, %i.bxk
  store i16 %i.bxl, ptr %i.bxh, align 2, !tbaa !57
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 6
  store i16 %i.bxi, ptr %i.bxm, align 2, !tbaa !57
  %i.bxn = load i8, ptr %i.bet, align 1, !tbaa !50
  %i.bxo = zext i8 %i.bxn to i64
  %i.bxp = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bxo
  %i.bxq = load i16, ptr %i.bxp, align 2, !tbaa !57
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bgl, i64 22
  store i16 %i.bxq, ptr %i.bxr, align 2, !tbaa !57
  %i.bxs = load i8, ptr %i.bew, align 8, !tbaa !50
  %i.bxt = zext i8 %i.bxs to i64
  %i.bxu = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bxt ; 2 uses
  %i.bxv = load i16, ptr %i.bxu, align 2, !tbaa !57 ; 2 uses
  %i.bxw = getelementptr inbounds i8, ptr %i.bgl, i64 -24
  %i.bxx = load i16, ptr %i.bxw, align 2, !tbaa !57
  %i.bxy = sub i16 %i.bxv, %i.bxx
  store i16 %i.bxy, ptr %i.bxu, align 2, !tbaa !57
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bgl, i64 8
  store i16 %i.bxv, ptr %i.bxz, align 2, !tbaa !57
  %i.bya = load i8, ptr %i.bev, align 4, !tbaa !50
  %i.byb = zext i8 %i.bya to i64
  %i.byc = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.byb
  %i.byd = load i16, ptr %i.byc, align 2, !tbaa !57
  %i.bye = getelementptr inbounds nuw i8, ptr %i.bgl, i64 24
  store i16 %i.byd, ptr %i.bye, align 2, !tbaa !57
  %i.byf = load i8, ptr %i.bey, align 16, !tbaa !50
  %i.byg = zext i8 %i.byf to i64
  %i.byh = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.byg ; 2 uses
  %i.byi = load i16, ptr %i.byh, align 2, !tbaa !57 ; 2 uses
  %i.byj = getelementptr inbounds i8, ptr %i.bgl, i64 -22
  %i.byk = load i16, ptr %i.byj, align 2, !tbaa !57
  %i.byl = sub i16 %i.byi, %i.byk
  store i16 %i.byl, ptr %i.byh, align 2, !tbaa !57
  %i.bym = getelementptr inbounds nuw i8, ptr %i.bgl, i64 10
  store i16 %i.byi, ptr %i.bym, align 2, !tbaa !57
  %i.byn = load i8, ptr %i.bex, align 1, !tbaa !50
  %i.byo = zext i8 %i.byn to i64
  %i.byp = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.byo
  %i.byq = load i16, ptr %i.byp, align 2, !tbaa !57
  %i.byr = getelementptr inbounds nuw i8, ptr %i.bgl, i64 26
  store i16 %i.byq, ptr %i.byr, align 2, !tbaa !57
  %i.bys = load i8, ptr %i.bfa, align 8, !tbaa !50
  %i.byt = zext i8 %i.bys to i64
  %i.byu = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.byt ; 2 uses
  %i.byv = load i16, ptr %i.byu, align 2, !tbaa !57 ; 2 uses
  %i.byw = getelementptr inbounds i8, ptr %i.bgl, i64 -20
  %i.byx = load i16, ptr %i.byw, align 2, !tbaa !57
  %i.byy = sub i16 %i.byv, %i.byx
  store i16 %i.byy, ptr %i.byu, align 2, !tbaa !57
  %i.byz = getelementptr inbounds nuw i8, ptr %i.bgl, i64 12
  store i16 %i.byv, ptr %i.byz, align 2, !tbaa !57
  %i.bza = load i8, ptr %i.bez, align 2, !tbaa !50
  %i.bzb = zext i8 %i.bza to i64
  %i.bzc = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bzb
  %i.bzd = load i16, ptr %i.bzc, align 2, !tbaa !57
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bgl, i64 28
  store i16 %i.bzd, ptr %i.bze, align 2, !tbaa !57
  %i.bzf = load i8, ptr %i.bfc, align 16, !tbaa !50
  %i.bzg = zext i8 %i.bzf to i64
  %i.bzh = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bzg ; 2 uses
  %i.bzi = load i16, ptr %i.bzh, align 2, !tbaa !57 ; 2 uses
  %i.bzj = getelementptr inbounds i8, ptr %i.bgl, i64 -18
  %i.bzk = load i16, ptr %i.bzj, align 2, !tbaa !57
  %i.bzl = sub i16 %i.bzi, %i.bzk
  store i16 %i.bzl, ptr %i.bzh, align 2, !tbaa !57
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.preheader.i617
  %.sink836.a = phi i16 [ %i.bzi, %.loopexit.loopexit.i ], [ %i.bvt, %.preheader.i617 ]
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 14
  store i16 %.sink836.a, ptr %i.bzm, align 2, !tbaa !57
  %.sink270.i = load i8, ptr %i.bfb, align 1, !tbaa !50
  %i.bzn = zext i8 %.sink270.i to i64
  %i.bzo = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bzn
  %i.bzp = load i16, ptr %i.bzo, align 2, !tbaa !57
  br label %bb.ha

bb.ha:                                            ; preds = %.loopexit.i, %.loopexit224.i
  %.sink273.i = phi i16 [ %i.bzp, %.loopexit.i ], [ %.sink.i, %.loopexit224.i ]
  %.sink271.i = phi ptr [ %i.beo, %.loopexit.i ], [ %i.ben, %.loopexit224.i ] ; 5 uses
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bgl, i64 30
  store i16 %.sink273.i, ptr %i.bzq, align 2, !tbaa !57
  %i.bzr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.a
  store ptr %.sink271.i, ptr %i.bzr, align 8, !tbaa !163
  br label %bb.hb

.thread.i:                                        ; preds = %bb.he
  store i32 0, ptr %i.bfe, align 4, !tbaa !49
  br label %get_block_rate.exit217.i

bb.hb:                                            ; preds = %bb.he, %bb.ha
  %indvars.iv.i = phi i64 [ 63, %bb.ha ], [ %indvars.iv.next.i.2, %bb.he ] ; 6 uses
  %i.bzs = getelementptr inbounds nuw i8, ptr %.sink271.i, i64 %indvars.iv.i
  %i.bzt = load i8, ptr %i.bzs, align 1, !tbaa !50
  %i.bzu = zext i8 %i.bzt to i64
  %i.bzv = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bzu
  %i.bzw = load i16, ptr %i.bzv, align 2, !tbaa !57
  %.not200.i = icmp eq i16 %i.bzw, 0
  br i1 %.not200.i, label %bb.hc, label %.lr.ph.i202.i

bb.hc:                                            ; preds = %bb.hb
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.bzx = getelementptr inbounds nuw i8, ptr %.sink271.i, i64 %indvars.iv.next.i
  %i.bzy = load i8, ptr %i.bzx, align 1, !tbaa !50
  %i.bzz = zext i8 %i.bzy to i64
  %i.caa = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bzz
  %i.cab = load i16, ptr %i.caa, align 2, !tbaa !57
  %.not200.i.1 = icmp eq i16 %i.cab, 0
  br i1 %.not200.i.1, label %bb.hd, label %.lr.ph.i202.i

bb.hd:                                            ; preds = %bb.hc
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.cac = getelementptr inbounds nuw i8, ptr %.sink271.i, i64 %indvars.iv.next.i.1
  %i.cad = load i8, ptr %i.cac, align 1, !tbaa !50
  %i.cae = zext i8 %i.cad to i64
  %i.caf = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.cae
  %i.cag = load i16, ptr %i.caf, align 2, !tbaa !57
  %.not200.i.2 = icmp eq i16 %i.cag, 0
  br i1 %.not200.i.2, label %bb.he, label %.lr.ph.i202.i

bb.he:                                            ; preds = %bb.hd
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3
  %i.cah = icmp sgt i64 %indvars.iv.i, 3
  br i1 %i.cah, label %bb.hb, label %.thread.i, !llvm.loop !180

.lr.ph.i202.i:                                    ; preds = %bb.hd, %bb.hc, %bb.hb
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.hb ], [ %indvars.iv.next.i, %bb.hc ], [ %indvars.iv.next.i.1, %bb.hd ] ; 3 uses
  %4 = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  store i32 %4, ptr %i.bfe, align 4, !tbaa !49
  %5 = add nuw i64 %indvars.iv.i.lcssa, 1
  %wide.trip.count.i203.i = and i64 %5, 4294967295
  br label %bb.hf

bb.hf:                                            ; preds = %bb.hm, %.lr.ph.i202.i
  %indvars.iv.i204.i = phi i64 [ 1, %.lr.ph.i202.i ], [ %indvars.iv.next.i214.i, %bb.hm ] ; 5 uses
  %.034.i205.i = phi i32 [ 0, %.lr.ph.i202.i ], [ %.2.i213.i, %bb.hm ] ; 2 uses
  %.02632.i206.i = phi i32 [ 0, %.lr.ph.i202.i ], [ %.127.i212.i, %bb.hm ] ; 2 uses
  %i.cai = getelementptr inbounds nuw i8, ptr %.sink271.i, i64 %indvars.iv.i204.i
  %i.caj = load i8, ptr %i.cai, align 1, !tbaa !50
  %i.cak = zext i8 %i.caj to i64
  %i.cal = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.cak
  %i.cam = load i16, ptr %i.cal, align 2, !tbaa !57 ; 2 uses
  %.not30.i207.i = icmp eq i16 %i.cam, 0
  br i1 %.not30.i207.i, label %bb.hm, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.can = sext i16 %i.cam to i32
  %i.cao = add nsw i32 %i.can, 64                 ; 2 uses
  %i.cap = icmp ult i32 %i.cao, 128
  br i1 %i.cap, label %bb.hh, label %bb.hk

bb.hh:                                            ; preds = %bb.hg
  %i.caq = icmp samesign ult i64 %indvars.iv.i204.i, %indvars.iv.i.lcssa
  %i.car = xor i32 %.02632.i206.i, -1
  %i.cas = trunc nuw nsw i64 %indvars.iv.i204.i to i32 ; 3 uses
  %i.cat = add nsw i32 %i.car, %i.cas
  %i.cau = shl nsw i32 %i.cat, 7
  %i.cav = or disjoint i32 %i.cao, %i.cau
  %i.caw = sext i32 %i.cav to i64                 ; 2 uses
  br i1 %i.caq, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.cax = load ptr, ptr %i.beh, align 16, !tbaa !112
  %i.cay = getelementptr inbounds i8, ptr %i.cax, i64 %i.caw
  %i.caz = load i8, ptr %i.cay, align 1, !tbaa !50
  %i.cba = zext i8 %i.caz to i32
  br label %bb.hl

bb.hj:                                            ; preds = %bb.hh
  %i.cbb = load ptr, ptr %i.beg, align 8, !tbaa !113
  %i.cbc = getelementptr inbounds i8, ptr %i.cbb, i64 %i.caw
  %i.cbd = load i8, ptr %i.cbc, align 1, !tbaa !50
  %i.cbe = zext i8 %i.cbd to i32
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hg
  %i.cbf = load i32, ptr %i.bef, align 8, !tbaa !117
  %.pre.i208.i = trunc nuw nsw i64 %indvars.iv.i204.i to i32
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj, %bb.hi
  %.pre-phi.i209.i = phi i32 [ %i.cas, %bb.hi ], [ %i.cas, %bb.hj ], [ %.pre.i208.i, %bb.hk ]
  %.pn.i210.i = phi i32 [ %i.cba, %bb.hi ], [ %i.cbe, %bb.hj ], [ %i.cbf, %bb.hk ]
  %.1.i211.i = add nsw i32 %.pn.i210.i, %.034.i205.i
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hf
  %.127.i212.i = phi i32 [ %.pre-phi.i209.i, %bb.hl ], [ %.02632.i206.i, %bb.hf ]
  %.2.i213.i = phi i32 [ %.1.i211.i, %bb.hl ], [ %.034.i205.i, %bb.hf ] ; 2 uses
  %indvars.iv.next.i214.i = add nuw nsw i64 %indvars.iv.i204.i, 1 ; 2 uses
  %exitcond.not.i215.i = icmp eq i64 %indvars.iv.next.i214.i, %wide.trip.count.i203.i
  br i1 %exitcond.not.i215.i, label %get_block_rate.exit217.i, label %bb.hf, !llvm.loop !178

get_block_rate.exit217.i:                         ; preds = %bb.hm, %.thread.i
  %.0.lcssa.i216.i = phi i32 [ 0, %.thread.i ], [ %.2.i213.i, %bb.hm ]
  %i.cbg = add nsw i32 %.0.lcssa.i216.i, %i.bgg   ; 2 uses
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %exitcond.not.i615 = icmp eq i64 %indvars.iv.next.i.a, 6
  br i1 %exitcond.not.i615, label %bb.hn, label %bb.gn, !llvm.loop !181

bb.hn:                                            ; preds = %get_block_rate.exit217.i
  %i.cbh = icmp slt i32 %i.cbg, 0
  br i1 %i.cbh, label %decide_ac_pred.exit, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.beb, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.cbi = load i32, ptr %i.aud, align 16, !tbaa !49
  %i.cbj = shl nsw i32 %i.cbi, 4
  %i.cbk = sext i32 %i.cbj to i64
  %i.cbl = getelementptr inbounds [2 x i8], ptr %i.bee, i64 %i.cbk ; 11 uses
  store ptr %i.bec, ptr %i.f, align 16, !tbaa !163
  br i1 %i.ava, label %.preheader28.i.i, label %.preheader.i.i

.preheader28.i.i:                                 ; preds = %bb.ho
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cbl, i64 18
  %i.cbn = load i16, ptr %i.cbm, align 2, !tbaa !57
  %i.cbo = load i8, ptr %i.bep, align 1, !tbaa !50
  %i.cbp = zext i8 %i.cbo to i64
  %i.cbq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cbp
  store i16 %i.cbn, ptr %i.cbq, align 2, !tbaa !57
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbl, i64 20
  %i.cbs = load i16, ptr %i.cbr, align 2, !tbaa !57
  %i.cbt = load i8, ptr %i.ber, align 2, !tbaa !50
  %i.cbu = zext i8 %i.cbt to i64
  %i.cbv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cbu
  store i16 %i.cbs, ptr %i.cbv, align 2, !tbaa !57
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbl, i64 22
  %i.cbx = load i16, ptr %i.cbw, align 2, !tbaa !57
  %i.cby = load i8, ptr %i.bet, align 1, !tbaa !50
  %i.cbz = zext i8 %i.cby to i64
  %i.cca = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cbz
  store i16 %i.cbx, ptr %i.cca, align 2, !tbaa !57
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cbl, i64 24
  br label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.ho
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.cbl, i64 2
  %i.ccd = load i16, ptr %i.ccc, align 2, !tbaa !57
  %i.cce = load i8, ptr %i.beq, align 16, !tbaa !50
  %i.ccf = zext i8 %i.cce to i64
  %i.ccg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ccf
  store i16 %i.ccd, ptr %i.ccg, align 2, !tbaa !57
  %i.cch = getelementptr inbounds nuw i8, ptr %i.cbl, i64 4
  %i.cci = load i16, ptr %i.cch, align 2, !tbaa !57
  %i.ccj = load i8, ptr %i.bes, align 8, !tbaa !50
  %i.cck = zext i8 %i.ccj to i64
  %i.ccl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cck
  store i16 %i.cci, ptr %i.ccl, align 2, !tbaa !57
  %i.ccm = getelementptr inbounds nuw i8, ptr %i.cbl, i64 6
  %i.ccn = load i16, ptr %i.ccm, align 2, !tbaa !57
  %i.cco = load i8, ptr %i.beu, align 16, !tbaa !50
  %i.ccp = zext i8 %i.cco to i64
  %i.ccq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ccp
  store i16 %i.ccn, ptr %i.ccq, align 2, !tbaa !57
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.cbl, i64 8
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %.preheader28.i.i
  %.sink864.in = phi ptr [ %i.bew, %.preheader.i.i ], [ %i.bev, %.preheader28.i.i ]
  %.sink861.in.a = phi ptr [ %i.ccr, %.preheader.i.i ], [ %i.ccb, %.preheader28.i.i ]
  %.sink860 = phi i64 [ 10, %.preheader.i.i ], [ 26, %.preheader28.i.i ]
  %.sink842.in = phi ptr [ %i.bey, %.preheader.i.i ], [ %i.bex, %.preheader28.i.i ]
  %.sink838.a = phi i64 [ 12, %.preheader.i.i ], [ 28, %.preheader28.i.i ]
  %.sink279.in.i = phi ptr [ %i.bfa, %.preheader.i.i ], [ %i.bez, %.preheader28.i.i ]
  %.sink275.i = phi i64 [ 14, %.preheader.i.i ], [ 30, %.preheader28.i.i ]
  %.sink39.in.i.i = phi ptr [ %i.bfc, %.preheader.i.i ], [ %i.bfb, %.preheader28.i.i ]
  %.sink861.a = load i16, ptr %.sink861.in.a, align 2, !tbaa !57
  %.sink864 = load i8, ptr %.sink864.in, align 4, !tbaa !50
  %i.ccs = zext i8 %.sink864 to i64
  %i.cct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ccs
  store i16 %.sink861.a, ptr %i.cct, align 2, !tbaa !57
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cbl, i64 %.sink860
  %.sink839.a = load i16, ptr %i.ccu, align 2, !tbaa !57
  %.sink842.a = load i8, ptr %.sink842.in, align 1, !tbaa !50
  %i.ccv = zext i8 %.sink842.a to i64
  %i.ccw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ccv
  store i16 %.sink839.a, ptr %i.ccw, align 2, !tbaa !57
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.cbl, i64 %.sink838.a
  %.sink276.i = load i16, ptr %i.ccx, align 2, !tbaa !57
  %.sink279.i = load i8, ptr %.sink279.in.i, align 1, !tbaa !50
  %i.ccy = zext i8 %.sink279.i to i64
  %i.ccz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ccy
  store i16 %.sink276.i, ptr %i.ccz, align 2, !tbaa !57
  %i.cda = getelementptr inbounds nuw i8, ptr %i.cbl, i64 %.sink275.i
  %.sink.i.i = load i16, ptr %i.cda, align 2, !tbaa !57
  %.sink39.i.i = load i8, ptr %.sink39.in.i.i, align 1, !tbaa !50
  %i.cdb = zext i8 %.sink39.i.i to i64
  %i.cdc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cdb
  store i16 %.sink.i.i, ptr %i.cdc, align 2, !tbaa !57
  %i.cdd = getelementptr inbounds nuw i8, ptr %0, i64 3124
  %i.cde = load i32, ptr %i.cdd, align 4, !tbaa !49
  %i.cdf = shl nsw i32 %i.cde, 4
  %i.cdg = sext i32 %i.cdf to i64
  %i.cdh = getelementptr inbounds [2 x i8], ptr %i.bee, i64 %i.cdg ; 11 uses
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bec, ptr %i.cdi, align 8, !tbaa !163
  %i.cdj = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 10 uses
  br i1 %i.awr, label %.preheader28.i.i.1, label %.preheader.i.i.1

.preheader28.i.i.1:                               ; preds = %.loopexit.i.i
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdh, i64 18
  %i.cdl = load i16, ptr %i.cdk, align 2, !tbaa !57
  %i.cdm = load i8, ptr %i.bep, align 1, !tbaa !50
  %i.cdn = zext i8 %i.cdm to i64
  %i.cdo = getelementptr inbounds nuw [2 x i8], ptr %i.cdj, i64 %i.cdn
  store i16 %i.cdl, ptr %i.cdo, align 2, !tbaa !57
  %i.cdp = getelementptr inbounds nuw i8, ptr %i.cdh, i64 20
  %i.cdq = load i16, ptr %i.cdp, align 2, !tbaa !57
  %i.cdr = load i8, ptr %i.ber, align 2, !tbaa !50
  %i.cds = zext i8 %i.cdr to i64
  %i.cdt = getelementptr inbounds nuw [2 x i8], ptr %i.cdj, i64 %i.cds
  store i16 %i.cdq, ptr %i.cdt, align 2, !tbaa !57
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cdh, i64 22
  %i.cdv = load i16, ptr %i.cdu, align 2, !tbaa !57
  %i.cdw = load i8, ptr %i.bet, align 1, !tbaa !50
  %i.cdx = zext i8 %i.cdw to i64
  %i.cdy = getelementptr inbounds nuw [2 x i8], ptr %i.cdj, i64 %i.cdx
  store i16 %i.cdv, ptr %i.cdy, align 2, !tbaa !57
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdh, i64 24
  br label %.loopexit.i.i.1

.preheader.i.i.1:                                 ; preds = %.loopexit.i.i
  %i.cea = getelementptr inbounds nuw i8, ptr %i.cdh, i64 2
  %i.ceb = load i16, ptr %i.cea, align 2, !tbaa !57
  %i.cec = load i8, ptr %i.beq, align 16, !tbaa !50
  %i.ced = zext i8 %i.cec to i64
  %i.cee = getelementptr inbounds nuw [2 x i8], ptr %i.cdj, i64 %i.ced
  store i16 %i.ceb, ptr %i.cee, align 2, !tbaa !57
  %i.cef = getelementptr inbounds nuw i8, ptr %i.cdh, i64 4
  %i.ceg = load i16, ptr %i.cef, align 2, !tbaa !57
  %i.ceh = load i8, ptr %i.bes, align 8, !tbaa !50
  %i.cei = zext i8 %i.ceh to i64
  %i.cej = getelementptr inbounds nuw [2 x i8], ptr %i.cdj, i64 %i.cei
  store i16 %i.ceg, ptr %i.cej, align 2, !tbaa !57
  %i.cek = getelementptr inbounds nuw i8, ptr %i.cdh, i64 6
  %i.cel = load i16, ptr %i.cek, align 2, !tbaa !57
  %i.cem = load i8, ptr %i.beu, align 16, !tbaa !50
  %i.cen = zext i8 %i.cem to i64
  %i.ceo = getelementptr inbounds nuw [2 x i8], ptr %i.cdj, i64 %i.cen
  store i16 %i.cel, ptr %i.ceo, align 2, !tbaa !57
  %i.cep = getelementptr inbounds nuw i8, ptr %i.cdh, i64 8
  br label %.loopexit.i.i.1

.loopexit.i.i.1:                                  ; preds = %.preheader.i.i.1, %.preheader28.i.i.1
  %.sink864.in.1 = phi ptr [ %i.bew, %.preheader.i.i.1 ], [ %i.bev, %.preheader28.i.i.1 ]
  %.sink861.in.1 = phi ptr [ %i.cep, %.preheader.i.i.1 ], [ %i.cdz, %.preheader28.i.i.1 ]
  %.sink860.1 = phi i64 [ 10, %.preheader.i.i.1 ], [ 26, %.preheader28.i.i.1 ]
  %.sink842.in.1 = phi ptr [ %i.bey, %.preheader.i.i.1 ], [ %i.bex, %.preheader28.i.i.1 ]
  %.sink838.1 = phi i64 [ 12, %.preheader.i.i.1 ], [ 28, %.preheader28.i.i.1 ]
  %.sink279.in.i.1 = phi ptr [ %i.bfa, %.preheader.i.i.1 ], [ %i.bez, %.preheader28.i.i.1 ]
  %.sink275.i.1 = phi i64 [ 14, %.preheader.i.i.1 ], [ 30, %.preheader28.i.i.1 ]
  %.sink39.in.i.i.1 = phi ptr [ %i.bfc, %.preheader.i.i.1 ], [ %i.bfb, %.preheader28.i.i.1 ]
  %.sink861.1 = load i16, ptr %.sink861.in.1, align 2, !tbaa !57
end_hunk_0
