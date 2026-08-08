inline.NumInlined: 135
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 36
begin_hunk_0_@ac3_decode_frame:bb.a
  %.pre828 = load i32, ptr %i.ci, align 4, !tbaa !98
  %.not593.i = icmp eq i32 %.pre828, 0
  %i.byw = zext nneg i32 %i.byt to i64
  br label %bb.gt

.preheader763.i:                                  ; preds = %bb.gx, %.loopexit764.i
  br i1 %.not520794.i, label %._crit_edge.i478, label %.lr.ph811.i

.lr.ph811.i:                                      ; preds = %.preheader763.i
  %i.byx = getelementptr inbounds nuw [28 x i8], ptr %i.ed, i64 %indvars.iv797
  %i.byy = add nuw i32 %i.aqo, 1
  %wide.trip.count913.i = zext i32 %i.byy to i64
  br label %bb.gy

bb.gt:                                            ; preds = %bb.gx, %.lr.ph808.i
  %indvars.iv907.i = phi i64 [ %i.byv, %.lr.ph808.i ], [ %indvars.iv.next908.i, %bb.gx ] ; 6 uses
  br i1 %.not593.i, label %bb.gu, label %._crit_edge976.i

._crit_edge976.i:                                 ; preds = %bb.gt
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.byu, i64 %indvars.iv907.i
  %.pre977.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !45
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.byz = load i32, ptr %i.bj, align 4, !tbaa !76
  %i.bza = zext i32 %i.byz to i64
  %i.bzb = icmp eq i64 %indvars.iv907.i, %i.bza
  %i.bzc = select i1 %i.bzb, i32 1, i32 2         ; 2 uses
  %i.bzd = load i32, ptr %i.ao, align 8, !tbaa !61 ; 3 uses
  %i.bze = load i32, ptr %i.an, align 16, !tbaa !60
  %i.bzf = load ptr, ptr %i.al, align 16, !tbaa !58
  %i.bzg = lshr i32 %i.bzd, 3
  %i.bzh = zext nneg i32 %i.bzg to i64
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzf, i64 %i.bzh
  %i.bzj = load i32, ptr %i.bzi, align 1, !tbaa !46
  %i.bzk = call i32 @llvm.bswap.i32(i32 %i.bzj)
  %i.bzl = and i32 %i.bzd, 7
  %i.bzm = shl i32 %i.bzk, %i.bzl
  %i.bzn = sub nuw nsw i32 32, %i.bzc
  %i.bzo = lshr i32 %i.bzm, %i.bzn                ; 2 uses
  %i.bzp = add i32 %i.bzc, %i.bzd
  %i.bzq = call i32 @llvm.umin.i32(i32 %i.bze, i32 %i.bzp)
  store i32 %i.bzq, ptr %i.ao, align 8, !tbaa !61
  %i.bzr = getelementptr inbounds nuw [4 x i8], ptr %i.byu, i64 %indvars.iv907.i
  store i32 %i.bzo, ptr %i.bzr, align 4, !tbaa !45
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %._crit_edge976.i
  %i.bzs = phi i32 [ %.pre977.i, %._crit_edge976.i ], [ %i.bzo, %bb.gu ]
  %.not594.i = icmp eq i32 %i.bzs, 0
  br i1 %.not594.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv907.i
  store i8 3, ptr %i.bzt, align 1, !tbaa !46
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %indvars.iv.next908.i = add nuw nsw i64 %indvars.iv907.i, 1
  %.not542.not.i = icmp samesign ult i64 %indvars.iv907.i, %i.byw
  br i1 %.not542.not.i, label %bb.gt, label %.preheader763.i, !llvm.loop !193

