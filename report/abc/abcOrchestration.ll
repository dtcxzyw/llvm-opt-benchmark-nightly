Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcOrchestration?download=true
inline.NumInlined: 1145
inline.NumDeleted: 72
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Abc_ManResubEval:bb.a
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acy, i64 4 ; 3 uses
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !44 ; 7 uses
  %i.ade = load i32, ptr %i.acy, align 8, !tbaa !60
  %i.adf = icmp eq i32 %i.add, %i.ade
  br i1 %i.adf, label %bb.di, label %Vec_PtrPush.exit95.i

bb.di:                                            ; preds = %._crit_edge125.thread.i.loopexit
  %i.adg = icmp slt i32 %i.add, 16
  br i1 %i.adg, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acy, i64 8 ; 2 uses
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i93.i = icmp eq ptr %i.adi, null
  br i1 %.not9.i.i93.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.adj = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.adi, i64 noundef 128) #26
  br label %Vec_PtrGrow.exit.i94.i

bb.dl:                                            ; preds = %bb.dj
  %i.adk = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #25
  br label %Vec_PtrGrow.exit.i94.i

Vec_PtrGrow.exit.i94.i:                           ; preds = %bb.dl, %bb.dk
  %i.adl = phi ptr [ %i.adj, %bb.dk ], [ %i.adk, %bb.dl ]
  store ptr %i.adl, ptr %i.adh, align 8, !tbaa !51
  br label %Vec_PtrGrow.exit12.sink.split.i91.i

bb.dm:                                            ; preds = %bb.di
  %i.adm = icmp samesign ult i32 %i.add, 1073741823
  %i.adn = shl nuw nsw i32 %i.add, 1
  %spec.select.i88.i = select i1 %i.adm, i32 %i.adn, i32 2147483647 ; 3 uses
  %.not.i10.i89.i = icmp samesign ult i32 %i.add, %spec.select.i88.i
  br i1 %.not.i10.i89.i, label %bb.dn, label %Vec_PtrPush.exit95.i

bb.dn:                                            ; preds = %bb.dm
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acy, i64 8 ; 2 uses
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !51 ; 2 uses
  %.not9.i11.i90.i = icmp eq ptr %i.adp, null
  %i.adq = zext nneg i32 %spec.select.i88.i to i64
  %i.adr = shl nuw nsw i64 %i.adq, 3              ; 2 uses
  br i1 %.not9.i11.i90.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ads = call ptr @realloc(ptr noundef nonnull %i.adp, i64 noundef %i.adr) #26
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  %i.adt = call noalias ptr @malloc(i64 noundef %i.adr) #25
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.adu = phi ptr [ %i.ads, %bb.do ], [ %i.adt, %bb.dp ]
  store ptr %i.adu, ptr %i.ado, align 8, !tbaa !51
  br label %Vec_PtrGrow.exit12.sink.split.i91.i

Vec_PtrGrow.exit12.sink.split.i91.i:              ; preds = %bb.dq, %Vec_PtrGrow.exit.i94.i
  %spec.select.sink.i92.i = phi i32 [ %spec.select.i88.i, %bb.dq ], [ 16, %Vec_PtrGrow.exit.i94.i ]
  store i32 %spec.select.sink.i92.i, ptr %i.acy, align 8, !tbaa !60
  %.pre151.i = load i32, ptr %i.adc, align 4, !tbaa !44
  br label %Vec_PtrPush.exit95.i

Vec_PtrPush.exit95.i:                             ; preds = %Vec_PtrGrow.exit12.sink.split.i91.i, %bb.dm, %._crit_edge125.thread.i.loopexit
  %i.adv = phi i32 [ %i.add, %._crit_edge125.thread.i.loopexit ], [ %i.add, %bb.dm ], [ %.pre151.i, %Vec_PtrGrow.exit12.sink.split.i91.i ] ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !51
  %i.ady = add nsw i32 %i.adv, 1
  store i32 %i.ady, ptr %i.adc, align 4, !tbaa !44
  br label %.sink.split.i

._crit_edge125.i.thread:                          ; preds = %.preheader.i, %._crit_edge.thread176.i
  %i.adz = load ptr, ptr %i.am, align 8, !tbaa !117 ; 6 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 4 ; 3 uses
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !44 ; 7 uses
  %i.aec = load i32, ptr %i.adz, align 8, !tbaa !60
  %i.aed = icmp eq i32 %i.aeb, %i.aec
  br i1 %i.aed, label %bb.dr, label %Vec_PtrPush.exit103.i

bb.dr:                                            ; preds = %._crit_edge125.i.thread
  %i.aee = icmp slt i32 %i.aeb, 16
  br i1 %i.aee, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adz, i64 8 ; 2 uses
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i101.i = icmp eq ptr %i.aeg, null
  br i1 %.not9.i.i101.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aeh = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.aeg, i64 noundef 128) #26
  br label %Vec_PtrGrow.exit.i102.i

bb.du:                                            ; preds = %bb.ds
  %i.aei = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #25
  br label %Vec_PtrGrow.exit.i102.i

Vec_PtrGrow.exit.i102.i:                          ; preds = %bb.du, %bb.dt
  %i.aej = phi ptr [ %i.aeh, %bb.dt ], [ %i.aei, %bb.du ]
  store ptr %i.aej, ptr %i.aef, align 8, !tbaa !51
  br label %Vec_PtrGrow.exit12.sink.split.i99.i

bb.dv:                                            ; preds = %bb.dr
  %i.aek = icmp samesign ult i32 %i.aeb, 1073741823
  %i.ael = shl nuw nsw i32 %i.aeb, 1
  %spec.select.i96.i = select i1 %i.aek, i32 %i.ael, i32 2147483647 ; 3 uses
  %.not.i10.i97.i = icmp samesign ult i32 %i.aeb, %spec.select.i96.i
  br i1 %.not.i10.i97.i, label %bb.dw, label %Vec_PtrPush.exit103.i

