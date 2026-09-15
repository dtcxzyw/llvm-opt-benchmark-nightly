Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcFx?download=true
inline.NumInlined: 642
inline.NumDeleted: 101
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@Fx_ManUpdate:bb.a
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !17 ; 5 uses
  %i.aed = load i32, ptr %i.aea, align 8, !tbaa !18
  %i.aee = icmp eq i32 %i.aec, %i.aed
  br i1 %i.aee, label %bb.eg, label %Vec_WecPushLevel.exit617

bb.eg:                                            ; preds = %Vec_IntPush.exit607
  %i.aef = icmp slt i32 %i.aec, 16
  br i1 %i.aef, label %bb.eh, label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aea, i64 8 ; 2 uses
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !19 ; 2 uses
  %.not13.i.i614 = icmp eq ptr %i.aeh, null
  br i1 %.not13.i.i614, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.aei = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.aeh, i64 noundef 256) #30
  %.pre.i.i615 = load i32, ptr %i.aea, align 8, !tbaa !18
  br label %Vec_WecGrow.exit.i616

bb.ej:                                            ; preds = %bb.eh
  %i.aej = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #27
  br label %Vec_WecGrow.exit.i616

Vec_WecGrow.exit.i616:                            ; preds = %bb.ej, %bb.ei
  %i.aek = phi i32 [ %.pre.i.i615, %bb.ei ], [ %i.aec, %bb.ej ] ; 2 uses
  %i.ael = phi ptr [ %i.aei, %bb.ei ], [ %i.aej, %bb.ej ] ; 2 uses
  store ptr %i.ael, ptr %i.aeg, align 8, !tbaa !19
  %i.aem = sext i32 %i.aek to i64
  %i.aen = getelementptr inbounds [16 x i8], ptr %i.ael, i64 %i.aem
  %i.aeo = sub nsw i32 16, %i.aek
  br label %Vec_WecPushLevel.exit617.sink.split

bb.ek:                                            ; preds = %bb.eg
  %i.aep = shl nuw nsw i32 %i.aec, 1              ; 3 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aea, i64 8 ; 2 uses
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !19 ; 2 uses
  %.not13.i10.i612 = icmp eq ptr %i.aer, null
  %i.aes = zext nneg i32 %i.aep to i64
  %i.aet = shl nuw nsw i64 %i.aes, 4              ; 2 uses
  br i1 %.not13.i10.i612, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aeu = tail call ptr @realloc(ptr noundef nonnull %i.aer, i64 noundef %i.aet) #30
  %.pre.i11.i613 = load i32, ptr %i.aea, align 8, !tbaa !18
  br label %bb.en

bb.em:                                            ; preds = %bb.ek
  %i.aev = tail call noalias ptr @malloc(i64 noundef %i.aet) #27
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.aew = phi i32 [ %.pre.i11.i613, %bb.el ], [ %i.aec, %bb.em ] ; 2 uses
  %i.aex = phi ptr [ %i.aeu, %bb.el ], [ %i.aev, %bb.em ] ; 2 uses
  store ptr %i.aex, ptr %i.aeq, align 8, !tbaa !19
  %i.aey = sext i32 %i.aew to i64
  %i.aez = getelementptr inbounds [16 x i8], ptr %i.aex, i64 %i.aey
  %i.afa = sub nsw i32 %i.aep, %i.aew
  br label %Vec_WecPushLevel.exit617.sink.split

Vec_WecPushLevel.exit617.sink.split:              ; preds = %bb.en, %Vec_WecGrow.exit.i616
  %.sink1214 = phi i32 [ %i.aeo, %Vec_WecGrow.exit.i616 ], [ %i.afa, %bb.en ]
  %.sink1211 = phi ptr [ %i.aen, %Vec_WecGrow.exit.i616 ], [ %i.aez, %bb.en ]
  %.sink1210 = phi i32 [ 16, %Vec_WecGrow.exit.i616 ], [ %i.aep, %bb.en ]
  %i.afb = sext i32 %.sink1214 to i64
  %i.afc = shl nsw i64 %i.afb, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink1211, i8 0, i64 %i.afc, i1 false)
  store i32 %.sink1210, ptr %i.aea, align 8, !tbaa !18
  br label %Vec_WecPushLevel.exit617

Vec_WecPushLevel.exit617:                         ; preds = %Vec_WecPushLevel.exit617.sink.split, %Vec_IntPush.exit607
  %i.afd = load i32, ptr %i.aeb, align 4, !tbaa !17
  %i.afe = add nsw i32 %i.afd, 1
  store i32 %i.afe, ptr %i.aeb, align 4, !tbaa !17
  %i.aff = load ptr, ptr %i.gu, align 8, !tbaa !83 ; 9 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 4 ; 3 uses
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !17 ; 5 uses
  %i.afi = load i32, ptr %i.aff, align 8, !tbaa !18
  %i.afj = icmp eq i32 %i.afh, %i.afi
  br i1 %i.afj, label %bb.eo, label %.Vec_WecGrow.exit12_crit_edge.i618

.Vec_WecGrow.exit12_crit_edge.i618:               ; preds = %Vec_WecPushLevel.exit617
  %.phi.trans.insert.i619 = getelementptr i8, ptr %i.aff, i64 8
  %.val8.pre.i620 = load ptr, ptr %.phi.trans.insert.i619, align 8, !tbaa !19
  br label %Vec_WecPushLevel.exit627

bb.eo:                                            ; preds = %Vec_WecPushLevel.exit617
  %i.afk = icmp slt i32 %i.afh, 16
  br i1 %i.afk, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aff, i64 8 ; 2 uses
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !19 ; 2 uses
  %.not13.i.i624 = icmp eq ptr %i.afm, null
  br i1 %.not13.i.i624, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.afn = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.afm, i64 noundef 256) #30
  %.pre.i.i625 = load i32, ptr %i.aff, align 8, !tbaa !18
  br label %Vec_WecGrow.exit.i626

bb.er:                                            ; preds = %bb.ep
  %i.afo = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #27
  br label %Vec_WecGrow.exit.i626

Vec_WecGrow.exit.i626:                            ; preds = %bb.er, %bb.eq
  %i.afp = phi i32 [ %.pre.i.i625, %bb.eq ], [ %i.afh, %bb.er ] ; 2 uses
  %i.afq = phi ptr [ %i.afn, %bb.eq ], [ %i.afo, %bb.er ] ; 3 uses
  store ptr %i.afq, ptr %i.afl, align 8, !tbaa !19
  %i.afr = sext i32 %i.afp to i64
  %i.afs = getelementptr inbounds [16 x i8], ptr %i.afq, i64 %i.afr
  %i.aft = sub nsw i32 16, %i.afp
  %i.afu = sext i32 %i.aft to i64
  %i.afv = shl nsw i64 %i.afu, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.afs, i8 0, i64 %i.afv, i1 false)
  store i32 16, ptr %i.aff, align 8, !tbaa !18
  br label %Vec_WecPushLevel.exit627

bb.es:                                            ; preds = %bb.eo
  %i.afw = shl nuw nsw i32 %i.afh, 1              ; 3 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.aff, i64 8 ; 2 uses
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !19 ; 2 uses
  %.not13.i10.i622 = icmp eq ptr %i.afy, null
  %i.afz = zext nneg i32 %i.afw to i64
  %i.aga = shl nuw nsw i64 %i.afz, 4              ; 2 uses
  br i1 %.not13.i10.i622, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.agb = tail call ptr @realloc(ptr noundef nonnull %i.afy, i64 noundef %i.aga) #30
  %.pre.i11.i623 = load i32, ptr %i.aff, align 8, !tbaa !18
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %i.agc = tail call noalias ptr @malloc(i64 noundef %i.aga) #27
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.agd = phi i32 [ %.pre.i11.i623, %bb.et ], [ %i.afh, %bb.eu ] ; 2 uses
  %i.age = phi ptr [ %i.agb, %bb.et ], [ %i.agc, %bb.eu ] ; 3 uses
  store ptr %i.age, ptr %i.afx, align 8, !tbaa !19
  %i.agf = sext i32 %i.agd to i64
  %i.agg = getelementptr inbounds [16 x i8], ptr %i.age, i64 %i.agf
  %i.agh = sub nsw i32 %i.afw, %i.agd
  %i.agi = sext i32 %i.agh to i64
  %i.agj = shl nsw i64 %i.agi, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.agg, i8 0, i64 %i.agj, i1 false)
  store i32 %i.afw, ptr %i.aff, align 8, !tbaa !18
  br label %Vec_WecPushLevel.exit627

