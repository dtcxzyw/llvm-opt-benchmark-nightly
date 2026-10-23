Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegtsenc?download=true
inline.NumInlined: 82
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mpegts_write_pes:bb.a

mpegts_write_pmt.exit.i:                          ; preds = %bb.ea, %._crit_edge416.i.i, %bb.x
  %.1339389.i.i = phi ptr [ %.1339388.i.i, %bb.ea ], [ %.18.ph.i.i, %._crit_edge416.i.i ], [ %.0338.i.i, %bb.x ]
  %i.za = getelementptr inbounds nuw i8, ptr %i.ji, i64 40
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !101 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.jj, i64 272
  %i.zd = load i32, ptr %i.zc, align 8, !tbaa !208
  %i.ze = ptrtoint ptr %.1339389.i.i to i64
  %i.zf = sub i64 %i.ze, %i.bl                    ; 2 uses
  %i.zg = trunc i64 %i.zf to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.zh = add nsw i32 %i.zg, 12                   ; 4 uses
  %i.zi = icmp ugt i32 %i.zh, 1024
  br i1 %i.zi, label %mpegts_write_section1.exit, label %bb.eb

bb.eb:                                            ; preds = %mpegts_write_pmt.exit.i
  store i8 2, ptr %i.b, align 16, !tbaa !24
  %i.zj = add nsw i32 %i.zg, 9                    ; 2 uses
  %i.zk = lshr i32 %i.zj, 8
  %i.zl = trunc i32 %i.zk to i8
  %i.zm = or i8 %i.zl, -80
  store i8 %i.zm, ptr %i.bn, align 1, !tbaa !24
  %i.zn = trunc i32 %i.zj to i8
  store i8 %i.zn, ptr %i.bo, align 2, !tbaa !24
  %i.zo = lshr i32 %i.zb, 8
  %i.zp = trunc i32 %i.zo to i8
  store i8 %i.zp, ptr %i.bp, align 1, !tbaa !24
  %i.zq = trunc i32 %i.zb to i8
  store i8 %i.zq, ptr %i.bq, align 4, !tbaa !24
  %.tr.i434 = trunc i32 %i.zd to i8
  %i.zr = shl i8 %.tr.i434, 1
  %i.zs = or i8 %i.zr, -63
  store i8 %i.zs, ptr %i.br, align 1, !tbaa !24
  store i8 0, ptr %i.bs, align 2, !tbaa !24
  store i8 0, ptr %i.bt, align 1, !tbaa !24
  %sext497 = shl i64 %i.zf, 32                    ; 2 uses
  %i.zt = ashr exact i64 %sext497, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr nonnull readonly align 16 %i.g, i64 %i.zt, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.zu = call ptr @av_crc_get_table(i32 noundef 3) #12
  %sext498 = add i64 %sext497, 34359738368
  %i.zv = ashr exact i64 %sext498, 32             ; 2 uses
  %i.zw = call i32 @av_crc(ptr noundef %i.zu, i32 noundef -1, ptr noundef nonnull %i.b, i64 noundef %i.zv) #15
  %i.zx = call i32 @llvm.bswap.i32(i32 %i.zw)     ; 4 uses
  %i.zy = lshr i32 %i.zx, 24
  %i.zz = trunc nuw i32 %i.zy to i8
  %i.aaa = getelementptr inbounds i8, ptr %i.b, i64 %i.zv
  store i8 %i.zz, ptr %i.aaa, align 1, !tbaa !24
  %i.aab = lshr i32 %i.zx, 16
  %i.aac = trunc i32 %i.aab to i8
  %i.aad = zext nneg i32 %i.zh to i64
  %i.aae = getelementptr i8, ptr %i.b, i64 %i.aad ; 3 uses
  %i.aaf = getelementptr i8, ptr %i.aae, i64 -3
  store i8 %i.aac, ptr %i.aaf, align 1, !tbaa !24
  %i.aag = lshr i32 %i.zx, 8
  %i.aah = trunc i32 %i.aag to i8
  %i.aai = getelementptr i8, ptr %i.aae, i64 -2
  store i8 %i.aah, ptr %i.aai, align 1, !tbaa !24
  %i.aaj = trunc i32 %i.zx to i8
  %i.aak = getelementptr i8, ptr %i.aae, i64 -1
  store i8 %i.aaj, ptr %i.aak, align 1, !tbaa !24
  %.not65.i.i = icmp eq i32 %i.zh, 0
  br i1 %.not65.i.i, label %mpegts_write_section.exit.i, label %.lr.ph.i.i435

