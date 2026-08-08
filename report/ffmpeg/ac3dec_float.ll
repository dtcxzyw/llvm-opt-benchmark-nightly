inline.NumInlined: 130
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 31
begin_hunk_0_@ac3_decode_frame:bb.a
  %.pre806 = load i32, ptr %i.ci, align 4, !tbaa !99
  %.not602.i = icmp eq i32 %.pre806, 0
  %i.bqr = zext nneg i32 %i.bqo to i64
  br label %bb.ga

.preheader758.i:                                  ; preds = %bb.ge, %.loopexit759.i
  br i1 %.not528784.i, label %._crit_edge.i478, label %.lr.ph802.i

.lr.ph802.i:                                      ; preds = %.preheader758.i
  %i.bqs = getelementptr inbounds nuw [28 x i8], ptr %i.ed, i64 %indvars.iv775
  %i.bqt = add nuw i32 %i.aqq, 1
  %wide.trip.count895.i = zext i32 %i.bqt to i64
  br label %bb.gf

bb.ga:                                            ; preds = %bb.ge, %.lr.ph799.i
  %indvars.iv889.i = phi i64 [ %i.bqq, %.lr.ph799.i ], [ %indvars.iv.next890.i, %bb.ge ] ; 6 uses
  br i1 %.not602.i, label %bb.gb, label %._crit_edge958.i

._crit_edge958.i:                                 ; preds = %bb.ga
  %.phi.trans.insert959.i = getelementptr inbounds nuw [4 x i8], ptr %i.bqp, i64 %indvars.iv889.i
  %.pre960.i = load i32, ptr %.phi.trans.insert959.i, align 4, !tbaa !45
  br label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.bqu = load i32, ptr %i.bj, align 4, !tbaa !77
  %i.bqv = zext i32 %i.bqu to i64
  %i.bqw = icmp eq i64 %indvars.iv889.i, %i.bqv
  %i.bqx = select i1 %i.bqw, i32 1, i32 2         ; 2 uses
  %i.bqy = load i32, ptr %i.ao, align 8, !tbaa !62 ; 3 uses
  %i.bqz = load i32, ptr %i.an, align 16, !tbaa !61
  %i.bra = load ptr, ptr %i.al, align 16, !tbaa !59
  %i.brb = lshr i32 %i.bqy, 3
  %i.brc = zext nneg i32 %i.brb to i64
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bra, i64 %i.brc
  %i.bre = load i32, ptr %i.brd, align 1, !tbaa !46
  %i.brf = call i32 @llvm.bswap.i32(i32 %i.bre)
  %i.brg = and i32 %i.bqy, 7
  %i.brh = shl i32 %i.brf, %i.brg
  %i.bri = sub nuw nsw i32 32, %i.bqx
  %i.brj = lshr i32 %i.brh, %i.bri                ; 2 uses
  %i.brk = add i32 %i.bqx, %i.bqy
  %i.brl = call i32 @llvm.umin.i32(i32 %i.bqz, i32 %i.brk)
  store i32 %i.brl, ptr %i.ao, align 8, !tbaa !62
  %i.brm = getelementptr inbounds nuw [4 x i8], ptr %i.bqp, i64 %indvars.iv889.i
  store i32 %i.brj, ptr %i.brm, align 4, !tbaa !45
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %._crit_edge958.i
  %i.brn = phi i32 [ %.pre960.i, %._crit_edge958.i ], [ %i.brj, %bb.gb ]
  %.not603.i = icmp eq i32 %i.brn, 0
  br i1 %.not603.i, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.bro = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv889.i
  store i8 3, ptr %i.bro, align 1, !tbaa !46
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %indvars.iv.next890.i = add nuw nsw i64 %indvars.iv889.i, 1
  %.not550.not.i = icmp samesign ult i64 %indvars.iv889.i, %i.bqr
  br i1 %.not550.not.i, label %bb.ga, label %.preheader758.i, !llvm.loop !194

