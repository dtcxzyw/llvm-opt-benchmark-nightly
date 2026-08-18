inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_str_vappendf:bb.a
  %i.zs = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv200.i
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 2
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !229
  %i.zv = sext i8 %i.zu to i64
  %i.zw = add i64 %i.zr, -48
  %.0118.i.2 = add i64 %i.zw, %i.zv
  %i.zx = mul i64 %.0118.i.2, 10
  %i.zy = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv200.i
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 3
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !229
  %i.aab = sext i8 %i.aaa to i64
  %indvars.iv.next201.i.3 = add nuw nsw i64 %indvars.iv200.i, 4 ; 2 uses
  %i.aac = add i64 %i.zx, -48
  %.0118.i.3 = add i64 %i.aac, %i.aab             ; 3 uses
  %niter2124.next.3 = add nuw i64 %niter2124, 4   ; 2 uses
  %niter2124.ncmp.3 = icmp eq i64 %niter2124.next.3, %unroll_iter2123
  br i1 %niter2124.ncmp.3, label %.thread169.sink.split.i.loopexit.unr-lcssa, label %.lr.ph182.i, !llvm.loop !338

.thread169.sink.split.i.loopexit.unr-lcssa:       ; preds = %.lr.ph182.i
  %lcmp.mod2120.not = icmp eq i64 %xtraiter2119, 0
  br i1 %lcmp.mod2120.not, label %.thread169.sink.split.i, label %.lr.ph182.i.epil.preheader

.lr.ph182.i.epil.preheader:                       ; preds = %.thread169.sink.split.i.loopexit.unr-lcssa, %.lr.ph182.preheader.i
  %indvars.iv200.i.epil.init = phi i64 [ 1, %.lr.ph182.preheader.i ], [ %indvars.iv.next201.i.3, %.thread169.sink.split.i.loopexit.unr-lcssa ]
  %.0118180.i.epil.init = phi i64 [ %.0118178.i, %.lr.ph182.preheader.i ], [ %.0118.i.3, %.thread169.sink.split.i.loopexit.unr-lcssa ]
  %lcmp.mod2122 = icmp ne i64 %xtraiter2119, 0
  call void @llvm.assume(i1 %lcmp.mod2122)
  br label %.lr.ph182.i.epil

.lr.ph182.i.epil:                                 ; preds = %.lr.ph182.i.epil, %.lr.ph182.i.epil.preheader
  %indvars.iv200.i.epil = phi i64 [ %indvars.iv200.i.epil.init, %.lr.ph182.i.epil.preheader ], [ %indvars.iv.next201.i.epil, %.lr.ph182.i.epil ] ; 2 uses
  %.0118180.i.epil = phi i64 [ %.0118180.i.epil.init, %.lr.ph182.i.epil.preheader ], [ %.0118.i.epil, %.lr.ph182.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph182.i.epil.preheader ], [ %epil.iter.next, %.lr.ph182.i.epil ]
  %i.aad = mul i64 %.0118180.i.epil, 10
  %i.aae = getelementptr inbounds nuw i8, ptr %i.vb, i64 %indvars.iv200.i.epil
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !229
  %i.aag = sext i8 %i.aaf to i64
  %indvars.iv.next201.i.epil = add nuw nsw i64 %indvars.iv200.i.epil, 1
  %i.aah = add i64 %i.aad, -48
  %.0118.i.epil = add i64 %i.aah, %i.aag          ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2119
  br i1 %epil.iter.cmp.not, label %.thread169.sink.split.i, label %.lr.ph182.i.epil, !llvm.loop !339

.thread169.sink.split.i:                          ; preds = %.thread169.sink.split.i.loopexit.unr-lcssa, %.lr.ph182.i.epil, %bb.gk, %._crit_edge189.i, %.preheader171.13.i
  %.0123174.sink236.i = phi i32 [ 0, %.preheader171.13.i ], [ %.0123185.lcssa229.i, %._crit_edge189.i ], [ %indvars1497.le, %bb.gk ], [ %indvars1497.le, %.lr.ph182.i.epil ], [ %indvars1497.le, %.thread169.sink.split.i.loopexit.unr-lcssa ] ; 2 uses
  %.1.sink.i = phi i64 [ 1, %.preheader171.13.i ], [ %i.yo, %._crit_edge189.i ], [ %.0118178.i, %bb.gk ], [ %.0118.i.3, %.thread169.sink.split.i.loopexit.unr-lcssa ], [ %.0118.i.epil, %.lr.ph182.i.epil ]
  %i.aai = add i32 %i.rq, %.0123174.sink236.i
  %i.aaj = sub i32 %.0130161.i, %i.aai
  %i.aak = call fastcc double @sqlite3Fp10Convert2(i64 noundef %.1.sink.i, i32 noundef %i.aaj)
  %i.aal = fcmp oeq double %.0124.i, %i.aak
  %i.aam = add nsw i32 %.0123174.sink236.i, 1
  %.2.i = select i1 %i.aal, i32 %i.aam, i32 17
  br label %.thread169.i

