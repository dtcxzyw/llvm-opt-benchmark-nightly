Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avsscanf?download=true
inline.NumInlined: 70
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ff_vfscanf:bb.a

..critedge12.i.loopexit1201_crit_edge:            ; preds = %ffshgetc.exit385.i, %bb.fp
  br label %.critedge12.i, !llvm.loop !40

.critedge12.i:                                    ; preds = %.lr.ph453.i, %.lr.ph680, %ffshgetc.exit345.i, %..critedge12.i.loopexit1201_crit_edge, %._crit_edge459.i, %._crit_edge477.i, %bb.ew, %.preheader435.i, %.critedge.i
  %.0171418.i = phi i32 [ 10, %.critedge.i ], [ %.0171419.i, %._crit_edge459.i ], [ %.0171419.i, %._crit_edge477.i ], [ %.0171419.i, %.preheader435.i ], [ %.0171419.i, %..critedge12.i.loopexit1201_crit_edge ], [ %.0171419.i, %bb.ew ], [ %.0171419.i, %ffshgetc.exit345.i ], [ %.0171419.i, %.lr.ph680 ], [ 10, %.lr.ph453.i ] ; 2 uses
  %.0163411416.i = phi i64 [ %.0163411.i, %.critedge.i ], [ %.0163411417.i, %._crit_edge459.i ], [ %.0163411417.i, %._crit_edge477.i ], [ %.0163411417.i, %.preheader435.i ], [ %.0163411417.i, %..critedge12.i.loopexit1201_crit_edge ], [ %.0163411417.i, %bb.ew ], [ %.0163411417.i, %ffshgetc.exit345.i ], [ %.0163411417.i, %.lr.ph680 ], [ %.0163411.i, %.lr.ph453.i ]
  %.8.i = phi i32 [ %i.abc, %.critedge.i ], [ %i.ahi, %._crit_edge459.i ], [ %i.adm, %._crit_edge477.i ], [ %.1166420.i, %.preheader435.i ], [ %i.ajk, %..critedge12.i.loopexit1201_crit_edge ], [ %.1166420.i, %bb.ew ], [ %i.afn, %ffshgetc.exit345.i ], [ %i.ajk, %.lr.ph680 ], [ %i.abc, %.lr.ph453.i ]
  %.3.i = phi i64 [ %i.zt, %.critedge.i ], [ %i.ahq, %._crit_edge459.i ], [ %i.adu, %._crit_edge477.i ], [ 0, %.preheader435.i ], [ %i.ahz, %..critedge12.i.loopexit1201_crit_edge ], [ 0, %bb.ew ], [ %i.aec, %ffshgetc.exit345.i ], [ %i.ahz, %.lr.ph680 ], [ %i.zt, %.lr.ph453.i ]
  %i.ajq = sext i32 %.8.i to i64
  %i.ajr = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @table, i64 1), i64 %i.ajq
  %i.ajs = load i8, ptr %i.ajr, align 1, !tbaa !20
  %i.ajt = zext i8 %i.ajs to i32
  %i.aju = icmp samesign ugt i32 %.0171418.i, %i.ajt
  br i1 %i.aju, label %.lr.ph485.i, label %.critedge.thread.i

.lr.ph485.i:                                      ; preds = %.critedge12.i, %ffshgetc.exit405.i
  %i.ajv = load ptr, ptr %i.aq, align 8, !tbaa !18 ; 4 uses
  %i.ajw = load ptr, ptr %i.as, align 8, !tbaa !23
  %i.ajx = icmp ult ptr %i.ajv, %i.ajw
  br i1 %i.ajx, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %.lr.ph485.i
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajv, i64 1
  store ptr %i.ajy, ptr %i.aq, align 8, !tbaa !18
  %i.ajz = load i8, ptr %i.ajv, align 1, !tbaa !20
  %i.aka = zext i8 %i.ajz to i64
  br label %ffshgetc.exit405.i

bb.fy:                                            ; preds = %.lr.ph485.i
  %i.akb = load i64, ptr %i.ar, align 8, !tbaa !22
  %i.akc = load ptr, ptr %i.ap, align 8, !tbaa !15 ; 2 uses
  %i.akd = ptrtoint ptr %i.ajv to i64             ; 2 uses
  %i.ake = ptrtoint ptr %i.akc to i64             ; 2 uses
  %i.akf = sub i64 %i.akd, %i.ake
  %i.akg = add nsw i64 %i.akf, %i.akb             ; 3 uses
  %i.akh = load i64, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %.not.i386.i = icmp eq i64 %i.akh, 0
  %.not37.i387.i = icmp slt i64 %i.akg, %i.akh
  %or.cond.i388.i = select i1 %.not.i386.i, i1 true, i1 %.not37.i387.i
  br i1 %or.cond.i388.i, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #8
  %i.aki = load i64, ptr %0, align 8, !tbaa !14
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.aki ; 2 uses
  store ptr %i.akj, ptr %.phi.trans.insert.i300, align 8, !tbaa !19
  store ptr %i.akj, ptr %i.aq, align 8, !tbaa !18
  %i.akk = load ptr, ptr %i.at, align 8, !tbaa !17
  %i.akl = call i64 %i.akk(ptr noundef nonnull %0, ptr noundef nonnull %i.r, i64 noundef 1) #8, !inline_history !34
  %.not40.i392.i = icmp eq i64 %i.akl, 1
  %i.akm = load i8, ptr %i.r, align 1             ; 3 uses
  %i.akn = zext i8 %i.akm to i64                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #8
  br i1 %.not40.i392.i, label %bb.gb, label %._crit_edge.i393.i

._crit_edge.i393.i:                               ; preds = %bb.fz
  %.pre.i394.i = load ptr, ptr %i.ap, align 8, !tbaa !15
  %.pre42.i395.i = load ptr, ptr %i.aq, align 8, !tbaa !18
  %.pre46.i396.i = ptrtoint ptr %.pre.i394.i to i64
  %.pre48.i397.i = ptrtoint ptr %.pre42.i395.i to i64
  br label %bb.ga

bb.ga:                                            ; preds = %._crit_edge.i393.i, %bb.fy
  %.pre-phi49.i389.i = phi i64 [ %.pre48.i397.i, %._crit_edge.i393.i ], [ %i.akd, %bb.fy ]
  %.pre-phi47.i390.i = phi i64 [ %.pre46.i396.i, %._crit_edge.i393.i ], [ %i.ake, %bb.fy ]
  %i.ako = sub i64 %i.akg, %.pre-phi49.i389.i
  %i.akp = add i64 %i.ako, %.pre-phi47.i390.i
  store i64 %i.akp, ptr %i.ar, align 8, !tbaa !22
  store ptr null, ptr %i.as, align 8, !tbaa !23
  br label %ffshgetc.exit405.i