bb.gf:                                            ; preds = %bb.go, %.lr.ph802.i
  %indvars.iv892.i = phi i64 [ 1, %.lr.ph802.i ], [ %indvars.iv.next893.i, %bb.go ] ; 7 uses
  %i.brp = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv892.i
  store i32 0, ptr %i.brp, align 4, !tbaa !45
  %i.brq = getelementptr inbounds nuw [4 x i8], ptr %i.bqs, i64 %indvars.iv892.i
  %i.brr = load i32, ptr %i.brq, align 4, !tbaa !45 ; 2 uses
  %.not598.i = icmp eq i32 %i.brr, 0
  br i1 %.not598.i, label %bb.go, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.brs = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv892.i ; 2 uses
  %i.brt = load i32, ptr %i.brs, align 4, !tbaa !45
  %i.bru = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv892.i
  %i.brv = load i32, ptr %i.bru, align 4, !tbaa !45
  %.not599.i = icmp eq i32 %i.brv, 0
  br i1 %.not599.i, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.brw = load i32, ptr %i.ce, align 4, !tbaa !45
  br label %bb.gm

bb.gi:                                            ; preds = %bb.gg
  %i.brx = getelementptr inbounds nuw i8, ptr %i.ft, i64 %indvars.iv892.i
  %i.bry = load i8, ptr %i.brx, align 1, !tbaa !46
  %.not600.i = icmp eq i8 %i.bry, 0
  br i1 %.not600.i, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.brz = load i32, ptr %i.fw, align 4, !tbaa !175
  br label %bb.gm

bb.gk:                                            ; preds = %bb.gi
  %i.bsa = load i32, ptr %i.ao, align 8, !tbaa !62 ; 3 uses
  %i.bsb = load i32, ptr %i.an, align 16, !tbaa !61
  %i.bsc = load ptr, ptr %i.al, align 16, !tbaa !59
  %i.bsd = lshr i32 %i.bsa, 3
  %i.bse = zext nneg i32 %i.bsd to i64
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bsc, i64 %i.bse
  %i.bsg = load i32, ptr %i.bsf, align 1, !tbaa !46
  %i.bsh = call i32 @llvm.bswap.i32(i32 %i.bsg)
  %i.bsi = and i32 %i.bsa, 7
  %i.bsj = shl i32 %i.bsh, %i.bsi                 ; 2 uses
  %i.bsk = lshr i32 %i.bsj, 26                    ; 2 uses
  %i.bsl = add i32 %i.bsa, 6
  %i.bsm = call i32 @llvm.umin.i32(i32 %i.bsb, i32 %i.bsl)
  store i32 %i.bsm, ptr %i.ao, align 8, !tbaa !62
  %i.bsn = icmp ult i32 %i.bsj, -201326592
  br i1 %i.bsn, label %.thread735.i, label %bb.gl

.thread735.i:                                     ; preds = %bb.gk
  %i.bso = mul nuw nsw i32 %i.bsk, 3
  %i.bsp = add nuw nsw i32 %i.bso, 73
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.bsq = load ptr, ptr %i.ck, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bsq, i32 noundef 16, ptr noundef nonnull @.str.53, i32 noundef %i.bsk) #11
  br label %bb.ma

bb.gm:                                            ; preds = %.thread735.i, %bb.gj, %bb.gh
  %.sink999 = phi i32 [ %i.bsp, %.thread735.i ], [ %i.brz, %bb.gj ], [ %i.brw, %bb.gh ] ; 3 uses
  store i32 %.sink999, ptr %i.brs, align 4, !tbaa !45
  %i.bsr = add nsw i32 %i.brr, -1
  %i.bss = shl i32 3, %i.bsr                      ; 2 uses
  %i.bst = add i32 %i.bss, -4
  %i.bsu = add i32 %i.bst, %.sink999
  %i.bsv = sdiv i32 %i.bsu, %i.bss
  %i.bsw = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv892.i
  store i32 %i.bsv, ptr %i.bsw, align 4, !tbaa !45
  %.not601.i = icmp eq i32 %.sink999, %i.brt
  %or.cond746.i = select i1 %i.atk, i1 true, i1 %.not601.i
  br i1 %or.cond746.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.e, i8 3, i64 7, i1 false)
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm, %bb.gf
  %indvars.iv.next893.i = add nuw nsw i64 %indvars.iv892.i, 1 ; 2 uses
  %exitcond896.not.i = icmp eq i64 %indvars.iv.next893.i, %wide.trip.count895.i
  br i1 %exitcond896.not.i, label %._crit_edge.i478, label %bb.gf, !llvm.loop !195

