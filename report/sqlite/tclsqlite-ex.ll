Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
  br label %bb.he

bb.he:                                            ; preds = %._crit_edge251.i, %bb.hb
  %i.aee = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.aee, ptr noundef nonnull @.str.101, i32 noundef 8) #20
  br label %bb.hg

bb.hf:                                            ; preds = %bb.gu
  %i.aef = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.aef, ptr noundef nonnull @.str.102, i32 noundef 5) #20
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.aeg = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.aeh = icmp sgt i32 %i.aeg, 0
  br i1 %i.aeh, label %.lr.ph254.preheader.i, label %._crit_edge255.i

.lr.ph254.preheader.i:                            ; preds = %bb.hg
  %.pre294.i.a = load ptr, ptr %i.dq, align 8, !tbaa !47
  call fastcc void @qrfRenderValue(ptr noundef nonnull %4, ptr noundef %.pre294.i.a, i32 noundef 0)
  %i.aei = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.aej = icmp sgt i32 %i.aei, 1
  br i1 %i.aej, label %.lr.ph254.peel.next.i, label %._crit_edge255.i

.lr.ph254.peel.next.i:                            ; preds = %.lr.ph254.preheader.i, %.lr.ph254.peel.next.i
  %.3252.i = phi i32 [ %i.aem, %.lr.ph254.peel.next.i ], [ 1, %.lr.ph254.preheader.i ] ; 2 uses
  %i.aek = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.aek, ptr noundef nonnull @.str.13, i32 noundef 1) #20
  %i.ael = load ptr, ptr %i.dq, align 8, !tbaa !47
  call fastcc void @qrfRenderValue(ptr noundef nonnull %4, ptr noundef %i.ael, i32 noundef %.3252.i)
  %i.aem = add nuw nsw i32 %.3252.i, 1            ; 2 uses
  %i.aen = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.aeo = icmp slt i32 %i.aem, %i.aen
  br i1 %i.aeo, label %.lr.ph254.peel.next.i, label %._crit_edge255.i, !llvm.loop !256

._crit_edge255.i:                                 ; preds = %.lr.ph254.peel.next.i, %.lr.ph254.preheader.i, %bb.hg
  %i.aep = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.aeq = call i32 @sqlite3_str_length(ptr noundef %i.aep) #20
  %i.aer = load i32, ptr %i.dl, align 8, !tbaa !29
  %reass.sub = sub i32 %i.aeq, %i.acf
  %i.aes = add i32 %reass.sub, 2
  %i.aet = add i32 %i.aes, %i.aer                 ; 2 uses
  store i32 %i.aet, ptr %i.dl, align 8, !tbaa !29
  %.not204.i = icmp ult i32 %i.aet, %i.acd
  %i.aeu = load ptr, ptr %i.dq, align 8, !tbaa !47 ; 2 uses
  br i1 %.not204.i, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %._crit_edge255.i
  call void @sqlite3_str_append(ptr noundef %i.aeu, ptr noundef nonnull @.str.103, i32 noundef 3) #20
  store i32 0, ptr %i.dl, align 8, !tbaa !29
  br label %bb.hj

bb.hi:                                            ; preds = %._crit_edge255.i
  call void @sqlite3_str_append(ptr noundef %i.aeu, ptr noundef nonnull @.str.61, i32 noundef 1) #20
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.aev = load ptr, ptr %i.dw, align 8, !tbaa !85
  %.not.i223.i = icmp eq ptr %i.aev, null
  br i1 %.not.i223.i, label %qrfOneSimpleRow.exit, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.aew = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.aex = call i32 @sqlite3_str_length(ptr noundef %i.aew) #20 ; 3 uses
  %i.aey = icmp sgt i32 %i.aex, 0
  br i1 %i.aey, label %bb.hl, label %qrfOneSimpleRow.exit

bb.hl:                                            ; preds = %bb.hk
  %i.aez = load ptr, ptr %i.dw, align 8, !tbaa !85
  %i.afa = load ptr, ptr %i.dx, align 8, !tbaa !86
  %i.afb = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.afc = call ptr @sqlite3_str_value(ptr noundef %i.afb) #20
  %i.afd = zext nneg i32 %i.aex to i64
  %i.afe = call i32 %i.aez(ptr noundef %i.afa, ptr noundef %i.afc, i64 noundef %i.afd) #20, !inline_history !253 ; 2 uses
  %i.aff = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_reset(ptr noundef %i.aff) #20
  %.not11.i224.i = icmp eq i32 %i.afe, 0
  br i1 %.not11.i224.i, label %qrfOneSimpleRow.exit, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.afe, ptr noundef nonnull @.str.69, i32 noundef %i.aex)
  br label %qrfOneSimpleRow.exit

bb.hn:                                            ; preds = %bb.gf
  %i.afg = load ptr, ptr %i.dm, align 8, !tbaa !29
  %i.afh = icmp eq ptr %i.afg, null
  br i1 %i.afh, label %bb.ho, label %.loopexit.i16

bb.ho:                                            ; preds = %bb.hn
  %i.afi = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.afj = sext i32 %i.afi to i64
  %i.afk = shl nsw i64 %i.afj, 3
  %i.afl = call ptr @sqlite3_malloc64(i64 noundef %i.afk) #20 ; 2 uses
  store ptr %i.afl, ptr %i.dm, align 8, !tbaa !29
  %i.afm = icmp eq ptr %i.afl, null
  br i1 %i.afm, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef 7, ptr noundef nonnull @.str.15)
  br label %qrfOneSimpleRow.exit

bb.hq:                                            ; preds = %bb.ho
  store i32 0, ptr %i.dl, align 8, !tbaa !29
  %i.afn = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.afo = icmp sgt i32 %i.afn, 0
  br i1 %i.afo, label %.lr.ph.i23, label %.loopexit.i16

.lr.ph.i23:                                       ; preds = %bb.hq, %bb.hu
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.hu ], [ 0, %bb.hq ] ; 5 uses
  %i.afp = load ptr, ptr %4, align 8, !tbaa !46
  %i.afq = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.afr = call ptr @sqlite3_column_name(ptr noundef %i.afp, i32 noundef %i.afq) #20 ; 2 uses
  %i.afs = icmp eq ptr %i.afr, null
  %spec.store.select.i = select i1 %i.afs, ptr @.str.104, ptr %i.afr
  %i.aft = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.85, ptr noundef nonnull %spec.store.select.i) #20
  %i.afu = load ptr, ptr %i.dm, align 8, !tbaa !29
  %i.afv = getelementptr inbounds nuw [8 x i8], ptr %i.afu, i64 %indvars.iv.i
  store ptr %i.aft, ptr %i.afv, align 8, !tbaa !66
  %i.afw = load i16, ptr %i.do, align 4, !tbaa !275 ; 2 uses
  %i.afx = icmp sgt i16 %i.afw, 0
  br i1 %i.afx, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %.lr.ph.i23
  %i.afy = zext nneg i16 %i.afw to i32
  %i.afz = load ptr, ptr %i.dm, align 8, !tbaa !29
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.afz, i64 %indvars.iv.i
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !66
  %i.agc = call fastcc i32 @qrfTitleLimit(ptr noundef %i.agb, i32 noundef %i.afy) ; 0 uses
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %.lr.ph.i23
  %i.agd = load ptr, ptr %i.dm, align 8, !tbaa !29
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.agd, i64 %indvars.iv.i
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !66
  %i.agg = call i64 @sqlite3_qrf_wcswidth(ptr noundef %i.agf)
  %i.agh = trunc i64 %i.agg to i32                ; 2 uses
  %i.agi = load i32, ptr %i.dl, align 8, !tbaa !29
  %i.agj = icmp slt i32 %i.agi, %i.agh
  br i1 %i.agj, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  store i32 %i.agh, ptr %i.dl, align 8, !tbaa !29
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.agk = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.agl = sext i32 %i.agk to i64
  %i.agm = icmp slt i64 %indvars.iv.next.i, %i.agl
  br i1 %i.agm, label %.lr.ph.i23, label %.loopexit.i16, !llvm.loop !257

.loopexit.i16:                                    ; preds = %bb.hu, %bb.hq, %bb.hn
  %i.agn = load i64, ptr %i.dp, align 8, !tbaa !50
  %.not.i17 = icmp eq i64 %i.agn, 0
  br i1 %.not.i17, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %.loopexit.i16
  %i.ago = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.ago, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %.loopexit.i16
  %i.agp = load ptr, ptr %i.dr, align 8, !tbaa !265
  %i.agq = call ptr @sqlite3_str_new(ptr noundef %i.agp) #20 ; 6 uses
  %i.agr = load ptr, ptr %i.ds, align 8, !tbaa !57
  %i.ags = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.agr) #21
  %i.agt = trunc i64 %i.ags to i32                ; 3 uses
  %i.agu = load i32, ptr %i.dt, align 4, !tbaa !266
  %i.agv = load i32, ptr %i.dl, align 8, !tbaa !29
  %i.agw = add i32 %i.agv, %i.agt
  %i.agx = sub i32 %i.agu, %i.agw                 ; 2 uses
  %i.agy = load i8, ptr %i.du, align 1, !tbaa !274
  %i.agz = icmp eq i8 %i.agy, 2
  %i.aha = zext i1 %i.agz to i32                  ; 2 uses
  %i.ahb = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.ahc = icmp sgt i32 %i.ahb, 0
  br i1 %i.ahc, label %.lr.ph248.i, label %._crit_edge.i18

