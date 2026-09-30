Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ac3dec_fixed?download=true
inline.NumInlined: 135
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 36
begin_hunk_0_@ac3_decode_frame:bb.a
  %i.cbf = load i32, ptr %i.ce, align 4, !tbaa !43
  %i.cbg = sub nsw i32 %i.cbe, %i.cbf
  %i.cbh = add nsw i32 %i.cbd, -1
  %i.cbi = shl i32 3, %i.cbh
  %i.cbj = sdiv i32 %i.cbg, %i.cbi
  store i32 %i.cbj, ptr %i.cg, align 4, !tbaa !43
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi, %._crit_edge.i479
  br i1 %.not542805.i, label %._crit_edge815.i, label %.lr.ph814.i

.lr.ph814.i:                                      ; preds = %bb.hk
  %i.cbk = getelementptr inbounds nuw [28 x i8], ptr %i.ed, i64 %indvars.iv794
  %i.cbl = zext i1 %.not539.i to i64
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hx, %.lr.ph814.i
  %indvars.iv912.i = phi i64 [ %i.cbl, %.lr.ph814.i ], [ %indvars.iv.next913.i, %bb.hx ] ; 8 uses
  %i.cbm = getelementptr inbounds nuw [4 x i8], ptr %i.cbk, i64 %indvars.iv912.i ; 2 uses
  %i.cbn = load i32, ptr %i.cbm, align 4, !tbaa !43
  %.not586.i = icmp eq i32 %i.cbn, 0
  br i1 %.not586.i, label %bb.hx, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.cbo = load i32, ptr %i.ao, align 8, !tbaa !50 ; 3 uses
  %i.cbp = load i32, ptr %i.an, align 16, !tbaa !49 ; 2 uses
  %i.cbq = load ptr, ptr %i.al, align 16, !tbaa !48 ; 2 uses
  %i.cbr = lshr i32 %i.cbo, 3
  %i.cbs = zext nneg i32 %i.cbr to i64
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbq, i64 %i.cbs
  %i.cbu = load i32, ptr %i.cbt, align 1, !tbaa !44
  %i.cbv = call i32 @llvm.bswap.i32(i32 %i.cbu)
  %i.cbw = and i32 %i.cbo, 7
  %i.cbx = shl i32 %i.cbv, %i.cbw
  %i.cby = lshr i32 %i.cbx, 28
  %i.cbz = add i32 %i.cbo, 4
  %i.cca = call i32 @llvm.umin.i32(i32 %i.cbp, i32 %i.cbz) ; 2 uses
  store i32 %i.cca, ptr %i.ao, align 8, !tbaa !50
  %i.ccb = icmp ne i64 %indvars.iv912.i, 0        ; 3 uses
  %i.ccc = xor i1 %i.ccb, true
  %i.ccd = zext i1 %i.ccc to i32
  %i.cce = shl nuw nsw i32 %i.cby, %i.ccd         ; 2 uses
  %i.ccf = trunc nuw nsw i32 %i.cce to i8
  %i.ccg = getelementptr inbounds nuw [256 x i8], ptr %i.gm, i64 %indvars.iv912.i ; 2 uses
  store i8 %i.ccf, ptr %i.ccg, align 16, !tbaa !44
  %i.cch = load i32, ptr %i.cbm, align 4, !tbaa !43
  %i.cci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv912.i
  %i.ccj = load i32, ptr %i.cci, align 4, !tbaa !43 ; 3 uses
  %i.cck = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv912.i
  %i.ccl = load i32, ptr %i.cck, align 4, !tbaa !43
  %i.ccm = zext i1 %i.ccb to i32
  %i.ccn = add nsw i32 %i.ccl, %i.ccm
  %i.cco = sext i32 %i.ccn to i64
  %i.ccp = getelementptr inbounds i8, ptr %i.ccg, i64 %i.cco ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.ccq = icmp sgt i32 %i.ccj, 0
  br i1 %i.ccq, label %.lr.ph.i644.i, label %.loopexit763.i

.lr.ph.i644.i:                                    ; preds = %bb.hm, %bb.ho
  %indvars.iv.i646.i = phi i64 [ %indvars.iv.next.i647.i, %bb.ho ], [ 0, %bb.hm ] ; 2 uses
  %i.ccr = phi i32 [ %i.cdb, %bb.ho ], [ %i.cca, %bb.hm ] ; 3 uses
  %.03749.i.i = phi i32 [ %i.cdn, %bb.ho ], [ 0, %bb.hm ]
  %i.ccs = lshr i32 %i.ccr, 3
  %i.cct = zext nneg i32 %i.ccs to i64
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cbq, i64 %i.cct
  %i.ccv = load i32, ptr %i.ccu, align 1, !tbaa !44
  %i.ccw = call i32 @llvm.bswap.i32(i32 %i.ccv)
  %i.ccx = and i32 %i.ccr, 7
  %i.ccy = shl i32 %i.ccw, %i.ccx                 ; 2 uses
  %i.ccz = lshr i32 %i.ccy, 25                    ; 2 uses
  %i.cda = add i32 %i.ccr, 7
  %i.cdb = call i32 @llvm.umin.i32(i32 %i.cbp, i32 %i.cda) ; 2 uses
  store i32 %i.cdb, ptr %i.ao, align 8, !tbaa !50
  %i.cdc = icmp ugt i32 %i.ccy, -100663297
  br i1 %i.cdc, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %.lr.ph.i644.i
  %i.cdd = load ptr, ptr %i.ck, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cdd, i32 noundef 16, ptr noundef nonnull @.str.51, i32 noundef %i.ccz) #11
  br label %decode_exponents.exit.i

bb.ho:                                            ; preds = %.lr.ph.i644.i
  %i.cde = zext nneg i32 %i.ccz to i64
  %i.cdf = getelementptr inbounds nuw [3 x i8], ptr @ff_ac3_ungroup_3_in_7_bits_tab, i64 %i.cde ; 2 uses
  %i.cdg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i646.i ; 2 uses
  %i.cdh = load <2 x i8>, ptr %i.cdf, align 1, !tbaa !44
  %i.cdi = zext <2 x i8> %i.cdh to <2 x i32>
  store <2 x i32> %i.cdi, ptr %i.cdg, align 4, !tbaa !43
  %i.cdj = getelementptr inbounds nuw i8, ptr %i.cdf, i64 2
  %i.cdk = load i8, ptr %i.cdj, align 1, !tbaa !44
  %i.cdl = zext i8 %i.cdk to i32
  %indvars.iv.next.i647.i = add nuw nsw i64 %indvars.iv.i646.i, 3
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdg, i64 8
  store i32 %i.cdl, ptr %i.cdm, align 4, !tbaa !43
  %i.cdn = add nuw nsw i32 %.03749.i.i, 1         ; 2 uses
  %exitcond.not.i648.i = icmp eq i32 %i.cdn, %i.ccj
  br i1 %exitcond.not.i648.i, label %._crit_edge.i649.i, label %.lr.ph.i644.i, !llvm.loop !105

._crit_edge.i649.i:                               ; preds = %bb.ho
  %i.cdo = mul i32 %i.ccj, 3
  %smax.i.i = call i32 @llvm.smax.i32(i32 %i.cdo, i32 1)
  %wide.trip.count.i650.i = zext nneg i32 %smax.i.i to i64
  br label %.lr.ph54.i.i

.lr.ph54.i.i:                                     ; preds = %bb.hu, %._crit_edge.i649.i
  %indvars.iv59.i.i = phi i64 [ 0, %._crit_edge.i649.i ], [ %indvars.iv.next60.i.i, %bb.hu ] ; 2 uses
  %.052.i.i = phi i32 [ %i.cce, %._crit_edge.i649.i ], [ %i.cds, %bb.hu ]
  %.03851.i.i = phi i32 [ 0, %._crit_edge.i649.i ], [ %.3.i.i, %bb.hu ] ; 5 uses
  %i.cdp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv59.i.i
  %i.cdq = load i32, ptr %i.cdp, align 4, !tbaa !43
  %i.cdr = add nsw i32 %.052.i.i, -2
  %i.cds = add i32 %i.cdr, %i.cdq                 ; 6 uses
  %i.cdt = icmp ugt i32 %i.cds, 24
  br i1 %i.cdt, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %.lr.ph54.i.i
  %i.cdu = load ptr, ptr %i.ck, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cdu, i32 noundef 16, ptr noundef nonnull @.str.52, i32 noundef %i.cds) #11
  br label %decode_exponents.exit.i

bb.hq:                                            ; preds = %.lr.ph54.i.i
  switch i32 %i.cch, label %bb.hu [
    i32 4, label %bb.hr
    i32 2, label %._crit_edge64.i.i
    i32 1, label %._crit_edge63.i.i
    i32 3, label %bb.hr
  ]

._crit_edge64.i.i:                                ; preds = %bb.hq
  %.pre.i653.i = trunc nuw nsw i32 %i.cds to i8
  br label %bb.hs

._crit_edge63.i.i:                                ; preds = %bb.hq
  %.pre65.i652.i = trunc nuw nsw i32 %i.cds to i8
  br label %bb.ht

bb.hr:                                            ; preds = %bb.hq, %bb.hq
  %i.cdv = trunc nuw nsw i32 %i.cds to i8         ; 3 uses
  %i.cdw = sext i32 %.03851.i.i to i64
  %i.cdx = getelementptr inbounds i8, ptr %i.ccp, i64 %i.cdw ; 2 uses
  store i8 %i.cdv, ptr %i.cdx, align 1, !tbaa !44
  %i.cdy = add nsw i32 %.03851.i.i, 2
  %i.cdz = getelementptr i8, ptr %i.cdx, i64 1
  store i8 %i.cdv, ptr %i.cdz, align 1, !tbaa !44
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %._crit_edge64.i.i
  %.pre-phi.i.i = phi i8 [ %.pre.i653.i, %._crit_edge64.i.i ], [ %i.cdv, %bb.hr ] ; 2 uses
  %.1.i651.i = phi i32 [ %.03851.i.i, %._crit_edge64.i.i ], [ %i.cdy, %bb.hr ] ; 2 uses
  %i.cea = add nsw i32 %.1.i651.i, 1
  %i.ceb = sext i32 %.1.i651.i to i64
  %i.cec = getelementptr inbounds i8, ptr %i.ccp, i64 %i.ceb
  store i8 %.pre-phi.i.i, ptr %i.cec, align 1, !tbaa !44
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %._crit_edge63.i.i
  %.pre-phi66.i.i = phi i8 [ %.pre65.i652.i, %._crit_edge63.i.i ], [ %.pre-phi.i.i, %bb.hs ]
  %.2.i.i = phi i32 [ %.03851.i.i, %._crit_edge63.i.i ], [ %i.cea, %bb.hs ] ; 2 uses
  %i.ced = add nsw i32 %.2.i.i, 1
  %i.cee = sext i32 %.2.i.i to i64
  %i.cef = getelementptr inbounds i8, ptr %i.ccp, i64 %i.cee
  store i8 %.pre-phi66.i.i, ptr %i.cef, align 1, !tbaa !44
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hq
  %.3.i.i = phi i32 [ %.03851.i.i, %bb.hq ], [ %i.ced, %bb.ht ]
  %indvars.iv.next60.i.i = add nuw nsw i64 %indvars.iv59.i.i, 1 ; 2 uses
  %exitcond62.not.i.i = icmp eq i64 %indvars.iv.next60.i.i, %wide.trip.count.i650.i
  br i1 %exitcond62.not.i.i, label %.loopexit763.i, label %.lr.ph54.i.i, !llvm.loop !106

decode_exponents.exit.i:                          ; preds = %bb.hp, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.my

