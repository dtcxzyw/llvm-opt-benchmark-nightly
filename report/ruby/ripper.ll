inline.NumInlined: 2066
inline.NumDeleted: 252
begin_hunk_0_@parser_yylex:bb.a

bb.hd:                                            ; preds = %bb.hc
  %i.aif = getelementptr inbounds i8, ptr %i.aht, i64 -1 ; 2 uses
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !10
  %i.aih = icmp eq i8 %i.aig, 13
  br i1 %i.aih, label %pushback.exit.sink.split, label %pushback.exit

.split:                                           ; preds = %bb.hb
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aht, i64 2
  br label %.split.thread

.split.thread:                                    ; preds = %.critedge._crit_edge.i883, %.split
  %i.aij = phi ptr [ %i.aii, %.split ], [ %i.ahu, %.critedge._crit_edge.i883 ] ; 2 uses
  %i.aik = load i16, ptr %i.f, align 8
  %i.ail = and i16 %i.aik, -9
  store i16 %i.ail, ptr %i.f, align 8
  %i.aim = getelementptr inbounds i8, ptr %i.aij, i64 -1 ; 6 uses
  store ptr %i.aim, ptr %i.aft, align 8, !tbaa !48
  %i.ain = load ptr, ptr %i.agb, align 8, !tbaa !44
  %i.aio = icmp ugt ptr %i.aim, %i.ain
  br i1 %i.aio, label %bb.he, label %pushback.exit

bb.he:                                            ; preds = %.split.thread
  %i.aip = load i8, ptr %i.aim, align 1, !tbaa !10
  %i.aiq = icmp eq i8 %i.aip, 10
  br i1 %i.aiq, label %bb.hf, label %pushback.exit

bb.hf:                                            ; preds = %bb.he
  %i.air = getelementptr inbounds i8, ptr %i.aij, i64 -2 ; 2 uses
  %i.ais = load i8, ptr %i.air, align 1, !tbaa !10
  %i.ait = icmp eq i8 %i.ais, 13
  br i1 %i.ait, label %pushback.exit.sink.split, label %pushback.exit

nextc0.exit887.thread1225:                        ; preds = %bb.ha, %bb.hb
  %i.aiu = load i16, ptr %i.f, align 8            ; 2 uses
  %i.aiv = and i16 %i.aiu, 1024
  %.not.i889 = icmp eq i16 %i.aiv, 0
  br i1 %.not.i889, label %warn_cr.exit.sink.split, label %warn_cr.exit.backedge, !llvm.loop !523

pushback.exit.sink.split:                         ; preds = %bb.hf, %bb.hd
  %.sink = phi ptr [ %i.aif, %bb.hd ], [ %i.air, %bb.hf ] ; 2 uses
  store ptr %.sink, ptr %i.aft, align 8, !tbaa !48
  br label %pushback.exit

pushback.exit:                                    ; preds = %.critedge.i880, %pushback.exit.sink.split, %bb.hf, %bb.he, %.split.thread, %bb.hd, %bb.hc, %.split669
  %.val.i891 = phi ptr [ %i.aht, %.split669 ], [ %i.aht, %bb.hc ], [ %i.aim, %bb.hf ], [ %i.aim, %bb.he ], [ %i.aim, %.split.thread ], [ %.sink, %pushback.exit.sink.split ], [ %i.aht, %bb.hd ], [ %.pre.i884, %.critedge.i880 ] ; 3 uses
  %.val3.i = load ptr, ptr %i.afw, align 8, !tbaa !41 ; 4 uses
  %i.aiw = icmp ult ptr %.val.i891, %.val3.i
  br i1 %i.aiw, label %bb.hg, label %ripper_has_scan_event.exit.i

bb.hg:                                            ; preds = %pushback.exit
  %i.aix = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aix, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i:                     ; preds = %pushback.exit
  %.not.i892 = icmp ugt ptr %.val.i891, %.val3.i
  br i1 %.not.i892, label %bb.hh, label %.backedge.backedge

bb.hh:                                            ; preds = %ripper_has_scan_event.exit.i
  %i.aiy = ptrtoint ptr %.val.i891 to i64
  %i.aiz = ptrtoint ptr %.val3.i to i64
  %i.aja = sub i64 %i.aiy, %i.aiz
  %i.ajb = load ptr, ptr %i.afx, align 8, !tbaa !49
  %i.ajc = tail call i64 @rb_enc_str_new(ptr noundef %.val3.i, i64 noundef %i.aja, ptr noundef %i.ajb) #29
  %i.ajd = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 324) #29
  %.val.i.i893 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.aje = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i893, i64 noundef %i.ajd, i32 noundef 1, i64 noundef %i.ajc) #29
  %i.ajf = load ptr, ptr %i.afz, align 8, !tbaa !39
  %i.ajg = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.ajf) #29 ; 0 uses
  %i.ajh = load ptr, ptr %i.aft, align 8, !tbaa !48
  store ptr %i.ajh, ptr %i.afw, align 8, !tbaa !41
  store i64 %i.aje, ptr %i.aga, align 8, !tbaa !47
  br label %.backedge.backedge

bb.hi:                                            ; preds = %bb.gv
  %i.aji = load i16, ptr %i.f, align 8
  %i.ajj = and i16 %i.aji, -129
  %i.ajk = or disjoint i16 %i.ajj, %i.afm
  store i16 %i.ajk, ptr %i.f, align 8
  %i.ajl = load ptr, ptr %i.afw, align 8, !tbaa !41 ; 5 uses
  %i.ajm = load ptr, ptr %i.afu, align 8, !tbaa !413
  %i.ajn = ptrtoint ptr %i.ajm to i64             ; 2 uses
  %i.ajo = ptrtoint ptr %i.agv to i64
  %i.ajp = sub i64 %i.ajn, %i.ajo                 ; 5 uses
  %i.ajq = icmp slt i64 %i.ajp, 8
  br i1 %i.ajq, label %.loopexit, label %.lr.ph.i.i894

.lr.ph.i.i894:                                    ; preds = %bb.hi, %bb.ho
  %.028.i.i = phi i64 [ %i.ake, %bb.ho ], [ 2, %bb.hi ] ; 3 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.agv, i64 %.028.i.i ; 5 uses
  %i.ajs = load i8, ptr %i.ajr, align 1, !tbaa !10
  switch i8 %i.ajs, label %bb.ho [
    i8 45, label %bb.hj
    i8 42, label %bb.hl
  ]

bb.hj:                                            ; preds = %.lr.ph.i.i894
  %i.ajt = getelementptr i8, ptr %i.ajr, i64 -1
  %i.aju = load i8, ptr %i.ajt, align 1, !tbaa !10
  %i.ajv = icmp eq i8 %i.aju, 42
  br i1 %i.ajv, label %bb.hk, label %bb.ho

bb.hk:                                            ; preds = %bb.hj
  %i.ajw = getelementptr i8, ptr %i.ajr, i64 -2
  %i.ajx = load i8, ptr %i.ajw, align 1, !tbaa !10
  %i.ajy = icmp eq i8 %i.ajx, 45
  br i1 %i.ajy, label %magic_comment_marker.exit.i, label %bb.ho

bb.hl:                                            ; preds = %.lr.ph.i.i894
  %i.ajz = add nuw nsw i64 %.028.i.i, 1           ; 2 uses
  %.not.i.i895 = icmp slt i64 %i.ajz, %i.ajp
  br i1 %.not.i.i895, label %bb.hm, label %magic_comment_marker.exit.thread.i

bb.hm:                                            ; preds = %bb.hl
  %i.aka = getelementptr inbounds nuw i8, ptr %i.agv, i64 %i.ajz
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !10
  %.not25.i.i = icmp eq i8 %i.akb, 45
  br i1 %.not25.i.i, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.akc = getelementptr i8, ptr %i.ajr, i64 -1
  %i.akd = load i8, ptr %i.akc, align 1, !tbaa !10
  %.not26.i.i = icmp eq i8 %i.akd, 45
  br i1 %.not26.i.i, label %magic_comment_marker.exit.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm, %bb.hk, %bb.hj, %.lr.ph.i.i894
  %.sink.i.i905 = phi i64 [ 2, %bb.hj ], [ 4, %bb.hm ], [ 2, %bb.hn ], [ 2, %bb.hk ], [ 3, %.lr.ph.i.i894 ]
  %i.ake = add nuw nsw i64 %.sink.i.i905, %.028.i.i ; 2 uses
  %i.akf = icmp slt i64 %i.ake, %i.ajp
  br i1 %i.akf, label %.lr.ph.i.i894, label %magic_comment_marker.exit.thread.i, !llvm.loop !524

magic_comment_marker.exit.i:                      ; preds = %bb.hn, %bb.hk
  %.sink3159 = phi i64 [ 1, %bb.hk ], [ 2, %bb.hn ]
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajr, i64 %.sink3159 ; 4 uses
  %i.akh = ptrtoint ptr %i.akg to i64
  %i.aki = sub i64 %i.ajn, %i.akh                 ; 3 uses
  %i.akj = icmp sgt i64 %i.aki, 2
  br i1 %i.akj, label %.lr.ph.i225.i, label %.loopexit

.lr.ph.i225.i:                                    ; preds = %magic_comment_marker.exit.i, %bb.hu
  %.028.i226.i = phi i64 [ %i.akx, %bb.hu ], [ 2, %magic_comment_marker.exit.i ] ; 4 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akg, i64 %.028.i226.i ; 4 uses
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !10
  switch i8 %i.akl, label %bb.hu [
    i8 45, label %bb.hp
    i8 42, label %bb.hr
  ]

bb.hp:                                            ; preds = %.lr.ph.i225.i
  %i.akm = getelementptr i8, ptr %i.akk, i64 -1
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !10
  %i.ako = icmp eq i8 %i.akn, 42
  br i1 %i.ako, label %bb.hq, label %bb.hu

bb.hq:                                            ; preds = %bb.hp
  %i.akp = getelementptr i8, ptr %i.akk, i64 -2
  %i.akq = load i8, ptr %i.akp, align 1, !tbaa !10
  %i.akr = icmp eq i8 %i.akq, 45
  br i1 %i.akr, label %magic_comment_marker.exit231.i, label %bb.hu

bb.hr:                                            ; preds = %.lr.ph.i225.i
  %i.aks = add nuw nsw i64 %.028.i226.i, 1        ; 2 uses
  %.not.i227.i = icmp slt i64 %i.aks, %i.aki
  br i1 %.not.i227.i, label %bb.hs, label %.loopexit

bb.hs:                                            ; preds = %bb.hr
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akg, i64 %i.aks
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !10
  %.not25.i228.i = icmp eq i8 %i.aku, 45
  br i1 %.not25.i228.i, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.akv = getelementptr i8, ptr %i.akk, i64 -1
  %i.akw = load i8, ptr %i.akv, align 1, !tbaa !10
  %.not26.i230.i = icmp eq i8 %i.akw, 45
  br i1 %.not26.i230.i, label %magic_comment_marker.exit231.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs, %bb.hq, %bb.hp, %.lr.ph.i225.i
  %.sink.i229.i = phi i64 [ 2, %bb.hp ], [ 4, %bb.hs ], [ 2, %bb.ht ], [ 2, %bb.hq ], [ 3, %.lr.ph.i225.i ]
  %i.akx = add nuw nsw i64 %.sink.i229.i, %.028.i226.i ; 2 uses
  %i.aky = icmp slt i64 %i.akx, %i.aki
  br i1 %i.aky, label %.lr.ph.i225.i, label %.loopexit, !llvm.loop !524

magic_comment_marker.exit231.i:                   ; preds = %bb.ht, %bb.hq
  %.sink3160 = phi i64 [ 1, %bb.hq ], [ 2, %bb.ht ]
  %reass.sub = add nuw nsw i64 %.028.i226.i, %.sink3160
  %i.akz = add nsw i64 %reass.sub, -3
  br label %magic_comment_marker.exit.thread.i

magic_comment_marker.exit.thread.i:               ; preds = %bb.ho, %bb.hl, %magic_comment_marker.exit231.i
  %.not254.i = phi i1 [ false, %magic_comment_marker.exit231.i ], [ true, %bb.hl ], [ true, %bb.ho ] ; 2 uses
  %.0153.i = phi i64 [ %i.akz, %magic_comment_marker.exit231.i ], [ %i.ajp, %bb.hl ], [ %i.ajp, %bb.ho ] ; 2 uses
  %.0147.i = phi ptr [ %i.akg, %magic_comment_marker.exit231.i ], [ %i.agv, %bb.hl ], [ %i.agv, %bb.ho ]
  %i.ala = icmp sgt i64 %.0153.i, 0
  br i1 %i.ala, label %.preheader284.i, label %parser_magic_comment.exit

.preheader284.i:                                  ; preds = %magic_comment_marker.exit.thread.i, %bb.jg
  %.1148378.i = phi ptr [ %.14.i, %bb.jg ], [ %.0147.i, %magic_comment_marker.exit.thread.i ] ; 2 uses
  %.1154377.i = phi i64 [ %.14167.i, %bb.jg ], [ %.0153.i, %magic_comment_marker.exit.thread.i ] ; 2 uses
  %.0173376.i = phi i64 [ %.5178.i, %bb.jg ], [ 0, %magic_comment_marker.exit.thread.i ] ; 6 uses
  %.0179375.i = phi i64 [ %.3182.i, %bb.jg ], [ 0, %magic_comment_marker.exit.thread.i ] ; 5 uses
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hx, %.preheader284.i
  %.2149314.i = phi ptr [ %.1148378.i, %.preheader284.i ], [ %i.alg, %bb.hx ] ; 7 uses
  %.2155313.i = phi i64 [ %.1154377.i, %.preheader284.i ], [ %i.alh, %bb.hx ] ; 3 uses
  %i.alb = load i8, ptr %.2149314.i, align 1, !tbaa !10 ; 3 uses
  switch i8 %i.alb, label %bb.hw [
    i8 0, label %.lr.ph.i897.preheader
    i8 39, label %bb.hx
    i8 34, label %bb.hx
    i8 58, label %bb.hx
    i8 59, label %bb.hx
  ]

.lr.ph.i897.preheader:                            ; preds = %bb.hw, %bb.hv
  br label %.lr.ph.i897

bb.hw:                                            ; preds = %bb.hv
  %i.alc = sext i8 %i.alb to i32
  %i.ald = icmp ne i8 %i.alb, 32
  %i.ale = add nsw i32 %i.alc, -14
  %i.alf = icmp ult i32 %i.ale, -5
  %narrow.i.not.i = select i1 %i.ald, i1 %i.alf, i1 false
  br i1 %narrow.i.not.i, label %.lr.ph.i897.preheader, label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv, %bb.hv, %bb.hv, %bb.hv
  %i.alg = getelementptr inbounds nuw i8, ptr %.2149314.i, i64 1
  %i.alh = add nsw i64 %.2155313.i, -1
  %i.ali = icmp sgt i64 %.2155313.i, 1
  br i1 %i.ali, label %bb.hv, label %parser_magic_comment.exit, !llvm.loop !525

.lr.ph.i897:                                      ; preds = %.lr.ph.i897.preheader, %bb.hz
  %.3150316.i = phi ptr [ %i.alo, %bb.hz ], [ %.2149314.i, %.lr.ph.i897.preheader ] ; 5 uses
  %.3156315.i = phi i64 [ %i.alp, %bb.hz ], [ %.2155313.i, %.lr.ph.i897.preheader ] ; 3 uses
  %i.alj = load i8, ptr %.3150316.i, align 1, !tbaa !10 ; 3 uses
  switch i8 %i.alj, label %bb.hy [
    i8 39, label %.lr.ph336.i.preheader
    i8 34, label %.lr.ph336.i.preheader
    i8 58, label %.lr.ph336.i.preheader
    i8 59, label %.lr.ph336.i.preheader
  ]

.lr.ph336.i.preheader:                            ; preds = %bb.hy, %.lr.ph.i897, %.lr.ph.i897, %.lr.ph.i897, %.lr.ph.i897
  br label %.lr.ph336.i

bb.hy:                                            ; preds = %.lr.ph.i897
  %i.alk = sext i8 %i.alj to i32
  %i.all = icmp ne i8 %i.alj, 32
  %i.alm = add nsw i32 %i.alk, -14
  %i.aln = icmp ult i32 %i.alm, -5
  %narrow.i232.not.i = select i1 %i.all, i1 %i.aln, i1 false
  br i1 %narrow.i232.not.i, label %bb.hz, label %.lr.ph336.i.preheader

bb.hz:                                            ; preds = %bb.hy
  %i.alo = getelementptr inbounds nuw i8, ptr %.3150316.i, i64 1
  %i.alp = add nsw i64 %.3156315.i, -1
  %i.alq = icmp sgt i64 %.3156315.i, 1
  br i1 %i.alq, label %.lr.ph.i897, label %parser_magic_comment.exit, !llvm.loop !526

.lr.ph336.i:                                      ; preds = %.lr.ph336.i.preheader, %bb.ia
  %.4334.i = phi ptr [ %i.alw, %bb.ia ], [ %.3150316.i, %.lr.ph336.i.preheader ] ; 4 uses
  %.4157333.i = phi i64 [ %i.alx, %bb.ia ], [ %.3156315.i, %.lr.ph336.i.preheader ] ; 5 uses
  %i.alr = load i8, ptr %.4334.i, align 1, !tbaa !10 ; 3 uses
  %i.als = sext i8 %i.alr to i32
  %i.alt = icmp ne i8 %i.alr, 32
  %i.alu = add nsw i32 %i.als, -14
  %i.alv = icmp ult i32 %i.alu, -5
  %narrow.i233.not.i = select i1 %i.alt, i1 %i.alv, i1 false
  br i1 %narrow.i233.not.i, label %.critedge2.thread.i, label %bb.ia

bb.ia:                                            ; preds = %.lr.ph336.i
  %i.alw = getelementptr inbounds nuw i8, ptr %.4334.i, i64 1
  %i.alx = add nsw i64 %.4157333.i, -1
  %i.aly = icmp sgt i64 %.4157333.i, 1
  br i1 %i.aly, label %.lr.ph336.i, label %parser_magic_comment.exit, !llvm.loop !527

.critedge2.thread.i:                              ; preds = %.lr.ph336.i
  %.not206.i = icmp eq i8 %i.alr, 58
  br i1 %.not206.i, label %.preheader283.i.preheader, label %bb.ib

.preheader283.i.preheader:                        ; preds = %.critedge2.thread.i
  %i.alz = icmp sgt i64 %.4157333.i, 1
  br i1 %i.alz, label %.lr.ph, label %parser_magic_comment.exit

bb.ib:                                            ; preds = %.critedge2.thread.i
  br i1 %.not254.i, label %.loopexit, label %bb.jg

.preheader283.i:                                  ; preds = %.lr.ph
  %i.ama = icmp sgt i64 %.5158.i3063, 2
  br i1 %i.ama, label %.lr.ph, label %parser_magic_comment.exit, !llvm.loop !528

.lr.ph:                                           ; preds = %.preheader283.i.preheader, %.preheader283.i
  %.5.i3064 = phi ptr [ %i.amc, %.preheader283.i ], [ %.4334.i, %.preheader283.i.preheader ] ; 2 uses
  %.5158.i3063 = phi i64 [ %i.amb, %.preheader283.i ], [ %.4157333.i, %.preheader283.i.preheader ] ; 4 uses
  %i.amb = add nsw i64 %.5158.i3063, -1           ; 3 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.5.i3064, i64 1 ; 8 uses
  %i.amd = load i8, ptr %i.amc, align 1, !tbaa !10 ; 3 uses
  %i.ame = sext i8 %i.amd to i32
  %i.amf = icmp ne i8 %i.amd, 32
  %i.amg = add nsw i32 %i.ame, -14
  %i.amh = icmp ult i32 %i.amg, -5
  %narrow.i234.not.i = select i1 %i.amf, i1 %i.amh, i1 false
  br i1 %narrow.i234.not.i, label %.critedge4.thread.i, label %.preheader283.i, !llvm.loop !528

.critedge4.thread.i:                              ; preds = %.lr.ph
  %i.ami = icmp eq i8 %i.amd, 34
  br i1 %i.ami, label %bb.ic, label %.lr.ph341.i.preheader

.lr.ph341.i.preheader:                            ; preds = %.critedge4.thread.i
  %scevgep = getelementptr i8, ptr %.1148378.i, i64 %.1154377.i ; 2 uses
  br label %.lr.ph341.i

bb.ic:                                            ; preds = %.critedge4.thread.i
  %i.amj = getelementptr inbounds nuw i8, ptr %.5.i3064, i64 2 ; 7 uses
  %.not1341 = icmp eq i64 %.5158.i3063, 2
  br i1 %.not1341, label %.critedge10.i, label %.lr.ph356.i.preheader

.lr.ph356.i.preheader:                            ; preds = %bb.ic
  %i.amk = add nsw i64 %.5158.i3063, -2
  br label %.lr.ph356.i

.lr.ph356.i:                                      ; preds = %.lr.ph356.i.preheader, %bb.ie
  %i.aml = phi i64 [ %i.amq, %bb.ie ], [ %i.amk, %.lr.ph356.i.preheader ]
  %.6354.i = phi ptr [ %i.amp, %bb.ie ], [ %i.amj, %.lr.ph356.i.preheader ] ; 4 uses
  %.6159353.i = phi i64 [ %.7160.i, %bb.ie ], [ %i.amb, %.lr.ph356.i.preheader ] ; 2 uses
  %i.amm = load i8, ptr %.6354.i, align 1, !tbaa !10
  switch i8 %i.amm, label %bb.ie [
    i8 34, label %.critedge6.thread.i.loopexit
    i8 92, label %bb.id
  ]

bb.id:                                            ; preds = %.lr.ph356.i
  %i.amn = add nsw i64 %.6159353.i, -2
  %i.amo = getelementptr inbounds nuw i8, ptr %.6354.i, i64 1
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %.lr.ph356.i
  %.7160.i = phi i64 [ %i.amn, %bb.id ], [ %i.aml, %.lr.ph356.i ] ; 3 uses
  %.7.i = phi ptr [ %i.amo, %bb.id ], [ %.6354.i, %.lr.ph356.i ]
  %i.amp = getelementptr inbounds nuw i8, ptr %.7.i, i64 1 ; 5 uses
  %i.amq = add nsw i64 %.7160.i, -1               ; 2 uses
  %i.amr = icmp samesign ugt i64 %.7160.i, 1
  br i1 %i.amr, label %.lr.ph356.i, label %.critedge6.i, !llvm.loop !529

.critedge6.i:                                     ; preds = %bb.ie
  %.not213.i = icmp eq i64 %i.amq, 0
  br i1 %.not213.i, label %.critedge10.i, label %.critedge6.thread.i

.critedge6.thread.i.loopexit:                     ; preds = %.lr.ph356.i
  %i.ams = add nsw i64 %.6159353.i, -2
  br label %.critedge6.thread.i

.critedge6.thread.i:                              ; preds = %.critedge6.thread.i.loopexit, %.critedge6.i
  %.6159301.i = phi i64 [ -2, %.critedge6.i ], [ %i.ams, %.critedge6.thread.i.loopexit ]
  %.6299.i = phi ptr [ %i.amp, %.critedge6.i ], [ %.6354.i, %.critedge6.thread.i.loopexit ] ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %.6299.i, i64 1
  br label %.critedge8.i

.lr.ph341.i:                                      ; preds = %.lr.ph341.i.preheader, %bb.ig
  %.8340.i = phi ptr [ %i.ana, %bb.ig ], [ %i.amc, %.lr.ph341.i.preheader ] ; 8 uses
  %.8161339.i = phi i64 [ %i.amz, %bb.ig ], [ %i.amb, %.lr.ph341.i.preheader ] ; 5 uses
  %i.amu = load i8, ptr %.8340.i, align 1, !tbaa !10 ; 3 uses
  switch i8 %i.amu, label %bb.if [
    i8 34, label %.critedge8.i
    i8 59, label %.critedge8.i
  ]

bb.if:                                            ; preds = %.lr.ph341.i
  %i.amv = sext i8 %i.amu to i32
  %i.amw = icmp ne i8 %i.amu, 32
  %i.amx = add nsw i32 %i.amv, -14
  %i.amy = icmp ult i32 %i.amx, -5
  %narrow.i235.not.i = select i1 %i.amw, i1 %i.amy, i1 false
  br i1 %narrow.i235.not.i, label %bb.ig, label %.critedge8.i

bb.ig:                                            ; preds = %bb.if
  %i.amz = add nsw i64 %.8161339.i, -1
  %i.ana = getelementptr inbounds nuw i8, ptr %.8340.i, i64 1
  %i.anb = icmp sgt i64 %.8161339.i, 1
  br i1 %i.anb, label %.lr.ph341.i, label %.critedge8.i, !llvm.loop !530

