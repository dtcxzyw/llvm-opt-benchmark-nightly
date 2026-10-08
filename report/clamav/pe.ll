Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe?download=true
inline.NumInlined: 74
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@cli_scanpe:bb.a
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 12
  %i.apj = load i32, ptr %i.api, align 4, !tbaa !13 ; 6 uses
  %i.apk = zext i32 %.622202992 to i64            ; 3 uses
  %i.apl = getelementptr inbounds nuw [36 x i8], ptr %i.ape, i64 %i.apk
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 4
  %i.apn = load i32, ptr %i.apm, align 4, !tbaa !61 ; 2 uses
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
  %3 = getelementptr i8, ptr %i.arz, i64 %i.asi
  %i.asj = getelementptr i8, ptr %3, i64 4        ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.asl = getelementptr i8, ptr %i.aqk, i64 12
  %i.asm = shl nuw nsw i64 %i.ash, 2
  %i.asn = getelementptr i8, ptr %i.aqk, i64 %i.asm
  %i.aso = getelementptr i8, ptr %i.asn, i64 12
  %bound0 = icmp ult ptr %i.asg, %i.ask
  %bound1 = icmp ult ptr %i.aoy, %i.asj
  %found.conflict = and i1 %bound0, %bound1
  %bound03729 = icmp ult ptr %i.asg, %i.aso
  %bound13730 = icmp ult ptr %i.asl, %i.asj
  %found.conflict3731 = and i1 %bound03729, %bound13730
  %conflict.rdx = or i1 %found.conflict, %found.conflict3731
  br i1 %conflict.rdx, label %.lr.ph3281.preheader3734, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i32 %.12103.ph3654, -4             ; 3 uses
  %i.asp = or disjoint i32 %n.vec, 1
  %i.asq = load i32, ptr %i.aoy, align 4, !tbaa !39, !alias.scope !129
  %i.asr = xor i32 %i.asq, -1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.asr, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ass = or disjoint i32 %index, 1              ; 2 uses
  %i.ast = or disjoint i32 %index, 2
  %i.asu = or disjoint i32 %index, 3
  %i.asv = add i32 %index, 4
  %i.asw = shl i32 %i.ass, 2
  %i.asx = zext i32 %i.asw to i64
  %i.asy = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %i.asx
  %wide.load = load <4 x i32>, ptr %i.asy, align 1, !tbaa !39, !alias.scope !130
  %i.asz = add <4 x i32> %wide.load, %broadcast.splat ; 4 uses
  %i.ata = zext i32 %i.ass to i64
  %i.atb = zext i32 %i.ast to i64
  %i.atc = zext i32 %i.asu to i64
  %i.atd = zext i32 %i.asv to i64
  %i.ate = getelementptr inbounds nuw [36 x i8], ptr %i.arz, i64 %i.ata
  %i.atf = getelementptr inbounds nuw [36 x i8], ptr %i.arz, i64 %i.atb
  %i.atg = getelementptr inbounds nuw [36 x i8], ptr %i.arz, i64 %i.atc
  %i.ath = getelementptr inbounds nuw [36 x i8], ptr %i.arz, i64 %i.atd
  %i.ati = extractelement <4 x i32> %i.asz, i64 0
  store i32 %i.ati, ptr %i.ate, align 4, !tbaa !14, !alias.scope !131, !noalias !132
  %i.atj = extractelement <4 x i32> %i.asz, i64 1
  store i32 %i.atj, ptr %i.atf, align 4, !tbaa !14, !alias.scope !131, !noalias !132
  %i.atk = extractelement <4 x i32> %i.asz, i64 2
  store i32 %i.atk, ptr %i.atg, align 4, !tbaa !14, !alias.scope !131, !noalias !132
  %i.atl = extractelement <4 x i32> %i.asz, i64 3
  store i32 %i.atl, ptr %i.ath, align 4, !tbaa !14, !alias.scope !131, !noalias !132
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.atm = icmp eq i32 %index.next, %n.vec
  br i1 %i.atm, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %.12103.ph3654, %n.vec
  br i1 %cmp.n, label %._crit_edge3282, label %.lr.ph3281.preheader3734

.lr.ph3281.preheader3734:                         ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph3281.preheader, %middle.block
  %.121013279.ph = phi i32 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph3281.preheader ], [ %i.asp, %middle.block ]
  br label %.lr.ph3281

.lr.ph3281:                                       ; preds = %.lr.ph3281.preheader3734, %.lr.ph3281
  %.121013279 = phi i32 [ %i.atw, %.lr.ph3281 ], [ %.121013279.ph, %.lr.ph3281.preheader3734 ] ; 3 uses
  %i.atn = shl i32 %.121013279, 2
  %i.ato = zext i32 %i.atn to i64
  %i.atp = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %i.ato
  %i.atq = load i32, ptr %i.atp, align 1, !tbaa !39
  %i.atr = load i32, ptr %i.aoy, align 4, !tbaa !39
  %i.ats = xor i32 %i.atr, -1
  %i.att = add i32 %i.atq, %i.ats
  %i.atu = zext i32 %.121013279 to i64
  %i.atv = getelementptr inbounds nuw [36 x i8], ptr %i.arz, i64 %i.atu
  store i32 %i.att, ptr %i.atv, align 4, !tbaa !14
  %i.atw = add i32 %.121013279, 1                 ; 2 uses
  %.not2629 = icmp ugt i32 %i.atw, %.12103.ph3654
  br i1 %.not2629, label %._crit_edge3282, label %.lr.ph3281, !llvm.loop !113

._crit_edge3282:                                  ; preds = %.lr.ph3281, %middle.block, %bb.na
  %i.atx = load ptr, ptr %2, align 8, !tbaa !29
  %i.aty = getelementptr inbounds nuw [36 x i8], ptr %i.atx, i64 %i.apg ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 12
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !13
  %.not2630 = icmp eq i32 %i.aua, 0
  br i1 %.not2630, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %._crit_edge3282
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aty, i64 8
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !15
  %i.aud = zext i32 %i.auc to i64
  %i.aue = zext i32 %i.apj to i64
  %i.auf = load ptr, ptr %i.aqi, align 8, !tbaa !38
  %i.aug = call ptr %i.auf(ptr noundef %i.ac, i64 noundef range(i64 0, 8589934855) %i.aud, i64 noundef %i.aue, i32 noundef 0) #22, !inline_history !0 ; 2 uses
  %.not2631 = icmp eq ptr %i.aug, null
  br i1 %.not2631, label %bb.nc, label %bb.nd

bb.nc:                                            ; preds = %bb.nb, %._crit_edge3282
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.61, i32 noundef %.622202992) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void @free(ptr noundef nonnull %i.arz) #22
  br label %.thread2995

bb.nd:                                            ; preds = %bb.nb
  %i.auh = load i32, ptr %i.i, align 4, !tbaa !16
  %i.aui = zext i32 %i.auh to i64
  %i.auj = call ptr @cli_max_calloc(i64 noundef %i.aui, i64 noundef 1) #22 ; 8 uses
  %i.auk = icmp eq ptr %i.auj, null
  br i1 %i.auk, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void @free(ptr noundef nonnull %i.arz) #22
  br label %.thread2995

bb.nf:                                            ; preds = %bb.nd
  %i.aul = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aum = load i32, ptr %i.aul, align 8, !tbaa !95
  %i.aun = add i32 %i.aum, 167
  %i.auo = getelementptr inbounds nuw i8, ptr %i.f, i64 163
  %i.aup = load i32, ptr %i.auo, align 1, !tbaa !39
  %i.auq = add i32 %i.aun, %i.aup                 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.68, i32 noundef %i.auq) #22
  %.not2632 = icmp eq ptr %.02164, null
  br i1 %.not2632, label %bb.nh, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.aur = call i32 @cli_jsonstr(ptr noundef nonnull %.02164, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.69) #22 ; 0 uses
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %bb.nf
  %i.aus = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aut = load ptr, ptr %i.aus, align 8, !tbaa !127
  %i.auu = call ptr @cli_gentemp(ptr noundef %i.aut) #22 ; 3 uses
  store ptr %i.auu, ptr %i.g, align 8, !tbaa !82
  %.not2633 = icmp eq ptr %i.auu, null
  br i1 %.not2633, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.auj, ptr noundef nonnull %i.arz, i32 noundef 0)
  br label %.thread2995

bb.nj:                                            ; preds = %bb.nh
  %i.auv = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.auu, i32 noundef 578, i32 noundef 384) #22 ; 7 uses
  %i.auw = icmp slt i32 %i.auv, 0
  br i1 %i.auw, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.aux = load ptr, ptr %i.g, align 8, !tbaa !82
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.70, ptr noundef %i.aux) #22
  %i.auy = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.auy) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.auj, ptr noundef nonnull %i.arz, i32 noundef 0)
  br label %.thread2995

bb.nl:                                            ; preds = %bb.nj
  %i.auz = zext i32 %i.aqr to i64
  %i.ava = getelementptr inbounds nuw i8, ptr %i.aug, i64 %i.auz
  %i.avb = load ptr, ptr %2, align 8, !tbaa !29
  %i.avc = getelementptr inbounds nuw [36 x i8], ptr %i.avb, i64 %i.apg
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !14 ; 2 uses
  %i.ave = zext i32 %i.avd to i64
  %i.avf = sub nsw i64 0, %i.ave
  %i.avg = getelementptr inbounds i8, ptr %i.ava, i64 %i.avf
  %i.avh = sub i32 %i.apj, %i.aqr
  %i.avi = add i32 %i.avh, %i.avd
  %i.avj = load i32, ptr %i.i, align 4, !tbaa !16
  %i.avk = load i32, ptr %i.aoy, align 4, !tbaa !39
  %i.avl = call i32 @unfsg_133(ptr noundef nonnull %i.avg, ptr noundef nonnull %i.auj, i32 noundef %i.avi, i32 noundef %i.avj, ptr noundef nonnull %i.arz, i32 noundef %.12103.ph3654, i32 noundef %i.avk, i32 noundef %i.auq, i32 noundef %i.auv) #22
  switch i32 %i.avl, label %bb.ny [
    i32 1, label %bb.nm
    i32 0, label %bb.nv
  ]

bb.nm:                                            ; preds = %bb.nl
  %i.avm = load ptr, ptr %i.g, align 8, !tbaa !82
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.71, ptr noundef %i.avm) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.auj, ptr noundef nonnull %i.arz, i32 noundef 0)
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.avn = call i64 @lseek(i32 noundef %i.auv, i64 noundef 0, i32 noundef 0) #22 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.45) #22
  %i.avo = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.avp = call i32 @cli_magic_scan_desc(i32 noundef %i.auv, ptr noundef %i.avo, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #22 ; 2 uses
  %.not2635 = icmp eq i32 %i.avp, 0
  %i.avq = call i32 @close(i32 noundef %i.auv) #22 ; 0 uses
  %i.avr = load ptr, ptr %i.ks, align 8, !tbaa !63
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 48
  %i.avt = load i32, ptr %i.avs, align 8, !tbaa !128
  %.not2636 = icmp eq i32 %i.avt, 0               ; 2 uses
  br i1 %.not2635, label %bb.nr, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  br i1 %.not2636, label %bb.no, label %bb.nq

bb.no:                                            ; preds = %bb.nn
  %i.avu = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.avv = call i32 @cli_unlink(ptr noundef %i.avu) #22
  %.not2639 = icmp eq i32 %i.avv, 0
  br i1 %.not2639, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.avw = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.avw) #22
  br label %.thread2995

bb.nq:                                            ; preds = %bb.no, %bb.nn
  %i.avx = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.avx) #22
  br label %.thread2995

bb.nr:                                            ; preds = %bb.nm
  br i1 %.not2636, label %bb.ns, label %bb.nu

bb.ns:                                            ; preds = %bb.nr
  %i.avy = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.avz = call i32 @cli_unlink(ptr noundef %i.avy) #22
  %.not2637 = icmp eq i32 %i.avz, 0
  br i1 %.not2637, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.awa = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.awa) #22
  br label %.thread2995

bb.nu:                                            ; preds = %bb.ns, %bb.nr
  %i.awb = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.awb) #22
  br label %.thread2995

bb.nv:                                            ; preds = %bb.nl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.72) #22
  %i.awc = call i32 @close(i32 noundef %i.auv) #22 ; 0 uses
  %i.awd = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.awe = call i32 @cli_unlink(ptr noundef %i.awd) #22
  %.not2634 = icmp eq i32 %i.awe, 0
  br i1 %.not2634, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.awf = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.awf) #22
  call void @free(ptr noundef nonnull %i.arz) #22
  br label %.thread2995

bb.nx:                                            ; preds = %bb.nv
  %i.awg = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.awg) #22
  br label %.sink.split3693

end_hunk_0
begin_hunk_1_@cli_scanpe:bb.a
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.72) #22
  %i.bdn = call i32 @close(i32 noundef %i.bcg) #22 ; 0 uses
  %i.bdo = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.bdp = call i32 @cli_unlink(ptr noundef %i.bdo) #22
  %.not2657 = icmp eq i32 %i.bdp, 0
  br i1 %.not2657, label %bb.px, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.bdq = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.bdq) #22
  call void @free(ptr noundef nonnull %i.bah) #22
  br label %.thread2995

bb.px:                                            ; preds = %bb.pv
  %i.bdr = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.bdr) #22
  br label %.sink.split3693

bb.py:                                            ; preds = %bb.pl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.73) #22
  %i.bds = call i32 @close(i32 noundef %i.bcg) #22 ; 0 uses
  %i.bdt = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.bdu = call i32 @cli_unlink(ptr noundef %i.bdt) #22
  %.not2663 = icmp eq i32 %i.bdu, 0
  br i1 %.not2663, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.bdv = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.bdv) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bbm, ptr noundef nonnull %i.bah, i32 noundef 0)
  br label %.thread2995

bb.qa:                                            ; preds = %bb.py
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bbm, ptr noundef nonnull %i.bah, i32 noundef 0)
  %i.bdw = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.bdw) #22
  br label %bb.qb

bb.qb:                                            ; preds = %bb.od, %bb.oc, %bb.ob, %.loopexit, %bb.oe, %bb.oh, %bb.oj, %.thread3047, %bb.ox, %bb.qa
  %i.bdx = load ptr, ptr %i.kx, align 8, !tbaa !58
  %i.bdy = load i32, ptr %i.bdx, align 4, !tbaa !60
  %i.bdz = and i32 %i.bdy, 32
  %.not2665 = icmp eq i32 %i.bdz, 0
  br i1 %.not2665, label %.critedge129, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.bea = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.beb = add i32 %.622202992, 1                 ; 2 uses
  %i.bec = zext i32 %i.beb to i64                 ; 15 uses
  %i.bed = getelementptr inbounds nuw [36 x i8], ptr %i.bea, i64 %i.bec ; 2 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 12
  %i.bef = load i32, ptr %i.bee, align 4, !tbaa !13 ; 16 uses
  %i.beg = zext i32 %.622202992 to i64            ; 11 uses
  %i.beh = getelementptr inbounds nuw [36 x i8], ptr %i.bea, i64 %i.beg
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 4
  %i.bej = load i32, ptr %i.bei, align 4, !tbaa !61
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bed, i64 4
  %i.bel = load i32, ptr %i.bek, align 4, !tbaa !61
  %i.bem = add i32 %i.bel, %i.bej                 ; 2 uses
  store i32 %i.bem, ptr %i.i, align 4, !tbaa !16
  %i.ben = call i32 @llvm.umax.i32(i32 %i.bem, i32 %i.bef)
  %i.beo = zext i32 %i.ben to i64
  %i.bep = call i32 @cli_checklimits(ptr noundef nonnull @.str.81, ptr noundef nonnull %0, i64 noundef %i.beo, i64 noundef 0, i64 noundef 0) #22
  %.not2666 = icmp eq i32 %i.bep, 0
  br i1 %.not2666, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.qe:                                            ; preds = %bb.qc
  %i.beq = icmp ult i32 %i.bef, 26
  %.pre3433 = load i32, ptr %i.i, align 4, !tbaa !16 ; 3 uses
  br i1 %i.beq, label %bb.qg, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.ber = icmp ule i32 %.pre3433, %i.bef
  %i.bes = icmp ugt i32 %.pre3433, 1073741824
  %or.cond133 = or i1 %i.ber, %i.bes
  br i1 %or.cond133, label %bb.qg, label %bb.qh

bb.qg:                                            ; preds = %bb.qf, %bb.qe
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.82, i32 noundef %i.bef, i32 noundef %.pre3433) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.qh:                                            ; preds = %bb.qf
  %i.bet = load ptr, ptr %2, align 8, !tbaa !29
  %i.beu = getelementptr inbounds nuw [36 x i8], ptr %i.bet, i64 %i.bec ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 12
  %i.bew = load i32, ptr %i.bev, align 4, !tbaa !13
  %.not2667 = icmp eq i32 %i.bew, 0
  br i1 %.not2667, label %bb.qj, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.bex = getelementptr inbounds nuw i8, ptr %i.beu, i64 8
  %i.bey = load i32, ptr %i.bex, align 4, !tbaa !15
  %i.bez = zext i32 %i.bey to i64
  %i.bfa = zext i32 %i.bef to i64
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.bfc = load ptr, ptr %i.bfb, align 8, !tbaa !38
  %i.bfd = call ptr %i.bfc(ptr noundef %i.ac, i64 noundef range(i64 0, 8589934855) %i.bez, i64 noundef %i.bfa, i32 noundef 0) #22, !inline_history !0 ; 11 uses
  %.not2668 = icmp eq ptr %i.bfd, null
  br i1 %.not2668, label %bb.qj, label %bb.qk

bb.qj:                                            ; preds = %bb.qi, %bb.qh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.83, i32 noundef %i.beb) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.qk:                                            ; preds = %bb.qi
  %i.bfe = load i32, ptr %i.i, align 4, !tbaa !16
  %i.bff = add i32 %i.bfe, 8192
  %i.bfg = zext i32 %i.bff to i64
  %i.bfh = call ptr @cli_max_calloc(i64 noundef %i.bfg, i64 noundef 1) #22 ; 13 uses
  %i.bfi = icmp eq ptr %i.bfh, null
  br i1 %i.bfi, label %bb.ql, label %bb.qm

bb.ql:                                            ; preds = %bb.qk
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.qm:                                            ; preds = %bb.qk
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.f, i64 105 ; 3 uses
  %i.bfk = call ptr @cli_memstr(ptr noundef nonnull @.str.84, i64 noundef 24, ptr noundef nonnull %i.bfj, i64 noundef 13) #22
  %.not2669 = icmp eq ptr %i.bfk, null
  br i1 %.not2669, label %bb.qn, label %bb.qs

bb.qn:                                            ; preds = %bb.qm
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.f, i64 113 ; 3 uses
  %i.bfm = call ptr @cli_memstr(ptr noundef nonnull @.str.84, i64 noundef 24, ptr noundef nonnull %i.bfl, i64 noundef 13) #22
  %.not2670 = icmp eq ptr %i.bfm, null
  br i1 %.not2670, label %bb.qo, label %bb.qs

bb.qo:                                            ; preds = %bb.qn
  %i.bfn = call ptr @cli_memstr(ptr noundef nonnull @.str.86, i64 noundef 24, ptr noundef nonnull %i.bfj, i64 noundef 13) #22
  %.not2671 = icmp eq ptr %i.bfn, null
  br i1 %.not2671, label %bb.qp, label %bb.qs

bb.qp:                                            ; preds = %bb.qo
  %i.bfo = call ptr @cli_memstr(ptr noundef nonnull @.str.86, i64 noundef 24, ptr noundef nonnull %i.bfl, i64 noundef 13) #22
  %.not2672 = icmp eq ptr %i.bfo, null
  br i1 %.not2672, label %bb.qq, label %bb.qs

bb.qq:                                            ; preds = %bb.qp
  %i.bfp = call ptr @cli_memstr(ptr noundef nonnull @.str.88, i64 noundef 24, ptr noundef nonnull %i.bfj, i64 noundef 13) #22
  %.not2673 = icmp eq ptr %i.bfp, null
  br i1 %.not2673, label %bb.qr, label %bb.qs

bb.qr:                                            ; preds = %bb.qq
  %i.bfq = call ptr @cli_memstr(ptr noundef nonnull @.str.88, i64 noundef 24, ptr noundef nonnull %i.bfl, i64 noundef 13) #22
  %.not2674 = icmp eq ptr %i.bfq, null
  br i1 %.not2674, label %.thread3655, label %bb.qs

bb.qs:                                            ; preds = %bb.qq, %bb.qr, %bb.qo, %bb.qp, %bb.qm, %bb.qn
  %.str.85.sink = phi ptr [ @.str.87, %bb.qo ], [ @.str.85, %bb.qm ], [ @.str.85, %bb.qn ], [ @.str.87, %bb.qp ], [ @.str.89, %bb.qr ], [ @.str.89, %bb.qq ]
  %.ph = phi i1 [ true, %bb.qo ], [ false, %bb.qm ], [ false, %bb.qn ], [ true, %bb.qp ], [ true, %bb.qr ], [ true, %bb.qq ]
  %.ph3067 = phi i1 [ false, %bb.qo ], [ true, %bb.qm ], [ true, %bb.qn ], [ false, %bb.qp ], [ true, %bb.qr ], [ true, %bb.qq ] ; 2 uses
  %.ph3068 = phi i1 [ true, %bb.qo ], [ true, %bb.qm ], [ true, %bb.qn ], [ true, %bb.qp ], [ false, %bb.qr ], [ false, %bb.qq ] ; 3 uses
  %.02178.ph = phi ptr [ @upx_inflate2d, %bb.qo ], [ @upx_inflate2b, %bb.qm ], [ @upx_inflate2b, %bb.qn ], [ @upx_inflate2d, %bb.qp ], [ @upx_inflate2e, %bb.qr ], [ @upx_inflate2e, %bb.qq ] ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.85.sink) #22
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bfs = load i32, ptr %i.bfr, align 2, !tbaa !39
  %i.bft = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.bfu = load i32, ptr %i.bft, align 4, !tbaa !39
  %i.bfv = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bfw = getelementptr inbounds nuw [36 x i8], ptr %i.bfv, i64 %i.bec
  %i.bfx = load i32, ptr %i.bfw, align 4, !tbaa !14 ; 2 uses
  %i.bfy = add i32 %i.bfu, %i.bfx
  %i.bfz = sub i32 %i.bfs, %i.bfy                 ; 4 uses
  %i.bga = load i8, ptr %i.aji, align 1, !tbaa !39
  %i.bgb = icmp ne i8 %i.bga, -66
  %i.bgc = add i32 %i.bfz, -4096
  %i.bgd = icmp ult i32 %i.bgc, -4095
  %i.bge = icmp ugt i32 %i.bfz, %i.bef
  %i.bgf = or i1 %i.bge, %i.bgd
  %or.cond2920 = select i1 %i.bgb, i1 true, i1 %i.bgf
  br i1 %or.cond2920, label %bb.qu, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.90, i32 noundef %i.bfz) #22
  %.pre3431 = load ptr, ptr %2, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [36 x i8], ptr %.pre3431, i64 %i.bec
  %.pre3432 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !14
  br label %bb.qu

bb.qu:                                            ; preds = %bb.qs, %bb.qt
  %i.bgg = phi i32 [ %.pre3432, %bb.qt ], [ %i.bfx, %bb.qs ]
  %i.bgh = phi ptr [ %.pre3431, %bb.qt ], [ %i.bfv, %bb.qs ]
  %.02094 = phi i32 [ %i.bfz, %bb.qt ], [ 0, %bb.qs ] ; 4 uses
  %i.bgi = zext nneg i32 %.02094 to i64
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bfd, i64 %i.bgi
  %i.bgk = sub i32 %i.bef, %.02094
  %i.bgl = getelementptr inbounds nuw [36 x i8], ptr %i.bgh, i64 %i.beg
  %i.bgm = load i32, ptr %i.bgl, align 4, !tbaa !14
  %i.bgn = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bgo = load i32, ptr %i.bgn, align 8, !tbaa !95
  %i.bgp = sub i32 %i.bgo, %.02094
  %i.bgq = call i32 %.02178.ph(ptr noundef nonnull %i.bgj, i32 noundef %i.bgk, ptr noundef nonnull %i.bfh, ptr noundef nonnull %i.i, i32 noundef %i.bgm, i32 noundef %i.bgg, i32 noundef %i.bgp) #22, !callees !135
  %i.bgr = icmp sgt i32 %i.bgq, -1
  br i1 %i.bgr, label %.thread3089.sink.split, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %.not2676 = icmp eq i32 %.02094, 0
  br i1 %.not2676, label %bb.qx, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.bgs = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bgt = getelementptr inbounds nuw [36 x i8], ptr %i.bgs, i64 %i.beg
  %i.bgu = load i32, ptr %i.bgt, align 4, !tbaa !14
  %i.bgv = getelementptr inbounds nuw [36 x i8], ptr %i.bgs, i64 %i.bec
  %i.bgw = load i32, ptr %i.bgv, align 4, !tbaa !14
  %i.bgx = load i32, ptr %i.bgn, align 8, !tbaa !95
  %i.bgy = call i32 %.02178.ph(ptr noundef nonnull %i.bfd, i32 noundef %i.bef, ptr noundef nonnull %i.bfh, ptr noundef nonnull %i.i, i32 noundef %i.bgu, i32 noundef %i.bgw, i32 noundef %i.bgx) #22, !callees !135
  %i.bgz = icmp sgt i32 %i.bgy, -1
  br i1 %i.bgz, label %.thread3089.sink.split, label %bb.qx

bb.qx:                                            ; preds = %bb.qw, %bb.qv
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.92) #22
  br i1 %.ph, label %.thread3655, label %bb.qz

.thread3655:                                      ; preds = %bb.qr, %bb.qx
  %i.bha = phi i1 [ %.ph3067, %bb.qx ], [ true, %bb.qr ]
  %i.bhb = phi i1 [ %.ph3068, %bb.qx ], [ true, %bb.qr ] ; 2 uses
  %i.bhc = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bhd = getelementptr inbounds nuw [36 x i8], ptr %i.bhc, i64 %i.beg
  %i.bhe = load i32, ptr %i.bhd, align 4, !tbaa !14
  %i.bhf = getelementptr inbounds nuw [36 x i8], ptr %i.bhc, i64 %i.bec
  %i.bhg = load i32, ptr %i.bhf, align 4, !tbaa !14
  %i.bhh = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bhi = load i32, ptr %i.bhh, align 8, !tbaa !95
  %i.bhj = call i32 @upx_inflate2b(ptr noundef nonnull %i.bfd, i32 noundef %i.bef, ptr noundef nonnull %i.bfh, ptr noundef nonnull %i.i, i32 noundef %i.bhe, i32 noundef %i.bhg, i32 noundef %i.bhi) #22
  %i.bhk = icmp eq i32 %i.bhj, -1
  br i1 %i.bhk, label %bb.qy, label %.thread3089.sink.split

bb.qy:                                            ; preds = %.thread3655
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bfd, i64 21
  %i.bhm = add nsw i32 %i.bef, -21
  %i.bhn = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bho = getelementptr inbounds nuw [36 x i8], ptr %i.bhn, i64 %i.beg
  %i.bhp = load i32, ptr %i.bho, align 4, !tbaa !14
  %i.bhq = getelementptr inbounds nuw [36 x i8], ptr %i.bhn, i64 %i.bec
  %i.bhr = load i32, ptr %i.bhq, align 4, !tbaa !14
  %i.bhs = load i32, ptr %i.bhh, align 8, !tbaa !95
  %i.bht = add i32 %i.bhs, -21
  %i.bhu = call i32 @upx_inflate2b(ptr noundef nonnull %i.bhl, i32 noundef %i.bhm, ptr noundef nonnull %i.bfh, ptr noundef nonnull %i.i, i32 noundef %i.bhp, i32 noundef %i.bhr, i32 noundef %i.bht) #22
  %i.bhv = icmp eq i32 %i.bhu, -1
  br i1 %i.bhv, label %.split, label %.thread3089.sink.split

.split:                                           ; preds = %bb.qy
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.93) #22
  br i1 %i.bha, label %bb.ra, label %bb.rc

bb.qz:                                            ; preds = %bb.qx
  br i1 %.ph3067, label %bb.ra, label %bb.rc

bb.ra:                                            ; preds = %.split, %bb.qz
  %i.bhw = phi i1 [ %i.bhb, %.split ], [ %.ph3068, %bb.qz ]
  %i.bhx = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bhy = getelementptr inbounds nuw [36 x i8], ptr %i.bhx, i64 %i.beg
  %i.bhz = load i32, ptr %i.bhy, align 4, !tbaa !14
  %i.bia = getelementptr inbounds nuw [36 x i8], ptr %i.bhx, i64 %i.bec
  %i.bib = load i32, ptr %i.bia, align 4, !tbaa !14
  %i.bic = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bid = load i32, ptr %i.bic, align 8, !tbaa !95
  %i.bie = call i32 @upx_inflate2d(ptr noundef nonnull %i.bfd, i32 noundef %i.bef, ptr noundef nonnull %i.bfh, ptr noundef nonnull %i.i, i32 noundef %i.bhz, i32 noundef %i.bib, i32 noundef %i.bid) #22
  %i.bif = icmp eq i32 %i.bie, -1
  br i1 %i.bif, label %bb.rb, label %.thread3089.sink.split

bb.rb:                                            ; preds = %bb.ra
  %i.big = getelementptr inbounds nuw i8, ptr %i.bfd, i64 21
  %i.bih = add nsw i32 %i.bef, -21
  %i.bii = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bij = getelementptr inbounds nuw [36 x i8], ptr %i.bii, i64 %i.beg
  %i.bik = load i32, ptr %i.bij, align 4, !tbaa !14
  %i.bil = getelementptr inbounds nuw [36 x i8], ptr %i.bii, i64 %i.bec
  %i.bim = load i32, ptr %i.bil, align 4, !tbaa !14
  %i.bin = load i32, ptr %i.bic, align 8, !tbaa !95
  %i.bio = add i32 %i.bin, -21
  %i.bip = call i32 @upx_inflate2d(ptr noundef nonnull %i.big, i32 noundef %i.bih, ptr noundef nonnull %i.bfh, ptr noundef nonnull %i.i, i32 noundef %i.bik, i32 noundef %i.bim, i32 noundef %i.bio) #22
  %i.biq = icmp eq i32 %i.bip, -1
  br i1 %i.biq, label %.split3657, label %.thread3089.sink.split

