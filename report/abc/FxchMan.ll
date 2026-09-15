Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/FxchMan?download=true
inline.NumInlined: 365
inline.NumDeleted: 72
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Fxch_ManUpdate:bb.a
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !60
  %i.afi = add nsw i32 %i.afh, %.val85.i
  store i32 %i.afi, ptr %i.afg, align 4, !tbaa !60
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !49 ; 8 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 4 ; 3 uses
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !23 ; 6 uses
  %i.afn = load i32, ptr %i.afk, align 8, !tbaa !39 ; 2 uses
  %i.afo = icmp eq i32 %i.afm, %i.afn
  br i1 %i.afo, label %bb.fp, label %Vec_WecPushLevel.exit221.i

bb.fp:                                            ; preds = %Vec_IntPush.exit211.i
  %i.afp = icmp slt i32 %i.afm, 16
  br i1 %i.afp, label %bb.fq, label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afk, i64 8 ; 2 uses
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !40 ; 2 uses
  %.not13.i.i218.i = icmp eq ptr %i.afr, null
  br i1 %.not13.i.i218.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.afs = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.afr, i64 noundef 256) #23
  %.pre.i.i219.i = load i32, ptr %i.afk, align 8, !tbaa !39
  br label %Vec_WecGrow.exit.i220.i

bb.fs:                                            ; preds = %bb.fq
  %i.aft = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #21
  br label %Vec_WecGrow.exit.i220.i

Vec_WecGrow.exit.i220.i:                          ; preds = %bb.fs, %bb.fr
  %i.afu = phi i32 [ %.pre.i.i219.i, %bb.fr ], [ %i.afm, %bb.fs ] ; 2 uses
  %i.afv = phi ptr [ %i.afs, %bb.fr ], [ %i.aft, %bb.fs ] ; 2 uses
  store ptr %i.afv, ptr %i.afq, align 8, !tbaa !40
  %i.afw = sext i32 %i.afu to i64
  %i.afx = getelementptr inbounds [16 x i8], ptr %i.afv, i64 %i.afw
  %i.afy = sub nsw i32 16, %i.afu
  br label %Vec_WecPushLevel.exit221.sink.split.i

bb.ft:                                            ; preds = %bb.fp
  %i.afz = shl nuw nsw i32 %i.afm, 1              ; 3 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afk, i64 8 ; 2 uses
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !40 ; 2 uses
  %.not13.i10.i216.i = icmp eq ptr %i.agb, null
  %i.agc = zext nneg i32 %i.afz to i64
  %i.agd = shl nuw nsw i64 %i.agc, 4              ; 2 uses
  br i1 %.not13.i10.i216.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.age = tail call ptr @realloc(ptr noundef nonnull %i.agb, i64 noundef %i.agd) #23
  %.pre.i11.i217.i = load i32, ptr %i.afk, align 8, !tbaa !39
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft
  %i.agf = tail call noalias ptr @malloc(i64 noundef %i.agd) #21
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.agg = phi i32 [ %.pre.i11.i217.i, %bb.fu ], [ %i.afm, %bb.fv ] ; 2 uses
  %i.agh = phi ptr [ %i.age, %bb.fu ], [ %i.agf, %bb.fv ] ; 2 uses
  store ptr %i.agh, ptr %i.aga, align 8, !tbaa !40
  %i.agi = sext i32 %i.agg to i64
  %i.agj = getelementptr inbounds [16 x i8], ptr %i.agh, i64 %i.agi
  %i.agk = sub nsw i32 %i.afz, %i.agg
  br label %Vec_WecPushLevel.exit221.sink.split.i

