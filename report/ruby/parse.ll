Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/parse?download=true
inline.NumInlined: 1675
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@parser_yylex:bb.a
  %i.alh = and i32 %i.alg, -9
  store i32 %i.alh, ptr %i.e, align 8
  store ptr %i.ala, ptr %i.aij, align 8, !tbaa !192
  %i.ali = load ptr, ptr %i.aip, align 8, !tbaa !65
  %i.alj = icmp ugt ptr %i.ala, %i.ali
  br i1 %i.alj, label %bb.ig, label %pushback.exit

bb.ig:                                            ; preds = %.split703
  %i.alk = load i8, ptr %i.ala, align 1, !tbaa !31
  %i.all = icmp eq i8 %i.alk, 10
  br i1 %i.all, label %bb.ih, label %pushback.exit

bb.ih:                                            ; preds = %bb.ig
  %i.alm = getelementptr i8, ptr %i.ala, i64 -1   ; 2 uses
  %i.aln = load i8, ptr %i.alm, align 1, !tbaa !31
  %i.alo = icmp eq i8 %i.aln, 13
  br i1 %i.alo, label %pushback.exit.sink.split, label %pushback.exit

.split:                                           ; preds = %bb.if
  %i.alp = getelementptr i8, ptr %i.ala, i64 2
  br label %.split.thread

.split.thread:                                    ; preds = %bb.id, %.split
  %i.alq = phi ptr [ %i.alp, %.split ], [ %i.alb, %bb.id ] ; 2 uses
  %i.alr = load i32, ptr %i.e, align 8
  %i.als = and i32 %i.alr, -9
  store i32 %i.als, ptr %i.e, align 8
  %i.alt = getelementptr i8, ptr %i.alq, i64 -1   ; 3 uses
  store ptr %i.alt, ptr %i.aij, align 8, !tbaa !192
  %i.alu = load ptr, ptr %i.aip, align 8, !tbaa !65
  %i.alv = icmp ugt ptr %i.alt, %i.alu
  br i1 %i.alv, label %bb.ii, label %pushback.exit

bb.ii:                                            ; preds = %.split.thread
  %i.alw = load i8, ptr %i.alt, align 1, !tbaa !31
  %i.alx = icmp eq i8 %i.alw, 10
  br i1 %i.alx, label %bb.ij, label %pushback.exit

bb.ij:                                            ; preds = %bb.ii
  %i.aly = getelementptr i8, ptr %i.alq, i64 -2   ; 2 uses
  %i.alz = load i8, ptr %i.aly, align 1, !tbaa !31
  %i.ama = icmp eq i8 %i.alz, 13
  br i1 %i.ama, label %pushback.exit.sink.split, label %pushback.exit

nextc0.exit929.thread1160:                        ; preds = %bb.ie, %bb.if
  %i.amb = load i32, ptr %i.e, align 8            ; 2 uses
  %i.amc = and i32 %i.amb, 1024
  %.not.i931 = icmp eq i32 %i.amc, 0
  br i1 %.not.i931, label %warn_cr.exit.sink.split, label %warn_cr.exit.backedge, !llvm.loop !597

pushback.exit.sink.split:                         ; preds = %bb.ij, %bb.ih
  %.sink = phi ptr [ %i.alm, %bb.ih ], [ %i.aly, %bb.ij ]
  store ptr %.sink, ptr %i.aij, align 8, !tbaa !192
  br label %pushback.exit

pushback.exit:                                    ; preds = %.critedge.i922, %pushback.exit.sink.split, %bb.ij, %bb.ii, %.split.thread, %bb.ih, %bb.ig, %.split703
  call fastcc void @parser_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 324, i32 noundef 10542)
  %i.amd = load ptr, ptr %i.aij, align 8, !tbaa !192
  store ptr %i.amd, ptr %i.ail, align 8, !tbaa !64
  br label %.backedge

.backedge:                                        ; preds = %pushback.exit969.a, %bb.ln, %bb.ld, %bb.le, %pushback.exit, %pushback.exit970.a, %pushback.exit971, %bb.xo, %parser_is_identchar.exit.thread1233, %.loopexit1938, %bb.tt
  %.0702.be = phi i32 [ %.0702, %parser_is_identchar.exit.thread1233 ], [ %.0702, %pushback.exit ], [ %.0702, %bb.xo ], [ %.0702, %bb.ld ], [ 0, %pushback.exit970.a ], [ %.0702, %pushback.exit971 ], [ %.0702, %.loopexit1938 ], [ %.0702, %bb.tt ], [ %.0702, %bb.le ], [ %.0702, %bb.ln ], [ %.0702, %pushback.exit969.a ]
  %.0700.be = phi i32 [ %.0700, %parser_is_identchar.exit.thread1233 ], [ %.0700, %pushback.exit ], [ %.0700, %bb.xo ], [ 0, %bb.ld ], [ %.1701, %pushback.exit970.a ], [ %.1701, %pushback.exit971 ], [ %.0700, %.loopexit1938 ], [ %.0700, %bb.tt ], [ 0, %bb.le ], [ %.1701, %bb.ln ], [ %.1701, %pushback.exit969.a ]
  %.0695.be = phi i32 [ %.0695, %parser_is_identchar.exit.thread1233 ], [ 1, %pushback.exit ], [ 1, %bb.xo ], [ %.0695, %bb.ld ], [ %.16961716, %pushback.exit970.a ], [ %.16961715, %pushback.exit971 ], [ %.0695, %.loopexit1938 ], [ %.0695, %bb.tt ], [ %.0695, %bb.le ], [ 1, %bb.ln ], [ 0, %pushback.exit969.a ]
  %.pre = load ptr, ptr %i.aij, align 8, !tbaa !192
  br label %bb.ht

bb.ik:                                            ; preds = %bb.hw
  %i.ame = load i32, ptr %i.e, align 8
  %i.amf = and i32 %i.ame, -129
  %i.amg = or disjoint i32 %i.amf, %i.aie
  store i32 %i.amg, ptr %i.e, align 8
  %i.amh = load ptr, ptr %i.ail, align 8, !tbaa !64
  %i.ami = load ptr, ptr %i.ain, align 8, !tbaa !324
  %i.amj = ptrtoint ptr %i.ami to i64             ; 2 uses
  %i.amk = ptrtoint ptr %i.ajj to i64
  %i.aml = sub i64 %i.amj, %i.amk                 ; 6 uses
  %i.amm = icmp slt i64 %i.aml, 8
  br i1 %i.amm, label %.loopexit, label %.lr.ph.i.i933

.lr.ph.i.i933:                                    ; preds = %bb.ik, %bb.iq
  %.028.i.i = phi i64 [ %i.ana, %bb.iq ], [ 2, %bb.ik ] ; 3 uses
  %i.amn = getelementptr i8, ptr %i.ajj, i64 %.028.i.i ; 5 uses
  %i.amo = load i8, ptr %i.amn, align 1, !tbaa !31
  switch i8 %i.amo, label %bb.iq [
    i8 45, label %bb.il
    i8 42, label %bb.in
  ]

bb.il:                                            ; preds = %.lr.ph.i.i933
  %i.amp = getelementptr i8, ptr %i.amn, i64 -1
  %i.amq = load i8, ptr %i.amp, align 1, !tbaa !31
  %i.amr = icmp eq i8 %i.amq, 42
  br i1 %i.amr, label %bb.im, label %bb.iq

bb.im:                                            ; preds = %bb.il
  %i.ams = getelementptr i8, ptr %i.amn, i64 -2
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !31
  %i.amu = icmp eq i8 %i.amt, 45
  br i1 %i.amu, label %magic_comment_marker.exit.i, label %bb.iq

bb.in:                                            ; preds = %.lr.ph.i.i933
  %i.amv = add nsw i64 %.028.i.i, 1               ; 2 uses
  %.not.i.i934 = icmp slt i64 %i.amv, %i.aml
  br i1 %.not.i.i934, label %bb.io, label %magic_comment_marker.exit.thread.i

bb.io:                                            ; preds = %bb.in
  %i.amw = getelementptr i8, ptr %i.ajj, i64 %i.amv
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !31
  %.not25.i.i = icmp eq i8 %i.amx, 45
  br i1 %.not25.i.i, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.amy = getelementptr i8, ptr %i.amn, i64 -1
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !31
  %.not26.i.i = icmp eq i8 %i.amz, 45
  br i1 %.not26.i.i, label %magic_comment_marker.exit.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io, %bb.im, %bb.il, %.lr.ph.i.i933
  %.sink.i.i941 = phi i64 [ 2, %bb.il ], [ 4, %bb.io ], [ 2, %bb.ip ], [ 2, %bb.im ], [ 3, %.lr.ph.i.i933 ]
  %i.ana = add i64 %.sink.i.i941, %.028.i.i       ; 2 uses
  %i.anb = icmp slt i64 %i.ana, %i.aml
  br i1 %i.anb, label %.lr.ph.i.i933, label %magic_comment_marker.exit.thread.i, !llvm.loop !598

magic_comment_marker.exit.i:                      ; preds = %bb.ip, %bb.im
  %.sink2960.a = phi i64 [ 1, %bb.im ], [ 2, %bb.ip ]
  %i.anc = getelementptr i8, ptr %i.amn, i64 %.sink2960.a ; 5 uses
  %.not.i942 = icmp eq ptr %i.anc, null
  br i1 %.not.i942, label %magic_comment_marker.exit.thread.i, label %bb.ir

bb.ir:                                            ; preds = %magic_comment_marker.exit.i
  %i.and = ptrtoint ptr %i.anc to i64
  %i.ane = sub i64 %i.amj, %i.and                 ; 3 uses
  %i.anf = icmp sgt i64 %i.ane, 2
  br i1 %i.anf, label %.lr.ph.i208.i, label %.loopexit

.lr.ph.i208.i:                                    ; preds = %bb.ir, %bb.ix
  %.028.i209.i = phi i64 [ %i.ant, %bb.ix ], [ 2, %bb.ir ] ; 4 uses
  %i.ang = getelementptr i8, ptr %i.anc, i64 %.028.i209.i ; 5 uses
  %i.anh = load i8, ptr %i.ang, align 1, !tbaa !31
  switch i8 %i.anh, label %bb.ix [
    i8 45, label %bb.is
    i8 42, label %bb.iu
  ]