.lr.ph248.i:                                      ; preds = %bb.hw, %.loopexit274.i
  %indvars.iv275.i = phi i64 [ %indvars.iv.next276.i, %.loopexit274.i ], [ 0, %bb.hw ] ; 3 uses
  %i.ahd = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.ahe = load i32, ptr %i.dl, align 8, !tbaa !29
  %i.ahf = sub nsw i32 0, %i.ahe
  %i.ahg = load ptr, ptr %i.dm, align 8, !tbaa !29
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %indvars.iv275.i
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !66
  call fastcc void @qrfWidthPrint(ptr noundef %i.ahd, i32 noundef %i.ahf, ptr noundef %i.ahi)
  %i.ahj = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.ahk = load ptr, ptr %i.ds, align 8, !tbaa !57
  call void @sqlite3_str_append(ptr noundef %i.ahj, ptr noundef %i.ahk, i32 noundef %i.agt) #20
  %i.ahl = trunc nuw nsw i64 %indvars.iv275.i to i32
  call fastcc void @qrfRenderValue(ptr noundef nonnull %4, ptr noundef %i.agq, i32 noundef %i.ahl)
  %i.ahm = call ptr @sqlite3_str_value(ptr noundef %i.agq) #20 ; 2 uses
  %i.ahn = icmp eq ptr %i.ahm, null
  %spec.store.select1.i = select i1 %i.ahn, ptr @.str.6, ptr %i.ahm ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call fastcc void @qrfWrapLine(ptr noundef nonnull %spec.store.select1.i, i32 noundef %i.agx, i32 noundef %i.aha, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %.pre.i21 = load i32, ptr %i.dv, align 8, !tbaa !268
  %.not199.peel.i = icmp sgt i32 %.pre.i21, 0     ; 3 uses
  %.pre286.i.a = load i32, ptr %i.a, align 4
  %.pre287.i = load i32, ptr %i.c, align 4
  %narrow.i22 = select i1 %.not199.peel.i, i32 %.pre287.i, i32 3
  %i.aho = sext i32 %narrow.i22 to i64
  %i.ahp = select i1 %.not199.peel.i, i32 %.pre286.i.a, i32 3
  %.1.peel.i = select i1 %.not199.peel.i, ptr %spec.store.select1.i, ptr @.str.29 ; 2 uses
  %i.ahq = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.ahq, ptr noundef nonnull %.1.peel.i, i32 noundef %i.ahp) #20
  %i.ahr = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.ahr, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  %i.ahs = getelementptr inbounds i8, ptr %.1.peel.i, i64 %i.aho ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.aht = load i8, ptr %i.ahs, align 1, !tbaa !29
  %.not200.peel.i = icmp eq i8 %i.aht, 0
  br i1 %.not200.peel.i, label %.loopexit274.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %.lr.ph248.i, %.peel.next.i
  %.0192.i = phi ptr [ %i.aid, %.peel.next.i ], [ %i.ahs, %.lr.ph248.i ] ; 2 uses
  %.0.i = phi i32 [ %i.ahx, %.peel.next.i ], [ 1, %.lr.ph248.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call fastcc void @qrfWrapLine(ptr noundef nonnull %.0192.i, i32 noundef %i.agx, i32 noundef %i.aha, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %i.ahu = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.ahv = load i32, ptr %i.dl, align 8, !tbaa !29
  %i.ahw = add nsw i32 %i.ahv, %i.agt
  call void @sqlite3_str_appendchar(ptr noundef %i.ahu, i32 noundef %i.ahw, i8 noundef signext 32) #20
  %i.ahx = add nuw nsw i32 %.0.i, 1
  %i.ahy = load i32, ptr %i.dv, align 8, !tbaa !268
  %.not199.i = icmp slt i32 %.0.i, %i.ahy         ; 3 uses
  %.pre290.i.a = load i32, ptr %i.a, align 4
  %.pre291.i = load i32, ptr %i.c, align 4
  %narrow328.i = select i1 %.not199.i, i32 %.pre291.i, i32 3
  %i.ahz = sext i32 %narrow328.i to i64
  %i.aia = select i1 %.not199.i, i32 %.pre290.i.a, i32 3
  %.1.i = select i1 %.not199.i, ptr %.0192.i, ptr @.str.29 ; 2 uses
  %i.aib = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.aib, ptr noundef nonnull %.1.i, i32 noundef %i.aia) #20
  %i.aic = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_append(ptr noundef %i.aic, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  %i.aid = getelementptr inbounds i8, ptr %.1.i, i64 %i.ahz ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.aie = load i8, ptr %i.aid, align 1, !tbaa !29
  %.not200.i = icmp eq i8 %i.aie, 0
  br i1 %.not200.i, label %.loopexit274.i, label %.peel.next.i, !llvm.loop !258

.loopexit274.i:                                   ; preds = %.peel.next.i, %.lr.ph248.i
  call void @sqlite3_str_reset(ptr noundef %i.agq) #20
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1 ; 2 uses
  %i.aif = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.aig = sext i32 %i.aif to i64
  %i.aih = icmp slt i64 %indvars.iv.next276.i, %i.aig
  br i1 %i.aih, label %.lr.ph248.i, label %._crit_edge.i18, !llvm.loop !259

._crit_edge.i18:                                  ; preds = %.loopexit274.i, %bb.hw
  %.not.i226.i.a = icmp eq ptr %i.agq, null
  br i1 %.not.i226.i.a, label %qrfStrErr.exit.i20, label %bb.hx

bb.hx:                                            ; preds = %._crit_edge.i18
  %i.aii = call i32 @sqlite3_str_errcode(ptr noundef nonnull %i.agq) #20 ; 3 uses
  %.not6.i.i19 = icmp eq i32 %i.aii, 0
  br i1 %.not6.i.i19, label %qrfStrErr.exit.i20, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.aij = call ptr @sqlite3_errstr(i32 noundef %i.aii) #20
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.aii, ptr noundef %i.aij)
  br label %qrfStrErr.exit.i20

qrfStrErr.exit.i20:                               ; preds = %bb.hy, %bb.hx, %._crit_edge.i18
  %i.aik = call ptr @sqlite3_str_finish(ptr noundef %i.agq) #20
  call void @sqlite3_free(ptr noundef %i.aik) #20
  %i.ail = load ptr, ptr %i.dw, align 8, !tbaa !85
  %.not.i227.i = icmp eq ptr %i.ail, null
  br i1 %.not.i227.i, label %qrfOneSimpleRow.exit, label %bb.hz

bb.hz:                                            ; preds = %qrfStrErr.exit.i20
  %i.aim = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.ain = call i32 @sqlite3_str_length(ptr noundef %i.aim) #20 ; 3 uses
  %i.aio = icmp sgt i32 %i.ain, 0
  br i1 %i.aio, label %bb.ia, label %qrfOneSimpleRow.exit

bb.ia:                                            ; preds = %bb.hz
  %i.aip = load ptr, ptr %i.dw, align 8, !tbaa !85
  %i.aiq = load ptr, ptr %i.dx, align 8, !tbaa !86
  %i.air = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.ais = call ptr @sqlite3_str_value(ptr noundef %i.air) #20
  %i.ait = zext nneg i32 %i.ain to i64
  %i.aiu = call i32 %i.aip(ptr noundef %i.aiq, ptr noundef %i.ais, i64 noundef %i.ait) #20, !inline_history !253 ; 2 uses
  %i.aiv = load ptr, ptr %i.dq, align 8, !tbaa !47
  call void @sqlite3_str_reset(ptr noundef %i.aiv) #20
  %.not11.i228.i = icmp eq i32 %i.aiu, 0
  br i1 %.not11.i228.i, label %qrfOneSimpleRow.exit, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.aiu, ptr noundef nonnull @.str.69, i32 noundef %i.ain)
  br label %qrfOneSimpleRow.exit

bb.ic:                                            ; preds = %bb.gf
  %i.aiw = load ptr, ptr %4, align 8, !tbaa !46
  %i.aix = call ptr @sqlite3_column_text(ptr noundef %i.aiw, i32 noundef 3) #20 ; 2 uses
  %i.aiy = load ptr, ptr %4, align 8, !tbaa !46
  %i.aiz = call i32 @sqlite3_column_int(ptr noundef %i.aiy, i32 noundef 0) #20
  %i.aja = load ptr, ptr %4, align 8, !tbaa !46
  %i.ajb = call i32 @sqlite3_column_int(ptr noundef %i.aja, i32 noundef 1) #20
  %i.ajc = icmp eq ptr %i.aix, null
  %spec.store.select2.i = select i1 %i.ajc, ptr @.str.6, ptr %i.aix ; 3 uses
  %i.ajd = load i8, ptr %spec.store.select2.i, align 1, !tbaa !29
  %i.aje = icmp eq i8 %i.ajd, 45
  br i1 %i.aje, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  call fastcc void @qrfEqpRender(ptr noundef nonnull %4)
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %i.ajf = load ptr, ptr %i.dl, align 8, !tbaa !29
  %i.ajg = icmp eq ptr %i.ajf, null
  br i1 %i.ajg, label %bb.if, label %bb.ii

bb.if:                                            ; preds = %bb.ie
  %i.ajh = call ptr @sqlite3_malloc64(i64 noundef 424) #20 ; 3 uses
  store ptr %i.ajh, ptr %i.dl, align 8, !tbaa !29
  %i.aji = icmp eq ptr %i.ajh, null
  br i1 %i.aji, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef 7, ptr noundef nonnull @.str.15)
  br label %qrfOneSimpleRow.exit

bb.ih:                                            ; preds = %bb.if
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %i.ajh, i8 0, i64 424, i1 false)
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ie
  %i.ajj = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select2.i) #21 ; 2 uses
  %i.ajk = add i64 %i.ajj, 24
  %i.ajl = call ptr @sqlite3_malloc64(i64 noundef %i.ajk) #20 ; 8 uses
  %i.ajm = icmp eq ptr %i.ajl, null
  br i1 %i.ajm, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef 7, ptr noundef nonnull @.str.15)
  br label %qrfOneSimpleRow.exit

bb.ik:                                            ; preds = %bb.ii
  store i32 %i.aiz, ptr %i.ajl, align 8, !tbaa !91
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajl, i64 4
  store i32 %i.ajb, ptr %i.ajn, align 4, !tbaa !92
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajl, i64 16
  %i.ajp = add nsw i64 %i.ajj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ajo, ptr nonnull readonly align 1 %spec.store.select2.i, i64 %i.ajp, i1 false)
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajl, i64 8
  store ptr null, ptr %i.ajq, align 8, !tbaa !93
  %i.ajr = load ptr, ptr %i.dl, align 8, !tbaa !29 ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !280 ; 2 uses
  %.not.i230.i.a = icmp eq ptr %i.ajt, null
  br i1 %.not.i230.i.a, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  store ptr %i.ajl, ptr %i.aju, align 8, !tbaa !93
  br label %bb.in

bb.im:                                            ; preds = %bb.ik
  store ptr %i.ajl, ptr %i.ajr, align 8, !tbaa !95
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il
  %i.ajv = load ptr, ptr %i.dl, align 8, !tbaa !29
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 8
  store ptr %i.ajl, ptr %i.ajw, align 8, !tbaa !280
  br label %qrfOneSimpleRow.exit

bb.io:                                            ; preds = %bb.gf
  %i.ajx = load i64, ptr %i.dp, align 8, !tbaa !50
  %i.ajy = icmp eq i64 %i.ajx, 0
  %i.ajz = load i8, ptr %i.ea, align 2
  %i.aka = icmp eq i8 %i.ajz, 2
  %or.cond57 = select i1 %i.ajy, i1 %i.aka, i1 false
  br i1 %or.cond57, label %bb.ip, label %bb.iu

bb.ip:                                            ; preds = %bb.io
  %i.akb = load i8, ptr %i.eb, align 1, !tbaa !55
  %i.akc = load i8, ptr %i.ec, align 4, !tbaa !269
  store i8 %i.akc, ptr %i.eb, align 1, !tbaa !55
  %i.akd = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.ake = icmp sgt i32 %i.akd, 0
  br i1 %i.ake, label %bb.iq, label %._crit_edge267.i

bb.iq:                                            ; preds = %bb.ip
  %i.akf = load ptr, ptr %4, align 8, !tbaa !46
  %i.akg = call ptr @sqlite3_column_name(ptr noundef %i.akf, i32 noundef 0) #20
  %.pre295.i = load ptr, ptr %i.dq, align 8, !tbaa !47
  call fastcc void @qrfEncodeText(ptr noundef nonnull %4, ptr noundef %.pre295.i, ptr noundef %i.akg)
  %i.akh = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.aki = icmp sgt i32 %i.akh, 1
  br i1 %i.aki, label %.peel.next280.i, label %._crit_edge267.i