bb.gb:                                            ; preds = %bb.fz
  %i.akq = add nsw i64 %i.akg, 1                  ; 2 uses
  %i.akr = load i64, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %.not38.i398.i = icmp eq i64 %i.akr, 0
  %.pre43.i399.i = load ptr, ptr %.phi.trans.insert.i300, align 8, !tbaa !19 ; 2 uses
  %.pre44.pre.i400.i = load ptr, ptr %i.aq, align 8, !tbaa !18 ; 3 uses
  %i.aks = ptrtoint ptr %.pre43.i399.i to i64
  %i.akt = ptrtoint ptr %.pre44.pre.i400.i to i64 ; 2 uses
  %i.aku = sub i64 %i.aks, %i.akt
  %i.akv = sub nsw i64 %i.akr, %i.akq             ; 2 uses
  %i.akw = icmp sle i64 %i.aku, %i.akv
  %i.akx = getelementptr inbounds i8, ptr %.pre44.pre.i400.i, i64 %i.akv
  %i.aky = select i1 %.not38.i398.i, i1 true, i1 %i.akw
  %.pre43.sink.i402.i = select i1 %i.aky, ptr %.pre43.i399.i, ptr %i.akx
  store ptr %.pre43.sink.i402.i, ptr %i.as, align 8, !tbaa !23
  %i.akz = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.ala = ptrtoint ptr %i.akz to i64
  %i.alb = sub i64 %i.akq, %i.akt
  %i.alc = add i64 %i.alb, %i.ala
  store i64 %i.alc, ptr %i.ar, align 8, !tbaa !22
  %i.ald = getelementptr inbounds i8, ptr %.pre44.pre.i400.i, i64 -1 ; 2 uses
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !20
  %.not39.i404.i = icmp eq i8 %i.akm, %i.ale
  br i1 %.not39.i404.i, label %ffshgetc.exit405.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  store i8 %i.akm, ptr %i.ald, align 1, !tbaa !20
  br label %ffshgetc.exit405.i

ffshgetc.exit405.i:                               ; preds = %bb.gc, %bb.gb, %bb.ga, %bb.fx
  %i.alf = phi i64 [ %i.aka, %bb.fx ], [ -1, %bb.ga ], [ %i.akn, %bb.gc ], [ %i.akn, %bb.gb ]
  %i.alg = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @table, i64 1), i64 %i.alf
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !20
  %i.ali = zext i8 %i.alh to i32
  %i.alj = icmp samesign ugt i32 %.0171418.i, %i.ali
  br i1 %i.alj, label %.lr.ph485.i, label %._crit_edge486.i, !llvm.loop !41

._crit_edge486.i:                                 ; preds = %ffshgetc.exit405.i
  %i.alk = tail call ptr @__errno_location() #10
  store i32 34, ptr %i.alk, align 4, !tbaa !65
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %._crit_edge486.i, %.critedge12.i, %.critedge.i, %._crit_edge.i390
  %.1164.ph.i = phi i64 [ %.0163411.i, %.critedge.i ], [ %.0163411416.i, %.critedge12.i ], [ 0, %._crit_edge486.i ], [ %.0163411.i, %._crit_edge.i390 ] ; 2 uses
  %.4.ph.i = phi i64 [ %i.zt, %.critedge.i ], [ %.3.i, %.critedge12.i ], [ -1, %._crit_edge486.i ], [ %.0160.lcssa.i, %._crit_edge.i390 ] ; 2 uses
  %.pr.i = load ptr, ptr %i.as, align 8, !tbaa !23
  %.not197.i = icmp eq ptr %.pr.i, null
  %.pre829.pre = load ptr, ptr %i.aq, align 8, !tbaa !18 ; 2 uses
  br i1 %.not197.i, label %ffintscan.exit, label %bb.gd

bb.gd:                                            ; preds = %.critedge.thread.i
  %i.all = getelementptr inbounds i8, ptr %.pre829.pre, i64 -1 ; 2 uses
  store ptr %i.all, ptr %i.aq, align 8, !tbaa !18
  br label %ffintscan.exit

ffintscan.exit:                                   ; preds = %.thread577.i, %.critedge.thread.i, %bb.gd
  %.pre829 = phi ptr [ %.pre829844, %.thread577.i ], [ %.pre829.pre, %.critedge.thread.i ], [ %i.all, %bb.gd ]
  %.4582.i = phi i64 [ %i.zt, %.thread577.i ], [ %.4.ph.i, %.critedge.thread.i ], [ %.4.ph.i, %bb.gd ]
  %.1164581.i = phi i64 [ %.0163411.i, %.thread577.i ], [ %.1164.ph.i, %.critedge.thread.i ], [ %.1164.ph.i, %bb.gd ] ; 2 uses
  %i.alm = xor i64 %.1164581.i, %.4582.i
  %i.aln = sub i64 %i.alm, %.1164581.i            ; 6 uses
  %.pre828 = load i64, ptr %i.ar, align 8, !tbaa !22
  %.pre830 = load ptr, ptr %i.ap, align 8, !tbaa !15
  %.pre845 = ptrtoint ptr %.pre829 to i64
  %.pre846 = ptrtoint ptr %.pre830 to i64
  %.pre848 = sub i64 %.pre846, %.pre845
  %i.alo = icmp eq i64 %.pre828, %.pre848
  br i1 %i.alo, label %.loopexit527, label %bb.ge

bb.ge:                                            ; preds = %ffintscan.exit
  %i.alp = icmp eq i32 %spec.select241, 112
  %i.alq = icmp ne ptr %.0187, null
  %or.cond3 = select i1 %i.alp, i1 %i.alq, i1 false
  br i1 %or.cond3, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.alr = inttoptr i64 %i.aln to ptr
  store ptr %i.alr, ptr %.0187, align 8, !tbaa !62
  br label %store_int.exit393

bb.gg:                                            ; preds = %bb.ge
  %.not.i392 = icmp eq ptr %.0187, null
  br i1 %.not.i392, label %store_int.exit393, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  switch i32 %spec.select240, label %store_int.exit393 [
    i32 -2, label %bb.gi
    i32 -1, label %bb.gj
    i32 0, label %bb.gk
    i32 1, label %bb.gl
    i32 3, label %bb.gm
  ]

bb.gi:                                            ; preds = %bb.gh
  %i.als = trunc i64 %i.aln to i8
  store i8 %i.als, ptr %.0187, align 1, !tbaa !20
  br label %store_int.exit393

bb.gj:                                            ; preds = %bb.gh
  %i.alt = trunc i64 %i.aln to i16
  store i16 %i.alt, ptr %.0187, align 2, !tbaa !64
  br label %store_int.exit393

bb.gk:                                            ; preds = %bb.gh
  %i.alu = trunc i64 %i.aln to i32
  store i32 %i.alu, ptr %.0187, align 4, !tbaa !65
  br label %store_int.exit393

bb.gl:                                            ; preds = %bb.gh
  store i64 %i.aln, ptr %.0187, align 8, !tbaa !66
  br label %store_int.exit393

bb.gm:                                            ; preds = %bb.gh
  store i64 %i.aln, ptr %.0187, align 8, !tbaa !68
  br label %store_int.exit393

bb.gn:                                            ; preds = %bb.by, %bb.by, %bb.by, %bb.by, %bb.by, %bb.by, %bb.by, %bb.by
  switch i32 %spec.select240, label %fffloatscan.exit [
    i32 0, label %bb.gp
    i32 1, label %bb.go
    i32 2, label %bb.go
  ]

bb.go:                                            ; preds = %bb.gn, %bb.gn
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.alv = phi i1 [ false, %bb.gn ], [ true, %bb.go ]
  %.0108.i = phi i32 [ 24, %bb.gn ], [ 53, %bb.go ] ; 10 uses
  %.0107.i = phi i32 [ -149, %bb.gn ], [ -1074, %bb.go ] ; 9 uses
  br label %bb.gq

.backedge.i455:                                   ; preds = %ffshgetc.exit.i453, %ffshgetc.exit.i453, %ffshgetc.exit.i453, %ffshgetc.exit.i453, %ffshgetc.exit.i453, %ffshgetc.exit.i453
  %.pre818 = load ptr, ptr %i.as, align 8, !tbaa !23
  br label %bb.gq

