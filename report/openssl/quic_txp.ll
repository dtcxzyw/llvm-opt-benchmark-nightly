Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_txp?download=true
inline.NumInlined: 112
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ossl_quic_tx_packetiser_generate:bb.a
  %i.ajl = phi i64 [ %.pre557, %.txp_pkt_postgen_update_pkt_overhead.exit.2_crit_edge ], [ %i.aji, %bb.ie ], [ %i.aim, %bb.ic ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ajm = getelementptr inbounds nuw i8, ptr %16, i64 840
  %i.ajn = load i64, ptr %i.ajm, align 8, !tbaa !182
  %i.ajo = add i64 %i.ajn, %.197.1
  %i.ajp = add i64 %i.ajo, %i.ajl
  br label %.preheader.3

.preheader.3:                                     ; preds = %txp_pkt_postgen_update_pkt_overhead.exit.2, %bb.hy, %.preheader.2
  %.197.2 = phi i64 [ %i.ajp, %txp_pkt_postgen_update_pkt_overhead.exit.2 ], [ %.197.1, %bb.hy ], [ %.197.1, %.preheader.2 ] ; 3 uses
  %.2.2 = phi i32 [ %.1.2, %txp_pkt_postgen_update_pkt_overhead.exit.2 ], [ %.2.1, %bb.hy ], [ %.2.1, %.preheader.2 ] ; 4 uses
  %i.ajq = load i32, ptr %i.w, align 16, !tbaa !137
  %.not131.3 = icmp eq i32 %i.ajq, 0
  br i1 %.not131.3, label %bb.im, label %bb.if

bb.if:                                            ; preds = %.preheader.3
  %i.ajr = getelementptr inbounds nuw i8, ptr %16, i64 880 ; 3 uses
  %i.ajs = load i64, ptr %i.ajr, align 16, !tbaa !188 ; 3 uses
  %.not132.3 = icmp eq i64 %i.ajs, 0
  br i1 %.not132.3, label %bb.im, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.ajt = icmp eq i32 %.2.2, 4
  br i1 %i.ajt, label %bb.ih, label %bb.ij

bb.ih:                                            ; preds = %bb.ig
  %i.aju = getelementptr inbounds nuw i8, ptr %16, i64 1140
  %i.ajv = load i32, ptr %i.aju, align 4
  %i.ajw = and i32 %i.ajv, 16384
  %.not133.3 = icmp eq i32 %i.ajw, 0
  br i1 %.not133.3, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.ajx = getelementptr inbounds nuw i8, ptr %16, i64 916
  %i.ajy = load i8, ptr %i.ajx, align 4
  %i.ajz = and i8 %i.ajy, 2
  %.not134.3 = icmp eq i8 %i.ajz, 0
  %spec.select136.3 = select i1 %.not134.3, i32 3, i32 4
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih, %bb.ig
  %.1.3 = phi i32 [ %spec.select136.3, %bb.ii ], [ %.2.2, %bb.ig ], [ 4, %bb.ih ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.aka = getelementptr inbounds nuw i8, ptr %16, i64 912
  %i.akb = load i32, ptr %i.aka, align 16, !tbaa !81 ; 2 uses
  %i.akc = icmp eq i32 %i.akb, 0
  br i1 %i.akc, label %txp_pkt_postgen_update_pkt_overhead.exit.3, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.akd = load ptr, ptr %i.x, align 8, !tbaa !45
  %i.ake = call i32 @ossl_qtx_calculate_ciphertext_payload_len(ptr noundef %i.akd, i32 noundef %i.akb, i64 noundef %i.ajs, ptr noundef nonnull %i.a) #8
  %.not.i156.3 = icmp eq i32 %i.ake, 0
  br i1 %.not.i156.3, label %.txp_pkt_postgen_update_pkt_overhead.exit.3_crit_edge, label %bb.il

.txp_pkt_postgen_update_pkt_overhead.exit.3_crit_edge: ; preds = %bb.ik
  %.pre558 = load i64, ptr %i.ajr, align 16, !tbaa !188
  br label %txp_pkt_postgen_update_pkt_overhead.exit.3

bb.il:                                            ; preds = %bb.ik
  %i.akf = load i64, ptr %i.a, align 8, !tbaa !30
  %i.akg = getelementptr inbounds nuw i8, ptr %16, i64 1016
  %i.akh = getelementptr inbounds nuw i8, ptr %16, i64 1088
  store i64 %i.akf, ptr %i.akh, align 16, !tbaa !189
  %i.aki = getelementptr inbounds nuw i8, ptr %16, i64 1024
  %i.akj = load i8, ptr %i.aki, align 16, !tbaa !190
  %i.akk = zext i8 %i.akj to i64
  %i.akl = call i64 @ossl_quic_wire_get_encoded_pkt_hdr_len(i64 noundef %i.akk, ptr noundef nonnull %i.akg) #8
  %i.akm = load i64, ptr %i.a, align 8, !tbaa !30
  %i.akn = add i64 %i.akm, %i.akl
  %i.ako = load i64, ptr %i.ajr, align 16, !tbaa !188 ; 2 uses
  %i.akp = sub i64 %i.akn, %i.ako
  %i.akq = getelementptr inbounds nuw i8, ptr %16, i64 1128
  store i64 %i.akp, ptr %i.akq, align 8, !tbaa !182
  br label %txp_pkt_postgen_update_pkt_overhead.exit.3

txp_pkt_postgen_update_pkt_overhead.exit.3:       ; preds = %.txp_pkt_postgen_update_pkt_overhead.exit.3_crit_edge, %bb.il, %bb.ij
  %i.akr = phi i64 [ %.pre558, %.txp_pkt_postgen_update_pkt_overhead.exit.3_crit_edge ], [ %i.ako, %bb.il ], [ %i.ajs, %bb.ij ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.aks = getelementptr inbounds nuw i8, ptr %16, i64 1128
  %i.akt = load i64, ptr %i.aks, align 8, !tbaa !182
  %i.aku = add i64 %i.akt, %.197.2
  %i.akv = add i64 %i.aku, %i.akr
  br label %bb.im

bb.im:                                            ; preds = %txp_pkt_postgen_update_pkt_overhead.exit.3, %bb.if, %.preheader.3
  %.197.3 = phi i64 [ %i.akv, %txp_pkt_postgen_update_pkt_overhead.exit.3 ], [ %.197.2, %bb.if ], [ %.197.2, %.preheader.3 ] ; 2 uses
  %.2.3 = phi i32 [ %.1.3, %txp_pkt_postgen_update_pkt_overhead.exit.3 ], [ %.2.2, %bb.if ], [ %.2.2, %.preheader.3 ] ; 2 uses
  %i.akw = icmp ne i32 %.2.3, 4
  %i.akx = icmp ult i64 %.197.3, 1200             ; 2 uses
  %or.cond6 = select i1 %i.akw, i1 %i.akx, i1 false
  br i1 %or.cond6, label %bb.in, label %bb.iu

bb.in:                                            ; preds = %bb.im
  %i.aky = sub nuw nsw i64 1200, %.197.3          ; 2 uses
  %i.akz = zext nneg i32 %.2.3 to i64
  %i.ala = getelementptr inbounds nuw [288 x i8], ptr %16, i64 %i.akz ; 7 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 128
  %i.alc = load i32, ptr %i.alb, align 16, !tbaa !137
  %.not.i158 = icmp eq i32 %i.alc, 0
  br i1 %.not.i158, label %.thread208, label %bb.io, !prof !91

bb.io:                                            ; preds = %bb.in
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ala, i64 136 ; 3 uses
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !82
  %.not14.i = icmp eq ptr %i.ale, null
  br i1 %.not14.i, label %.thread208, label %bb.ip, !prof !91

bb.ip:                                            ; preds = %bb.io
  %i.alf = call fastcc ptr @tx_helper_begin(ptr noundef nonnull %i.ala) ; 2 uses
  %i.alg = icmp eq ptr %i.alf, null
  br i1 %i.alg, label %.thread208, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.alh = call i32 @ossl_quic_wire_encode_padding(ptr noundef nonnull %i.alf, i64 noundef range(i64 1, 1201) %i.aky) #8
  %.not15.i = icmp eq i32 %i.alh, 0
  br i1 %.not15.i, label %bb.ir, label %bb.it

bb.ir:                                            ; preds = %bb.iq
  %i.ali = getelementptr inbounds nuw i8, ptr %i.ala, i64 120 ; 3 uses
  %i.alj = load i8, ptr %i.ali, align 8
  %i.alk = and i8 %i.alj, 1
  %.not.i.i160 = icmp eq i8 %i.alk, 0
  br i1 %.not.i.i160, label %.thread208, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.all = getelementptr inbounds nuw i8, ptr %i.ala, i64 64
  call void @WPACKET_cleanup(ptr noundef nonnull %i.all) #8
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ala, i64 56
  %i.aln = load i8, ptr %i.ali, align 8
  %i.alo = and i8 %i.aln, -2
  store i8 %i.alo, ptr %i.ali, align 8
  store ptr null, ptr %i.alm, align 8, !tbaa !79
  br label %.thread208

bb.it:                                            ; preds = %bb.iq
  %i.alp = call fastcc i32 @tx_helper_commit(ptr noundef nonnull %i.ala)
  %.not16.i = icmp eq i32 %i.alp, 0
  br i1 %.not16.i, label %.thread208, label %.thread233

.thread233:                                       ; preds = %bb.it
  %i.alq = load ptr, ptr %i.ald, align 8, !tbaa !82 ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 8 ; 2 uses
  %i.als = load i64, ptr %i.alr, align 8, !tbaa !183
  %i.alt = add i64 %i.als, %i.aky
  store i64 %i.alt, ptr %i.alr, align 8, !tbaa !183
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alq, i64 32 ; 2 uses
  %i.alv = load i8, ptr %i.alu, align 8
  %i.alw = or i8 %i.alv, 4
  store i8 %i.alw, ptr %i.alu, align 8
  %i.alx = load ptr, ptr %i.ald, align 8, !tbaa !82
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 32 ; 2 uses
  %i.alz = load i8, ptr %i.aly, align 8
  %i.ama = or i8 %i.alz, 4
  store i8 %i.ama, ptr %i.aly, align 8
  br label %bb.iv

bb.iu:                                            ; preds = %bb.im
  br i1 %i.akx, label %.thread208, label %bb.iv

bb.iv:                                            ; preds = %.thread233, %bb.iu, %txp_should_try_staging.exit.thread197
  %i.amb = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.amd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ame = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.amf = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.amh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ami = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.amj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.amk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aml = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.ku
  %indvars.iv546 = phi i64 [ 0, %bb.iv ], [ %indvars.iv.next547, %bb.ku ] ; 3 uses
  %.0106411 = phi i64 [ 0, %bb.iv ], [ %.1107, %bb.ku ] ; 7 uses
  %i.amo = getelementptr inbounds nuw [288 x i8], ptr %16, i64 %indvars.iv546 ; 7 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 128 ; 2 uses
  %i.amq = load i32, ptr %i.amp, align 16, !tbaa !137
  %.not125 = icmp eq i32 %i.amq, 0
  br i1 %.not125, label %bb.ku, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amo, i64 16 ; 2 uses
  %i.ams = load i64, ptr %i.amr, align 16, !tbaa !188 ; 3 uses
  %i.amt = icmp eq i64 %i.ams, 0
  br i1 %i.amt, label %bb.ku, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.amu = load i64, ptr %i.amb, align 8, !tbaa !27 ; 3 uses
  %.not241 = icmp ugt i64 %i.amu, %i.ams
  br i1 %.not241, label %bb.iz, label %.thread208

bb.iz:                                            ; preds = %bb.iy
  %.not.i161 = icmp eq i64 %i.amu, -1
  br i1 %.not.i161, label %ossl_quic_tx_packetiser_consume_unvalidated_credit.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.iz
  %.sink.i = call i64 @llvm.usub.sat.i64(i64 %i.amu, i64 %i.ams)
  store i64 %.sink.i, ptr %i.amb, align 8, !tbaa !27
  br label %ossl_quic_tx_packetiser_consume_unvalidated_credit.exit

ossl_quic_tx_packetiser_consume_unvalidated_credit.exit: ; preds = %bb.iz, %.sink.split.i
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amo, i64 48
  %i.amw = load i32, ptr %i.amv, align 16, !tbaa !81 ; 5 uses
  %switch.selectcmp.i.i162 = icmp eq i32 %i.amw, 2
  %switch.select.i.i163 = select i1 %switch.selectcmp.i.i162, i32 1, i32 2
  %switch.selectcmp2.i.i164 = icmp eq i32 %i.amw, 0
  %switch.select3.i.i165 = select i1 %switch.selectcmp2.i.i164, i32 0, i32 %switch.select.i.i163 ; 3 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amo, i64 136 ; 5 uses
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !82 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.amz = icmp ugt i32 %i.amw, 3
  br i1 %i.amz, label %.thread227, label %bb.ja

bb.ja:                                            ; preds = %ossl_quic_tx_packetiser_consume_unvalidated_credit.exit
  %i.ana = zext nneg i32 %i.amw to i64            ; 2 uses
  %gep413 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %i.ana
  %i.anb = load i32, ptr %gep413, align 4, !tbaa !28
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amo, i64 152
  store ptr %i.anc, ptr %2, align 8, !tbaa !194
  %i.and = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ana
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 568
  %i.anf = load ptr, ptr %i.ane, align 8, !tbaa !53
  store ptr %i.anf, ptr %i.amc, align 8, !tbaa !195
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amo, i64 40
  %i.anh = load i64, ptr %i.ang, align 8, !tbaa !196
  store i64 %i.anh, ptr %i.amd, align 8, !tbaa !197
  store ptr null, ptr %i.ame, align 8, !tbaa !198
  %i.ani = call i32 @BIO_ADDR_family(ptr noundef nonnull %i.amf) #8
  %i.anj = icmp eq i32 %i.ani, 0
  %i.ank = select i1 %i.anj, ptr null, ptr %i.amf
  store ptr %i.ank, ptr %i.amg, align 8, !tbaa !199
  %i.anl = zext nneg i32 %switch.select3.i.i165 to i64 ; 2 uses
  %i.anm = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.anl ; 3 uses
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !30
  store i64 %i.ann, ptr %i.amh, align 8, !tbaa !200
  store i32 1, ptr %i.ami, align 8, !tbaa !201
  %i.ano = getelementptr inbounds nuw i8, ptr %i.amo, i64 144 ; 2 uses
  %.086130.i = load ptr, ptr %i.ano, align 16, !tbaa !166 ; 2 uses
  %.not96131.i = icmp eq ptr %.086130.i, null
  br i1 %.not96131.i, label %._crit_edge.i, label %.lr.ph.i166

.lr.ph.i166:                                      ; preds = %bb.ja, %bb.jc
  %.086132.i = phi ptr [ %.086.i, %bb.jc ], [ %.086130.i, %bb.ja ] ; 3 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %.086132.i, i64 256
  %i.anq = load i64, ptr %i.anp, align 8          ; 2 uses
  %i.anr = and i64 %i.anq, 1610612736
  %or.cond.i167 = icmp eq i64 %i.anr, 0
  br i1 %or.cond.i167, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %.lr.ph.i166
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.ans = getelementptr inbounds nuw i8, ptr %.086132.i, i64 56
  %i.ant = load i64, ptr %i.ans, align 8, !tbaa !168
  store i64 %i.ant, ptr %3, align 8, !tbaa !162
  store i64 -1, ptr %i.amj, align 8, !tbaa !163
  store i64 0, ptr %i.amk, align 8, !tbaa !164
  %i.anu = load i8, ptr %i.aml, align 8
  %i.anv = trunc i64 %i.anq to i32
  %sh.diff.i = lshr i32 %i.anv, 28
  %tr.sh.diff.i = trunc nuw nsw i32 %sh.diff.i to i8
  %i.anw = and i8 %i.anu, -8
  %i.anx = and i8 %tr.sh.diff.i, 6
  %i.any = or disjoint i8 %i.anw, %i.anx
  store i8 %i.any, ptr %i.aml, align 8
  %i.anz = call i32 @ossl_quic_txpim_pkt_append_chunk(ptr noundef %i.amy, ptr noundef nonnull %3) #8
  %.not125.not.i = icmp eq i32 %i.anz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br i1 %.not125.not.i, label %.thread227, label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %.lr.ph.i166
  %i.aoa = getelementptr inbounds nuw i8, ptr %.086132.i, i64 48
  %.086.i = load ptr, ptr %i.aoa, align 8, !tbaa !166 ; 2 uses
  %.not96.i = icmp eq ptr %.086.i, null
  br i1 %.not96.i, label %._crit_edge.i, label %.lr.ph.i166, !llvm.loop !134

._crit_edge.i:                                    ; preds = %bb.jc, %bb.ja
  %i.aob = call i32 @ossl_quic_fifd_pkt_commit(ptr noundef nonnull %i.amm, ptr noundef %i.amy) #8
  %.not97.i = icmp eq i32 %i.aob, 0
  br i1 %.not97.i, label %.thread227, label %bb.jd

bb.jd:                                            ; preds = %._crit_edge.i
  %i.aoc = load i64, ptr %i.anm, align 8, !tbaa !30
  %i.aod = add i64 %i.aoc, 1
  store i64 %i.aod, ptr %i.anm, align 8, !tbaa !30
  %i.aoe = load ptr, ptr %i.x, align 8, !tbaa !45
  %i.aof = call i32 @ossl_qtx_write_pkt(ptr noundef %i.aoe, ptr noundef nonnull %2) #8
  %.not98.i = icmp eq i32 %i.aof, 0
  br i1 %.not98.i, label %.thread229, label %.preheader.i168

.preheader.i168:                                  ; preds = %bb.jd
  %.1133.i = load ptr, ptr %i.ano, align 16, !tbaa !166 ; 2 uses
  %.not99134.i = icmp eq ptr %.1133.i, null
  br i1 %.not99134.i, label %._crit_edge138.i, label %.lr.ph137.i

.lr.ph137.i:                                      ; preds = %.preheader.i168, %bb.jp
  %.1136.i = phi ptr [ %.1.i, %bb.jp ], [ %.1133.i, %.preheader.i168 ] ; 8 uses
  %.087135.i = phi i32 [ %.2.i, %bb.jp ], [ 1, %.preheader.i168 ] ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %.1136.i, i64 256 ; 5 uses
  %i.aoh = load i64, ptr %i.aog, align 8          ; 3 uses
  %i.aoi = and i64 %i.aoh, 268435456
  %.not113.i = icmp eq i64 %i.aoi, 0
  br i1 %.not113.i, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %.lr.ph137.i
  %i.aoj = and i64 %i.aoh, -8589934593
  store i64 %i.aoj, ptr %i.aog, align 8
  %i.aok = getelementptr inbounds nuw i8, ptr %.1136.i, i64 160
  %i.aol = call i32 @ossl_quic_rxfc_has_cwm_changed(ptr noundef nonnull %i.aok, i32 noundef 1) #8 ; 0 uses
  %.pre.i169 = load i64, ptr %i.aog, align 8
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %.lr.ph137.i
  %i.aom = phi i64 [ %.pre.i169, %bb.je ], [ %i.aoh, %.lr.ph137.i ] ; 3 uses
  %i.aon = and i64 %i.aom, 536870912              ; 2 uses
  %.not114.not.i = icmp eq i64 %i.aon, 0
  %i.aoo = and i64 %i.aom, -17179869185
  %i.aop = select i1 %.not114.not.i, i64 %i.aom, i64 %i.aoo ; 3 uses
  %i.aoq = and i64 %i.aop, 1073741824             ; 2 uses
  %i.aor = or disjoint i64 %i.aoq, %i.aon
  %.not.i170 = icmp eq i64 %i.aor, 0
  br i1 %.not.i170, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %.not115.not.i = icmp eq i64 %i.aoq, 0
  %i.aos = and i64 %i.aop, -34359738369
  %simplifycfg.merge.i = select i1 %.not115.not.i, i64 %i.aop, i64 %i.aos
  store i64 %simplifycfg.merge.i, ptr %i.aog, align 8
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf
  %i.aot = getelementptr inbounds nuw i8, ptr %.1136.i, i64 96 ; 2 uses
  %i.aou = load i64, ptr %i.aot, align 8, !tbaa !165 ; 2 uses
  %.not116.i = icmp eq i64 %i.aou, 0
  br i1 %.not116.i, label %bb.jl, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.aov = getelementptr inbounds nuw i8, ptr %.1136.i, i64 128
  %i.aow = call i32 @ossl_quic_txfc_consume_credit(ptr noundef nonnull %i.aov, i64 noundef %i.aou) #8
  %.not117.i = icmp eq i32 %i.aow, 0
  br i1 %.not117.i, label %bb.jj, label %bb.jk, !prof !91

bb.jj:                                            ; preds = %bb.ji
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %.188.i = phi i32 [ %.087135.i, %bb.ji ], [ 0, %bb.jj ]
  store i64 0, ptr %i.aot, align 8, !tbaa !165
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jh
  %.2.i = phi i32 [ %.188.i, %bb.jk ], [ %.087135.i, %bb.jh ] ; 2 uses
  %i.aox = load ptr, ptr %i.at, align 8, !tbaa !36
  call void @ossl_quic_stream_map_update_state(ptr noundef %i.aox, ptr noundef nonnull %.1136.i) #8
  %.1.val.i = load i64, ptr %i.aog, align 8
  %i.aoy = lshr i64 %.1.val.i, 8
  %trunc.i.i = trunc i64 %i.aoy to i8
  %i.aoz = add i8 %trunc.i.i, -4
  %switch.i.i = icmp ult i8 %i.aoz, -3
  br i1 %switch.i.i, label %bb.jp, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.apa = getelementptr inbounds nuw i8, ptr %.1136.i, i64 112 ; 2 uses
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !44
  %i.apc = call i32 @ossl_quic_sstream_has_pending(ptr noundef %i.apb) #8
  %.not119.i = icmp eq i32 %i.apc, 0
  br i1 %.not119.i, label %bb.jn, label %bb.jp

bb.jn:                                            ; preds = %bb.jm
  %i.apd = load ptr, ptr %i.apa, align 8, !tbaa !44
  %i.ape = call i32 @ossl_quic_sstream_get_final_size(ptr noundef %i.apd, ptr noundef null) #8
  %.not120.i = icmp eq i32 %i.ape, 0
  br i1 %.not120.i, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.apf = load ptr, ptr %i.at, align 8, !tbaa !36
  %i.apg = call i32 @ossl_quic_stream_map_notify_all_data_sent(ptr noundef %i.apf, ptr noundef nonnull %.1136.i) #8 ; 0 uses
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn, %bb.jm, %bb.jl
  %i.aph = getelementptr inbounds nuw i8, ptr %.1136.i, i64 48
  %.1.i = load ptr, ptr %i.aph, align 8, !tbaa !166 ; 2 uses
  %.not99.i = icmp eq ptr %.1.i, null
  br i1 %.not99.i, label %._crit_edge138.i.loopexit, label %.lr.ph137.i, !llvm.loop !135

._crit_edge138.i.loopexit:                        ; preds = %bb.jp
  %i.api = icmp eq i32 %.2.i, 0
  br label %._crit_edge138.i

._crit_edge138.i:                                 ; preds = %._crit_edge138.i.loopexit, %.preheader.i168
  %.087.lcssa.i = phi i1 [ false, %.preheader.i168 ], [ %i.api, %._crit_edge138.i.loopexit ]
  %i.apj = getelementptr inbounds nuw i8, ptr %i.amy, i64 32 ; 2 uses
  %i.apk = load i8, ptr %i.apj, align 8
  %i.apl = and i8 %i.apk, 8
  %.not100.i = icmp eq i8 %i.apl, 0
  br i1 %.not100.i, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %._crit_edge138.i
  %i.apm = shl nuw nsw i32 1, %switch.select3.i.i165
end_hunk_0