.loopexit763.i:                                   ; preds = %bb.hu, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br i1 %i.ccb, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %.loopexit763.i
  %i.ceg = load i32, ptr %i.bj, align 4, !tbaa !185
  %i.ceh = zext i32 %i.ceg to i64
  %.not588.i = icmp eq i64 %indvars.iv912.i, %i.ceh
  br i1 %.not588.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.cei = load i32, ptr %i.ao, align 8, !tbaa !50
  %i.cej = load i32, ptr %i.an, align 16, !tbaa !49
  %i.cek = add i32 %i.cei, 2
  %i.cel = call i32 @llvm.umin.i32(i32 %i.cej, i32 %i.cek)
  store i32 %i.cel, ptr %i.ao, align 8, !tbaa !50
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv, %.loopexit763.i, %bb.hl
  %indvars.iv.next913.i = add nuw nsw i64 %indvars.iv912.i, 1
  %i.cem = load i32, ptr %i.bh, align 16, !tbaa !183 ; 2 uses
  %i.cen = sext i32 %i.cem to i64
  %.not545.not.i = icmp slt i64 %indvars.iv912.i, %i.cen
  br i1 %.not545.not.i, label %bb.hl, label %._crit_edge815.i, !llvm.loop !107

._crit_edge815.i:                                 ; preds = %bb.hx, %bb.hk
  %i.ceo = phi i32 [ %i.byt, %bb.hk ], [ %i.cem, %bb.hx ] ; 13 uses
  %i.cep = load i32, ptr %i.di, align 16, !tbaa !230
  %.not546.i = icmp eq i32 %i.cep, 0
  br i1 %.not546.i, label %.loopexit762.i, label %bb.hy

bb.hy:                                            ; preds = %._crit_edge815.i
  %i.ceq = load i32, ptr %i.ao, align 8, !tbaa !50 ; 4 uses
  %i.cer = load ptr, ptr %i.al, align 16, !tbaa !48 ; 6 uses
  %i.ces = lshr i32 %i.ceq, 3
  %i.cet = zext nneg i32 %i.ces to i64
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.cer, i64 %i.cet
  %i.cev = load i8, ptr %i.ceu, align 1, !tbaa !44
  %i.cew = load i32, ptr %i.an, align 16, !tbaa !49 ; 6 uses
  %i.cex = icmp slt i32 %i.ceq, %i.cew
  %i.cey = zext i1 %i.cex to i32
  %spec.select.i654.i = add i32 %i.ceq, %i.cey    ; 4 uses
  %i.cez = zext i8 %i.cev to i32
  %i.cfa = and i32 %i.ceq, 7
  store i32 %spec.select.i654.i, ptr %i.ao, align 8, !tbaa !50
  %i.cfb = lshr exact i32 128, %i.cfa
  %i.cfc = and i32 %i.cfb, %i.cez
  %.not547.i = icmp eq i32 %i.cfc, 0
  br i1 %.not547.i, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.cfd = lshr i32 %spec.select.i654.i, 3
  %i.cfe = zext nneg i32 %i.cfd to i64
  %i.cff = getelementptr inbounds nuw i8, ptr %i.cer, i64 %i.cfe
  %i.cfg = load i32, ptr %i.cff, align 1, !tbaa !44
  %i.cfh = call i32 @llvm.bswap.i32(i32 %i.cfg)
  %i.cfi = and i32 %spec.select.i654.i, 7
  %i.cfj = shl i32 %i.cfh, %i.cfi
  %i.cfk = lshr i32 %i.cfj, 30
  %i.cfl = add i32 %spec.select.i654.i, 2
  %i.cfm = call i32 @llvm.umin.i32(i32 %i.cew, i32 %i.cfl) ; 4 uses
  store i32 %i.cfm, ptr %i.ao, align 8, !tbaa !50
  %i.cfn = zext nneg i32 %i.cfk to i64
  %i.cfo = getelementptr inbounds nuw i8, ptr @ff_ac3_slow_decay_tab, i64 %i.cfn
  %i.cfp = load i8, ptr %i.cfo, align 1, !tbaa !44
  %i.cfq = zext i8 %i.cfp to i32
  %i.cfr = load i32, ptr %i.bb, align 4, !tbaa !177 ; 2 uses
  %i.cfs = lshr i32 %i.cfq, %i.cfr
  store i32 %i.cfs, ptr %i.dl, align 4, !tbaa !231
  %i.cft = lshr i32 %i.cfm, 3
  %i.cfu = zext nneg i32 %i.cft to i64
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.cer, i64 %i.cfu
  %i.cfw = load i32, ptr %i.cfv, align 1, !tbaa !44
  %i.cfx = call i32 @llvm.bswap.i32(i32 %i.cfw)
  %i.cfy = and i32 %i.cfm, 7
  %i.cfz = shl i32 %i.cfx, %i.cfy
  %i.cga = lshr i32 %i.cfz, 30
  %i.cgb = add i32 %i.cfm, 2
  %i.cgc = call i32 @llvm.umin.i32(i32 %i.cew, i32 %i.cgb) ; 4 uses
  store i32 %i.cgc, ptr %i.ao, align 8, !tbaa !50
  %i.cgd = zext nneg i32 %i.cga to i64
  %i.cge = getelementptr inbounds nuw i8, ptr @ff_ac3_fast_decay_tab, i64 %i.cgd
  %i.cgf = load i8, ptr %i.cge, align 1, !tbaa !44
  %i.cgg = zext i8 %i.cgf to i32
  %i.cgh = lshr i32 %i.cgg, %i.cfr
  store i32 %i.cgh, ptr %i.do, align 8, !tbaa !232
  %i.cgi = lshr i32 %i.cgc, 3
  %i.cgj = zext nneg i32 %i.cgi to i64
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cer, i64 %i.cgj
  %i.cgl = load i32, ptr %i.cgk, align 1, !tbaa !44
  %i.cgm = call i32 @llvm.bswap.i32(i32 %i.cgl)
  %i.cgn = and i32 %i.cgc, 7
  %i.cgo = shl i32 %i.cgm, %i.cgn
  %i.cgp = lshr i32 %i.cgo, 30
  %i.cgq = add i32 %i.cgc, 2
  %i.cgr = call i32 @llvm.umin.i32(i32 %i.cew, i32 %i.cgq) ; 4 uses
  store i32 %i.cgr, ptr %i.ao, align 8, !tbaa !50
  %i.cgs = zext nneg i32 %i.cgp to i64
  %i.cgt = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_slow_gain_tab, i64 %i.cgs
  %i.cgu = load i16, ptr %i.cgt, align 2, !tbaa !53
  %i.cgv = zext i16 %i.cgu to i32
  store i32 %i.cgv, ptr %i.dr, align 16, !tbaa !233
  %i.cgw = lshr i32 %i.cgr, 3
  %i.cgx = zext nneg i32 %i.cgw to i64
  %i.cgy = getelementptr inbounds nuw i8, ptr %i.cer, i64 %i.cgx
  %i.cgz = load i32, ptr %i.cgy, align 1, !tbaa !44
  %i.cha = call i32 @llvm.bswap.i32(i32 %i.cgz)
  %i.chb = and i32 %i.cgr, 7
  %i.chc = shl i32 %i.cha, %i.chb
  %i.chd = lshr i32 %i.chc, 30
  %i.che = add i32 %i.cgr, 2
  %i.chf = call i32 @llvm.umin.i32(i32 %i.cew, i32 %i.che) ; 4 uses
  store i32 %i.chf, ptr %i.ao, align 8, !tbaa !50
  %i.chg = zext nneg i32 %i.chd to i64
  %i.chh = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_db_per_bit_tab, i64 %i.chg
  %i.chi = load i16, ptr %i.chh, align 2, !tbaa !53
  %i.chj = zext i16 %i.chi to i32
  store i32 %i.chj, ptr %i.du, align 4, !tbaa !234
  %i.chk = lshr i32 %i.chf, 3
  %i.chl = zext nneg i32 %i.chk to i64
  %i.chm = getelementptr inbounds nuw i8, ptr %i.cer, i64 %i.chl
  %i.chn = load i32, ptr %i.chm, align 1, !tbaa !44
  %i.cho = call i32 @llvm.bswap.i32(i32 %i.chn)
  %i.chp = and i32 %i.chf, 7
  %i.chq = shl i32 %i.cho, %i.chp
  %i.chr = lshr i32 %i.chq, 29
  %i.chs = add i32 %i.chf, 3
  %i.cht = call i32 @llvm.umin.i32(i32 %i.cew, i32 %i.chs)
  store i32 %i.cht, ptr %i.ao, align 8, !tbaa !50
  %i.chu = zext nneg i32 %i.chr to i64
  %i.chv = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_floor_tab, i64 %i.chu
  %i.chw = load i16, ptr %i.chv, align 2, !tbaa !53
  %i.chx = sext i16 %i.chw to i32
  store i32 %i.chx, ptr %i.dx, align 16, !tbaa !235
  %.not549817.i = icmp slt i32 %i.ceo, %i.bys
  br i1 %.not549817.i, label %.loopexit762.i, label %iter.check

iter.check:                                       ; preds = %bb.hz
  %i.chy = zext i1 %.not539.i to i64              ; 4 uses
  %i.chz = add nuw i32 %i.ceo, 1
  %wide.trip.count918.i = zext i32 %i.chz to i64  ; 2 uses
  %i.cia = sub nuw nsw i64 %wide.trip.count918.i, %i.chy ; 7 uses
  %min.iters.check1158 = icmp samesign ult i64 %i.cia, 8
  br i1 %min.iters.check1158, label %.lr.ph820.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1159 = icmp samesign ult i64 %i.cia, 32
  br i1 %min.iters.check1159, label %vec.epilog.ph, label %vector.ph1160

vector.ph1160:                                    ; preds = %vector.main.loop.iter.check
  %i.cib = and i64 %i.cia, 24
  %n.vec1161 = and i64 %i.cia, 4294967264         ; 4 uses
  %i.cic = or disjoint i64 %n.vec1161, %i.chy
  %.sroa.sel.idx = zext i1 %.not539.i to i64
  %.sroa.sel.sroa.sel.v = select i1 %.not539.i, i64 17, i64 16
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.ph1160, %vector.body1162
  %index1163 = phi i64 [ 0, %vector.ph1160 ], [ %index.next1166, %vector.body1162 ] ; 2 uses
  %i.cid = getelementptr inbounds nuw i8, ptr %i.e, i64 %index1163 ; 2 uses
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %i.cid, i64 %.sroa.sel.idx ; 2 uses
  %.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %i.cid, i64 %.sroa.sel.sroa.sel.v ; 2 uses
  %wide.load1164 = load <16 x i8>, ptr %.sroa.sel, align 1, !tbaa !44
  %wide.load1165 = load <16 x i8>, ptr %.sroa.sel.sroa.sel, align 1, !tbaa !44
  %i.cie = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load1164, <16 x i8> splat (i8 2))
  %i.cif = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load1165, <16 x i8> splat (i8 2))
  store <16 x i8> %i.cie, ptr %.sroa.sel, align 1, !tbaa !44
  store <16 x i8> %i.cif, ptr %.sroa.sel.sroa.sel, align 1, !tbaa !44
  %index.next1166 = add nuw i64 %index1163, 32    ; 2 uses
  %i.cig = icmp eq i64 %index.next1166, %n.vec1161
  br i1 %i.cig, label %middle.block1167, label %vector.body1162, !llvm.loop !108