Vec_WecPushLevel.exit627:                         ; preds = %.Vec_WecGrow.exit12_crit_edge.i618, %Vec_WecGrow.exit.i626, %bb.ev
  %.val8.i621 = phi ptr [ %.val8.pre.i620, %.Vec_WecGrow.exit12_crit_edge.i618 ], [ %i.age, %bb.ev ], [ %i.afq, %Vec_WecGrow.exit.i626 ]
  %i.agk = load i32, ptr %i.afg, align 4, !tbaa !17
  %i.agl = add nsw i32 %i.agk, 1                  ; 2 uses
  store i32 %i.agl, ptr %i.afg, align 4, !tbaa !17
  %i.agm = sext i32 %i.agl to i64
  %i.agn = getelementptr inbounds [16 x i8], ptr %.val8.i621, i64 %i.agm
  %i.ago = getelementptr inbounds i8, ptr %i.agn, i64 -16 ; 3 uses
  %i.agp = load ptr, ptr %i.gu, align 8, !tbaa !83 ; 2 uses
  %i.agq = getelementptr i8, ptr %i.agp, i64 4
  %.val345 = load i32, ptr %i.agq, align 4, !tbaa !17
  %i.agr = getelementptr i8, ptr %i.agp, i64 8
  %.val361 = load ptr, ptr %i.agr, align 8, !tbaa !19
  %i.ags = sext i32 %.val345 to i64
  %i.agt = getelementptr [16 x i8], ptr %.val361, i64 %i.ags ; 3 uses
  %i.agu = getelementptr i8, ptr %i.agt, i64 -32  ; 5 uses
  %i.agv = load ptr, ptr %i.bm, align 8, !tbaa !77 ; 2 uses
  %i.agw = getelementptr i8, ptr %i.agv, i64 4
  %.val334927 = load i32, ptr %i.agw, align 4, !tbaa !45
  %i.agx = icmp sgt i32 %.val334927, 0
  br i1 %i.agx, label %.lr.ph929, label %.critedge8

.lr.ph929:                                        ; preds = %Vec_WecPushLevel.exit627
  %i.agy = shl nsw i32 %i.pz, 1
  %i.agz = getelementptr i8, ptr %i.agt, i64 -28  ; 3 uses
  %i.aha = getelementptr i8, ptr %i.agt, i64 -24  ; 4 uses
  br label %bb.ew

bb.ew:                                            ; preds = %.lr.ph929, %Vec_IntPush.exit667
  %indvars.iv1013 = phi i64 [ 0, %.lr.ph929 ], [ %indvars.iv.next1014, %Vec_IntPush.exit667 ] ; 2 uses
  %i.ahb = phi ptr [ %i.agv, %.lr.ph929 ], [ %i.akt, %Vec_IntPush.exit667 ]
  %i.ahc = load ptr, ptr %0, align 8, !tbaa !76
  %i.ahd = getelementptr i8, ptr %i.ahb, i64 8
  %.val386 = load ptr, ptr %i.ahd, align 8, !tbaa !47
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %.val386, i64 %indvars.iv1013
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !48
  %i.ahg = getelementptr i8, ptr %i.ahc, i64 8
  %.val360 = load ptr, ptr %i.ahg, align 8, !tbaa !19 ; 4 uses
  %i.ahh = sext i32 %i.ahf to i64
  %i.ahi = getelementptr inbounds [16 x i8], ptr %.val360, i64 %i.ahh ; 8 uses
  %.not313 = icmp eq ptr %.val360, null
  br i1 %.not313, label %.critedge8, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 4 ; 7 uses
  %i.ahk = load i32, ptr %i.ahj, align 4, !tbaa !45 ; 7 uses
  %i.ahl = icmp sgt i32 %i.ahk, 1
  br i1 %i.ahl, label %.lr.ph.i629, label %Vec_IntRemove1.exit651

.lr.ph.i629:                                      ; preds = %bb.ex
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !47 ; 4 uses
  %wide.trip.count.i630 = zext nneg i32 %i.ahk to i64
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ez, %.lr.ph.i629
  %indvar.i = phi i64 [ 0, %.lr.ph.i629 ], [ %indvar.next.i, %bb.ez ] ; 3 uses
  %indvars.iv.i631 = phi i64 [ 1, %.lr.ph.i629 ], [ %indvars.iv.next.i632, %bb.ez ] ; 3 uses
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %indvars.iv.i631
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !48
  %i.ahq = xor i32 %i.ahp, %.2859
  %i.ahr = icmp eq i32 %i.ahq, 1
  br i1 %i.ahr, label %.preheader.i634, label %bb.ez

.preheader.i634:                                  ; preds = %bb.ey
  %i.ahs = trunc nuw nsw i64 %indvars.iv.i631 to i32
  %.122.i = add nuw nsw i32 %i.ahs, 1
  %i.aht = icmp slt i32 %.122.i, %i.ahk
  br i1 %i.aht, label %.lr.ph25.i, label %._crit_edge.i

.lr.ph25.i:                                       ; preds = %.preheader.i634
  %i.ahu = shl nuw nsw i64 %indvar.i, 2
  %i.ahv = getelementptr nuw i8, ptr %i.ahn, i64 %i.ahu ; 2 uses
  %scevgep.i = getelementptr nuw i8, ptr %i.ahv, i64 4
  %scevgep29.i = getelementptr nuw i8, ptr %i.ahv, i64 8
  %i.ahw = add nsw i32 %i.ahk, -3
  %i.ahx = trunc i64 %indvar.i to i32
  %i.ahy = sub i32 %i.ahw, %i.ahx
  %i.ahz = zext i32 %i.ahy to i64
  %i.aia = shl nuw nsw i64 %i.ahz, 2
  %i.aib = add nuw nsw i64 %i.aia, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i, i64 %i.aib, i1 false), !tbaa !48
  %.pre.i635 = load i32, ptr %i.ahj, align 4, !tbaa !45
  br label %._crit_edge.i

bb.ez:                                            ; preds = %bb.ey
  %indvars.iv.next.i632 = add nuw nsw i64 %indvars.iv.i631, 1 ; 2 uses
  %exitcond.not.i633 = icmp eq i64 %indvars.iv.next.i632, %wide.trip.count.i630
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  br i1 %exitcond.not.i633, label %Vec_IntRemove1.exit, label %bb.ey, !llvm.loop !193

._crit_edge.i:                                    ; preds = %.lr.ph25.i, %.preheader.i634
  %i.aic = phi i32 [ %.pre.i635, %.lr.ph25.i ], [ %i.ahk, %.preheader.i634 ]
  %i.aid = add nsw i32 %i.aic, -1                 ; 2 uses
  store i32 %i.aid, ptr %i.ahj, align 4, !tbaa !45
  br label %Vec_IntRemove1.exit

Vec_IntRemove1.exit:                              ; preds = %bb.ez, %._crit_edge.i
  %.pr860 = phi i32 [ %i.aid, %._crit_edge.i ], [ %i.ahk, %bb.ez ] ; 7 uses
  %i.aie = icmp sgt i32 %.pr860, 1
  br i1 %i.aie, label %.lr.ph.i637, label %Vec_IntRemove1.exit651

.lr.ph.i637:                                      ; preds = %Vec_IntRemove1.exit
  %wide.trip.count.i638 = zext nneg i32 %.pr860 to i64
  br label %bb.fa

bb.fa:                                            ; preds = %bb.fb, %.lr.ph.i637
  %indvar.i639 = phi i64 [ 0, %.lr.ph.i637 ], [ %indvar.next.i643, %bb.fb ] ; 3 uses
  %indvars.iv.i640 = phi i64 [ 1, %.lr.ph.i637 ], [ %indvars.iv.next.i641, %bb.fb ] ; 3 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %indvars.iv.i640
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !48
  %i.aih = xor i32 %i.aig, %.3856
  %i.aii = icmp eq i32 %i.aih, 1
  br i1 %i.aii, label %.preheader.i644, label %bb.fb

.preheader.i644:                                  ; preds = %bb.fa
  %i.aij = trunc nuw nsw i64 %indvars.iv.i640 to i32
  %.122.i645 = add nuw nsw i32 %i.aij, 1
  %i.aik = icmp slt i32 %.122.i645, %.pr860
  br i1 %i.aik, label %.lr.ph25.i647, label %._crit_edge.i646