.lr.ph.i.i435:                                    ; preds = %bb.eb
  %i.aal = getelementptr inbounds nuw i8, ptr %i.ji, i64 4 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ei, %.lr.ph.i.i435
  %.05764.i.i = phi ptr [ %i.b, %.lr.ph.i.i435 ], [ %i.abn, %bb.ei ] ; 3 uses
  %.05863.i.i = phi i32 [ %i.zh, %.lr.ph.i.i435 ], [ %i.abo, %bb.ei ] ; 2 uses
  %i.aao = icmp eq ptr %i.b, %.05764.i.i          ; 2 uses
  store i8 71, ptr %i.a, align 16, !tbaa !24
  %i.aap = load i32, ptr %i.ji, align 8, !tbaa !111 ; 2 uses
  %i.aaq = ashr i32 %i.aap, 8                     ; 2 uses
  %i.aar = or i32 %i.aaq, 64
  %spec.select.i.i436 = select i1 %i.aao, i32 %i.aar, i32 %i.aaq
  %i.aas = trunc i32 %spec.select.i.i436 to i8
  store i8 %i.aas, ptr %i.bv, align 1, !tbaa !24
  %i.aat = trunc i32 %i.aap to i8
  store i8 %i.aat, ptr %i.bw, align 2, !tbaa !24
  %i.aau = load i32, ptr %i.aal, align 4, !tbaa !112
  %i.aav = add nsw i32 %i.aau, 1
  %i.aaw = and i32 %i.aav, 15                     ; 2 uses
  store i32 %i.aaw, ptr %i.aal, align 4, !tbaa !112
  %i.aax = trunc nuw nsw i32 %i.aaw to i8         ; 2 uses
  %i.aay = or disjoint i8 %i.aax, 16
  store i8 %i.aay, ptr %i.bx, align 1, !tbaa !24
  %i.aaz = load i32, ptr %i.aam, align 8, !tbaa !113
  %.not.i.i437 = icmp eq i32 %i.aaz, 0
  br i1 %.not.i.i437, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.aba = or disjoint i8 %i.aax, 48
  store i8 %i.aba, ptr %i.bx, align 1, !tbaa !24
  store i8 1, ptr %i.by, align 4, !tbaa !24
  store i8 -128, ptr %i.bz, align 1, !tbaa !24
  store i32 0, ptr %i.aam, align 8, !tbaa !113
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.056.i.i = phi ptr [ %i.ca, %bb.ed ], [ %i.by, %bb.ec ] ; 3 uses
  br i1 %i.aao, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.abb = getelementptr inbounds nuw i8, ptr %.056.i.i, i64 1
  store i8 0, ptr %.056.i.i, align 1, !tbaa !24
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.1.i.i438 = phi ptr [ %i.abb, %bb.ef ], [ %.056.i.i, %bb.ee ] ; 3 uses
  %i.abc = ptrtoint ptr %.1.i.i438 to i64
  %.neg.i.i439 = sub i64 %i.cb, %i.abc
  %i.abd = trunc i64 %.neg.i.i439 to i32
  %i.abe = add i32 %i.abd, 188
  %spec.select62.i.i = call i32 @llvm.smin.i32(i32 %i.abe, i32 %.05863.i.i) ; 2 uses
  %i.abf = sext i32 %spec.select62.i.i to i64     ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1.i.i438, ptr align 1 %.05764.i.i, i64 %i.abf, i1 false)
  %i.abg = getelementptr inbounds i8, ptr %.1.i.i438, i64 %i.abf ; 2 uses
  %i.abh = ptrtoint ptr %i.abg to i64
  %.neg61.i.i = sub i64 %i.cb, %i.abh
  %i.abi = trunc i64 %.neg61.i.i to i32
  %i.abj = add i32 %i.abi, 188                    ; 2 uses
  %i.abk = icmp sgt i32 %i.abj, 0
  br i1 %i.abk, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.abl = zext nneg i32 %i.abj to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.abg, i8 -1, i64 %i.abl, i1 false)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.abm = load ptr, ptr %i.aan, align 8, !tbaa !114
  call void %i.abm(ptr noundef nonnull %i.ji, ptr noundef nonnull %i.a) #12, !inline_history !199
  %i.abn = getelementptr inbounds i8, ptr %.05764.i.i, i64 %i.abf
  %i.abo = sub nsw i32 %.05863.i.i, %spec.select62.i.i ; 2 uses
  %i.abp = icmp sgt i32 %i.abo, 0
  br i1 %i.abp, label %bb.ec, label %mpegts_write_section.exit.i, !llvm.loop !1

