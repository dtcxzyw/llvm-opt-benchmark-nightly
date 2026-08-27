Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffv1enc?download=true
inline.NumInlined: 336
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 53
begin_hunk_0_@encode_slice:bb.a
  %.pre131.i = load i32, ptr %i.ahk, align 4, !tbaa !47
  br label %renorm_encoder.exit60.us.i

renorm_encoder.exit60.us.i:                       ; preds = %._crit_edge.i59.us.i, %bb.dg
  %i.cfg = phi i32 [ %.sink123.i, %bb.dg ], [ %.pre131.i, %._crit_edge.i59.us.i ]
  %i.cfh = phi i32 [ %i.cei, %bb.dg ], [ %i.cfe, %._crit_edge.i59.us.i ]
  %i.cfi = shl i32 %i.cfh, 8
  %i.cfj = and i32 %i.cfi, 65280
  store i32 %i.cfj, ptr %i.aj, align 8, !tbaa !49
  %i.cfk = shl i32 %i.cfg, 8                      ; 2 uses
  store i32 %i.cfk, ptr %i.ahk, align 4, !tbaa !47
  br label %put_rac.exit175.i.us.i

put_rac.exit175.i.us.i:                           ; preds = %renorm_encoder.exit60.us.i, %bb.de
  %i.cfl = phi i32 [ %i.cfk, %renorm_encoder.exit60.us.i ], [ %.sink123.i, %bb.de ]
  %i.cfm = icmp samesign ugt i64 %indvars.iv113.i, 1
  br i1 %i.cfm, label %bb.dc, label %put_symbol_inline.exit.us.i, !llvm.loop !75

bb.dj:                                            ; preds = %bb.bw
  %i.cfn = load i32, ptr %i.ahk, align 4, !tbaa !47 ; 2 uses
  %i.cfo = load i8, ptr %i.btk, align 16, !tbaa !41 ; 2 uses
  %i.cfp = zext i8 %i.cfo to i32
  %i.cfq = mul nsw i32 %i.cfn, %i.cfp
  %i.cfr = ashr i32 %i.cfq, 8                     ; 4 uses
  %i.cfs = sub nsw i32 %i.cfn, %i.cfr
  %i.cft = load i32, ptr %i.aj, align 8, !tbaa !49
  %i.cfu = add nsw i32 %i.cfs, %i.cft             ; 3 uses
  store i32 %i.cfu, ptr %i.aj, align 8, !tbaa !49
  store i32 %i.cfr, ptr %i.ahk, align 4, !tbaa !47
  %i.cfv = zext i8 %i.cfo to i64
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.ain, i64 %i.cfv
  %storemerge.i.i.us.i = load i8, ptr %i.cfw, align 1, !tbaa !41
  store i8 %storemerge.i.i.us.i, ptr %i.btk, align 16, !tbaa !41
  %i.cfx = icmp slt i32 %i.cfr, 256
  br i1 %i.cfx, label %bb.dk, label %put_symbol_inline.exit.us.i

bb.dk:                                            ; preds = %bb.dj
  %i.cfy = add nsw i32 %i.cfu, -65281             ; 2 uses
  %i.cfz = icmp ugt i32 %i.cfy, 254
  br i1 %i.cfz, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.cga = load i32, ptr %i.ahl, align 8, !tbaa !52
  %i.cgb = add nsw i32 %i.cga, 1
  store i32 %i.cgb, ptr %i.ahl, align 8, !tbaa !52
  br label %renorm_encoder.exit80.us.i

bb.dm:                                            ; preds = %bb.dk
  %i.cgc = ashr i32 %i.cfy, 31                    ; 2 uses
  %i.cgd = load i32, ptr %i.ahm, align 4, !tbaa !50
  %i.cge = add nsw i32 %i.cgc, 1
  %i.cgf = add i32 %i.cge, %i.cgd
  %i.cgg = trunc i32 %i.cgf to i8
  %i.cgh = load ptr, ptr %i.ahn, align 8, !tbaa !51
  store i8 %i.cgg, ptr %i.cgh, align 1, !tbaa !41
  %i.cgi = load i32, ptr %i.ahm, align 4, !tbaa !50
  %i.cgj = icmp sgt i32 %i.cgi, -1
  %i.cgk = load ptr, ptr %i.ahn, align 8, !tbaa !51
  %i.cgl = zext i1 %i.cgj to i64
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cgk, i64 %i.cgl
  store ptr %i.cgm, ptr %i.ahn, align 8, !tbaa !51
  %i.cgn = load i32, ptr %i.ahl, align 8, !tbaa !52
  %.not16.i76.us.i = icmp eq i32 %i.cgn, 0
  br i1 %.not16.i76.us.i, label %._crit_edge.i79.us.i, label %.lr.ph.i77.us.i

.lr.ph.i77.us.i:                                  ; preds = %bb.dm
  %i.cgo = trunc nsw i32 %i.cgc to i8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dn, %.lr.ph.i77.us.i
  %i.cgp = load ptr, ptr %i.ahn, align 8, !tbaa !51 ; 2 uses
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgp, i64 1
  store ptr %i.cgq, ptr %i.ahn, align 8, !tbaa !51
  store i8 %i.cgo, ptr %i.cgp, align 1, !tbaa !41
  %i.cgr = load i32, ptr %i.ahl, align 8, !tbaa !52
  %i.cgs = add nsw i32 %i.cgr, -1                 ; 2 uses
  store i32 %i.cgs, ptr %i.ahl, align 8, !tbaa !52
  %.not.i78.us.i = icmp eq i32 %i.cgs, 0
  br i1 %.not.i78.us.i, label %._crit_edge.i79.us.i, label %bb.dn, !llvm.loop !53

._crit_edge.i79.us.i:                             ; preds = %bb.dn, %bb.dm
  %i.cgt = load i32, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.cgu = ashr i32 %i.cgt, 8
  store i32 %i.cgu, ptr %i.ahm, align 4, !tbaa !50
  %.pre132.i = load i32, ptr %i.ahk, align 4, !tbaa !47
  br label %renorm_encoder.exit80.us.i

renorm_encoder.exit80.us.i:                       ; preds = %._crit_edge.i79.us.i, %bb.dl
  %i.cgv = phi i32 [ %i.cfr, %bb.dl ], [ %.pre132.i, %._crit_edge.i79.us.i ]
  %i.cgw = phi i32 [ %i.cfu, %bb.dl ], [ %i.cgt, %._crit_edge.i79.us.i ]
  %i.cgx = shl i32 %i.cgw, 8
  %i.cgy = and i32 %i.cgx, 65280
  store i32 %i.cgy, ptr %i.aj, align 8, !tbaa !49
  %i.cgz = shl i32 %i.cgv, 8
  store i32 %i.cgz, ptr %i.ahk, align 4, !tbaa !47
  br label %put_symbol_inline.exit.us.i

bb.do:                                            ; preds = %bb.bv
  %i.cha = add nsw i32 %.03693.us.i, 1
  br label %put_symbol_inline.exit.us.i

put_symbol_inline.exit.us.i:                      ; preds = %put_rac.exit161.i.us.i, %put_rac.exit175.i.us.i, %bb.do, %renorm_encoder.exit80.us.i, %bb.dj, %put_rac.exit178.i.us.i
  %.2.us.i = phi i32 [ %.03792.us.i, %bb.do ], [ %i.btf, %bb.dj ], [ %i.btf, %renorm_encoder.exit80.us.i ], [ %.03792.us.i, %put_rac.exit178.i.us.i ], [ %.03792.us.i, %put_rac.exit175.i.us.i ], [ %.03792.us.i, %put_rac.exit161.i.us.i ] ; 2 uses
  %.1.us.i = phi i32 [ %i.cha, %bb.do ], [ 0, %bb.dj ], [ 0, %renorm_encoder.exit80.us.i ], [ 0, %put_rac.exit178.i.us.i ], [ 0, %put_rac.exit175.i.us.i ], [ 0, %put_rac.exit161.i.us.i ] ; 3 uses
  %i.chb = add nuw nsw i32 %.094.us.i, 1          ; 2 uses
  %exitcond116.not.i = icmp eq i32 %i.chb, %i.bsn
  br i1 %exitcond116.not.i, label %._crit_edge97.us.i, label %bb.bv, !llvm.loop !286

bb.dp:                                            ; preds = %._crit_edge97.us.i
  %i.chc = zext nneg i32 %.2.us.i to i64
  %i.chd = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.chc
  call fastcc void @put_symbol(ptr noundef nonnull %i.aj, ptr noundef %i.chd, i32 noundef %.1.us.i, i32 noundef 0)
  br label %bb.dq

bb.dq:                                            ; preds = %._crit_edge97.us.i, %bb.dp
  %i.che = getelementptr inbounds nuw [4 x i8], ptr %i.aio, i64 %indvars.iv117.i
  store i32 %i.bth, ptr %i.che, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 1 ; 2 uses
  %i.chf = load i32, ptr %i.aij, align 4, !tbaa !46
  %i.chg = shl nsw i32 %i.chf, 1
  %i.chh = or disjoint i32 %i.chg, 1
  %i.chi = load i32, ptr %i.aib, align 8, !tbaa !56
  %i.chj = add nsw i32 %i.chh, %i.chi
  %i.chk = sext i32 %i.chj to i64
  %i.chl = icmp slt i64 %indvars.iv.next118.i, %i.chk
  br i1 %i.chl, label %.lr.ph96.us.i, label %encode_histogram_remap.exit, !llvm.loop !287

.preheader.us.i619:                               ; preds = %put_rac.exit184.i.us.i
  %.not106.i = icmp eq i32 %i.bts, 0              ; 2 uses
  br i1 %.not106.i, label %._crit_edge.us.i623, label %.lr.ph.us.i

.preheader83.us.i:                                ; preds = %put_rac.exit184.i.us.i
  %i.chm = getelementptr inbounds nuw i8, ptr %i.btk, i64 1
  %.pre124.i = load i32, ptr %i.aj, align 8, !tbaa !49
  br label %bb.cc