._crit_edge.i478:                                 ; preds = %bb.go, %.preheader758.i
  br i1 %.not547.i, label %bb.gr, label %bb.gp

bb.gp:                                            ; preds = %._crit_edge.i478
  %i.bsx = getelementptr inbounds nuw [28 x i8], ptr %i.ed, i64 %indvars.iv775
  %i.bsy = load i32, ptr %i.bsx, align 4, !tbaa !45 ; 2 uses
  %.not552.i = icmp eq i32 %i.bsy, 0
  br i1 %.not552.i, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.bsz = load i32, ptr %i.cf, align 16, !tbaa !45
  %i.bta = load i32, ptr %i.ce, align 4, !tbaa !45
  %i.btb = sub nsw i32 %i.bsz, %i.bta
  %i.btc = add nsw i32 %i.bsy, -1
  %i.btd = shl i32 3, %i.btc
  %i.bte = sdiv i32 %i.btb, %i.btd
  store i32 %i.bte, ptr %i.cg, align 4, !tbaa !45
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp, %._crit_edge.i478
  br i1 %.not550797.i, label %._crit_edge807.i, label %.lr.ph806.i

.lr.ph806.i:                                      ; preds = %bb.gr
  %i.btf = getelementptr inbounds nuw [28 x i8], ptr %i.ed, i64 %indvars.iv775
  %i.btg = zext i1 %.not547.i to i64
  br label %bb.gs

bb.gs:                                            ; preds = %bb.he, %.lr.ph806.i
  %indvars.iv897.i = phi i64 [ %i.btg, %.lr.ph806.i ], [ %indvars.iv.next898.i, %bb.he ] ; 8 uses
  %i.bth = getelementptr inbounds nuw [4 x i8], ptr %i.btf, i64 %indvars.iv897.i ; 2 uses
  %i.bti = load i32, ptr %i.bth, align 4, !tbaa !45
  %.not595.i = icmp eq i32 %i.bti, 0
  br i1 %.not595.i, label %bb.he, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.btj = load i32, ptr %i.ao, align 8, !tbaa !62 ; 3 uses
  %i.btk = load i32, ptr %i.an, align 16, !tbaa !61 ; 2 uses
  %i.btl = load ptr, ptr %i.al, align 16, !tbaa !59 ; 2 uses
  %i.btm = lshr i32 %i.btj, 3
  %i.btn = zext nneg i32 %i.btm to i64
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btl, i64 %i.btn
  %i.btp = load i32, ptr %i.bto, align 1, !tbaa !46
  %i.btq = call i32 @llvm.bswap.i32(i32 %i.btp)
  %i.btr = and i32 %i.btj, 7
  %i.bts = shl i32 %i.btq, %i.btr
  %i.btt = lshr i32 %i.bts, 28
  %i.btu = add i32 %i.btj, 4
  %i.btv = call i32 @llvm.umin.i32(i32 %i.btk, i32 %i.btu) ; 2 uses
  store i32 %i.btv, ptr %i.ao, align 8, !tbaa !62
  %i.btw = icmp ne i64 %indvars.iv897.i, 0        ; 3 uses
  %i.btx = xor i1 %i.btw, true
  %i.bty = zext i1 %i.btx to i32
  %i.btz = shl nuw nsw i32 %i.btt, %i.bty         ; 2 uses
  %i.bua = trunc nuw nsw i32 %i.btz to i8
  %i.bub = getelementptr inbounds nuw [256 x i8], ptr %i.gn, i64 %indvars.iv897.i ; 2 uses
  store i8 %i.bua, ptr %i.bub, align 16, !tbaa !46
  %i.buc = load i32, ptr %i.bth, align 4, !tbaa !45 ; 2 uses
  %i.bud = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv897.i
  %i.bue = load i32, ptr %i.bud, align 4, !tbaa !45 ; 3 uses
  %i.buf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv897.i
  %i.bug = load i32, ptr %i.buf, align 4, !tbaa !45
  %i.buh = zext i1 %i.btw to i32
  %i.bui = add nsw i32 %i.bug, %i.buh
  %i.buj = sext i32 %i.bui to i64
  %i.buk = getelementptr inbounds i8, ptr %i.bub, i64 %i.buj ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %11 = icmp eq i32 %i.buc, 3
  %12 = select i1 %11, i32 4, i32 %i.buc
  %i.bul = icmp sgt i32 %i.bue, 0
  br i1 %i.bul, label %.lr.ph.i654.i, label %.loopexit757.i

