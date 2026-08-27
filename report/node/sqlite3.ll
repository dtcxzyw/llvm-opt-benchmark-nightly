Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3Fts3Incrmerge:bb.a
  %i.agc = add nsw i32 %i.agb, %i.acj
  store i32 %i.agc, ptr %i.acw, align 8, !tbaa !5996
  %i.agd = load ptr, ptr %i.acu, align 8, !tbaa !6053
  %i.age = sext i32 %i.abw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agd, ptr readonly align 1 %i.aaj, i64 %i.age, i1 false)
  store i32 %i.abw, ptr %i.acb, align 8, !tbaa !6054
  br label %fts3IncrmergePush.exit.i

bb.gq:                                            ; preds = %bb.fy
  %i.agf = getelementptr inbounds nuw i8, ptr %i.aby, i64 24 ; 3 uses
  %i.agg = load i64, ptr %i.aby, align 8, !tbaa !6045
  %i.agh = load ptr, ptr %i.agf, align 8, !tbaa !6051
  %i.agi = call fastcc i32 @fts3WriteSegment(ptr noundef nonnull %0, i64 noundef %i.agg, ptr noundef %i.agh, i32 noundef %.pre.i.i188), !inline_history !6062 ; 2 uses
  %i.agj = trunc i64 %indvars.iv.i71.i to i8
  %i.agk = load ptr, ptr %i.agf, align 8, !tbaa !6051
  store i8 %i.agj, ptr %i.agk, align 1, !tbaa !229
  %i.agl = load ptr, ptr %i.agf, align 8, !tbaa !6051
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 1 ; 2 uses
  %i.agn = add nsw i64 %.073155.i.i, 1
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gr, %bb.gq
  %.08.i103.i.i = phi ptr [ %i.agm, %bb.gq ], [ %i.agq, %bb.gr ] ; 3 uses
  %.0.i104.i.i = phi i64 [ %i.agn, %bb.gq ], [ %i.agr, %bb.gr ] ; 2 uses
  %i.ago = trunc i64 %.0.i104.i.i to i8           ; 2 uses
  %i.agp = or i8 %i.ago, -128
  %i.agq = getelementptr inbounds nuw i8, ptr %.08.i103.i.i, i64 1 ; 2 uses
  store i8 %i.agp, ptr %.08.i103.i.i, align 1, !tbaa !229
  %i.agr = lshr i64 %.0.i104.i.i, 7               ; 2 uses
  %.not.i105.i.i = icmp eq i64 %i.agr, 0
  br i1 %.not.i105.i.i, label %bb.gs, label %bb.gr, !llvm.loop !5441

bb.gs:                                            ; preds = %bb.gr
  store i8 %i.ago, ptr %.08.i103.i.i, align 1, !tbaa !229
  %i.ags = ptrtoint ptr %i.agq to i64
  %i.agt = ptrtoint ptr %i.agm to i64
  %i.agu = sub i64 %i.ags, %i.agt
  %i.agv = trunc i64 %i.agu to i32
  %i.agw = add nsw i32 %i.agv, 1
  store i32 %i.agw, ptr %.phi.trans.insert.i.i187, align 8, !tbaa !6050
  %i.agx = load i64, ptr %i.aby, align 8, !tbaa !6045 ; 3 uses
  %i.agy = add nsw i64 %i.agx, 1
  store i64 %i.agy, ptr %i.aby, align 8, !tbaa !6045
  store i32 0, ptr %i.acb, align 8, !tbaa !6054
  %i.agz = icmp eq i32 %i.agi, 0
  %i.aha = icmp ne i64 %i.agx, 0
  %or.cond.not.i.i = select i1 %i.agz, i1 %i.aha, i1 false
  br i1 %or.cond.not.i.i, label %bb.gt, label %fts3IncrmergePush.exit.i

bb.gt:                                            ; preds = %bb.gs
  %indvars.iv.next.i73.i = add nuw nsw i64 %indvars.iv.i71.i, 1 ; 2 uses
  %exitcond.not.i74.i = icmp eq i64 %indvars.iv.next.i73.i, 16
  br i1 %exitcond.not.i74.i, label %fts3IncrmergePush.exit.i, label %bb.fr, !llvm.loop !6063

fts3IncrmergePush.exit.i:                         ; preds = %bb.gt, %bb.gs, %fts3PrefixCompress.exit.i.i, %sqlite3Fts3PutVarint.exit102.i.i, %sqlite3_realloc64.exit.i92.i.i, %bb.gh, %sqlite3_realloc64.exit.i87.i.i, %bb.gf, %sqlite3_realloc64.exit.i.i.i, %bb.ga, %bb.fp
  %.087.i = phi i32 [ %i.abs, %bb.fp ], [ 7, %sqlite3_realloc64.exit.i87.i.i ], [ 7, %sqlite3_realloc64.exit.i.i.i ], [ 7, %bb.ga ], [ 0, %sqlite3Fts3PutVarint.exit102.i.i ], [ 7, %bb.gh ], [ 7, %sqlite3_realloc64.exit.i92.i.i ], [ 7, %bb.gf ], [ 267, %fts3PrefixCompress.exit.i.i ], [ 0, %bb.gt ], [ %i.agi, %bb.gs ] ; 2 uses
  %i.ahb = load i64, ptr %i.bj, align 8, !tbaa !6045
  %i.ahc = add nsw i64 %i.ahb, 1
  store i64 %i.ahc, ptr %i.bj, align 8, !tbaa !6045
  store i32 0, ptr %i.cr, align 8, !tbaa !6054
  store i32 0, ptr %i.ct, align 8, !tbaa !6050
  %i.ahd = sext i32 %i.aak to i64
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gu, %fts3IncrmergePush.exit.i
  %.04.i75.i = phi i64 [ %i.ahd, %fts3IncrmergePush.exit.i ], [ %i.ahf, %bb.gu ]
  %.0.i76.i = phi i32 [ 0, %fts3IncrmergePush.exit.i ], [ %i.ahe, %bb.gu ]
  %i.ahe = add nuw nsw i32 %.0.i76.i, 1           ; 2 uses
  %i.ahf = lshr i64 %.04.i75.i, 7                 ; 2 uses
  %.not.i77.i = icmp eq i64 %i.ahf, 0
  br i1 %.not.i77.i, label %sqlite3Fts3VarintLen.exit78.i, label %bb.gu, !llvm.loop !5439

