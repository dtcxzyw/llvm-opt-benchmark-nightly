Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcFx?download=true
inline.NumInlined: 642
inline.NumDeleted: 101
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@Fx_ManUpdate:bb.a
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !8 ; 5 uses
  %i.aeh = load i32, ptr %i.aee, align 8, !tbaa !12
  %i.aei = icmp eq i32 %i.aeg, %i.aeh
  br i1 %i.aei, label %bb.eg, label %Vec_WecPushLevel.exit617

bb.eg:                                            ; preds = %Vec_IntPush.exit607
  %i.aej = icmp slt i32 %i.aeg, 16
  br i1 %i.aej, label %bb.eh, label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aee, i64 8 ; 2 uses
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !13 ; 2 uses
  %.not13.i.i614 = icmp eq ptr %i.ael, null
  br i1 %.not13.i.i614, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.aem = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.ael, i64 noundef 256) #30
  %.pre.i.i615 = load i32, ptr %i.aee, align 8, !tbaa !12
  br label %Vec_WecGrow.exit.i616

bb.ej:                                            ; preds = %bb.eh
  %i.aen = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #27
  br label %Vec_WecGrow.exit.i616

Vec_WecGrow.exit.i616:                            ; preds = %bb.ej, %bb.ei
  %i.aeo = phi i32 [ %.pre.i.i615, %bb.ei ], [ %i.aeg, %bb.ej ] ; 2 uses
  %i.aep = phi ptr [ %i.aem, %bb.ei ], [ %i.aen, %bb.ej ] ; 2 uses
  store ptr %i.aep, ptr %i.aek, align 8, !tbaa !13
  %i.aeq = sext i32 %i.aeo to i64
  %i.aer = getelementptr inbounds [16 x i8], ptr %i.aep, i64 %i.aeq
  %i.aes = sub nsw i32 16, %i.aeo
  br label %Vec_WecPushLevel.exit617.sink.split

bb.ek:                                            ; preds = %bb.eg
  %i.aet = shl nuw nsw i32 %i.aeg, 1              ; 3 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aee, i64 8 ; 2 uses
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !13 ; 2 uses
  %.not13.i10.i612 = icmp eq ptr %i.aev, null
  %i.aew = zext nneg i32 %i.aet to i64
  %i.aex = shl nuw nsw i64 %i.aew, 4              ; 2 uses
  br i1 %.not13.i10.i612, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aey = tail call ptr @realloc(ptr noundef nonnull %i.aev, i64 noundef %i.aex) #30
  %.pre.i11.i613 = load i32, ptr %i.aee, align 8, !tbaa !12
  br label %bb.en

bb.em:                                            ; preds = %bb.ek
  %i.aez = tail call noalias ptr @malloc(i64 noundef %i.aex) #27
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.afa = phi i32 [ %.pre.i11.i613, %bb.el ], [ %i.aeg, %bb.em ] ; 2 uses
  %i.afb = phi ptr [ %i.aey, %bb.el ], [ %i.aez, %bb.em ] ; 2 uses
  store ptr %i.afb, ptr %i.aeu, align 8, !tbaa !13
  %i.afc = sext i32 %i.afa to i64
  %i.afd = getelementptr inbounds [16 x i8], ptr %i.afb, i64 %i.afc
  %i.afe = sub nsw i32 %i.aet, %i.afa
  br label %Vec_WecPushLevel.exit617.sink.split

Vec_WecPushLevel.exit617.sink.split:              ; preds = %bb.en, %Vec_WecGrow.exit.i616
  %.sink1214 = phi i32 [ %i.aes, %Vec_WecGrow.exit.i616 ], [ %i.afe, %bb.en ]
  %.sink1211 = phi ptr [ %i.aer, %Vec_WecGrow.exit.i616 ], [ %i.afd, %bb.en ]
  %.sink1210 = phi i32 [ 16, %Vec_WecGrow.exit.i616 ], [ %i.aet, %bb.en ]
  %i.aff = sext i32 %.sink1214 to i64
  %i.afg = shl nsw i64 %i.aff, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink1211, i8 0, i64 %i.afg, i1 false)
  store i32 %.sink1210, ptr %i.aee, align 8, !tbaa !12
  br label %Vec_WecPushLevel.exit617

Vec_WecPushLevel.exit617:                         ; preds = %Vec_WecPushLevel.exit617.sink.split, %Vec_IntPush.exit607
  %i.afh = load i32, ptr %i.aef, align 4, !tbaa !8
  %i.afi = add nsw i32 %i.afh, 1
  store i32 %i.afi, ptr %i.aef, align 4, !tbaa !8
  %i.afj = load ptr, ptr %i.gy, align 8, !tbaa !111 ; 9 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 4 ; 3 uses
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !8 ; 5 uses
  %i.afm = load i32, ptr %i.afj, align 8, !tbaa !12
  %i.afn = icmp eq i32 %i.afl, %i.afm
  br i1 %i.afn, label %bb.eo, label %.Vec_WecGrow.exit12_crit_edge.i618

.Vec_WecGrow.exit12_crit_edge.i618:               ; preds = %Vec_WecPushLevel.exit617
  %.phi.trans.insert.i619 = getelementptr i8, ptr %i.afj, i64 8
  %.val8.pre.i620 = load ptr, ptr %.phi.trans.insert.i619, align 8, !tbaa !13
  br label %Vec_WecPushLevel.exit627

bb.eo:                                            ; preds = %Vec_WecPushLevel.exit617
  %i.afo = icmp slt i32 %i.afl, 16
  br i1 %i.afo, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afj, i64 8 ; 2 uses
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !13 ; 2 uses
  %.not13.i.i624 = icmp eq ptr %i.afq, null
  br i1 %.not13.i.i624, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.afr = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.afq, i64 noundef 256) #30
  %.pre.i.i625 = load i32, ptr %i.afj, align 8, !tbaa !12
  br label %Vec_WecGrow.exit.i626

bb.er:                                            ; preds = %bb.ep
  %i.afs = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #27
  br label %Vec_WecGrow.exit.i626

Vec_WecGrow.exit.i626:                            ; preds = %bb.er, %bb.eq
  %i.aft = phi i32 [ %.pre.i.i625, %bb.eq ], [ %i.afl, %bb.er ] ; 2 uses
  %i.afu = phi ptr [ %i.afr, %bb.eq ], [ %i.afs, %bb.er ] ; 3 uses
  store ptr %i.afu, ptr %i.afp, align 8, !tbaa !13
  %i.afv = sext i32 %i.aft to i64
  %i.afw = getelementptr inbounds [16 x i8], ptr %i.afu, i64 %i.afv
  %i.afx = sub nsw i32 16, %i.aft
  %i.afy = sext i32 %i.afx to i64
  %i.afz = shl nsw i64 %i.afy, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.afw, i8 0, i64 %i.afz, i1 false)
  store i32 16, ptr %i.afj, align 8, !tbaa !12
  br label %Vec_WecPushLevel.exit627

bb.es:                                            ; preds = %bb.eo
  %i.aga = shl nuw nsw i32 %i.afl, 1              ; 3 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afj, i64 8 ; 2 uses
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !13 ; 2 uses
  %.not13.i10.i622 = icmp eq ptr %i.agc, null
  %i.agd = zext nneg i32 %i.aga to i64
  %i.age = shl nuw nsw i64 %i.agd, 4              ; 2 uses
  br i1 %.not13.i10.i622, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.agf = tail call ptr @realloc(ptr noundef nonnull %i.agc, i64 noundef %i.age) #30
  %.pre.i11.i623 = load i32, ptr %i.afj, align 8, !tbaa !12
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %i.agg = tail call noalias ptr @malloc(i64 noundef %i.age) #27
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.agh = phi i32 [ %.pre.i11.i623, %bb.et ], [ %i.afl, %bb.eu ] ; 2 uses
  %i.agi = phi ptr [ %i.agf, %bb.et ], [ %i.agg, %bb.eu ] ; 3 uses
  store ptr %i.agi, ptr %i.agb, align 8, !tbaa !13
  %i.agj = sext i32 %i.agh to i64
  %i.agk = getelementptr inbounds [16 x i8], ptr %i.agi, i64 %i.agj
  %i.agl = sub nsw i32 %i.aga, %i.agh
  %i.agm = sext i32 %i.agl to i64
  %i.agn = shl nsw i64 %i.agm, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.agk, i8 0, i64 %i.agn, i1 false)
  store i32 %i.aga, ptr %i.afj, align 8, !tbaa !12
  br label %Vec_WecPushLevel.exit627