.lr.ph25.i647:                                    ; preds = %.preheader.i644
  %i.ail = shl nuw nsw i64 %indvar.i639, 2
  %i.aim = getelementptr nuw i8, ptr %i.ahn, i64 %i.ail ; 2 uses
  %scevgep.i648 = getelementptr nuw i8, ptr %i.aim, i64 4
  %scevgep29.i649 = getelementptr nuw i8, ptr %i.aim, i64 8
  %i.ain = add nsw i32 %.pr860, -3
  %i.aio = trunc i64 %indvar.i639 to i32
  %i.aip = sub i32 %i.ain, %i.aio
  %i.aiq = zext i32 %i.aip to i64
  %i.air = shl nuw nsw i64 %i.aiq, 2
  %i.ais = add nuw nsw i64 %i.air, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i648, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i649, i64 %i.ais, i1 false), !tbaa !48
  %.pre.i650 = load i32, ptr %i.ahj, align 4, !tbaa !45
  br label %._crit_edge.i646

bb.fb:                                            ; preds = %bb.fa
  %indvars.iv.next.i641 = add nuw nsw i64 %indvars.iv.i640, 1 ; 2 uses
  %exitcond.not.i642 = icmp eq i64 %indvars.iv.next.i641, %wide.trip.count.i638
  %indvar.next.i643 = add nuw nsw i64 %indvar.i639, 1
  br i1 %exitcond.not.i642, label %Vec_IntRemove1.exit651, label %bb.fa, !llvm.loop !193

._crit_edge.i646:                                 ; preds = %.lr.ph25.i647, %.preheader.i644
  %i.ait = phi i32 [ %.pre.i650, %.lr.ph25.i647 ], [ %.pr860, %.preheader.i644 ]
  %i.aiu = add nsw i32 %i.ait, -1                 ; 2 uses
  store i32 %i.aiu, ptr %i.ahj, align 4, !tbaa !45
  br label %Vec_IntRemove1.exit651

Vec_IntRemove1.exit651:                           ; preds = %bb.fb, %Vec_IntRemove1.exit, %bb.ex, %._crit_edge.i646
  %i.aiv = phi i32 [ %i.ahk, %bb.ex ], [ %i.aiu, %._crit_edge.i646 ], [ %.pr860, %Vec_IntRemove1.exit ], [ %.pr860, %bb.fb ] ; 7 uses
  %i.aiw = load i32, ptr %i.ahi, align 8, !tbaa !46
  %i.aix = icmp eq i32 %i.aiv, %i.aiw
  br i1 %i.aix, label %bb.fc, label %Vec_IntPush.exit659

bb.fc:                                            ; preds = %Vec_IntRemove1.exit651
  %i.aiy = icmp slt i32 %i.aiv, 16
  br i1 %i.aiy, label %bb.fd, label %bb.fg

bb.fd:                                            ; preds = %bb.fc
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8 ; 2 uses
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i657 = icmp eq ptr %i.aja, null
  br i1 %.not9.i.i657, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ajb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aja, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i658

bb.ff:                                            ; preds = %bb.fd
  %i.ajc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i658

Vec_IntGrow.exit.i658:                            ; preds = %bb.ff, %bb.fe
  %i.ajd = phi ptr [ %i.ajb, %bb.fe ], [ %i.ajc, %bb.ff ]
  store ptr %i.ajd, ptr %i.aiz, align 8, !tbaa !47
  br label %Vec_IntGrow.exit11.sink.split.i655

bb.fg:                                            ; preds = %bb.fc
  %i.aje = icmp samesign ult i32 %i.aiv, 1073741823
  %i.ajf = shl nuw nsw i32 %i.aiv, 1
  %spec.select.i652 = select i1 %i.aje, i32 %i.ajf, i32 2147483647 ; 3 uses
  %.not.i9.i653 = icmp samesign ult i32 %i.aiv, %spec.select.i652
  br i1 %.not.i9.i653, label %bb.fh, label %Vec_IntPush.exit659

bb.fh:                                            ; preds = %bb.fg
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8 ; 2 uses
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !47 ; 2 uses
  %.not9.i10.i654 = icmp eq ptr %i.ajh, null
  %i.aji = zext nneg i32 %spec.select.i652 to i64
  %i.ajj = shl nuw nsw i64 %i.aji, 2              ; 2 uses
  br i1 %.not9.i10.i654, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ajk = tail call ptr @realloc(ptr noundef nonnull %i.ajh, i64 noundef %i.ajj) #30
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %i.ajl = tail call noalias ptr @malloc(i64 noundef %i.ajj) #27
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.ajm = phi ptr [ %i.ajk, %bb.fi ], [ %i.ajl, %bb.fj ]
  store ptr %i.ajm, ptr %i.ajg, align 8, !tbaa !47
  br label %Vec_IntGrow.exit11.sink.split.i655

Vec_IntGrow.exit11.sink.split.i655:               ; preds = %bb.fk, %Vec_IntGrow.exit.i658
  %spec.select.sink.i656 = phi i32 [ %spec.select.i652, %bb.fk ], [ 16, %Vec_IntGrow.exit.i658 ]
  store i32 %spec.select.sink.i656, ptr %i.ahi, align 8, !tbaa !46
  %.pre1059 = load i32, ptr %i.ahj, align 4, !tbaa !45
  %.pre1060 = load ptr, ptr %0, align 8, !tbaa !76
  %.phi.trans.insert1061 = getelementptr i8, ptr %.pre1060, i64 8
  %.val397.pre = load ptr, ptr %.phi.trans.insert1061, align 8, !tbaa !19
  br label %Vec_IntPush.exit659

Vec_IntPush.exit659:                              ; preds = %Vec_IntRemove1.exit651, %bb.fg, %Vec_IntGrow.exit11.sink.split.i655
  %.val397 = phi ptr [ %.val360, %Vec_IntRemove1.exit651 ], [ %.val360, %bb.fg ], [ %.val397.pre, %Vec_IntGrow.exit11.sink.split.i655 ]
  %i.ajn = phi i32 [ %i.aiv, %Vec_IntRemove1.exit651 ], [ %i.aiv, %bb.fg ], [ %.pre1059, %Vec_IntGrow.exit11.sink.split.i655 ] ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !47
  %i.ajq = add nsw i32 %i.ajn, 1
  store i32 %i.ajq, ptr %i.ahj, align 4, !tbaa !45
  %i.ajr = sext i32 %i.ajn to i64
  %i.ajs = getelementptr inbounds [4 x i8], ptr %i.ajp, i64 %i.ajr
  store i32 %i.agy, ptr %i.ajs, align 4, !tbaa !48
  %i.ajt = ptrtoint ptr %i.ahi to i64
  %i.aju = ptrtoint ptr %.val397 to i64
  %i.ajv = sub i64 %i.ajt, %i.aju
  %i.ajw = lshr exact i64 %i.ajv, 4
  %i.ajx = trunc i64 %i.ajw to i32
  %i.ajy = load i32, ptr %i.agz, align 4, !tbaa !45 ; 7 uses
  %i.ajz = load i32, ptr %i.agu, align 8, !tbaa !46
  %i.aka = icmp eq i32 %i.ajy, %i.ajz
  br i1 %i.aka, label %bb.fl, label %Vec_IntPush.exit659.Vec_IntPush.exit667_crit_edge

Vec_IntPush.exit659.Vec_IntPush.exit667_crit_edge: ; preds = %Vec_IntPush.exit659
  %.pre1063 = load ptr, ptr %i.aha, align 8, !tbaa !47
  br label %Vec_IntPush.exit667

bb.fl:                                            ; preds = %Vec_IntPush.exit659
  %i.akb = icmp slt i32 %i.ajy, 16
  br i1 %i.akb, label %bb.fm, label %bb.fp

bb.fm:                                            ; preds = %bb.fl
  %i.akc = load ptr, ptr %i.aha, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i665 = icmp eq ptr %i.akc, null
  br i1 %.not9.i.i665, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.akd = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.akc, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i663

bb.fo:                                            ; preds = %bb.fm
  %i.ake = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i663

bb.fp:                                            ; preds = %bb.fl
  %i.akf = icmp samesign ult i32 %i.ajy, 1073741823
  %i.akg = shl nuw nsw i32 %i.ajy, 1
  %spec.select.i660 = select i1 %i.akf, i32 %i.akg, i32 2147483647 ; 4 uses
  %.not.i9.i661 = icmp samesign ult i32 %i.ajy, %spec.select.i660
  %.pre1064 = load ptr, ptr %i.aha, align 8, !tbaa !47 ; 3 uses
  br i1 %.not.i9.i661, label %bb.fq, label %Vec_IntPush.exit667