.split3657:                                       ; preds = %bb.rb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.95) #22
  br i1 %i.bhw, label %bb.rd, label %.thread3089

bb.rc:                                            ; preds = %.split, %bb.qz
  %i.bir = phi i1 [ %i.bhb, %.split ], [ %.ph3068, %bb.qz ]
  br i1 %i.bir, label %bb.rd, label %.thread3089

bb.rd:                                            ; preds = %.split3657, %bb.rc
  %i.bis = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bit = getelementptr inbounds nuw [36 x i8], ptr %i.bis, i64 %i.beg
  %i.biu = load i32, ptr %i.bit, align 4, !tbaa !14
  %i.biv = getelementptr inbounds nuw [36 x i8], ptr %i.bis, i64 %i.bec
  %i.biw = load i32, ptr %i.biv, align 4, !tbaa !14
  %i.bix = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.biy = load i32, ptr %i.bix, align 8, !tbaa !95
  %i.biz = call i32 @upx_inflate2e(ptr noundef nonnull %i.bfd, i32 noundef %i.bef, ptr noundef nonnull %i.bfh, ptr noundef nonnull %i.i, i32 noundef %i.biu, i32 noundef %i.biw, i32 noundef %i.biy) #22
  %i.bja = icmp eq i32 %i.biz, -1
  br i1 %i.bja, label %bb.re, label %bb.rf

bb.re:                                            ; preds = %bb.rd
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bfd, i64 21
  %i.bjc = add nsw i32 %i.bef, -21
  %i.bjd = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bje = getelementptr inbounds nuw [36 x i8], ptr %i.bjd, i64 %i.beg
  %i.bjf = load i32, ptr %i.bje, align 4, !tbaa !14
  %i.bjg = getelementptr inbounds nuw [36 x i8], ptr %i.bjd, i64 %i.bec
  %i.bjh = load i32, ptr %i.bjg, align 4, !tbaa !14
  %i.bji = load i32, ptr %i.bix, align 8, !tbaa !95
  %i.bjj = add i32 %i.bji, -21
  %i.bjk = call i32 @upx_inflate2e(ptr noundef nonnull %i.bjb, i32 noundef %i.bjc, ptr noundef nonnull %i.bfh, ptr noundef nonnull %i.i, i32 noundef %i.bjf, i32 noundef %i.bjh, i32 noundef %i.bjj) #22
  %i.bjl = icmp eq i32 %i.bjk, -1
  br i1 %i.bjl, label %.thread3089.sink.split, label %bb.rf

bb.rf:                                            ; preds = %bb.re, %bb.rd
  br label %.thread3089.sink.split

.thread3089.sink.split:                           ; preds = %bb.re, %bb.ra, %bb.rb, %.thread3655, %bb.qy, %bb.qw, %bb.qu, %bb.rf
  %.str.91.sink = phi ptr [ @.str.98, %bb.rf ], [ @.str.91, %bb.qw ], [ @.str.94, %.thread3655 ], [ @.str.96, %bb.ra ], [ @.str.91, %bb.qu ], [ @.str.94, %bb.qy ], [ @.str.96, %bb.rb ], [ @.str.97, %bb.re ]
  %.132197.ph = phi i32 [ 1, %bb.rf ], [ 1, %bb.qw ], [ 1, %.thread3655 ], [ 1, %bb.ra ], [ 1, %bb.qu ], [ 1, %bb.qy ], [ 1, %bb.rb ], [ 0, %bb.re ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.91.sink) #22
  br label %.thread3089

.thread3089:                                      ; preds = %.thread3089.sink.split, %.split3657, %bb.rc
  %.132197 = phi i32 [ 0, %bb.rc ], [ 0, %.split3657 ], [ %.132197.ph, %.thread3089.sink.split ] ; 4 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.f, i64 47
  %i.bjn = call ptr @cli_memstr(ptr noundef nonnull @.str.99, i64 noundef 20, ptr noundef nonnull %i.bjm, i64 noundef 20) #22
  %.not2678 = icmp eq ptr %i.bjn, null
  br i1 %.not2678, label %bb.rl, label %bb.rg

bb.rg:                                            ; preds = %.thread3089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  %i.bjp = load i32, ptr %i.bjo, align 1, !tbaa !39 ; 2 uses
  store i32 %i.bjp, ptr %i.m, align 4, !tbaa !16
  %i.bjq = load i8, ptr %i.f, align 16
  %i.bjr = icmp eq i8 %i.bjq, 96
  %i.bjs = load i8, ptr %i.aji, align 1
  %i.bjt = icmp eq i8 %i.bjs, -66
  %or.cond151 = select i1 %i.bjr, i1 %i.bjt, i1 false
  br i1 %or.cond151, label %bb.rh, label %bb.ri

bb.rh:                                            ; preds = %bb.rg
  %i.bju = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bjv = load i32, ptr %i.bju, align 2, !tbaa !39
  %i.bjw = load ptr, ptr %2, align 8, !tbaa !29
  %i.bjx = getelementptr inbounds nuw [36 x i8], ptr %i.bjw, i64 %i.bec
  %i.bjy = load i32, ptr %i.bjx, align 4, !tbaa !14
  %i.bjz = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.bka = load i32, ptr %i.bjz, align 4, !tbaa !39
  %i.bkb = add i32 %i.bjy, %i.bka
  %i.bkc = sub i32 %i.bjv, %i.bkb
  %.not2683 = icmp eq i32 %i.bkc, 21
  %spec.store.select = select i1 %.not2683, i32 21, i32 0
  br label %bb.ri

bb.ri:                                            ; preds = %bb.rh, %bb.rg
  %.02093 = phi i32 [ %spec.store.select, %bb.rh ], [ 0, %bb.rg ] ; 2 uses
  %i.bkd = load i32, ptr %i.i, align 4, !tbaa !16
  %.not2684 = icmp ugt i32 %i.bjp, %i.bkd
  br i1 %.not2684, label %bb.rk, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.bke = zext nneg i32 %.02093 to i64
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bfd, i64 %i.bke
  %i.bkg = sub nuw i32 %i.bef, %.02093
  %i.bkh = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.bki = getelementptr inbounds nuw [36 x i8], ptr %i.bkh, i64 %i.beg
  %i.bkj = load i32, ptr %i.bki, align 4, !tbaa !14
  %i.bkk = getelementptr inbounds nuw [36 x i8], ptr %i.bkh, i64 %i.bec
  %i.bkl = load i32, ptr %i.bkk, align 4, !tbaa !14
  %i.bkm = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bkn = load i32, ptr %i.bkm, align 8, !tbaa !95
  %i.bko = call i32 @upx_inflatelzma(ptr noundef nonnull %i.bkf, i32 noundef %i.bkg, ptr noundef nonnull %i.bfh, ptr noundef nonnull %i.m, i32 noundef %i.bkj, i32 noundef %i.bkl, i32 noundef %i.bkn, i32 noundef 131075) #22
  %i.bkp = icmp sgt i32 %i.bko, -1
  %i.bkq = zext i1 %i.bkp to i32
  br label %bb.rk

bb.rk:                                            ; preds = %bb.rj, %bb.ri
  %.142198 = phi i32 [ %i.bkq, %bb.rj ], [ %.132197, %bb.ri ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  br label %bb.rs

bb.rl:                                            ; preds = %.thread3089
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  %i.bks = call ptr @cli_memstr(ptr noundef nonnull @.str.100, i64 noundef 8, ptr noundef nonnull %i.bkr, i64 noundef 8) #22
  %.not2679 = icmp eq ptr %i.bks, null
  br i1 %.not2679, label %bb.rs, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.f, i64 69
  %i.bku = call ptr @cli_memstr(ptr noundef nonnull @.str.101, i64 noundef 8, ptr noundef nonnull %i.bkt, i64 noundef 8) #22
  %.not2680 = icmp eq ptr %i.bku, null
  br i1 %.not2680, label %bb.rs, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #22
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.f, i64 43
  %i.bkw = load i32, ptr %i.bkv, align 1, !tbaa !39 ; 2 uses
  store i32 %i.bkw, ptr %i.n, align 4, !tbaa !16
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.f, i64 65
  %i.bky = load i32, ptr %i.bkx, align 1, !tbaa !39
  %i.bkz = load i8, ptr %i.f, align 16
  %i.bla = icmp eq i8 %i.bkz, 96
  %i.blb = load i8, ptr %i.aji, align 1
  %i.blc = icmp eq i8 %i.blb, -66
  %or.cond159 = select i1 %i.bla, i1 %i.blc, i1 false
  br i1 %or.cond159, label %bb.ro, label %bb.rp

bb.ro:                                            ; preds = %bb.rn
  %i.bld = getelementptr inbounds nuw i8, ptr %i.f, i64 2
end_hunk_1
begin_hunk_2_@cli_scanpe:bb.a
  %i.bwa = getelementptr i8, ptr %i.bvx, i64 5
  %i.bwb = load i64, ptr %i.bwa, align 1
  %i.bwc = xor i64 %i.bwb, -5998229642458895424
  %i.bwd = or i64 %i.bvz, %i.bwc
  %i.bwe = icmp ne i64 %i.bwd, 0
  %i.bwf = zext i1 %i.bwe to i32
  %i.bwg = icmp eq i32 %i.bwf, 0
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.f, i64 19
  %i.bwi = load i8, ptr %i.bwh, align 1
  %i.bwj = icmp eq i8 %i.bwi, -71
  %or.cond168 = select i1 %i.bwg, i1 %i.bwj, i1 false
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bwl = load i16, ptr %i.bwk, align 8
  %i.bwm = icmp eq i16 %i.bwl, -5759
  %or.cond173 = select i1 %or.cond168, i1 %i.bwm, i1 false
  br i1 %or.cond173, label %bb.vo, label %.thread3109

bb.vo:                                            ; preds = %bb.vn
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.f, i64 30
  %i.bwo = load i32, ptr %i.bwn, align 1
  %i.bwp = icmp ne i32 %i.bwo, -1031678581
  %i.bwq = zext i1 %i.bwp to i32
  %.not2726 = icmp eq i32 %i.bwq, 0
  br i1 %.not2726, label %bb.vp, label %.thread3109

bb.vp:                                            ; preds = %bb.vo
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.bws = load i32, ptr %i.bwr, align 1, !tbaa !39
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.f, i64 34
  %i.bwu = load i32, ptr %i.bwt, align 2, !tbaa !39
  %reass.sub = sub i32 %i.bwu, %i.bws
  %i.bwv = icmp eq i32 %reass.sub, 90
  br i1 %i.bwv, label %bb.vq, label %.thread3109

bb.vq:                                            ; preds = %bb.vp
  %i.bww = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.bwx = load i32, ptr %i.bww, align 4, !tbaa !39
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.f, i64 26
  %i.bwz = load i32, ptr %i.bwy, align 2, !tbaa !39
  %i.bxa = sub nsw i32 %i.bwx, %i.bwz             ; 2 uses
  %.not2727 = icmp eq i32 %i.bxa, 0
  br i1 %.not2727, label %.thread3109, label %.thread3118

.thread3109:                                      ; preds = %bb.vn, %bb.vp, %bb.vo, %bb.vm, %bb.vq
  %i.bxb = load i64, ptr %i.f, align 16
  %i.bxc = xor i64 %i.bxb, 6220386894898563925
  %i.bxd = getelementptr i8, ptr %i.f, i64 8
  %i.bxe = load i8, ptr %i.bxd, align 8
  %i.bxf = zext i8 %i.bxe to i64
  %i.bxg = xor i64 %i.bxf, 87
  %i.bxh = or i64 %i.bxc, %i.bxg
  %i.bxi = icmp ne i64 %i.bxh, 0
  %i.bxj = zext i1 %i.bxi to i32
  %.not2729 = icmp eq i32 %i.bxj, 0
  br i1 %.not2729, label %bb.vr, label %.thread3113

bb.vr:                                            ; preds = %.thread3109
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.f, i64 23
  %i.bxl = load i64, ptr %i.bxk, align 1
  %i.bxm = icmp ne i64 %i.bxl, -1332681760143572760
  %i.bxn = zext i1 %i.bxm to i32
  %i.bxo = icmp eq i32 %i.bxn, 0
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.f, i64 35
  %i.bxq = load i8, ptr %i.bxp, align 1
  %i.bxr = icmp eq i8 %i.bxq, -71
  %or.cond177 = select i1 %i.bxo, i1 %i.bxr, i1 false
  br i1 %or.cond177, label %bb.vs, label %.thread3113

bb.vs:                                            ; preds = %bb.vr
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.f, i64 31
  %i.bxt = load i32, ptr %i.bxs, align 1, !tbaa !39
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.f, i64 50
  %i.bxv = load i32, ptr %i.bxu, align 2, !tbaa !39
  %reass.sub2731 = sub i32 %i.bxv, %i.bxt
  %i.bxw = icmp eq i32 %reass.sub2731, 90
  br i1 %i.bxw, label %bb.vt, label %.thread3113

bb.vt:                                            ; preds = %bb.vs
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.bxy = load i32, ptr %i.bxx, align 4, !tbaa !39
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.f, i64 42
  %i.bya = load i32, ptr %i.bxz, align 2, !tbaa !39
  %i.byb = sub nsw i32 %i.bxy, %i.bya             ; 2 uses
  %.not2732 = icmp eq i32 %i.byb, 0
  br i1 %.not2732, label %.thread3113, label %.thread3118

.thread3113:                                      ; preds = %bb.vr, %bb.vs, %.thread3109, %bb.vt
  %i.byc = load i64, ptr %i.f, align 16
  %i.byd = xor i64 %i.byc, -9125137269982697376
  %i.bye = getelementptr i8, ptr %i.f, i64 8
  %i.byf = load i8, ptr %i.bye, align 8
  %i.byg = zext i8 %i.byf to i64
  %i.byh = xor i64 %i.byg, 237
  %i.byi = or i64 %i.byd, %i.byh
  %i.byj = icmp ne i64 %i.byi, 0
  %i.byk = zext i1 %i.byj to i32
  %i.byl = icmp eq i32 %i.byk, 0
  %i.bym = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  %i.byn = load i8, ptr %i.bym, align 1
  %i.byo = icmp eq i8 %i.byn, -71
  %or.cond181 = select i1 %i.byl, i1 %i.byo, i1 false
  %i.byp = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  %i.byq = load i16, ptr %i.byp, align 2
  %i.byr = icmp eq i16 %i.byq, -17011
  %or.cond186 = select i1 %or.cond181, i1 %i.byr, i1 false
  br i1 %or.cond186, label %bb.vu, label %.thread3123

bb.vu:                                            ; preds = %.thread3113
  %i.bys = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.byt = load i16, ptr %i.bys, align 1
  %i.byu = xor i16 %i.byt, -2165
  %i.byv = getelementptr i8, ptr %i.bys, i64 2
  %i.byw = load i8, ptr %i.byv, align 1
  %i.byx = zext i8 %i.byw to i16
  %i.byy = xor i16 %i.byx, 172
  %i.byz = or i16 %i.byu, %i.byy
  %i.bza = icmp ne i16 %i.byz, 0
  %i.bzb = zext i1 %i.bza to i32
  %.not2735 = icmp eq i32 %i.bzb, 0
  br i1 %.not2735, label %bb.vv, label %.thread3123

bb.vv:                                            ; preds = %bb.vu
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.bzd = load i32, ptr %i.bzc, align 1, !tbaa !39
  %i.bze = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.bzf = load i32, ptr %i.bze, align 4, !tbaa !39
  %reass.sub2736 = sub i32 %i.bzf, %i.bzd
  %i.bzg = icmp eq i32 %reass.sub2736, 72
  br i1 %i.bzg, label %bb.vw, label %.thread3123

bb.vw:                                            ; preds = %bb.vv
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.bzi = load i32, ptr %i.bzh, align 2, !tbaa !39
  br label %.thread3118

.thread3118:                                      ; preds = %bb.vq, %bb.vw, %bb.vt
  %.22091 = phi i32 [ %i.byb, %bb.vt ], [ %i.bzi, %bb.vw ], [ %i.bxa, %bb.vq ] ; 4 uses
  %.2 = phi i16 [ 16, %bb.vt ], [ -24, %bb.vw ], [ 0, %bb.vq ] ; 3 uses
  %i.bzj = add i32 %.22091, -2049
  %or.cond188 = icmp ult i32 %i.bzj, 6143
  br i1 %or.cond188, label %bb.vx, label %.thread3123

bb.vx:                                            ; preds = %.thread3118
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.f, i64 99
  %i.bzl = sext i16 %.2 to i32                    ; 2 uses
  %i.bzm = sext i16 %.2 to i64
  %i.bzn = getelementptr inbounds i8, ptr %i.bzk, i64 %i.bzm ; 2 uses
  %i.bzo = load i16, ptr %i.bzn, align 1
  %i.bzp = xor i16 %i.bzo, -7510
  %i.bzq = getelementptr i8, ptr %i.bzn, i64 2
  %i.bzr = load i8, ptr %i.bzq, align 1
  %i.bzs = zext i8 %i.bzr to i16
  %i.bzt = xor i16 %i.bzs, 204
  %i.bzu = or i16 %i.bzp, %i.bzt
  %i.bzv = icmp ne i16 %i.bzu, 0
  %i.bzw = zext i1 %i.bzv to i32
  %.not2738 = icmp eq i32 %i.bzw, 0
  br i1 %.not2738, label %bb.vy, label %.thread3123

bb.vy:                                            ; preds = %bb.vx
  %i.bzx = getelementptr i8, ptr %i.bvk, i64 -28
  %i.bzy = load i32, ptr %i.bzx, align 4, !tbaa !15
  %i.bzz = add nuw nsw i32 %.22091, 198
  %i.caa = add nsw i32 %i.bzz, %i.bzl
  %i.cab = add i32 %i.caa, %i.bzy
  %i.cac = zext i32 %i.cab to i64
  %.not2739 = icmp ult i64 %i.ae, %i.cac
  br i1 %.not2739, label %.thread3123, label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  %i.cad = call ptr @cli_max_malloc(i64 noundef %i.ae) #22 ; 9 uses
  %i.cae = icmp eq ptr %i.cad, null
  br i1 %i.cae, label %bb.wa, label %bb.wb

bb.wa:                                            ; preds = %bb.vz
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.134, i64 noundef %i.ae) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.wb:                                            ; preds = %bb.vz
  %i.caf = call fastcc i64 @fmap_readn(ptr noundef %i.ac, ptr noundef nonnull %i.cad, i64 noundef 0, i64 noundef %i.ae)
  %.not2740 = icmp eq i64 %i.caf, %i.ae
  br i1 %.not2740, label %bb.wd, label %bb.wc

bb.wc:                                            ; preds = %bb.wb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.135, i64 noundef %i.ae) #22
  call void @free(ptr noundef nonnull %i.cad) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.wd:                                            ; preds = %bb.wb
  %.not2741 = icmp eq ptr %.02164, null
  br i1 %.not2741, label %bb.wf, label %bb.we

bb.we:                                            ; preds = %bb.wd
  %i.cag = call i32 @cli_jsonstr(ptr noundef nonnull %.02164, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.136) #22 ; 0 uses
  br label %bb.wf

bb.wf:                                            ; preds = %bb.we, %bb.wd
  %i.cah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cai = load ptr, ptr %i.cah, align 8, !tbaa !136
  %i.caj = call i64 @evidence_num_alerts(ptr noundef %i.cai) #22
  %i.cak = load i16, ptr %i.bf, align 8, !tbaa !30
  %i.cal = zext i16 %i.cak to i32
  %i.cam = add nsw i32 %i.cal, -1
  %i.can = load i32, ptr %i.kf, align 8, !tbaa !89
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.137, i32 noundef %i.cam, i32 noundef %i.can, i32 noundef %.22091, i32 noundef %i.bzl) #22
  %i.cao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cap = load ptr, ptr %i.cao, align 8, !tbaa !127
  %i.caq = call ptr @cli_gentemp(ptr noundef %i.cap) #22 ; 3 uses
  store ptr %i.caq, ptr %i.g, align 8, !tbaa !82
  %.not2742 = icmp eq ptr %i.caq, null
  br i1 %.not2742, label %bb.wg, label %bb.wh

bb.wg:                                            ; preds = %bb.wf
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.cad, i32 noundef 0)
  br label %.thread2995

bb.wh:                                            ; preds = %bb.wf
  %i.car = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.caq, i32 noundef 578, i32 noundef 384) #22 ; 6 uses
  %i.cas = icmp slt i32 %i.car, 0
  br i1 %i.cas, label %bb.wi, label %bb.wj

bb.wi:                                            ; preds = %bb.wh
  %i.cat = load ptr, ptr %i.g, align 8, !tbaa !82
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138, ptr noundef %i.cat) #22
  %i.cau = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cau) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.cad, i32 noundef 0)
  br label %.thread2995

bb.wj:                                            ; preds = %bb.wh
  %i.cav = trunc nsw i64 %i.ae to i32
  %i.caw = load ptr, ptr %2, align 8, !tbaa !29
  %i.cax = load i16, ptr %i.bf, align 8, !tbaa !30
  %i.cay = zext i16 %i.cax to i32
  %i.caz = add nsw i32 %i.cay, -1
  %i.cba = load i32, ptr %i.kf, align 8, !tbaa !89
  %i.cbb = call i32 @yc_decrypt(ptr noundef nonnull %0, ptr noundef nonnull %i.cad, i32 noundef %i.cav, ptr noundef %i.caw, i32 noundef %i.caz, i32 noundef %i.cba, i32 noundef %i.car, i32 noundef %.22091, i16 noundef signext %.2) #22
  %cond8 = icmp eq i32 %i.cbb, 0
  br i1 %cond8, label %bb.wk, label %bb.wt

bb.wk:                                            ; preds = %bb.wj
  %i.cbc = load ptr, ptr %i.g, align 8, !tbaa !82
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.139, ptr noundef %i.cbc) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.cad, i32 noundef 0)
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.cbd = call i64 @lseek(i32 noundef %i.car, i64 noundef 0, i32 noundef 0) #22 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.45) #22
  %i.cbe = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.cbf = call i32 @cli_magic_scan_desc(i32 noundef %i.car, ptr noundef %i.cbe, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #22 ; 2 uses
  %.not2746 = icmp eq i32 %i.cbf, 0
  %i.cbg = call i32 @close(i32 noundef %i.car) #22 ; 0 uses
  %i.cbh = load ptr, ptr %i.ks, align 8, !tbaa !63
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbh, i64 48
  %i.cbj = load i32, ptr %i.cbi, align 8, !tbaa !128
  %.not2747 = icmp eq i32 %i.cbj, 0               ; 2 uses
  br i1 %.not2746, label %bb.wp, label %bb.wl

bb.wl:                                            ; preds = %bb.wk
  br i1 %.not2747, label %bb.wm, label %bb.wo

bb.wm:                                            ; preds = %bb.wl
  %i.cbk = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.cbl = call i32 @cli_unlink(ptr noundef %i.cbk) #22
  %.not2750 = icmp eq i32 %i.cbl, 0
  br i1 %.not2750, label %bb.wo, label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  %i.cbm = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbm) #22
  br label %.thread2995

bb.wo:                                            ; preds = %bb.wm, %bb.wl
  %i.cbn = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbn) #22
  br label %.thread2995

bb.wp:                                            ; preds = %bb.wk
  br i1 %.not2747, label %bb.wq, label %bb.ws

bb.wq:                                            ; preds = %bb.wp
  %i.cbo = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.cbp = call i32 @cli_unlink(ptr noundef %i.cbo) #22
  %.not2748 = icmp eq i32 %i.cbp, 0
  br i1 %.not2748, label %bb.ws, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  %i.cbq = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbq) #22
  br label %.thread2995

bb.ws:                                            ; preds = %bb.wq, %bb.wp
  %i.cbr = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbr) #22
  br label %.thread2995

bb.wt:                                            ; preds = %bb.wj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.140) #22
  %i.cbs = call i32 @close(i32 noundef %i.car) #22 ; 0 uses
  %i.cbt = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.cbu = call i32 @cli_unlink(ptr noundef %i.cbt) #22
  %.not2743 = icmp eq i32 %i.cbu, 0
  br i1 %.not2743, label %bb.wv, label %bb.wu

bb.wu:                                            ; preds = %bb.wt
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.cbv = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbv) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.cad, i32 noundef 0)
  br label %.thread2995

bb.wv:                                            ; preds = %bb.wt
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.cad, i32 noundef 0)
  %i.cbw = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.cbw) #22
  %i.cbx = load ptr, ptr %i.p, align 8, !tbaa !114
  %i.cby = load i32, ptr %i.cbx, align 4, !tbaa !116
  %i.cbz = and i32 %i.cby, 1
  %.not2744 = icmp eq i32 %i.cbz, 0
  br i1 %.not2744, label %bb.ww, label %.thread3123

bb.ww:                                            ; preds = %bb.wv
  %i.cca = load ptr, ptr %i.cah, align 8, !tbaa !136
  %i.ccb = call i64 @evidence_num_alerts(ptr noundef %i.cca) #22
  %.not2745 = icmp eq i64 %i.caj, %i.ccb
  br i1 %.not2745, label %.thread3123, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

.thread3123:                                      ; preds = %.thread3113, %bb.vv, %bb.vu, %bb.vy, %bb.vx, %.thread3118, %bb.wv, %bb.ww, %bb.vj, %bb.vk, %bb.vl
  %i.ccc = load ptr, ptr %i.kx, align 8, !tbaa !58
  %i.ccd = load i32, ptr %i.ccc, align 4, !tbaa !60
  %i.cce = and i32 %i.ccd, 2048
  %.not2751 = icmp eq i32 %i.cce, 0
  br i1 %.not2751, label %.critedge190, label %bb.wy

bb.wy:                                            ; preds = %.thread3123
  %i.ccf = load i16, ptr %i.bf, align 8, !tbaa !30 ; 4 uses
  %i.ccg = icmp ugt i16 %i.ccf, 1
  br i1 %i.ccg, label %bb.wz, label %.critedge190

bb.wz:                                            ; preds = %bb.wy
  %i.cch = zext i16 %i.ccf to i64
  %i.cci = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ccj = load i32, ptr %i.cci, align 8, !tbaa !95
  %i.cck = load ptr, ptr %2, align 8, !tbaa !29   ; 7 uses
  %i.ccl = getelementptr [36 x i8], ptr %i.cck, i64 %i.cch ; 2 uses
  %i.ccm = getelementptr i8, ptr %i.ccl, i64 -36
  %i.ccn = load i32, ptr %i.ccm, align 4, !tbaa !14
  %i.cco = icmp eq i32 %i.ccj, %i.ccn
  br i1 %i.cco, label %bb.xa, label %.critedge190

bb.xa:                                            ; preds = %bb.wz
  %i.ccp = load i32, ptr %i.f, align 16
  %i.ccq = xor i32 %i.ccp, -393521837
  %i.ccr = getelementptr i8, ptr %i.f, i64 3
  %i.ccs = load i32, ptr %i.ccr, align 1
  %i.cct = xor i32 %i.ccs, -337955864
  %i.ccu = or i32 %i.ccq, %i.cct
  %i.ccv = icmp ne i32 %i.ccu, 0
  %i.ccw = zext i1 %i.ccv to i32
  %i.ccx = icmp eq i32 %i.ccw, 0
  br i1 %i.ccx, label %bb.xb, label %.critedge190

bb.xb:                                            ; preds = %bb.xa
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.ccz = load i128, ptr %i.ccy, align 1
  %i.cda = xor i128 %i.ccz, 107382933364910958583781871253727477992
  %i.cdb = getelementptr i8, ptr %i.ccy, i64 3
  %i.cdc = load i128, ptr %i.cdb, align 1
  %i.cdd = xor i128 %i.cdc, 106755414664042775544543906123602198528
  %i.cde = or i128 %i.cda, %i.cdd
  %i.cdf = icmp ne i128 %i.cde, 0
  %i.cdg = zext i1 %i.cdf to i32
  %i.cdh = icmp eq i32 %i.cdg, 0
  br i1 %i.cdh, label %.lr.ph3302.preheader, label %.critedge190

.lr.ph3302.preheader:                             ; preds = %bb.xb
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cck, i64 8
  %i.cdj = load i32, ptr %i.cdi, align 4, !tbaa !15
  %i.cdk = getelementptr i8, ptr %i.ccl, i64 -28
  %i.cdl = load i32, ptr %i.cdk, align 4, !tbaa !15
  %spec.select29013298 = call i32 @llvm.umin.i32(i32 %i.cdj, i32 %i.cdl) ; 2 uses
  %i.cdm = zext i16 %i.ccf to i64
  %i.cdn = add nsw i64 %i.cdm, -1                 ; 3 uses
  %xtraiter = and i64 %i.cdn, 1
  %i.cdo = icmp eq i16 %i.ccf, 2
  br i1 %i.cdo, label %.lr.ph3302.epil.preheader, label %.lr.ph3302.preheader.new

.lr.ph3302.preheader.new:                         ; preds = %.lr.ph3302.preheader
  %unroll_iter = and i64 %i.cdn, -2
  br label %.lr.ph3302