bb.is:                                            ; preds = %.lr.ph.i208.i
  %i.ani = getelementptr i8, ptr %i.ang, i64 -1
  %i.anj = load i8, ptr %i.ani, align 1, !tbaa !31
  %i.ank = icmp eq i8 %i.anj, 42
  br i1 %i.ank, label %bb.it, label %bb.ix

bb.it:                                            ; preds = %bb.is
  %i.anl = getelementptr i8, ptr %i.ang, i64 -2
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !31
  %i.ann = icmp eq i8 %i.anm, 45
  br i1 %i.ann, label %magic_comment_marker.exit214.i, label %bb.ix

bb.iu:                                            ; preds = %.lr.ph.i208.i
  %i.ano = add nsw i64 %.028.i209.i, 1            ; 2 uses
  %.not.i210.i943 = icmp slt i64 %i.ano, %i.ane
  br i1 %.not.i210.i943, label %bb.iv, label %.loopexit

bb.iv:                                            ; preds = %bb.iu
  %i.anp = getelementptr i8, ptr %i.anc, i64 %i.ano
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !31
  %.not25.i211.i = icmp eq i8 %i.anq, 45
  br i1 %.not25.i211.i, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.anr = getelementptr i8, ptr %i.ang, i64 -1
  %i.ans = load i8, ptr %i.anr, align 1, !tbaa !31
  %.not26.i213.i = icmp eq i8 %i.ans, 45
  br i1 %.not26.i213.i, label %magic_comment_marker.exit214.i, label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv, %bb.it, %bb.is, %.lr.ph.i208.i
  %.sink.i212.i = phi i64 [ 2, %bb.is ], [ 4, %bb.iv ], [ 2, %bb.iw ], [ 2, %bb.it ], [ 3, %.lr.ph.i208.i ]
  %i.ant = add i64 %.sink.i212.i, %.028.i209.i    ; 2 uses
  %i.anu = icmp slt i64 %i.ant, %i.ane
  br i1 %i.anu, label %.lr.ph.i208.i, label %.loopexit, !llvm.loop !598

magic_comment_marker.exit214.i:                   ; preds = %bb.iw, %bb.it
  %.sink2961 = phi i64 [ 1, %bb.it ], [ 2, %bb.iw ] ; 2 uses
  %i.anv = getelementptr i8, ptr %i.ang, i64 %.sink2961
  %.not184.i = icmp eq ptr %i.anv, null
  br i1 %.not184.i, label %.loopexit, label %bb.iy

bb.iy:                                            ; preds = %magic_comment_marker.exit214.i
  %reass.sub = add i64 %.028.i209.i, %.sink2961
  %i.anw = add i64 %reass.sub, -3
  br label %magic_comment_marker.exit.thread.i

magic_comment_marker.exit.thread.i:               ; preds = %bb.iq, %bb.in, %bb.iy, %magic_comment_marker.exit.i
  %.not234.i = phi i1 [ false, %bb.iy ], [ true, %magic_comment_marker.exit.i ], [ true, %bb.in ], [ true, %bb.iq ] ; 2 uses
  %.0149.i = phi ptr [ %i.anc, %bb.iy ], [ %i.ajj, %magic_comment_marker.exit.i ], [ %i.ajj, %bb.in ], [ %i.ajj, %bb.iq ]
  %.0144.i = phi i64 [ %i.anw, %bb.iy ], [ %i.aml, %magic_comment_marker.exit.i ], [ %i.aml, %bb.in ], [ %i.aml, %bb.iq ] ; 2 uses
  %i.anx = icmp sgt i64 %.0144.i, 0
  br i1 %i.anx, label %.preheader271.i, label %parser_magic_comment.exit

.preheader271.i:                                  ; preds = %magic_comment_marker.exit.thread.i, %.loopexit.i936
  %.0137365.i = phi i64 [ %.4.i, %.loopexit.i936 ], [ 0, %magic_comment_marker.exit.thread.i ] ; 8 uses
  %.0139364.i = phi i64 [ %.3142.i, %.loopexit.i936 ], [ 0, %magic_comment_marker.exit.thread.i ] ; 6 uses
  %.1145363.i = phi i64 [ %.14.i, %.loopexit.i936 ], [ %.0144.i, %magic_comment_marker.exit.thread.i ]
  %.1150362.i = phi ptr [ %.14163.i, %.loopexit.i936 ], [ %.0149.i, %magic_comment_marker.exit.thread.i ]
  br label %bb.iz

bb.iz:                                            ; preds = %bb.jb, %.preheader271.i
  %.2146301.i = phi i64 [ %.1145363.i, %.preheader271.i ], [ %i.aoe, %bb.jb ] ; 3 uses
  %.2151300.i = phi ptr [ %.1150362.i, %.preheader271.i ], [ %i.aod, %bb.jb ] ; 7 uses
  %i.any = load i8, ptr %.2151300.i, align 1, !tbaa !31 ; 3 uses
  switch i8 %i.any, label %bb.ja [
    i8 0, label %.lr.ph.i935.preheader
    i8 39, label %bb.jb
    i8 34, label %bb.jb
    i8 58, label %bb.jb
    i8 59, label %bb.jb
  ]

.lr.ph.i935.preheader:                            ; preds = %bb.ja, %bb.iz
  br label %.lr.ph.i935

bb.ja:                                            ; preds = %bb.iz
  %i.anz = sext i8 %i.any to i32
  %i.aoa = icmp ne i8 %i.any, 32
  %i.aob = add nsw i32 %i.anz, -14
  %i.aoc = icmp ult i32 %i.aob, -5
  %narrow.i.not.i = select i1 %i.aoa, i1 %i.aoc, i1 false
  br i1 %narrow.i.not.i, label %.lr.ph.i935.preheader, label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz, %bb.iz, %bb.iz, %bb.iz
  %i.aod = getelementptr i8, ptr %.2151300.i, i64 1
  %i.aoe = add nsw i64 %.2146301.i, -1
  %i.aof = icmp sgt i64 %.2146301.i, 1
  br i1 %i.aof, label %bb.iz, label %parser_magic_comment.exit, !llvm.loop !599

.lr.ph.i935:                                      ; preds = %.lr.ph.i935.preheader, %bb.jd
  %.3147303.i = phi i64 [ %i.aom, %bb.jd ], [ %.2146301.i, %.lr.ph.i935.preheader ] ; 3 uses
  %.3152302.i = phi ptr [ %i.aol, %bb.jd ], [ %.2151300.i, %.lr.ph.i935.preheader ] ; 5 uses
  %i.aog = load i8, ptr %.3152302.i, align 1, !tbaa !31 ; 3 uses
  switch i8 %i.aog, label %bb.jc [
    i8 39, label %.lr.ph323.i.preheader
    i8 34, label %.lr.ph323.i.preheader
    i8 58, label %.lr.ph323.i.preheader
    i8 59, label %.lr.ph323.i.preheader
  ]

.lr.ph323.i.preheader:                            ; preds = %bb.jc, %.lr.ph.i935, %.lr.ph.i935, %.lr.ph.i935, %.lr.ph.i935
  br label %.lr.ph323.i

bb.jc:                                            ; preds = %.lr.ph.i935
  %i.aoh = sext i8 %i.aog to i32
  %i.aoi = icmp ne i8 %i.aog, 32
  %i.aoj = add nsw i32 %i.aoh, -14
  %i.aok = icmp ult i32 %i.aoj, -5
  %narrow.i215.not.i = select i1 %i.aoi, i1 %i.aok, i1 false
  br i1 %narrow.i215.not.i, label %bb.jd, label %.lr.ph323.i.preheader

bb.jd:                                            ; preds = %bb.jc
  %i.aol = getelementptr i8, ptr %.3152302.i, i64 1
  %i.aom = add nsw i64 %.3147303.i, -1
  %i.aon = icmp sgt i64 %.3147303.i, 1
  br i1 %i.aon, label %.lr.ph.i935, label %parser_magic_comment.exit, !llvm.loop !600

.lr.ph323.i:                                      ; preds = %.lr.ph323.i.preheader, %bb.je
  %.4148321.i = phi i64 [ %i.aou, %bb.je ], [ %.3147303.i, %.lr.ph323.i.preheader ] ; 6 uses
  %.4153320.i = phi ptr [ %i.aot, %bb.je ], [ %.3152302.i, %.lr.ph323.i.preheader ] ; 6 uses
  %i.aoo = load i8, ptr %.4153320.i, align 1, !tbaa !31 ; 3 uses
  %i.aop = sext i8 %i.aoo to i32
  %i.aoq = icmp ne i8 %i.aoo, 32
  %i.aor = add nsw i32 %i.aop, -14
  %i.aos = icmp ult i32 %i.aor, -5
  %narrow.i216.not.i = select i1 %i.aoq, i1 %i.aos, i1 false
  br i1 %narrow.i216.not.i, label %.critedge2.thread.i, label %bb.je

bb.je:                                            ; preds = %.lr.ph323.i
  %i.aot = getelementptr i8, ptr %.4153320.i, i64 1
  %i.aou = add nsw i64 %.4148321.i, -1
  %i.aov = icmp sgt i64 %.4148321.i, 1
  br i1 %i.aov, label %.lr.ph323.i, label %parser_magic_comment.exit, !llvm.loop !601

.critedge2.thread.i:                              ; preds = %.lr.ph323.i
  %.not190.i = icmp eq i8 %i.aoo, 58
  br i1 %.not190.i, label %.preheader270.i.preheader, label %bb.jf

.preheader270.i.preheader:                        ; preds = %.critedge2.thread.i
  %i.aow = getelementptr i8, ptr %.4153320.i, i64 1 ; 2 uses
  %i.aox = add i64 %.4148321.i, -1                ; 2 uses
  %i.aoy = icmp sgt i64 %i.aox, 0
  br i1 %i.aoy, label %.lr.ph, label %.critedge4.i

bb.jf:                                            ; preds = %.critedge2.thread.i
  br i1 %.not234.i, label %.loopexit, label %.loopexit.i936

.preheader270.i:                                  ; preds = %.lr.ph
  %i.aoz = getelementptr i8, ptr %i.apd, i64 1    ; 2 uses
  %i.apa = add nsw i64 %i.apc, -1
  %i.apb = icmp sgt i64 %i.apc, 1
  br i1 %i.apb, label %.lr.ph, label %.critedge4.i, !llvm.loop !602