bb.gy:                                            ; preds = %bb.hh, %.lr.ph811.i
  %indvars.iv910.i = phi i64 [ 1, %.lr.ph811.i ], [ %indvars.iv.next911.i, %bb.hh ] ; 7 uses
  %i.bzu = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv910.i
  store i32 0, ptr %i.bzu, align 4, !tbaa !45
  %i.bzv = getelementptr inbounds nuw [4 x i8], ptr %i.byx, i64 %indvars.iv910.i
  %i.bzw = load i32, ptr %i.bzv, align 4, !tbaa !45 ; 2 uses
  %.not589.i = icmp eq i32 %i.bzw, 0
  br i1 %.not589.i, label %bb.hh, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.bzx = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv910.i ; 2 uses
  %i.bzy = load i32, ptr %i.bzx, align 4, !tbaa !45
  %i.bzz = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv910.i
  %i.caa = load i32, ptr %i.bzz, align 4, !tbaa !45
  %.not590.i = icmp eq i32 %i.caa, 0
  br i1 %.not590.i, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.cab = load i32, ptr %i.ce, align 4, !tbaa !45
  br label %bb.hf

bb.hb:                                            ; preds = %bb.gz
  %i.cac = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv910.i
  %i.cad = load i8, ptr %i.cac, align 1, !tbaa !46
  %.not591.i = icmp eq i8 %i.cad, 0
  br i1 %.not591.i, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.cae = load i32, ptr %i.fw, align 4, !tbaa !175
  br label %bb.hf

bb.hd:                                            ; preds = %bb.hb
  %i.caf = load i32, ptr %i.ao, align 8, !tbaa !61 ; 3 uses
  %i.cag = load i32, ptr %i.an, align 16, !tbaa !60
  %i.cah = load ptr, ptr %i.al, align 16, !tbaa !58
  %i.cai = lshr i32 %i.caf, 3
  %i.caj = zext nneg i32 %i.cai to i64
  %i.cak = getelementptr inbounds nuw i8, ptr %i.cah, i64 %i.caj
  %i.cal = load i32, ptr %i.cak, align 1, !tbaa !46
  %i.cam = call i32 @llvm.bswap.i32(i32 %i.cal)
  %i.can = and i32 %i.caf, 7
  %i.cao = shl i32 %i.cam, %i.can                 ; 2 uses
  %i.cap = lshr i32 %i.cao, 26                    ; 2 uses
  %i.caq = add i32 %i.caf, 6
  %i.car = call i32 @llvm.umin.i32(i32 %i.cag, i32 %i.caq)
  store i32 %i.car, ptr %i.ao, align 8, !tbaa !61
  %i.cas = icmp ult i32 %i.cao, -201326592
  br i1 %i.cas, label %.thread736.i, label %bb.he

.thread736.i:                                     ; preds = %bb.hd
  %i.cat = mul nuw nsw i32 %i.cap, 3
  %i.cau = add nuw nsw i32 %i.cat, 73
  br label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.cav = load ptr, ptr %i.ck, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cav, i32 noundef 16, ptr noundef nonnull @.str.38, i32 noundef %i.cap) #11
  br label %bb.mx

bb.hf:                                            ; preds = %.thread736.i, %bb.hc, %bb.ha
  %.sink1043 = phi i32 [ %i.cau, %.thread736.i ], [ %i.cae, %bb.hc ], [ %i.cab, %bb.ha ] ; 3 uses
  store i32 %.sink1043, ptr %i.bzx, align 4, !tbaa !45
  %i.caw = add nsw i32 %i.bzw, -1
  %i.cax = shl i32 3, %i.caw                      ; 2 uses
  %i.cay = add i32 %i.cax, -4
  %i.caz = add i32 %i.cay, %.sink1043
  %i.cba = sdiv i32 %i.caz, %i.cax
  %i.cbb = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv910.i
  store i32 %i.cba, ptr %i.cbb, align 4, !tbaa !45
  %.not592.i = icmp eq i32 %.sink1043, %i.bzy
  %or.cond747.i = select i1 %i.atj, i1 true, i1 %.not592.i
  br i1 %or.cond747.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.e, i8 3, i64 7, i1 false)
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf, %bb.gy
  %indvars.iv.next911.i = add nuw nsw i64 %indvars.iv910.i, 1 ; 2 uses
  %exitcond914.not.i = icmp eq i64 %indvars.iv.next911.i, %wide.trip.count913.i
  br i1 %exitcond914.not.i, label %._crit_edge.i478, label %bb.gy, !llvm.loop !194