sqlite3Fts3VarintLen.exit78.i:                    ; preds = %bb.gu, %sqlite3Fts3VarintLen.exit78.i
  %.04.i79.i = phi i64 [ %i.ahh, %sqlite3Fts3VarintLen.exit78.i ], [ %i.aba, %bb.gu ]
  %.0.i80.i = phi i32 [ %i.ahg, %sqlite3Fts3VarintLen.exit78.i ], [ 0, %bb.gu ]
  %i.ahg = add nuw nsw i32 %.0.i80.i, 1           ; 2 uses
  %i.ahh = lshr i64 %.04.i79.i, 7                 ; 2 uses
  %.not.i81.i = icmp eq i64 %i.ahh, 0
  br i1 %.not.i81.i, label %bb.gv, label %sqlite3Fts3VarintLen.exit78.i, !llvm.loop !5439

.thread.i180:                                     ; preds = %sqlite3Fts3VarintLen.exit70.i, %bb.fo, %bb.fn
  %i.ahi = sext i32 %i.abg to i64
  %i.ahj = load i64, ptr %i.cb, align 8, !tbaa !6019
  %i.ahk = add nsw i64 %i.ahj, %i.ahi
  store i64 %i.ahk, ptr %i.cb, align 8, !tbaa !6019
  br label %bb.gw

bb.gv:                                            ; preds = %sqlite3Fts3VarintLen.exit78.i
  %i.ahl = add i32 %i.aak, 1
  %i.ahm = add i32 %i.ahl, %i.aam
  %i.ahn = add i32 %i.ahm, %i.ahe
  %i.aho = add i32 %i.ahn, %i.ahg                 ; 2 uses
  %i.ahp = sext i32 %i.aho to i64
  %i.ahq = load i64, ptr %i.cb, align 8, !tbaa !6019
  %i.ahr = add nsw i64 %i.ahq, %i.ahp
  store i64 %i.ahr, ptr %i.cb, align 8, !tbaa !6019
  %i.ahs = icmp eq i32 %.087.i, 0
  br i1 %i.ahs, label %bb.gw, label %.sink.split

bb.gw:                                            ; preds = %bb.gv, %.thread.i180
  %i.aht = phi i32 [ %i.abj, %.thread.i180 ], [ %i.aho, %bb.gv ] ; 3 uses
  %i.ahu = phi i32 [ %i.abh, %.thread.i180 ], [ 0, %bb.gv ]
  %i.ahv = load i32, ptr %i.cv, align 4, !tbaa !6001
  %i.ahw = icmp sgt i32 %i.aht, %i.ahv
  br i1 %i.ahw, label %bb.gx, label %blobGrowBuffer.exit.i181

bb.gx:                                            ; preds = %bb.gw
  %i.ahx = load ptr, ptr %i.cs, align 8, !tbaa !6002
  %i.ahy = call i32 @sqlite3_initialize(), !inline_history !6064
  %.not.i.i83.i = icmp eq i32 %i.ahy, 0
  br i1 %.not.i.i83.i, label %sqlite3_realloc64.exit.i.i182, label %.sink.split

sqlite3_realloc64.exit.i.i182:                    ; preds = %bb.gx
  %i.ahz = sext i32 %i.aht to i64
  %i.aia = call fastcc ptr @sqlite3Realloc(ptr noundef %i.ahx, i64 noundef %i.ahz), !inline_history !6064 ; 2 uses
  %.not.i84.i = icmp eq ptr %i.aia, null
  br i1 %.not.i84.i, label %.sink.split, label %bb.gy

bb.gy:                                            ; preds = %sqlite3_realloc64.exit.i.i182
  store i32 %i.aht, ptr %i.cv, align 4, !tbaa !6001
  store ptr %i.aia, ptr %i.cs, align 8, !tbaa !6002
  %.pre.i183 = load i32, ptr %i.ct, align 8, !tbaa !6050
  br label %blobGrowBuffer.exit.i181

blobGrowBuffer.exit.i181:                         ; preds = %bb.gy, %bb.gw
  %i.aib = phi i32 [ %.pre.i183, %bb.gy ], [ %i.ahu, %bb.gw ]
  %i.aic = icmp eq i32 %i.aib, 0
  br i1 %i.aic, label %bb.gz, label %fts3IncrmergeAppend.exit

bb.gz:                                            ; preds = %blobGrowBuffer.exit.i181
  store i32 1, ptr %i.ct, align 8, !tbaa !6050
  %i.aid = load ptr, ptr %i.cs, align 8, !tbaa !6051
  store i8 0, ptr %i.aid, align 1, !tbaa !229
  br label %fts3IncrmergeAppend.exit

fts3IncrmergeAppend.exit:                         ; preds = %blobGrowBuffer.exit.i181, %bb.gz
  %i.aie = call fastcc i32 @fts3AppendToNode(ptr noundef %i.cs, ptr noundef %i.cq, ptr noundef %i.aaj, i32 noundef %i.aak, ptr noundef %i.aal, i32 noundef %i.aam), !inline_history !6059 ; 2 uses
  %i.aif = icmp eq i32 %i.aie, 0
  br i1 %i.aif, label %bb.ha, label %.sink.split

bb.ha:                                            ; preds = %fts3IncrmergeAppend.exit
  %i.aig = call fastcc i32 @sqlite3Fts3SegReaderStep(ptr noundef %0, ptr noundef nonnull %i.u)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ha, %fts3PrefixCompress.exit.i, %bb.gx, %sqlite3_realloc64.exit.i.i182, %bb.gv, %fts3IncrmergeAppend.exit
  %i.aih = phi i32 [ %i.aie, %fts3IncrmergeAppend.exit ], [ %i.aig, %bb.ha ], [ %.087.i, %bb.gv ], [ 7, %sqlite3_realloc64.exit.i.i182 ], [ 7, %bb.gx ], [ 267, %fts3PrefixCompress.exit.i ] ; 5 uses
  %i.aii = load i64, ptr %i.cu, align 8, !tbaa !6060 ; 2 uses
  %i.aij = icmp sge i64 %i.aii, %i.aai
  %i.aik = icmp eq i32 %i.aih, 100                ; 2 uses
  %or.cond8 = select i1 %i.aij, i1 %i.aik, i1 false
  br i1 %or.cond8, label %.thread254.loopexit, label %bb.hb