.lr.ph.i654.i:                                    ; preds = %bb.gt, %bb.gv
  %indvars.iv.i656.i = phi i64 [ %indvars.iv.next.i657.i, %bb.gv ], [ 0, %bb.gt ] ; 2 uses
  %i.bum = phi i32 [ %i.buw, %bb.gv ], [ %i.btv, %bb.gt ] ; 3 uses
  %.03948.i.i = phi i32 [ %i.bvi, %bb.gv ], [ 0, %bb.gt ]
  %i.bun = lshr i32 %i.bum, 3
  %i.buo = zext nneg i32 %i.bun to i64
  %i.bup = getelementptr inbounds nuw i8, ptr %i.btl, i64 %i.buo
  %i.buq = load i32, ptr %i.bup, align 1, !tbaa !46
  %i.bur = call i32 @llvm.bswap.i32(i32 %i.buq)
  %i.bus = and i32 %i.bum, 7
  %i.but = shl i32 %i.bur, %i.bus                 ; 2 uses
  %i.buu = lshr i32 %i.but, 25                    ; 2 uses
  %i.buv = add i32 %i.bum, 7
  %i.buw = call i32 @llvm.umin.i32(i32 %i.btk, i32 %i.buv) ; 2 uses
  store i32 %i.buw, ptr %i.ao, align 8, !tbaa !62
  %i.bux = icmp ugt i32 %i.but, -100663297
  br i1 %i.bux, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %.lr.ph.i654.i
  %i.buy = load ptr, ptr %i.ck, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.buy, i32 noundef 16, ptr noundef nonnull @.str.66, i32 noundef %i.buu) #11
  br label %decode_exponents.exit.i

bb.gv:                                            ; preds = %.lr.ph.i654.i
  %i.buz = zext nneg i32 %i.buu to i64
  %i.bva = getelementptr inbounds nuw [3 x i8], ptr @ff_ac3_ungroup_3_in_7_bits_tab, i64 %i.buz ; 2 uses
  %i.bvb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i656.i ; 2 uses
  %i.bvc = load <2 x i8>, ptr %i.bva, align 1, !tbaa !46
  %i.bvd = zext <2 x i8> %i.bvc to <2 x i32>
  store <2 x i32> %i.bvd, ptr %i.bvb, align 4, !tbaa !45
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bva, i64 2
  %i.bvf = load i8, ptr %i.bve, align 1, !tbaa !46
  %i.bvg = zext i8 %i.bvf to i32
  %indvars.iv.next.i657.i = add nuw nsw i64 %indvars.iv.i656.i, 3
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvb, i64 8
  store i32 %i.bvg, ptr %i.bvh, align 4, !tbaa !45
  %i.bvi = add nuw nsw i32 %.03948.i.i, 1         ; 2 uses
  %exitcond.not.i658.i = icmp eq i32 %i.bvi, %i.bue
  br i1 %exitcond.not.i658.i, label %._crit_edge.i659.i, label %.lr.ph.i654.i, !llvm.loop !196