._crit_edge.i478:                                 ; preds = %bb.hh, %.preheader763.i
  br i1 %.not539.i, label %bb.hk, label %bb.hi

bb.hi:                                            ; preds = %._crit_edge.i478
  %i.cbc = getelementptr inbounds nuw [28 x i8], ptr %i.ed, i64 %indvars.iv797
  %i.cbd = load i32, ptr %i.cbc, align 4, !tbaa !45 ; 2 uses
  %.not544.i = icmp eq i32 %i.cbd, 0
  br i1 %.not544.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.cbe = load i32, ptr %i.cf, align 16, !tbaa !45
  %i.cbf = load i32, ptr %i.ce, align 4, !tbaa !45
  %i.cbg = sub nsw i32 %i.cbe, %i.cbf
  %i.cbh = add nsw i32 %i.cbd, -1
  %i.cbi = shl i32 3, %i.cbh
  %i.cbj = sdiv i32 %i.cbg, %i.cbi
  store i32 %i.cbj, ptr %i.cg, align 4, !tbaa !45
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi, %._crit_edge.i478
  br i1 %.not542806.i, label %._crit_edge816.i, label %.lr.ph815.i

.lr.ph815.i:                                      ; preds = %bb.hk
  %i.cbk = getelementptr inbounds nuw [28 x i8], ptr %i.ed, i64 %indvars.iv797
  %i.cbl = zext i1 %.not539.i to i64
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hx, %.lr.ph815.i
  %indvars.iv915.i = phi i64 [ %i.cbl, %.lr.ph815.i ], [ %indvars.iv.next916.i, %bb.hx ] ; 8 uses
  %i.cbm = getelementptr inbounds nuw [4 x i8], ptr %i.cbk, i64 %indvars.iv915.i ; 2 uses
  %i.cbn = load i32, ptr %i.cbm, align 4, !tbaa !45
  %.not586.i = icmp eq i32 %i.cbn, 0
  br i1 %.not586.i, label %bb.hx, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.cbo = load i32, ptr %i.ao, align 8, !tbaa !61 ; 3 uses
  %i.cbp = load i32, ptr %i.an, align 16, !tbaa !60 ; 2 uses
  %i.cbq = load ptr, ptr %i.al, align 16, !tbaa !58 ; 2 uses
  %i.cbr = lshr i32 %i.cbo, 3
  %i.cbs = zext nneg i32 %i.cbr to i64
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbq, i64 %i.cbs
  %i.cbu = load i32, ptr %i.cbt, align 1, !tbaa !46
  %i.cbv = call i32 @llvm.bswap.i32(i32 %i.cbu)
  %i.cbw = and i32 %i.cbo, 7
  %i.cbx = shl i32 %i.cbv, %i.cbw
  %i.cby = lshr i32 %i.cbx, 28
  %i.cbz = add i32 %i.cbo, 4
  %i.cca = call i32 @llvm.umin.i32(i32 %i.cbp, i32 %i.cbz) ; 2 uses
  store i32 %i.cca, ptr %i.ao, align 8, !tbaa !61
  %i.ccb = icmp ne i64 %indvars.iv915.i, 0        ; 3 uses
  %i.ccc = xor i1 %i.ccb, true
  %i.ccd = zext i1 %i.ccc to i32
  %i.cce = shl nuw nsw i32 %i.cby, %i.ccd         ; 2 uses
  %i.ccf = trunc nuw nsw i32 %i.cce to i8
  %i.ccg = getelementptr inbounds nuw [256 x i8], ptr %i.gm, i64 %indvars.iv915.i ; 2 uses
  store i8 %i.ccf, ptr %i.ccg, align 16, !tbaa !46
  %i.cch = load i32, ptr %i.cbm, align 4, !tbaa !45 ; 2 uses
  %i.cci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv915.i
  %i.ccj = load i32, ptr %i.cci, align 4, !tbaa !45 ; 3 uses
  %i.cck = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv915.i
  %i.ccl = load i32, ptr %i.cck, align 4, !tbaa !45
  %i.ccm = zext i1 %i.ccb to i32
  %i.ccn = add nsw i32 %i.ccl, %i.ccm
  %i.cco = sext i32 %i.ccn to i64
  %i.ccp = getelementptr inbounds i8, ptr %i.ccg, i64 %i.cco ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %11 = icmp eq i32 %i.cch, 3
  %12 = select i1 %11, i32 4, i32 %i.cch
  %i.ccq = icmp sgt i32 %i.ccj, 0
  br i1 %i.ccq, label %.lr.ph.i643.i, label %.loopexit762.i