.lr.ph:                                           ; preds = %.preheader270.i.preheader, %.preheader270.i
  %i.apc = phi i64 [ %i.apa, %.preheader270.i ], [ %i.aox, %.preheader270.i.preheader ] ; 5 uses
  %i.apd = phi ptr [ %i.aoz, %.preheader270.i ], [ %i.aow, %.preheader270.i.preheader ] ; 18 uses
  %.5.i2863 = phi i64 [ %i.apc, %.preheader270.i ], [ %.4148321.i, %.preheader270.i.preheader ] ; 2 uses
  %.5154.i2862 = phi ptr [ %i.apd, %.preheader270.i ], [ %.4153320.i, %.preheader270.i.preheader ] ; 2 uses
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !31 ; 2 uses
  %i.apf = sext i8 %i.ape to i32
  %i.apg = icmp ne i8 %i.ape, 32
  %i.aph = add nsw i32 %i.apf, -14
  %i.api = icmp ult i32 %i.aph, -5
  %narrow.i217.not.i = select i1 %i.apg, i1 %i.api, i1 false
  br i1 %narrow.i217.not.i, label %.critedge4.thread.i, label %.preheader270.i, !llvm.loop !602

.critedge4.i:                                     ; preds = %.preheader270.i, %.preheader270.i.preheader
  %.5154.i.lcssa = phi ptr [ %.4153320.i, %.preheader270.i.preheader ], [ %i.apd, %.preheader270.i ]
  %.lcssa2579 = phi ptr [ %i.aow, %.preheader270.i.preheader ], [ %i.aoz, %.preheader270.i ] ; 6 uses
  %.not192.i = icmp sgt i64 %.4148321.i, 0
  br i1 %.not192.i, label %parser_magic_comment.exit, label %.critedge4.thread.i.thread

.critedge4.thread.i:                              ; preds = %.lr.ph
  %i.apj = load i8, ptr %i.apd, align 1, !tbaa !31 ; 2 uses
  %i.apk = icmp eq i8 %i.apj, 34
  br i1 %i.apk, label %bb.jg, label %.lr.ph328.preheader.i

.critedge4.thread.i.thread:                       ; preds = %.critedge4.i
  %i.apl = load i8, ptr %.lcssa2579, align 1, !tbaa !31
  %i.apm = icmp eq i8 %i.apl, 34
  br i1 %i.apm, label %.critedge6.i.thread2172, label %.critedge8.i

.critedge6.i.thread2172:                          ; preds = %.critedge4.thread.i.thread
  %i.apn = getelementptr i8, ptr %.5154.i.lcssa, i64 2 ; 2 uses
  br label %.critedge6.thread.i

.lr.ph328.preheader.i:                            ; preds = %.critedge4.thread.i
  %scevgep402.i = getelementptr i8, ptr %.5154.i2862, i64 %.5.i2863 ; 2 uses
  br label %.lr.ph328.i

bb.jg:                                            ; preds = %.critedge4.thread.i
  %i.apo = add i64 %.5.i2863, -2                  ; 2 uses
  %i.app = getelementptr i8, ptr %.5154.i2862, i64 2 ; 7 uses
  %.not2551 = icmp eq i64 %i.apo, 0
  br i1 %.not2551, label %.critedge8.i, label %.lr.ph343.i

.lr.ph343.i:                                      ; preds = %bb.jg, %bb.ji
  %i.apq = phi i64 [ %i.apv, %bb.ji ], [ %i.apo, %bb.jg ]
  %.6341.i = phi i64 [ %.7.i, %bb.ji ], [ %i.apc, %bb.jg ] ; 2 uses
  %.6155340.i = phi ptr [ %i.apu, %bb.ji ], [ %i.app, %bb.jg ] ; 4 uses
  %i.apr = load i8, ptr %.6155340.i, align 1, !tbaa !31
  switch i8 %i.apr, label %bb.ji [
    i8 34, label %.critedge6.thread.i
    i8 92, label %bb.jh
  ]

bb.jh:                                            ; preds = %.lr.ph343.i
  %i.aps = add i64 %.6341.i, -2
  %i.apt = getelementptr i8, ptr %.6155340.i, i64 1
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %.lr.ph343.i
  %.7156.i = phi ptr [ %i.apt, %bb.jh ], [ %.6155340.i, %.lr.ph343.i ]
  %.7.i = phi i64 [ %i.aps, %bb.jh ], [ %i.apq, %.lr.ph343.i ] ; 4 uses
  %i.apu = getelementptr i8, ptr %.7156.i, i64 1  ; 4 uses
  %i.apv = add nsw i64 %.7.i, -1                  ; 2 uses
  %i.apw = icmp sgt i64 %.7.i, 1
  br i1 %i.apw, label %.lr.ph343.i, label %.critedge6.i, !llvm.loop !603

.critedge6.i:                                     ; preds = %bb.ji
  %.not197.i = icmp eq i64 %i.apv, 0
  br i1 %.not197.i, label %.critedge8.i, label %.critedge6.thread.i

.critedge6.thread.i:                              ; preds = %.lr.ph343.i, %.critedge6.i.thread2172, %.critedge6.i
  %i.apx = phi ptr [ %i.apd, %.critedge6.i ], [ %.lcssa2579, %.critedge6.i.thread2172 ], [ %i.apd, %.lr.ph343.i ]
  %i.apy = phi ptr [ %i.app, %.critedge6.i ], [ %i.apn, %.critedge6.i.thread2172 ], [ %i.app, %.lr.ph343.i ]
  %.6155288.i = phi ptr [ %i.apu, %.critedge6.i ], [ %i.apn, %.critedge6.i.thread2172 ], [ %.6155340.i, %.lr.ph343.i ] ; 2 uses
  %.6286.i = phi i64 [ %.7.i, %.critedge6.i ], [ 0, %.critedge6.i.thread2172 ], [ %.6341.i, %.lr.ph343.i ]
  %i.apz = add i64 %.6286.i, -2
  %i.aqa = getelementptr i8, ptr %.6155288.i, i64 1
  br label %.critedge8.i

.lr.ph328.ithread-pre-split:                      ; preds = %bb.jk
  %i.aqb = getelementptr i8, ptr %.8157326.i, i64 1 ; 2 uses
  %i.aqc = add nsw i64 %.8327.i, -1
  %.pr = load i8, ptr %i.aqb, align 1, !tbaa !31
  br label %.lr.ph328.i

.lr.ph328.i:                                      ; preds = %.lr.ph328.ithread-pre-split, %.lr.ph328.preheader.i
  %i.aqd = phi i8 [ %.pr, %.lr.ph328.ithread-pre-split ], [ %i.apj, %.lr.ph328.preheader.i ] ; 3 uses
  %.8327.i = phi i64 [ %i.aqc, %.lr.ph328.ithread-pre-split ], [ %i.apc, %.lr.ph328.preheader.i ] ; 5 uses
  %.8157326.i = phi ptr [ %i.aqb, %.lr.ph328.ithread-pre-split ], [ %i.apd, %.lr.ph328.preheader.i ] ; 7 uses
  switch i8 %i.aqd, label %bb.jj [
    i8 34, label %.critedge8.i
    i8 59, label %.critedge8.i
  ]

bb.jj:                                            ; preds = %.lr.ph328.i
  %i.aqe = sext i8 %i.aqd to i32
  %i.aqf = icmp ne i8 %i.aqd, 32
  %i.aqg = add nsw i32 %i.aqe, -14
  %i.aqh = icmp ult i32 %i.aqg, -5
  %narrow.i218.not.i = select i1 %i.aqf, i1 %i.aqh, i1 false
  br i1 %narrow.i218.not.i, label %bb.jk, label %.critedge8.i

bb.jk:                                            ; preds = %bb.jj
  %i.aqi = icmp sgt i64 %.8327.i, 1
  br i1 %i.aqi, label %.lr.ph328.ithread-pre-split, label %.critedge8.i, !llvm.loop !604

.critedge8.i:                                     ; preds = %bb.jk, %bb.jj, %.lr.ph328.i, %.lr.ph328.i, %bb.jg, %.critedge4.thread.i.thread, %.critedge6.thread.i, %.critedge6.i
  %i.aqj = phi ptr [ %i.apx, %.critedge6.thread.i ], [ %i.apd, %.critedge6.i ], [ %i.apd, %bb.jg ], [ %.lcssa2579, %.critedge4.thread.i.thread ], [ %i.apd, %.lr.ph328.i ], [ %i.apd, %.lr.ph328.i ], [ %i.apd, %bb.jj ], [ %i.apd, %bb.jk ]
  %.9158.i = phi ptr [ %i.aqa, %.critedge6.thread.i ], [ %i.apu, %.critedge6.i ], [ %i.app, %bb.jg ], [ %.lcssa2579, %.critedge4.thread.i.thread ], [ %scevgep402.i, %bb.jk ], [ %.8157326.i, %bb.jj ], [ %.8157326.i, %.lr.ph328.i ], [ %.8157326.i, %.lr.ph328.i ] ; 7 uses
  %.9.i = phi i64 [ %i.apz, %.critedge6.thread.i ], [ 0, %.critedge6.i ], [ 0, %bb.jg ], [ 0, %.critedge4.thread.i.thread ], [ 0, %bb.jk ], [ %.8327.i, %bb.jj ], [ %.8327.i, %.lr.ph328.i ], [ %.8327.i, %.lr.ph328.i ] ; 7 uses
  %.0136.i = phi ptr [ %i.apy, %.critedge6.thread.i ], [ %i.app, %.critedge6.i ], [ %i.app, %bb.jg ], [ %.lcssa2579, %.critedge4.thread.i.thread ], [ %i.apd, %.lr.ph328.i ], [ %i.apd, %.lr.ph328.i ], [ %i.apd, %bb.jj ], [ %i.apd, %bb.jk ] ; 4 uses
  %.0135.i = phi ptr [ %.6155288.i, %.critedge6.thread.i ], [ %i.apu, %.critedge6.i ], [ %i.app, %bb.jg ], [ %.lcssa2579, %.critedge4.thread.i.thread ], [ %scevgep402.i, %bb.jk ], [ %.8157326.i, %bb.jj ], [ %.8157326.i, %.lr.ph328.i ], [ %.8157326.i, %.lr.ph328.i ]
  %i.aqk = icmp sgt i64 %.9.i, 0                  ; 2 uses
  br i1 %.not234.i, label %.preheader267.i, label %.preheader268.i

.preheader268.i:                                  ; preds = %.critedge8.i
  br i1 %i.aqk, label %.lr.ph349.preheader.i, label %.critedge10.i

