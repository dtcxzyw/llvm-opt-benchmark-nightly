Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe?download=true
inline.NumInlined: 74
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@cli_scanpe:bb.a
  store i32 %i.apn, ptr %i.i, align 4, !tbaa !16
  %i.apo = call i32 @llvm.umax.i32(i32 %i.apn, i32 %i.apj)
  %i.app = zext i32 %i.apo to i64
  %i.apq = call i32 @cli_checklimits(ptr noundef nonnull @.str.58, ptr noundef nonnull %0, i64 noundef %i.app, i64 noundef 0, i64 noundef 0) #22
  %.not2617 = icmp eq i32 %i.apq, 0
  br i1 %.not2617, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.mi:                                            ; preds = %bb.mg
  %i.apr = icmp ugt i32 %i.apj, 25
  %i.aps = load i32, ptr %i.i, align 4            ; 2 uses
  %.not2618 = icmp ugt i32 %i.aps, %i.apj
  %or.cond2891 = select i1 %i.apr, i1 %.not2618, i1 false
  br i1 %or.cond2891, label %cli_rawaddr.exit, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.59, i32 noundef %i.apj, i32 noundef %i.aps) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

cli_rawaddr.exit:                                 ; preds = %bb.mi
  %i.apt = load i32, ptr %i.aji, align 1, !tbaa !39
  %i.apu = load i32, ptr %i.aoy, align 4, !tbaa !39
  %i.apv = sub i32 %i.apt, %i.apu                 ; 3 uses
  %i.apw = load i32, ptr %i.km, align 8, !tbaa !31
  %i.apx = icmp uge i32 %i.apv, %i.apw
  %i.apy = zext i32 %i.apv to i64
  %.not36.i = icmp ule i64 %i.ae, %i.apy
  %narrow = select i1 %i.apx, i1 true, i1 %.not36.i ; 3 uses
  %.sink.i = zext i1 %narrow to i32
  %.030.i = select i1 %narrow, i32 0, i32 %i.apv  ; 3 uses
  store i32 %.sink.i, ptr %i.h, align 4, !tbaa !16
  %i.apz = icmp eq i32 %.030.i, 0
  %or.cond115 = and i1 %i.apz, %narrow
  br i1 %or.cond115, label %bb.mk, label %bb.ml

bb.mk:                                            ; preds = %cli_rawaddr.exit
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.74) #22
  br label %.loopexit

bb.ml:                                            ; preds = %cli_rawaddr.exit
  %i.aqa = load ptr, ptr %2, align 8, !tbaa !29
  %i.aqb = getelementptr inbounds nuw [36 x i8], ptr %i.aqa, i64 %i.apg
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqb, i64 8
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !15
  %i.aqe = sub i32 %i.aqd, %.030.i                ; 3 uses
  %i.aqf = zext i32 %i.aqe to i64                 ; 2 uses
  %i.aqg = call i32 @cli_checklimits(ptr noundef nonnull @.str.58, ptr noundef nonnull %0, i64 noundef %i.aqf, i64 noundef 0, i64 noundef 0) #22
  %.not2619 = icmp eq i32 %i.aqg, 0
  br i1 %.not2619, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.mn:                                            ; preds = %bb.ml
  %i.aqh = zext i32 %.030.i to i64
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.ac, i64 104 ; 2 uses
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !38
  %i.aqk = call ptr %i.aqj(ptr noundef %i.ac, i64 noundef range(i64 0, 8589934855) %i.aqh, i64 noundef %i.aqf, i32 noundef 0) #22, !inline_history !0 ; 7 uses
  %.not2620 = icmp eq ptr %i.aqk, null
  br i1 %.not2620, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.75, i32 noundef %i.aqe) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.mp:                                            ; preds = %bb.mn
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 4
  %i.aqm = load i32, ptr %i.aql, align 1, !tbaa !39
  %i.aqn = load i32, ptr %i.aoy, align 4, !tbaa !39 ; 2 uses
  %i.aqo = sub i32 %i.aqm, %i.aqn                 ; 3 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8 ; 3 uses
  %i.aqq = load i32, ptr %i.aqp, align 1, !tbaa !39
  %i.aqr = sub i32 %i.aqq, %i.aqn                 ; 4 uses
  %i.aqs = load ptr, ptr %2, align 8, !tbaa !29   ; 3 uses
  %i.aqt = getelementptr inbounds nuw [36 x i8], ptr %i.aqs, i64 %i.apg ; 2 uses
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !14 ; 2 uses
  %i.aqv = icmp ult i32 %i.aqr, %i.aqu
  br i1 %i.aqv, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.aqw = sub nuw i32 %i.aqr, %i.aqu
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqt, i64 12
  %i.aqy = load i32, ptr %i.aqx, align 4, !tbaa !13
  %.not2621 = icmp ult i32 %i.aqw, %i.aqy
  br i1 %.not2621, label %bb.ms, label %bb.mr

