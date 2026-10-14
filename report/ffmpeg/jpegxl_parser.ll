Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpegxl_parser?download=true
inline.NumInlined: 192
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@read_distribution_bundle:bb.a
  %i.arc = add i32 %spec.select.i203.i, 3
  %i.ard = call i32 @llvm.umin.i32(i32 %i.aif, i32 %i.arc) ; 5 uses
  store i32 %i.ard, ptr %i.s, align 8, !tbaa !21
  %.not.i.i172.i = icmp eq i32 %i.arb, 0
  br i1 %.not.i.i172.i, label %get_bitsz.exit.i173.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.are = lshr i32 %i.ard, 3
  %i.arf = zext nneg i32 %i.are to i64
  %i.arg = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.arf
  %i.arh = load i32, ptr %i.arg, align 1, !tbaa !15
  %i.ari = and i32 %i.ard, 7
  %i.arj = lshr i32 %i.arh, %i.ari
  %i.ark = sub nuw nsw i32 32, %i.arb
  %i.arl = lshr i32 -1, %i.ark
  %i.arm = and i32 %i.arj, %i.arl
  %i.arn = add i32 %i.arb, %i.ard
  %i.aro = call i32 @llvm.umin.i32(i32 %i.aif, i32 %i.arn) ; 2 uses
  store i32 %i.aro, ptr %i.s, align 8, !tbaa !21
  br label %get_bitsz.exit.i173.i

get_bitsz.exit.i173.i:                            ; preds = %bb.cs, %bb.cr
  %.promoted226253.i = phi i32 [ %i.aro, %bb.cs ], [ %i.ard, %bb.cr ]
  %i.arp = phi i32 [ %i.arm, %bb.cs ], [ 0, %bb.cr ]
  %i.arq = shl nuw nsw i32 1, %i.arb
  %i.arr = or i32 %i.arp, %i.arq
  %i.ars = add nuw nsw i32 %i.arr, 3
  br label %jxl_u8.exit175.i

jxl_u8.exit175.i:                                 ; preds = %get_bitsz.exit.i173.i, %bb.cq
  %.promoted226.i = phi i32 [ %.promoted226253.i, %get_bitsz.exit.i173.i ], [ %spec.select.i203.i, %bb.cq ]
  %.0.i174.i = phi i32 [ %i.ars, %get_bitsz.exit.i173.i ], [ 3, %bb.cq ] ; 5 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ahx, i64 16
  store i32 %.0.i174.i, ptr %i.art, align 8, !tbaa !147
  %i.aru = icmp sgt i32 %.0.i174.i, %i.ahz
  br i1 %i.aru, label %populate_distribution.exit.thread, label %.lr.ph225.i

._crit_edge.i171:                                 ; preds = %bb.cx
  %i.arv = icmp slt i32 %.1136.i, 0
  br i1 %i.arv, label %populate_distribution.exit.thread, label %bb.cy