.lr.ph349.preheader.i:                            ; preds = %.preheader268.i
  %scevgep403.i = getelementptr i8, ptr %.9158.i, i64 %.9.i
  br label %.lr.ph349.i

.preheader267.i:                                  ; preds = %.critedge8.i
  br i1 %i.aqk, label %.lr.ph357.preheader.i, label %.critedge14.i

.lr.ph357.preheader.i:                            ; preds = %.preheader267.i
  %scevgep404.i = getelementptr i8, ptr %.9158.i, i64 %.9.i
  br label %.lr.ph357.i

.lr.ph349.i:                                      ; preds = %.critedge12.i, %.lr.ph349.preheader.i
  %.10348.i = phi i64 [ %i.aqr, %.critedge12.i ], [ %.9.i, %.lr.ph349.preheader.i ] ; 3 uses
  %.10159347.i = phi ptr [ %i.aqs, %.critedge12.i ], [ %.9158.i, %.lr.ph349.preheader.i ] ; 3 uses
  %i.aql = load i8, ptr %.10159347.i, align 1, !tbaa !31 ; 3 uses
  %i.aqm = icmp eq i8 %i.aql, 59
  br i1 %i.aqm, label %.critedge12.i, label %bb.jl

bb.jl:                                            ; preds = %.lr.ph349.i
  %i.aqn = sext i8 %i.aql to i32
  %i.aqo = icmp ne i8 %i.aql, 32
  %i.aqp = add nsw i32 %i.aqn, -14
  %i.aqq = icmp ult i32 %i.aqp, -5
  %narrow.i219.not.i = select i1 %i.aqo, i1 %i.aqq, i1 false
  br i1 %narrow.i219.not.i, label %.critedge10.i, label %.critedge12.i

.critedge12.i:                                    ; preds = %bb.jl, %.lr.ph349.i
  %i.aqr = add nsw i64 %.10348.i, -1
  %i.aqs = getelementptr i8, ptr %.10159347.i, i64 1
  %i.aqt = icmp sgt i64 %.10348.i, 1
  br i1 %i.aqt, label %.lr.ph349.i, label %.critedge10.i, !llvm.loop !605

.lr.ph357.i:                                      ; preds = %bb.jm, %.lr.ph357.preheader.i
  %.11356.i = phi i64 [ %i.aqz, %bb.jm ], [ %.9.i, %.lr.ph357.preheader.i ] ; 2 uses
  %.11160355.i = phi ptr [ %i.ara, %bb.jm ], [ %.9158.i, %.lr.ph357.preheader.i ] ; 2 uses
  %i.aqu = load i8, ptr %.11160355.i, align 1, !tbaa !31 ; 2 uses
  %i.aqv = sext i8 %i.aqu to i32
  %i.aqw = icmp ne i8 %i.aqu, 32
  %i.aqx = add nsw i32 %i.aqv, -14
  %i.aqy = icmp ult i32 %i.aqx, -5
  %narrow.i220.not.i = select i1 %i.aqw, i1 %i.aqy, i1 false
  br i1 %narrow.i220.not.i, label %.loopexit, label %bb.jm

bb.jm:                                            ; preds = %.lr.ph357.i
  %i.aqz = add nsw i64 %.11356.i, -1
  %i.ara = getelementptr i8, ptr %.11160355.i, i64 1
  %i.arb = icmp sgt i64 %.11356.i, 1
  br i1 %i.arb, label %.lr.ph357.i, label %.critedge10.i, !llvm.loop !606

.critedge14.i:                                    ; preds = %.preheader267.i
  %.not200.i = icmp eq i64 %.9.i, 0
  br i1 %.not200.i, label %.critedge10.i, label %.loopexit

.critedge10.i:                                    ; preds = %.critedge12.i, %bb.jl, %bb.jm, %.critedge14.i, %.preheader268.i
  %.12161.i = phi ptr [ %.9158.i, %.critedge14.i ], [ %.9158.i, %.preheader268.i ], [ %scevgep404.i, %bb.jm ], [ %.10159347.i, %bb.jl ], [ %scevgep403.i, %.critedge12.i ] ; 3 uses
  %.12.i = phi i64 [ 0, %.critedge14.i ], [ %.9.i, %.preheader268.i ], [ 0, %bb.jm ], [ %.10348.i, %bb.jl ], [ 0, %.critedge12.i ] ; 3 uses
  %i.arc = ptrtoint ptr %.3152302.i to i64
  %i.ard = ptrtoint ptr %.2151300.i to i64
  %i.are = sub i64 %i.arc, %i.ard                 ; 23 uses
  %.not202.i = icmp eq i64 %.0139364.i, 0
  br i1 %.not202.i, label %bb.jq, label %bb.jn

bb.jn:                                            ; preds = %.critedge10.i
  %i.arf = call i64 @rb_str_resize(i64 noundef %.0139364.i, i64 noundef %i.are) #31 ; 0 uses
  %i.arg = inttoptr i64 %.0139364.i to ptr        ; 4 uses
  %i.arh = load i64, ptr %i.arg, align 8, !tbaa !30
  %i.ari = and i64 %i.arh, 8192
  %.not.i221.i = icmp eq i64 %i.ari, 0
  %i.arj = getelementptr i8, ptr %i.arg, i64 24   ; 2 uses
  br i1 %.not.i221.i, label %RSTRING_PTR.exit.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !31
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.jo, %bb.jn
  %i.arl = phi ptr [ %i.ark, %bb.jo ], [ %i.arj, %bb.jn ]
  %.not.i222.i = icmp eq ptr %.3152302.i, %.2151300.i
  br i1 %.not.i222.i, label %ruby_nonempty_memcpy.exit.i, label %bb.jp

bb.jp:                                            ; preds = %RSTRING_PTR.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.arl, ptr noundef nonnull readonly align 1 %.2151300.i, i64 noundef range(i64 1, 0) %i.are, i1 noundef false) #31
  br label %ruby_nonempty_memcpy.exit.i

bb.jq:                                            ; preds = %.critedge10.i
  %i.arm = load ptr, ptr %i.aiw, align 8, !tbaa !180
  %i.arn = call i64 @rb_enc_str_new(ptr noundef nonnull %.2151300.i, i64 noundef %i.are, ptr noundef %i.arm) #31 ; 2 uses
  %.pre405.i = inttoptr i64 %i.arn to ptr
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.jq, %bb.jp, %RSTRING_PTR.exit.i
  %.pre-phi.i937 = phi ptr [ %i.arg, %bb.jp ], [ %i.arg, %RSTRING_PTR.exit.i ], [ %.pre405.i, %bb.jq ] ; 2 uses
  %.1140.i = phi i64 [ %.0139364.i, %bb.jp ], [ %.0139364.i, %RSTRING_PTR.exit.i ], [ %i.arn, %bb.jq ] ; 3 uses
  %i.aro = load i64, ptr %.pre-phi.i937, align 8, !tbaa !30
  %i.arp = and i64 %i.aro, 8192
  %.not.i223.i = icmp eq i64 %i.arp, 0
  %i.arq = getelementptr i8, ptr %.pre-phi.i937, i64 24 ; 2 uses
  br i1 %.not.i223.i, label %RSTRING_PTR.exit224.i, label %bb.jr

bb.jr:                                            ; preds = %ruby_nonempty_memcpy.exit.i
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !31
  br label %RSTRING_PTR.exit224.i

RSTRING_PTR.exit224.i:                            ; preds = %bb.jr, %ruby_nonempty_memcpy.exit.i
  %i.ars = phi ptr [ %i.arr, %bb.jr ], [ %i.arq, %ruby_nonempty_memcpy.exit.i ] ; 46 uses
  %i.art = icmp sgt i64 %i.are, 0
  br i1 %i.art, label %iter.check, label %.preheader.i938

iter.check:                                       ; preds = %RSTRING_PTR.exit224.i
  %min.iters.check = icmp ult i64 %i.are, 8
  br i1 %min.iters.check, label %.lr.ph361.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.aru = add nsw i64 %i.are, -1                 ; 2 uses
  %i.arv = trunc i64 %i.aru to i32
  %i.arw = icmp ugt i32 %i.arv, 2147483646
  %i.arx = icmp ugt i64 %i.aru, 4294967295
  %i.ary = or i1 %i.arw, %i.arx
  br i1 %i.ary, label %.lr.ph361.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check2871 = icmp ult i64 %i.are, 32
  br i1 %min.iters.check2871, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.arz = and i64 %i.are, 24
  %n.vec = and i64 %i.are, 8589934560             ; 5 uses
  %i.asa = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue2934
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue2934 ] ; 33 uses
  %i.asb = getelementptr i8, ptr %i.ars, i64 %index ; 3 uses
  %i.asc = getelementptr i8, ptr %i.asb, i64 16
  %wide.load = load <16 x i8>, ptr %i.asb, align 1, !tbaa !31
  %wide.load2872 = load <16 x i8>, ptr %i.asc, align 1, !tbaa !31
  %i.asd = icmp eq <16 x i8> %wide.load, splat (i8 45) ; 16 uses
  %i.ase = icmp eq <16 x i8> %wide.load2872, splat (i8 45) ; 16 uses
  %i.asf = extractelement <16 x i1> %i.asd, i64 0
  br i1 %i.asf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 95, ptr %i.asb, align 1, !tbaa !31
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.asg = extractelement <16 x i1> %i.asd, i64 1
  br i1 %i.asg, label %pred.store.if2873, label %pred.store.continue2874

pred.store.if2873:                                ; preds = %pred.store.continue
  %i.ash = getelementptr i8, ptr %i.ars, i64 %index
  %i.asi = getelementptr i8, ptr %i.ash, i64 1
  store i8 95, ptr %i.asi, align 1, !tbaa !31
  br label %pred.store.continue2874

pred.store.continue2874:                          ; preds = %pred.store.if2873, %pred.store.continue
  %i.asj = extractelement <16 x i1> %i.asd, i64 2
  br i1 %i.asj, label %pred.store.if2875, label %pred.store.continue2876

pred.store.if2875:                                ; preds = %pred.store.continue2874
  %i.ask = getelementptr i8, ptr %i.ars, i64 %index
  %i.asl = getelementptr i8, ptr %i.ask, i64 2
  store i8 95, ptr %i.asl, align 1, !tbaa !31
  br label %pred.store.continue2876