bb.dw:                                            ; preds = %bb.dv
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adz, i64 8 ; 2 uses
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !51 ; 2 uses
  %.not9.i11.i98.i = icmp eq ptr %i.aen, null
  %i.aeo = zext nneg i32 %spec.select.i96.i to i64
  %i.aep = shl nuw nsw i64 %i.aeo, 3              ; 2 uses
  br i1 %.not9.i11.i98.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aeq = call ptr @realloc(ptr noundef nonnull %i.aen, i64 noundef %i.aep) #26
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.aer = call noalias ptr @malloc(i64 noundef %i.aep) #25
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.aes = phi ptr [ %i.aeq, %bb.dx ], [ %i.aer, %bb.dy ]
  store ptr %i.aes, ptr %i.aem, align 8, !tbaa !51
  br label %Vec_PtrGrow.exit12.sink.split.i99.i

Vec_PtrGrow.exit12.sink.split.i99.i:              ; preds = %bb.dz, %Vec_PtrGrow.exit.i102.i
  %spec.select.sink.i100.i = phi i32 [ %spec.select.i96.i, %bb.dz ], [ 16, %Vec_PtrGrow.exit.i102.i ]
  store i32 %spec.select.sink.i100.i, ptr %i.adz, align 8, !tbaa !60
  %.pre.i147 = load i32, ptr %i.aea, align 4, !tbaa !44
  br label %Vec_PtrPush.exit103.i

Vec_PtrPush.exit103.i:                            ; preds = %Vec_PtrGrow.exit12.sink.split.i99.i, %bb.dv, %._crit_edge125.i.thread
  %i.aet = phi i32 [ %i.aeb, %._crit_edge125.i.thread ], [ %i.aeb, %bb.dv ], [ %.pre.i147, %Vec_PtrGrow.exit12.sink.split.i99.i ] ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !51
  %i.aew = add nsw i32 %i.aet, 1
  store i32 %i.aew, ptr %i.aea, align 4, !tbaa !44
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %Vec_PtrPush.exit103.i, %Vec_PtrPush.exit95.i, %Vec_PtrPush.exit87.i, %Vec_PtrPush.exit79.i, %Vec_PtrPush.exit.i151
  %.sink193.i = phi i32 [ %i.aet, %Vec_PtrPush.exit103.i ], [ %i.adv, %Vec_PtrPush.exit95.i ], [ %i.acm, %Vec_PtrPush.exit87.i ], [ %i.abf, %Vec_PtrPush.exit79.i ], [ %i.zw, %Vec_PtrPush.exit.i151 ]
  %.sink191.i = phi ptr [ %i.aev, %Vec_PtrPush.exit103.i ], [ %i.adx, %Vec_PtrPush.exit95.i ], [ %i.aco, %Vec_PtrPush.exit87.i ], [ %i.abh, %Vec_PtrPush.exit79.i ], [ %i.zy, %Vec_PtrPush.exit.i151 ]
  %.sink.i = phi ptr [ %i.yj, %Vec_PtrPush.exit103.i ], [ %i.adb, %Vec_PtrPush.exit95.i ], [ %i.yj, %Vec_PtrPush.exit87.i ], [ %i.aal, %Vec_PtrPush.exit79.i ], [ %i.yj, %Vec_PtrPush.exit.i151 ]
  %i.aex = sext i32 %.sink193.i to i64
  %i.aey = getelementptr inbounds [8 x i8], ptr %.sink191.i, i64 %i.aex
  store ptr %.sink.i, ptr %i.aey, align 8, !tbaa !52
  %.pre = load i32, ptr %i.is, align 4, !tbaa !238
  br label %bb.ea

bb.ea:                                            ; preds = %.sink.split.i, %bb.ca
  %i.aez = phi i32 [ %.pre, %.sink.split.i ], [ %i.yf, %bb.ca ] ; 2 uses
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %i.afa = sext i32 %i.aez to i64
  %i.afb = icmp slt i64 %indvars.iv.next149.i, %i.afa
  br i1 %i.afb, label %bb.ca, label %Abc_ManResubDivsS.exit.loopexit, !llvm.loop !224

Abc_ManResubDivsS.exit.loopexit:                  ; preds = %bb.ea
  %.pre367 = load ptr, ptr %i.c, align 8, !tbaa !123 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre367, i64 64
  %.pre368 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !59
  %.pre369 = load ptr, ptr %i.ag, align 8, !tbaa !115
  br label %Abc_ManResubDivsS.exit

Abc_ManResubDivsS.exit:                           ; preds = %Abc_ManResubDivsS.exit.loopexit, %bb.bz
  %i.afc = phi ptr [ %.pre369, %Abc_ManResubDivsS.exit.loopexit ], [ %i.xx, %bb.bz ] ; 2 uses
  %i.afd = phi ptr [ %.pre368, %Abc_ManResubDivsS.exit.loopexit ], [ %i.yd, %bb.bz ] ; 6 uses
  %i.afe = phi ptr [ %.pre367, %Abc_ManResubDivsS.exit.loopexit ], [ %i.uo, %bb.bz ] ; 2 uses
  %i.aff = getelementptr i8, ptr %i.afc, i64 4
  %.val164.i = load i32, ptr %i.aff, align 4, !tbaa !44 ; 2 uses
  %i.afg = icmp sgt i32 %.val164.i, 0
  br i1 %i.afg, label %.lr.ph217.i, label %.critedge.preheader.i171

.lr.ph217.i:                                      ; preds = %Abc_ManResubDivsS.exit
  %i.afh = getelementptr i8, ptr %i.afc, i64 8
  %.val168.i = load ptr, ptr %i.afh, align 8, !tbaa !51 ; 3 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.afj = zext nneg i32 %.val164.i to i64        ; 4 uses
  br label %bb.eb

.critedge2.loopexit.i:                            ; preds = %bb.eh, %bb.ec, %bb.eb
  %indvars.iv.next273.i = add nuw nsw i64 %indvars.iv272.i, 1
  %exitcond298.not.i = icmp eq i64 %indvars.iv.next295.i, %i.afj
  br i1 %exitcond298.not.i, label %.critedge.preheader.i171, label %bb.eb, !llvm.loop !225