.lr.ph225.i:                                      ; preds = %jxl_u8.exit175.i, %bb.cx
  %i.arw = phi i32 [ %i.aui, %bb.cx ], [ %.promoted226.i, %jxl_u8.exit175.i ] ; 3 uses
  %.0122224.i = phi i32 [ %i.auj, %bb.cx ], [ 0, %jxl_u8.exit175.i ] ; 4 uses
  %.0135223.i = phi i32 [ %.1136.i, %bb.cx ], [ -1, %jxl_u8.exit175.i ] ; 2 uses
  %.0137222.i = phi i32 [ %.1138.i, %bb.cx ], [ -1, %jxl_u8.exit175.i ] ; 3 uses
  %i.arx = lshr i32 %i.arw, 3
  %i.ary = zext nneg i32 %i.arx to i64
  %i.arz = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.ary
  %i.asa = load i32, ptr %i.arz, align 1, !tbaa !15
  %i.asb = and i32 %i.arw, 7
  %i.asc = lshr i32 %i.asa, %i.asb
  %i.asd = and i32 %i.asc, 127                    ; 2 uses
  %i.ase = zext nneg i32 %i.asd to i64
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr @dist_prefix_table, i64 %i.ase ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asf, i64 2
  %i.ash = load i16, ptr %i.asg, align 2, !tbaa !15
  %i.asi = sext i16 %i.ash to i32
  %i.asj = load i16, ptr %i.asf, align 4, !tbaa !15 ; 2 uses
  %i.ask = add i32 %i.arw, %i.asi
  %i.asl = call i32 @llvm.umin.i32(i32 %i.aif, i32 %i.ask) ; 6 uses
  store i32 %i.asl, ptr %i.s, align 8, !tbaa !21
  %i.asm = trunc i16 %i.asj to i8
  %i.asn = zext nneg i32 %.0122224.i to i64       ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.asn
  store i8 %i.asm, ptr %i.aso, align 1, !tbaa !15
  %i.asp = icmp eq i32 %i.asd, 65
  br i1 %i.asp, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %.lr.ph225.i
  %i.asq = lshr i32 %i.asl, 3
  %i.asr = zext nneg i32 %i.asq to i64
  %i.ass = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.asr
  %i.ast = load i8, ptr %i.ass, align 1, !tbaa !15
  %i.asu = icmp slt i32 %i.asl, %i.aif
  %i.asv = zext i1 %i.asu to i32
  %spec.select.i204.i = add i32 %i.asl, %i.asv    ; 5 uses
  %i.asw = zext i8 %i.ast to i32
  %i.asx = and i32 %i.asl, 7
  store i32 %spec.select.i204.i, ptr %i.s, align 8, !tbaa !21
  %i.asy = shl nuw nsw i32 1, %i.asx
  %i.asz = and i32 %i.asy, %i.asw
  %.not.i170.i = icmp eq i32 %i.asz, 0
  br i1 %.not.i170.i, label %jxl_u8.exit.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ata = lshr i32 %spec.select.i204.i, 3
  %i.atb = zext nneg i32 %i.ata to i64
  %i.atc = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.atb
  %i.atd = load i32, ptr %i.atc, align 1, !tbaa !15
  %i.ate = and i32 %spec.select.i204.i, 7
  %i.atf = lshr i32 %i.atd, %i.ate
  %i.atg = and i32 %i.atf, 7                      ; 4 uses
  %i.ath = add i32 %spec.select.i204.i, 3
  %i.ati = call i32 @llvm.umin.i32(i32 %i.aif, i32 %i.ath) ; 5 uses
  store i32 %i.ati, ptr %i.s, align 8, !tbaa !21
  %.not.i.i.i176 = icmp eq i32 %i.atg, 0
  br i1 %.not.i.i.i176, label %get_bitsz.exit.i.i177, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.atj = lshr i32 %i.ati, 3
  %i.atk = zext nneg i32 %i.atj to i64
  %i.atl = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.atk
  %i.atm = load i32, ptr %i.atl, align 1, !tbaa !15
  %i.atn = and i32 %i.ati, 7
  %i.ato = lshr i32 %i.atm, %i.atn
  %i.atp = sub nuw nsw i32 32, %i.atg
  %i.atq = lshr i32 -1, %i.atp
  %i.atr = and i32 %i.ato, %i.atq
  %i.ats = add i32 %i.atg, %i.ati
  %i.att = call i32 @llvm.umin.i32(i32 %i.aif, i32 %i.ats) ; 2 uses
  store i32 %i.att, ptr %i.s, align 8, !tbaa !21
  br label %get_bitsz.exit.i.i177

get_bitsz.exit.i.i177:                            ; preds = %bb.cv, %bb.cu
  %i.atu = phi i32 [ %i.att, %bb.cv ], [ %i.ati, %bb.cu ]
  %i.atv = phi i32 [ %i.atr, %bb.cv ], [ 0, %bb.cu ]
  %i.atw = shl nuw nsw i32 1, %i.atg
  %i.atx = or i32 %i.atv, %i.atw
  %i.aty = trunc nuw i32 %i.atx to i8
  br label %jxl_u8.exit.i