bb.fq:                                            ; preds = %bb.fp
  %.not9.i10.i662 = icmp eq ptr %.pre1064, null
  %i.akh = zext nneg i32 %spec.select.i660 to i64
  %i.aki = shl nuw nsw i64 %i.akh, 2              ; 2 uses
  br i1 %.not9.i10.i662, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.akj = tail call ptr @realloc(ptr noundef nonnull %.pre1064, i64 noundef %i.aki) #30
  br label %Vec_IntGrow.exit11.sink.split.i663

bb.fs:                                            ; preds = %bb.fq
  %i.akk = tail call noalias ptr @malloc(i64 noundef %i.aki) #27
  br label %Vec_IntGrow.exit11.sink.split.i663

Vec_IntGrow.exit11.sink.split.i663:               ; preds = %bb.fr, %bb.fs, %bb.fn, %bb.fo
  %i.akl = phi ptr [ %i.ake, %bb.fo ], [ %i.akd, %bb.fn ], [ %i.akj, %bb.fr ], [ %i.akk, %bb.fs ] ; 2 uses
  %spec.select.sink.i664 = phi i32 [ 16, %bb.fo ], [ 16, %bb.fn ], [ %spec.select.i660, %bb.fr ], [ %spec.select.i660, %bb.fs ]
  store ptr %i.akl, ptr %i.aha, align 8, !tbaa !47
  store i32 %spec.select.sink.i664, ptr %i.agu, align 8, !tbaa !46
  %.pre1065 = load i32, ptr %i.agz, align 4, !tbaa !45
  br label %Vec_IntPush.exit667

Vec_IntPush.exit667:                              ; preds = %Vec_IntPush.exit659.Vec_IntPush.exit667_crit_edge, %bb.fp, %Vec_IntGrow.exit11.sink.split.i663
  %i.akm = phi i32 [ %i.ajy, %Vec_IntPush.exit659.Vec_IntPush.exit667_crit_edge ], [ %i.ajy, %bb.fp ], [ %.pre1065, %Vec_IntGrow.exit11.sink.split.i663 ] ; 2 uses
  %i.akn = phi ptr [ %.pre1063, %Vec_IntPush.exit659.Vec_IntPush.exit667_crit_edge ], [ %.pre1064, %bb.fp ], [ %i.akl, %Vec_IntGrow.exit11.sink.split.i663 ]
  %i.ako = add nsw i32 %i.akm, 1
  store i32 %i.ako, ptr %i.agz, align 4, !tbaa !45
  %i.akp = sext i32 %i.akm to i64
  %i.akq = getelementptr inbounds [4 x i8], ptr %i.akn, i64 %i.akp
  store i32 %i.ajx, ptr %i.akq, align 4, !tbaa !48
  %i.akr = load i32, ptr %i.adx, align 4, !tbaa !94
  %i.aks = add nsw i32 %i.akr, -1
  store i32 %i.aks, ptr %i.adx, align 4, !tbaa !94
  %indvars.iv.next1014 = add nuw nsw i64 %indvars.iv1013, 1 ; 2 uses
  %i.akt = load ptr, ptr %i.bm, align 8, !tbaa !77 ; 2 uses
  %i.aku = getelementptr i8, ptr %i.akt, i64 4
  %.val334 = load i32, ptr %i.aku, align 4, !tbaa !45
  %i.akv = sext i32 %.val334 to i64
  %i.akw = icmp slt i64 %indvars.iv.next1014, %i.akv
  br i1 %i.akw, label %bb.ew, label %.critedge8, !llvm.loop !194

.critedge8:                                       ; preds = %Vec_IntPush.exit667, %bb.ew, %Vec_WecPushLevel.exit627, %bb.au
  %.0299 = phi ptr [ null, %bb.au ], [ %i.agu, %Vec_WecPushLevel.exit627 ], [ %i.agu, %bb.ew ], [ %i.agu, %Vec_IntPush.exit667 ] ; 4 uses
  %.0298 = phi ptr [ null, %bb.au ], [ %i.ago, %Vec_WecPushLevel.exit627 ], [ %i.ago, %bb.ew ], [ %i.ago, %Vec_IntPush.exit667 ] ; 4 uses
  %.0295 = phi i32 [ 0, %bb.au ], [ %i.pz, %Vec_WecPushLevel.exit627 ], [ %i.pz, %bb.ew ], [ %i.pz, %Vec_IntPush.exit667 ] ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  store i32 0, ptr %i.akx, align 4, !tbaa !211
  %i.aky = load ptr, ptr %i.if, align 8, !tbaa !78 ; 4 uses
  %i.akz = getelementptr i8, ptr %i.aky, i64 4
  %.val333932 = load i32, ptr %i.akz, align 4, !tbaa !45
  %i.ala = icmp sgt i32 %.val333932, 0
  br i1 %i.ala, label %.lr.ph935, label %.critedge8.._crit_edge_crit_edge

.critedge8.._crit_edge_crit_edge:                 ; preds = %.critedge8
  %.phi.trans.insert1084 = getelementptr i8, ptr %i.aky, i64 8
  %.val411.pre = load ptr, ptr %.phi.trans.insert1084, align 8, !tbaa !47
  br label %._crit_edge

.lr.ph935:                                        ; preds = %.critedge8
  %i.alb = getelementptr i8, ptr %i.b, i64 8
  %i.alc = icmp sgt i32 %.0295, 0
  %i.ald = shl nuw nsw i32 %.0295, 1              ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %.0299, i64 4 ; 3 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.0299, i64 8 ; 4 uses
  %i.alg = or disjoint i32 %i.ald, 1
  %i.alh = getelementptr inbounds nuw i8, ptr %.0298, i64 4 ; 3 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.0298, i64 8 ; 4 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %.pre1066 = load ptr, ptr %0, align 8, !tbaa !76
  %.phi.trans.insert1067 = getelementptr i8, ptr %.pre1066, i64 8
  %.val359.pre = load ptr, ptr %.phi.trans.insert1067, align 8, !tbaa !19
  %.phi.trans.insert1093 = getelementptr i8, ptr %i.aky, i64 8
  %.val384.pre = load ptr, ptr %.phi.trans.insert1093, align 8, !tbaa !47
  br label %bb.ft

bb.ft:                                            ; preds = %.lr.ph935, %bb.hr
  %.val384 = phi ptr [ %.val384.pre, %.lr.ph935 ], [ %.val391, %bb.hr ]
  %.val359 = phi ptr [ %.val359.pre, %.lr.ph935 ], [ %.val394, %bb.hr ] ; 6 uses
  %indvars.iv1018 = phi i64 [ 0, %.lr.ph935 ], [ %indvars.iv.next1019, %bb.hr ] ; 3 uses
  %indvars.iv1016 = phi i64 [ 0, %.lr.ph935 ], [ %indvars.iv.next1017, %bb.hr ] ; 2 uses
  %i.alk = load ptr, ptr %i.ih, align 8, !tbaa !79
  %i.all = lshr exact i64 %indvars.iv1018, 1
  %i.alm = getelementptr i8, ptr %i.alk, i64 8
  %.val385 = load ptr, ptr %i.alm, align 8, !tbaa !47
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %.val385, i64 %i.all
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !48 ; 3 uses
  %i.alp = load i32, ptr %i.akx, align 4, !tbaa !211
  %i.alq = add nsw i32 %i.alp, %i.alo
  store i32 %i.alq, ptr %i.akx, align 4, !tbaa !211
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %.val384, i64 %indvars.iv1018 ; 2 uses
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !48
  %i.alt = sext i32 %i.als to i64
  %i.alu = getelementptr inbounds [16 x i8], ptr %.val359, i64 %i.alt ; 15 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alr, i64 4
  %i.alw = load i32, ptr %i.alv, align 4, !tbaa !48
  %i.alx = sext i32 %i.alw to i64
  %i.aly = getelementptr inbounds [16 x i8], ptr %.val359, i64 %i.alx ; 3 uses
  %.val1538.i = load i32, ptr %i.g, align 4, !tbaa !45 ; 3 uses
  %i.alz = icmp sgt i32 %.val1538.i, 0
  br i1 %i.alz, label %.lr.ph.i670, label %Fx_ManDivRemoveLits.exit729

.lr.ph.i670:                                      ; preds = %bb.ft
  %.val16.i671 = load ptr, ptr %i.alb, align 8, !tbaa !47 ; 2 uses
  %i.ama = icmp ne i32 %i.alo, 0                  ; 2 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alu, i64 4 ; 5 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alu, i64 8 ; 2 uses
  %.pre.i672 = load i32, ptr %i.amb, align 4, !tbaa !45 ; 2 uses
  br label %bb.fu