.lr.ph3302:                                       ; preds = %.lr.ph3302, %.lr.ph3302.preheader.new
  %indvars.iv3402 = phi i64 [ 1, %.lr.ph3302.preheader.new ], [ %indvars.iv.next3403.1, %.lr.ph3302 ] ; 3 uses
  %spec.select29013300 = phi i32 [ %spec.select29013298, %.lr.ph3302.preheader.new ], [ %spec.select2901.1, %.lr.ph3302 ]
  %i.cdp = phi ptr [ %i.cck, %.lr.ph3302.preheader.new ], [ %i.cec, %.lr.ph3302 ] ; 2 uses
  %.121803299 = phi i32 [ 0, %.lr.ph3302.preheader.new ], [ %spec.select2902.1, %.lr.ph3302 ]
  %niter = phi i64 [ 0, %.lr.ph3302.preheader.new ], [ %niter.next.1, %.lr.ph3302 ]
  %i.cdq = load i32, ptr %i.cdp, align 4, !tbaa !14
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.cdp, i64 4
  %i.cds = load i32, ptr %i.cdr, align 4, !tbaa !61
  %i.cdt = add i32 %i.cds, %i.cdq
  %spec.select2902 = call i32 @llvm.umax.i32(i32 %.121803299, i32 %i.cdt)
  %i.cdu = getelementptr inbounds nuw [36 x i8], ptr %i.cck, i64 %indvars.iv3402 ; 3 uses
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cdu, i64 8
  %i.cdw = load i32, ptr %i.cdv, align 4, !tbaa !15
  %spec.select2901 = call i32 @llvm.umin.i32(i32 %i.cdw, i32 %spec.select29013300)
  %i.cdx = load i32, ptr %i.cdu, align 4, !tbaa !14
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.cdu, i64 4
  %i.cdz = load i32, ptr %i.cdy, align 4, !tbaa !61
  %i.cea = add i32 %i.cdz, %i.cdx
  %spec.select2902.1 = call i32 @llvm.umax.i32(i32 %spec.select2902, i32 %i.cea) ; 3 uses
  %i.ceb = getelementptr inbounds nuw [36 x i8], ptr %i.cck, i64 %indvars.iv3402 ; 2 uses
  %i.cec = getelementptr inbounds nuw i8, ptr %i.ceb, i64 36 ; 2 uses
  %i.ced = getelementptr inbounds nuw i8, ptr %i.ceb, i64 44
  %i.cee = load i32, ptr %i.ced, align 4, !tbaa !15
  %spec.select2901.1 = call i32 @llvm.umin.i32(i32 %i.cee, i32 %spec.select2901) ; 3 uses
  %indvars.iv.next3403.1 = add nuw nsw i64 %indvars.iv3402, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge3303.unr-lcssa, label %.lr.ph3302

._crit_edge3303.unr-lcssa:                        ; preds = %.lr.ph3302
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge3303, label %.lr.ph3302.epil.preheader

.lr.ph3302.epil.preheader:                        ; preds = %._crit_edge3303.unr-lcssa, %.lr.ph3302.preheader
  %indvars.iv3402.epil.init = phi i64 [ 1, %.lr.ph3302.preheader ], [ %indvars.iv.next3403.1, %._crit_edge3303.unr-lcssa ]
  %spec.select29013300.epil.init = phi i32 [ %spec.select29013298, %.lr.ph3302.preheader ], [ %spec.select2901.1, %._crit_edge3303.unr-lcssa ]
  %.epil.init = phi ptr [ %i.cck, %.lr.ph3302.preheader ], [ %i.cec, %._crit_edge3303.unr-lcssa ] ; 2 uses
  %.121803299.epil.init = phi i32 [ 0, %.lr.ph3302.preheader ], [ %spec.select2902.1, %._crit_edge3303.unr-lcssa ]
  %lcmp.mod3759 = trunc i64 %i.cdn to i1
  call void @llvm.assume(i1 %lcmp.mod3759)
  %i.cef = load i32, ptr %.epil.init, align 4, !tbaa !14
  %i.ceg = getelementptr inbounds nuw i8, ptr %.epil.init, i64 4
  %i.ceh = load i32, ptr %i.ceg, align 4, !tbaa !61
  %i.cei = add i32 %i.ceh, %i.cef
  %spec.select2902.epil = call i32 @llvm.umax.i32(i32 %.121803299.epil.init, i32 %i.cei)
  %i.cej = getelementptr inbounds nuw [36 x i8], ptr %i.cck, i64 %indvars.iv3402.epil.init
  %i.cek = getelementptr inbounds nuw i8, ptr %i.cej, i64 8
  %i.cel = load i32, ptr %i.cek, align 4, !tbaa !15
  %spec.select2901.epil = call i32 @llvm.umin.i32(i32 %i.cel, i32 %spec.select29013300.epil.init)
  br label %._crit_edge3303

._crit_edge3303:                                  ; preds = %._crit_edge3303.unr-lcssa, %.lr.ph3302.epil.preheader
  %spec.select2902.lcssa = phi i32 [ %spec.select2902.1, %._crit_edge3303.unr-lcssa ], [ %spec.select2902.epil, %.lr.ph3302.epil.preheader ] ; 5 uses
  %spec.select2901.lcssa = phi i32 [ %spec.select2901.1, %._crit_edge3303.unr-lcssa ], [ %spec.select2901.epil, %.lr.ph3302.epil.preheader ] ; 4 uses
  %i.cem = icmp eq i32 %spec.select2901.lcssa, 0
  %i.cen = icmp eq i32 %spec.select2902.lcssa, 0
  %i.ceo = icmp ugt i32 %spec.select2901.lcssa, %spec.select2902.lcssa
  %i.cep = or i1 %i.cen, %i.ceo
  %or.cond2903 = select i1 %i.cem, i1 true, i1 %i.cep
  br i1 %or.cond2903, label %.critedge190, label %bb.xc

bb.xc:                                            ; preds = %._crit_edge3303
  %i.ceq = zext i32 %spec.select2902.lcssa to i64 ; 3 uses
  %i.cer = call i32 @cli_checklimits(ptr noundef nonnull @.str.143, ptr noundef nonnull %0, i64 noundef %i.ceq, i64 noundef 0, i64 noundef 0) #22
  %.not2754 = icmp eq i32 %i.cer, 0
  br i1 %.not2754, label %bb.xe, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.xe:                                            ; preds = %bb.xc
  %i.ces = call ptr @cli_max_calloc(i64 noundef %i.ceq, i64 noundef 1) #22 ; 14 uses
  %.not2755 = icmp eq ptr %i.ces, null
  br i1 %.not2755, label %bb.xf, label %bb.xg

bb.xf:                                            ; preds = %bb.xe
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.xg:                                            ; preds = %bb.xe
  %i.cet = zext i32 %spec.select2901.lcssa to i64 ; 2 uses
  %i.ceu = call fastcc i64 @fmap_readn(ptr noundef %i.ac, ptr noundef nonnull %i.ces, i64 noundef 0, i64 noundef %i.cet)
  %.not2756 = icmp eq i64 %i.ceu, %i.cet
  br i1 %.not2756, label %.preheader3182, label %bb.xh

.preheader3182:                                   ; preds = %bb.xg
  %i.cev = load i16, ptr %i.bf, align 8, !tbaa !30 ; 2 uses
  %.not3342 = icmp eq i16 %i.cev, 1
  br i1 %.not3342, label %._crit_edge3308, label %.lr.ph3307

.lr.ph3307:                                       ; preds = %.preheader3182
  %i.cew = ptrtoint ptr %i.ces to i64             ; 2 uses
  %i.cex = add i64 %i.cew, %i.ceq                 ; 2 uses
  %.pre3436 = load ptr, ptr %2, align 8, !tbaa !29
  br label %bb.xi

bb.xh:                                            ; preds = %bb.xg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.144, i32 noundef %spec.select2901.lcssa) #22
  call void @free(ptr noundef nonnull %i.ces) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.xi:                                            ; preds = %.lr.ph3307, %._crit_edge3437
  %i.cey = phi i16 [ %i.cev, %.lr.ph3307 ], [ %i.cfu, %._crit_edge3437 ] ; 3 uses
  %i.cez = phi ptr [ %.pre3436, %.lr.ph3307 ], [ %i.cfv, %._crit_edge3437 ] ; 2 uses
  %indvars.iv3405 = phi i64 [ 0, %.lr.ph3307 ], [ %indvars.iv.next3406, %._crit_edge3437 ] ; 6 uses
  %i.cfa = getelementptr inbounds nuw [36 x i8], ptr %i.cez, i64 %indvars.iv3405 ; 3 uses
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cfa, i64 12
  %i.cfc = load i32, ptr %i.cfb, align 4, !tbaa !13 ; 3 uses
  %.not2757 = icmp eq i32 %i.cfc, 0
  br i1 %.not2757, label %._crit_edge3437, label %bb.xj

bb.xj:                                            ; preds = %bb.xi
  %i.cfd = zext i32 %i.cfc to i64                 ; 2 uses
  %.not2758 = icmp ugt i32 %i.cfc, %spec.select2902.lcssa
  br i1 %.not2758, label %._crit_edge3308.loopexit, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.cfe = load i32, ptr %i.cfa, align 4, !tbaa !14
  %i.cff = zext i32 %i.cfe to i64
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.ces, i64 %i.cff ; 2 uses
  %i.cfh = ptrtoint ptr %i.cfg to i64             ; 2 uses
  %i.cfi = add i64 %i.cfh, %i.cfd                 ; 2 uses
  %.not2760 = icmp ule i64 %i.cfi, %i.cex
  %i.cfj = icmp ugt i64 %i.cfi, %i.cew
  %or.cond2904 = and i1 %.not2760, %i.cfj
end_hunk_2
begin_hunk_3_@cli_peheader:bb.a
  %.not757 = icmp eq i32 %i.bb, 0
  br i1 %.not757, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bc = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.180) #22 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %.not752.not, label %.thread, label %.thread.thread

bb.ae:                                            ; preds = %bb.aa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.182) #22
  br label %.thread

.thread.thread:                                   ; preds = %bb.ad, %bb.z
  %.str.181.sink = phi ptr [ @.str.179, %bb.z ], [ @.str.181, %bb.ad ]
  %.0692881.ph = phi i32 [ 1, %bb.z ], [ 0, %bb.ad ] ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.181.sink) #22
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store i32 %.0692881.ph, ptr %i.bd, align 8, !tbaa !91
  br label %bb.af

.thread:                                          ; preds = %bb.ad, %bb.z, %bb.ae
  %.0692881 = phi i32 [ 0, %bb.ae ], [ 0, %bb.ad ], [ 1, %bb.z ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store i32 %.0692881, ptr %i.be, align 8, !tbaa !91
  %i.bf = and i32 %2, 3
  %brmerge.not = icmp eq i32 %i.bf, 0
  br i1 %brmerge.not, label %bb.br, label %bb.af

bb.af:                                            ; preds = %.thread.thread, %.thread
  %i.bg = phi ptr [ %i.bd, %.thread.thread ], [ %i.be, %.thread ] ; 2 uses
  %.0692881961 = phi i32 [ %.0692881.ph, %.thread.thread ], [ %.0692881, %.thread ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !39
  switch i16 %i.bi, label %bb.bn [
    i16 -16146, label %bb.bm
    i16 1, label %bb.bo
    i16 332, label %bb.ag
    i16 333, label %bb.ah
    i16 334, label %bb.ai
    i16 352, label %bb.aj
    i16 354, label %bb.ak
    i16 358, label %bb.al
    i16 360, label %bb.am
    i16 361, label %bb.an
    i16 388, label %bb.ao
    i16 418, label %bb.ap
    i16 419, label %bb.aq
    i16 420, label %bb.ar
    i16 422, label %bb.as
    i16 424, label %bb.at
    i16 448, label %bb.au
    i16 450, label %bb.av
    i16 452, label %bb.aw
    i16 467, label %bb.ax
    i16 496, label %bb.ay
    i16 497, label %bb.az
    i16 512, label %bb.ba
    i16 614, label %bb.bb
    i16 616, label %bb.bc
    i16 644, label %bb.bd
    i16 870, label %bb.be
    i16 1126, label %bb.bf
    i16 1312, label %bb.bg
    i16 3311, label %bb.bh
    i16 3772, label %bb.bi
    i16 -31132, label %bb.bj
    i16 -28607, label %bb.bk
    i16 -21916, label %bb.bl
  ]

bb.ag:                                            ; preds = %bb.af
  br label %bb.bo

bb.ah:                                            ; preds = %bb.af
  br label %bb.bo

bb.ai:                                            ; preds = %bb.af
  br label %bb.bo

bb.aj:                                            ; preds = %bb.af
  br label %bb.bo

bb.ak:                                            ; preds = %bb.af
  br label %bb.bo

bb.al:                                            ; preds = %bb.af
  br label %bb.bo

bb.am:                                            ; preds = %bb.af
  br label %bb.bo

bb.an:                                            ; preds = %bb.af
  br label %bb.bo

bb.ao:                                            ; preds = %bb.af
  br label %bb.bo

bb.ap:                                            ; preds = %bb.af
  br label %bb.bo

bb.aq:                                            ; preds = %bb.af
  br label %bb.bo

bb.ar:                                            ; preds = %bb.af
  br label %bb.bo

bb.as:                                            ; preds = %bb.af
  br label %bb.bo

bb.at:                                            ; preds = %bb.af
  br label %bb.bo

bb.au:                                            ; preds = %bb.af
  br label %bb.bo

bb.av:                                            ; preds = %bb.af
  br label %bb.bo

bb.aw:                                            ; preds = %bb.af
  br label %bb.bo

bb.ax:                                            ; preds = %bb.af
  br label %bb.bo

bb.ay:                                            ; preds = %bb.af
  br label %bb.bo

bb.az:                                            ; preds = %bb.af
  br label %bb.bo

bb.ba:                                            ; preds = %bb.af
  br label %bb.bo

bb.bb:                                            ; preds = %bb.af
  br label %bb.bo

bb.bc:                                            ; preds = %bb.af
  br label %bb.bo

bb.bd:                                            ; preds = %bb.af
  br label %bb.bo

bb.be:                                            ; preds = %bb.af
  br label %bb.bo

bb.bf:                                            ; preds = %bb.af
  br label %bb.bo

bb.bg:                                            ; preds = %bb.af
  br label %bb.bo

bb.bh:                                            ; preds = %bb.af
  br label %bb.bo

bb.bi:                                            ; preds = %bb.af
  br label %bb.bo

bb.bj:                                            ; preds = %bb.af
  br label %bb.bo

bb.bk:                                            ; preds = %bb.af
  br label %bb.bo

bb.bl:                                            ; preds = %bb.af
  br label %bb.bo

bb.bm:                                            ; preds = %bb.af
  br label %bb.bo

bb.bn:                                            ; preds = %bb.af
  br label %bb.bo

bb.bo:                                            ; preds = %bb.af, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.0709 = phi ptr [ @.str.183, %bb.bn ], [ @.str.217, %bb.bm ], [ @.str.216, %bb.bl ], [ @.str.185, %bb.ag ], [ @.str.186, %bb.ah ], [ @.str.187, %bb.ai ], [ @.str.188, %bb.aj ], [ @.str.189, %bb.ak ], [ @.str.190, %bb.al ], [ @.str.191, %bb.am ], [ @.str.192, %bb.an ], [ @.str.193, %bb.ao ], [ @.str.194, %bb.ap ], [ @.str.195, %bb.aq ], [ @.str.196, %bb.ar ], [ @.str.197, %bb.as ], [ @.str.198, %bb.at ], [ @.str.199, %bb.au ], [ @.str.200, %bb.av ], [ @.str.201, %bb.aw ], [ @.str.202, %bb.ax ], [ @.str.203, %bb.ay ], [ @.str.204, %bb.az ], [ @.str.205, %bb.ba ], [ @.str.206, %bb.bb ], [ @.str.207, %bb.bc ], [ @.str.208, %bb.bd ], [ @.str.209, %bb.be ], [ @.str.210, %bb.bf ], [ @.str.211, %bb.bg ], [ @.str.212, %bb.bh ], [ @.str.213, %bb.bi ], [ @.str.214, %bb.bj ], [ @.str.215, %bb.bk ], [ @.str.184, %bb.af ] ; 2 uses
  br i1 %.not752.not, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.218, ptr noundef nonnull %.0709) #22
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  br i1 %.not, label %.thread882, label %.thread884

bb.br:                                            ; preds = %.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !39 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i16 %i.bk, ptr %i.bl, align 8, !tbaa !30
  %i.bm = icmp eq i16 %i.bk, 0
  br i1 %i.bm, label %.thread945, label %.thread887

.thread887:                                       ; preds = %bb.br
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !39
  %i.bp = zext i32 %i.bo to i64
  store i64 %i.bp, ptr %i.c, align 8, !tbaa !137
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !39
  br label %bb.by

.thread884:                                       ; preds = %bb.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !39 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i16 %i.bt, ptr %i.bu, align 8, !tbaa !30
  %i.bv = icmp eq i16 %i.bt, 0
  br i1 %i.bv, label %.thread885, label %bb.bw

.thread882:                                       ; preds = %bb.bq
  %i.bw = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.219, ptr noundef nonnull %.0709) #22 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !39 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i16 %i.by, ptr %i.bz, align 8, !tbaa !30
  %i.ca = icmp eq i16 %i.by, 0
  br i1 %i.ca, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %.thread882
  call fastcc void @pe_add_heuristic_property(ptr noundef %0, ptr noundef nonnull @.str.220)
  br label %.thread885

.thread885:                                       ; preds = %.thread884, %bb.bs
  %i.cb = phi ptr [ %i.bz, %bb.bs ], [ %i.bu, %.thread884 ]
  br i1 %.not752.not, label %.thread945, label %bb.bt

bb.bt:                                            ; preds = %.thread885
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !56
  %.not841 = icmp eq i32 %i.cd, 0
  br i1 %.not841, label %bb.bu, label %.thread945

bb.bu:                                            ; preds = %bb.bt
  %i.ce = load i16, ptr %i.cb, align 8, !tbaa !30
  %i.cf = icmp eq i16 %i.ce, 0
  br i1 %i.cf, label %bb.bv, label %.thread945

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.221) #22
  br label %.thread945

bb.bw:                                            ; preds = %.thread884, %.thread882
  %i.cg = phi ptr [ %i.bz, %.thread882 ], [ %i.bu, %.thread884 ] ; 2 uses
  %i.ch = phi i16 [ %i.by, %.thread882 ], [ %i.bt, %.thread884 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !39
  %i.ck = zext i32 %i.cj to i64
  store i64 %i.ck, ptr %i.c, align 8, !tbaa !137
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cm = load i16, ptr %i.cl, align 8, !tbaa !39 ; 3 uses
  br i1 %.not752.not, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.cn = zext i16 %i.ch to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.222, i32 noundef %i.cn) #22
  %i.co = call ptr @cli_ctime(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 32) #22
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.223, ptr noundef %i.co) #22
  %i.cp = zext i16 %i.cm to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.224, i32 noundef %i.cp) #22
  br label %bb.by

bb.by:                                            ; preds = %.thread887, %bb.bx, %bb.bw
  %i.cq = phi ptr [ %i.be, %.thread887 ], [ %i.bg, %bb.bx ], [ %i.bg, %bb.bw ]
  %.0692881960 = phi i32 [ %.0692881, %.thread887 ], [ %.0692881961, %bb.bx ], [ %.0692881961, %bb.bw ]
  %i.cr = phi i16 [ %i.br, %.thread887 ], [ %i.cm, %bb.bx ], [ %i.cm, %bb.bw ] ; 5 uses
  %i.cs = phi ptr [ %i.bl, %.thread887 ], [ %i.cg, %bb.bx ], [ %i.cg, %bb.bw ] ; 14 uses
  br i1 %.not, label %.thread888, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ct = icmp ult i16 %i.cr, 96
  br i1 %i.ct, label %bb.ca, label %bb.cc

.thread888:                                       ; preds = %bb.by
  %i.cu = load i16, ptr %i.cs, align 8, !tbaa !30
  %i.cv = zext i16 %i.cu to i32
  %i.cw = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.225, i32 noundef %i.cv) #22 ; 0 uses
  %i.cx = call ptr @cli_ctime(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 32) #22
  %i.cy = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.226, ptr noundef %i.cx) #22 ; 0 uses
  %i.cz = zext i16 %i.cr to i32
  %i.da = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.227, i32 noundef %i.cz) #22 ; 0 uses
  %i.db = icmp ult i16 %i.cr, 96
  br i1 %i.db, label %bb.cb, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.228) #22
  br label %.thread945

bb.cb:                                            ; preds = %.thread888
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.228) #22
  call fastcc void @pe_add_heuristic_property(ptr noundef %0, ptr noundef nonnull @.str.229)
  br label %.thread945

bb.cc:                                            ; preds = %.thread888, %bb.bz
  %i.dc = load i32, ptr %i.t, align 8, !tbaa !26
  %i.dd = load i32, ptr %i.ab, align 8, !tbaa !89
  %i.de = add i32 %i.dd, %i.dc
  %i.df = zext i32 %i.de to i64                   ; 3 uses
  %i.dg = add nuw nsw i64 %i.df, 24               ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.di = load i64, ptr %i.s, align 8, !tbaa !37  ; 2 uses
  %or.cond965.not = icmp ult i64 %i.dg, %i.di
  br i1 %or.cond965.not, label %bb.cd, label %fmap_readn.exit868.thread

bb.cd:                                            ; preds = %bb.cc
  %i.dj = sub nuw i64 %i.di, %i.dg                ; 2 uses
  %spec.select.i866 = call i64 @llvm.umin.i64(i64 %i.dj, i64 96) ; 2 uses
  %i.dk = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.dl = call ptr %i.dk(ptr noundef nonnull %i.k, i64 noundef range(i64 0, 8589934855) %i.dg, i64 noundef %spec.select.i866, i32 noundef 0) #22, !inline_history !1 ; 2 uses
  %.not.i867 = icmp eq ptr %i.dl, null
  br i1 %.not.i867, label %fmap_readn.exit868.thread, label %fmap_readn.exit868

fmap_readn.exit868:                               ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dh, ptr nonnull align 1 %i.dl, i64 %spec.select.i866, i1 false)
  %.not758 = icmp ugt i64 %i.dj, 95
  br i1 %.not758, label %bb.ce, label %fmap_readn.exit868.thread

fmap_readn.exit868.thread:                        ; preds = %bb.cd, %bb.cc, %fmap_readn.exit868
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.230) #22
  br label %.thread945

bb.ce:                                            ; preds = %fmap_readn.exit868
  %i.dm = add nuw nsw i64 %i.df, 120              ; 5 uses
  %i.dn = load i16, ptr %i.dh, align 8, !tbaa !39
  %i.do = icmp eq i16 %i.dn, 523
  br i1 %i.do, label %bb.cf, label %bb.co

bb.cf:                                            ; preds = %bb.ce
  %i.dp = icmp ult i16 %i.cr, 112
  br i1 %i.dp, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.231) #22
  br i1 %.not, label %bb.ch, label %.thread945

bb.ch:                                            ; preds = %bb.cg
  call fastcc void @pe_add_heuristic_property(ptr noundef %0, ptr noundef nonnull @.str.232)
  br label %.thread945

bb.ci:                                            ; preds = %bb.cf
  %i.dq = ptrtoint ptr %i.dh to i64
  %i.dr = add i64 %i.dq, 96
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load i64, ptr %i.s, align 8, !tbaa !37  ; 2 uses
  %or.cond966.not = icmp ult i64 %i.dm, %i.dt
  br i1 %or.cond966.not, label %bb.cj, label %fmap_readn.exit872.thread

bb.cj:                                            ; preds = %bb.ci
  %i.du = sub nuw i64 %i.dt, %i.dm                ; 2 uses
  %spec.select.i870 = call i64 @llvm.umin.i64(i64 %i.du, i64 16) ; 2 uses
  %i.dv = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.dw = call ptr %i.dv(ptr noundef nonnull %i.k, i64 noundef range(i64 0, 8589934855) %i.dm, i64 noundef %spec.select.i870, i32 noundef 0) #22, !inline_history !1 ; 2 uses
  %.not.i871 = icmp eq ptr %i.dw, null
  br i1 %.not.i871, label %fmap_readn.exit872.thread, label %fmap_readn.exit872

fmap_readn.exit872:                               ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr nonnull align 1 %i.dw, i64 %spec.select.i870, i1 false)
  %.not759 = icmp ugt i64 %i.du, 15
  br i1 %.not759, label %bb.ck, label %fmap_readn.exit872.thread

fmap_readn.exit872.thread:                        ; preds = %bb.cj, %bb.ci, %fmap_readn.exit872
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.233) #22
  br label %.thread945

bb.ck:                                            ; preds = %fmap_readn.exit872
  %i.dx = add nuw nsw i64 %i.df, 136              ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 1, ptr %i.dy, align 4, !tbaa !57
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !39
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  store i32 %i.ea, ptr %i.eb, align 8, !tbaa !95
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !39
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store i32 %i.ed, ptr %i.ee, align 8, !tbaa !31
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 244 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !39
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !25
  br i1 %.not752.not, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.234) #22
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 138
  %i.ej = load i8, ptr %i.ei, align 2, !tbaa !138
  %i.ek = zext i8 %i.ej to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.235, i32 noundef %i.ek) #22
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 139
  %i.em = load i8, ptr %i.el, align 1, !tbaa !139
  %i.en = zext i8 %i.em to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.236, i32 noundef %i.en) #22
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !39
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.237, i32 noundef %i.ep) #22
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !39
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.238, i32 noundef %i.er) #22
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.et = load i32, ptr %i.es, align 4, !tbaa !39
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.239, i32 noundef %i.et) #22
  %i.eu = load i32, ptr %i.eb, align 8, !tbaa !95
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.240, i32 noundef %i.eu) #22
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !39
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.241, i32 noundef %i.ew) #22
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !39
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.242, i32 noundef %i.ey) #22
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !39
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.243, i32 noundef %i.fa) #22
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.fc = load i16, ptr %i.fb, align 8, !tbaa !39
  %i.fd = zext i16 %i.fc to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.244, i32 noundef %i.fd) #22
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 186
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !39
  %i.fg = zext i16 %i.ff to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.245, i32 noundef %i.fg) #22
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !39
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.246, i32 noundef %i.fi) #22
  %i.fj = load i32, ptr %i.ee, align 8, !tbaa !31
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.247, i32 noundef %i.fj) #22
  %i.fk = load i32, ptr %i.eh, align 4, !tbaa !25
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.248, i32 noundef %i.fk) #22
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  br i1 %.not, label %bb.cn, label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 138
  %i.fm = load i8, ptr %i.fl, align 2, !tbaa !138
  %i.fn = zext i8 %i.fm to i32
  %i.fo = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.249, i32 noundef %i.fn) #22 ; 0 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 139
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !139
  %i.fr = zext i8 %i.fq to i32
  %i.fs = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.250, i32 noundef %i.fr) #22 ; 0 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !39
  %i.fv = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.251, i32 noundef %i.fu) #22 ; 0 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !39
  %i.fy = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.252, i32 noundef %i.fx) #22 ; 0 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !39
  %i.gb = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.253, i32 noundef %i.ga) #22 ; 0 uses
  %i.gc = load i32, ptr %i.ef, align 4, !tbaa !39
  %i.gd = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.254, i32 noundef %i.gc) #22 ; 0 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.gf = load i16, ptr %i.ge, align 8, !tbaa !39
  %i.gg = zext i16 %i.gf to i32
  %i.gh = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.255, i32 noundef %i.gg) #22 ; 0 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 186
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !39
  %i.gk = zext i16 %i.gj to i32
  %i.gl = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.256, i32 noundef %i.gk) #22 ; 0 uses
  br label %.sink.split

bb.co:                                            ; preds = %bb.ce
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 0, ptr %i.gm, align 4, !tbaa !57
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !39
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  store i32 %i.go, ptr %i.gp, align 8, !tbaa !95
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !39
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store i32 %i.gr, ptr %i.gs, align 8, !tbaa !31
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 228 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !39
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !25
  br i1 %.not752.not, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.264) #22
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 138
  %i.gx = load i8, ptr %i.gw, align 2, !tbaa !140
  %i.gy = zext i8 %i.gx to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.235, i32 noundef %i.gy) #22
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 139
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !141
  %i.hb = zext i8 %i.ha to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.236, i32 noundef %i.hb) #22
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !39
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.237, i32 noundef %i.hd) #22
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !39
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.238, i32 noundef %i.hf) #22
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !39
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.239, i32 noundef %i.hh) #22
  %i.hi = load i32, ptr %i.gp, align 8, !tbaa !95
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.240, i32 noundef %i.hi) #22
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !39
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.241, i32 noundef %i.hk) #22
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !39
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.242, i32 noundef %i.hm) #22
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !39
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.243, i32 noundef %i.ho) #22
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.hq = load i16, ptr %i.hp, align 8, !tbaa !39
  %i.hr = zext i16 %i.hq to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.244, i32 noundef %i.hr) #22
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 186
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !39
  %i.hu = zext i16 %i.ht to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.245, i32 noundef %i.hu) #22
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !39
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.246, i32 noundef %i.hw) #22
  %i.hx = load i32, ptr %i.gs, align 8, !tbaa !31
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.247, i32 noundef %i.hx) #22
  %i.hy = load i32, ptr %i.gv, align 4, !tbaa !25
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.248, i32 noundef %i.hy) #22
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  br i1 %.not, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 138
  %i.ia = load i8, ptr %i.hz, align 2, !tbaa !140
  %i.ib = zext i8 %i.ia to i32
  %i.ic = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.249, i32 noundef %i.ib) #22 ; 0 uses
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 139
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !141
  %i.if = zext i8 %i.ie to i32
  %i.ig = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.250, i32 noundef %i.if) #22 ; 0 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !39
  %i.ij = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.251, i32 noundef %i.ii) #22 ; 0 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !39
  %i.im = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.252, i32 noundef %i.il) #22 ; 0 uses
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.io = load i32, ptr %i.in, align 4, !tbaa !39
  %i.ip = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.253, i32 noundef %i.io) #22 ; 0 uses
  %i.iq = load i32, ptr %i.gt, align 4, !tbaa !39
  %i.ir = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.254, i32 noundef %i.iq) #22 ; 0 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.it = load i16, ptr %i.is, align 8, !tbaa !39
  %i.iu = zext i16 %i.it to i32
  %i.iv = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.255, i32 noundef %i.iu) #22 ; 0 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 186
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !39
  %i.iy = zext i16 %i.ix to i32
  %i.iz = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.256, i32 noundef %i.iy) #22 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.cn, %bb.cr
  %.sink1149.in = phi ptr [ %i.eb, %bb.cn ], [ %i.gp, %bb.cr ]
  %.sink.in = phi ptr [ %i.ee, %bb.cn ], [ %i.gs, %bb.cr ]
  %.0707.ph = phi i32 [ 112, %bb.cn ], [ 96, %bb.cr ]
  %.0706.ph = phi ptr [ %i.dh, %bb.cn ], [ null, %bb.cr ]
  %.0693.ph = phi i64 [ %i.dx, %bb.cn ], [ %i.dm, %bb.cr ]
  %.sink1149 = load i32, ptr %.sink1149.in, align 8, !tbaa !95
  %i.ja = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.257, i32 noundef %.sink1149) #22 ; 0 uses
  %i.jb = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.258, ptr noundef nonnull %i.g) #22 ; 0 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !39
  %i.je = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.257, i32 noundef %i.jd) #22 ; 0 uses
  %i.jf = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.259, ptr noundef nonnull %i.g) #22 ; 0 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !39
  %i.ji = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.257, i32 noundef %i.jh) #22 ; 0 uses
  %i.jj = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.260, ptr noundef nonnull %i.g) #22 ; 0 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !39
  %i.jm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.257, i32 noundef %i.jl) #22 ; 0 uses
  %i.jn = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.261, ptr noundef nonnull %i.g) #22 ; 0 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !39
  %i.jq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.257, i32 noundef %i.jp) #22 ; 0 uses
  %i.jr = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.262, ptr noundef nonnull %i.g) #22 ; 0 uses
  %.sink = load i32, ptr %.sink.in, align 8, !tbaa !31
  %i.js = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.257, i32 noundef %.sink) #22 ; 0 uses
  %i.jt = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.263, ptr noundef nonnull %i.g) #22 ; 0 uses
  br label %bb.cs