mpegts_write_section.exit.i:                      ; preds = %bb.ei, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %mpegts_write_section1.exit

mpegts_write_section1.exit:                       ; preds = %mpegts_write_pmt.exit.i, %mpegts_write_section.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.abq = load i32, ptr %i.jc, align 8, !tbaa !87
  %i.abr = sext i32 %i.abq to i64
  %i.abs = icmp slt i64 %indvars.iv.next.i, %i.abr
  br i1 %i.abs, label %bb.v, label %._crit_edge.i, !llvm.loop !200

._crit_edge.i:                                    ; preds = %mpegts_write_section1.exit, %mpegts_write_pat.exit.i
  br i1 %.not.i457, label %.critedge68.i, label %.thread96.i

.thread96.i:                                      ; preds = %._crit_edge.i, %bb.p
  %i.abt = phi ptr [ %i.gn, %._crit_edge.i ], [ %i.gd, %bb.p ] ; 3 uses
  %.0289448 = phi i64 [ %.0289450, %._crit_edge.i ], [ %.0289451, %bb.p ] ; 4 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 320 ; 2 uses
  %i.abv = load i64, ptr %i.abu, align 8, !tbaa !104 ; 3 uses
  %i.abw = icmp eq i64 %i.abv, -9223372036854775808
  br i1 %i.abw, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %.thread96.i
  %i.abx = sub nsw i64 %.0289448, %i.abv
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abt, i64 160
  %i.abz = load i64, ptr %i.aby, align 8, !tbaa !107
  %i.aca = icmp sge i64 %i.abx, %i.abz
  %i.acb = icmp ne i32 %.1292527, 0
  %or.cond7.i = or i1 %i.acb, %i.aca
  br i1 %or.cond7.i, label %bb.ek, label %retransmit_si_info.exit

.critedge68.i:                                    ; preds = %._crit_edge.i, %.critedge65.i
  %i.acc = phi ptr [ %i.gn, %._crit_edge.i ], [ %i.gm, %.critedge65.i ]
  %.0289449 = phi i64 [ %.0289450, %._crit_edge.i ], [ %.0289452, %.critedge65.i ] ; 2 uses
  %.old6.not.i = icmp eq i32 %.1292527, 0
  br i1 %.old6.not.i, label %retransmit_si_info.exit, label %bb.el