middle.block1167:                                 ; preds = %vector.body1162
  %cmp.n1168 = icmp eq i64 %i.cia, %n.vec1161
  br i1 %cmp.n1168, label %.loopexit762.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1167
  %min.epilog.iters.check = icmp eq i64 %i.cib, 0
  br i1 %min.epilog.iters.check, label %.lr.ph820.i.preheader, label %vec.epilog.ph, !prof !260

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1161, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1170 = and i64 %i.cia, 4294967288         ; 3 uses
  %i.cih = or disjoint i64 %n.vec1170, %i.chy
  %.sroa.sel1452.idx = zext i1 %.not539.i to i64
  %invariant.gep1508 = getelementptr i8, ptr %i.e, i64 %.sroa.sel1452.idx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1171 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1173, %vec.epilog.vector.body ] ; 2 uses
  %gep1509 = getelementptr i8, ptr %invariant.gep1508, i64 %index1171 ; 2 uses
  %wide.load1172 = load <8 x i8>, ptr %gep1509, align 1, !tbaa !44
  %i.cii = call <8 x i8> @llvm.umax.v8i8(<8 x i8> %wide.load1172, <8 x i8> splat (i8 2))
  store <8 x i8> %i.cii, ptr %gep1509, align 1, !tbaa !44
  %index.next1173 = add nuw i64 %index1171, 8     ; 2 uses
  %i.cij = icmp eq i64 %index.next1173, %n.vec1170
  br i1 %i.cij, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !109

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1174 = icmp eq i64 %i.cia, %n.vec1170
  br i1 %cmp.n1174, label %.loopexit762.i, label %.lr.ph820.i.preheader

.lr.ph820.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv915.i.ph = phi i64 [ %i.chy, %iter.check ], [ %i.cic, %vec.epilog.iter.check ], [ %i.cih, %vec.epilog.middle.block ]
  br label %.lr.ph820.i

.lr.ph820.i:                                      ; preds = %.lr.ph820.i.preheader, %.lr.ph820.i
  %indvars.iv915.i = phi i64 [ %indvars.iv.next916.i, %.lr.ph820.i ], [ %indvars.iv915.i.ph, %.lr.ph820.i.preheader ] ; 2 uses
  %i.cik = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv915.i ; 2 uses
  %i.cil = load i8, ptr %i.cik, align 1, !tbaa !44
  %spec.select596.i = call i8 @llvm.umax.i8(i8 %i.cil, i8 2)
  store i8 %spec.select596.i, ptr %i.cik, align 1, !tbaa !44
  %indvars.iv.next916.i = add nuw nsw i64 %indvars.iv915.i, 1 ; 2 uses
  %exitcond919.not.i = icmp eq i64 %indvars.iv.next916.i, %wide.trip.count918.i
  br i1 %exitcond919.not.i, label %.loopexit762.i, label %.lr.ph820.i, !llvm.loop !110

bb.ia:                                            ; preds = %bb.hy
  br i1 %i.atj, label %bb.ib, label %.loopexit762.i

bb.ib:                                            ; preds = %bb.ia
  %i.cim = load ptr, ptr %i.ck, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cim, i32 noundef 16, ptr noundef nonnull @.str.39) #11
  br label %bb.my

.loopexit762.i:                                   ; preds = %.lr.ph820.i, %middle.block1167, %vec.epilog.middle.block, %bb.ia, %bb.hz, %._crit_edge815.i
  %i.cin = load i32, ptr %i.ci, align 4, !tbaa !207 ; 5 uses
  %i.cio = icmp ne i32 %i.cin, 0
  %i.cip = icmp ne i64 %indvars.iv794, 0          ; 9 uses
  %or.cond4.i = and i1 %i.cip, %i.cio
  br i1 %or.cond4.i, label %.loopexit761.i, label %bb.ic

bb.ic:                                            ; preds = %.loopexit762.i
  %i.ciq = load i32, ptr %i.dd, align 4, !tbaa !225 ; 2 uses
  %.not550.i = icmp eq i32 %i.ciq, 0
  br i1 %.not550.i, label %bb.iu, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.cir = load i32, ptr %i.ao, align 8, !tbaa !50 ; 4 uses
  %i.cis = load ptr, ptr %i.al, align 16, !tbaa !48 ; 6 uses
  %i.cit = lshr i32 %i.cir, 3
  %i.ciu = zext nneg i32 %i.cit to i64
  %i.civ = getelementptr inbounds nuw i8, ptr %i.cis, i64 %i.ciu
  %i.ciw = load i8, ptr %i.civ, align 1, !tbaa !44
  %i.cix = load i32, ptr %i.an, align 16, !tbaa !49 ; 6 uses
  %i.ciy = icmp slt i32 %i.cir, %i.cix
  %i.ciz = zext i1 %i.ciy to i32
  %spec.select.i655.i = add i32 %i.cir, %i.ciz    ; 4 uses
  %i.cja = zext i8 %i.ciw to i32
  %i.cjb = and i32 %i.cir, 7
  store i32 %spec.select.i655.i, ptr %i.ao, align 8, !tbaa !50
  %i.cjc = lshr exact i32 128, %i.cjb
  %i.cjd = and i32 %i.cjc, %i.cja
  %.not551.i = icmp eq i32 %i.cjd, 0
  br i1 %.not551.i, label %bb.iu, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.cje = lshr i32 %spec.select.i655.i, 3
  %i.cjf = zext nneg i32 %i.cje to i64
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.cis, i64 %i.cjf
  %i.cjh = load i32, ptr %i.cjg, align 1, !tbaa !44
  %i.cji = call i32 @llvm.bswap.i32(i32 %i.cjh)
  %i.cjj = and i32 %spec.select.i655.i, 7
  %i.cjk = shl i32 %i.cji, %i.cjj
  %i.cjl = add i32 %spec.select.i655.i, 6
  %i.cjm = call i32 @llvm.umin.i32(i32 %i.cix, i32 %i.cjl) ; 4 uses
  store i32 %i.cjm, ptr %i.ao, align 8, !tbaa !50
  %i.cjn = lshr i32 %i.cjk, 22
  %i.cjo = and i32 %i.cjn, 1008
  %i.cjp = add nuw nsw i32 %i.cjo, 1073741584     ; 2 uses
  %.not552821.i = icmp slt i32 %i.ceo, %i.bys
  br i1 %.not552821.i, label %.loopexit761.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.cjq = icmp eq i32 %i.ciq, 2
  %.not554.i = icmp eq i32 %i.cin, 0              ; 2 uses
  %i.cjr = zext i1 %.not539.i to i64              ; 3 uses
  %i.cjs = add nuw i32 %i.ceo, 1
  %wide.trip.count923.i = zext i32 %i.cjs to i64  ; 2 uses
  %i.cjt = lshr i32 %i.cjm, 3
  %i.cju = zext nneg i32 %i.cjt to i64
  %i.cjv = getelementptr inbounds nuw i8, ptr %i.cis, i64 %i.cju
  %i.cjw = load i32, ptr %i.cjv, align 1, !tbaa !44
  %i.cjx = call i32 @llvm.bswap.i32(i32 %i.cjw)
  %i.cjy = and i32 %i.cjm, 7
  %i.cjz = shl i32 %i.cjx, %i.cjy
  %i.cka = lshr i32 %i.cjz, 28
  %i.ckb = add i32 %i.cjm, 4
  %i.ckc = call i32 @llvm.umin.i32(i32 %i.cix, i32 %i.ckb) ; 5 uses
  store i32 %i.ckc, ptr %i.ao, align 8, !tbaa !50
  %i.ckd = or disjoint i32 %i.cka, %i.cjp
  %i.cke = shl i32 %i.ckd, 2                      ; 3 uses
  br i1 %i.cip, label %bb.ig, label %bb.ii

bb.ig:                                            ; preds = %bb.if
  %i.ckf = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.cjr
  %i.ckg = load i32, ptr %i.ckf, align 4, !tbaa !43
  %.not553.peel.i = icmp eq i32 %i.ckg, %i.cke
  br i1 %.not553.peel.i, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.not539.i to i64
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.ckh = load i8, ptr %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !44
  %spec.select597.peel.i = call i8 @llvm.umax.i8(i8 %i.ckh, i8 1)
  store i8 %spec.select597.peel.i, ptr %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !44
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig, %bb.if
  %i.cki = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.cjr
  store i32 %i.cke, ptr %i.cki, align 4, !tbaa !43
  br i1 %.not554.i, label %bb.ij, label %bb.il

bb.ij:                                            ; preds = %bb.ii
  %i.ckj = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.cjr ; 2 uses
  %i.ckk = load i32, ptr %i.ckj, align 4, !tbaa !43
  %i.ckl = lshr i32 %i.ckc, 3
  %i.ckm = zext nneg i32 %i.ckl to i64
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.cis, i64 %i.ckm
  %i.cko = load i32, ptr %i.ckn, align 1, !tbaa !44
  %i.ckp = call i32 @llvm.bswap.i32(i32 %i.cko)
  %i.ckq = and i32 %i.ckc, 7
  %i.ckr = shl i32 %i.ckp, %i.ckq
  %i.cks = lshr i32 %i.ckr, 29
  %i.ckt = add i32 %i.ckc, 3
  %i.cku = call i32 @llvm.umin.i32(i32 %i.cix, i32 %i.ckt) ; 3 uses
  store i32 %i.cku, ptr %i.ao, align 8, !tbaa !50
  %i.ckv = zext nneg i32 %i.cks to i64
  %i.ckw = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_fast_gain_tab, i64 %i.ckv
  %i.ckx = load i16, ptr %i.ckw, align 2, !tbaa !53
  %i.cky = zext i16 %i.ckx to i32                 ; 2 uses
  store i32 %i.cky, ptr %i.ckj, align 4, !tbaa !43
  %.not555.peel.i = icmp ne i32 %i.ckk, %i.cky
  %or.cond599.not.peel.i = select i1 %i.cip, i1 %.not555.peel.i, i1 false
  br i1 %or.cond599.not.peel.i, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %.sroa.sel967.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.not539.i to i64
  %.sroa.sel967.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.sel967.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.ckz = load i8, ptr %.sroa.sel967.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !44
  %spec.select600.peel.i = call i8 @llvm.umax.i8(i8 %i.ckz, i8 2)
  store i8 %spec.select600.peel.i, ptr %.sroa.sel967.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !44
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij, %bb.ii
  %i.cla = phi i32 [ %i.cku, %bb.ik ], [ %i.cku, %bb.ij ], [ %i.ckc, %bb.ii ]
  %indvars.iv.next921.peel.i = select i1 %.not539.i, i64 2, i64 1 ; 2 uses
  %exitcond924.peel.not.i = icmp eq i64 %indvars.iv.next921.peel.i, %wide.trip.count923.i
  br i1 %exitcond924.peel.not.i, label %.loopexit761.i, label %.peel.next926.i

.peel.next926.i:                                  ; preds = %bb.il, %bb.it
  %i.clb = phi i32 [ %i.cmm, %bb.it ], [ %i.cla, %bb.il ] ; 4 uses
  %indvars.iv920.i = phi i64 [ %indvars.iv.next921.i, %bb.it ], [ %indvars.iv.next921.peel.i, %bb.il ] ; 6 uses
  %.0488823.i = phi i32 [ %.1489.i, %bb.it ], [ %i.cke, %bb.il ]
  br i1 %i.cjq, label %bb.im, label %bb.in