bb.cs:                                            ; preds = %.sink.split, %bb.cq, %bb.cm
  %.0707 = phi i32 [ 96, %bb.cq ], [ 112, %bb.cm ], [ %.0707.ph, %.sink.split ]
  %.0706 = phi ptr [ null, %bb.cq ], [ %i.dh, %bb.cm ], [ %.0706.ph, %.sink.split ] ; 4 uses
  %.0693 = phi i64 [ %i.dm, %bb.cq ], [ %i.dx, %bb.cm ], [ %.0693.ph, %.sink.split ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !57
  %i.jw = icmp ne i32 %i.jv, 0
  %i.jx = icmp ne ptr %.0706, null
  %or.cond6 = and i1 %i.jx, %i.jw                 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.0706, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.in = select i1 %or.cond6, ptr %i.jy, ptr %i.jz
  %i.ka = load i32, ptr %.in, align 4, !tbaa !39  ; 17 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.0706, i64 36
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 172
  %.in760 = select i1 %or.cond6, ptr %i.kb, ptr %i.kc
  %i.kd = load i32, ptr %.in760, align 4, !tbaa !39 ; 11 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.0706, i64 68
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 204
  %.in761.in = select i1 %or.cond6, ptr %i.ke, ptr %i.kf
  %.in761 = load i16, ptr %.in761.in, align 4, !tbaa !39
  switch i16 %.in761, label %bb.dg [
    i16 16, label %bb.df
    i16 1, label %bb.ct
    i16 2, label %bb.cu
    i16 3, label %bb.cv
    i16 5, label %bb.cw
    i16 7, label %bb.cx
    i16 8, label %bb.cy
    i16 9, label %bb.cz
    i16 10, label %bb.da
    i16 11, label %bb.db
    i16 12, label %bb.dc
    i16 13, label %bb.dd
    i16 14, label %bb.de
  ]

bb.ct:                                            ; preds = %bb.cs
  br label %bb.dg

bb.cu:                                            ; preds = %bb.cs
  br label %bb.dg

bb.cv:                                            ; preds = %bb.cs
  br label %bb.dg

bb.cw:                                            ; preds = %bb.cs
  br label %bb.dg

bb.cx:                                            ; preds = %bb.cs
  br label %bb.dg

bb.cy:                                            ; preds = %bb.cs
  br label %bb.dg

bb.cz:                                            ; preds = %bb.cs
  br label %bb.dg

bb.da:                                            ; preds = %bb.cs
  br label %bb.dg

bb.db:                                            ; preds = %bb.cs
  br label %bb.dg

bb.dc:                                            ; preds = %bb.cs
  br label %bb.dg

bb.dd:                                            ; preds = %bb.cs
  br label %bb.dg

bb.de:                                            ; preds = %bb.cs
  br label %bb.dg

bb.df:                                            ; preds = %bb.cs
  br label %bb.dg

bb.dg:                                            ; preds = %bb.cs, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct
  %.0708 = phi ptr [ @.str.183, %bb.cs ], [ @.str.277, %bb.df ], [ @.str.265, %bb.ct ], [ @.str.266, %bb.cu ], [ @.str.267, %bb.cv ], [ @.str.268, %bb.cw ], [ @.str.269, %bb.cx ], [ @.str.270, %bb.cy ], [ @.str.271, %bb.cz ], [ @.str.272, %bb.da ], [ @.str.273, %bb.db ], [ @.str.274, %bb.dc ], [ @.str.275, %bb.dd ], [ @.str.276, %bb.de ] ; 2 uses
  %.not762 = phi i1 [ true, %bb.cs ], [ true, %bb.df ], [ false, %bb.ct ], [ true, %bb.cu ], [ true, %bb.cv ], [ true, %bb.cw ], [ true, %bb.cx ], [ true, %bb.cy ], [ true, %bb.cz ], [ true, %bb.da ], [ true, %bb.db ], [ true, %bb.dc ], [ true, %bb.dd ], [ true, %bb.de ]
  br i1 %.not752.not, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.278, ptr noundef nonnull %.0708) #22
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #22
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  br i1 %.not, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.kg = call i32 @cli_jsonstr(ptr noundef %.0689, ptr noundef nonnull @.str.279, ptr noundef nonnull %.0708) #22 ; 0 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  br i1 %.not762, label %bb.dl, label %.critedge844

bb.dl:                                            ; preds = %bb.dk
  %.not763 = icmp ne i32 %i.ka, 0
  %i.kh = and i32 %i.ka, 4095
  %.not764 = icmp eq i32 %i.kh, 0
  %or.cond = and i1 %.not763, %.not764
  br i1 %or.cond, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.280) #22
  %i.ki = and i32 %2, 8
  %.not765 = icmp eq i32 %i.ki, 0
  br i1 %.not765, label %bb.dn, label %.thread945

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.not766 = icmp ne i32 %i.kd, 0
  %i.kj = and i32 %i.kd, 511
  %.not767 = icmp eq i32 %i.kj, 0
  %or.cond845 = and i1 %.not766, %.not767
  br i1 %or.cond845, label %.critedge844, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.281) #22
  %i.kk = and i32 %2, 8
  %.not768 = icmp eq i32 %i.kk, 0
  br i1 %.not768, label %.critedge844, label %.thread945

.critedge844:                                     ; preds = %bb.dk, %bb.dn, %bb.do
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !25 ; 2 uses
  %i.kn = icmp ugt i32 %i.km, 16
  br i1 %i.kn, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %.critedge844
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.282) #22
  %.pr = load i32, ptr %i.kl, align 4, !tbaa !25
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.critedge844
  %i.ko = phi i32 [ %.pr, %bb.dp ], [ %i.km, %.critedge844 ] ; 2 uses
  %i.kp = icmp ult i32 %i.ko, 16
  br i1 %i.kp, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.kq, i8 0, i64 128, i1 false)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %spec.select = call i32 @llvm.umin.i32(i32 %i.ko, i32 16) ; 2 uses
  store i32 %spec.select, ptr %i.kl, align 4, !tbaa !25
  %i.kr = shl nuw nsw i32 %spec.select, 3         ; 2 uses
  %i.ks = zext i16 %i.cr to i32                   ; 3 uses
  %i.kt = add nuw nsw i32 %i.kr, %.0707           ; 3 uses
  %i.ku = icmp samesign ugt i32 %i.kt, %i.ks
  br i1 %i.ku, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.283) #22
  br label %.thread945

bb.du:                                            ; preds = %bb.ds
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.kw = zext nneg i32 %i.kr to i64              ; 3 uses
  %i.kx = call fastcc i64 @fmap_readn(ptr noundef nonnull %i.k, ptr noundef nonnull %i.kv, i64 noundef %.0693, i64 noundef %i.kw)
  %.not769 = icmp eq i64 %i.kx, %i.kw
  br i1 %.not769, label %.preheader973, label %bb.dv

.preheader973:                                    ; preds = %bb.du
  %i.ky = add nuw nsw i64 %.0693, %i.kw           ; 2 uses
  %.not770 = icmp eq i32 %i.kt, %i.ks
  br i1 %.not770, label %bb.dx, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.284) #22
  br label %.thread945

bb.dw:                                            ; preds = %.preheader973
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.285) #22
  %i.kz = sub nuw nsw i32 %i.ks, %i.kt
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = add nuw nsw i64 %i.ky, %i.la
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.preheader973
  %.1694 = phi i64 [ %i.lb, %bb.dw ], [ %i.ky, %.preheader973 ]
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %.not771 = icmp eq i32 %i.ka, 0                 ; 5 uses
  br i1 %.not771, label %.critedge848, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !31 ; 3 uses
  %i.le = udiv i32 %i.ld, %i.ka
  %i.lf = urem i32 %i.ld, %i.ka
  %i.lg = icmp ne i32 %i.lf, 0
  %i.lh = zext i1 %i.lg to i32
  %i.li = add i32 %i.le, %i.lh
  %i.lj = mul i32 %i.li, %i.ka
  %i.lk = icmp eq i32 %i.ld, %i.lj
  br i1 %i.lk, label %.critedge848, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.286) #22
  br label %.critedge848

.critedge848:                                     ; preds = %bb.dx, %bb.dz, %bb.dy
  %.not773 = icmp eq i32 %i.kd, 0
  br i1 %.not773, label %.critedge850, label %bb.ea

bb.ea:                                            ; preds = %.critedge848
  %i.ll = load i32, ptr %i.lc, align 8, !tbaa !31 ; 3 uses
  %i.lm = udiv i32 %i.ll, %i.kd
  %i.ln = urem i32 %i.ll, %i.kd
  %i.lo = icmp ne i32 %i.ln, 0
  %i.lp = zext i1 %i.lo to i32
  %i.lq = add i32 %i.lm, %i.lp
  %i.lr = mul i32 %i.lq, %i.kd
  %i.ls = icmp eq i32 %i.ll, %i.lr
  br i1 %i.ls, label %.critedge850, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.287) #22
  br label %.critedge850

.critedge850:                                     ; preds = %.critedge848, %bb.eb, %bb.ea
  %i.lt = load i32, ptr %i.lc, align 8, !tbaa !31 ; 3 uses
  br i1 %.not771, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %.critedge850
  %i.lu = udiv i32 %i.lt, %i.ka
  %i.lv = urem i32 %i.lt, %i.ka
  %i.lw = icmp ne i32 %i.lv, 0
  %i.lx = zext i1 %i.lw to i32
  %i.ly = add i32 %i.lu, %i.lx
  %i.lz = mul i32 %i.ly, %i.ka
  br label %bb.ed

bb.ed:                                            ; preds = %.critedge850, %bb.ec
  %i.ma = phi i32 [ %i.lz, %bb.ec ], [ %i.lt, %.critedge850 ]
  store i32 %i.ma, ptr %i.lc, align 8, !tbaa !31
  %i.mb = load i16, ptr %i.cs, align 8, !tbaa !30
  %i.mc = zext i16 %i.mb to i64
  %i.md = call ptr @cli_max_calloc(i64 noundef %i.mc, i64 noundef 36) #22 ; 2 uses
  store ptr %i.md, ptr %1, align 8, !tbaa !29
  %.not775 = icmp eq ptr %i.md, null
  br i1 %.not775, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.288) #22
  br label %.thread945

bb.ef:                                            ; preds = %bb.ed
  %i.me = load i16, ptr %i.cs, align 8, !tbaa !30
  %i.mf = zext i16 %i.me to i64
  %i.mg = call ptr @cli_max_calloc(i64 noundef %i.mf, i64 noundef 40) #22 ; 7 uses
  %.not776 = icmp eq ptr %i.mg, null
  br i1 %.not776, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.288) #22
  br label %.thread945

bb.eh:                                            ; preds = %bb.ef
  %i.mh = load i16, ptr %i.cs, align 8, !tbaa !30
  %i.mi = zext i16 %i.mh to i64
  %i.mj = mul nuw nsw i64 %i.mi, 40
  %i.mk = call fastcc i64 @fmap_readn(ptr noundef nonnull %i.k, ptr noundef nonnull %i.mg, i64 noundef %.1694, i64 noundef %i.mj) ; 2 uses
  %i.ml = icmp eq i64 %i.mk, -1
  br i1 %i.ml, label %.thread950, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.mm = load i16, ptr %i.cs, align 8, !tbaa !30 ; 2 uses
  %i.mn = zext i16 %i.mm to i64
  %i.mo = mul nuw nsw i64 %i.mn, 40
  %.not777 = icmp eq i64 %i.mk, %i.mo
  br i1 %.not777, label %.preheader972, label %.thread950

.preheader972:                                    ; preds = %bb.ei
  %.not778980 = icmp eq i32 %i.kd, 512
  br i1 %.not778980, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader972
  %i.mp = load i16, ptr %i.cs, align 8, !tbaa !30 ; 3 uses
  %i.mq = zext i16 %i.mp to i64
  %.not837 = icmp eq i32 %i.kd, 0
  %.not1140 = icmp eq i16 %i.mp, 0
  br i1 %.not1140, label %.critedge, label %.lr.ph1139

.thread950:                                       ; preds = %bb.eh, %bb.ei
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.289) #22
  br label %bb.ic

.lr.ph1139:                                       ; preds = %.lr.ph.preheader, %.lr.ph
  %.17019811138 = phi i64 [ %i.my, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  br i1 %.not837, label %.lr.ph, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph1139
  %i.mr = getelementptr inbounds nuw [40 x i8], ptr %i.mg, i64 %.17019811138 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !143
  %.not838 = icmp eq i32 %i.mt, 0
  br i1 %.not838, label %.lr.ph, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 20
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !39 ; 2 uses
  %i.mw = urem i32 %i.mv, %i.kd
  %.not839 = icmp ne i32 %i.mw, 0
  %i.mx = and i32 %i.mv, 511
  %.not840 = icmp eq i32 %i.mx, 0
  %or.cond851 = and i1 %.not839, %.not840
  br i1 %or.cond851, label %.thread1110, label %.lr.ph

.thread1110:                                      ; preds = %bb.ek
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.290) #22
  %.pre.pre = load i16, ptr %i.cs, align 8, !tbaa !30
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph1139, %bb.ej, %bb.ek
  %i.my = add nuw nsw i64 %.17019811138, 1        ; 2 uses
  %i.mz = icmp samesign ult i64 %i.my, %i.mq
  br i1 %i.mz, label %.lr.ph1139, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %.thread1110, %.preheader972
  %i.na = phi i16 [ %i.mm, %.preheader972 ], [ %.pre.pre, %.thread1110 ], [ %i.mp, %.lr.ph.preheader ], [ 1, %.lr.ph ]
  %.0695.lcssa = phi i32 [ 512, %.preheader972 ], [ 512, %.thread1110 ], [ %i.kd, %.lr.ph.preheader ], [ %i.kd, %.lr.ph ] ; 5 uses
  %i.nb = load i64, ptr %i.s, align 8, !tbaa !37
  %i.nc = load i32, ptr %i.t, align 8, !tbaa !26
  %i.nd = zext i32 %i.nc to i64
  %i.ne = sub i64 %i.nb, %i.nd                    ; 14 uses
  %.not1020 = icmp eq i16 %i.na, 0
  br i1 %.not1020, label %.critedge.._crit_edge994_crit_edge, label %.lr.ph993

.critedge.._crit_edge994_crit_edge:               ; preds = %.critedge
  %.pre1045 = trunc i64 %i.ne to i32
  br label %._crit_edge994

.lr.ph993:                                        ; preds = %.critedge
  %.not804 = icmp eq i32 %.0695.lcssa, 0
  %i.nf = and i32 %2, 16
  %.not814 = icmp eq i32 %i.nf, 0
  %i.ng = trunc i64 %i.ne to i32                  ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ni = and i32 %2, 8
  %.not822 = icmp eq i32 %i.ni, 0                 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 100
  br label %bb.el

bb.el:                                            ; preds = %.lr.ph993, %bb.gm
  %.0697991 = phi i64 [ 0, %.lr.ph993 ], [ %i.tl, %bb.gm ] ; 5 uses
  %.2702990 = phi i64 [ 0, %.lr.ph993 ], [ %i.tk, %bb.gm ] ; 12 uses
  %i.nm = load ptr, ptr %1, align 8, !tbaa !29
  %i.nn = getelementptr inbounds nuw [36 x i8], ptr %i.nm, i64 %.2702990 ; 14 uses
  %i.no = getelementptr inbounds nuw [40 x i8], ptr %i.mg, i64 %.2702990 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 12
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !39
  %.fr = freeze i32 %i.nq                         ; 3 uses
  br i1 %.not771, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.nr = urem i32 %.fr, %i.ka
  %i.ns = sub nuw i32 %.fr, %i.nr
  store i32 %i.ns, ptr %i.nn, align 4, !tbaa !14
  %i.nt = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !39 ; 2 uses
  %i.nv = udiv i32 %i.nu, %i.ka
  %i.nw = urem i32 %i.nu, %i.ka
  %i.nx = icmp ne i32 %i.nw, 0
  %i.ny = zext i1 %i.nx to i32
  %i.nz = add i32 %i.nv, %i.ny
  %i.oa = mul i32 %i.nz, %i.ka
  br label %bb.eo

bb.en:                                            ; preds = %bb.el
  store i32 %.fr, ptr %i.nn, align 4, !tbaa !14
  %i.ob = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !39
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.od = phi i32 [ %i.oa, %bb.em ], [ %i.oc, %bb.en ]
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nn, i64 4 ; 5 uses
  store i32 %i.od, ptr %i.oe, align 4, !tbaa !61
  %i.of = getelementptr inbounds nuw i8, ptr %i.no, i64 20
  %i.og = load i32, ptr %i.of, align 4, !tbaa !39
  %.fr805 = freeze i32 %i.og                      ; 4 uses
  br i1 %.not804, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.oh = urem i32 %.fr805, %.0695.lcssa
  %i.oi = sub nuw i32 %.fr805, %i.oh              ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nn, i64 8 ; 2 uses
  store i32 %i.oi, ptr %i.oj, align 4, !tbaa !15
  %i.ok = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !39 ; 2 uses
  %i.om = udiv i32 %i.ol, %.0695.lcssa
  %i.on = urem i32 %i.ol, %.0695.lcssa
  %i.oo = icmp ne i32 %i.on, 0
  %i.op = zext i1 %i.oo to i32
  %i.oq = add i32 %i.om, %i.op
  %i.or = mul i32 %i.oq, %.0695.lcssa
  br label %bb.er

bb.eq:                                            ; preds = %bb.eo
  %i.os = getelementptr inbounds nuw i8, ptr %i.nn, i64 8 ; 2 uses
  store i32 %.fr805, ptr %i.os, align 4, !tbaa !15
  %i.ot = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !39
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.ov = phi ptr [ %i.oj, %bb.ep ], [ %i.os, %bb.eq ] ; 3 uses
  %i.ow = phi i32 [ %i.oi, %bb.ep ], [ %.fr805, %bb.eq ] ; 2 uses
  %i.ox = phi i32 [ %i.or, %bb.ep ], [ %i.ou, %bb.eq ] ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nn, i64 12 ; 9 uses
  store i32 %i.ox, ptr %i.oy, align 4, !tbaa !13
  %i.oz = getelementptr inbounds nuw i8, ptr %i.no, i64 36
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !39
  %i.pb = getelementptr inbounds nuw i8, ptr %i.nn, i64 16 ; 4 uses
  store i32 %i.pa, ptr %i.pb, align 4, !tbaa !62
  %i.pc = getelementptr inbounds nuw i8, ptr %i.no, i64 12
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !39
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nn, i64 20 ; 4 uses
  store i32 %i.pd, ptr %i.pe, align 4, !tbaa !100
  %i.pf = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !39
  %i.ph = getelementptr inbounds nuw i8, ptr %i.nn, i64 24 ; 3 uses
  store i32 %i.pg, ptr %i.ph, align 4, !tbaa !92
  %i.pi = getelementptr inbounds nuw i8, ptr %i.no, i64 20
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !39 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.nn, i64 28 ; 5 uses
  store i32 %i.pj, ptr %i.pk, align 4, !tbaa !97
  %i.pl = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !39 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.nn, i64 32 ; 5 uses
  store i32 %i.pm, ptr %i.pn, align 4, !tbaa !93
  %.not806 = icmp eq i32 %i.ox, 0
  br i1 %.not806, label %bb.fa, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.po = zext i32 %i.ow to i64                   ; 3 uses
  %.not807 = icmp ugt i64 %i.ne, %i.po
  %i.pp = zext i32 %i.pj to i64
  %.not808 = icmp ugt i64 %i.ne, %i.pp
  %or.cond967 = select i1 %.not807, i1 %.not808, i1 false
  br i1 %or.cond967, label %bb.ew, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.291, i64 noundef %.0697991, i64 noundef %i.po, i64 noundef %i.ne) #22
  br i1 %.not814, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.pq = load i16, ptr %i.cs, align 8, !tbaa !30 ; 3 uses
  %i.pr = icmp eq i16 %i.pq, 1
  br i1 %i.pr, label %.thread899, label %.preheader971

.preheader971:                                    ; preds = %bb.eu
  %i.ps = zext i16 %i.pq to i64
  %i.pt = add nsw i64 %i.ps, -1
  %i.pu = icmp ult i64 %.2702990, %i.pt
  br i1 %i.pu, label %.lr.ph986, label %._crit_edge

.preheader970:                                    ; preds = %.lr.ph986
  %i.pv = icmp ult i64 %.2702990, %i.qc
  br i1 %i.pv, label %.lr.ph988, label %._crit_edge

.lr.ph986:                                        ; preds = %.preheader971, %.lr.ph986
  %.0698985 = phi i64 [ %i.py, %.lr.ph986 ], [ %.2702990, %.preheader971 ] ; 2 uses
  %i.pw = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.px = getelementptr inbounds nuw [36 x i8], ptr %i.pw, i64 %.0698985
  %i.py = add nuw i64 %.0698985, 1                ; 3 uses
  %i.pz = getelementptr inbounds nuw [36 x i8], ptr %i.pw, i64 %i.py
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.px, ptr noundef nonnull align 4 dereferenceable(36) %i.pz, i64 36, i1 false)
  %i.qa = load i16, ptr %i.cs, align 8, !tbaa !30 ; 2 uses
  %i.qb = zext i16 %i.qa to i64
  %i.qc = add nsw i64 %i.qb, -1                   ; 2 uses
  %i.qd = icmp ult i64 %i.py, %i.qc
  br i1 %i.qd, label %.lr.ph986, label %.preheader970

.lr.ph988:                                        ; preds = %.preheader970, %.lr.ph988
  %.1699987 = phi i64 [ %i.qf, %.lr.ph988 ], [ %.2702990, %.preheader970 ] ; 2 uses
  %i.qe = getelementptr inbounds nuw [40 x i8], ptr %i.mg, i64 %.1699987
  %i.qf = add nuw i64 %.1699987, 1                ; 3 uses
  %i.qg = getelementptr inbounds nuw [40 x i8], ptr %i.mg, i64 %i.qf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.qe, ptr noundef nonnull align 4 dereferenceable(40) %i.qg, i64 40, i1 false)
  %i.qh = load i16, ptr %i.cs, align 8, !tbaa !30 ; 2 uses
  %i.qi = zext i16 %i.qh to i64
  %i.qj = add nsw i64 %i.qi, -1
  %i.qk = icmp ult i64 %i.qf, %i.qj
  br i1 %i.qk, label %.lr.ph988, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph988, %.preheader971, %.preheader970
  %.lcssa976 = phi i16 [ %i.qa, %.preheader970 ], [ %i.pq, %.preheader971 ], [ %i.qh, %.lr.ph988 ]
  %i.ql = add i16 %.lcssa976, -1
  store i16 %i.ql, ptr %i.cs, align 8, !tbaa !30
  %i.qm = add nsw i64 %.2702990, -1
  br label %bb.gm
end_hunk_3
begin_hunk_4_@cli_peheader:bb.a
  %i.sh = load i32, ptr %i.pe, align 4, !tbaa !100 ; 2 uses
  %i.si = urem i32 %i.sh, %i.ka
  %.not821 = icmp eq i32 %i.si, 0
  br i1 %.not821, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.305) #22
  br i1 %.not822, label %thread-pre-split, label %.thread899

thread-pre-split:                                 ; preds = %bb.ft
  %.pr897 = load i32, ptr %i.pe, align 4, !tbaa !100
  br label %bb.fu

bb.fu:                                            ; preds = %thread-pre-split, %bb.fs
  %i.sj = phi i32 [ %.pr897, %thread-pre-split ], [ %i.sh, %bb.fs ] ; 3 uses
  %.not823 = icmp sgt i32 %i.sj, -1
  br i1 %.not823, label %bb.fv, label %bb.fz

bb.fv:                                            ; preds = %bb.fu
  %i.sk = load i32, ptr %i.ph, align 4, !tbaa !92
  %.not825 = icmp sgt i32 %i.sk, -1
  br i1 %.not825, label %bb.fw, label %bb.fz

bb.fw:                                            ; preds = %bb.fv
  %i.sl = load i32, ptr %i.oy, align 4, !tbaa !13 ; 2 uses
  %.not827 = icmp eq i32 %i.sl, 0
  br i1 %.not827, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.sm = load i32, ptr %i.pk, align 4, !tbaa !97
  %.not828 = icmp sgt i32 %i.sm, -1
  br i1 %.not828, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.sn = load ptr, ptr %1, align 8, !tbaa !29
  %i.so = getelementptr inbounds nuw [36 x i8], ptr %i.sn, i64 %.2702990 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 32
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !93
  %.not830 = icmp sgt i32 %i.sq, -1
  br i1 %.not830, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx, %bb.fv, %bb.fu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.306) #22
  br label %.thread899

bb.ga:                                            ; preds = %bb.fy
  %.not832 = icmp eq i64 %.2702990, 0
  br i1 %.not832, label %bb.gb, label %bb.ge

bb.gb:                                            ; preds = %bb.ga
  %i.sr = load i32, ptr %i.lc, align 8, !tbaa !31
  %.not833 = icmp eq i32 %i.sj, %i.sr
  br i1 %.not833, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.307) #22
  br i1 %.not822, label %._crit_edge1038, label %.thread899

._crit_edge1038:                                  ; preds = %bb.gc
  %.pre1039 = load i32, ptr %i.oy, align 4, !tbaa !13
  br label %bb.gd

bb.gd:                                            ; preds = %._crit_edge1038, %bb.gb
  %i.ss = phi i32 [ %.pre1039, %._crit_edge1038 ], [ %i.sl, %bb.gb ]
  %i.st = load i32, ptr %i.nn, align 4, !tbaa !14 ; 2 uses
  store i32 %i.st, ptr %i.nj, align 4, !tbaa !96
  %i.su = add i32 %i.ss, %i.st
  store i32 %i.su, ptr %i.nk, align 8, !tbaa !98
  br label %bb.gm

bb.ge:                                            ; preds = %bb.ga
  %i.sv = getelementptr i8, ptr %i.so, i64 -16
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !100
  %i.sx = sub i32 %i.sj, %i.sw
  %i.sy = getelementptr i8, ptr %i.so, i64 -32
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !61
  %.not835 = icmp eq i32 %i.sx, %i.sz
  br i1 %.not835, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.308) #22
  br i1 %.not822, label %bb.gg, label %.thread899

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.ta = load i32, ptr %i.nn, align 4, !tbaa !14 ; 3 uses
  %i.tb = load i32, ptr %i.nj, align 4, !tbaa !96
  %i.tc = icmp ult i32 %i.ta, %i.tb
  br i1 %i.tc, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  store i32 %i.ta, ptr %i.nj, align 4, !tbaa !96
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.td = load i32, ptr %i.oy, align 4, !tbaa !13 ; 3 uses
  %i.te = add i32 %i.td, %i.ta                    ; 3 uses
  %i.tf = load i32, ptr %i.nk, align 8, !tbaa !98 ; 2 uses
  %i.tg = icmp ugt i32 %i.te, %i.tf
  %.pre1037 = load i32, ptr %i.ov, align 4, !tbaa !15 ; 2 uses
  br i1 %i.tg, label %bb.gj, label %._crit_edge1044

._crit_edge1044:                                  ; preds = %bb.gi
  %.pre1047 = add i32 %.pre1037, %i.td
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  store i32 %i.te, ptr %i.nk, align 8, !tbaa !98
  %i.th = add i32 %.pre1037, %i.td                ; 2 uses
  store i32 %i.th, ptr %i.nl, align 4, !tbaa !85
  br label %bb.gk

bb.gk:                                            ; preds = %._crit_edge1044, %bb.gj
  %.pre-phi1048 = phi i32 [ %.pre1047, %._crit_edge1044 ], [ %i.th, %bb.gj ]
  %i.ti = phi i32 [ %i.tf, %._crit_edge1044 ], [ %i.te, %bb.gj ]
  %i.tj = icmp ugt i32 %.pre-phi1048, %i.ti
  br i1 %i.tj, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.309) #22
  br label %bb.gm