bb.ek:                                            ; preds = %bb.ej, %.thread96.i
  %.69.i = call i64 @llvm.smax.i64(i64 %.0289448, i64 %i.abv)
  store i64 %.69.i, ptr %i.abu, align 8, !tbaa !104
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %.critedge68.i
  %i.acd = phi ptr [ %i.abt, %bb.ek ], [ %i.acc, %.critedge68.i ]
  %.0289447 = phi i64 [ %.0289448, %bb.ek ], [ %.0289449, %.critedge68.i ] ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 264
  %i.acf = load i32, ptr %i.ace, align 8, !tbaa !83
  %i.acg = and i32 %i.acf, 32
  %.not63.i = icmp eq i32 %i.acg, 0
  br i1 %.not63.i, label %retransmit_si_info.exit, label %bb.em

bb.em:                                            ; preds = %bb.el
  %.val71.i = load ptr, ptr %i.n, align 8, !tbaa !39 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.ach = getelementptr inbounds nuw i8, ptr %.val71.i, i64 328 ; 2 uses
  %i.aci = load i8, ptr %i.ach, align 8, !tbaa !24 ; 2 uses
  %i.acj = zext i8 %i.aci to i32
  %i.ack = add nuw nsw i32 %i.acj, 2              ; 2 uses
  %i.acl = lshr i32 %i.ack, 8
  %i.acm = trunc nuw nsw i32 %i.acl to i8
  %8 = or disjoint i8 %i.acm, -16
  store i8 %8, ptr %i.f, align 16, !tbaa !24
  %i.acn = trunc i32 %i.ack to i8
  store i8 %i.acn, ptr %i.cc, align 1, !tbaa !24
  store i8 64, ptr %i.cd, align 2, !tbaa !24
  %i.aco = zext i8 %i.aci to i64
  %i.acp = add nuw nsw i64 %i.aco, 1              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ce, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ach, i64 %i.acp, i1 false)
  %i.acq = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.acp ; 11 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 2 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.val71.i, i64 216
  %i.act = load i32, ptr %i.acs, align 8, !tbaa !207 ; 2 uses
  %i.acu = lshr i32 %i.act, 8
  %i.acv = trunc i32 %i.acu to i8
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acq, i64 3
  store i8 %i.acv, ptr %i.acr, align 1, !tbaa !24
  %i.acx = trunc i32 %i.act to i8
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acq, i64 4
  store i8 %i.acx, ptr %i.acw, align 1, !tbaa !24
  %i.acz = getelementptr inbounds nuw i8, ptr %.val71.i, i64 220
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !205 ; 3 uses
  %i.adb = lshr i32 %i.ada, 8
  %i.adc = trunc i32 %i.adb to i8
  %i.add = getelementptr inbounds nuw i8, ptr %i.acq, i64 5
  store i8 %i.adc, ptr %i.acy, align 1, !tbaa !24
  %i.ade = trunc i32 %i.ada to i8
  store i8 %i.ade, ptr %i.add, align 1, !tbaa !24
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acq, i64 8 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acq, i64 9
  store i8 65, ptr %i.adf, align 1, !tbaa !24
  %i.adh = getelementptr inbounds nuw i8, ptr %.val71.i, i64 168
  %i.adi = load i32, ptr %i.adh, align 8, !tbaa !87 ; 5 uses
  %i.adj = trunc i32 %i.adi to i8
  %i.adk = mul i8 %i.adj, 3
  %i.adl = getelementptr inbounds nuw i8, ptr %i.acq, i64 10 ; 3 uses
  store i8 %i.adk, ptr %i.adg, align 1, !tbaa !24
  %i.adm = icmp sgt i32 %i.adi, 0
  br i1 %i.adm, label %.lr.ph.i85.i, label %mpegts_write_nit.exit.i

.lr.ph.i85.i:                                     ; preds = %bb.em
  %i.adn = getelementptr inbounds nuw i8, ptr %.val71.i, i64 128
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !88 ; 3 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.val71.i, i64 228
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !206
  %i.adr = trunc i32 %i.adq to i8                 ; 3 uses
  %wide.trip.count.i86.i = zext nneg i32 %i.adi to i64 ; 2 uses
  %xtraiter641 = and i64 %wide.trip.count.i86.i, 1
  %i.ads = icmp eq i32 %i.adi, 1
  br i1 %i.ads, label %.epil.preheader640, label %.lr.ph.i85.i.new