.lr.ph.i643.i:                                    ; preds = %bb.hm, %bb.ho
  %indvars.iv.i645.i = phi i64 [ %indvars.iv.next.i646.i, %bb.ho ], [ 0, %bb.hm ] ; 2 uses
  %i.ccr = phi i32 [ %i.cdb, %bb.ho ], [ %i.cca, %bb.hm ] ; 3 uses
  %.03948.i.i = phi i32 [ %i.cdn, %bb.ho ], [ 0, %bb.hm ]
  %i.ccs = lshr i32 %i.ccr, 3
  %i.cct = zext nneg i32 %i.ccs to i64
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cbq, i64 %i.cct
  %i.ccv = load i32, ptr %i.ccu, align 1, !tbaa !46
  %i.ccw = call i32 @llvm.bswap.i32(i32 %i.ccv)
  %i.ccx = and i32 %i.ccr, 7
  %i.ccy = shl i32 %i.ccw, %i.ccx                 ; 2 uses
  %i.ccz = lshr i32 %i.ccy, 25                    ; 2 uses
  %i.cda = add i32 %i.ccr, 7
  %i.cdb = call i32 @llvm.umin.i32(i32 %i.cbp, i32 %i.cda) ; 2 uses
  store i32 %i.cdb, ptr %i.ao, align 8, !tbaa !61
  %i.cdc = icmp ugt i32 %i.ccy, -100663297
  br i1 %i.cdc, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %.lr.ph.i643.i
  %i.cdd = load ptr, ptr %i.ck, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cdd, i32 noundef 16, ptr noundef nonnull @.str.51, i32 noundef %i.ccz) #11
  br label %decode_exponents.exit.i

bb.ho:                                            ; preds = %.lr.ph.i643.i
  %i.cde = zext nneg i32 %i.ccz to i64
  %i.cdf = getelementptr inbounds nuw [3 x i8], ptr @ff_ac3_ungroup_3_in_7_bits_tab, i64 %i.cde ; 2 uses
  %i.cdg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i645.i ; 2 uses
  %i.cdh = load <2 x i8>, ptr %i.cdf, align 1, !tbaa !46
  %i.cdi = zext <2 x i8> %i.cdh to <2 x i32>
  store <2 x i32> %i.cdi, ptr %i.cdg, align 4, !tbaa !45
  %i.cdj = getelementptr inbounds nuw i8, ptr %i.cdf, i64 2
  %i.cdk = load i8, ptr %i.cdj, align 1, !tbaa !46
  %i.cdl = zext i8 %i.cdk to i32
  %indvars.iv.next.i646.i = add nuw nsw i64 %indvars.iv.i645.i, 3
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdg, i64 8
  store i32 %i.cdl, ptr %i.cdm, align 4, !tbaa !45
  %i.cdn = add nuw nsw i32 %.03948.i.i, 1         ; 2 uses
  %exitcond.not.i647.i = icmp eq i32 %i.cdn, %i.ccj
  br i1 %exitcond.not.i647.i, label %._crit_edge.i648.i, label %.lr.ph.i643.i, !llvm.loop !195