.thread899:                                       ; preds = %bb.ft, %bb.eu, %bb.fb, %bb.gc, %bb.gf, %bb.fz
  %.1687.ph = phi i32 [ 26, %bb.fz ], [ 26, %bb.ft ], [ 26, %bb.eu ], [ 21, %bb.fb ], [ 26, %bb.gc ], [ 26, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %bb.ic

bb.gm:                                            ; preds = %._crit_edge, %bb.gk, %bb.gl, %bb.gd
  %.3703 = phi i64 [ %.2702990, %bb.gk ], [ %i.qm, %._crit_edge ], [ %.2702990, %bb.gl ], [ 0, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %i.tk = add nsw i64 %.3703, 1                   ; 2 uses
  %i.tl = add i64 %.0697991, 1
  %i.tm = load i16, ptr %i.cs, align 8, !tbaa !30 ; 2 uses
  %i.tn = zext i16 %i.tm to i64
  %i.to = icmp ult i64 %i.tk, %i.tn
  br i1 %i.to, label %bb.el, label %._crit_edge994

._crit_edge994:                                   ; preds = %bb.gm, %.critedge.._crit_edge994_crit_edge
  %.pre-phi1046 = phi i32 [ %.pre1045, %.critedge.._crit_edge994_crit_edge ], [ %i.ng, %bb.gm ]
  %.lcssa977 = phi i16 [ 0, %.critedge.._crit_edge994_crit_edge ], [ %i.tm, %bb.gm ]
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !85
  %i.tr = sub i32 %.pre-phi1046, %i.tq
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %i.tr, ptr %i.ts, align 8, !tbaa !86
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !95
  %i.tv = load ptr, ptr %1, align 8, !tbaa !29
  %i.tw = load i32, ptr %i.lc, align 8, !tbaa !31
  %i.tx = call i32 @cli_rawaddr(i32 noundef %i.tu, ptr noundef %i.tv, i16 noundef zeroext %.lcssa977, ptr noundef nonnull %i.e, i64 noundef %i.ne, i32 noundef %i.tw) ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 %i.tx, ptr %i.ty, align 4, !tbaa !84
  %i.tz = icmp eq i32 %i.tx, 0
  %i.ua = load i32, ptr %i.e, align 4
  %i.ub = icmp ne i32 %i.ua, 0
  %or.cond12 = select i1 %i.tz, i1 %i.ub, i1 false
  br i1 %or.cond12, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %._crit_edge994
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.310) #22
  br label %bb.ic

bb.go:                                            ; preds = %._crit_edge994
  br i1 %.not, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.uc = call i32 @cli_jsonint(ptr noundef %.0689, ptr noundef nonnull @.str.311, i32 noundef %i.tx) #22 ; 0 uses
  %i.ud = call i32 @cli_json_timeout_cycle_check(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #22
  %.not779 = icmp eq i32 %i.ud, 0
  br i1 %.not779, label %bb.gq, label %bb.ic

bb.gq:                                            ; preds = %bb.gp, %bb.go
  br i1 %.not752.not, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ue = load i32, ptr %i.ty, align 4, !tbaa !84 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.312, i32 noundef %i.ue, i32 noundef %i.ue) #22
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  br i1 %.not756.not, label %bb.gt, label %bb.gw

bb.gt:                                            ; preds = %bb.gs
  %i.uf = load i32, ptr %i.kl, align 4, !tbaa !25
  %i.ug = icmp ult i32 %i.uf, 3
  br i1 %i.ug, label %bb.gw, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !94
  %.not780 = icmp eq i32 %i.ui, 0
  br i1 %.not780, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.uk = load i32, ptr %i.uj, align 8, !tbaa !28
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gs, %bb.gt, %bb.gu, %bb.gv
  %.sink1129 = phi i32 [ %i.uk, %bb.gv ], [ 0, %bb.gu ], [ 0, %bb.gt ], [ 0, %bb.gs ]
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %.sink1129, ptr %i.ul, align 4, !tbaa !144
  %i.um = and i32 %2, 4
  %.not781 = icmp eq i32 %i.um, 0
  br i1 %.not781, label %.critedge14, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.un = load i32, ptr %i.kl, align 4, !tbaa !25
  %i.uo = icmp ugt i32 %i.un, 2
  br i1 %i.uo, label %bb.gy, label %.critedge14

bb.gy:                                            ; preds = %bb.gx
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !94
  %.not782 = icmp eq i32 %i.uq, 0
  br i1 %.not782, label %.critedge14, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ur = load i32, ptr %i.t, align 8, !tbaa !26
  %.not783 = icmp eq i32 %i.ur, 0
  br i1 %.not783, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.313) #22
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i64 68, i1 false)
  call void @findres(i32 noundef 16, i32 noundef -1, ptr noundef nonnull %i.k, ptr noundef nonnull %1, ptr noundef nonnull @versioninfo_cb, ptr noundef nonnull %3)
  %i.us = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !102
  %.not784 = icmp eq i32 %i.ut, 0
  br i1 %.not784, label %.thread942, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.uu = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.uv = call i32 @cli_hashset_init(ptr noundef nonnull %i.uu, i64 noundef 32, i8 noundef zeroext 80) #22
  %.not785 = icmp eq i32 %i.uv, 0
  br i1 %.not785, label %bb.hd, label %.loopexit1132

bb.hd:                                            ; preds = %bb.hc
  store i32 0, ptr %i.e, align 4, !tbaa !16
  %i.uw = load i32, ptr %i.us, align 4, !tbaa !102 ; 2 uses
  %.not1021 = icmp eq i32 %i.uw, 0
  br i1 %.not1021, label %.thread942, label %.lr.ph1016

.lr.ph1016:                                       ; preds = %bb.hd, %.thread938
  %i.ux = phi i32 [ %i.zu, %.thread938 ], [ %i.uw, %bb.hd ]
  %.47041014 = phi i64 [ %i.va, %.thread938 ], [ 0, %bb.hd ] ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.47041014 ; 2 uses
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !16
  %i.va = add nuw nsw i64 %.47041014, 1           ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.315, i32 noundef %i.uz, i64 noundef %i.va, i32 noundef %i.ux) #22
  %i.vb = load i32, ptr %i.uy, align 4, !tbaa !16
  %i.vc = load ptr, ptr %1, align 8, !tbaa !29
  %i.vd = load i16, ptr %i.cs, align 8, !tbaa !30
  %i.ve = load i32, ptr %i.lc, align 8, !tbaa !31
  %i.vf = call i32 @cli_rawaddr(i32 noundef %i.vb, ptr noundef %i.vc, i16 noundef zeroext %i.vd, ptr noundef nonnull %i.e, i64 noundef %i.ne, i32 noundef %i.ve)
  %i.vg = load i32, ptr %i.e, align 4, !tbaa !16
  %.not786 = icmp eq i32 %i.vg, 0
  br i1 %.not786, label %bb.he, label %.thread938

bb.he:                                            ; preds = %.lr.ph1016
  %i.vh = zext i32 %i.vf to i64                   ; 2 uses
  %i.vi = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.vj = call ptr %i.vi(ptr noundef nonnull %i.k, i64 noundef range(i64 0, 8589934855) %i.vh, i64 noundef 16, i32 noundef 0) #22, !inline_history !0 ; 4 uses
  %.not787 = icmp eq ptr %i.vj, null
  br i1 %.not787, label %.thread938, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.vk = sub nsw i64 0, %i.vh
  %i.vl = getelementptr inbounds i8, ptr %i.vj, i64 %i.vk
  %i.vm = load i32, ptr %i.vj, align 1, !tbaa !39
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vo = load i32, ptr %i.vn, align 1, !tbaa !39 ; 3 uses
  %i.vp = load ptr, ptr %1, align 8, !tbaa !29
  %i.vq = load i16, ptr %i.cs, align 8, !tbaa !30
  %i.vr = load i32, ptr %i.lc, align 8, !tbaa !31
  %i.vs = call i32 @cli_rawaddr(i32 noundef %i.vm, ptr noundef %i.vp, i16 noundef zeroext %i.vq, ptr noundef nonnull %i.e, i64 noundef %i.ne, i32 noundef %i.vr)
  %i.vt = load i32, ptr %i.e, align 4, !tbaa !16
  %.not788 = icmp eq i32 %i.vt, 0
  br i1 %.not788, label %bb.hg, label %.thread938

bb.hg:                                            ; preds = %bb.hf
  %i.vu = zext i32 %i.vs to i64
  %i.vv = zext i32 %i.vo to i64
  %i.vw = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.vx = call ptr %i.vw(ptr noundef nonnull %i.k, i64 noundef range(i64 0, 8589934855) %i.vu, i64 noundef %i.vv, i32 noundef 0) #22, !inline_history !0 ; 6 uses
  %i.vy = icmp ne ptr %i.vx, null
  %i.vz = icmp ugt i32 %i.vo, 4
  %or.cond24 = select i1 %i.vy, i1 %i.vz, i1 false
  br i1 %or.cond24, label %bb.hh, label %.thread938

bb.hh:                                            ; preds = %bb.hg
  %i.wa = load i32, ptr %i.vx, align 1, !tbaa !39 ; 2 uses
  %i.wb = and i32 %i.wa, 65535                    ; 4 uses
  %i.wc = icmp ugt i32 %i.wb, %i.vo
  br i1 %i.wc, label %.thread938, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.wd = icmp samesign ult i32 %i.wb, 93
  %.mask = and i32 %i.wa, -65536
  %i.we = icmp ne i32 %.mask, 3407872
  %or.cond16 = or i1 %i.wd, %i.we
  br i1 %or.cond16, label %.thread938, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vx, i64 6 ; 2 uses
  %i.wg = load i128, ptr %i.wf, align 1
  %i.wh = xor i128 %i.wg, 379044246709664290880694430490361942
  %i.wi = getelementptr i8, ptr %i.wf, i64 16
  %i.wj = load i128, ptr %i.wi, align 1
  %i.wk = xor i128 %i.wj, 6259109464873122279762873417807
  %i.wl = or i128 %i.wh, %i.wk
  %i.wm = icmp ne i128 %i.wl, 0
  %i.wn = zext i1 %i.wm to i32
  %.not789 = icmp eq i32 %i.wn, 0
  br i1 %.not789, label %bb.hk, label %.thread938

bb.hk:                                            ; preds = %bb.hj
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vx, i64 40
  %i.wp = load i32, ptr %i.wo, align 1, !tbaa !39
  %.not790 = icmp eq i32 %i.wp, -17890115
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vx, i64 92 ; 3 uses
  %i.wr = add nsw i32 %i.wb, -92                  ; 2 uses
  %i.ws = icmp samesign ugt i32 %i.wb, 98
  %or.cond1019 = select i1 %.not790, i1 %i.ws, i1 false
  br i1 %or.cond1019, label %.lr.ph999.preheader, label %.thread938

.lr.ph999.preheader:                              ; preds = %bb.hk
  %i.wt = load i32, ptr %i.wq, align 1, !tbaa !39
  %i.wu = and i32 %i.wt, 65535                    ; 5 uses
  %i.wv = icmp samesign ule i32 %i.wu, %i.wr
  %i.ww = icmp samesign ugt i32 %i.wu, 30
  %or.cond1131 = select i1 %i.wv, i1 %i.ww, i1 false
  br i1 %or.cond1131, label %bb.hl, label %.thread938

bb.hl:                                            ; preds = %.lr.ph999.preheader
  %i.wx = getelementptr inbounds nuw i8, ptr %i.vx, i64 98 ; 2 uses
  %i.wy = load i128, ptr %i.wx, align 1
  %i.wz = xor i128 %i.wy, 379045672848022283027034608345612374
  %i.xa = getelementptr i8, ptr %i.wx, i64 16
  %i.xb = load i64, ptr %i.xa, align 1
  %i.xc = zext i64 %i.xb to i128
  %i.xd = xor i128 %i.xc, 476748054638
  %i.xe = or i128 %i.wz, %i.xd
  %i.xf = icmp ne i128 %i.xe, 0
  %i.xg = zext i1 %i.xf to i32
  %.not792.peel = icmp eq i32 %i.xg, 0
  br i1 %.not792.peel, label %bb.hm, label %.loopexit1029

bb.hm:                                            ; preds = %bb.hl
  %i.xh = sub nuw nsw i32 %i.wr, %i.wu            ; 2 uses
  %i.xi = icmp samesign ugt i32 %i.xh, 6
  br i1 %i.xi, label %.lr.ph999, label %.thread938

.lr.ph999:                                        ; preds = %bb.hm
  %i.xj = zext nneg i32 %i.wu to i64
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wq, i64 %i.xj ; 2 uses
  %.pre1042 = load i32, ptr %i.xk, align 1, !tbaa !39
  %i.xl = and i32 %.pre1042, 65535                ; 2 uses
  %i.xm = icmp samesign ugt i32 %i.xl, %i.xh
  br i1 %i.xm, label %.thread938, label %.loopexit1029

.loopexit1029:                                    ; preds = %.lr.ph999, %bb.hl
  %.0674996.lcssa1024 = phi ptr [ %i.xk, %.lr.ph999 ], [ %i.wq, %bb.hl ] ; 2 uses
  %.lcssa1023 = phi i32 [ %i.xl, %.lr.ph999 ], [ %i.wu, %bb.hl ] ; 3 uses
  %i.xn = icmp samesign ult i32 %.lcssa1023, 37
  br i1 %i.xn, label %.thread938, label %bb.hn

bb.hn:                                            ; preds = %.loopexit1029
  %i.xo = getelementptr inbounds nuw i8, ptr %.0674996.lcssa1024, i64 6 ; 2 uses
  %i.xp = load i128, ptr %i.xo, align 1
  %i.xq = xor i128 %i.xp, 545196716242054288091043937878540371
  %i.xr = getelementptr i8, ptr %i.xo, i64 14
  %i.xs = load i128, ptr %i.xr, align 1
  %i.xt = xor i128 %i.xs, 8794449351546104561274347847785
  %i.xu = or i128 %i.xq, %i.xt
  %i.xv = icmp ne i128 %i.xu, 0
  %i.xw = zext i1 %i.xv to i32
  %.not794 = icmp eq i32 %i.xw, 0
  %i.xx = icmp samesign ugt i32 %.lcssa1023, 42
  %or.cond1150 = select i1 %.not794, i1 %i.xx, i1 false
  br i1 %or.cond1150, label %.lr.ph1012, label %.thread938

.lr.ph1012:                                       ; preds = %bb.hn
  %i.xy = add nsw i32 %.lcssa1023, -36
  %i.xz = getelementptr inbounds nuw i8, ptr %.0674996.lcssa1024, i64 36
  %i.ya = ptrtoint ptr %i.vl to i64
  br label %bb.ho

bb.ho:                                            ; preds = %.lr.ph1012, %.thread913
  %.06681010 = phi i32 [ %i.xy, %.lr.ph1012 ], [ %i.yf, %.thread913 ] ; 2 uses
  %.16751009 = phi ptr [ %i.xz, %.lr.ph1012 ], [ %i.ye, %.thread913 ] ; 3 uses
  %i.yb = load i32, ptr %.16751009, align 1, !tbaa !39
  %i.yc = and i32 %i.yb, 65535                    ; 6 uses
  %i.yd = zext nneg i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %.16751009, i64 %i.yd
  %i.yf = sub nuw nsw i32 %.06681010, %i.yc       ; 2 uses
  %i.yg = icmp ugt i32 %i.yc, %.06681010
  %i.yh = icmp samesign ult i32 %i.yc, 25
end_hunk_4
begin_hunk_5_@scan_pe_imp:bb.a
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.bj = call i32 @cli_append_virus(ptr noundef nonnull %0, ptr noundef %i.bi) #22 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !82 ; 6 uses
  %i.bm = call i32 @cli_hm_scan(ptr noundef %i.bl, i32 noundef %i.bb, ptr noundef nonnull %i.c, ptr noundef %i.h, i32 noundef 1) #22
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.bp = call i32 @cli_append_virus(ptr noundef nonnull %0, ptr noundef %i.bo) #22 ; 2 uses
  %.not68.1 = icmp eq i32 %i.bp, 0
  br i1 %.not68.1, label %bb.ab, label %.loopexit.loopexit81

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bq = call i32 @cli_hm_scan_wild(ptr noundef %i.bl, ptr noundef nonnull %i.c, ptr noundef %i.h, i32 noundef 1) #22
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.bt = call i32 @cli_append_virus(ptr noundef nonnull %0, ptr noundef %i.bs) #22 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bv = load ptr, ptr %i.bu, align 16, !tbaa !82 ; 2 uses
  %i.bw = call i32 @cli_hm_scan(ptr noundef %i.bv, i32 noundef %i.bb, ptr noundef nonnull %i.c, ptr noundef %i.h, i32 noundef 2) #22
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.bz = call i32 @cli_append_virus(ptr noundef nonnull %0, ptr noundef %i.by) #22 ; 2 uses
  %.not68.2 = icmp eq i32 %i.bz, 0
  br i1 %.not68.2, label %bb.af, label %.loopexit.loopexit81

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ca = call i32 @cli_hm_scan_wild(ptr noundef %i.bv, ptr noundef nonnull %i.c, ptr noundef %i.h, i32 noundef 2) #22
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.ag, label %.loopexit.loopexit81

bb.ag:                                            ; preds = %bb.af
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.cd = call i32 @cli_append_virus(ptr noundef nonnull %0, ptr noundef %i.cc) #22 ; 0 uses
  br label %.loopexit.loopexit81

.loopexit.loopexit81:                             ; preds = %bb.af, %bb.ag, %..loopexit.loopexit81_crit_edge, %bb.ae, %bb.aa
  %i.ce = phi ptr [ %.pre90, %..loopexit.loopexit81_crit_edge ], [ %i.bl, %bb.ae ], [ %i.bl, %bb.aa ], [ %i.bl, %bb.ag ], [ %i.bl, %bb.af ]
  %.2 = phi i32 [ %i.bf, %..loopexit.loopexit81_crit_edge ], [ %i.bz, %bb.ae ], [ %i.bp, %bb.aa ], [ 0, %bb.ag ], [ 0, %bb.af ]
  %i.cf = load ptr, ptr %i.a, align 16, !tbaa !82
  call void @free(ptr noundef %i.cf) #22
  call void @free(ptr noundef %i.ce) #22
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ch = load ptr, ptr %i.cg, align 16, !tbaa !82
  call void @free(ptr noundef %i.ch) #22
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.loopexit.loopexit82, %.loopexit.loopexit81, %.preheader.preheader
  %.055 = phi i32 [ 20, %.loopexit.loopexit82 ], [ %spec.store.select, %.preheader.preheader ], [ 20, %bb.c ], [ %.2, %.loopexit.loopexit81 ], [ 20, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.055
}

declare ptr @cli_memstr(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @cli_max_realloc_or_free(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @cli_parseres_special(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, i64 noundef range(i64 65537, 4194304) %4, i32 noundef range(i32 0, 4) %5, i32 noundef range(i32 0, -2147483648) %6, ptr nofree noundef nonnull captures(none) %7, ptr noundef nonnull %8) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31
  %i.f = icmp ult i32 %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %1 to i64
  %.not36.i.not = icmp samesign ugt i64 %4, %i.g  ; 2 uses
  %.48.i = select i1 %.not36.i.not, i32 %1, i32 0
  br label %cli_rawaddr.exit

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i16 %i.c, 0
  br i1 %i.h, label %cli_rawaddr.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.i = zext i16 %i.c to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.i, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.j = getelementptr inbounds nuw [36 x i8], ptr %i.a, i64 %indvars.iv.next.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !13   ; 2 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = load i32, ptr %i.j, align 4, !tbaa !14   ; 2 uses
  %.not34.i = icmp ule i32 %i.m, %1
  %i.n = sub i32 %1, %i.m                         ; 2 uses
  %i.o = icmp ugt i32 %i.l, %i.n
  %or.cond.i = and i1 %.not34.i, %i.o
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.p = icmp samesign ult i64 %indvars.iv.i, 2
  br i1 %i.p, label %cli_rawaddr.exit, label %.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !15
  %i.s = add i32 %i.r, %i.n
  br label %cli_rawaddr.exit

cli_rawaddr.exit:                                 ; preds = %bb.e, %bb.b, %bb.c, %bb.f
  %.sink.i = phi i1 [ true, %bb.f ], [ %.not36.i.not, %bb.b ], [ false, %bb.c ], [ false, %bb.e ]
  %.030.i = phi i32 [ %i.s, %bb.f ], [ %.48.i, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ] ; 2 uses
  %i.t = icmp eq i32 %5, 3
  br i1 %i.t, label %bb.ak, label %bb.g

bb.g:                                             ; preds = %cli_rawaddr.exit
  %i.u = load i32, ptr %7, align 4, !tbaa !16     ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.ak, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %7, align 4, !tbaa !16
  br i1 %.sink.i, label %bb.i, label %bb.ak

bb.i:                                             ; preds = %bb.h
  %i.w = zext i32 %.030.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.z = tail call ptr %i.y(ptr noundef %2, i64 noundef range(i64 0, 8589934855) %i.w, i64 noundef 16, i32 noundef 0) #22, !inline_history !0 ; 3 uses
  %.not99 = icmp eq ptr %i.z, null
  br i1 %.not99, label %bb.ak, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !39 ; 2 uses
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %.not100 = icmp eq i16 %i.ab, 0
  br i1 %.not100, label %bb.ak, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !39
  %i.af = zext i16 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 3
  %i.ah = add i32 %i.ag, %.030.i                  ; 2 uses
  %i.ai = add i32 %i.ah, 16
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i32 %i.ac, 3
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.an = tail call ptr %i.am(ptr noundef nonnull %2, i64 noundef range(i64 0, 4294967296) %i.aj, i64 noundef range(i64 0, 4294967296) %i.al, i32 noundef 1) #22, !inline_history !2 ; 3 uses
  %.not101 = icmp eq ptr %i.an, null
  br i1 %.not101, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 35168 ; 3 uses
  %i.ap = icmp eq i32 %5, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 35164
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 35160
  %i.as = add nuw nsw i32 %5, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = zext i32 %i.ah to i64
  %i.au = add nuw nsw i64 %i.at, 16
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.352, i64 noundef %i.au) #22
  br label %bb.ak

bb.m:                                             ; preds = %.preheader, %.thread
  %.083182 = phi ptr [ %i.an, %.preheader ], [ %i.df, %.thread ] ; 3 uses
  %.084181 = phi i32 [ 0, %.preheader ], [ %i.de, %.thread ]
  %.085180 = phi i32 [ %6, %.preheader ], [ %.2.ph, %.thread ] ; 2 uses
  %i.av = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.aw = icmp sgt i32 %i.av, 1999
  br i1 %i.aw, label %bb.ai, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = load i32, ptr %.083182, align 1, !tbaa !39 ; 2 uses
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ay = and i32 %i.ax, 2147483647               ; 5 uses
  switch i32 %i.ay, label %.thread [
    i32 4, label %.thread145
    i32 5, label %.thread145
    i32 6, label %.thread145
    i32 11, label %.thread145
    i32 16, label %bb.p
    i32 24, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.ar, align 4, !tbaa !148
  br label %.thread145

bb.q:                                             ; preds = %bb.o
  store i32 1, ptr %i.aq, align 4, !tbaa !149
  br label %.thread

bb.r:                                             ; preds = %bb.n
  %.not102 = icmp eq i32 %.085180, 0
  br i1 %.not102, label %.thread, label %.thread145

.thread145:                                       ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.p, %bb.r
  %.186148 = phi i32 [ %.085180, %bb.r ], [ 16, %bb.p ], [ %i.ay, %bb.o ], [ %i.ay, %bb.o ], [ %i.ay, %bb.o ], [ %i.ay, %bb.o ] ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.083182, i64 4
  %i.ba = load i32, ptr %i.az, align 1, !tbaa !39 ; 3 uses
  %.not103 = icmp sgt i32 %i.ba, -1
  br i1 %.not103, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread145
  %i.bb = and i32 %i.ba, 2147483647
  %i.bc = add i32 %i.bb, %0
  tail call fastcc void @cli_parseres_special(i32 noundef %0, i32 noundef %i.bc, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %4, i32 noundef %i.as, i32 noundef %.186148, ptr noundef %7, ptr noundef %8)
  br label %.thread

bb.t:                                             ; preds = %.thread145
  %i.bd = add i32 %i.ba, %0                       ; 5 uses
  %i.be = load ptr, ptr %3, align 8, !tbaa !29
  %i.bf = load i16, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.bg = load i32, ptr %i.d, align 8, !tbaa !31
  %i.bh = icmp ult i32 %i.bd, %i.bg
  br i1 %i.bh, label %cli_rawaddr.exit124, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = icmp eq i16 %i.bf, 0
  br i1 %i.bi, label %.thread, label %.lr.ph.preheader.i112

.lr.ph.preheader.i112:                            ; preds = %bb.u
  %i.bj = zext i16 %i.bf to i64
  br label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.w, %.lr.ph.preheader.i112
  %indvars.iv.i114 = phi i64 [ %i.bj, %.lr.ph.preheader.i112 ], [ %indvars.iv.next.i115, %bb.w ] ; 2 uses
  %indvars.iv.next.i115 = add nsw i64 %indvars.iv.i114, -1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [36 x i8], ptr %i.be, i64 %indvars.iv.next.i115 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13 ; 2 uses
  %.not.i116 = icmp eq i32 %i.bm, 0
  br i1 %.not.i116, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i113
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !14 ; 2 uses
  %.not34.i117 = icmp ule i32 %i.bn, %i.bd
  %i.bo = sub i32 %i.bd, %i.bn                    ; 2 uses
  %i.bp = icmp ugt i32 %i.bm, %i.bo
  %or.cond.i118 = and i1 %.not34.i117, %i.bp
  br i1 %or.cond.i118, label %cli_rawaddr.exit124.thread152, label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i113
  %i.bq = icmp samesign ult i64 %indvars.iv.i114, 2
  br i1 %i.bq, label %.thread, label %.lr.ph.i113

cli_rawaddr.exit124.thread152:                    ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !15
  %i.bt = add i32 %i.bs, %i.bo
  br label %bb.x

cli_rawaddr.exit124:                              ; preds = %bb.t
  %i.bu = zext i32 %i.bd to i64
  %.not36.i121.not = icmp samesign ugt i64 %4, %i.bu
  br i1 %.not36.i121.not, label %bb.x, label %.thread

bb.x:                                             ; preds = %cli_rawaddr.exit124.thread152, %cli_rawaddr.exit124
  %.030.i120156 = phi i32 [ %i.bt, %cli_rawaddr.exit124.thread152 ], [ %i.bd, %cli_rawaddr.exit124 ]
  %i.bv = zext i32 %.030.i120156 to i64
  %i.bw = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.bx = tail call ptr %i.bw(ptr noundef nonnull %2, i64 noundef range(i64 0, 8589934855) %i.bv, i64 noundef 16, i32 noundef 0) #22, !inline_history !0 ; 3 uses
  %.not105 = icmp eq ptr %i.bx, null
  br i1 %.not105, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.by, align 1, !tbaa !39 ; 5 uses
  %i.ca = load i32, ptr %i.bx, align 1, !tbaa !39 ; 5 uses
  %i.cb = load ptr, ptr %3, align 8, !tbaa !29
  %i.cc = load i16, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.cd = load i32, ptr %i.d, align 8, !tbaa !31
  %i.ce = icmp ult i32 %i.ca, %i.cd
  br i1 %i.ce, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cf = zext i32 %i.ca to i64
  %.not36.i134.not = icmp samesign ugt i64 %4, %i.cf ; 2 uses
  %.48.i136 = select i1 %.not36.i134.not, i32 %i.ca, i32 0
  br label %cli_rawaddr.exit137

bb.aa:                                            ; preds = %bb.y
  %i.cg = icmp eq i16 %i.cc, 0
  br i1 %i.cg, label %cli_rawaddr.exit137.thread, label %.lr.ph.preheader.i125

.lr.ph.preheader.i125:                            ; preds = %bb.aa
  %i.ch = zext i16 %i.cc to i64
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %bb.ac, %.lr.ph.preheader.i125
  %indvars.iv.i127 = phi i64 [ %i.ch, %.lr.ph.preheader.i125 ], [ %indvars.iv.next.i128, %bb.ac ] ; 2 uses
  %indvars.iv.next.i128 = add nsw i64 %indvars.iv.i127, -1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [36 x i8], ptr %i.cb, i64 %indvars.iv.next.i128 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !13 ; 2 uses
  %.not.i129 = icmp eq i32 %i.ck, 0
  br i1 %.not.i129, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i126
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !14 ; 2 uses
  %.not34.i130 = icmp ule i32 %i.cl, %i.ca
  %i.cm = sub i32 %i.ca, %i.cl                    ; 2 uses
  %i.cn = icmp ugt i32 %i.ck, %i.cm
  %or.cond.i131 = and i1 %.not34.i130, %i.cn
  br i1 %or.cond.i131, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i126
  %i.co = icmp samesign ult i64 %indvars.iv.i127, 2
  br i1 %i.co, label %cli_rawaddr.exit137.thread, label %.lr.ph.i126

bb.ad:                                            ; preds = %bb.ab
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !15
  %i.cr = add i32 %i.cq, %i.cm
  br label %cli_rawaddr.exit137

cli_rawaddr.exit137:                              ; preds = %bb.z, %bb.ad
  %.sink.i132 = phi i1 [ true, %bb.ad ], [ %.not36.i134.not, %bb.z ]
  %.030.i133 = phi i32 [ %i.cr, %bb.ad ], [ %.48.i136, %bb.z ] ; 4 uses
  %i.cs = icmp ne i32 %i.bz, 0
  %or.cond = select i1 %.sink.i132, i1 %i.cs, i1 false
  br i1 %or.cond, label %bb.ae, label %cli_rawaddr.exit137.thread

bb.ae:                                            ; preds = %cli_rawaddr.exit137
  %i.ct = zext i32 %i.bz to i64                   ; 2 uses
  %.not106 = icmp samesign ugt i64 %4, %i.ct
  %i.cu = add i32 %.030.i133, %i.bz
  %i.cv = zext i32 %i.cu to i64
  %.not107 = icmp samesign ugt i64 %4, %i.cv
  %or.cond111 = select i1 %.not106, i1 %.not107, i1 false
  br i1 %or.cond111, label %bb.af, label %cli_rawaddr.exit137.thread

cli_rawaddr.exit137.thread:                       ; preds = %bb.ac, %bb.aa, %bb.ae, %cli_rawaddr.exit137
  %.030.i133160 = phi i32 [ %.030.i133, %cli_rawaddr.exit137 ], [ %.030.i133, %bb.ae ], [ 0, %bb.aa ], [ 0, %bb.ac ]
  %i.cw = zext i32 %.030.i133160 to i64
  %i.cx = zext i32 %i.bz to i64
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.354, i64 noundef %i.cw, i64 noundef %i.cx) #22
  %i.cy = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.ao, align 4, !tbaa !147
  br label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.da = and i32 %i.ax, 255
  %.not108 = icmp eq i32 %i.da, 9
  br i1 %.not108, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.db = zext i32 %.030.i133 to i64
  %i.dc = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.dd = tail call ptr %i.dc(ptr noundef nonnull %2, i64 noundef range(i64 0, 8589934855) %i.db, i64 noundef %i.ct, i32 noundef 0) #22, !inline_history !0 ; 2 uses
  %.not109 = icmp eq ptr %i.dd, null
  br i1 %.not109, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @cli_detect_swizz_str(ptr noundef nonnull %i.dd, i32 noundef %i.bz, ptr noundef nonnull %8, i32 noundef %.186148) #22
  br label %.thread

bb.ai:                                            ; preds = %bb.m
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.353) #22
  br label %bb.ak