.peel.next280.i:                                  ; preds = %bb.iq, %.peel.next280.i
  %.6264.i = phi i32 [ %i.ako, %.peel.next280.i ], [ 1, %bb.iq ] ; 2 uses
  %i.akj = load ptr, ptr %4, align 8, !tbaa !46
  %i.akk = call ptr @sqlite3_column_name(ptr noundef %i.akj, i32 noundef %.6264.i) #20
  %i.akl = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.akm = load ptr, ptr %i.ds, align 8, !tbaa !57
  call void @sqlite3_str_appendall(ptr noundef %i.akl, ptr noundef %i.akm) #20
  %i.akn = load ptr, ptr %i.dq, align 8, !tbaa !47
  call fastcc void @qrfEncodeText(ptr noundef nonnull %4, ptr noundef %i.akn, ptr noundef %i.akk)
  %i.ako = add nuw nsw i32 %.6264.i, 1            ; 2 uses
  %i.akp = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.akq = icmp slt i32 %i.ako, %i.akp
  br i1 %i.akq, label %.peel.next280.i, label %._crit_edge267.i, !llvm.loop !260

._crit_edge267.i:                                 ; preds = %.peel.next280.i, %bb.iq, %bb.ip
  %i.akr = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.aks = load ptr, ptr %i.ed, align 8, !tbaa !270
  call void @sqlite3_str_appendall(ptr noundef %i.akr, ptr noundef %i.aks) #20
  %i.akt = load ptr, ptr %i.dw, align 8, !tbaa !85
  %.not.i231.i = icmp eq ptr %i.akt, null
  br i1 %.not.i231.i, label %qrfWrite.exit233.i, label %bb.ir

bb.ir:                                            ; preds = %._crit_edge267.i
  %i.aku = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.akv = call i32 @sqlite3_str_length(ptr noundef %i.aku) #20 ; 3 uses
  %i.akw = icmp sgt i32 %i.akv, 0
  br i1 %i.akw, label %bb.is, label %qrfWrite.exit233.i

bb.is:                                            ; preds = %bb.ir
  %i.akx = load ptr, ptr %i.dw, align 8, !tbaa !85
  %i.aky = load ptr, ptr %i.dx, align 8, !tbaa !86
  %i.akz = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.ala = call ptr @sqlite3_str_value(ptr noundef %i.akz) #20
  %i.alb = zext nneg i32 %i.akv to i64
  %i.alc = call i32 %i.akx(ptr noundef %i.aky, ptr noundef %i.ala, i64 noundef %i.alb) #20, !inline_history !253 ; 2 uses
end_hunk_0
begin_hunk_1_@qrfRenderValue:bb.a
  %.0175223 = phi i32 [ %i.eo, %bb.aa ], [ %i.eq, %bb.ab ] ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef %i.ek, i8 noundef signext 32) #20
  %i.eq = add nsw i32 %.0175223, -1
  %i.er = icmp samesign ugt i32 %.0175223, 1
  br i1 %i.er, label %bb.ab, label %bb.ac, !llvm.loop !309

bb.ac:                                            ; preds = %bb.ab
  call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef 1, i8 noundef signext 34) #20
  %i.es = call i32 @sqlite3_str_errcode(ptr noundef %1) #20
  %.not195 = icmp eq i32 %i.es, 0
  br i1 %.not195, label %bb.ad, label %.critedge200

bb.ad:                                            ; preds = %bb.ac
  %i.et = call ptr @sqlite3_str_value(ptr noundef %1) #20 ; 4 uses
  %i.eu = icmp sgt i32 %i.ek, 0
  br i1 %i.eu, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ad
  %i.ev = sext i32 %i.ep to i64                   ; 3 uses
  %wide.trip.count246 = zext nneg i32 %i.ek to i64 ; 3 uses
  br i1 %.not196, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter288 = and i64 %wide.trip.count246, 1
  %i.ew = icmp eq i32 %i.ek, 1
  br i1 %i.ew, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter292 = and i64 %wide.trip.count246, 2147483646
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv241 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next242.1, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv239 = phi i64 [ %i.ev, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next240.1, %.lr.ph.split.us ] ; 3 uses
  %niter293 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter293.next.1, %.lr.ph.split.us ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv241
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !29
  %i.ez = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv239 ; 3 uses
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.ez, align 1, !tbaa !29
  %i.fa = zext i8 %i.ey to i32                    ; 2 uses
  %i.fb = lshr i32 %i.fa, 4
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !29
  %i.ff = getelementptr i8, ptr %i.ez, i64 4
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !29
  %i.fg = and i32 %i.fa, 15
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !29
  %i.fk = getelementptr i8, ptr %i.ez, i64 5
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !29
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv241
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !29
  %i.fo = getelementptr i8, ptr %i.et, i64 %indvars.iv239 ; 3 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 6
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.fp, align 1, !tbaa !29
  %i.fq = zext i8 %i.fn to i32                    ; 2 uses
  %i.fr = lshr i32 %i.fq, 4
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !29
  %i.fv = getelementptr i8, ptr %i.fo, i64 10
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !29
  %i.fw = and i32 %i.fq, 15
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !29
  %i.ga = getelementptr i8, ptr %i.fo, i64 11
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !29
  %indvars.iv.next242.1 = add nuw nsw i64 %indvars.iv241, 2 ; 2 uses
  %indvars.iv.next240.1 = add nsw i64 %indvars.iv239, 12 ; 2 uses
  %niter293.next.1 = add i64 %niter293, 2         ; 2 uses
  %niter293.ncmp.1 = icmp eq i64 %niter293.next.1, %unroll_iter292
  br i1 %niter293.ncmp.1, label %.loopexit.loopexit283.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !310

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %i.ev, %.lr.ph ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv234
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !29  ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv ; 4 uses
  store i8 92, ptr %i.gd, align 1, !tbaa !29
  %i.ge = lshr i8 %i.gc, 6
  %i.gf = or disjoint i8 %i.ge, 48
  %i.gg = getelementptr i8, ptr %i.gd, i64 1
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !29
  %i.gh = lshr i8 %i.gc, 3
  %i.gi = and i8 %i.gh, 7
  %i.gj = or disjoint i8 %i.gi, 48
  %i.gk = getelementptr i8, ptr %i.gd, i64 2
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !29
  %i.gl = and i8 %i.gc, 7
  %i.gm = or disjoint i8 %i.gl, 48
  %i.gn = getelementptr i8, ptr %i.gd, i64 3
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !29
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 4
  %exitcond.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count246
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !310

bb.ae:                                            ; preds = %.thread
  %i.go = call i32 @sqlite3_column_bytes(ptr noundef %i.cu, i32 noundef %2) #20
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef %i.go) #20
  br label %.loopexit

bb.af:                                            ; preds = %.thread
  %i.gp = call ptr @sqlite3_column_text(ptr noundef %i.cu, i32 noundef %2) #20
  call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %1, ptr noundef %i.gp)
  br label %.loopexit

bb.ag:                                            ; preds = %.critedge
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !51
  tail call void @sqlite3_str_appendall(ptr noundef %1, ptr noundef %i.gr) #20
  br label %.loopexit

bb.ah:                                            ; preds = %.critedge
  %i.gs = load ptr, ptr %0, align 8, !tbaa !46
  %i.gt = tail call ptr @sqlite3_column_text(ptr noundef %i.gs, i32 noundef %2) #20
  tail call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %1, ptr noundef %i.gt)
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph228
  %lcmp.mod296.not = icmp eq i64 %xtraiter294, 0
  br i1 %lcmp.mod296.not, label %.loopexit, label %.lr.ph228.epil.preheader

.lr.ph228.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph228.preheader
  %indvars.iv250.epil.init = phi i64 [ 0, %.lr.ph228.preheader ], [ %indvars.iv.next251.1, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv248.epil.init = phi i64 [ %i.dg, %.lr.ph228.preheader ], [ %indvars.iv.next249.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod297 = trunc i32 %i.cv to i1
  call void @llvm.assume(i1 %lcmp.mod297)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv250.epil.init
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !29
  %i.gw = zext i8 %i.gv to i32                    ; 2 uses
  %i.gx = lshr i32 %i.gw, 4
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !29
  %i.hb = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv248.epil.init ; 2 uses
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !29
  %i.hc = and i32 %i.gw, 15
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !29
  %i.hg = getelementptr i8, ptr %i.hb, i64 1
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !29
  br label %.loopexit

.loopexit.loopexit283.unr-lcssa:                  ; preds = %.lr.ph.split.us
  %lcmp.mod290.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod290.not, label %.loopexit, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.loopexit.loopexit283.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv241.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next242.1, %.loopexit.loopexit283.unr-lcssa ]
  %indvars.iv239.epil.init = phi i64 [ %i.ev, %.lr.ph.split.us.preheader ], [ %indvars.iv.next240.1, %.loopexit.loopexit283.unr-lcssa ]
  %lcmp.mod291 = trunc i32 %i.ek to i1
  call void @llvm.assume(i1 %lcmp.mod291)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv241.epil.init
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !29
  %i.hj = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv239.epil.init ; 3 uses
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.hj, align 1, !tbaa !29
  %i.hk = zext i8 %i.hi to i32                    ; 2 uses
  %i.hl = lshr i32 %i.hk, 4
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !29
  %i.hp = getelementptr i8, ptr %i.hj, i64 4
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !29
  %i.hq = and i32 %i.hk, 15
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @.str.63, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !29
  %i.hu = getelementptr i8, ptr %i.hj, i64 5
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us.epil.preheader, %.loopexit.loopexit283.unr-lcssa, %.lr.ph228.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ad, %bb.z, %bb.t, %bb.s, %bb.ae, %bb.af, %bb.ah, %bb.ag, %bb.e, %bb.d, %.critedge
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !313
  %i.hx = icmp sgt i32 %i.hw, 0
  br i1 %i.hx, label %bb.ai, label %.critedge200

bb.ai:                                            ; preds = %.loopexit
  %i.hy = call i32 @sqlite3_str_length(ptr noundef %1) #20
  %i.hz = sub nsw i32 %i.hy, %i.b
  %i.ia = load i32, ptr %i.hv, align 4, !tbaa !313 ; 2 uses
  %i.ib = icmp sgt i32 %i.hz, %i.ia
  br i1 %i.ib, label %bb.aj, label %.critedge200

bb.aj:                                            ; preds = %bb.ai
  %i.ic = call ptr @sqlite3_str_value(ptr noundef %1) #20
  %i.id = sext i32 %i.b to i64
  %i.ie = getelementptr inbounds i8, ptr %i.ic, i64 %i.id
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.ia, i32 4) ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.thread213, %bb.aj
  %.0171 = phi i32 [ 0, %bb.aj ], [ %.4, %.thread213 ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.aj ], [ %.1, %.thread213 ] ; 7 uses
  %i.if = sext i32 %.0171 to i64
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 %i.if ; 10 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !29  ; 4 uses
  %i.ii = icmp ult i8 %i.ih, 32
  br i1 %i.ii, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  switch i8 %i.ih, label %.thread213 [
    i8 27, label %bb.am
    i8 0, label %bb.bh
  ]