jxl_u8.exit.i:                                    ; preds = %get_bitsz.exit.i.i177, %bb.ct
  %i.atz = phi i32 [ %i.atu, %get_bitsz.exit.i.i177 ], [ %spec.select.i204.i, %bb.ct ]
  %.0.i.i178 = phi i8 [ %i.aty, %get_bitsz.exit.i.i177 ], [ 0, %bb.ct ] ; 2 uses
  %i.aua = zext i8 %.0.i.i178 to i32
  %i.aub = add i8 %.0.i.i178, 5
  %i.auc = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.asn
  store i8 %i.aub, ptr %i.auc, align 1, !tbaa !15
  %i.aud = add nuw nsw i32 %.0122224.i, 3
  %i.aue = add nuw nsw i32 %i.aud, %i.aua
  br label %bb.cx

bb.cw:                                            ; preds = %.lr.ph225.i
  %i.auf = and i16 %i.asj, 255
  %i.aug = zext nneg i16 %i.auf to i32            ; 2 uses
  %i.auh = icmp slt i32 %.0137222.i, %i.aug
  %spec.select.i170 = call i32 @llvm.smax.i32(i32 %.0137222.i, i32 %i.aug)
  %spec.select165.i = select i1 %i.auh, i32 %.0122224.i, i32 %.0135223.i
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %jxl_u8.exit.i
  %i.aui = phi i32 [ %i.atz, %jxl_u8.exit.i ], [ %i.asl, %bb.cw ] ; 4 uses
  %.1138.i = phi i32 [ %.0137222.i, %jxl_u8.exit.i ], [ %spec.select.i170, %bb.cw ]
  %.1136.i = phi i32 [ %.0135223.i, %jxl_u8.exit.i ], [ %spec.select165.i, %bb.cw ] ; 5 uses
  %.1123.i = phi i32 [ %i.aue, %jxl_u8.exit.i ], [ %.0122224.i, %bb.cw ]
  %i.auj = add nuw nsw i32 %.1123.i, 1            ; 2 uses
  %i.auk = icmp slt i32 %i.auj, %.0.i174.i
  br i1 %i.auk, label %.lr.ph225.i, label %._crit_edge.i171, !llvm.loop !135

bb.cy:                                            ; preds = %._crit_edge.i171
  %i.aul = add nuw nsw i32 %.1136.i, 1            ; 2 uses
  %i.aum = icmp slt i32 %i.aul, %.0.i174.i
  br i1 %i.aum, label %bb.cz, label %.lr.ph232.i

bb.cz:                                            ; preds = %bb.cy
  %i.aun = zext nneg i32 %i.aul to i64
  %i.auo = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aun
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !15
  %i.auq = icmp eq i8 %i.aup, 13
  br i1 %i.auq, label %populate_distribution.exit.thread, label %.lr.ph232.i

.lr.ph232.i:                                      ; preds = %bb.cz, %bb.cy
  %i.aur = getelementptr inbounds nuw i8, ptr %i.ahx, i64 52 ; 7 uses
  %i.aus = zext nneg i32 %.1136.i to i64          ; 2 uses
  %wide.trip.count249.i = zext nneg i32 %.0.i174.i to i64
  %i.aut = load i8, ptr %i.d, align 16, !tbaa !15 ; 2 uses
  %switch = icmp ult i8 %i.aut, 2
  br i1 %switch, label %.thread279.i, label %bb.da

bb.da:                                            ; preds = %.lr.ph232.i
  %i.auu = zext i8 %i.aut to i32
  store i32 0, ptr %i.aur, align 4, !tbaa !13
  %i.auv = add nsw i32 %i.auu, -2
  br label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %get_bitsz.exit.peel.i, %bb.dc, %bb.db, %.thread279.i, %bb.da
  %.0129229.i.ph = phi i32 [ 0, %bb.da ], [ 0, %.thread279.i ], [ 0, %bb.db ], [ 1, %bb.dc ], [ %i.avt, %get_bitsz.exit.peel.i ]
  %.0131228.i.ph = phi i32 [ %i.auv, %bb.da ], [ 0, %.thread279.i ], [ 0, %bb.db ], [ 0, %bb.dc ], [ 0, %get_bitsz.exit.peel.i ]
  br label %.peel.next.i