.thread169.i:                                     ; preds = %.thread169.sink.split.i, %bb.gi, %bb.gh, %bb.gg, %.thread167.i, %bb.gc
  %.4.i = phi i32 [ %i.vf, %bb.gc ], [ 17, %.thread167.i ], [ 17, %bb.gi ], [ 17, %bb.gh ], [ 17, %bb.gg ], [ %.2.i, %.thread169.sink.split.i ] ; 4 uses
  %i.aan = sext i32 %.4.i to i64                  ; 2 uses
  %i.aao = getelementptr inbounds i8, ptr %i.vb, i64 %i.aan
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !229
  %i.aaq = icmp sgt i8 %i.aap, 52
  br i1 %i.aaq, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.thread169.i, %bb.gl
  %indvars.iv210.i = phi i64 [ %indvars.iv.next211.i, %bb.gl ], [ %i.aan, %.thread169.i ]
  %indvars.iv.next211.i = add nsw i64 %indvars.iv210.i, -1 ; 3 uses
  %i.aar = getelementptr inbounds i8, ptr %i.vb, i64 %indvars.iv.next211.i ; 3 uses
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !229
  %i.aat = add i8 %i.aas, 1                       ; 2 uses
  store i8 %i.aat, ptr %i.aar, align 1, !tbaa !229
  %i.aau = icmp slt i8 %i.aat, 58
  br i1 %i.aau, label %.loopexit.i, label %bb.gl

bb.gl:                                            ; preds = %.preheader.i
  store i8 48, ptr %i.aar, align 1, !tbaa !229
  %i.aav = icmp eq i64 %indvars.iv.next211.i, 0
  br i1 %i.aav, label %bb.gm, label %.preheader.i

bb.gm:                                            ; preds = %bb.gl
  store i8 49, ptr %i.vc, align 1, !tbaa !229
  %i.aaw = add nsw i32 %.4.i, 1
  %i.aax = load i32, ptr %i.af, align 4, !tbaa !330
  %i.aay = add nsw i32 %i.aax, 1
  store i32 %i.aay, ptr %i.af, align 4, !tbaa !330
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.gm, %.thread169.i, %bb.gb, %bb.ga, %bb.fy
  %.2132.i = phi i32 [ %i.uk, %bb.ga ], [ %.4.i, %.thread169.i ], [ %.0130161.i, %bb.gb ], [ %i.uk, %bb.fy ], [ %i.aaw, %bb.gm ], [ %.4.i, %.preheader.i ]
  %.1128.i = phi ptr [ %i.up, %bb.ga ], [ %i.vb, %.thread169.i ], [ %i.vb, %bb.gb ], [ %i.up, %bb.fy ], [ %i.vc, %bb.gm ], [ %i.vb, %.preheader.i ] ; 2 uses
  %i.aaz = sext i32 %.2132.i to i64
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gn, %.loopexit.i
  %indvars.iv213.i = phi i64 [ %indvars.iv.next214.i, %bb.gn ], [ %i.aaz, %.loopexit.i ] ; 3 uses
  %i.aba = getelementptr i8, ptr %.1128.i, i64 %indvars.iv213.i
  %i.abb = getelementptr i8, ptr %i.aba, i64 -1
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !229
  %i.abd = icmp eq i8 %i.abc, 48
  %indvars.iv.next214.i = add nsw i64 %indvars.iv213.i, -1
  br i1 %i.abd, label %bb.gn, label %bb.go, !llvm.loop !340

bb.go:                                            ; preds = %bb.gn
  %i.abe = trunc nsw i64 %indvars.iv213.i to i32
  store i32 %i.abe, ptr %3, align 8, !tbaa !329
  %.pr.pre = load i8, ptr %i.ad, align 1, !tbaa !326
  br label %sqlite3FpDecode.exit

sqlite3FpDecode.exit:                             ; preds = %bb.go, %bb.fj
  %i.abf = phi i8 [ %i.ra, %bb.fj ], [ %.pr.pre, %bb.go ]
  %.1128.sink.i = phi ptr [ %i.ag, %bb.fj ], [ %.1128.i, %bb.go ] ; 2 uses
  store ptr %.1128.sink.i, ptr %i.ah, align 8, !tbaa !331
  switch i8 %i.abf, label %bb.gq [
    i8 0, label %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge
    i8 2, label %bb.gp
  ]

sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge: ; preds = %sqlite3FpDecode.exit
  %.pre.pre.pre = load i32, ptr %i.af, align 4
  br label %sqlite3FpDecode.exit._crit_edge

bb.gp:                                            ; preds = %sqlite3FpDecode.exit
  %.not884 = icmp eq i8 %.16881105, 0             ; 2 uses
  %i.abg = select i1 %.not884, ptr @.str.2, ptr @.str.1
  %i.abh = select i1 %.not884, i32 3, i32 4
  br label %printfTempBuf.exit953