bb.mr:                                            ; preds = %bb.mq, %bb.mp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.66) #22
  br label %.loopexit

bb.ms:                                            ; preds = %bb.mq
  %i.aqz = getelementptr inbounds nuw [36 x i8], ptr %i.aqs, i64 %i.apk
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !14 ; 2 uses
  %.not2622 = icmp eq i32 %i.aqo, %i.ara
  br i1 %.not2622, label %.preheader3185, label %bb.mt

.preheader3185:                                   ; preds = %bb.ms
  %i.arb = add i32 %i.aqe, -4                     ; 2 uses
  %i.arc = icmp ugt i32 %i.arb, 12
  br i1 %i.arc, label %.lr.ph3277, label %.loopexit

bb.mt:                                            ; preds = %bb.ms
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.76, i32 noundef %i.aqo, i32 noundef %i.ara) #22
  br label %.loopexit

.lr.ph3277:                                       ; preds = %.preheader3185, %bb.my
  %i.ard = phi ptr [ %i.arl, %bb.my ], [ %i.aqs, %.preheader3185 ]
  %.021003276 = phi i32 [ %i.ars, %bb.my ], [ 12, %.preheader3185 ] ; 2 uses
  %.021023275 = phi i32 [ %i.arj, %bb.my ], [ 0, %.preheader3185 ] ; 2 uses
  %i.are = zext i32 %.021003276 to i64            ; 2 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.are
  %i.arg = load i32, ptr %i.arf, align 1, !tbaa !39 ; 2 uses
  %.not2623 = icmp eq i32 %i.arg, 0
  br i1 %.not2623, label %.loopexit3186.thread, label %bb.mu

bb.mu:                                            ; preds = %.lr.ph3277
  %i.arh = load i32, ptr %i.aoy, align 4, !tbaa !39
  %.neg2624 = xor i32 %i.arh, -1
  %i.ari = add i32 %i.arg, %.neg2624              ; 3 uses
  %i.arj = add nuw nsw i32 %.021023275, 1         ; 4 uses
  %i.ark = and i32 %i.ari, 4095
  %.not2625 = icmp eq i32 %i.ark, 0
  br i1 %.not2625, label %bb.mw, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.77, i32 noundef %i.arj) #22
  %.pre3429 = load ptr, ptr %2, align 8, !tbaa !29
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mv, %bb.mu
  %i.arl = phi ptr [ %.pre3429, %bb.mv ], [ %i.ard, %bb.mu ] ; 2 uses
  %i.arm = getelementptr inbounds nuw [36 x i8], ptr %i.arl, i64 %i.apk ; 2 uses
  %i.arn = load i32, ptr %i.arm, align 4, !tbaa !14 ; 2 uses
  %i.aro = icmp ult i32 %i.ari, %i.arn
  br i1 %i.aro, label %.loopexit3186, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.arp = sub nuw i32 %i.ari, %i.arn
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arm, i64 4
  %i.arr = load i32, ptr %i.arq, align 4, !tbaa !61
  %.not2626 = icmp ult i32 %i.arp, %i.arr
  br i1 %.not2626, label %bb.my, label %.loopexit3186

bb.my:                                            ; preds = %bb.mx
  %i.ars = add i32 %.021003276, 4                 ; 2 uses
  %i.art = icmp ult i32 %i.ars, %i.arb
  br i1 %i.art, label %.lr.ph3277, label %.loopexit

.loopexit3186:                                    ; preds = %bb.mw, %bb.mx
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.are
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.78, i32 noundef %i.arj) #22
  %.pre3430 = load i32, ptr %i.aru, align 1, !tbaa !39
  %i.arv = icmp eq i32 %.pre3430, 0
  br i1 %i.arv, label %.loopexit3186.thread, label %.loopexit

