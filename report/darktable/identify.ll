Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/identify?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN6LibRaw21identify_finetune_dcrEPcxx:bb.a
    i16 12, label %bb.nl
    i16 0, label %bb.nm
    i16 27, label %bb.nn
  ]

bb.nk:                                            ; preds = %bb.nj
  %i.aqp = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 4692, ptr %i.aqp, align 2, !tbaa !125
  br label %.loopexit

bb.nl:                                            ; preds = %bb.nj
  %i.aqq = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 4624, ptr %i.aqq, align 2, !tbaa !125
  %i.aqr = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 3080, ptr %i.aqr, align 4, !tbaa !126
  br label %.loopexit

bb.nm:                                            ; preds = %bb.nj
  %i.aqs = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 3516, ptr %i.aqs, align 2, !tbaa !125
  %i.aqt = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 2344, ptr %i.aqt, align 4, !tbaa !126
  br label %.loopexit

bb.nn:                                            ; preds = %bb.nj
  %i.aqu = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.aqv = load i16, ptr %i.aqu, align 2, !tbaa !125
  %i.aqw = add i16 %i.aqv, -12
  store i16 %i.aqw, ptr %i.aqu, align 2, !tbaa !125
  br label %.loopexit

bb.no:                                            ; preds = %bb.nj
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 5596 ; 2 uses
  %i.aqy = load i32, ptr %i.aqx, align 4, !tbaa !139
  %i.aqz = or i32 %i.aqy, 33554432
  store i32 %i.aqz, ptr %i.aqx, align 4, !tbaa !139
  br label %.loopexit

bb.np:                                            ; preds = %bb.mt, %bb.mt, %bb.mt
  switch i16 %i.and, label %bb.ns [
    i16 6656, label %bb.nq
    i16 6272, label %bb.nr
  ]

bb.nq:                                            ; preds = %bb.np
  %i.ara = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 6240, ptr %i.ara, align 2, !tbaa !125
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 4168, ptr %i.arb, align 4, !tbaa !126
  br label %.loopexit

bb.nr:                                            ; preds = %bb.np
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 6240, ptr %i.arc, align 2, !tbaa !125
  br label %.loopexit

bb.ns:                                            ; preds = %bb.np
  %i.ard = add i16 %i.and, -32
  %i.are = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.ard, ptr %i.are, align 2, !tbaa !125
  br label %.loopexit

bb.nt:                                            ; preds = %bb.mt
  %i.arf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.alx, ptr noundef nonnull dereferenceable(10) @.str.150) #20
  %.not337 = icmp eq i32 %i.arf, 0
  br i1 %.not337, label %bb.nu, label %.loopexit

bb.nu:                                            ; preds = %bb.nt
  %i.arg = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.arh = load i16, ptr %i.arg, align 2, !tbaa !125 ; 2 uses
  %i.ari = icmp eq i16 %i.arh, 3880
  %i.arj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ark = load i16, ptr %i.arj, align 4, !tbaa !126 ; 2 uses
  br i1 %i.ari, label %bb.nv, label %bb.nw

bb.nv:                                            ; preds = %bb.nu
  %i.arl = add i16 %i.ark, -1
  store i16 %i.arl, ptr %i.arj, align 4, !tbaa !126
  %i.arm = add i16 %i.and, 1                      ; 2 uses
  store i16 %i.arm, ptr %i.anc, align 2, !tbaa !123
  br label %bb.nx

bb.nw:                                            ; preds = %bb.nu
  %i.arn = add i16 %i.ark, -4
  store i16 %i.arn, ptr %i.arj, align 4, !tbaa !126
  %i.aro = add i16 %i.arh, -4
  %i.arp = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 19789, ptr %i.arp, align 8, !tbaa !102
  %i.arq = getelementptr inbounds nuw i8, ptr %0, i64 381860
  store i32 2, ptr %i.arq, align 4, !tbaa !130
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.nv
  %.sink531 = phi i16 [ %i.arm, %bb.nv ], [ %i.aro, %bb.nw ]
  store i16 %.sink531, ptr %i.arg, align 2, !tbaa !125
  %i.arr = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1633771873, ptr %i.arr, align 8, !tbaa !82
  br label %.loopexit

