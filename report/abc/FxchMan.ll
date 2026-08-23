Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/FxchMan?download=true
inline.NumInlined: 365
inline.NumDeleted: 72
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Fxch_ManUpdate:bb.a
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !62
  %i.afm = add nsw i32 %i.afl, %.val85.i
  store i32 %i.afm, ptr %i.afk, align 4, !tbaa !62
  %i.afn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !49 ; 8 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 4 ; 3 uses
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !19 ; 6 uses
  %i.afr = load i32, ptr %i.afo, align 8, !tbaa !39 ; 2 uses
  %i.afs = icmp eq i32 %i.afq, %i.afr
  br i1 %i.afs, label %bb.fq, label %Vec_WecPushLevel.exit221.i

bb.fq:                                            ; preds = %Vec_IntPush.exit211.i
  %i.aft = icmp slt i32 %i.afq, 16
  br i1 %i.aft, label %bb.fr, label %bb.fu

bb.fr:                                            ; preds = %bb.fq
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afo, i64 8 ; 2 uses
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !40 ; 2 uses
  %.not13.i.i218.i = icmp eq ptr %i.afv, null
  br i1 %.not13.i.i218.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.afw = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.afv, i64 noundef 256) #23
  %.pre.i.i219.i = load i32, ptr %i.afo, align 8, !tbaa !39
  br label %Vec_WecGrow.exit.i220.i

bb.ft:                                            ; preds = %bb.fr
  %i.afx = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #21
  br label %Vec_WecGrow.exit.i220.i

Vec_WecGrow.exit.i220.i:                          ; preds = %bb.ft, %bb.fs
  %i.afy = phi i32 [ %.pre.i.i219.i, %bb.fs ], [ %i.afq, %bb.ft ] ; 2 uses
  %i.afz = phi ptr [ %i.afw, %bb.fs ], [ %i.afx, %bb.ft ] ; 2 uses
  store ptr %i.afz, ptr %i.afu, align 8, !tbaa !40
  %i.aga = sext i32 %i.afy to i64
  %i.agb = getelementptr inbounds [16 x i8], ptr %i.afz, i64 %i.aga
  %i.agc = sub nsw i32 16, %i.afy
  br label %Vec_WecPushLevel.exit221.sink.split.i

bb.fu:                                            ; preds = %bb.fq
  %i.agd = shl nuw nsw i32 %i.afq, 1              ; 3 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.afo, i64 8 ; 2 uses
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !40 ; 2 uses
  %.not13.i10.i216.i = icmp eq ptr %i.agf, null
  %i.agg = zext nneg i32 %i.agd to i64
  %i.agh = shl nuw nsw i64 %i.agg, 4              ; 2 uses
  br i1 %.not13.i10.i216.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.agi = tail call ptr @realloc(ptr noundef nonnull %i.agf, i64 noundef %i.agh) #23
  %.pre.i11.i217.i = load i32, ptr %i.afo, align 8, !tbaa !39
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fu
  %i.agj = tail call noalias ptr @malloc(i64 noundef %i.agh) #21
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.agk = phi i32 [ %.pre.i11.i217.i, %bb.fv ], [ %i.afq, %bb.fw ] ; 2 uses
  %i.agl = phi ptr [ %i.agi, %bb.fv ], [ %i.agj, %bb.fw ] ; 2 uses
  store ptr %i.agl, ptr %i.age, align 8, !tbaa !40
  %i.agm = sext i32 %i.agk to i64
  %i.agn = getelementptr inbounds [16 x i8], ptr %i.agl, i64 %i.agm
  %i.ago = sub nsw i32 %i.agd, %i.agk
  br label %Vec_WecPushLevel.exit221.sink.split.i