.loopexit3186.thread:                             ; preds = %.lr.ph3277, %.loopexit3186
  %.12103.ph3654 = phi i32 [ %i.arj, %.loopexit3186 ], [ %.021023275, %.lr.ph3277 ] ; 9 uses
  %i.arw = add nsw i32 %.12103.ph3654, 1
  %i.arx = sext i32 %i.arw to i64
  %i.ary = mul nsw i64 %i.arx, 36                 ; 2 uses
  %i.arz = call ptr @cli_max_malloc(i64 noundef %i.ary) #22 ; 19 uses
  %i.asa = icmp eq ptr %i.arz, null
  br i1 %i.asa, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %.loopexit3186.thread
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.79, i64 noundef %i.ary) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.na:                                            ; preds = %.loopexit3186.thread
  store i32 %i.aqo, ptr %i.arz, align 4, !tbaa !14
  %.not26293278 = icmp eq i32 %.12103.ph3654, 0
  br i1 %.not26293278, label %._crit_edge3282, label %.lr.ph3281.preheader

.lr.ph3281.preheader:                             ; preds = %bb.na
  %min.iters.check = icmp ult i32 %.12103.ph3654, 32
  br i1 %min.iters.check, label %.lr.ph3281.preheader3734, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph3281.preheader
  %i.asb = zext i32 %.12103.ph3654 to i64
  %i.asc = add nsw i64 %i.asb, -1                 ; 2 uses
  %mul.result.mask3732 = and i64 %i.asc, 1073741823
  %i.asd = icmp eq i64 %mul.result.mask3732, 1073741823
  %i.ase = icmp ugt i64 %i.asc, 1073741823
  %i.asf = or i1 %i.asd, %i.ase
  br i1 %i.asf, label %.lr.ph3281.preheader3734, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.asg = getelementptr i8, ptr %i.arz, i64 36   ; 2 uses
  %i.ash = zext i32 %.12103.ph3654 to i64         ; 2 uses
  %i.asi = mul nuw nsw i64 %i.ash, 36
  %i.asj = getelementptr i8, ptr %i.arz, i64 %i.asi
  %i.ask = getelementptr i8, ptr %i.asj, i64 4    ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %2, i64 168
  %bound0 = icmp ult ptr %i.asg, %i.asl
  %bound1 = icmp ult ptr %i.aoy, %i.ask
  %found.conflict = and i1 %bound0, %bound1
  %i.asm = getelementptr i8, ptr %i.aqk, i64 12
  %3 = shl nuw nsw i64 %i.ash, 2
  %4 = getelementptr i8, ptr %i.aqk, i64 %3
  %5 = getelementptr i8, ptr %4, i64 12
  %bound03729 = icmp ult ptr %i.asg, %5
  %bound13730 = icmp ult ptr %i.asm, %i.ask
  %found.conflict3731 = and i1 %bound03729, %bound13730
  %conflict.rdx = or i1 %found.conflict, %found.conflict3731
  br i1 %conflict.rdx, label %.lr.ph3281.preheader3734, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i32 %.12103.ph3654, -4             ; 3 uses
  %i.asn = or disjoint i32 %n.vec, 1
  %i.aso = load i32, ptr %i.aoy, align 4, !tbaa !39, !alias.scope !129
  %i.asp = xor i32 %i.aso, -1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.asp, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.asq = or disjoint i32 %index, 1              ; 2 uses
  %i.asr = or disjoint i32 %index, 2
  %i.ass = or disjoint i32 %index, 3
  %i.ast = add i32 %index, 4
  %i.asu = shl i32 %i.asq, 2
  %i.asv = zext i32 %i.asu to i64
  %i.asw = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %i.asv
  %wide.load = load <4 x i32>, ptr %i.asw, align 1, !tbaa !39, !alias.scope !130
  %i.asx = add <4 x i32> %wide.load, %broadcast.splat ; 4 uses
  %i.asy = zext i32 %i.asq to i64
  %i.asz = zext i32 %i.asr to i64
  %i.ata = zext i32 %i.ass to i64
  %i.atb = zext i32 %i.ast to i64
  %i.atc = getelementptr inbounds nuw [36 x i8], ptr %i.arz, i64 %i.asy
  %i.atd = getelementptr inbounds nuw [36 x i8], ptr %i.arz, i64 %i.asz
  %i.ate = getelementptr inbounds nuw [36 x i8], ptr %i.arz, i64 %i.ata
  %i.atf = getelementptr inbounds nuw [36 x i8], ptr %i.arz, i64 %i.atb
  %i.atg = extractelement <4 x i32> %i.asx, i64 0
  store i32 %i.atg, ptr %i.atc, align 4, !tbaa !14, !alias.scope !131, !noalias !132
  %i.ath = extractelement <4 x i32> %i.asx, i64 1
  store i32 %i.ath, ptr %i.atd, align 4, !tbaa !14, !alias.scope !131, !noalias !132
  %i.ati = extractelement <4 x i32> %i.asx, i64 2
  store i32 %i.ati, ptr %i.ate, align 4, !tbaa !14, !alias.scope !131, !noalias !132
  %i.atj = extractelement <4 x i32> %i.asx, i64 3
  store i32 %i.atj, ptr %i.atf, align 4, !tbaa !14, !alias.scope !131, !noalias !132
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.atk = icmp eq i32 %index.next, %n.vec
  br i1 %i.atk, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %.12103.ph3654, %n.vec
  br i1 %cmp.n, label %._crit_edge3282, label %.lr.ph3281.preheader3734