.thread:                                          ; preds = %bb.w, %bb.ag, %bb.ah, %bb.u, %bb.q, %bb.o, %bb.af, %bb.r, %cli_rawaddr.exit137.thread, %cli_rawaddr.exit124, %bb.x, %bb.s
  %.2.ph = phi i32 [ %.186148, %bb.s ], [ %.186148, %bb.x ], [ %.186148, %cli_rawaddr.exit124 ], [ 0, %bb.q ], [ %.186148, %bb.u ], [ %.186148, %cli_rawaddr.exit137.thread ], [ 0, %bb.r ], [ %.186148, %bb.af ], [ 0, %bb.o ], [ %.186148, %bb.ag ], [ %.186148, %bb.ah ], [ %.186148, %bb.w ]
  %i.de = add nuw nsw i32 %.084181, 1             ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.083182, i64 8
  %exitcond.not = icmp eq i32 %i.de, %i.ac
  br i1 %exitcond.not, label %bb.aj, label %bb.m

bb.aj:                                            ; preds = %.thread
  %i.dg = getelementptr i8, ptr %2, i64 16
  %.val.i = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.dh = getelementptr i8, ptr %2, i64 72
  %.val3.i = load i64, ptr %i.dh, align 8, !tbaa !41
  %i.di = ptrtoint ptr %i.an to i64
  %i.dj = ptrtoint ptr %.val.i to i64
  %i.dk = add i64 %.val3.i, %i.dj
  %i.dl = sub i64 %i.di, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !99
  tail call void %i.dn(ptr noundef nonnull %2, i64 noundef %i.dl, i64 noundef range(i64 8, 524281) %i.al) #22, !inline_history !145
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.j, %bb.h, %bb.i, %cli_rawaddr.exit, %bb.g, %bb.aj, %bb.l
  ret void
}

declare i32 @cli_detect_swizz(ptr noundef) local_unnamed_addr #3

declare i32 @cli_jsonbool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cli_checklimits(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @cli_max_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @cli_jsonstr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cli_gentemp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @cli_multifree(ptr noundef captures(none) %0, ...) unnamed_addr #2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  tail call void @free(ptr noundef %0) #22
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.c = load i32, ptr %1, align 16               ; 3 uses
  %i.d = icmp ult i32 %i.c, 41
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 16
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = add nuw nsw i32 %i.c, 8
  store i32 %i.h, ptr %1, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ]
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !103  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.l) #22
  br label %bb.b

bb.g:                                             ; preds = %bb.e
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #7

declare i32 @unmew11(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

declare i32 @cli_magic_scan_desc(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare i32 @cli_unlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i32 @unupack(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @unfsg_200(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #3

declare i32 @unfsg_133(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @upx_inflate2b(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @upx_inflate2d(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @upx_inflate2e(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @upx_inflatelzma(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

declare i32 @petite_inflate2x_1to9(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @unspin(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @evidence_num_alerts(ptr noundef) local_unnamed_addr #3

declare i32 @yc_decrypt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #3

declare i32 @wwunpack(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @unaspack(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @unspack(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cli_bytecode_context_getresult_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 35) i32 @cli_pe_targetinfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @cli_peheader(ptr noundef %0, ptr noundef %1, i32 noundef 4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pe_add_heuristic_property(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %get_pe_property.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @json_object_object_get_ex(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.a) #22
  %.not8.i = icmp eq i32 %i.e, 0
  br i1 %.not8.i, label %bb.c, label %get_pe_property.exit

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @json_object_new_object() #22   ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !54
  %.not9.i = icmp eq ptr %i.f, null
  br i1 %.not9.i, label %get_pe_property.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.h = call i32 @json_object_object_add(ptr noundef %i.g, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.f) #22 ; 0 uses
  br label %get_pe_property.exit

get_pe_property.exit.thread:                      ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.j

get_pe_property.exit:                             ; preds = %bb.b, %bb.d
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %get_pe_property.exit
  %i.j = call i32 @json_object_object_get_ex(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.355, ptr noundef nonnull %i.b) #22
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call ptr @json_object_new_array() #22    ; 3 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !54
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = call i32 @json_object_object_add(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.355, ptr noundef nonnull %i.k) #22 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.m = call ptr @json_object_new_string(ptr noundef %1) #22 ; 2 uses
  %.not11 = icmp eq ptr %i.m, null
  br i1 %.not11, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.o = call i32 @json_object_array_add(ptr noundef %i.n, ptr noundef nonnull %i.m) #22 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %get_pe_property.exit.thread, %bb.h, %bb.f, %get_pe_property.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret void
}

declare ptr @cli_ctime(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @cli_jsonint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10
end_hunk_5
begin_hunk_6_@add_section_info:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @json_object_object_get_ex(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.a) #22
  %.not8.i.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i.i, label %bb.c, label %get_pe_property.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @json_object_new_object() #22   ; 3 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !54
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %get_pe_property.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.i = call i32 @json_object_object_add(ptr noundef %i.h, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.g) #22 ; 0 uses
  br label %get_pe_property.exit.i

get_pe_property.exit.thread.i:                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %get_section_json.exit.thread

get_pe_property.exit.i:                           ; preds = %bb.d, %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %get_section_json.exit.thread, label %bb.e

bb.e:                                             ; preds = %get_pe_property.exit.i
  %i.k = call i32 @json_object_object_get_ex(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.363, ptr noundef nonnull %i.b) #22
  %.not7.i = icmp eq i32 %i.k, 0
  br i1 %.not7.i, label %bb.f, label %get_section_json.exit

bb.f:                                             ; preds = %bb.e
  %i.l = call ptr @json_object_new_array() #22    ; 3 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !54
  %.not8.i = icmp eq ptr %i.l, null
  br i1 %.not8.i, label %get_section_json.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = call i32 @json_object_object_add(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.363, ptr noundef nonnull %i.l) #22 ; 0 uses
  br label %get_section_json.exit

get_section_json.exit.thread:                     ; preds = %get_pe_property.exit.i, %bb.f, %get_pe_property.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.x

get_section_json.exit:                            ; preds = %bb.e, %bb.g
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.x, label %bb.h

bb.h:                                             ; preds = %get_section_json.exit
  %i.o = call ptr @json_object_new_object() #22   ; 8 uses
  %.not40 = icmp eq ptr %i.o, null
  br i1 %.not40, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !13
  %i.r = call ptr @json_object_new_int(i32 noundef %i.q) #22 ; 2 uses
  %.not41 = icmp eq ptr %i.r, null
  br i1 %.not41, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.356, ptr noundef nonnull %i.r) #22 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !15
  %i.v = call ptr @json_object_new_int(i32 noundef %i.u) #22 ; 2 uses
  %.not42 = icmp eq ptr %i.v, null
  br i1 %.not42, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.357, ptr noundef nonnull %i.v) #22 ; 0 uses
  %i.x = load i32, ptr %1, align 4, !tbaa !14
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 16, ptr noundef nonnull @.str.358, i32 noundef %i.x) #22 ; 0 uses
  %i.z = call ptr @json_object_new_string(ptr noundef nonnull %i.c) #22 ; 2 uses
  %.not43 = icmp eq ptr %i.z, null
  br i1 %.not43, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.359, ptr noundef nonnull %i.z) #22 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !62
  %i.ad = lshr i32 %i.ac, 29
  %.lobit = and i32 %i.ad, 1
  %i.ae = call ptr @json_object_new_boolean(i32 noundef %.lobit) #22 ; 2 uses
  %.not44 = icmp eq ptr %i.ae, null
  br i1 %.not44, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.360, ptr noundef nonnull %i.ae) #22 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !62
  %.lobit45 = lshr i32 %i.ag, 31
  %i.ah = call ptr @json_object_new_boolean(i32 noundef %.lobit45) #22 ; 2 uses
  %.not46 = icmp eq ptr %i.ah, null
  br i1 %.not46, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.361, ptr noundef nonnull %i.ah) #22 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !100
  %.not47 = icmp sgt i32 %i.ak, -1
  br i1 %.not47, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i32, ptr %i.al, align 4, !tbaa !92
  %.not48 = icmp sgt i32 %i.am, -1
  br i1 %.not48, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.an = load i32, ptr %i.p, align 4, !tbaa !13
  %.not49 = icmp eq i32 %i.an, 0
  br i1 %.not49, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !97
  %.not50 = icmp sgt i32 %i.ap, -1
  br i1 %.not50, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !93
  %.lobit51 = lshr i32 %i.ar, 31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q, %bb.p
  %i.as = phi i32 [ 1, %bb.s ], [ 1, %bb.q ], [ 1, %bb.p ], [ %.lobit51, %bb.t ]
  %i.at = call ptr @json_object_new_boolean(i32 noundef %i.as) #22 ; 2 uses
  %.not52 = icmp eq ptr %i.at, null
  br i1 %.not52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = call i32 @json_object_object_add(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.362, ptr noundef nonnull %i.at) #22 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.av = call i32 @json_object_array_add(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #22 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %get_section_json.exit.thread, %bb.k, %bb.j, %bb.i, %bb.h, %get_section_json.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @versioninfo_cb(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.364, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !102
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  store i32 %4, ptr %i.d, align 4, !tbaa !16
  %i.e = load i32, ptr %i.a, align 4, !tbaa !102
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !102
  %i.g = icmp eq i32 %i.f, 16
  %. = zext i1 %i.g to i32
  ret i32 %.
}

declare i32 @cli_hashset_init(ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @cli_hashset_addkey(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cli_utf16toascii(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cli_str2hex(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @cli_check_auth_header(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.pe_certificate_hdr, align 4 ; 6 uses
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %3 = alloca %struct.cli_exe_info, align 8       ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = load i32, ptr %i.e, align 4, !tbaa !60
  %i.g = and i32 %i.f, 131072
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !150
  %i.l = and i64 %i.k, 8
  %.not179 = icmp eq i64 %i.l, 0
  br i1 %.not179, label %bb.c, label %bb.aq

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq ptr %1, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @cli_exe_info_init(ptr noundef nonnull %3, i32 noundef 0) #22
  %i.n = call i32 @cli_peheader(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0)
  %.not180 = icmp eq i32 %i.n, 0
  br i1 %.not180, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0145 = phi ptr [ %3, %bb.d ], [ %1, %bb.c ]   ; 7 uses
  %.0145.sroa.phi299 = getelementptr inbounds nuw i8, ptr %.0145, i64 284
  %.0145.sroa.phi296 = getelementptr inbounds nuw i8, ptr %.0145, i64 280
  %.0145.sroa.phi = getelementptr inbounds nuw i8, ptr %.0145, i64 24
  %.0145.sroa.phi291 = getelementptr inbounds nuw i8, ptr %.0145, i64 84
  %.0145.sroa.phi289 = getelementptr inbounds nuw i8, ptr %.0145, i64 88
  %i.o = load i32, ptr %.0145.sroa.phi296, align 8, !tbaa !28 ; 4 uses
  %i.p = load i32, ptr %.0145.sroa.phi299, align 4, !tbaa !94 ; 4 uses
  %i.q = icmp ult i32 %i.p, 8
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !151
  %i.u = call zeroext i1 @cli_hm_have_size(ptr noundef %i.t, i32 noundef 1, i32 noundef 2) #22
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !151
  %i.y = call zeroext i1 @cli_hm_have_size(ptr noundef %i.x, i32 noundef 2, i32 noundef 2) #22
  br i1 %i.y, label %bb.h, label %.thread216.thread235

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !37  ; 5 uses
  %i.ab = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 4, i64 noundef 8) #24 ; 12 uses
  %.not181 = icmp eq ptr %i.ab, null
  br i1 %.not181, label %.thread216.thread235, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %.0145.sroa.phi289, align 8, !tbaa !89 ; 2 uses
  %i.ad = add i32 %i.ac, 88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !153
  %i.af = add i32 %i.ac, 92                       ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = load i32, ptr %.0145.sroa.phi291, align 4, !tbaa !57
  %.not182 = icmp eq i32 %i.ah, 0
  %. = select i1 %.not182, i32 60, i32 76         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.af, ptr %i.ai, align 4, !tbaa !154
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 %., ptr %i.aj, align 4, !tbaa !153
  %i.ak = add nuw nsw i32 %., 8
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.al, %i.ag            ; 7 uses
  %i.an = load i32, ptr %.0145.sroa.phi, align 8, !tbaa !31
  %i.ao = zext i32 %i.an to i64
  %i.ap = icmp samesign ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %.thread216.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not183 = icmp eq i32 %i.o, 0
  br i1 %.not183, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = add i32 %i.p, %i.o
  %i.ar = zext i32 %i.aq to i64
  %.not184 = icmp eq i64 %i.aa, %i.ar
  br i1 %.not184, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.321) #22
  br label %.thread216.thread

bb.m:                                             ; preds = %bb.k
  %i.as = zext i32 %i.o to i64                    ; 6 uses
  %i.at = icmp samesign ult i64 %i.am, %i.as
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = trunc nuw i64 %i.am to i32              ; 2 uses
  %i.av = sub nuw i32 %i.o, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !154
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !153
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ay = icmp samesign ugt i64 %i.am, %i.as
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.322) #22
  br label %.thread216.thread

bb.q:                                             ; preds = %bb.o, %bb.n
  %.0136 = phi i32 [ 3, %bb.n ], [ 2, %bb.o ]     ; 2 uses
  %or.cond239.not = icmp samesign ugt i64 %i.aa, %i.as
  br i1 %or.cond239.not, label %bb.r, label %.thread216.thread

bb.r:                                             ; preds = %bb.q
  %i.az = sub nuw nsw i64 %i.aa, %i.as            ; 2 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.az, i64 8) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.bc = call ptr %i.bb(ptr noundef nonnull %i.c, i64 noundef range(i64 0, 8589934855) %i.as, i64 noundef %spec.select.i, i32 noundef 0) #22, !inline_history !1 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %.thread216.thread, label %fmap_readn.exit

fmap_readn.exit:                                  ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 1 %i.bc, i64 %spec.select.i, i1 false)
  %.not185 = icmp samesign ugt i64 %i.az, 7
  br i1 %.not185, label %bb.s, label %.thread216.thread

bb.s:                                             ; preds = %fmap_readn.exit
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.4..4..4. = load i16, ptr %.4..4..4..sroa_idx, align 4, !tbaa !39
  %.not186 = icmp eq i16 %.4..4..4., 512
  br i1 %.not186, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.323) #22
  br label %.thread216.thread

bb.u:                                             ; preds = %bb.s
  %.6..6..6..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.6..6..6. = load i16, ptr %.6..6..6..sroa_idx, align 2, !tbaa !39
  %.not187 = icmp eq i16 %.6..6..6., 2
  br i1 %.not187, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.324) #22
  br label %.thread216.thread

bb.w:                                             ; preds = %bb.u
  %.0..0..0. = load i32, ptr %2, align 4, !tbaa !39
  %.not188 = icmp eq i32 %.0..0..0., %i.p
  br i1 %.not188, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.325) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bd = add nuw nsw i64 %i.as, 8
  %i.be = add i32 %i.p, -8
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.bg = call i32 @asn1_check_mscat(ptr noundef %i.bf, ptr noundef nonnull %i.c, i64 noundef %i.bd, i32 noundef %i.be, ptr noundef nonnull %i.ab, i32 noundef %.0136, ptr noundef nonnull %0) #22 ; 3 uses
  %i.bh = and i32 %i.bg, -33
  %or.cond = icmp eq i32 %i.bh, 1
  br i1 %or.cond, label %.thread216.thread, label %bb.ab

bb.z:                                             ; preds = %bb.j
  %i.bi = icmp ult i64 %i.am, %i.aa
  br i1 %i.bi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bj = sub nuw i64 %i.aa, %i.am
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = trunc nuw i64 %i.am to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !154
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  store i32 %i.bk, ptr %i.bn, align 4, !tbaa !153
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  %.1137 = phi i32 [ %.0136, %bb.y ], [ 3, %bb.aa ], [ 2, %bb.z ] ; 4 uses
  %.0132 = phi i32 [ %i.bg, %bb.y ], [ 26, %bb.aa ], [ 26, %bb.z ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !151
  %i.bs = call zeroext i1 @cli_hm_have_size(ptr noundef %i.br, i32 noundef 1, i32 noundef 2) #22
  br i1 %i.bs, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.bt = call ptr @cl_hash_init(ptr noundef nonnull @.str.326) #22 ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.thread216.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ac
  %wide.trip.count = zext nneg i32 %.1137 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.af
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.af ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !153 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %.preheader
  %i.bz = load i32, ptr %i.bv, align 4, !tbaa !154
  %i.ca = zext i32 %i.bz to i64
  %i.cb = zext i32 %i.bx to i64
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !38
  %i.cd = call ptr %i.cc(ptr noundef %i.c, i64 noundef range(i64 0, 8589934855) %i.ca, i64 noundef %i.cb, i32 noundef 0) #22, !inline_history !0 ; 2 uses
  %.not189 = icmp eq ptr %i.cd, null
  br i1 %.not189, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = load i32, ptr %i.bw, align 4, !tbaa !153
  %i.cf = zext i32 %i.ce to i64
  %i.cg = call i32 @cl_update_hash(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.cd, i64 noundef %i.cf) #22 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %.preheader, %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.preheader

bb.ag:                                            ; preds = %bb.ad
  %i.ch = trunc nuw nsw i64 %indvars.iv to i32
  %.not190 = icmp eq i32 %.1137, %i.ch
  br i1 %.not190, label %.thread, label %.thread211

.thread:                                          ; preds = %bb.af, %bb.ag
  %i.ci = call i32 @cl_finish_hash(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.cj = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !151
  %i.cm = call i32 @cli_hm_scan(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef null, ptr noundef %i.cl, i32 noundef 1) #22
  %i.cn = icmp eq i32 %i.cm, 1
  br i1 %i.cn, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %.thread278, %.thread
  %.lcssa244 = phi ptr [ @.str.326, %.thread ], [ @.str.327, %.thread278 ] ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.328, ptr noundef nonnull %.lcssa244) #22
  %i.co = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa244) #25
  %i.cp = add i64 %i.co, 28                       ; 2 uses
  %i.cq = call noalias ptr @malloc(i64 noundef %i.cp) #23 ; 4 uses
  %.not191 = icmp eq ptr %i.cq, null
  br i1 %.not191, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.329) #22
  br label %.thread216.thread

bb.aj:                                            ; preds = %bb.ah
  %i.cr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.cq, i64 noundef %i.cp, ptr noundef nonnull @.str.330, ptr noundef nonnull %.lcssa244) #22 ; 0 uses
  %i.cs = call i32 @cli_trust_this_layer(ptr noundef nonnull %0, ptr noundef nonnull %i.cq) #22 ; 0 uses
  call void @free(ptr noundef nonnull %i.cq) #22
  br label %.thread216.thread

bb.ak:                                            ; preds = %bb.ab, %.thread
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 136
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !151
  %i.cw = call zeroext i1 @cli_hm_have_size(ptr noundef %i.cv, i32 noundef 2, i32 noundef 2) #22
  br i1 %i.cw, label %bb.al, label %.thread216.thread

bb.al:                                            ; preds = %bb.ak
  %i.cx = call ptr @cl_hash_init(ptr noundef nonnull @.str.327) #22 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %.thread216.thread, label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %bb.al
  %wide.trip.count.1 = zext nneg i32 %.1137 to i64
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.ao, %.preheader.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.preheader.preheader.1 ], [ %indvars.iv.next.1, %bb.ao ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.1 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !153 ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %.preheader.1
  %i.dd = load i32, ptr %i.cz, align 4, !tbaa !154
  %i.de = zext i32 %i.dd to i64
  %i.df = zext i32 %i.db to i64
  %i.dg = load ptr, ptr %i.bo, align 8, !tbaa !38
  %i.dh = call ptr %i.dg(ptr noundef %i.c, i64 noundef range(i64 0, 8589934855) %i.de, i64 noundef %i.df, i32 noundef 0) #22, !inline_history !0 ; 2 uses
  %.not189.1 = icmp eq ptr %i.dh, null
  br i1 %.not189.1, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.di = load i32, ptr %i.da, align 4, !tbaa !153
  %i.dj = zext i32 %i.di to i64
  %i.dk = call i32 @cl_update_hash(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.dh, i64 noundef %i.dj) #22 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.preheader.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %.thread278, label %.preheader.1

bb.ap:                                            ; preds = %bb.am
  %i.dl = trunc nuw nsw i64 %indvars.iv.1 to i32
  %.not190.1 = icmp eq i32 %.1137, %i.dl
  br i1 %.not190.1, label %.thread278, label %.thread211

.thread278:                                       ; preds = %bb.ao, %bb.ap
  %i.dm = call i32 @cl_finish_hash(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.dn = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 136
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !151
  %i.dq = call i32 @cli_hm_scan(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef null, ptr noundef %i.dp, i32 noundef 2) #22
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %bb.ah, label %.thread216.thread

.thread211:                                       ; preds = %bb.ag, %bb.ap
  %.2141 = phi ptr [ %i.cx, %bb.ap ], [ %i.bt, %bb.ag ]
  call void @cl_hash_destroy(ptr noundef nonnull %.2141) #22
  br label %.thread216.thread

.thread216.thread:                                ; preds = %bb.ak, %.thread278, %bb.ac, %bb.al, %.thread211, %bb.ai, %bb.aj, %bb.r, %bb.q, %bb.l, %fmap_readn.exit, %bb.t, %bb.v, %bb.y, %bb.p, %bb.i
  %.3135222230 = phi i32 [ 26, %bb.p ], [ 26, %bb.r ], [ 26, %bb.i ], [ 26, %bb.q ], [ 26, %bb.l ], [ 26, %fmap_readn.exit ], [ 26, %bb.t ], [ 26, %bb.v ], [ %i.bg, %bb.y ], [ 6, %bb.ak ], [ %.0132, %.thread211 ], [ %.0132, %bb.ai ], [ 33, %bb.aj ], [ 20, %bb.ac ], [ 20, %bb.al ], [ 6, %.thread278 ]
  call void @free(ptr noundef nonnull %i.ab) #22
  br label %.thread216.thread235

.thread216.thread235:                             ; preds = %bb.g, %bb.h, %.thread216.thread
  %.3135222231 = phi i32 [ %.3135222230, %.thread216.thread ], [ 20, %bb.h ], [ 22, %bb.g ] ; 2 uses
  %i.ds = icmp eq ptr %3, %.0145
  br i1 %i.ds, label %.sink.split, label %bb.aq

.sink.split:                                      ; preds = %.thread216.thread235, %bb.d
  %.0145.sink = phi ptr [ %3, %bb.d ], [ %.0145, %.thread216.thread235 ]
  %.0146.ph = phi i32 [ 26, %bb.d ], [ %.3135222231, %.thread216.thread235 ]
  call void @cli_exe_info_destroy(ptr noundef nonnull %.0145.sink) #22
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %.thread216.thread235, %bb.b, %bb.a
  %.0146 = phi i32 [ 6, %bb.a ], [ %.3135222231, %.thread216.thread235 ], [ 6, %bb.b ], [ %.0146.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %.0146
}

declare zeroext i1 @cli_hm_have_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @asn1_check_mscat(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cl_hash_init(ptr noundef) local_unnamed_addr #3

declare i32 @cl_update_hash(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @cl_finish_hash(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cli_hm_scan(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

declare i32 @cli_trust_this_layer(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cl_hash_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 27) i32 @cli_genhash_pe(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.cli_exe_info, align 8       ; 19 uses
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %i.b = alloca [3 x i8], align 1                 ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, i8 0, i64 3, i1 false)
  %.not = icmp eq ptr %3, null                    ; 3 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !157
  %i.e = icmp ne i32 %1, 0
  %i.f = icmp ne i32 %2, 1
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.331) #22
  br label %bb.ai

bb.d:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %1, 1
  br i1 %i.g, label %bb.ai, label %.thread

.thread:                                          ; preds = %bb.b, %bb.d
  call void @cli_exe_info_init(ptr noundef nonnull %4, i32 noundef 0) #22
  %i.h = call i32 @cli_peheader(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0)
  %.not79 = icmp eq i32 %i.h, 0
  br i1 %.not79, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  call void @cli_exe_info_destroy(ptr noundef nonnull %4) #22
  br label %bb.ai

bb.f:                                             ; preds = %.thread
  %i.i = load ptr, ptr %4, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !30
  %i.l = zext i16 %i.k to i64
  call void @cli_qsort(ptr noundef %i.i, i64 noundef %i.l, i64 noundef 36, ptr noundef nonnull @sort_sects) #22
  %i.m = zext i32 %2 to i64                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m
  store i8 1, ptr %i.n, align 1, !tbaa !83
  %i.o = call i64 @cli_hash_len(i32 noundef %2) #22 ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 4 uses
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.332, i32 noundef %2) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %4) #22
  br label %bb.ai

bb.h:                                             ; preds = %bb.f
  %i.r = and i64 %i.o, 2147483647
  %i.s = call noalias ptr @calloc(i64 noundef %i.r, i64 noundef 1) #24 ; 8 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.m
  store ptr %i.s, ptr %i.t, align 8, !tbaa !82
  %.not80 = icmp eq ptr %i.s, null
  br i1 %.not80, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.333) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %4) #22
  br label %bb.ai

bb.j:                                             ; preds = %bb.h
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load i16, ptr %i.j, align 8, !tbaa !30
  %i.v = zext i16 %i.u to i64                     ; 2 uses
  store i64 %i.v, ptr %3, align 8, !tbaa !158
  %i.w = call ptr @cli_max_calloc(i64 noundef %i.v, i64 noundef 24) #22 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !157
  %.not81 = icmp eq ptr %i.w, null
  br i1 %.not81, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @cli_exe_info_destroy(ptr noundef nonnull %4) #22
  call void @free(ptr noundef nonnull %i.s) #22
  br label %bb.ai

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.y = icmp eq i32 %1, 0
  br i1 %i.y, label %.preheader, label %bb.ac

.preheader:                                       ; preds = %bb.m
  %i.z = load i16, ptr %i.j, align 8, !tbaa !30
  %.not89 = icmp eq i16 %i.z, 0
  br i1 %.not89, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.t
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %bb.t ], [ 0, %.lr.ph ] ; 6 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ad = load ptr, ptr %4, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv92
  %i.af = call fastcc zeroext i1 @cli_hashsect(ptr noundef %i.ac, ptr noundef %i.ae, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.b)
  br i1 %i.af, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.ag = load ptr, ptr %4, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw [36 x i8], ptr %i.ag, i64 %indvars.iv92
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !13
  %.not84.us = icmp eq i32 %i.aj, 0
  %i.ak = trunc nuw nsw i64 %indvars.iv92 to i32  ; 2 uses
  br i1 %.not84.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.336, i32 noundef %i.ak) #22
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.337, i32 noundef %i.ak) #22
  br label %bb.t

bb.q:                                             ; preds = %.lr.ph.split.us
  %i.al = load i8, ptr @cli_debug_flag, align 1, !tbaa !39
  %.not85.us = icmp eq i8 %i.al, 0
  br i1 %.not85.us, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = call ptr @cli_str2hex(ptr noundef nonnull %i.s, i32 noundef %i.p) #22 ; 3 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw [36 x i8], ptr %i.an, i64 %indvars.iv92
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !13
  %.not86.us = icmp eq ptr %i.am, null            ; 2 uses
  %i.ar = select i1 %.not86.us, ptr @.str.335, ptr %i.am
  %i.as = trunc nuw nsw i64 %indvars.iv92 to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.334, i32 noundef %i.as, i32 noundef %i.aq, ptr noundef nonnull %i.ar) #22
  br i1 %.not86.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.am) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s, %bb.p, %bb.o
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.at = load i16, ptr %i.j, align 8, !tbaa !30
  %i.au = zext i16 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next93, %i.au
  br i1 %i.av, label %.lr.ph.split.us, label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ab ], [ 0, %.lr.ph ] ; 9 uses
  %i.aw = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ax = load ptr, ptr %4, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw [36 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = call fastcc zeroext i1 @cli_hashsect(ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.b)
  br i1 %i.az, label %bb.u, label %bb.y

bb.u:                                             ; preds = %.lr.ph.split
  %i.ba = load i8, ptr @cli_debug_flag, align 1, !tbaa !39
  %.not85 = icmp eq i8 %i.ba, 0
  br i1 %.not85, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = call ptr @cli_str2hex(ptr noundef nonnull %i.s, i32 noundef %i.p) #22 ; 3 uses
  %i.bc = load ptr, ptr %4, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw [36 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !13
  %.not86 = icmp eq ptr %i.bb, null               ; 2 uses
  %i.bg = select i1 %.not86, ptr @.str.335, ptr %i.bb
  %i.bh = trunc nuw nsw i64 %indvars.iv to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.334, i32 noundef %i.bh, i32 noundef %i.bf, ptr noundef nonnull %i.bg) #22
  br i1 %.not86, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.bb) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %i.bi = load ptr, ptr %i.ab, align 8, !tbaa !157
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 1 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.bk = load ptr, ptr %4, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw [36 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !13
  %i.bo = zext i32 %i.bn to i64
  %i.bp = load ptr, ptr %i.ab, align 8, !tbaa !157
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 %i.bo, ptr %i.br, align 8, !tbaa !160
  br label %bb.ab

bb.y:                                             ; preds = %.lr.ph.split
  %i.bs = load ptr, ptr %4, align 8, !tbaa !29
  %i.bt = getelementptr inbounds nuw [36 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !13
  %.not84 = icmp eq i32 %i.bv, 0
  %i.bw = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %.not84, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.336, i32 noundef %i.bw) #22
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.337, i32 noundef %i.bw) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.aa, %bb.z
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = load i16, ptr %i.j, align 8, !tbaa !30
  %i.by = zext i16 %i.bx to i64
  %i.bz = icmp samesign ult i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %.lr.ph.split, label %.loopexit

