Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ripper?download=true
inline.NumInlined: 2066
inline.NumDeleted: 252
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@parser_yylex:bb.a
  %i.aig = icmp eq i8 %i.aif, 10
  br i1 %i.aig, label %bb.hd, label %pushback.exit

bb.hd:                                            ; preds = %bb.hc
  %i.aih = getelementptr inbounds i8, ptr %i.ahv, i64 -1 ; 2 uses
  %i.aii = load i8, ptr %i.aih, align 1, !tbaa !20
  %i.aij = icmp eq i8 %i.aii, 13
  br i1 %i.aij, label %pushback.exit.sink.split, label %pushback.exit

.split:                                           ; preds = %bb.hb
  %i.aik = getelementptr inbounds nuw i8, ptr %i.ahv, i64 2
  br label %.split.thread

.split.thread:                                    ; preds = %.critedge._crit_edge.i883, %.split
  %i.ail = phi ptr [ %i.aik, %.split ], [ %i.ahw, %.critedge._crit_edge.i883 ] ; 2 uses
  %i.aim = load i16, ptr %i.f, align 8
  %i.ain = and i16 %i.aim, -9
  store i16 %i.ain, ptr %i.f, align 8
  %i.aio = getelementptr inbounds i8, ptr %i.ail, i64 -1 ; 6 uses
  store ptr %i.aio, ptr %i.afv, align 8, !tbaa !57
  %i.aip = load ptr, ptr %i.agd, align 8, !tbaa !53
  %i.aiq = icmp ugt ptr %i.aio, %i.aip
  br i1 %i.aiq, label %bb.he, label %pushback.exit

bb.he:                                            ; preds = %.split.thread
  %i.air = load i8, ptr %i.aio, align 1, !tbaa !20
  %i.ais = icmp eq i8 %i.air, 10
  br i1 %i.ais, label %bb.hf, label %pushback.exit

bb.hf:                                            ; preds = %bb.he
  %i.ait = getelementptr inbounds i8, ptr %i.ail, i64 -2 ; 2 uses
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !20
  %i.aiv = icmp eq i8 %i.aiu, 13
  br i1 %i.aiv, label %pushback.exit.sink.split, label %pushback.exit

nextc0.exit887.thread1227:                        ; preds = %bb.ha, %bb.hb
  %i.aiw = load i16, ptr %i.f, align 8            ; 2 uses
  %i.aix = and i16 %i.aiw, 1024
  %.not.i889 = icmp eq i16 %i.aix, 0
  br i1 %.not.i889, label %warn_cr.exit.sink.split, label %warn_cr.exit.backedge, !llvm.loop !544

pushback.exit.sink.split:                         ; preds = %bb.hf, %bb.hd
  %.sink = phi ptr [ %i.aih, %bb.hd ], [ %i.ait, %bb.hf ] ; 2 uses
  store ptr %.sink, ptr %i.afv, align 8, !tbaa !57
  br label %pushback.exit

pushback.exit:                                    ; preds = %.critedge.i880, %pushback.exit.sink.split, %bb.hf, %bb.he, %.split.thread, %bb.hd, %bb.hc, %.split669
  %.val.i891 = phi ptr [ %i.ahv, %.split669 ], [ %i.ahv, %bb.hc ], [ %i.aio, %bb.hf ], [ %i.aio, %bb.he ], [ %i.aio, %.split.thread ], [ %.sink, %pushback.exit.sink.split ], [ %i.ahv, %bb.hd ], [ %.pre.i884, %.critedge.i880 ] ; 3 uses
  %.val3.i = load ptr, ptr %i.afy, align 8, !tbaa !50 ; 4 uses
  %i.aiy = icmp ult ptr %.val.i891, %.val3.i
  br i1 %i.aiy, label %bb.hg, label %ripper_has_scan_event.exit.i

bb.hg:                                            ; preds = %pushback.exit
  %i.aiz = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !22
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aiz, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i:                     ; preds = %pushback.exit
  %.not.i892 = icmp ugt ptr %.val.i891, %.val3.i
  br i1 %.not.i892, label %bb.hh, label %.backedge.backedge

bb.hh:                                            ; preds = %ripper_has_scan_event.exit.i
  %i.aja = ptrtoint ptr %.val.i891 to i64
  %i.ajb = ptrtoint ptr %.val3.i to i64
  %i.ajc = sub i64 %i.aja, %i.ajb
  %i.ajd = load ptr, ptr %i.afz, align 8, !tbaa !58
  %i.aje = tail call i64 @rb_enc_str_new(ptr noundef %.val3.i, i64 noundef %i.ajc, ptr noundef %i.ajd) #29
  %i.ajf = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 324) #29
  %.val.i.i893 = load i64, ptr %i.aga, align 8, !tbaa !55
  %i.ajg = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i893, i64 noundef %i.ajf, i32 noundef 1, i64 noundef %i.aje) #29
  %i.ajh = load ptr, ptr %i.agb, align 8, !tbaa !48
  %i.aji = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.ajh) #29 ; 0 uses
  %i.ajj = load ptr, ptr %i.afv, align 8, !tbaa !57
  store ptr %i.ajj, ptr %i.afy, align 8, !tbaa !50
  store i64 %i.ajg, ptr %i.agc, align 8, !tbaa !56
  br label %.backedge.backedge

bb.hi:                                            ; preds = %bb.gv
  %i.ajk = load i16, ptr %i.f, align 8
  %i.ajl = and i16 %i.ajk, -129
  %i.ajm = or disjoint i16 %i.ajl, %i.afo
  store i16 %i.ajm, ptr %i.f, align 8
  %i.ajn = load ptr, ptr %i.afy, align 8, !tbaa !50 ; 5 uses
  %i.ajo = load ptr, ptr %i.afw, align 8, !tbaa !304
  %i.ajp = ptrtoint ptr %i.ajo to i64             ; 2 uses
  %i.ajq = ptrtoint ptr %i.agx to i64
  %i.ajr = sub i64 %i.ajp, %i.ajq                 ; 5 uses
  %i.ajs = icmp slt i64 %i.ajr, 8
  br i1 %i.ajs, label %.loopexit, label %.lr.ph.i.i894

.lr.ph.i.i894:                                    ; preds = %bb.hi, %bb.ho
  %.028.i.i = phi i64 [ %i.akg, %bb.ho ], [ 2, %bb.hi ] ; 3 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.agx, i64 %.028.i.i ; 5 uses
  %i.aju = load i8, ptr %i.ajt, align 1, !tbaa !20
  switch i8 %i.aju, label %bb.ho [
    i8 45, label %bb.hj
    i8 42, label %bb.hl
  ]

bb.hj:                                            ; preds = %.lr.ph.i.i894
  %i.ajv = getelementptr i8, ptr %i.ajt, i64 -1
  %i.ajw = load i8, ptr %i.ajv, align 1, !tbaa !20
  %i.ajx = icmp eq i8 %i.ajw, 42
  br i1 %i.ajx, label %bb.hk, label %bb.ho

bb.hk:                                            ; preds = %bb.hj
  %i.ajy = getelementptr i8, ptr %i.ajt, i64 -2
  %i.ajz = load i8, ptr %i.ajy, align 1, !tbaa !20
  %i.aka = icmp eq i8 %i.ajz, 45
  br i1 %i.aka, label %magic_comment_marker.exit.i, label %bb.ho

bb.hl:                                            ; preds = %.lr.ph.i.i894
  %i.akb = add nuw nsw i64 %.028.i.i, 1           ; 2 uses
  %.not.i.i895 = icmp slt i64 %i.akb, %i.ajr
  br i1 %.not.i.i895, label %bb.hm, label %magic_comment_marker.exit.thread.i