._crit_edge.i659.i:                               ; preds = %bb.gv
  %i.bvj = mul i32 %i.bue, 3
  %smax.i.i = call i32 @llvm.smax.i32(i32 %i.bvj, i32 1)
  %wide.trip.count.i660.i = zext nneg i32 %smax.i.i to i64
  br label %.lr.ph54.i.i

.lr.ph54.i.i:                                     ; preds = %bb.hb, %._crit_edge.i659.i
  %indvars.iv59.i.i = phi i64 [ 0, %._crit_edge.i659.i ], [ %indvars.iv.next60.i.i, %bb.hb ] ; 2 uses
  %.052.i.i = phi i32 [ %i.btz, %._crit_edge.i659.i ], [ %i.bvn, %bb.hb ]
  %.04050.i.i = phi i32 [ 0, %._crit_edge.i659.i ], [ %.3.i.i, %bb.hb ] ; 5 uses
  %i.bvk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv59.i.i
  %i.bvl = load i32, ptr %i.bvk, align 4, !tbaa !45
  %i.bvm = add nsw i32 %.052.i.i, -2
  %i.bvn = add i32 %i.bvm, %i.bvl                 ; 6 uses
  %i.bvo = icmp ugt i32 %i.bvn, 24
  br i1 %i.bvo, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %.lr.ph54.i.i
  %i.bvp = load ptr, ptr %i.ck, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bvp, i32 noundef 16, ptr noundef nonnull @.str.67, i32 noundef %i.bvn) #11
  br label %decode_exponents.exit.i

bb.gx:                                            ; preds = %.lr.ph54.i.i
  switch i32 %12, label %bb.hb [
    i32 4, label %bb.gy
    i32 2, label %._crit_edge64.i.i
    i32 1, label %._crit_edge63.i.i
  ]

._crit_edge64.i.i:                                ; preds = %bb.gx
  %.pre.i662.i = trunc nuw nsw i32 %i.bvn to i8
  br label %bb.gz

._crit_edge63.i.i:                                ; preds = %bb.gx
  %.pre65.i661.i = trunc nuw nsw i32 %i.bvn to i8
  br label %bb.ha

bb.gy:                                            ; preds = %bb.gx
  %i.bvq = trunc nuw nsw i32 %i.bvn to i8         ; 3 uses
  %i.bvr = sext i32 %.04050.i.i to i64
  %i.bvs = getelementptr inbounds i8, ptr %i.buk, i64 %i.bvr ; 2 uses
  store i8 %i.bvq, ptr %i.bvs, align 1, !tbaa !46
  %i.bvt = add nsw i32 %.04050.i.i, 2
  %i.bvu = getelementptr i8, ptr %i.bvs, i64 1
  store i8 %i.bvq, ptr %i.bvu, align 1, !tbaa !46
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %._crit_edge64.i.i
  %.pre-phi.i.i = phi i8 [ %.pre.i662.i, %._crit_edge64.i.i ], [ %i.bvq, %bb.gy ] ; 2 uses
  %.141.i.i = phi i32 [ %.04050.i.i, %._crit_edge64.i.i ], [ %i.bvt, %bb.gy ] ; 2 uses
  %i.bvv = add nsw i32 %.141.i.i, 1
  %i.bvw = sext i32 %.141.i.i to i64
  %i.bvx = getelementptr inbounds i8, ptr %i.buk, i64 %i.bvw
  store i8 %.pre-phi.i.i, ptr %i.bvx, align 1, !tbaa !46
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %._crit_edge63.i.i
  %.pre-phi66.i.i = phi i8 [ %.pre65.i661.i, %._crit_edge63.i.i ], [ %.pre-phi.i.i, %bb.gz ]
  %.2.i.i = phi i32 [ %.04050.i.i, %._crit_edge63.i.i ], [ %i.bvv, %bb.gz ] ; 2 uses
  %i.bvy = add nsw i32 %.2.i.i, 1
  %i.bvz = sext i32 %.2.i.i to i64
  %i.bwa = getelementptr inbounds i8, ptr %i.buk, i64 %i.bvz
  store i8 %.pre-phi66.i.i, ptr %i.bwa, align 1, !tbaa !46
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gx
  %.3.i.i = phi i32 [ %.04050.i.i, %bb.gx ], [ %i.bvy, %bb.ha ]
  %indvars.iv.next60.i.i = add nuw nsw i64 %indvars.iv59.i.i, 1 ; 2 uses
  %exitcond62.not.i.i = icmp eq i64 %indvars.iv.next60.i.i, %wide.trip.count.i660.i
  br i1 %exitcond62.not.i.i, label %.loopexit757.i, label %.lr.ph54.i.i, !llvm.loop !197