bb.gq:                                            ; preds = %.backedge.i455, %bb.gp
  %i.alw = phi ptr [ %.pre818, %.backedge.i455 ], [ %i.mk, %bb.gp ]
  %i.alx = load ptr, ptr %i.aq, align 8, !tbaa !18 ; 4 uses
  %i.aly = icmp ult ptr %i.alx, %i.alw
  br i1 %i.aly, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alx, i64 1
  store ptr %i.alz, ptr %i.aq, align 8, !tbaa !18
  %i.ama = load i8, ptr %i.alx, align 1, !tbaa !20
  br label %ffshgetc.exit.i453

bb.gs:                                            ; preds = %bb.gq
  %i.amb = load i64, ptr %i.ar, align 8, !tbaa !22
  %i.amc = load ptr, ptr %i.ap, align 8, !tbaa !15 ; 2 uses
  %i.amd = ptrtoint ptr %i.alx to i64             ; 2 uses
  %i.ame = ptrtoint ptr %i.amc to i64             ; 2 uses
  %i.amf = sub i64 %i.amd, %i.ame
  %i.amg = add nsw i64 %i.amf, %i.amb             ; 3 uses
  %i.amh = load i64, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %.not.i.i394 = icmp eq i64 %i.amh, 0
  %.not37.i.i395 = icmp slt i64 %i.amg, %i.amh
  %or.cond.i.i396 = select i1 %.not.i.i394, i1 true, i1 %.not37.i.i395
  br i1 %or.cond.i.i396, label %bb.gt, label %av_isspace.exit.thread.i

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #8
  %i.ami = load i64, ptr %0, align 8, !tbaa !14
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.ami ; 2 uses
  store ptr %i.amj, ptr %.phi.trans.insert.i300, align 8, !tbaa !19
  store ptr %i.amj, ptr %i.aq, align 8, !tbaa !18
  %i.amk = load ptr, ptr %i.at, align 8, !tbaa !17
  %i.aml = call i64 %i.amk(ptr noundef nonnull %0, ptr noundef nonnull %i.q, i64 noundef 1) #8, !inline_history !42
  %.not40.i.i442 = icmp eq i64 %i.aml, 1
  %i.amm = load i8, ptr %i.q, align 1             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  br i1 %.not40.i.i442, label %bb.gu, label %._crit_edge.i.i443

._crit_edge.i.i443:                               ; preds = %bb.gt
  %.pre.i.i444 = load ptr, ptr %i.ap, align 8, !tbaa !15
  %.pre42.i.i445 = load ptr, ptr %i.aq, align 8, !tbaa !18
  %.pre46.i.i446 = ptrtoint ptr %.pre.i.i444 to i64
  %.pre48.i.i447 = ptrtoint ptr %.pre42.i.i445 to i64
  br label %av_isspace.exit.thread.i

av_isspace.exit.thread.i:                         ; preds = %bb.gs, %._crit_edge.i.i443
  %.pre-phi49.i.i397 = phi i64 [ %.pre48.i.i447, %._crit_edge.i.i443 ], [ %i.amd, %bb.gs ]
  %.pre-phi47.i.i398 = phi i64 [ %.pre46.i.i446, %._crit_edge.i.i443 ], [ %i.ame, %bb.gs ]
  %i.amn = sub i64 %i.amg, %.pre-phi49.i.i397
  %i.amo = add i64 %i.amn, %.pre-phi47.i.i398
  br label %.thread1055

bb.gu:                                            ; preds = %bb.gt
  %i.amp = add nsw i64 %i.amg, 1                  ; 2 uses
  %i.amq = load i64, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %.not38.i.i448 = icmp eq i64 %i.amq, 0
  %.pre43.i.i449 = load ptr, ptr %.phi.trans.insert.i300, align 8, !tbaa !19 ; 2 uses
  %.pre44.pre.i.i450 = load ptr, ptr %i.aq, align 8, !tbaa !18 ; 3 uses
  %i.amr = ptrtoint ptr %.pre43.i.i449 to i64
  %i.ams = ptrtoint ptr %.pre44.pre.i.i450 to i64 ; 2 uses
  %i.amt = sub i64 %i.amr, %i.ams
  %i.amu = sub nsw i64 %i.amq, %i.amp             ; 2 uses
  %i.amv = icmp sle i64 %i.amt, %i.amu
  %i.amw = getelementptr inbounds i8, ptr %.pre44.pre.i.i450, i64 %i.amu
  %i.amx = select i1 %.not38.i.i448, i1 true, i1 %i.amv
  %.pre43.sink.i.i451 = select i1 %i.amx, ptr %.pre43.i.i449, ptr %i.amw
  store ptr %.pre43.sink.i.i451, ptr %i.as, align 8, !tbaa !23
  %i.amy = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.amz = ptrtoint ptr %i.amy to i64
  %i.ana = sub i64 %i.amp, %i.ams
  %i.anb = add i64 %i.ana, %i.amz
  store i64 %i.anb, ptr %i.ar, align 8, !tbaa !22
  %i.anc = getelementptr inbounds i8, ptr %.pre44.pre.i.i450, i64 -1 ; 2 uses
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !20
  %.not39.i.i452 = icmp eq i8 %i.amm, %i.and
  br i1 %.not39.i.i452, label %ffshgetc.exit.i453, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  store i8 %i.amm, ptr %i.anc, align 1, !tbaa !20
  br label %ffshgetc.exit.i453

ffshgetc.exit.i453:                               ; preds = %bb.gv, %bb.gu, %bb.gr
  %.in.i454 = phi i8 [ %i.ama, %bb.gr ], [ %i.amm, %bb.gu ], [ %i.amm, %bb.gv ] ; 3 uses
  switch i8 %.in.i454, label %ffshgetc.exit158.i [
    i8 32, label %.backedge.i455
    i8 13, label %.backedge.i455
    i8 12, label %.backedge.i455
    i8 10, label %.backedge.i455
    i8 9, label %.backedge.i455
    i8 11, label %.backedge.i455
    i8 45, label %bb.gw
    i8 43, label %bb.gw
  ]

bb.gw:                                            ; preds = %ffshgetc.exit.i453, %ffshgetc.exit.i453
  %i.ane = icmp eq i8 %.in.i454, 45
  %i.anf = select i1 %i.ane, i32 -1, i32 1        ; 4 uses
  %i.ang = load ptr, ptr %i.aq, align 8, !tbaa !18 ; 4 uses
  %i.anh = load ptr, ptr %i.as, align 8, !tbaa !23
  %i.ani = icmp ult ptr %i.ang, %i.anh
  br i1 %i.ani, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ang, i64 1
  store ptr %i.anj, ptr %i.aq, align 8, !tbaa !18
  %i.ank = load i8, ptr %i.ang, align 1, !tbaa !20
  br label %ffshgetc.exit158.i

bb.gy:                                            ; preds = %bb.gw
  %i.anl = load i64, ptr %i.ar, align 8, !tbaa !22
  %i.anm = load ptr, ptr %i.ap, align 8, !tbaa !15 ; 2 uses
  %i.ann = ptrtoint ptr %i.ang to i64             ; 2 uses
  %i.ano = ptrtoint ptr %i.anm to i64             ; 2 uses
  %i.anp = sub i64 %i.ann, %i.ano
  %i.anq = add nsw i64 %i.anp, %i.anl             ; 3 uses
  %i.anr = load i64, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %.not.i139.i = icmp eq i64 %i.anr, 0
  %.not37.i140.i = icmp slt i64 %i.anq, %i.anr
  %or.cond.i141.i = select i1 %.not.i139.i, i1 true, i1 %.not37.i140.i
  br i1 %or.cond.i141.i, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #8
  %i.ans = load i64, ptr %0, align 8, !tbaa !14
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anm, i64 %i.ans ; 2 uses
  store ptr %i.ant, ptr %.phi.trans.insert.i300, align 8, !tbaa !19
  store ptr %i.ant, ptr %i.aq, align 8, !tbaa !18
  %i.anu = load ptr, ptr %i.at, align 8, !tbaa !17
  %i.anv = call i64 %i.anu(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i64 noundef 1) #8, !inline_history !42
  %.not40.i145.i = icmp eq i64 %i.anv, 1
  %i.anw = load i8, ptr %i.p, align 1             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #8
  br i1 %.not40.i145.i, label %bb.hb, label %._crit_edge.i146.i