Vec_WecPushLevel.exit221.sink.split.i:            ; preds = %bb.fx, %Vec_WecGrow.exit.i220.i
  %.sink322.i = phi i32 [ %i.agc, %Vec_WecGrow.exit.i220.i ], [ %i.ago, %bb.fx ]
  %.sink319.i = phi ptr [ %i.agb, %Vec_WecGrow.exit.i220.i ], [ %i.agn, %bb.fx ]
  %.sink318.i = phi i32 [ 16, %Vec_WecGrow.exit.i220.i ], [ %i.agd, %bb.fx ]
  %i.agp = sext i32 %.sink322.i to i64
  %i.agq = shl nsw i64 %i.agp, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink319.i, i8 0, i64 %i.agq, i1 false)
  store i32 %.sink318.i, ptr %i.afo, align 8, !tbaa !39
  %.pre478 = load i32, ptr %i.afp, align 4, !tbaa !19
  %.pre479 = load ptr, ptr %i.afn, align 8, !tbaa !49 ; 2 uses
  %.pre480 = load i32, ptr %.pre479, align 8, !tbaa !39
  br label %Vec_WecPushLevel.exit221.i

Vec_WecPushLevel.exit221.i:                       ; preds = %Vec_WecPushLevel.exit221.sink.split.i, %Vec_IntPush.exit211.i
  %i.agr = phi i32 [ %.pre480, %Vec_WecPushLevel.exit221.sink.split.i ], [ %i.afr, %Vec_IntPush.exit211.i ] ; 5 uses
  %i.ags = phi ptr [ %.pre479, %Vec_WecPushLevel.exit221.sink.split.i ], [ %i.afo, %Vec_IntPush.exit211.i ] ; 7 uses
  %i.agt = phi i32 [ %.pre478, %Vec_WecPushLevel.exit221.sink.split.i ], [ %i.afq, %Vec_IntPush.exit211.i ]
  %i.agu = add nsw i32 %i.agt, 1
  store i32 %i.agu, ptr %i.afp, align 4, !tbaa !19
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ags, i64 4 ; 3 uses
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !19 ; 2 uses
  %i.agx = icmp eq i32 %i.agw, %i.agr
  br i1 %i.agx, label %bb.fy, label %Fxch_ManCreateCube.exit

bb.fy:                                            ; preds = %Vec_WecPushLevel.exit221.i
  %i.agy = icmp slt i32 %i.agr, 16
  br i1 %i.agy, label %bb.fz, label %bb.gc

bb.fz:                                            ; preds = %bb.fy
  %i.agz = getelementptr inbounds nuw i8, ptr %i.ags, i64 8 ; 2 uses
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !40 ; 2 uses
  %.not13.i.i228.i = icmp eq ptr %i.aha, null
  br i1 %.not13.i.i228.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ahb = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.aha, i64 noundef 256) #23
  %.pre.i.i229.i = load i32, ptr %i.ags, align 8, !tbaa !39
  br label %Vec_WecGrow.exit.i230.i

bb.gb:                                            ; preds = %bb.fz
  %i.ahc = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #21
  br label %Vec_WecGrow.exit.i230.i

Vec_WecGrow.exit.i230.i:                          ; preds = %bb.gb, %bb.ga
  %i.ahd = phi i32 [ %.pre.i.i229.i, %bb.ga ], [ %i.agr, %bb.gb ] ; 2 uses
  %i.ahe = phi ptr [ %i.ahb, %bb.ga ], [ %i.ahc, %bb.gb ] ; 2 uses
  store ptr %i.ahe, ptr %i.agz, align 8, !tbaa !40
  %i.ahf = sext i32 %i.ahd to i64
  %i.ahg = getelementptr inbounds [16 x i8], ptr %i.ahe, i64 %i.ahf
  %i.ahh = sub nsw i32 16, %i.ahd
  br label %Vec_WecPushLevel.exit231.sink.split.i

bb.gc:                                            ; preds = %bb.fy
  %i.ahi = shl nuw nsw i32 %i.agr, 1              ; 3 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ags, i64 8 ; 2 uses
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !40 ; 2 uses
  %.not13.i10.i226.i = icmp eq ptr %i.ahk, null
  %i.ahl = zext nneg i32 %i.ahi to i64
  %i.ahm = shl nuw nsw i64 %i.ahl, 4              ; 2 uses
  br i1 %.not13.i10.i226.i, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ahn = tail call ptr @realloc(ptr noundef nonnull %i.ahk, i64 noundef %i.ahm) #23
  %.pre.i11.i227.i = load i32, ptr %i.ags, align 8, !tbaa !39
  br label %bb.gf