bb.im:                                            ; preds = %.peel.next926.i
  %i.clc = lshr i32 %i.clb, 3
  %i.cld = zext nneg i32 %i.clc to i64
  %i.cle = getelementptr inbounds nuw i8, ptr %i.cis, i64 %i.cld
  %i.clf = load i32, ptr %i.cle, align 1, !tbaa !44
  %i.clg = call i32 @llvm.bswap.i32(i32 %i.clf)
  %i.clh = and i32 %i.clb, 7
  %i.cli = shl i32 %i.clg, %i.clh
  %i.clj = lshr i32 %i.cli, 28
  %i.clk = add i32 %i.clb, 4
  %i.cll = call i32 @llvm.umin.i32(i32 %i.cix, i32 %i.clk) ; 2 uses
  store i32 %i.cll, ptr %i.ao, align 8, !tbaa !50
  %i.clm = or disjoint i32 %i.clj, %i.cjp
  %i.cln = shl i32 %i.clm, 2
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %.peel.next926.i
  %i.clo = phi i32 [ %i.cll, %bb.im ], [ %i.clb, %.peel.next926.i ] ; 4 uses
  %.1489.i = phi i32 [ %i.cln, %bb.im ], [ %.0488823.i, %.peel.next926.i ] ; 3 uses
  br i1 %i.cip, label %bb.io, label %bb.iq

bb.io:                                            ; preds = %bb.in
  %i.clp = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv920.i
  %i.clq = load i32, ptr %i.clp, align 4, !tbaa !43
  %.not553.i = icmp eq i32 %i.clq, %.1489.i
  br i1 %.not553.i, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.clr = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv920.i ; 2 uses
  %i.cls = load i8, ptr %i.clr, align 1, !tbaa !44
  %spec.select597.i = call i8 @llvm.umax.i8(i8 %i.cls, i8 1)
  store i8 %spec.select597.i, ptr %i.clr, align 1, !tbaa !44
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io, %bb.in
  %i.clt = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv920.i
  store i32 %.1489.i, ptr %i.clt, align 4, !tbaa !43
  br i1 %.not554.i, label %bb.ir, label %bb.it

bb.ir:                                            ; preds = %bb.iq
  %i.clu = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv920.i ; 2 uses
  %i.clv = load i32, ptr %i.clu, align 4, !tbaa !43
  %i.clw = lshr i32 %i.clo, 3
  %i.clx = zext nneg i32 %i.clw to i64
  %i.cly = getelementptr inbounds nuw i8, ptr %i.cis, i64 %i.clx
  %i.clz = load i32, ptr %i.cly, align 1, !tbaa !44
  %i.cma = call i32 @llvm.bswap.i32(i32 %i.clz)
  %i.cmb = and i32 %i.clo, 7
  %i.cmc = shl i32 %i.cma, %i.cmb
  %i.cmd = lshr i32 %i.cmc, 29
  %i.cme = add i32 %i.clo, 3
  %i.cmf = call i32 @llvm.umin.i32(i32 %i.cix, i32 %i.cme) ; 3 uses
  store i32 %i.cmf, ptr %i.ao, align 8, !tbaa !50
  %i.cmg = zext nneg i32 %i.cmd to i64
  %i.cmh = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_fast_gain_tab, i64 %i.cmg
  %i.cmi = load i16, ptr %i.cmh, align 2, !tbaa !53
  %i.cmj = zext i16 %i.cmi to i32                 ; 2 uses
  store i32 %i.cmj, ptr %i.clu, align 4, !tbaa !43
  %.not555.i = icmp ne i32 %i.clv, %i.cmj
  %or.cond599.not.i = select i1 %i.cip, i1 %.not555.i, i1 false
  br i1 %or.cond599.not.i, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv920.i ; 2 uses
  %i.cml = load i8, ptr %i.cmk, align 1, !tbaa !44
  %spec.select600.i = call i8 @llvm.umax.i8(i8 %i.cml, i8 2)
  store i8 %spec.select600.i, ptr %i.cmk, align 1, !tbaa !44
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir, %bb.iq
  %i.cmm = phi i32 [ %i.cmf, %bb.ir ], [ %i.cmf, %bb.is ], [ %i.clo, %bb.iq ]
  %indvars.iv.next921.i = add nuw nsw i64 %indvars.iv920.i, 1 ; 2 uses
  %exitcond924.not.i = icmp eq i64 %indvars.iv.next921.i, %wide.trip.count923.i
  br i1 %exitcond924.not.i, label %.loopexit761.i, label %.peel.next926.i, !llvm.loop !111

bb.iu:                                            ; preds = %bb.id, %bb.ic
  %i.cmn = trunc nuw nsw i64 %indvars.iv794 to i32
  %i.cmo = or i32 %i.cin, %i.cmn
  %or.cond6.not.i = icmp eq i32 %i.cmo, 0
  br i1 %or.cond6.not.i, label %bb.iv, label %.loopexit761.i

bb.iv:                                            ; preds = %bb.iu
  %i.cmp = load ptr, ptr %i.ck, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cmp, i32 noundef 16, ptr noundef nonnull @.str.40) #11
  br label %bb.my

.loopexit761.i:                                   ; preds = %bb.it, %bb.iu, %bb.il, %bb.ie, %.loopexit762.i
  %i.cmq = load i32, ptr %i.dy, align 4, !tbaa !208
  %.not556.i = icmp eq i32 %i.cmq, 0
  br i1 %.not556.i, label %bb.ja, label %bb.iw

bb.iw:                                            ; preds = %.loopexit761.i
  %i.cmr = load i32, ptr %i.ao, align 8, !tbaa !50 ; 4 uses
  %i.cms = load ptr, ptr %i.al, align 16, !tbaa !48 ; 2 uses
  %i.cmt = lshr i32 %i.cmr, 3
  %i.cmu = zext nneg i32 %i.cmt to i64
  %i.cmv = getelementptr inbounds nuw i8, ptr %i.cms, i64 %i.cmu
  %i.cmw = load i8, ptr %i.cmv, align 1, !tbaa !44
  %i.cmx = load i32, ptr %i.an, align 16, !tbaa !49 ; 2 uses
  %i.cmy = icmp slt i32 %i.cmr, %i.cmx
  %i.cmz = zext i1 %i.cmy to i32
  %spec.select.i656.i = add i32 %i.cmr, %i.cmz    ; 2 uses
  %i.cna = zext i8 %i.cmw to i32
  %i.cnb = and i32 %i.cmr, 7
  store i32 %spec.select.i656.i, ptr %i.ao, align 8, !tbaa !50
  %i.cnc = lshr exact i32 128, %i.cnb
  %i.cnd = and i32 %i.cnc, %i.cna
  %.not557.i = icmp eq i32 %i.cnd, 0
  br i1 %.not557.i, label %bb.ja, label %.preheader759.i

.preheader759.i:                                  ; preds = %bb.iw
  %.not559826.i = icmp slt i32 %i.ceo, %i.bys
  br i1 %.not559826.i, label %.loopexit758.i, label %.lr.ph828.i

.lr.ph828.i:                                      ; preds = %.preheader759.i
  %i.cne = zext i1 %.not539.i to i64
  %i.cnf = add nuw i32 %i.ceo, 1
  %wide.trip.count931.i = zext i32 %i.cnf to i64
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iz, %.lr.ph828.i
  %indvars.iv928.i = phi i64 [ %i.cne, %.lr.ph828.i ], [ %indvars.iv.next929.i, %bb.iz ] ; 3 uses
  %i.cng = phi i32 [ %spec.select.i656.i, %.lr.ph828.i ], [ %i.cns, %bb.iz ] ; 3 uses
  %i.cnh = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv928.i ; 2 uses
  %i.cni = load i32, ptr %i.cnh, align 4, !tbaa !43
  %i.cnj = lshr i32 %i.cng, 3
  %i.cnk = zext nneg i32 %i.cnj to i64
  %i.cnl = getelementptr inbounds nuw i8, ptr %i.cms, i64 %i.cnk
  %i.cnm = load i32, ptr %i.cnl, align 1, !tbaa !44
  %i.cnn = call i32 @llvm.bswap.i32(i32 %i.cnm)
  %i.cno = and i32 %i.cng, 7
  %i.cnp = shl i32 %i.cnn, %i.cno
  %i.cnq = lshr i32 %i.cnp, 29
  %i.cnr = add i32 %i.cng, 3
  %i.cns = call i32 @llvm.umin.i32(i32 %i.cmx, i32 %i.cnr) ; 2 uses
  store i32 %i.cns, ptr %i.ao, align 8, !tbaa !50
  %i.cnt = zext nneg i32 %i.cnq to i64
  %i.cnu = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_fast_gain_tab, i64 %i.cnt
  %i.cnv = load i16, ptr %i.cnu, align 2, !tbaa !53
  %i.cnw = zext i16 %i.cnv to i32                 ; 2 uses
  store i32 %i.cnw, ptr %i.cnh, align 4, !tbaa !43
  %.not585.i = icmp ne i32 %i.cni, %i.cnw
  %or.cond602.not.i = select i1 %i.cip, i1 %.not585.i, i1 false
  br i1 %or.cond602.not.i, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.cnx = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv928.i ; 2 uses
  %i.cny = load i8, ptr %i.cnx, align 1, !tbaa !44
  %spec.select603.i = call i8 @llvm.umax.i8(i8 %i.cny, i8 2)
  store i8 %spec.select603.i, ptr %i.cnx, align 1, !tbaa !44
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %indvars.iv.next929.i = add nuw nsw i64 %indvars.iv928.i, 1 ; 2 uses
  %exitcond932.not.i = icmp eq i64 %indvars.iv.next929.i, %wide.trip.count931.i
  br i1 %exitcond932.not.i, label %.loopexit758.i, label %bb.ix, !llvm.loop !112

bb.ja:                                            ; preds = %bb.iw, %.loopexit761.i
  %i.cnz = icmp eq i32 %i.cin, 0
  %.not558830.i = icmp slt i32 %i.ceo, %i.bys
  %i.coa = or i1 %.not558830.i, %i.cnz
  %or.cond862.i = or i1 %i.cip, %i.coa
  br i1 %or.cond862.i, label %.loopexit758.i, label %.lr.ph832.i

.lr.ph832.i:                                      ; preds = %bb.ja
  %i.cob = zext i1 %.not539.i to i64              ; 4 uses
  %i.coc = add nuw i32 %i.ceo, 1
  %wide.trip.count936.i = zext i32 %i.coc to i64  ; 2 uses
  %i.cod = sub nuw nsw i64 %wide.trip.count936.i, %i.cob ; 3 uses
  %min.iters.check1146 = icmp samesign ult i64 %i.cod, 8
  br i1 %min.iters.check1146, label %scalar.ph1145.preheader, label %vector.ph1147

vector.ph1147:                                    ; preds = %.lr.ph832.i
  %n.vec1148 = and i64 %i.cod, 4294967288         ; 3 uses
  %i.coe = or disjoint i64 %n.vec1148, %i.cob
  %invariant.gep1510 = getelementptr [4 x i8], ptr %i.gn, i64 %i.cob
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %vector.ph1147
  %index1152 = phi i64 [ 0, %vector.ph1147 ], [ %index.next1153, %vector.body1151 ] ; 2 uses
  %gep1511 = getelementptr [4 x i8], ptr %invariant.gep1510, i64 %index1152 ; 2 uses
  %i.cof = getelementptr inbounds nuw i8, ptr %gep1511, i64 16
  store <4 x i32> %broadcast.splat1150, ptr %gep1511, align 4, !tbaa !43
  store <4 x i32> %broadcast.splat1150, ptr %i.cof, align 4, !tbaa !43
  %index.next1153 = add nuw i64 %index1152, 8     ; 2 uses
  %i.cog = icmp eq i64 %index.next1153, %n.vec1148
  br i1 %i.cog, label %middle.block1154, label %vector.body1151, !llvm.loop !113