.thread399:                                       ; preds = %bb.jz, %bb.li
  %i.ars = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 26 uses
  %i.art = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.151) #20
  %.not282 = icmp eq i32 %i.art, 0
  br i1 %.not282, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %.thread399
  %i.aru = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 4, ptr %i.aru, align 8, !tbaa !128
  %i.arv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 32, ptr %i.arw, align 2, !tbaa !129
  %i.arx = load <2 x i16>, ptr %i.arv, align 4, !tbaa !85
  %i.ary = add <2 x i16> %i.arx, <i16 -4, i16 -32>
  store <2 x i16> %i.ary, ptr %i.arv, align 4, !tbaa !85
  tail call void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512) %0, double noundef 0.000000e+00, double noundef 7.000000e+00, i32 noundef 1, i32 noundef 255)
  br label %.loopexit

bb.nz:                                            ; preds = %.thread399
  %i.arz = add i32 %i.afe, -3                     ; 2 uses
  %i.asa = tail call i32 @llvm.fshl.i32(i32 %i.arz, i32 %i.arz, i32 31)
  switch i32 %i.asa, label %.thread405 [
    i32 13, label %bb.oa
    i32 16, label %bb.pl
    i32 0, label %bb.pn
    i32 27, label %bb.pt
  ]

bb.oa:                                            ; preds = %bb.nz
  %i.asb = tail call i32 @strncasecmp(ptr noundef nonnull %i.ars, ptr noundef nonnull @.str.152, i64 noundef 9) #20
  %.not301 = icmp eq i32 %i.asb, 0
  br i1 %.not301, label %bb.ob, label %bb.oc

bb.ob:                                            ; preds = %bb.oa
  %i.asc = getelementptr inbounds nuw i8, ptr %0, i64 381760 ; 2 uses
  %i.asd = load i64, ptr %i.asc, align 8, !tbaa !118
  %i.ase = icmp slt i64 %i.asd, 86016
  %i.asf = select i1 %i.ase, i64 86016, i64 94208
  store i64 %i.asf, ptr %i.asc, align 8, !tbaa !118
  store i64 ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), ptr %i.aeu, align 8, !tbaa !119
  store i64 0, ptr %.elt278, align 8, !tbaa !119
  br label %.loopexit

bb.oc:                                            ; preds = %bb.oa
  %i.asg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.48) #20
  %.not303 = icmp eq i32 %i.asg, 0
  br i1 %.not303, label %bb.of, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.ash = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.153) #20
  %.not304 = icmp eq i32 %i.ash, 0
  br i1 %.not304, label %bb.of, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.asi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.154) #20
  %.not305 = icmp eq i32 %i.asi, 0
  br i1 %.not305, label %bb.of, label %bb.om

bb.of:                                            ; preds = %bb.oe, %bb.od, %bb.oc
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.ask = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 18761, ptr %i.ask, align 8, !tbaa !102
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.asm = load i32, ptr %i.asl, align 8, !tbaa !82
  %.not306 = icmp eq i32 %i.asm, 0
  br i1 %.not306, label %bb.oi, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.asn = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.aso = load i64, ptr %i.asn, align 8, !tbaa !118 ; 2 uses
  %.not307 = icmp eq i64 %i.aso, 0
  br i1 %.not307, label %bb.oi, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.asp = load ptr, ptr %i.asj, align 8, !tbaa !103 ; 2 uses
  %i.asq = icmp slt i64 %i.aso, 4096
  %i.asr = select i1 %i.asq, i64 168, i64 5252
  %i.ass = load ptr, ptr %i.asp, align 8, !tbaa !105
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 32
  %i.asu = load ptr, ptr %i.ast, align 8
  %i.asv = tail call noundef i32 %i.asu(ptr noundef nonnull align 8 dereferenceable(8) %i.asp, i64 noundef %i.asr, i32 noundef 0), !call_target !114 ; 0 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %0, i64 5600
  tail call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.asw, i32 noundef 256)
  br label %bb.oj