.critedge8.i:                                     ; preds = %bb.ig, %bb.if, %.lr.ph341.i, %.lr.ph341.i, %.critedge6.thread.i
  %.0172.i = phi ptr [ %i.amj, %.critedge6.thread.i ], [ %i.amc, %.lr.ph341.i ], [ %i.amc, %.lr.ph341.i ], [ %i.amc, %bb.if ], [ %i.amc, %bb.ig ] ; 5 uses
  %.0171.i = phi ptr [ %.6299.i, %.critedge6.thread.i ], [ %scevgep, %bb.ig ], [ %.8340.i, %bb.if ], [ %.8340.i, %.lr.ph341.i ], [ %.8340.i, %.lr.ph341.i ] ; 5 uses
  %.9162.i = phi i64 [ %.6159301.i, %.critedge6.thread.i ], [ 0, %bb.ig ], [ %.8161339.i, %bb.if ], [ %.8161339.i, %.lr.ph341.i ], [ %.8161339.i, %.lr.ph341.i ] ; 7 uses
  %.9.i = phi ptr [ %i.amt, %.critedge6.thread.i ], [ %scevgep, %bb.ig ], [ %.8340.i, %bb.if ], [ %.8340.i, %.lr.ph341.i ], [ %.8340.i, %.lr.ph341.i ] ; 11 uses
  %i.anc = icmp sgt i64 %.9162.i, 0               ; 2 uses
  br i1 %.not254.i, label %.preheader280.i, label %.preheader281.i

.preheader281.i:                                  ; preds = %.critedge8.i
  br i1 %i.anc, label %.lr.ph362.preheader.i, label %.critedge10.i

.lr.ph362.preheader.i:                            ; preds = %.preheader281.i
  %scevgep416.i = getelementptr i8, ptr %.9.i, i64 %.9162.i
  br label %.lr.ph362.i

.preheader280.i:                                  ; preds = %.critedge8.i
  br i1 %i.anc, label %.lr.ph370.preheader.i, label %.critedge14.i

.lr.ph370.preheader.i:                            ; preds = %.preheader280.i
  %scevgep417.i = getelementptr i8, ptr %.9.i, i64 %.9162.i
  br label %.lr.ph370.i

.lr.ph362.i:                                      ; preds = %.critedge12.i, %.lr.ph362.preheader.i
  %.10361.i = phi ptr [ %i.ank, %.critedge12.i ], [ %.9.i, %.lr.ph362.preheader.i ] ; 3 uses
  %.10163360.i = phi i64 [ %i.anj, %.critedge12.i ], [ %.9162.i, %.lr.ph362.preheader.i ] ; 3 uses
  %i.and = load i8, ptr %.10361.i, align 1, !tbaa !10 ; 3 uses
  %i.ane = icmp eq i8 %i.and, 59
  br i1 %i.ane, label %.critedge12.i, label %bb.ih

bb.ih:                                            ; preds = %.lr.ph362.i
  %i.anf = sext i8 %i.and to i32
  %i.ang = icmp ne i8 %i.and, 32
  %i.anh = add nsw i32 %i.anf, -14
  %i.ani = icmp ult i32 %i.anh, -5
  %narrow.i236.not.i = select i1 %i.ang, i1 %i.ani, i1 false
  br i1 %narrow.i236.not.i, label %.critedge10.i, label %.critedge12.i

.critedge12.i:                                    ; preds = %bb.ih, %.lr.ph362.i
  %i.anj = add nsw i64 %.10163360.i, -1
  %i.ank = getelementptr inbounds nuw i8, ptr %.10361.i, i64 1
  %i.anl = icmp sgt i64 %.10163360.i, 1
  br i1 %i.anl, label %.lr.ph362.i, label %.critedge10.i, !llvm.loop !531

.lr.ph370.i:                                      ; preds = %bb.ii, %.lr.ph370.preheader.i
  %.11369.i = phi ptr [ %i.ans, %bb.ii ], [ %.9.i, %.lr.ph370.preheader.i ] ; 2 uses
  %.11164368.i = phi i64 [ %i.anr, %bb.ii ], [ %.9162.i, %.lr.ph370.preheader.i ] ; 2 uses
  %i.anm = load i8, ptr %.11369.i, align 1, !tbaa !10 ; 2 uses
  %i.ann = sext i8 %i.anm to i32
  %i.ano = icmp ne i8 %i.anm, 32
  %i.anp = add nsw i32 %i.ann, -14
  %i.anq = icmp ult i32 %i.anp, -5
  %narrow.i237.not.i = select i1 %i.ano, i1 %i.anq, i1 false
  br i1 %narrow.i237.not.i, label %.loopexit, label %bb.ii

bb.ii:                                            ; preds = %.lr.ph370.i
  %i.anr = add nsw i64 %.11164368.i, -1
  %i.ans = getelementptr inbounds nuw i8, ptr %.11369.i, i64 1
  %i.ant = icmp sgt i64 %.11164368.i, 1
  br i1 %i.ant, label %.lr.ph370.i, label %.critedge10.i, !llvm.loop !532

.critedge14.i:                                    ; preds = %.preheader280.i
  %.not216.i = icmp eq i64 %.9162.i, 0
  br i1 %.not216.i, label %.critedge10.i, label %.loopexit

.critedge10.i:                                    ; preds = %.critedge12.i, %bb.ih, %bb.ii, %bb.ic, %.critedge14.i, %.preheader281.i, %.critedge6.i
  %.9459.i = phi ptr [ %.9.i, %.critedge14.i ], [ %.9.i, %.preheader281.i ], [ %i.amj, %bb.ic ], [ %i.amp, %.critedge6.i ], [ %.9.i, %bb.ii ], [ %.9.i, %bb.ih ], [ %.9.i, %.critedge12.i ]
  %.0171454.i = phi ptr [ %.0171.i, %.critedge14.i ], [ %.0171.i, %.preheader281.i ], [ %i.amj, %bb.ic ], [ %i.amp, %.critedge6.i ], [ %.0171.i, %bb.ii ], [ %.0171.i, %bb.ih ], [ %.0171.i, %.critedge12.i ] ; 3 uses
  %.0172451.i = phi ptr [ %.0172.i, %.critedge14.i ], [ %.0172.i, %.preheader281.i ], [ %i.amj, %bb.ic ], [ %i.amj, %.critedge6.i ], [ %.0172.i, %bb.ii ], [ %.0172.i, %bb.ih ], [ %.0172.i, %.critedge12.i ] ; 8 uses
  %.12165.i = phi i64 [ 0, %.critedge14.i ], [ %.9162.i, %.preheader281.i ], [ 0, %bb.ic ], [ 0, %.critedge6.i ], [ 0, %bb.ii ], [ %.10163360.i, %bb.ih ], [ 0, %.critedge12.i ]
  %.12.i = phi ptr [ %.9.i, %.critedge14.i ], [ %.9.i, %.preheader281.i ], [ %i.amj, %bb.ic ], [ %i.amp, %.critedge6.i ], [ %scevgep417.i, %bb.ii ], [ %.10361.i, %bb.ih ], [ %scevgep416.i, %.critedge12.i ]
  %i.anu = ptrtoint ptr %.3150316.i to i64
  %i.anv = ptrtoint ptr %.2149314.i to i64
  %i.anw = sub i64 %i.anu, %i.anv                 ; 22 uses
  %.not218.i = icmp eq i64 %.0179375.i, 0
  br i1 %.not218.i, label %bb.im, label %bb.ij

bb.ij:                                            ; preds = %.critedge10.i
  %i.anx = tail call i64 @rb_str_resize(i64 noundef %.0179375.i, i64 noundef %i.anw) #29 ; 0 uses
  %i.any = inttoptr i64 %.0179375.i to ptr        ; 3 uses
  %i.anz = load i64, ptr %i.any, align 8, !tbaa !431
  %i.aoa = and i64 %i.anz, 8192
  %.not.i238.i = icmp eq i64 %i.aoa, 0
  %i.aob = getelementptr inbounds nuw i8, ptr %i.any, i64 24 ; 2 uses
  br i1 %.not.i238.i, label %RSTRING_PTR.exit.i, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !10
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.ik, %bb.ij
  %i.aod = phi ptr [ %i.aoc, %bb.ik ], [ %i.aob, %bb.ij ] ; 2 uses
  %.not.i239.i = icmp eq ptr %.3150316.i, %.2149314.i
  br i1 %.not.i239.i, label %ruby_nonempty_memcpy.exit.i, label %bb.il

bb.il:                                            ; preds = %RSTRING_PTR.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aod, ptr nonnull readonly align 1 %.2149314.i, i64 %i.anw, i1 false)
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.il, %RSTRING_PTR.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aod) ]
  br label %ruby_nonempty_memcpy.exit.i.a

bb.im:                                            ; preds = %.critedge10.i
  %i.aoe = load ptr, ptr %i.afx, align 8, !tbaa !49
  %i.aof = tail call i64 @rb_enc_str_new(ptr noundef nonnull %.2149314.i, i64 noundef %i.anw, ptr noundef %i.aoe) #29 ; 2 uses
  %.pre419.i = inttoptr i64 %i.aof to ptr
  br label %ruby_nonempty_memcpy.exit.i.a

ruby_nonempty_memcpy.exit.i.a:                    ; preds = %bb.im, %ruby_nonempty_memcpy.exit.i
  %.pre-phi.i898 = phi ptr [ %.pre419.i, %bb.im ], [ %i.any, %ruby_nonempty_memcpy.exit.i ] ; 2 uses
  %.1180.i = phi i64 [ %i.aof, %bb.im ], [ %.0179375.i, %ruby_nonempty_memcpy.exit.i ] ; 2 uses
  %i.aog = load i64, ptr %.pre-phi.i898, align 8, !tbaa !431
  %i.aoh = and i64 %i.aog, 8192
  %.not.i240.i899 = icmp eq i64 %i.aoh, 0
  %i.aoi = getelementptr inbounds nuw i8, ptr %.pre-phi.i898, i64 24 ; 2 uses
  br i1 %.not.i240.i899, label %RSTRING_PTR.exit241.i, label %bb.in

bb.in:                                            ; preds = %ruby_nonempty_memcpy.exit.i.a
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !10
  br label %RSTRING_PTR.exit241.i

RSTRING_PTR.exit241.i:                            ; preds = %bb.in, %ruby_nonempty_memcpy.exit.i.a
  %i.aok = phi ptr [ %i.aoj, %bb.in ], [ %i.aoi, %ruby_nonempty_memcpy.exit.i.a ] ; 46 uses
  %i.aol = icmp sgt i64 %i.anw, 0
  br i1 %i.aol, label %iter.check, label %.preheader.i900

iter.check:                                       ; preds = %RSTRING_PTR.exit241.i
  %min.iters.check = icmp ult i64 %i.anw, 8
  br i1 %min.iters.check, label %.lr.ph374.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3071 = icmp ult i64 %i.anw, 32
  br i1 %min.iters.check3071, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.anw, 24
  %n.vec = and i64 %i.anw, 9223372036854775776    ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue3134, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue3134 ] ; 33 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index ; 3 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 16
  %wide.load = load <16 x i8>, ptr %i.aom, align 1, !tbaa !10
  %wide.load3072 = load <16 x i8>, ptr %i.aon, align 1, !tbaa !10
  %i.aoo = icmp eq <16 x i8> %wide.load, splat (i8 45) ; 16 uses
  %i.aop = icmp eq <16 x i8> %wide.load3072, splat (i8 45) ; 16 uses
  %i.aoq = extractelement <16 x i1> %i.aoo, i64 0
  br i1 %i.aoq, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 95, ptr %i.aom, align 1, !tbaa !10
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.aor = extractelement <16 x i1> %i.aoo, i64 1
  br i1 %i.aor, label %pred.store.if3073, label %pred.store.continue3074

pred.store.if3073:                                ; preds = %pred.store.continue
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 1
  store i8 95, ptr %i.aot, align 1, !tbaa !10
  br label %pred.store.continue3074

pred.store.continue3074:                          ; preds = %pred.store.if3073, %pred.store.continue
  %i.aou = extractelement <16 x i1> %i.aoo, i64 2
  br i1 %i.aou, label %pred.store.if3075, label %pred.store.continue3076

pred.store.if3075:                                ; preds = %pred.store.continue3074
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 2
  store i8 95, ptr %i.aow, align 1, !tbaa !10
  br label %pred.store.continue3076

pred.store.continue3076:                          ; preds = %pred.store.if3075, %pred.store.continue3074
  %i.aox = extractelement <16 x i1> %i.aoo, i64 3
  br i1 %i.aox, label %pred.store.if3077, label %pred.store.continue3078

pred.store.if3077:                                ; preds = %pred.store.continue3076
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 3
  store i8 95, ptr %i.aoz, align 1, !tbaa !10
  br label %pred.store.continue3078

pred.store.continue3078:                          ; preds = %pred.store.if3077, %pred.store.continue3076
  %i.apa = extractelement <16 x i1> %i.aoo, i64 4
  br i1 %i.apa, label %pred.store.if3079, label %pred.store.continue3080

pred.store.if3079:                                ; preds = %pred.store.continue3078
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 4
  store i8 95, ptr %i.apc, align 1, !tbaa !10
  br label %pred.store.continue3080

pred.store.continue3080:                          ; preds = %pred.store.if3079, %pred.store.continue3078
  %i.apd = extractelement <16 x i1> %i.aoo, i64 5
  br i1 %i.apd, label %pred.store.if3081, label %pred.store.continue3082

pred.store.if3081:                                ; preds = %pred.store.continue3080
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 5
  store i8 95, ptr %i.apf, align 1, !tbaa !10
  br label %pred.store.continue3082

pred.store.continue3082:                          ; preds = %pred.store.if3081, %pred.store.continue3080
  %i.apg = extractelement <16 x i1> %i.aoo, i64 6
  br i1 %i.apg, label %pred.store.if3083, label %pred.store.continue3084

pred.store.if3083:                                ; preds = %pred.store.continue3082
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 6
  store i8 95, ptr %i.api, align 1, !tbaa !10
  br label %pred.store.continue3084

pred.store.continue3084:                          ; preds = %pred.store.if3083, %pred.store.continue3082
  %i.apj = extractelement <16 x i1> %i.aoo, i64 7
  br i1 %i.apj, label %pred.store.if3085, label %pred.store.continue3086

pred.store.if3085:                                ; preds = %pred.store.continue3084
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 7
  store i8 95, ptr %i.apl, align 1, !tbaa !10
  br label %pred.store.continue3086

pred.store.continue3086:                          ; preds = %pred.store.if3085, %pred.store.continue3084
  %i.apm = extractelement <16 x i1> %i.aoo, i64 8
  br i1 %i.apm, label %pred.store.if3087, label %pred.store.continue3088

pred.store.if3087:                                ; preds = %pred.store.continue3086
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 8
  store i8 95, ptr %i.apo, align 1, !tbaa !10
  br label %pred.store.continue3088

pred.store.continue3088:                          ; preds = %pred.store.if3087, %pred.store.continue3086
  %i.app = extractelement <16 x i1> %i.aoo, i64 9
  br i1 %i.app, label %pred.store.if3089, label %pred.store.continue3090

pred.store.if3089:                                ; preds = %pred.store.continue3088
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 9
  store i8 95, ptr %i.apr, align 1, !tbaa !10
  br label %pred.store.continue3090

pred.store.continue3090:                          ; preds = %pred.store.if3089, %pred.store.continue3088
  %i.aps = extractelement <16 x i1> %i.aoo, i64 10
  br i1 %i.aps, label %pred.store.if3091, label %pred.store.continue3092

pred.store.if3091:                                ; preds = %pred.store.continue3090
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 10
  store i8 95, ptr %i.apu, align 1, !tbaa !10
  br label %pred.store.continue3092

pred.store.continue3092:                          ; preds = %pred.store.if3091, %pred.store.continue3090
  %i.apv = extractelement <16 x i1> %i.aoo, i64 11
  br i1 %i.apv, label %pred.store.if3093, label %pred.store.continue3094

pred.store.if3093:                                ; preds = %pred.store.continue3092
  %i.apw = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 11
  store i8 95, ptr %i.apx, align 1, !tbaa !10
  br label %pred.store.continue3094

pred.store.continue3094:                          ; preds = %pred.store.if3093, %pred.store.continue3092
  %i.apy = extractelement <16 x i1> %i.aoo, i64 12
  br i1 %i.apy, label %pred.store.if3095, label %pred.store.continue3096

pred.store.if3095:                                ; preds = %pred.store.continue3094
  %i.apz = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 12
  store i8 95, ptr %i.aqa, align 1, !tbaa !10
  br label %pred.store.continue3096

pred.store.continue3096:                          ; preds = %pred.store.if3095, %pred.store.continue3094
  %i.aqb = extractelement <16 x i1> %i.aoo, i64 13
  br i1 %i.aqb, label %pred.store.if3097, label %pred.store.continue3098

pred.store.if3097:                                ; preds = %pred.store.continue3096
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 13
  store i8 95, ptr %i.aqd, align 1, !tbaa !10
  br label %pred.store.continue3098

pred.store.continue3098:                          ; preds = %pred.store.if3097, %pred.store.continue3096
  %i.aqe = extractelement <16 x i1> %i.aoo, i64 14
  br i1 %i.aqe, label %pred.store.if3099, label %pred.store.continue3100

pred.store.if3099:                                ; preds = %pred.store.continue3098
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 14
  store i8 95, ptr %i.aqg, align 1, !tbaa !10
  br label %pred.store.continue3100

pred.store.continue3100:                          ; preds = %pred.store.if3099, %pred.store.continue3098
  %i.aqh = extractelement <16 x i1> %i.aoo, i64 15
  br i1 %i.aqh, label %pred.store.if3101, label %pred.store.continue3102

pred.store.if3101:                                ; preds = %pred.store.continue3100
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 15
  store i8 95, ptr %i.aqj, align 1, !tbaa !10
  br label %pred.store.continue3102

pred.store.continue3102:                          ; preds = %pred.store.if3101, %pred.store.continue3100
  %i.aqk = extractelement <16 x i1> %i.aop, i64 0
  br i1 %i.aqk, label %pred.store.if3103, label %pred.store.continue3104

pred.store.if3103:                                ; preds = %pred.store.continue3102
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 16
end_hunk_0
begin_hunk_1_@parser_yylex:bb.a

pred.store.continue3126:                          ; preds = %pred.store.if3125, %pred.store.continue3124
  %i.aru = extractelement <16 x i1> %i.aop, i64 12
  br i1 %i.aru, label %pred.store.if3127, label %pred.store.continue3128

pred.store.if3127:                                ; preds = %pred.store.continue3126
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 28
  store i8 95, ptr %i.arw, align 1, !tbaa !10
  br label %pred.store.continue3128

pred.store.continue3128:                          ; preds = %pred.store.if3127, %pred.store.continue3126
  %i.arx = extractelement <16 x i1> %i.aop, i64 13
  br i1 %i.arx, label %pred.store.if3129, label %pred.store.continue3130

pred.store.if3129:                                ; preds = %pred.store.continue3128
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 29
  store i8 95, ptr %i.arz, align 1, !tbaa !10
  br label %pred.store.continue3130

pred.store.continue3130:                          ; preds = %pred.store.if3129, %pred.store.continue3128
  %i.asa = extractelement <16 x i1> %i.aop, i64 14
  br i1 %i.asa, label %pred.store.if3131, label %pred.store.continue3132

pred.store.if3131:                                ; preds = %pred.store.continue3130
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 30
  store i8 95, ptr %i.asc, align 1, !tbaa !10
  br label %pred.store.continue3132

pred.store.continue3132:                          ; preds = %pred.store.if3131, %pred.store.continue3130
  %i.asd = extractelement <16 x i1> %i.aop, i64 15
  br i1 %i.asd, label %pred.store.if3133, label %pred.store.continue3134

pred.store.if3133:                                ; preds = %pred.store.continue3132
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 31
  store i8 95, ptr %i.asf, align 1, !tbaa !10
  br label %pred.store.continue3134

pred.store.continue3134:                          ; preds = %pred.store.if3133, %pred.store.continue3132
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.asg = icmp eq i64 %index.next, %n.vec
  br i1 %i.asg, label %middle.block, label %vector.body, !llvm.loop !533

middle.block:                                     ; preds = %pred.store.continue3134
  %cmp.n = icmp eq i64 %i.anw, %n.vec
  br i1 %cmp.n, label %.preheader.i900, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph374.i.preheader, label %vec.epilog.ph, !prof !534

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec3136 = and i64 %i.anw, 9223372036854775800 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue3154, %vec.epilog.ph
  %index3137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3155, %pred.store.continue3154 ] ; 9 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index3137 ; 2 uses
  %wide.load3138 = load <8 x i8>, ptr %i.ash, align 1, !tbaa !10
  %i.asi = icmp eq <8 x i8> %wide.load3138, splat (i8 45) ; 8 uses
  %i.asj = extractelement <8 x i1> %i.asi, i64 0
  br i1 %i.asj, label %pred.store.if3139, label %pred.store.continue3140

pred.store.if3139:                                ; preds = %vec.epilog.vector.body
  store i8 95, ptr %i.ash, align 1, !tbaa !10
  br label %pred.store.continue3140

pred.store.continue3140:                          ; preds = %pred.store.if3139, %vec.epilog.vector.body
  %i.ask = extractelement <8 x i1> %i.asi, i64 1
  br i1 %i.ask, label %pred.store.if3141, label %pred.store.continue3142

pred.store.if3141:                                ; preds = %pred.store.continue3140
  %i.asl = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index3137
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 1
  store i8 95, ptr %i.asm, align 1, !tbaa !10
  br label %pred.store.continue3142

pred.store.continue3142:                          ; preds = %pred.store.if3141, %pred.store.continue3140
  %i.asn = extractelement <8 x i1> %i.asi, i64 2
  br i1 %i.asn, label %pred.store.if3143, label %pred.store.continue3144

pred.store.if3143:                                ; preds = %pred.store.continue3142
  %i.aso = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index3137
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 2
  store i8 95, ptr %i.asp, align 1, !tbaa !10
  br label %pred.store.continue3144

pred.store.continue3144:                          ; preds = %pred.store.if3143, %pred.store.continue3142
  %i.asq = extractelement <8 x i1> %i.asi, i64 3
  br i1 %i.asq, label %pred.store.if3145, label %pred.store.continue3146

pred.store.if3145:                                ; preds = %pred.store.continue3144
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index3137
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 3
  store i8 95, ptr %i.ass, align 1, !tbaa !10
  br label %pred.store.continue3146

pred.store.continue3146:                          ; preds = %pred.store.if3145, %pred.store.continue3144
  %i.ast = extractelement <8 x i1> %i.asi, i64 4
  br i1 %i.ast, label %pred.store.if3147, label %pred.store.continue3148

pred.store.if3147:                                ; preds = %pred.store.continue3146
  %i.asu = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index3137
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 4
  store i8 95, ptr %i.asv, align 1, !tbaa !10
  br label %pred.store.continue3148

pred.store.continue3148:                          ; preds = %pred.store.if3147, %pred.store.continue3146
  %i.asw = extractelement <8 x i1> %i.asi, i64 5
  br i1 %i.asw, label %pred.store.if3149, label %pred.store.continue3150

pred.store.if3149:                                ; preds = %pred.store.continue3148
  %i.asx = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index3137
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 5
  store i8 95, ptr %i.asy, align 1, !tbaa !10
  br label %pred.store.continue3150

pred.store.continue3150:                          ; preds = %pred.store.if3149, %pred.store.continue3148
  %i.asz = extractelement <8 x i1> %i.asi, i64 6
  br i1 %i.asz, label %pred.store.if3151, label %pred.store.continue3152

pred.store.if3151:                                ; preds = %pred.store.continue3150
  %i.ata = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index3137
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 6
  store i8 95, ptr %i.atb, align 1, !tbaa !10
  br label %pred.store.continue3152

pred.store.continue3152:                          ; preds = %pred.store.if3151, %pred.store.continue3150
  %i.atc = extractelement <8 x i1> %i.asi, i64 7
  br i1 %i.atc, label %pred.store.if3153, label %pred.store.continue3154

pred.store.if3153:                                ; preds = %pred.store.continue3152
  %i.atd = getelementptr inbounds nuw i8, ptr %i.aok, i64 %index3137
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 7
  store i8 95, ptr %i.ate, align 1, !tbaa !10
  br label %pred.store.continue3154

pred.store.continue3154:                          ; preds = %pred.store.if3153, %pred.store.continue3152
  %index.next3155 = add nuw i64 %index3137, 8     ; 2 uses
  %i.atf = icmp eq i64 %index.next3155, %n.vec3136
  br i1 %i.atf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !535

vec.epilog.middle.block:                          ; preds = %pred.store.continue3154
  %cmp.n3156 = icmp eq i64 %i.anw, %n.vec3136
  br i1 %cmp.n3156, label %.preheader.i900, label %.lr.ph374.i.preheader

.lr.ph374.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec3136, %vec.epilog.middle.block ]
  br label %.lr.ph374.i

.preheader.i900:                                  ; preds = %bb.ip, %middle.block, %vec.epilog.middle.block, %RSTRING_PTR.exit241.i
  %i.atg = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.628, ptr noundef %i.aok, i64 noundef %i.anw) #32
  %i.ath = icmp eq i32 %i.atg, 0
  %.not219.i = icmp eq i64 %i.anw, 6
  %or.cond.i901 = and i1 %.not219.i, %i.ath
  br i1 %or.cond.i901, label %bb.iq, label %bb.iy