pred.store.continue2876:                          ; preds = %pred.store.if2875, %pred.store.continue2874
  %i.asm = extractelement <16 x i1> %i.asd, i64 3
  br i1 %i.asm, label %pred.store.if2877, label %pred.store.continue2878

pred.store.if2877:                                ; preds = %pred.store.continue2876
  %i.asn = getelementptr i8, ptr %i.ars, i64 %index
  %i.aso = getelementptr i8, ptr %i.asn, i64 3
  store i8 95, ptr %i.aso, align 1, !tbaa !31
  br label %pred.store.continue2878

pred.store.continue2878:                          ; preds = %pred.store.if2877, %pred.store.continue2876
  %i.asp = extractelement <16 x i1> %i.asd, i64 4
  br i1 %i.asp, label %pred.store.if2879, label %pred.store.continue2880

pred.store.if2879:                                ; preds = %pred.store.continue2878
  %i.asq = getelementptr i8, ptr %i.ars, i64 %index
  %i.asr = getelementptr i8, ptr %i.asq, i64 4
  store i8 95, ptr %i.asr, align 1, !tbaa !31
  br label %pred.store.continue2880

pred.store.continue2880:                          ; preds = %pred.store.if2879, %pred.store.continue2878
  %i.ass = extractelement <16 x i1> %i.asd, i64 5
  br i1 %i.ass, label %pred.store.if2881, label %pred.store.continue2882

pred.store.if2881:                                ; preds = %pred.store.continue2880
  %i.ast = getelementptr i8, ptr %i.ars, i64 %index
  %i.asu = getelementptr i8, ptr %i.ast, i64 5
  store i8 95, ptr %i.asu, align 1, !tbaa !31
  br label %pred.store.continue2882

pred.store.continue2882:                          ; preds = %pred.store.if2881, %pred.store.continue2880
  %i.asv = extractelement <16 x i1> %i.asd, i64 6
  br i1 %i.asv, label %pred.store.if2883, label %pred.store.continue2884

pred.store.if2883:                                ; preds = %pred.store.continue2882
  %i.asw = getelementptr i8, ptr %i.ars, i64 %index
  %i.asx = getelementptr i8, ptr %i.asw, i64 6
  store i8 95, ptr %i.asx, align 1, !tbaa !31
  br label %pred.store.continue2884

pred.store.continue2884:                          ; preds = %pred.store.if2883, %pred.store.continue2882
  %i.asy = extractelement <16 x i1> %i.asd, i64 7
  br i1 %i.asy, label %pred.store.if2885, label %pred.store.continue2886

pred.store.if2885:                                ; preds = %pred.store.continue2884
  %i.asz = getelementptr i8, ptr %i.ars, i64 %index
  %i.ata = getelementptr i8, ptr %i.asz, i64 7
  store i8 95, ptr %i.ata, align 1, !tbaa !31
  br label %pred.store.continue2886

pred.store.continue2886:                          ; preds = %pred.store.if2885, %pred.store.continue2884
  %i.atb = extractelement <16 x i1> %i.asd, i64 8
  br i1 %i.atb, label %pred.store.if2887, label %pred.store.continue2888

pred.store.if2887:                                ; preds = %pred.store.continue2886
  %i.atc = getelementptr i8, ptr %i.ars, i64 %index
  %i.atd = getelementptr i8, ptr %i.atc, i64 8
  store i8 95, ptr %i.atd, align 1, !tbaa !31
  br label %pred.store.continue2888

pred.store.continue2888:                          ; preds = %pred.store.if2887, %pred.store.continue2886
  %i.ate = extractelement <16 x i1> %i.asd, i64 9
  br i1 %i.ate, label %pred.store.if2889, label %pred.store.continue2890

pred.store.if2889:                                ; preds = %pred.store.continue2888
  %i.atf = getelementptr i8, ptr %i.ars, i64 %index
  %i.atg = getelementptr i8, ptr %i.atf, i64 9
  store i8 95, ptr %i.atg, align 1, !tbaa !31
  br label %pred.store.continue2890

pred.store.continue2890:                          ; preds = %pred.store.if2889, %pred.store.continue2888
  %i.ath = extractelement <16 x i1> %i.asd, i64 10
  br i1 %i.ath, label %pred.store.if2891, label %pred.store.continue2892

pred.store.if2891:                                ; preds = %pred.store.continue2890
  %i.ati = getelementptr i8, ptr %i.ars, i64 %index
  %i.atj = getelementptr i8, ptr %i.ati, i64 10
  store i8 95, ptr %i.atj, align 1, !tbaa !31
  br label %pred.store.continue2892

pred.store.continue2892:                          ; preds = %pred.store.if2891, %pred.store.continue2890
  %i.atk = extractelement <16 x i1> %i.asd, i64 11
  br i1 %i.atk, label %pred.store.if2893, label %pred.store.continue2894

pred.store.if2893:                                ; preds = %pred.store.continue2892
  %i.atl = getelementptr i8, ptr %i.ars, i64 %index
  %i.atm = getelementptr i8, ptr %i.atl, i64 11
  store i8 95, ptr %i.atm, align 1, !tbaa !31
  br label %pred.store.continue2894

pred.store.continue2894:                          ; preds = %pred.store.if2893, %pred.store.continue2892
  %i.atn = extractelement <16 x i1> %i.asd, i64 12
  br i1 %i.atn, label %pred.store.if2895, label %pred.store.continue2896

pred.store.if2895:                                ; preds = %pred.store.continue2894
  %i.ato = getelementptr i8, ptr %i.ars, i64 %index
  %i.atp = getelementptr i8, ptr %i.ato, i64 12
  store i8 95, ptr %i.atp, align 1, !tbaa !31
  br label %pred.store.continue2896

pred.store.continue2896:                          ; preds = %pred.store.if2895, %pred.store.continue2894
  %i.atq = extractelement <16 x i1> %i.asd, i64 13
  br i1 %i.atq, label %pred.store.if2897, label %pred.store.continue2898

pred.store.if2897:                                ; preds = %pred.store.continue2896
  %i.atr = getelementptr i8, ptr %i.ars, i64 %index
  %i.ats = getelementptr i8, ptr %i.atr, i64 13
  store i8 95, ptr %i.ats, align 1, !tbaa !31
  br label %pred.store.continue2898

pred.store.continue2898:                          ; preds = %pred.store.if2897, %pred.store.continue2896
  %i.att = extractelement <16 x i1> %i.asd, i64 14
  br i1 %i.att, label %pred.store.if2899, label %pred.store.continue2900

pred.store.if2899:                                ; preds = %pred.store.continue2898
  %i.atu = getelementptr i8, ptr %i.ars, i64 %index
  %i.atv = getelementptr i8, ptr %i.atu, i64 14
  store i8 95, ptr %i.atv, align 1, !tbaa !31
  br label %pred.store.continue2900

pred.store.continue2900:                          ; preds = %pred.store.if2899, %pred.store.continue2898
  %i.atw = extractelement <16 x i1> %i.asd, i64 15
  br i1 %i.atw, label %pred.store.if2901, label %pred.store.continue2902

pred.store.if2901:                                ; preds = %pred.store.continue2900
  %i.atx = getelementptr i8, ptr %i.ars, i64 %index
  %i.aty = getelementptr i8, ptr %i.atx, i64 15
  store i8 95, ptr %i.aty, align 1, !tbaa !31
end_hunk_0
begin_hunk_1_@parser_yylex:bb.a
  store i8 95, ptr %i.auw, align 1, !tbaa !31
  br label %pred.store.continue2918

pred.store.continue2918:                          ; preds = %pred.store.if2917, %pred.store.continue2916
  %i.aux = extractelement <16 x i1> %i.ase, i64 8
  br i1 %i.aux, label %pred.store.if2919, label %pred.store.continue2920

pred.store.if2919:                                ; preds = %pred.store.continue2918
  %i.auy = getelementptr i8, ptr %i.ars, i64 %index
  %i.auz = getelementptr i8, ptr %i.auy, i64 24
  store i8 95, ptr %i.auz, align 1, !tbaa !31
  br label %pred.store.continue2920

pred.store.continue2920:                          ; preds = %pred.store.if2919, %pred.store.continue2918
  %i.ava = extractelement <16 x i1> %i.ase, i64 9
  br i1 %i.ava, label %pred.store.if2921, label %pred.store.continue2922

pred.store.if2921:                                ; preds = %pred.store.continue2920
  %i.avb = getelementptr i8, ptr %i.ars, i64 %index
  %i.avc = getelementptr i8, ptr %i.avb, i64 25
  store i8 95, ptr %i.avc, align 1, !tbaa !31
  br label %pred.store.continue2922

pred.store.continue2922:                          ; preds = %pred.store.if2921, %pred.store.continue2920
  %i.avd = extractelement <16 x i1> %i.ase, i64 10
  br i1 %i.avd, label %pred.store.if2923, label %pred.store.continue2924

pred.store.if2923:                                ; preds = %pred.store.continue2922
  %i.ave = getelementptr i8, ptr %i.ars, i64 %index
  %i.avf = getelementptr i8, ptr %i.ave, i64 26
  store i8 95, ptr %i.avf, align 1, !tbaa !31
  br label %pred.store.continue2924

pred.store.continue2924:                          ; preds = %pred.store.if2923, %pred.store.continue2922
  %i.avg = extractelement <16 x i1> %i.ase, i64 11
  br i1 %i.avg, label %pred.store.if2925, label %pred.store.continue2926

pred.store.if2925:                                ; preds = %pred.store.continue2924
  %i.avh = getelementptr i8, ptr %i.ars, i64 %index
  %i.avi = getelementptr i8, ptr %i.avh, i64 27
  store i8 95, ptr %i.avi, align 1, !tbaa !31
  br label %pred.store.continue2926

pred.store.continue2926:                          ; preds = %pred.store.if2925, %pred.store.continue2924
  %i.avj = extractelement <16 x i1> %i.ase, i64 12
  br i1 %i.avj, label %pred.store.if2927, label %pred.store.continue2928

pred.store.if2927:                                ; preds = %pred.store.continue2926
  %i.avk = getelementptr i8, ptr %i.ars, i64 %index
  %i.avl = getelementptr i8, ptr %i.avk, i64 28
  store i8 95, ptr %i.avl, align 1, !tbaa !31
  br label %pred.store.continue2928

pred.store.continue2928:                          ; preds = %pred.store.if2927, %pred.store.continue2926
  %i.avm = extractelement <16 x i1> %i.ase, i64 13
  br i1 %i.avm, label %pred.store.if2929, label %pred.store.continue2930