.thread279.i:                                     ; preds = %.lr.ph232.i
  %i.auw = icmp eq i32 %.1136.i, 0
  br i1 %i.auw, label %.peel.next.i.preheader, label %bb.db

bb.db:                                            ; preds = %.thread279.i
  %i.aux = load i8, ptr %i.c, align 16, !tbaa !15 ; 2 uses
  switch i8 %i.aux, label %bb.dd [
    i8 0, label %.peel.next.i.preheader
    i8 1, label %bb.dc
  ]

bb.dc:                                            ; preds = %bb.db
  store i32 1, ptr %i.aur, align 4, !tbaa !13
  br label %.peel.next.i.preheader

bb.dd:                                            ; preds = %bb.db
  %i.auy = zext i8 %i.aux to i32                  ; 4 uses
  %i.auz = add nsw i32 %i.auy, -14
  %i.ava = ashr i32 %i.auz, 1
  %i.avb = add nsw i32 %i.ava, %i.aqj             ; 3 uses
  %spec.select166.peel.i = call i32 @llvm.smax.i32(i32 %i.avb, i32 0)
  %.not160.peel.i = icmp samesign ult i32 %spec.select166.peel.i, %i.auy
  %i.avc = add nsw i32 %i.auy, -1                 ; 3 uses
  %i.avd = shl nuw i32 1, %i.avc
  br i1 %.not160.peel.i, label %bb.de, label %.thread209.peel.i

bb.de:                                            ; preds = %bb.dd
  %.not.i.peel.i = icmp slt i32 %i.avb, 1
  br i1 %.not.i.peel.i, label %get_bitsz.exit.peel.i, label %.thread209.peel.i

.thread209.peel.i:                                ; preds = %bb.de, %bb.dd
  %i.ave = phi i32 [ %i.avb, %bb.de ], [ %i.avc, %bb.dd ] ; 3 uses
  %i.avf = lshr i32 %i.aui, 3
  %i.avg = zext nneg i32 %i.avf to i64
  %i.avh = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.avg
  %i.avi = load i32, ptr %i.avh, align 1, !tbaa !15
  %i.avj = and i32 %i.aui, 7
  %i.avk = lshr i32 %i.avi, %i.avj
  %i.avl = sub nsw i32 32, %i.ave
  %i.avm = lshr i32 -1, %i.avl
  %i.avn = and i32 %i.avk, %i.avm
  %i.avo = add i32 %i.ave, %i.aui
  %i.avp = call i32 @llvm.umin.i32(i32 %i.aif, i32 %i.avo)
  store i32 %i.avp, ptr %i.s, align 8, !tbaa !21
  %i.avq = xor i32 %i.ave, -1
  %.pre255.i = add nsw i32 %i.avq, %i.auy
  br label %get_bitsz.exit.peel.i

get_bitsz.exit.peel.i:                            ; preds = %.thread209.peel.i, %bb.de
  %.pre-phi256.i = phi i32 [ %.pre255.i, %.thread209.peel.i ], [ %i.avc, %bb.de ]
  %i.avr = phi i32 [ %i.avn, %.thread209.peel.i ], [ 0, %bb.de ]
  %i.avs = shl i32 %i.avr, %.pre-phi256.i
  %i.avt = add nsw i32 %i.avs, %i.avd             ; 2 uses
  store i32 %i.avt, ptr %i.aur, align 4, !tbaa !13
  br label %.peel.next.i.preheader