bb.hm:                                            ; preds = %bb.hl
  %i.akc = getelementptr inbounds nuw i8, ptr %i.agx, i64 %i.akb
  %i.akd = load i8, ptr %i.akc, align 1, !tbaa !20
  %.not25.i.i = icmp eq i8 %i.akd, 45
  br i1 %.not25.i.i, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.ake = getelementptr i8, ptr %i.ajt, i64 -1
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !20
  %.not26.i.i = icmp eq i8 %i.akf, 45
  br i1 %.not26.i.i, label %magic_comment_marker.exit.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm, %bb.hk, %bb.hj, %.lr.ph.i.i894
  %.sink.i.i906 = phi i64 [ 2, %bb.hj ], [ 4, %bb.hm ], [ 2, %bb.hn ], [ 2, %bb.hk ], [ 3, %.lr.ph.i.i894 ]
  %i.akg = add nuw nsw i64 %.sink.i.i906, %.028.i.i ; 2 uses
  %i.akh = icmp slt i64 %i.akg, %i.ajr
  br i1 %i.akh, label %.lr.ph.i.i894, label %magic_comment_marker.exit.thread.i, !llvm.loop !545

magic_comment_marker.exit.i:                      ; preds = %bb.hn, %bb.hk
  %.sink3161 = phi i64 [ 1, %bb.hk ], [ 2, %bb.hn ]
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %.sink3161 ; 4 uses
  %i.akj = ptrtoint ptr %i.aki to i64
  %i.akk = sub i64 %i.ajp, %i.akj                 ; 3 uses
  %i.akl = icmp sgt i64 %i.akk, 2
  br i1 %i.akl, label %.lr.ph.i225.i, label %.loopexit

.lr.ph.i225.i:                                    ; preds = %magic_comment_marker.exit.i, %bb.hu
  %.028.i226.i = phi i64 [ %i.akz, %bb.hu ], [ 2, %magic_comment_marker.exit.i ] ; 4 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.aki, i64 %.028.i226.i ; 4 uses
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !20
  switch i8 %i.akn, label %bb.hu [
    i8 45, label %bb.hp
    i8 42, label %bb.hr
  ]

bb.hp:                                            ; preds = %.lr.ph.i225.i
  %i.ako = getelementptr i8, ptr %i.akm, i64 -1
  %i.akp = load i8, ptr %i.ako, align 1, !tbaa !20
  %i.akq = icmp eq i8 %i.akp, 42
  br i1 %i.akq, label %bb.hq, label %bb.hu

bb.hq:                                            ; preds = %bb.hp
  %i.akr = getelementptr i8, ptr %i.akm, i64 -2
  %i.aks = load i8, ptr %i.akr, align 1, !tbaa !20
  %i.akt = icmp eq i8 %i.aks, 45
  br i1 %i.akt, label %magic_comment_marker.exit231.i, label %bb.hu

bb.hr:                                            ; preds = %.lr.ph.i225.i
  %i.aku = add nuw nsw i64 %.028.i226.i, 1        ; 2 uses
  %.not.i227.i = icmp slt i64 %i.aku, %i.akk
  br i1 %.not.i227.i, label %bb.hs, label %.loopexit

bb.hs:                                            ; preds = %bb.hr
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aki, i64 %i.aku
  %i.akw = load i8, ptr %i.akv, align 1, !tbaa !20
  %.not25.i228.i = icmp eq i8 %i.akw, 45
  br i1 %.not25.i228.i, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.akx = getelementptr i8, ptr %i.akm, i64 -1
  %i.aky = load i8, ptr %i.akx, align 1, !tbaa !20
  %.not26.i230.i = icmp eq i8 %i.aky, 45
  br i1 %.not26.i230.i, label %magic_comment_marker.exit231.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs, %bb.hq, %bb.hp, %.lr.ph.i225.i
  %.sink.i229.i = phi i64 [ 2, %bb.hp ], [ 4, %bb.hs ], [ 2, %bb.ht ], [ 2, %bb.hq ], [ 3, %.lr.ph.i225.i ]
  %i.akz = add nuw nsw i64 %.sink.i229.i, %.028.i226.i ; 2 uses
  %i.ala = icmp slt i64 %i.akz, %i.akk
  br i1 %i.ala, label %.lr.ph.i225.i, label %.loopexit, !llvm.loop !545

magic_comment_marker.exit231.i:                   ; preds = %bb.ht, %bb.hq
  %.sink3162 = phi i64 [ 1, %bb.hq ], [ 2, %bb.ht ]
  %reass.sub = add nuw nsw i64 %.028.i226.i, %.sink3162
  %i.alb = add nsw i64 %reass.sub, -3
  br label %magic_comment_marker.exit.thread.i

magic_comment_marker.exit.thread.i:               ; preds = %bb.ho, %bb.hl, %magic_comment_marker.exit231.i
  %.not254.i = phi i1 [ false, %magic_comment_marker.exit231.i ], [ true, %bb.hl ], [ true, %bb.ho ] ; 2 uses
  %.0165.i = phi ptr [ %i.aki, %magic_comment_marker.exit231.i ], [ %i.agx, %bb.hl ], [ %i.agx, %bb.ho ]
  %.0159.i = phi i64 [ %i.alb, %magic_comment_marker.exit231.i ], [ %i.ajr, %bb.hl ], [ %i.ajr, %bb.ho ] ; 2 uses
  %i.alc = icmp sgt i64 %.0159.i, 0
  br i1 %i.alc, label %.preheader284.i, label %parser_magic_comment.exit

.preheader284.i:                                  ; preds = %magic_comment_marker.exit.thread.i, %bb.jg
  %.0152378.i = phi i64 [ %.5.i, %bb.jg ], [ 0, %magic_comment_marker.exit.thread.i ] ; 7 uses
  %.0154377.i = phi i64 [ %.3157.i, %bb.jg ], [ 0, %magic_comment_marker.exit.thread.i ] ; 6 uses
  %.1160376.i = phi i64 [ %.14.i, %bb.jg ], [ %.0159.i, %magic_comment_marker.exit.thread.i ] ; 2 uses
  %.1166375.i = phi ptr [ %.14179.i, %bb.jg ], [ %.0165.i, %magic_comment_marker.exit.thread.i ] ; 2 uses
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hx, %.preheader284.i
  %.2161314.i = phi i64 [ %.1160376.i, %.preheader284.i ], [ %i.alj, %bb.hx ] ; 3 uses
  %.2167313.i = phi ptr [ %.1166375.i, %.preheader284.i ], [ %i.ali, %bb.hx ] ; 7 uses
  %i.ald = load i8, ptr %.2167313.i, align 1, !tbaa !20 ; 3 uses
  switch i8 %i.ald, label %bb.hw [
    i8 0, label %.lr.ph.i896.preheader
    i8 39, label %bb.hx
    i8 34, label %bb.hx
    i8 58, label %bb.hx
    i8 59, label %bb.hx
  ]

.lr.ph.i896.preheader:                            ; preds = %bb.hw, %bb.hv
  br label %.lr.ph.i896