bb.ge:                                            ; preds = %bb.gc
  %i.aho = tail call noalias ptr @malloc(i64 noundef %i.ahm) #21
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %i.ahp = phi i32 [ %.pre.i11.i227.i, %bb.gd ], [ %i.agr, %bb.ge ] ; 2 uses
  %i.ahq = phi ptr [ %i.ahn, %bb.gd ], [ %i.aho, %bb.ge ] ; 2 uses
  store ptr %i.ahq, ptr %i.ahj, align 8, !tbaa !40
  %i.ahr = sext i32 %i.ahp to i64
  %i.ahs = getelementptr inbounds [16 x i8], ptr %i.ahq, i64 %i.ahr
  %i.aht = sub nsw i32 %i.ahi, %i.ahp
  br label %Vec_WecPushLevel.exit231.sink.split.i

Vec_WecPushLevel.exit231.sink.split.i:            ; preds = %bb.gf, %Vec_WecGrow.exit.i230.i
  %.sink327.i = phi i32 [ %i.ahh, %Vec_WecGrow.exit.i230.i ], [ %i.aht, %bb.gf ]
  %.sink324.i = phi ptr [ %i.ahg, %Vec_WecGrow.exit.i230.i ], [ %i.ahs, %bb.gf ]
  %.sink323.i = phi i32 [ 16, %Vec_WecGrow.exit.i230.i ], [ %i.ahi, %bb.gf ]
  %i.ahu = sext i32 %.sink327.i to i64
  %i.ahv = shl nsw i64 %i.ahu, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink324.i, i8 0, i64 %i.ahv, i1 false)
  store i32 %.sink323.i, ptr %i.ags, align 8, !tbaa !39
  %.pre481 = load i32, ptr %i.agv, align 4, !tbaa !19
  %.pre482 = load ptr, ptr %i.afn, align 8, !tbaa !49
  br label %Fxch_ManCreateCube.exit

Fxch_ManCreateCube.exit:                          ; preds = %Vec_WecPushLevel.exit221.i, %Vec_WecPushLevel.exit231.sink.split.i
  %i.ahw = phi ptr [ %i.ags, %Vec_WecPushLevel.exit221.i ], [ %.pre482, %Vec_WecPushLevel.exit231.sink.split.i ] ; 2 uses
  %i.ahx = phi i32 [ %i.agw, %Vec_WecPushLevel.exit221.i ], [ %.pre481, %Vec_WecPushLevel.exit231.sink.split.i ]
  %i.ahy = add nsw i32 %i.ahx, 1
  store i32 %i.ahy, ptr %i.agv, align 4, !tbaa !19
  %i.ahz = getelementptr i8, ptr %i.ahw, i64 4
  %.val.i347 = load i32, ptr %i.ahz, align 4, !tbaa !19
  %i.aia = getelementptr i8, ptr %i.ahw, i64 8
  %.val21.i = load ptr, ptr %i.aia, align 8, !tbaa !40
  %i.aib = sext i32 %.val.i347 to i64
  %i.aic = getelementptr [16 x i8], ptr %.val21.i, i64 %i.aib ; 3 uses
  %i.aid = getelementptr i8, ptr %i.aic, i64 -32  ; 2 uses
  %i.aie = load ptr, ptr %i.aw, align 8, !tbaa !44 ; 2 uses
  %i.aif = getelementptr i8, ptr %i.aie, i64 4
  %.val2364.i = load i32, ptr %i.aif, align 4, !tbaa !27
  %i.aig = icmp sgt i32 %.val2364.i, 0
  br i1 %i.aig, label %.lr.ph.i349, label %Fxch_ManExtractDivFromCube.exit

.lr.ph.i349:                                      ; preds = %Fxch_ManCreateCube.exit
  %i.aih = shl nsw i32 %i.mg, 1
  %i.aii = getelementptr i8, ptr %i.aic, i64 -28  ; 3 uses
  %i.aij = getelementptr i8, ptr %i.aic, i64 -24  ; 4 uses
  br label %bb.gg