bb.fu:                                            ; preds = %Vec_IntRemove1.exit32.i, %.lr.ph.i670
  %.val15.pre52.i = phi i32 [ %.val1538.i, %.lr.ph.i670 ], [ %.val1538.i678.pr, %Vec_IntRemove1.exit32.i ] ; 2 uses
  %.val1549.i = phi i32 [ %.val1538.i, %.lr.ph.i670 ], [ %.val15.i674, %Vec_IntRemove1.exit32.i ] ; 2 uses
  %i.amd = phi i32 [ %.pre.i672, %.lr.ph.i670 ], [ %i.any, %Vec_IntRemove1.exit32.i ] ; 2 uses
  %i.ame = phi i32 [ %.pre.i672, %.lr.ph.i670 ], [ %i.anz, %Vec_IntRemove1.exit32.i ] ; 7 uses
  %indvars.iv.i673 = phi i64 [ 0, %.lr.ph.i670 ], [ %indvars.iv.next.i676, %Vec_IntRemove1.exit32.i ] ; 3 uses
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %.val16.i671, i64 %indvars.iv.i673
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !48
  %i.amh = ashr i32 %i.amg, 1                     ; 2 uses
  %i.ami = icmp samesign ugt i64 %indvars.iv.i673, 1
  %i.amj = select i1 %i.ama, i1 %i.ami, i1 false
  %i.amk = zext i1 %i.amj to i32
  %i.aml = xor i32 %i.amh, %i.amk
  %i.amm = icmp sgt i32 %i.ame, 1
  br i1 %i.amm, label %.lr.ph.i.i, label %Vec_IntRemove1.exit.i

.lr.ph.i.i:                                       ; preds = %bb.fu
  %i.amn = load ptr, ptr %i.amc, align 8, !tbaa !47 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ame to i64
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fw, %.lr.ph.i.i
  %indvar.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvar.next.i.i, %bb.fw ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.fw ] ; 3 uses
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %i.amn, i64 %indvars.iv.i.i
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !48
  %i.amq = icmp eq i32 %i.amp, %i.aml
  br i1 %i.amq, label %.preheader.i.i, label %bb.fw

.preheader.i.i:                                   ; preds = %bb.fv
  %i.amr = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %.122.i.i = add nuw nsw i32 %i.amr, 1
  %i.ams = icmp slt i32 %.122.i.i, %i.ame
  br i1 %i.ams, label %.lr.ph25.i.i, label %._crit_edge.i.i

.lr.ph25.i.i:                                     ; preds = %.preheader.i.i
  %i.amt = shl nuw nsw i64 %indvar.i.i, 2
  %i.amu = getelementptr nuw i8, ptr %i.amn, i64 %i.amt ; 2 uses
  %scevgep.i.i = getelementptr nuw i8, ptr %i.amu, i64 4
  %scevgep29.i.i = getelementptr nuw i8, ptr %i.amu, i64 8
  %i.amv = add nsw i32 %i.ame, -3
  %i.amw = trunc i64 %indvar.i.i to i32
  %i.amx = sub i32 %i.amv, %i.amw
  %i.amy = zext i32 %i.amx to i64
  %i.amz = shl nuw nsw i64 %i.amy, 2
  %i.ana = add nuw nsw i64 %i.amz, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i.i, i64 %i.ana, i1 false), !tbaa !48
  %.pre.i.i677 = load i32, ptr %i.amb, align 4, !tbaa !45
  br label %._crit_edge.i.i

bb.fw:                                            ; preds = %bb.fv
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  %indvar.next.i.i = add nuw nsw i64 %indvar.i.i, 1
  br i1 %exitcond.not.i.i, label %Vec_IntRemove1.exit.i, label %bb.fv, !llvm.loop !193

._crit_edge.i.i:                                  ; preds = %.lr.ph25.i.i, %.preheader.i.i
  %i.anb = phi i32 [ %.pre.i.i677, %.lr.ph25.i.i ], [ %i.ame, %.preheader.i.i ]
  %i.anc = add nsw i32 %i.anb, -1                 ; 3 uses
  store i32 %i.anc, ptr %i.amb, align 4, !tbaa !45
  %.val.pre.i = load i32, ptr %i.g, align 4, !tbaa !45 ; 2 uses
  br label %Vec_IntRemove1.exit.i

Vec_IntRemove1.exit.i:                            ; preds = %bb.fw, %._crit_edge.i.i, %bb.fu
  %.val15.pre51.i = phi i32 [ %.val.pre.i, %._crit_edge.i.i ], [ %.val15.pre52.i, %bb.fu ], [ %.val15.pre52.i, %bb.fw ] ; 5 uses
  %.val1548.i = phi i32 [ %.val.pre.i, %._crit_edge.i.i ], [ %.val1549.i, %bb.fu ], [ %.val1549.i, %bb.fw ] ; 2 uses
  %i.and = phi i32 [ %i.anc, %._crit_edge.i.i ], [ %i.amd, %bb.fu ], [ %i.amd, %bb.fw ] ; 10 uses
  %i.ane = phi i32 [ %i.anc, %._crit_edge.i.i ], [ %i.ame, %bb.fu ], [ %i.ame, %bb.fw ]
  %i.anf = icmp eq i32 %.val1548.i, 2
  br i1 %i.anf, label %bb.fx, label %Vec_IntRemove1.exit32.i

bb.fx:                                            ; preds = %Vec_IntRemove1.exit.i
  %i.ang = icmp sgt i32 %i.and, 1
  br i1 %i.ang, label %.lr.ph.i18.i, label %Vec_IntRemove1.exit32.i

.lr.ph.i18.i:                                     ; preds = %bb.fx
  %i.anh = load ptr, ptr %i.amc, align 8, !tbaa !47 ; 2 uses
  %wide.trip.count.i19.i = zext nneg i32 %i.and to i64
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fz, %.lr.ph.i18.i
  %indvar.i20.i = phi i64 [ 0, %.lr.ph.i18.i ], [ %indvar.next.i24.i, %bb.fz ] ; 3 uses
  %indvars.iv.i21.i = phi i64 [ 1, %.lr.ph.i18.i ], [ %indvars.iv.next.i22.i, %bb.fz ] ; 3 uses
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.anh, i64 %indvars.iv.i21.i
  %i.anj = load i32, ptr %i.ani, align 4, !tbaa !48
  %i.ank = xor i32 %i.anj, %i.amh
  %i.anl = icmp eq i32 %i.ank, 1
  br i1 %i.anl, label %.preheader.i25.i, label %bb.fz

.preheader.i25.i:                                 ; preds = %bb.fy
  %i.anm = trunc nuw nsw i64 %indvars.iv.i21.i to i32
  %.122.i26.i = add nuw nsw i32 %i.anm, 1
  %i.ann = icmp slt i32 %.122.i26.i, %i.and
  br i1 %i.ann, label %.lr.ph25.i28.i, label %._crit_edge.i27.i

.lr.ph25.i28.i:                                   ; preds = %.preheader.i25.i
  %i.ano = shl nuw nsw i64 %indvar.i20.i, 2
  %i.anp = getelementptr nuw i8, ptr %i.anh, i64 %i.ano ; 2 uses
  %scevgep.i29.i = getelementptr nuw i8, ptr %i.anp, i64 4
  %scevgep29.i30.i = getelementptr nuw i8, ptr %i.anp, i64 8
  %i.anq = add nsw i32 %i.and, -3
  %i.anr = trunc i64 %indvar.i20.i to i32
  %i.ans = sub i32 %i.anq, %i.anr
  %i.ant = zext i32 %i.ans to i64
  %i.anu = shl nuw nsw i64 %i.ant, 2
  %i.anv = add nuw nsw i64 %i.anu, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i29.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i30.i, i64 %i.anv, i1 false), !tbaa !48
  %.pre.i31.i = load i32, ptr %i.amb, align 4, !tbaa !45
  br label %._crit_edge.i27.i

bb.fz:                                            ; preds = %bb.fy
  %indvars.iv.next.i22.i = add nuw nsw i64 %indvars.iv.i21.i, 1 ; 2 uses
  %exitcond.not.i23.i = icmp eq i64 %indvars.iv.next.i22.i, %wide.trip.count.i19.i
  %indvar.next.i24.i = add nuw nsw i64 %indvar.i20.i, 1
  br i1 %exitcond.not.i23.i, label %Vec_IntRemove1.exit32.i, label %bb.fy, !llvm.loop !193