Vec_WecPushLevel.exit221.sink.split.i:            ; preds = %bb.fw, %Vec_WecGrow.exit.i220.i
  %.sink322.i = phi i32 [ %i.afy, %Vec_WecGrow.exit.i220.i ], [ %i.agk, %bb.fw ]
  %.sink319.i = phi ptr [ %i.afx, %Vec_WecGrow.exit.i220.i ], [ %i.agj, %bb.fw ]
  %.sink318.i = phi i32 [ 16, %Vec_WecGrow.exit.i220.i ], [ %i.afz, %bb.fw ]
  %i.agl = sext i32 %.sink322.i to i64
  %i.agm = shl nsw i64 %i.agl, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink319.i, i8 0, i64 %i.agm, i1 false)
  store i32 %.sink318.i, ptr %i.afk, align 8, !tbaa !39
  %.pre478 = load i32, ptr %i.afl, align 4, !tbaa !23
  %.pre479 = load ptr, ptr %i.afj, align 8, !tbaa !49 ; 2 uses
  %.pre480 = load i32, ptr %.pre479, align 8, !tbaa !39
  br label %Vec_WecPushLevel.exit221.i

Vec_WecPushLevel.exit221.i:                       ; preds = %Vec_WecPushLevel.exit221.sink.split.i, %Vec_IntPush.exit211.i
  %i.agn = phi i32 [ %.pre480, %Vec_WecPushLevel.exit221.sink.split.i ], [ %i.afn, %Vec_IntPush.exit211.i ] ; 5 uses
  %i.ago = phi ptr [ %.pre479, %Vec_WecPushLevel.exit221.sink.split.i ], [ %i.afk, %Vec_IntPush.exit211.i ] ; 7 uses
  %i.agp = phi i32 [ %.pre478, %Vec_WecPushLevel.exit221.sink.split.i ], [ %i.afm, %Vec_IntPush.exit211.i ]
  %i.agq = add nsw i32 %i.agp, 1
  store i32 %i.agq, ptr %i.afl, align 4, !tbaa !23
  %i.agr = getelementptr inbounds nuw i8, ptr %i.ago, i64 4 ; 3 uses
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !23 ; 2 uses
  %i.agt = icmp eq i32 %i.ags, %i.agn
  br i1 %i.agt, label %bb.fx, label %Fxch_ManCreateCube.exit

bb.fx:                                            ; preds = %Vec_WecPushLevel.exit221.i
  %i.agu = icmp slt i32 %i.agn, 16
  br i1 %i.agu, label %bb.fy, label %bb.gb

bb.fy:                                            ; preds = %bb.fx
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ago, i64 8 ; 2 uses
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !40 ; 2 uses
  %.not13.i.i228.i = icmp eq ptr %i.agw, null
  br i1 %.not13.i.i228.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.agx = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.agw, i64 noundef 256) #23
  %.pre.i.i229.i = load i32, ptr %i.ago, align 8, !tbaa !39
  br label %Vec_WecGrow.exit.i230.i

bb.ga:                                            ; preds = %bb.fy
  %i.agy = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #21
  br label %Vec_WecGrow.exit.i230.i

Vec_WecGrow.exit.i230.i:                          ; preds = %bb.ga, %bb.fz
  %i.agz = phi i32 [ %.pre.i.i229.i, %bb.fz ], [ %i.agn, %bb.ga ] ; 2 uses
  %i.aha = phi ptr [ %i.agx, %bb.fz ], [ %i.agy, %bb.ga ] ; 2 uses
  store ptr %i.aha, ptr %i.agv, align 8, !tbaa !40
  %i.ahb = sext i32 %i.agz to i64
  %i.ahc = getelementptr inbounds [16 x i8], ptr %i.aha, i64 %i.ahb
  %i.ahd = sub nsw i32 16, %i.agz
  br label %Vec_WecPushLevel.exit231.sink.split.i