.lr.ph3281.preheader3734:                         ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph3281.preheader, %middle.block
  %.121013279.ph = phi i32 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph3281.preheader ], [ %i.asn, %middle.block ]
  br label %.lr.ph3281

.lr.ph3281:                                       ; preds = %.lr.ph3281.preheader3734, %.lr.ph3281
  %.121013279 = phi i32 [ %i.atu, %.lr.ph3281 ], [ %.121013279.ph, %.lr.ph3281.preheader3734 ] ; 3 uses
  %i.atl = shl i32 %.121013279, 2
  %i.atm = zext i32 %i.atl to i64
  %i.atn = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %i.atm
  %i.ato = load i32, ptr %i.atn, align 1, !tbaa !39
  %i.atp = load i32, ptr %i.aoy, align 4, !tbaa !39
  %i.atq = xor i32 %i.atp, -1
  %i.atr = add i32 %i.ato, %i.atq
  %i.ats = zext i32 %.121013279 to i64
  %i.att = getelementptr inbounds nuw [36 x i8], ptr %i.arz, i64 %i.ats
  store i32 %i.atr, ptr %i.att, align 4, !tbaa !14
  %i.atu = add i32 %.121013279, 1                 ; 2 uses
  %.not2629 = icmp ugt i32 %i.atu, %.12103.ph3654
  br i1 %.not2629, label %._crit_edge3282, label %.lr.ph3281, !llvm.loop !113

._crit_edge3282:                                  ; preds = %.lr.ph3281, %middle.block, %bb.na
  %i.atv = load ptr, ptr %2, align 8, !tbaa !29
  %i.atw = getelementptr inbounds nuw [36 x i8], ptr %i.atv, i64 %i.apg ; 2 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 12
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !13
  %.not2630 = icmp eq i32 %i.aty, 0
  br i1 %.not2630, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %._crit_edge3282
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atw, i64 8
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !15
  %i.aub = zext i32 %i.aua to i64
  %i.auc = zext i32 %i.apj to i64
  %i.aud = load ptr, ptr %i.aqi, align 8, !tbaa !38
  %i.aue = call ptr %i.aud(ptr noundef %i.ac, i64 noundef range(i64 0, 8589934855) %i.aub, i64 noundef %i.auc, i32 noundef 0) #22, !inline_history !0 ; 2 uses
  %.not2631 = icmp eq ptr %i.aue, null
  br i1 %.not2631, label %bb.nc, label %bb.nd

bb.nc:                                            ; preds = %bb.nb, %._crit_edge3282
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.61, i32 noundef %.622202992) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void @free(ptr noundef nonnull %i.arz) #22
  br label %.thread2995

bb.nd:                                            ; preds = %bb.nb
  %i.auf = load i32, ptr %i.i, align 4, !tbaa !16
  %i.aug = zext i32 %i.auf to i64
  %i.auh = call ptr @cli_max_calloc(i64 noundef %i.aug, i64 noundef 1) #22 ; 8 uses
  %i.aui = icmp eq ptr %i.auh, null
  br i1 %i.aui, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void @free(ptr noundef nonnull %i.arz) #22
  br label %.thread2995