.lr.ph.us.i:                                      ; preds = %.preheader.us.i619
  %i.chn = getelementptr inbounds nuw i8, ptr %i.btk, i64 1
  %wide.trip.count.i620 = zext nneg i32 %i.bts to i64 ; 2 uses
  %.pre128.i = load i32, ptr %i.aj, align 8, !tbaa !49
  br label %bb.ct

.lr.ph90.us.i:                                    ; preds = %put_rac.exit178.i.us.i
  %i.cho = getelementptr inbounds nuw i8, ptr %i.btk, i64 22
  %i.chp = zext nneg i32 %i.bts to i64
  br label %bb.dc

._crit_edge97.us.i:                               ; preds = %put_symbol_inline.exit.us.i
  %.not.us.i = icmp eq i32 %.1.us.i, 0
  br i1 %.not.us.i, label %bb.dq, label %bb.dp

.lr.ph103.split.i:                                ; preds = %.lr.ph103.i, %.lr.ph103.split.i
  %indvars.iv120.i = phi i64 [ %indvars.iv.next121.i, %.lr.ph103.split.i ], [ 0, %.lr.ph103.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.n, i8 -128, i64 64, i1 false)
  call fastcc void @put_symbol(ptr noundef nonnull %i.aj, ptr noundef %i.n, i32 noundef 0, i32 noundef 0)
  %i.chq = getelementptr inbounds nuw [4 x i8], ptr %i.aio, i64 %indvars.iv120.i
  store i32 0, ptr %i.chq, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %i.chr = load i32, ptr %i.aij, align 4, !tbaa !46
  %i.chs = shl nsw i32 %i.chr, 1
  %i.cht = or disjoint i32 %i.chs, 1
  %i.chu = load i32, ptr %i.aib, align 8, !tbaa !56
  %i.chv = add nsw i32 %i.cht, %i.chu
  %i.chw = sext i32 %i.chv to i64
  %i.chx = icmp slt i64 %indvars.iv.next121.i, %i.chw
  br i1 %i.chx, label %.lr.ph103.split.i, label %encode_histogram_remap.exit, !llvm.loop !287

bb.dr:                                            ; preds = %bb.an
  %.val327 = load i32, ptr %i.aib, align 8, !tbaa !56 ; 2 uses
  br i1 %i.ahu, label %.preheader61.lr.ph.i, label %.._crit_edge87.i_crit_edge

.._crit_edge87.i_crit_edge:                       ; preds = %bb.dr
  %.pre1310 = load ptr, ptr %i.ais, align 8, !tbaa !145
  br label %._crit_edge87.i

.preheader61.lr.ph.i:                             ; preds = %bb.dr
  %.not627.i = icmp eq i32 %.val327, 0            ; 2 uses
  %.pre1311 = load ptr, ptr %i.ais, align 8, !tbaa !145 ; 8 uses
  br i1 %i.ahv, label %.preheader61.lr.ph.split.us.i, label %._crit_edge87.i

.preheader61.lr.ph.split.us.i:                    ; preds = %.preheader61.lr.ph.i
  %i.chy = icmp eq i32 %i.aop, 2
  %i.chz = load ptr, ptr %i.air, align 8, !tbaa !145 ; 4 uses
  %i.cia = load ptr, ptr %i.aiq, align 8, !tbaa !145 ; 4 uses
  br i1 %i.chy, label %.preheader61.lr.ph.split.us.split.us.i, label %.preheader61.us.i

.preheader61.lr.ph.split.us.split.us.i:           ; preds = %.preheader61.lr.ph.split.us.i
  br i1 %.not627.i, label %.preheader61.us.us.us.i, label %.preheader61.lr.ph.split.us.split.us.split.i

.preheader61.us.us.us.i:                          ; preds = %.preheader61.lr.ph.split.us.split.us.i, %._crit_edge.split.us.us.us.split.us.us.i
  %indvars.iv237.i = phi i64 [ %indvars.iv.next238.i, %._crit_edge.split.us.us.us.split.us.us.i ], [ 0, %.preheader61.lr.ph.split.us.split.us.i ] ; 3 uses
  %.058686.us.us.us.i = phi i64 [ %indvars.iv.next229.i, %._crit_edge.split.us.us.us.split.us.us.i ], [ 0, %.preheader61.lr.ph.split.us.split.us.i ]
  %i.cib = mul nuw nsw i64 %indvars.iv237.i, %wide.trip.count.i499
  %i.cic = trunc nuw nsw i64 %indvars.iv237.i to i32 ; 3 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ds, %.preheader61.us.us.us.i
  %indvars.iv230.i = phi i64 [ %indvars.iv.next231.i, %bb.ds ], [ 0, %.preheader61.us.us.us.i ] ; 3 uses
  %indvars.iv228.i = phi i64 [ %indvars.iv.next229.i, %bb.ds ], [ %.058686.us.us.us.i, %.preheader61.us.us.us.i ] ; 4 uses
  %i.cid = shl nuw nsw i64 %indvars.iv230.i, 2    ; 3 uses
  %i.cie = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cid
  %i.cif = load i32, ptr %i.ay, align 8, !tbaa !63
  %i.cig = mul nsw i32 %i.cif, %i.cic
  %i.cih = sext i32 %i.cig to i64
  %i.cii = getelementptr inbounds i8, ptr %i.cie, i64 %i.cih
  %i.cij = load i32, ptr %i.cii, align 4, !tbaa !63 ; 3 uses
  %i.cik = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cid
  %i.cil = load i32, ptr %i.aii, align 4, !tbaa !63
  %i.cim = mul nsw i32 %i.cil, %i.cic
  %i.cin = sext i32 %i.cim to i64
  %i.cio = getelementptr inbounds i8, ptr %i.cik, i64 %i.cin
  %i.cip = load i32, ptr %i.cio, align 4, !tbaa !63 ; 3 uses
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cid
  %i.cir = load i32, ptr %i.aih, align 8, !tbaa !63
  %i.cis = mul nsw i32 %i.cir, %i.cic
  %i.cit = sext i32 %i.cis to i64
  %i.ciu = getelementptr inbounds i8, ptr %i.ciq, i64 %i.cit
  %i.civ = load i32, ptr %i.ciu, align 4, !tbaa !63 ; 3 uses
  %i.ciw = xor i32 %i.cij, 2147483647
  %.not628629.us.us.us.us.us.i = icmp slt i32 %i.cij, 0
  %i.cix = select i1 %.not628629.us.us.us.us.us.i, i32 %i.cij, i32 %i.ciw
  %i.ciy = xor i32 %i.cip, 2147483647
  %.not630631.us.us.us.us.us.i = icmp slt i32 %i.cip, 0
  %i.ciz = select i1 %.not630631.us.us.us.us.us.i, i32 %i.cip, i32 %i.ciy
  %i.cja = xor i32 %i.civ, 2147483647
  %.not632633.us.us.us.us.us.i = icmp slt i32 %i.civ, 0
  %i.cjb = select i1 %.not632633.us.us.us.us.us.i, i32 %i.civ, i32 %i.cja
  %i.cjc = getelementptr inbounds [8 x i8], ptr %.pre1311, i64 %indvars.iv228.i ; 2 uses
  store i32 %i.cix, ptr %i.cjc, align 4, !tbaa !288
  %i.cjd = add nuw nsw i64 %indvars.iv230.i, %i.cib
  %i.cje = getelementptr inbounds nuw i8, ptr %i.cjc, i64 4
  %i.cjf = trunc nuw i64 %i.cjd to i32            ; 3 uses
  store i32 %i.cjf, ptr %i.cje, align 4, !tbaa !290
  %i.cjg = getelementptr inbounds [8 x i8], ptr %i.chz, i64 %indvars.iv228.i ; 2 uses
  store i32 %i.ciz, ptr %i.cjg, align 4, !tbaa !288
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cjg, i64 4
  store i32 %i.cjf, ptr %i.cjh, align 4, !tbaa !290
  %i.cji = getelementptr inbounds [8 x i8], ptr %i.cia, i64 %indvars.iv228.i ; 2 uses
  store i32 %i.cjb, ptr %i.cji, align 4, !tbaa !288
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.cji, i64 4
  store i32 %i.cjf, ptr %i.cjj, align 4, !tbaa !290
  %indvars.iv.next229.i = add nsw i64 %indvars.iv228.i, 1 ; 3 uses
  %indvars.iv.next231.i = add nuw nsw i64 %indvars.iv230.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next231.i, %wide.trip.count.i499
  br i1 %exitcond236.not.i, label %._crit_edge.split.us.us.us.split.us.us.i, label %bb.ds, !llvm.loop !291

._crit_edge.split.us.us.us.split.us.us.i:         ; preds = %bb.ds
  %indvars.iv.next238.i = add nuw nsw i64 %indvars.iv237.i, 1 ; 2 uses
  %exitcond241.not.i = icmp eq i64 %indvars.iv.next238.i, %wide.trip.count57.i498
  br i1 %exitcond241.not.i, label %._crit_edge87.i, label %.preheader61.us.us.us.i, !llvm.loop !292

.preheader61.lr.ph.split.us.split.us.split.i:     ; preds = %.preheader61.lr.ph.split.us.split.us.i
  %i.cjk = load ptr, ptr %i.aip, align 8, !tbaa !145
  br label %.preheader61.us.us.i