Vec_WecPushLevel.exit627:                         ; preds = %.Vec_WecGrow.exit12_crit_edge.i618, %Vec_WecGrow.exit.i626, %bb.ev
  %.val8.i621 = phi ptr [ %.val8.pre.i620, %.Vec_WecGrow.exit12_crit_edge.i618 ], [ %i.agi, %bb.ev ], [ %i.afu, %Vec_WecGrow.exit.i626 ]
  %i.ago = load i32, ptr %i.afk, align 4, !tbaa !8
  %i.agp = add nsw i32 %i.ago, 1                  ; 2 uses
  store i32 %i.agp, ptr %i.afk, align 4, !tbaa !8
  %i.agq = sext i32 %i.agp to i64
  %i.agr = getelementptr inbounds [16 x i8], ptr %.val8.i621, i64 %i.agq
  %i.ags = getelementptr inbounds i8, ptr %i.agr, i64 -16 ; 3 uses
  %i.agt = load ptr, ptr %i.gy, align 8, !tbaa !111 ; 2 uses
  %i.agu = getelementptr i8, ptr %i.agt, i64 4
  %.val345 = load i32, ptr %i.agu, align 4, !tbaa !8
  %i.agv = getelementptr i8, ptr %i.agt, i64 8
  %.val361 = load ptr, ptr %i.agv, align 8, !tbaa !13
  %i.agw = sext i32 %.val345 to i64
  %i.agx = getelementptr [16 x i8], ptr %.val361, i64 %i.agw ; 3 uses
  %i.agy = getelementptr i8, ptr %i.agx, i64 -32  ; 5 uses
  %i.agz = load ptr, ptr %i.bm, align 8, !tbaa !105 ; 2 uses
  %i.aha = getelementptr i8, ptr %i.agz, i64 4
  %.val334927 = load i32, ptr %i.aha, align 4, !tbaa !39
  %i.ahb = icmp sgt i32 %.val334927, 0
  br i1 %i.ahb, label %.lr.ph929, label %.critedge8

.lr.ph929:                                        ; preds = %Vec_WecPushLevel.exit627
  %i.ahc = shl nsw i32 %i.qd, 1
  %i.ahd = getelementptr i8, ptr %i.agx, i64 -28  ; 3 uses
  %i.ahe = getelementptr i8, ptr %i.agx, i64 -24  ; 4 uses
  br label %bb.ew

bb.ew:                                            ; preds = %.lr.ph929, %Vec_IntPush.exit667
  %indvars.iv1013 = phi i64 [ 0, %.lr.ph929 ], [ %indvars.iv.next1014, %Vec_IntPush.exit667 ] ; 2 uses
  %i.ahf = phi ptr [ %i.agz, %.lr.ph929 ], [ %i.akx, %Vec_IntPush.exit667 ]
  %i.ahg = load ptr, ptr %0, align 8, !tbaa !104
  %i.ahh = getelementptr i8, ptr %i.ahf, i64 8
  %.val386 = load ptr, ptr %i.ahh, align 8, !tbaa !41
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %.val386, i64 %indvars.iv1013
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !42
  %i.ahk = getelementptr i8, ptr %i.ahg, i64 8
  %.val360 = load ptr, ptr %i.ahk, align 8, !tbaa !13 ; 4 uses
  %i.ahl = sext i32 %i.ahj to i64
  %i.ahm = getelementptr inbounds [16 x i8], ptr %.val360, i64 %i.ahl ; 8 uses
  %.not313 = icmp eq ptr %.val360, null
  br i1 %.not313, label %.critedge8, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 4 ; 7 uses
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !39 ; 7 uses
  %i.ahp = icmp sgt i32 %i.aho, 1
  br i1 %i.ahp, label %.lr.ph.i629, label %Vec_IntRemove1.exit651

.lr.ph.i629:                                      ; preds = %bb.ex
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !41 ; 6 uses
  %wide.trip.count.i630 = zext nneg i32 %i.aho to i64
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ez, %.lr.ph.i629
  %indvar.i = phi i64 [ 0, %.lr.ph.i629 ], [ %indvar.next.i, %bb.ez ] ; 3 uses
  %indvars.iv.i631 = phi i64 [ 1, %.lr.ph.i629 ], [ %indvars.iv.next.i632, %bb.ez ] ; 4 uses
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %indvars.iv.i631
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !42
  %i.ahu = xor i32 %i.aht, %.2859
  %i.ahv = icmp eq i32 %i.ahu, 1
  br i1 %i.ahv, label %.preheader.i634, label %bb.ez

.preheader.i634:                                  ; preds = %bb.ey
  %i.ahw = trunc nuw nsw i64 %indvars.iv.i631 to i32
  %.122.i = add nuw nsw i32 %i.ahw, 1
  %i.ahx = icmp slt i32 %.122.i, %i.aho
  br i1 %i.ahx, label %.lr.ph25.i, label %._crit_edge.i

.lr.ph25.i:                                       ; preds = %.preheader.i634
  %i.ahy = shl nuw nsw i64 %indvars.iv.i631, 2
  %i.ahz = getelementptr nuw i8, ptr %i.ahr, i64 %i.ahy
  %3 = shl nuw nsw i64 %indvar.i, 2
  %scevgep.i = getelementptr nuw i8, ptr %i.ahr, i64 %3
  %scevgep29.i = getelementptr nuw i8, ptr %scevgep.i, i64 8
  %i.aia = add nsw i32 %i.aho, -3
  %i.aib = trunc i64 %indvar.i to i32
  %i.aic = sub i32 %i.aia, %i.aib
  %i.aid = zext i32 %i.aic to i64
  %i.aie = shl nuw nsw i64 %i.aid, 2
  %i.aif = add nuw nsw i64 %i.aie, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ahz, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i, i64 %i.aif, i1 false), !tbaa !42
  %.pre.i635 = load i32, ptr %i.ahn, align 4, !tbaa !39
  br label %._crit_edge.i

bb.ez:                                            ; preds = %bb.ey
  %indvars.iv.next.i632 = add nuw nsw i64 %indvars.iv.i631, 1 ; 2 uses
  %exitcond.not.i633 = icmp eq i64 %indvars.iv.next.i632, %wide.trip.count.i630
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  br i1 %exitcond.not.i633, label %Vec_IntRemove1.exit, label %bb.ey, !llvm.loop !193

._crit_edge.i:                                    ; preds = %.lr.ph25.i, %.preheader.i634
  %i.aig = phi i32 [ %.pre.i635, %.lr.ph25.i ], [ %i.aho, %.preheader.i634 ]
  %i.aih = add nsw i32 %i.aig, -1                 ; 2 uses
  store i32 %i.aih, ptr %i.ahn, align 4, !tbaa !39
  br label %Vec_IntRemove1.exit

Vec_IntRemove1.exit:                              ; preds = %bb.ez, %._crit_edge.i
  %.pr860 = phi i32 [ %i.aih, %._crit_edge.i ], [ %i.aho, %bb.ez ] ; 7 uses
  %i.aii = icmp sgt i32 %.pr860, 1
  br i1 %i.aii, label %.lr.ph.i637, label %Vec_IntRemove1.exit651

.lr.ph.i637:                                      ; preds = %Vec_IntRemove1.exit
  %wide.trip.count.i638 = zext nneg i32 %.pr860 to i64
  br label %bb.fa

bb.fa:                                            ; preds = %bb.fb, %.lr.ph.i637
  %indvar.i639 = phi i64 [ 0, %.lr.ph.i637 ], [ %indvar.next.i643, %bb.fb ] ; 3 uses
  %indvars.iv.i640 = phi i64 [ 1, %.lr.ph.i637 ], [ %indvars.iv.next.i641, %bb.fb ] ; 4 uses
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %indvars.iv.i640
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !42
  %i.ail = xor i32 %i.aik, %.3856
  %i.aim = icmp eq i32 %i.ail, 1
  br i1 %i.aim, label %.preheader.i644, label %bb.fb

.preheader.i644:                                  ; preds = %bb.fa
  %i.ain = trunc nuw nsw i64 %indvars.iv.i640 to i32
  %.122.i645 = add nuw nsw i32 %i.ain, 1
  %i.aio = icmp slt i32 %.122.i645, %.pr860
  br i1 %i.aio, label %.lr.ph25.i647, label %._crit_edge.i646