bb.oi:                                            ; preds = %bb.og, %bb.of
  tail call void @_ZN6LibRaw11gamma_curveEddii(ptr noundef nonnull align 8 dereferenceable(768512) %0, double noundef 0.000000e+00, double noundef 3.875000e+00, i32 noundef 1, i32 noundef 255)
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %bb.oh
  %i.asx = load i32, ptr %i.asl, align 8, !tbaa !82
  %.not308 = icmp eq i32 %i.asx, 0
  br i1 %.not308, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  %i.asy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.153) #20
  %.not309 = icmp eq i32 %i.asy, 0
  %i.asz = select i1 %.not309, { i64, i64 } { i64 ptrtoint (ptr @_ZN6LibRaw19kodak_c330_load_rawEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN6LibRaw19kodak_c603_load_rawEv to i64), i64 0 }
  br label %bb.ol

bb.ol:                                            ; preds = %bb.oj, %bb.ok
  %i.ata = phi { i64, i64 } [ %i.asz, %bb.ok ], [ { i64 ptrtoint (ptr @_ZN6LibRaw18eight_bit_load_rawEv to i64), i64 0 }, %bb.oj ] ; 2 uses
  %.elt = extractvalue { i64, i64 } %i.ata, 0
  store i64 %.elt, ptr %i.aeu, align 8, !tbaa !119
  %.elt311 = extractvalue { i64, i64 } %i.ata, 1
  store i64 %.elt311, ptr %.elt278, align 8, !tbaa !119
  %i.atb = getelementptr inbounds nuw i8, ptr %0, i64 381836 ; 2 uses
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !127
  %i.atd = icmp ugt i32 %i.atc, 16
  %i.ate = zext i1 %i.atd to i32
  %i.atf = getelementptr inbounds nuw i8, ptr %0, i64 381860
  store i32 %i.ate, ptr %i.atf, align 4, !tbaa !130
  store i32 8, ptr %i.atb, align 4, !tbaa !127
  br label %.loopexit

bb.om:                                            ; preds = %bb.oe
  %i.atg = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(7) @.str.155, i64 noundef 6) #20
  %.not312 = icmp eq i32 %i.atg, 0
  br i1 %.not312, label %bb.op, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.ath = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(7) @.str.156, i64 noundef 6) #20
  %.not313 = icmp eq i32 %i.ath, 0
  br i1 %.not313, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.ati = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.157, i64 noundef 4) #20
  %.not314 = icmp eq i32 %i.ati, 0
  br i1 %.not314, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo, %bb.on, %bb.om
  %i.atj = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !125
  %i.atl = add i16 %i.atk, -4
  store i16 %i.atl, ptr %i.atj, align 2, !tbaa !125
  %i.atm = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 2, ptr %i.atm, align 2, !tbaa !129
  br label %bb.ov

bb.oq:                                            ; preds = %bb.oo
  %i.atn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(8) @.str.158) #20
  %.not315 = icmp eq i32 %i.atn, 0
  br i1 %.not315, label %bb.or, label %bb.os

bb.or:                                            ; preds = %bb.oq
  %i.ato = getelementptr inbounds nuw i8, ptr %0, i64 153088
  store i32 214, ptr %i.ato, align 8, !tbaa !95
  br label %bb.ov

bb.os:                                            ; preds = %bb.oq
  %i.atp = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(11) @.str.159) #20
  %.not316 = icmp eq i32 %i.atp, 0
  br i1 %.not316, label %bb.ot, label %bb.ov