bb.gb:                                            ; preds = %bb.fx
  %i.ahe = shl nuw nsw i32 %i.agn, 1              ; 3 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ago, i64 8 ; 2 uses
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !40 ; 2 uses
  %.not13.i10.i226.i = icmp eq ptr %i.ahg, null
  %i.ahh = zext nneg i32 %i.ahe to i64
  %i.ahi = shl nuw nsw i64 %i.ahh, 4              ; 2 uses
  br i1 %.not13.i10.i226.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.ahj = tail call ptr @realloc(ptr noundef nonnull %i.ahg, i64 noundef %i.ahi) #23
  %.pre.i11.i227.i = load i32, ptr %i.ago, align 8, !tbaa !39
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  %i.ahk = tail call noalias ptr @malloc(i64 noundef %i.ahi) #21
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.ahl = phi i32 [ %.pre.i11.i227.i, %bb.gc ], [ %i.agn, %bb.gd ] ; 2 uses
  %i.ahm = phi ptr [ %i.ahj, %bb.gc ], [ %i.ahk, %bb.gd ] ; 2 uses
  store ptr %i.ahm, ptr %i.ahf, align 8, !tbaa !40
  %i.ahn = sext i32 %i.ahl to i64
  %i.aho = getelementptr inbounds [16 x i8], ptr %i.ahm, i64 %i.ahn
  %i.ahp = sub nsw i32 %i.ahe, %i.ahl
  br label %Vec_WecPushLevel.exit231.sink.split.i

Vec_WecPushLevel.exit231.sink.split.i:            ; preds = %bb.ge, %Vec_WecGrow.exit.i230.i
  %.sink327.i = phi i32 [ %i.ahd, %Vec_WecGrow.exit.i230.i ], [ %i.ahp, %bb.ge ]
  %.sink324.i = phi ptr [ %i.ahc, %Vec_WecGrow.exit.i230.i ], [ %i.aho, %bb.ge ]
  %.sink323.i = phi i32 [ 16, %Vec_WecGrow.exit.i230.i ], [ %i.ahe, %bb.ge ]
  %i.ahq = sext i32 %.sink327.i to i64
  %i.ahr = shl nsw i64 %i.ahq, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink324.i, i8 0, i64 %i.ahr, i1 false)
  store i32 %.sink323.i, ptr %i.ago, align 8, !tbaa !39
  %.pre481 = load i32, ptr %i.agr, align 4, !tbaa !23
  %.pre482 = load ptr, ptr %i.afj, align 8, !tbaa !49
  br label %Fxch_ManCreateCube.exit

Fxch_ManCreateCube.exit:                          ; preds = %Vec_WecPushLevel.exit221.i, %Vec_WecPushLevel.exit231.sink.split.i
  %i.ahs = phi ptr [ %i.ago, %Vec_WecPushLevel.exit221.i ], [ %.pre482, %Vec_WecPushLevel.exit231.sink.split.i ] ; 2 uses
  %i.aht = phi i32 [ %i.ags, %Vec_WecPushLevel.exit221.i ], [ %.pre481, %Vec_WecPushLevel.exit231.sink.split.i ]
  %i.ahu = add nsw i32 %i.aht, 1
  store i32 %i.ahu, ptr %i.agr, align 4, !tbaa !23
  %i.ahv = getelementptr i8, ptr %i.ahs, i64 4
  %.val.i347 = load i32, ptr %i.ahv, align 4, !tbaa !23
  %i.ahw = getelementptr i8, ptr %i.ahs, i64 8
  %.val21.i = load ptr, ptr %i.ahw, align 8, !tbaa !40
  %i.ahx = sext i32 %.val.i347 to i64
  %i.ahy = getelementptr [16 x i8], ptr %.val21.i, i64 %i.ahx ; 3 uses
  %i.ahz = getelementptr i8, ptr %i.ahy, i64 -32  ; 2 uses
  %i.aia = load ptr, ptr %i.aw, align 8, !tbaa !44 ; 2 uses
  %i.aib = getelementptr i8, ptr %i.aia, i64 4
  %.val2364.i = load i32, ptr %i.aib, align 4, !tbaa !28
  %i.aic = icmp sgt i32 %.val2364.i, 0
  br i1 %i.aic, label %.lr.ph.i349, label %Fxch_ManExtractDivFromCube.exit

.lr.ph.i349:                                      ; preds = %Fxch_ManCreateCube.exit
  %i.aid = shl nsw i32 %i.mc, 1
  %i.aie = getelementptr i8, ptr %i.ahy, i64 -28  ; 3 uses
  %i.aif = getelementptr i8, ptr %i.ahy, i64 -24  ; 4 uses
  br label %bb.gf