bb.hw:                                            ; preds = %bb.hv
  %i.ale = sext i8 %i.ald to i32
  %i.alf = icmp ne i8 %i.ald, 32
  %i.alg = add nsw i32 %i.ale, -14
  %i.alh = icmp ult i32 %i.alg, -5
  %narrow.i.not.i = select i1 %i.alf, i1 %i.alh, i1 false
  br i1 %narrow.i.not.i, label %.lr.ph.i896.preheader, label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv, %bb.hv, %bb.hv, %bb.hv
  %i.ali = getelementptr inbounds nuw i8, ptr %.2167313.i, i64 1
  %i.alj = add nsw i64 %.2161314.i, -1
  %i.alk = icmp sgt i64 %.2161314.i, 1
  br i1 %i.alk, label %bb.hv, label %parser_magic_comment.exit, !llvm.loop !546

.lr.ph.i896:                                      ; preds = %.lr.ph.i896.preheader, %bb.hz
  %.3162316.i = phi i64 [ %i.alr, %bb.hz ], [ %.2161314.i, %.lr.ph.i896.preheader ] ; 3 uses
  %.3168315.i = phi ptr [ %i.alq, %bb.hz ], [ %.2167313.i, %.lr.ph.i896.preheader ] ; 5 uses
  %i.all = load i8, ptr %.3168315.i, align 1, !tbaa !20 ; 3 uses
  switch i8 %i.all, label %bb.hy [
    i8 39, label %.lr.ph336.i.preheader
    i8 34, label %.lr.ph336.i.preheader
    i8 58, label %.lr.ph336.i.preheader
    i8 59, label %.lr.ph336.i.preheader
  ]

.lr.ph336.i.preheader:                            ; preds = %bb.hy, %.lr.ph.i896, %.lr.ph.i896, %.lr.ph.i896, %.lr.ph.i896
  br label %.lr.ph336.i

bb.hy:                                            ; preds = %.lr.ph.i896
  %i.alm = sext i8 %i.all to i32
  %i.aln = icmp ne i8 %i.all, 32
  %i.alo = add nsw i32 %i.alm, -14
  %i.alp = icmp ult i32 %i.alo, -5
  %narrow.i232.not.i = select i1 %i.aln, i1 %i.alp, i1 false
  br i1 %narrow.i232.not.i, label %bb.hz, label %.lr.ph336.i.preheader

bb.hz:                                            ; preds = %bb.hy
  %i.alq = getelementptr inbounds nuw i8, ptr %.3168315.i, i64 1
  %i.alr = add nsw i64 %.3162316.i, -1
  %i.als = icmp sgt i64 %.3162316.i, 1
  br i1 %i.als, label %.lr.ph.i896, label %parser_magic_comment.exit, !llvm.loop !547

.lr.ph336.i:                                      ; preds = %.lr.ph336.i.preheader, %bb.ia
  %.4163334.i = phi i64 [ %i.alz, %bb.ia ], [ %.3162316.i, %.lr.ph336.i.preheader ] ; 5 uses
  %.4169333.i = phi ptr [ %i.aly, %bb.ia ], [ %.3168315.i, %.lr.ph336.i.preheader ] ; 4 uses
  %i.alt = load i8, ptr %.4169333.i, align 1, !tbaa !20 ; 3 uses
  %i.alu = sext i8 %i.alt to i32
  %i.alv = icmp ne i8 %i.alt, 32
  %i.alw = add nsw i32 %i.alu, -14
  %i.alx = icmp ult i32 %i.alw, -5
  %narrow.i233.not.i = select i1 %i.alv, i1 %i.alx, i1 false
  br i1 %narrow.i233.not.i, label %.critedge2.thread.i, label %bb.ia

bb.ia:                                            ; preds = %.lr.ph336.i
  %i.aly = getelementptr inbounds nuw i8, ptr %.4169333.i, i64 1
  %i.alz = add nsw i64 %.4163334.i, -1
  %i.ama = icmp sgt i64 %.4163334.i, 1
  br i1 %i.ama, label %.lr.ph336.i, label %parser_magic_comment.exit, !llvm.loop !548

.critedge2.thread.i:                              ; preds = %.lr.ph336.i
  %.not206.i = icmp eq i8 %i.alt, 58
  br i1 %.not206.i, label %.preheader283.i.preheader, label %bb.ib

.preheader283.i.preheader:                        ; preds = %.critedge2.thread.i
  %i.amb = icmp sgt i64 %.4163334.i, 1
  br i1 %i.amb, label %.lr.ph, label %parser_magic_comment.exit

bb.ib:                                            ; preds = %.critedge2.thread.i
  br i1 %.not254.i, label %.loopexit, label %bb.jg

.preheader283.i:                                  ; preds = %.lr.ph
  %i.amc = icmp sgt i64 %.5164.i3067, 2
  br i1 %i.amc, label %.lr.ph, label %parser_magic_comment.exit, !llvm.loop !549

.lr.ph:                                           ; preds = %.preheader283.i.preheader, %.preheader283.i
  %.5164.i3067 = phi i64 [ %i.amd, %.preheader283.i ], [ %.4163334.i, %.preheader283.i.preheader ] ; 4 uses
  %.5170.i3066 = phi ptr [ %i.ame, %.preheader283.i ], [ %.4169333.i, %.preheader283.i.preheader ] ; 2 uses
  %i.amd = add nsw i64 %.5164.i3067, -1           ; 3 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %.5170.i3066, i64 1 ; 8 uses
  %i.amf = load i8, ptr %i.ame, align 1, !tbaa !20 ; 3 uses
  %i.amg = sext i8 %i.amf to i32
  %i.amh = icmp ne i8 %i.amf, 32
  %i.ami = add nsw i32 %i.amg, -14
  %i.amj = icmp ult i32 %i.ami, -5
  %narrow.i234.not.i = select i1 %i.amh, i1 %i.amj, i1 false
  br i1 %narrow.i234.not.i, label %.critedge4.thread.i, label %.preheader283.i, !llvm.loop !549

.critedge4.thread.i:                              ; preds = %.lr.ph
  %i.amk = icmp eq i8 %i.amf, 34
  br i1 %i.amk, label %bb.ic, label %.lr.ph341.i.preheader

.lr.ph341.i.preheader:                            ; preds = %.critedge4.thread.i
  %scevgep = getelementptr i8, ptr %.1166375.i, i64 %.1160376.i ; 2 uses
  br label %.lr.ph341.i

bb.ic:                                            ; preds = %.critedge4.thread.i
  %i.aml = getelementptr inbounds nuw i8, ptr %.5170.i3066, i64 2 ; 7 uses
  %.not1344 = icmp eq i64 %.5164.i3067, 2
  br i1 %.not1344, label %.critedge10.i, label %.lr.ph356.i.preheader

.lr.ph356.i.preheader:                            ; preds = %bb.ic
  %i.amm = add nsw i64 %.5164.i3067, -2
  br label %.lr.ph356.i

.lr.ph356.i:                                      ; preds = %.lr.ph356.i.preheader, %bb.ie
  %i.amn = phi i64 [ %i.ams, %bb.ie ], [ %i.amm, %.lr.ph356.i.preheader ]
  %.6354.i = phi i64 [ %.7.i, %bb.ie ], [ %i.amd, %.lr.ph356.i.preheader ] ; 2 uses
  %.6171353.i = phi ptr [ %i.amr, %bb.ie ], [ %i.aml, %.lr.ph356.i.preheader ] ; 4 uses
  %i.amo = load i8, ptr %.6171353.i, align 1, !tbaa !20
  switch i8 %i.amo, label %bb.ie [
    i8 34, label %.critedge6.thread.i.loopexit
    i8 92, label %bb.id
  ]