bb.gq:                                            ; preds = %sqlite3FpDecode.exit
  %.not872 = icmp eq i8 %.16881105, 0
  br i1 %.not872, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  store i8 57, ptr %.1128.sink.i, align 1, !tbaa !229
  store i32 1000, ptr %i.af, align 4, !tbaa !330
  store i32 1, ptr %3, align 8, !tbaa !329
  br label %sqlite3FpDecode.exit._crit_edge

bb.gs:                                            ; preds = %bb.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  %i.abi = load i8, ptr %i.ae, align 4, !tbaa !328
  %i.abj = icmp eq i8 %i.abi, 45
  br i1 %i.abj, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %.not873 = icmp eq i8 %.16991099, 0
  br i1 %.not873, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  store i8 %.16991099, ptr %i.a, align 16, !tbaa !229
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gt, %bb.gu, %bb.gs
  %.9748 = phi ptr [ %i.a, %bb.gs ], [ %i.a, %bb.gu ], [ %i.z, %bb.gt ] ; 2 uses
  %i.abk = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.9748) #60
  %i.abl = trunc i64 %i.abk to i32
  %i.abm = and i32 %i.abl, 1073741823
  br label %printfTempBuf.exit953

sqlite3FpDecode.exit._crit_edge:                  ; preds = %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge, %bb.gr
  %.pre.ph = phi i32 [ %.pre.pre.pre, %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge ], [ 1000, %bb.gr ] ; 3 uses
  %.pr = load i8, ptr %i.ae, align 4, !tbaa !328
  %i.abn = icmp eq i8 %.pr, 45
  br i1 %i.abn, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %sqlite3FpDecode.exit._crit_edge
  %i.abo = icmp eq i8 %.16931101, 0
  %i.abp = icmp ne i8 %.16991099, 0
  %or.cond10.not876.not1213 = select i1 %i.abo, i1 true, i1 %i.abp
  %or.cond13.not1210 = or i1 %or.cond10.not876.not1213, %i.qn
  %.not877 = icmp sgt i32 %.pre.ph, %.0626
  %or.cond = select i1 %or.cond13.not1210, i1 true, i1 %.not877
  %spec.select916 = select i1 %or.cond, i8 45, i8 0
  br label %bb.gx

bb.gx:                                            ; preds = %sqlite3FpDecode.exit._crit_edge.thread, %bb.gw, %sqlite3FpDecode.exit._crit_edge
  %.pre1930 = phi i32 [ %.pre.ph, %bb.gw ], [ %.pre.ph, %sqlite3FpDecode.exit._crit_edge ], [ 1, %sqlite3FpDecode.exit._crit_edge.thread ] ; 4 uses
  %.2671 = phi i8 [ %spec.select916, %bb.gw ], [ %.16991099, %sqlite3FpDecode.exit._crit_edge ], [ %.16991099, %sqlite3FpDecode.exit._crit_edge.thread ] ; 3 uses
  %i.abq = and i32 %.0714, -9                     ; 2 uses
  %i.abr = icmp eq i32 %i.abq, 3
  br i1 %i.abr, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.abs = xor i8 %.16931101, 1
  %i.abt = icmp slt i32 %.pre1930, -3
  %i.abu = icmp sgt i32 %.pre1930, %.6734
  %or.cond903 = select i1 %i.abt, i1 true, i1 %i.abu ; 2 uses
  %i.abv = sub i32 0, %.pre1930
  %spec.select917.p = select i1 %or.cond903, i32 -1, i32 %i.abv
  %spec.select917 = add i32 %spec.select917.p, %.6734
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gx
  %i.abw = icmp eq i32 %i.abq, 1
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gy, %bb.gz
  %.7735 = phi i32 [ %.6734, %bb.gz ], [ %spec.select917, %bb.gy ]
  %.1674 = phi i1 [ %i.abw, %bb.gz ], [ %or.cond903, %bb.gy ] ; 2 uses
  %.0644 = phi i8 [ %.16901103, %bb.gz ], [ %i.abs, %bb.gy ]
  %.7735.fr = freeze i32 %.7735                   ; 4 uses
  %i.abx = add nsw i32 %.pre1930, -1
  %.0645 = select i1 %.1674, i32 0, i32 %i.abx    ; 6 uses
  %i.aby = icmp sgt i32 %.0645, 0
  %i.abz = call i32 @llvm.smax.i32(i32 %.0645, i32 0)
  %i.aca = zext nneg i32 %i.abz to i64
  %i.acb = sext i32 %.7735.fr to i64
  %i.acc = zext nneg i32 %.37061095 to i64
  %i.acd = add nuw nsw i64 %i.acc, 15
  %i.ace = add nsw i64 %i.acd, %i.acb
  %i.acf = add nsw i64 %i.ace, %i.aca             ; 2 uses
  %i.acg = icmp ne i8 %.16771109, 0               ; 2 uses
  %or.cond15 = select i1 %i.acg, i1 %i.aby, i1 false
  br i1 %or.cond15, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.ach = add nuw nsw i32 %.0645, 2
  %i.aci = udiv i32 %i.ach, 3
  %i.acj = zext nneg i32 %i.aci to i64
  %i.ack = add nsw i64 %i.acf, %i.acj
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %.0620 = phi i64 [ %i.ack, %bb.hb ], [ %i.acf, %bb.ha ] ; 5 uses
  %i.acl = icmp sgt i64 %.0620, 70
  br i1 %i.acl, label %bb.hd, label %bb.hu