._crit_edge233.i:                                 ; preds = %bb.do
  %i.avu = sub i32 4096, %.1130.i
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %i.aur, i64 %i.aus
  store i32 %i.avu, ptr %i.avv, align 4, !tbaa !13
  br label %select.unfold227

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %bb.do
  %indvars.iv246.i = phi i64 [ %indvars.iv.next247.i, %bb.do ], [ 1, %.peel.next.i.preheader ] ; 8 uses
  %.0129229.i = phi i32 [ %.1130.i, %bb.do ], [ %.0129229.i.ph, %.peel.next.i.preheader ] ; 3 uses
  %.0131228.i = phi i32 [ %.3.i173, %bb.do ], [ %.0131228.i.ph, %.peel.next.i.preheader ]
  %.0133227.i = phi i32 [ %.1134.i, %bb.do ], [ 0, %.peel.next.i.preheader ]
  %i.avw = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv246.i
  %i.avx = load i8, ptr %i.avw, align 1, !tbaa !15 ; 2 uses
  %.not156.i = icmp eq i8 %i.avx, 0
  br i1 %.not156.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.peel.next.i
  %i.avy = zext i8 %i.avx to i32
  %i.avz = add nsw i32 %i.avy, -1
  %i.awa = getelementptr [4 x i8], ptr %i.ahx, i64 %indvars.iv246.i
  %i.awb = getelementptr i8, ptr %i.awa, i64 48
  %i.awc = load i32, ptr %i.awb, align 4, !tbaa !13
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %.peel.next.i
  %.1134.i = phi i32 [ %.0133227.i, %.peel.next.i ], [ %i.awc, %bb.df ] ; 3 uses
  %.1132.i = phi i32 [ %.0131228.i, %.peel.next.i ], [ %i.avz, %bb.df ] ; 2 uses
  %.not158.i = icmp eq i32 %.1132.i, 0
  br i1 %.not158.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %i.aur, i64 %indvars.iv246.i
  store i32 %.1134.i, ptr %i.awd, align 4, !tbaa !13
  %i.awe = add nsw i32 %.1132.i, -1
  br label %bb.dn