.critedge.preheader.i171:                         ; preds = %.critedge2.loopexit.i, %Abc_ManResubDivsS.exit
  %i.afk = load ptr, ptr %i.aj, align 8, !tbaa !116 ; 2 uses
  %i.afl = getelementptr i8, ptr %i.afk, i64 4
  %.val162.i = load i32, ptr %i.afl, align 4, !tbaa !44 ; 2 uses
  %i.afm = icmp sgt i32 %.val162.i, 0
  br i1 %i.afm, label %.lr.ph237.i, label %.loopexit

.lr.ph237.i:                                      ; preds = %.critedge.preheader.i171
  %i.afn = getelementptr i8, ptr %i.afk, i64 8
  %.val166.i = load ptr, ptr %i.afn, align 8, !tbaa !51 ; 3 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.afp = zext nneg i32 %.val162.i to i64        ; 3 uses
  br label %bb.em

bb.eb:                                            ; preds = %.critedge2.loopexit.i, %.lr.ph217.i
  %indvars.iv294.i = phi i64 [ 0, %.lr.ph217.i ], [ %indvars.iv.next295.i, %.critedge2.loopexit.i ] ; 2 uses
  %indvars.iv272.i = phi i64 [ 1, %.lr.ph217.i ], [ %indvars.iv.next273.i, %.critedge2.loopexit.i ] ; 3 uses
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %.val168.i, i64 %indvars.iv294.i
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !52
  %i.afs = ptrtoint ptr %i.afr to i64             ; 2 uses
  %i.aft = and i64 %i.afs, -2
  %i.afu = inttoptr i64 %i.aft to ptr             ; 3 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 64
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !59 ; 4 uses
  %indvars.iv.next295.i = add nuw nsw i64 %indvars.iv294.i, 1 ; 3 uses
  %i.afx = icmp samesign ult i64 %indvars.iv.next295.i, %i.afj
  br i1 %i.afx, label %.lr.ph212.i, label %.critedge2.loopexit.i

.lr.ph212.i:                                      ; preds = %bb.eb
  %i.afy = trunc i64 %i.afs to i32                ; 2 uses
  %i.afz = and i32 %i.afy, 1
  %.not153.i = icmp eq i32 %i.afz, 0
  %i.aga = load i32, ptr %i.lb, align 4, !tbaa !112 ; 4 uses
  %i.agb = icmp sgt i32 %i.aga, 0                 ; 4 uses
  %wide.trip.count282.i = zext nneg i32 %i.aga to i64 ; 4 uses
  br i1 %.not153.i, label %.lr.ph212.split.us.i, label %.lr.ph212.split.i

.lr.ph212.split.us.i:                             ; preds = %.lr.ph212.i, %bb.ec
  %indvars.iv289.i = phi i64 [ %indvars.iv.next290.i, %bb.ec ], [ %indvars.iv272.i, %.lr.ph212.i ] ; 2 uses
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %.val168.i, i64 %indvars.iv289.i
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !52
  %i.age = ptrtoint ptr %i.agd to i64             ; 5 uses
  %i.agf = and i64 %i.age, -2
  %i.agg = inttoptr i64 %i.agf to ptr             ; 4 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 64
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !59 ; 2 uses
  %i.agj = and i64 %i.age, 1
  %.not156.us.i = icmp eq i64 %i.agj, 0
  br i1 %.not156.us.i, label %.preheader178.us.i, label %.preheader180.us.i

bb.ec:                                            ; preds = %.loopexit179.us.i
  %indvars.iv.next290.i = add nuw nsw i64 %indvars.iv289.i, 1 ; 2 uses
  %exitcond293.not.i = icmp eq i64 %indvars.iv.next290.i, %i.afj
  br i1 %exitcond293.not.i, label %.critedge2.loopexit.i, label %.lr.ph212.split.us.i, !llvm.loop !226

bb.ed:                                            ; preds = %.lr.ph202.us.i, %bb.ee
  %indvars.iv279.i = phi i64 [ 0, %.lr.ph202.us.i ], [ %indvars.iv.next280.i, %bb.ee ] ; 6 uses
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %indvars.iv279.i
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !33
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.agi, i64 %indvars.iv279.i
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !33
  %i.ago = xor i32 %i.agn, -1
  %i.agp = or i32 %i.agl, %i.ago
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %indvars.iv279.i
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !33
  %i.ags = xor i32 %i.agp, %i.agr
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.ahk, i64 %indvars.iv279.i
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !33
  %i.agv = and i32 %i.agu, %i.ags
  %.not158.us.i = icmp eq i32 %i.agv, 0
  br i1 %.not158.us.i, label %bb.ee, label %.loopexit179.us.loopexit343.i

bb.ee:                                            ; preds = %bb.ed
  %indvars.iv.next280.i = add nuw nsw i64 %indvars.iv279.i, 1 ; 2 uses
  %exitcond283.not.i = icmp eq i64 %indvars.iv.next280.i, %wide.trip.count282.i
  br i1 %exitcond283.not.i, label %.split.us.i174, label %bb.ed, !llvm.loop !227

bb.ef:                                            ; preds = %.lr.ph207.us.i, %bb.eg
  %indvars.iv284.i = phi i64 [ 0, %.lr.ph207.us.i ], [ %indvars.iv.next285.i, %bb.eg ] ; 6 uses
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %indvars.iv284.i
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !33
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.agi, i64 %indvars.iv284.i
  %i.agz = load i32, ptr %i.agy, align 4, !tbaa !33
  %i.aha = or i32 %i.agz, %i.agx
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %indvars.iv284.i
  %i.ahc = load i32, ptr %i.ahb, align 4, !tbaa !33
  %i.ahd = xor i32 %i.aha, %i.ahc
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %indvars.iv284.i
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !33
  %i.ahg = and i32 %i.ahf, %i.ahd
  %.not157.us.i = icmp eq i32 %i.ahg, 0
  br i1 %.not157.us.i, label %bb.eg, label %.loopexit179.us.loopexit.i