middle.block1154:                                 ; preds = %vector.body1151
  %cmp.n1155 = icmp eq i64 %i.cod, %n.vec1148
  br i1 %cmp.n1155, label %.loopexit758.i, label %scalar.ph1145.preheader

scalar.ph1145.preheader:                          ; preds = %.lr.ph832.i, %middle.block1154
  %indvars.iv933.i.ph = phi i64 [ %i.cob, %.lr.ph832.i ], [ %i.coe, %middle.block1154 ]
  br label %scalar.ph1145

scalar.ph1145:                                    ; preds = %scalar.ph1145.preheader, %scalar.ph1145
  %indvars.iv933.i = phi i64 [ %indvars.iv.next934.i, %scalar.ph1145 ], [ %indvars.iv933.i.ph, %scalar.ph1145.preheader ] ; 2 uses
  %i.coh = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv933.i
  store i32 %i.gp, ptr %i.coh, align 4, !tbaa !43
  %indvars.iv.next934.i = add nuw nsw i64 %indvars.iv933.i, 1 ; 2 uses
  %exitcond937.not.i = icmp eq i64 %indvars.iv.next934.i, %wide.trip.count936.i
  br i1 %exitcond937.not.i, label %.loopexit758.i, label %scalar.ph1145, !llvm.loop !114

.loopexit758.i:                                   ; preds = %bb.iz, %scalar.ph1145, %middle.block1154, %bb.ja, %.preheader759.i
  %i.coi = load i32, ptr %i.bx, align 16, !tbaa !199
  %i.coj = icmp eq i32 %i.coi, 0
  br i1 %i.coj, label %bb.jb, label %bb.jd

bb.jb:                                            ; preds = %.loopexit758.i
  %i.cok = load i32, ptr %i.ao, align 8, !tbaa !50 ; 4 uses
  %i.col = load ptr, ptr %i.al, align 16, !tbaa !48
  %i.com = lshr i32 %i.cok, 3
  %i.con = zext nneg i32 %i.com to i64
  %i.coo = getelementptr inbounds nuw i8, ptr %i.col, i64 %i.con
  %i.cop = load i8, ptr %i.coo, align 1, !tbaa !44
  %i.coq = load i32, ptr %i.an, align 16, !tbaa !49 ; 2 uses
  %i.cor = icmp slt i32 %i.cok, %i.coq
  %i.cos = zext i1 %i.cor to i32
  %spec.select.i657.i = add i32 %i.cok, %i.cos    ; 2 uses
  %i.cot = zext i8 %i.cop to i32
  %i.cou = and i32 %i.cok, 7
  store i32 %spec.select.i657.i, ptr %i.ao, align 8, !tbaa !50
  %i.cov = lshr exact i32 128, %i.cou
  %i.cow = and i32 %i.cov, %i.cot
  %.not560.i = icmp eq i32 %i.cow, 0
  br i1 %.not560.i, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.cox = add i32 %spec.select.i657.i, 10
  %i.coy = call i32 @llvm.umin.i32(i32 %i.coq, i32 %i.cox)
  store i32 %i.coy, ptr %i.ao, align 8, !tbaa !50
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb, %.loopexit758.i
  br i1 %.not539.i, label %bb.jo, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.coz = load i32, ptr %i.eo, align 4, !tbaa !209
  %.not561.i = icmp eq i32 %i.coz, 0
  %.pre976.i = load i32, ptr %i.ao, align 8, !tbaa !50 ; 5 uses
  %.pre977.i = load i32, ptr %i.an, align 16, !tbaa !49 ; 3 uses
  %.pre978.i = load ptr, ptr %i.al, align 16, !tbaa !48 ; 3 uses
  br i1 %.not561.i, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.cpa = lshr i32 %.pre976.i, 3
  %i.cpb = zext nneg i32 %i.cpa to i64
  %i.cpc = getelementptr inbounds nuw i8, ptr %.pre978.i, i64 %i.cpb
  %i.cpd = load i8, ptr %i.cpc, align 1, !tbaa !44
  %i.cpe = icmp slt i32 %.pre976.i, %.pre977.i
  %i.cpf = zext i1 %i.cpe to i32
  %spec.select.i658.i = add i32 %.pre976.i, %i.cpf ; 2 uses
  %i.cpg = zext i8 %i.cpd to i32
  %i.cph = and i32 %.pre976.i, 7
  store i32 %spec.select.i658.i, ptr %i.ao, align 8, !tbaa !50
  %i.cpi = lshr exact i32 128, %i.cph
  %i.cpj = and i32 %i.cpi, %i.cpg
  %.not562.i = icmp eq i32 %i.cpj, 0
  br i1 %.not562.i, label %bb.jl, label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je
  %i.cpk = phi i32 [ %spec.select.i658.i, %bb.jf ], [ %.pre976.i, %bb.je ] ; 3 uses
  %i.cpl = lshr i32 %i.cpk, 3
  %i.cpm = zext nneg i32 %i.cpl to i64
  %i.cpn = getelementptr inbounds nuw i8, ptr %.pre978.i, i64 %i.cpm
  %i.cpo = load i32, ptr %i.cpn, align 1, !tbaa !44
  %i.cpp = call i32 @llvm.bswap.i32(i32 %i.cpo)
  %i.cpq = and i32 %i.cpk, 7
  %i.cpr = shl i32 %i.cpp, %i.cpq
  %i.cps = lshr i32 %i.cpr, 29                    ; 2 uses
  %i.cpt = add i32 %i.cpk, 3
  %i.cpu = call i32 @llvm.umin.i32(i32 %.pre977.i, i32 %i.cpt) ; 4 uses
  store i32 %i.cpu, ptr %i.ao, align 8, !tbaa !50
  %i.cpv = lshr i32 %i.cpu, 3
  %i.cpw = zext nneg i32 %i.cpv to i64
  %i.cpx = getelementptr inbounds nuw i8, ptr %.pre978.i, i64 %i.cpw
  %i.cpy = load i32, ptr %i.cpx, align 1, !tbaa !44
  %i.cpz = call i32 @llvm.bswap.i32(i32 %i.cpy)
  %i.cqa = and i32 %i.cpu, 7
  %i.cqb = shl i32 %i.cpz, %i.cqa
  %i.cqc = lshr i32 %i.cqb, 29                    ; 2 uses
  %i.cqd = add i32 %i.cpu, 3
  %i.cqe = call i32 @llvm.umin.i32(i32 %.pre977.i, i32 %i.cqd)
  store i32 %i.cqe, ptr %i.ao, align 8, !tbaa !50
  br i1 %i.cip, label %bb.jh, label %bb.jk

bb.jh:                                            ; preds = %bb.jg
  %i.cqf = load i32, ptr %i.gq, align 4, !tbaa !261
  %.not563.i = icmp eq i32 %i.cps, %i.cqf
  br i1 %.not563.i, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.cqg = load i32, ptr %i.gr, align 8, !tbaa !262
  %.not564.i = icmp eq i32 %i.cqc, %i.cqg
  br i1 %.not564.i, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  %i.cqh = load i8, ptr %i.e, align 1, !tbaa !44
  %i.cqi = call i8 @llvm.umax.i8(i8 %i.cqh, i8 2)
  store i8 %i.cqi, ptr %i.e, align 1, !tbaa !44
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji, %bb.jg
  store i32 %i.cps, ptr %i.gq, align 4, !tbaa !261
  store i32 %i.cqc, ptr %i.gr, align 8, !tbaa !262
  br label %bb.jn

bb.jl:                                            ; preds = %bb.jf
  %i.cqj = trunc nuw nsw i64 %indvars.iv794 to i32
  %i.cqk = or i32 %i.cin, %i.cqj
  %or.cond10.not.i = icmp eq i32 %i.cqk, 0
  br i1 %or.cond10.not.i, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.cql = load ptr, ptr %i.ck, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cql, i32 noundef 16, ptr noundef nonnull @.str.41) #11
  br label %bb.my

bb.jn:                                            ; preds = %bb.jl, %bb.jk
  store i32 0, ptr %i.eo, align 4, !tbaa !209
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jd
  %i.cqm = load i32, ptr %i.dz, align 8, !tbaa !210
  %.not565.i = icmp eq i32 %i.cqm, 0
  br i1 %.not565.i, label %bb.kb, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.cqn = load i32, ptr %i.ao, align 8, !tbaa !50 ; 4 uses
  %i.cqo = load ptr, ptr %i.al, align 16, !tbaa !48 ; 27 uses
  %i.cqp = lshr i32 %i.cqn, 3
  %i.cqq = zext nneg i32 %i.cqp to i64
  %i.cqr = getelementptr inbounds nuw i8, ptr %i.cqo, i64 %i.cqq
  %i.cqs = load i8, ptr %i.cqr, align 1, !tbaa !44
  %i.cqt = load i32, ptr %i.an, align 16, !tbaa !49 ; 27 uses
  %i.cqu = icmp slt i32 %i.cqn, %i.cqt
  %i.cqv = zext i1 %i.cqu to i32
  %spec.select.i659.i = add i32 %i.cqn, %i.cqv    ; 2 uses
  %i.cqw = zext i8 %i.cqs to i32
  %i.cqx = and i32 %i.cqn, 7
  store i32 %spec.select.i659.i, ptr %i.ao, align 8, !tbaa !50
  %i.cqy = lshr exact i32 128, %i.cqx
  %i.cqz = and i32 %i.cqy, %i.cqw
  %.not566.i = icmp eq i32 %i.cqz, 0
  br i1 %.not566.i, label %bb.kb, label %.preheader756.i

.preheader756.i:                                  ; preds = %bb.jp
  %.not568833.i = icmp slt i32 %i.aqo, %i.bys
  br i1 %.not568833.i, label %.loopexit.i, label %.lr.ph835.i

.lr.ph835.i:                                      ; preds = %.preheader756.i
  %i.cra = zext i1 %.not539.i to i64              ; 2 uses
  %i.crb = add nuw i32 %i.aqo, 1
  %wide.trip.count941.i = zext i32 %i.crb to i64  ; 2 uses
  br label %bb.jq

bb.jq:                                            ; preds = %bb.js, %.lr.ph835.i
  %indvars.iv938.i = phi i64 [ %i.cra, %.lr.ph835.i ], [ %indvars.iv.next939.i, %bb.js ] ; 3 uses
  %i.crc = phi i32 [ %spec.select.i659.i, %.lr.ph835.i ], [ %i.crm, %bb.js ] ; 3 uses
  %i.crd = lshr i32 %i.crc, 3
  %i.cre = zext nneg i32 %i.crd to i64
  %i.crf = getelementptr inbounds nuw i8, ptr %i.cqo, i64 %i.cre
  %i.crg = load i32, ptr %i.crf, align 1, !tbaa !44
  %i.crh = call i32 @llvm.bswap.i32(i32 %i.crg)
  %i.cri = and i32 %i.crc, 7
  %i.crj = shl i32 %i.crh, %i.cri
  %i.crk = lshr i32 %i.crj, 30                    ; 2 uses
  %i.crl = add i32 %i.crc, 2
  %i.crm = call i32 @llvm.umin.i32(i32 %i.cqt, i32 %i.crl) ; 3 uses
  store i32 %i.crm, ptr %i.ao, align 8, !tbaa !50
  %i.crn = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv938.i
  store i32 %i.crk, ptr %i.crn, align 4, !tbaa !43
  %i.cro = icmp eq i32 %i.crk, 3