bb.hb:                                            ; preds = %.sink.split
  br i1 %i.aik, label %bb.ff, label %.loopexit, !llvm.loop !6065

.loopexit:                                        ; preds = %bb.hb
  store i32 %i.aih, ptr %i.n, align 1
  %i.ail = icmp eq i32 %i.aih, 0
  br i1 %i.ail, label %.loopexit._crit_edge, label %bb.hc

.loopexit._crit_edge:                             ; preds = %bb.fe, %.loopexit
  %.pre421 = load i64, ptr %i.cu, align 8, !tbaa !6060
  br label %.thread254

.thread254.loopexit:                              ; preds = %.sink.split
  store i32 %i.aih, ptr %i.n, align 1
  br label %.thread254

.thread254:                                       ; preds = %.thread254.loopexit, %.loopexit._crit_edge
  %i.aim = phi i64 [ %.pre421, %.loopexit._crit_edge ], [ %i.aii, %.thread254.loopexit ]
  %i.ain = trunc i64 %i.aim to i32
  %i.aio = xor i32 %i.ain, -1
  %i.aip = add i32 %.090357, %i.aio               ; 2 uses
  %i.aiq = call fastcc i32 @fts3IncrmergeChomp(ptr noundef %0, i64 noundef %.3104, ptr noundef %i.u, ptr noundef %i.o) ; 2 uses
  store i32 %i.aiq, ptr %i.n, align 4, !tbaa !24
  %i.air = load i32, ptr %i.o, align 4, !tbaa !24 ; 2 uses
  %.not119 = icmp eq i32 %i.air, 0
  br i1 %.not119, label %.thread257, label %.thread264

.thread264:                                       ; preds = %.thread254
  call fastcc void @fts3IncrmergeHintPush(ptr noundef %5, i64 noundef %.3104, i32 noundef %i.air, ptr noundef %i.n)
  %.pr272.pre.pre = load i32, ptr %i.n, align 4, !tbaa !24
  br label %bb.hd

bb.hc:                                            ; preds = %.loopexit, %bb.fd, %bb.fc
  %.pr272.pre426 = phi i32 [ %i.aih, %.loopexit ], [ 0, %bb.fd ], [ %storemerge116, %bb.fc ] ; 2 uses
  %.pr256 = load i32, ptr %i.o, align 4, !tbaa !24
  %.not120 = icmp eq i32 %.pr256, 0
  br i1 %.not120, label %.thread257, label %bb.hd

bb.hd:                                            ; preds = %.thread264, %bb.hc
  %.pr272.pre = phi i32 [ %.pr272.pre.pre, %.thread264 ], [ %.pr272.pre426, %bb.hc ]
  %.1269 = phi i32 [ %i.aip, %.thread264 ], [ %.090357, %bb.hc ]
  %.399268 = phi i32 [ 1, %.thread264 ], [ %.298, %bb.hc ]
  %i.ais = load i64, ptr %i.cb, align 8, !tbaa !6019
  %i.ait = sub nsw i64 0, %i.ais
  store i64 %i.ait, ptr %i.cb, align 8, !tbaa !6019
  br label %.thread257

.thread257:                                       ; preds = %bb.hd, %bb.hc, %.thread254
  %i.aiu = phi i32 [ %i.aiq, %.thread254 ], [ %.pr272.pre426, %bb.hc ], [ %.pr272.pre, %bb.hd ] ; 5 uses
  %.not120263 = phi i1 [ true, %.thread254 ], [ true, %bb.hc ], [ false, %bb.hd ]
  %.1262 = phi i32 [ %i.aip, %.thread254 ], [ %.090357, %bb.hc ], [ %.1269, %bb.hd ] ; 3 uses
  %.399261 = phi i32 [ %.298, %.thread254 ], [ %.298, %bb.hc ], [ %.399268, %bb.hd ] ; 3 uses
  br label %bb.he

bb.he:                                            ; preds = %bb.hq, %.thread257
  %.04486.i = phi i32 [ 15, %.thread257 ], [ %i.aki, %bb.hq ] ; 5 uses
  %i.aiv = zext nneg i32 %.04486.i to i64         ; 2 uses
  %i.aiw = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %i.aiv ; 5 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 32
  %i.aiy = load i32, ptr %i.aix, align 8, !tbaa !6050
  %i.aiz = icmp sgt i32 %i.aiy, 0
  br i1 %i.aiz, label %sqlite3_free.exit51.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiw, i64 24
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !6051 ; 4 uses
  %i.ajc = icmp eq ptr %i.ajb, null
  br i1 %i.ajc, label %sqlite3_free.exit.i196, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.ajd = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i.i192 = icmp eq i32 %i.ajd, 0
  br i1 %.not.i.i192, label %bb.hk, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aje = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %i.aje, null
  br i1 %.not.i.i.i193, label %sqlite3_mutex_enter.exit.i.i194, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ajf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  call void %i.ajf(ptr noundef nonnull %i.aje) #59, !inline_history !6066
  br label %sqlite3_mutex_enter.exit.i.i194

sqlite3_mutex_enter.exit.i.i194:                  ; preds = %bb.hi, %bb.hh
  %i.ajg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.ajh = call i32 %i.ajg(ptr noundef nonnull %i.ajb) #59, !inline_history !6067
  %i.aji = sext i32 %i.ajh to i64
  %i.ajj = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.ajk = sub nsw i64 %i.ajj, %i.aji
  store i64 %i.ajk, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.ajl = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.ajm = add nsw i64 %i.ajl, -1
  store i64 %i.ajm, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.ajn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.ajn(ptr noundef nonnull %i.ajb) #59, !inline_history !6068
  %i.ajo = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i.i195 = icmp eq ptr %i.ajo, null
  br i1 %.not.i4.i.i195, label %sqlite3_free.exit.i196, label %bb.hj