bb.id:                                            ; preds = %.lr.ph356.i
  %i.amp = add nsw i64 %.6354.i, -2
  %i.amq = getelementptr inbounds nuw i8, ptr %.6171353.i, i64 1
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %.lr.ph356.i
  %.7172.i = phi ptr [ %i.amq, %bb.id ], [ %.6171353.i, %.lr.ph356.i ]
  %.7.i = phi i64 [ %i.amp, %bb.id ], [ %i.amn, %.lr.ph356.i ] ; 3 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %.7172.i, i64 1 ; 5 uses
  %i.ams = add nsw i64 %.7.i, -1                  ; 2 uses
  %i.amt = icmp samesign ugt i64 %.7.i, 1
  br i1 %i.amt, label %.lr.ph356.i, label %.critedge6.i, !llvm.loop !550

.critedge6.i:                                     ; preds = %bb.ie
  %.not213.i = icmp eq i64 %i.ams, 0
  br i1 %.not213.i, label %.critedge10.i, label %.critedge6.thread.i

.critedge6.thread.i.loopexit:                     ; preds = %.lr.ph356.i
  %i.amu = add nsw i64 %.6354.i, -2
  br label %.critedge6.thread.i

.critedge6.thread.i:                              ; preds = %.critedge6.thread.i.loopexit, %.critedge6.i
  %.6171301.i = phi ptr [ %i.amr, %.critedge6.i ], [ %.6171353.i, %.critedge6.thread.i.loopexit ] ; 2 uses
  %.6299.i = phi i64 [ -2, %.critedge6.i ], [ %i.amu, %.critedge6.thread.i.loopexit ]
  %i.amv = getelementptr inbounds nuw i8, ptr %.6171301.i, i64 1
  br label %.critedge8.i

.lr.ph341.i:                                      ; preds = %.lr.ph341.i.preheader, %bb.ig
  %.8340.i = phi i64 [ %i.anb, %bb.ig ], [ %i.amd, %.lr.ph341.i.preheader ] ; 5 uses
  %.8173339.i = phi ptr [ %i.anc, %bb.ig ], [ %i.ame, %.lr.ph341.i.preheader ] ; 8 uses
  %i.amw = load i8, ptr %.8173339.i, align 1, !tbaa !20 ; 3 uses
  switch i8 %i.amw, label %bb.if [
    i8 34, label %.critedge8.i
    i8 59, label %.critedge8.i
  ]

bb.if:                                            ; preds = %.lr.ph341.i
  %i.amx = sext i8 %i.amw to i32
  %i.amy = icmp ne i8 %i.amw, 32
  %i.amz = add nsw i32 %i.amx, -14
  %i.ana = icmp ult i32 %i.amz, -5
  %narrow.i235.not.i = select i1 %i.amy, i1 %i.ana, i1 false
  br i1 %narrow.i235.not.i, label %bb.ig, label %.critedge8.i

bb.ig:                                            ; preds = %bb.if
  %i.anb = add nsw i64 %.8340.i, -1
  %i.anc = getelementptr inbounds nuw i8, ptr %.8173339.i, i64 1
  %i.and = icmp sgt i64 %.8340.i, 1
  br i1 %i.and, label %.lr.ph341.i, label %.critedge8.i, !llvm.loop !551

.critedge8.i:                                     ; preds = %bb.ig, %bb.if, %.lr.ph341.i, %.lr.ph341.i, %.critedge6.thread.i
  %.9174.i = phi ptr [ %i.amv, %.critedge6.thread.i ], [ %.8173339.i, %bb.if ], [ %scevgep, %bb.ig ], [ %.8173339.i, %.lr.ph341.i ], [ %.8173339.i, %.lr.ph341.i ] ; 11 uses
  %.9.i = phi i64 [ %.6299.i, %.critedge6.thread.i ], [ %.8340.i, %bb.if ], [ 0, %bb.ig ], [ %.8340.i, %.lr.ph341.i ], [ %.8340.i, %.lr.ph341.i ] ; 7 uses
  %.0151.i = phi ptr [ %i.aml, %.critedge6.thread.i ], [ %i.ame, %.lr.ph341.i ], [ %i.ame, %.lr.ph341.i ], [ %i.ame, %bb.if ], [ %i.ame, %bb.ig ] ; 5 uses
  %.0150.i = phi ptr [ %.6171301.i, %.critedge6.thread.i ], [ %.8173339.i, %bb.if ], [ %scevgep, %bb.ig ], [ %.8173339.i, %.lr.ph341.i ], [ %.8173339.i, %.lr.ph341.i ] ; 5 uses
  %i.ane = icmp sgt i64 %.9.i, 0                  ; 2 uses
  br i1 %.not254.i, label %.preheader280.i, label %.preheader281.i

.preheader281.i:                                  ; preds = %.critedge8.i
  br i1 %i.ane, label %.lr.ph362.preheader.i, label %.critedge10.i

.lr.ph362.preheader.i:                            ; preds = %.preheader281.i
  %scevgep416.i = getelementptr i8, ptr %.9174.i, i64 %.9.i
  br label %.lr.ph362.i

.preheader280.i:                                  ; preds = %.critedge8.i
end_hunk_0
begin_hunk_1_@parser_yylex:bb.a
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 23
  store i8 95, ptr %i.ark, align 1, !tbaa !20
  br label %pred.store.continue3121

pred.store.continue3121:                          ; preds = %pred.store.if3120, %pred.store.continue3119
  %i.arl = extractelement <16 x i1> %i.aos, i64 8
  br i1 %i.arl, label %pred.store.if3122, label %pred.store.continue3123

pred.store.if3122:                                ; preds = %pred.store.continue3121
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 24
  store i8 95, ptr %i.arn, align 1, !tbaa !20
  br label %pred.store.continue3123

pred.store.continue3123:                          ; preds = %pred.store.if3122, %pred.store.continue3121
  %i.aro = extractelement <16 x i1> %i.aos, i64 9
  br i1 %i.aro, label %pred.store.if3124, label %pred.store.continue3125

pred.store.if3124:                                ; preds = %pred.store.continue3123
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 25
  store i8 95, ptr %i.arq, align 1, !tbaa !20
  br label %pred.store.continue3125

pred.store.continue3125:                          ; preds = %pred.store.if3124, %pred.store.continue3123
  %i.arr = extractelement <16 x i1> %i.aos, i64 10
  br i1 %i.arr, label %pred.store.if3126, label %pred.store.continue3127

pred.store.if3126:                                ; preds = %pred.store.continue3125
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 26
  store i8 95, ptr %i.art, align 1, !tbaa !20
  br label %pred.store.continue3127

pred.store.continue3127:                          ; preds = %pred.store.if3126, %pred.store.continue3125
  %i.aru = extractelement <16 x i1> %i.aos, i64 11
  br i1 %i.aru, label %pred.store.if3128, label %pred.store.continue3129

pred.store.if3128:                                ; preds = %pred.store.continue3127
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 27
  store i8 95, ptr %i.arw, align 1, !tbaa !20
  br label %pred.store.continue3129

pred.store.continue3129:                          ; preds = %pred.store.if3128, %pred.store.continue3127
  %i.arx = extractelement <16 x i1> %i.aos, i64 12
  br i1 %i.arx, label %pred.store.if3130, label %pred.store.continue3131

pred.store.if3130:                                ; preds = %pred.store.continue3129
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 28
  store i8 95, ptr %i.arz, align 1, !tbaa !20
  br label %pred.store.continue3131

pred.store.continue3131:                          ; preds = %pred.store.if3130, %pred.store.continue3129
  %i.asa = extractelement <16 x i1> %i.aos, i64 13
  br i1 %i.asa, label %pred.store.if3132, label %pred.store.continue3133

pred.store.if3132:                                ; preds = %pred.store.continue3131
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 29
  store i8 95, ptr %i.asc, align 1, !tbaa !20
  br label %pred.store.continue3133