.lr.ph25.i647:                                    ; preds = %.preheader.i644
  %i.aip = shl nuw nsw i64 %indvars.iv.i640, 2
  %i.aiq = getelementptr nuw i8, ptr %i.ahr, i64 %i.aip
  %4 = shl nuw nsw i64 %indvar.i639, 2
  %scevgep.i648 = getelementptr nuw i8, ptr %i.ahr, i64 %4
  %scevgep29.i649 = getelementptr nuw i8, ptr %scevgep.i648, i64 8
  %i.air = add nsw i32 %.pr860, -3
  %i.ais = trunc i64 %indvar.i639 to i32
  %i.ait = sub i32 %i.air, %i.ais
  %i.aiu = zext i32 %i.ait to i64
  %i.aiv = shl nuw nsw i64 %i.aiu, 2
  %i.aiw = add nuw nsw i64 %i.aiv, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aiq, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i649, i64 %i.aiw, i1 false), !tbaa !42
  %.pre.i650 = load i32, ptr %i.ahn, align 4, !tbaa !39
  br label %._crit_edge.i646

bb.fb:                                            ; preds = %bb.fa
  %indvars.iv.next.i641 = add nuw nsw i64 %indvars.iv.i640, 1 ; 2 uses
  %exitcond.not.i642 = icmp eq i64 %indvars.iv.next.i641, %wide.trip.count.i638
  %indvar.next.i643 = add nuw nsw i64 %indvar.i639, 1
  br i1 %exitcond.not.i642, label %Vec_IntRemove1.exit651, label %bb.fa, !llvm.loop !193

._crit_edge.i646:                                 ; preds = %.lr.ph25.i647, %.preheader.i644
  %i.aix = phi i32 [ %.pre.i650, %.lr.ph25.i647 ], [ %.pr860, %.preheader.i644 ]
  %i.aiy = add nsw i32 %i.aix, -1                 ; 2 uses
  store i32 %i.aiy, ptr %i.ahn, align 4, !tbaa !39
  br label %Vec_IntRemove1.exit651

Vec_IntRemove1.exit651:                           ; preds = %bb.fb, %Vec_IntRemove1.exit, %bb.ex, %._crit_edge.i646
  %i.aiz = phi i32 [ %i.aho, %bb.ex ], [ %i.aiy, %._crit_edge.i646 ], [ %.pr860, %Vec_IntRemove1.exit ], [ %.pr860, %bb.fb ] ; 7 uses
  %i.aja = load i32, ptr %i.ahm, align 8, !tbaa !40
  %i.ajb = icmp eq i32 %i.aiz, %i.aja
  br i1 %i.ajb, label %bb.fc, label %Vec_IntPush.exit659

bb.fc:                                            ; preds = %Vec_IntRemove1.exit651
  %i.ajc = icmp slt i32 %i.aiz, 16
  br i1 %i.ajc, label %bb.fd, label %bb.fg

bb.fd:                                            ; preds = %bb.fc
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8 ; 2 uses
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !41 ; 2 uses
  %.not9.i.i657 = icmp eq ptr %i.aje, null
  br i1 %.not9.i.i657, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ajf = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aje, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i658

bb.ff:                                            ; preds = %bb.fd
  %i.ajg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i658

Vec_IntGrow.exit.i658:                            ; preds = %bb.ff, %bb.fe
  %i.ajh = phi ptr [ %i.ajf, %bb.fe ], [ %i.ajg, %bb.ff ]
  store ptr %i.ajh, ptr %i.ajd, align 8, !tbaa !41
  br label %Vec_IntGrow.exit11.sink.split.i655

bb.fg:                                            ; preds = %bb.fc
  %i.aji = icmp samesign ult i32 %i.aiz, 1073741823
  %i.ajj = shl nuw nsw i32 %i.aiz, 1
  %spec.select.i652 = select i1 %i.aji, i32 %i.ajj, i32 2147483647 ; 3 uses
  %.not.i9.i653 = icmp samesign ult i32 %i.aiz, %spec.select.i652
  br i1 %.not.i9.i653, label %bb.fh, label %Vec_IntPush.exit659

bb.fh:                                            ; preds = %bb.fg
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8 ; 2 uses
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !41 ; 2 uses
  %.not9.i10.i654 = icmp eq ptr %i.ajl, null
  %i.ajm = zext nneg i32 %spec.select.i652 to i64
  %i.ajn = shl nuw nsw i64 %i.ajm, 2              ; 2 uses
  br i1 %.not9.i10.i654, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ajo = tail call ptr @realloc(ptr noundef nonnull %i.ajl, i64 noundef %i.ajn) #30
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %i.ajp = tail call noalias ptr @malloc(i64 noundef %i.ajn) #27
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.ajq = phi ptr [ %i.ajo, %bb.fi ], [ %i.ajp, %bb.fj ]
  store ptr %i.ajq, ptr %i.ajk, align 8, !tbaa !41
  br label %Vec_IntGrow.exit11.sink.split.i655

Vec_IntGrow.exit11.sink.split.i655:               ; preds = %bb.fk, %Vec_IntGrow.exit.i658
  %spec.select.sink.i656 = phi i32 [ %spec.select.i652, %bb.fk ], [ 16, %Vec_IntGrow.exit.i658 ]
  store i32 %spec.select.sink.i656, ptr %i.ahm, align 8, !tbaa !40
  %.pre1059 = load i32, ptr %i.ahn, align 4, !tbaa !39
  %.pre1060 = load ptr, ptr %0, align 8, !tbaa !104
  %.phi.trans.insert1061 = getelementptr i8, ptr %.pre1060, i64 8
  %.val397.pre = load ptr, ptr %.phi.trans.insert1061, align 8, !tbaa !13
  br label %Vec_IntPush.exit659

Vec_IntPush.exit659:                              ; preds = %Vec_IntRemove1.exit651, %bb.fg, %Vec_IntGrow.exit11.sink.split.i655
  %.val397 = phi ptr [ %.val360, %Vec_IntRemove1.exit651 ], [ %.val360, %bb.fg ], [ %.val397.pre, %Vec_IntGrow.exit11.sink.split.i655 ]
  %i.ajr = phi i32 [ %i.aiz, %Vec_IntRemove1.exit651 ], [ %i.aiz, %bb.fg ], [ %.pre1059, %Vec_IntGrow.exit11.sink.split.i655 ] ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !41
  %i.aju = add nsw i32 %i.ajr, 1
  store i32 %i.aju, ptr %i.ahn, align 4, !tbaa !39
  %i.ajv = sext i32 %i.ajr to i64
  %i.ajw = getelementptr inbounds [4 x i8], ptr %i.ajt, i64 %i.ajv
  store i32 %i.ahc, ptr %i.ajw, align 4, !tbaa !42
  %i.ajx = ptrtoint ptr %i.ahm to i64
  %i.ajy = ptrtoint ptr %.val397 to i64
  %i.ajz = sub i64 %i.ajx, %i.ajy
  %i.aka = lshr exact i64 %i.ajz, 4
  %i.akb = trunc i64 %i.aka to i32
  %i.akc = load i32, ptr %i.ahd, align 4, !tbaa !39 ; 7 uses
  %i.akd = load i32, ptr %i.agy, align 8, !tbaa !40
  %i.ake = icmp eq i32 %i.akc, %i.akd
  br i1 %i.ake, label %bb.fl, label %Vec_IntPush.exit659.Vec_IntPush.exit667_crit_edge

Vec_IntPush.exit659.Vec_IntPush.exit667_crit_edge: ; preds = %Vec_IntPush.exit659
  %.pre1063 = load ptr, ptr %i.ahe, align 8, !tbaa !41
  br label %Vec_IntPush.exit667

bb.fl:                                            ; preds = %Vec_IntPush.exit659
  %i.akf = icmp slt i32 %i.akc, 16
  br i1 %i.akf, label %bb.fm, label %bb.fp

bb.fm:                                            ; preds = %bb.fl
  %i.akg = load ptr, ptr %i.ahe, align 8, !tbaa !41 ; 2 uses
  %.not9.i.i665 = icmp eq ptr %i.akg, null
  br i1 %.not9.i.i665, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.akh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.akg, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i663

bb.fo:                                            ; preds = %bb.fm
  %i.aki = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i663

bb.fp:                                            ; preds = %bb.fl
  %i.akj = icmp samesign ult i32 %i.akc, 1073741823
  %i.akk = shl nuw nsw i32 %i.akc, 1
  %spec.select.i660 = select i1 %i.akj, i32 %i.akk, i32 2147483647 ; 4 uses
  %.not.i9.i661 = icmp samesign ult i32 %i.akc, %spec.select.i660
  %.pre1064 = load ptr, ptr %i.ahe, align 8, !tbaa !41 ; 3 uses
  br i1 %.not.i9.i661, label %bb.fq, label %Vec_IntPush.exit667