bb.gf:                                            ; preds = %Vec_IntPush.exit57.i, %.lr.ph.i349
  %indvars.iv.i350 = phi i64 [ 0, %.lr.ph.i349 ], [ %indvars.iv.next.i352, %Vec_IntPush.exit57.i ] ; 2 uses
  %i.aig = phi ptr [ %i.aia, %.lr.ph.i349 ], [ %i.amx, %Vec_IntPush.exit57.i ]
  %i.aih = getelementptr i8, ptr %i.aig, i64 8
  %.val22.i = load ptr, ptr %i.aih, align 8, !tbaa !27
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %.val22.i, i64 %indvars.iv.i350
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !61 ; 2 uses
  %.val24.i = load ptr, ptr %0, align 8, !tbaa !21
  %i.aik = getelementptr i8, ptr %.val24.i, i64 8
  %.val24.val.i = load ptr, ptr %i.aik, align 8, !tbaa !40 ; 3 uses
  %i.ail = sext i32 %i.aij to i64
  %i.aim = getelementptr inbounds [16 x i8], ptr %.val24.val.i, i64 %i.ail ; 8 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 4 ; 7 uses
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !28 ; 7 uses
  %i.aip = icmp sgt i32 %i.aio, 1
  br i1 %i.aip, label %.lr.ph.i.i363, label %Vec_IntRemove1.exit41.i

.lr.ph.i.i363:                                    ; preds = %bb.gf
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aim, i64 8
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !27 ; 6 uses
  %wide.trip.count.i.i364 = zext nneg i32 %i.aio to i64
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gh, %.lr.ph.i.i363
  %indvar.i.i = phi i64 [ 0, %.lr.ph.i.i363 ], [ %indvar.next.i.i, %bb.gh ] ; 3 uses
  %indvars.iv.i.i365 = phi i64 [ 1, %.lr.ph.i.i363 ], [ %indvars.iv.next.i.i366, %bb.gh ] ; 4 uses
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.air, i64 %indvars.iv.i.i365
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !61
  %i.aiu = xor i32 %i.ait, %.0196
  %i.aiv = icmp eq i32 %i.aiu, 1
  br i1 %i.aiv, label %.preheader.i.i, label %bb.gh

.preheader.i.i:                                   ; preds = %bb.gg
  %i.aiw = trunc nuw nsw i64 %indvars.iv.i.i365 to i32
  %.122.i.i = add nuw nsw i32 %i.aiw, 1
  %i.aix = icmp slt i32 %.122.i.i, %i.aio
  br i1 %i.aix, label %.lr.ph25.i.i, label %._crit_edge.i.i368

.lr.ph25.i.i:                                     ; preds = %.preheader.i.i
  %i.aiy = shl nuw nsw i64 %indvars.iv.i.i365, 2
  %i.aiz = getelementptr nuw i8, ptr %i.air, i64 %i.aiy
  %2 = shl nuw nsw i64 %indvar.i.i, 2
  %scevgep.i.i369 = getelementptr nuw i8, ptr %i.air, i64 %2
  %scevgep29.i.i = getelementptr nuw i8, ptr %scevgep.i.i369, i64 8
  %i.aja = add nsw i32 %i.aio, -3
  %i.ajb = trunc i64 %indvar.i.i to i32
  %i.ajc = sub i32 %i.aja, %i.ajb
  %i.ajd = zext i32 %i.ajc to i64
  %i.aje = shl nuw nsw i64 %i.ajd, 2
  %i.ajf = add nuw nsw i64 %i.aje, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aiz, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i.i, i64 %i.ajf, i1 false), !tbaa !61
  %.pre.i.i370 = load i32, ptr %i.ain, align 4, !tbaa !28
  br label %._crit_edge.i.i368

bb.gh:                                            ; preds = %bb.gg
  %indvars.iv.next.i.i366 = add nuw nsw i64 %indvars.iv.i.i365, 1 ; 2 uses
  %exitcond.not.i.i367 = icmp eq i64 %indvars.iv.next.i.i366, %wide.trip.count.i.i364
  %indvar.next.i.i = add nuw nsw i64 %indvar.i.i, 1
  br i1 %exitcond.not.i.i367, label %Vec_IntRemove1.exit.i, label %bb.gg, !llvm.loop !128