bb.eg:                                            ; preds = %bb.ef
  %indvars.iv.next285.i = add nuw nsw i64 %indvars.iv284.i, 1 ; 2 uses
  %exitcond288.not.i = icmp eq i64 %indvars.iv.next285.i, %wide.trip.count282.i
  br i1 %exitcond288.not.i, label %.split.us.i174, label %bb.ef, !llvm.loop !228

.loopexit179.us.loopexit.i:                       ; preds = %bb.ef
  %i.ahh = trunc nuw nsw i64 %indvars.iv284.i to i32
  br label %.loopexit179.us.i

.loopexit179.us.loopexit343.i:                    ; preds = %bb.ed
  %i.ahi = trunc nuw nsw i64 %indvars.iv279.i to i32
  br label %.loopexit179.us.i

.loopexit179.us.i:                                ; preds = %.preheader180.us.i, %.preheader178.us.i, %.loopexit179.us.loopexit343.i, %.loopexit179.us.loopexit.i
  %.4.us.i = phi i32 [ 0, %.preheader178.us.i ], [ 0, %.preheader180.us.i ], [ %i.ahh, %.loopexit179.us.loopexit.i ], [ %i.ahi, %.loopexit179.us.loopexit343.i ]
  %i.ahj = icmp eq i32 %.4.us.i, %i.aga
  br i1 %i.ahj, label %.split.us.i174, label %bb.ec

.preheader178.us.i:                               ; preds = %.lr.ph212.split.us.i
  br i1 %i.agb, label %.lr.ph207.us.i, label %.loopexit179.us.i

.preheader180.us.i:                               ; preds = %.lr.ph212.split.us.i
  br i1 %i.agb, label %.lr.ph202.us.i, label %.loopexit179.us.i

.lr.ph202.us.i:                                   ; preds = %.preheader180.us.i
  %i.ahk = load ptr, ptr %i.afi, align 8, !tbaa !102
  br label %bb.ed

.lr.ph207.us.i:                                   ; preds = %.preheader178.us.i
  %i.ahl = load ptr, ptr %i.afi, align 8, !tbaa !102
  br label %bb.ef

bb.eh:                                            ; preds = %.loopexit183.i
  %indvars.iv.next275.i = add nuw nsw i64 %indvars.iv274.i, 1 ; 2 uses
  %exitcond278.not.i = icmp eq i64 %indvars.iv.next275.i, %i.afj
  br i1 %exitcond278.not.i, label %.critedge2.loopexit.i, label %.lr.ph212.split.i, !llvm.loop !226

.lr.ph212.split.i:                                ; preds = %.lr.ph212.i, %bb.eh
  %indvars.iv274.i = phi i64 [ %indvars.iv.next275.i, %bb.eh ], [ %indvars.iv272.i, %.lr.ph212.i ] ; 2 uses
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %.val168.i, i64 %indvars.iv274.i
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !52
  %i.aho = ptrtoint ptr %i.ahn to i64             ; 5 uses
  %i.ahp = and i64 %i.aho, -2
  %i.ahq = inttoptr i64 %i.ahp to ptr             ; 4 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 64
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !59 ; 2 uses
  %i.aht = and i64 %i.aho, 1
  %.not154.i = icmp eq i64 %i.aht, 0
  br i1 %.not154.i, label %.preheader182.i, label %.preheader184.i

.preheader184.i:                                  ; preds = %.lr.ph212.split.i
  br i1 %i.agb, label %.lr.ph.i176, label %.loopexit183.i

.lr.ph.i176:                                      ; preds = %.preheader184.i
  %i.ahu = load ptr, ptr %i.afi, align 8, !tbaa !102
  br label %bb.ei

.preheader182.i:                                  ; preds = %.lr.ph212.split.i
  br i1 %i.agb, label %.lr.ph197.i, label %.loopexit183.i

.lr.ph197.i:                                      ; preds = %.preheader182.i
  %i.ahv = load ptr, ptr %i.afi, align 8, !tbaa !102
  br label %bb.ek

bb.ei:                                            ; preds = %bb.ej, %.lr.ph.i176
  %indvars.iv.i177 = phi i64 [ 0, %.lr.ph.i176 ], [ %indvars.iv.next.i178, %bb.ej ] ; 6 uses
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %indvars.iv.i177
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !33
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %indvars.iv.i177
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !33
  %.demorgan160.i = and i32 %i.ahz, %i.ahx
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %indvars.iv.i177
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !33
  %i.aic = xor i32 %.demorgan160.i, %i.aib
  %i.aid = xor i32 %i.aic, -1
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %indvars.iv.i177
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !33
  %i.aig = and i32 %i.aif, %i.aid
  %.not161.i = icmp eq i32 %i.aig, 0
  br i1 %.not161.i, label %bb.ej, label %.loopexit183.loopexit346.i

bb.ej:                                            ; preds = %bb.ei
  %indvars.iv.next.i178 = add nuw nsw i64 %indvars.iv.i177, 1 ; 2 uses
  %exitcond.not.i179 = icmp eq i64 %indvars.iv.next.i178, %wide.trip.count282.i
  br i1 %exitcond.not.i179, label %.split.us.i174, label %bb.ei, !llvm.loop !229

bb.ek:                                            ; preds = %bb.el, %.lr.ph197.i
  %indvars.iv267.i = phi i64 [ 0, %.lr.ph197.i ], [ %indvars.iv.next268.i, %bb.el ] ; 6 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %indvars.iv267.i
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !33
  %i.aij = xor i32 %i.aii, -1
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %indvars.iv267.i
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !33
  %i.aim = or i32 %i.ail, %i.aij
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %indvars.iv267.i
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !33
  %i.aip = xor i32 %i.aim, %i.aio
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %indvars.iv267.i
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !33
  %i.ais = and i32 %i.air, %i.aip
  %.not159.i = icmp eq i32 %i.ais, 0
  br i1 %.not159.i, label %bb.el, label %.loopexit183.loopexit.i