pred.store.if2929:                                ; preds = %pred.store.continue2928
  %i.avn = getelementptr i8, ptr %i.ars, i64 %index
  %i.avo = getelementptr i8, ptr %i.avn, i64 29
  store i8 95, ptr %i.avo, align 1, !tbaa !31
  br label %pred.store.continue2930

pred.store.continue2930:                          ; preds = %pred.store.if2929, %pred.store.continue2928
  %i.avp = extractelement <16 x i1> %i.ase, i64 14
  br i1 %i.avp, label %pred.store.if2931, label %pred.store.continue2932

pred.store.if2931:                                ; preds = %pred.store.continue2930
  %i.avq = getelementptr i8, ptr %i.ars, i64 %index
  %i.avr = getelementptr i8, ptr %i.avq, i64 30
  store i8 95, ptr %i.avr, align 1, !tbaa !31
  br label %pred.store.continue2932

pred.store.continue2932:                          ; preds = %pred.store.if2931, %pred.store.continue2930
  %i.avs = extractelement <16 x i1> %i.ase, i64 15
  br i1 %i.avs, label %pred.store.if2933, label %pred.store.continue2934

pred.store.if2933:                                ; preds = %pred.store.continue2932
  %i.avt = getelementptr i8, ptr %i.ars, i64 %index
  %i.avu = getelementptr i8, ptr %i.avt, i64 31
  store i8 95, ptr %i.avu, align 1, !tbaa !31
  br label %pred.store.continue2934

pred.store.continue2934:                          ; preds = %pred.store.if2933, %pred.store.continue2932
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.avv = icmp eq i64 %index.next, %n.vec
  br i1 %i.avv, label %middle.block, label %vector.body, !llvm.loop !607

middle.block:                                     ; preds = %pred.store.continue2934
  %cmp.n = icmp eq i64 %i.are, %n.vec
  br i1 %cmp.n, label %.preheader.i938, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.arz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph361.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2935 = and i64 %i.are, 8589934584         ; 4 uses
  %i.avw = trunc i64 %n.vec2935 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue2953, %vec.epilog.ph
  %index2936 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2954, %pred.store.continue2953 ] ; 9 uses
  %i.avx = getelementptr i8, ptr %i.ars, i64 %index2936 ; 2 uses
  %wide.load2937 = load <8 x i8>, ptr %i.avx, align 1, !tbaa !31
  %i.avy = icmp eq <8 x i8> %wide.load2937, splat (i8 45) ; 8 uses
  %i.avz = extractelement <8 x i1> %i.avy, i64 0
  br i1 %i.avz, label %pred.store.if2938, label %pred.store.continue2939

pred.store.if2938:                                ; preds = %vec.epilog.vector.body
  store i8 95, ptr %i.avx, align 1, !tbaa !31
  br label %pred.store.continue2939

pred.store.continue2939:                          ; preds = %pred.store.if2938, %vec.epilog.vector.body
  %i.awa = extractelement <8 x i1> %i.avy, i64 1
  br i1 %i.awa, label %pred.store.if2940, label %pred.store.continue2941

pred.store.if2940:                                ; preds = %pred.store.continue2939
  %i.awb = getelementptr i8, ptr %i.ars, i64 %index2936
  %i.awc = getelementptr i8, ptr %i.awb, i64 1
  store i8 95, ptr %i.awc, align 1, !tbaa !31
  br label %pred.store.continue2941

pred.store.continue2941:                          ; preds = %pred.store.if2940, %pred.store.continue2939
  %i.awd = extractelement <8 x i1> %i.avy, i64 2
  br i1 %i.awd, label %pred.store.if2942, label %pred.store.continue2943

pred.store.if2942:                                ; preds = %pred.store.continue2941
  %i.awe = getelementptr i8, ptr %i.ars, i64 %index2936
  %i.awf = getelementptr i8, ptr %i.awe, i64 2
  store i8 95, ptr %i.awf, align 1, !tbaa !31
  br label %pred.store.continue2943

pred.store.continue2943:                          ; preds = %pred.store.if2942, %pred.store.continue2941
  %i.awg = extractelement <8 x i1> %i.avy, i64 3
  br i1 %i.awg, label %pred.store.if2944, label %pred.store.continue2945

pred.store.if2944:                                ; preds = %pred.store.continue2943
  %i.awh = getelementptr i8, ptr %i.ars, i64 %index2936
  %i.awi = getelementptr i8, ptr %i.awh, i64 3
  store i8 95, ptr %i.awi, align 1, !tbaa !31
  br label %pred.store.continue2945

pred.store.continue2945:                          ; preds = %pred.store.if2944, %pred.store.continue2943
  %i.awj = extractelement <8 x i1> %i.avy, i64 4
  br i1 %i.awj, label %pred.store.if2946, label %pred.store.continue2947

pred.store.if2946:                                ; preds = %pred.store.continue2945
  %i.awk = getelementptr i8, ptr %i.ars, i64 %index2936
  %i.awl = getelementptr i8, ptr %i.awk, i64 4
  store i8 95, ptr %i.awl, align 1, !tbaa !31
  br label %pred.store.continue2947

pred.store.continue2947:                          ; preds = %pred.store.if2946, %pred.store.continue2945
  %i.awm = extractelement <8 x i1> %i.avy, i64 5
  br i1 %i.awm, label %pred.store.if2948, label %pred.store.continue2949

pred.store.if2948:                                ; preds = %pred.store.continue2947
  %i.awn = getelementptr i8, ptr %i.ars, i64 %index2936
  %i.awo = getelementptr i8, ptr %i.awn, i64 5
  store i8 95, ptr %i.awo, align 1, !tbaa !31
  br label %pred.store.continue2949

pred.store.continue2949:                          ; preds = %pred.store.if2948, %pred.store.continue2947
  %i.awp = extractelement <8 x i1> %i.avy, i64 6
  br i1 %i.awp, label %pred.store.if2950, label %pred.store.continue2951

pred.store.if2950:                                ; preds = %pred.store.continue2949
  %i.awq = getelementptr i8, ptr %i.ars, i64 %index2936
  %i.awr = getelementptr i8, ptr %i.awq, i64 6
  store i8 95, ptr %i.awr, align 1, !tbaa !31
  br label %pred.store.continue2951

pred.store.continue2951:                          ; preds = %pred.store.if2950, %pred.store.continue2949
  %i.aws = extractelement <8 x i1> %i.avy, i64 7
  br i1 %i.aws, label %pred.store.if2952, label %pred.store.continue2953

pred.store.if2952:                                ; preds = %pred.store.continue2951
  %i.awt = getelementptr i8, ptr %i.ars, i64 %index2936
  %i.awu = getelementptr i8, ptr %i.awt, i64 7
  store i8 95, ptr %i.awu, align 1, !tbaa !31
  br label %pred.store.continue2953

pred.store.continue2953:                          ; preds = %pred.store.if2952, %pred.store.continue2951
  %index.next2954 = add nuw i64 %index2936, 8     ; 2 uses
  %i.awv = icmp eq i64 %index.next2954, %n.vec2935
  br i1 %i.awv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !608

vec.epilog.middle.block:                          ; preds = %pred.store.continue2953
  %cmp.n2955 = icmp eq i64 %i.are, %n.vec2935
  br i1 %cmp.n2955, label %.preheader.i938, label %.lr.ph361.i.preheader

.lr.ph361.i.preheader:                            ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec2935, %vec.epilog.middle.block ]
  %.0132360.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %i.asa, %vec.epilog.iter.check ], [ %i.avw, %vec.epilog.middle.block ]
  br label %.lr.ph361.i

.preheader.i938:                                  ; preds = %bb.jt, %middle.block, %vec.epilog.middle.block, %RSTRING_PTR.exit224.i
  %i.aww = call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.814, ptr noundef %i.ars, i64 noundef %i.are) #35
  %.not203.i.a = icmp eq i32 %i.aww, 0
  br i1 %.not203.i.a, label %3, label %6

.lr.ph361.i:                                      ; preds = %.lr.ph361.i.preheader, %bb.jt
  %i.awx = phi i64 [ %i.axc, %bb.jt ], [ %.ph, %.lr.ph361.i.preheader ]
  %.0132360.i = phi i32 [ %i.axb, %bb.jt ], [ %.0132360.i.ph, %.lr.ph361.i.preheader ]
  %i.awy = getelementptr i8, ptr %i.ars, i64 %i.awx ; 2 uses
  %i.awz = load i8, ptr %i.awy, align 1, !tbaa !31
  %i.axa = icmp eq i8 %i.awz, 45
  br i1 %i.axa, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %.lr.ph361.i
  store i8 95, ptr %i.awy, align 1, !tbaa !31
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %.lr.ph361.i
  %i.axb = add i32 %.0132360.i, 1                 ; 2 uses
  %i.axc = sext i32 %i.axb to i64                 ; 2 uses
  %i.axd = icmp sgt i64 %i.are, %i.axc
  br i1 %i.axd, label %.lr.ph361.i, label %.preheader.i938, !llvm.loop !609

3:                                                ; preds = %.preheader.i938
  %4 = getelementptr i8, ptr @.str.814, i64 %i.are
  %5 = load i8, ptr %4, align 1, !tbaa !31
  %.not203.i = icmp eq i8 %5, 0
  br i1 %.not203.i, label %bb.ju, label %6