._crit_edge.i27.i:                                ; preds = %.lr.ph25.i28.i, %.preheader.i25.i
  %i.anw = phi i32 [ %.pre.i31.i, %.lr.ph25.i28.i ], [ %i.and, %.preheader.i25.i ]
  %i.anx = add nsw i32 %i.anw, -1                 ; 3 uses
  store i32 %i.anx, ptr %i.amb, align 4, !tbaa !45
  %.val15.pre.pre.i = load i32, ptr %i.g, align 4, !tbaa !45 ; 2 uses
  br label %Vec_IntRemove1.exit32.i

Vec_IntRemove1.exit32.i:                          ; preds = %bb.fz, %bb.fx, %._crit_edge.i27.i, %Vec_IntRemove1.exit.i
  %.val1538.i678.pr = phi i32 [ %.val15.pre51.i, %Vec_IntRemove1.exit.i ], [ %.val15.pre.pre.i, %._crit_edge.i27.i ], [ %.val15.pre51.i, %bb.fx ], [ %.val15.pre51.i, %bb.fz ] ; 4 uses
  %.val15.i674 = phi i32 [ %.val1548.i, %Vec_IntRemove1.exit.i ], [ %.val15.pre.pre.i, %._crit_edge.i27.i ], [ %.val15.pre51.i, %bb.fx ], [ %.val15.pre51.i, %bb.fz ] ; 2 uses
  %i.any = phi i32 [ %i.and, %Vec_IntRemove1.exit.i ], [ %i.anx, %._crit_edge.i27.i ], [ %i.and, %bb.fx ], [ %i.and, %bb.fz ]
  %i.anz = phi i32 [ %i.ane, %Vec_IntRemove1.exit.i ], [ %i.anx, %._crit_edge.i27.i ], [ %i.and, %bb.fx ], [ %i.and, %bb.fz ]
  %indvars.iv.next.i676 = add nuw nsw i64 %indvars.iv.i673, 1 ; 2 uses
  %i.aoa = sext i32 %.val15.i674 to i64
  %i.aob = icmp slt i64 %indvars.iv.next.i676, %i.aoa
  br i1 %i.aob, label %bb.fu, label %Fx_ManDivRemoveLits.exit, !llvm.loop !195

Fx_ManDivRemoveLits.exit:                         ; preds = %Vec_IntRemove1.exit32.i
  %i.aoc = icmp sgt i32 %.val1538.i678.pr, 0
  br i1 %i.aoc, label %.lr.ph.i681, label %Fx_ManDivRemoveLits.exit729

.lr.ph.i681:                                      ; preds = %Fx_ManDivRemoveLits.exit
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aly, i64 4 ; 5 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aly, i64 8 ; 2 uses
  %.pre.i683 = load i32, ptr %i.aod, align 4, !tbaa !45 ; 2 uses
  br label %bb.ga

bb.ga:                                            ; preds = %Vec_IntRemove1.exit32.i696, %.lr.ph.i681
  %.val15.pre52.i684 = phi i32 [ %.val1538.i678.pr, %.lr.ph.i681 ], [ %.val15.pre53.i692, %Vec_IntRemove1.exit32.i696 ] ; 2 uses
  %.val1549.i685 = phi i32 [ %.val1538.i678.pr, %.lr.ph.i681 ], [ %.val15.i693, %Vec_IntRemove1.exit32.i696 ] ; 2 uses
  %i.aof = phi i32 [ %.pre.i683, %.lr.ph.i681 ], [ %i.aqa, %Vec_IntRemove1.exit32.i696 ] ; 2 uses
  %i.aog = phi i32 [ %.pre.i683, %.lr.ph.i681 ], [ %i.aqb, %Vec_IntRemove1.exit32.i696 ] ; 7 uses
  %indvars.iv.i686 = phi i64 [ 0, %.lr.ph.i681 ], [ %indvars.iv.next.i695, %Vec_IntRemove1.exit32.i696 ] ; 3 uses
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr %.val16.i671, i64 %indvars.iv.i686
  %i.aoi = load i32, ptr %i.aoh, align 4, !tbaa !48
  %i.aoj = ashr i32 %i.aoi, 1                     ; 2 uses
  %i.aok = icmp samesign ugt i64 %indvars.iv.i686, 1
  %i.aol = select i1 %i.ama, i1 %i.aok, i1 false
  %i.aom = zext i1 %i.aol to i32
  %i.aon = xor i32 %i.aoj, %i.aom
  %i.aoo = icmp sgt i32 %i.aog, 1
  br i1 %i.aoo, label %.lr.ph.i.i714, label %Vec_IntRemove1.exit.i688

.lr.ph.i.i714:                                    ; preds = %bb.ga
  %i.aop = load ptr, ptr %i.aoe, align 8, !tbaa !47 ; 2 uses
  %wide.trip.count.i.i715 = zext nneg i32 %i.aog to i64
  br label %bb.gb

bb.gb:                                            ; preds = %bb.gc, %.lr.ph.i.i714
  %indvar.i.i716 = phi i64 [ 0, %.lr.ph.i.i714 ], [ %indvar.next.i.i720, %bb.gc ] ; 3 uses
  %indvars.iv.i.i717 = phi i64 [ 1, %.lr.ph.i.i714 ], [ %indvars.iv.next.i.i718, %bb.gc ] ; 3 uses
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %i.aop, i64 %indvars.iv.i.i717
  %i.aor = load i32, ptr %i.aoq, align 4, !tbaa !48
  %i.aos = icmp eq i32 %i.aor, %i.aon
  br i1 %i.aos, label %.preheader.i.i721, label %bb.gc

.preheader.i.i721:                                ; preds = %bb.gb
  %i.aot = trunc nuw nsw i64 %indvars.iv.i.i717 to i32
  %.122.i.i722 = add nuw nsw i32 %i.aot, 1
  %i.aou = icmp slt i32 %.122.i.i722, %i.aog
  br i1 %i.aou, label %.lr.ph25.i.i725, label %._crit_edge.i.i723

.lr.ph25.i.i725:                                  ; preds = %.preheader.i.i721
  %i.aov = shl nuw nsw i64 %indvar.i.i716, 2
  %i.aow = getelementptr nuw i8, ptr %i.aop, i64 %i.aov ; 2 uses
  %scevgep.i.i726 = getelementptr nuw i8, ptr %i.aow, i64 4
  %scevgep29.i.i727 = getelementptr nuw i8, ptr %i.aow, i64 8
  %i.aox = add nsw i32 %i.aog, -3
  %i.aoy = trunc i64 %indvar.i.i716 to i32
  %i.aoz = sub i32 %i.aox, %i.aoy
  %i.apa = zext i32 %i.aoz to i64
  %i.apb = shl nuw nsw i64 %i.apa, 2
  %i.apc = add nuw nsw i64 %i.apb, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i726, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i.i727, i64 %i.apc, i1 false), !tbaa !48
  %.pre.i.i728 = load i32, ptr %i.aod, align 4, !tbaa !45
  br label %._crit_edge.i.i723

bb.gc:                                            ; preds = %bb.gb
  %indvars.iv.next.i.i718 = add nuw nsw i64 %indvars.iv.i.i717, 1 ; 2 uses
  %exitcond.not.i.i719 = icmp eq i64 %indvars.iv.next.i.i718, %wide.trip.count.i.i715
  %indvar.next.i.i720 = add nuw nsw i64 %indvar.i.i716, 1
  br i1 %exitcond.not.i.i719, label %Vec_IntRemove1.exit.i688, label %bb.gb, !llvm.loop !193

._crit_edge.i.i723:                               ; preds = %.lr.ph25.i.i725, %.preheader.i.i721
  %i.apd = phi i32 [ %.pre.i.i728, %.lr.ph25.i.i725 ], [ %i.aog, %.preheader.i.i721 ]
  %i.ape = add nsw i32 %i.apd, -1                 ; 3 uses
  store i32 %i.ape, ptr %i.aod, align 4, !tbaa !45
  %.val.pre.i724 = load i32, ptr %i.g, align 4, !tbaa !45 ; 2 uses
  br label %Vec_IntRemove1.exit.i688

Vec_IntRemove1.exit.i688:                         ; preds = %bb.gc, %._crit_edge.i.i723, %bb.ga
  %.val15.pre51.i689 = phi i32 [ %.val.pre.i724, %._crit_edge.i.i723 ], [ %.val15.pre52.i684, %bb.ga ], [ %.val15.pre52.i684, %bb.gc ] ; 5 uses
  %.val1548.i690 = phi i32 [ %.val.pre.i724, %._crit_edge.i.i723 ], [ %.val1549.i685, %bb.ga ], [ %.val1549.i685, %bb.gc ] ; 2 uses
  %i.apf = phi i32 [ %i.ape, %._crit_edge.i.i723 ], [ %i.aof, %bb.ga ], [ %i.aof, %bb.gc ] ; 10 uses
  %i.apg = phi i32 [ %i.ape, %._crit_edge.i.i723 ], [ %i.aog, %bb.ga ], [ %i.aog, %bb.gc ]
  %i.aph = icmp eq i32 %.val1548.i690, 2
  br i1 %i.aph, label %bb.gd, label %Vec_IntRemove1.exit32.i696