bb.ot:                                            ; preds = %bb.os
  %i.atq = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1633771873, ptr %i.atq, align 8, !tbaa !82
  %i.atr = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.ats = load i32, ptr %i.atr, align 8, !tbaa !95
  %.not317 = icmp eq i32 %i.ats, 0
  br i1 %.not317, label %bb.ou, label %bb.ov

bb.ou:                                            ; preds = %bb.ot
  %i.att = getelementptr inbounds nuw i8, ptr %0, i64 6000
  %i.atu = load i16, ptr %i.att, align 8, !tbaa !85
  %i.atv = zext i16 %i.atu to i32
  store i32 %i.atv, ptr %i.atr, align 8, !tbaa !95
  br label %bb.ov

bb.ov:                                            ; preds = %bb.or, %bb.ot, %bb.ou, %bb.os, %bb.op
  %i.atw = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.atx = load i32, ptr %i.atw, align 8, !tbaa !82
  %i.aty = icmp eq i32 %i.atx, -1
  br i1 %i.aty, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  store i32 1633771873, ptr %i.atw, align 8, !tbaa !82
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ow, %bb.ov
  %i.atz = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aua = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.atz, ptr noundef nonnull dereferenceable(4) @.str.160) #20
  %.not318 = icmp eq i32 %i.aua, 0
  br i1 %.not318, label %bb.oy, label %bb.oz

bb.oy:                                            ; preds = %bb.ox
  %i.aub = getelementptr inbounds nuw i8, ptr %0, i64 620
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.aub, ptr noundef nonnull align 1 dereferenceable(5) @.str.161, i64 5, i1 false) #19
  br label %bb.oz

bb.oz:                                            ; preds = %bb.oy, %bb.ox
  %i.auc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.162) #20
  %.not319 = icmp eq i32 %i.auc, 0
  br i1 %.not319, label %bb.pa, label %sub_0468

bb.pa:                                            ; preds = %bb.oz
  %i.aud = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 15424, ptr %i.aud, align 8, !tbaa !118
  br label %sub_0468

sub_0468:                                         ; preds = %bb.oz, %bb.pa
  %i.aue = load i8, ptr %i.ars, align 4
  %.not506 = icmp eq i8 %i.aue, 68
  br i1 %.not506, label %sub_1469, label %.tail467.thread

sub_1469:                                         ; preds = %sub_0468
  %i.auf = getelementptr inbounds nuw i8, ptr %0, i64 269
  %i.aug = load i8, ptr %i.auf, align 1
  %.not507 = icmp eq i8 %i.aug, 67
  br i1 %.not507, label %.tail467, label %.tail467.thread

.tail467:                                         ; preds = %sub_1469
  %i.auh = getelementptr inbounds nuw i8, ptr %0, i64 270
  %i.aui = load i8, ptr %i.auh, align 2
  %i.auj = icmp eq i8 %i.aui, 50
  br i1 %i.auj, label %bb.pb, label %.tail467.thread