pred.store.continue3133:                          ; preds = %pred.store.if3132, %pred.store.continue3131
  %i.asd = extractelement <16 x i1> %i.aos, i64 14
  br i1 %i.asd, label %pred.store.if3134.a, label %pred.store.continue3135.a

pred.store.if3134.a:                              ; preds = %pred.store.continue3133
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 30
  store i8 95, ptr %i.asf, align 1, !tbaa !20
  br label %pred.store.continue3135.a

pred.store.continue3135.a:                        ; preds = %pred.store.if3134.a, %pred.store.continue3133
  %i.asg = extractelement <16 x i1> %i.aos, i64 15
  br i1 %i.asg, label %pred.store.if3136.a, label %pred.store.continue3137.a

pred.store.if3136.a:                              ; preds = %pred.store.continue3135.a
  %i.ash = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 31
  store i8 95, ptr %i.asi, align 1, !tbaa !20
  br label %pred.store.continue3137.a

pred.store.continue3137.a:                        ; preds = %pred.store.if3136.a, %pred.store.continue3135.a
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.asj = icmp eq i64 %index.next, %n.vec
  br i1 %i.asj, label %middle.block, label %vector.body, !llvm.loop !554

middle.block:                                     ; preds = %pred.store.continue3137.a
  %cmp.n = icmp eq i64 %i.any, %n.vec
  br i1 %cmp.n, label %.preheader.i898, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aoo, 0
  br i1 %min.epilog.iters.check, label %.lr.ph374.i.preheader, label %vec.epilog.ph, !prof !570

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec3138 = and i64 %i.any, 9223372036854775800 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue3156, %vec.epilog.ph
  %index3139 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3157, %pred.store.continue3156 ] ; 9 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index3139 ; 2 uses
  %wide.load3140 = load <8 x i8>, ptr %i.ask, align 1, !tbaa !20
  %i.asl = icmp eq <8 x i8> %wide.load3140, splat (i8 45) ; 8 uses
  %i.asm = extractelement <8 x i1> %i.asl, i64 0
  br i1 %i.asm, label %pred.store.if3141, label %pred.store.continue3142

pred.store.if3141:                                ; preds = %vec.epilog.vector.body
  store i8 95, ptr %i.ask, align 1, !tbaa !20
  br label %pred.store.continue3142

pred.store.continue3142:                          ; preds = %pred.store.if3141, %vec.epilog.vector.body
  %i.asn = extractelement <8 x i1> %i.asl, i64 1
  br i1 %i.asn, label %pred.store.if3143, label %pred.store.continue3144

pred.store.if3143:                                ; preds = %pred.store.continue3142
  %i.aso = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index3139
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 1
  store i8 95, ptr %i.asp, align 1, !tbaa !20
  br label %pred.store.continue3144

pred.store.continue3144:                          ; preds = %pred.store.if3143, %pred.store.continue3142
  %i.asq = extractelement <8 x i1> %i.asl, i64 2
  br i1 %i.asq, label %pred.store.if3145, label %pred.store.continue3146

pred.store.if3145:                                ; preds = %pred.store.continue3144
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index3139
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 2
  store i8 95, ptr %i.ass, align 1, !tbaa !20
  br label %pred.store.continue3146

pred.store.continue3146:                          ; preds = %pred.store.if3145, %pred.store.continue3144
  %i.ast = extractelement <8 x i1> %i.asl, i64 3
  br i1 %i.ast, label %pred.store.if3147, label %pred.store.continue3148

pred.store.if3147:                                ; preds = %pred.store.continue3146
  %i.asu = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index3139
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 3
  store i8 95, ptr %i.asv, align 1, !tbaa !20
  br label %pred.store.continue3148

pred.store.continue3148:                          ; preds = %pred.store.if3147, %pred.store.continue3146
  %i.asw = extractelement <8 x i1> %i.asl, i64 4
  br i1 %i.asw, label %pred.store.if3149, label %pred.store.continue3150

pred.store.if3149:                                ; preds = %pred.store.continue3148
  %i.asx = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index3139
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 4
  store i8 95, ptr %i.asy, align 1, !tbaa !20
  br label %pred.store.continue3150

pred.store.continue3150:                          ; preds = %pred.store.if3149, %pred.store.continue3148
  %i.asz = extractelement <8 x i1> %i.asl, i64 5
  br i1 %i.asz, label %pred.store.if3151, label %pred.store.continue3152

pred.store.if3151:                                ; preds = %pred.store.continue3150
  %i.ata = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index3139
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 5
  store i8 95, ptr %i.atb, align 1, !tbaa !20
  br label %pred.store.continue3152

pred.store.continue3152:                          ; preds = %pred.store.if3151, %pred.store.continue3150
  %i.atc = extractelement <8 x i1> %i.asl, i64 6
  br i1 %i.atc, label %pred.store.if3153, label %pred.store.continue3154

pred.store.if3153:                                ; preds = %pred.store.continue3152
  %i.atd = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index3139
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 6
  store i8 95, ptr %i.ate, align 1, !tbaa !20
  br label %pred.store.continue3154

pred.store.continue3154:                          ; preds = %pred.store.if3153, %pred.store.continue3152
  %i.atf = extractelement <8 x i1> %i.asl, i64 7
  br i1 %i.atf, label %pred.store.if3155, label %pred.store.continue3156

pred.store.if3155:                                ; preds = %pred.store.continue3154
  %i.atg = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index3139
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 7
  store i8 95, ptr %i.ath, align 1, !tbaa !20
  br label %pred.store.continue3156

pred.store.continue3156:                          ; preds = %pred.store.if3155, %pred.store.continue3154
  %index.next3157 = add nuw i64 %index3139, 8     ; 2 uses
  %i.ati = icmp eq i64 %index.next3157, %n.vec3138
  br i1 %i.ati, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !555

vec.epilog.middle.block:                          ; preds = %pred.store.continue3156
  %cmp.n3158 = icmp eq i64 %i.any, %n.vec3138
  br i1 %cmp.n3158, label %.preheader.i898, label %.lr.ph374.i.preheader

.lr.ph374.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec3138, %vec.epilog.middle.block ]
  br label %.lr.ph374.i

.preheader.i898:                                  ; preds = %bb.ip, %middle.block, %vec.epilog.middle.block, %RSTRING_PTR.exit241.i
  %i.atj = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.628, ptr noundef %i.aom, i64 noundef %i.any) #32
  %4 = icmp eq i32 %i.atj, 0
  %.not219.i.a = icmp eq i64 %i.any, 6
  %or.cond.i899 = and i1 %.not219.i.a, %4
  br i1 %or.cond.i899, label %bb.iq, label %bb.iy

.lr.ph374.i:                                      ; preds = %.lr.ph374.i.preheader, %bb.ip
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ip ], [ %indvars.iv.i.ph, %.lr.ph374.i.preheader ] ; 2 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.aom, i64 %indvars.iv.i ; 2 uses
  %i.atl = load i8, ptr %i.atk, align 1, !tbaa !20
  %i.atm = icmp eq i8 %i.atl, 45
  br i1 %i.atm, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %.lr.ph374.i
  store i8 95, ptr %i.atk, align 1, !tbaa !20
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %.lr.ph374.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i905 = icmp eq i64 %indvars.iv.next.i, %i.any
  br i1 %exitcond.not.i905, label %.preheader.i898, label %.lr.ph374.i, !llvm.loop !556