._crit_edge.i146.i:                               ; preds = %bb.gz
  %.pre.i147.i = load ptr, ptr %i.ap, align 8, !tbaa !15
  %.pre42.i148.i = load ptr, ptr %i.aq, align 8, !tbaa !18
  %.pre46.i149.i = ptrtoint ptr %.pre.i147.i to i64
  %.pre48.i150.i = ptrtoint ptr %.pre42.i148.i to i64
  br label %bb.ha

bb.ha:                                            ; preds = %._crit_edge.i146.i, %bb.gy
  %.pre-phi49.i142.i = phi i64 [ %.pre48.i150.i, %._crit_edge.i146.i ], [ %i.ann, %bb.gy ]
  %.pre-phi47.i143.i = phi i64 [ %.pre46.i149.i, %._crit_edge.i146.i ], [ %i.ano, %bb.gy ]
  %i.anx = sub i64 %i.anq, %.pre-phi49.i142.i
  %i.any = add i64 %i.anx, %.pre-phi47.i143.i
  br label %.thread1055

bb.hb:                                            ; preds = %bb.gz
  %i.anz = add nsw i64 %i.anq, 1                  ; 2 uses
  %i.aoa = load i64, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %.not38.i151.i = icmp eq i64 %i.aoa, 0
  %.pre43.i152.i = load ptr, ptr %.phi.trans.insert.i300, align 8, !tbaa !19 ; 2 uses
  %.pre44.pre.i153.i = load ptr, ptr %i.aq, align 8, !tbaa !18 ; 3 uses
  %i.aob = ptrtoint ptr %.pre43.i152.i to i64
  %i.aoc = ptrtoint ptr %.pre44.pre.i153.i to i64 ; 2 uses
  %i.aod = sub i64 %i.aob, %i.aoc
  %i.aoe = sub nsw i64 %i.aoa, %i.anz             ; 2 uses
  %i.aof = icmp sle i64 %i.aod, %i.aoe
  %i.aog = getelementptr inbounds i8, ptr %.pre44.pre.i153.i, i64 %i.aoe
  %i.aoh = select i1 %.not38.i151.i, i1 true, i1 %i.aof
  %.pre43.sink.i155.i = select i1 %i.aoh, ptr %.pre43.i152.i, ptr %i.aog
  store ptr %.pre43.sink.i155.i, ptr %i.as, align 8, !tbaa !23
  %i.aoi = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.aoj = ptrtoint ptr %i.aoi to i64
  %i.aok = sub i64 %i.anz, %i.aoc
  %i.aol = add i64 %i.aok, %i.aoj
  store i64 %i.aol, ptr %i.ar, align 8, !tbaa !22
  %i.aom = getelementptr inbounds i8, ptr %.pre44.pre.i153.i, i64 -1 ; 2 uses
  %i.aon = load i8, ptr %i.aom, align 1, !tbaa !20
  %.not39.i157.i = icmp eq i8 %i.anw, %i.aon
  br i1 %.not39.i157.i, label %ffshgetc.exit158.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  store i8 %i.anw, ptr %i.aom, align 1, !tbaa !20
  br label %ffshgetc.exit158.i

ffshgetc.exit158.i:                               ; preds = %ffshgetc.exit.i453, %bb.hc, %bb.hb, %bb.gx
  %.0115.i = phi i32 [ %i.anf, %bb.hc ], [ %i.anf, %bb.gx ], [ %i.anf, %bb.hb ], [ 1, %ffshgetc.exit.i453 ] ; 10 uses
  %.0.i399.in = phi i8 [ %i.anw, %bb.hc ], [ %i.ank, %bb.gx ], [ %i.anw, %bb.hb ], [ %.in.i454, %ffshgetc.exit.i453 ] ; 3 uses
  %.0.i399 = zext i8 %.0.i399.in to i32           ; 3 uses
  %i.aoo = and i32 %.0.i399, 223
  %i.aop = icmp eq i32 %i.aoo, 73
  br i1 %i.aop, label %.lr.ph669.preheader, label %.preheader337.i

.lr.ph669:                                        ; preds = %ffshgetc.exit178.i
  %.not137.i = icmp eq i64 %i.aqa, 7
  br i1 %.not137.i, label %.critedge.thread.i441, label %.lr.ph669.preheader

.lr.ph669.preheader:                              ; preds = %ffshgetc.exit158.i, %.lr.ph669
  %.0109388.i6681340 = phi i64 [ %i.aqa, %.lr.ph669 ], [ 0, %ffshgetc.exit158.i ]
  %i.aoq = load ptr, ptr %i.aq, align 8, !tbaa !18 ; 4 uses
  %i.aor = load ptr, ptr %i.as, align 8, !tbaa !23
end_hunk_0
begin_hunk_1_@ff_vfscanf:bb.a
  br i1 %i.bzv, label %.thread311.i, label %bb.oj

bb.oi:                                            ; preds = %bb.ok
  %i.byn = load i32, ptr %i.cac, align 4, !tbaa !65
  %or.cond708.i.i = icmp ult i32 %i.byn, 254740992
  %or.cond709.i.i = select i1 %or.cond708.i.i, i1 %i.cad, i1 false
  br i1 %or.cond709.i.i, label %.preheader.i276.thread.i, label %.thread514.i.i

bb.oj:                                            ; preds = %.critedge5.i.i
  %i.byo = load i32, ptr %i.bzy, align 4, !tbaa !65 ; 3 uses
  %i.byp = icmp ult i32 %i.byo, 9007199
  br i1 %i.byp, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %.not664.i.i = icmp eq i32 %i.byo, 9007199
  br i1 %.not664.i.i, label %bb.oi, label %.thread514.i.i

bb.ol:                                            ; preds = %bb.oj
  br i1 %.old.i.i, label %.preheader.i276.thread.i, label %.thread514.i.i

.thread311.i:                                     ; preds = %.critedge5.i.i
  br i1 %.old.i312.i, label %.preheader.i276.thread313.i, label %.thread514.i.i

.thread514.i.i:                                   ; preds = %.thread311.i, %bb.ol, %bb.ok, %bb.oi
  %i.byq = add nsw i32 %spec.select423.i.i, %.1296.i.i
  br label %.critedge5.i.i, !llvm.loop !59

.lr.ph593.i.i:                                    ; preds = %.thread514.i.i.peel
  %notmask.i.i = shl nsw i32 -1, %spec.select423.i.i.peel
  %i.byr = xor i32 %notmask.i.i, -1
  %i.bys = lshr exact i32 1000000000, %spec.select423.i.i.peel
  br label %bb.om