bb.fq:                                            ; preds = %bb.fp
  %.not9.i10.i662 = icmp eq ptr %.pre1064, null
  %i.akl = zext nneg i32 %spec.select.i660 to i64
  %i.akm = shl nuw nsw i64 %i.akl, 2              ; 2 uses
  br i1 %.not9.i10.i662, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.akn = tail call ptr @realloc(ptr noundef nonnull %.pre1064, i64 noundef %i.akm) #30
  br label %Vec_IntGrow.exit11.sink.split.i663

bb.fs:                                            ; preds = %bb.fq
  %i.ako = tail call noalias ptr @malloc(i64 noundef %i.akm) #27
  br label %Vec_IntGrow.exit11.sink.split.i663

Vec_IntGrow.exit11.sink.split.i663:               ; preds = %bb.fr, %bb.fs, %bb.fn, %bb.fo
  %i.akp = phi ptr [ %i.aki, %bb.fo ], [ %i.akh, %bb.fn ], [ %i.akn, %bb.fr ], [ %i.ako, %bb.fs ] ; 2 uses
  %spec.select.sink.i664 = phi i32 [ 16, %bb.fo ], [ 16, %bb.fn ], [ %spec.select.i660, %bb.fr ], [ %spec.select.i660, %bb.fs ]
  store ptr %i.akp, ptr %i.ahe, align 8, !tbaa !41
  store i32 %spec.select.sink.i664, ptr %i.agy, align 8, !tbaa !40
  %.pre1065 = load i32, ptr %i.ahd, align 4, !tbaa !39
  br label %Vec_IntPush.exit667

Vec_IntPush.exit667:                              ; preds = %Vec_IntPush.exit659.Vec_IntPush.exit667_crit_edge, %bb.fp, %Vec_IntGrow.exit11.sink.split.i663
  %i.akq = phi i32 [ %i.akc, %Vec_IntPush.exit659.Vec_IntPush.exit667_crit_edge ], [ %i.akc, %bb.fp ], [ %.pre1065, %Vec_IntGrow.exit11.sink.split.i663 ] ; 2 uses
  %i.akr = phi ptr [ %.pre1063, %Vec_IntPush.exit659.Vec_IntPush.exit667_crit_edge ], [ %.pre1064, %bb.fp ], [ %i.akp, %Vec_IntGrow.exit11.sink.split.i663 ]
  %i.aks = add nsw i32 %i.akq, 1
  store i32 %i.aks, ptr %i.ahd, align 4, !tbaa !39
  %i.akt = sext i32 %i.akq to i64
  %i.aku = getelementptr inbounds [4 x i8], ptr %i.akr, i64 %i.akt
  store i32 %i.akb, ptr %i.aku, align 4, !tbaa !42
  %i.akv = load i32, ptr %i.aeb, align 4, !tbaa !129
  %i.akw = add nsw i32 %i.akv, -1
  store i32 %i.akw, ptr %i.aeb, align 4, !tbaa !129
  %indvars.iv.next1014 = add nuw nsw i64 %indvars.iv1013, 1 ; 2 uses
  %i.akx = load ptr, ptr %i.bm, align 8, !tbaa !105 ; 2 uses
  %i.aky = getelementptr i8, ptr %i.akx, i64 4
  %.val334 = load i32, ptr %i.aky, align 4, !tbaa !39
  %i.akz = sext i32 %.val334 to i64
  %i.ala = icmp slt i64 %indvars.iv.next1014, %i.akz
  br i1 %i.ala, label %bb.ew, label %.critedge8, !llvm.loop !194

.critedge8:                                       ; preds = %Vec_IntPush.exit667, %bb.ew, %Vec_WecPushLevel.exit627, %bb.au
  %.0299 = phi ptr [ null, %bb.au ], [ %i.agy, %Vec_WecPushLevel.exit627 ], [ %i.agy, %bb.ew ], [ %i.agy, %Vec_IntPush.exit667 ] ; 4 uses
  %.0298 = phi ptr [ null, %bb.au ], [ %i.ags, %Vec_WecPushLevel.exit627 ], [ %i.ags, %bb.ew ], [ %i.ags, %Vec_IntPush.exit667 ] ; 4 uses
  %.0295 = phi i32 [ 0, %bb.au ], [ %i.qd, %Vec_WecPushLevel.exit627 ], [ %i.qd, %bb.ew ], [ %i.qd, %Vec_IntPush.exit667 ] ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  store i32 0, ptr %i.alb, align 4, !tbaa !195
  %i.alc = load ptr, ptr %i.ij, align 8, !tbaa !106 ; 4 uses
  %i.ald = getelementptr i8, ptr %i.alc, i64 4
  %.val333932 = load i32, ptr %i.ald, align 4, !tbaa !39
  %i.ale = icmp sgt i32 %.val333932, 0
  br i1 %i.ale, label %.lr.ph935, label %.critedge8.._crit_edge_crit_edge

.critedge8.._crit_edge_crit_edge:                 ; preds = %.critedge8
  %.phi.trans.insert1084 = getelementptr i8, ptr %i.alc, i64 8
  %.val411.pre = load ptr, ptr %.phi.trans.insert1084, align 8, !tbaa !41
  br label %._crit_edge

.lr.ph935:                                        ; preds = %.critedge8
  %i.alf = getelementptr i8, ptr %i.b, i64 8
  %i.alg = icmp sgt i32 %.0295, 0
  %i.alh = shl nuw nsw i32 %.0295, 1              ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.0299, i64 4 ; 3 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %.0299, i64 8 ; 4 uses
  %i.alk = or disjoint i32 %i.alh, 1
  %i.all = getelementptr inbounds nuw i8, ptr %.0298, i64 4 ; 3 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %.0298, i64 8 ; 4 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %.pre1066 = load ptr, ptr %0, align 8, !tbaa !104
  %.phi.trans.insert1067 = getelementptr i8, ptr %.pre1066, i64 8
  %.val359.pre = load ptr, ptr %.phi.trans.insert1067, align 8, !tbaa !13
  %.phi.trans.insert1093 = getelementptr i8, ptr %i.alc, i64 8
  %.val384.pre = load ptr, ptr %.phi.trans.insert1093, align 8, !tbaa !41
  br label %bb.ft

bb.ft:                                            ; preds = %.lr.ph935, %bb.hr
  %.val384 = phi ptr [ %.val384.pre, %.lr.ph935 ], [ %.val391, %bb.hr ]
  %.val359 = phi ptr [ %.val359.pre, %.lr.ph935 ], [ %.val394, %bb.hr ] ; 6 uses
  %indvars.iv1018 = phi i64 [ 0, %.lr.ph935 ], [ %indvars.iv.next1019, %bb.hr ] ; 3 uses
  %indvars.iv1016 = phi i64 [ 0, %.lr.ph935 ], [ %indvars.iv.next1017, %bb.hr ] ; 2 uses
  %i.alo = load ptr, ptr %i.il, align 8, !tbaa !107
  %i.alp = lshr exact i64 %indvars.iv1018, 1
  %i.alq = getelementptr i8, ptr %i.alo, i64 8
  %.val385 = load ptr, ptr %i.alq, align 8, !tbaa !41
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %.val385, i64 %i.alp
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !42 ; 3 uses
  %i.alt = load i32, ptr %i.alb, align 4, !tbaa !195
  %i.alu = add nsw i32 %i.alt, %i.als
  store i32 %i.alu, ptr %i.alb, align 4, !tbaa !195
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %.val384, i64 %indvars.iv1018 ; 2 uses
  %i.alw = load i32, ptr %i.alv, align 4, !tbaa !42
  %i.alx = sext i32 %i.alw to i64
  %i.aly = getelementptr inbounds [16 x i8], ptr %.val359, i64 %i.alx ; 15 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alv, i64 4
  %i.ama = load i32, ptr %i.alz, align 4, !tbaa !42
  %i.amb = sext i32 %i.ama to i64
  %i.amc = getelementptr inbounds [16 x i8], ptr %.val359, i64 %i.amb ; 3 uses
  %.val1538.i = load i32, ptr %i.g, align 4, !tbaa !39 ; 3 uses
  %i.amd = icmp sgt i32 %.val1538.i, 0
  br i1 %i.amd, label %.lr.ph.i670, label %Fx_ManDivRemoveLits.exit729

.lr.ph.i670:                                      ; preds = %bb.ft
  %.val16.i671 = load ptr, ptr %i.alf, align 8, !tbaa !41 ; 2 uses
  %i.ame = icmp ne i32 %i.als, 0                  ; 2 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %i.aly, i64 4 ; 5 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.aly, i64 8 ; 2 uses
  %.pre.i672 = load i32, ptr %i.amf, align 4, !tbaa !39 ; 2 uses
  br label %bb.fu