bb.hj:                                            ; preds = %sqlite3_mutex_enter.exit.i.i194
  %i.ajp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.ajp(ptr noundef nonnull %i.ajo) #59, !inline_history !6069
  br label %sqlite3_free.exit.i196

bb.hk:                                            ; preds = %bb.hg
  %i.ajq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.ajq(ptr noundef nonnull %i.ajb) #59, !inline_history !6068
  br label %sqlite3_free.exit.i196

sqlite3_free.exit.i196:                           ; preds = %bb.hk, %bb.hj, %sqlite3_mutex_enter.exit.i.i194, %bb.hf
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.aiw, i64 8
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !6053 ; 4 uses
  %i.ajt = icmp eq ptr %i.ajs, null
  br i1 %i.ajt, label %bb.hq, label %bb.hl

bb.hl:                                            ; preds = %sqlite3_free.exit.i196
  %i.aju = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i47.i = icmp eq i32 %i.aju, 0
  br i1 %.not.i47.i, label %bb.hp, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ajv = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i48.i = icmp eq ptr %i.ajv, null
  br i1 %.not.i.i48.i, label %sqlite3_mutex_enter.exit.i49.i, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.ajw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  call void %i.ajw(ptr noundef nonnull %i.ajv) #59, !inline_history !6066
  br label %sqlite3_mutex_enter.exit.i49.i

sqlite3_mutex_enter.exit.i49.i:                   ; preds = %bb.hn, %bb.hm
  %i.ajx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.ajy = call i32 %i.ajx(ptr noundef nonnull %i.ajs) #59, !inline_history !6067
  %i.ajz = sext i32 %i.ajy to i64
  %i.aka = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.akb = sub nsw i64 %i.aka, %i.ajz
  store i64 %i.akb, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.akc = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.akd = add nsw i64 %i.akc, -1
  store i64 %i.akd, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.ake = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.ake(ptr noundef nonnull %i.ajs) #59, !inline_history !6068
  %i.akf = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i50.i = icmp eq ptr %i.akf, null
  br i1 %.not.i4.i50.i, label %bb.hq, label %bb.ho

bb.ho:                                            ; preds = %sqlite3_mutex_enter.exit.i49.i
  %i.akg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.akg(ptr noundef nonnull %i.akf) #59, !inline_history !6069
  br label %bb.hq

bb.hp:                                            ; preds = %bb.hl
  %i.akh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.akh(ptr noundef nonnull %i.ajs) #59, !inline_history !6068
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho, %sqlite3_mutex_enter.exit.i49.i, %sqlite3_free.exit.i196
  %i.aki = add nsw i32 %.04486.i, -1
  %.not.i197 = icmp eq i32 %.04486.i, 0
  br i1 %.not.i197, label %fts3IncrmergeRelease.exit, label %bb.he, !llvm.loop !6070

sqlite3_free.exit51.i:                            ; preds = %bb.he
  %i.akj = icmp eq i32 %.04486.i, 0
  br i1 %i.akj, label %bb.hr, label %blobGrowBuffer.exit.thread.i

bb.hr:                                            ; preds = %sqlite3_free.exit51.i
  %i.akk = icmp eq i32 %i.aiu, 0
  br i1 %i.akk, label %bb.hs, label %.lr.ph.preheader.i

bb.hs:                                            ; preds = %bb.hr
  %i.akl = load i32, ptr %i.cx, align 4, !tbaa !6001
  %i.akm = icmp slt i32 %i.akl, 11
  %.pre.i205 = load ptr, ptr %i.cw, align 8, !tbaa !6002 ; 2 uses
  br i1 %i.akm, label %bb.ht, label %blobGrowBuffer.exit.i206

bb.ht:                                            ; preds = %bb.hs
  %i.akn = call i32 @sqlite3_initialize(), !inline_history !6071
  %.not.i.i52.i = icmp eq i32 %i.akn, 0
  br i1 %.not.i.i52.i, label %sqlite3_realloc64.exit.i.i208, label %.lr.ph.preheader.i

sqlite3_realloc64.exit.i.i208:                    ; preds = %bb.ht
  %i.ako = call fastcc ptr @sqlite3Realloc(ptr noundef %.pre.i205, i64 noundef 11), !inline_history !6071 ; 3 uses
  %.not.i53.i = icmp eq ptr %i.ako, null
  br i1 %.not.i53.i, label %.lr.ph.preheader.i, label %bb.hu

bb.hu:                                            ; preds = %sqlite3_realloc64.exit.i.i208
  store i32 11, ptr %i.cx, align 4, !tbaa !6001
  store ptr %i.ako, ptr %i.cw, align 8, !tbaa !6002
  br label %blobGrowBuffer.exit.i206

blobGrowBuffer.exit.i206:                         ; preds = %bb.hu, %bb.hs
  %i.akp = phi ptr [ %i.ako, %bb.hu ], [ %.pre.i205, %bb.hs ]
  store i8 1, ptr %i.akp, align 1, !tbaa !229
  %i.akq = load ptr, ptr %i.cw, align 8, !tbaa !6002
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 1 ; 2 uses
  %i.aks = load i64, ptr %i.bj, align 8, !tbaa !6045
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hv, %blobGrowBuffer.exit.i206
  %.08.i.i = phi ptr [ %i.akr, %blobGrowBuffer.exit.i206 ], [ %i.akv, %bb.hv ] ; 3 uses
  %.0.i.i207 = phi i64 [ %i.aks, %blobGrowBuffer.exit.i206 ], [ %i.akw, %bb.hv ] ; 2 uses
  %i.akt = trunc i64 %.0.i.i207 to i8             ; 2 uses
  %i.aku = or i8 %i.akt, -128
  %i.akv = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1 ; 2 uses
  store i8 %i.aku, ptr %.08.i.i, align 1, !tbaa !229
  %i.akw = lshr i64 %.0.i.i207, 7                 ; 2 uses
  %.not.i54.i = icmp eq i64 %i.akw, 0
  br i1 %.not.i54.i, label %sqlite3Fts3PutVarint.exit.i, label %bb.hv, !llvm.loop !5441