bb.gg:                                            ; preds = %Vec_IntPush.exit57.i, %.lr.ph.i349
  %indvars.iv.i350 = phi i64 [ 0, %.lr.ph.i349 ], [ %indvars.iv.next.i352, %Vec_IntPush.exit57.i ] ; 2 uses
  %i.aik = phi ptr [ %i.aie, %.lr.ph.i349 ], [ %i.anb, %Vec_IntPush.exit57.i ]
  %i.ail = getelementptr i8, ptr %i.aik, i64 8
  %.val22.i = load ptr, ptr %i.ail, align 8, !tbaa !26
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %.val22.i, i64 %indvars.iv.i350
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !63 ; 2 uses
  %.val24.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.aio = getelementptr i8, ptr %.val24.i, i64 8
  %.val24.val.i = load ptr, ptr %i.aio, align 8, !tbaa !40 ; 3 uses
  %i.aip = sext i32 %i.ain to i64
  %i.aiq = getelementptr inbounds [16 x i8], ptr %.val24.val.i, i64 %i.aip ; 8 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 4 ; 7 uses
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !27 ; 7 uses
  %i.ait = icmp sgt i32 %i.ais, 1
  br i1 %i.ait, label %.lr.ph.i.i363, label %Vec_IntRemove1.exit41.i

.lr.ph.i.i363:                                    ; preds = %bb.gg
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !26 ; 6 uses
  %wide.trip.count.i.i364 = zext nneg i32 %i.ais to i64
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gi, %.lr.ph.i.i363
  %indvar.i.i = phi i64 [ 0, %.lr.ph.i.i363 ], [ %indvar.next.i.i, %bb.gi ] ; 3 uses
  %indvars.iv.i.i365 = phi i64 [ 1, %.lr.ph.i.i363 ], [ %indvars.iv.next.i.i366, %bb.gi ] ; 4 uses
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.aiv, i64 %indvars.iv.i.i365
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !63
  %i.aiy = xor i32 %i.aix, %.0196
  %i.aiz = icmp eq i32 %i.aiy, 1
  br i1 %i.aiz, label %.preheader.i.i, label %bb.gi

.preheader.i.i:                                   ; preds = %bb.gh
  %i.aja = trunc nuw nsw i64 %indvars.iv.i.i365 to i32
  %.122.i.i = add nuw nsw i32 %i.aja, 1
  %i.ajb = icmp slt i32 %.122.i.i, %i.ais
  br i1 %i.ajb, label %.lr.ph25.i.i, label %._crit_edge.i.i368

.lr.ph25.i.i:                                     ; preds = %.preheader.i.i
  %i.ajc = shl nuw nsw i64 %indvars.iv.i.i365, 2
  %i.ajd = getelementptr nuw i8, ptr %i.aiv, i64 %i.ajc
  %2 = shl nuw nsw i64 %indvar.i.i, 2
  %scevgep.i.i369 = getelementptr nuw i8, ptr %i.aiv, i64 %2
  %scevgep29.i.i = getelementptr nuw i8, ptr %scevgep.i.i369, i64 8
  %i.aje = add nsw i32 %i.ais, -3
  %i.ajf = trunc i64 %indvar.i.i to i32
  %i.ajg = sub i32 %i.aje, %i.ajf
  %i.ajh = zext i32 %i.ajg to i64
  %i.aji = shl nuw nsw i64 %i.ajh, 2
  %i.ajj = add nuw nsw i64 %i.aji, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ajd, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i.i, i64 %i.ajj, i1 false), !tbaa !63
  %.pre.i.i370 = load i32, ptr %i.air, align 4, !tbaa !27
  br label %._crit_edge.i.i368

bb.gi:                                            ; preds = %bb.gh
  %indvars.iv.next.i.i366 = add nuw nsw i64 %indvars.iv.i.i365, 1 ; 2 uses
  %exitcond.not.i.i367 = icmp eq i64 %indvars.iv.next.i.i366, %wide.trip.count.i.i364
  %indvar.next.i.i = add nuw nsw i64 %indvar.i.i, 1
  br i1 %exitcond.not.i.i367, label %Vec_IntRemove1.exit.i, label %bb.gh, !llvm.loop !132