bb.di:                                            ; preds = %bb.dg
  %i.awf = icmp eq i64 %indvars.iv246.i, %i.aus
  br i1 %i.awf, label %bb.do, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.awg = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv246.i
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !15 ; 2 uses
  switch i8 %i.awh, label %bb.dl [
    i8 0, label %bb.do
    i8 1, label %bb.dk
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.aur, i64 %indvars.iv246.i
  store i32 1, ptr %i.awi, align 4, !tbaa !13
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  %i.awj = zext i8 %i.awh to i32                  ; 4 uses
  %i.awk = add nsw i32 %i.awj, -14
  %i.awl = ashr i32 %i.awk, 1
  %i.awm = add nsw i32 %i.awl, %i.aqj             ; 3 uses
  %spec.select166.i = call i32 @llvm.smax.i32(i32 %i.awm, i32 0)
  %.not160.i = icmp samesign ult i32 %spec.select166.i, %i.awj
  %i.awn = add nsw i32 %i.awj, -1                 ; 3 uses
  %i.awo = shl nuw i32 1, %i.awn
  br i1 %.not160.i, label %bb.dm, label %.thread209.i

bb.dm:                                            ; preds = %bb.dl
  %.not.i.i175 = icmp slt i32 %i.awm, 1
  br i1 %.not.i.i175, label %get_bitsz.exit.i174, label %.thread209.i

.thread209.i:                                     ; preds = %bb.dm, %bb.dl
  %i.awp = phi i32 [ %i.awm, %bb.dm ], [ %i.awn, %bb.dl ] ; 3 uses
  %i.awq = load i32, ptr %i.s, align 8, !tbaa !21 ; 3 uses
  %i.awr = load i32, ptr %i.z, align 8, !tbaa !20
  %i.aws = lshr i32 %i.awq, 3
  %i.awt = zext nneg i32 %i.aws to i64
  %i.awu = getelementptr inbounds nuw i8, ptr %.pre368, i64 %i.awt
  %i.awv = load i32, ptr %i.awu, align 1, !tbaa !15
  %i.aww = and i32 %i.awq, 7
  %i.awx = lshr i32 %i.awv, %i.aww
  %i.awy = sub nsw i32 32, %i.awp
  %i.awz = lshr i32 -1, %i.awy
  %i.axa = and i32 %i.awx, %i.awz
  %i.axb = add i32 %i.awq, %i.awp
  %i.axc = call i32 @llvm.umin.i32(i32 %i.awr, i32 %i.axb)
  store i32 %i.axc, ptr %i.s, align 8, !tbaa !21
  %i.axd = xor i32 %i.awp, -1
  %.pre.i = add nsw i32 %i.axd, %i.awj
  br label %get_bitsz.exit.i174

get_bitsz.exit.i174:                              ; preds = %.thread209.i, %bb.dm
  %.pre-phi.i = phi i32 [ %i.awn, %bb.dm ], [ %.pre.i, %.thread209.i ]
  %i.axe = phi i32 [ 0, %bb.dm ], [ %i.axa, %.thread209.i ]
  %i.axf = shl i32 %i.axe, %.pre-phi.i
  %i.axg = add nsw i32 %i.axf, %i.awo             ; 2 uses
  %i.axh = getelementptr inbounds nuw [4 x i8], ptr %i.aur, i64 %indvars.iv246.i
  store i32 %i.axg, ptr %i.axh, align 4, !tbaa !13
  br label %bb.dn

bb.dn:                                            ; preds = %get_bitsz.exit.i174, %bb.dk, %bb.dh
  %i.axi = phi i32 [ %.1134.i, %bb.dh ], [ 1, %bb.dk ], [ %i.axg, %get_bitsz.exit.i174 ]
  %.2.i172 = phi i32 [ %i.awe, %bb.dh ], [ 0, %bb.dk ], [ 0, %get_bitsz.exit.i174 ]
  %i.axj = add i32 %i.axi, %.0129229.i
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dj, %bb.di
  %.3.i173 = phi i32 [ %.2.i172, %bb.dn ], [ 0, %bb.di ], [ 0, %bb.dj ]
  %.1130.i = phi i32 [ %i.axj, %bb.dn ], [ %.0129229.i, %bb.di ], [ %.0129229.i, %bb.dj ] ; 2 uses
  %indvars.iv.next247.i = add nuw nsw i64 %indvars.iv246.i, 1 ; 2 uses
  %exitcond250.not.i = icmp eq i64 %indvars.iv.next247.i, %wide.trip.count249.i
  br i1 %exitcond250.not.i, label %._crit_edge233.i, label %.peel.next.i, !llvm.loop !136

populate_distribution.exit.thread:                ; preds = %bb.cj, %._crit_edge.i171, %jxl_u8.exit190.i, %jxl_u8.exit180.i, %bb.cz, %get_bitsz.exit169.i, %jxl_u8.exit175.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %read_dist_clustering.exit.thread

select.unfold227:                                 ; preds = %scalar.ph, %middle.block642, %bb.cj, %._crit_edge233.i, %.preheader213.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %.val = load i32, ptr %i.s, align 8, !tbaa !21  ; 2 uses
  %.val140 = load i32, ptr %i.kk, align 4, !tbaa !19
  %i.axk = icmp slt i32 %.val140, %.val
  br i1 %i.axk, label %read_dist_clustering.exit.thread, label %bb.bw

.preheader:                                       ; preds = %bb.bw
  %.not131296 = icmp sgt i32 %i.ahu, 0
  br i1 %.not131296, label %.lr.ph298, label %read_dist_clustering.exit.thread

.lr.ph298:                                        ; preds = %.preheader
  %i.axl = load ptr, ptr %i.kp, align 8, !tbaa !31
  %i.axm = load i32, ptr %i.lp, align 8, !tbaa !146 ; 3 uses
  %i.axn = sub nsw i32 12, %i.axm                 ; 4 uses
  %i.axo = shl nuw i32 1, %i.axn                  ; 6 uses
  %i.axp = shl nuw i32 1, %i.axm                  ; 4 uses
  %i.axq = trunc i32 %i.axo to i16
  %wide.trip.count36.i = zext i32 %i.axp to i64   ; 3 uses
  %wide.trip.count358 = zext nneg i32 %i.ahu to i64
  %min.iters.check654 = icmp ult i32 %i.axm, 3
  %n.vec656 = and i64 %wide.trip.count36.i, 4294967288
  %broadcast.splatinsert659 = insertelement <8 x i32> poison, i32 %i.axn, i64 0
  %broadcast.splat660 = shufflevector <8 x i32> %broadcast.splatinsert659, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %bb.dp

bb.dp:                                            ; preds = %.lr.ph298, %.loopexit
  %indvars.iv355 = phi i64 [ 0, %.lr.ph298 ], [ %indvars.iv.next356, %.loopexit ] ; 2 uses
  %i.axr = getelementptr inbounds nuw [2640 x i8], ptr %i.axl, i64 %indvars.iv355 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 12
  store i32 %i.axn, ptr %i.axs, align 4, !tbaa !48
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axr, i64 2632
  %i.axu = load i32, ptr %i.axt, align 8, !tbaa !151 ; 2 uses
  %i.axv = icmp sgt i32 %i.axu, -1
  br i1 %i.axv, label %.preheader.i, label %.preheader6.i

.preheader6.i:                                    ; preds = %bb.dp
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axr, i64 16
  %i.axx = load i32, ptr %i.axw, align 8, !tbaa !147 ; 7 uses
  %i.axy = icmp sgt i32 %i.axx, 0
  br i1 %i.axy, label %.lr.ph.i183, label %.preheader5.i

.lr.ph.i183:                                      ; preds = %.preheader6.i
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axr, i64 52
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axr, i64 1084
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axr, i64 1600
  %wide.trip.count.i184 = zext nneg i32 %i.axx to i64
  br label %bb.dq

.preheader.i:                                     ; preds = %bb.dp
  %i.ayc = trunc i32 %i.axu to i16                ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axr, i64 1600 ; 2 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axr, i64 2116 ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axr, i64 1084 ; 2 uses
  br i1 %min.iters.check654, label %scalar.ph653, label %vector.ph655

vector.ph655:                                     ; preds = %.preheader.i
  %broadcast.splatinsert657 = insertelement <8 x i16> poison, i16 %i.ayc, i64 0
  %broadcast.splat658 = shufflevector <8 x i16> %broadcast.splatinsert657, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body661

vector.body661:                                   ; preds = %vector.body661, %vector.ph655
  %index662 = phi i64 [ 0, %vector.ph655 ], [ %index.next664, %vector.body661 ] ; 4 uses
  %vec.ind663 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph655 ], [ %vec.ind.next665, %vector.body661 ] ; 2 uses
  %i.ayg = getelementptr inbounds nuw [2 x i8], ptr %i.ayd, i64 %index662
  store <8 x i16> %broadcast.splat658, ptr %i.ayg, align 2, !tbaa !47
  %i.ayh = shl <8 x i32> %vec.ind663, %broadcast.splat660
  %i.ayi = trunc <8 x i32> %i.ayh to <8 x i16>
  %i.ayj = getelementptr inbounds nuw [2 x i8], ptr %i.aye, i64 %index662
  store <8 x i16> %i.ayi, ptr %i.ayj, align 2, !tbaa !47
  %i.ayk = getelementptr inbounds nuw [2 x i8], ptr %i.ayf, i64 %index662
  store <8 x i16> zeroinitializer, ptr %i.ayk, align 2, !tbaa !47
  %index.next664 = add nuw i64 %index662, 8       ; 2 uses
  %vec.ind.next665 = add <8 x i32> %vec.ind663, splat (i32 8)
  %i.ayl = icmp eq i64 %index.next664, %n.vec656
  br i1 %i.ayl, label %.loopexit, label %vector.body661, !llvm.loop !137