bb.iq:                                            ; preds = %bb.jb, %bb.ja, %bb.iz, %bb.iy, %.preheader.i898
  %.0148.idx.lcssa.i = phi i64 [ 0, %.preheader.i898 ], [ 24, %bb.iy ], [ 48, %bb.iz ], [ 72, %bb.ja ], [ 96, %bb.jb ]
  %.lcssa404.i = phi ptr [ @.str.628, %.preheader.i898 ], [ @.str.629, %bb.iy ], [ @.str.630, %bb.iz ], [ @.str.631, %bb.ja ], [ @.str.632, %bb.jb ]
  %.0148.ptr.le.i = getelementptr inbounds nuw i8, ptr @magic_comments, i64 %.0148.idx.lcssa.i ; 2 uses
  %i.atn = ptrtoint ptr %.0150460.i to i64
  %i.ato = ptrtoint ptr %.0151457.i to i64
  %i.atp = sub i64 %i.atn, %i.ato                 ; 3 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %.0148.ptr.le.i, i64 16
  %i.atr = load ptr, ptr %i.atq, align 8, !tbaa !572 ; 2 uses
  %.not220.i = icmp eq ptr %i.atr, null
  br i1 %.not220.i, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.ats = tail call i64 %i.atr(ptr noundef %0, ptr noundef nonnull %.0151457.i, i64 noundef %i.atp) #29, !inline_history !557
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.0.i = phi i64 [ %i.ats, %bb.ir ], [ %i.atp, %bb.iq ] ; 4 uses
  %.not221.i = icmp eq i64 %.0152378.i, 0
  br i1 %.not221.i, label %bb.iw, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.att = tail call i64 @rb_str_resize(i64 noundef %.0152378.i, i64 noundef %.0.i) #29 ; 0 uses
  %i.atu = inttoptr i64 %.0152378.i to ptr        ; 4 uses
  %i.atv = load i64, ptr %i.atu, align 8, !tbaa !310
  %i.atw = and i64 %i.atv, 8192
  %.not.i242.i904 = icmp eq i64 %i.atw, 0
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atu, i64 24 ; 2 uses
  br i1 %.not.i242.i904, label %RSTRING_PTR.exit243.i, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !20
  br label %RSTRING_PTR.exit243.i

RSTRING_PTR.exit243.i:                            ; preds = %bb.iu, %bb.it
  %i.atz = phi ptr [ %i.aty, %bb.iu ], [ %i.atx, %bb.it ]
  %.not.i244.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i244.i, label %ruby_nonempty_memcpy.exit245.i, label %bb.iv

bb.iv:                                            ; preds = %RSTRING_PTR.exit243.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.atz, ptr nonnull readonly align 1 %.0151457.i, i64 %.0.i, i1 false)
  br label %ruby_nonempty_memcpy.exit245.i

bb.iw:                                            ; preds = %bb.is
  %i.aua = load ptr, ptr %i.afz, align 8, !tbaa !58
  %i.aub = tail call i64 @rb_enc_str_new(ptr noundef nonnull %.0151457.i, i64 noundef %.0.i, ptr noundef %i.aua) #29 ; 2 uses
  %.pre420.i = inttoptr i64 %i.aub to ptr
  br label %ruby_nonempty_memcpy.exit245.i

ruby_nonempty_memcpy.exit245.i:                   ; preds = %bb.iw, %bb.iv, %RSTRING_PTR.exit243.i
  %.pre-phi421.i = phi ptr [ %i.atu, %bb.iv ], [ %i.atu, %RSTRING_PTR.exit243.i ], [ %.pre420.i, %bb.iw ] ; 2 uses
  %.1153.i = phi i64 [ %.0152378.i, %bb.iv ], [ %.0152378.i, %RSTRING_PTR.exit243.i ], [ %i.aub, %bb.iw ]
  store ptr %i.ame, ptr %i.afy, align 8, !tbaa !50
  store ptr %.9174452.i, ptr %i.afv, align 8, !tbaa !57
  %i.auc = getelementptr inbounds nuw i8, ptr %.0148.ptr.le.i, i64 8
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !573
  %i.aue = load i64, ptr %.pre-phi421.i, align 8, !tbaa !310
  %i.auf = and i64 %i.aue, 8192
  %.not.i246.i = icmp eq i64 %i.auf, 0
  %i.aug = getelementptr inbounds nuw i8, ptr %.pre-phi421.i, i64 24 ; 2 uses
  br i1 %.not.i246.i, label %RSTRING_PTR.exit247.i, label %bb.ix

bb.ix:                                            ; preds = %ruby_nonempty_memcpy.exit245.i
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !20
  br label %RSTRING_PTR.exit247.i

RSTRING_PTR.exit247.i:                            ; preds = %bb.ix, %ruby_nonempty_memcpy.exit245.i
  %i.aui = phi ptr [ %i.auh, %bb.ix ], [ %i.aug, %ruby_nonempty_memcpy.exit245.i ]
  tail call void %i.aud(ptr noundef nonnull %0, ptr noundef nonnull %.lcssa404.i, ptr noundef %i.aui) #29, !inline_history !557
  br label %.loopexit.i900

bb.iy:                                            ; preds = %.preheader.i898
  %5 = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.629, ptr noundef %i.aom, i64 noundef %i.any) #32
  %6 = icmp eq i32 %5, 0
  %.not219.1.i = icmp eq i64 %i.any, 8
  %or.cond510.i = and i1 %.not219.1.i, %6
  br i1 %or.cond510.i, label %bb.iq, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %7 = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.630, ptr noundef %i.aom, i64 noundef %i.any) #32
  %8 = icmp eq i32 %7, 0
  %.not219.2.i = icmp eq i64 %i.any, 21
  %or.cond511.i = and i1 %.not219.2.i, %8
  br i1 %or.cond511.i, label %bb.iq, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %9 = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.631, ptr noundef %i.aom, i64 noundef %i.any) #32
  %10 = icmp eq i32 %9, 0
  %.not219.3.i = icmp eq i64 %i.any, 24
  %or.cond512.i = and i1 %.not219.3.i, %10
  br i1 %or.cond512.i, label %bb.iq, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.auj = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.632, ptr noundef %i.aom, i64 noundef %i.any) #32
  %11 = icmp eq i32 %i.auj, 0
  %.not219.4.i.a = icmp eq i64 %i.any, 11
  %or.cond513.i = and i1 %.not219.4.i.a, %11
  br i1 %or.cond513.i, label %bb.iq, label %..loopexit.i900_crit_edge

..loopexit.i900_crit_edge:                        ; preds = %bb.jb
  %.pre2170 = ptrtoint ptr %.0150460.i to i64
  %.pre2172 = ptrtoint ptr %.0151457.i to i64
  %.pre2174 = sub i64 %.pre2170, %.pre2172
  br label %.loopexit.i900

.loopexit.i900:                                   ; preds = %..loopexit.i900_crit_edge, %RSTRING_PTR.exit247.i
  %.pre-phi2175 = phi i64 [ %.pre2174, %..loopexit.i900_crit_edge ], [ %i.atp, %RSTRING_PTR.exit247.i ] ; 3 uses
  %.2.i901 = phi i64 [ %.0152378.i, %..loopexit.i900_crit_edge ], [ %.1153.i, %RSTRING_PTR.exit247.i ] ; 5 uses
  %.not222.i = icmp eq i64 %.2.i901, 0
  br i1 %.not222.i, label %bb.jf, label %bb.jc