._crit_edge.i648.i:                               ; preds = %bb.ho
  %i.cdo = mul i32 %i.ccj, 3
  %smax.i.i = call i32 @llvm.smax.i32(i32 %i.cdo, i32 1)
  %wide.trip.count.i649.i = zext nneg i32 %smax.i.i to i64
  br label %.lr.ph54.i.i

.lr.ph54.i.i:                                     ; preds = %bb.hu, %._crit_edge.i648.i
  %indvars.iv59.i.i = phi i64 [ 0, %._crit_edge.i648.i ], [ %indvars.iv.next60.i.i, %bb.hu ] ; 2 uses
  %.052.i.i = phi i32 [ %i.cce, %._crit_edge.i648.i ], [ %i.cds, %bb.hu ]
  %.04050.i.i = phi i32 [ 0, %._crit_edge.i648.i ], [ %.3.i.i, %bb.hu ] ; 5 uses
  %i.cdp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv59.i.i
  %i.cdq = load i32, ptr %i.cdp, align 4, !tbaa !45
  %i.cdr = add nsw i32 %.052.i.i, -2
  %i.cds = add i32 %i.cdr, %i.cdq                 ; 6 uses
  %i.cdt = icmp ugt i32 %i.cds, 24
  br i1 %i.cdt, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %.lr.ph54.i.i
  %i.cdu = load ptr, ptr %i.ck, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cdu, i32 noundef 16, ptr noundef nonnull @.str.52, i32 noundef %i.cds) #11
  br label %decode_exponents.exit.i

bb.hq:                                            ; preds = %.lr.ph54.i.i
  switch i32 %12, label %bb.hu [
    i32 4, label %bb.hr
    i32 2, label %._crit_edge64.i.i
    i32 1, label %._crit_edge63.i.i
  ]

._crit_edge64.i.i:                                ; preds = %bb.hq
  %.pre.i651.i = trunc nuw nsw i32 %i.cds to i8
  br label %bb.hs

._crit_edge63.i.i:                                ; preds = %bb.hq
  %.pre65.i650.i = trunc nuw nsw i32 %i.cds to i8
  br label %bb.ht

bb.hr:                                            ; preds = %bb.hq
  %i.cdv = trunc nuw nsw i32 %i.cds to i8         ; 3 uses
  %i.cdw = sext i32 %.04050.i.i to i64
  %i.cdx = getelementptr inbounds i8, ptr %i.ccp, i64 %i.cdw ; 2 uses
  store i8 %i.cdv, ptr %i.cdx, align 1, !tbaa !46
  %i.cdy = add nsw i32 %.04050.i.i, 2
  %i.cdz = getelementptr i8, ptr %i.cdx, i64 1
  store i8 %i.cdv, ptr %i.cdz, align 1, !tbaa !46
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %._crit_edge64.i.i
  %.pre-phi.i.i = phi i8 [ %.pre.i651.i, %._crit_edge64.i.i ], [ %i.cdv, %bb.hr ] ; 2 uses
  %.141.i.i = phi i32 [ %.04050.i.i, %._crit_edge64.i.i ], [ %i.cdy, %bb.hr ] ; 2 uses
  %i.cea = add nsw i32 %.141.i.i, 1
  %i.ceb = sext i32 %.141.i.i to i64
  %i.cec = getelementptr inbounds i8, ptr %i.ccp, i64 %i.ceb
  store i8 %.pre-phi.i.i, ptr %i.cec, align 1, !tbaa !46
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %._crit_edge63.i.i
  %.pre-phi66.i.i = phi i8 [ %.pre65.i650.i, %._crit_edge63.i.i ], [ %.pre-phi.i.i, %bb.hs ]
  %.2.i.i = phi i32 [ %.04050.i.i, %._crit_edge63.i.i ], [ %i.cea, %bb.hs ] ; 2 uses
  %i.ced = add nsw i32 %.2.i.i, 1
  %i.cee = sext i32 %.2.i.i to i64
  %i.cef = getelementptr inbounds i8, ptr %i.ccp, i64 %i.cee
  store i8 %.pre-phi66.i.i, ptr %i.cef, align 1, !tbaa !46
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hq
  %.3.i.i = phi i32 [ %.04050.i.i, %bb.hq ], [ %i.ced, %bb.ht ]
  %indvars.iv.next60.i.i = add nuw nsw i64 %indvars.iv59.i.i, 1 ; 2 uses
  %exitcond62.not.i.i = icmp eq i64 %indvars.iv.next60.i.i, %wide.trip.count.i649.i
  br i1 %exitcond62.not.i.i, label %.loopexit762.i, label %.lr.ph54.i.i, !llvm.loop !196