bb.fu:                                            ; preds = %Vec_IntRemove1.exit32.i, %.lr.ph.i670
  %.val15.pre52.i = phi i32 [ %.val1538.i, %.lr.ph.i670 ], [ %.val1538.i678.pr, %Vec_IntRemove1.exit32.i ] ; 2 uses
  %.val1549.i = phi i32 [ %.val1538.i, %.lr.ph.i670 ], [ %.val15.i674, %Vec_IntRemove1.exit32.i ] ; 2 uses
  %i.amh = phi i32 [ %.pre.i672, %.lr.ph.i670 ], [ %i.aoc, %Vec_IntRemove1.exit32.i ] ; 2 uses
  %i.ami = phi i32 [ %.pre.i672, %.lr.ph.i670 ], [ %i.aod, %Vec_IntRemove1.exit32.i ] ; 7 uses
  %indvars.iv.i673 = phi i64 [ 0, %.lr.ph.i670 ], [ %indvars.iv.next.i676, %Vec_IntRemove1.exit32.i ] ; 3 uses
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %.val16.i671, i64 %indvars.iv.i673
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !42
  %i.aml = ashr i32 %i.amk, 1                     ; 2 uses
  %i.amm = icmp samesign ugt i64 %indvars.iv.i673, 1
  %i.amn = select i1 %i.ame, i1 %i.amm, i1 false
  %i.amo = zext i1 %i.amn to i32
  %i.amp = xor i32 %i.aml, %i.amo
  %i.amq = icmp sgt i32 %i.ami, 1
  br i1 %i.amq, label %.lr.ph.i.i, label %Vec_IntRemove1.exit.i

.lr.ph.i.i:                                       ; preds = %bb.fu
  %i.amr = load ptr, ptr %i.amg, align 8, !tbaa !41 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ami to i64
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fw, %.lr.ph.i.i
  %indvar.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvar.next.i.i, %bb.fw ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.fw ] ; 4 uses
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.amr, i64 %indvars.iv.i.i
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !42
  %i.amu = icmp eq i32 %i.amt, %i.amp
  br i1 %i.amu, label %.preheader.i.i, label %bb.fw

.preheader.i.i:                                   ; preds = %bb.fv
  %i.amv = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %.122.i.i = add nuw nsw i32 %i.amv, 1
  %i.amw = icmp slt i32 %.122.i.i, %i.ami
  br i1 %i.amw, label %.lr.ph25.i.i, label %._crit_edge.i.i

.lr.ph25.i.i:                                     ; preds = %.preheader.i.i
  %i.amx = shl nuw nsw i64 %indvars.iv.i.i, 2
  %i.amy = getelementptr nuw i8, ptr %i.amr, i64 %i.amx
  %5 = shl nuw nsw i64 %indvar.i.i, 2
  %scevgep.i.i = getelementptr nuw i8, ptr %i.amr, i64 %5
  %scevgep29.i.i = getelementptr nuw i8, ptr %scevgep.i.i, i64 8
  %i.amz = add nsw i32 %i.ami, -3
  %i.ana = trunc i64 %indvar.i.i to i32
  %i.anb = sub i32 %i.amz, %i.ana
  %i.anc = zext i32 %i.anb to i64
  %i.and = shl nuw nsw i64 %i.anc, 2
  %i.ane = add nuw nsw i64 %i.and, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.amy, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i.i, i64 %i.ane, i1 false), !tbaa !42
  %.pre.i.i677 = load i32, ptr %i.amf, align 4, !tbaa !39
  br label %._crit_edge.i.i

bb.fw:                                            ; preds = %bb.fv
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  %indvar.next.i.i = add nuw nsw i64 %indvar.i.i, 1
  br i1 %exitcond.not.i.i, label %Vec_IntRemove1.exit.i, label %bb.fv, !llvm.loop !193

._crit_edge.i.i:                                  ; preds = %.lr.ph25.i.i, %.preheader.i.i
  %i.anf = phi i32 [ %.pre.i.i677, %.lr.ph25.i.i ], [ %i.ami, %.preheader.i.i ]
  %i.ang = add nsw i32 %i.anf, -1                 ; 3 uses
  store i32 %i.ang, ptr %i.amf, align 4, !tbaa !39
  %.val.pre.i = load i32, ptr %i.g, align 4, !tbaa !39 ; 2 uses
  br label %Vec_IntRemove1.exit.i

Vec_IntRemove1.exit.i:                            ; preds = %bb.fw, %._crit_edge.i.i, %bb.fu
  %.val15.pre51.i = phi i32 [ %.val.pre.i, %._crit_edge.i.i ], [ %.val15.pre52.i, %bb.fu ], [ %.val15.pre52.i, %bb.fw ] ; 5 uses
  %.val1548.i = phi i32 [ %.val.pre.i, %._crit_edge.i.i ], [ %.val1549.i, %bb.fu ], [ %.val1549.i, %bb.fw ] ; 2 uses
  %i.anh = phi i32 [ %i.ang, %._crit_edge.i.i ], [ %i.amh, %bb.fu ], [ %i.amh, %bb.fw ] ; 10 uses
  %i.ani = phi i32 [ %i.ang, %._crit_edge.i.i ], [ %i.ami, %bb.fu ], [ %i.ami, %bb.fw ]
  %i.anj = icmp eq i32 %.val1548.i, 2
  br i1 %i.anj, label %bb.fx, label %Vec_IntRemove1.exit32.i

bb.fx:                                            ; preds = %Vec_IntRemove1.exit.i
  %i.ank = icmp sgt i32 %i.anh, 1
  br i1 %i.ank, label %.lr.ph.i18.i, label %Vec_IntRemove1.exit32.i

.lr.ph.i18.i:                                     ; preds = %bb.fx
  %i.anl = load ptr, ptr %i.amg, align 8, !tbaa !41 ; 3 uses
  %wide.trip.count.i19.i = zext nneg i32 %i.anh to i64
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fz, %.lr.ph.i18.i
  %indvar.i20.i = phi i64 [ 0, %.lr.ph.i18.i ], [ %indvar.next.i24.i, %bb.fz ] ; 3 uses
  %indvars.iv.i21.i = phi i64 [ 1, %.lr.ph.i18.i ], [ %indvars.iv.next.i22.i, %bb.fz ] ; 4 uses
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.anl, i64 %indvars.iv.i21.i
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !42
  %i.ano = xor i32 %i.ann, %i.aml
  %i.anp = icmp eq i32 %i.ano, 1
  br i1 %i.anp, label %.preheader.i25.i, label %bb.fz

.preheader.i25.i:                                 ; preds = %bb.fy
  %i.anq = trunc nuw nsw i64 %indvars.iv.i21.i to i32
  %.122.i26.i = add nuw nsw i32 %i.anq, 1
  %i.anr = icmp slt i32 %.122.i26.i, %i.anh
  br i1 %i.anr, label %.lr.ph25.i28.i, label %._crit_edge.i27.i

.lr.ph25.i28.i:                                   ; preds = %.preheader.i25.i
  %i.ans = shl nuw nsw i64 %indvars.iv.i21.i, 2
  %i.ant = getelementptr nuw i8, ptr %i.anl, i64 %i.ans
  %6 = shl nuw nsw i64 %indvar.i20.i, 2
  %scevgep.i29.i = getelementptr nuw i8, ptr %i.anl, i64 %6
  %scevgep29.i30.i = getelementptr nuw i8, ptr %scevgep.i29.i, i64 8
  %i.anu = add nsw i32 %i.anh, -3
  %i.anv = trunc i64 %indvar.i20.i to i32
  %i.anw = sub i32 %i.anu, %i.anv
  %i.anx = zext i32 %i.anw to i64
  %i.any = shl nuw nsw i64 %i.anx, 2
  %i.anz = add nuw nsw i64 %i.any, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ant, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i30.i, i64 %i.anz, i1 false), !tbaa !42
  %.pre.i31.i = load i32, ptr %i.amf, align 4, !tbaa !39
  br label %._crit_edge.i27.i

bb.fz:                                            ; preds = %bb.fy
  %indvars.iv.next.i22.i = add nuw nsw i64 %indvars.iv.i21.i, 1 ; 2 uses
  %exitcond.not.i23.i = icmp eq i64 %indvars.iv.next.i22.i, %wide.trip.count.i19.i
  %indvar.next.i24.i = add nuw nsw i64 %indvar.i20.i, 1
  br i1 %exitcond.not.i23.i, label %Vec_IntRemove1.exit32.i, label %bb.fy, !llvm.loop !193