bb.hd:                                            ; preds = %bb.hc
  %i.acm = load i8, ptr %i.x, align 4, !tbaa !300
  %.not.i951 = icmp eq i8 %i.acm, 0
  br i1 %.not.i951, label %bb.he, label %printfTempBuf.exit953.thread1156

bb.he:                                            ; preds = %bb.hd
  %i.acn = load i32, ptr %i.r, align 8, !tbaa !282
  %i.aco = zext i32 %i.acn to i64
  %i.acp = icmp samesign ugt i64 %.0620, %i.aco
  br i1 %i.acp, label %bb.hf, label %bb.hn

bb.hf:                                            ; preds = %bb.he
  %i.acq = load i32, ptr %i.y, align 4, !tbaa !301 ; 2 uses
  %i.acr = zext i32 %i.acq to i64
  %i.acs = icmp samesign ugt i64 %.0620, %i.acr
  br i1 %i.acs, label %bb.hg, label %bb.hn

bb.hg:                                            ; preds = %bb.hf
  store i8 18, ptr %i.x, align 4, !tbaa !300
  %.not.i1025 = icmp eq i32 %i.acq, 0
  br i1 %.not.i1025, label %bb.hk, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.act = load i8, ptr %i.b, align 1, !tbaa !277 ; 2 uses
  %i.acu = and i8 %i.act, 4
  %.not.i.i1026 = icmp eq i8 %i.acu, 0
  br i1 %.not.i.i1026, label %sqlite3_str_reset.exit.i1030, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.acv = load ptr, ptr %i.s, align 8, !tbaa !284 ; 2 uses
  %.not.i.i.i1027 = icmp eq ptr %i.acv, null
  br i1 %.not.i.i.i1027, label %sqlite3DbFree.exit.i.i1029, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.acw = load ptr, ptr %0, align 8, !tbaa !302
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.acw, ptr noundef nonnull %i.acv)
  %.pre.i.i1028 = load i8, ptr %i.b, align 1, !tbaa !277
  br label %sqlite3DbFree.exit.i.i1029

sqlite3DbFree.exit.i.i1029:                       ; preds = %bb.hj, %bb.hi
  %i.acx = phi i8 [ %i.act, %bb.hi ], [ %.pre.i.i1028, %bb.hj ]
  %i.acy = and i8 %i.acx, -5
  store i8 %i.acy, ptr %i.b, align 1, !tbaa !277
  br label %sqlite3_str_reset.exit.i1030

sqlite3_str_reset.exit.i1030:                     ; preds = %sqlite3DbFree.exit.i.i1029, %bb.hh
  store i32 0, ptr %i.r, align 8, !tbaa !282
  store i32 0, ptr %i.q, align 8, !tbaa !281
  store ptr null, ptr %i.s, align 8, !tbaa !284
  br label %bb.hk

bb.hk:                                            ; preds = %sqlite3_str_reset.exit.i1030, %bb.hg
  %i.acz = load ptr, ptr %0, align 8, !tbaa !302  ; 2 uses
  %i.ada = icmp eq ptr %i.acz, null
  br i1 %i.ada, label %printfTempBuf.exit953.thread1156, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acz, i64 344
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !303 ; 3 uses
  %i.add = icmp eq ptr %i.adc, null
  br i1 %i.add, label %printfTempBuf.exit953.thread1156, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 24
  store i32 18, ptr %i.ade, align 8, !tbaa !304
  %i.adf = getelementptr inbounds nuw i8, ptr %i.adc, i64 52 ; 2 uses
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !315
  %i.adh = add nsw i32 %i.adg, 1
  store i32 %i.adh, ptr %i.adf, align 4, !tbaa !315
  br label %printfTempBuf.exit953.thread1156

bb.hn:                                            ; preds = %bb.hf, %bb.he
  %i.adi = load ptr, ptr %0, align 8, !tbaa !302  ; 2 uses
  %.not.i1022 = icmp eq ptr %i.adi, null
  br i1 %.not.i1022, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.adj = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.adi, i64 noundef range(i64 47, -9223372036854775808) %.0620), !inline_history !316
  br label %sqlite3DbMallocRaw.exit1024

bb.hp:                                            ; preds = %bb.hn
  %i.adk = call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 47, -9223372036854775808) %.0620), !inline_history !316
  br label %sqlite3DbMallocRaw.exit1024