.preheader61.us.us.i:                             ; preds = %._crit_edge.split.us.us.us.split.i, %.preheader61.lr.ph.split.us.split.us.split.i
  %indvars.iv223.i = phi i64 [ %indvars.iv.next224.i, %._crit_edge.split.us.us.us.split.i ], [ 0, %.preheader61.lr.ph.split.us.split.us.split.i ] ; 3 uses
  %.058686.us.us.i = phi i64 [ %indvars.iv.next215.i.a, %._crit_edge.split.us.us.us.split.i ], [ 0, %.preheader61.lr.ph.split.us.split.us.split.i ]
  %i.cjl = mul nuw nsw i64 %indvars.iv223.i, %wide.trip.count.i499
  %i.cjm = trunc nuw nsw i64 %indvars.iv223.i to i32 ; 4 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dt, %.preheader61.us.us.i
  %indvars.iv216.i = phi i64 [ %indvars.iv.next217.i, %bb.dt ], [ 0, %.preheader61.us.us.i ] ; 3 uses
  %indvars.iv214.i.a = phi i64 [ %indvars.iv.next215.i.a, %bb.dt ], [ %.058686.us.us.i, %.preheader61.us.us.i ] ; 5 uses
  %i.cjn = shl nuw nsw i64 %indvars.iv216.i, 2    ; 4 uses
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cjn
  %i.cjp = load i32, ptr %i.ay, align 8, !tbaa !63
  %i.cjq = mul nsw i32 %i.cjp, %i.cjm
  %i.cjr = sext i32 %i.cjq to i64
  %i.cjs = getelementptr inbounds i8, ptr %i.cjo, i64 %i.cjr
  %i.cjt = load i32, ptr %i.cjs, align 4, !tbaa !63 ; 3 uses
  %i.cju = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cjn
  %i.cjv = load i32, ptr %i.aii, align 4, !tbaa !63
  %i.cjw = mul nsw i32 %i.cjv, %i.cjm
  %i.cjx = sext i32 %i.cjw to i64
  %i.cjy = getelementptr inbounds i8, ptr %i.cju, i64 %i.cjx
  %i.cjz = load i32, ptr %i.cjy, align 4, !tbaa !63 ; 3 uses
  %i.cka = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cjn
  %i.ckb = load i32, ptr %i.aih, align 8, !tbaa !63
  %i.ckc = mul nsw i32 %i.ckb, %i.cjm
  %i.ckd = sext i32 %i.ckc to i64
  %i.cke = getelementptr inbounds i8, ptr %i.cka, i64 %i.ckd
  %i.ckf = load i32, ptr %i.cke, align 4, !tbaa !63 ; 3 uses
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cjn
  %i.ckh = load i32, ptr %i.aie, align 4, !tbaa !63
  %i.cki = mul nsw i32 %i.ckh, %i.cjm
  %i.ckj = sext i32 %i.cki to i64
  %i.ckk = getelementptr inbounds i8, ptr %i.ckg, i64 %i.ckj
  %i.ckl = load i32, ptr %i.ckk, align 4, !tbaa !63
  %i.ckm = xor i32 %i.cjt, 2147483647
  %.not628629.us.us.us.i = icmp slt i32 %i.cjt, 0
  %i.ckn = select i1 %.not628629.us.us.us.i, i32 %i.cjt, i32 %i.ckm
  %i.cko = xor i32 %i.cjz, 2147483647
  %.not630631.us.us.us.i = icmp slt i32 %i.cjz, 0
  %i.ckp = select i1 %.not630631.us.us.us.i, i32 %i.cjz, i32 %i.cko
  %i.ckq = xor i32 %i.ckf, 2147483647
  %.not632633.us.us.us.i = icmp slt i32 %i.ckf, 0
  %i.ckr = select i1 %.not632633.us.us.us.i, i32 %i.ckf, i32 %i.ckq
  %i.cks = getelementptr inbounds [8 x i8], ptr %.pre1311, i64 %indvars.iv214.i.a ; 2 uses
  store i32 %i.ckn, ptr %i.cks, align 4, !tbaa !288
  %i.ckt = add nuw nsw i64 %indvars.iv216.i, %i.cjl
  %i.cku = getelementptr inbounds nuw i8, ptr %i.cks, i64 4
  %i.ckv = trunc nuw i64 %i.ckt to i32            ; 4 uses
  store i32 %i.ckv, ptr %i.cku, align 4, !tbaa !290
  %i.ckw = getelementptr inbounds [8 x i8], ptr %i.chz, i64 %indvars.iv214.i.a ; 2 uses
  store i32 %i.ckp, ptr %i.ckw, align 4, !tbaa !288
  %i.ckx = getelementptr inbounds nuw i8, ptr %i.ckw, i64 4
  store i32 %i.ckv, ptr %i.ckx, align 4, !tbaa !290
  %i.cky = getelementptr inbounds [8 x i8], ptr %i.cia, i64 %indvars.iv214.i.a ; 2 uses
  store i32 %i.ckr, ptr %i.cky, align 4, !tbaa !288
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.cky, i64 4
  store i32 %i.ckv, ptr %i.ckz, align 4, !tbaa !290
  %i.cla = getelementptr inbounds [8 x i8], ptr %i.cjk, i64 %indvars.iv214.i.a ; 2 uses
  store i32 %i.ckl, ptr %i.cla, align 4, !tbaa !288
  %i.clb = getelementptr inbounds nuw i8, ptr %i.cla, i64 4
  store i32 %i.ckv, ptr %i.clb, align 4, !tbaa !290
  %indvars.iv.next215.i.a = add nsw i64 %indvars.iv214.i.a, 1 ; 3 uses
  %indvars.iv.next217.i = add nuw nsw i64 %indvars.iv216.i, 1 ; 2 uses
  %exitcond222.not.i = icmp eq i64 %indvars.iv.next217.i, %wide.trip.count.i499
  br i1 %exitcond222.not.i, label %._crit_edge.split.us.us.us.split.i, label %bb.dt, !llvm.loop !291

._crit_edge.split.us.us.us.split.i:               ; preds = %bb.dt
  %indvars.iv.next224.i = add nuw nsw i64 %indvars.iv223.i, 1 ; 2 uses
  %exitcond227.not.i = icmp eq i64 %indvars.iv.next224.i, %wide.trip.count57.i498
  br i1 %exitcond227.not.i, label %._crit_edge87.i, label %.preheader61.us.us.i, !llvm.loop !292

.preheader61.us.i:                                ; preds = %.preheader61.lr.ph.split.us.i, %._crit_edge.split.us92.i
  %indvars.iv209.i = phi i64 [ %indvars.iv.next210.i, %._crit_edge.split.us92.i ], [ 0, %.preheader61.lr.ph.split.us.i ] ; 3 uses
  %.058686.us.i = phi i64 [ %.us-phi, %._crit_edge.split.us92.i ], [ 0, %.preheader61.lr.ph.split.us.i ] ; 2 uses
  %i.clc = mul nuw nsw i64 %indvars.iv209.i, %wide.trip.count.i499 ; 2 uses
  %i.cld = trunc nuw nsw i64 %indvars.iv209.i to i32 ; 7 uses
  br i1 %.not627.i, label %.preheader61.us.i.split.us, label %.preheader61.us.i.split

.preheader61.us.i.split.us:                       ; preds = %.preheader61.us.i, %.preheader61.us.i.split.us
  %indvars.iv204.i.us = phi i64 [ %indvars.iv.next205.i.us, %.preheader61.us.i.split.us ], [ 0, %.preheader61.us.i ] ; 3 uses
  %indvars.iv.i632.us = phi i64 [ %indvars.iv.next.i633.us, %.preheader61.us.i.split.us ], [ %.058686.us.i, %.preheader61.us.i ] ; 4 uses
  %i.cle = shl nuw nsw i64 %indvars.iv204.i.us, 2 ; 3 uses
  %i.clf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cle
  %i.clg = load i32, ptr %i.ay, align 8, !tbaa !63
  %i.clh = mul nsw i32 %i.clg, %i.cld
  %i.cli = sext i32 %i.clh to i64
  %i.clj = getelementptr inbounds i8, ptr %i.clf, i64 %i.cli
  %i.clk = load i32, ptr %i.clj, align 4, !tbaa !63
  %i.cll = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cle
  %i.clm = load i32, ptr %i.aii, align 4, !tbaa !63
  %i.cln = mul nsw i32 %i.clm, %i.cld
  %i.clo = sext i32 %i.cln to i64
  %i.clp = getelementptr inbounds i8, ptr %i.cll, i64 %i.clo
  %i.clq = load i32, ptr %i.clp, align 4, !tbaa !63
  %i.clr = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cle
  %i.cls = load i32, ptr %i.aih, align 8, !tbaa !63
  %i.clt = mul nsw i32 %i.cls, %i.cld
  %i.clu = sext i32 %i.clt to i64
  %i.clv = getelementptr inbounds i8, ptr %i.clr, i64 %i.clu
  %i.clw = load i32, ptr %i.clv, align 4, !tbaa !63
  %i.clx = getelementptr inbounds [8 x i8], ptr %.pre1311, i64 %indvars.iv.i632.us ; 2 uses
  store i32 %i.clk, ptr %i.clx, align 4, !tbaa !288
  %i.cly = add nuw nsw i64 %indvars.iv204.i.us, %i.clc
  %i.clz = getelementptr inbounds nuw i8, ptr %i.clx, i64 4
  %i.cma = trunc nuw i64 %i.cly to i32            ; 3 uses
  store i32 %i.cma, ptr %i.clz, align 4, !tbaa !290
  %i.cmb = getelementptr inbounds [8 x i8], ptr %i.chz, i64 %indvars.iv.i632.us ; 2 uses
  store i32 %i.clq, ptr %i.cmb, align 4, !tbaa !288
  %i.cmc = getelementptr inbounds nuw i8, ptr %i.cmb, i64 4
  store i32 %i.cma, ptr %i.cmc, align 4, !tbaa !290
  %i.cmd = getelementptr inbounds [8 x i8], ptr %i.cia, i64 %indvars.iv.i632.us ; 2 uses
  store i32 %i.clw, ptr %i.cmd, align 4, !tbaa !288
  %i.cme = getelementptr inbounds nuw i8, ptr %i.cmd, i64 4
  store i32 %i.cma, ptr %i.cme, align 4, !tbaa !290
  %indvars.iv.next.i633.us = add nsw i64 %indvars.iv.i632.us, 1 ; 2 uses
  %indvars.iv.next205.i.us = add nuw nsw i64 %indvars.iv204.i.us, 1 ; 2 uses
  %exitcond.not.i634.us = icmp eq i64 %indvars.iv.next205.i.us, %wide.trip.count.i499
  br i1 %exitcond.not.i634.us, label %._crit_edge.split.us92.i, label %.preheader61.us.i.split.us, !llvm.loop !291

.preheader61.us.i.split:                          ; preds = %.preheader61.us.i
  %i.cmf = load ptr, ptr %i.aip, align 8, !tbaa !145
  br label %bb.du