._crit_edge.i.i368:                               ; preds = %.lr.ph25.i.i, %.preheader.i.i
  %i.ajg = phi i32 [ %.pre.i.i370, %.lr.ph25.i.i ], [ %i.aio, %.preheader.i.i ]
  %i.ajh = add nsw i32 %i.ajg, -1                 ; 2 uses
  store i32 %i.ajh, ptr %i.ain, align 4, !tbaa !28
  br label %Vec_IntRemove1.exit.i

Vec_IntRemove1.exit.i:                            ; preds = %bb.gh, %._crit_edge.i.i368
  %.pr58.i = phi i32 [ %i.ajh, %._crit_edge.i.i368 ], [ %i.aio, %bb.gh ] ; 7 uses
  %i.aji = icmp sgt i32 %.pr58.i, 1
  br i1 %i.aji, label %.lr.ph.i27.i, label %Vec_IntRemove1.exit41.i

.lr.ph.i27.i:                                     ; preds = %Vec_IntRemove1.exit.i
  %wide.trip.count.i28.i = zext nneg i32 %.pr58.i to i64
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gj, %.lr.ph.i27.i
  %indvar.i29.i = phi i64 [ 0, %.lr.ph.i27.i ], [ %indvar.next.i33.i, %bb.gj ] ; 3 uses
  %indvars.iv.i30.i = phi i64 [ 1, %.lr.ph.i27.i ], [ %indvars.iv.next.i31.i, %bb.gj ] ; 4 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.air, i64 %indvars.iv.i30.i
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !61
  %i.ajl = xor i32 %i.ajk, %.0195
  %i.ajm = icmp eq i32 %i.ajl, 1
  br i1 %i.ajm, label %.preheader.i34.i, label %bb.gj

.preheader.i34.i:                                 ; preds = %bb.gi
  %i.ajn = trunc nuw nsw i64 %indvars.iv.i30.i to i32
  %.122.i35.i = add nuw nsw i32 %i.ajn, 1
  %i.ajo = icmp slt i32 %.122.i35.i, %.pr58.i
  br i1 %i.ajo, label %.lr.ph25.i37.i, label %._crit_edge.i36.i

.lr.ph25.i37.i:                                   ; preds = %.preheader.i34.i
  %i.ajp = shl nuw nsw i64 %indvars.iv.i30.i, 2
  %i.ajq = getelementptr nuw i8, ptr %i.air, i64 %i.ajp
  %3 = shl nuw nsw i64 %indvar.i29.i, 2
  %scevgep.i38.i = getelementptr nuw i8, ptr %i.air, i64 %3
  %scevgep29.i39.i = getelementptr nuw i8, ptr %scevgep.i38.i, i64 8
  %i.ajr = add nsw i32 %.pr58.i, -3
  %i.ajs = trunc i64 %indvar.i29.i to i32
  %i.ajt = sub i32 %i.ajr, %i.ajs
  %i.aju = zext i32 %i.ajt to i64
  %i.ajv = shl nuw nsw i64 %i.aju, 2
  %i.ajw = add nuw nsw i64 %i.ajv, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ajq, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i39.i, i64 %i.ajw, i1 false), !tbaa !61
  %.pre.i40.i = load i32, ptr %i.ain, align 4, !tbaa !28
  br label %._crit_edge.i36.i

bb.gj:                                            ; preds = %bb.gi
  %indvars.iv.next.i31.i = add nuw nsw i64 %indvars.iv.i30.i, 1 ; 2 uses
  %exitcond.not.i32.i = icmp eq i64 %indvars.iv.next.i31.i, %wide.trip.count.i28.i
  %indvar.next.i33.i = add nuw nsw i64 %indvar.i29.i, 1
  br i1 %exitcond.not.i32.i, label %Vec_IntRemove1.exit41.i, label %bb.gi, !llvm.loop !128