bb.ju:                                            ; preds = %bb.kf, %bb.ke, %bb.kd, %bb.kc, %3
  %.0133.lcssa.i = phi ptr [ @magic_comments, %3 ], [ getelementptr inbounds nuw (i8, ptr @magic_comments, i64 24), %bb.kc ], [ getelementptr inbounds nuw (i8, ptr @magic_comments, i64 48), %bb.kd ], [ getelementptr inbounds nuw (i8, ptr @magic_comments, i64 72), %bb.ke ], [ getelementptr inbounds nuw (i8, ptr @magic_comments, i64 96), %bb.kf ] ; 2 uses
  %.lcssa391.i = phi ptr [ @.str.814, %3 ], [ @.str.815, %bb.kc ], [ @.str.816, %bb.kd ], [ @.str.817, %bb.ke ], [ @.str.818, %bb.kf ]
  %i.axe = ptrtoint ptr %.0135.i to i64
  %i.axf = ptrtoint ptr %.0136.i to i64
  %i.axg = sub i64 %i.axe, %i.axf                 ; 2 uses
  %i.axh = getelementptr i8, ptr %.0133.lcssa.i, i64 16
  %i.axi = load ptr, ptr %i.axh, align 8, !tbaa !624 ; 2 uses
  %.not204.i = icmp eq ptr %i.axi, null
  br i1 %.not204.i, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.axj = call i64 %i.axi(ptr noundef %0, ptr noundef %.0136.i, i64 noundef %i.axg) #31, !inline_history !610
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %.0.i = phi i64 [ %i.axj, %bb.jv ], [ %i.axg, %bb.ju ] ; 4 uses
  %.not205.i = icmp eq i64 %.0137365.i, 0
  br i1 %.not205.i, label %bb.ka, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.axk = call i64 @rb_str_resize(i64 noundef %.0137365.i, i64 noundef %.0.i) #31 ; 0 uses
  %i.axl = inttoptr i64 %.0137365.i to ptr        ; 4 uses
  %i.axm = load i64, ptr %i.axl, align 8, !tbaa !30
  %i.axn = and i64 %i.axm, 8192
  %.not.i225.i940 = icmp eq i64 %i.axn, 0
  %i.axo = getelementptr i8, ptr %i.axl, i64 24   ; 2 uses
  br i1 %.not.i225.i940, label %RSTRING_PTR.exit226.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !31
  br label %RSTRING_PTR.exit226.i

RSTRING_PTR.exit226.i:                            ; preds = %bb.jy, %bb.jx
  %i.axq = phi ptr [ %i.axp, %bb.jy ], [ %i.axo, %bb.jx ]
  %.not.i227.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i227.i, label %ruby_nonempty_memcpy.exit229.i, label %bb.jz

bb.jz:                                            ; preds = %RSTRING_PTR.exit226.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.axq, ptr noundef nonnull readonly align 1 %.0136.i, i64 noundef range(i64 1, 0) %.0.i, i1 noundef false) #31
  br label %ruby_nonempty_memcpy.exit229.i

bb.ka:                                            ; preds = %bb.jw
  %i.axr = load ptr, ptr %i.aiw, align 8, !tbaa !180
  %i.axs = call i64 @rb_enc_str_new(ptr noundef %.0136.i, i64 noundef %.0.i, ptr noundef %i.axr) #31 ; 2 uses
  %.pre406.i = inttoptr i64 %i.axs to ptr
  br label %ruby_nonempty_memcpy.exit229.i

ruby_nonempty_memcpy.exit229.i:                   ; preds = %bb.ka, %bb.jz, %RSTRING_PTR.exit226.i
  %.pre-phi407.i = phi ptr [ %i.axl, %bb.jz ], [ %i.axl, %RSTRING_PTR.exit226.i ], [ %.pre406.i, %bb.ka ] ; 2 uses
  %.1138.i = phi i64 [ %.0137365.i, %bb.jz ], [ %.0137365.i, %RSTRING_PTR.exit226.i ], [ %i.axs, %bb.ka ]
  store ptr %i.aqj, ptr %i.ail, align 8, !tbaa !64
  store ptr %.9158.i, ptr %i.aij, align 8, !tbaa !192
  %i.axt = getelementptr i8, ptr %.0133.lcssa.i, i64 8
  %i.axu = load ptr, ptr %i.axt, align 8, !tbaa !625
  %i.axv = load i64, ptr %.pre-phi407.i, align 8, !tbaa !30
  %i.axw = and i64 %i.axv, 8192
  %.not.i230.i = icmp eq i64 %i.axw, 0
  %i.axx = getelementptr i8, ptr %.pre-phi407.i, i64 24 ; 2 uses
  br i1 %.not.i230.i, label %RSTRING_PTR.exit231.i, label %bb.kb

bb.kb:                                            ; preds = %ruby_nonempty_memcpy.exit229.i
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !31
  br label %RSTRING_PTR.exit231.i

RSTRING_PTR.exit231.i:                            ; preds = %bb.kb, %ruby_nonempty_memcpy.exit229.i
  %i.axz = phi ptr [ %i.axy, %bb.kb ], [ %i.axx, %ruby_nonempty_memcpy.exit229.i ]
  call void %i.axu(ptr noundef nonnull %0, ptr noundef nonnull %.lcssa391.i, ptr noundef %i.axz) #31, !inline_history !610
  br label %.loopexit.i936

6:                                                ; preds = %3, %.preheader.i938
  %7 = call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.815, ptr noundef %i.ars, i64 noundef %i.are) #35
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %bb.kc, label %11

bb.kc:                                            ; preds = %6
  %9 = getelementptr i8, ptr @.str.815, i64 %i.are
  %10 = load i8, ptr %9, align 1, !tbaa !31
  %.not203.1.i = icmp eq i8 %10, 0
  br i1 %.not203.1.i, label %bb.ju, label %11

11:                                               ; preds = %bb.kc, %6
  %12 = call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.816, ptr noundef %i.ars, i64 noundef %i.are) #35
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %bb.kd, label %16

bb.kd:                                            ; preds = %11
  %14 = getelementptr i8, ptr @.str.816, i64 %i.are
  %15 = load i8, ptr %14, align 1, !tbaa !31
  %.not203.2.i = icmp eq i8 %15, 0
  br i1 %.not203.2.i, label %bb.ju, label %16

16:                                               ; preds = %bb.kd, %11
  %17 = call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.817, ptr noundef %i.ars, i64 noundef %i.are) #35
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %bb.ke, label %21

bb.ke:                                            ; preds = %16
  %19 = getelementptr i8, ptr @.str.817, i64 %i.are
  %20 = load i8, ptr %19, align 1, !tbaa !31
  %.not203.3.i = icmp eq i8 %20, 0
  br i1 %.not203.3.i, label %bb.ju, label %21

21:                                               ; preds = %bb.ke, %16
  %22 = call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.818, ptr noundef %i.ars, i64 noundef %i.are) #35
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %bb.kf, label %.loopexit.i936

bb.kf:                                            ; preds = %21
  %24 = getelementptr i8, ptr @.str.818, i64 %i.are
  %25 = load i8, ptr %24, align 1, !tbaa !31
  %.not203.4.i = icmp eq i8 %25, 0
  br i1 %.not203.4.i, label %bb.ju, label %.loopexit.i936

.loopexit.i936:                                   ; preds = %bb.kf, %21, %RSTRING_PTR.exit231.i, %bb.jf
  %.14163.i = phi ptr [ %.12161.i, %RSTRING_PTR.exit231.i ], [ %.4153320.i, %bb.jf ], [ %.12161.i, %bb.kf ], [ %.12161.i, %21 ]
  %.14.i = phi i64 [ %.12.i, %RSTRING_PTR.exit231.i ], [ %.4148321.i, %bb.jf ], [ %.12.i, %bb.kf ], [ %.12.i, %21 ] ; 2 uses
  %.3142.i = phi i64 [ %.1140.i, %RSTRING_PTR.exit231.i ], [ %.0139364.i, %bb.jf ], [ %.1140.i, %bb.kf ], [ %.1140.i, %21 ]
  %.4.i = phi i64 [ %.1138.i, %RSTRING_PTR.exit231.i ], [ %.0137365.i, %bb.jf ], [ %.0137365.i, %bb.kf ], [ %.0137365.i, %21 ]
  %i.aya = icmp sgt i64 %.14.i, 0
  br i1 %i.aya, label %.preheader271.i, label %parser_magic_comment.exit

.loopexit:                                        ; preds = %bb.ix, %bb.iu, %bb.jf, %.critedge14.i, %.lr.ph357.i, %bb.ik, %bb.ir, %magic_comment_marker.exit214.i
  %i.ayb = load i32, ptr %i.e, align 8            ; 2 uses
  %i.ayc = and i32 %i.ayb, 128
  %.not.i944 = icmp eq i32 %i.ayc, 0
  br i1 %.not.i944, label %comment_at_top.exit, label %parser_magic_comment.exit

comment_at_top.exit:                              ; preds = %.loopexit
  %i.ayd = load i32, ptr %i.aix, align 8, !tbaa !376
  %i.aye = and i32 %i.ayb, 64
  %.not4.i = icmp eq i32 %i.aye, 0
  %i.ayf = select i1 %.not4.i, i32 1, i32 2
  %i.ayg = icmp eq i32 %i.ayd, %i.ayf
  br i1 %i.ayg, label %bb.kg, label %parser_magic_comment.exit

bb.kg:                                            ; preds = %comment_at_top.exit
  %i.ayh = load ptr, ptr %i.aij, align 8, !tbaa !192 ; 2 uses
  %i.ayi = load ptr, ptr %i.ain, align 8, !tbaa !324 ; 4 uses
  %i.ayj = ptrtoint ptr %i.ayi to i64             ; 3 uses
  %i.ayk = ptrtoint ptr %i.ayh to i64
  %i.ayl = sub i64 %i.ayj, %i.ayk
  %i.aym = icmp slt i64 %i.ayl, 7
  br i1 %i.aym, label %parser_magic_comment.exit, label %.lr.ph.i946

.lr.ph.i946:                                      ; preds = %bb.kg, %.backedge.i947
  %.03864.i = phi ptr [ %.038.be.i, %.backedge.i947 ], [ %i.ayh, %bb.kg ] ; 8 uses
  %i.ayn = getelementptr i8, ptr %.03864.i, i64 6 ; 6 uses
  %i.ayo = load i8, ptr %i.ayn, align 1, !tbaa !31 ; 3 uses
  switch i8 %i.ayo, label %bb.km [
    i8 67, label %.backedge.i947
    i8 99, label %.backedge.i947
    i8 79, label %bb.kh
    i8 111, label %bb.kh
    i8 68, label %bb.ki
    i8 100, label %bb.ki
    i8 73, label %bb.kj
    i8 105, label %bb.kj
    i8 78, label %bb.kk
    i8 110, label %bb.kk
    i8 71, label %bb.kl
    i8 103, label %bb.kl
    i8 61, label %bb.kn
    i8 58, label %bb.kn
  ]

.backedge.i947:                                   ; preds = %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %.lr.ph.i946, %.lr.ph.i946
  %.038.be.i = phi ptr [ %i.ayw, %bb.kl ], [ %i.ayn, %bb.km ], [ %i.ayn, %bb.kn ], [ %i.ays, %bb.kh ], [ %i.ayt, %bb.ki ], [ %i.ayu, %bb.kj ], [ %i.ayv, %bb.kk ], [ %i.ayn, %.lr.ph.i946 ], [ %i.ayn, %.lr.ph.i946 ] ; 2 uses
  %i.ayp = ptrtoint ptr %.038.be.i to i64
  %i.ayq = sub i64 %i.ayj, %i.ayp
  %i.ayr = icmp slt i64 %i.ayq, 7
  br i1 %i.ayr, label %parser_magic_comment.exit, label %.lr.ph.i946