._crit_edge.i.i368:                               ; preds = %.lr.ph25.i.i, %.preheader.i.i
  %i.ajk = phi i32 [ %.pre.i.i370, %.lr.ph25.i.i ], [ %i.ais, %.preheader.i.i ]
  %i.ajl = add nsw i32 %i.ajk, -1                 ; 2 uses
  store i32 %i.ajl, ptr %i.air, align 4, !tbaa !27
  br label %Vec_IntRemove1.exit.i

Vec_IntRemove1.exit.i:                            ; preds = %bb.gi, %._crit_edge.i.i368
  %.pr58.i = phi i32 [ %i.ajl, %._crit_edge.i.i368 ], [ %i.ais, %bb.gi ] ; 7 uses
  %i.ajm = icmp sgt i32 %.pr58.i, 1
  br i1 %i.ajm, label %.lr.ph.i27.i, label %Vec_IntRemove1.exit41.i

.lr.ph.i27.i:                                     ; preds = %Vec_IntRemove1.exit.i
  %wide.trip.count.i28.i = zext nneg i32 %.pr58.i to i64
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gk, %.lr.ph.i27.i
  %indvar.i29.i = phi i64 [ 0, %.lr.ph.i27.i ], [ %indvar.next.i33.i, %bb.gk ] ; 3 uses
  %indvars.iv.i30.i = phi i64 [ 1, %.lr.ph.i27.i ], [ %indvars.iv.next.i31.i, %bb.gk ] ; 4 uses
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.aiv, i64 %indvars.iv.i30.i
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !63
  %i.ajp = xor i32 %i.ajo, %.0195
  %i.ajq = icmp eq i32 %i.ajp, 1
  br i1 %i.ajq, label %.preheader.i34.i, label %bb.gk

.preheader.i34.i:                                 ; preds = %bb.gj
  %i.ajr = trunc nuw nsw i64 %indvars.iv.i30.i to i32
  %.122.i35.i = add nuw nsw i32 %i.ajr, 1
  %i.ajs = icmp slt i32 %.122.i35.i, %.pr58.i
  br i1 %i.ajs, label %.lr.ph25.i37.i, label %._crit_edge.i36.i

.lr.ph25.i37.i:                                   ; preds = %.preheader.i34.i
  %i.ajt = shl nuw nsw i64 %indvars.iv.i30.i, 2
  %i.aju = getelementptr nuw i8, ptr %i.aiv, i64 %i.ajt
  %3 = shl nuw nsw i64 %indvar.i29.i, 2
  %scevgep.i38.i = getelementptr nuw i8, ptr %i.aiv, i64 %3
  %scevgep29.i39.i = getelementptr nuw i8, ptr %scevgep.i38.i, i64 8
  %i.ajv = add nsw i32 %.pr58.i, -3
  %i.ajw = trunc i64 %indvar.i29.i to i32
  %i.ajx = sub i32 %i.ajv, %i.ajw
  %i.ajy = zext i32 %i.ajx to i64
  %i.ajz = shl nuw nsw i64 %i.ajy, 2
  %i.aka = add nuw nsw i64 %i.ajz, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aju, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i39.i, i64 %i.aka, i1 false), !tbaa !63
  %.pre.i40.i = load i32, ptr %i.air, align 4, !tbaa !27
  br label %._crit_edge.i36.i

bb.gk:                                            ; preds = %bb.gj
  %indvars.iv.next.i31.i = add nuw nsw i64 %indvars.iv.i30.i, 1 ; 2 uses
  %exitcond.not.i32.i = icmp eq i64 %indvars.iv.next.i31.i, %wide.trip.count.i28.i
  %indvar.next.i33.i = add nuw nsw i64 %indvar.i29.i, 1
  br i1 %exitcond.not.i32.i, label %Vec_IntRemove1.exit41.i, label %bb.gj, !llvm.loop !132