bb.gd:                                            ; preds = %Vec_IntRemove1.exit.i688
  %i.api = icmp sgt i32 %i.apf, 1
  br i1 %i.api, label %.lr.ph.i18.i699, label %Vec_IntRemove1.exit32.i696

.lr.ph.i18.i699:                                  ; preds = %bb.gd
  %i.apj = load ptr, ptr %i.aoe, align 8, !tbaa !47 ; 2 uses
  %wide.trip.count.i19.i700 = zext nneg i32 %i.apf to i64
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gf, %.lr.ph.i18.i699
  %indvar.i20.i701 = phi i64 [ 0, %.lr.ph.i18.i699 ], [ %indvar.next.i24.i705, %bb.gf ] ; 3 uses
  %indvars.iv.i21.i702 = phi i64 [ 1, %.lr.ph.i18.i699 ], [ %indvars.iv.next.i22.i703, %bb.gf ] ; 3 uses
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.apj, i64 %indvars.iv.i21.i702
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !48
  %i.apm = xor i32 %i.apl, %i.aoj
  %i.apn = icmp eq i32 %i.apm, 1
  br i1 %i.apn, label %.preheader.i25.i706, label %bb.gf

.preheader.i25.i706:                              ; preds = %bb.ge
  %i.apo = trunc nuw nsw i64 %indvars.iv.i21.i702 to i32
  %.122.i26.i707 = add nuw nsw i32 %i.apo, 1
  %i.app = icmp slt i32 %.122.i26.i707, %i.apf
  br i1 %i.app, label %.lr.ph25.i28.i710, label %._crit_edge.i27.i708

.lr.ph25.i28.i710:                                ; preds = %.preheader.i25.i706
  %i.apq = shl nuw nsw i64 %indvar.i20.i701, 2
  %i.apr = getelementptr nuw i8, ptr %i.apj, i64 %i.apq ; 2 uses
  %scevgep.i29.i711 = getelementptr nuw i8, ptr %i.apr, i64 4
  %scevgep29.i30.i712 = getelementptr nuw i8, ptr %i.apr, i64 8
  %i.aps = add nsw i32 %i.apf, -3
  %i.apt = trunc i64 %indvar.i20.i701 to i32
  %i.apu = sub i32 %i.aps, %i.apt
  %i.apv = zext i32 %i.apu to i64
  %i.apw = shl nuw nsw i64 %i.apv, 2
  %i.apx = add nuw nsw i64 %i.apw, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i29.i711, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i30.i712, i64 %i.apx, i1 false), !tbaa !48
  %.pre.i31.i713 = load i32, ptr %i.aod, align 4, !tbaa !45
  br label %._crit_edge.i27.i708

bb.gf:                                            ; preds = %bb.ge
  %indvars.iv.next.i22.i703 = add nuw nsw i64 %indvars.iv.i21.i702, 1 ; 2 uses
  %exitcond.not.i23.i704 = icmp eq i64 %indvars.iv.next.i22.i703, %wide.trip.count.i19.i700
  %indvar.next.i24.i705 = add nuw nsw i64 %indvar.i20.i701, 1
  br i1 %exitcond.not.i23.i704, label %Vec_IntRemove1.exit32.i696, label %bb.ge, !llvm.loop !193

._crit_edge.i27.i708:                             ; preds = %.lr.ph25.i28.i710, %.preheader.i25.i706
  %i.apy = phi i32 [ %.pre.i31.i713, %.lr.ph25.i28.i710 ], [ %i.apf, %.preheader.i25.i706 ]
  %i.apz = add nsw i32 %i.apy, -1                 ; 3 uses
  store i32 %i.apz, ptr %i.aod, align 4, !tbaa !45
  %.val15.pre.pre.i709 = load i32, ptr %i.g, align 4, !tbaa !45 ; 2 uses
  br label %Vec_IntRemove1.exit32.i696

Vec_IntRemove1.exit32.i696:                       ; preds = %bb.gf, %bb.gd, %._crit_edge.i27.i708, %Vec_IntRemove1.exit.i688
  %.val15.pre53.i692 = phi i32 [ %.val15.pre51.i689, %Vec_IntRemove1.exit.i688 ], [ %.val15.pre.pre.i709, %._crit_edge.i27.i708 ], [ %.val15.pre51.i689, %bb.gd ], [ %.val15.pre51.i689, %bb.gf ] ; 2 uses
  %.val15.i693 = phi i32 [ %.val1548.i690, %Vec_IntRemove1.exit.i688 ], [ %.val15.pre.pre.i709, %._crit_edge.i27.i708 ], [ %.val15.pre51.i689, %bb.gd ], [ %.val15.pre51.i689, %bb.gf ] ; 2 uses
  %i.aqa = phi i32 [ %i.apf, %Vec_IntRemove1.exit.i688 ], [ %i.apz, %._crit_edge.i27.i708 ], [ %i.apf, %bb.gd ], [ %i.apf, %bb.gf ]
  %i.aqb = phi i32 [ %i.apg, %Vec_IntRemove1.exit.i688 ], [ %i.apz, %._crit_edge.i27.i708 ], [ %i.apf, %bb.gd ], [ %i.apf, %bb.gf ]
  %indvars.iv.next.i695 = add nuw nsw i64 %indvars.iv.i686, 1 ; 2 uses
  %i.aqc = sext i32 %.val15.i693 to i64
  %i.aqd = icmp slt i64 %indvars.iv.next.i695, %i.aqc
  br i1 %i.aqd, label %bb.ga, label %Fx_ManDivRemoveLits.exit729.loopexit, !llvm.loop !195

Fx_ManDivRemoveLits.exit729.loopexit:             ; preds = %Vec_IntRemove1.exit32.i696
  %i.aqe = icmp eq i32 %.val15.pre53.i692, 2
  br label %Fx_ManDivRemoveLits.exit729

Fx_ManDivRemoveLits.exit729:                      ; preds = %Fx_ManDivRemoveLits.exit729.loopexit, %bb.ft, %Fx_ManDivRemoveLits.exit
  %.val332 = phi i1 [ %i.aqe, %Fx_ManDivRemoveLits.exit729.loopexit ], [ false, %bb.ft ], [ false, %Fx_ManDivRemoveLits.exit ]
  br i1 %i.alc, label %bb.gg, label %Fx_ManDivRemoveLits.exit729._crit_edge

Fx_ManDivRemoveLits.exit729._crit_edge:           ; preds = %Fx_ManDivRemoveLits.exit729
  %.pre1095 = ptrtoint ptr %i.alu to i64
  br label %bb.hr

bb.gg:                                            ; preds = %Fx_ManDivRemoveLits.exit729
  %i.aqf = icmp ne i32 %i.alo, 0
  %or.cond = select i1 %.val332, i1 true, i1 %i.aqf
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.alu, i64 4 ; 5 uses
  %i.aqh = load i32, ptr %i.aqg, align 4, !tbaa !45 ; 13 uses
  %i.aqi = load i32, ptr %i.alu, align 8, !tbaa !46
  %i.aqj = icmp eq i32 %i.aqh, %i.aqi             ; 2 uses
  br i1 %or.cond, label %bb.gh, label %bb.gz

bb.gh:                                            ; preds = %bb.gg
  br i1 %i.aqj, label %bb.gi, label %Vec_IntPush.exit737

bb.gi:                                            ; preds = %bb.gh
  %i.aqk = icmp slt i32 %i.aqh, 16
  br i1 %i.aqk, label %bb.gj, label %bb.gm

bb.gj:                                            ; preds = %bb.gi
  %i.aql = getelementptr inbounds nuw i8, ptr %i.alu, i64 8 ; 2 uses
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i735 = icmp eq ptr %i.aqm, null
  br i1 %.not9.i.i735, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.aqn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aqm, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i736

bb.gl:                                            ; preds = %bb.gj
  %i.aqo = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i736

Vec_IntGrow.exit.i736:                            ; preds = %bb.gl, %bb.gk
  %i.aqp = phi ptr [ %i.aqn, %bb.gk ], [ %i.aqo, %bb.gl ]
  store ptr %i.aqp, ptr %i.aql, align 8, !tbaa !47
  br label %Vec_IntGrow.exit11.sink.split.i733