bb.kh:                                            ; preds = %.lr.ph.i946, %.lr.ph.i946
  %i.ays = getelementptr i8, ptr %.03864.i, i64 5
  br label %.backedge.i947

bb.ki:                                            ; preds = %.lr.ph.i946, %.lr.ph.i946
  %i.ayt = getelementptr i8, ptr %.03864.i, i64 4
  br label %.backedge.i947

bb.kj:                                            ; preds = %.lr.ph.i946, %.lr.ph.i946
  %i.ayu = getelementptr i8, ptr %.03864.i, i64 3
  br label %.backedge.i947

bb.kk:                                            ; preds = %.lr.ph.i946, %.lr.ph.i946
  %i.ayv = getelementptr i8, ptr %.03864.i, i64 2
  br label %.backedge.i947

bb.kl:                                            ; preds = %.lr.ph.i946, %.lr.ph.i946
  %i.ayw = getelementptr i8, ptr %.03864.i, i64 1
  br label %.backedge.i947

bb.km:                                            ; preds = %.lr.ph.i946
  %i.ayx = sext i8 %i.ayo to i32
  %i.ayy = icmp ne i8 %i.ayo, 32
  %i.ayz = add nsw i32 %i.ayx, -14
  %i.aza = icmp ult i32 %i.ayz, -5
  %narrow.i.not.i959 = select i1 %i.ayy, i1 %i.aza, i1 false
  br i1 %narrow.i.not.i959, label %.backedge.i947, label %bb.kn

bb.kn:                                            ; preds = %bb.km, %.lr.ph.i946, %.lr.ph.i946
  %i.azb = phi i1 [ true, %bb.km ], [ false, %.lr.ph.i946 ], [ false, %.lr.ph.i946 ]
  %i.azc = call i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef nonnull %.03864.i, ptr noundef nonnull @.str.814, i64 noundef 6) #35
  %i.azd = icmp eq i32 %i.azc, 0
  br i1 %i.azd, label %.preheader57.i.preheader, label %.backedge.i947

.preheader57.i.preheader:                         ; preds = %bb.kn
  %i.aze = getelementptr i8, ptr %.03864.i, i64 7 ; 2 uses
  %.not46.i28652868 = icmp ult ptr %i.aze, %i.ayi
  br i1 %.not46.i28652868, label %.lr.ph2867, label %parser_magic_comment.exit

.lr.ph2867:                                       ; preds = %.preheader57.i.preheader, %.preheader57.i
  %i.azf = phi ptr [ %i.azp, %.preheader57.i ], [ %i.aze, %.preheader57.i.preheader ]
  %.2.i9492870 = phi i1 [ false, %.preheader57.i ], [ %i.azb, %.preheader57.i.preheader ]
  %.240.i2869 = phi ptr [ %i.azo, %.preheader57.i ], [ %i.ayn, %.preheader57.i.preheader ] ; 3 uses
  br label %bb.kp

bb.ko:                                            ; preds = %bb.kp
  %i.azg = getelementptr i8, ptr %i.azh, i64 1    ; 2 uses
  %.not46.i = icmp ult ptr %i.azg, %i.ayi
  br i1 %.not46.i, label %bb.kp, label %parser_magic_comment.exit, !llvm.loop !611

bb.kp:                                            ; preds = %.lr.ph2867, %bb.ko
  %i.azh = phi ptr [ %i.azf, %.lr.ph2867 ], [ %i.azg, %bb.ko ] ; 8 uses
  %.3.i9502866 = phi ptr [ %.240.i2869, %.lr.ph2867 ], [ %i.azh, %bb.ko ] ; 2 uses
  %i.azi = load i8, ptr %i.azh, align 1, !tbaa !31 ; 3 uses
  %i.azj = sext i8 %i.azi to i32
  %i.azk = icmp ne i8 %i.azi, 32
  %i.azl = add nsw i32 %i.azj, -14
  %i.azm = icmp ult i32 %i.azl, -5
  %narrow.i52.not.i = select i1 %i.azk, i1 %i.azm, i1 false
  br i1 %narrow.i52.not.i, label %bb.kq, label %bb.ko, !llvm.loop !611

bb.kq:                                            ; preds = %bb.kp
  br i1 %.2.i9492870, label %bb.kr, label %.preheader.i951

.preheader.i951:                                  ; preds = %bb.kq
  %scevgep.i = getelementptr i8, ptr %.240.i2869, i64 %i.ayj
  %.240.lcssa7274.i = ptrtoaddr ptr %.240.i2869 to i64
  %i.azn = sub i64 0, %.240.lcssa7274.i
  %scevgep75.i = getelementptr i8, ptr %scevgep.i, i64 %i.azn ; 2 uses
  br label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  switch i8 %i.azi, label %parser_magic_comment.exit [
    i8 61, label %.preheader57.i
    i8 58, label %.preheader57.i
  ]

.preheader57.i:                                   ; preds = %bb.kr, %bb.kr
  %i.azo = getelementptr i8, ptr %.3.i9502866, i64 2
  %i.azp = getelementptr i8, ptr %.3.i9502866, i64 3 ; 2 uses
  %.not46.i2865 = icmp ult ptr %i.azp, %i.ayi
  br i1 %.not46.i2865, label %.lr.ph2867, label %parser_magic_comment.exit

bb.ks:                                            ; preds = %bb.ku, %.preheader.i951
  %.4.i952 = phi ptr [ %i.azw, %bb.ku ], [ %i.azh, %.preheader.i951 ] ; 3 uses
  %i.azq = load i8, ptr %.4.i952, align 1, !tbaa !31 ; 2 uses
  switch i8 %i.azq, label %bb.kt [
    i8 45, label %bb.ku
    i8 95, label %bb.ku
  ]

bb.kt:                                            ; preds = %bb.ks
  %i.azr = sext i8 %i.azq to i32                  ; 2 uses
  %i.azs = and i32 %i.azr, -33
  %i.azt = add nsw i32 %i.azs, -91
  %narrow.i.i.i958 = icmp ult i32 %i.azt, -26
  %i.azu = add nsw i32 %i.azr, -58
  %i.azv = icmp ult i32 %i.azu, -10
  %narrow.i53.not.i = select i1 %narrow.i.i.i958, i1 %i.azv, i1 false
  br i1 %narrow.i53.not.i, label %.critedge.i954, label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.ks, %bb.ks
  %i.azw = getelementptr i8, ptr %.4.i952, i64 1  ; 2 uses
  %exitcond.not.i953 = icmp eq ptr %i.azw, %scevgep75.i
  br i1 %exitcond.not.i953, label %.critedge.i954, label %bb.ks, !llvm.loop !612

.critedge.i954:                                   ; preds = %bb.ku, %bb.kt
  %.5.i955 = phi ptr [ %scevgep75.i, %bb.ku ], [ %.4.i952, %bb.kt ] ; 2 uses
  %i.azx = ptrtoint ptr %.5.i955 to i64
  %i.azy = ptrtoint ptr %i.azh to i64
  %i.azz = sub i64 %i.azx, %i.azy
  %i.baa = call i64 @parser_encode_length(ptr poison, ptr noundef nonnull %i.azh, i64 noundef %i.azz)
  %i.bab = call i64 @rb_str_new(ptr noundef nonnull %i.azh, i64 noundef %i.baa) #31 ; 2 uses
  store ptr %i.azh, ptr %i.ail, align 8, !tbaa !64
  store ptr %.5.i955, ptr %i.aij, align 8, !tbaa !192
  %i.bac = inttoptr i64 %i.bab to ptr             ; 2 uses
  %i.bad = load i64, ptr %i.bac, align 8, !tbaa !30
  %i.bae = and i64 %i.bad, 8192
  %.not.i.i956 = icmp eq i64 %i.bae, 0
  %i.baf = getelementptr i8, ptr %i.bac, i64 24   ; 2 uses
  br i1 %.not.i.i956, label %RSTRING_PTR.exit.i957, label %bb.kv

bb.kv:                                            ; preds = %.critedge.i954
  %i.bag = load ptr, ptr %i.baf, align 8, !tbaa !31
  br label %RSTRING_PTR.exit.i957

RSTRING_PTR.exit.i957:                            ; preds = %bb.kv, %.critedge.i954
  %i.bah = phi ptr [ %i.bag, %bb.kv ], [ %i.baf, %.critedge.i954 ]
  call fastcc void @parser_set_encode(ptr noundef nonnull %0, ptr noundef %i.bah)
  %i.bai = call i64 @rb_str_resize(i64 noundef %i.bab, i64 noundef 0) #31 ; 0 uses
  br label %parser_magic_comment.exit

parser_magic_comment.exit:                        ; preds = %.loopexit.i936, %.critedge4.i, %.backedge.i947, %bb.kr, %.preheader57.i, %bb.jb, %bb.jd, %bb.je, %bb.ko, %.preheader57.i.preheader, %.loopexit, %RSTRING_PTR.exit.i957, %bb.kg, %magic_comment_marker.exit.thread.i, %comment_at_top.exit
  store ptr %i.amh, ptr %i.ail, align 8, !tbaa !64
  %i.baj = load ptr, ptr %i.ain, align 8, !tbaa !324
  store ptr %i.baj, ptr %i.aij, align 8, !tbaa !192
  call fastcc void @parser_dispatch_scan_event(ptr noundef %0, i32 noundef 352, i32 noundef 10559)
  br label %bb.kw

bb.kw:                                            ; preds = %bb.hw, %nextc0.exit.thread1155, %parser_magic_comment.exit
  %.1701 = phi i32 [ 1, %parser_magic_comment.exit ], [ %.0700, %bb.hw ], [ %.0700, %nextc0.exit.thread1155 ] ; 5 uses
  %i.bak = load i32, ptr %i.e, align 8            ; 2 uses
  %i.bal = and i32 %i.bak, -129
  %i.bam = or disjoint i32 %i.bal, %i.aie
  store i32 %i.bam, ptr %i.e, align 8
  %i.ban = load ptr, ptr %i.aiu, align 8, !tbaa !193 ; 3 uses
end_hunk_1