sqlite3Fts3PutVarint.exit.i:                      ; preds = %bb.hv
  store i8 %i.akt, ptr %.08.i.i, align 1, !tbaa !229
  %i.akx = ptrtoint ptr %i.akv to i64
  %i.aky = ptrtoint ptr %i.akr to i64
  %i.akz = sub i64 %i.akx, %i.aky
  %i.ala = trunc i64 %i.akz to i32
  %i.alb = add nsw i32 %i.ala, 1
  store i32 %i.alb, ptr %i.cy, align 8, !tbaa !5996
  br label %.lr.ph.preheader.i

blobGrowBuffer.exit.thread.i:                     ; preds = %sqlite3_free.exit51.i
  %6 = icmp sgt i32 %.04486.i, 0
  br i1 %6, label %.lr.ph.preheader.i, label %._crit_edge.i198

.lr.ph.preheader.i:                               ; preds = %bb.hr, %bb.ht, %sqlite3_realloc64.exit.i.i208, %sqlite3Fts3PutVarint.exit.i, %blobGrowBuffer.exit.thread.i
  %i.alc = phi ptr [ %i.aiw, %blobGrowBuffer.exit.thread.i ], [ %i.bk, %sqlite3Fts3PutVarint.exit.i ], [ %i.bk, %sqlite3_realloc64.exit.i.i208 ], [ %i.bk, %bb.ht ], [ %i.bk, %bb.hr ]
  %i.ald = phi i64 [ %i.aiv, %blobGrowBuffer.exit.thread.i ], [ 1, %sqlite3Fts3PutVarint.exit.i ], [ 1, %sqlite3_realloc64.exit.i.i208 ], [ 1, %bb.ht ], [ 1, %bb.hr ]
  %.079114.i = phi i32 [ %i.aiu, %blobGrowBuffer.exit.thread.i ], [ 0, %sqlite3Fts3PutVarint.exit.i ], [ 7, %sqlite3_realloc64.exit.i.i208 ], [ 7, %bb.ht ], [ %i.aiu, %bb.hr ]
  br label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %sqlite3_free.exit64.i, %.lr.ph.preheader.i
  %indvars.iv.i202 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i204, %sqlite3_free.exit64.i ] ; 2 uses
  %.18087.i = phi i32 [ %.079114.i, %.lr.ph.preheader.i ], [ %.2.i, %sqlite3_free.exit64.i ] ; 2 uses
  %i.ale = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %indvars.iv.i202 ; 4 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 24 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ale, i64 32
  %i.alh = load i32, ptr %i.alg, align 8, !tbaa !6050 ; 2 uses
  %i.ali = icmp sgt i32 %i.alh, 0
  %i.alj = icmp eq i32 %.18087.i, 0
  %or.cond.i203 = select i1 %i.ali, i1 %i.alj, i1 false
  br i1 %or.cond.i203, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %.lr.ph.i201
  %i.alk = load i64, ptr %i.ale, align 8, !tbaa !6045
  %i.all = load ptr, ptr %i.alf, align 8, !tbaa !6051
  %i.alm = call fastcc i32 @fts3WriteSegment(ptr noundef %0, i64 noundef %i.alk, ptr noundef %i.all, i32 noundef %i.alh), !inline_history !6072
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %.lr.ph.i201
  %.2.i = phi i32 [ %i.alm, %bb.hw ], [ %.18087.i, %.lr.ph.i201 ] ; 2 uses
  %i.aln = load ptr, ptr %i.alf, align 8, !tbaa !6051 ; 4 uses
  %i.alo = icmp eq ptr %i.aln, null
  br i1 %i.alo, label %sqlite3_free.exit59.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.alp = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i55.i = icmp eq i32 %i.alp, 0
  br i1 %.not.i55.i, label %bb.ic, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.alq = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i56.i = icmp eq ptr %i.alq, null
  br i1 %.not.i.i56.i, label %sqlite3_mutex_enter.exit.i57.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.alr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  call void %i.alr(ptr noundef nonnull %i.alq) #59, !inline_history !6066
  br label %sqlite3_mutex_enter.exit.i57.i

sqlite3_mutex_enter.exit.i57.i:                   ; preds = %bb.ia, %bb.hz
  %i.als = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.alt = call i32 %i.als(ptr noundef nonnull %i.aln) #59, !inline_history !6067
  %i.alu = sext i32 %i.alt to i64
  %i.alv = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.alw = sub nsw i64 %i.alv, %i.alu
  store i64 %i.alw, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.alx = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.aly = add nsw i64 %i.alx, -1
  store i64 %i.aly, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.alz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.alz(ptr noundef nonnull %i.aln) #59, !inline_history !6068
  %i.ama = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i58.i = icmp eq ptr %i.ama, null
  br i1 %.not.i4.i58.i, label %sqlite3_free.exit59.i, label %bb.ib

bb.ib:                                            ; preds = %sqlite3_mutex_enter.exit.i57.i
  %i.amb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.amb(ptr noundef nonnull %i.ama) #59, !inline_history !6069
  br label %sqlite3_free.exit59.i

bb.ic:                                            ; preds = %bb.hy
  %i.amc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.amc(ptr noundef nonnull %i.aln) #59, !inline_history !6068
  br label %sqlite3_free.exit59.i

sqlite3_free.exit59.i:                            ; preds = %bb.ic, %bb.ib, %sqlite3_mutex_enter.exit.i57.i, %bb.hx
  %i.amd = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !6053 ; 4 uses
  %i.amf = icmp eq ptr %i.ame, null
  br i1 %i.amf, label %sqlite3_free.exit64.i, label %bb.id

bb.id:                                            ; preds = %sqlite3_free.exit59.i
  %i.amg = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i60.i = icmp eq i32 %i.amg, 0
  br i1 %.not.i60.i, label %bb.ih, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.amh = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i61.i = icmp eq ptr %i.amh, null
  br i1 %.not.i.i61.i, label %sqlite3_mutex_enter.exit.i62.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.ami = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  call void %i.ami(ptr noundef nonnull %i.amh) #59, !inline_history !6066
  br label %sqlite3_mutex_enter.exit.i62.i