sqlite3DbMallocRaw.exit1024:                      ; preds = %bb.ho, %bb.hp
  %.0.i1023 = phi ptr [ %i.adj, %bb.ho ], [ %i.adk, %bb.hp ] ; 3 uses
  %i.adl = icmp eq ptr %.0.i1023, null
  br i1 %i.adl, label %bb.hq, label %bb.hu

bb.hq:                                            ; preds = %sqlite3DbMallocRaw.exit1024
  store i8 7, ptr %i.x, align 4, !tbaa !300
  %i.adm = load i32, ptr %i.y, align 4, !tbaa !301
  %.not.i1015 = icmp eq i32 %i.adm, 0
  br i1 %.not.i1015, label %printfTempBuf.exit953.thread1156, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.adn = load i8, ptr %i.b, align 1, !tbaa !277 ; 2 uses
  %i.ado = and i8 %i.adn, 4
  %.not.i.i1016 = icmp eq i8 %i.ado, 0
  br i1 %.not.i.i1016, label %sqlite3_str_reset.exit.i1020, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.adp = load ptr, ptr %i.s, align 8, !tbaa !284 ; 2 uses
  %.not.i.i.i1017 = icmp eq ptr %i.adp, null
  br i1 %.not.i.i.i1017, label %sqlite3DbFree.exit.i.i1019, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.adq = load ptr, ptr %0, align 8, !tbaa !302
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.adq, ptr noundef nonnull %i.adp)
  %.pre.i.i1018 = load i8, ptr %i.b, align 1, !tbaa !277
  br label %sqlite3DbFree.exit.i.i1019

sqlite3DbFree.exit.i.i1019:                       ; preds = %bb.ht, %bb.hs
  %i.adr = phi i8 [ %i.adn, %bb.hs ], [ %.pre.i.i1018, %bb.ht ]
  %i.ads = and i8 %i.adr, -5
  store i8 %i.ads, ptr %i.b, align 1, !tbaa !277
  br label %sqlite3_str_reset.exit.i1020

sqlite3_str_reset.exit.i1020:                     ; preds = %sqlite3DbFree.exit.i.i1019, %bb.hr
  store i32 0, ptr %i.r, align 8, !tbaa !282
  store i32 0, ptr %i.q, align 8, !tbaa !281
  store ptr null, ptr %i.s, align 8, !tbaa !284
  br label %printfTempBuf.exit953.thread1156

bb.hu:                                            ; preds = %bb.hc, %sqlite3DbMallocRaw.exit1024
  %.11750.ph = phi ptr [ %.0.i1023, %sqlite3DbMallocRaw.exit1024 ], [ %i.a, %bb.hc ] ; 13 uses
  %.3654.ph = phi ptr [ %.0.i1023, %sqlite3DbMallocRaw.exit1024 ], [ null, %bb.hc ] ; 2 uses
  %i.adt = icmp sgt i32 %.7735.fr, 0              ; 2 uses
  %i.adu = zext i1 %i.adt to i8
  %i.adv = or i8 %.16901103, %i.adu
  %i.adw = or i8 %i.adv, %.16931101               ; 2 uses
  %.not879 = icmp eq i8 %.2671, 0
  br i1 %.not879, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.adx = getelementptr inbounds nuw i8, ptr %.11750.ph, i64 1
  store i8 %.2671, ptr %.11750.ph, align 1, !tbaa !229
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %.12751 = phi ptr [ %i.adx, %bb.hv ], [ %.11750.ph, %bb.hu ] ; 3 uses
  %i.ady = icmp slt i32 %.0645, 0
  br i1 %i.ady, label %bb.hx, label %.preheader1227

bb.hx:                                            ; preds = %bb.hw
  %i.adz = getelementptr inbounds nuw i8, ptr %.12751, i64 1
  store i8 48, ptr %.12751, align 1, !tbaa !229
  %i.aea = add nsw i32 %.0645, 1
  br label %.loopexit1228

.preheader1227:                                   ; preds = %bb.hw, %bb.ib
  %.06211386 = phi i32 [ %.1622, %bb.ib ], [ 0, %bb.hw ] ; 4 uses
  %.16461385 = phi i32 [ %i.ael, %bb.ib ], [ %.0645, %bb.hw ] ; 4 uses
  %.131384 = phi ptr [ %.14, %bb.ib ], [ %.12751, %bb.hw ] ; 3 uses
  %i.aeb = load i32, ptr %3, align 8, !tbaa !329
  %i.aec = icmp slt i32 %.06211386, %i.aeb
  br i1 %i.aec, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %.preheader1227
  %i.aed = load ptr, ptr %i.ah, align 8, !tbaa !331
  %i.aee = add nsw i32 %.06211386, 1
  %i.aef = sext i32 %.06211386 to i64
  %i.aeg = getelementptr inbounds i8, ptr %i.aed, i64 %i.aef
  %i.aeh = load i8, ptr %i.aeg, align 1, !tbaa !229
  br label %bb.hz