bb.el:                                            ; preds = %bb.ek
  %indvars.iv.next268.i = add nuw nsw i64 %indvars.iv267.i, 1 ; 2 uses
  %exitcond271.not.i = icmp eq i64 %indvars.iv.next268.i, %wide.trip.count282.i
  br i1 %exitcond271.not.i, label %.split.us.i174, label %bb.ek, !llvm.loop !230

.loopexit183.loopexit.i:                          ; preds = %bb.ek
  %i.ait = trunc nuw nsw i64 %indvars.iv267.i to i32
  br label %.loopexit183.i

.loopexit183.loopexit346.i:                       ; preds = %bb.ei
  %i.aiu = trunc nuw nsw i64 %indvars.iv.i177 to i32
  br label %.loopexit183.i

.loopexit183.i:                                   ; preds = %.loopexit183.loopexit346.i, %.loopexit183.loopexit.i, %.preheader182.i, %.preheader184.i
  %.4.i = phi i32 [ 0, %.preheader184.i ], [ 0, %.preheader182.i ], [ %i.ait, %.loopexit183.loopexit.i ], [ %i.aiu, %.loopexit183.loopexit346.i ]
  %i.aiv = icmp eq i32 %.4.i, %i.aga
  br i1 %i.aiv, label %.split.us.i174, label %bb.eh

.split.us.i174:                                   ; preds = %.loopexit183.i, %.loopexit179.us.i, %bb.ej, %bb.el, %bb.ee, %bb.eg
  %.us-phi213.i = phi i64 [ %i.aho, %bb.el ], [ %i.aho, %bb.ej ], [ %i.age, %.loopexit179.us.i ], [ %i.age, %bb.ee ], [ %i.age, %bb.eg ], [ %i.aho, %.loopexit183.i ]
  %.us-phi214.i = phi ptr [ %i.ahq, %bb.el ], [ %i.ahq, %bb.ej ], [ %i.agg, %.loopexit179.us.i ], [ %i.agg, %bb.ee ], [ %i.agg, %bb.eg ], [ %i.ahq, %.loopexit183.i ] ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.aix = load i32, ptr %i.aiw, align 8, !tbaa !133
  %i.aiy = add nsw i32 %i.aix, 1
  store i32 %i.aiy, ptr %i.aiw, align 8, !tbaa !133
  %calloc.i.i.i175 = call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 6 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %calloc.i.i.i175, i64 4
  store i32 2, ptr %i.aiz, align 4, !tbaa !128
  %i.aja = getelementptr inbounds nuw i8, ptr %calloc.i.i.i175, i64 8
  %i.ajb = getelementptr inbounds nuw i8, ptr %calloc.i.i.i175, i64 12
  store i32 54, ptr %i.ajb, align 4, !tbaa !130
  %i.ajc = call noalias dereferenceable_or_null(1296) ptr @malloc(i64 noundef 1296) #25 ; 8 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %calloc.i.i.i175, i64 16
  store ptr %i.ajc, ptr %i.ajd, align 8, !tbaa !85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ajc, i8 0, i64 48, i1 false)
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajc, i64 8
  store ptr %i.afu, ptr %i.aje, align 8, !tbaa !59
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajc, i64 32
  store ptr %.us-phi214.i, ptr %i.ajf, align 8, !tbaa !59
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.afu, i64 20
  %i.ajh = load i32, ptr %i.ajg, align 4
  %i.aji = lshr i32 %i.ajh, 7
  %i.ajj = xor i32 %i.aji, %i.afy
  %i.ajk = and i32 %i.ajj, 1                      ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.us-phi214.i, i64 20
  %i.ajm = load i32, ptr %i.ajl, align 4
  %i.ajn = lshr i32 %i.ajm, 7
  %i.ajo = trunc i64 %.us-phi213.i to i32
  %i.ajp = xor i32 %i.ajn, %i.ajo
  %i.ajq = and i32 %i.ajp, 1                      ; 2 uses
  store i32 3, ptr %i.aja, align 8, !tbaa !129
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajc, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ajr, i8 0, i64 16, i1 false)
  %i.ajs = shl nuw nsw i32 %i.ajk, 15
  %i.ajt = shl nuw nsw i32 %i.ajq, 16
  %i.aju = or disjoint i32 %i.ajt, %i.ajs
  %i.ajv = or disjoint i32 %i.aju, 16384
  %i.ajw = xor i32 %i.ajk, 1
  %i.ajx = xor i32 %i.ajq, 3
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajc, i64 48
  store i32 %i.ajw, ptr %i.ajy, align 8
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajc, i64 52
  store i32 %i.ajx, ptr %i.ajz, align 4
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajc, i64 64
  store i32 %i.ajv, ptr %i.aka, align 8
  %i.akb = getelementptr inbounds nuw i8, ptr %calloc.i.i.i175, i64 24
  %i.akc = getelementptr inbounds nuw i8, ptr %i.afe, i64 20
  %i.akd = load i32, ptr %i.akc, align 4
  %i.ake = and i32 %i.akd, 128
  %.not22.i.i = icmp eq i32 %i.ake, 0
  %spec.store.select.i = select i1 %.not22.i.i, i32 5, i32 4
  store i32 %spec.store.select.i, ptr %i.akb, align 8
  br label %Abc_ManResubDivs1.exit

.critedge.loopexit.i:                             ; preds = %bb.ep, %.thread172.i.preheader, %bb.em
  %indvars.iv.next316.i = add nuw nsw i64 %indvars.iv315.i, 1
  %exitcond326.not.i = icmp eq i64 %indvars.iv.next323.i, %i.afp
  br i1 %exitcond326.not.i, label %.loopexit, label %bb.em, !llvm.loop !231