bb.nf:                                            ; preds = %bb.nd
  %i.auj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.auk = load i32, ptr %i.auj, align 8, !tbaa !95
  %i.aul = add i32 %i.auk, 167
  %i.aum = getelementptr inbounds nuw i8, ptr %i.f, i64 163
  %i.aun = load i32, ptr %i.aum, align 1, !tbaa !39
  %i.auo = add i32 %i.aul, %i.aun                 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.68, i32 noundef %i.auo) #22
  %.not2632 = icmp eq ptr %.02164, null
  br i1 %.not2632, label %bb.nh, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.aup = call i32 @cli_jsonstr(ptr noundef nonnull %.02164, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.69) #22 ; 0 uses
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %bb.nf
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aur = load ptr, ptr %i.auq, align 8, !tbaa !127
  %i.aus = call ptr @cli_gentemp(ptr noundef %i.aur) #22 ; 3 uses
  store ptr %i.aus, ptr %i.g, align 8, !tbaa !82
  %.not2633 = icmp eq ptr %i.aus, null
  br i1 %.not2633, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.auh, ptr noundef nonnull %i.arz, i32 noundef 0)
  br label %.thread2995

bb.nj:                                            ; preds = %bb.nh
  %i.aut = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.aus, i32 noundef 578, i32 noundef 384) #22 ; 7 uses
  %i.auu = icmp slt i32 %i.aut, 0
  br i1 %i.auu, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.auv = load ptr, ptr %i.g, align 8, !tbaa !82
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.70, ptr noundef %i.auv) #22
  %i.auw = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.auw) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.auh, ptr noundef nonnull %i.arz, i32 noundef 0)
  br label %.thread2995

bb.nl:                                            ; preds = %bb.nj
  %i.aux = zext i32 %i.aqr to i64
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aue, i64 %i.aux
  %i.auz = load ptr, ptr %2, align 8, !tbaa !29
  %i.ava = getelementptr inbounds nuw [36 x i8], ptr %i.auz, i64 %i.apg
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !14 ; 2 uses
  %i.avc = zext i32 %i.avb to i64
  %i.avd = sub nsw i64 0, %i.avc
  %i.ave = getelementptr inbounds i8, ptr %i.auy, i64 %i.avd
  %i.avf = sub i32 %i.apj, %i.aqr
  %i.avg = add i32 %i.avf, %i.avb
  %i.avh = load i32, ptr %i.i, align 4, !tbaa !16
  %i.avi = load i32, ptr %i.aoy, align 4, !tbaa !39
  %i.avj = call i32 @unfsg_133(ptr noundef nonnull %i.ave, ptr noundef nonnull %i.auh, i32 noundef %i.avg, i32 noundef %i.avh, ptr noundef nonnull %i.arz, i32 noundef %.12103.ph3654, i32 noundef %i.avi, i32 noundef %i.auo, i32 noundef %i.aut) #22
  switch i32 %i.avj, label %bb.ny [
    i32 1, label %bb.nm
    i32 0, label %bb.nv
  ]

bb.nm:                                            ; preds = %bb.nl
  %i.avk = load ptr, ptr %i.g, align 8, !tbaa !82
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.71, ptr noundef %i.avk) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.auh, ptr noundef nonnull %i.arz, i32 noundef 0)
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.avl = call i64 @lseek(i32 noundef %i.aut, i64 noundef 0, i32 noundef 0) #22 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.45) #22
  %i.avm = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.avn = call i32 @cli_magic_scan_desc(i32 noundef %i.aut, ptr noundef %i.avm, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #22 ; 2 uses
  %.not2635 = icmp eq i32 %i.avn, 0
  %i.avo = call i32 @close(i32 noundef %i.aut) #22 ; 0 uses
  %i.avp = load ptr, ptr %i.ks, align 8, !tbaa !63
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 48
  %i.avr = load i32, ptr %i.avq, align 8, !tbaa !128
  %.not2636 = icmp eq i32 %i.avr, 0               ; 2 uses
  br i1 %.not2635, label %bb.nr, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  br i1 %.not2636, label %bb.no, label %bb.nq

bb.no:                                            ; preds = %bb.nn
  %i.avs = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.avt = call i32 @cli_unlink(ptr noundef %i.avs) #22
  %.not2639 = icmp eq i32 %i.avt, 0
  br i1 %.not2639, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.avu = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.avu) #22
  br label %.thread2995

bb.nq:                                            ; preds = %bb.no, %bb.nn
  %i.avv = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.avv) #22
  br label %.thread2995
end_hunk_0