sqlite3_mutex_enter.exit.i62.i:                   ; preds = %bb.if, %bb.ie
  %i.amj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.amk = call i32 %i.amj(ptr noundef nonnull %i.ame) #59, !inline_history !6067
  %i.aml = sext i32 %i.amk to i64
  %i.amm = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.amn = sub nsw i64 %i.amm, %i.aml
  store i64 %i.amn, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.amo = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.amp = add nsw i64 %i.amo, -1
  store i64 %i.amp, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.amq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.amq(ptr noundef nonnull %i.ame) #59, !inline_history !6068
  %i.amr = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i63.i = icmp eq ptr %i.amr, null
  br i1 %.not.i4.i63.i, label %sqlite3_free.exit64.i, label %bb.ig

bb.ig:                                            ; preds = %sqlite3_mutex_enter.exit.i62.i
  %i.ams = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.ams(ptr noundef nonnull %i.amr) #59, !inline_history !6069
  br label %sqlite3_free.exit64.i

bb.ih:                                            ; preds = %bb.id
  %i.amt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.amt(ptr noundef nonnull %i.ame) #59, !inline_history !6068
  br label %sqlite3_free.exit64.i

sqlite3_free.exit64.i:                            ; preds = %bb.ih, %bb.ig, %sqlite3_mutex_enter.exit.i62.i, %sqlite3_free.exit59.i
  %indvars.iv.next.i204 = add nuw nsw i64 %indvars.iv.i202, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i204, %i.ald
  br i1 %exitcond.not.i, label %._crit_edge.i198, label %.lr.ph.i201, !llvm.loop !6073

._crit_edge.i198:                                 ; preds = %sqlite3_free.exit64.i, %blobGrowBuffer.exit.thread.i
  %7 = phi ptr [ %i.aiw, %blobGrowBuffer.exit.thread.i ], [ %i.alc, %sqlite3_free.exit64.i ] ; 4 uses
  %.180.lcssa.i = phi i32 [ %i.aiu, %blobGrowBuffer.exit.thread.i ], [ %.2.i, %sqlite3_free.exit64.i ] ; 2 uses
  %i.amu = icmp eq i32 %.180.lcssa.i, 0
  br i1 %i.amu, label %bb.ii, label %bb.il

bb.ii:                                            ; preds = %._crit_edge.i198
  %i.amv = load i64, ptr %i.bh, align 8, !tbaa !6043
  %i.amw = add nsw i64 %i.amv, 1
  %i.amx = load i32, ptr %i.bi, align 8, !tbaa !6044
  %i.amy = load i64, ptr %i.bf, align 8, !tbaa !6041
  %i.amz = load i64, ptr %i.bj, align 8, !tbaa !6045
  %i.ana = load i64, ptr %i.bg, align 8, !tbaa !6042
  %i.anb = load i8, ptr %i.cc, align 8, !tbaa !6021
  %i.anc = icmp eq i8 %i.anb, 0
  br i1 %i.anc, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.and = load i64, ptr %i.cb, align 8, !tbaa !6019
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %i.ane = phi i64 [ %i.and, %bb.ij ], [ 0, %bb.ii ]
  %i.anf = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !6051
  %i.anh = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ani = load i32, ptr %i.anh, align 8, !tbaa !6050
  %i.anj = call fastcc i32 @fts3WriteSegdir(ptr noundef %0, i64 noundef %i.amw, i32 noundef %i.amx, i64 noundef %i.amy, i64 noundef %i.amz, i64 noundef %i.ana, i64 noundef %i.ane, ptr noundef %i.ang, i32 noundef %i.ani), !inline_history !6072
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %._crit_edge.i198
  %.3.i199 = phi i32 [ %i.anj, %bb.ik ], [ %.180.lcssa.i, %._crit_edge.i198 ] ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !6051 ; 4 uses
  %i.anm = icmp eq ptr %i.anl, null
  br i1 %i.anm, label %sqlite3_free.exit69.i, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.ann = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i65.i200 = icmp eq i32 %i.ann, 0
  br i1 %.not.i65.i200, label %bb.iq, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.ano = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i66.i = icmp eq ptr %i.ano, null
  br i1 %.not.i.i66.i, label %sqlite3_mutex_enter.exit.i67.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.anp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  call void %i.anp(ptr noundef nonnull %i.ano) #59, !inline_history !6066
  br label %sqlite3_mutex_enter.exit.i67.i

sqlite3_mutex_enter.exit.i67.i:                   ; preds = %bb.io, %bb.in
  %i.anq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.anr = call i32 %i.anq(ptr noundef nonnull %i.anl) #59, !inline_history !6067
  %i.ans = sext i32 %i.anr to i64
  %i.ant = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.anu = sub nsw i64 %i.ant, %i.ans
  store i64 %i.anu, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.anv = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.anw = add nsw i64 %i.anv, -1
  store i64 %i.anw, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.anx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.anx(ptr noundef nonnull %i.anl) #59, !inline_history !6068
  %i.any = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i68.i = icmp eq ptr %i.any, null
  br i1 %.not.i4.i68.i, label %sqlite3_free.exit69.i, label %bb.ip

bb.ip:                                            ; preds = %sqlite3_mutex_enter.exit.i67.i
  %i.anz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.anz(ptr noundef nonnull %i.any) #59, !inline_history !6069
  br label %sqlite3_free.exit69.i

bb.iq:                                            ; preds = %bb.im
  %i.aoa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.aoa(ptr noundef nonnull %i.anl) #59, !inline_history !6068
  br label %sqlite3_free.exit69.i

sqlite3_free.exit69.i:                            ; preds = %bb.iq, %bb.ip, %sqlite3_mutex_enter.exit.i67.i, %bb.il
  %i.aob = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !6053 ; 4 uses
  %i.aod = icmp eq ptr %i.aoc, null
  br i1 %i.aod, label %sqlite3_free.exit74.i, label %bb.ir

bb.ir:                                            ; preds = %sqlite3_free.exit69.i
  %i.aoe = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i70.i = icmp eq i32 %i.aoe, 0
  br i1 %.not.i70.i, label %bb.iv, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.aof = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i71.i = icmp eq ptr %i.aof, null
  br i1 %.not.i.i71.i, label %sqlite3_mutex_enter.exit.i72.i, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.aog = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  call void %i.aog(ptr noundef nonnull %i.aof) #59, !inline_history !6066
  br label %sqlite3_mutex_enter.exit.i72.i