bb.om:                                            ; preds = %bb.om, %.lr.ph593.i.i
  %.0279592.i.i = phi i32 [ 0, %.lr.ph593.i.i ], [ %i.byz, %bb.om ]
  %.6591.i.i = phi i32 [ %.5.i275.i.ph, %.lr.ph593.i.i ], [ %.7.i.i, %bb.om ] ; 2 uses
  %.6339590.i.i = phi i32 [ %.5338.i.i.ph, %.lr.ph593.i.i ], [ %.7340.i.i, %bb.om ] ; 3 uses
  %.6348589.i.i = phi i32 [ %.5338.i.i.ph, %.lr.ph593.i.i ], [ %i.bzf, %bb.om ] ; 3 uses
  %i.byt = sext i32 %.6348589.i.i to i64
  %i.byu = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.byt ; 2 uses
  %i.byv = load i32, ptr %i.byu, align 4, !tbaa !65 ; 2 uses
  %i.byw = and i32 %i.byv, %i.byr
  %i.byx = lshr i32 %i.byv, %spec.select423.i.i.peel
  %i.byy = add i32 %i.byx, %.0279592.i.i          ; 2 uses
  store i32 %i.byy, ptr %i.byu, align 4, !tbaa !65
  %i.byz = mul i32 %i.byw, %i.bys                 ; 3 uses
  %i.bza = icmp eq i32 %.6348589.i.i, %.6339590.i.i
  %.not403.i.i = icmp eq i32 %i.byy, 0
  %or.cond424.i.i = select i1 %i.bza, i1 %.not403.i.i, i1 false ; 2 uses
  %i.bzb = add nsw i32 %.6339590.i.i, 1
  %i.bzc = and i32 %i.bzb, 127
  %i.bzd = add nsw i32 %.6591.i.i, -9
  %.7340.i.i = select i1 %or.cond424.i.i, i32 %i.bzc, i32 %.6339590.i.i ; 3 uses
  %.7.i.i = select i1 %or.cond424.i.i, i32 %i.bzd, i32 %.6591.i.i ; 2 uses
  %i.bze = add nsw i32 %.6348589.i.i, 1
  %i.bzf = and i32 %i.bze, 127                    ; 2 uses
  %.not400.i.i = icmp eq i32 %i.bzf, %.8332.i.i.ph
  br i1 %.not400.i.i, label %._crit_edge594.i.i, label %bb.om, !llvm.loop !60

._crit_edge594.i.i:                               ; preds = %bb.om
  %.not401.i.i = icmp eq i32 %i.byz, 0
  br i1 %.not401.i.i, label %.critedge5.i.i.outer.backedge, label %bb.os

.critedge5.i.i.outer:                             ; preds = %.critedge5.i.i.outer.backedge, %.critedge5.i.i.preheader
  %.5338.i.i.ph = phi i32 [ %.3336.i.i.ph1351, %.critedge5.i.i.preheader ], [ %.7340.i.i, %.critedge5.i.i.outer.backedge ] ; 16 uses
  %.8332.i.i.ph = phi i32 [ %.3327.i.i, %.critedge5.i.i.preheader ], [ %.8332.i.i.ph.be, %.critedge5.i.i.outer.backedge ] ; 12 uses
  %.5.i275.i.ph = phi i32 [ %.3302.i.i.ph1353, %.critedge5.i.i.preheader ], [ %.7.i.i, %.critedge5.i.i.outer.backedge ] ; 9 uses
  %.1296.i.i.ph = phi i32 [ %.0295.i.i, %.critedge5.i.i.preheader ], [ %i.bzu, %.critedge5.i.i.outer.backedge ] ; 4 uses
  %i.bzg = and i32 %.5338.i.i.ph, 127             ; 2 uses
  %i.bzh = icmp eq i32 %i.bzg, %.8332.i.i.ph
  br i1 %i.bzh, label %.thread311.i.peel, label %bb.on

bb.on:                                            ; preds = %.critedge5.i.i.outer
  %i.bzi = zext nneg i32 %i.bzg to i64
  %i.bzj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bzi
  %i.bzk = load i32, ptr %i.bzj, align 4, !tbaa !65 ; 3 uses
  %i.bzl = icmp ult i32 %i.bzk, 9007199
  br i1 %i.bzl, label %bb.or, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %.not664.i.i.peel = icmp eq i32 %i.bzk, 9007199
  br i1 %.not664.i.i.peel, label %bb.op, label %.thread514.i.i.peel

bb.op:                                            ; preds = %bb.oo
  %i.bzm = add i32 %.5338.i.i.ph, 1
  %i.bzn = and i32 %i.bzm, 127                    ; 2 uses
  %i.bzo = icmp eq i32 %i.bzn, %.8332.i.i.ph
  br i1 %i.bzo, label %bb.or, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.bzp = zext nneg i32 %i.bzn to i64
  %i.bzq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bzp
  %i.bzr = load i32, ptr %i.bzq, align 4, !tbaa !65
  %or.cond708.i.i.peel = icmp ult i32 %i.bzr, 254740992
  %i.bzs = icmp eq i32 %.5.i275.i.ph, 18
  %or.cond709.i.i.peel = select i1 %or.cond708.i.i.peel, i1 %i.bzs, i1 false
  br i1 %or.cond709.i.i.peel, label %.preheader.i276.thread.i, label %.thread514.i.i.peel

bb.or:                                            ; preds = %bb.op, %bb.on
  %.old.i.i.peel = icmp eq i32 %.5.i275.i.ph, 18
  br i1 %.old.i.i.peel, label %.preheader.i276.thread.i, label %.thread514.i.i.peel

.thread311.i.peel:                                ; preds = %.critedge5.i.i.outer
  %.old.i312.i.peel = icmp eq i32 %.5.i275.i.ph, 18
  br i1 %.old.i312.i.peel, label %.preheader.i276.thread313.i, label %.thread514.i.i.peel

.thread514.i.i.peel:                              ; preds = %.thread311.i.peel, %bb.or, %bb.oq, %bb.oo
  %i.bzt = icmp sgt i32 %.5.i275.i.ph, 27
  %spec.select423.i.i.peel = select i1 %i.bzt, i32 9, i32 1 ; 4 uses
  %i.bzu = add nsw i32 %spec.select423.i.i.peel, %.1296.i.i.ph ; 2 uses
  %.not400588.i.i.peel = icmp eq i32 %.5338.i.i.ph, %.8332.i.i.ph
  br i1 %.not400588.i.i.peel, label %.critedge5.i.i.outer.peel.newph, label %.lr.ph593.i.i

.critedge5.i.i.outer.peel.newph:                  ; preds = %.thread514.i.i.peel
  %i.bzv = icmp ult i32 %.5338.i.i.ph, 128
  %i.bzw = and i32 %.5338.i.i.ph, 127
  %i.bzx = zext nneg i32 %i.bzw to i64
  %i.bzy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bzx
  %i.bzz = add i32 %.5338.i.i.ph, 1
  %i.caa = and i32 %i.bzz, 127
  %i.cab = zext nneg i32 %i.caa to i64
  %i.cac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cab
  %i.cad = icmp eq i32 %.5.i275.i.ph, 18
  %.old.i.i = icmp eq i32 %.5.i275.i.ph, 18
  %.old.i312.i = icmp eq i32 %.5.i275.i.ph, 18
  %i.cae = icmp sgt i32 %.5.i275.i.ph, 27
  %spec.select423.i.i = select i1 %i.cae, i32 9, i32 1
  br label %.critedge5.i.i

bb.os:                                            ; preds = %._crit_edge594.i.i
  %i.caf = add nuw nsw i32 %.8332.i.i.ph, 1
  %i.cag = and i32 %i.caf, 127                    ; 2 uses
  %.not402.i.i = icmp eq i32 %i.cag, %.7340.i.i
  br i1 %.not402.i.i, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.cah = zext nneg i32 %.8332.i.i.ph to i64
  %i.cai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cah
  store i32 %i.byz, ptr %i.cai, align 4, !tbaa !65
  br label %.critedge5.i.i.outer.backedge