bb.em:                                            ; preds = %.critedge.loopexit.i, %.lr.ph237.i
  %indvars.iv322.i = phi i64 [ 0, %.lr.ph237.i ], [ %indvars.iv.next323.i, %.critedge.loopexit.i ] ; 2 uses
  %indvars.iv315.i = phi i64 [ 1, %.lr.ph237.i ], [ %indvars.iv.next316.i, %.critedge.loopexit.i ] ; 3 uses
  %i.akf = getelementptr inbounds nuw [8 x i8], ptr %.val166.i, i64 %indvars.iv322.i
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !52
  %i.akh = ptrtoint ptr %i.akg to i64             ; 2 uses
  %i.aki = and i64 %i.akh, -2
  %i.akj = inttoptr i64 %i.aki to ptr             ; 3 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 64
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !59 ; 2 uses
  %indvars.iv.next323.i = add nuw nsw i64 %indvars.iv322.i, 1 ; 3 uses
  %i.akm = icmp samesign ult i64 %indvars.iv.next323.i, %i.afp
  br i1 %i.akm, label %.lr.ph235.i, label %.critedge.loopexit.i

.lr.ph235.i:                                      ; preds = %bb.em
  %i.akn = load i32, ptr %i.lb, align 4, !tbaa !112
  %.fr297 = freeze i32 %i.akn                     ; 4 uses
  %i.ako = icmp sgt i32 %.fr297, 0
  %wide.trip.count308.i = zext nneg i32 %.fr297 to i64 ; 2 uses
  br i1 %i.ako, label %.thread172.i.us.preheader, label %.thread172.i.preheader

.thread172.i.us.preheader:                        ; preds = %.lr.ph235.i
  %i.akp = load ptr, ptr %i.afo, align 8, !tbaa !102 ; 2 uses
  br label %.thread172.i.us

.thread172.i.preheader:                           ; preds = %.lr.ph235.i
  %i.akq = icmp eq i32 %.fr297, 0
  br i1 %i.akq, label %.loopexit.thread.i.loopexit208.split, label %.critedge.loopexit.i

.thread172.i.us:                                  ; preds = %.thread172.i.us.preheader, %bb.ep
  %indvars.iv317.i.us = phi i64 [ %indvars.iv.next318.i, %bb.ep ], [ %indvars.iv315.i, %.thread172.i.us.preheader ] ; 2 uses
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %.val166.i, i64 %indvars.iv317.i.us
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !52
  %i.akt = ptrtoint ptr %i.aks to i64             ; 2 uses
  %i.aku = and i64 %i.akt, -2
  %i.akv = inttoptr i64 %i.aku to ptr             ; 4 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 64
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !59 ; 2 uses
  %i.aky = trunc i64 %i.akt to i32                ; 4 uses
  %i.akz = and i32 %i.aky, 1
  %.not150.i.us = icmp eq i32 %i.akz, 0
  br i1 %.not150.i.us, label %.lr.ph230.i.us, label %.preheader174.i.us

.preheader174.i.us:                               ; preds = %.thread172.i.us, %bb.en
  %indvars.iv305.i.us = phi i64 [ %indvars.iv.next306.i.us, %bb.en ], [ 0, %.thread172.i.us ] ; 6 uses
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %i.akl, i64 %indvars.iv305.i.us
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !33
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.akx, i64 %indvars.iv305.i.us
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !33
  %i.ale = xor i32 %i.ald, -1
  %i.alf = and i32 %i.alb, %i.ale
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %indvars.iv305.i.us
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !33
  %i.ali = xor i32 %i.alf, %i.alh
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %indvars.iv305.i.us
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !33
  %i.all = and i32 %i.alk, %i.ali
  %.not152.i.us = icmp eq i32 %i.all, 0
  br i1 %.not152.i.us, label %bb.en, label %.loopexit.i.us

bb.en:                                            ; preds = %.preheader174.i.us
  %indvars.iv.next306.i.us = add nuw nsw i64 %indvars.iv305.i.us, 1 ; 2 uses
  %exitcond309.not.i.us = icmp eq i64 %indvars.iv.next306.i.us, %wide.trip.count308.i
  br i1 %exitcond309.not.i.us, label %.loopexit.thread.i, label %.preheader174.i.us, !llvm.loop !232

.lr.ph230.i.us:                                   ; preds = %.thread172.i.us, %bb.eo
  %indvars.iv310.i.us = phi i64 [ %indvars.iv.next311.i.us, %bb.eo ], [ 0, %.thread172.i.us ] ; 6 uses
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.akl, i64 %indvars.iv310.i.us
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !33
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.akx, i64 %indvars.iv310.i.us
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !33
  %i.alq = and i32 %i.alp, %i.aln
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %indvars.iv310.i.us
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !33
  %i.alt = xor i32 %i.alq, %i.als
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.akp, i64 %indvars.iv310.i.us
  %i.alv = load i32, ptr %i.alu, align 4, !tbaa !33
  %i.alw = and i32 %i.alv, %i.alt
  %.not151.i.us = icmp eq i32 %i.alw, 0
  br i1 %.not151.i.us, label %bb.eo, label %.loopexit.i.us

bb.eo:                                            ; preds = %.lr.ph230.i.us
  %indvars.iv.next311.i.us = add nuw nsw i64 %indvars.iv310.i.us, 1 ; 2 uses
  %exitcond314.not.i.us = icmp eq i64 %indvars.iv.next311.i.us, %wide.trip.count308.i
  br i1 %exitcond314.not.i.us, label %.loopexit.thread.i, label %.lr.ph230.i.us, !llvm.loop !233

.loopexit.i.us:                                   ; preds = %.preheader174.i.us, %.lr.ph230.i.us
  %.9.i.us.in = phi i64 [ %indvars.iv310.i.us, %.lr.ph230.i.us ], [ %indvars.iv305.i.us, %.preheader174.i.us ]
  %.9.i.us = trunc i64 %.9.i.us.in to i32
  %i.alx = icmp eq i32 %.fr297, %.9.i.us
  br i1 %i.alx, label %.loopexit.thread.i, label %bb.ep