end_hunk_0
begin_hunk_1_@ac3_decode_frame:bb.a
  %i.dbs = call i32 @llvm.bswap.i32(i32 %i.dbr)
  %i.dbt = and i32 %i.dbl, 7
  %i.dbu = shl i32 %i.dbs, %i.dbt
  %i.dbv = lshr i32 %i.dbu, 29
  %i.dbw = add i32 %i.dbl, 3
  %i.dbx = call i32 @llvm.umin.i32(i32 %i.cqt, i32 %i.dbw) ; 5 uses
  store i32 %i.dbx, ptr %i.ao, align 8, !tbaa !50
  %i.dby = trunc nuw nsw i32 %i.dbv to i8
  %i.dbz = getelementptr inbounds nuw i8, ptr %i.csk, i64 6
  store i8 %i.dby, ptr %i.dbz, align 1, !tbaa !44
  %exitcond779.not.6 = icmp eq i32 %i.csg, 7
  br i1 %exitcond779.not.6, label %._crit_edge840.i, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.dca = lshr i32 %i.dbx, 3
  %i.dcb = zext nneg i32 %i.dca to i64
  %i.dcc = getelementptr inbounds nuw i8, ptr %i.cqo, i64 %i.dcb
  %i.dcd = load i32, ptr %i.dcc, align 1, !tbaa !44
  %i.dce = call i32 @llvm.bswap.i32(i32 %i.dcd)
  %i.dcf = and i32 %i.dbx, 7
  %i.dcg = shl i32 %i.dce, %i.dcf
  %i.dch = lshr i32 %i.dcg, 27
  %i.dci = add i32 %i.dbx, 5
  %i.dcj = call i32 @llvm.umin.i32(i32 %i.cqt, i32 %i.dci) ; 4 uses
  store i32 %i.dcj, ptr %i.ao, align 8, !tbaa !50
  %i.dck = trunc nuw nsw i32 %i.dch to i8
  %i.dcl = getelementptr inbounds nuw i8, ptr %i.csi, i64 7
  store i8 %i.dck, ptr %i.dcl, align 1, !tbaa !44
  %i.dcm = lshr i32 %i.dcj, 3
  %i.dcn = zext nneg i32 %i.dcm to i64
  %i.dco = getelementptr inbounds nuw i8, ptr %i.cqo, i64 %i.dcn
  %i.dcp = load i32, ptr %i.dco, align 1, !tbaa !44
  %i.dcq = call i32 @llvm.bswap.i32(i32 %i.dcp)
  %i.dcr = and i32 %i.dcj, 7
  %i.dcs = shl i32 %i.dcq, %i.dcr
  %i.dct = lshr i32 %i.dcs, 28
  %i.dcu = add i32 %i.dcj, 4
  %i.dcv = call i32 @llvm.umin.i32(i32 %i.cqt, i32 %i.dcu) ; 4 uses
  store i32 %i.dcv, ptr %i.ao, align 8, !tbaa !50
  %i.dcw = trunc nuw nsw i32 %i.dct to i8
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.csj, i64 7
  store i8 %i.dcw, ptr %i.dcx, align 1, !tbaa !44
  %i.dcy = lshr i32 %i.dcv, 3
  %i.dcz = zext nneg i32 %i.dcy to i64
  %i.dda = getelementptr inbounds nuw i8, ptr %i.cqo, i64 %i.dcz
  %i.ddb = load i32, ptr %i.dda, align 1, !tbaa !44
  %i.ddc = call i32 @llvm.bswap.i32(i32 %i.ddb)
  %i.ddd = and i32 %i.dcv, 7
  %i.dde = shl i32 %i.ddc, %i.ddd
  %i.ddf = lshr i32 %i.dde, 29
  %i.ddg = add i32 %i.dcv, 3
  %i.ddh = call i32 @llvm.umin.i32(i32 %i.cqt, i32 %i.ddg) ; 2 uses
  store i32 %i.ddh, ptr %i.ao, align 8, !tbaa !50
  %i.ddi = trunc nuw nsw i32 %i.ddf to i8
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.csk, i64 7
  store i8 %i.ddi, ptr %i.ddj, align 1, !tbaa !44
  br label %._crit_edge840.i

._crit_edge840.i:                                 ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %.lr.ph839.i
  %.lcssa1292 = phi i32 [ %i.ctq, %.lr.ph839.i ], [ %i.cuz, %bb.jt ], [ %i.cwj, %bb.ju ], [ %i.cxt, %bb.jv ], [ %i.czd, %bb.jw ], [ %i.dan, %bb.jx ], [ %i.dbx, %bb.jy ], [ %i.ddh, %bb.jz ]
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv946.i ; 2 uses
  %i.ddl = load i8, ptr %i.ddk, align 1, !tbaa !44
  %spec.select605.i = call i8 @llvm.umax.i8(i8 %i.ddl, i8 2)
  store i8 %spec.select605.i, ptr %i.ddk, align 1, !tbaa !44
  br label %bb.ka

bb.ka:                                            ; preds = %._crit_edge840.i, %.preheader754.i
  %i.ddm = phi i32 [ %i.crs, %.preheader754.i ], [ %.lcssa1292, %._crit_edge840.i ]
  %indvars.iv.next947.i = add nuw nsw i64 %indvars.iv946.i, 1 ; 2 uses
  %exitcond950.not.i = icmp eq i64 %indvars.iv.next947.i, %wide.trip.count941.i
  br i1 %exitcond950.not.i, label %.loopexit.i, label %.preheader754.i, !llvm.loop !116

bb.kb:                                            ; preds = %bb.jp, %bb.jo
  %.not567845.i = icmp slt i32 %i.ceo, 0
  %or.cond863.i = or i1 %i.cip, %.not567845.i
  br i1 %or.cond863.i, label %.loopexit.i, label %.lr.ph847.i

.lr.ph847.i:                                      ; preds = %bb.kb
  %i.ddn = add nuw i32 %i.ceo, 1
  %wide.trip.count954.i = zext i32 %i.ddn to i64  ; 3 uses
  %min.iters.check1136 = icmp ult i32 %i.ceo, 7
  br i1 %min.iters.check1136, label %scalar.ph1135.preheader, label %vector.ph1137

vector.ph1137:                                    ; preds = %.lr.ph847.i
  %n.vec1138 = and i64 %wide.trip.count954.i, 4294967288 ; 3 uses
  br label %vector.body1139

vector.body1139:                                  ; preds = %vector.body1139, %vector.ph1137
  %index1140 = phi i64 [ 0, %vector.ph1137 ], [ %index.next1141, %vector.body1139 ] ; 2 uses
  %i.ddo = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %index1140 ; 2 uses
  %i.ddp = getelementptr inbounds nuw i8, ptr %i.ddo, i64 16
  store <4 x i32> splat (i32 2), ptr %i.ddo, align 4, !tbaa !43
  store <4 x i32> splat (i32 2), ptr %i.ddp, align 4, !tbaa !43
  %index.next1141 = add nuw i64 %index1140, 8     ; 2 uses
  %i.ddq = icmp eq i64 %index.next1141, %n.vec1138
  br i1 %i.ddq, label %middle.block1142, label %vector.body1139, !llvm.loop !117

middle.block1142:                                 ; preds = %vector.body1139
  %cmp.n1143 = icmp eq i64 %n.vec1138, %wide.trip.count954.i
  br i1 %cmp.n1143, label %.loopexit.i, label %scalar.ph1135.preheader

scalar.ph1135.preheader:                          ; preds = %.lr.ph847.i, %middle.block1142
  %indvars.iv951.i.ph = phi i64 [ 0, %.lr.ph847.i ], [ %n.vec1138, %middle.block1142 ]
  br label %scalar.ph1135

scalar.ph1135:                                    ; preds = %scalar.ph1135.preheader, %scalar.ph1135
  %indvars.iv951.i = phi i64 [ %indvars.iv.next952.i, %scalar.ph1135 ], [ %indvars.iv951.i.ph, %scalar.ph1135.preheader ] ; 2 uses
  %i.ddr = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv951.i
  store i32 2, ptr %i.ddr, align 4, !tbaa !43
  %indvars.iv.next952.i = add nuw nsw i64 %indvars.iv951.i, 1 ; 2 uses
  %exitcond955.not.i = icmp eq i64 %indvars.iv.next952.i, %wide.trip.count954.i
  br i1 %exitcond955.not.i, label %.loopexit.i, label %scalar.ph1135, !llvm.loop !118

.loopexit.i:                                      ; preds = %bb.ka, %scalar.ph1135, %middle.block1142, %bb.kb, %.preheader756.i
  %.not570848.i = icmp slt i32 %i.ceo, %i.bys
  br i1 %.not570848.i, label %._crit_edge853.i, label %.lr.ph852.i

.lr.ph852.i:                                      ; preds = %.loopexit.i
  %i.dds = zext i1 %.not539.i to i64
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kg, %.lr.ph852.i
  %i.ddt = phi i32 [ %i.ceo, %.lr.ph852.i ], [ %i.dfn, %bb.kg ]
  %indvars.iv956.i = phi i64 [ %i.dds, %.lr.ph852.i ], [ %indvars.iv.next957.i, %bb.kg ] ; 26 uses
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv956.i
  %i.ddv = load i8, ptr %i.ddu, align 1, !tbaa !44 ; 2 uses
  %i.ddw = icmp ugt i8 %i.ddv, 2
  br i1 %i.ddw, label %.thread740.i, label %bb.kd

.thread740.i:                                     ; preds = %bb.kc
  %i.ddx = getelementptr inbounds nuw [256 x i8], ptr %i.gm, i64 %indvars.iv956.i
  %i.ddy = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv956.i
  %i.ddz = load i32, ptr %i.ddy, align 4, !tbaa !43
  %i.dea = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv956.i
  %i.deb = load i32, ptr %i.dea, align 4, !tbaa !43
  %i.dec = getelementptr inbounds nuw [512 x i8], ptr %i.gx, i64 %indvars.iv956.i
  %i.ded = getelementptr inbounds nuw [100 x i8], ptr %i.gy, i64 %indvars.iv956.i
  call void @ff_ac3_bit_alloc_calc_psd(ptr noundef nonnull %i.ddx, i32 noundef %i.ddz, i32 noundef %i.deb, ptr noundef nonnull %i.dec, ptr noundef nonnull %i.ded) #11
  br label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  switch i8 %i.ddv, label %.thread741.i [
    i8 2, label %bb.ke
    i8 0, label %bb.kg
  ]

bb.ke:                                            ; preds = %bb.kd, %.thread740.i
  %i.dee = getelementptr inbounds nuw [100 x i8], ptr %i.gy, i64 %indvars.iv956.i
  %i.def = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv956.i
  %i.deg = load i32, ptr %i.def, align 4, !tbaa !43
  %i.deh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv956.i
  %i.dei = load i32, ptr %i.deh, align 4, !tbaa !43
  %i.dej = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv956.i
  %i.dek = load i32, ptr %i.dej, align 4, !tbaa !43
  %i.del = load i32, ptr %i.bj, align 4, !tbaa !185
  %i.dem = zext i32 %i.del to i64
  %i.den = icmp eq i64 %indvars.iv956.i, %i.dem
  %i.deo = zext i1 %i.den to i32
  %i.dep = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv956.i
  %i.deq = load i32, ptr %i.dep, align 4, !tbaa !43
  %i.der = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv956.i
  %i.des = load i32, ptr %i.der, align 4, !tbaa !43
  %i.det = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv956.i
  %i.deu = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv956.i
  %i.dev = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv956.i
  %i.dew = getelementptr inbounds nuw [100 x i8], ptr %i.gz, i64 %indvars.iv956.i
  %i.dex = call i32 @ff_ac3_bit_alloc_calc_mask(ptr noundef nonnull %i.at, ptr noundef nonnull %i.dee, i32 noundef %i.deg, i32 noundef %i.dei, i32 noundef %i.dek, i32 noundef %i.deo, i32 noundef %i.deq, i32 noundef %i.des, ptr noundef nonnull %i.det, ptr noundef nonnull %i.deu, ptr noundef nonnull %i.dev, ptr noundef nonnull %i.dew) #11
  %.not582.i = icmp eq i32 %i.dex, 0
  br i1 %.not582.i, label %.thread741.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.dey = load ptr, ptr %i.ck, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dey, i32 noundef 16, ptr noundef nonnull @.str.43) #11
  br label %bb.my