scalar.ph653:                                     ; preds = %.preheader.i, %scalar.ph653
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %scalar.ph653 ], [ 0, %.preheader.i ] ; 5 uses
  %i.aym = getelementptr inbounds nuw [2 x i8], ptr %i.ayd, i64 %indvars.iv38.i
  store i16 %i.ayc, ptr %i.aym, align 2, !tbaa !47
  %i.ayn = trunc nuw nsw i64 %indvars.iv38.i to i32
  %i.ayo = shl i32 %i.ayn, %i.axn
  %i.ayp = trunc i32 %i.ayo to i16
  %i.ayq = getelementptr inbounds nuw [2 x i8], ptr %i.aye, i64 %indvars.iv38.i
  store i16 %i.ayp, ptr %i.ayq, align 2, !tbaa !47
  %i.ayr = getelementptr inbounds nuw [2 x i8], ptr %i.ayf, i64 %indvars.iv38.i
  store i16 0, ptr %i.ayr, align 2, !tbaa !47
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next39.i, %wide.trip.count36.i
  br i1 %exitcond42.not.i, label %.loopexit, label %scalar.ph653, !llvm.loop !138

.preheader5.i:                                    ; preds = %bb.du, %.preheader6.i
  %.095.lcssa.i = phi i32 [ 0, %.preheader6.i ], [ %.196.i, %bb.du ] ; 2 uses
  %.094.lcssa.i = phi i32 [ 0, %.preheader6.i ], [ %.1.i186, %bb.du ] ; 3 uses
  %i.ays = icmp ult i32 %i.axx, %i.axp
  br i1 %i.ays, label %iter.check, label %.preheader3.i