decode_exponents.exit.i:                          ; preds = %bb.hp, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.mx

.loopexit762.i:                                   ; preds = %bb.hu, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br i1 %i.ccb, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %.loopexit762.i
  %i.ceg = load i32, ptr %i.bj, align 4, !tbaa !76
  %i.ceh = zext i32 %i.ceg to i64
  %.not588.i = icmp eq i64 %indvars.iv915.i, %i.ceh
  br i1 %.not588.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.cei = load i32, ptr %i.ao, align 8, !tbaa !61
  %i.cej = load i32, ptr %i.an, align 16, !tbaa !60
  %i.cek = add i32 %i.cei, 2
  %i.cel = call i32 @llvm.umin.i32(i32 %i.cej, i32 %i.cek)
  store i32 %i.cel, ptr %i.ao, align 8, !tbaa !61
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv, %.loopexit762.i, %bb.hl
  %indvars.iv.next916.i = add nuw nsw i64 %indvars.iv915.i, 1
  %i.cem = load i32, ptr %i.bh, align 16, !tbaa !74 ; 2 uses
  %i.cen = sext i32 %i.cem to i64
  %.not545.not.i = icmp slt i64 %indvars.iv915.i, %i.cen
  br i1 %.not545.not.i, label %bb.hl, label %._crit_edge816.i, !llvm.loop !197

._crit_edge816.i:                                 ; preds = %bb.hx, %bb.hk
  %i.ceo = phi i32 [ %i.byt, %bb.hk ], [ %i.cem, %bb.hx ] ; 14 uses
  %i.cep = load i32, ptr %i.di, align 16, !tbaa !125
  %.not546.i = icmp eq i32 %i.cep, 0
  br i1 %.not546.i, label %.loopexit761.i, label %bb.hy