.thread741.i:                                     ; preds = %bb.ke, %bb.kd
  %i.dez = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv956.i
  %i.dfa = load i32, ptr %i.dez, align 4, !tbaa !43
  %.not584.i = icmp eq i32 %i.dfa, 0
  %i.dfb = select i1 %.not584.i, ptr @ff_ac3_bap_tab, ptr @ff_eac3_hebap_tab
  %i.dfc = load ptr, ptr %i.ha, align 16, !tbaa !263
  %i.dfd = getelementptr inbounds nuw [100 x i8], ptr %i.gz, i64 %indvars.iv956.i
  %i.dfe = getelementptr inbounds nuw [512 x i8], ptr %i.gx, i64 %indvars.iv956.i
  %i.dff = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv956.i
  %i.dfg = load i32, ptr %i.dff, align 4, !tbaa !43
  %i.dfh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv956.i
  %i.dfi = load i32, ptr %i.dfh, align 4, !tbaa !43
  %i.dfj = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv956.i
  %i.dfk = load i32, ptr %i.dfj, align 4, !tbaa !43
  %i.dfl = load i32, ptr %i.dx, align 16, !tbaa !235
  %i.dfm = getelementptr inbounds nuw [256 x i8], ptr %i.hb, i64 %indvars.iv956.i
  call void %i.dfc(ptr noundef nonnull %i.dfd, ptr noundef nonnull %i.dfe, i32 noundef %i.dfg, i32 noundef %i.dfi, i32 noundef %i.dfk, i32 noundef %i.dfl, ptr noundef nonnull %i.dfb, ptr noundef nonnull %i.dfm) #11, !inline_history !119
  %.pre979.i = load i32, ptr %i.bh, align 16, !tbaa !183
  br label %bb.kg

bb.kg:                                            ; preds = %.thread741.i, %bb.kd
  %i.dfn = phi i32 [ %i.ddt, %bb.kd ], [ %.pre979.i, %.thread741.i ] ; 3 uses
  %indvars.iv.next957.i = add nuw nsw i64 %indvars.iv956.i, 1
  %i.dfo = sext i32 %i.dfn to i64
  %.not570.not.i = icmp slt i64 %indvars.iv956.i, %i.dfo
  br i1 %.not570.not.i, label %bb.kc, label %._crit_edge853.loopexit.i, !llvm.loop !120

._crit_edge853.loopexit.i:                        ; preds = %bb.kg
  %11 = icmp slt i32 %i.dfn, 1
  br label %._crit_edge853.i

._crit_edge853.i:                                 ; preds = %._crit_edge853.loopexit.i, %.loopexit.i
  %.lcssa779.i = phi i1 [ true, %.loopexit.i ], [ %11, %._crit_edge853.loopexit.i ]
  %i.dfp = load i32, ptr %i.ea, align 4, !tbaa !211
  %.not571.i = icmp eq i32 %i.dfp, 0
  br i1 %.not571.i, label %bb.kj, label %bb.kh

bb.kh:                                            ; preds = %._crit_edge853.i
  %i.dfq = load i32, ptr %i.ao, align 8, !tbaa !50 ; 4 uses
  %i.dfr = load ptr, ptr %i.al, align 16, !tbaa !48 ; 2 uses
  %i.dfs = lshr i32 %i.dfq, 3
  %i.dft = zext nneg i32 %i.dfs to i64
  %i.dfu = getelementptr inbounds nuw i8, ptr %i.dfr, i64 %i.dft
  %i.dfv = load i8, ptr %i.dfu, align 1, !tbaa !44
  %i.dfw = load i32, ptr %i.an, align 16, !tbaa !49 ; 3 uses
  %i.dfx = icmp slt i32 %i.dfq, %i.dfw
  %i.dfy = zext i1 %i.dfx to i32
  %spec.select.i660.i = add i32 %i.dfq, %i.dfy    ; 4 uses
  %i.dfz = zext i8 %i.dfv to i32
  %i.dga = and i32 %i.dfq, 7
  store i32 %spec.select.i660.i, ptr %i.ao, align 8, !tbaa !50
  %i.dgb = lshr exact i32 128, %i.dga
  %i.dgc = and i32 %i.dgb, %i.dfz
  %.not572.i = icmp eq i32 %i.dgc, 0
  br i1 %.not572.i, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.dgd = lshr i32 %spec.select.i660.i, 3
  %i.dge = zext nneg i32 %i.dgd to i64
  %i.dgf = getelementptr inbounds nuw i8, ptr %i.dfr, i64 %i.dge
  %i.dgg = load i32, ptr %i.dgf, align 1, !tbaa !44
  %i.dgh = call i32 @llvm.bswap.i32(i32 %i.dgg)
  %i.dgi = and i32 %spec.select.i660.i, 7
  %i.dgj = shl i32 %i.dgh, %i.dgi
  %i.dgk = add i32 %spec.select.i660.i, 9
  %i.dgl = call i32 @llvm.umin.i32(i32 %i.dfw, i32 %i.dgk) ; 3 uses
  %i.dgm = lshr i32 %i.dgj, 20
  %i.dgn = and i32 %i.dgm, 4088                   ; 2 uses
  %i.dgo = sub nsw i32 0, %i.dgl                  ; 2 uses
  %i.dgp = sub nsw i32 %i.dfw, %i.dgl
  %i.dgq = icmp slt i32 %i.dgn, %i.dgo
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.dgn, i32 %i.dgp)
  %.0.i.i.i = select i1 %i.dgq, i32 %i.dgo, i32 %..i.i.i
  %i.dgr = add nsw i32 %.0.i.i.i, %i.dgl
  store i32 %i.dgr, ptr %i.ao, align 8, !tbaa !50
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.kh, %._crit_edge853.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i32 0, ptr %i.hc, align 4, !tbaa !55
  store i32 0, ptr %i.hd, align 4, !tbaa !56
  store i32 0, ptr %i.he, align 4, !tbaa !57
  br i1 %.lcssa779.i, label %._crit_edge.i666.i, label %.lr.ph.i661.i.preheader

.lr.ph.i661.i.preheader:                          ; preds = %bb.kj
  %i.dgs = trunc nuw nsw i64 %indvars.iv794 to i32 ; 2 uses
  br label %.lr.ph.i661.i

.lr.ph.i661.i:                                    ; preds = %.lr.ph.i661.i.preheader, %calc_transform_coeffs_cpl.exit.i.i
  %indvars.iv.i662.i = phi i64 [ %indvars.iv.next.i665.i, %calc_transform_coeffs_cpl.exit.i.i ], [ 1, %.lr.ph.i661.i.preheader ] ; 6 uses
  %.030.i.i = phi i32 [ %.2.i663.i, %calc_transform_coeffs_cpl.exit.i.i ], [ 0, %.lr.ph.i661.i.preheader ] ; 2 uses
  %i.dgt = trunc nuw nsw i64 %indvars.iv.i662.i to i32
  call fastcc void @decode_transform_coeffs_ch(ptr noundef nonnull %i.n, i32 noundef %i.dgs, i32 noundef %i.dgt, ptr noundef %6)
  %i.dgu = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i662.i
  %i.dgv = load i32, ptr %i.dgu, align 4, !tbaa !43
  %.not22.i.i = icmp eq i32 %i.dgv, 0
  br i1 %.not22.i.i, label %bb.kn, label %bb.kk

bb.kk:                                            ; preds = %.lr.ph.i661.i
  %.not23.i.i = icmp eq i32 %.030.i.i, 0
  br i1 %.not23.i.i, label %bb.kl, label %calc_transform_coeffs_cpl.exit.i.i

bb.kl:                                            ; preds = %bb.kk
  call fastcc void @decode_transform_coeffs_ch(ptr noundef nonnull %i.n, i32 noundef %i.dgs, i32 noundef 0, ptr noundef %6)
  %i.dgw = load i32, ptr %i.gf, align 8, !tbaa !258 ; 2 uses
  %i.dgx = icmp sgt i32 %i.dgw, 0
  br i1 %i.dgx, label %.lr.ph.i.i.i, label %calc_transform_coeffs_cpl.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.kl
  %i.dgy = load i32, ptr %i.bi, align 4, !tbaa !184 ; 2 uses
  %i.dgz = icmp slt i32 %i.dgy, 1
  br i1 %i.dgz, label %calc_transform_coeffs_cpl.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %i.dha = load i32, ptr %i.ce, align 4, !tbaa !43
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %._crit_edge49.i.i.i, %.lr.ph.split.preheader.i.i.i
  %i.dhb = phi i32 [ %i.dgw, %.lr.ph.split.preheader.i.i.i ], [ %i.djc, %._crit_edge49.i.i.i ] ; 2 uses
  %i.dhc = phi i32 [ %i.dgy, %.lr.ph.split.preheader.i.i.i ], [ %i.djd, %._crit_edge49.i.i.i ] ; 3 uses
  %indvars.iv83.i.i.i = phi i64 [ 0, %.lr.ph.split.preheader.i.i.i ], [ %indvars.iv.next84.i.i.i, %._crit_edge49.i.i.i ] ; 4 uses
  %.03860.i.i.i = phi i32 [ %i.dha, %.lr.ph.split.preheader.i.i.i ], [ %i.dhg, %._crit_edge49.i.i.i ] ; 2 uses
  %i.dhd = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv83.i.i.i
  %i.dhe = load i8, ptr %i.dhd, align 1, !tbaa !44
  %.fr64.i.i.i = freeze i8 %i.dhe                 ; 2 uses
  %i.dhf = zext i8 %.fr64.i.i.i to i32
  %i.dhg = add i32 %.03860.i.i.i, %i.dhf          ; 2 uses
  %.not45.i.i.i = icmp slt i32 %i.dhc, 1
  br i1 %.not45.i.i.i, label %._crit_edge49.i.i.i, label %.lr.ph48.i.i.i

.lr.ph48.i.i.i:                                   ; preds = %.lr.ph.split.i.i.i
  %invariant.gep.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv83.i.i.i
  %.not65.i.i.i = icmp eq i8 %.fr64.i.i.i, 0
  %i.dhh = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv83.i.i.i
  br i1 %.not65.i.i.i, label %._crit_edge49.i.i.i, label %.lr.ph48.split.us.preheader.i.i.i

.lr.ph48.split.us.preheader.i.i.i:                ; preds = %.lr.ph48.i.i.i
  %i.dhi = sext i32 %.03860.i.i.i to i64          ; 10 uses
  %i.dhj = sext i32 %i.dhg to i64                 ; 4 uses
  %i.dhk = add nsw i64 %i.dhi, 1
  %i.dhl = call i64 @llvm.smax.i64(i64 %i.dhk, i64 %i.dhj)
  %i.dhm = sub i64 %i.dhl, %i.dhi                 ; 3 uses
  %min.iters.check1125 = icmp ult i64 %i.dhm, 4
  %n.vec1127 = and i64 %i.dhm, -4                 ; 3 uses
  %i.dhn = add i64 %n.vec1127, %i.dhi
  %cmp.n1133 = icmp eq i64 %i.dhm, %n.vec1127
  %i.dho = add nsw i64 %i.dhi, 1
  %i.dhp = call i64 @llvm.smax.i64(i64 %i.dho, i64 %i.dhj)
  %i.dhq = sub i64 %i.dhp, %i.dhi                 ; 3 uses
  %min.iters.check1113 = icmp ult i64 %i.dhq, 8
  %n.vec1115 = and i64 %i.dhq, -8                 ; 3 uses
  %i.dhr = add i64 %n.vec1115, %i.dhi
  %invariant.gep1512 = getelementptr [4 x i8], ptr %i.hg, i64 %i.dhi
  %cmp.n1122 = icmp eq i64 %i.dhq, %n.vec1115
  br label %.lr.ph48.split.us.i.i.i