sqlite3_mutex_enter.exit.i72.i:                   ; preds = %bb.it, %bb.is
  %i.aoh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.aoi = call i32 %i.aoh(ptr noundef nonnull %i.aoc) #59, !inline_history !6067
  %i.aoj = sext i32 %i.aoi to i64
  %i.aok = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.aol = sub nsw i64 %i.aok, %i.aoj
  store i64 %i.aol, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.aom = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.aon = add nsw i64 %i.aom, -1
  store i64 %i.aon, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.aoo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.aoo(ptr noundef nonnull %i.aoc) #59, !inline_history !6068
  %i.aop = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i73.i = icmp eq ptr %i.aop, null
  br i1 %.not.i4.i73.i, label %sqlite3_free.exit74.i, label %bb.iu

bb.iu:                                            ; preds = %sqlite3_mutex_enter.exit.i72.i
  %i.aoq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.aoq(ptr noundef nonnull %i.aop) #59, !inline_history !6069
  br label %sqlite3_free.exit74.i

bb.iv:                                            ; preds = %bb.ir
  %i.aor = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  call void %i.aor(ptr noundef nonnull %i.aoc) #59, !inline_history !6068
  br label %sqlite3_free.exit74.i

sqlite3_free.exit74.i:                            ; preds = %bb.iv, %bb.iu, %sqlite3_mutex_enter.exit.i72.i, %sqlite3_free.exit69.i
  store i32 %.3.i199, ptr %i.n, align 4, !tbaa !24
  br label %fts3IncrmergeRelease.exit

fts3IncrmergeRelease.exit:                        ; preds = %bb.hq, %sqlite3_free.exit74.i
  %i.aos = phi i32 [ %.3.i199, %sqlite3_free.exit74.i ], [ %i.aiu, %bb.hq ] ; 3 uses
  br i1 %.not120263, label %bb.iw, label %.thread274

bb.iw:                                            ; preds = %fts3IncrmergeRelease.exit
  %i.aot = load i8, ptr %i.cc, align 8, !tbaa !6021
  %i.aou = icmp eq i8 %i.aot, 0
  br i1 %i.aou, label %bb.ix, label %.thread274

bb.ix:                                            ; preds = %bb.iw
  %i.aov = add nuw nsw i64 %.3104, 1
  %i.aow = load i64, ptr %i.cb, align 8, !tbaa !6019
  %i.aox = call fastcc i32 @fts3PromoteSegments(ptr noundef %0, i64 noundef %i.aov, i64 noundef %i.aow) ; 0 uses
  br label %.thread274

bb.iy:                                            ; preds = %bb.bx
  call fastcc void @sqlite3Fts3SegReaderFinish(ptr noundef nonnull %i.u)
  br label %.thread280

.thread280:                                       ; preds = %bb.ae, %bb.af, %bb.iy
  %i.aoy = phi i32 [ %i.mj, %bb.iy ], [ 267, %bb.af ], [ %i.gk, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #59
  br label %.loopexit285

.thread274:                                       ; preds = %bb.ag, %fts3SegmentIsMaxLevel.exit.thread, %bb.bg, %thread-pre-split.thread560, %fts3IncrmergeRelease.exit, %bb.iw, %bb.ix, %thread-pre-split, %bb.bv, %bb.bw
  %i.aoz = phi i32 [ %i.mb, %thread-pre-split ], [ %i.mh, %bb.bw ], [ 0, %bb.bv ], [ %i.aos, %bb.ix ], [ %i.aos, %bb.iw ], [ %i.aos, %fts3IncrmergeRelease.exit ], [ %.3.i.ph, %thread-pre-split.thread560 ], [ %i.gk, %bb.ag ], [ %i.hl, %fts3SegmentIsMaxLevel.exit.thread ], [ %i.jy, %bb.bg ] ; 2 uses
  %.5 = phi i32 [ %.298, %thread-pre-split ], [ %.298, %bb.bw ], [ %.298, %bb.bv ], [ %.399261, %bb.ix ], [ %.399261, %bb.iw ], [ %.399261, %fts3IncrmergeRelease.exit ], [ %.298, %thread-pre-split.thread560 ], [ %.298, %bb.ag ], [ %.298, %fts3SegmentIsMaxLevel.exit.thread ], [ %.298, %bb.bg ] ; 2 uses
  %.3 = phi i32 [ %.090357, %thread-pre-split ], [ %.090357, %bb.bw ], [ %.090357, %bb.bv ], [ %.1262, %bb.ix ], [ %.1262, %bb.iw ], [ %.1262, %fts3IncrmergeRelease.exit ], [ %.090357, %thread-pre-split.thread560 ], [ %.090357, %bb.ag ], [ %.090357, %fts3SegmentIsMaxLevel.exit.thread ], [ %.090357, %bb.bg ] ; 2 uses
  call fastcc void @sqlite3Fts3SegReaderFinish(ptr noundef nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #59
  %i.apa = icmp eq i32 %i.aoz, 0
  %i.apb = icmp sgt i32 %.3, 0
  %i.apc = select i1 %i.apa, i1 %i.apb, i1 false
  br i1 %i.apc, label %bb.m, label %.loopexit285

.loopexit285:                                     ; preds = %.thread274, %.thread280
  %i.apd = phi i32 [ %i.aoy, %.thread280 ], [ %i.aoz, %.thread274 ] ; 2 uses
  %.7 = phi i32 [ %.298, %.thread280 ], [ %.5, %.thread274 ]
  %i.ape = icmp ne i32 %.7, 0
  %i.apf = icmp eq i32 %i.apd, 0
  %or.cond10 = select i1 %i.ape, i1 %i.apf, i1 false
  br i1 %or.cond10, label %bb.iz, label %.loopexit285.thread

bb.iz:                                            ; preds = %.loopexit285
  %.val = load ptr, ptr %5, align 8               ; 2 uses
  %.val125 = load i32, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store ptr null, ptr %i.a, align 8, !tbaa !513
  %i.apg = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 23, ptr noundef %i.a, ptr noundef null), !inline_history !6074 ; 2 uses
  %i.aph = icmp eq i32 %i.apg, 0
  br i1 %i.aph, label %bb.ja, label %fts3IncrmergeHintStore.exit

bb.ja:                                            ; preds = %bb.iz
  %i.api = load ptr, ptr %i.a, align 8, !tbaa !513 ; 12 uses
  %i.apj = call fastcc i32 @vdbeUnbind(ptr noundef %i.api, i32 noundef 0), !inline_history !6074
  %i.apk = icmp eq i32 %i.apj, 0
  br i1 %i.apk, label %bb.jb, label %sqlite3_bind_int.exit.i210

bb.jb:                                            ; preds = %bb.ja
  %i.apl = getelementptr inbounds nuw i8, ptr %i.api, i64 128
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !173 ; 3 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 20 ; 2 uses
  %i.apo = load i16, ptr %i.apn, align 4, !tbaa !164
  %i.app = and i16 %i.apo, -28672
  %.not.i.i.i.i213 = icmp eq i16 %i.app, 0
  br i1 %.not.i.i.i.i213, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.apm, i64 noundef 1), !inline_history !6074
  br label %sqlite3VdbeMemSetInt64.exit.i.i.i214