._crit_edge.i27.i:                                ; preds = %.lr.ph25.i28.i, %.preheader.i25.i
  %i.aoa = phi i32 [ %.pre.i31.i, %.lr.ph25.i28.i ], [ %i.anh, %.preheader.i25.i ]
  %i.aob = add nsw i32 %i.aoa, -1                 ; 3 uses
  store i32 %i.aob, ptr %i.amf, align 4, !tbaa !39
  %.val15.pre.pre.i = load i32, ptr %i.g, align 4, !tbaa !39 ; 2 uses
  br label %Vec_IntRemove1.exit32.i

Vec_IntRemove1.exit32.i:                          ; preds = %bb.fz, %bb.fx, %._crit_edge.i27.i, %Vec_IntRemove1.exit.i
  %.val1538.i678.pr = phi i32 [ %.val15.pre51.i, %Vec_IntRemove1.exit.i ], [ %.val15.pre.pre.i, %._crit_edge.i27.i ], [ %.val15.pre51.i, %bb.fx ], [ %.val15.pre51.i, %bb.fz ] ; 4 uses
  %.val15.i674 = phi i32 [ %.val1548.i, %Vec_IntRemove1.exit.i ], [ %.val15.pre.pre.i, %._crit_edge.i27.i ], [ %.val15.pre51.i, %bb.fx ], [ %.val15.pre51.i, %bb.fz ] ; 2 uses
  %i.aoc = phi i32 [ %i.anh, %Vec_IntRemove1.exit.i ], [ %i.aob, %._crit_edge.i27.i ], [ %i.anh, %bb.fx ], [ %i.anh, %bb.fz ]
  %i.aod = phi i32 [ %i.ani, %Vec_IntRemove1.exit.i ], [ %i.aob, %._crit_edge.i27.i ], [ %i.anh, %bb.fx ], [ %i.anh, %bb.fz ]
  %indvars.iv.next.i676 = add nuw nsw i64 %indvars.iv.i673, 1 ; 2 uses
  %i.aoe = sext i32 %.val15.i674 to i64
  %i.aof = icmp slt i64 %indvars.iv.next.i676, %i.aoe
  br i1 %i.aof, label %bb.fu, label %Fx_ManDivRemoveLits.exit, !llvm.loop !196

Fx_ManDivRemoveLits.exit:                         ; preds = %Vec_IntRemove1.exit32.i
  %i.aog = icmp sgt i32 %.val1538.i678.pr, 0
  br i1 %i.aog, label %.lr.ph.i681, label %Fx_ManDivRemoveLits.exit729

.lr.ph.i681:                                      ; preds = %Fx_ManDivRemoveLits.exit
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.amc, i64 4 ; 5 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.amc, i64 8 ; 2 uses
  %.pre.i683 = load i32, ptr %i.aoh, align 4, !tbaa !39 ; 2 uses
  br label %bb.ga

bb.ga:                                            ; preds = %Vec_IntRemove1.exit32.i696, %.lr.ph.i681
  %.val15.pre52.i684 = phi i32 [ %.val1538.i678.pr, %.lr.ph.i681 ], [ %.val15.pre53.i692, %Vec_IntRemove1.exit32.i696 ] ; 2 uses
  %.val1549.i685 = phi i32 [ %.val1538.i678.pr, %.lr.ph.i681 ], [ %.val15.i693, %Vec_IntRemove1.exit32.i696 ] ; 2 uses
  %i.aoj = phi i32 [ %.pre.i683, %.lr.ph.i681 ], [ %i.aqe, %Vec_IntRemove1.exit32.i696 ] ; 2 uses
  %i.aok = phi i32 [ %.pre.i683, %.lr.ph.i681 ], [ %i.aqf, %Vec_IntRemove1.exit32.i696 ] ; 7 uses
  %indvars.iv.i686 = phi i64 [ 0, %.lr.ph.i681 ], [ %indvars.iv.next.i695, %Vec_IntRemove1.exit32.i696 ] ; 3 uses
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %.val16.i671, i64 %indvars.iv.i686
  %i.aom = load i32, ptr %i.aol, align 4, !tbaa !42
  %i.aon = ashr i32 %i.aom, 1                     ; 2 uses
  %i.aoo = icmp samesign ugt i64 %indvars.iv.i686, 1
  %i.aop = select i1 %i.ame, i1 %i.aoo, i1 false
  %i.aoq = zext i1 %i.aop to i32
  %i.aor = xor i32 %i.aon, %i.aoq
  %i.aos = icmp sgt i32 %i.aok, 1
  br i1 %i.aos, label %.lr.ph.i.i714, label %Vec_IntRemove1.exit.i688

.lr.ph.i.i714:                                    ; preds = %bb.ga
  %i.aot = load ptr, ptr %i.aoi, align 8, !tbaa !41 ; 3 uses
  %wide.trip.count.i.i715 = zext nneg i32 %i.aok to i64
  br label %bb.gb

bb.gb:                                            ; preds = %bb.gc, %.lr.ph.i.i714
  %indvar.i.i716 = phi i64 [ 0, %.lr.ph.i.i714 ], [ %indvar.next.i.i720, %bb.gc ] ; 3 uses
  %indvars.iv.i.i717 = phi i64 [ 1, %.lr.ph.i.i714 ], [ %indvars.iv.next.i.i718, %bb.gc ] ; 4 uses
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %indvars.iv.i.i717
  %i.aov = load i32, ptr %i.aou, align 4, !tbaa !42
  %i.aow = icmp eq i32 %i.aov, %i.aor
  br i1 %i.aow, label %.preheader.i.i721, label %bb.gc

.preheader.i.i721:                                ; preds = %bb.gb
  %i.aox = trunc nuw nsw i64 %indvars.iv.i.i717 to i32
  %.122.i.i722 = add nuw nsw i32 %i.aox, 1
  %i.aoy = icmp slt i32 %.122.i.i722, %i.aok
  br i1 %i.aoy, label %.lr.ph25.i.i725, label %._crit_edge.i.i723

.lr.ph25.i.i725:                                  ; preds = %.preheader.i.i721
  %i.aoz = shl nuw nsw i64 %indvars.iv.i.i717, 2
  %i.apa = getelementptr nuw i8, ptr %i.aot, i64 %i.aoz
  %7 = shl nuw nsw i64 %indvar.i.i716, 2
  %scevgep.i.i726 = getelementptr nuw i8, ptr %i.aot, i64 %7
  %scevgep29.i.i727 = getelementptr nuw i8, ptr %scevgep.i.i726, i64 8
  %i.apb = add nsw i32 %i.aok, -3
  %i.apc = trunc i64 %indvar.i.i716 to i32
  %i.apd = sub i32 %i.apb, %i.apc
  %i.ape = zext i32 %i.apd to i64
  %i.apf = shl nuw nsw i64 %i.ape, 2
  %i.apg = add nuw nsw i64 %i.apf, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.apa, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i.i727, i64 %i.apg, i1 false), !tbaa !42
  %.pre.i.i728 = load i32, ptr %i.aoh, align 4, !tbaa !39
  br label %._crit_edge.i.i723

bb.gc:                                            ; preds = %bb.gb
  %indvars.iv.next.i.i718 = add nuw nsw i64 %indvars.iv.i.i717, 1 ; 2 uses
  %exitcond.not.i.i719 = icmp eq i64 %indvars.iv.next.i.i718, %wide.trip.count.i.i715
  %indvar.next.i.i720 = add nuw nsw i64 %indvar.i.i716, 1
  br i1 %exitcond.not.i.i719, label %Vec_IntRemove1.exit.i688, label %bb.gb, !llvm.loop !193

._crit_edge.i.i723:                               ; preds = %.lr.ph25.i.i725, %.preheader.i.i721
  %i.aph = phi i32 [ %.pre.i.i728, %.lr.ph25.i.i725 ], [ %i.aok, %.preheader.i.i721 ]
  %i.api = add nsw i32 %i.aph, -1                 ; 3 uses
  store i32 %i.api, ptr %i.aoh, align 4, !tbaa !39
  %.val.pre.i724 = load i32, ptr %i.g, align 4, !tbaa !39 ; 2 uses
  br label %Vec_IntRemove1.exit.i688

Vec_IntRemove1.exit.i688:                         ; preds = %bb.gc, %._crit_edge.i.i723, %bb.ga
  %.val15.pre51.i689 = phi i32 [ %.val.pre.i724, %._crit_edge.i.i723 ], [ %.val15.pre52.i684, %bb.ga ], [ %.val15.pre52.i684, %bb.gc ] ; 5 uses
  %.val1548.i690 = phi i32 [ %.val.pre.i724, %._crit_edge.i.i723 ], [ %.val1549.i685, %bb.ga ], [ %.val1549.i685, %bb.gc ] ; 2 uses
  %i.apj = phi i32 [ %i.api, %._crit_edge.i.i723 ], [ %i.aoj, %bb.ga ], [ %i.aoj, %bb.gc ] ; 10 uses
  %i.apk = phi i32 [ %i.api, %._crit_edge.i.i723 ], [ %i.aok, %bb.ga ], [ %i.aok, %bb.gc ]
  %i.apl = icmp eq i32 %.val1548.i690, 2
  br i1 %i.apl, label %bb.gd, label %Vec_IntRemove1.exit32.i696