._crit_edge.i36.i:                                ; preds = %.lr.ph25.i37.i, %.preheader.i34.i
  %i.ajx = phi i32 [ %.pre.i40.i, %.lr.ph25.i37.i ], [ %.pr58.i, %.preheader.i34.i ]
  %i.ajy = add nsw i32 %i.ajx, -1                 ; 2 uses
  store i32 %i.ajy, ptr %i.ain, align 4, !tbaa !28
  br label %Vec_IntRemove1.exit41.i

Vec_IntRemove1.exit41.i:                          ; preds = %bb.gj, %._crit_edge.i36.i, %Vec_IntRemove1.exit.i, %bb.gf
  %i.ajz = phi i32 [ %i.aio, %bb.gf ], [ %i.ajy, %._crit_edge.i36.i ], [ %.pr58.i, %Vec_IntRemove1.exit.i ], [ %.pr58.i, %bb.gj ] ; 7 uses
  %i.aka = load i32, ptr %i.aim, align 8, !tbaa !26
  %i.akb = icmp eq i32 %i.ajz, %i.aka
  br i1 %i.akb, label %bb.gk, label %Vec_IntPush.exit.i351

bb.gk:                                            ; preds = %Vec_IntRemove1.exit41.i
  %i.akc = icmp slt i32 %i.ajz, 16
  br i1 %i.akc, label %bb.gl, label %bb.go

bb.gl:                                            ; preds = %bb.gk
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aim, i64 8 ; 2 uses
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i361 = icmp eq ptr %i.ake, null
  br i1 %.not9.i.i.i361, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.akf = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ake, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i362

bb.gn:                                            ; preds = %bb.gl
  %i.akg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i.i362

Vec_IntGrow.exit.i.i362:                          ; preds = %bb.gn, %bb.gm
  %i.akh = phi ptr [ %i.akf, %bb.gm ], [ %i.akg, %bb.gn ]
  store ptr %i.akh, ptr %i.akd, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i.i356

bb.go:                                            ; preds = %bb.gk
  %i.aki = icmp samesign ult i32 %i.ajz, 1073741823
  %i.akj = shl nuw nsw i32 %i.ajz, 1
  %spec.select.i.i353 = select i1 %i.aki, i32 %i.akj, i32 2147483647 ; 3 uses
  %.not.i9.i.i354 = icmp samesign ult i32 %i.ajz, %spec.select.i.i353
  br i1 %.not.i9.i.i354, label %bb.gp, label %Vec_IntPush.exit.i351

bb.gp:                                            ; preds = %bb.go
  %i.akk = getelementptr inbounds nuw i8, ptr %i.aim, i64 8 ; 2 uses
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !27 ; 2 uses
  %.not9.i10.i.i355 = icmp eq ptr %i.akl, null
  %i.akm = zext nneg i32 %spec.select.i.i353 to i64
  %i.akn = shl nuw nsw i64 %i.akm, 2              ; 2 uses
  br i1 %.not9.i10.i.i355, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.ako = tail call ptr @realloc(ptr noundef nonnull %i.akl, i64 noundef %i.akn) #23
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gp
  %i.akp = tail call noalias ptr @malloc(i64 noundef %i.akn) #21
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.akq = phi ptr [ %i.ako, %bb.gq ], [ %i.akp, %bb.gr ]
  store ptr %i.akq, ptr %i.akk, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i.i356

Vec_IntGrow.exit11.sink.split.i.i356:             ; preds = %bb.gs, %Vec_IntGrow.exit.i.i362
  %spec.select.sink.i.i357 = phi i32 [ %spec.select.i.i353, %bb.gs ], [ 16, %Vec_IntGrow.exit.i.i362 ]
  store i32 %spec.select.sink.i.i357, ptr %i.aim, align 8, !tbaa !26
  %.pre.i358 = load i32, ptr %i.ain, align 4, !tbaa !28
  %.pre71.i359 = load ptr, ptr %0, align 8, !tbaa !21
  %.phi.trans.insert.i360 = getelementptr i8, ptr %.pre71.i359, i64 8
  %.val25.pre.i = load ptr, ptr %.phi.trans.insert.i360, align 8, !tbaa !40
  br label %Vec_IntPush.exit.i351