.lr.ph48.split.us.i.i.i:                          ; preds = %.loopexit.us.i.i.i, %.lr.ph48.split.us.preheader.i.i.i
  %indvars.iv74.i.i.i = phi i64 [ 1, %.lr.ph48.split.us.preheader.i.i.i ], [ %indvars.iv.next75.i.i.i, %.loopexit.us.i.i.i ] ; 6 uses
  %i.dhs = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv74.i.i.i
  %i.dht = load i32, ptr %i.dhs, align 4, !tbaa !43
  %.not40.us.i.i.i = icmp eq i32 %i.dht, 0
  br i1 %.not40.us.i.i.i, label %.loopexit.us.i.i.i, label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph48.split.us.i.i.i
  %gep.us.i.i.i = getelementptr inbounds nuw [72 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv74.i.i.i
  %i.dhu = load i32, ptr %gep.us.i.i.i, align 4, !tbaa !43
  %i.dhv = shl i32 %i.dhu, 5
  %i.dhw = sext i32 %i.dhv to i64                 ; 2 uses
  %i.dhx = getelementptr inbounds nuw [1024 x i8], ptr %i.hf, i64 %indvars.iv74.i.i.i ; 2 uses
  br i1 %min.iters.check1125, label %scalar.ph1124.preheader, label %vector.ph1126

vector.ph1126:                                    ; preds = %.lr.ph.us.i.i.i
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.dhw, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1128

vector.body1128:                                  ; preds = %vector.body1128, %vector.ph1126
  %index1129 = phi i64 [ 0, %vector.ph1126 ], [ %index.next1131, %vector.body1128 ] ; 2 uses
  %i.dhy = add i64 %index1129, %i.dhi             ; 2 uses
  %i.dhz = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.dhy
  %wide.load1130 = load <4 x i32>, ptr %i.dhz, align 4, !tbaa !43
  %i.dia = shl nsw <4 x i32> %wide.load1130, splat (i32 4)
  %i.dib = sext <4 x i32> %i.dia to <4 x i64>
  %i.dic = mul nsw <4 x i64> %broadcast.splat, %i.dib
  %i.did = lshr <4 x i64> %i.dic, splat (i64 32)
  %i.die = trunc nuw <4 x i64> %i.did to <4 x i32>
  %i.dif = getelementptr inbounds [4 x i8], ptr %i.dhx, i64 %i.dhy
  store <4 x i32> %i.die, ptr %i.dif, align 4, !tbaa !43
  %index.next1131 = add nuw i64 %index1129, 4     ; 2 uses
  %i.dig = icmp eq i64 %index.next1131, %n.vec1127
  br i1 %i.dig, label %middle.block1132, label %vector.body1128, !llvm.loop !121

middle.block1132:                                 ; preds = %vector.body1128
  br i1 %cmp.n1133, label %._crit_edge.us.i.i.i, label %scalar.ph1124.preheader

scalar.ph1124.preheader:                          ; preds = %.lr.ph.us.i.i.i, %middle.block1132
  %indvars.iv.i.i.i.ph = phi i64 [ %i.dhi, %.lr.ph.us.i.i.i ], [ %i.dhn, %middle.block1132 ]
  br label %scalar.ph1124

scalar.ph1124:                                    ; preds = %scalar.ph1124.preheader, %scalar.ph1124
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph1124 ], [ %indvars.iv.i.i.i.ph, %scalar.ph1124.preheader ] ; 3 uses
  %i.dih = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %indvars.iv.i.i.i
  %i.dii = load i32, ptr %i.dih, align 4, !tbaa !43
  %i.dij = shl nsw i32 %i.dii, 4
  %i.dik = sext i32 %i.dij to i64
  %i.dil = mul nsw i64 %i.dik, %i.dhw
  %i.dim = lshr i64 %i.dil, 32
  %i.din = trunc nuw i64 %i.dim to i32
  %i.dio = getelementptr inbounds [4 x i8], ptr %i.dhx, i64 %indvars.iv.i.i.i
  store i32 %i.din, ptr %i.dio, align 4, !tbaa !43
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dip = icmp slt i64 %indvars.iv.next.i.i.i, %i.dhj
  br i1 %i.dip, label %scalar.ph1124, label %._crit_edge.us.i.i.i, !llvm.loop !122

bb.km:                                            ; preds = %._crit_edge.us.i.i.i
  %i.diq = load i32, ptr %i.dhh, align 4, !tbaa !43
  %.not41.us.i.i.i = icmp eq i32 %i.diq, 0
  br i1 %.not41.us.i.i.i, label %.loopexit.us.i.i.i, label %.lr.ph44.us.i.i.i.preheader

.lr.ph44.us.i.i.i.preheader:                      ; preds = %bb.km
  br i1 %min.iters.check1113, label %.lr.ph44.us.i.i.i.preheader1269, label %vector.body1116

vector.body1116:                                  ; preds = %.lr.ph44.us.i.i.i.preheader, %vector.body1116
  %index1117 = phi i64 [ %index.next1120, %vector.body1116 ], [ 0, %.lr.ph44.us.i.i.i.preheader ] ; 2 uses
  %gep1513 = getelementptr [4 x i8], ptr %invariant.gep1512, i64 %index1117 ; 3 uses
  %i.dir = getelementptr inbounds nuw i8, ptr %gep1513, i64 16 ; 2 uses
  %wide.load1118 = load <4 x i32>, ptr %gep1513, align 4, !tbaa !43
  %wide.load1119 = load <4 x i32>, ptr %i.dir, align 4, !tbaa !43
  %i.dis = sub nsw <4 x i32> zeroinitializer, %wide.load1118
  %i.dit = sub nsw <4 x i32> zeroinitializer, %wide.load1119
  store <4 x i32> %i.dis, ptr %gep1513, align 4, !tbaa !43
  store <4 x i32> %i.dit, ptr %i.dir, align 4, !tbaa !43
  %index.next1120 = add nuw i64 %index1117, 8     ; 2 uses
  %i.diu = icmp eq i64 %index.next1120, %n.vec1115
  br i1 %i.diu, label %middle.block1121, label %vector.body1116, !llvm.loop !123

middle.block1121:                                 ; preds = %vector.body1116
  br i1 %cmp.n1122, label %.loopexit.us.i.i.i, label %.lr.ph44.us.i.i.i.preheader1269

.lr.ph44.us.i.i.i.preheader1269:                  ; preds = %.lr.ph44.us.i.i.i.preheader, %middle.block1121
  %indvars.iv71.i.i.i.ph = phi i64 [ %i.dhi, %.lr.ph44.us.i.i.i.preheader ], [ %i.dhr, %middle.block1121 ]
  br label %.lr.ph44.us.i.i.i

.lr.ph44.us.i.i.i:                                ; preds = %.lr.ph44.us.i.i.i.preheader1269, %.lr.ph44.us.i.i.i
  %indvars.iv71.i.i.i = phi i64 [ %indvars.iv.next72.i.i.i, %.lr.ph44.us.i.i.i ], [ %indvars.iv71.i.i.i.ph, %.lr.ph44.us.i.i.i.preheader1269 ] ; 2 uses
  %i.div = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %indvars.iv71.i.i.i ; 2 uses
  %i.diw = load i32, ptr %i.div, align 4, !tbaa !43
  %i.dix = sub nsw i32 0, %i.diw
  store i32 %i.dix, ptr %i.div, align 4, !tbaa !43
  %indvars.iv.next72.i.i.i = add nsw i64 %indvars.iv71.i.i.i, 1 ; 2 uses
  %i.diy = icmp slt i64 %indvars.iv.next72.i.i.i, %i.dhj
  br i1 %i.diy, label %.lr.ph44.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !124

.loopexit.us.i.i.i:                               ; preds = %.lr.ph44.us.i.i.i, %middle.block1121, %._crit_edge.us.i.i.i, %bb.km, %.lr.ph48.split.us.i.i.i
  %indvars.iv.next75.i.i.i = add nuw nsw i64 %indvars.iv74.i.i.i, 1
  %i.diz = load i32, ptr %i.bi, align 4, !tbaa !184 ; 2 uses
  %i.dja = sext i32 %i.diz to i64
  %.not.us.not.i.i.i = icmp slt i64 %indvars.iv74.i.i.i, %i.dja
  br i1 %.not.us.not.i.i.i, label %.lr.ph48.split.us.i.i.i, label %._crit_edge49.loopexit68.i.i.i, !llvm.loop !125

._crit_edge.us.i.i.i:                             ; preds = %scalar.ph1124, %middle.block1132
  %i.djb = icmp eq i64 %indvars.iv74.i.i.i, 2
  br i1 %i.djb, label %bb.km, label %.loopexit.us.i.i.i

._crit_edge49.loopexit68.i.i.i:                   ; preds = %.loopexit.us.i.i.i
  %.pre.i.i.i = load i32, ptr %i.gf, align 8, !tbaa !258
  br label %._crit_edge49.i.i.i

._crit_edge49.i.i.i:                              ; preds = %._crit_edge49.loopexit68.i.i.i, %.lr.ph48.i.i.i, %.lr.ph.split.i.i.i
  %i.djc = phi i32 [ %.pre.i.i.i, %._crit_edge49.loopexit68.i.i.i ], [ %i.dhb, %.lr.ph.split.i.i.i ], [ %i.dhb, %.lr.ph48.i.i.i ] ; 2 uses
  %i.djd = phi i32 [ %i.diz, %._crit_edge49.loopexit68.i.i.i ], [ %i.dhc, %.lr.ph.split.i.i.i ], [ %i.dhc, %.lr.ph48.i.i.i ]
  %indvars.iv.next84.i.i.i = add nuw nsw i64 %indvars.iv83.i.i.i, 1 ; 2 uses
  %i.dje = sext i32 %i.djc to i64
  %i.djf = icmp slt i64 %indvars.iv.next84.i.i.i, %i.dje
  br i1 %i.djf, label %.lr.ph.split.i.i.i, label %calc_transform_coeffs_cpl.exit.i.i, !llvm.loop !126

bb.kn:                                            ; preds = %.lr.ph.i661.i
  %i.djg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i662.i
  br label %calc_transform_coeffs_cpl.exit.i.i

calc_transform_coeffs_cpl.exit.i.i:               ; preds = %._crit_edge49.i.i.i, %bb.kn, %.lr.ph.i.i.i, %bb.kl, %bb.kk
  %.019.in.i.i = phi ptr [ %i.djg, %bb.kn ], [ %i.cf, %bb.kk ], [ %i.cf, %.lr.ph.i.i.i ], [ %i.cf, %bb.kl ], [ %i.cf, %._crit_edge49.i.i.i ]
  %.2.i663.i = phi i32 [ %.030.i.i, %bb.kn ], [ 1, %bb.kk ], [ 1, %.lr.ph.i.i.i ], [ 1, %bb.kl ], [ 1, %._crit_edge49.i.i.i ]
end_hunk_1