.lr.ph374.i:                                      ; preds = %.lr.ph374.i.preheader, %bb.ip
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ip ], [ %indvars.iv.i.ph, %.lr.ph374.i.preheader ] ; 2 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %i.aok, i64 %indvars.iv.i ; 2 uses
  %i.atj = load i8, ptr %i.ati, align 1, !tbaa !10
  %i.atk = icmp eq i8 %i.atj, 45
  br i1 %i.atk, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %.lr.ph374.i
  store i8 95, ptr %i.ati, align 1, !tbaa !10
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %.lr.ph374.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i904 = icmp eq i64 %indvars.iv.next.i, %i.anw
  br i1 %exitcond.not.i904, label %.preheader.i900, label %.lr.ph374.i, !llvm.loop !536

bb.iq:                                            ; preds = %bb.jb, %bb.ja, %bb.iz, %bb.iy, %.preheader.i900
  %.0168.idx.lcssa.i = phi i64 [ 0, %.preheader.i900 ], [ 24, %bb.iy ], [ 48, %bb.iz ], [ 72, %bb.ja ], [ 96, %bb.jb ]
  %.lcssa404.i = phi ptr [ @.str.628, %.preheader.i900 ], [ @.str.629, %bb.iy ], [ @.str.630, %bb.iz ], [ @.str.631, %bb.ja ], [ @.str.632, %bb.jb ]
  %.0168.ptr.le.i = getelementptr inbounds nuw i8, ptr @magic_comments, i64 %.0168.idx.lcssa.i ; 2 uses
  %i.atl = ptrtoint ptr %.0171454.i to i64
  %i.atm = ptrtoint ptr %.0172451.i to i64
  %i.atn = sub i64 %i.atl, %i.atm                 ; 3 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %.0168.ptr.le.i, i64 16
  %i.atp = load ptr, ptr %i.ato, align 8, !tbaa !537 ; 2 uses
  %.not220.i = icmp eq ptr %i.atp, null
  br i1 %.not220.i, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.atq = tail call i64 %i.atp(ptr noundef %0, ptr noundef nonnull %.0172451.i, i64 noundef %i.atn) #29, !inline_history !539
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.0151.i = phi i64 [ %i.atq, %bb.ir ], [ %i.atn, %bb.iq ] ; 4 uses
  %.not221.i = icmp eq i64 %.0173376.i, 0
  br i1 %.not221.i, label %bb.iw, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.atr = tail call i64 @rb_str_resize(i64 noundef %.0173376.i, i64 noundef %.0151.i) #29 ; 0 uses
  %i.ats = inttoptr i64 %.0173376.i to ptr        ; 3 uses
  %i.att = load i64, ptr %i.ats, align 8, !tbaa !431
  %i.atu = and i64 %i.att, 8192
  %.not.i242.i = icmp eq i64 %i.atu, 0
  %i.atv = getelementptr inbounds nuw i8, ptr %i.ats, i64 24 ; 2 uses
  br i1 %.not.i242.i, label %RSTRING_PTR.exit243.i, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.atw = load ptr, ptr %i.atv, align 8, !tbaa !10
  br label %RSTRING_PTR.exit243.i

RSTRING_PTR.exit243.i:                            ; preds = %bb.iu, %bb.it
  %i.atx = phi ptr [ %i.atw, %bb.iu ], [ %i.atv, %bb.it ] ; 2 uses
  %.not.i244.i = icmp eq i64 %.0151.i, 0
  br i1 %.not.i244.i, label %ruby_nonempty_memcpy.exit245.i, label %bb.iv

bb.iv:                                            ; preds = %RSTRING_PTR.exit243.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.atx, ptr nonnull readonly align 1 %.0172451.i, i64 %.0151.i, i1 false)
  br label %ruby_nonempty_memcpy.exit245.i

ruby_nonempty_memcpy.exit245.i:                   ; preds = %bb.iv, %RSTRING_PTR.exit243.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.atx) ]
  br label %ruby_nonempty_memcpy.exit245.i.a

bb.iw:                                            ; preds = %bb.is
  %i.aty = load ptr, ptr %i.afx, align 8, !tbaa !49
  %i.atz = tail call i64 @rb_enc_str_new(ptr noundef nonnull %.0172451.i, i64 noundef %.0151.i, ptr noundef %i.aty) #29 ; 2 uses
  %.pre420.i = inttoptr i64 %i.atz to ptr
  br label %ruby_nonempty_memcpy.exit245.i.a

ruby_nonempty_memcpy.exit245.i.a:                 ; preds = %bb.iw, %ruby_nonempty_memcpy.exit245.i
  %.pre-phi421.i = phi ptr [ %.pre420.i, %bb.iw ], [ %i.ats, %ruby_nonempty_memcpy.exit245.i ] ; 2 uses
  %.1174.i = phi i64 [ %i.atz, %bb.iw ], [ %.0173376.i, %ruby_nonempty_memcpy.exit245.i ]
  store ptr %i.amc, ptr %i.afw, align 8, !tbaa !41
  store ptr %.9459.i, ptr %i.aft, align 8, !tbaa !48
  %i.aua = getelementptr inbounds nuw i8, ptr %.0168.ptr.le.i, i64 8
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !540
  %i.auc = load i64, ptr %.pre-phi421.i, align 8, !tbaa !431
  %i.aud = and i64 %i.auc, 8192
  %.not.i246.i = icmp eq i64 %i.aud, 0
  %i.aue = getelementptr inbounds nuw i8, ptr %.pre-phi421.i, i64 24 ; 2 uses
  br i1 %.not.i246.i, label %RSTRING_PTR.exit247.i, label %bb.ix

bb.ix:                                            ; preds = %ruby_nonempty_memcpy.exit245.i.a
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !10
  br label %RSTRING_PTR.exit247.i

RSTRING_PTR.exit247.i:                            ; preds = %bb.ix, %ruby_nonempty_memcpy.exit245.i.a
  %i.aug = phi ptr [ %i.auf, %bb.ix ], [ %i.aue, %ruby_nonempty_memcpy.exit245.i.a ]
  tail call void %i.aub(ptr noundef nonnull %0, ptr noundef nonnull %.lcssa404.i, ptr noundef %i.aug) #29, !inline_history !539
  br label %.loopexit.i902

bb.iy:                                            ; preds = %.preheader.i900
  %i.auh = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.629, ptr noundef %i.aok, i64 noundef %i.anw) #32
  %i.aui = icmp eq i32 %i.auh, 0
  %.not219.1.i = icmp eq i64 %i.anw, 8
  %or.cond509.i = and i1 %.not219.1.i, %i.aui
  br i1 %or.cond509.i, label %bb.iq, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.auj = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.630, ptr noundef %i.aok, i64 noundef %i.anw) #32
  %i.auk = icmp eq i32 %i.auj, 0
  %.not219.2.i = icmp eq i64 %i.anw, 21
  %or.cond510.i = and i1 %.not219.2.i, %i.auk
  br i1 %or.cond510.i, label %bb.iq, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.aul = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.631, ptr noundef %i.aok, i64 noundef %i.anw) #32
  %i.aum = icmp eq i32 %i.aul, 0
  %.not219.3.i = icmp eq i64 %i.anw, 24
  %or.cond511.i = and i1 %.not219.3.i, %i.aum
  br i1 %or.cond511.i, label %bb.iq, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.aun = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.632, ptr noundef %i.aok, i64 noundef %i.anw) #32
  %i.auo = icmp eq i32 %i.aun, 0
  %.not219.4.i = icmp eq i64 %i.anw, 11
  %or.cond512.i = and i1 %.not219.4.i, %i.auo
  br i1 %or.cond512.i, label %bb.iq, label %..loopexit.i902_crit_edge

..loopexit.i902_crit_edge:                        ; preds = %bb.jb
  %.pre2167 = ptrtoint ptr %.0171454.i to i64
  %.pre2169 = ptrtoint ptr %.0172451.i to i64
  %.pre2171 = sub i64 %.pre2167, %.pre2169
  br label %.loopexit.i902

.loopexit.i902:                                   ; preds = %..loopexit.i902_crit_edge, %RSTRING_PTR.exit247.i
  %.pre-phi2172 = phi i64 [ %.pre2171, %..loopexit.i902_crit_edge ], [ %i.atn, %RSTRING_PTR.exit247.i ] ; 3 uses
  %.2175.i = phi i64 [ %.0173376.i, %..loopexit.i902_crit_edge ], [ %.1174.i, %RSTRING_PTR.exit247.i ] ; 4 uses
  %.not222.i = icmp eq i64 %.2175.i, 0
  br i1 %.not222.i, label %bb.jf, label %bb.jc

bb.jc:                                            ; preds = %.loopexit.i902
  %i.aup = tail call i64 @rb_str_resize(i64 noundef %.2175.i, i64 noundef %.pre-phi2172) #29 ; 0 uses
  %i.auq = inttoptr i64 %.2175.i to ptr           ; 2 uses
  %i.aur = load i64, ptr %i.auq, align 8, !tbaa !431
  %i.aus = and i64 %i.aur, 8192
  %.not.i248.i = icmp eq i64 %i.aus, 0
  %i.aut = getelementptr inbounds nuw i8, ptr %i.auq, i64 24 ; 2 uses
  br i1 %.not.i248.i, label %RSTRING_PTR.exit249.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !10
  br label %RSTRING_PTR.exit249.i

RSTRING_PTR.exit249.i:                            ; preds = %bb.jd, %bb.jc
  %i.auv = phi ptr [ %i.auu, %bb.jd ], [ %i.aut, %bb.jc ] ; 2 uses
  %.not.i250.i = icmp eq ptr %.0171454.i, %.0172451.i
  br i1 %.not.i250.i, label %ruby_nonempty_memcpy.exit251.i, label %bb.je

bb.je:                                            ; preds = %RSTRING_PTR.exit249.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.auv, ptr nonnull readonly align 1 %.0172451.i, i64 %.pre-phi2172, i1 false)
  br label %ruby_nonempty_memcpy.exit251.i

ruby_nonempty_memcpy.exit251.i:                   ; preds = %bb.je, %RSTRING_PTR.exit249.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.auv) ]
  br label %ruby_nonempty_memcpy.exit251.i.a

bb.jf:                                            ; preds = %.loopexit.i902
  %i.auw = load ptr, ptr %i.afx, align 8, !tbaa !49
  %i.aux = tail call i64 @rb_enc_str_new(ptr noundef nonnull %.0172451.i, i64 noundef %.pre-phi2172, ptr noundef %i.auw) #29
  br label %ruby_nonempty_memcpy.exit251.i.a

ruby_nonempty_memcpy.exit251.i.a:                 ; preds = %bb.jf, %ruby_nonempty_memcpy.exit251.i
  %.3176.i = phi i64 [ %.2175.i, %ruby_nonempty_memcpy.exit251.i ], [ %i.aux, %bb.jf ] ; 2 uses
  %.val.i903 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.auy = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i903, i64 noundef %i.agd, i32 noundef 2, i64 noundef %.1180.i, i64 noundef %.3176.i) #29 ; 0 uses
  br label %bb.jg

bb.jg:                                            ; preds = %ruby_nonempty_memcpy.exit251.i.a, %bb.ib
  %.3182.i = phi i64 [ %.1180.i, %ruby_nonempty_memcpy.exit251.i.a ], [ %.0179375.i, %bb.ib ]
  %.5178.i = phi i64 [ %.3176.i, %ruby_nonempty_memcpy.exit251.i.a ], [ %.0173376.i, %bb.ib ]
  %.14167.i = phi i64 [ %.12165.i, %ruby_nonempty_memcpy.exit251.i.a ], [ %.4157333.i, %bb.ib ] ; 2 uses
  %.14.i = phi ptr [ %.12.i, %ruby_nonempty_memcpy.exit251.i.a ], [ %.4334.i, %bb.ib ]
  %i.auz = icmp sgt i64 %.14167.i, 0
  br i1 %i.auz, label %.preheader284.i, label %parser_magic_comment.exit

.loopexit:                                        ; preds = %bb.hr, %bb.hu, %bb.ib, %.critedge14.i, %.lr.ph370.i, %bb.hi, %magic_comment_marker.exit.i
  %i.ava = load i16, ptr %i.f, align 8            ; 2 uses
  %i.avb = and i16 %i.ava, 128
  %.not.i906 = icmp eq i16 %i.avb, 0
  br i1 %.not.i906, label %comment_at_top.exit, label %parser_magic_comment.exit

comment_at_top.exit:                              ; preds = %.loopexit
  %i.avc = load i32, ptr %i.age, align 8, !tbaa !541
  %i.avd = and i16 %i.ava, 64
  %.not4.i = icmp eq i16 %i.avd, 0
  %i.ave = select i1 %.not4.i, i32 1, i32 2
  %i.avf = icmp eq i32 %i.avc, %i.ave
  br i1 %i.avf, label %bb.jh, label %parser_magic_comment.exit

bb.jh:                                            ; preds = %comment_at_top.exit
  %i.avg = load ptr, ptr %i.aft, align 8, !tbaa !48 ; 2 uses
  %i.avh = load ptr, ptr %i.afu, align 8, !tbaa !413 ; 4 uses
  %i.avi = ptrtoint ptr %i.avh to i64             ; 3 uses
  %i.avj = ptrtoint ptr %i.avg to i64
  %i.avk = sub i64 %i.avi, %i.avj
  %i.avl = icmp slt i64 %i.avk, 7
  br i1 %i.avl, label %parser_magic_comment.exit, label %.lr.ph.i907

.lr.ph.i907:                                      ; preds = %bb.jh, %.backedge.i908
  %.065.i = phi ptr [ %.0.be.i, %.backedge.i908 ], [ %i.avg, %bb.jh ] ; 8 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %.065.i, i64 6 ; 6 uses
  %i.avn = load i8, ptr %i.avm, align 1, !tbaa !10 ; 3 uses
  switch i8 %i.avn, label %bb.jn [
    i8 67, label %.backedge.i908
    i8 99, label %.backedge.i908
    i8 79, label %bb.ji
    i8 111, label %bb.ji
    i8 68, label %bb.jj
    i8 100, label %bb.jj
    i8 73, label %bb.jk
    i8 105, label %bb.jk
    i8 78, label %bb.jl
    i8 110, label %bb.jl
    i8 71, label %bb.jm
    i8 103, label %bb.jm
    i8 61, label %bb.jo
    i8 58, label %bb.jo
  ]

.backedge.i908:                                   ; preds = %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %.lr.ph.i907, %.lr.ph.i907
  %.0.be.i = phi ptr [ %i.avv, %bb.jm ], [ %i.avm, %bb.jn ], [ %i.avm, %bb.jo ], [ %i.avr, %bb.ji ], [ %i.avs, %bb.jj ], [ %i.avt, %bb.jk ], [ %i.avu, %bb.jl ], [ %i.avm, %.lr.ph.i907 ], [ %i.avm, %.lr.ph.i907 ] ; 2 uses
  %i.avo = ptrtoint ptr %.0.be.i to i64
  %i.avp = sub i64 %i.avi, %i.avo
  %i.avq = icmp slt i64 %i.avp, 7
  br i1 %i.avq, label %parser_magic_comment.exit, label %.lr.ph.i907

bb.ji:                                            ; preds = %.lr.ph.i907, %.lr.ph.i907
  %i.avr = getelementptr inbounds nuw i8, ptr %.065.i, i64 5
  br label %.backedge.i908

bb.jj:                                            ; preds = %.lr.ph.i907, %.lr.ph.i907
  %i.avs = getelementptr inbounds nuw i8, ptr %.065.i, i64 4
  br label %.backedge.i908

bb.jk:                                            ; preds = %.lr.ph.i907, %.lr.ph.i907
  %i.avt = getelementptr inbounds nuw i8, ptr %.065.i, i64 3
  br label %.backedge.i908

bb.jl:                                            ; preds = %.lr.ph.i907, %.lr.ph.i907
  %i.avu = getelementptr inbounds nuw i8, ptr %.065.i, i64 2
  br label %.backedge.i908

bb.jm:                                            ; preds = %.lr.ph.i907, %.lr.ph.i907
  %i.avv = getelementptr inbounds nuw i8, ptr %.065.i, i64 1
  br label %.backedge.i908

bb.jn:                                            ; preds = %.lr.ph.i907
  %i.avw = sext i8 %i.avn to i32
  %i.avx = icmp ne i8 %i.avn, 32
  %i.avy = add nsw i32 %i.avw, -14
  %i.avz = icmp ult i32 %i.avy, -5
  %narrow.i.not.i918 = select i1 %i.avx, i1 %i.avz, i1 false
  br i1 %narrow.i.not.i918, label %.backedge.i908, label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %.lr.ph.i907, %.lr.ph.i907
  %i.awa = phi i1 [ true, %bb.jn ], [ false, %.lr.ph.i907 ], [ false, %.lr.ph.i907 ]
  %i.awb = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull %.065.i, ptr noundef nonnull @.str.628, i64 noundef 6) #32
  %i.awc = icmp eq i32 %i.awb, 0
  br i1 %i.awc, label %.preheader58.i.preheader, label %.backedge.i908

.preheader58.i.preheader:                         ; preds = %bb.jo
  %i.awd = getelementptr inbounds nuw i8, ptr %.065.i, i64 7 ; 2 uses
  %.not47.i30653068 = icmp ult ptr %i.awd, %i.avh
  br i1 %.not47.i30653068, label %.lr.ph3067, label %parser_magic_comment.exit

.lr.ph3067:                                       ; preds = %.preheader58.i.preheader, %.preheader58.i
  %i.awe = phi ptr [ %i.awo, %.preheader58.i ], [ %i.awd, %.preheader58.i.preheader ]
  %.2.i9103070 = phi ptr [ %i.awn, %.preheader58.i ], [ %i.avm, %.preheader58.i.preheader ] ; 3 uses
  %.240.i3069 = phi i1 [ false, %.preheader58.i ], [ %i.awa, %.preheader58.i.preheader ]
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jq
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awg, i64 1 ; 2 uses
  %.not47.i = icmp ult ptr %i.awf, %i.avh
  br i1 %.not47.i, label %bb.jq, label %parser_magic_comment.exit, !llvm.loop !542

bb.jq:                                            ; preds = %.lr.ph3067, %bb.jp
  %i.awg = phi ptr [ %i.awe, %.lr.ph3067 ], [ %i.awf, %bb.jp ] ; 8 uses
  %.3.i9113066 = phi ptr [ %.2.i9103070, %.lr.ph3067 ], [ %i.awg, %bb.jp ] ; 2 uses
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !10 ; 3 uses
  %i.awi = sext i8 %i.awh to i32
  %i.awj = icmp ne i8 %i.awh, 32
  %i.awk = add nsw i32 %i.awi, -14
  %i.awl = icmp ult i32 %i.awk, -5
  %narrow.i53.not.i = select i1 %i.awj, i1 %i.awl, i1 false
  br i1 %narrow.i53.not.i, label %bb.jr, label %bb.jp, !llvm.loop !542

bb.jr:                                            ; preds = %bb.jq
  br i1 %.240.i3069, label %bb.js, label %.preheader.i912

.preheader.i912:                                  ; preds = %bb.jr
  %scevgep.i = getelementptr i8, ptr %.2.i9103070, i64 %i.avi
  %.2.lcssa7375.i = ptrtoint ptr %.2.i9103070 to i64
  %i.awm = sub i64 0, %.2.lcssa7375.i
  %scevgep76.i = getelementptr i8, ptr %scevgep.i, i64 %i.awm ; 2 uses
  br label %bb.jt

bb.js:                                            ; preds = %bb.jr
  switch i8 %i.awh, label %parser_magic_comment.exit [
    i8 61, label %.preheader58.i
    i8 58, label %.preheader58.i
  ]

.preheader58.i:                                   ; preds = %bb.js, %bb.js
  %i.awn = getelementptr inbounds nuw i8, ptr %.3.i9113066, i64 2
  %i.awo = getelementptr inbounds nuw i8, ptr %.3.i9113066, i64 3 ; 2 uses
  %.not47.i3065 = icmp ult ptr %i.awo, %i.avh
  br i1 %.not47.i3065, label %.lr.ph3067, label %parser_magic_comment.exit

bb.jt:                                            ; preds = %bb.jv, %.preheader.i912
  %.4.i = phi ptr [ %i.awv, %bb.jv ], [ %i.awg, %.preheader.i912 ] ; 3 uses
  %i.awp = load i8, ptr %.4.i, align 1, !tbaa !10 ; 2 uses
  switch i8 %i.awp, label %bb.ju [
    i8 45, label %bb.jv
    i8 95, label %bb.jv
  ]

bb.ju:                                            ; preds = %bb.jt
  %i.awq = sext i8 %i.awp to i32                  ; 2 uses
  %i.awr = and i32 %i.awq, -33
  %i.aws = add nsw i32 %i.awr, -91
  %narrow.i.i.i = icmp ult i32 %i.aws, -26
  %i.awt = add nsw i32 %i.awq, -58
  %i.awu = icmp ult i32 %i.awt, -10
  %narrow.i54.not.i = select i1 %narrow.i.i.i, i1 %i.awu, i1 false
  br i1 %narrow.i54.not.i, label %.critedge.i914, label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt, %bb.jt
  %i.awv = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %exitcond.not.i913 = icmp eq ptr %i.awv, %scevgep76.i
  br i1 %exitcond.not.i913, label %.critedge.i914, label %bb.jt, !llvm.loop !543

.critedge.i914:                                   ; preds = %bb.jv, %bb.ju
  %.5.i915 = phi ptr [ %scevgep76.i, %bb.jv ], [ %.4.i, %bb.ju ] ; 2 uses
  %i.aww = ptrtoint ptr %.5.i915 to i64
  %i.awx = ptrtoint ptr %i.awg to i64
  %i.awy = sub i64 %i.aww, %i.awx
  %i.awz = tail call i64 @parser_encode_length(ptr poison, ptr noundef nonnull %i.awg, i64 noundef %i.awy)
  %i.axa = tail call i64 @rb_str_new(ptr noundef nonnull %i.awg, i64 noundef %i.awz) #29 ; 2 uses
  store ptr %i.awg, ptr %i.afw, align 8, !tbaa !41
  store ptr %.5.i915, ptr %i.aft, align 8, !tbaa !48
  %i.axb = inttoptr i64 %i.axa to ptr             ; 2 uses
  %i.axc = load i64, ptr %i.axb, align 8, !tbaa !431
  %i.axd = and i64 %i.axc, 8192
  %.not.i.i916 = icmp eq i64 %i.axd, 0
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axb, i64 24 ; 2 uses
  br i1 %.not.i.i916, label %RSTRING_PTR.exit.i917, label %bb.jw

bb.jw:                                            ; preds = %.critedge.i914
  %i.axf = load ptr, ptr %i.axe, align 8, !tbaa !10
  br label %RSTRING_PTR.exit.i917

RSTRING_PTR.exit.i917:                            ; preds = %bb.jw, %.critedge.i914
  %i.axg = phi ptr [ %i.axf, %bb.jw ], [ %i.axe, %.critedge.i914 ]
  tail call fastcc void @parser_set_encode(ptr noundef nonnull %0, ptr noundef %i.axg)
  %i.axh = tail call i64 @rb_str_resize(i64 noundef %i.axa, i64 noundef 0) #29 ; 0 uses
  br label %parser_magic_comment.exit

parser_magic_comment.exit:                        ; preds = %bb.jg, %.preheader283.i.preheader, %.backedge.i908, %bb.js, %.preheader58.i, %bb.hx, %bb.hz, %bb.ia, %.preheader283.i, %bb.jp, %.preheader58.i.preheader, %.loopexit, %RSTRING_PTR.exit.i917, %bb.jh, %magic_comment_marker.exit.thread.i, %comment_at_top.exit
  store ptr %i.ajl, ptr %i.afw, align 8, !tbaa !41
  %i.axi = load ptr, ptr %i.afu, align 8, !tbaa !413 ; 5 uses
  store ptr %i.axi, ptr %i.aft, align 8, !tbaa !48
  %i.axj = icmp ult ptr %i.axi, %i.ajl
end_hunk_1
begin_hunk_2_@parse_qmark:bb.a
.critedge152.backedge:                            ; preds = %is_identchar.exit134, %bb.z
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !413
  %i.dj = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.dk = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.cx, ptr noundef %i.di, ptr noundef %i.dj) #29 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph, label %parser_precise_mbclen.exit131, !llvm.loop !558

.critedge:                                        ; preds = %.lr.ph, %is_identchar.exit134
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !46
  %i.do = load i64, ptr @id_warn, align 8, !tbaa !11
  %i.dp = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.655, i64 noundef 91) #29
  %i.dq = ptrtoint ptr %i.cx to i64
  %i.dr = ptrtoint ptr %i.c to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %sext = shl i64 %i.ds, 32
  %i.dt = ashr exact i64 %sext, 31
  %i.du = or disjoint i64 %i.dt, 1
  %i.dv = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.dw = tail call i64 @rb_enc_str_new(ptr noundef nonnull %i.c, i64 noundef %i.ds, ptr noundef %i.dv) #29
  %i.dx = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.dn, i64 noundef %i.do, i32 noundef 3, i64 noundef %i.dp, i64 noundef %i.du, i64 noundef %i.dw) #29 ; 0 uses
  br label %escaped_control_code.exit