bb.jd:                                            ; preds = %bb.jb
  store i64 1, ptr %i.apm, align 8, !tbaa !229
  store i16 4, ptr %i.apn, align 4, !tbaa !164
  br label %sqlite3VdbeMemSetInt64.exit.i.i.i214

sqlite3VdbeMemSetInt64.exit.i.i.i214:             ; preds = %bb.jd, %bb.jc
  %i.apq = load ptr, ptr %i.api, align 8, !tbaa !148
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 24
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !25 ; 2 uses
  %.not.i8.i.i.i215 = icmp eq ptr %i.aps, null
  br i1 %.not.i8.i.i.i215, label %sqlite3_bind_int.exit.i210, label %bb.je

bb.je:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i.i214
  %i.apt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.apt(ptr noundef nonnull %i.aps) #59, !inline_history !6075
  br label %sqlite3_bind_int.exit.i210

sqlite3_bind_int.exit.i210:                       ; preds = %bb.je, %sqlite3VdbeMemSetInt64.exit.i.i.i214, %bb.ja
  %i.apu = sext i32 %.val125 to i64
  %i.apv = call fastcc i32 @vdbeUnbind(ptr noundef %i.api, i32 noundef 1), !inline_history !6074
  %i.apw = icmp eq i32 %i.apv, 0
  br i1 %i.apw, label %bb.jf, label %bindText.exit.i

bb.jf:                                            ; preds = %sqlite3_bind_int.exit.i210
  %.not.i.i212 = icmp eq ptr %.val, null
  br i1 %.not.i.i212, label %sqlite3VdbeChangeEncoding.exit.thread.i.i, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.apx = getelementptr inbounds nuw i8, ptr %i.api, i64 128
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !173 ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 56
  %i.aqa = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef nonnull %i.apz, ptr noundef nonnull %.val, i64 noundef %i.apu, i8 noundef zeroext 0, ptr noundef null), !inline_history !6074 ; 4 uses
  %i.aqb = load ptr, ptr %i.api, align 8, !tbaa !148 ; 3 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 100
  %i.aqd = load i8, ptr %i.aqc, align 4, !tbaa !846
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apy, i64 78
  store i8 %i.aqd, ptr %i.aqe, align 2, !tbaa !351
  %.not49.i.i = icmp eq i32 %i.aqa, 0
  br i1 %.not49.i.i, label %sqlite3VdbeChangeEncoding.exit.thread.i.i, label %sqlite3ApiExit.exit.i.i

sqlite3ApiExit.exit.i.i:                          ; preds = %bb.jg
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqb, i64 80
  store i32 %i.aqa, ptr %i.aqf, align 8, !tbaa !591
  call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %i.aqb, i32 noundef %i.aqa), !inline_history !6074
  %i.aqg = load ptr, ptr %i.api, align 8, !tbaa !148
  %i.aqh = call fastcc i32 @apiHandleError(ptr noundef nonnull %i.aqg, i32 noundef %i.aqa), !inline_history !6074 ; 0 uses
  br label %sqlite3VdbeChangeEncoding.exit.thread.i.i

sqlite3VdbeChangeEncoding.exit.thread.i.i:        ; preds = %sqlite3ApiExit.exit.i.i, %bb.jg, %bb.jf
  %i.aqi = load ptr, ptr %i.api, align 8, !tbaa !148
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 24
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !25 ; 2 uses
  %.not.i52.i.i = icmp eq ptr %i.aqk, null
  br i1 %.not.i52.i.i, label %bindText.exit.i, label %bb.jh

bb.jh:                                            ; preds = %sqlite3VdbeChangeEncoding.exit.thread.i.i
  %i.aql = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.aql(ptr noundef nonnull %i.aqk) #59, !inline_history !6076
  br label %bindText.exit.i

bindText.exit.i:                                  ; preds = %bb.jh, %sqlite3VdbeChangeEncoding.exit.thread.i.i, %sqlite3_bind_int.exit.i210
  %i.aqm = call i32 @sqlite3_step(ptr noundef %i.api), !inline_history !6074 ; 0 uses
  %i.aqn = call i32 @sqlite3_reset(ptr noundef %i.api), !inline_history !6074 ; 3 uses
  %i.aqo = call fastcc i32 @vdbeUnbind(ptr noundef %i.api, i32 noundef 1), !inline_history !6074
  %i.aqp = icmp eq i32 %i.aqo, 0
  br i1 %i.aqp, label %bb.ji, label %fts3IncrmergeHintStore.exit

bb.ji:                                            ; preds = %bindText.exit.i
  %i.aqq = load ptr, ptr %i.api, align 8, !tbaa !148
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 24
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i211 = icmp eq ptr %i.aqs, null
  br i1 %.not.i.i.i211, label %fts3IncrmergeHintStore.exit, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.aqt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.aqt(ptr noundef nonnull %i.aqs) #59, !inline_history !6077
  br label %fts3IncrmergeHintStore.exit

fts3IncrmergeHintStore.exit:                      ; preds = %bb.iz, %bindText.exit.i, %bb.ji, %bb.jj
end_hunk_0