bb.jc:                                            ; preds = %.loopexit.i900
  %i.auk = tail call i64 @rb_str_resize(i64 noundef %.2.i901, i64 noundef %.pre-phi2175) #29 ; 0 uses
  %i.aul = inttoptr i64 %.2.i901 to ptr           ; 2 uses
  %i.aum = load i64, ptr %i.aul, align 8, !tbaa !310
  %i.aun = and i64 %i.aum, 8192
  %.not.i248.i = icmp eq i64 %i.aun, 0
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aul, i64 24 ; 2 uses
  br i1 %.not.i248.i, label %RSTRING_PTR.exit249.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !20
  br label %RSTRING_PTR.exit249.i

RSTRING_PTR.exit249.i:                            ; preds = %bb.jd, %bb.jc
  %i.auq = phi ptr [ %i.aup, %bb.jd ], [ %i.auo, %bb.jc ]
  %.not.i250.i = icmp eq ptr %.0150460.i, %.0151457.i
  br i1 %.not.i250.i, label %ruby_nonempty_memcpy.exit251.i, label %bb.je

bb.je:                                            ; preds = %RSTRING_PTR.exit249.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.auq, ptr nonnull readonly align 1 %.0151457.i, i64 %.pre-phi2175, i1 false)
  br label %ruby_nonempty_memcpy.exit251.i

bb.jf:                                            ; preds = %.loopexit.i900
  %i.aur = load ptr, ptr %i.afz, align 8, !tbaa !58
  %i.aus = tail call i64 @rb_enc_str_new(ptr noundef nonnull %.0151457.i, i64 noundef %.pre-phi2175, ptr noundef %i.aur) #29
  br label %ruby_nonempty_memcpy.exit251.i

ruby_nonempty_memcpy.exit251.i:                   ; preds = %bb.jf, %bb.je, %RSTRING_PTR.exit249.i
  %.3.i902 = phi i64 [ %i.aus, %bb.jf ], [ %.2.i901, %RSTRING_PTR.exit249.i ], [ %.2.i901, %bb.je ] ; 2 uses
  %.val.i903 = load i64, ptr %i.aga, align 8, !tbaa !55
  %i.aut = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i903, i64 noundef %i.agf, i32 noundef 2, i64 noundef %.1155.i, i64 noundef %.3.i902) #29 ; 0 uses
  br label %bb.jg

bb.jg:                                            ; preds = %ruby_nonempty_memcpy.exit251.i, %bb.ib
  %.14179.i = phi ptr [ %.12177.i, %ruby_nonempty_memcpy.exit251.i ], [ %.4169333.i, %bb.ib ]
  %.14.i = phi i64 [ %.12.i, %ruby_nonempty_memcpy.exit251.i ], [ %.4163334.i, %bb.ib ] ; 2 uses
  %.3157.i = phi i64 [ %.1155.i, %ruby_nonempty_memcpy.exit251.i ], [ %.0154377.i, %bb.ib ]
  %.5.i = phi i64 [ %.3.i902, %ruby_nonempty_memcpy.exit251.i ], [ %.0152378.i, %bb.ib ]
  %i.auu = icmp sgt i64 %.14.i, 0
  br i1 %i.auu, label %.preheader284.i, label %parser_magic_comment.exit

.loopexit:                                        ; preds = %bb.hr, %bb.hu, %bb.ib, %.critedge14.i, %.lr.ph370.i, %bb.hi, %magic_comment_marker.exit.i
  %i.auv = load i16, ptr %i.f, align 8            ; 2 uses
  %i.auw = and i16 %i.auv, 128
  %.not.i907 = icmp eq i16 %i.auw, 0
  br i1 %.not.i907, label %comment_at_top.exit, label %parser_magic_comment.exit

comment_at_top.exit:                              ; preds = %.loopexit
  %i.aux = load i32, ptr %i.agg, align 8, !tbaa !368
  %i.auy = and i16 %i.auv, 64
  %.not4.i = icmp eq i16 %i.auy, 0
  %i.auz = select i1 %.not4.i, i32 1, i32 2
  %i.ava = icmp eq i32 %i.aux, %i.auz
  br i1 %i.ava, label %bb.jh, label %parser_magic_comment.exit

bb.jh:                                            ; preds = %comment_at_top.exit
  %i.avb = load ptr, ptr %i.afv, align 8, !tbaa !57 ; 2 uses
  %i.avc = load ptr, ptr %i.afw, align 8, !tbaa !304 ; 4 uses
  %i.avd = ptrtoint ptr %i.avc to i64             ; 3 uses
  %i.ave = ptrtoint ptr %i.avb to i64
  %i.avf = sub i64 %i.avd, %i.ave
  %i.avg = icmp slt i64 %i.avf, 7
  br i1 %i.avg, label %parser_magic_comment.exit, label %.lr.ph.i909

.lr.ph.i909:                                      ; preds = %bb.jh, %.backedge.i910
  %.03864.i = phi ptr [ %.038.be.i, %.backedge.i910 ], [ %i.avb, %bb.jh ] ; 8 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %.03864.i, i64 6 ; 6 uses
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !20 ; 3 uses
  switch i8 %i.avi, label %bb.jn [
    i8 67, label %.backedge.i910
    i8 99, label %.backedge.i910
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

.backedge.i910:                                   ; preds = %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %.lr.ph.i909, %.lr.ph.i909
  %.038.be.i = phi ptr [ %i.avq, %bb.jm ], [ %i.avh, %bb.jn ], [ %i.avh, %bb.jo ], [ %i.avm, %bb.ji ], [ %i.avn, %bb.jj ], [ %i.avo, %bb.jk ], [ %i.avp, %bb.jl ], [ %i.avh, %.lr.ph.i909 ], [ %i.avh, %.lr.ph.i909 ] ; 2 uses
  %i.avj = ptrtoint ptr %.038.be.i to i64
  %i.avk = sub i64 %i.avd, %i.avj
  %i.avl = icmp slt i64 %i.avk, 7
  br i1 %i.avl, label %parser_magic_comment.exit, label %.lr.ph.i909

bb.ji:                                            ; preds = %.lr.ph.i909, %.lr.ph.i909
  %i.avm = getelementptr inbounds nuw i8, ptr %.03864.i, i64 5
  br label %.backedge.i910

bb.jj:                                            ; preds = %.lr.ph.i909, %.lr.ph.i909
  %i.avn = getelementptr inbounds nuw i8, ptr %.03864.i, i64 4
  br label %.backedge.i910

bb.jk:                                            ; preds = %.lr.ph.i909, %.lr.ph.i909
  %i.avo = getelementptr inbounds nuw i8, ptr %.03864.i, i64 3
  br label %.backedge.i910

bb.jl:                                            ; preds = %.lr.ph.i909, %.lr.ph.i909
  %i.avp = getelementptr inbounds nuw i8, ptr %.03864.i, i64 2
  br label %.backedge.i910

bb.jm:                                            ; preds = %.lr.ph.i909, %.lr.ph.i909
  %i.avq = getelementptr inbounds nuw i8, ptr %.03864.i, i64 1
  br label %.backedge.i910

bb.jn:                                            ; preds = %.lr.ph.i909
  %i.avr = sext i8 %i.avi to i32
  %i.avs = icmp ne i8 %i.avi, 32
  %i.avt = add nsw i32 %i.avr, -14
  %i.avu = icmp ult i32 %i.avt, -5
  %narrow.i.not.i920 = select i1 %i.avs, i1 %i.avu, i1 false
  br i1 %narrow.i.not.i920, label %.backedge.i910, label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %.lr.ph.i909, %.lr.ph.i909
  %i.avv = phi i1 [ true, %bb.jn ], [ false, %.lr.ph.i909 ], [ false, %.lr.ph.i909 ]
  %i.avw = tail call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull %.03864.i, ptr noundef nonnull @.str.628, i64 noundef 6) #32
  %i.avx = icmp eq i32 %i.avw, 0
  br i1 %i.avx, label %.preheader57.i.preheader, label %.backedge.i910