bb.aa:                                            ; preds = %bb.y, %bb.w, %is_identchar.exit.thread
  %i.dy = icmp eq i32 %.011.i.ph, 92
  br i1 %i.dy, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !48  ; 3 uses
  %i.ea = load ptr, ptr %i.k, align 8, !tbaa !413
  %.not112 = icmp ult ptr %i.dz, %i.ea
  br i1 %.not112, label %bb.ac, label %.thread148

bb.ac:                                            ; preds = %bb.ab
  %i.eb = load i8, ptr %i.dz, align 1, !tbaa !10  ; 3 uses
  %i.ec = icmp eq i8 %i.eb, 117
  br i1 %i.ec, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ed = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 0 uses
  %i.ee = tail call nonnull ptr @rb_utf8_encoding() #29
  store ptr %i.ee, ptr %i.a, align 8, !tbaa !500
  call fastcc void @tokadd_utf8(ptr noundef nonnull %0, ptr noundef %i.a, i32 noundef -1, i32 noundef 0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !500
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.ef = icmp slt i8 %i.eb, 0
  br i1 %i.ef, label %bb.af, label %.thread148

bb.af:                                            ; preds = %bb.ae
  %i.eg = zext i8 %i.eb to i32
  %i.eh = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 0 uses
  %i.ei = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %i.eg)
  %i.ej = icmp eq i32 %i.ei, -1
  br i1 %i.ej, label %.critedge117, label %bb.ah

.thread148:                                       ; preds = %bb.ab, %bb.ae
  %i.ek = getelementptr inbounds i8, ptr %i.dz, i64 -2
  %i.el = tail call fastcc i32 @read_escape(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.ek)
  tail call fastcc void @tokadd(ptr noundef nonnull %0, i32 noundef %i.el)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.aa
  %i.em = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.011.i.ph)
  %i.en = icmp eq i32 %i.em, -1
  br i1 %i.en, label %.critedge117, label %bb.ah

bb.ah:                                            ; preds = %.thread148, %bb.af, %bb.ad, %bb.ag
  %i.eo = phi ptr [ %i.bq, %.thread148 ], [ %i.bq, %bb.af ], [ %.pre, %bb.ad ], [ %i.bq, %bb.ag ]
  %i.ep = load ptr, ptr %i.bh, align 8, !tbaa !471
  %i.eq = load i32, ptr %i.bg, align 8, !tbaa !514
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr %i.ep, i64 %i.er
  store i8 0, ptr %i.es, align 1, !tbaa !10
  %i.et = load ptr, ptr %i.bh, align 8, !tbaa !471
  %i.eu = load i32, ptr %i.bg, align 8, !tbaa !514
  %i.ev = sext i32 %i.eu to i64
  %i.ew = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.ex = tail call fastcc ptr @parser_str_new(ptr noundef %i.et, i64 noundef %i.ev, ptr noundef %i.eo, i32 noundef 0, ptr noundef %i.ew) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.ey = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef nonnull %2) #29 ; 0 uses
  %i.ez = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.ez, align 8, !tbaa !122
  %i.fa = call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 63, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  call void @rb_node_init(ptr noundef %i.fa, i32 noundef range(i32 0, 115) 63) #29
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.fc = load i32, ptr %2, align 4, !tbaa !51
  %i.fd = sext i32 %i.fc to i64
  %i.fe = load i64, ptr %i.fa, align 8, !tbaa !61
  %i.ff = and i64 %i.fe, 32767
  %i.fg = shl nsw i64 %i.fd, 15
  %i.fh = or disjoint i64 %i.ff, %i.fg
  store i64 %i.fh, ptr %i.fa, align 8, !tbaa !61
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !208 ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 8, !tbaa !208
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store i32 %i.fj, ptr %i.fl, align 8, !tbaa !209
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store ptr %i.ex, ptr %i.fm, align 8, !tbaa !432
  %i.fn = load ptr, ptr %0, align 8, !tbaa !18
  store ptr %i.fa, ptr %i.fn, align 8, !tbaa !10
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !41 ; 2 uses
  %i.fq = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fp to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.fv = call i64 @rb_enc_str_new(ptr noundef %i.fp, i64 noundef %i.ft, ptr noundef %i.fu) #29
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.fx = call i64 @rb_str_new_mutable_parser_string(ptr noundef nonnull %i.ex) #29
  store i64 %i.fx, ptr %i.fw, align 8, !tbaa !47
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.fz = load i16, ptr %i.fy, align 8
  %i.ga = and i16 %i.fz, 32
  %.not.i135 = icmp eq i16 %i.ga, 0
  br i1 %.not.i135, label %parser_set_lex_state.exit137, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gb = load i32, ptr %i.d, align 8, !tbaa !60
  %i.gc = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.gb, i32 noundef 2, i32 noundef 10007) #29
  br label %parser_set_lex_state.exit137

parser_set_lex_state.exit137:                     ; preds = %bb.ah, %bb.ai
  %.0.i136 = phi i32 [ %i.gc, %bb.ai ], [ 2, %bb.ah ]
  store i32 %.0.i136, ptr %i.d, align 8, !tbaa !60
  br label %.critedge117

.critedge117:                                     ; preds = %parser_precise_mbclen.exit131, %bb.ag, %bb.af, %parser_set_lex_state.exit137, %parser_set_lex_state.exit122, %nextc0.exit, %parser_set_lex_state.exit
  %.2 = phi i32 [ 63, %parser_set_lex_state.exit ], [ 0, %nextc0.exit ], [ 63, %parser_set_lex_state.exit122 ], [ 0, %bb.ag ], [ 318, %parser_set_lex_state.exit137 ], [ 0, %bb.af ], [ -1, %parser_precise_mbclen.exit131 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arg_ambiguous(ptr nofree noundef readonly captures(none) %0, i8 noundef signext range(i8 43, 48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  store i8 %1, ptr %i.a, align 1, !tbaa !10
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 48), align 8, !tbaa !559
  %i.c = call i64 @rb_usascii_str_new(ptr noundef nonnull %i.a, i64 noundef 1) #29
  %i.d = getelementptr i8, ptr %0, i64 368
  %.val = load i64, ptr %i.d, align 8, !tbaa !46
  %i.e = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val, i64 noundef %i.b, i32 noundef 1, i64 noundef %i.c) #29 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 314, 318) i32 @parse_numeric(ptr noundef %0, i32 noundef range(i32 -1, 256) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 27 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 32
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %parser_set_lex_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60
  %i.f = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.e, i32 noundef 2, i32 noundef 9711) #29
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ 2, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %.0.i, ptr %i.g, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 49 uses
  store i32 0, ptr %i.h, align 8, !tbaa !514
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 42 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !471  ; 2 uses
  %.not.i319 = icmp eq ptr %i.j, null
  br i1 %.not.i319, label %bb.c, label %bb.d

bb.c:                                             ; preds = %parser_set_lex_state.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 60, ptr %i.k, align 4, !tbaa !480
  %i.l = tail call noalias nonnull dereferenceable(60) ptr @ruby_xmalloc2(i64 noundef 60, i64 noundef 1) #33 ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !471
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %parser_set_lex_state.exit
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.j, %parser_set_lex_state.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 22 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !480
  %i.p = icmp sgt i32 %i.o, 4096
  br i1 %i.p, label %bb.e, label %newtok.exit

bb.e:                                             ; preds = %bb.d
  store i32 60, ptr %i.n, align 4, !tbaa !480
  %i.q = tail call nonnull dereferenceable(60) ptr @ruby_xrealloc2(ptr noundef nonnull %i.m, i64 noundef 60, i64 noundef 1) #36 ; 2 uses
  store ptr %i.q, ptr %i.i, align 8, !tbaa !471
  br label %newtok.exit

newtok.exit:                                      ; preds = %bb.d, %bb.e
  %i.r = phi ptr [ %i.q, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  switch i32 %1, label %nextc0.exit [
    i32 45, label %bb.f
    i32 43, label %bb.f
  ]

bb.f:                                             ; preds = %newtok.exit, %newtok.exit
  %i.s = trunc nuw nsw i32 %1 to i8
  %i.t = load i32, ptr %i.h, align 8, !tbaa !514  ; 2 uses
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.h, align 8, !tbaa !514
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store i8 %i.s, ptr %i.w, align 1, !tbaa !10
  %i.x = load i32, ptr %i.h, align 8, !tbaa !514
  %i.y = load i32, ptr %i.n, align 4, !tbaa !480  ; 2 uses
  %.not.i320 = icmp slt i32 %i.x, %i.y
  br i1 %.not.i320, label %tokadd.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = shl nsw i32 %i.y, 1                      ; 2 uses
  store i32 %i.z, ptr %i.n, align 4, !tbaa !480
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !471
  %i.ab = sext i32 %i.z to i64
  %i.ac = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.aa, i64 noundef %i.ab, i64 noundef 1) #36
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !471
  br label %tokadd.exit

tokadd.exit:                                      ; preds = %bb.f, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !413
  %.not.i321 = icmp ult ptr %i.ae, %i.ag
  br i1 %.not.i321, label %bb.h, label %.critedge.i, !prof !486

bb.h:                                             ; preds = %tokadd.exit
  %i.ah = load i16, ptr %i.a, align 8
  %i.ai = and i16 %i.ah, 8
  %.not13.i = icmp eq i16 %i.ai, 0
  br i1 %.not13.i, label %bb.i, label %.critedge.i, !prof !486

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !487
  %i.al = icmp ugt ptr %i.ak, inttoptr (i64 1 to ptr)
  br i1 %i.al, label %.critedge.i, label %bb.j, !prof !196

.critedge.i:                                      ; preds = %bb.i, %bb.h, %tokadd.exit
  %i.am = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i = icmp eq i32 %i.am, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit.thread

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !48
  br label %bb.j

bb.j:                                             ; preds = %.critedge._crit_edge.i, %bb.i
  %i.an = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.ae, %bb.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 3 uses
  store ptr %i.ao, ptr %i.ad, align 8, !tbaa !48
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !10  ; 2 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = icmp eq i8 %i.ap, 13
  br i1 %i.ar, label %bb.k, label %nextc0.exit, !prof !196

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !413
  %.not.i.i = icmp ult ptr %i.ao, %i.as
  br i1 %.not.i.i, label %bb.l, label %nextc0.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.at = load i8, ptr %i.ao, align 1, !tbaa !10
  %i.au = icmp eq i8 %i.at, 10
  br i1 %i.au, label %bb.m, label %nextc0.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store ptr %i.av, ptr %i.ad, align 8, !tbaa !48
  br label %nextc0.exit.thread

nextc0.exit:                                      ; preds = %bb.j, %newtok.exit
  %.0236 = phi i32 [ %1, %newtok.exit ], [ %i.aq, %bb.j ] ; 2 uses
  %i.aw = icmp eq i32 %.0236, 48
  br i1 %i.aw, label %bb.n, label %nextc0.exit.thread

bb.n:                                             ; preds = %nextc0.exit
  %i.ax = load i32, ptr %i.h, align 8, !tbaa !514 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 32 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 16 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !413
  %.not.i322 = icmp ult ptr %i.az, %i.bb
  br i1 %.not.i322, label %bb.o, label %.critedge.i323, !prof !486

bb.o:                                             ; preds = %bb.n
  %i.bc = load i16, ptr %i.a, align 8
  %i.bd = and i16 %i.bc, 8
  %.not13.i329 = icmp eq i16 %i.bd, 0
  br i1 %.not13.i329, label %bb.p, label %.critedge.i323, !prof !486

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !487
  %i.bg = icmp ugt ptr %i.bf, inttoptr (i64 1 to ptr)
  br i1 %i.bg, label %.critedge.i323, label %bb.q, !prof !196

.critedge.i323:                                   ; preds = %bb.p, %bb.o, %bb.n
  %i.bh = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i324 = icmp eq i32 %i.bh, 0
  br i1 %.not14.i324, label %.critedge._crit_edge.i326, label %.thread539

.critedge._crit_edge.i326:                        ; preds = %.critedge.i323
  %.pre.i327 = load ptr, ptr %i.ay, align 8, !tbaa !48
  br label %bb.q

bb.q:                                             ; preds = %.critedge._crit_edge.i326, %bb.p
  %i.bi = phi ptr [ %.pre.i327, %.critedge._crit_edge.i326 ], [ %i.az, %bb.p ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 9 uses
  store ptr %i.bj, ptr %i.ay, align 8, !tbaa !48
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !10  ; 3 uses
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = icmp eq i8 %i.bk, 13
  br i1 %i.bm, label %bb.r, label %nextc0.exit330, !prof !196

bb.r:                                             ; preds = %bb.q
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !413
  %.not.i.i328 = icmp ult ptr %i.bj, %i.bn
  br i1 %.not.i.i328, label %bb.s, label %.thread539

bb.s:                                             ; preds = %bb.r
  %i.bo = load i8, ptr %i.bj, align 1, !tbaa !10
  %i.bp = icmp eq i8 %i.bo, 10
  br i1 %i.bp, label %bb.t, label %.thread539

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.bq, ptr %i.ay, align 8, !tbaa !48
  br label %.thread539

.thread539:                                       ; preds = %bb.s, %bb.t, %bb.r, %.critedge.i323
  %.011.i325.ph = phi i32 [ 13, %bb.s ], [ 10, %bb.t ], [ 13, %bb.r ], [ -1, %.critedge.i323 ] ; 2 uses
  %i.br = and i32 %.011.i325.ph, -33
  br label %bb.ci

nextc0.exit330:                                   ; preds = %bb.q
  %i.bs = and i32 %i.bl, 223                      ; 2 uses
  %trunc = trunc nuw i32 %i.bs to i8
  switch i8 %trunc, label %bb.ch [
    i8 88, label %bb.u
    i8 66, label %bb.aq
    i8 68, label %bb.bl
  ]

bb.u:                                             ; preds = %nextc0.exit330
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !413
  %.not.i331 = icmp ult ptr %i.bj, %i.bt
  br i1 %.not.i331, label %bb.v, label %.critedge.i332, !prof !486

bb.v:                                             ; preds = %bb.u
  %i.bu = load i16, ptr %i.a, align 8
  %i.bv = and i16 %i.bu, 8
  %.not13.i338 = icmp eq i16 %i.bv, 0
  br i1 %.not13.i338, label %bb.w, label %.critedge.i332, !prof !486

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !487
  %i.by = icmp ugt ptr %i.bx, inttoptr (i64 1 to ptr)
  br i1 %i.by, label %.critedge.i332, label %bb.x, !prof !196

.critedge.i332:                                   ; preds = %bb.w, %bb.v, %bb.u
  %i.bz = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i333 = icmp eq i32 %i.bz, 0
  br i1 %.not14.i333, label %.critedge._crit_edge.i335, label %pushback.exit.thread

.critedge._crit_edge.i335:                        ; preds = %.critedge.i332
  %.pre.i336 = load ptr, ptr %i.ay, align 8, !tbaa !48
  br label %bb.x

bb.x:                                             ; preds = %.critedge._crit_edge.i335, %bb.w
  %i.ca = phi ptr [ %.pre.i336, %.critedge._crit_edge.i335 ], [ %i.bj, %bb.w ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 7 uses
  store ptr %i.cb, ptr %i.ay, align 8, !tbaa !48
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !10
  %.fr = freeze i8 %i.cc                          ; 4 uses
  %i.cd = icmp eq i8 %.fr, 13
  br i1 %i.cd, label %bb.y, label %bb.aa, !prof !196

bb.y:                                             ; preds = %bb.x
  %i.ce = load ptr, ptr %i.ba, align 8, !tbaa !413
  %.not.i.i337 = icmp ult ptr %i.cb, %i.ce
  br i1 %.not.i.i337, label %bb.z, label %.loopexit586

bb.z:                                             ; preds = %bb.y
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !10
  %i.cg = icmp eq i8 %i.cf, 10
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %spec.select = select i1 %i.cg, ptr %i.ch, ptr %i.cb
  br label %.loopexit586

end_hunk_2
begin_hunk_3_@parse_gvar:bb.a
  %i.lh = load i8, ptr %i.le, align 1, !tbaa !10
  %i.li = zext i8 %i.lh to i32
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 88
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !552
  %i.ll = tail call i32 %i.lk(i32 noundef range(i32 -1, 256) %i.li, i32 noundef 13, ptr noundef %i.lg) #29, !inline_history !555
  %.not.i.i157 = icmp eq i32 %i.ll, 0
  br i1 %.not.i.i157, label %bb.bg, label %parser_is_identchar.exit159.thread

bb.bg:                                            ; preds = %bb.bf
  %i.lm = load i8, ptr %i.le, align 1, !tbaa !10  ; 2 uses
  %i.ln = icmp ne i8 %i.lm, 95
  %.not99 = icmp sgt i8 %i.lm, -1
  %or.cond184 = and i1 %i.ln, %.not99
  br i1 %or.cond184, label %parser_is_identchar.exit159.thread180, label %parser_is_identchar.exit159.thread

parser_is_identchar.exit159.thread180:            ; preds = %bb.bg, %nextc0.exit.thread
  switch i32 %.011.i166, label %bb.bi [
    i32 -1, label %bb.bh
    i32 32, label %bb.bh
    i32 13, label %bb.bh
    i32 12, label %bb.bh
    i32 11, label %bb.bh
    i32 10, label %bb.bh
    i32 9, label %bb.bh
  ]

bb.bh:                                            ; preds = %parser_is_identchar.exit159.thread180, %parser_is_identchar.exit159.thread180, %parser_is_identchar.exit159.thread180, %parser_is_identchar.exit159.thread180, %parser_is_identchar.exit159.thread180, %parser_is_identchar.exit159.thread180, %parser_is_identchar.exit159.thread180
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.664) #29
  br label %bb.bj

bb.bi:                                            ; preds = %parser_is_identchar.exit159.thread180
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %.011.i166)
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.665, i32 noundef %.011.i166) #29
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.lo = load ptr, ptr %0, align 8, !tbaa !18
  store i64 289, ptr %i.lo, align 8, !tbaa !10
  br label %pushback.exit

parser_is_identchar.exit159.thread:               ; preds = %bb.bf, %bb.bg, %nextc0.exit
  %.011.i167 = phi i32 [ %.011.i166, %bb.bf ], [ 48, %nextc0.exit ], [ %.011.i166, %bb.bg ] ; 2 uses
  %i.lp = load ptr, ptr %i.o, align 8, !tbaa !471
  %i.lq = load i32, ptr %i.n, align 8, !tbaa !514 ; 2 uses
  %i.lr = add nsw i32 %i.lq, 1
  store i32 %i.lr, ptr %i.n, align 8, !tbaa !514
  %i.ls = sext i32 %i.lq to i64
  %i.lt = getelementptr inbounds i8, ptr %i.lp, i64 %i.ls
  store i8 36, ptr %i.lt, align 1, !tbaa !10
  %i.lu = load i32, ptr %i.n, align 8, !tbaa !514
  %i.lv = load i32, ptr %i.t, align 4, !tbaa !480 ; 2 uses
  %.not.i160 = icmp slt i32 %i.lu, %i.lv
  br i1 %.not.i160, label %tokadd.exit161, label %bb.bk

bb.bk:                                            ; preds = %parser_is_identchar.exit159.thread
  %i.lw = shl nsw i32 %i.lv, 1                    ; 2 uses
  store i32 %i.lw, ptr %i.t, align 4, !tbaa !480
  %i.lx = load ptr, ptr %i.o, align 8, !tbaa !471
  %i.ly = sext i32 %i.lw to i64
  %i.lz = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.lx, i64 noundef %i.ly, i64 noundef 1) #36
  store ptr %i.lz, ptr %i.o, align 8, !tbaa !471
  br label %tokadd.exit161

tokadd.exit161:                                   ; preds = %bb.bk, %parser_is_identchar.exit159.thread, %parser_is_identchar.exit.thread
  %.2 = phi i32 [ %.011.i107, %parser_is_identchar.exit.thread ], [ %.011.i167, %parser_is_identchar.exit159.thread ], [ %.011.i167, %bb.bk ]
  %i.ma = tail call fastcc i32 @tokadd_ident(ptr noundef nonnull %0, i32 noundef %.2)
  %.not101 = icmp eq i32 %i.ma, 0
  br i1 %.not101, label %bb.bl, label %pushback.exit

bb.bl:                                            ; preds = %tokadd.exit161
  %i.mb = load i16, ptr %i.e, align 8
  %i.mc = and i16 %i.mb, 32
  %.not.i162 = icmp eq i16 %i.mc, 0
  br i1 %.not.i162, label %parser_set_lex_state.exit164, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.md = load i32, ptr %i.k, align 8, !tbaa !60
  %i.me = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.md, i32 noundef 2, i32 noundef 10256) #29
  br label %parser_set_lex_state.exit164

parser_set_lex_state.exit164:                     ; preds = %bb.bl, %bb.bm
  %.0.i163 = phi i32 [ %i.me, %bb.bm ], [ 2, %bb.bl ]
  store i32 %.0.i163, ptr %i.k, align 8, !tbaa !60
  %i.mf = load ptr, ptr %i.o, align 8, !tbaa !471
  %i.mg = load i32, ptr %i.n, align 8, !tbaa !514
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !49
  %i.mk = tail call i32 @rb_enc_symname_type(ptr noundef %i.mf, i64 noundef %i.mh, ptr noundef %i.mj, i32 noundef 64) #29
  %i.ml = icmp eq i32 %i.mk, 6
  br i1 %i.ml, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %parser_set_lex_state.exit164
  tail call fastcc void @tokenize_ident(ptr noundef nonnull %0)
  br label %pushback.exit

bb.bo:                                            ; preds = %parser_set_lex_state.exit164
  %i.mm = load i32, ptr %i.n, align 8, !tbaa !514
  %i.mn = load ptr, ptr %i.o, align 8, !tbaa !471
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.666, i32 noundef %i.mm, ptr noundef %i.mn) #29
  %i.mo = load ptr, ptr %0, align 8, !tbaa !18
  store i64 289, ptr %i.mo, align 8, !tbaa !10
  br label %pushback.exit