decode_exponents.exit.i:                          ; preds = %bb.gw, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.ma

.loopexit757.i:                                   ; preds = %bb.hb, %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br i1 %i.btw, label %bb.hc, label %bb.he

bb.hc:                                            ; preds = %.loopexit757.i
  %i.bwb = load i32, ptr %i.bj, align 4, !tbaa !77
  %i.bwc = zext i32 %i.bwb to i64
  %.not597.i = icmp eq i64 %indvars.iv897.i, %i.bwc
  br i1 %.not597.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.bwd = load i32, ptr %i.ao, align 8, !tbaa !62
  %i.bwe = load i32, ptr %i.an, align 16, !tbaa !61
  %i.bwf = add i32 %i.bwd, 2
  %i.bwg = call i32 @llvm.umin.i32(i32 %i.bwe, i32 %i.bwf)
  store i32 %i.bwg, ptr %i.ao, align 8, !tbaa !62
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc, %.loopexit757.i, %bb.gs
  %indvars.iv.next898.i = add nuw nsw i64 %indvars.iv897.i, 1
  %i.bwh = load i32, ptr %i.bh, align 16, !tbaa !75 ; 2 uses
  %i.bwi = sext i32 %i.bwh to i64
  %.not553.not.i = icmp slt i64 %indvars.iv897.i, %i.bwi
  br i1 %.not553.not.i, label %bb.gs, label %._crit_edge807.i, !llvm.loop !198

._crit_edge807.i:                                 ; preds = %bb.he, %bb.gr
  %i.bwj = phi i32 [ %i.bqo, %bb.gr ], [ %i.bwh, %bb.he ] ; 14 uses
  %i.bwk = load i32, ptr %i.di, align 16, !tbaa !126
  %.not554.i = icmp eq i32 %i.bwk, 0
  br i1 %.not554.i, label %.loopexit756.i, label %bb.hf