bb.gm:                                            ; preds = %bb.gi
  %i.aqq = icmp samesign ult i32 %i.aqh, 1073741823
  %i.aqr = shl nuw nsw i32 %i.aqh, 1
  %spec.select.i730 = select i1 %i.aqq, i32 %i.aqr, i32 2147483647 ; 3 uses
  %.not.i9.i731 = icmp samesign ult i32 %i.aqh, %spec.select.i730
  br i1 %.not.i9.i731, label %bb.gn, label %Vec_IntPush.exit737

bb.gn:                                            ; preds = %bb.gm
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.alu, i64 8 ; 2 uses
  %i.aqt = load ptr, ptr %i.aqs, align 8, !tbaa !47 ; 2 uses
  %.not9.i10.i732 = icmp eq ptr %i.aqt, null
  %i.aqu = zext nneg i32 %spec.select.i730 to i64
  %i.aqv = shl nuw nsw i64 %i.aqu, 2              ; 2 uses
  br i1 %.not9.i10.i732, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aqw = tail call ptr @realloc(ptr noundef nonnull %i.aqt, i64 noundef %i.aqv) #30
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gn
  %i.aqx = tail call noalias ptr @malloc(i64 noundef %i.aqv) #27
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.aqy = phi ptr [ %i.aqw, %bb.go ], [ %i.aqx, %bb.gp ]
  store ptr %i.aqy, ptr %i.aqs, align 8, !tbaa !47
  br label %Vec_IntGrow.exit11.sink.split.i733

Vec_IntGrow.exit11.sink.split.i733:               ; preds = %bb.gq, %Vec_IntGrow.exit.i736
  %spec.select.sink.i734 = phi i32 [ %spec.select.i730, %bb.gq ], [ 16, %Vec_IntGrow.exit.i736 ]
  store i32 %spec.select.sink.i734, ptr %i.alu, align 8, !tbaa !46
  %.pre1077 = load i32, ptr %i.aqg, align 4, !tbaa !45
  %.pre1078 = load ptr, ptr %0, align 8, !tbaa !76
  %.phi.trans.insert1079 = getelementptr i8, ptr %.pre1078, i64 8
  %.val396.pre = load ptr, ptr %.phi.trans.insert1079, align 8, !tbaa !19
  br label %Vec_IntPush.exit737

Vec_IntPush.exit737:                              ; preds = %bb.gh, %bb.gm, %Vec_IntGrow.exit11.sink.split.i733
  %.val396 = phi ptr [ %.val359, %bb.gh ], [ %.val359, %bb.gm ], [ %.val396.pre, %Vec_IntGrow.exit11.sink.split.i733 ]
  %i.aqz = phi i32 [ %i.aqh, %bb.gh ], [ %i.aqh, %bb.gm ], [ %.pre1077, %Vec_IntGrow.exit11.sink.split.i733 ] ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.alu, i64 8
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !47
  %i.arc = add nsw i32 %i.aqz, 1
  store i32 %i.arc, ptr %i.aqg, align 4, !tbaa !45
  %i.ard = sext i32 %i.aqz to i64
  %i.are = getelementptr inbounds [4 x i8], ptr %i.arb, i64 %i.ard
  store i32 %i.alg, ptr %i.are, align 4, !tbaa !48
  %i.arf = ptrtoint ptr %i.alu to i64             ; 2 uses
  %i.arg = ptrtoint ptr %.val396 to i64
  %i.arh = sub i64 %i.arf, %i.arg
  %i.ari = lshr exact i64 %i.arh, 4
  %i.arj = trunc i64 %i.ari to i32
  %i.ark = load i32, ptr %i.alh, align 4, !tbaa !45 ; 7 uses
  %i.arl = load i32, ptr %.0298, align 8, !tbaa !46
  %i.arm = icmp eq i32 %i.ark, %i.arl
  br i1 %i.arm, label %bb.gr, label %Vec_IntPush.exit737.Vec_IntPush.exit745_crit_edge

Vec_IntPush.exit737.Vec_IntPush.exit745_crit_edge: ; preds = %Vec_IntPush.exit737
  %.pre1081 = load ptr, ptr %i.ali, align 8, !tbaa !47
  br label %Vec_IntPush.exit745

bb.gr:                                            ; preds = %Vec_IntPush.exit737
  %i.arn = icmp slt i32 %i.ark, 16
  br i1 %i.arn, label %bb.gs, label %bb.gv

bb.gs:                                            ; preds = %bb.gr
  %i.aro = load ptr, ptr %i.ali, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i743 = icmp eq ptr %i.aro, null
  br i1 %.not9.i.i743, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.arp = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aro, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i741

bb.gu:                                            ; preds = %bb.gs
  %i.arq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i741

bb.gv:                                            ; preds = %bb.gr
  %i.arr = icmp samesign ult i32 %i.ark, 1073741823
  %i.ars = shl nuw nsw i32 %i.ark, 1
  %spec.select.i738 = select i1 %i.arr, i32 %i.ars, i32 2147483647 ; 4 uses
  %.not.i9.i739 = icmp samesign ult i32 %i.ark, %spec.select.i738
  %.pre1082 = load ptr, ptr %i.ali, align 8, !tbaa !47 ; 3 uses
  br i1 %.not.i9.i739, label %bb.gw, label %Vec_IntPush.exit745

bb.gw:                                            ; preds = %bb.gv
  %.not9.i10.i740 = icmp eq ptr %.pre1082, null
  %i.art = zext nneg i32 %spec.select.i738 to i64
  %i.aru = shl nuw nsw i64 %i.art, 2              ; 2 uses
  br i1 %.not9.i10.i740, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.arv = tail call ptr @realloc(ptr noundef nonnull %.pre1082, i64 noundef %i.aru) #30
  br label %Vec_IntGrow.exit11.sink.split.i741

bb.gy:                                            ; preds = %bb.gw
  %i.arw = tail call noalias ptr @malloc(i64 noundef %i.aru) #27
  br label %Vec_IntGrow.exit11.sink.split.i741

Vec_IntGrow.exit11.sink.split.i741:               ; preds = %bb.gx, %bb.gy, %bb.gt, %bb.gu
  %i.arx = phi ptr [ %i.arq, %bb.gu ], [ %i.arp, %bb.gt ], [ %i.arv, %bb.gx ], [ %i.arw, %bb.gy ] ; 2 uses
  %spec.select.sink.i742 = phi i32 [ 16, %bb.gu ], [ 16, %bb.gt ], [ %spec.select.i738, %bb.gx ], [ %spec.select.i738, %bb.gy ]
  store ptr %i.arx, ptr %i.ali, align 8, !tbaa !47
  store i32 %spec.select.sink.i742, ptr %.0298, align 8, !tbaa !46
  %.pre1083 = load i32, ptr %i.alh, align 4, !tbaa !45
  br label %Vec_IntPush.exit745

Vec_IntPush.exit745:                              ; preds = %Vec_IntPush.exit737.Vec_IntPush.exit745_crit_edge, %bb.gv, %Vec_IntGrow.exit11.sink.split.i741
  %i.ary = phi i32 [ %i.ark, %Vec_IntPush.exit737.Vec_IntPush.exit745_crit_edge ], [ %i.ark, %bb.gv ], [ %.pre1083, %Vec_IntGrow.exit11.sink.split.i741 ] ; 2 uses
  %i.arz = phi ptr [ %.pre1081, %Vec_IntPush.exit737.Vec_IntPush.exit745_crit_edge ], [ %.pre1082, %bb.gv ], [ %i.arx, %Vec_IntGrow.exit11.sink.split.i741 ]
  %i.asa = add nsw i32 %i.ary, 1
  store i32 %i.asa, ptr %i.alh, align 4, !tbaa !45
  %i.asb = sext i32 %i.ary to i64
  %i.asc = getelementptr inbounds [4 x i8], ptr %i.arz, i64 %i.asb
  store i32 %i.arj, ptr %i.asc, align 4, !tbaa !48
  br label %bb.hr

bb.gz:                                            ; preds = %bb.gg
  br i1 %i.aqj, label %bb.ha, label %Vec_IntPush.exit753

bb.ha:                                            ; preds = %bb.gz
  %i.asd = icmp slt i32 %i.aqh, 16
  br i1 %i.asd, label %bb.hb, label %bb.he

bb.hb:                                            ; preds = %bb.ha
  %i.ase = getelementptr inbounds nuw i8, ptr %i.alu, i64 8 ; 2 uses
end_hunk_0