bb.am:                                            ; preds = %bb.al
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !29
  %.not.i203 = icmp eq i8 %i.ik, 91
  br i1 %.not.i203, label %.preheader.i, label %.thread212.a

.preheader.i:                                     ; preds = %bb.am, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 2, %bb.am ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv.i
  %i.im = load i8, ptr %i.il, align 1, !tbaa !29
  %i.in = and i8 %i.im, -16
  %or.cond.i = icmp eq i8 %i.in, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i204, !llvm.loop !1

.critedge.i204:                                   ; preds = %.preheader.i, %.critedge.i204
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i204 ], [ %indvars.iv.i, %.preheader.i ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv25.i
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !29  ; 2 uses
  %i.iq = and i8 %i.ip, -16
  %or.cond22.i = icmp eq i8 %i.iq, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i204, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i204
  %i.ir = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.is = add i8 %i.ip, -64
  %or.cond23.i = icmp ult i8 %i.is, 63
  %i.it = add nuw nsw i32 %i.ir, 1
  br i1 %or.cond23.i, label %.thread213, label %.thread212.a

.thread212.a:                                     ; preds = %bb.am, %.critedge2.i
  br label %.thread213

bb.an:                                            ; preds = %bb.ak
  %i.iu = icmp sgt i8 %i.ih, -1
  br i1 %i.iu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.iv = add nsw i32 %.0, 1                      ; 2 uses
  %.not198 = icmp slt i32 %.0, %spec.store.select
  br i1 %.not198, label %.thread213, label %bb.bh

bb.ap:                                            ; preds = %bb.an
  %i.iw = zext i8 %i.ih to i32                    ; 6 uses
  %i.ix = and i32 %i.iw, 224
  %i.iy = icmp eq i32 %i.ix, 192
  br i1 %i.iy, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !29
  %i.jb = zext i8 %i.ja to i32                    ; 2 uses
  %i.jc = and i32 %i.jb, 192
  %i.jd = icmp eq i32 %i.jc, 128
  br i1 %i.jd, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.je = shl nuw nsw i32 %i.iw, 6
  %i.jf = and i32 %i.je, 1984
  %i.jg = and i32 %i.jb, 63
  %i.jh = or disjoint i32 %i.jg, %i.jf
  br label %sqlite3_qrf_decode_utf8.exit

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %i.ji = and i32 %i.iw, 240
  %i.jj = icmp eq i32 %i.ji, 224
  br i1 %i.jj, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !29
  %i.jm = zext i8 %i.jl to i32                    ; 2 uses
  %i.jn = and i32 %i.jm, 192
  %i.jo = icmp eq i32 %i.jn, 128
  br i1 %i.jo, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !29
  %i.jr = zext i8 %i.jq to i32                    ; 2 uses
  %i.js = and i32 %i.jr, 192
  %i.jt = icmp eq i32 %i.js, 128
  br i1 %i.jt, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ju = shl nuw nsw i32 %i.iw, 12
  %i.jv = and i32 %i.ju, 61440
  %i.jw = shl nuw nsw i32 %i.jm, 6
  %i.jx = and i32 %i.jw, 4032
  %i.jy = or disjoint i32 %i.jx, %i.jv
  %i.jz = and i32 %i.jr, 63
  %i.ka = or disjoint i32 %i.jy, %i.jz
  br label %sqlite3_qrf_decode_utf8.exit

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.kb = and i32 %i.iw, 248
  %i.kc = icmp eq i32 %i.kb, 240
  br i1 %i.kc, label %bb.ax, label %sqlite3_qrf_wcwidth.exit

bb.ax:                                            ; preds = %bb.aw
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !29
  %i.kf = zext i8 %i.ke to i32                    ; 2 uses
  %i.kg = and i32 %i.kf, 192
  %i.kh = icmp eq i32 %i.kg, 128
  br i1 %i.kh, label %bb.ay, label %sqlite3_qrf_wcwidth.exit

bb.ay:                                            ; preds = %bb.ax
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !29
  %i.kk = zext i8 %i.kj to i32                    ; 2 uses
  %i.kl = and i32 %i.kk, 192
  %i.km = icmp eq i32 %i.kl, 128
  br i1 %i.km, label %bb.az, label %sqlite3_qrf_wcwidth.exit

bb.az:                                            ; preds = %bb.ay
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ig, i64 3
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !29
  %i.kp = zext i8 %i.ko to i32                    ; 2 uses
  %i.kq = and i32 %i.kp, 192
  %i.kr = icmp eq i32 %i.kq, 128
  br i1 %i.kr, label %bb.ba, label %sqlite3_qrf_wcwidth.exit

bb.ba:                                            ; preds = %bb.az
  %i.ks = shl nuw nsw i32 %i.iw, 18
  %i.kt = and i32 %i.ks, 1835008
  %i.ku = shl nuw nsw i32 %i.kf, 12
  %i.kv = and i32 %i.ku, 258048
  %i.kw = or disjoint i32 %i.kv, %i.kt
  %i.kx = shl nuw nsw i32 %i.kk, 6
  %i.ky = and i32 %i.kx, 4032
  %i.kz = or disjoint i32 %i.kw, %i.ky
  %i.la = and i32 %i.kp, 63
  %i.lb = or disjoint i32 %i.kz, %i.la
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.ar, %bb.av, %bb.ba
  %.sink.i205 = phi i32 [ %i.jh, %bb.ar ], [ %i.lb, %bb.ba ], [ %i.ka, %bb.av ] ; 4 uses
  %.0.i = phi i32 [ 2, %bb.ar ], [ 4, %bb.ba ], [ 3, %bb.av ] ; 4 uses
  %i.lc = icmp samesign ult i32 %.sink.i205, 768
  br i1 %i.lc, label %sqlite3_qrf_wcwidth.exit, label %.preheader.i206

.preheader.i206:                                  ; preds = %sqlite3_qrf_decode_utf8.exit, %bb.bd
  %.01935.i = phi i32 [ %.2.i, %bb.bd ], [ 302, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %.02034.i = phi i32 [ %.222.i, %bb.bd ], [ 0, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %i.ld = add nsw i32 %.02034.i, %.01935.i
  %i.le = sdiv i32 %i.ld, 2                       ; 3 uses
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !26 ; 2 uses
  %i.lj = icmp slt i32 %i.li, %.sink.i205
  br i1 %i.lj, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %.preheader.i206
  %i.lk = icmp sgt i32 %i.li, %.sink.i205
  br i1 %i.lk, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.ll = add nsw i32 %i.le, -1
  br label %bb.bd

.thread.i:                                        ; preds = %bb.bb
  %i.lm = load i8, ptr %i.lg, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

bb.bd:                                            ; preds = %bb.bc, %.preheader.i206
  %.222.i = phi i32 [ %i.le, %.preheader.i206 ], [ %.02034.i, %bb.bc ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i206 ], [ %i.ll, %bb.bc ] ; 3 uses
  %i.ln = add nsw i32 %.2.i, -1
  %i.lo = icmp slt i32 %.222.i, %i.ln
  br i1 %i.lo, label %.preheader.i206, label %bb.be, !llvm.loop !0

bb.be:                                            ; preds = %bb.bd
  %i.lp = sext i32 %.2.i to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !26
  %i.lt = icmp sgt i32 %i.ls, %.sink.i205
  br i1 %i.lt, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.lu = sext i32 %.222.i to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

bb.bg:                                            ; preds = %bb.be
  %i.lx = load i8, ptr %i.lq, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_wcwidth.exit:                         ; preds = %bb.aw, %bb.ax, %bb.ay, %bb.az, %sqlite3_qrf_decode_utf8.exit, %.thread.i, %bb.bf, %bb.bg
  %.0.i218 = phi i32 [ %.0.i, %bb.bg ], [ %.0.i, %.thread.i ], [ %.0.i, %bb.bf ], [ %.0.i, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.az ], [ 1, %bb.ay ], [ 1, %bb.ax ], [ 1, %bb.aw ]
  %.225.shrunk.i = phi i8 [ %i.lx, %bb.bg ], [ %i.lm, %.thread.i ], [ %i.lw, %bb.bf ], [ 1, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.az ], [ 1, %bb.ay ], [ 1, %bb.ax ], [ 1, %bb.aw ]
  %.225.i = zext i8 %.225.shrunk.i to i32
  %i.ly = add nsw i32 %.0, %.225.i                ; 3 uses
  %i.lz = icmp sgt i32 %i.ly, %spec.store.select
  br i1 %i.lz, label %bb.bh, label %.thread213

.thread213:                                       ; preds = %bb.ao, %.thread212.a, %.critedge2.i, %bb.al, %sqlite3_qrf_wcwidth.exit
  %.pn.pn = phi i32 [ %.0.i218, %sqlite3_qrf_wcwidth.exit ], [ 1, %.thread212.a ], [ %i.it, %.critedge2.i ], [ 1, %bb.al ], [ 1, %bb.ao ]
  %.1 = phi i32 [ %i.ly, %sqlite3_qrf_wcwidth.exit ], [ %.0, %.thread212.a ], [ %.0, %.critedge2.i ], [ %.0, %bb.al ], [ %i.iv, %bb.ao ]
  %.4 = add nsw i32 %.pn.pn, %.0171
  br label %bb.ak

bb.bh:                                            ; preds = %bb.al, %sqlite3_qrf_wcwidth.exit, %bb.ao
  %.2 = phi i32 [ %i.ly, %sqlite3_qrf_wcwidth.exit ], [ %i.iv, %bb.ao ], [ %.0, %bb.al ]
  %i.ma = icmp sgt i32 %.2, %spec.store.select
  br i1 %i.ma, label %bb.bi, label %.critedge200

bb.bi:                                            ; preds = %bb.bh
  %i.mb = add nsw i32 %.0171, %i.b
  call void @sqlite3_str_truncate(ptr noundef %1, i32 noundef %i.mb) #20
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef 3) #20
  br label %.critedge200

.critedge200:                                     ; preds = %bb.c, %bb.ac, %bb.y, %.loopexit, %bb.ai, %bb.bi, %bb.bh
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @qrfLoadAlignment(i32 %.8.val, ptr nofree writeonly captures(none) %.64.val, ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %.8.val to i64
  %i.b = icmp sgt i32 %.8.val, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.d = load i8, ptr %i.c, align 1, !tbaa !83    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !84
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = and i8 %i.d, 12                          ; 2 uses
  %i.k = or disjoint i8 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
end_hunk_1
begin_hunk_2_@qrfWrapLine:bb.a
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = and i32 %i.au, 192
  %i.aw = icmp eq i32 %i.av, 128
  br i1 %i.aw, label %bb.m, label %sqlite3_qrf_wcwidth.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !29
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = and i32 %i.az, 192
  %i.bb = icmp eq i32 %i.ba, 128
  br i1 %i.bb, label %bb.n, label %sqlite3_qrf_wcwidth.exit

bb.n:                                             ; preds = %bb.m
  %i.bc = shl nuw nsw i32 %i.g, 18
  %i.bd = and i32 %i.bc, 1835008
  %i.be = shl nuw nsw i32 %i.ap, 12
  %i.bf = and i32 %i.be, 258048
  %i.bg = or disjoint i32 %i.bf, %i.bd
  %i.bh = shl nuw nsw i32 %i.au, 6
  %i.bi = and i32 %i.bh, 4032
  %i.bj = or disjoint i32 %i.bg, %i.bi
  %i.bk = and i32 %i.az, 63
  %i.bl = or disjoint i32 %i.bj, %i.bk
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.e, %bb.i, %bb.n
  %.sink.i = phi i32 [ %i.r, %bb.e ], [ %i.bl, %bb.n ], [ %i.ak, %bb.i ] ; 4 uses
  %.0.i = phi i32 [ 2, %bb.e ], [ 4, %bb.n ], [ 3, %bb.i ] ; 4 uses
  %i.bm = icmp samesign ult i32 %.sink.i, 768
  br i1 %i.bm, label %sqlite3_qrf_wcwidth.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sqlite3_qrf_decode_utf8.exit, %bb.q
  %.01935.i = phi i32 [ %.2.i, %bb.q ], [ 302, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %.02034.i = phi i32 [ %.222.i, %bb.q ], [ 0, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %i.bn = add nsw i32 %.02034.i, %.01935.i
  %i.bo = sdiv i32 %i.bn, 2                       ; 3 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !26 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, %.sink.i
  br i1 %i.bt, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.preheader.i
  %i.bu = icmp sgt i32 %i.bs, %.sink.i
  br i1 %i.bu, label %bb.p, label %.thread.i

bb.p:                                             ; preds = %bb.o
  %i.bv = add nsw i32 %i.bo, -1
  br label %bb.q

.thread.i:                                        ; preds = %bb.o
  %i.bw = load i8, ptr %i.bq, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

bb.q:                                             ; preds = %bb.p, %.preheader.i
  %.222.i = phi i32 [ %i.bo, %.preheader.i ], [ %.02034.i, %bb.p ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i ], [ %i.bv, %bb.p ] ; 3 uses
  %i.bx = add nsw i32 %.2.i, -1
  %i.by = icmp slt i32 %.222.i, %i.bx
  br i1 %i.by, label %.preheader.i, label %bb.r, !llvm.loop !0

bb.r:                                             ; preds = %bb.q
  %i.bz = sext i32 %.2.i to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !26
  %i.cd = icmp sgt i32 %i.cc, %.sink.i
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ce = sext i32 %.222.i to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

bb.t:                                             ; preds = %bb.r
  %i.ch = load i8, ptr %i.ca, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_wcwidth.exit:                         ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %sqlite3_qrf_decode_utf8.exit, %.thread.i, %bb.s, %bb.t
  %.0.i143 = phi i32 [ %.0.i, %bb.t ], [ %.0.i, %.thread.i ], [ %.0.i, %bb.s ], [ %.0.i, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ]
  %.225.shrunk.i = phi i8 [ %i.ch, %bb.t ], [ %i.bw, %.thread.i ], [ %i.cg, %bb.s ], [ 1, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ]
  %.225.i = zext i8 %.225.shrunk.i to i32
  %i.ci = add nsw i32 %.0110173, %.225.i          ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, %1
  %i.ck = add i32 %.0115172, -1
  %i.cl = add i32 %i.ck, %.0.i143
  br i1 %i.cj, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.ad

bb.u:                                             ; preds = %.lr.ph
  %i.cm = icmp ugt i8 %i.e, 31
  br i1 %i.cm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cn = icmp eq i32 %.0110173, %1
  br i1 %i.cn, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = add nsw i32 %.0110173, 1
  br label %bb.ad

bb.x:                                             ; preds = %bb.u
  switch i8 %i.e, label %qrfIsVt100.exit.thread [
    i8 10, label %sqlite3_qrf_wcwidth.exit._crit_edge
    i8 0, label %sqlite3_qrf_wcwidth.exit._crit_edge
    i8 13, label %bb.y
    i8 9, label %bb.z
    i8 27, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.cp = add nsw i32 %.0115172, 1                ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %0, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !29
  %i.ct = icmp eq i8 %i.cs, 10
  br i1 %i.ct, label %.thread151, label %qrfIsVt100.exit.thread

bb.z:                                             ; preds = %bb.x
  %reass.sub = and i32 %.0110173, -8
  %i.cu = add i32 %reass.sub, 8                   ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, %1
  br i1 %i.cv, label %.thread, label %bb.ad

bb.aa:                                            ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !29
  %.not.i = icmp eq i8 %i.cx, 91
  br i1 %.not.i, label %.preheader.i140, label %qrfIsVt100.exit.thread

.preheader.i140:                                  ; preds = %bb.aa, %.preheader.i140
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i140 ], [ 2, %bb.aa ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !29
  %i.da = and i8 %i.cz, -16
  %or.cond.i = icmp eq i8 %i.da, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i140, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i140, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i140 ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv25.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !29  ; 2 uses
  %i.dd = and i8 %i.dc, -16
  %or.cond22.i = icmp eq i8 %i.dd, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i
  %i.de = add i8 %i.dc, -64
  %or.cond23.i = icmp ult i8 %i.de, 63
  br i1 %or.cond23.i, label %bb.ab, label %qrfIsVt100.exit.thread

bb.ab:                                            ; preds = %.critedge2.i
  %i.df = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.dg = add nsw i32 %.0115172, %i.df
  br label %bb.ad

qrfIsVt100.exit.thread:                           ; preds = %.critedge2.i, %bb.aa, %bb.y, %bb.x
  %i.dh = icmp eq i32 %.0110173, %1
  br i1 %i.dh, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %qrfIsVt100.exit.thread
  %i.di = add nsw i32 %.0110173, 1
  br label %bb.ad

bb.ad:                                            ; preds = %sqlite3_qrf_wcwidth.exit, %bb.z, %bb.ab, %bb.ac, %bb.w
  %.2117 = phi i32 [ %i.cl, %sqlite3_qrf_wcwidth.exit ], [ %.0115172, %bb.w ], [ %.0115172, %bb.z ], [ %i.dg, %bb.ab ], [ %.0115172, %bb.ac ]
  %.3 = phi i32 [ %i.ci, %sqlite3_qrf_wcwidth.exit ], [ %i.co, %bb.w ], [ %i.cu, %bb.z ], [ %.0110173, %bb.ab ], [ %i.di, %bb.ac ] ; 3 uses
  %i.dj = add nsw i32 %.2117, 1                   ; 2 uses
  %.not = icmp sgt i32 %.3, %1
  br i1 %.not, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %.lr.ph, !llvm.loop !328

sqlite3_qrf_wcwidth.exit._crit_edge:              ; preds = %bb.ad, %bb.v, %qrfIsVt100.exit.thread, %bb.x, %bb.x, %sqlite3_qrf_wcwidth.exit
  %.0115.lcssa = phi i32 [ %.0115172, %sqlite3_qrf_wcwidth.exit ], [ %i.dj, %bb.ad ], [ %.0115172, %bb.v ], [ %.0115172, %qrfIsVt100.exit.thread ], [ %.0115172, %bb.x ], [ %.0115172, %bb.x ] ; 3 uses
  %.0110.lcssa = phi i32 [ %.0110173, %sqlite3_qrf_wcwidth.exit ], [ %.3, %bb.ad ], [ %1, %bb.v ], [ %1, %qrfIsVt100.exit.thread ], [ %.0110173, %bb.x ], [ %.0110173, %bb.x ] ; 3 uses
  switch i8 %i.e, label %.thread [
    i8 0, label %sqlite3_qrf_wcwidth.exit._crit_edge.thread
    i8 10, label %.thread151
  ]

sqlite3_qrf_wcwidth.exit._crit_edge.thread:       ; preds = %.preheader159.a, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0110.lcssa226 = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ 0, %.preheader159.a ]
  %.0115.lcssa225 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ 0, %.preheader159.a ] ; 2 uses
  store i32 %.0115.lcssa225, ptr %3, align 4, !tbaa !30
  store i32 %.0110.lcssa226, ptr %4, align 4, !tbaa !30
  br label %bb.am

.thread151:                                       ; preds = %bb.y, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0110166 = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0110173, %bb.y ]
  %.3118155 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %i.cp, %bb.y ] ; 2 uses
  store i32 %.3118155, ptr %3, align 4, !tbaa !30
  store i32 %.0110166, ptr %4, align 4, !tbaa !30
  %i.dk = add nsw i32 %.3118155, 1
  br label %bb.am

.thread:                                          ; preds = %bb.z, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0115170 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0115172, %bb.z ] ; 10 uses
  %.0110167 = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0110173, %bb.z ] ; 5 uses
  %.not129 = icmp eq i32 %2, 0
  %.pre = sext i32 %.0115170 to i64               ; 8 uses
  br i1 %.not129, label %.thread._crit_edge, label %bb.ae