bb.hz:                                            ; preds = %.preheader1227, %bb.hy
  %.1622 = phi i32 [ %i.aee, %bb.hy ], [ %.06211386, %.preheader1227 ] ; 2 uses
  %i.aei = phi i8 [ %i.aeh, %bb.hy ], [ 48, %.preheader1227 ]
  %i.aej = getelementptr inbounds nuw i8, ptr %.131384, i64 1 ; 3 uses
  store i8 %i.aei, ptr %.131384, align 1, !tbaa !229
  br i1 %i.acg, label %4, label %bb.ib

4:                                                ; preds = %bb.hz
  %5 = urem i32 %.16461385, 3
  %6 = icmp eq i32 %5, 0
  %7 = icmp samesign ugt i32 %.16461385, 1
  %or.cond17 = and i1 %7, %6
  br i1 %or.cond17, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %4
  %i.aek = getelementptr inbounds nuw i8, ptr %.131384, i64 2
  store i8 44, ptr %i.aej, align 1, !tbaa !229
  br label %bb.ib

bb.ib:                                            ; preds = %bb.hz, %4, %bb.ia
  %.14 = phi ptr [ %i.aek, %bb.ia ], [ %i.aej, %4 ], [ %i.aej, %bb.hz ] ; 2 uses
  %i.ael = add nsw i32 %.16461385, -1
  %i.aem = icmp sgt i32 %.16461385, 0
  br i1 %i.aem, label %.preheader1227, label %.loopexit1228, !llvm.loop !341

.loopexit1228:                                    ; preds = %bb.ib, %bb.hx
  %.15 = phi ptr [ %i.adz, %bb.hx ], [ %.14, %bb.ib ] ; 3 uses
  %.2647 = phi i32 [ %i.aea, %bb.hx ], [ 0, %bb.ib ] ; 2 uses
  %.2623 = phi i32 [ 0, %bb.hx ], [ %.1622, %bb.ib ] ; 5 uses
  %.not880 = icmp eq i8 %i.adw, 0
  br i1 %.not880, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %.loopexit1228
  %i.aen = getelementptr inbounds nuw i8, ptr %.15, i64 1
  store i8 46, ptr %.15, align 1, !tbaa !229
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %.loopexit1228
  %.16 = phi ptr [ %i.aen, %bb.ic ], [ %.15, %.loopexit1228 ] ; 3 uses
  %i.aeo = icmp slt i32 %.2647, 0
  %i.aep = and i1 %i.adt, %i.aeo
  br i1 %i.aep, label %.lr.ph1391.preheader, label %.preheader1226

.lr.ph1391.preheader:                             ; preds = %bb.id
  %i.aeq = add nsw i32 %.7735.fr, -1              ; 2 uses
  %i.aer = xor i32 %.2647, -1                     ; 2 uses
  %i.aes = call i32 @llvm.umin.i32(i32 %i.aeq, i32 %i.aer)
  %umin = zext nneg i32 %i.aes to i64             ; 2 uses
  %i.aet = add nuw nsw i64 %umin, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.16, i8 48, i64 %i.aet, i1 false), !tbaa !229
  %scevgep = getelementptr i8, ptr %.16, i64 1
  %scevgep1499 = getelementptr i8, ptr %scevgep, i64 %umin
  %i.aeu = call i32 @llvm.usub.sat.i32(i32 %i.aeq, i32 %i.aer)
  br label %.preheader1226

.preheader1226:                                   ; preds = %.lr.ph1391.preheader, %bb.id
  %.17.lcssa = phi ptr [ %.16, %bb.id ], [ %scevgep1499, %.lr.ph1391.preheader ] ; 4 uses
  %.8736.lcssa = phi i32 [ %.7735.fr, %bb.id ], [ %i.aeu, %.lr.ph1391.preheader ] ; 5 uses
  %i.aev = icmp sgt i32 %.8736.lcssa, 0
  br i1 %i.aev, label %.lr.ph1396.preheader, label %._crit_edge1397

.lr.ph1396.preheader:                             ; preds = %.preheader1226
  %xtraiter2132 = and i32 %.8736.lcssa, 1
  %lcmp.mod2133.not = icmp eq i32 %xtraiter2132, 0
  br i1 %lcmp.mod2133.not, label %.lr.ph1396.prol.loopexit, label %.lr.ph1396.prol

.lr.ph1396.prol:                                  ; preds = %.lr.ph1396.preheader
  %i.aew = add nsw i32 %.8736.lcssa, -1
  %i.aex = load i32, ptr %3, align 8, !tbaa !329
  %i.aey = icmp slt i32 %.2623, %i.aex
  br i1 %i.aey, label %bb.ie, label %.lr.ph1396.prol.loopexit.unr-lcssa