bb.ou:                                            ; preds = %bb.os
  %i.caj = add nuw nsw i32 %.8332.i.i.ph, 127
  %i.cak = and i32 %i.caj, 127
  %i.cal = zext nneg i32 %i.cak to i64
  %i.cam = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cal ; 2 uses
  %i.can = load i32, ptr %i.cam, align 4, !tbaa !65
  %i.cao = or i32 %i.can, 1
  store i32 %i.cao, ptr %i.cam, align 4, !tbaa !65
  br label %.critedge5.i.i.outer.backedge

.critedge5.i.i.outer.backedge:                    ; preds = %bb.ou, %._crit_edge594.i.i, %bb.ot
  %.8332.i.i.ph.be = phi i32 [ %i.cag, %bb.ot ], [ %.8332.i.i.ph, %._crit_edge594.i.i ], [ %.8332.i.i.ph, %bb.ou ]
  br label %.critedge5.i.i.outer

.preheader.i276.thread313.i:                      ; preds = %.thread311.i.peel, %.thread311.i
  %.8332.i.i.lcssa1401 = phi i32 [ %.5338.i.i.ph, %.thread311.i ], [ %.8332.i.i.ph, %.thread311.i.peel ] ; 2 uses
  %.1296.i.i.lcssa1398 = phi i32 [ %.1296.i.i, %.thread311.i ], [ %.1296.i.i.ph, %.thread311.i.peel ]
  %i.cap = add nuw nsw i32 %.8332.i.i.lcssa1401, 1
  %i.caq = and i32 %i.cap, 127                    ; 2 uses
  %i.car = zext nneg i32 %i.caq to i64
  %i.cas = getelementptr [4 x i8], ptr %i.e, i64 %i.car
  %i.cat = getelementptr i8, ptr %i.cas, i64 -4
  store i32 0, ptr %i.cat, align 4, !tbaa !65
  %.pre439.i = zext nneg i32 %.8332.i.i.lcssa1401 to i64
  %.phi.trans.insert.i402 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.pre439.i
  %.pre440.i = load i32, ptr %.phi.trans.insert.i402, align 4, !tbaa !65
  br label %.preheader.i276.thread.i

.preheader.i276.thread.i:                         ; preds = %bb.ol, %bb.oi, %bb.oq, %bb.or, %.preheader.i276.thread313.i
  %.1296.i.i1400 = phi i32 [ %.1296.i.i.lcssa1398, %.preheader.i276.thread313.i ], [ %.1296.i.i, %bb.oi ], [ %.1296.i.i, %bb.ol ], [ %.1296.i.i.ph, %bb.oq ], [ %.1296.i.i.ph, %bb.or ] ; 3 uses
  %i.cau = phi i32 [ %.pre440.i, %.preheader.i276.thread313.i ], [ 9007199, %bb.oi ], [ %i.byo, %bb.ol ], [ %i.bzk, %bb.or ], [ 9007199, %bb.oq ]
  %.12.i.i = phi i32 [ %i.caq, %.preheader.i276.thread313.i ], [ %.5338.i.i.ph, %bb.oi ], [ %.5338.i.i.ph, %bb.ol ], [ %.8332.i.i.ph, %bb.oq ], [ %.8332.i.i.ph, %bb.or ] ; 2 uses
  %i.cav = add nsw i32 %.5338.i.i.ph, 1
  %i.caw = and i32 %i.cav, 127                    ; 2 uses
  %i.cax = icmp eq i32 %i.caw, %.12.i.i
  br i1 %i.cax, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %.preheader.i276.thread.i
  %i.cay = add i32 %.5338.i.i.ph, 2
  %i.caz = and i32 %i.cay, 127                    ; 2 uses
  %i.cba = zext nneg i32 %i.caz to i64
  %i.cbb = getelementptr [4 x i8], ptr %i.e, i64 %i.cba
  %i.cbc = getelementptr i8, ptr %i.cbb, i64 -4
  store i32 0, ptr %i.cbc, align 4, !tbaa !65
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %.preheader.i276.thread.i
  %.12.1.i.i = phi i32 [ %i.caz, %bb.ov ], [ %.12.i.i, %.preheader.i276.thread.i ] ; 3 uses
  %i.cbd = uitofp i32 %i.cau to x86_fp80
  %i.cbe = zext nneg i32 %i.caw to i64
  %i.cbf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cbe
  %i.cbg = load i32, ptr %i.cbf, align 4, !tbaa !65
  %i.cbh = uitofp nsz i32 %i.cbg to x86_fp80
  %i.cbi = call nnan nsz x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.cbd, x86_fp80 1.000000e+09, x86_fp80 %i.cbh)
  %i.cbj = fptrunc nnan nsz x86_fp80 %i.cbi to double
  %i.cbk = sitofp nsz i32 %.0115.i1038104310481051 to double ; 5 uses
  %i.cbl = fmul nnan nsz double %i.cbk, %i.cbj    ; 4 uses
  %i.cbm = add nsw i32 %.1296.i.i1400, 53         ; 2 uses
  %i.cbn = sub nsw i32 %i.cbm, %.0107.i           ; 3 uses
  %.not408.i.i = icmp sgt i32 %.0108.i, %i.cbn    ; 2 uses
  %spec.store.select.i277.i = call i32 @llvm.smax.i32(i32 %i.cbn, i32 0)
  %.0364.i.i = select i1 %.not408.i.i, i32 %spec.store.select.i277.i, i32 %.0108.i ; 5 uses
  %i.cbo = icmp samesign ult i32 %.0364.i.i, 53
  br i1 %i.cbo, label %bb.ox, label %bb.oy

bb.ox:                                            ; preds = %bb.ow
  %i.cbp = sub nuw nsw i32 105, %.0364.i.i
  %i.cbq = call nsz double @llvm.ldexp.f64.i32(double 1.000000e+00, i32 %i.cbp)
  %i.cbr = call nsz double @llvm.copysign.f64(double %i.cbq, double %i.cbl) ; 2 uses
  %i.cbs = sub nuw nsw i32 53, %.0364.i.i
  %i.cbt = call nsz double @llvm.ldexp.f64.i32(double 1.000000e+00, i32 %i.cbs)
  %i.cbu = frem nsz double %i.cbl, %i.cbt         ; 2 uses
  %i.cbv = fsub nsz double %i.cbl, %i.cbu
  %i.cbw = fadd nsz double %i.cbr, %i.cbv
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %bb.ow
  %.1289.i.i = phi nsz double [ %i.cbw, %bb.ox ], [ %i.cbl, %bb.ow ]
  %.0285.i.i = phi nsz double [ %i.cbu, %bb.ox ], [ 0.000000e+00, %bb.ow ] ; 6 uses
  %.0284.i.i = phi nsz double [ %i.cbr, %bb.ox ], [ 0.000000e+00, %bb.ow ]
  %i.cbx = add nsw i32 %.5338.i.i.ph, 2
  %i.cby = and i32 %i.cbx, 127                    ; 2 uses
  %.not404.i.i = icmp eq i32 %i.cby, %.12.1.i.i
  br i1 %.not404.i.i, label %bb.pj, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.cbz = zext nneg i32 %i.cby to i64
  %i.cca = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cbz
  %i.ccb = load i32, ptr %i.cca, align 4, !tbaa !65 ; 3 uses
  %i.ccc = icmp ult i32 %i.ccb, 500000000
  br i1 %i.ccc, label %bb.pa, label %bb.pd

bb.pa:                                            ; preds = %bb.oz
  %.not405.i.i = icmp eq i32 %i.ccb, 0
  br i1 %.not405.i.i, label %bb.pb, label %bb.pc