bb.hf:                                            ; preds = %._crit_edge807.i
  %i.bwl = load i32, ptr %i.ao, align 8, !tbaa !62 ; 4 uses
  %i.bwm = load ptr, ptr %i.al, align 16, !tbaa !59 ; 6 uses
  %i.bwn = lshr i32 %i.bwl, 3
  %i.bwo = zext nneg i32 %i.bwn to i64
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwm, i64 %i.bwo
  %i.bwq = load i8, ptr %i.bwp, align 1, !tbaa !46
  %i.bwr = load i32, ptr %i.an, align 16, !tbaa !61 ; 6 uses
  %i.bws = icmp slt i32 %i.bwl, %i.bwr
  %i.bwt = zext i1 %i.bws to i32
  %spec.select.i663.i = add i32 %i.bwl, %i.bwt    ; 4 uses
  %i.bwu = zext i8 %i.bwq to i32
  %i.bwv = and i32 %i.bwl, 7
  store i32 %spec.select.i663.i, ptr %i.ao, align 8, !tbaa !62
  %i.bww = lshr exact i32 128, %i.bwv
  %i.bwx = and i32 %i.bww, %i.bwu
  %.not555.i = icmp eq i32 %i.bwx, 0
  br i1 %.not555.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bwy = lshr i32 %spec.select.i663.i, 3
  %i.bwz = zext nneg i32 %i.bwy to i64
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwm, i64 %i.bwz
  %i.bxb = load i32, ptr %i.bxa, align 1, !tbaa !46
  %i.bxc = call i32 @llvm.bswap.i32(i32 %i.bxb)
  %i.bxd = and i32 %spec.select.i663.i, 7
  %i.bxe = shl i32 %i.bxc, %i.bxd
  %i.bxf = lshr i32 %i.bxe, 30
  %i.bxg = add i32 %spec.select.i663.i, 2
  %i.bxh = call i32 @llvm.umin.i32(i32 %i.bwr, i32 %i.bxg) ; 4 uses
  store i32 %i.bxh, ptr %i.ao, align 8, !tbaa !62
  %i.bxi = zext nneg i32 %i.bxf to i64
  %i.bxj = getelementptr inbounds nuw i8, ptr @ff_ac3_slow_decay_tab, i64 %i.bxi
  %i.bxk = load i8, ptr %i.bxj, align 1, !tbaa !46
  %i.bxl = zext i8 %i.bxk to i32
  %i.bxm = load i32, ptr %i.bb, align 4, !tbaa !69 ; 2 uses
  %i.bxn = lshr i32 %i.bxl, %i.bxm
  store i32 %i.bxn, ptr %i.dl, align 4, !tbaa !127
  %i.bxo = lshr i32 %i.bxh, 3
  %i.bxp = zext nneg i32 %i.bxo to i64
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bwm, i64 %i.bxp
  %i.bxr = load i32, ptr %i.bxq, align 1, !tbaa !46
  %i.bxs = call i32 @llvm.bswap.i32(i32 %i.bxr)
  %i.bxt = and i32 %i.bxh, 7
  %i.bxu = shl i32 %i.bxs, %i.bxt
  %i.bxv = lshr i32 %i.bxu, 30
  %i.bxw = add i32 %i.bxh, 2
  %i.bxx = call i32 @llvm.umin.i32(i32 %i.bwr, i32 %i.bxw) ; 4 uses
  store i32 %i.bxx, ptr %i.ao, align 8, !tbaa !62
  %i.bxy = zext nneg i32 %i.bxv to i64
  %i.bxz = getelementptr inbounds nuw i8, ptr @ff_ac3_fast_decay_tab, i64 %i.bxy
  %i.bya = load i8, ptr %i.bxz, align 1, !tbaa !46
  %i.byb = zext i8 %i.bya to i32
  %i.byc = lshr i32 %i.byb, %i.bxm
  store i32 %i.byc, ptr %i.do, align 8, !tbaa !128
  %i.byd = lshr i32 %i.bxx, 3
  %i.bye = zext nneg i32 %i.byd to i64
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bwm, i64 %i.bye
  %i.byg = load i32, ptr %i.byf, align 1, !tbaa !46
  %i.byh = call i32 @llvm.bswap.i32(i32 %i.byg)
  %i.byi = and i32 %i.bxx, 7
  %i.byj = shl i32 %i.byh, %i.byi
  %i.byk = lshr i32 %i.byj, 30
  %i.byl = add i32 %i.bxx, 2
  %i.bym = call i32 @llvm.umin.i32(i32 %i.bwr, i32 %i.byl) ; 4 uses
  store i32 %i.bym, ptr %i.ao, align 8, !tbaa !62
  %i.byn = zext nneg i32 %i.byk to i64
  %i.byo = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_slow_gain_tab, i64 %i.byn
  %i.byp = load i16, ptr %i.byo, align 2, !tbaa !165
  %i.byq = zext i16 %i.byp to i32
  store i32 %i.byq, ptr %i.dr, align 16, !tbaa !129
  %i.byr = lshr i32 %i.bym, 3
  %i.bys = zext nneg i32 %i.byr to i64
  %i.byt = getelementptr inbounds nuw i8, ptr %i.bwm, i64 %i.bys
  %i.byu = load i32, ptr %i.byt, align 1, !tbaa !46
  %i.byv = call i32 @llvm.bswap.i32(i32 %i.byu)
  %i.byw = and i32 %i.bym, 7
  %i.byx = shl i32 %i.byv, %i.byw
  %i.byy = lshr i32 %i.byx, 30
  %i.byz = add i32 %i.bym, 2
  %i.bza = call i32 @llvm.umin.i32(i32 %i.bwr, i32 %i.byz) ; 4 uses
  store i32 %i.bza, ptr %i.ao, align 8, !tbaa !62
  %i.bzb = zext nneg i32 %i.byy to i64
  %i.bzc = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_db_per_bit_tab, i64 %i.bzb
  %i.bzd = load i16, ptr %i.bzc, align 2, !tbaa !165
  %i.bze = zext i16 %i.bzd to i32
  store i32 %i.bze, ptr %i.du, align 4, !tbaa !130
  %i.bzf = lshr i32 %i.bza, 3
  %i.bzg = zext nneg i32 %i.bzf to i64
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.bwm, i64 %i.bzg
  %i.bzi = load i32, ptr %i.bzh, align 1, !tbaa !46
  %i.bzj = call i32 @llvm.bswap.i32(i32 %i.bzi)
  %i.bzk = and i32 %i.bza, 7
  %i.bzl = shl i32 %i.bzj, %i.bzk
  %i.bzm = lshr i32 %i.bzl, 29
  %i.bzn = add i32 %i.bza, 3
  %i.bzo = call i32 @llvm.umin.i32(i32 %i.bwr, i32 %i.bzn)
  store i32 %i.bzo, ptr %i.ao, align 8, !tbaa !62
  %i.bzp = zext nneg i32 %i.bzm to i64
  %i.bzq = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_floor_tab, i64 %i.bzp
  %i.bzr = load i16, ptr %i.bzq, align 2, !tbaa !165
  %i.bzs = sext i16 %i.bzr to i32
  store i32 %i.bzs, ptr %i.dx, align 16, !tbaa !131
  %.not557809.i = icmp slt i32 %i.bwj, %i.bqn
  br i1 %.not557809.i, label %.loopexit756.i, label %iter.check