._crit_edge.i36.i:                                ; preds = %.lr.ph25.i37.i, %.preheader.i34.i
  %i.akb = phi i32 [ %.pre.i40.i, %.lr.ph25.i37.i ], [ %.pr58.i, %.preheader.i34.i ]
  %i.akc = add nsw i32 %i.akb, -1                 ; 2 uses
  store i32 %i.akc, ptr %i.air, align 4, !tbaa !27
  br label %Vec_IntRemove1.exit41.i

Vec_IntRemove1.exit41.i:                          ; preds = %bb.gk, %._crit_edge.i36.i, %Vec_IntRemove1.exit.i, %bb.gg
  %i.akd = phi i32 [ %i.ais, %bb.gg ], [ %i.akc, %._crit_edge.i36.i ], [ %.pr58.i, %Vec_IntRemove1.exit.i ], [ %.pr58.i, %bb.gk ] ; 7 uses
  %i.ake = load i32, ptr %i.aiq, align 8, !tbaa !24
  %i.akf = icmp eq i32 %i.akd, %i.ake
  br i1 %i.akf, label %bb.gl, label %Vec_IntPush.exit.i351

bb.gl:                                            ; preds = %Vec_IntRemove1.exit41.i
  %i.akg = icmp slt i32 %i.akd, 16
  br i1 %i.akg, label %bb.gm, label %bb.gp

bb.gm:                                            ; preds = %bb.gl
  %i.akh = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8 ; 2 uses
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !26 ; 2 uses
  %.not9.i.i.i361 = icmp eq ptr %i.aki, null
  br i1 %.not9.i.i.i361, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.akj = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aki, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i362

bb.go:                                            ; preds = %bb.gm
  %i.akk = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i.i362

Vec_IntGrow.exit.i.i362:                          ; preds = %bb.go, %bb.gn
  %i.akl = phi ptr [ %i.akj, %bb.gn ], [ %i.akk, %bb.go ]
  store ptr %i.akl, ptr %i.akh, align 8, !tbaa !26
  br label %Vec_IntGrow.exit11.sink.split.i.i356

bb.gp:                                            ; preds = %bb.gl
  %i.akm = icmp samesign ult i32 %i.akd, 1073741823
  %i.akn = shl nuw nsw i32 %i.akd, 1
  %spec.select.i.i353 = select i1 %i.akm, i32 %i.akn, i32 2147483647 ; 3 uses
  %.not.i9.i.i354 = icmp samesign ult i32 %i.akd, %spec.select.i.i353
  br i1 %.not.i9.i.i354, label %bb.gq, label %Vec_IntPush.exit.i351

bb.gq:                                            ; preds = %bb.gp
  %i.ako = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8 ; 2 uses
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !26 ; 2 uses
  %.not9.i10.i.i355 = icmp eq ptr %i.akp, null
  %i.akq = zext nneg i32 %spec.select.i.i353 to i64
  %i.akr = shl nuw nsw i64 %i.akq, 2              ; 2 uses
  br i1 %.not9.i10.i.i355, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aks = tail call ptr @realloc(ptr noundef nonnull %i.akp, i64 noundef %i.akr) #23
  br label %bb.gt

bb.gs:                                            ; preds = %bb.gq
  %i.akt = tail call noalias ptr @malloc(i64 noundef %i.akr) #21
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.aku = phi ptr [ %i.aks, %bb.gr ], [ %i.akt, %bb.gs ]
  store ptr %i.aku, ptr %i.ako, align 8, !tbaa !26
  br label %Vec_IntGrow.exit11.sink.split.i.i356

Vec_IntGrow.exit11.sink.split.i.i356:             ; preds = %bb.gt, %Vec_IntGrow.exit.i.i362
  %spec.select.sink.i.i357 = phi i32 [ %spec.select.i.i353, %bb.gt ], [ 16, %Vec_IntGrow.exit.i.i362 ]
  store i32 %spec.select.sink.i.i357, ptr %i.aiq, align 8, !tbaa !24
  %.pre.i358 = load i32, ptr %i.air, align 4, !tbaa !27
  %.pre71.i359 = load ptr, ptr %0, align 8, !tbaa !8
  %.phi.trans.insert.i360 = getelementptr i8, ptr %.pre71.i359, i64 8
  %.val25.pre.i = load ptr, ptr %.phi.trans.insert.i360, align 8, !tbaa !40
  br label %Vec_IntPush.exit.i351