bb.ac:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 0, ptr %i.c, align 4, !tbaa !16
  %i.ca = call fastcc i32 @hash_imptbl(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b, ptr noundef %4) ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cc = load i8, ptr @cli_debug_flag, align 1, !tbaa !39
  %.not82 = icmp eq i8 %i.cc, 0
  br i1 %.not82, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = call ptr @cli_str2hex(ptr noundef nonnull %i.s, i32 noundef %i.p) #22 ; 3 uses
  %.not83 = icmp eq ptr %i.cd, null               ; 2 uses
  %i.ce = select i1 %.not83, ptr @.str.335, ptr %i.cd
  %i.cf = load i32, ptr %i.c, align 4, !tbaa !16
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.338, ptr noundef nonnull %i.ce, i32 noundef %i.cf) #22
  br i1 %.not83, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef nonnull %i.cd) #22
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.339, i32 noundef %i.ca) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %bb.af, %bb.ae, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %bb.t, %.preheader, %bb.ah
  call void @free(ptr noundef %i.s) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %4) #22
  br label %bb.ai

bb.ai:                                            ; preds = %bb.d, %.loopexit, %bb.l, %bb.i, %bb.g, %bb.e, %bb.c
  %.071 = phi i32 [ 3, %bb.c ], [ 20, %bb.i ], [ 26, %bb.e ], [ 3, %bb.g ], [ 0, %.loopexit ], [ 20, %bb.l ], [ 3, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i32 %.071
}

declare void @cli_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @sort_sects(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = sub i32 %i.b, %i.d
  ret i32 %i.e
}

declare i64 @cli_hash_len(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @cli_hashsect(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13   ; 3 uses
  %i.c = icmp ugt i32 %i.b, 1073741824
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.365) #22
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = zext i32 %i.e to i64
  %i.g = zext nneg i32 %i.b to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.j = tail call ptr %i.i(ptr noundef %0, i64 noundef range(i64 0, 8589934855) %i.f, i64 noundef %i.g, i32 noundef 0) #22, !inline_history !0 ; 4 uses
  %.not23 = icmp eq ptr %i.j, null
  br i1 %.not23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.366) #22
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.k = load i8, ptr %3, align 1, !tbaa !83, !range !104, !noundef !105
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i8, ptr %4, align 1, !tbaa !83, !range !104, !noundef !105
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = load i32, ptr %i.a, align 4, !tbaa !13
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %2, align 8, !tbaa !82
  %i.r = tail call ptr @cl_hash_data(ptr noundef nonnull @.str.345, ptr noundef nonnull %i.j, i64 noundef %i.p, ptr noundef %i.q, ptr noundef null) #22 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !83, !range !104, !noundef !105
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !83, !range !104, !noundef !105
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = load i32, ptr %i.a, align 4, !tbaa !13
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !82
  %i.ac = tail call ptr @cl_sha1(ptr noundef nonnull %i.j, i64 noundef %i.z, ptr noundef %i.ab, ptr noundef null) #22 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !83, !range !104, !noundef !105
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !83, !range !104, !noundef !105
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !13
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !82
  %i.an = tail call ptr @cl_sha256(ptr noundef nonnull %i.j, i64 noundef %i.ak, ptr noundef %i.am, ptr noundef null) #22 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.c, %bb.e, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.e ], [ true, %bb.n ], [ true, %bb.m ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 27) i32 @hash_imptbl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 1, ptr %i.b, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.h = load i32, ptr %i.g, align 8, !tbaa !28   ; 6 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 260 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !94   ; 3 uses
end_hunk_6
begin_hunk_7_@hash_impfns:bb.a
  %.0205128 = phi i64 [ 0, %.lr.ph131 ], [ %.3208, %.thread ] ; 3 uses
  %i.ax = sub nuw i64 %i.av, %i.aw                ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 4) ; 2 uses
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.az = tail call ptr %i.ay(ptr noundef nonnull %i.b, i64 noundef range(i64 0, 8589934855) %i.aw, i64 noundef %spec.select.i, i32 noundef 0) #22, !inline_history !1 ; 2 uses
  %.not.i295 = icmp eq ptr %i.az, null
  br i1 %.not.i295, label %.critedge.thread, label %fmap_readn.exit

fmap_readn.exit:                                  ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.01, ptr nonnull align 1 %i.az, i64 %spec.select.i, i1 false)
  %i.ba = icmp ult i64 %i.ax, 4
  %.sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0. = load i32, ptr %.sroa.01, align 4 ; 8 uses
  %i.bb = icmp eq i32 %.sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0., 0
  %or.cond9.not = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond9.not, label %.critedge.thread, label %bb.q

bb.q:                                             ; preds = %fmap_readn.exit
  %i.bc = add i32 %.2203129, 4                    ; 2 uses
  %i.bd = icmp slt i32 %.sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0., 0
  br i1 %i.bd, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr %4, align 8, !tbaa !29
  %i.bf = load i16, ptr %i.aq, align 8, !tbaa !30 ; 2 uses
  %i.bg = load i32, ptr %i.ar, align 8, !tbaa !31
  %i.bh = icmp ult i32 %.sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0., %i.bg
  br i1 %i.bh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bi = zext nneg i32 %.sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0. to i64
  %.not36.i305.not = icmp ugt i64 %i.d, %i.bi
  %.48.i307 = select i1 %.not36.i305.not, i32 %.sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0., i32 0
  br label %cli_rawaddr.exit308

bb.t:                                             ; preds = %bb.r
  %i.bj = icmp eq i16 %i.bf, 0
  br i1 %i.bj, label %cli_rawaddr.exit308, label %.lr.ph.preheader.i296

.lr.ph.preheader.i296:                            ; preds = %bb.t
  %i.bk = zext i16 %i.bf to i64
  br label %.lr.ph.i297

.lr.ph.i297:                                      ; preds = %bb.v, %.lr.ph.preheader.i296
  %indvars.iv.i298 = phi i64 [ %i.bk, %.lr.ph.preheader.i296 ], [ %indvars.iv.next.i299, %bb.v ] ; 2 uses
  %indvars.iv.next.i299 = add nsw i64 %indvars.iv.i298, -1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [36 x i8], ptr %i.be, i64 %indvars.iv.next.i299 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !13 ; 2 uses
  %.not.i300 = icmp eq i32 %i.bn, 0
  br i1 %.not.i300, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i297
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !14 ; 2 uses
  %.not34.i301 = icmp ule i32 %i.bo, %.sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0.
  %i.bp = sub i32 %.sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0., %i.bo ; 2 uses
  %i.bq = icmp ugt i32 %i.bn, %i.bp
  %or.cond.i302 = and i1 %.not34.i301, %i.bq
  br i1 %or.cond.i302, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i297
  %i.br = icmp samesign ult i64 %indvars.iv.i298, 2
  br i1 %i.br, label %cli_rawaddr.exit308, label %.lr.ph.i297

bb.w:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !15
  %i.bu = add i32 %i.bt, %i.bp
  br label %cli_rawaddr.exit308

cli_rawaddr.exit308:                              ; preds = %bb.v, %bb.w, %bb.t, %bb.s
  %.030.i304 = phi i32 [ %i.bu, %bb.w ], [ %.48.i307, %bb.s ], [ 0, %bb.t ], [ 0, %bb.v ]
  %i.bv = zext i32 %.030.i304 to i64              ; 2 uses
  %i.bw = add nuw nsw i64 %i.bv, 2
  %i.bx = sub i64 %i.d, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 256) ; 2 uses
  %i.bz = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ca = tail call ptr %i.bz(ptr noundef nonnull %i.b, i64 noundef range(i64 0, 8589934855) %i.bw, i64 noundef %i.by, i32 noundef 0) #22, !inline_history !0 ; 2 uses
  %.not259 = icmp eq ptr %i.ca, null
  br i1 %.not259, label %.thread, label %bb.x

bb.x:                                             ; preds = %cli_rawaddr.exit308
  %i.cb = tail call noalias ptr @strndup(ptr noundef nonnull %i.ca, i64 noundef %i.by) #22 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.thread27, label %bb.z

bb.y:                                             ; preds = %bb.q
  %i.cd = trunc i32 %.sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0. to i16
  %i.ce = tail call fastcc ptr @pe_ordinal(ptr noundef %3, i16 noundef zeroext %i.cd) ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.thread27.thread, label %bb.z

.thread27.thread:                                 ; preds = %bb.y
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.378) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  br label %bb.bt

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0233 = phi ptr [ %i.ce, %bb.y ], [ %i.cb, %bb.x ] ; 7 uses
  %i.cg = icmp eq i64 %.0205128, 0
  br i1 %i.cg, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %strchr = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %3, i32 46) ; 5 uses
  %.not261 = icmp eq ptr %strchr, null
  br i1 %.not261, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = tail call i32 @strncasecmp(ptr noundef nonnull %strchr, ptr noundef nonnull @.str.380, i64 noundef 4) #25
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = tail call i32 @strncasecmp(ptr noundef nonnull %strchr, ptr noundef nonnull @.str.381, i64 noundef 4) #25
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cl = tail call i32 @strncasecmp(ptr noundef nonnull %strchr, ptr noundef nonnull @.str.382, i64 noundef 4) #25
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.cn = ptrtoint ptr %strchr to i64
  %i.co = sub i64 %i.cn, %i.as
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.aa
  %i.cp = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #25
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.z
  %.2207 = phi i64 [ %.0205128, %bb.z ], [ %i.co, %bb.ae ], [ %i.cp, %bb.af ] ; 7 uses
  %i.cq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0233) #25 ; 7 uses
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ag, %bb.aj
  %.031.i = phi ptr [ %i.cy, %bb.aj ], [ %.0233, %bb.ag ] ; 2 uses
  %.01830.i = phi i32 [ %i.cz, %bb.aj ], [ 0, %bb.ag ]
  %i.ct = load i8, ptr %.031.i, align 1, !tbaa !39 ; 4 uses
  %.not.i310 = icmp eq i8 %i.ct, 0
  br i1 %.not.i310, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %.preheader.i
  %i.cu = add i8 %i.ct, -48
  %or.cond25.i = icmp ult i8 %i.cu, 10
  %i.cv = and i8 %i.ct, -33
  %i.cw = add i8 %i.cv, -65
  %i.cx = icmp ult i8 %i.cw, 26
  %or.cond29.i = or i1 %or.cond25.i, %i.cx
  br i1 %or.cond29.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  switch i8 %i.ct, label %.thread33 [
    i8 95, label %bb.aj
    i8 46, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai, %bb.ah
  %i.cy = getelementptr inbounds nuw i8, ptr %.031.i, i64 1
  %i.cz = add nuw i32 %.01830.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cz, %i.cr
  br i1 %exitcond.not.i, label %.loopexit, label %.preheader.i

.loopexit:                                        ; preds = %.preheader.i, %bb.aj, %bb.ag
  %i.da = add i64 %.2207, 3
  %i.db = add i64 %i.da, %i.cq
  %i.dc = tail call ptr @cli_max_calloc(i64 noundef %i.db, i64 noundef 1) #22 ; 18 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.thread33, label %bb.ak

bb.ak:                                            ; preds = %.loopexit
  %i.de = load i32, ptr %5, align 4, !tbaa !16
  %.not262 = icmp eq i32 %i.de, 0
  br i1 %.not262, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 44, ptr %i.dc, align 1, !tbaa !39
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0228 = phi i64 [ 0, %bb.ak ], [ 1, %bb.al ]   ; 3 uses
  %.not135 = icmp eq i64 %.2207, 0
  br i1 %.not135, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.am
  %i.df = tail call ptr @__ctype_tolower_loc() #26 ; 3 uses
  %xtraiter273 = and i64 %.2207, 1
  %i.dg = icmp eq i64 %.2207, 1
  br i1 %i.dg, label %.epil.preheader272, label %.lr.ph117.new

.lr.ph117.new:                                    ; preds = %.lr.ph117
  %unroll_iter277 = and i64 %.2207, -2
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph117.new
  %.1229115 = phi i64 [ %.0228, %.lr.ph117.new ], [ %i.ea, %bb.an ] ; 3 uses
  %.0231114 = phi i64 [ 0, %.lr.ph117.new ], [ %i.dz, %bb.an ] ; 3 uses
  %niter278 = phi i64 [ 0, %.lr.ph117.new ], [ %niter278.next.1, %bb.an ]
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !161
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 %.0231114
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !39
  %i.dk = sext i8 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !16
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.1229115
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !39
  %i.dp = load ptr, ptr %i.df, align 8, !tbaa !161
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 %.0231114
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !39
  %i.dt = sext i8 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !16
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.1229115
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  store i8 %i.dw, ptr %i.dy, align 1, !tbaa !39
  %i.dz = add nuw i64 %.0231114, 2                ; 2 uses
  %i.ea = add nuw i64 %.1229115, 2                ; 3 uses
  %niter278.next.1 = add nuw i64 %niter278, 2     ; 2 uses
  %niter278.ncmp.1 = icmp eq i64 %niter278.next.1, %unroll_iter277
  br i1 %niter278.ncmp.1, label %._crit_edge118.loopexit.unr-lcssa, label %bb.an

._crit_edge118.loopexit.unr-lcssa:                ; preds = %bb.an
  %lcmp.mod274.not = icmp eq i64 %xtraiter273, 0
  br i1 %lcmp.mod274.not, label %._crit_edge118, label %.epil.preheader272

.epil.preheader272:                               ; preds = %._crit_edge118.loopexit.unr-lcssa, %.lr.ph117
  %.1229115.epil.init = phi i64 [ %.0228, %.lr.ph117 ], [ %i.ea, %._crit_edge118.loopexit.unr-lcssa ] ; 2 uses
  %.0231114.epil.init = phi i64 [ 0, %.lr.ph117 ], [ %i.dz, %._crit_edge118.loopexit.unr-lcssa ]
  %lcmp.mod276 = trunc i64 %.2207 to i1
  tail call void @llvm.assume(i1 %lcmp.mod276)
  %i.eb = load ptr, ptr %i.df, align 8, !tbaa !161
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 %.0231114.epil.init
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !39
  %i.ee = sext i8 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !16
  %i.eh = trunc i32 %i.eg to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.1229115.epil.init
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !39
  %i.ej = add i64 %.1229115.epil.init, 1
  br label %._crit_edge118

._crit_edge118:                                   ; preds = %.epil.preheader272, %._crit_edge118.loopexit.unr-lcssa, %bb.am
  %.1229.lcssa = phi i64 [ %.0228, %bb.am ], [ %i.ea, %._crit_edge118.loopexit.unr-lcssa ], [ %i.ej, %.epil.preheader272 ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.1229.lcssa
  store i8 46, ptr %i.ek, align 1, !tbaa !39
  %.not136 = icmp eq i64 %i.cq, 0
  br i1 %.not136, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %._crit_edge118
  %i.el = tail call ptr @__ctype_tolower_loc() #26 ; 3 uses
  %xtraiter280 = and i64 %i.cq, 1
  %i.em = icmp eq i64 %i.cq, 1
  br i1 %i.em, label %.epil.preheader279, label %.lr.ph123.new

.lr.ph123.new:                                    ; preds = %.lr.ph123
  %unroll_iter283 = and i64 %i.cq, -2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph123.new
  %.2230.in121 = phi i64 [ %.1229.lcssa, %.lr.ph123.new ], [ %.2230.1, %bb.ao ] ; 2 uses
  %.1232120 = phi i64 [ 0, %.lr.ph123.new ], [ %i.ff, %bb.ao ] ; 3 uses
  %niter284 = phi i64 [ 0, %.lr.ph123.new ], [ %niter284.next.1, %bb.ao ]
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !161
  %i.eo = getelementptr inbounds nuw i8, ptr %.0233, i64 %.1232120
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !39
  %i.eq = sext i8 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !16
  %i.et = trunc i32 %i.es to i8
  %i.eu = getelementptr i8, ptr %i.dc, i64 %.2230.in121
  %i.ev = getelementptr i8, ptr %i.eu, i64 1
  store i8 %i.et, ptr %i.ev, align 1, !tbaa !39
  %.2230.1 = add i64 %.2230.in121, 2              ; 3 uses
  %i.ew = load ptr, ptr %i.el, align 8, !tbaa !161
  %i.ex = getelementptr inbounds nuw i8, ptr %.0233, i64 %.1232120
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !39
  %i.fa = sext i8 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !16
  %i.fd = trunc i32 %i.fc to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.2230.1
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !39
  %i.ff = add nuw i64 %.1232120, 2                ; 2 uses
  %niter284.next.1 = add nuw i64 %niter284, 2     ; 2 uses
  %niter284.ncmp.1 = icmp eq i64 %niter284.next.1, %unroll_iter283
  br i1 %niter284.ncmp.1, label %._crit_edge124.loopexit.unr-lcssa, label %bb.ao

._crit_edge124.loopexit.unr-lcssa:                ; preds = %bb.ao
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  br i1 %lcmp.mod281.not, label %._crit_edge124, label %.epil.preheader279

.epil.preheader279:                               ; preds = %._crit_edge124.loopexit.unr-lcssa, %.lr.ph123
  %.2230.in121.epil.init = phi i64 [ %.1229.lcssa, %.lr.ph123 ], [ %.2230.1, %._crit_edge124.loopexit.unr-lcssa ]
  %.1232120.epil.init = phi i64 [ 0, %.lr.ph123 ], [ %i.ff, %._crit_edge124.loopexit.unr-lcssa ]
  %lcmp.mod282 = trunc i64 %i.cq to i1
  tail call void @llvm.assume(i1 %lcmp.mod282)
  %i.fg = load ptr, ptr %i.el, align 8, !tbaa !161
  %i.fh = getelementptr inbounds nuw i8, ptr %.0233, i64 %.1232120.epil.init
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !39
  %i.fj = sext i8 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !16
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = getelementptr i8, ptr %i.dc, i64 %.2230.in121.epil.init
  %i.fo = getelementptr i8, ptr %i.fn, i64 1
  store i8 %i.fm, ptr %i.fo, align 1, !tbaa !39
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %.epil.preheader279, %._crit_edge124.loopexit.unr-lcssa, %._crit_edge118
  br i1 %.not263, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge124
  %i.fp = load i32, ptr %5, align 4, !tbaa !16
  %.not264 = icmp eq i32 %i.fp, 0
  %.idx = zext i1 %.not264 to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx
  %i.fr = tail call i32 @cli_jsonstr(ptr noundef nonnull %.0238, ptr noundef null, ptr noundef nonnull %i.fq) #22 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge124
  %i.fs = load ptr, ptr %1, align 8, !tbaa !103
  %i.ft = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dc) #25
  %i.fu = tail call i32 @cl_update_hash(ptr noundef %i.fs, ptr noundef nonnull %i.dc, i64 noundef %i.ft) #22 ; 0 uses
  %i.fv = load ptr, ptr %i.at, align 8, !tbaa !103
  %i.fw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dc) #25
  %i.fx = tail call i32 @cl_update_hash(ptr noundef %i.fv, ptr noundef nonnull %i.dc, i64 noundef %i.fw) #22 ; 0 uses
  %i.fy = load ptr, ptr %i.au, align 8, !tbaa !103
  %i.fz = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dc) #25
  %i.ga = tail call i32 @cl_update_hash(ptr noundef %i.fy, ptr noundef nonnull %i.dc, i64 noundef %i.fz) #22 ; 0 uses
  %i.gb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dc) #25
  %i.gc = load i32, ptr %2, align 4, !tbaa !16
  %i.gd = trunc i64 %i.gb to i32
  %i.ge = add i32 %i.gc, %i.gd
  store i32 %i.ge, ptr %2, align 4, !tbaa !16
  store i32 0, ptr %5, align 4, !tbaa !16
  tail call void @free(ptr noundef nonnull %i.dc) #22
  br label %.thread

.thread27:                                        ; preds = %bb.x
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.378) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  br label %bb.bt

.thread33:                                        ; preds = %.loopexit, %bb.ai
  %.str.383.sink = phi ptr [ @.str.383, %bb.ai ], [ @.str.384, %.loopexit ]
  %.2220.ph = phi i32 [ 26, %bb.ai ], [ 20, %.loopexit ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.383.sink) #22
  tail call void @free(ptr noundef nonnull %.0233) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  br label %bb.bt

.thread:                                          ; preds = %cli_rawaddr.exit308, %bb.aq
  %.023324 = phi ptr [ %.0233, %bb.aq ], [ null, %cli_rawaddr.exit308 ]
  %.3208 = phi i64 [ %.2207, %bb.aq ], [ %.0205128, %cli_rawaddr.exit308 ]
  tail call void @free(ptr noundef %.023324) #22
  %i.gf = zext i32 %i.bc to i64                   ; 2 uses
  %i.gg = load i64, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %or.cond81.not = icmp ugt i64 %i.gg, %i.gf
  br i1 %or.cond81.not, label %bb.p, label %.critedge.thread

.critedge.thread:                                 ; preds = %fmap_readn.exit, %.thread, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  br label %bb.bt

bb.ar:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.gh = load i64, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %or.cond82108.not = icmp ugt i64 %i.gh, %i.an
  br i1 %or.cond82108.not, label %.lr.ph112, label %.critedge6.thread

.lr.ph112:                                        ; preds = %bb.ar
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gl = ptrtoint ptr %3 to i64
  %.not274 = icmp eq ptr %.0238, null
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph112, %.thread54
  %i.go = phi i64 [ %i.gh, %.lr.ph112 ], [ %i.ma, %.thread54 ]
  %i.gp = phi i64 [ %i.an, %.lr.ph112 ], [ %i.lz, %.thread54 ] ; 2 uses
  %.3204110 = phi i32 [ %.120212, %.lr.ph112 ], [ %i.gv, %.thread54 ]
  %.5210109 = phi i64 [ 0, %.lr.ph112 ], [ %.8, %.thread54 ] ; 6 uses
  %i.gq = sub nuw i64 %i.go, %i.gp                ; 2 uses
  %spec.select.i313 = tail call i64 @llvm.umin.i64(i64 %i.gq, i64 8) ; 2 uses
  %i.gr = load ptr, ptr %i.gi, align 8, !tbaa !38
  %i.gs = tail call ptr %i.gr(ptr noundef nonnull %i.b, i64 noundef range(i64 0, 8589934855) %i.gp, i64 noundef %spec.select.i313, i32 noundef 0) #22, !inline_history !1 ; 2 uses
  %.not.i314 = icmp eq ptr %i.gs, null
  br i1 %.not.i314, label %.critedge6.thread, label %fmap_readn.exit315

fmap_readn.exit315:                               ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0, ptr nonnull align 1 %i.gs, i64 %spec.select.i313, i1 false)
  %i.gt = icmp ult i64 %i.gq, 8
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load i64, ptr %.sroa.0, align 8 ; 5 uses
  %i.gu = icmp eq i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., 0
  %or.cond12.not = select i1 %i.gt, i1 true, i1 %i.gu
  br i1 %or.cond12.not, label %.critedge6.thread, label %bb.at

bb.at:                                            ; preds = %fmap_readn.exit315
  %i.gv = add i32 %.3204110, 8                    ; 2 uses
  %i.gw = icmp slt i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., 0
  br i1 %i.gw, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gx = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. to i32 ; 4 uses
  %i.gy = load ptr, ptr %4, align 8, !tbaa !29
  %i.gz = load i16, ptr %i.gj, align 8, !tbaa !30 ; 2 uses
  %i.ha = load i32, ptr %i.gk, align 8, !tbaa !31
  %i.hb = icmp ugt i32 %i.ha, %i.gx
  br i1 %i.hb, label %cli_rawaddr.exit328, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hc = icmp eq i16 %i.gz, 0
  br i1 %i.hc, label %.thread54, label %.lr.ph.preheader.i316

.lr.ph.preheader.i316:                            ; preds = %bb.av
  %i.hd = zext i16 %i.gz to i64
  br label %.lr.ph.i317

.lr.ph.i317:                                      ; preds = %bb.ax, %.lr.ph.preheader.i316
  %indvars.iv.i318 = phi i64 [ %i.hd, %.lr.ph.preheader.i316 ], [ %indvars.iv.next.i319, %bb.ax ] ; 2 uses
  %indvars.iv.next.i319 = add nsw i64 %indvars.iv.i318, -1 ; 2 uses
  %i.he = getelementptr inbounds nuw [36 x i8], ptr %i.gy, i64 %indvars.iv.next.i319 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !13 ; 2 uses
  %.not.i320 = icmp eq i32 %i.hg, 0
  br i1 %.not.i320, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i317
  %i.hh = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %.not34.i321 = icmp ule i32 %i.hh, %i.gx
  %i.hi = sub i32 %i.gx, %i.hh                    ; 2 uses
  %i.hj = icmp ugt i32 %i.hg, %i.hi
  %or.cond.i322 = and i1 %.not34.i321, %i.hj
  br i1 %or.cond.i322, label %cli_rawaddr.exit328.thread48, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i317
  %i.hk = icmp samesign ult i64 %indvars.iv.i318, 2
  br i1 %i.hk, label %.thread54, label %.lr.ph.i317

cli_rawaddr.exit328.thread48:                     ; preds = %bb.aw
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !15
  %i.hn = add i32 %i.hm, %i.hi
  br label %bb.ay

cli_rawaddr.exit328:                              ; preds = %bb.au
  %i.ho = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., 4294967295
  %.not36.i325.not = icmp ugt i64 %i.d, %i.ho
  br i1 %.not36.i325.not, label %bb.ay, label %.thread54

bb.ay:                                            ; preds = %cli_rawaddr.exit328.thread48, %cli_rawaddr.exit328
  %.030.i32452 = phi i32 [ %i.hn, %cli_rawaddr.exit328.thread48 ], [ %i.gx, %cli_rawaddr.exit328 ]
  %i.hp = zext i32 %.030.i32452 to i64            ; 2 uses
  %i.hq = add nuw nsw i64 %i.hp, 2
  %i.hr = sub i64 %i.d, %i.hp
  %i.hs = tail call i64 @llvm.umin.i64(i64 %i.hr, i64 256) ; 2 uses
  %i.ht = load ptr, ptr %i.gi, align 8, !tbaa !38
  %i.hu = tail call ptr %i.ht(ptr noundef nonnull %i.b, i64 noundef range(i64 0, 8589934855) %i.hq, i64 noundef %i.hs, i32 noundef 0) #22, !inline_history !0 ; 2 uses
  %.not269 = icmp eq ptr %i.hu, null
  br i1 %.not269, label %.thread54, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hv = tail call noalias ptr @strndup(ptr noundef nonnull %i.hu, i64 noundef %i.hs) #22 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %.thread60, label %bb.bb

bb.ba:                                            ; preds = %bb.at
  %i.hx = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. to i16
  %i.hy = tail call fastcc ptr @pe_ordinal(ptr noundef %3, i16 noundef zeroext %i.hx) ; 2 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %.thread60.thread, label %bb.bb

.thread60.thread:                                 ; preds = %bb.ba
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.378) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.bt

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.0217 = phi ptr [ %i.hy, %bb.ba ], [ %i.hv, %bb.az ] ; 7 uses
  %i.ia = icmp eq i64 %.5210109, 0
  br i1 %i.ia, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %strchr271 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %3, i32 46) ; 5 uses
  %.not272 = icmp eq ptr %strchr271, null
  br i1 %.not272, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ib = tail call i32 @strncasecmp(ptr noundef nonnull %strchr271, ptr noundef nonnull @.str.380, i64 noundef 4) #25
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.id = tail call i32 @strncasecmp(ptr noundef nonnull %strchr271, ptr noundef nonnull @.str.381, i64 noundef 4) #25
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.if = tail call i32 @strncasecmp(ptr noundef nonnull %strchr271, ptr noundef nonnull @.str.382, i64 noundef 4) #25
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %i.ih = ptrtoint ptr %strchr271 to i64
  %i.ii = sub i64 %i.ih, %i.gl
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf, %bb.bc
  %i.ij = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #25
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.bb
  %.7 = phi i64 [ %.5210109, %bb.bb ], [ %i.ii, %bb.bg ], [ %i.ij, %bb.bh ] ; 7 uses
  %i.ik = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0217) #25 ; 7 uses
  %i.il = trunc i64 %i.ik to i32                  ; 2 uses
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %.loopexit83, label %.preheader.i330

.preheader.i330:                                  ; preds = %bb.bi, %bb.bl
  %.031.i331 = phi ptr [ %i.is, %bb.bl ], [ %.0217, %bb.bi ] ; 2 uses
  %.01830.i332 = phi i32 [ %i.it, %bb.bl ], [ 0, %bb.bi ]
  %i.in = load i8, ptr %.031.i331, align 1, !tbaa !39 ; 4 uses
  %.not.i333 = icmp eq i8 %i.in, 0
  br i1 %.not.i333, label %.loopexit83, label %bb.bj