bb.pb:                                            ; preds = %.tail467
  %i.auk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aul = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 242, ptr %i.aul, align 4, !tbaa !126
  store i16 244, ptr %i.auk, align 8, !tbaa !124
  %i.aum = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(6) @.str.164, i64 noundef 5) #20
  %.not321 = icmp eq i32 %i.aum, 0
  br i1 %.not321, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  %i.aun = getelementptr inbounds nuw i8, ptr %0, i64 192688
  store float 1.000000e+02, ptr %i.aun, align 8, !tbaa !239
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb
  %i.auo = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(6) @.str.165, i64 noundef 5) #20
  %.not322 = icmp eq i32 %i.auo, 0
  br i1 %.not322, label %bb.pe, label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %i.aup = getelementptr inbounds nuw i8, ptr %0, i64 192688
  store float 7.000000e+01, ptr %i.aup, align 8, !tbaa !239
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd
  %i.auq = icmp slt i64 %3, 100000                ; 3 uses
  %.sink534 = select i1 %i.auq, i16 256, i16 512
  %.sink533 = select i1 %i.auq, i16 249, i16 501
  %.sink532 = select i1 %i.auq, double f0x3FF4BBCD47A00AF7, double f0x3FE46E0C46F4C1D3
  %i.aur = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %.sink534, ptr %i.aur, align 2, !tbaa !123
  %i.aus = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %.sink533, ptr %i.aus, align 2, !tbaa !125
  %i.aut = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sink532, ptr %i.aut, align 8, !tbaa !98
  %i.auu = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 1, ptr %i.auu, align 2, !tbaa !129
  %i.auv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 1, ptr %i.auv, align 8, !tbaa !128
  %i.auw = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 4, ptr %i.auw, align 4, !tbaa !99
  store i32 -1920103027, ptr %i.atw, align 8, !tbaa !82
  tail call void @_ZN6LibRaw12simple_coeffEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1)
  %i.aux = getelementptr inbounds nuw i8, ptr %0, i64 153272
  store <2 x float> <float 1.179000e+00, float 1.209000e+00>, ptr %i.aux, align 8, !tbaa !90
  %i.auy = getelementptr inbounds nuw i8, ptr %0, i64 153280
  store float 1.036000e+00, ptr %i.auy, align 8, !tbaa !90
  store i64 ptrtoint (ptr @_ZN6LibRaw18eight_bit_load_rawEv to i64), ptr %i.aeu, align 8, !tbaa !119
  store i64 0, ptr %.elt278, align 8, !tbaa !119
  br label %.loopexit

.tail467.thread:                                  ; preds = %sub_1469, %sub_0468, %.tail467
  %i.auz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.166) #20
  %.not324 = icmp eq i32 %i.auz, 0
  br i1 %.not324, label %.loopexit.loopexit, label %bb.pg

.loopexit.loopexit:                               ; preds = %.tail467.thread
  %i.ava = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 512, ptr %i.ava, align 4, !tbaa !126
  %i.avb = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 768, ptr %i.avb, align 2, !tbaa !125
  %i.avc = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 1152, ptr %i.avc, align 8, !tbaa !118
  store i64 ptrtoint (ptr @_ZN6LibRaw19kodak_radc_load_rawEv to i64), ptr %i.aeu, align 8, !tbaa !119
  store i64 0, ptr %.elt278, align 8, !tbaa !119
  %i.avd = getelementptr inbounds nuw i8, ptr %0, i64 381836
  store i32 12, ptr %i.avd, align 4, !tbaa !127
  %i.ave = getelementptr inbounds nuw i8, ptr %0, i64 153252
  store <4 x float> splat (float 1.000000e+00), ptr %i.ave, align 4, !tbaa !90
  br label %.loopexit

bb.pg:                                            ; preds = %.tail467.thread
  %i.avf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ars, ptr noundef nonnull dereferenceable(5) @.str.167) #20
  %.not326 = icmp eq i32 %i.avf, 0
  br i1 %.not326, label %.loopexit.loopexit508, label %bb.ph

.loopexit.loopexit508:                            ; preds = %bb.pg
  %i.avg = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 512, ptr %i.avg, align 4, !tbaa !126
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 768, ptr %i.avh, align 2, !tbaa !125
  %i.avi = getelementptr inbounds nuw i8, ptr %0, i64 192688
  store float 8.400000e+01, ptr %i.avi, align 8, !tbaa !239
  %i.avj = getelementptr inbounds nuw i8, ptr %0, i64 381760
  store i64 19712, ptr %i.avj, align 8, !tbaa !118
  store i64 ptrtoint (ptr @_ZN6LibRaw19kodak_radc_load_rawEv to i64), ptr %i.aeu, align 8, !tbaa !119
  store i64 0, ptr %.elt278, align 8, !tbaa !119
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 153252
  store <4 x float> splat (float 1.000000e+00), ptr %i.avk, align 4, !tbaa !90
end_hunk_0