pushback.exit:                                    ; preds = %bb.ak, %bb.aj, %bb.ai, %parser_is_identchar.exit134.thread172, %bb.bn, %bb.bo, %tokadd.exit161, %parser_is_identchar.exit134.thread, %bb.bj, %parse_numvar.exit, %bb.ap, %tokadd.exit117
  %.089 = phi i32 [ 0, %parser_is_identchar.exit134.thread ], [ 0, %tokadd.exit161 ], [ 309, %bb.bj ], [ 309, %tokadd.exit117 ], [ 319, %parse_numvar.exit ], [ 309, %bb.bn ], [ 320, %bb.ap ], [ 309, %bb.bo ], [ 36, %parser_is_identchar.exit134.thread172 ], [ 36, %bb.ai ], [ 36, %bb.aj ], [ 36, %bb.ak ]
  ret i32 %.089
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 313) i32 @parse_atmark(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rb_code_location_struct, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !413
  %.not.i = icmp ult ptr %i.b, %i.d
  br i1 %.not.i, label %bb.b, label %.critedge.i, !prof !486

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 8
  %.not13.i = icmp eq i16 %i.g, 0
  br i1 %.not13.i, label %bb.c, label %.critedge.i, !prof !486

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !487
  %i.j = icmp ugt ptr %i.i, inttoptr (i64 1 to ptr)
  br i1 %i.j, label %.critedge.i, label %bb.d, !prof !196

.critedge.i:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.k = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i = icmp eq i32 %i.k, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %.critedge._crit_edge.i, %bb.c
  %i.l = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.b, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !48
  %i.n = load i8, ptr %i.l, align 1, !tbaa !10    ; 2 uses
  %i.o = zext i8 %i.n to i32
  %i.p = icmp eq i8 %i.n, 13
  br i1 %i.p, label %bb.e, label %nextc0.exit, !prof !196

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !413
  %.not.i.i = icmp ult ptr %i.m, %i.q
  br i1 %.not.i.i, label %bb.f, label %nextc0.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.m, align 1, !tbaa !10
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.g, label %nextc0.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.t, ptr %i.a, align 8, !tbaa !48
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %.critedge.i, %bb.d, %bb.e, %bb.f, %bb.g
  %.011.i = phi i32 [ -1, %.critedge.i ], [ %i.o, %bb.d ], [ 13, %bb.e ], [ 10, %bb.g ], [ 13, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.u = getelementptr inbounds i8, ptr %i.b, i64 -1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.u, ptr %i.v, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  store i32 0, ptr %i.w, align 8, !tbaa !514
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !471  ; 2 uses
  %.not.i48 = icmp eq ptr %i.y, null
  br i1 %.not.i48, label %bb.h, label %bb.i

bb.h:                                             ; preds = %nextc0.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 60, ptr %i.z, align 4, !tbaa !480
  %i.aa = tail call noalias nonnull dereferenceable(60) ptr @ruby_xmalloc2(i64 noundef 60, i64 noundef 1) #33 ; 2 uses
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !471
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %nextc0.exit
  %i.ab = phi ptr [ %i.aa, %bb.h ], [ %i.y, %nextc0.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !480
  %i.ae = icmp sgt i32 %i.ad, 4096
  br i1 %i.ae, label %bb.j, label %newtok.exit

bb.j:                                             ; preds = %bb.i
  store i32 60, ptr %i.ac, align 4, !tbaa !480
  %i.af = tail call nonnull dereferenceable(60) ptr @ruby_xrealloc2(ptr noundef nonnull %i.ab, i64 noundef 60, i64 noundef 1) #36 ; 2 uses
  store ptr %i.af, ptr %i.x, align 8, !tbaa !471
  br label %newtok.exit

newtok.exit:                                      ; preds = %bb.i, %bb.j
  %i.ag = phi ptr [ %i.af, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load i32, ptr %i.w, align 8, !tbaa !514 ; 2 uses
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !514
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj
  store i8 64, ptr %i.ak, align 1, !tbaa !10
  %i.al = load i32, ptr %i.w, align 8, !tbaa !514
  %i.am = load i32, ptr %i.ac, align 4, !tbaa !480 ; 2 uses
  %.not.i49 = icmp slt i32 %i.al, %i.am
  br i1 %.not.i49, label %tokadd.exit, label %bb.k

bb.k:                                             ; preds = %newtok.exit
  %i.an = shl nsw i32 %i.am, 1                    ; 2 uses
  store i32 %i.an, ptr %i.ac, align 4, !tbaa !480
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !471
  %i.ap = sext i32 %i.an to i64
  %i.aq = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ao, i64 noundef %i.ap, i64 noundef 1) #36
  store ptr %i.aq, ptr %i.x, align 8, !tbaa !471
  br label %tokadd.exit

tokadd.exit:                                      ; preds = %newtok.exit, %bb.k
  %.not47.not = icmp eq i32 %.011.i, 64           ; 3 uses
  br i1 %.not47.not, label %bb.l, label %nextc0.exit60

bb.l:                                             ; preds = %tokadd.exit
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !471
  %i.as = load i32, ptr %i.w, align 8, !tbaa !514 ; 2 uses
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.w, align 8, !tbaa !514
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  store i8 64, ptr %i.av, align 1, !tbaa !10
  %i.aw = load i32, ptr %i.w, align 8, !tbaa !514
  %i.ax = load i32, ptr %i.ac, align 4, !tbaa !480 ; 2 uses
  %.not.i50 = icmp slt i32 %i.aw, %i.ax
  br i1 %.not.i50, label %tokadd.exit51, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = shl nsw i32 %i.ax, 1                    ; 2 uses
  store i32 %i.ay, ptr %i.ac, align 4, !tbaa !480
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !471
  %i.ba = sext i32 %i.ay to i64
  %i.bb = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.az, i64 noundef %i.ba, i64 noundef 1) #36
  store ptr %i.bb, ptr %i.x, align 8, !tbaa !471
  br label %tokadd.exit51

tokadd.exit51:                                    ; preds = %bb.l, %bb.m
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !413
  %.not.i52 = icmp ult ptr %i.bc, %i.bd
  br i1 %.not.i52, label %bb.n, label %.critedge.i53, !prof !486

bb.n:                                             ; preds = %tokadd.exit51
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 8
  %.not13.i59 = icmp eq i16 %i.bg, 0
  br i1 %.not13.i59, label %bb.o, label %.critedge.i53, !prof !486

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !487
  %i.bj = icmp ugt ptr %i.bi, inttoptr (i64 1 to ptr)
  br i1 %i.bj, label %.critedge.i53, label %bb.p, !prof !196

.critedge.i53:                                    ; preds = %bb.o, %bb.n, %tokadd.exit51
  %i.bk = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i54 = icmp eq i32 %i.bk, 0
  br i1 %.not14.i54, label %.critedge._crit_edge.i56, label %nextc0.exit60

.critedge._crit_edge.i56:                         ; preds = %.critedge.i53
  %.pre.i57 = load ptr, ptr %i.a, align 8, !tbaa !48
  br label %bb.p

bb.p:                                             ; preds = %.critedge._crit_edge.i56, %bb.o
  %i.bl = phi ptr [ %.pre.i57, %.critedge._crit_edge.i56 ], [ %i.bc, %bb.o ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 3 uses
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !48
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !10  ; 2 uses
  %i.bo = zext i8 %i.bn to i32
  %i.bp = icmp eq i8 %i.bn, 13
  br i1 %i.bp, label %bb.q, label %nextc0.exit60, !prof !196

bb.q:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !413
  %.not.i.i58 = icmp ult ptr %i.bm, %i.bq
  br i1 %.not.i.i58, label %bb.r, label %nextc0.exit60

bb.r:                                             ; preds = %bb.q
  %i.br = load i8, ptr %i.bm, align 1, !tbaa !10
  %i.bs = icmp eq i8 %i.br, 10
  br i1 %i.bs, label %bb.s, label %nextc0.exit60

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !48
  br label %nextc0.exit60

nextc0.exit60:                                    ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %.critedge.i53, %tokadd.exit
  %.040 = phi i32 [ 310, %tokadd.exit ], [ 312, %.critedge.i53 ], [ 312, %bb.p ], [ 312, %bb.q ], [ 312, %bb.r ], [ 312, %bb.s ] ; 3 uses
  %.0 = phi i32 [ %.011.i, %tokadd.exit ], [ -1, %.critedge.i53 ], [ %i.bo, %bb.p ], [ 13, %bb.q ], [ 13, %bb.r ], [ 10, %bb.s ] ; 4 uses
  %i.bu = and i32 %1, 128
  %.not = icmp eq i32 %i.bu, 0
  %i.bv = select i1 %.not, i32 2, i32 8           ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 8 uses
  %i.bx = load i16, ptr %i.bw, align 8
  %i.by = and i16 %i.bx, 32
  %.not.i61 = icmp eq i16 %i.by, 0
  br i1 %.not.i61, label %parser_set_lex_state.exit, label %bb.t

bb.t:                                             ; preds = %nextc0.exit60
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !60
  %i.cb = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ca, i32 noundef %i.bv, i32 noundef 10305) #29
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %nextc0.exit60, %bb.t
  %.0.i = phi i32 [ %i.cb, %bb.t ], [ %i.bv, %nextc0.exit60 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  store i32 %.0.i, ptr %i.cc, align 8, !tbaa !60
  %i.cd = icmp eq i32 %.0, -1
  br i1 %i.cd, label %.split, label %bb.u

bb.u:                                             ; preds = %parser_set_lex_state.exit
  %i.ce = load i16, ptr %i.bw, align 8            ; 2 uses
  %i.cf = and i16 %i.ce, 8
  %.not.i62 = icmp eq i16 %i.cf, 0
  %.pre75 = load ptr, ptr %i.a, align 8, !tbaa !48 ; 2 uses
  br i1 %.not.i62, label %bb.v, label %.split42

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds i8, ptr %.pre75, i64 -1 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !49 ; 2 uses
  %i.cj = load i8, ptr %i.cg, align 1, !tbaa !10
  %i.ck = zext i8 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 88
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !552
  %i.cn = tail call i32 %i.cm(i32 noundef range(i32 -1, 256) %i.ck, i32 noundef 13, ptr noundef %i.ci) #29, !inline_history !555
  %.not.i.i63 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i63, label %bb.w, label %parser_is_identchar.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.co = load i8, ptr %i.cg, align 1, !tbaa !10  ; 2 uses
  %i.cp = icmp ne i8 %i.co, 95
  %.not44 = icmp sgt i8 %i.co, -1
  %or.cond = and i1 %i.cp, %.not44
  br i1 %or.cond, label %..split42_crit_edge, label %parser_is_identchar.exit.thread

..split42_crit_edge:                              ; preds = %bb.w
  %.pre = load i16, ptr %i.bw, align 8
  %.pre74 = load ptr, ptr %i.a, align 8, !tbaa !48
  br label %.split42

.split42:                                         ; preds = %..split42_crit_edge, %bb.u
  %i.cq = phi ptr [ %.pre74, %..split42_crit_edge ], [ %.pre75, %bb.u ] ; 2 uses
  %i.cr = phi i16 [ %.pre, %..split42_crit_edge ], [ %i.ce, %bb.u ]
  %i.cs = and i16 %i.cr, -9
  store i16 %i.cs, ptr %i.bw, align 8
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 -1 ; 3 uses
  store ptr %i.ct, ptr %i.a, align 8, !tbaa !48
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !44
  %i.cw = icmp ugt ptr %i.ct, %i.cv
  br i1 %i.cw, label %bb.x, label %.split

bb.x:                                             ; preds = %.split42
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !10
  %i.cy = icmp eq i8 %i.cx, 10
  br i1 %i.cy, label %bb.y, label %.split

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cq, i64 -2 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !10
  %i.db = icmp eq i8 %i.da, 13
  br i1 %i.db, label %bb.z, label %.split

bb.z:                                             ; preds = %bb.y
  store ptr %i.cz, ptr %i.a, align 8, !tbaa !48
  br label %.split

.split:                                           ; preds = %bb.z, %bb.y, %bb.x, %.split42, %parser_set_lex_state.exit
  %i.dc = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef nonnull %2) #29 ; 0 uses
  %.str.669..str.668 = select i1 %.not47.not, ptr @.str.669, ptr @.str.668
  call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull %.str.669..str.668) #29
  %i.dd = load ptr, ptr %0, align 8, !tbaa !18
  store i64 289, ptr %i.dd, align 8, !tbaa !10
  %i.de = load i16, ptr %i.bw, align 8
  %i.df = and i16 %i.de, 32
  %.not.i64 = icmp eq i16 %i.df, 0
  br i1 %.not.i64, label %parser_set_lex_state.exit66, label %bb.aa

bb.aa:                                            ; preds = %.split
  %i.dg = load i32, ptr %i.cc, align 8, !tbaa !60
  %i.dh = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.dg, i32 noundef 2, i32 noundef 10317) #29
  br label %parser_set_lex_state.exit66

parser_set_lex_state.exit66:                      ; preds = %.split, %bb.aa
  %.0.i65 = phi i32 [ %i.dh, %bb.aa ], [ 2, %.split ]
  store i32 %.0.i65, ptr %i.cc, align 8, !tbaa !60
end_hunk_3
begin_hunk_4_@tokadd_string:bb.a
  %i.hf = load ptr, ptr %i.f, align 8, !tbaa !413
  %.not.i.i.i = icmp ult ptr %i.hd, %i.hf
  br i1 %.not.i.i.i, label %bb.ca, label %nextc0.exit.thread.i

bb.ca:                                            ; preds = %bb.bz
  %i.hg = load i8, ptr %i.hd, align 1, !tbaa !10
  %i.hh = icmp eq i8 %i.hg, 10
  br i1 %i.hh, label %nextc0.exit.thread39.i, label %nextc0.exit.thread.i

nextc0.exit.thread39.i:                           ; preds = %bb.ca
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  store ptr %i.hi, ptr %i.e, align 8, !tbaa !48
  br label %bb.cl

bb.cb:                                            ; preds = %bb.by, %bb.by, %bb.by, %bb.by, %bb.by, %bb.by, %bb.by, %bb.by
  store ptr %i.hc, ptr %i.e, align 8, !tbaa !48
  %i.hj = call i64 @ruby_scan_oct(ptr noundef nonnull %i.hc, i64 noundef 3, ptr noundef nonnull %i.a) #37 ; 0 uses
  %i.hk = load i64, ptr %i.a, align 8, !tbaa !11  ; 4 uses
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %nextc0.exit.thread41.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hm = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hk
  store ptr %i.hn, ptr %i.e, align 8, !tbaa !48
  %i.ho = trunc i64 %i.hk to i32
  %i.hp = add nsw i32 %i.ho, 1                    ; 2 uses
  %i.hq = load i32, ptr %i.q, align 8, !tbaa !514
  %i.hr = add nsw i32 %i.hq, %i.hp                ; 4 uses
  store i32 %i.hr, ptr %i.q, align 8, !tbaa !514
  %i.hs = load i32, ptr %i.r, align 4, !tbaa !480 ; 2 uses
  %.not.i22.i = icmp slt i32 %i.hr, %i.hs
  br i1 %.not.i22.i, label %._crit_edge.i.i, label %.preheader.i.i

._crit_edge.i.i:                                  ; preds = %bb.cc
  %.pre.i23.i = load ptr, ptr %i.p, align 8, !tbaa !471
  br label %tokspace.exit.i

.preheader.i.i:                                   ; preds = %bb.cc, %.preheader.i.i
  %i.ht = phi i32 [ %i.hu, %.preheader.i.i ], [ %i.hs, %bb.cc ]
  %i.hu = shl nsw i32 %i.ht, 1                    ; 4 uses
  %i.hv = icmp slt i32 %i.hu, %i.hr
  br i1 %i.hv, label %.preheader.i.i, label %bb.cd, !llvm.loop !570

bb.cd:                                            ; preds = %.preheader.i.i
  store i32 %i.hu, ptr %i.r, align 4, !tbaa !480
  %i.hw = load ptr, ptr %i.p, align 8, !tbaa !471
  %i.hx = sext i32 %i.hu to i64
  %i.hy = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.hw, i64 noundef %i.hx, i64 noundef 1) #36 ; 2 uses
  store ptr %i.hy, ptr %i.p, align 8, !tbaa !471
  %.pre13.i.i = load i32, ptr %i.q, align 8, !tbaa !514
  %.pre45.i = load i64, ptr %i.a, align 8, !tbaa !11
  br label %tokspace.exit.i

tokspace.exit.i:                                  ; preds = %bb.cd, %._crit_edge.i.i
  %i.hz = phi i64 [ %i.hk, %._crit_edge.i.i ], [ %.pre45.i, %bb.cd ]
  %i.ia = phi i32 [ %i.hr, %._crit_edge.i.i ], [ %.pre13.i.i, %bb.cd ]
  %i.ib = phi ptr [ %.pre.i23.i, %._crit_edge.i.i ], [ %i.hy, %bb.cd ]
  %i.ic = shl i64 %i.hz, 32
  %sext21.i = add i64 %i.ic, 4294967296           ; 2 uses
  %.not.i24.i = icmp eq i64 %sext21.i, 0
  br i1 %.not.i24.i, label %bb.cl, label %bb.ce

bb.ce:                                            ; preds = %tokspace.exit.i
  %i.id = ashr exact i64 %sext21.i, 32            ; 2 uses
  %i.ie = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.if = sub nsw i64 0, %i.id
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 %i.if
  %i.ih = sub nsw i32 %i.ia, %i.hp
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds i8, ptr %i.ib, i64 %i.ii
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 1 %i.ig, i64 %i.id, i1 false)
  br label %bb.cl

bb.cf:                                            ; preds = %bb.by
  %i.ik = call fastcc i32 @tok_hex(ptr noundef nonnull %0, ptr noundef %i.a) ; 0 uses
  %i.il = load i64, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %tokadd_escape.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.in = trunc i64 %i.il to i32
  %i.io = add nsw i32 %i.in, 2                    ; 2 uses
  %i.ip = load i32, ptr %i.q, align 8, !tbaa !514
  %i.iq = add nsw i32 %i.ip, %i.io                ; 4 uses
  store i32 %i.iq, ptr %i.q, align 8, !tbaa !514
  %i.ir = load i32, ptr %i.r, align 4, !tbaa !480 ; 2 uses
  %.not.i25.i = icmp slt i32 %i.iq, %i.ir
  br i1 %.not.i25.i, label %._crit_edge.i28.i, label %.preheader.i26.i

._crit_edge.i28.i:                                ; preds = %bb.cg
  %.pre.i30.i = load ptr, ptr %i.p, align 8, !tbaa !471
  br label %tokspace.exit31.i

.preheader.i26.i:                                 ; preds = %bb.cg, %.preheader.i26.i
  %i.is = phi i32 [ %i.it, %.preheader.i26.i ], [ %i.ir, %bb.cg ]
  %i.it = shl nsw i32 %i.is, 1                    ; 4 uses
  %i.iu = icmp slt i32 %i.it, %i.iq
  br i1 %i.iu, label %.preheader.i26.i, label %bb.ch, !llvm.loop !570

bb.ch:                                            ; preds = %.preheader.i26.i
  store i32 %i.it, ptr %i.r, align 4, !tbaa !480
  %i.iv = load ptr, ptr %i.p, align 8, !tbaa !471
  %i.iw = sext i32 %i.it to i64
  %i.ix = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.iv, i64 noundef %i.iw, i64 noundef 1) #36 ; 2 uses
  store ptr %i.ix, ptr %i.p, align 8, !tbaa !471
  %.pre13.i27.i = load i32, ptr %i.q, align 8, !tbaa !514
  %.pre.i228 = load i64, ptr %i.a, align 8, !tbaa !11
  br label %tokspace.exit31.i

tokspace.exit31.i:                                ; preds = %bb.ch, %._crit_edge.i28.i
  %i.iy = phi i64 [ %i.il, %._crit_edge.i28.i ], [ %.pre.i228, %bb.ch ]
  %i.iz = phi i32 [ %i.iq, %._crit_edge.i28.i ], [ %.pre13.i27.i, %bb.ch ]
  %i.ja = phi ptr [ %.pre.i30.i, %._crit_edge.i28.i ], [ %i.ix, %bb.ch ]
  %i.jb = shl i64 %i.iy, 32
  %sext.i = add i64 %i.jb, 8589934592             ; 2 uses
  %.not.i32.i = icmp eq i64 %sext.i, 0
  br i1 %.not.i32.i, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %tokspace.exit31.i
  %i.jc = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.jd = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.je = sub nsw i64 0, %i.jc
  %i.jf = getelementptr inbounds i8, ptr %i.jd, i64 %i.je
  %i.jg = sub nsw i32 %i.iz, %i.io
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds i8, ptr %i.ja, i64 %i.jh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ji, ptr nonnull readonly align 1 %i.jf, i64 %i.jc, i1 false)
  br label %bb.cl

nextc0.exit.thread41.i:                           ; preds = %bb.cb, %.critedge.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !49
  %i.jl = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.gx to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call fastcc void @flush_string_content(ptr noundef nonnull %0, ptr noundef %i.jk, i64 noundef %i.jo)
  %i.jp = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !182
  %i.jq = load ptr, ptr %i.jj, align 8, !tbaa !49
  %i.jr = call i64 @rb_enc_str_new(ptr noundef nonnull @.str.616, i64 noundef 31, ptr noundef %i.jq) #29
  %i.js = getelementptr i8, ptr %0, i64 368
  %.val.i.i = load i64, ptr %i.js, align 8, !tbaa !46
  %i.jt = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i, i64 noundef %i.jp, i32 noundef 1, i64 noundef %i.jr) #29 ; 0 uses
  %i.ju = load i16, ptr %i.g, align 8
  %i.jv = or i16 %i.ju, 512
  store i16 %i.jv, ptr %i.g, align 8
  %i.jw = load ptr, ptr %i.e, align 8, !tbaa !48
  store ptr %i.jw, ptr %i.x, align 8, !tbaa !41
  br label %tokadd_escape.exit

nextc0.exit.thread.i:                             ; preds = %bb.ca, %bb.bz, %bb.by
  %i.jx = load ptr, ptr %i.p, align 8, !tbaa !471
  %i.jy = load i32, ptr %i.q, align 8, !tbaa !514 ; 2 uses
  %i.jz = add nsw i32 %i.jy, 1
  store i32 %i.jz, ptr %i.q, align 8, !tbaa !514
  %i.ka = sext i32 %i.jy to i64
  %i.kb = getelementptr inbounds i8, ptr %i.jx, i64 %i.ka
  store i8 92, ptr %i.kb, align 1, !tbaa !10
  %i.kc = load i32, ptr %i.q, align 8, !tbaa !514 ; 2 uses
  %i.kd = load i32, ptr %i.r, align 4, !tbaa !480 ; 2 uses
  %.not.i34.i = icmp slt i32 %i.kc, %i.kd
  %.pre46.i = load ptr, ptr %i.p, align 8, !tbaa !471 ; 2 uses
  br i1 %.not.i34.i, label %tokadd.exit.i, label %bb.cj

bb.cj:                                            ; preds = %nextc0.exit.thread.i
  %i.ke = shl nsw i32 %i.kd, 1                    ; 2 uses
  store i32 %i.ke, ptr %i.r, align 4, !tbaa !480
  %i.kf = sext i32 %i.ke to i64
  %i.kg = call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre46.i, i64 noundef %i.kf, i64 noundef 1) #36 ; 2 uses
  store ptr %i.kg, ptr %i.p, align 8, !tbaa !471
  %.pre47.i = load i32, ptr %i.q, align 8, !tbaa !514
  br label %tokadd.exit.i

tokadd.exit.i:                                    ; preds = %bb.cj, %nextc0.exit.thread.i
  %i.kh = phi i32 [ %i.kc, %nextc0.exit.thread.i ], [ %.pre47.i, %bb.cj ] ; 2 uses
  %i.ki = phi ptr [ %.pre46.i, %nextc0.exit.thread.i ], [ %i.kg, %bb.cj ]
  %i.kj = add nsw i32 %i.kh, 1
  store i32 %i.kj, ptr %i.q, align 8, !tbaa !514
  %i.kk = sext i32 %i.kh to i64
  %i.kl = getelementptr inbounds i8, ptr %i.ki, i64 %i.kk
  store i8 %i.he, ptr %i.kl, align 1, !tbaa !10
  %i.km = load i32, ptr %i.q, align 8, !tbaa !514
  %i.kn = load i32, ptr %i.r, align 4, !tbaa !480 ; 2 uses
  %.not.i35.i = icmp slt i32 %i.km, %i.kn
  br i1 %.not.i35.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %tokadd.exit.i
  %i.ko = shl nsw i32 %i.kn, 1                    ; 2 uses
  store i32 %i.ko, ptr %i.r, align 4, !tbaa !480
  %i.kp = load ptr, ptr %i.p, align 8, !tbaa !471
  %i.kq = sext i32 %i.ko to i64
  %i.kr = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.kp, i64 noundef %i.kq, i64 noundef 1) #36
  store ptr %i.kr, ptr %i.p, align 8, !tbaa !471
  br label %bb.cl

tokadd_escape.exit:                               ; preds = %bb.cf, %nextc0.exit.thread41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %nextc0.exit214.thread243

bb.cl:                                            ; preds = %nextc0.exit.thread39.i, %bb.ce, %bb.ck, %bb.by, %tokadd.exit.i, %tokspace.exit.i, %tokspace.exit31.i, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ks = load ptr, ptr %6, align 8, !tbaa !500   ; 3 uses
  %.not187 = icmp eq ptr %i.ks, null
  br i1 %.not187, label %.backedge.backedge, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kt = load ptr, ptr %5, align 8, !tbaa !500   ; 2 uses
  %i.ku = icmp eq ptr %i.ks, %i.kt
  %i.kv = trunc nuw i8 %.0148 to i1
  %or.cond9 = or i1 %i.ku, %i.kv
  br i1 %or.cond9, label %.backedge.backedge, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kw = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  %i.ky = getelementptr i8, ptr %i.ks, i64 8
  %.val201 = load ptr, ptr %i.ky, align 8, !tbaa !494
  %i.kz = getelementptr i8, ptr %i.kt, i64 8
  %.val202 = load ptr, ptr %i.kz, align 8, !tbaa !494
  %i.la = load ptr, ptr %i.e, align 8, !tbaa !48
  store ptr %i.kx, ptr %i.e, align 8, !tbaa !48
  call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.619, ptr noundef %.val201, ptr noundef %.val202) #29
  store ptr %i.la, ptr %i.e, align 8, !tbaa !48
  br label %.backedge.backedge

bb.co:                                            ; preds = %.thread245
  br i1 %i.m, label %bb.cp, label %bb.cv

bb.cp:                                            ; preds = %bb.co
  %i.lb = load i16, ptr %i.g, align 8
  %i.lc = and i16 %i.lb, -9
  store i16 %i.lc, ptr %i.g, align 8
  store ptr %i.cv, ptr %i.e, align 8, !tbaa !48
  %i.ld = load ptr, ptr %i.w, align 8, !tbaa !44
  %i.le = icmp ugt ptr %i.cv, %i.ld
  br i1 %i.le, label %bb.cq, label %pushback.exit229

bb.cq:                                            ; preds = %bb.cp
  %i.lf = load i8, ptr %i.cv, align 1, !tbaa !10
  %i.lg = icmp eq i8 %i.lf, 10
  br i1 %i.lg, label %bb.cr, label %pushback.exit229

bb.cr:                                            ; preds = %bb.cq
  %i.lh = getelementptr inbounds i8, ptr %i.cv, i64 -1 ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !10
  %i.lj = icmp eq i8 %i.li, 13
  br i1 %i.lj, label %bb.cs, label %pushback.exit229