bb.hy:                                            ; preds = %._crit_edge816.i
  %i.ceq = load i32, ptr %i.ao, align 8, !tbaa !61 ; 4 uses
  %i.cer = load ptr, ptr %i.al, align 16, !tbaa !58 ; 6 uses
  %i.ces = lshr i32 %i.ceq, 3
  %i.cet = zext nneg i32 %i.ces to i64
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.cer, i64 %i.cet
  %i.cev = load i8, ptr %i.ceu, align 1, !tbaa !46
  %i.cew = load i32, ptr %i.an, align 16, !tbaa !60 ; 6 uses
  %i.cex = icmp slt i32 %i.ceq, %i.cew
  %i.cey = zext i1 %i.cex to i32
  %spec.select.i652.i = add i32 %i.ceq, %i.cey    ; 4 uses
  %i.cez = zext i8 %i.cev to i32
  %i.cfa = and i32 %i.ceq, 7
  store i32 %spec.select.i652.i, ptr %i.ao, align 8, !tbaa !61
  %i.cfb = lshr exact i32 128, %i.cfa
  %i.cfc = and i32 %i.cfb, %i.cez
  %.not547.i = icmp eq i32 %i.cfc, 0
  br i1 %.not547.i, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.cfd = lshr i32 %spec.select.i652.i, 3
  %i.cfe = zext nneg i32 %i.cfd to i64
  %i.cff = getelementptr inbounds nuw i8, ptr %i.cer, i64 %i.cfe
  %i.cfg = load i32, ptr %i.cff, align 1, !tbaa !46
  %i.cfh = call i32 @llvm.bswap.i32(i32 %i.cfg)
  %i.cfi = and i32 %spec.select.i652.i, 7
  %i.cfj = shl i32 %i.cfh, %i.cfi
  %i.cfk = lshr i32 %i.cfj, 30
  %i.cfl = add i32 %spec.select.i652.i, 2
  %i.cfm = call i32 @llvm.umin.i32(i32 %i.cew, i32 %i.cfl) ; 4 uses
  store i32 %i.cfm, ptr %i.ao, align 8, !tbaa !61
  %i.cfn = zext nneg i32 %i.cfk to i64
  %i.cfo = getelementptr inbounds nuw i8, ptr @ff_ac3_slow_decay_tab, i64 %i.cfn
  %i.cfp = load i8, ptr %i.cfo, align 1, !tbaa !46
  %i.cfq = zext i8 %i.cfp to i32
  %i.cfr = load i32, ptr %i.bb, align 4, !tbaa !68 ; 2 uses
  %i.cfs = lshr i32 %i.cfq, %i.cfr
  store i32 %i.cfs, ptr %i.dl, align 4, !tbaa !126
  %i.cft = lshr i32 %i.cfm, 3
  %i.cfu = zext nneg i32 %i.cft to i64
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.cer, i64 %i.cfu
  %i.cfw = load i32, ptr %i.cfv, align 1, !tbaa !46
  %i.cfx = call i32 @llvm.bswap.i32(i32 %i.cfw)
  %i.cfy = and i32 %i.cfm, 7
  %i.cfz = shl i32 %i.cfx, %i.cfy
  %i.cga = lshr i32 %i.cfz, 30
  %i.cgb = add i32 %i.cfm, 2
  %i.cgc = call i32 @llvm.umin.i32(i32 %i.cew, i32 %i.cgb) ; 4 uses
  store i32 %i.cgc, ptr %i.ao, align 8, !tbaa !61
  %i.cgd = zext nneg i32 %i.cga to i64
  %i.cge = getelementptr inbounds nuw i8, ptr @ff_ac3_fast_decay_tab, i64 %i.cgd
  %i.cgf = load i8, ptr %i.cge, align 1, !tbaa !46
  %i.cgg = zext i8 %i.cgf to i32
  %i.cgh = lshr i32 %i.cgg, %i.cfr
  store i32 %i.cgh, ptr %i.do, align 8, !tbaa !127
  %i.cgi = lshr i32 %i.cgc, 3
  %i.cgj = zext nneg i32 %i.cgi to i64
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cer, i64 %i.cgj
  %i.cgl = load i32, ptr %i.cgk, align 1, !tbaa !46
  %i.cgm = call i32 @llvm.bswap.i32(i32 %i.cgl)
  %i.cgn = and i32 %i.cgc, 7
  %i.cgo = shl i32 %i.cgm, %i.cgn
  %i.cgp = lshr i32 %i.cgo, 30
  %i.cgq = add i32 %i.cgc, 2
  %i.cgr = call i32 @llvm.umin.i32(i32 %i.cew, i32 %i.cgq) ; 4 uses
  store i32 %i.cgr, ptr %i.ao, align 8, !tbaa !61
  %i.cgs = zext nneg i32 %i.cgp to i64
  %i.cgt = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_slow_gain_tab, i64 %i.cgs
  %i.cgu = load i16, ptr %i.cgt, align 2, !tbaa !163
  %i.cgv = zext i16 %i.cgu to i32
  store i32 %i.cgv, ptr %i.dr, align 16, !tbaa !128
  %i.cgw = lshr i32 %i.cgr, 3
  %i.cgx = zext nneg i32 %i.cgw to i64
  %i.cgy = getelementptr inbounds nuw i8, ptr %i.cer, i64 %i.cgx
  %i.cgz = load i32, ptr %i.cgy, align 1, !tbaa !46
  %i.cha = call i32 @llvm.bswap.i32(i32 %i.cgz)
  %i.chb = and i32 %i.cgr, 7
  %i.chc = shl i32 %i.cha, %i.chb
  %i.chd = lshr i32 %i.chc, 30
  %i.che = add i32 %i.cgr, 2
  %i.chf = call i32 @llvm.umin.i32(i32 %i.cew, i32 %i.che) ; 4 uses
  store i32 %i.chf, ptr %i.ao, align 8, !tbaa !61
  %i.chg = zext nneg i32 %i.chd to i64
  %i.chh = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_db_per_bit_tab, i64 %i.chg
  %i.chi = load i16, ptr %i.chh, align 2, !tbaa !163
  %i.chj = zext i16 %i.chi to i32
  store i32 %i.chj, ptr %i.du, align 4, !tbaa !129
  %i.chk = lshr i32 %i.chf, 3
  %i.chl = zext nneg i32 %i.chk to i64
  %i.chm = getelementptr inbounds nuw i8, ptr %i.cer, i64 %i.chl
  %i.chn = load i32, ptr %i.chm, align 1, !tbaa !46
  %i.cho = call i32 @llvm.bswap.i32(i32 %i.chn)
  %i.chp = and i32 %i.chf, 7
  %i.chq = shl i32 %i.cho, %i.chp
  %i.chr = lshr i32 %i.chq, 29
  %i.chs = add i32 %i.chf, 3
  %i.cht = call i32 @llvm.umin.i32(i32 %i.cew, i32 %i.chs)
  store i32 %i.cht, ptr %i.ao, align 8, !tbaa !61
  %i.chu = zext nneg i32 %i.chr to i64
  %i.chv = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_floor_tab, i64 %i.chu
  %i.chw = load i16, ptr %i.chv, align 2, !tbaa !163
  %i.chx = sext i16 %i.chw to i32
  store i32 %i.chx, ptr %i.dx, align 16, !tbaa !130
  %.not549818.i = icmp slt i32 %i.ceo, %i.bys
  br i1 %.not549818.i, label %.loopexit761.i, label %iter.check