iter.check:                                       ; preds = %.preheader5.i
  %i.ayt = zext nneg i32 %i.axx to i64            ; 5 uses
  %i.ayu = shl nuw nsw i64 %i.ayt, 1
  %i.ayv = getelementptr i8, ptr %i.axr, i64 %i.ayu
  %scevgep.i182 = getelementptr i8, ptr %i.ayv, i64 1084
  %i.ayw = xor i32 %i.axx, -1
  %i.ayx = add i32 %i.axp, %i.ayw                 ; 3 uses
  %i.ayy = zext i32 %i.ayx to i64                 ; 2 uses
  %i.ayz = shl nuw nsw i64 %i.ayy, 1
  %i.aza = add nuw nsw i64 %i.ayz, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i182, i8 0, i64 %i.aza, i1 false), !tbaa !47
  %i.azb = sext i32 %.094.lcssa.i to i64          ; 5 uses
  %i.azc = sub nuw i32 %i.axp, %i.axx
  %i.azd = add i32 %.094.lcssa.i, %i.azc          ; 4 uses
  %i.aze = add nuw nsw i64 %i.ayy, 1              ; 5 uses
  %min.iters.check670 = icmp ult i32 %i.ayx, 7
  br i1 %min.iters.check670, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check671 = icmp ult i32 %i.ayx, 31
  br i1 %min.iters.check671, label %vec.epilog.ph, label %vector.ph672

vector.ph672:                                     ; preds = %vector.main.loop.iter.check
  %i.azf = and i64 %i.aze, 24
  %n.vec673 = and i64 %i.aze, 8589934560          ; 5 uses
  %i.azg = add nsw i64 %n.vec673, %i.azb
  %i.azh = add nuw nsw i64 %n.vec673, %i.ayt      ; 2 uses
  %i.azi = trunc i32 %i.axx to i8
  %broadcast.splatinsert674 = insertelement <16 x i8> poison, i8 %i.azi, i64 0
  %broadcast.splat675 = shufflevector <16 x i8> %broadcast.splatinsert674, <16 x i8> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i8> %broadcast.splat675, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %invariant.gep = getelementptr i8, ptr %i.b, i64 %i.azb
  br label %vector.body676

vector.body676:                                   ; preds = %vector.ph672, %vector.body676
  %index677 = phi i64 [ 0, %vector.ph672 ], [ %index.next680, %vector.body676 ] ; 2 uses
  %vec.ind678 = phi <16 x i8> [ %induction, %vector.ph672 ], [ %vec.ind.next681, %vector.body676 ] ; 3 uses
  %step.add679 = add <16 x i8> %vec.ind678, splat (i8 16)
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index677 ; 2 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %vec.ind678, ptr %gep, align 1, !tbaa !15
  store <16 x i8> %step.add679, ptr %i.azj, align 1, !tbaa !15
  %index.next680 = add nuw i64 %index677, 32      ; 2 uses
  %vec.ind.next681 = add <16 x i8> %vec.ind678, splat (i8 32)
  %i.azk = icmp eq i64 %index.next680, %n.vec673
  br i1 %i.azk, label %middle.block682, label %vector.body676, !llvm.loop !139

middle.block682:                                  ; preds = %vector.body676
  %cmp.n683 = icmp eq i64 %i.aze, %n.vec673
  br i1 %cmp.n683, label %.preheader3.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block682
  %min.epilog.iters.check = icmp eq i64 %i.azf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !154
end_hunk_0