bb.ae:                                            ; preds = %.thread
  %i.dl = getelementptr inbounds i8, ptr %0, i64 %.pre
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !29  ; 2 uses
  %.not130 = icmp eq i8 %i.dm, 0
  br i1 %.not130, label %.thread._crit_edge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !29  ; 2 uses
  %i.dq = and i8 %i.dp, 1
  %.not131 = icmp eq i8 %i.dq, 0
  br i1 %.not131, label %bb.ag, label %.thread._crit_edge

bb.ag:                                            ; preds = %bb.af
  %i.dr = zext i8 %i.e to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !29
  %i.du = and i8 %i.dt, 6
  %i.dv = icmp ne i8 %i.du, 0
  %i.dw = and i8 %i.dp, 6
  %i.dx = icmp eq i8 %i.dw, 0
  %i.dy = xor i1 %i.dx, %i.dv
  br i1 %i.dy, label %.preheader158, label %.thread._crit_edge

.preheader158:                                    ; preds = %bb.ag
  %i.dz = sdiv i32 %.0115170, 2                   ; 4 uses
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %.0115170, i32 %i.dz)
  %6 = add i32 %smin, -1                          ; 3 uses
  %.not132.not254 = icmp sgt i32 %.0115170, 0
  br i1 %.not132.not254, label %.lr.ph256, label %.split.loop.exit237

bb.ah:                                            ; preds = %.lr.ph256
  %.not132.not = icmp sgt i64 %indvars.iv.next, %i.ea
  br i1 %.not132.not, label %.lr.ph256, label %.split.loop.exit237, !llvm.loop !329