bb.pb:                                            ; preds = %bb.pa
  %i.ccd = add nsw i32 %.5338.i.i.ph, 3
  %i.cce = and i32 %i.ccd, 127
  %.not406.i.i = icmp eq i32 %i.cce, %.12.1.i.i
  br i1 %.not406.i.i, label %bb.pi, label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.pa
  %i.ccf = call nsz double @llvm.fmuladd.f64(double %i.cbk, double 2.500000e-01, double %.0285.i.i)
  br label %bb.pi

bb.pd:                                            ; preds = %bb.oz
  %.not521.i.i = icmp eq i32 %i.ccb, 500000000
  br i1 %.not521.i.i, label %bb.pf, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.ccg = call nsz double @llvm.fmuladd.f64(double %i.cbk, double 7.500000e-01, double %.0285.i.i)
  br label %bb.pi

bb.pf:                                            ; preds = %bb.pd
  %i.cch = add nsw i32 %.5338.i.i.ph, 3
  %i.cci = and i32 %i.cch, 127
  %i.ccj = icmp eq i32 %i.cci, %.12.1.i.i
  br i1 %i.ccj, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  %i.cck = call nsz double @llvm.fmuladd.f64(double %i.cbk, double 5.000000e-01, double %.0285.i.i)
  br label %bb.pi

bb.ph:                                            ; preds = %bb.pf
  %i.ccl = call nsz double @llvm.fmuladd.f64(double %i.cbk, double 7.500000e-01, double %.0285.i.i)
  br label %bb.pi

bb.pi:                                            ; preds = %bb.ph, %bb.pg, %bb.pe, %bb.pc, %bb.pb
  %.1286.i.i = phi nsz double [ %i.ccf, %bb.pc ], [ %i.ccg, %bb.pe ], [ %i.cck, %bb.pg ], [ %i.ccl, %bb.ph ], [ %.0285.i.i, %bb.pb ] ; 3 uses
  %i.ccm = icmp samesign ugt i32 %.0364.i.i, 51
  %i.ccn = frem nsz double %.1286.i.i, 1.000000e+00
  %i.cco = fcmp nsz une double %i.ccn, 0.000000e+00
  %or.cond426.i.i = select i1 %i.ccm, i1 true, i1 %i.cco
  %i.ccp = fadd nsz double %.1286.i.i, 1.000000e+00
  %.2287.i.i = select nsz i1 %or.cond426.i.i, double %.1286.i.i, double %i.ccp
  br label %bb.pj

bb.pj:                                            ; preds = %bb.pi, %bb.oy
  %.3.i278.i = phi nsz double [ %.2287.i.i, %bb.pi ], [ %.0285.i.i, %bb.oy ] ; 2 uses
  %i.ccq = fadd nsz double %.1289.i.i, %.3.i278.i
  %i.ccr = fsub nsz double %i.ccq, %.0284.i.i     ; 4 uses
  %i.ccs = and i32 %i.cbm, 2147483647
  %i.cct = add nsw i32 %i.bqc, -2
  %i.ccu = icmp sgt i32 %i.ccs, %i.cct
  br i1 %i.ccu, label %bb.pk, label %bb.pm

bb.pk:                                            ; preds = %bb.pj
  %i.ccv = call nsz double @llvm.fabs.f64(double %i.ccr)
  %i.ccw = fcmp nsz oge double %i.ccv, f0x4340000000000000 ; 3 uses
  %4 = icmp ne i32 %.0364.i.i, %i.cbn
  %i.ccx = fmul nnan nsz double %i.ccr, 5.000000e-01
  %i.ccy = zext i1 %i.ccw to i32
  %.3298.i.i = add nsw i32 %.1296.i.i1400, %i.ccy ; 3 uses
  %not..i.i = xor i1 %i.ccw, true
  %narrow.i.i = or i1 %4, %not..i.i
  %.2294.in.i.i = and i1 %.not408.i.i, %narrow.i.i
  %.2290.i.i = select nsz i1 %i.ccw, double %i.ccx, double %i.ccr ; 2 uses
  %i.ccz = add nsw i32 %.3298.i.i, 50
  %i.cda = icmp sgt i32 %i.ccz, %i.bqc
  %i.cdb = fcmp nsz une double %.3.i278.i, 0.000000e+00
  %or.cond9.i.i = select i1 %.2294.in.i.i, i1 %i.cdb, i1 false
  %or.cond522.i.i = select i1 %i.cda, i1 true, i1 %or.cond9.i.i
  br i1 %or.cond522.i.i, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  %i.cdc = tail call ptr @__errno_location() #10
  store i32 34, ptr %i.cdc, align 4, !tbaa !65
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.pk, %bb.pj
  %.4.i.i = phi i32 [ %.3298.i.i, %bb.pl ], [ %.3298.i.i, %bb.pk ], [ %.1296.i.i1400, %bb.pj ]
  %.3291.i.i = phi nsz double [ %.2290.i.i, %bb.pl ], [ %.2290.i.i, %bb.pk ], [ %i.ccr, %bb.pj ]
  %i.cdd = call nsz double @llvm.ldexp.f64.i32(double %.3291.i.i, i32 %.4.i.i)
  br label %decfloat.exit.i