bb.cs:                                            ; preds = %bb.cr
  store ptr %i.lh, ptr %i.e, align 8, !tbaa !48
  br label %pushback.exit229

pushback.exit229:                                 ; preds = %bb.cp, %bb.cq, %bb.cr, %bb.cs
  br i1 %.not175, label %tokadd.exit231, label %bb.ct

bb.ct:                                            ; preds = %pushback.exit229
  %i.lk = load ptr, ptr %i.p, align 8, !tbaa !471
  %i.ll = load i32, ptr %i.q, align 8, !tbaa !514 ; 2 uses
  %i.lm = add nsw i32 %i.ll, 1
  store i32 %i.lm, ptr %i.q, align 8, !tbaa !514
  %i.ln = sext i32 %i.ll to i64
  %i.lo = getelementptr inbounds i8, ptr %i.lk, i64 %i.ln
  store i8 92, ptr %i.lo, align 1, !tbaa !10
  %i.lp = load i32, ptr %i.q, align 8, !tbaa !514
  %i.lq = load i32, ptr %i.r, align 4, !tbaa !480 ; 2 uses
  %.not.i230 = icmp slt i32 %i.lp, %i.lq
  br i1 %.not.i230, label %tokadd.exit231, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lr = shl nsw i32 %i.lq, 1                    ; 2 uses
  store i32 %i.lr, ptr %i.r, align 4, !tbaa !480
  %i.ls = load ptr, ptr %i.p, align 8, !tbaa !471
  %i.lt = sext i32 %i.lr to i64
  %i.lu = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ls, i64 noundef %i.lt, i64 noundef 1) #36
  store ptr %i.lu, ptr %i.p, align 8, !tbaa !471
  br label %tokadd.exit231

tokadd.exit231:                                   ; preds = %bb.cu, %bb.ct, %pushback.exit229
  %i.lv = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 -1
  %i.lx = call fastcc i32 @read_escape(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.lw)
  br label %pushback.exit205

bb.cv:                                            ; preds = %bb.co
  %.not184.old = icmp eq i32 %2, %i.cy            ; 2 uses
  br i1 %.not176, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  br i1 %.not184.old, label %pushback.exit205, label %switch.early.test

switch.early.test:                                ; preds = %bb.cw
  switch i8 %i.cx, label %bb.cy [
    i8 32, label %pushback.exit205
    i8 13, label %pushback.exit205
    i8 12, label %pushback.exit205
    i8 11, label %pushback.exit205
    i8 10, label %pushback.exit205
    i8 9, label %pushback.exit205
  ]

bb.cx:                                            ; preds = %bb.cv
  %i.ly = icmp eq i32 %3, %i.cy
  %or.cond197 = and i1 %.not170, %i.ly
  %or.cond255 = or i1 %.not184.old, %or.cond197
  br i1 %or.cond255, label %pushback.exit205, label %bb.cz

bb.cy:                                            ; preds = %switch.early.test
  %.old = icmp eq i32 %3, %i.cy
  %or.cond197.old = and i1 %.not170, %.old
  br i1 %or.cond197.old, label %pushback.exit205, label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy
  call fastcc void @tokadd(ptr noundef nonnull %0, i32 noundef 92)
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cy)
  br label %.backedge.backedge

.thread:                                          ; preds = %bb.af, %bb.al
  %i.lz = getelementptr i8, ptr %i.ao, i64 -1
  %.val203.val = load i8, ptr %i.lz, align 1, !tbaa !10
  %i.ma = icmp slt i8 %.val203.val, 0
  br i1 %i.ma, label %tokadd.exit221, label %bb.df

tokadd.exit221:                                   ; preds = %bb.bj, %bb.bi, %.thread, %bb.bh
  %.0146 = phi i32 [ %.011.i.ph, %.thread ], [ %i.cy, %bb.bh ], [ %i.cy, %bb.bi ], [ %i.cy, %bb.bj ]
  %i.mb = load ptr, ptr %6, align 8, !tbaa !500   ; 3 uses
  %.not179 = icmp eq ptr %i.mb, null
  %i.mc = load ptr, ptr %5, align 8, !tbaa !500   ; 3 uses
  br i1 %.not179, label %bb.da, label %bb.db

bb.da:                                            ; preds = %tokadd.exit221
  store ptr %i.mc, ptr %6, align 8, !tbaa !500
  br label %bb.de

bb.db:                                            ; preds = %tokadd.exit221
  %.not180 = icmp eq ptr %i.mb, %i.mc
  br i1 %.not180, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.md = trunc nuw i8 %.0148 to i1
  br i1 %i.md, label %.backedge.backedge, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.me = getelementptr i8, ptr %i.mb, i64 8
  %.val199 = load ptr, ptr %i.me, align 8, !tbaa !494
  %i.mf = getelementptr i8, ptr %i.mc, i64 8
  %.val200 = load ptr, ptr %i.mf, align 8, !tbaa !494
  call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.619, ptr noundef %.val199, ptr noundef %.val200) #29
  br label %.backedge.backedge

bb.de:                                            ; preds = %bb.db, %bb.da
  %i.mg = call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.0146)
  %i.mh = icmp eq i32 %i.mg, -1
  br i1 %i.mh, label %nextc0.exit214.thread243, label %.backedge.backedge

bb.df:                                            ; preds = %.thread
  br i1 %.not176, label %pushback.exit205, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %trunc279 = trunc nuw i32 %.011.i.ph to i8
  switch i8 %trunc279, label %pushback.exit205 [
    i8 32, label %bb.dh
    i8 13, label %bb.dh
    i8 12, label %bb.dh
    i8 11, label %bb.dh
    i8 10, label %bb.dh
    i8 9, label %bb.dh
  ]

bb.dh:                                            ; preds = %bb.dg, %bb.dg, %bb.dg, %bb.dg, %bb.dg, %bb.dg
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %.011.i.ph)
  br label %nextc0.exit

pushback.exit205:                                 ; preds = %bb.dg, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.cw, %bb.cy, %bb.ad, %bb.cx, %tokadd.exit231, %bb.df, %bb.v
  %.1 = phi i32 [ %3, %bb.v ], [ %2, %bb.ad ], [ %i.lx, %tokadd.exit231 ], [ %i.cy, %switch.early.test ], [ %3, %bb.cy ], [ %i.cy, %bb.cx ], [ %.011.i.ph, %bb.df ], [ %.011.i.ph, %bb.dg ], [ %2, %bb.cw ], [ %i.cy, %switch.early.test ], [ %i.cy, %switch.early.test ], [ %i.cy, %switch.early.test ], [ %i.cy, %switch.early.test ], [ %i.cy, %switch.early.test ] ; 4 uses
  %i.mi = and i32 %.1, 128
  %.not190 = icmp eq i32 %i.mi, 0
  br i1 %.not190, label %pushback.exit205.thread251, label %bb.di

bb.di:                                            ; preds = %pushback.exit205
  %i.mj = load ptr, ptr %6, align 8, !tbaa !500   ; 3 uses
  %.not191 = icmp eq ptr %i.mj, null
  %i.mk = load ptr, ptr %5, align 8, !tbaa !500   ; 3 uses
  br i1 %.not191, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store ptr %i.mk, ptr %6, align 8, !tbaa !500
  br label %pushback.exit205.thread251

bb.dk:                                            ; preds = %bb.di
  %.not192 = icmp eq ptr %i.mj, %i.mk
  br i1 %.not192, label %pushback.exit205.thread251, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ml = trunc nuw i8 %.0148 to i1
  br i1 %i.ml, label %.backedge.backedge, label %bb.dm

.backedge.backedge:                               ; preds = %bb.dl, %bb.dm, %bb.dc, %bb.dd, %bb.cl, %bb.cm, %bb.cn, %bb.au, %bb.av, %bb.bf, %tokspace.exit, %bb.bs, %bb.cz, %tokadd.exit234, %bb.de
  %.0148.be = phi i8 [ 1, %bb.dc ], [ %.0148, %tokadd.exit234 ], [ %.0148, %bb.au ], [ %.0148, %bb.bs ], [ %.0148, %tokspace.exit ], [ %.0148, %bb.cz ], [ %.0148, %bb.cl ], [ %.0148, %bb.de ], [ %.0148, %bb.bf ], [ %.0148, %bb.av ], [ %.0148, %bb.cm ], [ 1, %bb.cn ], [ 1, %bb.dd ], [ 1, %bb.dm ], [ 1, %bb.dl ]
  %.0147.be = phi i32 [ %.0147, %bb.dc ], [ %i.nb, %tokadd.exit234 ], [ %.0147, %bb.au ], [ %.0147, %bb.bs ], [ %.0147, %tokspace.exit ], [ %.0147, %bb.cz ], [ %.0147, %bb.cl ], [ %.0147, %bb.de ], [ %.0147, %bb.bf ], [ %.0147, %bb.av ], [ %.0147, %bb.cm ], [ %.0147, %bb.cn ], [ %.0147, %bb.dd ], [ %.0147, %bb.dm ], [ %.0147, %bb.dl ]
  br label %.backedge, !llvm.loop !571
end_hunk_4
begin_hunk_5_@read_escape:bb.a

bb.bm:                                            ; preds = %bb.bk
  %i.ea = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.613, i64 noundef 33) #29
  %i.eb = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.dt, i64 noundef %i.du, i32 noundef 2, i64 noundef %i.ea, i64 noundef %i.dx) #29 ; 0 uses
  br label %.thread152

bb.bn:                                            ; preds = %bb.bj
  br i1 %.not87, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ec = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.614, i64 noundef 39) #29
  %i.ed = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.dt, i64 noundef %i.du, i32 noundef 2, i64 noundef %i.ec, i64 noundef %i.dx) #29 ; 0 uses
  br label %.thread152

bb.bp:                                            ; preds = %bb.bn
  %i.ee = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.615, i64 noundef 36) #29
  %i.ef = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.dt, i64 noundef %i.du, i32 noundef 2, i64 noundef %i.ee, i64 noundef %i.dx) #29 ; 0 uses
  br label %.thread152

bb.bq:                                            ; preds = %.thread148
  br i1 %.not162, label %.thread152, label %nextc0.exit.thread132

.thread152:                                       ; preds = %bb.bq, %bb.bm, %bb.bl, %bb.bp, %bb.bo, %.thread147
  %.072 = phi i32 [ %i.dm, %.thread147 ], [ %.011.i122144151, %bb.bo ], [ %.011.i122144151, %bb.bp ], [ %.011.i122144151, %bb.bl ], [ %.011.i122144151, %bb.bm ], [ %.011.i122144151, %bb.bq ]
  %i.eg = and i32 %.072, 159
  br label %ripper_dispatch_scan_event.exit

nextc0.exit.thread132:                            ; preds = %bb.z, %.critedge.i120, %bb.au, %bb.av, %bb.at, %.critedge.i111, %bb.an, %bb.ab, %bb.ac, %bb.aa, %.critedge.i102, %.critedge.i, %bb.bq, %bb.ad, %bb.ag, %bb.ai, %bb.bg, %bb.bi, %bb.bu, %bb.v, %nextc0.exit118, %bb.aw
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !49
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %2 to i64
  %i.em = sub i64 %i.ek, %i.el
  tail call fastcc void @flush_string_content(ptr noundef nonnull %0, ptr noundef %i.ei, i64 noundef %i.em)
  %i.en = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !182
  %i.eo = load ptr, ptr %i.eh, align 8, !tbaa !49
  %i.ep = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.616, i64 noundef 31, ptr noundef %i.eo) #29
  %i.eq = getelementptr i8, ptr %0, i64 368       ; 2 uses
  %.val.i = load i64, ptr %i.eq, align 8, !tbaa !46
  %i.er = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i, i64 noundef %i.en, i32 noundef 1, i64 noundef %i.ep) #29 ; 0 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.et = load i16, ptr %i.es, align 8
  %i.eu = or i16 %i.et, 512
  store i16 %i.eu, ptr %i.es, align 8
  %.val.i128 = load ptr, ptr %i.b, align 8, !tbaa !48 ; 3 uses
  %i.ev = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %.val3.i = load ptr, ptr %i.ev, align 8, !tbaa !41 ; 4 uses
  %i.ew = icmp ult ptr %.val.i128, %.val3.i
  br i1 %i.ew, label %bb.br, label %ripper_has_scan_event.exit.i

bb.br:                                            ; preds = %nextc0.exit.thread132
  %i.ex = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ex, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i:                     ; preds = %nextc0.exit.thread132
  %.not.i129 = icmp ugt ptr %.val.i128, %.val3.i
  br i1 %.not.i129, label %bb.bs, label %ripper_dispatch_scan_event.exit

bb.bs:                                            ; preds = %ripper_has_scan_event.exit.i
  %i.ey = ptrtoint ptr %.val.i128 to i64
  %i.ez = ptrtoint ptr %.val3.i to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = load ptr, ptr %i.eh, align 8, !tbaa !49
  %i.fc = tail call i64 @rb_enc_str_new(ptr noundef %.val3.i, i64 noundef %i.fa, ptr noundef %i.fb) #29
  %i.fd = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 321) #29
  %.val.i.i = load i64, ptr %i.eq, align 8, !tbaa !46
  %i.fe = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i, i64 noundef %i.fd, i32 noundef 1, i64 noundef %i.fc) #29
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !39
  %i.fh = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.fg) #29 ; 0 uses
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !48
  store ptr %i.fi, ptr %i.ev, align 8, !tbaa !41
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.fe, ptr %i.fj, align 8, !tbaa !47
  br label %ripper_dispatch_scan_event.exit

bb.bt:                                            ; preds = %bb.d
  %i.fk = zext nneg i8 %i.o to i32
  %i.fl = icmp slt i8 %i.o, 0
  br i1 %i.fl, label %bb.bu, label %ripper_dispatch_scan_event.exit

bb.bu:                                            ; preds = %bb.bt
  tail call fastcc void @tokskip_mbchar(ptr noundef nonnull %0)
  br label %nextc0.exit.thread132

ripper_dispatch_scan_event.exit:                  ; preds = %bb.ba, %bb.d, %bb.e, %bb.g, %bb.f, %bb.bs, %ripper_has_scan_event.exit.i, %bb.ao, %bb.bt, %bb.s, %.thread152, %.thread, %bb.u, %bb.t, %pushback.exit, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.1 = phi i32 [ %i.eg, %.thread152 ], [ %i.fk, %bb.bt ], [ 127, %bb.ba ], [ 10, %bb.h ], [ 9, %bb.i ], [ 13, %bb.j ], [ 12, %bb.k ], [ 11, %bb.l ], [ 7, %bb.m ], [ 27, %bb.n ], [ %i.ag, %pushback.exit ], [ %., %bb.s ], [ 92, %bb.d ], [ 8, %bb.t ], [ 32, %bb.u ], [ %i.bj, %.thread ], [ %i.ca, %bb.ao ], [ 0, %ripper_has_scan_event.exit.i ], [ 0, %bb.bs ], [ 13, %bb.f ], [ 10, %bb.g ], [ 13, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, 2) i32 @simple_re_meta(i32 noundef range(i32 0, 256) %0) unnamed_addr #21 {
bb.a:
  %trunc = trunc nuw i32 %0 to i8
  %switch.tableidx = add i8 %trunc, -36           ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 90
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.simple_re_meta, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -128, 256) i32 @tokadd_mbchar(ptr noundef %0, i32 noundef range(i32 -128, 256) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !413
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.c, ptr noundef %i.e, ptr noundef %i.g) #29 ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %parser_precise_mbclen.exit, label %parser_precise_mbclen.exit.thread

parser_precise_mbclen.exit.thread:                ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !494
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.618, ptr noundef %.val.i) #29
  br label %bb.e

parser_precise_mbclen.exit:                       ; preds = %bb.a
  %i.l = trunc i32 %1 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !471
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !514  ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !514
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %i.r
  store i8 %i.l, ptr %i.s, align 1, !tbaa !10
  %i.t = load i32, ptr %i.o, align 8, !tbaa !514
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !480  ; 2 uses
  %.not.i = icmp slt i32 %i.t, %i.v
  br i1 %.not.i, label %tokadd.exit, label %bb.b

bb.b:                                             ; preds = %parser_precise_mbclen.exit
  %i.w = shl nsw i32 %i.v, 1                      ; 2 uses
  store i32 %i.w, ptr %i.u, align 4, !tbaa !480
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !471
  %i.y = sext i32 %i.w to i64
  %i.z = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.x, i64 noundef %i.y, i64 noundef 1) #36
  store ptr %i.z, ptr %i.m, align 8, !tbaa !471
  br label %tokadd.exit

tokadd.exit:                                      ; preds = %parser_precise_mbclen.exit, %bb.b
  %i.aa = add nsw i32 %i.h, -1                    ; 3 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.ac = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !48
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %tokadd.exit
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !514
  %i.af = add nsw i32 %i.ae, %i.aa                ; 4 uses
  store i32 %i.af, ptr %i.o, align 8, !tbaa !514
  %i.ag = load i32, ptr %i.u, align 4, !tbaa !480 ; 2 uses
  %.not.i16 = icmp slt i32 %i.af, %i.ag
  br i1 %.not.i16, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !471
  br label %ruby_nonempty_memcpy.exit

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %i.ah = phi i32 [ %i.ai, %.preheader.i ], [ %i.ag, %bb.c ]
  %i.ai = shl nsw i32 %i.ah, 1                    ; 4 uses
  %i.aj = icmp slt i32 %i.ai, %i.af
  br i1 %i.aj, label %.preheader.i, label %bb.d, !llvm.loop !570

bb.d:                                             ; preds = %.preheader.i
  store i32 %i.ai, ptr %i.u, align 4, !tbaa !480
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !471
  %i.al = sext i32 %i.ai to i64
  %i.am = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ak, i64 noundef %i.al, i64 noundef 1) #36 ; 2 uses
  store ptr %i.am, ptr %i.m, align 8, !tbaa !471
  %.pre13.i = load i32, ptr %i.o, align 8, !tbaa !514
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !48
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %._crit_edge.i, %bb.d
  %i.an = phi ptr [ %i.ad, %._crit_edge.i ], [ %.pre, %bb.d ]
  %i.ao = phi i32 [ %i.af, %._crit_edge.i ], [ %.pre13.i, %bb.d ]
  %i.ap = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.am, %bb.d ] ; 2 uses
  %i.aq = sub nsw i32 %i.ao, %i.aa
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ar
  %i.at = sub nsw i64 0, %i.ac
  %i.au = getelementptr inbounds i8, ptr %i.an, i64 %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr readonly align 1 %i.au, i64 %i.ac, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  br label %bb.e

bb.e:                                             ; preds = %parser_precise_mbclen.exit.thread, %tokadd.exit, %ruby_nonempty_memcpy.exit
  %.0 = phi i32 [ -1, %parser_precise_mbclen.exit.thread ], [ %1, %ruby_nonempty_memcpy.exit ], [ %1, %tokadd.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @tokadd_codepoint(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 5) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not = icmp eq ptr %3, null                    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 13 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !413
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.i, %bb.b ], [ 4, %bb.a ]
  %i.k = call i64 @ruby_scan_hex(ptr noundef %i.d, i64 noundef %i.j, ptr noundef nonnull %i.a) #29 ; 2 uses
  %i.l = trunc i64 %i.k to i32                    ; 5 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11   ; 5 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m ; 3 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !48
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !171  ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load i8, ptr %i.p, align 8, !tbaa !497, !range !499, !noundef !456
  %.not64 = icmp eq i8 %.val, 0
  br i1 %.not64, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !10
  %.not65 = icmp eq i32 %i.s, 7
  br i1 %.not65, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = add i64 %i.m, -7
  %or.cond = icmp ult i64 %i.t, -6
  br i1 %or.cond, label %bb.i, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.u = icmp ult i64 %i.m, 4
  br i1 %i.u, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.g
  %.05990 = phi ptr [ %3, %bb.h ], [ %i.o, %bb.g ]
  %i.v = call nonnull ptr @rb_utf8_encoding() #29
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %.05990 to i64
  %i.z = sub i64 %i.x, %i.y
  call fastcc void @flush_string_content(ptr noundef nonnull %0, ptr noundef nonnull %i.v, i64 noundef %i.z)
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !182
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49
  %i.ad = call i64 @rb_enc_str_new(ptr noundef nonnull @.str.607, i64 noundef 22, ptr noundef %i.ac) #29
  %i.ae = getelementptr i8, ptr %0, i64 368       ; 2 uses
  %.val.i = load i64, ptr %i.ae, align 8, !tbaa !46
  %i.af = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i, i64 noundef %i.aa, i32 noundef 1, i64 noundef %i.ad) #29 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = or i16 %i.ah, 512
  store i16 %i.ai, ptr %i.ag, align 8
  %.val.i71 = load ptr, ptr %i.c, align 8, !tbaa !48 ; 3 uses
  %i.aj = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %.val3.i = load ptr, ptr %i.aj, align 8, !tbaa !41 ; 4 uses
  %i.ak = icmp ult ptr %.val.i71, %.val3.i
  br i1 %i.ak, label %bb.j, label %ripper_has_scan_event.exit.i

bb.j:                                             ; preds = %bb.i
  %i.al = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.al, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i:                     ; preds = %bb.i
  %.not.i = icmp ugt ptr %.val.i71, %.val3.i
  br i1 %.not.i, label %bb.k, label %ripper_dispatch_scan_event.exit

bb.k:                                             ; preds = %ripper_has_scan_event.exit.i
  %i.am = ptrtoint ptr %.val.i71 to i64
  %i.an = ptrtoint ptr %.val3.i to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !49
  %i.aq = call i64 @rb_enc_str_new(ptr noundef %.val3.i, i64 noundef %i.ao, ptr noundef %i.ap) #29
  %i.ar = call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 321) #29
  %.val.i.i = load i64, ptr %i.ae, align 8, !tbaa !46
  %i.as = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i, i64 noundef %i.ar, i32 noundef 1, i64 noundef %i.aq) #29
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !39
  %i.av = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.au) #29 ; 0 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !48
  store ptr %i.aw, ptr %i.aj, align 8, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.as, ptr %i.ax, align 8, !tbaa !47
  br label %ripper_dispatch_scan_event.exit

ripper_dispatch_scan_event.exit:                  ; preds = %ripper_has_scan_event.exit.i, %bb.k
  %i.ay = load i64, ptr %i.a, align 8
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = select i1 %.not, i1 %i.az, i1 false
  br label %ripper_dispatch_scan_event.exit78

bb.l:                                             ; preds = %bb.g, %bb.h
  %.05992 = phi ptr [ %i.o, %bb.g ], [ %3, %bb.h ] ; 2 uses
  %i.bb = icmp sgt i32 %i.l, 1114111
  br i1 %i.bb, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bc = call nonnull ptr @rb_utf8_encoding() #29
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %.05992 to i64
  %i.bg = sub i64 %i.be, %i.bf
  call fastcc void @flush_string_content(ptr noundef nonnull %0, ptr noundef nonnull %i.bc, i64 noundef %i.bg)
  %i.bh = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !182
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !49
  %i.bk = call i64 @rb_enc_str_new(ptr noundef nonnull @.str.608, i64 noundef 37, ptr noundef %i.bj) #29
  %i.bl = getelementptr i8, ptr %0, i64 368       ; 2 uses
  %.val.i72 = load i64, ptr %i.bl, align 8, !tbaa !46
  %i.bm = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i72, i64 noundef %i.bh, i32 noundef 1, i64 noundef %i.bk) #29 ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 8
  %i.bp = or i16 %i.bo, 512
  store i16 %i.bp, ptr %i.bn, align 8
  %.val.i73 = load ptr, ptr %i.c, align 8, !tbaa !48 ; 3 uses
  %i.bq = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %.val3.i74 = load ptr, ptr %i.bq, align 8, !tbaa !41 ; 4 uses
  %i.br = icmp ult ptr %.val.i73, %.val3.i74
  br i1 %i.br, label %bb.n, label %ripper_has_scan_event.exit.i75

bb.n:                                             ; preds = %bb.m
  %i.bs = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bs, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i75:                   ; preds = %bb.m
  %.not.i76 = icmp ugt ptr %.val.i73, %.val3.i74
  br i1 %.not.i76, label %bb.o, label %ripper_dispatch_scan_event.exit78

bb.o:                                             ; preds = %ripper_has_scan_event.exit.i75
  %i.bt = ptrtoint ptr %.val.i73 to i64
  %i.bu = ptrtoint ptr %.val3.i74 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !49
  %i.bx = call i64 @rb_enc_str_new(ptr noundef %.val3.i74, i64 noundef %i.bv, ptr noundef %i.bw) #29
  %i.by = call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 321) #29
  %.val.i.i77 = load i64, ptr %i.bl, align 8, !tbaa !46
  %i.bz = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i77, i64 noundef %i.by, i32 noundef 1, i64 noundef %i.bx) #29
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !39
  %i.cc = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.cb) #29 ; 0 uses
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !48
  store ptr %i.cd, ptr %i.bq, align 8, !tbaa !41
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.bz, ptr %i.ce, align 8, !tbaa !47
  br label %ripper_dispatch_scan_event.exit78