iter.check:                                       ; preds = %bb.hg
  %i.bzt = zext i1 %.not547.i to i64              ; 4 uses
  %i.bzu = add nuw i32 %i.bwj, 1
  %wide.trip.count903.i = zext i32 %i.bzu to i64  ; 2 uses
  %i.bzv = sub nsw i64 %wide.trip.count903.i, %i.bzt ; 7 uses
  %min.iters.check1105 = icmp ult i64 %i.bzv, 8
  br i1 %min.iters.check1105, label %.lr.ph812.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1106 = icmp ult i64 %i.bzv, 32
  br i1 %min.iters.check1106, label %vec.epilog.ph, label %vector.ph1107

vector.ph1107:                                    ; preds = %vector.main.loop.iter.check
  %i.bzw = and i64 %i.bzv, 24
  %n.vec1108 = and i64 %i.bzv, -32                ; 4 uses
  %i.bzx = or disjoint i64 %n.vec1108, %i.bzt
  %.sroa.sel.idx = zext i1 %.not547.i to i64
  %.sroa.sel.sroa.sel.v = select i1 %.not547.i, i64 17, i64 16
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %vector.ph1107
  %index1110 = phi i64 [ 0, %vector.ph1107 ], [ %index.next1113, %vector.body1109 ] ; 2 uses
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.e, i64 %index1110 ; 2 uses
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %i.bzy, i64 %.sroa.sel.idx ; 2 uses
  %.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %i.bzy, i64 %.sroa.sel.sroa.sel.v ; 2 uses
  %wide.load1111 = load <16 x i8>, ptr %.sroa.sel, align 1, !tbaa !46
end_hunk_0