Vec_IntPush.exit.i351:                            ; preds = %Vec_IntGrow.exit11.sink.split.i.i356, %bb.go, %Vec_IntRemove1.exit41.i
  %.val25.i = phi ptr [ %.val24.val.i, %Vec_IntRemove1.exit41.i ], [ %.val24.val.i, %bb.go ], [ %.val25.pre.i, %Vec_IntGrow.exit11.sink.split.i.i356 ]
  %i.akr = phi i32 [ %i.ajz, %Vec_IntRemove1.exit41.i ], [ %i.ajz, %bb.go ], [ %.pre.i358, %Vec_IntGrow.exit11.sink.split.i.i356 ] ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.aim, i64 8
  %i.akt = load ptr, ptr %i.aks, align 8, !tbaa !27
  %i.aku = add nsw i32 %i.akr, 1
  store i32 %i.aku, ptr %i.ain, align 4, !tbaa !28
  %i.akv = sext i32 %i.akr to i64
  %i.akw = getelementptr inbounds [4 x i8], ptr %i.akt, i64 %i.akv
  store i32 %i.aid, ptr %i.akw, align 4, !tbaa !61
  %i.akx = ptrtoint ptr %i.aim to i64
  %i.aky = ptrtoint ptr %.val25.i to i64
  %i.akz = sub i64 %i.akx, %i.aky
  %i.ala = lshr exact i64 %i.akz, 4
  %i.alb = trunc i64 %i.ala to i32
  %i.alc = load i32, ptr %i.aie, align 4, !tbaa !28 ; 7 uses
  %i.ald = load i32, ptr %i.ahz, align 8, !tbaa !26
  %i.ale = icmp eq i32 %i.alc, %i.ald
  br i1 %i.ale, label %bb.gt, label %Vec_IntPush.exit.Vec_IntPush.exit49_crit_edge.i

Vec_IntPush.exit.Vec_IntPush.exit49_crit_edge.i:  ; preds = %Vec_IntPush.exit.i351
  %.pre73.i = load ptr, ptr %i.aif, align 8, !tbaa !27
  br label %Vec_IntPush.exit49.i

bb.gt:                                            ; preds = %Vec_IntPush.exit.i351
  %i.alf = icmp slt i32 %i.alc, 16
  br i1 %i.alf, label %bb.gu, label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  %i.alg = load ptr, ptr %i.aif, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i47.i = icmp eq ptr %i.alg, null
  br i1 %.not9.i.i47.i, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.alh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.alg, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i45.i

bb.gw:                                            ; preds = %bb.gu
  %i.ali = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i45.i

bb.gx:                                            ; preds = %bb.gt
  %i.alj = icmp samesign ult i32 %i.alc, 1073741823
  %i.alk = shl nuw nsw i32 %i.alc, 1
  %spec.select.i42.i = select i1 %i.alj, i32 %i.alk, i32 2147483647 ; 4 uses
  %.not.i9.i43.i = icmp samesign ult i32 %i.alc, %spec.select.i42.i
  %.pre74.i = load ptr, ptr %i.aif, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i43.i, label %bb.gy, label %Vec_IntPush.exit49.i

bb.gy:                                            ; preds = %bb.gx
  %.not9.i10.i44.i = icmp eq ptr %.pre74.i, null
  %i.all = zext nneg i32 %spec.select.i42.i to i64
  %i.alm = shl nuw nsw i64 %i.all, 2              ; 2 uses
  br i1 %.not9.i10.i44.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.aln = tail call ptr @realloc(ptr noundef nonnull %.pre74.i, i64 noundef %i.alm) #23
  br label %Vec_IntGrow.exit11.sink.split.i45.i

bb.ha:                                            ; preds = %bb.gy
  %i.alo = tail call noalias ptr @malloc(i64 noundef %i.alm) #21
  br label %Vec_IntGrow.exit11.sink.split.i45.i