bb.p:                                             ; preds = %bb.l
  %i.cf = and i32 %i.l, -2048
  %i.cg = icmp eq i32 %i.cf, 55296
  br i1 %i.cg, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ch = call nonnull ptr @rb_utf8_encoding() #29
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %.05992 to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call fastcc void @flush_string_content(ptr noundef nonnull %0, ptr noundef nonnull %i.ch, i64 noundef %i.cl)
  %i.cm = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !182
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !49
  %i.cp = call i64 @rb_enc_str_new(ptr noundef nonnull @.str.609, i64 noundef 25, ptr noundef %i.co) #29
  %i.cq = getelementptr i8, ptr %0, i64 368       ; 2 uses
  %.val.i79 = load i64, ptr %i.cq, align 8, !tbaa !46
  %i.cr = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i79, i64 noundef %i.cm, i32 noundef 1, i64 noundef %i.cp) #29 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 8
  %i.cu = or i16 %i.ct, 512
  store i16 %i.cu, ptr %i.cs, align 8
  %.val.i80 = load ptr, ptr %i.c, align 8, !tbaa !48 ; 3 uses
  %i.cv = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %.val3.i81 = load ptr, ptr %i.cv, align 8, !tbaa !41 ; 4 uses
  %i.cw = icmp ult ptr %.val.i80, %.val3.i81
  br i1 %i.cw, label %bb.r, label %ripper_has_scan_event.exit.i82

bb.r:                                             ; preds = %bb.q
  %i.cx = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cx, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i82:                   ; preds = %bb.q
  %.not.i83 = icmp ugt ptr %.val.i80, %.val3.i81
  br i1 %.not.i83, label %bb.s, label %ripper_dispatch_scan_event.exit78

bb.s:                                             ; preds = %ripper_has_scan_event.exit.i82
  %i.cy = ptrtoint ptr %.val.i80 to i64
  %i.cz = ptrtoint ptr %.val3.i81 to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = load ptr, ptr %i.cn, align 8, !tbaa !49
  %i.dc = call i64 @rb_enc_str_new(ptr noundef %.val3.i81, i64 noundef %i.da, ptr noundef %i.db) #29
  %i.dd = call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 321) #29
  %.val.i.i84 = load i64, ptr %i.cq, align 8, !tbaa !46
  %i.de = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i84, i64 noundef %i.dd, i32 noundef 1, i64 noundef %i.dc) #29
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !39
  %i.dh = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.dg) #29 ; 0 uses
  %i.di = load ptr, ptr %i.c, align 8, !tbaa !48
  store ptr %i.di, ptr %i.cv, align 8, !tbaa !41
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.de, ptr %i.dj, align 8, !tbaa !47
  br label %ripper_dispatch_scan_event.exit78

bb.t:                                             ; preds = %bb.p, %bb.e
  %.not66 = icmp eq i32 %2, 0
  br i1 %.not66, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dk = trunc i64 %i.m to i32                   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !514
  %i.dn = add nsw i32 %i.dm, %i.dk                ; 4 uses
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !514
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !480 ; 2 uses
  %.not.i86 = icmp slt i32 %i.dn, %i.dp
  br i1 %.not.i86, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %bb.u
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !471
  br label %tokspace.exit

.preheader.i:                                     ; preds = %bb.u, %.preheader.i
  %i.dq = phi i32 [ %i.dr, %.preheader.i ], [ %i.dp, %bb.u ]
  %i.dr = shl nsw i32 %i.dq, 1                    ; 4 uses
  %i.ds = icmp slt i32 %i.dr, %i.dn
  br i1 %i.ds, label %.preheader.i, label %bb.v, !llvm.loop !570

bb.v:                                             ; preds = %.preheader.i
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !480
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !471
  %i.dv = sext i32 %i.dr to i64
  %i.dw = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.du, i64 noundef %i.dv, i64 noundef 1) #36 ; 2 uses
  store ptr %i.dw, ptr %i.dt, align 8, !tbaa !471
  %.pre13.i = load i32, ptr %i.dl, align 8, !tbaa !514
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %tokspace.exit

tokspace.exit:                                    ; preds = %._crit_edge.i, %bb.v
  %i.dx = phi i64 [ %i.m, %._crit_edge.i ], [ %.pre, %bb.v ]
  %i.dy = phi i32 [ %i.dn, %._crit_edge.i ], [ %.pre13.i, %bb.v ]
  %i.dz = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dw, %bb.v ]
  %sext = shl i64 %i.dx, 32                       ; 2 uses
  %.not.i87 = icmp eq i64 %sext, 0
  br i1 %.not.i87, label %ripper_dispatch_scan_event.exit78, label %bb.w

bb.w:                                             ; preds = %tokspace.exit
  %i.ea = ashr exact i64 %sext, 32                ; 2 uses
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.ec = sub nsw i64 0, %i.ea
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 %i.ec
  %i.ee = sub nsw i32 %i.dy, %i.dk
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %i.dz, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eg, ptr nonnull readonly align 1 %i.ed, i64 %i.ea, i1 false)
  br label %ripper_dispatch_scan_event.exit78

bb.x:                                             ; preds = %bb.t
  %i.eh = icmp sgt i32 %i.l, 127
  br i1 %i.eh, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ei = call nonnull ptr @rb_utf8_encoding() #29 ; 5 uses
  %i.ej = load ptr, ptr %1, align 8, !tbaa !500   ; 3 uses
  %.not67 = icmp eq ptr %i.ej, null
  %.not68 = icmp eq ptr %i.ei, %i.ej
  %or.cond69 = select i1 %.not67, i1 true, i1 %.not68
  br i1 %or.cond69, label %bb.z, label %.critedge

.critedge:                                        ; preds = %bb.y
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %.val70 = load ptr, ptr %i.ek, align 8, !tbaa !494
  call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.610, ptr noundef %.val70) #29
  br label %ripper_dispatch_scan_event.exit78

bb.z:                                             ; preds = %bb.y
  store ptr %i.ei, ptr %1, align 8, !tbaa !500
  %i.el = call i32 @rb_enc_codelen(i32 noundef range(i32 128, -2147483648) %i.l, ptr noundef nonnull %i.ei) #29 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !514
  %i.eo = add nsw i32 %i.en, %i.el                ; 4 uses
  store i32 %i.eo, ptr %i.em, align 8, !tbaa !514
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !480 ; 2 uses
  %.not.i.i = icmp slt i32 %i.eo, %i.eq
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.preheader.i.i

._crit_edge.i.i:                                  ; preds = %bb.z
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !471
  br label %tokaddmbc.exit

.preheader.i.i:                                   ; preds = %bb.z, %.preheader.i.i
  %i.er = phi i32 [ %i.es, %.preheader.i.i ], [ %i.eq, %bb.z ]
  %i.es = shl nsw i32 %i.er, 1                    ; 4 uses
  %i.et = icmp slt i32 %i.es, %i.eo
  br i1 %i.et, label %.preheader.i.i, label %bb.aa, !llvm.loop !570

bb.aa:                                            ; preds = %.preheader.i.i
  store i32 %i.es, ptr %i.ep, align 4, !tbaa !480
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !471
  %i.ew = sext i32 %i.es to i64
  %i.ex = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ev, i64 noundef %i.ew, i64 noundef 1) #36 ; 2 uses
  store ptr %i.ex, ptr %i.eu, align 8, !tbaa !471
  %.pre13.i.i = load i32, ptr %i.em, align 8, !tbaa !514
  br label %tokaddmbc.exit

tokaddmbc.exit:                                   ; preds = %._crit_edge.i.i, %bb.aa
  %i.ey = phi i32 [ %i.eo, %._crit_edge.i.i ], [ %.pre13.i.i, %bb.aa ]
  %i.ez = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ex, %bb.aa ]
  %i.fa = sub nsw i32 %i.ey, %i.el
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ez, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !577
  %i.ff = call i32 %i.fe(i32 noundef range(i32 128, -2147483648) %i.l, ptr noundef %i.fc, ptr noundef nonnull %i.ei) #29, !inline_history !578 ; 0 uses
  br label %ripper_dispatch_scan_event.exit78

bb.ab:                                            ; preds = %bb.x
  %i.fg = trunc i64 %i.k to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !471
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !514 ; 2 uses
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fj, align 8, !tbaa !514
  %i.fm = sext i32 %i.fk to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fi, i64 %i.fm
  store i8 %i.fg, ptr %i.fn, align 1, !tbaa !10
  %i.fo = load i32, ptr %i.fj, align 8, !tbaa !514
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !480 ; 2 uses
  %.not.i88 = icmp slt i32 %i.fo, %i.fq
  br i1 %.not.i88, label %ripper_dispatch_scan_event.exit78, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fr = shl nsw i32 %i.fq, 1                    ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !480
  %i.fs = load ptr, ptr %i.fh, align 8, !tbaa !471
  %i.ft = sext i32 %i.fr to i64
  %i.fu = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.fs, i64 noundef %i.ft, i64 noundef 1) #36
  store ptr %i.fu, ptr %i.fh, align 8, !tbaa !471
  br label %ripper_dispatch_scan_event.exit78

ripper_dispatch_scan_event.exit78:                ; preds = %bb.w, %tokspace.exit, %bb.ac, %bb.ab, %bb.s, %ripper_has_scan_event.exit.i82, %bb.o, %ripper_has_scan_event.exit.i75, %tokaddmbc.exit, %.critedge, %ripper_dispatch_scan_event.exit
  %.1.shrunk = phi i1 [ %i.ba, %ripper_dispatch_scan_event.exit ], [ true, %bb.ac ], [ %.not, %bb.o ], [ %.not, %.critedge ], [ true, %tokaddmbc.exit ], [ %.not, %bb.s ], [ %.not, %ripper_has_scan_event.exit.i75 ], [ %.not, %ripper_has_scan_event.exit.i82 ], [ true, %bb.ab ], [ true, %tokspace.exit ], [ true, %bb.w ]
  %.1 = zext i1 %.1.shrunk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.1
}

declare i64 @ruby_scan_hex(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rb_enc_codelen(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
declare i64 @ruby_scan_oct(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tok_hex(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = tail call i64 @ruby_scan_hex(ptr noundef %i.b, i64 noundef 2, ptr noundef nonnull %1) #29
  %i.d = load i64, ptr %1, align 8, !tbaa !11     ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  tail call fastcc void @flush_string_content(ptr noundef nonnull %0, ptr noundef %i.f, i64 noundef 2)
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !182
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.i = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.617, i64 noundef 18, ptr noundef %i.h) #29
  %i.j = getelementptr i8, ptr %0, i64 368        ; 2 uses
  %.val.i = load i64, ptr %i.j, align 8, !tbaa !46
  %i.k = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i, i64 noundef %i.g, i32 noundef 1, i64 noundef %i.i) #29 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = or i16 %i.m, 512
  store i16 %i.n, ptr %i.l, align 8
  %.val.i11 = load ptr, ptr %i.a, align 8, !tbaa !48 ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %.val3.i = load ptr, ptr %i.o, align 8, !tbaa !41 ; 4 uses
  %i.p = icmp ult ptr %.val.i11, %.val3.i
  br i1 %i.p, label %bb.c, label %ripper_has_scan_event.exit.i

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i:                     ; preds = %bb.b
  %.not.i = icmp ugt ptr %.val.i11, %.val3.i
  br i1 %.not.i, label %bb.d, label %ripper_dispatch_scan_event.exit

bb.d:                                             ; preds = %ripper_has_scan_event.exit.i
  %i.r = ptrtoint ptr %.val.i11 to i64
  %i.s = ptrtoint ptr %.val3.i to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.v = tail call i64 @rb_enc_str_new(ptr noundef %.val3.i, i64 noundef %i.t, ptr noundef %i.u) #29
  %i.w = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 321) #29
  %.val.i.i = load i64, ptr %i.j, align 8, !tbaa !46
  %i.x = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i, i64 noundef %i.w, i32 noundef 1, i64 noundef %i.v) #29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.aa = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.z) #29 ; 0 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !48
  store ptr %i.ab, ptr %i.o, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.x, ptr %i.ac, align 8, !tbaa !47
  br label %ripper_dispatch_scan_event.exit

bb.e:                                             ; preds = %bb.a
  %i.ad = trunc i64 %i.c to i32
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.d
  store ptr %i.af, ptr %i.a, align 8, !tbaa !48
  br label %ripper_dispatch_scan_event.exit

ripper_dispatch_scan_event.exit:                  ; preds = %bb.d, %ripper_has_scan_event.exit.i, %bb.e
  %.0 = phi i32 [ %i.ad, %bb.e ], [ 0, %ripper_has_scan_event.exit.i ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tokskip_mbchar(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !413
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.c, ptr noundef %i.e, ptr noundef %i.g) #29 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %parser_precise_mbclen.exit

parser_precise_mbclen.exit:                       ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !494
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.618, ptr noundef %.val.i) #29
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.m = zext nneg i32 %i.h to i64
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  store ptr %i.o, ptr %i.a, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %parser_precise_mbclen.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, 119) i32 @escaped_control_code(i32 noundef range(i32 0, 256) %0) unnamed_addr #23 {
bb.a:
  %trunc = trunc nuw i32 %0 to i8
  %switch.tableidx = add i8 %trunc, -9            ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 24
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.escaped_control_code, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %switch.ext, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal fastcc void @parser_add_delayed_token(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 7680, 8663) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 32
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.i = load i32, ptr %i.h, align 4, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.p = sub i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !413
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.o
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.623, i32 noundef %3, i32 noundef %i.i, i64 noundef %i.n, i64 noundef %i.p, i64 noundef %i.t) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.u = icmp ult ptr %1, %2
  br i1 %i.u, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40   ; 6 uses
  %.not51 = icmp eq ptr %i.w, null
  br i1 %.not51, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !453  ; 4 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %parser_string_char_at_end.exit, label %parser_string_char_at_end.exit.thread

parser_string_char_at_end.exit.thread:            ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !507
  br label %bb.f

parser_string_char_at_end.exit:                   ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !451
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !10
  %i.ah = icmp eq i8 %i.ag, 10                    ; 2 uses
  %i.ai = zext i1 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !507
  %i.al = add nsw i32 %i.ak, %i.ai                ; 2 uses
  br i1 %i.ah, label %bb.g, label %bb.f
end_hunk_5
begin_hunk_6_@local_id:bb.a
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %vtable_included.exit.thread.i, label %bb.d, !llvm.loop !205

vtable_included.exit.thread.i:                    ; preds = %bb.e, %.preheader.i.i, %.critedge37.i
  %i.v = icmp ult ptr %.03158.i, inttoptr (i64 2 to ptr)
  br i1 %i.v, label %local_id_ref.exit, label %.preheader.i38.i

.preheader.i38.i:                                 ; preds = %vtable_included.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %.03158.i, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !186  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i40.i, label %local_id_ref.exit

.lr.ph.i40.i:                                     ; preds = %.preheader.i38.i
  %i.z = load ptr, ptr %.03158.i, align 8, !tbaa !188
  %wide.trip.count.i41.i = zext nneg i32 %i.x to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i40.i
  %indvars.iv.i42.i = phi i64 [ 0, %.lr.ph.i40.i ], [ %indvars.iv.next.i43.i, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i42.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11
  %i.ac = icmp eq i64 %i.ab, %1
  br i1 %i.ac, label %local_id_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i43.i = add nuw nsw i64 %indvars.iv.i42.i, 1 ; 2 uses
  %exitcond.not.i44.i = icmp eq i64 %indvars.iv.next.i43.i, %wide.trip.count.i41.i
  br i1 %exitcond.not.i44.i, label %local_id_ref.exit, label %bb.f, !llvm.loop !205

local_id_ref.exit:                                ; preds = %bb.d, %bb.f, %bb.g, %bb.c, %vtable_included.exit.thread.i, %.preheader.i38.i
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %vtable_included.exit.thread.i ], [ 0, %.preheader.i38.i ], [ 0, %bb.g ], [ 1, %bb.f ], [ 1, %bb.d ]
  ret i32 %.0.i
}

declare i32 @rb_parser_dvar_defined_ref(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @local_id_ref(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !140  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !189  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !190  ; 2 uses
  %.not60 = icmp eq ptr %i.d, null
  br i1 %.not60, label %.critedge37, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.02963 = phi ptr [ %.1, %bb.d ], [ %i.g, %bb.a ] ; 3 uses
  %.03062 = phi ptr [ %i.l, %bb.d ], [ %i.e, %bb.a ] ; 2 uses
  %.03161 = phi ptr [ %i.i, %bb.d ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.03161, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !141  ; 4 uses
  %i.j = icmp ult ptr %i.i, inttoptr (i64 2 to ptr)
  br i1 %i.j, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.03062, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !141  ; 2 uses
  %.not36 = icmp eq ptr %.02963, null
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.02963, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !141
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge37, label %.lr.ph, !llvm.loop !377

.critedge:                                        ; preds = %.lr.ph
  %.not66 = icmp eq ptr %i.i, inttoptr (i64 1 to ptr)
  br i1 %.not66, label %bb.e, label %.critedge37

bb.e:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !378
  %i.q = tail call i32 @rb_parser_local_defined(ptr noundef %0, i64 noundef %1, ptr noundef %i.p) #29
  br label %vtable_included.exit

.critedge37:                                      ; preds = %bb.d, %bb.a, %.critedge
  %.03158 = phi ptr [ %.03161, %.critedge ], [ null, %bb.a ], [ null, %bb.d ] ; 3 uses
  %.03056 = phi ptr [ %.03062, %.critedge ], [ %i.e, %bb.a ], [ %i.l, %bb.d ] ; 3 uses
  %.02954 = phi ptr [ %.02963, %.critedge ], [ %i.g, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.r = icmp ult ptr %.03056, inttoptr (i64 2 to ptr)
  br i1 %i.r, label %vtable_included.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge37
  %i.s = getelementptr inbounds nuw i8, ptr %.03056, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !186  ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %vtable_included.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.v = load ptr, ptr %.03056, align 8, !tbaa !188
  %wide.trip.count.i = zext nneg i32 %i.t to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  %i.y = icmp eq i64 %i.x, %1
  br i1 %i.y, label %vtable_included.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %vtable_included.exit.thread, label %bb.f, !llvm.loop !205

vtable_included.exit.thread:                      ; preds = %bb.g, %.preheader.i, %.critedge37
  %i.z = icmp ult ptr %.03158, inttoptr (i64 2 to ptr)
  br i1 %i.z, label %vtable_included.exit, label %.preheader.i38

.preheader.i38:                                   ; preds = %vtable_included.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %.03158, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !186 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i40, label %vtable_included.exit

.lr.ph.i40:                                       ; preds = %.preheader.i38
  %i.ad = load ptr, ptr %.03158, align 8, !tbaa !188
  %wide.trip.count.i41 = zext nneg i32 %i.ab to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i40
  %indvars.iv.i42 = phi i64 [ 0, %.lr.ph.i40 ], [ %indvars.iv.next.i43, %bb.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i42
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !11
  %i.ag = icmp eq i64 %i.af, %1
  br i1 %i.ag, label %vtable_included.exit45, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, %wide.trip.count.i41
  br i1 %exitcond.not.i44, label %vtable_included.exit, label %bb.h, !llvm.loop !205

vtable_included.exit45:                           ; preds = %bb.h
  %i.ah = icmp ne ptr %.02954, null
  %i.ai = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.ai, %i.ah
  br i1 %or.cond3, label %bb.j, label %vtable_included.exit

bb.j:                                             ; preds = %vtable_included.exit45
  %i.aj = load ptr, ptr %.02954, align 8, !tbaa !188
  %i.ak = shl i64 %indvars.iv.i42, 32
  %sext = add i64 %i.ak, 4294967296
  %i.al = ashr exact i64 %sext, 29
  %i.am = getelementptr i8, ptr %i.aj, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  store ptr %i.an, ptr %2, align 8, !tbaa !414
  br label %vtable_included.exit

vtable_included.exit:                             ; preds = %bb.f, %bb.i, %vtable_included.exit45, %bb.j, %vtable_included.exit.thread, %.preheader.i38, %bb.e
  %.0 = phi i32 [ %i.q, %bb.e ], [ 0, %bb.i ], [ 1, %vtable_included.exit45 ], [ 1, %bb.j ], [ 0, %vtable_included.exit.thread ], [ 0, %.preheader.i38 ], [ 1, %bb.f ]
  ret i32 %.0
}

declare i32 @rb_parser_local_defined(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rb_ast_resize_latest_local_table(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @rb_str_to_parser_string(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_list_new2(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 43) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !13
  %i.d = load i32, ptr %4, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !61
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !208  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !208
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !209
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !177
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %2, ptr %i.o, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %3, ptr %i.p, align 8, !tbaa !179
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_match2_new(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 57, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 57) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !13
  %i.d = load i32, ptr %3, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !61
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !208  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !208
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !209
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !349
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.o, align 8, !tbaa !351
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr null, ptr %i.p, align 8, !tbaa !352
  ret ptr %i.b
}

declare i64 @rb_node_regx_string_val(ptr noundef) local_unnamed_addr #2

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #2

declare i32 @onig_foreach_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @reg_named_capture_assign_iter(ptr noundef %0, ptr noundef %1, i32 %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) #0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !353
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !356
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !358
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !359
  %i.l = tail call i32 @rb_reg_named_capture_assign_iter_impl(ptr noundef %i.a, ptr noundef %0, i64 noundef %i.f, ptr noundef %i.c, ptr noundef nonnull %i.g, ptr noundef %i.i, ptr noundef %i.k) #29
  ret i32 %i.l
}

declare i32 @rb_reg_named_capture_assign_iter_impl(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @numparam_nested_p(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 2 uses
  %i.g = icmp ne ptr %i.d, null                   ; 3 uses
  %i.h = icmp ne ptr %i.f, null
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = select i1 %i.g, ptr %i.d, ptr %i.f       ; 2 uses
  %i.j = select i1 %i.g, ptr @.str.682, ptr @.str.683
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !485
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %nd_line.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.i, align 8, !tbaa !61
  %i.n = lshr i64 %i.m, 15
  %i.o = trunc i64 %i.n to i32
  br label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.o, %bb.c ], [ -1, %bb.b ]
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.681, ptr noundef nonnull %i.j, ptr noundef %i.l, i32 noundef %.0.i) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %nd_line.exit
  %.0 = phi i32 [ 1, %nd_line.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @it_used_p(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !485
  %i.g = load i64, ptr %i.d, align 8, !tbaa !61
  %i.h = lshr i64 %i.g, 15
  %i.i = trunc i64 %i.h to i32
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.684, ptr noundef %i.f, i32 noundef %i.i) #29
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %nd_line.exit
  %.0 = phi i32 [ 1, %nd_line.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @parser_numbered_param(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 6 uses
  %switch = icmp ult ptr %i.d, inttoptr (i64 2 to ptr)
  br i1 %switch, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141
  %switch23 = icmp ult ptr %i.f, inttoptr (i64 2 to ptr)
  br i1 %switch23, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !101  ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.678) #29
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp slt i32 %i.h, %1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %1, ptr %i.g, align 8, !tbaa !101
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !186  ; 2 uses
  %i.m = icmp sgt i32 %1, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %.pre.i.pre = load ptr, ptr %i.d, align 8, !tbaa !188
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %vtable_add_gen.exit
  %.pre.i = phi ptr [ %.pre.i.pre, %.lr.ph ], [ %.pre.i24, %vtable_add_gen.exit ] ; 2 uses
  %i.o = phi i32 [ %i.l, %.lr.ph ], [ %i.y, %vtable_add_gen.exit ] ; 4 uses
  %i.p = shl i32 %i.o, 4
  %i.q = add i32 %i.p, 3777
  %i.r = sext i32 %i.q to i64
  %i.s = load i32, ptr %i.n, align 4, !tbaa !187
  %i.t = icmp eq i32 %i.o, %i.s
  br i1 %i.t, label %bb.j, label %vtable_add_gen.exit

bb.j:                                             ; preds = %bb.i
  %i.u = shl nsw i32 %i.o, 1                      ; 2 uses
  store i32 %i.u, ptr %i.n, align 4, !tbaa !187
  %i.v = sext i32 %i.u to i64
  %i.w = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre.i, i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  store ptr %i.w, ptr %i.d, align 8, !tbaa !188
  %.pre1.i = load i32, ptr %i.k, align 8, !tbaa !186
  br label %vtable_add_gen.exit

vtable_add_gen.exit:                              ; preds = %bb.j, %bb.i
  %.pre.i24 = phi ptr [ %i.w, %bb.j ], [ %.pre.i, %bb.i ] ; 2 uses
  %i.x = phi i32 [ %.pre1.i, %bb.j ], [ %i.o, %bb.i ] ; 2 uses
  %i.y = add nsw i32 %i.x, 1                      ; 3 uses
  store i32 %i.y, ptr %i.k, align 8, !tbaa !186
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %.pre.i24, i64 %i.z
  store i64 %i.r, ptr %i.aa, align 8, !tbaa !11
  %i.ab = icmp sgt i32 %1, %i.y
  br i1 %i.ab, label %bb.i, label %.loopexit, !llvm.loop !605

.loopexit:                                        ; preds = %vtable_add_gen.exit, %bb.h, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.b ], [ true, %bb.h ], [ true, %vtable_add_gen.exit ]
  ret i1 %.0
end_hunk_6
begin_hunk_7_@cond0:bb.a
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !46
  %i.cs = load i64, ptr @id_warning, align 8, !tbaa !11
  %i.ct = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.731, i64 noundef 20) #29
  %i.cu = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.cr, i64 noundef %i.cs, i32 noundef 1, i64 noundef %i.ct) #29 ; 0 uses
  br label %common.ret101
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @range_op(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !61
  %i.c = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef nonnull readonly %1) ; 5 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %value_expr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.f = load i32, ptr %i.e, align 4, !tbaa !42   ; 2 uses
  %i.g = load i32, ptr %i.d, align 4, !tbaa !51
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !55
  %i.k = icmp eq i32 %i.f, %i.j
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !54
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  store ptr %i.u, ptr %i.n, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !56
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 %i.x
  store ptr %i.y, ptr %i.l, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.019.i.i = phi ptr [ %i.m, %bb.e ], [ null, %bb.d ], [ null, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %i.o, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !182
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !49
  %i.ac = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.712, i64 noundef 21, ptr noundef %i.ab) #29
  %i.ad = getelementptr i8, ptr %0, i64 368
  %.val.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !46
  %i.ae = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i.i, i64 noundef %i.z, i32 noundef 1, i64 noundef %i.ac) #29 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = or i16 %i.ag, 512
  store i16 %i.ah, ptr %i.af, align 8
  %.not.i.i = icmp eq ptr %.019.i.i, null
  br i1 %.not.i.i, label %value_expr.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.0.i.i, ptr %i.ai, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.019.i.i, ptr %i.aj, align 8, !tbaa !48
  br label %value_expr.exit

value_expr.exit:                                  ; preds = %bb.b, %bb.f, %bb.g
  %i.ak = and i64 %i.b, 32512
  %i.al = icmp eq i64 %i.ak, 15104
  br i1 %i.al, label %bb.h, label %bb.j

bb.h:                                             ; preds = %value_expr.exit
  %i.am = getelementptr i8, ptr %0, i64 200
  %.val = load ptr, ptr %i.am, align 8, !tbaa !485 ; 3 uses
  %i.an = load i8, ptr %.val, align 1
  %.not.i20 = icmp eq i8 %i.an, 45
  br i1 %.not.i20, label %sub_1.i, label %e_option_supplied.exit.thread

sub_1.i:                                          ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.ap = load i8, ptr %i.ao, align 1
  %.not1.i = icmp eq i8 %i.ap, 101
  br i1 %.not1.i, label %e_option_supplied.exit, label %e_option_supplied.exit.thread

e_option_supplied.exit:                           ; preds = %sub_1.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %.not = icmp eq i8 %i.ar, 0
  br i1 %.not, label %bb.i, label %e_option_supplied.exit.thread

e_option_supplied.exit.thread:                    ; preds = %sub_1.i, %bb.h, %e_option_supplied.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.at = load i64, ptr %i.as, align 8, !tbaa !46
  %i.au = load i64, ptr @id_warn, align 8, !tbaa !11
  %i.av = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.735, i64 noundef 28) #29
  %i.aw = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.at, i64 noundef %i.au, i32 noundef 1, i64 noundef %i.av) #29 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %e_option_supplied.exit.thread, %e_option_supplied.exit
  %.pr.i = load i64, ptr @range_op.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not1.i21 = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i21, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %i.ax = tail call i64 @rb_intern2(ptr noundef nonnull @.str.736, i64 noundef 2) #29 ; 3 uses
  store i64 %i.ax, ptr @range_op.rbimpl_id, align 8, !tbaa !11
  %.not.i22 = icmp eq i64 %i.ax, 0
  br i1 %.not.i22, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !623

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.i
  %.lcssa.i = phi i64 [ %.pr.i, %bb.i ], [ %i.ax, %.lr.ph.i ]
  %i.ay = getelementptr i8, ptr %0, i64 288       ; 3 uses
  %.val.i.i = load ptr, ptr %i.ay, align 8, !tbaa !122
  %i.az = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 50, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.az, i32 noundef range(i32 0, 115) 50) #29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.bb = load i32, ptr %2, align 4, !tbaa !51
  %i.bc = sext i32 %i.bb to i64
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !61
  %i.be = and i64 %i.bd, 32767
  %i.bf = shl nsw i64 %i.bc, 15
  %i.bg = or disjoint i64 %i.be, %i.bf
  store i64 %i.bg, ptr %i.az, align 8, !tbaa !61
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !208 ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !208
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i32 %i.bi, ptr %i.bk, align 8, !tbaa !209
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 %.lcssa.i, ptr %i.bl, align 8, !tbaa !443
  %.val.i.i23 = load ptr, ptr %i.ay, align 8, !tbaa !122
  %i.bm = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i23, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.bm, i32 noundef range(i32 0, 115) 43) #29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.bo = load i32, ptr %2, align 4, !tbaa !51
  %i.bp = sext i32 %i.bo to i64
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !61
  %i.br = and i64 %i.bq, 32767
  %i.bs = shl nsw i64 %i.bp, 15
  %i.bt = or disjoint i64 %i.br, %i.bs
  store i64 %i.bt, ptr %i.bm, align 8, !tbaa !61
  %i.bu = load i32, ptr %i.bh, align 8, !tbaa !208 ; 2 uses
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bh, align 8, !tbaa !208
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i32 %i.bu, ptr %i.bw, align 8, !tbaa !209
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %i.az, ptr %i.bx, align 8, !tbaa !177
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i64 1, ptr %i.by, align 8, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store ptr null, ptr %i.bz, align 8, !tbaa !179
  %.val.i.i24 = load ptr, ptr %i.ay, align 8, !tbaa !122
  %i.ca = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i24, i32 noundef range(i32 0, 115) 36, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.ca, i32 noundef range(i32 0, 115) 36) #29
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.cc = load i32, ptr %2, align 4, !tbaa !51
  %i.cd = sext i32 %i.cc to i64
  %i.ce = load i64, ptr %i.ca, align 8, !tbaa !61
  %i.cf = and i64 %i.ce, 32767
  %i.cg = shl nsw i64 %i.cd, 15
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.ca, align 8, !tbaa !61
  %i.ci = load i32, ptr %i.bh, align 8, !tbaa !208 ; 2 uses
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.bh, align 8, !tbaa !208
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i32 %i.ci, ptr %i.ck, align 8, !tbaa !209
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store ptr %1, ptr %i.cl, align 8, !tbaa !275
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store i64 140, ptr %i.cm, align 8, !tbaa !277
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  store ptr %i.bm, ptr %i.cn, align 8, !tbaa !278
  br label %bb.k