bb.du:                                            ; preds = %bb.du, %.preheader61.us.i.split
  %indvars.iv204.i = phi i64 [ 0, %.preheader61.us.i.split ], [ %indvars.iv.next205.i, %bb.du ] ; 3 uses
  %indvars.iv.i632 = phi i64 [ %.058686.us.i, %.preheader61.us.i.split ], [ %indvars.iv.next.i633, %bb.du ] ; 5 uses
  %i.cmg = shl nuw nsw i64 %indvars.iv204.i, 2    ; 4 uses
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cmg
  %i.cmi = load i32, ptr %i.ay, align 8, !tbaa !63
  %i.cmj = mul nsw i32 %i.cmi, %i.cld
  %i.cmk = sext i32 %i.cmj to i64
  %i.cml = getelementptr inbounds i8, ptr %i.cmh, i64 %i.cmk
  %i.cmm = load i32, ptr %i.cml, align 4, !tbaa !63
  %i.cmn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cmg
  %i.cmo = load i32, ptr %i.aii, align 4, !tbaa !63
  %i.cmp = mul nsw i32 %i.cmo, %i.cld
  %i.cmq = sext i32 %i.cmp to i64
  %i.cmr = getelementptr inbounds i8, ptr %i.cmn, i64 %i.cmq
  %i.cms = load i32, ptr %i.cmr, align 4, !tbaa !63
  %i.cmt = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cmg
  %i.cmu = load i32, ptr %i.aih, align 8, !tbaa !63
  %i.cmv = mul nsw i32 %i.cmu, %i.cld
  %i.cmw = sext i32 %i.cmv to i64
  %i.cmx = getelementptr inbounds i8, ptr %i.cmt, i64 %i.cmw
  %i.cmy = load i32, ptr %i.cmx, align 4, !tbaa !63
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cmg
  %i.cna = load i32, ptr %i.aie, align 4, !tbaa !63
  %i.cnb = mul nsw i32 %i.cna, %i.cld
  %i.cnc = sext i32 %i.cnb to i64
  %i.cnd = getelementptr inbounds i8, ptr %i.cmz, i64 %i.cnc
  %i.cne = load i32, ptr %i.cnd, align 4, !tbaa !63
  %i.cnf = getelementptr inbounds [8 x i8], ptr %.pre1311, i64 %indvars.iv.i632 ; 2 uses
  store i32 %i.cmm, ptr %i.cnf, align 4, !tbaa !288
  %i.cng = add nuw nsw i64 %indvars.iv204.i, %i.clc
  %i.cnh = getelementptr inbounds nuw i8, ptr %i.cnf, i64 4
  %i.cni = trunc nuw i64 %i.cng to i32            ; 4 uses
  store i32 %i.cni, ptr %i.cnh, align 4, !tbaa !290
  %i.cnj = getelementptr inbounds [8 x i8], ptr %i.chz, i64 %indvars.iv.i632 ; 2 uses
  store i32 %i.cms, ptr %i.cnj, align 4, !tbaa !288
  %i.cnk = getelementptr inbounds nuw i8, ptr %i.cnj, i64 4
  store i32 %i.cni, ptr %i.cnk, align 4, !tbaa !290
  %i.cnl = getelementptr inbounds [8 x i8], ptr %i.cia, i64 %indvars.iv.i632 ; 2 uses
  store i32 %i.cmy, ptr %i.cnl, align 4, !tbaa !288
  %i.cnm = getelementptr inbounds nuw i8, ptr %i.cnl, i64 4
  store i32 %i.cni, ptr %i.cnm, align 4, !tbaa !290
  %i.cnn = getelementptr inbounds [8 x i8], ptr %i.cmf, i64 %indvars.iv.i632 ; 2 uses
  store i32 %i.cne, ptr %i.cnn, align 4, !tbaa !288
  %i.cno = getelementptr inbounds nuw i8, ptr %i.cnn, i64 4
  store i32 %i.cni, ptr %i.cno, align 4, !tbaa !290
  %indvars.iv.next.i633 = add nsw i64 %indvars.iv.i632, 1 ; 2 uses
  %indvars.iv.next205.i = add nuw nsw i64 %indvars.iv204.i, 1 ; 2 uses
  %exitcond.not.i634 = icmp eq i64 %indvars.iv.next205.i, %wide.trip.count.i499
  br i1 %exitcond.not.i634, label %._crit_edge.split.us92.i, label %bb.du, !llvm.loop !291

._crit_edge.split.us92.i:                         ; preds = %bb.du, %.preheader61.us.i.split.us
  %.us-phi = phi i64 [ %indvars.iv.next.i633.us, %.preheader61.us.i.split.us ], [ %indvars.iv.next.i633, %bb.du ] ; 2 uses
  %indvars.iv.next210.i = add nuw nsw i64 %indvars.iv209.i, 1 ; 2 uses
  %exitcond213.not.i = icmp eq i64 %indvars.iv.next210.i, %wide.trip.count57.i498
  br i1 %exitcond213.not.i, label %._crit_edge87.i, label %.preheader61.us.i, !llvm.loop !292