.lr.ph256:                                        ; preds = %.preheader158, %bb.ah
  %indvars.iv255 = phi i64 [ %indvars.iv.next, %bb.ah ], [ %.pre, %.preheader158 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv255, -1 ; 4 uses
  %i.eb = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !29
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !29
  %i.eg = and i8 %i.ef, 1
  %.not133 = icmp eq i8 %i.eg, 0
  br i1 %.not133, label %bb.ah, label %.split.loop.exit, !llvm.loop !329

.split.loop.exit:                                 ; preds = %.lr.ph256
  %7 = trunc nsw i64 %indvars.iv255 to i32
  %i.eh = trunc nsw i64 %indvars.iv.next to i32
  %8 = icmp sge i32 %i.dz, %7
  br label %.split.loop.exit237

.split.loop.exit237:                              ; preds = %bb.ah, %.preheader158, %.split.loop.exit
  %.0112.in.lcssa = phi i1 [ %8, %.split.loop.exit ], [ true, %.preheader158 ], [ true, %bb.ah ]
  %.0112.lcssa = phi i32 [ %i.eh, %.split.loop.exit ], [ %6, %.preheader158 ], [ %6, %bb.ah ]
  %9 = icmp sgt i32 %.0115170, 1
  %or.cond = and i1 %9, %.0112.in.lcssa
  br i1 %or.cond, label %.lr.ph196, label %.loopexit

.lr.ph196:                                        ; preds = %.split.loop.exit237, %bb.ai
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %bb.ai ], [ %.pre, %.split.loop.exit237 ] ; 4 uses
  %i.ei = getelementptr i8, ptr %0, i64 %indvars.iv211 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 -1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !29
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !29
  %i.eo = and i8 %i.en, 6
  %i.ep = icmp ne i8 %i.eo, 0
  %i.eq = load i8, ptr %i.ei, align 1, !tbaa !29  ; 2 uses
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !29
  %i.eu = and i8 %i.et, 6
  %i.ev = icmp eq i8 %i.eu, 0
  %.not136.a = xor i1 %i.ep, %i.ev
  %.not137.a = icmp slt i8 %i.eq, -64
  %or.cond139 = or i1 %.not137.a, %.not136.a
  br i1 %or.cond139, label %bb.ai, label %.loopexit.loopexit.split.loop.exit

bb.ai:                                            ; preds = %.lr.ph196
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, -1
  %.not135.not = icmp sgt i64 %indvars.iv211, %i.ea
  br i1 %.not135.not, label %.lr.ph196, label %.loopexit, !llvm.loop !330

.loopexit.loopexit.split.loop.exit:               ; preds = %.lr.ph196
  %i.ew = trunc nsw i64 %indvars.iv211 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %.loopexit.loopexit.split.loop.exit, %.split.loop.exit237
  %.2114 = phi i32 [ %.0112.lcssa, %.split.loop.exit237 ], [ %i.ew, %.loopexit.loopexit.split.loop.exit ], [ %6, %bb.ai ] ; 3 uses
  %.not138 = icmp slt i32 %.2114, %i.dz
  br i1 %.not138, label %.thread._crit_edge, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.ex = sext i32 %.2114 to i64                  ; 2 uses
  %i.ey = tail call fastcc i32 @qrfDisplayWidth(ptr noundef nonnull %0, i64 noundef %i.ex, ptr noundef null)
  br label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread, %.loopexit, %bb.aj, %bb.ag, %bb.af, %bb.ae
  %.pre-phi = phi i64 [ %.pre, %bb.ae ], [ %.pre, %.loopexit ], [ %i.ex, %bb.aj ], [ %.pre, %bb.ag ], [ %.pre, %bb.af ], [ %.pre, %.thread ]
  %.4119 = phi i32 [ %.0115170, %bb.ae ], [ %.0115170, %.loopexit ], [ %.2114, %bb.aj ], [ %.0115170, %bb.ag ], [ %.0115170, %bb.af ], [ %.0115170, %.thread ]
  %.5 = phi i32 [ %.0110167, %bb.ae ], [ %.0110167, %.loopexit ], [ %i.ey, %bb.aj ], [ %.0110167, %bb.ag ], [ %.0110167, %bb.af ], [ %.0110167, %.thread ]
  store i32 %.4119, ptr %3, align 4, !tbaa !30
  store i32 %.5, ptr %4, align 4, !tbaa !30
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge, %.thread._crit_edge
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %.critedge ], [ %.pre-phi, %.thread._crit_edge ] ; 3 uses
  %i.ez = getelementptr inbounds i8, ptr %0, i64 %indvars.iv214
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !29
  switch i8 %i.fa, label %bb.al [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 13, label %.critedge
  ]

.critedge:                                        ; preds = %bb.ak, %bb.ak, %bb.ak
  %indvars.iv.next215 = add nsw i64 %indvars.iv214, 1
  br label %bb.ak, !llvm.loop !331

bb.al:                                            ; preds = %bb.ak
  %i.fb = trunc nsw i64 %indvars.iv214 to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread151, %sqlite3_qrf_wcwidth.exit._crit_edge.thread, %bb.b
  %.sink = phi i32 [ %i.fb, %bb.al ], [ %i.dk, %.thread151 ], [ %.0115.lcssa225, %sqlite3_qrf_wcwidth.exit._crit_edge.thread ], [ 0, %bb.b ]
  store i32 %.sink, ptr %5, align 4, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfRTrim(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_str_length(ptr noundef %0) #20 ; 3 uses
  %i.b = tail call ptr @sqlite3_str_value(ptr noundef %0) #20
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.07 = phi i32 [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = zext nneg i32 %.07 to i64
  %i.e = getelementptr i8, ptr %i.b, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29
  %i.h = icmp eq i8 %i.g, 32
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.i = add nsw i32 %.07, -1
  %i.j = icmp sgt i32 %.07, 1
  br i1 %i.j, label %.lr.ph, label %.critedge, !llvm.loop !5

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ 0, %bb.b ], [ %.07, %.lr.ph ]
  tail call void @sqlite3_str_truncate(ptr noundef %0, i32 noundef %.0.lcssa) #20
  ret void
}