bb.j:                                             ; preds = %value_expr.exit
  %i.co = tail call fastcc ptr @cond0(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef %2, i1 noundef zeroext true)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %rbimpl_intern_const.exit
  %.0 = phi ptr [ %i.co, %bb.j ], [ %i.ca, %rbimpl_intern_const.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @is_static_content(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #26 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !61
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 127
  switch i32 %i.d, label %.loopexit [
    i32 45, label %bb.c
    i32 43, label %.preheader
    i32 101, label %.loopexit12
    i32 68, label %.loopexit12
    i32 109, label %.loopexit12
    i32 110, label %.loopexit12
    i32 111, label %.loopexit12
    i32 59, label %.loopexit12
    i32 60, label %.loopexit12
    i32 61, label %.loopexit12
    i32 62, label %.loopexit12
    i32 63, label %.loopexit12
    i32 95, label %.loopexit12
    i32 96, label %.loopexit12
    i32 97, label %.loopexit12
    i32 44, label %.loopexit12
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !180  ; 2 uses
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %.loopexit12, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  %.1.ph = phi ptr [ %0, %bb.b ], [ %i.f, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.e
  %.1 = phi ptr [ %i.k, %bb.e ], [ %.1.ph, %.preheader ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !177
  %i.i = tail call fastcc i32 @is_static_content(ptr noundef %i.h)
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !179  ; 2 uses
  %.not11 = icmp eq ptr %i.k, null
  br i1 %.not11, label %.loopexit12, label %bb.d, !llvm.loop !624

.loopexit12:                                      ; preds = %bb.e, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.c
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a, %.loopexit12
  %.05 = phi i32 [ 0, %bb.b ], [ 1, %.loopexit12 ], [ 1, %bb.a ], [ 0, %bb.d ]
  ret i32 %.05
}

declare ptr @rb_st_init_table_with_size(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_st_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_node_str_string_val(ptr noundef) local_unnamed_addr #2

declare i64 @rb_node_line_lineno_val(ptr noundef) local_unnamed_addr #2

declare i64 @rb_node_encoding_val(ptr noundef) local_unnamed_addr #2

declare i64 @rb_node_file_path_val(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @dyna_pop_1(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190  ; 6 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %vtable_free_gen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !186
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !186
  %.not4.i = icmp eq i32 %i.f, %i.j
  br i1 %.not4.i, label %warn_unused_var.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef nonnull %0, ptr noundef nonnull @.str.746) #29
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre14 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !190
  br label %warn_unused_var.exit

warn_unused_var.exit:                             ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.d, %bb.b ], [ %.pre14, %bb.c ]
  %i.l = phi ptr [ %i.b, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !141
  store ptr %i.o, ptr %i.m, align 8, !tbaa !190
  %i.p = icmp ult ptr %i.d, inttoptr (i64 2 to ptr)
  br i1 %i.p, label %vtable_free_gen.exit, label %bb.d

bb.d:                                             ; preds = %warn_unused_var.exit
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !188  ; 2 uses
  %.not.i11 = icmp eq ptr %i.q, null
  br i1 %.not.i11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ruby_xfree(ptr noundef nonnull %i.q) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @ruby_xfree(ptr noundef nonnull %i.d) #29
  %.pre15 = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %vtable_free_gen.exit

vtable_free_gen.exit:                             ; preds = %bb.f, %warn_unused_var.exit, %bb.a
  %i.r = phi ptr [ %.pre15, %bb.f ], [ %i.l, %warn_unused_var.exit ], [ %i.b, %bb.a ] ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !382  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !141
  store ptr %i.u, ptr %i.r, align 8, !tbaa !382
  %i.v = icmp ult ptr %i.s, inttoptr (i64 2 to ptr)
  br i1 %i.v, label %dyna_pop_vtable.exit, label %bb.g

bb.g:                                             ; preds = %vtable_free_gen.exit
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !188  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ruby_xfree(ptr noundef nonnull %i.w) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @ruby_xfree(ptr noundef nonnull %i.s) #29
  %.pre16 = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %dyna_pop_vtable.exit

dyna_pop_vtable.exit:                             ; preds = %vtable_free_gen.exit, %bb.i
  %i.x = phi ptr [ %i.r, %vtable_free_gen.exit ], [ %.pre16, %bb.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !382  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !141
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !382
  %i.ac = icmp ult ptr %i.z, inttoptr (i64 2 to ptr)
  br i1 %i.ac, label %dyna_pop_vtable.exit13, label %bb.j

bb.j:                                             ; preds = %dyna_pop_vtable.exit
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !188 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i12, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ruby_xfree(ptr noundef nonnull %i.ad) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @ruby_xfree(ptr noundef nonnull %i.z) #29
  br label %dyna_pop_vtable.exit13

dyna_pop_vtable.exit13:                           ; preds = %dyna_pop_vtable.exit, %bb.l
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i64 @rb_ractor_stdout() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #27

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nounwind }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { nounwind allocsize(0,1) }
attributes #34 = { cold noreturn nounwind }
attributes #35 = { nounwind allocsize(1) }
attributes #36 = { nounwind allocsize(1,2) }
attributes #37 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 12, i64 4, !6}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !8, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!19, !20, i64 0}
!19 = !{!"parser_params", !20, i64 0, !22, i64 8, !23, i64 16, !12, i64 120, !12, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !28, i64 160, !29, i64 168, !30, i64 176, !30, i64 184, !7, i64 192, !7, i64 196, !28, i64 200, !12, i64 208, !31, i64 216, !32, i64 224, !30, i64 232, !33, i64 240, !12, i64 248, !12, i64 256, !34, i64 264, !35, i64 288, !7, i64 296, !30, i64 304, !7, i64 312, !12, i64 320, !36, i64 328, !37, i64 336, !37, i64 344, !38, i64 352, !7, i64 360, !7, i64 360, !7, i64 360, !7, i64 360, !7, i64 360, !7, i64 360, !7, i64 360, !7, i64 361, !7, i64 361, !7, i64 361, !12, i64 368, !12, i64 376, !12, i64 384, !12, i64 392, !12, i64 400, !12, i64 408}
!20 = !{!"p1 _ZTS7YYSTYPE", !21, i64 0}
!21 = !{!"any pointer", !8, i64 0}
!22 = !{!"p1 _ZTS23rb_code_location_struct", !21, i64 0}
!23 = !{!"", !24, i64 0, !21, i64 8, !21, i64 16, !25, i64 24, !27, i64 40, !27, i64 48, !28, i64 56, !28, i64 64, !28, i64 72, !28, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100}
!24 = !{!"p1 _ZTS17rb_strterm_struct", !21, i64 0}
!25 = !{!"parser_string_buffer", !26, i64 0, !26, i64 8}
!26 = !{!"p1 _ZTS25parser_string_buffer_elem", !21, i64 0}
!27 = !{!"p1 _ZTS16rb_parser_string", !21, i64 0}
!28 = !{!"p1 omnipotent char", !21, i64 0}
!29 = !{!"p1 _ZTS10local_vars", !21, i64 0}
!30 = !{!"p1 _ZTS8st_table", !21, i64 0}
!31 = !{!"p1 _ZTS18OnigEncodingTypeST", !21, i64 0}
!32 = !{!"p1 _ZTS10token_info", !21, i64 0}
!33 = !{!"p1 _ZTS11RNode_EXITS", !21, i64 0}
!34 = !{!"", !27, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!35 = !{!"p1 _ZTS13rb_ast_struct", !21, i64 0}
!36 = !{!"lex_context", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 1, !7, i64 1, !7, i64 1, !7, i64 1}
!37 = !{!"p1 _ZTS5RNode", !21, i64 0}
!38 = !{!"p1 _ZTS14rb_iseq_struct", !21, i64 0}
!39 = !{!19, !22, i64 8}
!40 = !{!19, !27, i64 264}
!41 = !{!19, !28, i64 96}
!42 = !{!19, !7, i64 196}
!43 = !{!19, !7, i64 272}
!44 = !{!19, !28, i64 72}
!45 = !{!19, !7, i64 276}
!46 = !{!19, !12, i64 368}
!47 = !{!19, !12, i64 392}
!48 = !{!19, !28, i64 80}
!49 = !{!19, !31, i64 216}
!50 = !{!28, !28, i64 0}
!51 = !{!52, !7, i64 0}
!52 = !{!"rb_code_location_struct", !53, i64 0, !53, i64 8}
!53 = !{!"rb_code_position_struct", !7, i64 0, !7, i64 4}
!54 = !{!52, !7, i64 4}
!55 = !{!52, !7, i64 8}
!56 = !{!52, !7, i64 12}
!57 = !{!19, !12, i64 408}
!58 = !{!19, !12, i64 400}
!59 = distinct !{!59, !17}
!60 = !{!19, !7, i64 104}
!61 = !{!62, !12, i64 0}
!62 = !{!"RNode", !12, i64 0, !52, i64 8, !7, i64 24}
!63 = !{!64, !37, i64 48}
!64 = !{!"RNode_BLOCK", !62, i64 0, !37, i64 32, !37, i64 40, !37, i64 48}
!65 = distinct !{!65, !17}
!66 = !{!64, !37, i64 32}
!67 = !{!68, !37, i64 32}
!68 = !{!"RNode_BEGIN", !62, i64 0, !37, i64 32}
!69 = distinct !{!69, !17}
!70 = !{!19, !37, i64 344}
!71 = !{!19, !12, i64 376}
!72 = !{!19, !33, i64 240}
!73 = !{!19, !37, i64 336}
!74 = !{!75, !12, i64 32}
!75 = !{!"RNode_BACK_REF", !62, i64 0, !12, i64 32}
!76 = !{!77, !37, i64 40}
!77 = !{!"RNode_EXITS", !62, i64 0, !37, i64 32, !37, i64 40, !52, i64 48}
!78 = !{!77, !37, i64 32}
!79 = !{!80, !37, i64 48}
!80 = !{!"RNode_SCOPE", !62, i64 0, !81, i64 32, !37, i64 40, !37, i64 48, !82, i64 56}
!81 = !{!"p1 _ZTS15rb_ast_id_table", !21, i64 0}
!82 = !{!"p1 _ZTS10RNode_ARGS", !21, i64 0}
!83 = !{!84, !12, i64 40}
!84 = !{!"RNode_DEF_TEMP", !62, i64 0, !37, i64 32, !12, i64 40, !85, i64 48}
!85 = !{!"", !7, i64 0, !37, i64 8, !36, i64 16}
!86 = !{!84, !37, i64 32}
!87 = !{!88, !37, i64 40}
!88 = !{!"RNode_DEFN", !62, i64 0, !12, i64 32, !37, i64 40}
!89 = !{!90, !37, i64 48}
!90 = !{!"RNode_DEFS", !62, i64 0, !37, i64 32, !12, i64 40, !37, i64 48}
!91 = !{!19, !30, i64 184}
!92 = !{!19, !30, i64 176}
!93 = !{!19, !29, i64 168}
!94 = !{!95, !37, i64 40}
!95 = !{!"local_vars", !96, i64 0, !96, i64 8, !96, i64 16, !29, i64 24, !97, i64 32, !37, i64 56}
!96 = !{!"p1 _ZTS6vtable", !21, i64 0}
!97 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16}
!98 = !{!95, !37, i64 32}
!99 = !{!95, !37, i64 48}
!100 = !{!84, !37, i64 56}
!101 = !{!19, !7, i64 312}
!102 = !{!84, !7, i64 48}
!103 = !{!19, !12, i64 120}
!104 = !{!105, !37, i64 32}
!105 = !{!"RNode_ITER", !62, i64 0, !37, i64 32, !37, i64 40}
!106 = !{!107, !37, i64 40}
!107 = !{!"RNode_FCALL", !62, i64 0, !12, i64 32, !37, i64 40}
!108 = !{!105, !37, i64 40}
!109 = !{!110, !111, i64 32}
!110 = !{!"RNode_UNDEF", !62, i64 0, !111, i64 32, !52, i64 40}
!111 = !{!"p1 _ZTS13rb_parser_ary", !21, i64 0}
!112 = !{!113, !37, i64 32}
!113 = !{!"RNode_BLOCK_PASS", !62, i64 0, !37, i64 32, !37, i64 40, !7, i64 48, !52, i64 52}
!114 = !{!19, !12, i64 128}
!115 = !{!116, !37, i64 32}
!116 = !{!"RNode_SPLAT", !62, i64 0, !37, i64 32, !52, i64 40}
!117 = !{!118, !12, i64 32}
!118 = !{!"RNode_SELF", !62, i64 0, !12, i64 32}
!119 = !{!120, !12, i64 40}
!120 = !{!"RNode_HASH", !62, i64 0, !37, i64 32, !12, i64 40}
!121 = !{!19, !30, i64 232}
!122 = !{!19, !35, i64 288}
!123 = !{!124, !7, i64 40}
!124 = !{!"RNode_ARGS_AUX", !62, i64 0, !12, i64 32, !7, i64 40, !37, i64 48}
!125 = !{!124, !37, i64 48}
!126 = !{!127, !37, i64 40}
!127 = !{!"RNode_CLASS", !62, i64 0, !37, i64 32, !37, i64 40, !37, i64 48, !52, i64 56, !52, i64 72, !52, i64 88}
!128 = !{!129, !37, i64 40}
!129 = !{!"RNode_SCLASS", !62, i64 0, !37, i64 32, !37, i64 40, !52, i64 48, !52, i64 64, !52, i64 80}
!130 = !{!131, !37, i64 40}
!131 = !{!"RNode_MODULE", !62, i64 0, !37, i64 32, !37, i64 40, !52, i64 48, !52, i64 64}
!132 = !{!19, !32, i64 224}
!133 = !{!134, !7, i64 20}
!134 = !{!"token_info", !28, i64 0, !53, i64 8, !7, i64 16, !7, i64 20, !32, i64 24}
!135 = !{!134, !32, i64 24}
!136 = !{!134, !28, i64 0}
!137 = !{!134, !7, i64 12}
!138 = distinct !{!138, !17}
!139 = distinct !{!139, !17}
!140 = !{!95, !96, i64 8}
!141 = !{!142, !96, i64 16}
!142 = !{!"vtable", !143, i64 0, !7, i64 8, !7, i64 12, !96, i64 16}
!143 = !{!"p1 long", !21, i64 0}
!144 = !{!145, !146, i64 40}
!145 = !{!"RNode_OPT_ARG", !62, i64 0, !37, i64 32, !146, i64 40}
!146 = !{!"p1 _ZTS13RNode_OPT_ARG", !21, i64 0}
!147 = distinct !{!147, !17}
!148 = !{!149, !7, i64 16}
!149 = !{!"rb_args_info", !37, i64 0, !37, i64 8, !7, i64 16, !7, i64 20, !12, i64 24, !12, i64 32, !12, i64 40, !150, i64 48, !37, i64 56, !146, i64 64, !7, i64 72, !7, i64 72}
!150 = !{!"p1 _ZTS12RNode_KW_ARG", !21, i64 0}
!151 = !{!149, !37, i64 0}
!152 = !{!149, !7, i64 20}
!153 = !{!149, !37, i64 8}
!154 = !{!149, !12, i64 24}
!155 = !{!149, !12, i64 32}
!156 = !{!149, !146, i64 64}
!157 = !{!19, !12, i64 320}
!158 = !{!19, !7, i64 112}
!159 = !{!160, !37, i64 0}
!160 = !{!"rb_locations_lambda_body_t", !37, i64 0, !52, i64 8, !52, i64 24}
!161 = !{!162, !37, i64 32}
!162 = !{!"RNode_LAMBDA", !62, i64 0, !37, i64 32, !52, i64 40, !52, i64 56, !52, i64 72}
!163 = !{!95, !37, i64 56}
!164 = !{!165, !37, i64 32}
!165 = !{!"RNode_FNDPTN", !62, i64 0, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!166 = !{!167, !37, i64 32}
!167 = !{!"RNode_ARYPTN", !62, i64 0, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!168 = !{!169, !37, i64 32}
!169 = !{!"RNode_HSHPTN", !62, i64 0, !37, i64 32, !37, i64 40, !37, i64 48}
!170 = !{!19, !7, i64 148}
!171 = !{!19, !24, i64 16}
!172 = !{!19, !7, i64 116}
!173 = !{!19, !7, i64 152}
!174 = !{!19, !7, i64 108}
!175 = !{!176, !37, i64 40}
!176 = !{!"RNode_MASGN", !62, i64 0, !37, i64 32, !37, i64 40, !37, i64 48}
!177 = !{!178, !37, i64 32}
!178 = !{!"RNode_LIST", !62, i64 0, !37, i64 32, !8, i64 40, !37, i64 48}
!179 = !{!178, !37, i64 48}
!180 = !{!120, !37, i64 32}
!181 = distinct !{!181, !17}
!182 = !{!183, !12, i64 656}
!183 = !{!"ripper_parser_ids", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368, !12, i64 376, !12, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !12, i64 440, !12, i64 448, !12, i64 456, !12, i64 464, !12, i64 472, !12, i64 480, !12, i64 488, !12, i64 496, !12, i64 504, !12, i64 512, !12, i64 520, !12, i64 528, !12, i64 536, !12, i64 544, !12, i64 552, !12, i64 560, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !12, i64 616, !12, i64 624, !12, i64 632, !12, i64 640, !12, i64 648, !12, i64 656, !12, i64 664, !12, i64 672, !12, i64 680, !12, i64 688, !12, i64 696, !12, i64 704, !12, i64 712, !12, i64 720, !12, i64 728, !12, i64 736, !12, i64 744, !12, i64 752, !12, i64 760, !12, i64 768, !12, i64 776, !12, i64 784, !12, i64 792, !12, i64 800, !12, i64 808, !12, i64 816, !12, i64 824, !12, i64 832, !12, i64 840, !12, i64 848, !12, i64 856, !12, i64 864, !12, i64 872, !12, i64 880, !12, i64 888, !12, i64 896, !12, i64 904, !12, i64 912, !12, i64 920, !12, i64 928, !12, i64 936, !12, i64 944, !12, i64 952, !12, i64 960, !12, i64 968, !12, i64 976, !12, i64 984, !12, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048, !12, i64 1056, !12, i64 1064, !12, i64 1072, !12, i64 1080, !12, i64 1088, !12, i64 1096}
!184 = distinct !{!184, !17}
!185 = !{!95, !29, i64 24}
end_hunk_7