._crit_edge87.i:                                  ; preds = %._crit_edge.split.us92.i, %._crit_edge.split.us.us.us.split.i, %._crit_edge.split.us.us.us.split.us.us.i, %.._crit_edge87.i_crit_edge, %.preheader61.lr.ph.i
  %i.cnp = phi ptr [ %.pre1310, %.._crit_edge87.i_crit_edge ], [ %.pre1311, %._crit_edge.split.us.us.us.split.us.us.i ], [ %.pre1311, %.preheader61.lr.ph.i ], [ %.pre1311, %._crit_edge.split.us.us.us.split.i ], [ %.pre1311, %._crit_edge.split.us92.i ] ; 2 uses
  %.0586.lcssa.i = phi i64 [ 0, %.._crit_edge87.i_crit_edge ], [ %indvars.iv.next229.i, %._crit_edge.split.us.us.us.split.us.us.i ], [ 0, %.preheader61.lr.ph.i ], [ %indvars.iv.next215.i.a, %._crit_edge.split.us.us.us.split.i ], [ %.us-phi, %._crit_edge.split.us92.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  store ptr %i.cnp, ptr %i.j, align 16, !tbaa !293
  %i.cnq = getelementptr inbounds [8 x i8], ptr %i.cnp, i64 %.0586.lcssa.i
  %i.cnr = getelementptr inbounds i8, ptr %i.cnq, i64 -8
  store ptr %i.cnr, ptr %i.ait, align 8, !tbaa !293
  br label %bb.dv

bb.dv:                                            ; preds = %.thread.i, %._crit_edge87.i
  %.0577115.i = phi i32 [ 1, %._crit_edge87.i ], [ %.157881.i, %.thread.i ] ; 2 uses
  %i.cns = add nsw i32 %.0577115.i, -1            ; 2 uses
  %i.cnt = sext i32 %i.cns to i64
  %i.cnu = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.cnt ; 2 uses
  %i.cnv = load ptr, ptr %i.cnu, align 16, !tbaa !293 ; 2 uses
  %i.cnw = getelementptr inbounds nuw i8, ptr %i.cnu, i64 8
  %i.cnx = load ptr, ptr %i.cnw, align 8, !tbaa !293 ; 2 uses
  %i.cny = icmp ult ptr %i.cnv, %i.cnx
  br i1 %i.cny, label %.lr.ph110.preheader.i, label %.thread.i

.lr.ph110.preheader.i:                            ; preds = %bb.dv
  %i.cnz = sext i32 %.0577115.i to i64
  %i.coa = add nsw i64 %i.cnz, -1
  br label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %bb.eo, %.lr.ph110.preheader.i
  %indvars.iv242.i = phi i64 [ %i.coa, %.lr.ph110.preheader.i ], [ %indvars.iv.next243.i, %bb.eo ] ; 6 uses
  %.0571108.i = phi ptr [ %i.cnx, %.lr.ph110.preheader.i ], [ %.1572.i, %bb.eo ] ; 16 uses
  %.0574107.i = phi ptr [ %i.cnv, %.lr.ph110.preheader.i ], [ %.1575.i, %bb.eo ] ; 15 uses
  %i.cob = getelementptr inbounds i8, ptr %.0571108.i, i64 -8 ; 6 uses
  %i.coc = icmp ult ptr %.0574107.i, %i.cob
  br i1 %i.coc, label %bb.dw, label %bb.ep

bb.dw:                                            ; preds = %.lr.ph110.i
  %i.cod = getelementptr inbounds i8, ptr %.0571108.i, i64 -16 ; 4 uses
  %i.coe = getelementptr inbounds nuw i8, ptr %.0574107.i, i64 8 ; 3 uses
  %i.cof = ptrtoint ptr %.0571108.i to i64        ; 2 uses
  %i.cog = ptrtoint ptr %.0574107.i to i64        ; 2 uses
  %i.coh = sub i64 %i.cof, %i.cog
  %i.coi = ashr i64 %i.coh, 4
  %i.coj = getelementptr inbounds [8 x i8], ptr %.0574107.i, i64 %i.coi ; 12 uses
  %i.cok = load i32, ptr %.0574107.i, align 4, !tbaa !288 ; 2 uses
  %i.col = load i32, ptr %.0571108.i, align 4, !tbaa !288 ; 3 uses
  %i.com = icmp ugt i32 %i.cok, %i.col
  %i.con = load i32, ptr %i.coj, align 4, !tbaa !288 ; 3 uses
  br i1 %i.com, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.coo = icmp ugt i32 %i.col, %i.con
  %i.cop = load i64, ptr %.0574107.i, align 4     ; 2 uses
  br i1 %i.coo, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.coq = load i64, ptr %i.coj, align 4
  store i64 %i.cop, ptr %i.coj, align 4
  br label %.sink.split.i

bb.dz:                                            ; preds = %bb.dx
  %i.cor = load i64, ptr %.0571108.i, align 4
  store i64 %i.cop, ptr %.0571108.i, align 4
  br label %.sink.split.i

bb.ea:                                            ; preds = %bb.dw
  %i.cos = icmp ugt i32 %i.cok, %i.con
  br i1 %i.cos, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.cot = load i64, ptr %i.coj, align 4
  %i.cou = load i64, ptr %.0574107.i, align 4
  store i64 %i.cou, ptr %i.coj, align 4
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.eb, %bb.dz, %bb.dy
  %.sink.i631 = phi i64 [ %i.cot, %bb.eb ], [ %i.coq, %bb.dy ], [ %i.cor, %bb.dz ]
  store i64 %.sink.i631, ptr %.0574107.i, align 4
  %.pre1312 = load i32, ptr %i.coj, align 4, !tbaa !288
  %.pre1313 = load i32, ptr %.0571108.i, align 4, !tbaa !288
  br label %bb.ec

bb.ec:                                            ; preds = %.sink.split.i, %bb.ea
  %i.cov = phi i32 [ %i.col, %bb.ea ], [ %.pre1313, %.sink.split.i ]
  %i.cow = phi i32 [ %i.con, %bb.ea ], [ %.pre1312, %.sink.split.i ]
  %.0569.i = phi i32 [ 1, %bb.ea ], [ 0, %.sink.split.i ]
  %i.cox = icmp ugt i32 %i.cow, %i.cov
  br i1 %i.cox, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.coy = load i64, ptr %.0571108.i, align 4
  %i.coz = load i64, ptr %i.coj, align 4
  store i64 %i.coz, ptr %.0571108.i, align 4
  store i64 %i.coy, ptr %i.coj, align 4
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.1570.i = phi i32 [ 0, %bb.ed ], [ %.0569.i, %bb.ec ]
  %i.cpa = icmp eq ptr %.0574107.i, %i.cod
  br i1 %i.cpa, label %.thread.loopexit.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.cpb = load i64, ptr %i.coj, align 4          ; 2 uses
  %i.cpc = load i64, ptr %i.cob, align 4
  store i64 %i.cpc, ptr %i.coj, align 4
  store i64 %i.cpb, ptr %i.cob, align 4
  %.not622101.i = icmp ugt ptr %i.coe, %i.cod
  br i1 %.not622101.i, label %._crit_edge.i629, label %.preheader59.i

.preheader59.i:                                   ; preds = %bb.ef, %.critedge634.i
  %.0563103.i = phi ptr [ %.2565.i, %.critedge634.i ], [ %i.coe, %bb.ef ]
  %.0566102.i = phi ptr [ %.2568.i, %.critedge634.i ], [ %i.cod, %bb.ef ] ; 4 uses
  %i.cpd = load i32, ptr %i.cob, align 4, !tbaa !288 ; 2 uses
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eh, %.preheader59.i
  %.156498.i = phi ptr [ %.0563103.i, %.preheader59.i ], [ %i.cpg, %bb.eh ] ; 3 uses
  %i.cpe = load i32, ptr %.156498.i, align 4, !tbaa !288
  %i.cpf = icmp ult i32 %i.cpe, %i.cpd
  br i1 %i.cpf, label %bb.eh, label %.critedge.i

bb.eh:                                            ; preds = %bb.eg
  %i.cpg = getelementptr inbounds nuw i8, ptr %.156498.i, i64 8 ; 3 uses
  %.not625.i = icmp ugt ptr %i.cpg, %.0566102.i
  br i1 %.not625.i, label %.critedge.i, label %bb.eg, !llvm.loop !294

.critedge.i:                                      ; preds = %bb.eh, %bb.eg
  %.1564.lcssa.i = phi ptr [ %i.cpg, %bb.eh ], [ %.156498.i, %bb.eg ] ; 7 uses
  %.not62699.i = icmp ugt ptr %.1564.lcssa.i, %.0566102.i
  br i1 %.not62699.i, label %.critedge634.i, label %.lr.ph.i627

.lr.ph.i627:                                      ; preds = %.critedge.i, %bb.ei
  %.1567100.i = phi ptr [ %i.cpj, %bb.ei ], [ %.0566102.i, %.critedge.i ] ; 5 uses
  %i.cph = load i32, ptr %.1567100.i, align 4, !tbaa !288
  %i.cpi = icmp ugt i32 %i.cph, %i.cpd
  br i1 %i.cpi, label %bb.ei, label %.critedge2.i

bb.ei:                                            ; preds = %.lr.ph.i627
  %i.cpj = getelementptr inbounds i8, ptr %.1567100.i, i64 -8 ; 3 uses
  %.not626.i = icmp ugt ptr %.1564.lcssa.i, %i.cpj
  br i1 %.not626.i, label %.critedge634.i, label %.lr.ph.i627, !llvm.loop !295

.critedge2.i:                                     ; preds = %.lr.ph.i627
  %i.cpk = load i64, ptr %.1567100.i, align 4
  %i.cpl = load i64, ptr %.1564.lcssa.i, align 4
  store i64 %i.cpl, ptr %.1567100.i, align 4
  store i64 %i.cpk, ptr %.1564.lcssa.i, align 4
  %i.cpm = getelementptr inbounds nuw i8, ptr %.1564.lcssa.i, i64 8
  %i.cpn = getelementptr inbounds i8, ptr %.1567100.i, i64 -8
  br label %.critedge634.i

.critedge634.i:                                   ; preds = %bb.ei, %.critedge2.i, %.critedge.i
  %.2568.i = phi ptr [ %i.cpn, %.critedge2.i ], [ %.0566102.i, %.critedge.i ], [ %i.cpj, %bb.ei ] ; 3 uses
  %.2565.i = phi ptr [ %i.cpm, %.critedge2.i ], [ %.1564.lcssa.i, %.critedge.i ], [ %.1564.lcssa.i, %bb.ei ] ; 3 uses
  %.not622.i = icmp ugt ptr %.2565.i, %.2568.i
  br i1 %.not622.i, label %._crit_edge.loopexit.i, label %.preheader59.i, !llvm.loop !296

._crit_edge.loopexit.i:                           ; preds = %.critedge634.i
  %.pre.i628 = load i64, ptr %i.cob, align 4
  br label %._crit_edge.i629

._crit_edge.i629:                                 ; preds = %._crit_edge.loopexit.i, %bb.ef
  %i.cpo = phi i64 [ %i.cpb, %bb.ef ], [ %.pre.i628, %._crit_edge.loopexit.i ]
  %.0566.lcssa.i = phi ptr [ %i.cod, %bb.ef ], [ %.2568.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.0563.lcssa.i = phi ptr [ %i.coe, %bb.ef ], [ %.2565.i, %._crit_edge.loopexit.i ] ; 7 uses
  %i.cpp = load i64, ptr %.0563.lcssa.i, align 4
  store i64 %i.cpo, ptr %.0563.lcssa.i, align 4
  store i64 %i.cpp, ptr %i.cob, align 4
  %.not623.i = icmp eq i32 %.1570.i, 0
  br i1 %.not623.i, label %bb.el, label %bb.ej

bb.ej:                                            ; preds = %._crit_edge.i629
  %i.cpq = getelementptr inbounds i8, ptr %.0563.lcssa.i, i64 -8
  %i.cpr = icmp eq ptr %i.coj, %i.cpq
  %i.cps = icmp eq ptr %i.coj, %.0563.lcssa.i
  %or.cond.i630 = or i1 %i.cps, %i.cpr
  br i1 %or.cond.i630, label %.preheader60.i, label %bb.el

.preheader60.i:                                   ; preds = %bb.ej, %bb.ek
  %.0562.i = phi ptr [ %i.cpv, %bb.ek ], [ %.0574107.i, %bb.ej ] ; 4 uses
  %i.cpt = icmp ult ptr %.0562.i, %.0571108.i
  br i1 %i.cpt, label %bb.ek, label %.critedge4.i

bb.ek:                                            ; preds = %.preheader60.i
  %i.cpu = load i32, ptr %.0562.i, align 4, !tbaa !288
  %i.cpv = getelementptr inbounds nuw i8, ptr %.0562.i, i64 8 ; 2 uses
  %i.cpw = load i32, ptr %i.cpv, align 4, !tbaa !288
  %.not624.i = icmp ugt i32 %i.cpu, %i.cpw
  br i1 %.not624.i, label %.critedge4.i, label %.preheader60.i, !llvm.loop !297

.critedge4.i:                                     ; preds = %bb.ek, %.preheader60.i
  %i.cpx = icmp eq ptr %.0562.i, %.0571108.i
  br i1 %i.cpx, label %.thread.loopexit.i, label %bb.el

bb.el:                                            ; preds = %.critedge4.i, %bb.ej, %._crit_edge.i629
  %i.cpy = ptrtoint ptr %.0563.lcssa.i to i64     ; 2 uses
  %i.cpz = sub i64 %i.cof, %i.cpy
  %i.cqa = sub i64 %i.cpy, %i.cog
  %i.cqb = icmp slt i64 %i.cpz, %i.cqa
  br i1 %i.cqb, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.cqc = getelementptr inbounds [16 x i8], ptr %i.j, i64 %indvars.iv242.i ; 2 uses
  store ptr %.0574107.i, ptr %i.cqc, align 16, !tbaa !293
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.cqc, i64 8
  store ptr %.0566.lcssa.i, ptr %i.cqd, align 8, !tbaa !293
  %i.cqe = getelementptr inbounds nuw i8, ptr %.0563.lcssa.i, i64 8
  br label %bb.eo

bb.en:                                            ; preds = %bb.el
  %i.cqf = getelementptr inbounds nuw i8, ptr %.0563.lcssa.i, i64 8
  %i.cqg = getelementptr inbounds [16 x i8], ptr %i.j, i64 %indvars.iv242.i ; 2 uses
  store ptr %i.cqf, ptr %i.cqg, align 16, !tbaa !293
  %i.cqh = getelementptr inbounds nuw i8, ptr %i.cqg, i64 8
  store ptr %.0571108.i, ptr %i.cqh, align 8, !tbaa !293
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.1575.i = phi ptr [ %i.cqe, %bb.em ], [ %.0574107.i, %bb.en ] ; 2 uses
  %.1572.i = phi ptr [ %.0571108.i, %bb.em ], [ %.0566.lcssa.i, %bb.en ] ; 2 uses
  %indvars.iv.next243.i = add nsw i64 %indvars.iv242.i, 1 ; 2 uses
  %i.cqi = icmp ult ptr %.1575.i, %.1572.i
  br i1 %i.cqi, label %.lr.ph110.i, label %.thread.loopexit.i

bb.ep:                                            ; preds = %.lr.ph110.i
  %i.cqj = trunc nsw i64 %indvars.iv242.i to i32  ; 2 uses
  %i.cqk = load i32, ptr %.0574107.i, align 4, !tbaa !288
  %i.cql = load i32, ptr %.0571108.i, align 4, !tbaa !288
  %i.cqm = icmp ugt i32 %i.cqk, %i.cql
  br i1 %i.cqm, label %bb.eq, label %.thread.i

bb.eq:                                            ; preds = %bb.ep
  %i.cqn = load i64, ptr %.0571108.i, align 4
  %i.cqo = load i64, ptr %.0574107.i, align 4
  store i64 %i.cqo, ptr %.0571108.i, align 4
  store i64 %i.cqn, ptr %.0574107.i, align 4
  br label %.thread.i

.thread.loopexit.i:                               ; preds = %bb.eo, %.critedge4.i, %bb.ee
  %.157881.ph.in.i = phi i64 [ %indvars.iv242.i, %.critedge4.i ], [ %indvars.iv242.i, %bb.ee ], [ %indvars.iv.next243.i, %bb.eo ]
  %.157881.ph.i = trunc i64 %.157881.ph.in.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.eq, %bb.ep, %bb.dv
  %.157881.i = phi i32 [ %i.cqj, %bb.eq ], [ %i.cqj, %bb.ep ], [ %i.cns, %bb.dv ], [ %.157881.ph.i, %.thread.loopexit.i ] ; 2 uses
  %.not.i625 = icmp eq i32 %.157881.i, 0
  br i1 %.not.i625, label %bb.er, label %bb.dv, !llvm.loop !298

bb.er:                                            ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  %i.cqp = load ptr, ptr %i.air, align 8, !tbaa !145 ; 2 uses
  store ptr %i.cqp, ptr %i.k, align 16, !tbaa !293
  %i.cqq = getelementptr inbounds [8 x i8], ptr %i.cqp, i64 %.0586.lcssa.i
  %i.cqr = getelementptr inbounds i8, ptr %i.cqq, i64 -8
  store ptr %i.cqr, ptr %i.aiu, align 8, !tbaa !293
  br label %bb.es

bb.es:                                            ; preds = %.thread37.i, %bb.er
  %.0553136.i = phi i32 [ 1, %bb.er ], [ %.155476.i, %.thread37.i ] ; 2 uses
  %i.cqs = add nsw i32 %.0553136.i, -1            ; 2 uses
  %i.cqt = sext i32 %i.cqs to i64
  %i.cqu = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.cqt ; 2 uses
  %i.cqv = load ptr, ptr %i.cqu, align 16, !tbaa !293 ; 2 uses
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.cqu, i64 8
  %i.cqx = load ptr, ptr %i.cqw, align 8, !tbaa !293 ; 2 uses
  %i.cqy = icmp ult ptr %i.cqv, %i.cqx
  br i1 %i.cqy, label %.lr.ph131.preheader.i, label %.thread37.i

.lr.ph131.preheader.i:                            ; preds = %bb.es
  %i.cqz = sext i32 %.0553136.i to i64
  %i.cra = add nsw i64 %i.cqz, -1
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %bb.fl, %.lr.ph131.preheader.i
  %indvars.iv245.i = phi i64 [ %i.cra, %.lr.ph131.preheader.i ], [ %indvars.iv.next246.i, %bb.fl ] ; 6 uses
  %.0547129.i = phi ptr [ %i.cqx, %.lr.ph131.preheader.i ], [ %.1548.i, %bb.fl ] ; 16 uses
  %.0550128.i = phi ptr [ %i.cqv, %.lr.ph131.preheader.i ], [ %.1551.i, %bb.fl ] ; 15 uses
  %i.crb = getelementptr inbounds i8, ptr %.0547129.i, i64 -8 ; 6 uses
  %i.crc = icmp ult ptr %.0550128.i, %i.crb
  br i1 %i.crc, label %bb.et, label %bb.fm

bb.et:                                            ; preds = %.lr.ph131.i
  %i.crd = getelementptr inbounds i8, ptr %.0547129.i, i64 -16 ; 4 uses
  %i.cre = getelementptr inbounds nuw i8, ptr %.0550128.i, i64 8 ; 3 uses
  %i.crf = ptrtoint ptr %.0547129.i to i64        ; 2 uses
  %i.crg = ptrtoint ptr %.0550128.i to i64        ; 2 uses
  %i.crh = sub i64 %i.crf, %i.crg
  %i.cri = ashr i64 %i.crh, 4
  %i.crj = getelementptr inbounds [8 x i8], ptr %.0550128.i, i64 %i.cri ; 12 uses
  %i.crk = load i32, ptr %.0550128.i, align 4, !tbaa !288 ; 2 uses
  %i.crl = load i32, ptr %.0547129.i, align 4, !tbaa !288 ; 3 uses
  %i.crm = icmp ugt i32 %i.crk, %i.crl
  %i.crn = load i32, ptr %i.crj, align 4, !tbaa !288 ; 3 uses
  br i1 %i.crm, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %bb.et
  %i.cro = icmp ugt i32 %i.crl, %i.crn
  %i.crp = load i64, ptr %.0550128.i, align 4     ; 2 uses
  br i1 %i.cro, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.crq = load i64, ptr %i.crj, align 4
  store i64 %i.crp, ptr %i.crj, align 4
  br label %.sink.split330.i

bb.ew:                                            ; preds = %bb.eu
  %i.crr = load i64, ptr %.0547129.i, align 4
  store i64 %i.crp, ptr %.0547129.i, align 4
  br label %.sink.split330.i

bb.ex:                                            ; preds = %bb.et
  %i.crs = icmp ugt i32 %i.crk, %i.crn
  br i1 %i.crs, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.crt = load i64, ptr %i.crj, align 4
  %i.cru = load i64, ptr %.0550128.i, align 4
  store i64 %i.cru, ptr %i.crj, align 4
  br label %.sink.split330.i

.sink.split330.i:                                 ; preds = %bb.ey, %bb.ew, %bb.ev
  %.sink331.i = phi i64 [ %i.crt, %bb.ey ], [ %i.crq, %bb.ev ], [ %i.crr, %bb.ew ]
  store i64 %.sink331.i, ptr %.0550128.i, align 4
  %.pre1314 = load i32, ptr %i.crj, align 4, !tbaa !288
  %.pre1315 = load i32, ptr %.0547129.i, align 4, !tbaa !288
  br label %bb.ez

bb.ez:                                            ; preds = %.sink.split330.i, %bb.ex
  %i.crv = phi i32 [ %i.crl, %bb.ex ], [ %.pre1315, %.sink.split330.i ]
  %i.crw = phi i32 [ %i.crn, %bb.ex ], [ %.pre1314, %.sink.split330.i ]
  %.0545.i = phi i32 [ 1, %bb.ex ], [ 0, %.sink.split330.i ]
  %i.crx = icmp ugt i32 %i.crw, %i.crv
  br i1 %i.crx, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.cry = load i64, ptr %.0547129.i, align 4
  %i.crz = load i64, ptr %i.crj, align 4
  store i64 %i.crz, ptr %.0547129.i, align 4
  store i64 %i.cry, ptr %i.crj, align 4
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.1546.i = phi i32 [ 0, %bb.fa ], [ %.0545.i, %bb.ez ]
  %i.csa = icmp eq ptr %.0550128.i, %i.crd
  br i1 %i.csa, label %.thread37.loopexit.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.csb = load i64, ptr %i.crj, align 4          ; 2 uses
  %i.csc = load i64, ptr %i.crb, align 4
  store i64 %i.csc, ptr %i.crj, align 4
  store i64 %i.csb, ptr %i.crb, align 4
  %.not617121.i = icmp ugt ptr %i.cre, %i.crd
  br i1 %.not617121.i, label %._crit_edge124.i, label %.preheader57.i

.preheader57.i:                                   ; preds = %bb.fc, %.critedge635.i
  %.0539123.i = phi ptr [ %.2541.i, %.critedge635.i ], [ %i.cre, %bb.fc ]
  %.0542122.i = phi ptr [ %.2544.i, %.critedge635.i ], [ %i.crd, %bb.fc ] ; 4 uses
  %i.csd = load i32, ptr %i.crb, align 4, !tbaa !288 ; 2 uses
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fe, %.preheader57.i
  %.1540116.i = phi ptr [ %.0539123.i, %.preheader57.i ], [ %i.csg, %bb.fe ] ; 3 uses
  %i.cse = load i32, ptr %.1540116.i, align 4, !tbaa !288
  %i.csf = icmp ult i32 %i.cse, %i.csd
  br i1 %i.csf, label %bb.fe, label %.critedge6.i

bb.fe:                                            ; preds = %bb.fd
  %i.csg = getelementptr inbounds nuw i8, ptr %.1540116.i, i64 8 ; 3 uses
  %.not620.i = icmp ugt ptr %i.csg, %.0542122.i
  br i1 %.not620.i, label %.critedge6.i, label %bb.fd, !llvm.loop !299

.critedge6.i:                                     ; preds = %bb.fe, %bb.fd
  %.1540.lcssa.i = phi ptr [ %i.csg, %bb.fe ], [ %.1540116.i, %bb.fd ] ; 7 uses
  %.not621117.i = icmp ugt ptr %.1540.lcssa.i, %.0542122.i
  br i1 %.not621117.i, label %.critedge635.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %.critedge6.i, %bb.ff
  %.1543118.i = phi ptr [ %i.csj, %bb.ff ], [ %.0542122.i, %.critedge6.i ] ; 5 uses
  %i.csh = load i32, ptr %.1543118.i, align 4, !tbaa !288
  %i.csi = icmp ugt i32 %i.csh, %i.csd
  br i1 %i.csi, label %bb.ff, label %.critedge8.i

bb.ff:                                            ; preds = %.lr.ph119.i
  %i.csj = getelementptr inbounds i8, ptr %.1543118.i, i64 -8 ; 3 uses
  %.not621.i = icmp ugt ptr %.1540.lcssa.i, %i.csj
  br i1 %.not621.i, label %.critedge635.i, label %.lr.ph119.i, !llvm.loop !300

.critedge8.i:                                     ; preds = %.lr.ph119.i
  %i.csk = load i64, ptr %.1543118.i, align 4
  %i.csl = load i64, ptr %.1540.lcssa.i, align 4
  store i64 %i.csl, ptr %.1543118.i, align 4
  store i64 %i.csk, ptr %.1540.lcssa.i, align 4
  %i.csm = getelementptr inbounds nuw i8, ptr %.1540.lcssa.i, i64 8
  %i.csn = getelementptr inbounds i8, ptr %.1543118.i, i64 -8
  br label %.critedge635.i

.critedge635.i:                                   ; preds = %bb.ff, %.critedge8.i, %.critedge6.i
  %.2544.i = phi ptr [ %i.csn, %.critedge8.i ], [ %.0542122.i, %.critedge6.i ], [ %i.csj, %bb.ff ] ; 3 uses
  %.2541.i = phi ptr [ %i.csm, %.critedge8.i ], [ %.1540.lcssa.i, %.critedge6.i ], [ %.1540.lcssa.i, %bb.ff ] ; 3 uses
  %.not617.i = icmp ugt ptr %.2541.i, %.2544.i
  br i1 %.not617.i, label %._crit_edge124.loopexit.i, label %.preheader57.i, !llvm.loop !301

._crit_edge124.loopexit.i:                        ; preds = %.critedge635.i
  %.pre257.i = load i64, ptr %i.crb, align 4
  br label %._crit_edge124.i

._crit_edge124.i:                                 ; preds = %._crit_edge124.loopexit.i, %bb.fc
  %i.cso = phi i64 [ %i.csb, %bb.fc ], [ %.pre257.i, %._crit_edge124.loopexit.i ]
  %.0542.lcssa.i = phi ptr [ %i.crd, %bb.fc ], [ %.2544.i, %._crit_edge124.loopexit.i ] ; 2 uses
  %.0539.lcssa.i = phi ptr [ %i.cre, %bb.fc ], [ %.2541.i, %._crit_edge124.loopexit.i ] ; 7 uses
  %i.csp = load i64, ptr %.0539.lcssa.i, align 4
  store i64 %i.cso, ptr %.0539.lcssa.i, align 4
  store i64 %i.csp, ptr %i.crb, align 4
  %.not618.i = icmp eq i32 %.1546.i, 0
  br i1 %.not618.i, label %bb.fi, label %bb.fg

bb.fg:                                            ; preds = %._crit_edge124.i
  %i.csq = getelementptr inbounds i8, ptr %.0539.lcssa.i, i64 -8
  %i.csr = icmp eq ptr %i.crj, %i.csq
  %i.css = icmp eq ptr %i.crj, %.0539.lcssa.i
  %or.cond636.i = or i1 %i.css, %i.csr
  br i1 %or.cond636.i, label %.preheader58.i, label %bb.fi

.preheader58.i:                                   ; preds = %bb.fg, %bb.fh
  %.0538.i = phi ptr [ %i.csv, %bb.fh ], [ %.0550128.i, %bb.fg ] ; 4 uses
  %i.cst = icmp ult ptr %.0538.i, %.0547129.i
  br i1 %i.cst, label %bb.fh, label %.critedge10.i

bb.fh:                                            ; preds = %.preheader58.i
  %i.csu = load i32, ptr %.0538.i, align 4, !tbaa !288
  %i.csv = getelementptr inbounds nuw i8, ptr %.0538.i, i64 8 ; 2 uses
  %i.csw = load i32, ptr %i.csv, align 4, !tbaa !288
  %.not619.i = icmp ugt i32 %i.csu, %i.csw
  br i1 %.not619.i, label %.critedge10.i, label %.preheader58.i, !llvm.loop !302

.critedge10.i:                                    ; preds = %bb.fh, %.preheader58.i
  %i.csx = icmp eq ptr %.0538.i, %.0547129.i
  br i1 %i.csx, label %.thread37.loopexit.i, label %bb.fi

bb.fi:                                            ; preds = %.critedge10.i, %bb.fg, %._crit_edge124.i
  %i.csy = ptrtoint ptr %.0539.lcssa.i to i64     ; 2 uses
  %i.csz = sub i64 %i.crf, %i.csy
  %i.cta = sub i64 %i.csy, %i.crg
  %i.ctb = icmp slt i64 %i.csz, %i.cta
  br i1 %i.ctb, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.ctc = getelementptr inbounds [16 x i8], ptr %i.k, i64 %indvars.iv245.i ; 2 uses
  store ptr %.0550128.i, ptr %i.ctc, align 16, !tbaa !293
  %i.ctd = getelementptr inbounds nuw i8, ptr %i.ctc, i64 8
  store ptr %.0542.lcssa.i, ptr %i.ctd, align 8, !tbaa !293
  %i.cte = getelementptr inbounds nuw i8, ptr %.0539.lcssa.i, i64 8
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  %i.ctf = getelementptr inbounds nuw i8, ptr %.0539.lcssa.i, i64 8
  %i.ctg = getelementptr inbounds [16 x i8], ptr %i.k, i64 %indvars.iv245.i ; 2 uses
  store ptr %i.ctf, ptr %i.ctg, align 16, !tbaa !293
  %i.cth = getelementptr inbounds nuw i8, ptr %i.ctg, i64 8
  store ptr %.0547129.i, ptr %i.cth, align 8, !tbaa !293
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %.1551.i = phi ptr [ %i.cte, %bb.fj ], [ %.0550128.i, %bb.fk ] ; 2 uses
  %.1548.i = phi ptr [ %.0547129.i, %bb.fj ], [ %.0542.lcssa.i, %bb.fk ] ; 2 uses
  %indvars.iv.next246.i = add nsw i64 %indvars.iv245.i, 1 ; 2 uses
  %i.cti = icmp ult ptr %.1551.i, %.1548.i
  br i1 %i.cti, label %.lr.ph131.i, label %.thread37.loopexit.i

bb.fm:                                            ; preds = %.lr.ph131.i
  %i.ctj = trunc nsw i64 %indvars.iv245.i to i32  ; 2 uses
  %i.ctk = load i32, ptr %.0550128.i, align 4, !tbaa !288
  %i.ctl = load i32, ptr %.0547129.i, align 4, !tbaa !288
  %i.ctm = icmp ugt i32 %i.ctk, %i.ctl
  br i1 %i.ctm, label %bb.fn, label %.thread37.i

bb.fn:                                            ; preds = %bb.fm
  %i.ctn = load i64, ptr %.0547129.i, align 4
  %i.cto = load i64, ptr %.0550128.i, align 4
  store i64 %i.cto, ptr %.0547129.i, align 4
  store i64 %i.ctn, ptr %.0550128.i, align 4
  br label %.thread37.i

.thread37.loopexit.i:                             ; preds = %bb.fl, %.critedge10.i, %bb.fb
  %.155476.ph.in.i = phi i64 [ %indvars.iv245.i, %.critedge10.i ], [ %indvars.iv245.i, %bb.fb ], [ %indvars.iv.next246.i, %bb.fl ]
  %.155476.ph.i = trunc i64 %.155476.ph.in.i to i32
  br label %.thread37.i

.thread37.i:                                      ; preds = %.thread37.loopexit.i, %bb.fn, %bb.fm, %bb.es
  %.155476.i = phi i32 [ %i.ctj, %bb.fn ], [ %i.ctj, %bb.fm ], [ %i.cqs, %bb.es ], [ %.155476.ph.i, %.thread37.loopexit.i ] ; 2 uses
  %.not603.i = icmp eq i32 %.155476.i, 0
  br i1 %.not603.i, label %bb.fo, label %bb.es, !llvm.loop !303

bb.fo:                                            ; preds = %.thread37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  %i.ctp = load ptr, ptr %i.aiq, align 8, !tbaa !145 ; 2 uses
  store ptr %i.ctp, ptr %i.l, align 16, !tbaa !293
  %i.ctq = getelementptr inbounds [8 x i8], ptr %i.ctp, i64 %.0586.lcssa.i
  %i.ctr = getelementptr inbounds i8, ptr %i.ctq, i64 -8
  store ptr %i.ctr, ptr %i.aiv, align 8, !tbaa !293
  br label %bb.fp

bb.fp:                                            ; preds = %.thread43.i, %bb.fo
  %.0533157.i = phi i32 [ 1, %bb.fo ], [ %.153471.i, %.thread43.i ] ; 2 uses
  %i.cts = add nsw i32 %.0533157.i, -1            ; 2 uses
  %i.ctt = sext i32 %i.cts to i64
  %i.ctu = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.ctt ; 2 uses
  %i.ctv = load ptr, ptr %i.ctu, align 16, !tbaa !293 ; 2 uses
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.ctu, i64 8
  %i.ctx = load ptr, ptr %i.ctw, align 8, !tbaa !293 ; 2 uses
  %i.cty = icmp ult ptr %i.ctv, %i.ctx
  br i1 %i.cty, label %.lr.ph152.preheader.i, label %.thread43.i

.lr.ph152.preheader.i:                            ; preds = %bb.fp
  %i.ctz = sext i32 %.0533157.i to i64
  %i.cua = add nsw i64 %i.ctz, -1
  br label %.lr.ph152.i

.lr.ph152.i:                                      ; preds = %bb.gi, %.lr.ph152.preheader.i
  %indvars.iv249.i = phi i64 [ %i.cua, %.lr.ph152.preheader.i ], [ %indvars.iv.next250.i, %bb.gi ] ; 6 uses
  %.0527150.i = phi ptr [ %i.ctx, %.lr.ph152.preheader.i ], [ %.1528.i, %bb.gi ] ; 16 uses
  %.0530149.i = phi ptr [ %i.ctv, %.lr.ph152.preheader.i ], [ %.1531.i, %bb.gi ] ; 15 uses
  %i.cub = getelementptr inbounds i8, ptr %.0527150.i, i64 -8 ; 6 uses
  %i.cuc = icmp ult ptr %.0530149.i, %i.cub
  br i1 %i.cuc, label %bb.fq, label %bb.gj

bb.fq:                                            ; preds = %.lr.ph152.i
  %i.cud = getelementptr inbounds i8, ptr %.0527150.i, i64 -16 ; 4 uses
  %i.cue = getelementptr inbounds nuw i8, ptr %.0530149.i, i64 8 ; 3 uses
  %i.cuf = ptrtoint ptr %.0527150.i to i64        ; 2 uses
  %i.cug = ptrtoint ptr %.0530149.i to i64        ; 2 uses
  %i.cuh = sub i64 %i.cuf, %i.cug
  %i.cui = ashr i64 %i.cuh, 4
  %i.cuj = getelementptr inbounds [8 x i8], ptr %.0530149.i, i64 %i.cui ; 12 uses
  %i.cuk = load i32, ptr %.0530149.i, align 4, !tbaa !288 ; 2 uses
  %i.cul = load i32, ptr %.0527150.i, align 4, !tbaa !288 ; 3 uses
  %i.cum = icmp ugt i32 %i.cuk, %i.cul
  %i.cun = load i32, ptr %i.cuj, align 4, !tbaa !288 ; 3 uses
  br i1 %i.cum, label %bb.fr, label %bb.fu

bb.fr:                                            ; preds = %bb.fq
  %i.cuo = icmp ugt i32 %i.cul, %i.cun
  %i.cup = load i64, ptr %.0530149.i, align 4     ; 2 uses
  br i1 %i.cuo, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.cuq = load i64, ptr %i.cuj, align 4
  store i64 %i.cup, ptr %i.cuj, align 4
  br label %.sink.split332.i

bb.ft:                                            ; preds = %bb.fr
  %i.cur = load i64, ptr %.0527150.i, align 4
  store i64 %i.cup, ptr %.0527150.i, align 4
  br label %.sink.split332.i

bb.fu:                                            ; preds = %bb.fq
  %i.cus = icmp ugt i32 %i.cuk, %i.cun
  br i1 %i.cus, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.cut = load i64, ptr %i.cuj, align 4
  %i.cuu = load i64, ptr %.0530149.i, align 4
  store i64 %i.cuu, ptr %i.cuj, align 4
  br label %.sink.split332.i

.sink.split332.i:                                 ; preds = %bb.fv, %bb.ft, %bb.fs
  %.sink333.i = phi i64 [ %i.cut, %bb.fv ], [ %i.cuq, %bb.fs ], [ %i.cur, %bb.ft ]
  store i64 %.sink333.i, ptr %.0530149.i, align 4
  %.pre1316 = load i32, ptr %i.cuj, align 4, !tbaa !288
  %.pre1317 = load i32, ptr %.0527150.i, align 4, !tbaa !288
  br label %bb.fw

bb.fw:                                            ; preds = %.sink.split332.i, %bb.fu
  %i.cuv = phi i32 [ %i.cul, %bb.fu ], [ %.pre1317, %.sink.split332.i ]
  %i.cuw = phi i32 [ %i.cun, %bb.fu ], [ %.pre1316, %.sink.split332.i ]
  %.0525.i = phi i32 [ 1, %bb.fu ], [ 0, %.sink.split332.i ]
  %i.cux = icmp ugt i32 %i.cuw, %i.cuv
  br i1 %i.cux, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.cuy = load i64, ptr %.0527150.i, align 4
  %i.cuz = load i64, ptr %i.cuj, align 4
  store i64 %i.cuz, ptr %.0527150.i, align 4
  store i64 %i.cuy, ptr %i.cuj, align 4
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.1526.i = phi i32 [ 0, %bb.fx ], [ %.0525.i, %bb.fw ]
  %i.cva = icmp eq ptr %.0530149.i, %i.cud
  br i1 %i.cva, label %.thread43.loopexit.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.cvb = load i64, ptr %i.cuj, align 4          ; 2 uses
  %i.cvc = load i64, ptr %i.cub, align 4
  store i64 %i.cvc, ptr %i.cuj, align 4
  store i64 %i.cvb, ptr %i.cub, align 4
  %.not612142.i = icmp ugt ptr %i.cue, %i.cud
  br i1 %.not612142.i, label %._crit_edge145.i, label %.preheader55.i

.preheader55.i:                                   ; preds = %bb.fz, %.critedge637.i
  %.0519144.i = phi ptr [ %.2521.i, %.critedge637.i ], [ %i.cue, %bb.fz ]
  %.0522143.i = phi ptr [ %.2524.i, %.critedge637.i ], [ %i.cud, %bb.fz ] ; 4 uses
  %i.cvd = load i32, ptr %i.cub, align 4, !tbaa !288 ; 2 uses
  br label %bb.ga

bb.ga:                                            ; preds = %bb.gb, %.preheader55.i
  %.1520137.i = phi ptr [ %.0519144.i, %.preheader55.i ], [ %i.cvg, %bb.gb ] ; 3 uses
  %i.cve = load i32, ptr %.1520137.i, align 4, !tbaa !288
  %i.cvf = icmp ult i32 %i.cve, %i.cvd
  br i1 %i.cvf, label %bb.gb, label %.critedge12.i

bb.gb:                                            ; preds = %bb.ga
  %i.cvg = getelementptr inbounds nuw i8, ptr %.1520137.i, i64 8 ; 3 uses
  %.not615.i = icmp ugt ptr %i.cvg, %.0522143.i
  br i1 %.not615.i, label %.critedge12.i, label %bb.ga, !llvm.loop !304

.critedge12.i:                                    ; preds = %bb.gb, %bb.ga
  %.1520.lcssa.i = phi ptr [ %i.cvg, %bb.gb ], [ %.1520137.i, %bb.ga ] ; 7 uses
  %.not616138.i = icmp ugt ptr %.1520.lcssa.i, %.0522143.i
  br i1 %.not616138.i, label %.critedge637.i, label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %.critedge12.i, %bb.gc
  %.1523139.i = phi ptr [ %i.cvj, %bb.gc ], [ %.0522143.i, %.critedge12.i ] ; 5 uses
  %i.cvh = load i32, ptr %.1523139.i, align 4, !tbaa !288
  %i.cvi = icmp ugt i32 %i.cvh, %i.cvd
  br i1 %i.cvi, label %bb.gc, label %.critedge14.i

bb.gc:                                            ; preds = %.lr.ph140.i
  %i.cvj = getelementptr inbounds i8, ptr %.1523139.i, i64 -8 ; 3 uses
  %.not616.i = icmp ugt ptr %.1520.lcssa.i, %i.cvj
  br i1 %.not616.i, label %.critedge637.i, label %.lr.ph140.i, !llvm.loop !305

.critedge14.i:                                    ; preds = %.lr.ph140.i
  %i.cvk = load i64, ptr %.1523139.i, align 4
  %i.cvl = load i64, ptr %.1520.lcssa.i, align 4
  store i64 %i.cvl, ptr %.1523139.i, align 4
  store i64 %i.cvk, ptr %.1520.lcssa.i, align 4
  %i.cvm = getelementptr inbounds nuw i8, ptr %.1520.lcssa.i, i64 8
  %i.cvn = getelementptr inbounds i8, ptr %.1523139.i, i64 -8
  br label %.critedge637.i

.critedge637.i:                                   ; preds = %bb.gc, %.critedge14.i, %.critedge12.i
  %.2524.i = phi ptr [ %i.cvn, %.critedge14.i ], [ %.0522143.i, %.critedge12.i ], [ %i.cvj, %bb.gc ] ; 3 uses
  %.2521.i = phi ptr [ %i.cvm, %.critedge14.i ], [ %.1520.lcssa.i, %.critedge12.i ], [ %.1520.lcssa.i, %bb.gc ] ; 3 uses
  %.not612.i = icmp ugt ptr %.2521.i, %.2524.i
  br i1 %.not612.i, label %._crit_edge145.loopexit.i, label %.preheader55.i, !llvm.loop !306

._crit_edge145.loopexit.i:                        ; preds = %.critedge637.i
  %.pre258.i = load i64, ptr %i.cub, align 4
  br label %._crit_edge145.i

._crit_edge145.i:                                 ; preds = %._crit_edge145.loopexit.i, %bb.fz
  %i.cvo = phi i64 [ %i.cvb, %bb.fz ], [ %.pre258.i, %._crit_edge145.loopexit.i ]
  %.0522.lcssa.i = phi ptr [ %i.cud, %bb.fz ], [ %.2524.i, %._crit_edge145.loopexit.i ] ; 2 uses
  %.0519.lcssa.i = phi ptr [ %i.cue, %bb.fz ], [ %.2521.i, %._crit_edge145.loopexit.i ] ; 7 uses
  %i.cvp = load i64, ptr %.0519.lcssa.i, align 4
  store i64 %i.cvo, ptr %.0519.lcssa.i, align 4
  store i64 %i.cvp, ptr %i.cub, align 4
  %.not613.i = icmp eq i32 %.1526.i, 0
  br i1 %.not613.i, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %._crit_edge145.i
  %i.cvq = getelementptr inbounds i8, ptr %.0519.lcssa.i, i64 -8
  %i.cvr = icmp eq ptr %i.cuj, %i.cvq
  %i.cvs = icmp eq ptr %i.cuj, %.0519.lcssa.i
  %or.cond638.i = or i1 %i.cvs, %i.cvr
  br i1 %or.cond638.i, label %.preheader56.i, label %bb.gf

.preheader56.i:                                   ; preds = %bb.gd, %bb.ge
  %.0518.i = phi ptr [ %i.cvv, %bb.ge ], [ %.0530149.i, %bb.gd ] ; 4 uses
  %i.cvt = icmp ult ptr %.0518.i, %.0527150.i
  br i1 %i.cvt, label %bb.ge, label %.critedge16.i

bb.ge:                                            ; preds = %.preheader56.i
  %i.cvu = load i32, ptr %.0518.i, align 4, !tbaa !288
  %i.cvv = getelementptr inbounds nuw i8, ptr %.0518.i, i64 8 ; 2 uses
  %i.cvw = load i32, ptr %i.cvv, align 4, !tbaa !288
  %.not614.i = icmp ugt i32 %i.cvu, %i.cvw
  br i1 %.not614.i, label %.critedge16.i, label %.preheader56.i, !llvm.loop !307

end_hunk_0