Vec_IntGrow.exit11.sink.split.i45.i:              ; preds = %bb.ha, %bb.gz, %bb.gw, %bb.gv
  %i.alp = phi ptr [ %i.ali, %bb.gw ], [ %i.alh, %bb.gv ], [ %i.aln, %bb.gz ], [ %i.alo, %bb.ha ] ; 2 uses
  %spec.select.sink.i46.i = phi i32 [ 16, %bb.gw ], [ 16, %bb.gv ], [ %spec.select.i42.i, %bb.gz ], [ %spec.select.i42.i, %bb.ha ]
  store ptr %i.alp, ptr %i.aif, align 8, !tbaa !27
  store i32 %spec.select.sink.i46.i, ptr %i.ahz, align 8, !tbaa !26
  %.pre75.i = load i32, ptr %i.aie, align 4, !tbaa !28
  br label %Vec_IntPush.exit49.i

Vec_IntPush.exit49.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i45.i, %bb.gx, %Vec_IntPush.exit.Vec_IntPush.exit49_crit_edge.i
  %i.alq = phi i32 [ %i.alc, %Vec_IntPush.exit.Vec_IntPush.exit49_crit_edge.i ], [ %i.alc, %bb.gx ], [ %.pre75.i, %Vec_IntGrow.exit11.sink.split.i45.i ] ; 2 uses
  %i.alr = phi ptr [ %.pre73.i, %Vec_IntPush.exit.Vec_IntPush.exit49_crit_edge.i ], [ %.pre74.i, %bb.gx ], [ %i.alp, %Vec_IntGrow.exit11.sink.split.i45.i ]
  %i.als = add nsw i32 %i.alq, 1
  store i32 %i.als, ptr %i.aie, align 4, !tbaa !28
  %i.alt = sext i32 %i.alq to i64
  %i.alu = getelementptr inbounds [4 x i8], ptr %i.alr, i64 %i.alt
  store i32 %i.alb, ptr %i.alu, align 4, !tbaa !61
  %i.alv = load ptr, ptr %i.lw, align 8, !tbaa !46 ; 6 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 4 ; 3 uses
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !28 ; 7 uses
  %i.aly = load i32, ptr %i.alv, align 8, !tbaa !26
  %i.alz = icmp eq i32 %i.alx, %i.aly
  br i1 %i.alz, label %bb.hb, label %Vec_IntPush.exit57.i

bb.hb:                                            ; preds = %Vec_IntPush.exit49.i
  %i.ama = icmp slt i32 %i.alx, 16
  br i1 %i.ama, label %bb.hc, label %bb.hf

bb.hc:                                            ; preds = %bb.hb
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alv, i64 8 ; 2 uses
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i55.i = icmp eq ptr %i.amc, null
  br i1 %.not9.i.i55.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.amd = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.amc, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i56.i

bb.he:                                            ; preds = %bb.hc
  %i.ame = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i56.i

Vec_IntGrow.exit.i56.i:                           ; preds = %bb.he, %bb.hd
  %i.amf = phi ptr [ %i.amd, %bb.hd ], [ %i.ame, %bb.he ]
  store ptr %i.amf, ptr %i.amb, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i53.i

bb.hf:                                            ; preds = %bb.hb
  %i.amg = icmp samesign ult i32 %i.alx, 1073741823
  %i.amh = shl nuw nsw i32 %i.alx, 1
  %spec.select.i50.i = select i1 %i.amg, i32 %i.amh, i32 2147483647 ; 3 uses
  %.not.i9.i51.i = icmp samesign ult i32 %i.alx, %spec.select.i50.i
  br i1 %.not.i9.i51.i, label %bb.hg, label %Vec_IntPush.exit57.i

bb.hg:                                            ; preds = %bb.hf
  %i.ami = getelementptr inbounds nuw i8, ptr %i.alv, i64 8 ; 2 uses
  %i.amj = load ptr, ptr %i.ami, align 8, !tbaa !27 ; 2 uses
end_hunk_0