bb.gd:                                            ; preds = %Vec_IntRemove1.exit.i688
  %i.apm = icmp sgt i32 %i.apj, 1
  br i1 %i.apm, label %.lr.ph.i18.i699, label %Vec_IntRemove1.exit32.i696

.lr.ph.i18.i699:                                  ; preds = %bb.gd
  %i.apn = load ptr, ptr %i.aoi, align 8, !tbaa !41 ; 3 uses
  %wide.trip.count.i19.i700 = zext nneg i32 %i.apj to i64
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gf, %.lr.ph.i18.i699
  %indvar.i20.i701 = phi i64 [ 0, %.lr.ph.i18.i699 ], [ %indvar.next.i24.i705, %bb.gf ] ; 3 uses
  %indvars.iv.i21.i702 = phi i64 [ 1, %.lr.ph.i18.i699 ], [ %indvars.iv.next.i22.i703, %bb.gf ] ; 4 uses
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.apn, i64 %indvars.iv.i21.i702
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !42
  %i.apq = xor i32 %i.app, %i.aon
  %i.apr = icmp eq i32 %i.apq, 1
  br i1 %i.apr, label %.preheader.i25.i706, label %bb.gf

.preheader.i25.i706:                              ; preds = %bb.ge
  %i.aps = trunc nuw nsw i64 %indvars.iv.i21.i702 to i32
  %.122.i26.i707 = add nuw nsw i32 %i.aps, 1
  %i.apt = icmp slt i32 %.122.i26.i707, %i.apj
  br i1 %i.apt, label %.lr.ph25.i28.i710, label %._crit_edge.i27.i708

.lr.ph25.i28.i710:                                ; preds = %.preheader.i25.i706
  %i.apu = shl nuw nsw i64 %indvars.iv.i21.i702, 2
  %i.apv = getelementptr nuw i8, ptr %i.apn, i64 %i.apu
  %8 = shl nuw nsw i64 %indvar.i20.i701, 2
  %scevgep.i29.i711 = getelementptr nuw i8, ptr %i.apn, i64 %8
  %scevgep29.i30.i712 = getelementptr nuw i8, ptr %scevgep.i29.i711, i64 8
  %i.apw = add nsw i32 %i.apj, -3
  %i.apx = trunc i64 %indvar.i20.i701 to i32
  %i.apy = sub i32 %i.apw, %i.apx
  %i.apz = zext i32 %i.apy to i64
  %i.aqa = shl nuw nsw i64 %i.apz, 2
  %i.aqb = add nuw nsw i64 %i.aqa, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.apv, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i30.i712, i64 %i.aqb, i1 false), !tbaa !42
  %.pre.i31.i713 = load i32, ptr %i.aoh, align 4, !tbaa !39
  br label %._crit_edge.i27.i708

bb.gf:                                            ; preds = %bb.ge
  %indvars.iv.next.i22.i703 = add nuw nsw i64 %indvars.iv.i21.i702, 1 ; 2 uses
  %exitcond.not.i23.i704 = icmp eq i64 %indvars.iv.next.i22.i703, %wide.trip.count.i19.i700
  %indvar.next.i24.i705 = add nuw nsw i64 %indvar.i20.i701, 1
  br i1 %exitcond.not.i23.i704, label %Vec_IntRemove1.exit32.i696, label %bb.ge, !llvm.loop !193

._crit_edge.i27.i708:                             ; preds = %.lr.ph25.i28.i710, %.preheader.i25.i706
  %i.aqc = phi i32 [ %.pre.i31.i713, %.lr.ph25.i28.i710 ], [ %i.apj, %.preheader.i25.i706 ]
  %i.aqd = add nsw i32 %i.aqc, -1                 ; 3 uses
  store i32 %i.aqd, ptr %i.aoh, align 4, !tbaa !39
  %.val15.pre.pre.i709 = load i32, ptr %i.g, align 4, !tbaa !39 ; 2 uses
  br label %Vec_IntRemove1.exit32.i696

Vec_IntRemove1.exit32.i696:                       ; preds = %bb.gf, %bb.gd, %._crit_edge.i27.i708, %Vec_IntRemove1.exit.i688
  %.val15.pre53.i692 = phi i32 [ %.val15.pre51.i689, %Vec_IntRemove1.exit.i688 ], [ %.val15.pre.pre.i709, %._crit_edge.i27.i708 ], [ %.val15.pre51.i689, %bb.gd ], [ %.val15.pre51.i689, %bb.gf ] ; 2 uses
  %.val15.i693 = phi i32 [ %.val1548.i690, %Vec_IntRemove1.exit.i688 ], [ %.val15.pre.pre.i709, %._crit_edge.i27.i708 ], [ %.val15.pre51.i689, %bb.gd ], [ %.val15.pre51.i689, %bb.gf ] ; 2 uses
  %i.aqe = phi i32 [ %i.apj, %Vec_IntRemove1.exit.i688 ], [ %i.aqd, %._crit_edge.i27.i708 ], [ %i.apj, %bb.gd ], [ %i.apj, %bb.gf ]
  %i.aqf = phi i32 [ %i.apk, %Vec_IntRemove1.exit.i688 ], [ %i.aqd, %._crit_edge.i27.i708 ], [ %i.apj, %bb.gd ], [ %i.apj, %bb.gf ]
  %indvars.iv.next.i695 = add nuw nsw i64 %indvars.iv.i686, 1 ; 2 uses
  %i.aqg = sext i32 %.val15.i693 to i64
  %i.aqh = icmp slt i64 %indvars.iv.next.i695, %i.aqg
  br i1 %i.aqh, label %bb.ga, label %Fx_ManDivRemoveLits.exit729.loopexit, !llvm.loop !196

Fx_ManDivRemoveLits.exit729.loopexit:             ; preds = %Vec_IntRemove1.exit32.i696
  %i.aqi = icmp eq i32 %.val15.pre53.i692, 2
  br label %Fx_ManDivRemoveLits.exit729

Fx_ManDivRemoveLits.exit729:                      ; preds = %Fx_ManDivRemoveLits.exit729.loopexit, %bb.ft, %Fx_ManDivRemoveLits.exit
  %.val332 = phi i1 [ %i.aqi, %Fx_ManDivRemoveLits.exit729.loopexit ], [ false, %bb.ft ], [ false, %Fx_ManDivRemoveLits.exit ]
  br i1 %i.alg, label %bb.gg, label %Fx_ManDivRemoveLits.exit729._crit_edge

Fx_ManDivRemoveLits.exit729._crit_edge:           ; preds = %Fx_ManDivRemoveLits.exit729
  %.pre1095 = ptrtoint ptr %i.aly to i64
  br label %bb.hr

bb.gg:                                            ; preds = %Fx_ManDivRemoveLits.exit729
  %i.aqj = icmp ne i32 %i.als, 0
  %or.cond = select i1 %.val332, i1 true, i1 %i.aqj
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aly, i64 4 ; 5 uses
  %i.aql = load i32, ptr %i.aqk, align 4, !tbaa !39 ; 13 uses
  %i.aqm = load i32, ptr %i.aly, align 8, !tbaa !40
  %i.aqn = icmp eq i32 %i.aql, %i.aqm             ; 2 uses
  br i1 %or.cond, label %bb.gh, label %bb.gz

bb.gh:                                            ; preds = %bb.gg
  br i1 %i.aqn, label %bb.gi, label %Vec_IntPush.exit737

bb.gi:                                            ; preds = %bb.gh
  %i.aqo = icmp slt i32 %i.aql, 16
  br i1 %i.aqo, label %bb.gj, label %bb.gm

bb.gj:                                            ; preds = %bb.gi
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aly, i64 8 ; 2 uses
  %i.aqq = load ptr, ptr %i.aqp, align 8, !tbaa !41 ; 2 uses
  %.not9.i.i735 = icmp eq ptr %i.aqq, null
  br i1 %.not9.i.i735, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.aqr = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aqq, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i736

bb.gl:                                            ; preds = %bb.gj
  %i.aqs = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i736