bb.ie:                                            ; preds = %.lr.ph1396.prol
  %i.aez = load ptr, ptr %i.ah, align 8, !tbaa !331
  %i.afa = add nsw i32 %.2623, 1
  %i.afb = sext i32 %.2623 to i64
  %i.afc = getelementptr inbounds i8, ptr %i.aez, i64 %i.afb
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !229
  br label %.lr.ph1396.prol.loopexit.unr-lcssa

.lr.ph1396.prol.loopexit.unr-lcssa:               ; preds = %bb.ie, %.lr.ph1396.prol
  %.4625.prol = phi i32 [ %i.afa, %bb.ie ], [ %.2623, %.lr.ph1396.prol ]
  %i.afe = phi i8 [ %i.afd, %bb.ie ], [ 48, %.lr.ph1396.prol ]
  %i.aff = getelementptr inbounds nuw i8, ptr %.17.lcssa, i64 1 ; 2 uses
  store i8 %i.afe, ptr %.17.lcssa, align 1, !tbaa !229
  br label %.lr.ph1396.prol.loopexit

.lr.ph1396.prol.loopexit:                         ; preds = %.lr.ph1396.prol.loopexit.unr-lcssa, %.lr.ph1396.preheader
  %.in1437.unr = phi i32 [ %.8736.lcssa, %.lr.ph1396.preheader ], [ %i.aew, %.lr.ph1396.prol.loopexit.unr-lcssa ]
  %.36241395.unr = phi i32 [ %.2623, %.lr.ph1396.preheader ], [ %.4625.prol, %.lr.ph1396.prol.loopexit.unr-lcssa ]
  %.181394.unr = phi ptr [ %.17.lcssa, %.lr.ph1396.preheader ], [ %i.aff, %.lr.ph1396.prol.loopexit.unr-lcssa ]
  %.lcssa2108.unr = phi ptr [ poison, %.lr.ph1396.preheader ], [ %i.aff, %.lr.ph1396.prol.loopexit.unr-lcssa ]
  %i.afg = icmp eq i32 %.8736.lcssa, 1
  br i1 %i.afg, label %._crit_edge1397, label %.lr.ph1396

.lr.ph1396:                                       ; preds = %.lr.ph1396.prol.loopexit, %bb.ih
  %.in1437 = phi i32 [ %i.afq, %bb.ih ], [ %.in1437.unr, %.lr.ph1396.prol.loopexit ] ; 2 uses
  %.36241395 = phi i32 [ %.4625.1, %bb.ih ], [ %.36241395.unr, %.lr.ph1396.prol.loopexit ] ; 4 uses
  %.181394 = phi ptr [ %i.afz, %bb.ih ], [ %.181394.unr, %.lr.ph1396.prol.loopexit ] ; 3 uses
  %i.afh = load i32, ptr %3, align 8, !tbaa !329
  %i.afi = icmp slt i32 %.36241395, %i.afh
  br i1 %i.afi, label %bb.if, label %.lr.ph1396.1

bb.if:                                            ; preds = %.lr.ph1396
  %i.afj = load ptr, ptr %i.ah, align 8, !tbaa !331
  %i.afk = add nsw i32 %.36241395, 1
  %i.afl = sext i32 %.36241395 to i64
  %i.afm = getelementptr inbounds i8, ptr %i.afj, i64 %i.afl
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !229
  br label %.lr.ph1396.1

.lr.ph1396.1:                                     ; preds = %.lr.ph1396, %bb.if
  %.4625 = phi i32 [ %i.afk, %bb.if ], [ %.36241395, %.lr.ph1396 ] ; 4 uses
  %i.afo = phi i8 [ %i.afn, %bb.if ], [ 48, %.lr.ph1396 ]
  %i.afp = getelementptr inbounds nuw i8, ptr %.181394, i64 1
  store i8 %i.afo, ptr %.181394, align 1, !tbaa !229
  %i.afq = add nsw i32 %.in1437, -2
  %i.afr = load i32, ptr %3, align 8, !tbaa !329
  %i.afs = icmp slt i32 %.4625, %i.afr
  br i1 %i.afs, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %.lr.ph1396.1
  %i.aft = load ptr, ptr %i.ah, align 8, !tbaa !331
  %i.afu = add nsw i32 %.4625, 1
  %i.afv = sext i32 %.4625 to i64
  %i.afw = getelementptr inbounds i8, ptr %i.aft, i64 %i.afv
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !229
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %.lr.ph1396.1
  %.4625.1 = phi i32 [ %i.afu, %bb.ig ], [ %.4625, %.lr.ph1396.1 ]
  %i.afy = phi i8 [ %i.afx, %bb.ig ], [ 48, %.lr.ph1396.1 ]
  %i.afz = getelementptr inbounds nuw i8, ptr %.181394, i64 2 ; 2 uses
  store i8 %i.afy, ptr %i.afp, align 1, !tbaa !229
  %i.aga = icmp sgt i32 %.in1437, 2
  br i1 %i.aga, label %.lr.ph1396, label %._crit_edge1397, !llvm.loop !342