.lr.ph.i85.i.new:                                 ; preds = %.lr.ph.i85.i
  %unroll_iter645 = and i64 %wide.trip.count.i86.i, 2147483646
  br label %bb.en

bb.en:                                            ; preds = %bb.en, %.lr.ph.i85.i.new
  %indvars.iv.i87.i = phi i64 [ 0, %.lr.ph.i85.i.new ], [ %indvars.iv.next.i88.i.1, %bb.en ] ; 3 uses
  %.01819.i.i = phi ptr [ %i.adl, %.lr.ph.i85.i.new ], [ %i.aen, %bb.en ] ; 7 uses
  %niter646 = phi i64 [ 0, %.lr.ph.i85.i.new ], [ %niter646.next.1, %bb.en ]
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.ado, i64 %indvars.iv.i87.i
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !90
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 40
  %i.adw = load i32, ptr %i.adv, align 8, !tbaa !101 ; 2 uses
  %i.adx = lshr i32 %i.adw, 8
  %i.ady = trunc i32 %i.adx to i8
  %i.adz = getelementptr inbounds nuw i8, ptr %.01819.i.i, i64 1
  store i8 %i.ady, ptr %.01819.i.i, align 1, !tbaa !24
  %i.aea = trunc i32 %i.adw to i8
  %i.aeb = getelementptr inbounds nuw i8, ptr %.01819.i.i, i64 2
  store i8 %i.aea, ptr %i.adz, align 1, !tbaa !24
  %i.aec = getelementptr inbounds nuw i8, ptr %.01819.i.i, i64 3
  store i8 %i.adr, ptr %i.aeb, align 1, !tbaa !24
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.ado, i64 %indvars.iv.i87.i
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 8
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !90
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 40
  %i.aeh = load i32, ptr %i.aeg, align 8, !tbaa !101 ; 2 uses
  %i.aei = lshr i32 %i.aeh, 8
  %i.aej = trunc i32 %i.aei to i8
  %i.aek = getelementptr inbounds nuw i8, ptr %.01819.i.i, i64 4
  store i8 %i.aej, ptr %i.aec, align 1, !tbaa !24
  %i.ael = trunc i32 %i.aeh to i8
  %i.aem = getelementptr inbounds nuw i8, ptr %.01819.i.i, i64 5
  store i8 %i.ael, ptr %i.aek, align 1, !tbaa !24
  %i.aen = getelementptr inbounds nuw i8, ptr %.01819.i.i, i64 6 ; 3 uses
  store i8 %i.adr, ptr %i.aem, align 1, !tbaa !24
  %indvars.iv.next.i88.i.1 = add nuw nsw i64 %indvars.iv.i87.i, 2 ; 2 uses
  %niter646.next.1 = add i64 %niter646, 2         ; 2 uses
  %niter646.ncmp.1 = icmp eq i64 %niter646.next.1, %unroll_iter645
  br i1 %niter646.ncmp.1, label %mpegts_write_nit.exit.i.loopexit.unr-lcssa, label %bb.en, !llvm.loop !201

mpegts_write_nit.exit.i.loopexit.unr-lcssa:       ; preds = %bb.en
  %lcmp.mod642.not = icmp eq i64 %xtraiter641, 0
  br i1 %lcmp.mod642.not, label %mpegts_write_nit.exit.i, label %.epil.preheader640