bb.bj:                                            ; preds = %.preheader.i330
  %i.io = add i8 %i.in, -48
  %or.cond25.i334 = icmp ult i8 %i.io, 10
  %i.ip = and i8 %i.in, -33
  %i.iq = add i8 %i.ip, -65
  %i.ir = icmp ult i8 %i.iq, 26
  %or.cond29.i335 = or i1 %or.cond25.i334, %i.ir
  br i1 %or.cond29.i335, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  switch i8 %i.in, label %.thread66 [
    i8 95, label %bb.bl
    i8 46, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk, %bb.bk, %bb.bj
  %i.is = getelementptr inbounds nuw i8, ptr %.031.i331, i64 1
  %i.it = add nuw i32 %.01830.i332, 1             ; 2 uses
  %exitcond.not.i336 = icmp eq i32 %i.it, %i.il
  br i1 %exitcond.not.i336, label %.loopexit83, label %.preheader.i330

.loopexit83:                                      ; preds = %.preheader.i330, %bb.bl, %bb.bi
  %i.iu = add i64 %.7, 3
  %i.iv = add i64 %i.iu, %i.ik
  %i.iw = tail call ptr @cli_max_calloc(i64 noundef %i.iv, i64 noundef 1) #22 ; 18 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %.thread66, label %bb.bm

bb.bm:                                            ; preds = %.loopexit83
  %i.iy = load i32, ptr %5, align 4, !tbaa !16
  %.not273 = icmp eq i32 %i.iy, 0
  br i1 %.not273, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i8 44, ptr %i.iw, align 1, !tbaa !39
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.0212 = phi i64 [ 0, %bb.bm ], [ 1, %bb.bn ]   ; 3 uses
  %.not133 = icmp eq i64 %.7, 0
  br i1 %.not133, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bo
  %i.iz = tail call ptr @__ctype_tolower_loc() #26 ; 3 uses
  %xtraiter = and i64 %.7, 1
  %i.ja = icmp eq i64 %.7, 1
  br i1 %i.ja, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.7, -2
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.new
  %.1213100 = phi i64 [ %.0212, %.lr.ph.new ], [ %i.ju, %bb.bp ] ; 3 uses
  %.021599 = phi i64 [ 0, %.lr.ph.new ], [ %i.jt, %bb.bp ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bp ]
  %i.jb = load ptr, ptr %i.iz, align 8, !tbaa !161
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 %.021599
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !39
  %i.je = sext i8 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !16
  %i.jh = trunc i32 %i.jg to i8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.1213100
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !39
  %i.jj = load ptr, ptr %i.iz, align 8, !tbaa !161
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 %.021599
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !39
  %i.jn = sext i8 %i.jm to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !16
  %i.jq = trunc i32 %i.jp to i8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.1213100
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
  store i8 %i.jq, ptr %i.js, align 1, !tbaa !39
  %i.jt = add nuw i64 %.021599, 2                 ; 2 uses
  %i.ju = add nuw i64 %.1213100, 2                ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.bp

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.bp
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.1213100.epil.init = phi i64 [ %.0212, %.lr.ph ], [ %i.ju, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.021599.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.jt, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod265 = trunc i64 %.7 to i1
  tail call void @llvm.assume(i1 %lcmp.mod265)
  %i.jv = load ptr, ptr %i.iz, align 8, !tbaa !161
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 %.021599.epil.init
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !39
  %i.jy = sext i8 %i.jx to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !16
  %i.kb = trunc i32 %i.ka to i8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.1213100.epil.init
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !39
  %i.kd = add i64 %.1213100.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.bo
  %.1213.lcssa = phi i64 [ %.0212, %bb.bo ], [ %i.ju, %._crit_edge.loopexit.unr-lcssa ], [ %i.kd, %.epil.preheader ] ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.1213.lcssa
  store i8 46, ptr %i.ke, align 1, !tbaa !39
  %.not134 = icmp eq i64 %i.ik, 0
  br i1 %.not134, label %._crit_edge105, label %.lr.ph104

.lr.ph104:                                        ; preds = %._crit_edge
  %i.kf = tail call ptr @__ctype_tolower_loc() #26 ; 3 uses
  %xtraiter267 = and i64 %i.ik, 1
  %i.kg = icmp eq i64 %i.ik, 1
  br i1 %i.kg, label %.epil.preheader266, label %.lr.ph104.new

.lr.ph104.new:                                    ; preds = %.lr.ph104
  %unroll_iter270 = and i64 %i.ik, -2
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.lr.ph104.new
  %.2214.in102 = phi i64 [ %.1213.lcssa, %.lr.ph104.new ], [ %.2214.1, %bb.bq ] ; 2 uses
  %.1216101 = phi i64 [ 0, %.lr.ph104.new ], [ %i.kz, %bb.bq ] ; 3 uses
  %niter271 = phi i64 [ 0, %.lr.ph104.new ], [ %niter271.next.1, %bb.bq ]
  %i.kh = load ptr, ptr %i.kf, align 8, !tbaa !161
  %i.ki = getelementptr inbounds nuw i8, ptr %.0217, i64 %.1216101
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !39
  %i.kk = sext i8 %i.kj to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !16
  %i.kn = trunc i32 %i.km to i8
  %i.ko = getelementptr i8, ptr %i.iw, i64 %.2214.in102
  %i.kp = getelementptr i8, ptr %i.ko, i64 1
  store i8 %i.kn, ptr %i.kp, align 1, !tbaa !39
  %.2214.1 = add i64 %.2214.in102, 2              ; 3 uses
  %i.kq = load ptr, ptr %i.kf, align 8, !tbaa !161
  %i.kr = getelementptr inbounds nuw i8, ptr %.0217, i64 %.1216101
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !39
  %i.ku = sext i8 %i.kt to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !16
  %i.kx = trunc i32 %i.kw to i8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.2214.1
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !39
  %i.kz = add nuw i64 %.1216101, 2                ; 2 uses
  %niter271.next.1 = add nuw i64 %niter271, 2     ; 2 uses
  %niter271.ncmp.1 = icmp eq i64 %niter271.next.1, %unroll_iter270
  br i1 %niter271.ncmp.1, label %._crit_edge105.loopexit.unr-lcssa, label %bb.bq

._crit_edge105.loopexit.unr-lcssa:                ; preds = %bb.bq
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %._crit_edge105, label %.epil.preheader266

.epil.preheader266:                               ; preds = %._crit_edge105.loopexit.unr-lcssa, %.lr.ph104
  %.2214.in102.epil.init = phi i64 [ %.1213.lcssa, %.lr.ph104 ], [ %.2214.1, %._crit_edge105.loopexit.unr-lcssa ]
  %.1216101.epil.init = phi i64 [ 0, %.lr.ph104 ], [ %i.kz, %._crit_edge105.loopexit.unr-lcssa ]
  %lcmp.mod269 = trunc i64 %i.ik to i1
  tail call void @llvm.assume(i1 %lcmp.mod269)
  %i.la = load ptr, ptr %i.kf, align 8, !tbaa !161
  %i.lb = getelementptr inbounds nuw i8, ptr %.0217, i64 %.1216101.epil.init
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !39
  %i.ld = sext i8 %i.lc to i64
  %i.le = getelementptr inbounds [4 x i8], ptr %i.la, i64 %i.ld
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !16
  %i.lg = trunc i32 %i.lf to i8
  %i.lh = getelementptr i8, ptr %i.iw, i64 %.2214.in102.epil.init
  %i.li = getelementptr i8, ptr %i.lh, i64 1
  store i8 %i.lg, ptr %i.li, align 1, !tbaa !39
  br label %._crit_edge105

._crit_edge105:                                   ; preds = %.epil.preheader266, %._crit_edge105.loopexit.unr-lcssa, %._crit_edge
  br i1 %.not274, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %._crit_edge105
  %i.lj = load i32, ptr %5, align 4, !tbaa !16
  %.not275 = icmp eq i32 %i.lj, 0
  %.idx276 = zext i1 %.not275 to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.idx276
  %i.ll = tail call i32 @cli_jsonstr(ptr noundef nonnull %.0238, ptr noundef null, ptr noundef nonnull %i.lk) #22 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %._crit_edge105
  %i.lm = load ptr, ptr %1, align 8, !tbaa !103
  %i.ln = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.iw) #25
  %i.lo = tail call i32 @cl_update_hash(ptr noundef %i.lm, ptr noundef nonnull %i.iw, i64 noundef %i.ln) #22 ; 0 uses
  %i.lp = load ptr, ptr %i.gm, align 8, !tbaa !103
  %i.lq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.iw) #25
  %i.lr = tail call i32 @cl_update_hash(ptr noundef %i.lp, ptr noundef nonnull %i.iw, i64 noundef %i.lq) #22 ; 0 uses
  %i.ls = load ptr, ptr %i.gn, align 8, !tbaa !103
  %i.lt = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.iw) #25
  %i.lu = tail call i32 @cl_update_hash(ptr noundef %i.ls, ptr noundef nonnull %i.iw, i64 noundef %i.lt) #22 ; 0 uses
  %i.lv = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.iw) #25
  %i.lw = load i32, ptr %2, align 4, !tbaa !16
  %i.lx = trunc i64 %i.lv to i32
  %i.ly = add i32 %i.lw, %i.lx
  store i32 %i.ly, ptr %2, align 4, !tbaa !16
  store i32 0, ptr %5, align 4, !tbaa !16
  tail call void @free(ptr noundef nonnull %i.iw) #22
  br label %.thread54

.thread60:                                        ; preds = %bb.az
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.378) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.bt

.thread66:                                        ; preds = %.loopexit83, %bb.bk
  %.str.383.sink225 = phi ptr [ @.str.383, %bb.bk ], [ @.str.384, %.loopexit83 ]
  %.6224.ph = phi i32 [ 26, %bb.bk ], [ 20, %.loopexit83 ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.383.sink225) #22
  tail call void @free(ptr noundef nonnull %.0217) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.bt

.thread54:                                        ; preds = %bb.ax, %bb.av, %bb.ay, %cli_rawaddr.exit328, %bb.bs
  %.021757 = phi ptr [ %.0217, %bb.bs ], [ null, %cli_rawaddr.exit328 ], [ null, %bb.ay ], [ null, %bb.av ], [ null, %bb.ax ]
  %.8 = phi i64 [ %.7, %bb.bs ], [ %.5210109, %cli_rawaddr.exit328 ], [ %.5210109, %bb.ay ], [ %.5210109, %bb.av ], [ %.5210109, %bb.ax ]
  tail call void @free(ptr noundef %.021757) #22
  %i.lz = zext i32 %i.gv to i64                   ; 2 uses
  %i.ma = load i64, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %or.cond82.not = icmp ugt i64 %i.ma, %i.lz
  br i1 %or.cond82.not, label %bb.as, label %.critedge6.thread

.critedge6.thread:                                ; preds = %fmap_readn.exit315, %.thread54, %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.bt

bb.bt:                                            ; preds = %.critedge.thread, %.critedge6.thread, %.thread27, %.thread33, %.thread60, %.thread66, %.thread60.thread, %.thread27.thread, %bb.m, %cli_rawaddr.exit293.thread14
  %.6 = phi i32 [ 26, %cli_rawaddr.exit293.thread14 ], [ %.6224.ph, %.thread66 ], [ 20, %.thread27.thread ], [ 20, %.thread60.thread ], [ 20, %bb.m ], [ 20, %.thread27 ], [ %.2220.ph, %.thread33 ], [ 20, %.thread60 ], [ 0, %.critedge6.thread ], [ 0, %.critedge.thread ]
  ret i32 %.6
}

declare ptr @cli_jsonarray(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pe_ordinal(ptr nofree noundef nonnull readonly captures(none) %0, i16 noundef zeroext %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 521 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 16, !tbaa !39
  %i.b = tail call i32 @strncasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.385, i64 noundef 10) #25
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @strncasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.386, i64 noundef 11) #25
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.dq

bb.c:                                             ; preds = %bb.b, %bb.a
  switch i16 %1, label %bb.ta [
    i16 1, label %bb.d
    i16 2, label %bb.e
    i16 3, label %bb.f
    i16 4, label %bb.g
    i16 5, label %bb.h
    i16 6, label %bb.i
    i16 7, label %bb.j
    i16 8, label %bb.k
    i16 9, label %bb.l
    i16 10, label %bb.m
    i16 11, label %bb.n
    i16 12, label %bb.o
    i16 13, label %bb.p
    i16 14, label %bb.q
    i16 15, label %bb.r
    i16 16, label %bb.s
    i16 17, label %bb.t
    i16 18, label %bb.u
    i16 19, label %bb.v
    i16 20, label %bb.w
    i16 21, label %bb.x
    i16 22, label %bb.y
    i16 23, label %bb.z
    i16 24, label %bb.aa
    i16 25, label %bb.ab
    i16 26, label %bb.ac
    i16 27, label %bb.ad
    i16 28, label %bb.ae
    i16 29, label %bb.af
    i16 30, label %bb.ag
    i16 31, label %bb.ah
    i16 32, label %bb.ai
    i16 33, label %bb.aj
    i16 34, label %bb.ak
    i16 35, label %bb.al
    i16 36, label %bb.am
    i16 37, label %bb.an
    i16 38, label %bb.ao
    i16 39, label %bb.ap
    i16 40, label %bb.aq
    i16 41, label %bb.ar
    i16 42, label %bb.as
    i16 43, label %bb.at
    i16 44, label %bb.au
    i16 45, label %bb.av
    i16 46, label %bb.aw
    i16 47, label %bb.ax
    i16 48, label %bb.ay
    i16 49, label %bb.az
    i16 50, label %bb.ba
    i16 51, label %bb.bb
    i16 52, label %bb.bc
    i16 53, label %bb.bd
    i16 54, label %bb.be
    i16 55, label %bb.bf
    i16 56, label %bb.bg
    i16 57, label %bb.bh
    i16 58, label %bb.bi
    i16 59, label %bb.bj
    i16 60, label %bb.bk
    i16 61, label %bb.bl
    i16 62, label %bb.bm
    i16 63, label %bb.bn
    i16 64, label %bb.bo
    i16 65, label %bb.bp
    i16 66, label %bb.bq
    i16 67, label %bb.br
    i16 68, label %bb.bs
    i16 69, label %bb.bt
    i16 70, label %bb.bu
    i16 71, label %bb.bv
    i16 72, label %bb.bw
    i16 73, label %bb.bx
    i16 74, label %bb.by
    i16 75, label %bb.bz
    i16 76, label %bb.ca
    i16 77, label %bb.cb
    i16 78, label %bb.cc
    i16 79, label %bb.cd
    i16 80, label %bb.ce
    i16 81, label %bb.cf
    i16 82, label %bb.cg
    i16 83, label %bb.ch
    i16 84, label %bb.ci
    i16 85, label %bb.cj
    i16 86, label %bb.ck
    i16 87, label %bb.cl
    i16 88, label %bb.cm
    i16 89, label %bb.cn
    i16 90, label %bb.co
    i16 91, label %bb.cp
    i16 92, label %bb.cq
    i16 93, label %bb.cr
    i16 94, label %bb.cs
    i16 95, label %bb.ct
    i16 96, label %bb.cu
    i16 97, label %bb.cv
    i16 98, label %bb.cw
    i16 99, label %bb.cx
    i16 101, label %bb.cy
    i16 102, label %bb.cz
    i16 103, label %bb.da
    i16 104, label %bb.db
    i16 105, label %bb.dc
    i16 106, label %bb.dd
    i16 107, label %bb.de
    i16 108, label %bb.df
    i16 109, label %bb.dg
    i16 110, label %bb.dh
end_hunk_7
begin_hunk_8_@pe_ordinal:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.900, i64 14, i1 false)
  br label %bb.ta

bb.sy:                                            ; preds = %bb.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(23) %i.a, ptr noundef nonnull align 1 dereferenceable(23) @.str.901, i64 23, i1 false)
  br label %bb.ta

bb.sz:                                            ; preds = %bb.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.a, ptr noundef nonnull align 1 dereferenceable(25) @.str.902, i64 25, i1 false)
  br label %bb.ta

bb.ta:                                            ; preds = %bb.dq, %bb.dr, %bb.sz, %bb.sy, %bb.sx, %bb.sw, %bb.sv, %bb.su, %bb.st, %bb.ss, %bb.sr, %bb.sq, %bb.sp, %bb.so, %bb.sn, %bb.sm, %bb.sl, %bb.sk, %bb.sj, %bb.si, %bb.sh, %bb.sg, %bb.sf, %bb.se, %bb.sd, %bb.sc, %bb.sb, %bb.sa, %bb.rz, %bb.ry, %bb.rx, %bb.rw, %bb.rv, %bb.ru, %bb.rt, %bb.rs, %bb.rr, %bb.rq, %bb.rp, %bb.ro, %bb.rn, %bb.rm, %bb.rl, %bb.rk, %bb.rj, %bb.ri, %bb.rh, %bb.rg, %bb.rf, %bb.re, %bb.rd, %bb.rc, %bb.rb, %bb.ra, %bb.qz, %bb.qy, %bb.qx, %bb.qw, %bb.qv, %bb.qu, %bb.qt, %bb.qs, %bb.qr, %bb.qq, %bb.qp, %bb.qo, %bb.qn, %bb.qm, %bb.ql, %bb.qk, %bb.qj, %bb.qi, %bb.qh, %bb.qg, %bb.qf, %bb.qe, %bb.qd, %bb.qc, %bb.qb, %bb.qa, %bb.pz, %bb.py, %bb.px, %bb.pw, %bb.pv, %bb.pu, %bb.pt, %bb.ps, %bb.pr, %bb.pq, %bb.pp, %bb.po, %bb.pn, %bb.pm, %bb.pl, %bb.pk, %bb.pj, %bb.pi, %bb.ph, %bb.pg, %bb.pf, %bb.pe, %bb.pd, %bb.pc, %bb.pb, %bb.pa, %bb.oz, %bb.oy, %bb.ox, %bb.ow, %bb.ov, %bb.ou, %bb.ot, %bb.os, %bb.or, %bb.oq, %bb.op, %bb.oo, %bb.on, %bb.om, %bb.ol, %bb.ok, %bb.oj, %bb.oi, %bb.oh, %bb.og, %bb.of, %bb.oe, %bb.od, %bb.oc, %bb.ob, %bb.oa, %bb.nz, %bb.ny, %bb.nx, %bb.nw, %bb.nv, %bb.nu, %bb.nt, %bb.ns, %bb.nr, %bb.nq, %bb.np, %bb.no, %bb.nn, %bb.nm, %bb.nl, %bb.nk, %bb.nj, %bb.ni, %bb.nh, %bb.ng, %bb.nf, %bb.ne, %bb.nd, %bb.nc, %bb.nb, %bb.na, %bb.mz, %bb.my, %bb.mx, %bb.mw, %bb.mv, %bb.mu, %bb.mt, %bb.ms, %bb.mr, %bb.mq, %bb.mp, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mk, %bb.mj, %bb.mi, %bb.mh, %bb.mg, %bb.mf, %bb.me, %bb.md, %bb.mc, %bb.mb, %bb.ma, %bb.lz, %bb.ly, %bb.lx, %bb.lw, %bb.lv, %bb.lu, %bb.lt, %bb.ls, %bb.lr, %bb.lq, %bb.lp, %bb.lo, %bb.ln, %bb.lm, %bb.ll, %bb.lk, %bb.lj, %bb.li, %bb.lh, %bb.lg, %bb.lf, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.df, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.c
  %.pr = load i8, ptr %i.a, align 16, !tbaa !39
  %i.h = icmp eq i8 %.pr, 0
  br i1 %i.h, label %bb.tb, label %.thread

bb.tb:                                            ; preds = %bb.ta
  %i.i = zext i16 %1 to i32
  %i.j = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.903, i32 noundef %i.i) #22 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.dp, %bb.ca, %bb.bv, %bb.g, %bb.jn, %bb.tb, %bb.ta
  %i.k = call ptr @cli_safer_strdup(ptr noundef nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %i.k
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare ptr @cli_safer_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind allocsize(0,1) }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = distinct !{ptr @fmap_readn, null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"cli_exe_section", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!13 = !{!12, !9, i64 12}
!14 = !{!12, !9, i64 0}
!15 = !{!12, !9, i64 8}
!16 = !{!9, !9, i64 0}
!17 = !{!"any pointer", !8, i64 0}
!18 = !{!"p1 _ZTS15cli_exe_section", !17, i64 0}
!19 = !{!"short", !8, i64 0}
!20 = !{!"p1 int", !17, i64 0}
!21 = !{!"p1 _ZTS2MP", !17, i64 0}
!22 = !{!"cli_hashset", !20, i64 0, !20, i64 8, !21, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36}
!23 = !{!"pe_image_file_hdr", !9, i64 0, !19, i64 4, !19, i64 6, !9, i64 8, !9, i64 12, !9, i64 16, !19, i64 20, !19, i64 22}
!24 = !{!"cli_exe_info", !18, i64 0, !9, i64 8, !9, i64 12, !19, i64 16, !9, i64 20, !9, i64 24, !22, i64 32, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !23, i64 108, !8, i64 136, !8, i64 248}
!25 = !{!24, !9, i64 76}
!26 = !{!24, !9, i64 8}
!27 = !{!"pe_image_data_dir", !9, i64 0, !9, i64 4}
!28 = !{!27, !9, i64 0}
!29 = !{!24, !18, i64 0}
!30 = !{!24, !19, i64 16}
!31 = !{!24, !9, i64 24}
!32 = !{!"long", !8, i64 0}
!33 = !{!"_Bool", !8, i64 0}
!34 = !{!"p1 long", !17, i64 0}
!35 = !{!"p1 omnipotent char", !17, i64 0}
!36 = !{!"cl_fmap", !17, i64 0, !17, i64 8, !17, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !33, i64 56, !33, i64 57, !33, i64 58, !32, i64 64, !32, i64 72, !32, i64 80, !32, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144, !8, i64 152, !8, i64 155, !8, i64 158, !34, i64 256, !35, i64 264, !35, i64 272}
!37 = !{!36, !32, i64 88}
!38 = !{!36, !17, i64 104}
!39 = !{!8, !8, i64 0}
!40 = !{!36, !17, i64 16}
!41 = !{!36, !32, i64 72}
!42 = !{!"p1 _ZTS11cli_matcher", !17, i64 0}
!43 = !{!"p1 _ZTS9cl_engine", !17, i64 0}
!44 = !{!"p1 _ZTS15cl_scan_options", !17, i64 0}
!45 = !{!"p1 _ZTS14cli_scan_layer", !17, i64 0}
!46 = !{!"p1 _ZTS7cl_fmap", !17, i64 0}
!47 = !{!"p1 _ZTS9cli_dconf", !17, i64 0}
!48 = !{!"p1 _ZTS10bitset_tag", !17, i64 0}
!49 = !{!"p1 _ZTS10cli_events", !17, i64 0}
!50 = !{!"p1 _ZTS11json_object", !17, i64 0}
!51 = !{!"timeval", !32, i64 0, !32, i64 8}
!52 = !{!"cli_ctx_tag", !35, i64 0, !35, i64 8, !34, i64 16, !42, i64 24, !43, i64 32, !32, i64 40, !44, i64 48, !9, i64 56, !9, i64 60, !45, i64 64, !9, i64 72, !9, i64 76, !17, i64 80, !46, i64 88, !32, i64 96, !47, i64 104, !48, i64 112, !17, i64 120, !49, i64 128, !50, i64 136, !50, i64 144, !51, i64 152, !33, i64 168, !33, i64 169}
!53 = !{!52, !50, i64 144}
!54 = !{!50, !50, i64 0}
!55 = !{!52, !46, i64 88}
!56 = !{!52, !9, i64 60}
!57 = !{!24, !9, i64 84}
!58 = !{!52, !47, i64 104}
!59 = !{!"cli_dconf", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!60 = !{!59, !9, i64 0}
!61 = !{!12, !9, i64 4}
!62 = !{!12, !9, i64 16}
!63 = !{!52, !43, i64 32}
!64 = !{!"any p2 pointer", !17, i64 0}
!65 = !{!"p2 _ZTS11cli_matcher", !64, i64 0}
!66 = !{!"p1 _ZTS7cli_cdb", !17, i64 0}
!67 = !{!"p1 _ZTS13regex_matcher", !17, i64 0}
!68 = !{!"p1 _ZTS10phishcheck", !17, i64 0}
!69 = !{!"p1 _ZTS9cli_ftype", !17, i64 0}
!70 = !{!"p2 _ZTS8cli_pwdb", !64, i64 0}
!71 = !{!"p1 _ZTS12icon_matcher", !17, i64 0}
!72 = !{!"p1 _ZTS5CACHE", !17, i64 0}
!73 = !{!"p1 _ZTS10cli_dbinfo", !17, i64 0}
!74 = !{!"p1 _ZTS9cli_crt_t", !17, i64 0}
!75 = !{!"", !74, i64 0, !9, i64 8}
!76 = !{!"p1 _ZTS6cli_bc", !17, i64 0}
!77 = !{!"p1 _ZTS12cli_bcengine", !17, i64 0}
!78 = !{!"cli_environment", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !8, i64 28, !8, i64 93, !8, i64 158, !8, i64 223, !8, i64 288, !8, i64 353, !8, i64 418, !8, i64 483, !8, i64 484, !8, i64 485, !8, i64 486, !8, i64 487, !8, i64 488, !8, i64 489, !8, i64 490, !8, i64 491}
!79 = !{!"cli_all_bc", !76, i64 0, !9, i64 8, !77, i64 16, !78, i64 24, !9, i64 516}
!80 = !{!"p1 _ZTS12_yara_global", !17, i64 0}
!81 = !{!"cl_engine", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12, !9, i64 20, !9, i64 24, !9, i64 28, !35, i64 32, !35, i64 40, !9, i64 48, !32, i64 56, !9, i64 64, !9, i64 68, !32, i64 72, !32, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !65, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !66, i64 144, !67, i64 152, !67, i64 160, !68, i64 168, !47, i64 176, !69, i64 184, !69, i64 192, !70, i64 200, !42, i64 208, !42, i64 216, !35, i64 224, !71, i64 232, !72, i64 240, !73, i64 248, !32, i64 256, !21, i64 264, !75, i64 272, !17, i64 288, !17, i64 296, !17, i64 304, !17, i64 312, !17, i64 320, !17, i64 328, !17, i64 336, !17, i64 344, !17, i64 352, !17, i64 360, !17, i64 368, !17, i64 376, !17, i64 384, !17, i64 392, !17, i64 400, !17, i64 408, !17, i64 416, !17, i64 424, !17, i64 432, !17, i64 440, !17, i64 448, !17, i64 456, !79, i64 464, !8, i64 984, !8, i64 1040, !9, i64 1068, !9, i64 1072, !9, i64 1076, !9, i64 1080, !32, i64 1088, !32, i64 1096, !32, i64 1104, !32, i64 1112, !32, i64 1120, !17, i64 1128, !17, i64 1136, !17, i64 1144, !17, i64 1152, !17, i64 1160, !17, i64 1168, !17, i64 1176, !17, i64 1184, !17, i64 1192, !9, i64 1200, !9, i64 1204, !9, i64 1208, !32, i64 1216, !32, i64 1224, !32, i64 1232, !80, i64 1240}
!82 = !{!35, !35, i64 0}
!83 = !{!33, !33, i64 0}
!84 = !{!24, !9, i64 12}
!85 = !{!24, !9, i64 100}
!86 = !{!24, !9, i64 104}
!87 = !{!"pe_image_optional_hdr32", !19, i64 0, !8, i64 2, !8, i64 3, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !19, i64 40, !19, i64 42, !19, i64 44, !19, i64 46, !19, i64 48, !19, i64 50, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !19, i64 68, !19, i64 70, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92}
!88 = !{!"pe_image_optional_hdr64", !19, i64 0, !8, i64 2, !8, i64 3, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !32, i64 24, !9, i64 32, !9, i64 36, !19, i64 40, !19, i64 42, !19, i64 44, !19, i64 46, !19, i64 48, !19, i64 50, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !19, i64 68, !19, i64 70, !32, i64 72, !32, i64 80, !32, i64 88, !32, i64 96, !9, i64 104, !9, i64 108}
!89 = !{!24, !9, i64 88}
!90 = !{!81, !42, i64 128}
!91 = !{!24, !9, i64 80}
!92 = !{!12, !9, i64 24}
!93 = !{!12, !9, i64 32}
!94 = !{!27, !9, i64 4}
!95 = !{!24, !9, i64 72}
!96 = !{!24, !9, i64 92}
!97 = !{!12, !9, i64 28}
!98 = !{!24, !9, i64 96}
!99 = !{!36, !17, i64 128}
!100 = !{!12, !9, i64 20}
!101 = !{!"vinfo_list", !8, i64 0, !9, i64 64}
!102 = !{!101, !9, i64 64}
!103 = !{!17, !17, i64 0}
!104 = !{i8 0, i8 2}
!105 = !{}
!106 = distinct !{null}
!107 = distinct !{null, null}
!108 = distinct !{!108, i1 false, !"LVerDomain"}
!109 = distinct !{!109, !108}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !108}
!112 = distinct !{!112, !133, !134}
!113 = distinct !{!113, !133}
!114 = !{!52, !44, i64 48}
!115 = !{!"cl_scan_options", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16}
!116 = !{!115, !9, i64 0}
!117 = !{!115, !9, i64 8}
!118 = !{!81, !42, i64 120}
!119 = !{!"cli_pe_hook_data", !9, i64 0, !9, i64 4, !19, i64 8, !19, i64 10, !23, i64 12, !87, i64 36, !8, i64 132, !9, i64 260, !88, i64 264, !8, i64 376, !8, i64 504, !9, i64 632, !9, i64 636, !9, i64 640, !9, i64 644}
!120 = !{!119, !19, i64 8}
!121 = !{!119, !9, i64 4}
!122 = !{!119, !9, i64 0}
!123 = !{!119, !9, i64 632}
!124 = !{!119, !9, i64 636}
!125 = !{!119, !9, i64 640}
!126 = !{!119, !9, i64 644}
!127 = !{!52, !35, i64 8}
!128 = !{!81, !9, i64 48}
!129 = !{!109}
!130 = !{!110}
!131 = !{!111}
!132 = !{!109, !110}
!133 = !{!"llvm.loop.isvectorized", i32 1}
!134 = !{!"llvm.loop.unroll.runtime.disable"}
!135 = !{ptr @upx_inflate2b, ptr @upx_inflate2d, ptr @upx_inflate2e}
!136 = !{!52, !17, i64 80}
!137 = !{!32, !32, i64 0}
!138 = !{!88, !8, i64 2}
!139 = !{!88, !8, i64 3}
!140 = !{!87, !8, i64 2}
!141 = !{!87, !8, i64 3}
!142 = !{!"pe_image_section_hdr", !8, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !19, i64 32, !19, i64 34, !9, i64 36}
!143 = !{!142, !9, i64 16}
!144 = !{!24, !9, i64 20}
!145 = distinct !{null, null}
!146 = !{!"swizz_stats", !8, i64 0, !9, i64 35152, !9, i64 35156, !9, i64 35160, !9, i64 35164, !9, i64 35168, !9, i64 35172}
!147 = !{!146, !9, i64 35168}
!148 = !{!146, !9, i64 35160}
!149 = !{!146, !9, i64 35164}
!150 = !{!81, !32, i64 56}
!151 = !{!81, !42, i64 136}
!152 = !{!"cli_mapped_region", !9, i64 0, !9, i64 4}
!153 = !{!152, !9, i64 4}
!154 = !{!152, !9, i64 0}
!155 = !{!"p1 _ZTS16cli_section_hash", !17, i64 0}
!156 = !{!"cli_stats_sections", !32, i64 0, !155, i64 8}
!157 = !{!156, !155, i64 8}
!158 = !{!156, !32, i64 0}
!159 = !{!"cli_section_hash", !8, i64 0, !32, i64 16}
!160 = !{!159, !32, i64 16}
!161 = !{!20, !20, i64 0}
end_hunk_8