.preheader57.i.preheader:                         ; preds = %bb.jo
  %i.avy = getelementptr inbounds nuw i8, ptr %.03864.i, i64 7 ; 2 uses
  %.not46.i30683071 = icmp ult ptr %i.avy, %i.avc
  br i1 %.not46.i30683071, label %.lr.ph3070, label %parser_magic_comment.exit

.lr.ph3070:                                       ; preds = %.preheader57.i.preheader, %.preheader57.i
  %i.avz = phi ptr [ %i.awj, %.preheader57.i ], [ %i.avy, %.preheader57.i.preheader ]
  %.2.i9123073 = phi i1 [ false, %.preheader57.i ], [ %i.avv, %.preheader57.i.preheader ]
  %.240.i3072 = phi ptr [ %i.awi, %.preheader57.i ], [ %i.avh, %.preheader57.i.preheader ] ; 3 uses
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jq
  %i.awa = getelementptr inbounds nuw i8, ptr %i.awb, i64 1 ; 2 uses
  %.not46.i = icmp ult ptr %i.awa, %i.avc
  br i1 %.not46.i, label %bb.jq, label %parser_magic_comment.exit, !llvm.loop !558

bb.jq:                                            ; preds = %.lr.ph3070, %bb.jp
  %i.awb = phi ptr [ %i.avz, %.lr.ph3070 ], [ %i.awa, %bb.jp ] ; 8 uses
  %.3.i9133069 = phi ptr [ %.240.i3072, %.lr.ph3070 ], [ %i.awb, %bb.jp ] ; 2 uses
  %i.awc = load i8, ptr %i.awb, align 1, !tbaa !20 ; 3 uses
  %i.awd = sext i8 %i.awc to i32
  %i.awe = icmp ne i8 %i.awc, 32
  %i.awf = add nsw i32 %i.awd, -14
  %i.awg = icmp ult i32 %i.awf, -5
  %narrow.i52.not.i = select i1 %i.awe, i1 %i.awg, i1 false
  br i1 %narrow.i52.not.i, label %bb.jr, label %bb.jp, !llvm.loop !558

bb.jr:                                            ; preds = %bb.jq
  br i1 %.2.i9123073, label %bb.js, label %.preheader.i914

.preheader.i914:                                  ; preds = %bb.jr
  %scevgep.i = getelementptr i8, ptr %.240.i3072, i64 %i.avd
  %.240.lcssa7274.i = ptrtoaddr ptr %.240.i3072 to i64
  %i.awh = sub i64 0, %.240.lcssa7274.i
  %scevgep75.i = getelementptr i8, ptr %scevgep.i, i64 %i.awh ; 2 uses
  br label %bb.jt

bb.js:                                            ; preds = %bb.jr
  switch i8 %i.awc, label %parser_magic_comment.exit [
    i8 61, label %.preheader57.i
    i8 58, label %.preheader57.i
  ]

.preheader57.i:                                   ; preds = %bb.js, %bb.js
  %i.awi = getelementptr inbounds nuw i8, ptr %.3.i9133069, i64 2
  %i.awj = getelementptr inbounds nuw i8, ptr %.3.i9133069, i64 3 ; 2 uses
  %.not46.i3068 = icmp ult ptr %i.awj, %i.avc
  br i1 %.not46.i3068, label %.lr.ph3070, label %parser_magic_comment.exit

bb.jt:                                            ; preds = %bb.jv, %.preheader.i914
  %.4.i = phi ptr [ %i.awq, %bb.jv ], [ %i.awb, %.preheader.i914 ] ; 3 uses
  %i.awk = load i8, ptr %.4.i, align 1, !tbaa !20 ; 2 uses
  switch i8 %i.awk, label %bb.ju [
    i8 45, label %bb.jv
    i8 95, label %bb.jv
  ]

bb.ju:                                            ; preds = %bb.jt
  %i.awl = sext i8 %i.awk to i32                  ; 2 uses
  %i.awm = and i32 %i.awl, -33
  %i.awn = add nsw i32 %i.awm, -91
  %narrow.i.i.i = icmp ult i32 %i.awn, -26
  %i.awo = add nsw i32 %i.awl, -58
  %i.awp = icmp ult i32 %i.awo, -10
  %narrow.i53.not.i = select i1 %narrow.i.i.i, i1 %i.awp, i1 false
  br i1 %narrow.i53.not.i, label %.critedge.i916, label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt, %bb.jt
  %i.awq = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %exitcond.not.i915 = icmp eq ptr %i.awq, %scevgep75.i
  br i1 %exitcond.not.i915, label %.critedge.i916, label %bb.jt, !llvm.loop !559

.critedge.i916:                                   ; preds = %bb.jv, %bb.ju
  %.5.i917 = phi ptr [ %scevgep75.i, %bb.jv ], [ %.4.i, %bb.ju ] ; 2 uses
  %i.awr = ptrtoint ptr %.5.i917 to i64
  %i.aws = ptrtoint ptr %i.awb to i64
  %i.awt = sub i64 %i.awr, %i.aws
  %i.awu = tail call i64 @parser_encode_length(ptr poison, ptr noundef nonnull %i.awb, i64 noundef %i.awt)
  %i.awv = tail call i64 @rb_str_new(ptr noundef nonnull %i.awb, i64 noundef %i.awu) #29 ; 2 uses
  store ptr %i.awb, ptr %i.afy, align 8, !tbaa !50
  store ptr %.5.i917, ptr %i.afv, align 8, !tbaa !57
  %i.aww = inttoptr i64 %i.awv to ptr             ; 2 uses
  %i.awx = load i64, ptr %i.aww, align 8, !tbaa !310
  %i.awy = and i64 %i.awx, 8192
  %.not.i.i918 = icmp eq i64 %i.awy, 0
  %i.awz = getelementptr inbounds nuw i8, ptr %i.aww, i64 24 ; 2 uses
  br i1 %.not.i.i918, label %RSTRING_PTR.exit.i919, label %bb.jw

bb.jw:                                            ; preds = %.critedge.i916
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i919

RSTRING_PTR.exit.i919:                            ; preds = %bb.jw, %.critedge.i916
  %i.axb = phi ptr [ %i.axa, %bb.jw ], [ %i.awz, %.critedge.i916 ]
  tail call fastcc void @parser_set_encode(ptr noundef nonnull %0, ptr noundef %i.axb)
  %i.axc = tail call i64 @rb_str_resize(i64 noundef %i.awv, i64 noundef 0) #29 ; 0 uses
  br label %parser_magic_comment.exit

parser_magic_comment.exit:                        ; preds = %bb.jg, %.preheader283.i.preheader, %.backedge.i910, %bb.js, %.preheader57.i, %bb.hx, %bb.hz, %bb.ia, %.preheader283.i, %bb.jp, %.preheader57.i.preheader, %.loopexit, %RSTRING_PTR.exit.i919, %bb.jh, %magic_comment_marker.exit.thread.i, %comment_at_top.exit
  store ptr %i.ajn, ptr %i.afy, align 8, !tbaa !50
  %i.axd = load ptr, ptr %i.afw, align 8, !tbaa !304 ; 5 uses
  store ptr %i.axd, ptr %i.afv, align 8, !tbaa !57
  %i.axe = icmp ult ptr %i.axd, %i.ajn
end_hunk_1