declare void @sqlite3_str_appendchar(ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #5

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @sqlite3_str_appendall(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare ptr @sqlite3_str_value(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare ptr @sqlite3_errstr(i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_value_dup(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_value(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @sqlite3_value_free(ptr noundef) local_unnamed_addr #5

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_column_bytes(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_blob(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @sqlite3_str_truncate(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_open(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_close(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_finalize(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_reset(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_blob(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_mprintf(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfAppendWithTabs(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ab
  %.073 = phi i32 [ %2, %.lr.ph ], [ %.2, %bb.ab ] ; 3 uses
  %.05072 = phi ptr [ %1, %.lr.ph ], [ %.252, %bb.ab ] ; 4 uses
  %.05371 = phi i32 [ 0, %.lr.ph ], [ %.255, %bb.ab ] ; 6 uses
  %.05670 = phi i32 [ 0, %.lr.ph ], [ %.157, %bb.ab ] ; 5 uses
  %i.e = sext i32 %.05670 to i64
  %i.f = getelementptr inbounds i8, ptr %.05072, i64 %i.e ; 15 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29    ; 6 uses
  %i.h = icmp ult i8 %i.g, 32
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %.05072, i32 noundef %.05670) #20
  %i.i = sub nsw i32 %.073, %.05670               ; 4 uses
  switch i8 %i.g, label %bb.g [
    i8 27, label %bb.d
    i8 9, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29
  %.not.i = icmp eq i8 %i.k, 91
  br i1 %.not.i, label %.preheader.i, label %.thread

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 2, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29
  %i.n = and i8 %i.m, -16
  %or.cond.i = icmp eq i8 %i.n, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv25.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29    ; 2 uses
  %i.q = and i8 %i.p, -16
  %or.cond22.i = icmp eq i8 %i.q, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i
  %i.r = add i8 %i.p, -64
  %or.cond23.i = icmp ult i8 %i.r, 63
  br i1 %or.cond23.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %.critedge2.i
  %i.s = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.t = add nuw nsw i32 %i.s, 1                  ; 3 uses
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef %i.t) #20
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  %i.w = sub nsw i32 %i.i, %i.t
  br label %bb.ab

bb.f:                                             ; preds = %bb.c
  %i.x = and i32 %.05371, 7
  %i.y = sub nuw nsw i32 8, %i.x                  ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %0, i32 noundef %i.y, i8 noundef signext 32) #20
  %i.z = add i32 %i.y, %.05371
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ab = add nsw i32 %i.i, -1
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.ac = icmp eq i8 %i.g, 13
  %i.ad = icmp eq i32 %i.i, 1
end_hunk_2
begin_hunk_3_@dbPrepareAndBind:bb.a
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !122  ; 10 uses
  store ptr null, ptr %3, align 8, !tbaa !206
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %.0183 = phi ptr [ %1, %bb.a ], [ %i.i, %.critedge ] ; 7 uses
  %i.h = load i8, ptr %.0183, align 1, !tbaa !29
  switch i8 %i.h, label %bb.c [
    i8 32, label %.critedge
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 9, label %.critedge
  ]

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0183, i64 1
  br label %bb.b, !llvm.loop !426

bb.c:                                             ; preds = %bb.b
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %.0183)
  %i.j = trunc i64 %strlen.i to i32
  %i.k = and i32 %i.j, 1073741823
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %.0180268 = load ptr, ptr %i.l, align 8, !tbaa !206 ; 2 uses
  %.not269 = icmp eq ptr %.0180268, null
  br i1 %.not269, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.m
  %.0180270 = phi ptr [ %.0180, %bb.m ], [ %.0180268, %bb.c ] ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0180270, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !429  ; 2 uses
  %.not197 = icmp slt i32 %i.k, %i.n
  br i1 %.not197, label %bb.m, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.0180270, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !430
  %i.q = sext i32 %i.n to i64                     ; 2 uses
  %bcmp = tail call i32 @bcmp(ptr %i.p, ptr nonnull %.0183, i64 %i.q)
  %i.r = icmp eq i32 %bcmp, 0
  br i1 %i.r, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds i8, ptr %.0183, i64 %i.q ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !29
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.s, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29
  %i.x = icmp eq i8 %i.w, 59
  br i1 %i.x, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.0180270, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !190  ; 2 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !87
  store ptr %i.s, ptr %2, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %.0180270, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !231 ; 4 uses
  %.not198 = icmp eq ptr %i.ab, null
  %i.ac = load ptr, ptr %.0180270, align 8, !tbaa !189 ; 4 uses
  br i1 %.not198, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !189
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !187
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not199 = icmp eq ptr %i.ac, null
  br i1 %.not199, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !231
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !232
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph, %bb.d, %bb.f
  %.0180 = load ptr, ptr %.0180270, align 8, !tbaa !206 ; 2 uses
  %.not = icmp eq ptr %.0180, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !427

bb.n:                                             ; preds = %bb.k, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !191
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !191
  %i.ai = tail call i32 @sqlite3_bind_parameter_count(ptr noundef %i.z) #20
  br label %bb.t

._crit_edge:                                      ; preds = %bb.m, %bb.c
  %.val = load ptr, ptr %0, align 8, !tbaa !117
  %i.aj = getelementptr i8, ptr %0, i64 184
  %.val211 = load i32, ptr %i.aj, align 8, !tbaa !120
  %i.ak = icmp sgt i32 %.val211, 5
  %spec.store.select.i = zext i1 %i.ak to i32
  %i.al = call i32 @sqlite3_prepare_v3(ptr noundef %.val, ptr noundef nonnull %.0183, i32 noundef -1, i32 noundef %spec.store.select.i, ptr noundef nonnull %i.a, ptr noundef %2) #20
  %.not200 = icmp eq i32 %i.al, 0
  br i1 %.not200, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.am = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1896
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !151
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 464
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !149
  %i.ar = load ptr, ptr %0, align 8, !tbaa !117
  %i.as = call ptr @sqlite3_errmsg(ptr noundef %i.ar) #20
  %i.at = call ptr %i.aq(ptr noundef %i.as, i32 noundef -1) #20
  call void %i.ao(ptr noundef %i.g, ptr noundef %i.at) #20
  br label %.thread217

bb.p:                                             ; preds = %._crit_edge
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.aw = load ptr, ptr %0, align 8, !tbaa !117
  %i.ax = call i32 @sqlite3_errcode(ptr noundef %i.aw) #20
  %.not201 = icmp eq i32 %i.ax, 0
  br i1 %.not201, label %.thread217, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1896
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !151
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 464
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !149
  %i.bd = load ptr, ptr %0, align 8, !tbaa !117
  %i.be = call ptr @sqlite3_errmsg(ptr noundef %i.bd) #20
  %i.bf = call ptr %i.bc(ptr noundef %i.be, i32 noundef -1) #20
  call void %i.ba(ptr noundef %i.g, ptr noundef %i.bf) #20
  br label %.thread217

bb.s:                                             ; preds = %bb.p
  %i.bg = call i32 @sqlite3_bind_parameter_count(ptr noundef nonnull %i.au) #20 ; 2 uses
  %i.bh = shl i32 %i.bg, 3
  %i.bi = add i32 %i.bh, 56                       ; 2 uses
  %i.bj = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !109
  %i.bm = call ptr %i.bl(i32 noundef %i.bi) #20   ; 7 uses
  %i.bn = sext i32 %i.bi to i64
  call void @llvm.memset.p0.i64(ptr align 8 %i.bm, i8 0, i64 %i.bn, i1 false)
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !190
  %i.bq = load ptr, ptr %2, align 8, !tbaa !66
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.0183 to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !429
  %i.bw = call ptr @sqlite3_sql(ptr noundef %i.bo) #20
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !430
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !198
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.2182 = phi ptr [ %i.bm, %bb.s ], [ %.0180270, %bb.n ] ; 9 uses
  %.4179 = phi i32 [ %i.bg, %bb.s ], [ %i.ai, %bb.n ] ; 3 uses
  %.not202271 = icmp slt i32 %.4179, 1
  br i1 %.not202271, label %._crit_edge279.thread, label %.lr.ph278

._crit_edge279.thread:                            ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %.2182, i64 40
  store i32 0, ptr %i.ca, align 8, !tbaa !197
  store ptr %.2182, ptr %3, align 8, !tbaa !206
  br label %.thread217

.lr.ph278:                                        ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %.2182, i64 48 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.backedge, %.lr.ph278
  %.0161276 = phi i32 [ 0, %.lr.ph278 ], [ %.0161276.be, %.backedge ] ; 5 uses
  %.0167273 = phi i32 [ 1, %.lr.ph278 ], [ %.0167273.be, %.backedge ] ; 10 uses
  %.0168272 = phi i32 [ 0, %.lr.ph278 ], [ %.0168272.be.a, %.backedge ] ; 11 uses
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.ce = call ptr @sqlite3_bind_parameter_name(ptr noundef %i.cd, i32 noundef %.0167273) #20 ; 5 uses
  %.not203 = icmp eq ptr %i.ce, null
  br i1 %.not203, label %.thread244, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !29
  switch i8 %i.cf, label %.thread244 [
    i8 36, label %bb.w
    i8 58, label %bb.w
    i8 64, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v
  %i.cg = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2464
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !431
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.ck = call ptr %i.ci(ptr noundef %i.g, ptr noundef nonnull %i.cj, ptr noundef null, i32 noundef 0) #20 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.x, label %.thread234

bb.x:                                             ; preds = %bb.w
  %i.cm = load ptr, ptr %i.cb, align 8, !tbaa !131 ; 2 uses
  %.not204 = icmp eq ptr %i.cm, null
  br i1 %.not204, label %.thread228, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 464
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !149
  %i.cq = call ptr %i.cp(ptr noundef nonnull %i.cm, i32 noundef -1) #20 ; 7 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !143
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !143
  %i.ct = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 368
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !148
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 464
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !149
  %i.cy = call ptr %i.cx(ptr noundef nonnull %i.ce, i32 noundef -1) #20
  %i.cz = call i32 %i.cv(ptr noundef %i.g, ptr noundef nonnull %i.cq, ptr noundef %i.cy) #20 ; 0 uses
  %.not205 = icmp eq i32 %.0161276, 0
  br i1 %.not205, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1752
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !163
  call void %i.dc(ptr noundef %i.g) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dd = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2360
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !180
  %i.dg = call i32 %i.df(ptr noundef %i.g, ptr noundef nonnull %i.cq, i32 noundef 262144) #20
  %i.dh = load i32, ptr %i.cq, align 8, !tbaa !143 ; 2 uses
  %i.di = add nsw i32 %i.dh, -1
  store i32 %i.di, ptr %i.cq, align 8, !tbaa !143
  %i.dj = icmp slt i32 %i.dh, 2
  br i1 %i.dj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dk = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 256
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !144
  call void %i.dm(ptr noundef nonnull %i.cq) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  switch i32 %i.dg, label %.thread228 [
    i32 0, label %bb.ad
    i32 1, label %.thread259
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dn = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1344
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !134
  %i.dq = call ptr %i.dp(ptr noundef %i.g) #20    ; 2 uses
  %.not206 = icmp eq ptr %i.dq, null
  br i1 %.not206, label %.thread228, label %.thread234

.thread234:                                       ; preds = %bb.w, %bb.ad
  %.2239 = phi ptr [ %i.dq, %bb.ad ], [ %i.ck, %bb.w ] ; 13 uses
  %.1162238 = phi i32 [ 1, %bb.ad ], [ %.0161276, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.dr = getelementptr inbounds nuw i8, ptr %.2239, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !211 ; 2 uses
  %.not207 = icmp eq ptr %i.ds, null
  br i1 %.not207, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread234
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !213
  br label %bb.af

bb.af:                                            ; preds = %.thread234, %bb.ae
  %i.du = phi ptr [ %i.dt, %bb.ae ], [ @.str.6, %.thread234 ] ; 7 uses
  %i.dv = load i8, ptr %i.ce, align 1, !tbaa !29
  %i.dw = icmp eq i8 %i.dv, 64
  br i1 %i.dw, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dx = load i8, ptr %i.du, align 1, !tbaa !29
  switch i8 %i.dx, label %.critedge210.thread [
    i8 98, label %bb.ah
    i8 100, label %bb.ao
    i8 119, label %bb.aq
    i8 105, label %bb.ar
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dy = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(10) @.str.339) #21
  %i.dz = icmp eq i32 %i.dy, 0
  %i.ea = getelementptr inbounds nuw i8, ptr %.2239, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !214
  %i.ec = icmp eq ptr %i.eb, null                 ; 2 uses
  br i1 %i.dz, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ec, label %bb.aj, label %.critedge210.thread

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %i.ed = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 280
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !153
  %i.eg = call ptr %i.ef(ptr noundef nonnull %.2239, ptr noundef nonnull %i.b) #20
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.ei = load i32, ptr %i.b, align 4, !tbaa !30
  %i.ej = call i32 @sqlite3_bind_blob(ptr noundef %i.eh, i32 noundef %.0167273, ptr noundef %i.eg, i32 noundef %i.ei, ptr noundef null) #20 ; 0 uses
  %i.ek = load i32, ptr %.2239, align 8, !tbaa !143
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %.2239, align 8, !tbaa !143
  %i.em = load ptr, ptr %i.cc, align 8, !tbaa !198
  %i.en = add nsw i32 %.0168272, 1
  %i.eo = sext i32 %.0168272 to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.eo
  store ptr %.2239, ptr %i.ep, align 8, !tbaa !105
  br label %bb.at

bb.ak:                                            ; preds = %bb.ah
  br i1 %i.ec, label %bb.al, label %.critedge210.thread

bb.al:                                            ; preds = %bb.ak
  %i.eq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(14) @.str.340) #21
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.es = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(8) @.str.341) #21
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.an, label %.critedge210.thread

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.eu = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 272
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !108
  %i.ex = call i32 %i.ew(ptr noundef %i.g, ptr noundef nonnull %.2239, ptr noundef nonnull %i.c) #20 ; 0 uses
  %i.ey = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.ez = load i32, ptr %i.c, align 4, !tbaa !30
  %i.fa = call i32 @sqlite3_bind_int(ptr noundef %i.ey, i32 noundef %.0167273, i32 noundef %i.ez) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.at

bb.ao:                                            ; preds = %bb.ag
  %i.fb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(7) @.str.342) #21
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.ap, label %.critedge210.thread

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.fd = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 296
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !215
  %i.fg = call i32 %i.ff(ptr noundef %i.g, ptr noundef nonnull %.2239, ptr noundef nonnull %i.d) #20 ; 0 uses
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.fi = load double, ptr %i.d, align 8, !tbaa !217
  %i.fj = call i32 @sqlite3_bind_double(ptr noundef %i.fh, i32 noundef %.0167273, double noundef %i.fi) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.at

bb.aq:                                            ; preds = %bb.ag
  %i.fk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(8) @.str.343) #21
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.as, label %.critedge210.thread

bb.ar:                                            ; preds = %bb.ag
  %i.fm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(4) @.str.344) #21
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.as, label %.critedge210.thread

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.fo = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 3912
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !155
  %i.fr = call i32 %i.fq(ptr noundef %i.g, ptr noundef nonnull %.2239, ptr noundef nonnull %i.e) #20 ; 0 uses
  %i.fs = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.ft = load i64, ptr %i.e, align 8, !tbaa !154
  %i.fu = call i32 @sqlite3_bind_int64(ptr noundef %i.fs, i32 noundef %.0167273, i64 noundef %i.ft) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.at

.critedge210.thread:                              ; preds = %bb.ai, %bb.ag, %bb.ak, %bb.am, %bb.aq, %bb.ao, %bb.ar
  %i.fv = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 344
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !103
  %i.fy = call ptr %i.fx(ptr noundef nonnull %.2239, ptr noundef nonnull %i.b) #20
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.ga = load i32, ptr %i.b, align 4, !tbaa !30
  %i.gb = sext i32 %i.ga to i64
  %i.gc = call i32 @sqlite3_bind_text64(ptr noundef %i.fz, i32 noundef %.0167273, ptr noundef %i.fy, i64 noundef %i.gb, ptr noundef null, i8 noundef zeroext 1) #20 ; 0 uses
  %i.gd = load i32, ptr %.2239, align 8, !tbaa !143
  %i.ge = add nsw i32 %i.gd, 1
  store i32 %i.ge, ptr %.2239, align 8, !tbaa !143
  %i.gf = load ptr, ptr %i.cc, align 8, !tbaa !198
  %i.gg = add nsw i32 %.0168272, 1
  %i.gh = sext i32 %.0168272 to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.gh
  store ptr %.2239, ptr %i.gi, align 8, !tbaa !105
  br label %bb.at

bb.at:                                            ; preds = %bb.an, %bb.as, %.critedge210.thread, %bb.ap, %bb.aj
  %.1169 = phi i32 [ %i.en, %bb.aj ], [ %.0168272, %bb.an ], [ %.0168272, %bb.ap ], [ %.0168272, %bb.as ], [ %i.gg, %.critedge210.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.au

.thread228:                                       ; preds = %bb.ac, %bb.x, %bb.ad
  %.1162233 = phi i32 [ %.0161276, %bb.x ], [ 1, %bb.ad ], [ 1, %bb.ac ]
  %i.gj = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.gk = call i32 @sqlite3_bind_null(ptr noundef %i.gj, i32 noundef %.0167273) #20 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %.thread228, %bb.at
  %.1162232 = phi i32 [ %.1162238, %bb.at ], [ %.1162233, %.thread228 ]
  %.2170 = phi i32 [ %.1169, %bb.at ], [ %.0168272, %.thread228 ] ; 3 uses
  %.not208 = icmp eq i32 %.1162232, 0
  br i1 %.not208, label %.thread244, label %.thread244.thread

.thread259:                                       ; preds = %bb.ac
  %i.gl = getelementptr inbounds nuw i8, ptr %.2182, i64 40
  store i32 %.0168272, ptr %i.gl, align 8, !tbaa !197
  store ptr %.2182, ptr %3, align 8, !tbaa !206
  br label %.thread217

.thread244:                                       ; preds = %bb.au, %bb.u, %bb.v
  %.4165250 = phi i32 [ %.0161276, %bb.u ], [ %.0161276, %bb.v ], [ 0, %bb.au ] ; 2 uses
  %.5173249 = phi i32 [ %.0168272, %bb.u ], [ %.0168272, %bb.v ], [ %.2170, %bb.au ] ; 2 uses
  %exitcond.not = icmp eq i32 %.0167273, %.4179
  br i1 %exitcond.not, label %._crit_edge279, label %.backedge

.backedge:                                        ; preds = %.thread244, %.thread244.thread
  %.0161276.be = phi i32 [ %.4165250, %.thread244 ], [ 1, %.thread244.thread ]
  %.0168272.be.a = phi i32 [ %.5173249, %.thread244 ], [ %.2170, %.thread244.thread ]
  %.0167273.be = add nuw i32 %.0167273, 1
  br label %bb.u, !llvm.loop !428

.thread244.thread:                                ; preds = %bb.au
  %i.gm = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1752
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !163
  %i.gp = load ptr, ptr %i.f, align 8, !tbaa !122
  call void %i.go(ptr noundef %i.gp) #20
  %exitcond.not298 = icmp eq i32 %.0167273, %.4179
  br i1 %exitcond.not298, label %._crit_edge279.thread301, label %.backedge

._crit_edge279.thread301:                         ; preds = %.thread244.thread
  %i.gq = getelementptr inbounds nuw i8, ptr %.2182, i64 40
  store i32 %.2170, ptr %i.gq, align 8, !tbaa !197
  store ptr %.2182, ptr %3, align 8, !tbaa !206
  br label %bb.av

._crit_edge279:                                   ; preds = %.thread244
  %i.gr = icmp eq i32 %.4165250, 0
  %i.gs = getelementptr inbounds nuw i8, ptr %.2182, i64 40
  store i32 %.5173249, ptr %i.gs, align 8, !tbaa !197
  store ptr %.2182, ptr %3, align 8, !tbaa !206
  br i1 %i.gr, label %.thread217, label %bb.av

bb.av:                                            ; preds = %._crit_edge279.thread301, %._crit_edge279
  %i.gt = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1752
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !163
  %i.gw = load ptr, ptr %i.f, align 8, !tbaa !122
  call void %i.gv(ptr noundef %i.gw) #20
  br label %.thread217

.thread217:                                       ; preds = %._crit_edge279.thread, %bb.q, %bb.r, %bb.o, %.thread259, %._crit_edge279, %bb.av
  %.1185 = phi i32 [ 1, %.thread259 ], [ 0, %bb.av ], [ 0, %._crit_edge279 ], [ 0, %bb.q ], [ 1, %bb.r ], [ 1, %bb.o ], [ 0, %._crit_edge279.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.1185
}

declare i32 @sqlite3_stmt_status(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @dbReleaseStmt(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.o, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !198
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !143  ; 2 uses
  %i.j = add nsw i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !143
  %i.k = icmp slt i32 %i.i, 2
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !144
  tail call void %i.n(ptr noundef nonnull %i.h) #20
  %.pre = load i32, ptr %i.a, align 8, !tbaa !197
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi i32 [ %.pre, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.d, %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !197
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !120  ; 2 uses
  %i.t = icmp slt i32 %i.s, 1
  %i.u = icmp ne i32 %2, 0
  %or.cond = or i1 %i.u, %i.t
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !190
  %i.x = tail call i32 @sqlite3_finalize(ptr noundef %i.w) #20 ; 0 uses
  %i.y = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !119
  tail call void %i.aa(ptr noundef nonnull %1) #20, !inline_history !9
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !187 ; 3 uses
  store ptr %i.ac, ptr %1, align 8, !tbaa !189
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !231
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %1, ptr %i.ae, align 8, !tbaa !231
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %1, ptr %i.ab, align 8, !tbaa !187
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !232
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %1, ptr %i.af, align 8, !tbaa !232
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !191 ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1                    ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !191
  %.not35 = icmp slt i32 %i.aj, %i.s
  br i1 %.not35, label %.loopexit, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.j, %.lr.ph34
  %i.al = phi i32 [ %i.aw, %.lr.ph34 ], [ %i.ak, %bb.j ]
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !232 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !231 ; 2 uses
  store ptr %i.ao, ptr %i.af, align 8, !tbaa !232
  store ptr null, ptr %i.ao, align 8, !tbaa !189
  %i.ap = add nsw i32 %i.al, -1
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !191
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !190
  %i.as = tail call i32 @sqlite3_finalize(ptr noundef %i.ar) #20 ; 0 uses
  %i.at = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !119
  tail call void %i.av(ptr noundef %i.am) #20, !inline_history !9
  %i.aw = load i32, ptr %i.ai, align 4, !tbaa !191 ; 2 uses
  %i.ax = load i32, ptr %i.r, align 8, !tbaa !120
  %i.ay = icmp sgt i32 %i.aw, %i.ax
  br i1 %i.ay, label %.lr.ph34, label %.loopexit, !llvm.loop !432

.loopexit:                                        ; preds = %.lr.ph34, %bb.j, %bb.e
  ret void
}

declare i32 @sqlite3_bind_parameter_count(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_sql(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_bind_parameter_name(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_int(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_double(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_int64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_text64(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare i32 @sqlite3_prepare_v3(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @sqlite3_column_double(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @delDatabaseRef(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !125
  %i.c = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !125
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %.not8.i = icmp eq ptr %i.f, null
  br i1 %.not8.i, label %flushStmtCache.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.09.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.09.i, align 8, !tbaa !189 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !190
  %i.j = tail call i32 @sqlite3_finalize(ptr noundef %i.i) #20 ; 0 uses
  %i.k = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !119
  tail call void %i.m(ptr noundef nonnull %.09.i) #20, !inline_history !433
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %flushStmtCache.exit, label %.lr.ph.i, !llvm.loop !10

flushStmtCache.exit:                              ; preds = %.lr.ph.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 0, ptr %i.n, align 4, !tbaa !191
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !224  ; 2 uses
  %.not6.i = icmp eq ptr %i.p, null
  br i1 %.not6.i, label %closeIncrblobChannels.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %flushStmtCache.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i79
  %.07.i = phi ptr [ %i.p, %.lr.ph.i79 ], [ %i.s, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.07.i, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !225  ; 2 uses
  %i.t = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2032
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !438
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !122
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !223
  %i.z = tail call i32 %i.v(ptr noundef %i.w, ptr noundef %i.y) #20, !inline_history !434 ; 0 uses
  %.not.i80 = icmp eq ptr %i.s, null
  br i1 %.not.i80, label %closeIncrblobChannels.exit, label %bb.c, !llvm.loop !435

closeIncrblobChannels.exit:                       ; preds = %bb.c, %flushStmtCache.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !117
  %i.ab = tail call i32 @sqlite3_close(ptr noundef %i.aa) #20 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !207 ; 2 uses
  %.not81 = icmp eq ptr %i.ad, null
  br i1 %.not81, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.e, %closeIncrblobChannels.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !137 ; 2 uses
  %.not6682 = icmp eq ptr %i.af, null
  br i1 %.not6682, label %._crit_edge, label %.lr.ph83

.lr.ph:                                           ; preds = %closeIncrblobChannels.exit, %bb.e
  %i.ag = phi ptr [ %i.au, %bb.e ], [ %i.ad, %closeIncrblobChannels.exit ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !210
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !207
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !165 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !143 ; 2 uses
  %i.am = add nsw i32 %i.al, -1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !143
  %i.an = icmp slt i32 %i.al, 2
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ao = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 256
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !144
  tail call void %i.aq(ptr noundef nonnull %i.ak) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.ar = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !119
  tail call void %i.at(ptr noundef nonnull %i.ag) #20
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !207 ; 2 uses
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !436

.lr.ph83:                                         ; preds = %.preheader, %.lr.ph83
  %i.av = phi ptr [ %i.bb, %.lr.ph83 ], [ %i.af, %.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !138
  store ptr %i.ax, ptr %i.ae, align 8, !tbaa !137
  %i.ay = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !119
  tail call void %i.ba(ptr noundef nonnull %i.av) #20
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !137 ; 2 uses
  %.not66 = icmp eq ptr %i.bb, null
  br i1 %.not66, label %._crit_edge, label %.lr.ph83, !llvm.loop !437

._crit_edge:                                      ; preds = %.lr.ph83, %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !132 ; 2 uses
  %.not67 = icmp eq ptr %i.bd, null
  br i1 %.not67, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.be = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !119
  tail call void %i.bg(ptr noundef nonnull %i.bd) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !172 ; 2 uses
  %.not68 = icmp eq ptr %i.bi, null
  br i1 %.not68, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !119
  tail call void %i.bl(ptr noundef nonnull %i.bi) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !173 ; 2 uses
  %.not69 = icmp eq ptr %i.bn, null
  br i1 %.not69, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !119
  tail call void %i.bq(ptr noundef nonnull %i.bn) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !170 ; 2 uses
  %.not70 = icmp eq ptr %i.bs, null
  br i1 %.not70, label %bb.m, label %bb.l
end_hunk_3