Vec_IntPush.exit.i351:                            ; preds = %Vec_IntGrow.exit11.sink.split.i.i356, %bb.gp, %Vec_IntRemove1.exit41.i
  %.val25.i = phi ptr [ %.val24.val.i, %Vec_IntRemove1.exit41.i ], [ %.val24.val.i, %bb.gp ], [ %.val25.pre.i, %Vec_IntGrow.exit11.sink.split.i.i356 ]
  %i.akv = phi i32 [ %i.akd, %Vec_IntRemove1.exit41.i ], [ %i.akd, %bb.gp ], [ %.pre.i358, %Vec_IntGrow.exit11.sink.split.i.i356 ] ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !26
  %i.aky = add nsw i32 %i.akv, 1
  store i32 %i.aky, ptr %i.air, align 4, !tbaa !27
  %i.akz = sext i32 %i.akv to i64
  %i.ala = getelementptr inbounds [4 x i8], ptr %i.akx, i64 %i.akz
  store i32 %i.aih, ptr %i.ala, align 4, !tbaa !63
  %i.alb = ptrtoint ptr %i.aiq to i64
  %i.alc = ptrtoint ptr %.val25.i to i64
  %i.ald = sub i64 %i.alb, %i.alc
  %i.ale = lshr exact i64 %i.ald, 4
  %i.alf = trunc i64 %i.ale to i32
  %i.alg = load i32, ptr %i.aii, align 4, !tbaa !27 ; 7 uses
  %i.alh = load i32, ptr %i.aid, align 8, !tbaa !24
  %i.ali = icmp eq i32 %i.alg, %i.alh
  br i1 %i.ali, label %bb.gu, label %Vec_IntPush.exit.Vec_IntPush.exit49_crit_edge.i

Vec_IntPush.exit.Vec_IntPush.exit49_crit_edge.i:  ; preds = %Vec_IntPush.exit.i351
  %.pre73.i = load ptr, ptr %i.aij, align 8, !tbaa !26
  br label %Vec_IntPush.exit49.i

bb.gu:                                            ; preds = %Vec_IntPush.exit.i351
  %i.alj = icmp slt i32 %i.alg, 16
  br i1 %i.alj, label %bb.gv, label %bb.gy

bb.gv:                                            ; preds = %bb.gu
  %i.alk = load ptr, ptr %i.aij, align 8, !tbaa !26 ; 2 uses
  %.not9.i.i47.i = icmp eq ptr %i.alk, null
  br i1 %.not9.i.i47.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.all = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.alk, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i45.i

bb.gx:                                            ; preds = %bb.gv
  %i.alm = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i45.i

bb.gy:                                            ; preds = %bb.gu
  %i.aln = icmp samesign ult i32 %i.alg, 1073741823
  %i.alo = shl nuw nsw i32 %i.alg, 1
  %spec.select.i42.i = select i1 %i.aln, i32 %i.alo, i32 2147483647 ; 4 uses
  %.not.i9.i43.i = icmp samesign ult i32 %i.alg, %spec.select.i42.i
  %.pre74.i = load ptr, ptr %i.aij, align 8, !tbaa !26 ; 3 uses
  br i1 %.not.i9.i43.i, label %bb.gz, label %Vec_IntPush.exit49.i

bb.gz:                                            ; preds = %bb.gy
  %.not9.i10.i44.i = icmp eq ptr %.pre74.i, null
  %i.alp = zext nneg i32 %spec.select.i42.i to i64
  %i.alq = shl nuw nsw i64 %i.alp, 2              ; 2 uses
  br i1 %.not9.i10.i44.i, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.alr = tail call ptr @realloc(ptr noundef nonnull %.pre74.i, i64 noundef %i.alq) #23
  br label %Vec_IntGrow.exit11.sink.split.i45.i

bb.hb:                                            ; preds = %bb.gz
  %i.als = tail call noalias ptr @malloc(i64 noundef %i.alq) #21
  br label %Vec_IntGrow.exit11.sink.split.i45.i