iter.check:                                       ; preds = %bb.hz
  %i.chy = zext i1 %.not539.i to i64              ; 4 uses
  %i.chz = add nuw i32 %i.ceo, 1
  %wide.trip.count921.i = zext i32 %i.chz to i64  ; 2 uses
  %i.cia = sub nsw i64 %wide.trip.count921.i, %i.chy ; 7 uses
  %min.iters.check1164 = icmp ult i64 %i.cia, 8
  br i1 %min.iters.check1164, label %.lr.ph821.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1165 = icmp ult i64 %i.cia, 32
  br i1 %min.iters.check1165, label %vec.epilog.ph, label %vector.ph1166

vector.ph1166:                                    ; preds = %vector.main.loop.iter.check
  %i.cib = and i64 %i.cia, 24
  %n.vec1167 = and i64 %i.cia, -32                ; 4 uses
  %i.cic = or disjoint i64 %n.vec1167, %i.chy
  %.sroa.sel.idx = zext i1 %.not539.i to i64
  %.sroa.sel.sroa.sel.v = select i1 %.not539.i, i64 17, i64 16
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %vector.ph1166
  %index1169 = phi i64 [ 0, %vector.ph1166 ], [ %index.next1172, %vector.body1168 ] ; 2 uses
  %i.cid = getelementptr inbounds nuw i8, ptr %i.e, i64 %index1169 ; 2 uses
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %i.cid, i64 %.sroa.sel.idx ; 2 uses
  %.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %i.cid, i64 %.sroa.sel.sroa.sel.v ; 2 uses
  %wide.load1170 = load <16 x i8>, ptr %.sroa.sel, align 1, !tbaa !46
end_hunk_0