bb.ep:                                            ; preds = %.loopexit.i.us
  %indvars.iv.next318.i = add nuw nsw i64 %indvars.iv317.i.us, 1 ; 2 uses
  %exitcond321.not.i = icmp eq i64 %indvars.iv.next318.i, %i.afp
  br i1 %exitcond321.not.i, label %.critedge.loopexit.i, label %.thread172.i.us, !llvm.loop !234

.loopexit.thread.i.loopexit208.split:             ; preds = %.thread172.i.preheader
  %i.aly = getelementptr inbounds nuw [8 x i8], ptr %.val166.i, i64 %indvars.iv315.i
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !52
  %i.ama = ptrtoint ptr %i.alz to i64             ; 2 uses
  %i.amb = trunc i64 %i.ama to i32
  %i.amc = and i64 %i.ama, -2
  %i.amd = inttoptr i64 %i.amc to ptr
  br label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.loopexit.i.us, %bb.en, %bb.eo, %.loopexit.thread.i.loopexit208.split
  %i.ame = phi ptr [ %i.akv, %bb.en ], [ %i.akv, %bb.eo ], [ %i.amd, %.loopexit.thread.i.loopexit208.split ], [ %i.akv, %.loopexit.i.us ] ; 2 uses
  %i.amf = phi i32 [ %i.aky, %bb.en ], [ %i.aky, %bb.eo ], [ %i.amb, %.loopexit.thread.i.loopexit208.split ], [ %i.aky, %.loopexit.i.us ]
  %i.amg = trunc i64 %i.akh to i32
  %i.amh = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !134
  %i.amj = add nsw i32 %i.ami, 1
  store i32 %i.amj, ptr %i.amh, align 4, !tbaa !134
  %calloc.i.i169.i = call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 6 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %calloc.i.i169.i, i64 4
  store i32 2, ptr %i.amk, align 4, !tbaa !128
  %i.aml = getelementptr inbounds nuw i8, ptr %calloc.i.i169.i, i64 8
  %i.amm = getelementptr inbounds nuw i8, ptr %calloc.i.i169.i, i64 12
  store i32 54, ptr %i.amm, align 4, !tbaa !130
  %i.amn = call noalias dereferenceable_or_null(1296) ptr @malloc(i64 noundef 1296) #25 ; 8 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %calloc.i.i169.i, i64 16
  store ptr %i.amn, ptr %i.amo, align 8, !tbaa !85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.amn, i8 0, i64 48, i1 false)
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  store ptr %i.akj, ptr %i.amp, align 8, !tbaa !59
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amn, i64 32
  store ptr %i.ame, ptr %i.amq, align 8, !tbaa !59
  %i.amr = getelementptr inbounds nuw i8, ptr %i.akj, i64 20
  %i.ams = load i32, ptr %i.amr, align 4
  %i.amt = lshr i32 %i.ams, 7
  %i.amu = xor i32 %i.amt, %i.amg
  %i.amv = and i32 %i.amu, 1                      ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.ame, i64 20
  %i.amx = load i32, ptr %i.amw, align 4
  %i.amy = lshr i32 %i.amx, 7
  %i.amz = xor i32 %i.amy, %i.amf
  %i.ana = and i32 %i.amz, 1                      ; 2 uses
  %i.anb = or disjoint i32 %i.ana, 2
  store i32 3, ptr %i.aml, align 8, !tbaa !129
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amn, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.anc, i8 0, i64 16, i1 false)
  %i.and = shl nuw nsw i32 %i.amv, 15
  %i.ane = shl nuw nsw i32 %i.ana, 16
  %i.anf = or disjoint i32 %i.ane, %i.and
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amn, i64 48
  store i32 %i.amv, ptr %i.ang, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amn, i64 52
  store i32 %i.anb, ptr %i.anh, align 4
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amn, i64 64
  store i32 %i.anf, ptr %i.ani, align 8
  %i.anj = getelementptr inbounds nuw i8, ptr %calloc.i.i169.i, i64 24
  %i.ank = getelementptr inbounds nuw i8, ptr %i.afe, i64 20
  %i.anl = load i32, ptr %i.ank, align 4
  %i.anm = and i32 %i.anl, 128
  %.not22.i170.i = icmp eq i32 %i.anm, 0
  %spec.store.select173.i = select i1 %.not22.i170.i, i32 4, i32 5
  store i32 %spec.store.select173.i, ptr %i.anj, align 8
  br label %Abc_ManResubDivs1.exit

Abc_ManResubDivs1.exit:                           ; preds = %.loopexit.thread.i, %.split.us.i174
  %.0145.i = phi ptr [ %calloc.i.i.i175, %.split.us.i174 ], [ %calloc.i.i169.i, %.loopexit.thread.i ]
  %i.ann = call fastcc i64 @Abc_Clock()
  %i.ano = add i64 %i.ann, %.0.i124.neg296
  %i.anp = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.anq = load i64, ptr %i.anp, align 8, !tbaa !131
  %i.anr = add nsw i64 %i.ano, %i.anq
  store i64 %i.anr, ptr %i.anp, align 8, !tbaa !131
  %i.ans = load i32, ptr %i.o, align 8, !tbaa !236
  %i.ant = add nsw i32 %i.ans, -1
  store i32 %i.ant, ptr %i.f, align 4, !tbaa !105
  br label %Abc_ManResubCollectDivs.exit

.loopexit:                                        ; preds = %.critedge.loopexit.i, %.critedge.preheader.i171
  %i.anu = call fastcc i64 @Abc_Clock()
  %i.anv = add i64 %i.anu, %.0.i124.neg296
  %i.anw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.anx = load i64, ptr %i.anw, align 8, !tbaa !131
  %i.any = add nsw i64 %i.anv, %i.anx
  store i64 %i.any, ptr %i.anw, align 8, !tbaa !131
  %i.anz = icmp eq i32 %3, 1
  br i1 %i.anz, label %Abc_ManResubCollectDivs.exit, label %bb.eq