Vec_IntGrow.exit11.sink.split.i45.i:              ; preds = %bb.hb, %bb.ha, %bb.gx, %bb.gw
  %i.alt = phi ptr [ %i.alm, %bb.gx ], [ %i.all, %bb.gw ], [ %i.alr, %bb.ha ], [ %i.als, %bb.hb ] ; 2 uses
  %spec.select.sink.i46.i = phi i32 [ 16, %bb.gx ], [ 16, %bb.gw ], [ %spec.select.i42.i, %bb.ha ], [ %spec.select.i42.i, %bb.hb ]
  store ptr %i.alt, ptr %i.aij, align 8, !tbaa !26
  store i32 %spec.select.sink.i46.i, ptr %i.aid, align 8, !tbaa !24
  %.pre75.i = load i32, ptr %i.aii, align 4, !tbaa !27
  br label %Vec_IntPush.exit49.i

Vec_IntPush.exit49.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i45.i, %bb.gy, %Vec_IntPush.exit.Vec_IntPush.exit49_crit_edge.i
  %i.alu = phi i32 [ %i.alg, %Vec_IntPush.exit.Vec_IntPush.exit49_crit_edge.i ], [ %i.alg, %bb.gy ], [ %.pre75.i, %Vec_IntGrow.exit11.sink.split.i45.i ] ; 2 uses
  %i.alv = phi ptr [ %.pre73.i, %Vec_IntPush.exit.Vec_IntPush.exit49_crit_edge.i ], [ %.pre74.i, %bb.gy ], [ %i.alt, %Vec_IntGrow.exit11.sink.split.i45.i ]
  %i.alw = add nsw i32 %i.alu, 1
  store i32 %i.alw, ptr %i.aii, align 4, !tbaa !27
  %i.alx = sext i32 %i.alu to i64
  %i.aly = getelementptr inbounds [4 x i8], ptr %i.alv, i64 %i.alx
  store i32 %i.alf, ptr %i.aly, align 4, !tbaa !63
  %i.alz = load ptr, ptr %i.ma, align 8, !tbaa !46 ; 6 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 4 ; 3 uses
  %i.amb = load i32, ptr %i.ama, align 4, !tbaa !27 ; 7 uses
  %i.amc = load i32, ptr %i.alz, align 8, !tbaa !24
  %i.amd = icmp eq i32 %i.amb, %i.amc
  br i1 %i.amd, label %bb.hc, label %Vec_IntPush.exit57.i

bb.hc:                                            ; preds = %Vec_IntPush.exit49.i
  %i.ame = icmp slt i32 %i.amb, 16
  br i1 %i.ame, label %bb.hd, label %bb.hg

bb.hd:                                            ; preds = %bb.hc
  %i.amf = getelementptr inbounds nuw i8, ptr %i.alz, i64 8 ; 2 uses
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !26 ; 2 uses
  %.not9.i.i55.i = icmp eq ptr %i.amg, null
  br i1 %.not9.i.i55.i, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.amh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.amg, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i56.i

bb.hf:                                            ; preds = %bb.hd
  %i.ami = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i56.i

Vec_IntGrow.exit.i56.i:                           ; preds = %bb.hf, %bb.he
  %i.amj = phi ptr [ %i.amh, %bb.he ], [ %i.ami, %bb.hf ]
  store ptr %i.amj, ptr %i.amf, align 8, !tbaa !26
  br label %Vec_IntGrow.exit11.sink.split.i53.i

bb.hg:                                            ; preds = %bb.hc
  %i.amk = icmp samesign ult i32 %i.amb, 1073741823
  %i.aml = shl nuw nsw i32 %i.amb, 1
  %spec.select.i50.i = select i1 %i.amk, i32 %i.aml, i32 2147483647 ; 3 uses
  %.not.i9.i51.i = icmp samesign ult i32 %i.amb, %spec.select.i50.i
  br i1 %.not.i9.i51.i, label %bb.hh, label %Vec_IntPush.exit57.i

bb.hh:                                            ; preds = %bb.hg
  %i.amm = getelementptr inbounds nuw i8, ptr %i.alz, i64 8 ; 2 uses
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !26 ; 2 uses
end_hunk_0