._crit_edge1397:                                  ; preds = %.lr.ph1396.prol.loopexit, %bb.ih, %.preheader1226
  %.18.lcssa = phi ptr [ %.17.lcssa, %.preheader1226 ], [ %.lcssa2108.unr, %.lr.ph1396.prol.loopexit ], [ %i.afz, %bb.ih ] ; 2 uses
  %i.agb = icmp ne i8 %.0644, 0
  %i.agc = icmp ne i8 %i.adw, 0
  %or.cond20 = select i1 %i.agb, i1 %i.agc, i1 false
  br i1 %or.cond20, label %.preheader1224, label %.loopexit1225

.preheader1224:                                   ; preds = %._crit_edge1397, %bb.ii
  %.19 = phi ptr [ %i.agd, %bb.ii ], [ %.18.lcssa, %._crit_edge1397 ] ; 4 uses
  %i.agd = getelementptr inbounds i8, ptr %.19, i64 -1 ; 5 uses
  %i.age = load i8, ptr %i.agd, align 1, !tbaa !229
  switch i8 %i.age, label %.loopexit1225 [
    i8 48, label %bb.ii
    i8 46, label %bb.ij
  ]

bb.ii:                                            ; preds = %.preheader1224
  store i8 0, ptr %i.agd, align 1, !tbaa !229
  br label %.preheader1224, !llvm.loop !343

bb.ij:                                            ; preds = %.preheader1224
  br i1 %.not870, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.agf = getelementptr inbounds nuw i8, ptr %.19, i64 1
  store i8 48, ptr %.19, align 1, !tbaa !229
  br label %.loopexit1225

bb.il:                                            ; preds = %bb.ij
  store i8 0, ptr %i.agd, align 1, !tbaa !229
  br label %.loopexit1225

.loopexit1225:                                    ; preds = %.preheader1224, %bb.il, %bb.ik, %._crit_edge1397
  %.20 = phi ptr [ %i.agf, %bb.ik ], [ %i.agd, %bb.il ], [ %.18.lcssa, %._crit_edge1397 ], [ %.19, %.preheader1224 ] ; 5 uses
  br i1 %.1674, label %bb.im, label %bb.ip

bb.im:                                            ; preds = %.loopexit1225
  %i.agg = load i32, ptr %i.af, align 4, !tbaa !330 ; 3 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !317
  %i.agj = zext i8 %i.agi to i64
  %i.agk = getelementptr inbounds nuw i8, ptr @aDigits, i64 %i.agj
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !229
  %i.agm = getelementptr inbounds nuw i8, ptr %.20, i64 1
  store i8 %i.agl, ptr %.20, align 1, !tbaa !229
  %i.agn = icmp slt i32 %i.agg, 1                 ; 2 uses
  %i.ago = sub nsw i32 1, %i.agg
  %i.agp = add nsw i32 %i.agg, -1
  %.sink = select i1 %i.agn, i8 45, i8 43
  %.0649 = select i1 %i.agn, i32 %i.ago, i32 %i.agp ; 4 uses
  store i8 %.sink, ptr %i.agm, align 1, !tbaa !229
  %.21 = getelementptr inbounds nuw i8, ptr %.20, i64 2 ; 2 uses
  %i.agq = icmp samesign ugt i32 %.0649, 99
  br i1 %i.agq, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.agr = udiv i32 %.0649, 100
  %i.ags = trunc i32 %i.agr to i8
  %i.agt = add i8 %i.ags, 48
  %i.agu = getelementptr inbounds nuw i8, ptr %.20, i64 3
  store i8 %i.agt, ptr %.21, align 1, !tbaa !229
  %i.agv = urem i32 %.0649, 100
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %.22 = phi ptr [ %i.agu, %bb.in ], [ %.21, %bb.im ] ; 3 uses
  %.1650 = phi i32 [ %i.agv, %bb.in ], [ %.0649, %bb.im ]
  %.lhs.trunc = trunc nuw nsw i32 %.1650 to i8    ; 2 uses
  %i.agw = udiv i8 %.lhs.trunc, 10
  %i.agx = or disjoint i8 %i.agw, 48
  %i.agy = getelementptr inbounds nuw i8, ptr %.22, i64 1
  store i8 %i.agx, ptr %.22, align 1, !tbaa !229
  %i.agz = urem i8 %.lhs.trunc, 10
  %i.aha = or disjoint i8 %i.agz, 48
  %i.ahb = getelementptr inbounds nuw i8, ptr %.22, i64 2
  store i8 %i.aha, ptr %i.agy, align 1, !tbaa !229
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %.loopexit1225
  %.23 = phi ptr [ %i.ahb, %bb.io ], [ %.20, %.loopexit1225 ] ; 2 uses
  store i8 0, ptr %.23, align 1, !tbaa !229
  %i.ahc = ptrtoint ptr %.23 to i64
  %i.ahd = ptrtoint ptr %.11750.ph to i64
  %i.ahe = sub i64 %i.ahc, %i.ahd                 ; 2 uses
end_hunk_0