bb.eq:                                            ; preds = %.loopexit
  %i.aoa = load i32, ptr %i.o, align 8, !tbaa !236
  %i.aob = icmp eq i32 %i.aoa, 2
  br i1 %i.aob, label %Abc_ManResubCollectDivs.exit, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aoc = call fastcc i64 @Abc_Clock()
  %i.aod = call fastcc ptr @Abc_ManResubDivs12(ptr noundef nonnull %0) ; 2 uses
  %.not105 = icmp eq ptr %i.aod, null
  %i.aoe = call fastcc i64 @Abc_Clock()
  %i.aof = sub i64 %i.aoe, %i.aoc
  %i.aog = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.aoh = load i64, ptr %i.aog, align 8, !tbaa !135
  %i.aoi = add nsw i64 %i.aof, %i.aoh
  store i64 %i.aoi, ptr %i.aog, align 8, !tbaa !135
  br i1 %.not105, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aoj = load i32, ptr %i.o, align 8, !tbaa !236
  %i.aok = add nsw i32 %i.aoj, -2
  store i32 %i.aok, ptr %i.f, align 4, !tbaa !105
  br label %Abc_ManResubCollectDivs.exit

bb.et:                                            ; preds = %bb.er
  %i.aol = call fastcc i64 @Abc_Clock()
  call fastcc void @Abc_ManResubDivsD(ptr noundef nonnull %0, i32 noundef %i.b)
  %i.aom = call fastcc i64 @Abc_Clock()
  %i.aon = sub i64 %i.aom, %i.aol
  %i.aoo = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aop = load i64, ptr %i.aoo, align 8, !tbaa !136
  %i.aoq = add nsw i64 %i.aon, %i.aop
  store i64 %i.aoq, ptr %i.aoo, align 8, !tbaa !136
  %i.aor = call fastcc i64 @Abc_Clock()
  %i.aos = call fastcc ptr @Abc_ManResubDivs2(ptr noundef nonnull %0) ; 2 uses
  %.not106 = icmp eq ptr %i.aos, null
  %i.aot = call fastcc i64 @Abc_Clock()
  %i.aou = sub i64 %i.aot, %i.aor
  %i.aov = load i64, ptr %i.aog, align 8, !tbaa !135
  %i.aow = add nsw i64 %i.aou, %i.aov
  store i64 %i.aow, ptr %i.aog, align 8, !tbaa !135
  br i1 %.not106, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aox = load i32, ptr %i.o, align 8, !tbaa !236
  %i.aoy = add nsw i32 %i.aox, -2
  store i32 %i.aoy, ptr %i.f, align 4, !tbaa !105
  br label %Abc_ManResubCollectDivs.exit

bb.ev:                                            ; preds = %bb.et
  %i.aoz = icmp eq i32 %3, 2
  br i1 %i.aoz, label %Abc_ManResubCollectDivs.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.apa = load i32, ptr %i.o, align 8, !tbaa !236
  %i.apb = icmp eq i32 %i.apa, 3
  br i1 %i.apb, label %Abc_ManResubCollectDivs.exit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.apc = call fastcc i64 @Abc_Clock()
  %i.apd = call fastcc ptr @Abc_ManResubDivs3(ptr noundef nonnull %0) ; 2 uses
  %.not107 = icmp eq ptr %i.apd, null
  %i.ape = call fastcc i64 @Abc_Clock()
  %i.apf = sub i64 %i.ape, %i.apc
  %i.apg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !239
  %i.api = add nsw i64 %i.apf, %i.aph
  store i64 %i.api, ptr %i.apg, align 8, !tbaa !239
  br i1 %.not107, label %Abc_ManResubCollectDivs.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.apj = load i32, ptr %i.o, align 8, !tbaa !236
  %i.apk = add nsw i32 %i.apj, -3
  store i32 %i.apk, ptr %i.f, align 4, !tbaa !105
  br label %Abc_ManResubCollectDivs.exit

Abc_ManResubCollectDivs.exit:                     ; preds = %bb.ex, %.critedge4.i, %bb.ev, %bb.ew, %.loopexit, %bb.eq, %bb.ey, %bb.eu, %bb.es, %Abc_ManResubDivs1.exit, %Abc_Clock.exit143, %Abc_Clock.exit141, %bb.br
  %.0 = phi ptr [ %calloc.i16.i, %bb.br ], [ %calloc.i.i.i, %Abc_Clock.exit141 ], [ null, %Abc_Clock.exit143 ], [ %.0145.i, %Abc_ManResubDivs1.exit ], [ null, %bb.ew ], [ %i.aod, %bb.es ], [ %i.aos, %bb.eu ], [ null, %.loopexit ], [ %i.apd, %bb.ey ], [ null, %bb.ev ], [ null, %.critedge4.i ], [ null, %bb.eq ], [ null, %bb.ex ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Abc_ManResubPrint(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !127
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.b) ; 0 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.50)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i64, ptr %i.d, align 8, !tbaa !101
  %i.f = sitofp i64 %i.e to double
  %i.g = fdiv double %i.f, 1.000000e+06
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, double noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.i = load i32, ptr %i.h, align 4, !tbaa !132
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.i) ; 0 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.52)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = load i64, ptr %i.k, align 8, !tbaa !104
  %i.m = sitofp i64 %i.l to double
  %i.n = fdiv double %i.m, 1.000000e+06
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, double noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.p = load i32, ptr %i.o, align 8, !tbaa !133
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %i.p) ; 0 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.54)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load i64, ptr %i.r, align 8, !tbaa !125
  %i.t = sitofp i64 %i.s to double
  %i.u = fdiv double %i.t, 1.000000e+06
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, double noundef %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.w = load i32, ptr %i.v, align 4, !tbaa !134
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, i32 noundef %i.w) ; 0 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.56)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load i64, ptr %i.y, align 8, !tbaa !124
end_hunk_0