.epil.preheader640:                               ; preds = %mpegts_write_nit.exit.i.loopexit.unr-lcssa, %.lr.ph.i85.i
  %indvars.iv.i87.i.epil.init = phi i64 [ 0, %.lr.ph.i85.i ], [ %indvars.iv.next.i88.i.1, %mpegts_write_nit.exit.i.loopexit.unr-lcssa ]
  %.01819.i.i.epil.init = phi ptr [ %i.adl, %.lr.ph.i85.i ], [ %i.aen, %mpegts_write_nit.exit.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod644 = trunc i32 %i.adi to i1
  call void @llvm.assume(i1 %lcmp.mod644)
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.ado, i64 %indvars.iv.i87.i.epil.init
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !90
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 40
  %i.aer = load i32, ptr %i.aeq, align 8, !tbaa !101 ; 2 uses
  %i.aes = lshr i32 %i.aer, 8
  %i.aet = trunc i32 %i.aes to i8
  %i.aeu = getelementptr inbounds nuw i8, ptr %.01819.i.i.epil.init, i64 1
  store i8 %i.aet, ptr %.01819.i.i.epil.init, align 1, !tbaa !24
  %i.aev = trunc i32 %i.aer to i8
  %i.aew = getelementptr inbounds nuw i8, ptr %.01819.i.i.epil.init, i64 2
  store i8 %i.aev, ptr %i.aeu, align 1, !tbaa !24
  %i.aex = getelementptr inbounds nuw i8, ptr %.01819.i.i.epil.init, i64 3
  store i8 %i.adr, ptr %i.aew, align 1, !tbaa !24
  br label %mpegts_write_nit.exit.i

mpegts_write_nit.exit.i:                          ; preds = %.epil.preheader640, %mpegts_write_nit.exit.i.loopexit.unr-lcssa, %bb.em
  %.018.lcssa.i.i = phi ptr [ %i.adl, %bb.em ], [ %i.aen, %mpegts_write_nit.exit.i.loopexit.unr-lcssa ], [ %i.aex, %.epil.preheader640 ]
  %i.aey = getelementptr inbounds nuw i8, ptr %i.acq, i64 6
  %i.aez = ptrtoint ptr %.018.lcssa.i.i to i64    ; 3 uses
  %i.afa = ptrtoint ptr %i.adf to i64
  %i.afb = sub i64 %i.aez, %i.afa                 ; 2 uses
  %i.afc = lshr i64 %i.afb, 8
  %i.afd = trunc i64 %i.afc to i8
  %i.afe = or i8 %i.afd, -16
  %i.aff = getelementptr inbounds nuw i8, ptr %i.acq, i64 7
  store i8 %i.afe, ptr %i.aey, align 1, !tbaa !24
  %i.afg = trunc i64 %i.afb to i8
  store i8 %i.afg, ptr %i.aff, align 1, !tbaa !24
  %i.afh = ptrtoint ptr %i.acr to i64
  %i.afi = sub i64 %i.aez, %i.afh                 ; 2 uses
  %i.afj = lshr i64 %i.afi, 8
  %i.afk = trunc i64 %i.afj to i8
  %i.afl = or i8 %i.afk, -16
  %i.afm = getelementptr inbounds nuw i8, ptr %i.acq, i64 1
  store i8 %i.afl, ptr %i.acq, align 1, !tbaa !24
  %i.afn = trunc i64 %i.afi to i8
  store i8 %i.afn, ptr %i.afm, align 1, !tbaa !24
  %i.afo = getelementptr inbounds nuw i8, ptr %.val71.i, i64 88
  %i.afp = getelementptr inbounds nuw i8, ptr %.val71.i, i64 272
  %i.afq = load i32, ptr %i.afp, align 8, !tbaa !208
  %i.afr = sub i64 %i.aez, %i.cf
  %i.afs = trunc i64 %i.afr to i32
  call fastcc void @mpegts_write_section1(ptr noundef nonnull %i.afo, i32 noundef 64, i32 noundef %i.ada, i32 noundef %i.afq, ptr noundef %i.f, i32 noundef %i.afs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %retransmit_si_info.exit

retransmit_si_info.exit:                          ; preds = %bb.ej, %.critedge68.i, %bb.el, %mpegts_write_nit.exit.i
  %.0289446 = phi i64 [ %.0289448, %bb.ej ], [ %.0289449, %.critedge68.i ], [ %.0289447, %bb.el ], [ %.0289447, %mpegts_write_nit.exit.i ] ; 6 uses
  %i.aft = load i32, ptr %i.ao, align 8, !tbaa !98 ; 2 uses
  %i.afu = icmp sgt i32 %i.aft, 1
  br i1 %i.afu, label %bb.eo, label %bb.fa

bb.eo:                                            ; preds = %retransmit_si_info.exit
  %i.afv = load i64, ptr %i.ap, align 8, !tbaa !110
  %i.afw = add nsw i64 %i.afv, 11
  %i.afx = zext nneg i32 %i.aft to i64
  %i.afy = call i64 @av_rescale(i64 noundef %i.afw, i64 noundef 216000000, i64 noundef %i.afx) #13
  %i.afz = load i64, ptr %i.aq, align 8, !tbaa !46
  %i.aga = add nsw i64 %i.afz, %i.afy             ; 4 uses
  %i.agb = load i64, ptr %i.ci, align 8, !tbaa !221
  %.not368 = icmp slt i64 %i.aga, %i.agb
  br i1 %.not368, label %bb.eu, label %.preheader

.preheader:                                       ; preds = %bb.eo
  %i.agc = load i32, ptr %i.bi, align 4, !tbaa !84 ; 3 uses
  %.not537 = icmp eq i32 %i.agc, 0
  br i1 %.not537, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.et, %.preheader
  %.0302.lcssa = phi i32 [ 0, %.preheader ], [ %.2304, %bb.et ]
  %.1290.lcssa = phi i64 [ %i.aga, %.preheader ], [ %.3, %bb.et ]
  %.0287.lcssa = phi i64 [ 9223372036854775807, %.preheader ], [ %.1288, %bb.et ]
  store i64 %.0287.lcssa, ptr %i.ci, align 8, !tbaa !221
  br label %bb.eu

.lr.ph:                                           ; preds = %.preheader, %bb.et
  %.pre560563 = phi i32 [ %.pre560564, %bb.et ], [ %i.agc, %.preheader ] ; 3 uses
  %i.agd = phi i32 [ %i.ahg, %bb.et ], [ %i.agc, %.preheader ] ; 2 uses
  %.0286517 = phi i32 [ %i.agg, %bb.et ], [ 0, %.preheader ] ; 3 uses
  %.0287516 = phi i64 [ %.1288, %bb.et ], [ 9223372036854775807, %.preheader ] ; 2 uses
  %.1290515 = phi i64 [ %.3, %bb.et ], [ %i.aga, %.preheader ] ; 5 uses
  %.0302514 = phi i32 [ %.2304, %bb.et ], [ 0, %.preheader ] ; 3 uses
  %i.age = load i32, ptr %i.cj, align 8, !tbaa !86 ; 2 uses
  %i.agf = icmp slt i32 %.0286517, %i.age
  %i.agg = add nuw nsw i32 %.0286517, 1           ; 4 uses
  %i.agh = icmp eq i32 %i.agg, %i.agd
  %. = select i1 %i.agh, i32 %i.age, i32 %i.agg
  %i.agi = select i1 %i.agf, i32 %.0286517, i32 %.
  %i.agj = load ptr, ptr %i.bj, align 8, !tbaa !36
  %i.agk = sext i32 %i.agi to i64
  %i.agl = getelementptr inbounds [8 x i8], ptr %i.agj, i64 %i.agk
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !38 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 24
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !40 ; 3 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 72 ; 2 uses
  %i.agq = load i64, ptr %i.agp, align 8, !tbaa !99 ; 6 uses
  %.not383 = icmp eq i64 %i.agq, 0
  br i1 %.not383, label %bb.et, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph
  %i.agr = getelementptr inbounds nuw i8, ptr %i.ago, i64 80 ; 3 uses
  %i.ags = load i64, ptr %i.agr, align 8, !tbaa !100 ; 3 uses
  %i.agt = sub nsw i64 %.1290515, %i.ags
end_hunk_0