Vec_IntGrow.exit.i736:                            ; preds = %bb.gl, %bb.gk
  %i.aqt = phi ptr [ %i.aqr, %bb.gk ], [ %i.aqs, %bb.gl ]
  store ptr %i.aqt, ptr %i.aqp, align 8, !tbaa !41
  br label %Vec_IntGrow.exit11.sink.split.i733

bb.gm:                                            ; preds = %bb.gi
  %i.aqu = icmp samesign ult i32 %i.aql, 1073741823
  %i.aqv = shl nuw nsw i32 %i.aql, 1
  %spec.select.i730 = select i1 %i.aqu, i32 %i.aqv, i32 2147483647 ; 3 uses
  %.not.i9.i731 = icmp samesign ult i32 %i.aql, %spec.select.i730
  br i1 %.not.i9.i731, label %bb.gn, label %Vec_IntPush.exit737

bb.gn:                                            ; preds = %bb.gm
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aly, i64 8 ; 2 uses
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !41 ; 2 uses
  %.not9.i10.i732 = icmp eq ptr %i.aqx, null
  %i.aqy = zext nneg i32 %spec.select.i730 to i64
  %i.aqz = shl nuw nsw i64 %i.aqy, 2              ; 2 uses
  br i1 %.not9.i10.i732, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ara = tail call ptr @realloc(ptr noundef nonnull %i.aqx, i64 noundef %i.aqz) #30
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gn
  %i.arb = tail call noalias ptr @malloc(i64 noundef %i.aqz) #27
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.arc = phi ptr [ %i.ara, %bb.go ], [ %i.arb, %bb.gp ]
  store ptr %i.arc, ptr %i.aqw, align 8, !tbaa !41
  br label %Vec_IntGrow.exit11.sink.split.i733

Vec_IntGrow.exit11.sink.split.i733:               ; preds = %bb.gq, %Vec_IntGrow.exit.i736
  %spec.select.sink.i734 = phi i32 [ %spec.select.i730, %bb.gq ], [ 16, %Vec_IntGrow.exit.i736 ]
  store i32 %spec.select.sink.i734, ptr %i.aly, align 8, !tbaa !40
  %.pre1077 = load i32, ptr %i.aqk, align 4, !tbaa !39
  %.pre1078 = load ptr, ptr %0, align 8, !tbaa !104
  %.phi.trans.insert1079 = getelementptr i8, ptr %.pre1078, i64 8
  %.val396.pre = load ptr, ptr %.phi.trans.insert1079, align 8, !tbaa !13
  br label %Vec_IntPush.exit737

Vec_IntPush.exit737:                              ; preds = %bb.gh, %bb.gm, %Vec_IntGrow.exit11.sink.split.i733
  %.val396 = phi ptr [ %.val359, %bb.gh ], [ %.val359, %bb.gm ], [ %.val396.pre, %Vec_IntGrow.exit11.sink.split.i733 ]
  %i.ard = phi i32 [ %i.aql, %bb.gh ], [ %i.aql, %bb.gm ], [ %.pre1077, %Vec_IntGrow.exit11.sink.split.i733 ] ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.aly, i64 8
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !41
  %i.arg = add nsw i32 %i.ard, 1
  store i32 %i.arg, ptr %i.aqk, align 4, !tbaa !39
  %i.arh = sext i32 %i.ard to i64
  %i.ari = getelementptr inbounds [4 x i8], ptr %i.arf, i64 %i.arh
  store i32 %i.alk, ptr %i.ari, align 4, !tbaa !42
  %i.arj = ptrtoint ptr %i.aly to i64             ; 2 uses
  %i.ark = ptrtoint ptr %.val396 to i64
  %i.arl = sub i64 %i.arj, %i.ark
  %i.arm = lshr exact i64 %i.arl, 4
  %i.arn = trunc i64 %i.arm to i32
  %i.aro = load i32, ptr %i.all, align 4, !tbaa !39 ; 7 uses
  %i.arp = load i32, ptr %.0298, align 8, !tbaa !40
  %i.arq = icmp eq i32 %i.aro, %i.arp
  br i1 %i.arq, label %bb.gr, label %Vec_IntPush.exit737.Vec_IntPush.exit745_crit_edge

Vec_IntPush.exit737.Vec_IntPush.exit745_crit_edge: ; preds = %Vec_IntPush.exit737
  %.pre1081 = load ptr, ptr %i.alm, align 8, !tbaa !41
  br label %Vec_IntPush.exit745

bb.gr:                                            ; preds = %Vec_IntPush.exit737
  %i.arr = icmp slt i32 %i.aro, 16
  br i1 %i.arr, label %bb.gs, label %bb.gv

bb.gs:                                            ; preds = %bb.gr
  %i.ars = load ptr, ptr %i.alm, align 8, !tbaa !41 ; 2 uses
  %.not9.i.i743 = icmp eq ptr %i.ars, null
  br i1 %.not9.i.i743, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.art = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ars, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i741

bb.gu:                                            ; preds = %bb.gs
  %i.aru = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i741

bb.gv:                                            ; preds = %bb.gr
  %i.arv = icmp samesign ult i32 %i.aro, 1073741823
  %i.arw = shl nuw nsw i32 %i.aro, 1
  %spec.select.i738 = select i1 %i.arv, i32 %i.arw, i32 2147483647 ; 4 uses
  %.not.i9.i739 = icmp samesign ult i32 %i.aro, %spec.select.i738
  %.pre1082 = load ptr, ptr %i.alm, align 8, !tbaa !41 ; 3 uses
  br i1 %.not.i9.i739, label %bb.gw, label %Vec_IntPush.exit745

bb.gw:                                            ; preds = %bb.gv
  %.not9.i10.i740 = icmp eq ptr %.pre1082, null
  %i.arx = zext nneg i32 %spec.select.i738 to i64
  %i.ary = shl nuw nsw i64 %i.arx, 2              ; 2 uses
  br i1 %.not9.i10.i740, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.arz = tail call ptr @realloc(ptr noundef nonnull %.pre1082, i64 noundef %i.ary) #30
  br label %Vec_IntGrow.exit11.sink.split.i741

bb.gy:                                            ; preds = %bb.gw
  %i.asa = tail call noalias ptr @malloc(i64 noundef %i.ary) #27
  br label %Vec_IntGrow.exit11.sink.split.i741

Vec_IntGrow.exit11.sink.split.i741:               ; preds = %bb.gx, %bb.gy, %bb.gt, %bb.gu
  %i.asb = phi ptr [ %i.aru, %bb.gu ], [ %i.art, %bb.gt ], [ %i.arz, %bb.gx ], [ %i.asa, %bb.gy ] ; 2 uses
  %spec.select.sink.i742 = phi i32 [ 16, %bb.gu ], [ 16, %bb.gt ], [ %spec.select.i738, %bb.gx ], [ %spec.select.i738, %bb.gy ]
  store ptr %i.asb, ptr %i.alm, align 8, !tbaa !41
  store i32 %spec.select.sink.i742, ptr %.0298, align 8, !tbaa !40
  %.pre1083 = load i32, ptr %i.all, align 4, !tbaa !39
  br label %Vec_IntPush.exit745

Vec_IntPush.exit745:                              ; preds = %Vec_IntPush.exit737.Vec_IntPush.exit745_crit_edge, %bb.gv, %Vec_IntGrow.exit11.sink.split.i741
  %i.asc = phi i32 [ %i.aro, %Vec_IntPush.exit737.Vec_IntPush.exit745_crit_edge ], [ %i.aro, %bb.gv ], [ %.pre1083, %Vec_IntGrow.exit11.sink.split.i741 ] ; 2 uses
  %i.asd = phi ptr [ %.pre1081, %Vec_IntPush.exit737.Vec_IntPush.exit745_crit_edge ], [ %.pre1082, %bb.gv ], [ %i.asb, %Vec_IntGrow.exit11.sink.split.i741 ]
  %i.ase = add nsw i32 %i.asc, 1
  store i32 %i.ase, ptr %i.all, align 4, !tbaa !39
  %i.asf = sext i32 %i.asc to i64
  %i.asg = getelementptr inbounds [4 x i8], ptr %i.asd, i64 %i.asf
  store i32 %i.arn, ptr %i.asg, align 4, !tbaa !42
  br label %bb.hr

bb.gz:                                            ; preds = %bb.gg
  br i1 %i.aqn, label %bb.ha, label %Vec_IntPush.exit753

bb.ha:                                            ; preds = %bb.gz
  %i.ash = icmp slt i32 %i.aql, 16
  br i1 %i.ash, label %bb.hb, label %bb.he

bb.hb:                                            ; preds = %bb.ha
  %i.asi = getelementptr inbounds nuw i8, ptr %i.aly, i64 8 ; 2 uses
end_hunk_0