decfloat.exit.i:                                  ; preds = %bb.pm, %bb.nr, %bb.np, %bb.nn, %bb.nh, %bb.nf, %bb.nd, %bb.na, %bb.mz, %bb.mv
  %.1359.i.i = phi nsz double [ %i.bto, %bb.nd ], [ %i.btv, %bb.nf ], [ %i.buc, %bb.nh ], [ %i.cdd, %bb.pm ], [ 0.000000e+00, %bb.na ], [ 0.000000e+00, %bb.mv ], [ 0.000000e+00, %bb.mz ], [ %i.bvw, %bb.nr ], [ %i.bvj, %bb.np ], [ %i.buz, %bb.nn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %fffloatscan.exit

fffloatscan.exit:                                 ; preds = %bb.gn, %.critedge.thread.i441, %.thread.i407, %bb.ic, %bb.id, %bb.il, %bb.io, %.critedge7.thread.thread.i, %bb.ks, %bb.kv, %bb.ky, %bb.la, %bb.lc, %bb.lg, %decfloat.exit.i
  %.0116.i = phi nsz double [ +qnan, %.thread.i407 ], [ %i.aqp, %.critedge.thread.i441 ], [ 0.000000e+00, %bb.gn ], [ +qnan, %bb.id ], [ %.1359.i.i, %decfloat.exit.i ], [ 0.000000e+00, %bb.io ], [ 0.000000e+00, %.critedge7.thread.thread.i ], [ +qnan, %bb.ic ], [ +qnan, %bb.il ], [ %i.bir, %bb.la ], [ %i.biz, %bb.lc ], [ %i.bka, %bb.lg ], [ 0.000000e+00, %bb.ks ], [ 0.000000e+00, %bb.kv ], [ 0.000000e+00, %bb.ky ] ; 3 uses
  %i.cde = load i64, ptr %i.ar, align 8, !tbaa !22
  %i.cdf = load ptr, ptr %i.aq, align 8, !tbaa !18
  %i.cdg = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.cdh = ptrtoint ptr %i.cdf to i64
  %i.cdi = ptrtoint ptr %i.cdg to i64
  %.neg = sub i64 %i.cdi, %i.cdh
  %.not220 = icmp eq i64 %i.cde, %.neg
  br i1 %.not220, label %.loopexit527, label %bb.pn

bb.pn:                                            ; preds = %fffloatscan.exit
  %.not221 = icmp eq ptr %.0187, null
  br i1 %.not221, label %store_int.exit393, label %bb.po

bb.po:                                            ; preds = %bb.pn
  switch i32 %spec.select240, label %store_int.exit393 [
    i32 0, label %bb.pp
    i32 1, label %bb.pq
    i32 2, label %bb.pr
  ]

bb.pp:                                            ; preds = %bb.po
  %i.cdj = fptrunc nsz double %.0116.i to float
  store float %i.cdj, ptr %.0187, align 4, !tbaa !74
  br label %store_int.exit393

bb.pq:                                            ; preds = %bb.po
  store double %.0116.i, ptr %.0187, align 8, !tbaa !76
  br label %store_int.exit393

bb.pr:                                            ; preds = %bb.po
  store double %.0116.i, ptr %.0187, align 8, !tbaa !76
  br label %store_int.exit393

store_int.exit393:                                ; preds = %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.pn, %bb.pr, %bb.pq, %bb.pp, %bb.po, %bb.gf, %bb.cy, %bb.cz, %bb.by
  %.12 = phi ptr [ %.6, %bb.by ], [ %.11, %bb.cz ], [ %.11, %bb.cy ], [ %.6, %bb.gf ], [ %.6, %bb.pn ], [ %.6, %bb.po ], [ %.6, %bb.pp ], [ %.6, %bb.pq ], [ %.6, %bb.pr ], [ %.6, %bb.gg ], [ %.6, %bb.gh ], [ %.6, %bb.gi ], [ %.6, %bb.gj ], [ %.6, %bb.gk ], [ %.6, %bb.gl ], [ %.6, %bb.gm ]
  %i.cdk = load i64, ptr %i.ar, align 8, !tbaa !22
  %i.cdl = load ptr, ptr %i.aq, align 8, !tbaa !18
  %i.cdm = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.cdn = ptrtoint ptr %i.cdl to i64
  %i.cdo = ptrtoint ptr %i.cdm to i64
  %i.cdp = add i64 %i.cdk, %.1182
  %i.cdq = add i64 %i.cdp, %i.cdn
  %i.cdr = sub i64 %i.cdq, %i.cdo
  %.not233 = icmp ne ptr %.0187, null
  %i.cds = zext i1 %.not233 to i32
  %spec.select242 = add nsw i32 %.0183, %i.cds
  br label %store_int.exit

store_int.exit:                                   ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %store_int.exit393, %bb.aa, %bb.k
  %.13 = phi ptr [ %.1192, %bb.k ], [ %.2193, %bb.aa ], [ %.12, %store_int.exit393 ], [ %.6, %bb.bb ], [ %.6, %bb.bc ], [ %.6, %bb.bd ], [ %.6, %bb.be ], [ %.6, %bb.bf ], [ %.6, %bb.bg ], [ %.6, %bb.bh ]
  %.1184 = phi i32 [ %.0183, %bb.k ], [ %.0183, %bb.aa ], [ %spec.select242, %store_int.exit393 ], [ %.0183, %bb.bb ], [ %.0183, %bb.bc ], [ %.0183, %bb.bd ], [ %.0183, %bb.be ], [ %.0183, %bb.bf ], [ %.0183, %bb.bg ], [ %.0183, %bb.bh ]
  %.2 = phi i64 [ %i.cx, %bb.k ], [ %i.gd, %bb.aa ], [ %i.cdr, %store_int.exit393 ], [ %.0181, %bb.bb ], [ %.0181, %bb.bc ], [ %.0181, %bb.bd ], [ %.0181, %bb.be ], [ %.0181, %bb.bf ], [ %.0181, %bb.bg ], [ %.0181, %bb.bh ]
  %i.cdt = getelementptr inbounds nuw i8, ptr %.13, i64 1
  br label %bb.b, !llvm.loop !61

.loopexit523:                                     ; preds = %._crit_edge, %bb.cg, %ffshgetc.exit348
  %.old6.not = icmp eq i32 %.0183, 0
  br i1 %.old6.not, label %bb.ps, label %.loopexit527

bb.ps:                                            ; preds = %bb.z, %.loopexit523
  br label %.loopexit527

.loopexit527:                                     ; preds = %bb.b, %fffloatscan.exit, %ffintscan.exit, %bb.cx, %bb.ek, %bb.ef, %bb.ps, %.loopexit523, %bb.z
  %.2185 = phi i32 [ %.0183, %bb.z ], [ -1, %bb.ps ], [ %.0183, %.loopexit523 ], [ %.0183, %bb.ef ], [ %.0183, %bb.ek ], [ %.0183, %bb.cx ], [ %.0183, %ffintscan.exit ], [ %.0183, %fffloatscan.exit ], [ %.0183, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #8
  ret i32 %.2185
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nounwind uwtable
define internal fastcc i64 @scanexp(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 29 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 17 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.k, ptr %i.f, align 8, !tbaa !18
  %i.l = load i8, ptr %i.g, align 1, !tbaa !20
  br label %ffshgetc.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 2 uses
  %i.q = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = add nsw i64 %i.s, %i.n                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq i64 %i.v, 0
  %.not37.i = icmp slt i64 %i.t, %i.v
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not37.i
  br i1 %or.cond.i, label %bb.d, label %.thread144

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.w = load i64, ptr %0, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !19
  store ptr %i.x, ptr %i.f, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.ab = call i64 %i.aa(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 1) #8, !inline_history !0
  %.not40.i = icmp eq i64 %i.ab, 1
  %i.ac = load i8, ptr %i.e, align 1              ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br i1 %.not40.i, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !15
  %.pre42.i = load ptr, ptr %i.f, align 8, !tbaa !18
  %.pre46.i = ptrtoint ptr %.pre.i to i64
  %.pre48.i = ptrtoint ptr %.pre42.i to i64
  br label %.thread144

.thread144:                                       ; preds = %bb.c, %._crit_edge.i
  %.pre-phi49.i = phi i64 [ %.pre48.i, %._crit_edge.i ], [ %i.q, %bb.c ]
  %.pre-phi47.i = phi i64 [ %.pre46.i, %._crit_edge.i ], [ %i.r, %bb.c ]
  %i.ad = sub i64 %i.t, %.pre-phi49.i
  %i.ae = add i64 %i.ad, %.pre-phi47.i
  store i64 %i.ae, ptr %i.m, align 8, !tbaa !22
  store ptr null, ptr %i.h, align 8, !tbaa !23
  br label %bb.ah

bb.e:                                             ; preds = %bb.d
  %i.af = add nsw i64 %i.t, 1                     ; 2 uses
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !21  ; 2 uses
  %.not38.i = icmp eq i64 %i.ag, 0
  %.pre43.i = load ptr, ptr %i.y, align 8, !tbaa !19 ; 2 uses
  %.pre44.pre.i = load ptr, ptr %i.f, align 8, !tbaa !18 ; 3 uses
  %i.ah = ptrtoint ptr %.pre43.i to i64
  %i.ai = ptrtoint ptr %.pre44.pre.i to i64       ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sub nsw i64 %i.ag, %i.af                ; 2 uses
  %i.al = icmp sle i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds i8, ptr %.pre44.pre.i, i64 %i.ak
  %i.an = select i1 %.not38.i, i1 true, i1 %i.al
  %.pre43.sink.i = select i1 %i.an, ptr %.pre43.i, ptr %i.am
  store ptr %.pre43.sink.i, ptr %i.h, align 8, !tbaa !23
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.af, %i.ai
  %i.ar = add i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.m, align 8, !tbaa !22
  %i.as = getelementptr inbounds i8, ptr %.pre44.pre.i, i64 -1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !20
  %.not39.i = icmp eq i8 %i.ac, %i.at
  br i1 %.not39.i, label %ffshgetc.exit, label %bb.f

end_hunk_1
