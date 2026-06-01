inline.NumInlined: 154
inline.NumDeleted: 26
begin_hunk_0_@match_at:bb.a
bb.ary:                                           ; preds = %.backedge
  %i.eyd = load ptr, ptr %i.o, align 8, !tbaa !59
  br label %memoize_extended_match_cache_point.exit3241

memoize_extended_match_cache_point.exit3241:      ; preds = %memoize_extended_match_cache_point.exit3241.backedge, %bb.ary
  %.82237 = phi ptr [ %i.eyd, %bb.ary ], [ %i.eye, %memoize_extended_match_cache_point.exit3241.backedge ] ; 5 uses
  %i.eye = getelementptr i8, ptr %.82237, i64 -48 ; 5 uses
  %i.eyf = load i32, ptr %i.eye, align 8, !tbaa !63 ; 2 uses
  %i.eyg = and i32 %i.eyf, 4351
  %.not2563 = icmp eq i32 %i.eyg, 0
  br i1 %.not2563, label %bb.arz, label %.thread3447

.thread3447:                                      ; preds = %memoize_extended_match_cache_point.exit3241
  %i.eyh = load i64, ptr %i.co, align 8, !tbaa !47
  %i.eyi = add i64 %i.eyh, 1
  store i64 %i.eyi, ptr %i.co, align 8, !tbaa !47
  store i32 2560, ptr %i.eye, align 8, !tbaa !63
  br label %memoize_extended_match_cache_point.exit3241.backedge

bb.arz:                                           ; preds = %memoize_extended_match_cache_point.exit3241
  switch i32 %i.eyf, label %memoize_extended_match_cache_point.exit3241.backedge [
    i32 1280, label %bb.asa
    i32 3328, label %bb.asb
  ]

memoize_extended_match_cache_point.exit3241.backedge: ; preds = %bb.arz, %bb.asd, %bb.asc, %.thread3447
  br label %memoize_extended_match_cache_point.exit3241

bb.asa:                                           ; preds = %bb.arz
  store i32 2560, ptr %i.eye, align 8, !tbaa !63
  %i.eyj = getelementptr i8, ptr %.82237, i64 -24
  %i.eyk = load ptr, ptr %i.eyj, align 8, !tbaa !66
  store ptr %i.eyk, ptr %i.m, align 8, !tbaa !19
  %i.eyl = getelementptr i8, ptr %.82237, i64 -16
  %i.eym = load ptr, ptr %i.eyl, align 8, !tbaa !66
  %i.eyn = getelementptr i8, ptr %.25, i64 1
  br label %.backedge.backedge

bb.asb:                                           ; preds = %bb.arz
  store i32 2560, ptr %i.eye, align 8, !tbaa !63
  %i.eyo = load ptr, ptr %i.cn, align 8, !tbaa !55
  %i.eyp = getelementptr i8, ptr %.82237, i64 -32
  %i.eyq = load i64, ptr %i.eyp, align 8, !tbaa !66
  %i.eyr = getelementptr i8, ptr %.82237, i64 -24
  %i.eys = load i8, ptr %i.eyr, align 8, !tbaa !66 ; 3 uses
  %i.eyt = getelementptr i8, ptr %i.eyo, i64 %i.eyq ; 4 uses
  %i.eyu = load i8, ptr %i.eyt, align 1, !tbaa !66
  %i.eyv = or i8 %i.eyu, %i.eys                   ; 2 uses
  store i8 %i.eyv, ptr %i.eyt, align 1, !tbaa !66
  %.not.i3240 = icmp sgt i8 %i.eys, -1
  br i1 %.not.i3240, label %bb.asd, label %bb.asc

bb.asc:                                           ; preds = %bb.asb
  %i.eyw = getelementptr i8, ptr %i.eyt, i64 1    ; 2 uses
  %i.eyx = load i8, ptr %i.eyw, align 1, !tbaa !66
  %i.eyy = or i8 %i.eyx, 1
  store i8 %i.eyy, ptr %i.eyw, align 1, !tbaa !66
  br label %memoize_extended_match_cache_point.exit3241.backedge

bb.asd:                                           ; preds = %bb.asb
  %i.eyz = shl nuw i8 %i.eys, 1
  %i.eza = or i8 %i.eyv, %i.eyz
  store i8 %i.eza, ptr %i.eyt, align 1, !tbaa !66
  br label %memoize_extended_match_cache_point.exit3241.backedge

bb.ase:                                           ; preds = %.backedge
  %i.ezb = load i32, ptr %.25, align 4, !tbaa !7
  %i.ezc = getelementptr i8, ptr %.25, i64 4      ; 2 uses
  %i.ezd = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.eze = load ptr, ptr %i.o, align 8, !tbaa !59 ; 2 uses
  %i.ezf = ptrtoint ptr %i.ezd to i64             ; 2 uses
  %i.ezg = ptrtoint ptr %i.eze to i64             ; 2 uses
  %i.ezh = sub i64 %i.ezf, %i.ezg
  %i.ezi = icmp slt i64 %i.ezh, 48
  br i1 %i.ezi, label %bb.asf, label %bb.asr

bb.asf:                                           ; preds = %bb.ase
  %i.ezj = load ptr, ptr %i.n, align 8, !tbaa !59 ; 5 uses
  %i.ezk = ptrtoint ptr %i.ezj to i64             ; 2 uses
  %i.ezl = sub i64 %i.ezf, %i.ezk                 ; 3 uses
  %i.ezm = sdiv exact i64 %i.ezl, 48              ; 4 uses
  %i.ezn = icmp eq ptr %i.ezj, %i.bk              ; 2 uses
  br i1 %i.ezn, label %bb.asg, label %bb.asj

bb.asg:                                           ; preds = %bb.asf
  %i.ezo = load ptr, ptr %5, align 8, !tbaa !36
  %i.ezp = icmp eq ptr %i.ezo, null
  br i1 %i.ezp, label %bb.ash, label %bb.asj

bb.ash:                                           ; preds = %bb.asg
  %i.ezq = shl i64 %i.ezl, 1
  %i.ezr = call noalias ptr @malloc(i64 noundef %i.ezq) #22 ; 3 uses
  %i.ezs = icmp eq ptr %i.ezr, null
  br i1 %i.ezs, label %.loopexit3592, label %bb.asi

bb.asi:                                           ; preds = %bb.ash
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ezr, ptr noundef nonnull align 1 %i.ezj, i64 noundef %i.ezl, i1 noundef false) #21
  %i.ezt = shl nsw i64 %i.ezm, 1
  br label %stack_double.exit3247

bb.asj:                                           ; preds = %bb.asg, %bb.asf
  %i.ezu = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !7 ; 3 uses
  %i.ezv = shl nsw i64 %i.ezm, 1                  ; 3 uses
  %.not.i3242 = icmp eq i32 %i.ezu, 0
  br i1 %.not.i3242, label %bb.asm, label %bb.ask

bb.ask:                                           ; preds = %bb.asj
  %i.ezw = zext i32 %i.ezu to i64                 ; 2 uses
  %i.ezx = icmp ugt i64 %i.ezv, %i.ezw
  br i1 %i.ezx, label %bb.asl, label %bb.asm

bb.asl:                                           ; preds = %bb.ask
  %i.ezy = trunc i64 %i.ezm to i32
  %i.ezz = icmp eq i32 %i.ezu, %i.ezy
  br i1 %i.ezz, label %.loopexit3592, label %bb.asm

bb.asm:                                           ; preds = %bb.asl, %bb.ask, %bb.asj
  %.050.i3243 = phi i64 [ %i.ezv, %bb.asj ], [ %i.ezv, %bb.ask ], [ %i.ezw, %bb.asl ] ; 2 uses
  %i.faa = mul i64 %.050.i3243, 48
  %i.fab = call ptr @realloc(ptr noundef %i.ezj, i64 noundef %i.faa) #23 ; 2 uses
  %i.fac = icmp eq ptr %i.fab, null
  br i1 %i.fac, label %bb.asn, label %stack_double.exit3247

bb.asn:                                           ; preds = %bb.asm
  br i1 %i.ezn, label %.loopexit3592, label %bb.aso

bb.aso:                                           ; preds = %bb.asn
  store ptr %i.ezj, ptr %5, align 8, !tbaa !36
  %i.fad = getelementptr i8, ptr %5, i64 8
  store i64 %i.ezm, ptr %i.fad, align 8, !tbaa !61
  br label %.loopexit3592

stack_double.exit3247:                            ; preds = %bb.asi, %bb.asm
  %.153.i3244 = phi ptr [ %i.ezr, %bb.asi ], [ %i.fab, %bb.asm ] ; 3 uses
  %.2.i3245 = phi i64 [ %i.ezt, %bb.asi ], [ %.050.i3243, %bb.asm ]
  %i.fae = sub i64 %i.ezg, %i.ezk
  %i.faf = getelementptr i8, ptr %.153.i3244, i64 %i.fae ; 2 uses
  store ptr %i.faf, ptr %i.o, align 8, !tbaa !59
  store ptr %.153.i3244, ptr %i.n, align 8, !tbaa !59
  %i.fag = getelementptr [48 x i8], ptr %.153.i3244, i64 %.2.i3245
  store ptr %i.fag, ptr %i.p, align 8, !tbaa !59
  br label %bb.asr

.loopexit3592:                                    ; preds = %bb.ash, %bb.asl, %bb.aso, %bb.asn
  %.1.i3246.ph = phi i64 [ -5, %bb.asn ], [ -5, %bb.aso ], [ -5, %bb.ash ], [ -15, %bb.asl ]
  %i.fah = load ptr, ptr %i.n, align 8, !tbaa !59 ; 3 uses
  %.not2562 = icmp eq ptr %i.fah, %i.bk
  br i1 %.not2562, label %bb.asq, label %bb.asp

bb.asp:                                           ; preds = %.loopexit3592
  store ptr %i.fah, ptr %5, align 8, !tbaa !36
  %i.fai = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.faj = ptrtoint ptr %i.fai to i64
  %i.fak = ptrtoint ptr %i.fah to i64
  %i.fal = sub i64 %i.faj, %i.fak
  %i.fam = sdiv exact i64 %i.fal, 48
  %i.fan = getelementptr i8, ptr %5, i64 8
  store i64 %i.fam, ptr %i.fan, align 8, !tbaa !61
  br label %bb.asq

bb.asq:                                           ; preds = %.loopexit3592, %bb.asp
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3615

bb.asr:                                           ; preds = %stack_double.exit3247, %bb.ase
  %i.fao = phi ptr [ %i.faf, %stack_double.exit3247 ], [ %i.eze, %bb.ase ] ; 5 uses
  store i32 3, ptr %i.fao, align 8, !tbaa !63
  %i.fap = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.faq = icmp eq ptr %i.fao, %i.fap
  br i1 %i.faq, label %bb.ast, label %bb.ass

bb.ass:                                           ; preds = %bb.asr
  %i.far = getelementptr i8, ptr %i.fao, i64 -40
  %i.fas = load i64, ptr %i.far, align 8, !tbaa !65
  br label %bb.ast

bb.ast:                                           ; preds = %bb.asr, %bb.ass
  %i.fat = phi i64 [ %i.fas, %bb.ass ], [ 0, %bb.asr ]
  %i.fau = getelementptr i8, ptr %i.fao, i64 8
  store i64 %i.fat, ptr %i.fau, align 8, !tbaa !65
  %i.fav = sext i32 %i.ezb to i64
  %i.faw = getelementptr i8, ptr %i.ezc, i64 %i.fav
  %i.fax = getelementptr i8, ptr %i.fao, i64 16
  store ptr %i.faw, ptr %i.fax, align 8, !tbaa !66
  %i.fay = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.faz = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.fba = getelementptr i8, ptr %i.faz, i64 24
  store ptr %i.fay, ptr %i.fba, align 8, !tbaa !66
  %i.fbb = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.fbc = getelementptr i8, ptr %i.fbb, i64 32
  store ptr %.19, ptr %i.fbc, align 8, !tbaa !66
  %i.fbd = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.fbe = getelementptr i8, ptr %i.fbd, i64 40
  store ptr %.02225, ptr %i.fbe, align 8, !tbaa !66
  %i.fbf = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.fbg = getelementptr i8, ptr %i.fbf, i64 48
  store ptr %i.fbg, ptr %i.o, align 8, !tbaa !59
  %i.fbh = getelementptr i8, ptr %.25, i64 5
  br label %.backedge.backedge

memoize_extended_match_cache_point.exit3249:      ; preds = %bb.asz, %bb.atb, %bb.atc, %bb.asw, %bb.asu, %.backedge
  %i.fbi = load ptr, ptr %i.o, align 8, !tbaa !59 ; 10 uses
  %i.fbj = getelementptr i8, ptr %i.fbi, i64 -48  ; 4 uses
  store ptr %i.fbj, ptr %i.o, align 8, !tbaa !59
  %i.fbk = load i32, ptr %i.fbj, align 8, !tbaa !63 ; 4 uses
  switch i32 %i.fbk, label %bb.asx [
    i32 3, label %is_mbc_newline_ex.exit.thread
    i32 256, label %bb.asu
    i32 768, label %bb.asv
    i32 33280, label %bb.asw
  ]

bb.asu:                                           ; preds = %memoize_extended_match_cache_point.exit3249
  %i.fbl = getelementptr i8, ptr %i.fbi, i64 -32
  %i.fbm = getelementptr i8, ptr %i.fbi, i64 -16
  %i.fbn = load i64, ptr %i.fbm, align 8, !tbaa !66
  %i.fbo = load i32, ptr %i.fbl, align 8, !tbaa !66
  %i.fbp = sext i32 %i.fbo to i64
  %i.fbq = getelementptr [8 x i8], ptr %i.bq, i64 %i.fbp
  store i64 %i.fbn, ptr %i.fbq, align 8, !tbaa !20
  %i.fbr = getelementptr i8, ptr %i.fbi, i64 -32
  %i.fbs = getelementptr i8, ptr %i.fbi, i64 -8
  %i.fbt = load i64, ptr %i.fbs, align 8, !tbaa !66
  %i.fbu = load i32, ptr %i.fbr, align 8, !tbaa !66
  %i.fbv = sext i32 %i.fbu to i64
  %i.fbw = getelementptr [8 x i8], ptr %i.bt, i64 %i.fbv
  store i64 %i.fbt, ptr %i.fbw, align 8, !tbaa !20
  br label %memoize_extended_match_cache_point.exit3249

bb.asv:                                           ; preds = %memoize_extended_match_cache_point.exit3249
  %i.fbx = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.fby = getelementptr i8, ptr %i.fbi, i64 -32
  %i.fbz = load i64, ptr %i.fby, align 8, !tbaa !66
  %i.fca = getelementptr [48 x i8], ptr %i.fbx, i64 %i.fbz
  %i.fcb = getelementptr i8, ptr %i.fca, i64 16   ; 2 uses
  %i.fcc = load i32, ptr %i.fcb, align 8, !tbaa !66
  %i.fcd = add i32 %i.fcc, -1
  store i32 %i.fcd, ptr %i.fcb, align 8, !tbaa !66
  %.pre4518 = load ptr, ptr %i.o, align 8, !tbaa !59 ; 2 uses
  %.pre4519 = load i32, ptr %.pre4518, align 8, !tbaa !63
  br label %bb.asz

bb.asw:                                           ; preds = %memoize_extended_match_cache_point.exit3249
  %i.fce = getelementptr i8, ptr %i.fbi, i64 -32
  %i.fcf = getelementptr i8, ptr %i.fbi, i64 -16
  %i.fcg = load i64, ptr %i.fcf, align 8, !tbaa !66
  %i.fch = load i32, ptr %i.fce, align 8, !tbaa !66
  %i.fci = sext i32 %i.fch to i64
  %i.fcj = getelementptr [8 x i8], ptr %i.bq, i64 %i.fci
  store i64 %i.fcg, ptr %i.fcj, align 8, !tbaa !20
  %i.fck = getelementptr i8, ptr %i.fbi, i64 -32
  %i.fcl = getelementptr i8, ptr %i.fbi, i64 -8
  %i.fcm = load i64, ptr %i.fcl, align 8, !tbaa !66
  %i.fcn = load i32, ptr %i.fck, align 8, !tbaa !66
  %i.fco = sext i32 %i.fcn to i64
  %i.fcp = getelementptr [8 x i8], ptr %i.bt, i64 %i.fco
  store i64 %i.fcm, ptr %i.fcp, align 8, !tbaa !20
  br label %memoize_extended_match_cache_point.exit3249

bb.asx:                                           ; preds = %memoize_extended_match_cache_point.exit3249
  %i.fcq = and i32 %i.fbk, 4351
  %.not2560 = icmp eq i32 %i.fcq, 0
  br i1 %.not2560, label %bb.asz, label %bb.asy

bb.asy:                                           ; preds = %bb.asx
  %i.fcr = load i64, ptr %i.co, align 8, !tbaa !47
  %i.fcs = add i64 %i.fcr, 1
  store i64 %i.fcs, ptr %i.co, align 8, !tbaa !47
  br label %bb.asz

bb.asz:                                           ; preds = %bb.asv, %bb.asx, %bb.asy
  %i.fct = phi i32 [ %.pre4519, %bb.asv ], [ %i.fbk, %bb.asx ], [ %i.fbk, %bb.asy ]
  %i.fcu = phi ptr [ %.pre4518, %bb.asv ], [ %i.fbj, %bb.asx ], [ %i.fbj, %bb.asy ] ; 3 uses
  %i.fcv = icmp eq i32 %i.fct, 3328
  br i1 %i.fcv, label %bb.ata, label %memoize_extended_match_cache_point.exit3249

bb.ata:                                           ; preds = %bb.asz
  store i32 2560, ptr %i.fcu, align 8, !tbaa !63
  %i.fcw = load ptr, ptr %i.cn, align 8, !tbaa !55
  %i.fcx = getelementptr i8, ptr %i.fcu, i64 16
  %i.fcy = load i64, ptr %i.fcx, align 8, !tbaa !66
  %i.fcz = getelementptr i8, ptr %i.fcu, i64 24
  %i.fda = load i8, ptr %i.fcz, align 8, !tbaa !66 ; 3 uses
  %i.fdb = getelementptr i8, ptr %i.fcw, i64 %i.fcy ; 4 uses
  %i.fdc = load i8, ptr %i.fdb, align 1, !tbaa !66
  %i.fdd = or i8 %i.fdc, %i.fda                   ; 2 uses
  store i8 %i.fdd, ptr %i.fdb, align 1, !tbaa !66
  %.not.i3248 = icmp sgt i8 %i.fda, -1
  br i1 %.not.i3248, label %bb.atc, label %bb.atb

bb.atb:                                           ; preds = %bb.ata
  %i.fde = getelementptr i8, ptr %i.fdb, i64 1    ; 2 uses
  %i.fdf = load i8, ptr %i.fde, align 1, !tbaa !66
  %i.fdg = or i8 %i.fdf, 1
  store i8 %i.fdg, ptr %i.fde, align 1, !tbaa !66
  br label %memoize_extended_match_cache_point.exit3249

bb.atc:                                           ; preds = %bb.ata
  %i.fdh = shl nuw i8 %i.fda, 1
  %i.fdi = or i8 %i.fdd, %i.fdh
  store i8 %i.fdi, ptr %i.fdb, align 1, !tbaa !66
  br label %memoize_extended_match_cache_point.exit3249

bb.atd:                                           ; preds = %.backedge
  %i.fdj = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.fdk = load ptr, ptr %i.o, align 8, !tbaa !59 ; 2 uses
  %i.fdl = ptrtoint ptr %i.fdj to i64             ; 2 uses
  %i.fdm = ptrtoint ptr %i.fdk to i64             ; 2 uses
  %i.fdn = sub i64 %i.fdl, %i.fdm
  %i.fdo = icmp slt i64 %i.fdn, 48
  br i1 %i.fdo, label %bb.ate, label %bb.atq

bb.ate:                                           ; preds = %bb.atd
  %i.fdp = load ptr, ptr %i.n, align 8, !tbaa !59 ; 5 uses
  %i.fdq = ptrtoint ptr %i.fdp to i64             ; 2 uses
  %i.fdr = sub i64 %i.fdl, %i.fdq                 ; 3 uses
  %i.fds = sdiv exact i64 %i.fdr, 48              ; 4 uses
  %i.fdt = icmp eq ptr %i.fdp, %i.bk              ; 2 uses
  br i1 %i.fdt, label %bb.atf, label %bb.ati

bb.atf:                                           ; preds = %bb.ate
  %i.fdu = load ptr, ptr %5, align 8, !tbaa !36
  %i.fdv = icmp eq ptr %i.fdu, null
  br i1 %i.fdv, label %bb.atg, label %bb.ati

bb.atg:                                           ; preds = %bb.atf
  %i.fdw = shl i64 %i.fdr, 1
  %i.fdx = call noalias ptr @malloc(i64 noundef %i.fdw) #22 ; 3 uses
  %i.fdy = icmp eq ptr %i.fdx, null
  br i1 %i.fdy, label %.loopexit3591, label %bb.ath

bb.ath:                                           ; preds = %bb.atg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.fdx, ptr noundef nonnull align 1 %i.fdp, i64 noundef %i.fdr, i1 noundef false) #21
  %i.fdz = shl nsw i64 %i.fds, 1
  br label %stack_double.exit3255

bb.ati:                                           ; preds = %bb.atf, %bb.ate
  %i.fea = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !7 ; 3 uses
  %i.feb = shl nsw i64 %i.fds, 1                  ; 3 uses
  %.not.i3250 = icmp eq i32 %i.fea, 0
  br i1 %.not.i3250, label %bb.atl, label %bb.atj

bb.atj:                                           ; preds = %bb.ati
  %i.fec = zext i32 %i.fea to i64                 ; 2 uses
  %i.fed = icmp ugt i64 %i.feb, %i.fec
  br i1 %i.fed, label %bb.atk, label %bb.atl

bb.atk:                                           ; preds = %bb.atj
  %i.fee = trunc i64 %i.fds to i32
  %i.fef = icmp eq i32 %i.fea, %i.fee
  br i1 %i.fef, label %.loopexit3591, label %bb.atl

bb.atl:                                           ; preds = %bb.atk, %bb.atj, %bb.ati
  %.050.i3251 = phi i64 [ %i.feb, %bb.ati ], [ %i.feb, %bb.atj ], [ %i.fec, %bb.atk ] ; 2 uses
  %i.feg = mul i64 %.050.i3251, 48
  %i.feh = call ptr @realloc(ptr noundef %i.fdp, i64 noundef %i.feg) #23 ; 2 uses
  %i.fei = icmp eq ptr %i.feh, null
  br i1 %i.fei, label %bb.atm, label %stack_double.exit3255

bb.atm:                                           ; preds = %bb.atl
  br i1 %i.fdt, label %.loopexit3591, label %bb.atn

bb.atn:                                           ; preds = %bb.atm
  store ptr %i.fdp, ptr %5, align 8, !tbaa !36
  %i.fej = getelementptr i8, ptr %5, i64 8
  store i64 %i.fds, ptr %i.fej, align 8, !tbaa !61
  br label %.loopexit3591

stack_double.exit3255:                            ; preds = %bb.ath, %bb.atl
  %.153.i3252 = phi ptr [ %i.fdx, %bb.ath ], [ %i.feh, %bb.atl ] ; 3 uses
  %.2.i3253 = phi i64 [ %i.fdz, %bb.ath ], [ %.050.i3251, %bb.atl ]
  %i.fek = sub i64 %i.fdm, %i.fdq
  %i.fel = getelementptr i8, ptr %.153.i3252, i64 %i.fek
  store ptr %.153.i3252, ptr %i.n, align 8, !tbaa !59
  %i.fem = getelementptr [48 x i8], ptr %.153.i3252, i64 %.2.i3253
  store ptr %i.fem, ptr %i.p, align 8, !tbaa !59
  br label %bb.atq

.loopexit3591:                                    ; preds = %bb.atg, %bb.atk, %bb.atn, %bb.atm
  %.1.i3254.ph = phi i64 [ -5, %bb.atm ], [ -5, %bb.atn ], [ -5, %bb.atg ], [ -15, %bb.atk ]
  %i.fen = load ptr, ptr %i.n, align 8, !tbaa !59 ; 3 uses
  %.not2559 = icmp eq ptr %i.fen, %i.bk
  br i1 %.not2559, label %bb.atp, label %bb.ato

bb.ato:                                           ; preds = %.loopexit3591
  store ptr %i.fen, ptr %5, align 8, !tbaa !36
  %i.feo = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.fep = ptrtoint ptr %i.feo to i64
  %i.feq = ptrtoint ptr %i.fen to i64
  %i.fer = sub i64 %i.fep, %i.feq
  %i.fes = sdiv exact i64 %i.fer, 48
  %i.fet = getelementptr i8, ptr %5, i64 8
  store i64 %i.fes, ptr %i.fet, align 8, !tbaa !61
  br label %bb.atp

bb.atp:                                           ; preds = %.loopexit3591, %bb.ato
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3615

bb.atq:                                           ; preds = %stack_double.exit3255, %bb.atd
  %i.feu = phi ptr [ %i.fel, %stack_double.exit3255 ], [ %i.fdk, %bb.atd ] ; 5 uses
end_hunk_0
begin_hunk_1_@match_at:bb.a
  %i.ffe = getelementptr i8, ptr %.02238, i64 -48 ; 4 uses
  %i.fff = load i32, ptr %i.ffe, align 8, !tbaa !63 ; 2 uses
  %i.ffg = and i32 %i.fff, 4351
  %.not2557 = icmp eq i32 %i.ffg, 0
  br i1 %.not2557, label %bb.atw, label %bb.atv

bb.atv:                                           ; preds = %bb.atu
  %i.ffh = load i64, ptr %i.co, align 8, !tbaa !47
  %i.ffi = add i64 %i.ffh, 1
  store i64 %i.ffi, ptr %i.co, align 8, !tbaa !47
  br label %.sink.split5611

bb.atw:                                           ; preds = %bb.atu
  switch i32 %i.fff, label %.backedge6056 [
    i32 1536, label %bb.atx
    i32 3328, label %.sink.split5611
  ]

bb.atx:                                           ; preds = %bb.atw
  store i32 2560, ptr %i.ffe, align 8, !tbaa !63
  %i.ffj = getelementptr i8, ptr %.25, i64 1
  br label %.backedge.backedge

.sink.split5611:                                  ; preds = %bb.atw, %bb.atv
  %.sink5612 = phi i32 [ 2560, %bb.atv ], [ 3584, %bb.atw ]
  store i32 %.sink5612, ptr %i.ffe, align 8, !tbaa !63
  br label %.backedge6056

.backedge6056:                                    ; preds = %.sink.split5611, %bb.atw
  br label %bb.atu

bb.aty:                                           ; preds = %.backedge
  %i.ffk = load i32, ptr %.25, align 4, !tbaa !7
  %i.ffl = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.ffm = call ptr @onigenc_step_back(ptr noundef %i.af, ptr noundef %1, ptr noundef %i.ffl, ptr noundef %.3, i32 noundef %i.ffk) #21 ; 3 uses
  store ptr %i.ffm, ptr %i.m, align 8, !tbaa !19
  %i.ffn = icmp eq ptr %i.ffm, null
  br i1 %i.ffn, label %is_mbc_newline_ex.exit.thread, label %bb.atz

bb.atz:                                           ; preds = %bb.aty
  %i.ffo = getelementptr i8, ptr %.25, i64 4
  %i.ffp = call ptr @onigenc_get_prev_char_head(ptr noundef %i.af, ptr noundef %1, ptr noundef nonnull %i.ffm, ptr noundef %.3) #21
  %i.ffq = getelementptr i8, ptr %.25, i64 5
  br label %.backedge.backedge

bb.aua:                                           ; preds = %.backedge
  %i.ffr = load i32, ptr %.25, align 4, !tbaa !7  ; 2 uses
  %i.ffs = getelementptr i8, ptr %.25, i64 4
  %i.fft = load i32, ptr %i.ffs, align 4, !tbaa !7
  %i.ffu = getelementptr i8, ptr %.25, i64 8      ; 3 uses
  %i.ffv = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.ffw = call ptr @onigenc_step_back(ptr noundef %i.af, ptr noundef %1, ptr noundef %i.ffv, ptr noundef %.3, i32 noundef %i.fft) #21 ; 3 uses
  %i.ffx = icmp eq ptr %i.ffw, null
  br i1 %i.ffx, label %bb.aub, label %bb.auc

bb.aub:                                           ; preds = %bb.aua
  %i.ffy = sext i32 %i.ffr to i64
  %i.ffz = getelementptr i8, ptr %i.ffu, i64 %i.ffy
  br label %bb.aus

bb.auc:                                           ; preds = %bb.aua
  %i.fga = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.fgb = load ptr, ptr %i.o, align 8, !tbaa !59 ; 2 uses
  %i.fgc = ptrtoint ptr %i.fga to i64             ; 2 uses
  %i.fgd = ptrtoint ptr %i.fgb to i64             ; 2 uses
  %i.fge = sub i64 %i.fgc, %i.fgd
  %i.fgf = icmp slt i64 %i.fge, 48
  %.pre4517 = load ptr, ptr %i.n, align 8, !tbaa !59 ; 6 uses
  br i1 %i.fgf, label %bb.aud, label %bb.aup

bb.aud:                                           ; preds = %bb.auc
  %i.fgg = ptrtoint ptr %.pre4517 to i64          ; 2 uses
  %i.fgh = sub i64 %i.fgc, %i.fgg                 ; 3 uses
  %i.fgi = sdiv exact i64 %i.fgh, 48              ; 4 uses
  %i.fgj = icmp eq ptr %.pre4517, %i.bk           ; 2 uses
  br i1 %i.fgj, label %bb.aue, label %bb.auh

bb.aue:                                           ; preds = %bb.aud
  %i.fgk = load ptr, ptr %5, align 8, !tbaa !36
  %i.fgl = icmp eq ptr %i.fgk, null
  br i1 %i.fgl, label %bb.auf, label %bb.auh

bb.auf:                                           ; preds = %bb.aue
  %i.fgm = shl i64 %i.fgh, 1
  %i.fgn = call noalias ptr @malloc(i64 noundef %i.fgm) #22 ; 3 uses
  %i.fgo = icmp eq ptr %i.fgn, null
  br i1 %i.fgo, label %.loopexit3590, label %bb.aug

bb.aug:                                           ; preds = %bb.auf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.fgn, ptr noundef nonnull align 1 %.pre4517, i64 noundef %i.fgh, i1 noundef false) #21
  %i.fgp = shl nsw i64 %i.fgi, 1
  br label %stack_double.exit3261

bb.auh:                                           ; preds = %bb.aue, %bb.aud
  %i.fgq = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !7 ; 3 uses
  %i.fgr = shl nsw i64 %i.fgi, 1                  ; 3 uses
  %.not.i3256 = icmp eq i32 %i.fgq, 0
  br i1 %.not.i3256, label %bb.auk, label %bb.aui

bb.aui:                                           ; preds = %bb.auh
  %i.fgs = zext i32 %i.fgq to i64                 ; 2 uses
  %i.fgt = icmp ugt i64 %i.fgr, %i.fgs
  br i1 %i.fgt, label %bb.auj, label %bb.auk

bb.auj:                                           ; preds = %bb.aui
  %i.fgu = trunc i64 %i.fgi to i32
  %i.fgv = icmp eq i32 %i.fgq, %i.fgu
  br i1 %i.fgv, label %.loopexit3590, label %bb.auk

bb.auk:                                           ; preds = %bb.auj, %bb.aui, %bb.auh
  %.050.i3257 = phi i64 [ %i.fgr, %bb.auh ], [ %i.fgr, %bb.aui ], [ %i.fgs, %bb.auj ] ; 2 uses
  %i.fgw = mul i64 %.050.i3257, 48
  %i.fgx = call ptr @realloc(ptr noundef %.pre4517, i64 noundef %i.fgw) #23 ; 2 uses
  %i.fgy = icmp eq ptr %i.fgx, null
  br i1 %i.fgy, label %bb.aul, label %stack_double.exit3261

bb.aul:                                           ; preds = %bb.auk
  br i1 %i.fgj, label %.loopexit3590, label %bb.aum

bb.aum:                                           ; preds = %bb.aul
  store ptr %.pre4517, ptr %5, align 8, !tbaa !36
  %i.fgz = getelementptr i8, ptr %5, i64 8
  store i64 %i.fgi, ptr %i.fgz, align 8, !tbaa !61
  br label %.loopexit3590

stack_double.exit3261:                            ; preds = %bb.aug, %bb.auk
  %.153.i3258 = phi ptr [ %i.fgn, %bb.aug ], [ %i.fgx, %bb.auk ] ; 4 uses
  %.2.i3259 = phi i64 [ %i.fgp, %bb.aug ], [ %.050.i3257, %bb.auk ]
  %i.fha = sub i64 %i.fgd, %i.fgg
  %i.fhb = getelementptr i8, ptr %.153.i3258, i64 %i.fha ; 2 uses
  store ptr %i.fhb, ptr %i.o, align 8, !tbaa !59
  store ptr %.153.i3258, ptr %i.n, align 8, !tbaa !59
  %i.fhc = getelementptr [48 x i8], ptr %.153.i3258, i64 %.2.i3259
  store ptr %i.fhc, ptr %i.p, align 8, !tbaa !59
  br label %bb.aup

.loopexit3590:                                    ; preds = %bb.auf, %bb.auj, %bb.aum, %bb.aul
  %.1.i3260.ph = phi i64 [ -5, %bb.aul ], [ -5, %bb.aum ], [ -5, %bb.auf ], [ -15, %bb.auj ]
  %i.fhd = load ptr, ptr %i.n, align 8, !tbaa !59 ; 3 uses
  %.not2556 = icmp eq ptr %i.fhd, %i.bk
  br i1 %.not2556, label %bb.auo, label %bb.aun

bb.aun:                                           ; preds = %.loopexit3590
  store ptr %i.fhd, ptr %5, align 8, !tbaa !36
  %i.fhe = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.fhf = ptrtoint ptr %i.fhe to i64
  %i.fhg = ptrtoint ptr %i.fhd to i64
  %i.fhh = sub i64 %i.fhf, %i.fhg
  %i.fhi = sdiv exact i64 %i.fhh, 48
  %i.fhj = getelementptr i8, ptr %5, i64 8
  store i64 %i.fhi, ptr %i.fhj, align 8, !tbaa !61
  br label %bb.auo

bb.auo:                                           ; preds = %.loopexit3590, %bb.aun
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3615

bb.aup:                                           ; preds = %stack_double.exit3261, %bb.auc
  %i.fhk = phi ptr [ %.153.i3258, %stack_double.exit3261 ], [ %.pre4517, %bb.auc ]
  %i.fhl = phi ptr [ %i.fhb, %stack_double.exit3261 ], [ %i.fgb, %bb.auc ] ; 5 uses
  store i32 2, ptr %i.fhl, align 8, !tbaa !63
  %i.fhm = icmp eq ptr %i.fhl, %i.fhk
  br i1 %i.fhm, label %bb.aur, label %bb.auq

bb.auq:                                           ; preds = %bb.aup
  %i.fhn = getelementptr i8, ptr %i.fhl, i64 -40
  %i.fho = load i64, ptr %i.fhn, align 8, !tbaa !65
  br label %bb.aur

bb.aur:                                           ; preds = %bb.aup, %bb.auq
  %i.fhp = phi i64 [ %i.fho, %bb.auq ], [ 0, %bb.aup ]
  %i.fhq = getelementptr i8, ptr %i.fhl, i64 8
  store i64 %i.fhp, ptr %i.fhq, align 8, !tbaa !65
  %i.fhr = sext i32 %i.ffr to i64
  %i.fhs = getelementptr i8, ptr %i.ffu, i64 %i.fhr
  %i.fht = getelementptr i8, ptr %i.fhl, i64 16
  store ptr %i.fhs, ptr %i.fht, align 8, !tbaa !66
  %i.fhu = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.fhv = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.fhw = getelementptr i8, ptr %i.fhv, i64 24
  store ptr %i.fhu, ptr %i.fhw, align 8, !tbaa !66
  %i.fhx = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.fhy = getelementptr i8, ptr %i.fhx, i64 32
  store ptr %.19, ptr %i.fhy, align 8, !tbaa !66
  %i.fhz = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.fia = getelementptr i8, ptr %i.fhz, i64 40
  store ptr %.02225, ptr %i.fia, align 8, !tbaa !66
  %i.fib = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.fic = getelementptr i8, ptr %i.fib, i64 48
  store ptr %i.fic, ptr %i.o, align 8, !tbaa !59
  store ptr %i.ffw, ptr %i.m, align 8, !tbaa !19
  %i.fid = call ptr @onigenc_get_prev_char_head(ptr noundef %i.af, ptr noundef %1, ptr noundef nonnull %i.ffw, ptr noundef %.3) #21
  br label %bb.aus

bb.aus:                                           ; preds = %bb.aur, %bb.aub
  %.22 = phi ptr [ %i.ffz, %bb.aub ], [ %i.ffu, %bb.aur ] ; 2 uses
  %.18 = phi ptr [ %.19, %bb.aub ], [ %i.fid, %bb.aur ]
  %i.fie = getelementptr i8, ptr %.22, i64 1
  br label %.backedge.backedge

bb.aut:                                           ; preds = %bb.auv, %bb.auw, %bb.auu, %bb.aut, %.backedge
  %i.fif = load ptr, ptr %i.o, align 8, !tbaa !59 ; 10 uses
  %i.fig = getelementptr i8, ptr %i.fif, i64 -48  ; 2 uses
  store ptr %i.fig, ptr %i.o, align 8, !tbaa !59
  %i.fih = load i32, ptr %i.fig, align 8, !tbaa !63
  switch i32 %i.fih, label %bb.aut [
    i32 2, label %is_mbc_newline_ex.exit.thread
    i32 256, label %bb.auu
    i32 768, label %bb.auv
    i32 33280, label %bb.auw
  ]

bb.auu:                                           ; preds = %bb.aut
  %i.fii = getelementptr i8, ptr %i.fif, i64 -32
  %i.fij = getelementptr i8, ptr %i.fif, i64 -16
  %i.fik = load i64, ptr %i.fij, align 8, !tbaa !66
  %i.fil = load i32, ptr %i.fii, align 8, !tbaa !66
  %i.fim = sext i32 %i.fil to i64
  %i.fin = getelementptr [8 x i8], ptr %i.bq, i64 %i.fim
  store i64 %i.fik, ptr %i.fin, align 8, !tbaa !20
  %i.fio = getelementptr i8, ptr %i.fif, i64 -32
  %i.fip = getelementptr i8, ptr %i.fif, i64 -8
  %i.fiq = load i64, ptr %i.fip, align 8, !tbaa !66
  %i.fir = load i32, ptr %i.fio, align 8, !tbaa !66
  %i.fis = sext i32 %i.fir to i64
  %i.fit = getelementptr [8 x i8], ptr %i.bt, i64 %i.fis
  store i64 %i.fiq, ptr %i.fit, align 8, !tbaa !20
  br label %bb.aut

bb.auv:                                           ; preds = %bb.aut
  %i.fiu = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.fiv = getelementptr i8, ptr %i.fif, i64 -32
  %i.fiw = load i64, ptr %i.fiv, align 8, !tbaa !66
  %i.fix = getelementptr [48 x i8], ptr %i.fiu, i64 %i.fiw
  %i.fiy = getelementptr i8, ptr %i.fix, i64 16   ; 2 uses
  %i.fiz = load i32, ptr %i.fiy, align 8, !tbaa !66
  %i.fja = add i32 %i.fiz, -1
  store i32 %i.fja, ptr %i.fiy, align 8, !tbaa !66
  br label %bb.aut

bb.auw:                                           ; preds = %bb.aut
  %i.fjb = getelementptr i8, ptr %i.fif, i64 -32
  %i.fjc = getelementptr i8, ptr %i.fif, i64 -16
  %i.fjd = load i64, ptr %i.fjc, align 8, !tbaa !66
  %i.fje = load i32, ptr %i.fjb, align 8, !tbaa !66
  %i.fjf = sext i32 %i.fje to i64
  %i.fjg = getelementptr [8 x i8], ptr %i.bq, i64 %i.fjf
  store i64 %i.fjd, ptr %i.fjg, align 8, !tbaa !20
  %i.fjh = getelementptr i8, ptr %i.fif, i64 -32
  %i.fji = getelementptr i8, ptr %i.fif, i64 -8
  %i.fjj = load i64, ptr %i.fji, align 8, !tbaa !66
  %i.fjk = load i32, ptr %i.fjh, align 8, !tbaa !66
  %i.fjl = sext i32 %i.fjk to i64
  %i.fjm = getelementptr [8 x i8], ptr %i.bt, i64 %i.fjl
  store i64 %i.fjj, ptr %i.fjm, align 8, !tbaa !20
  br label %bb.aut

bb.aux:                                           ; preds = %.backedge
  %i.fjn = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.fjo = load ptr, ptr %i.o, align 8, !tbaa !59 ; 2 uses
  %i.fjp = ptrtoint ptr %i.fjn to i64             ; 2 uses
  %i.fjq = ptrtoint ptr %i.fjo to i64             ; 2 uses
  %i.fjr = sub i64 %i.fjp, %i.fjq
  %i.fjs = icmp slt i64 %i.fjr, 48
  br i1 %i.fjs, label %bb.auy, label %bb.avk

bb.auy:                                           ; preds = %bb.aux
  %i.fjt = load ptr, ptr %i.n, align 8, !tbaa !59 ; 5 uses
  %i.fju = ptrtoint ptr %i.fjt to i64             ; 2 uses
  %i.fjv = sub i64 %i.fjp, %i.fju                 ; 3 uses
  %i.fjw = sdiv exact i64 %i.fjv, 48              ; 4 uses
  %i.fjx = icmp eq ptr %i.fjt, %i.bk              ; 2 uses
  br i1 %i.fjx, label %bb.auz, label %bb.avc

bb.auz:                                           ; preds = %bb.auy
  %i.fjy = load ptr, ptr %5, align 8, !tbaa !36
  %i.fjz = icmp eq ptr %i.fjy, null
  br i1 %i.fjz, label %bb.ava, label %bb.avc

bb.ava:                                           ; preds = %bb.auz
  %i.fka = shl i64 %i.fjv, 1
  %i.fkb = call noalias ptr @malloc(i64 noundef %i.fka) #22 ; 3 uses
  %i.fkc = icmp eq ptr %i.fkb, null
  br i1 %i.fkc, label %.loopexit3589, label %bb.avb

bb.avb:                                           ; preds = %bb.ava
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.fkb, ptr noundef nonnull align 1 %i.fjt, i64 noundef %i.fjv, i1 noundef false) #21
  %i.fkd = shl nsw i64 %i.fjw, 1
  br label %stack_double.exit3267

bb.avc:                                           ; preds = %bb.auz, %bb.auy
  %i.fke = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !7 ; 3 uses
  %i.fkf = shl nsw i64 %i.fjw, 1                  ; 3 uses
  %.not.i3262 = icmp eq i32 %i.fke, 0
  br i1 %.not.i3262, label %bb.avf, label %bb.avd

bb.avd:                                           ; preds = %bb.avc
  %i.fkg = zext i32 %i.fke to i64                 ; 2 uses
  %i.fkh = icmp ugt i64 %i.fkf, %i.fkg
  br i1 %i.fkh, label %bb.ave, label %bb.avf

bb.ave:                                           ; preds = %bb.avd
  %i.fki = trunc i64 %i.fjw to i32
  %i.fkj = icmp eq i32 %i.fke, %i.fki
  br i1 %i.fkj, label %.loopexit3589, label %bb.avf

bb.avf:                                           ; preds = %bb.ave, %bb.avd, %bb.avc
  %.050.i3263 = phi i64 [ %i.fkf, %bb.avc ], [ %i.fkf, %bb.avd ], [ %i.fkg, %bb.ave ] ; 2 uses
  %i.fkk = mul i64 %.050.i3263, 48
  %i.fkl = call ptr @realloc(ptr noundef %i.fjt, i64 noundef %i.fkk) #23 ; 2 uses
  %i.fkm = icmp eq ptr %i.fkl, null
  br i1 %i.fkm, label %bb.avg, label %stack_double.exit3267

bb.avg:                                           ; preds = %bb.avf
  br i1 %i.fjx, label %.loopexit3589, label %bb.avh

bb.avh:                                           ; preds = %bb.avg
  store ptr %i.fjt, ptr %5, align 8, !tbaa !36
  %i.fkn = getelementptr i8, ptr %5, i64 8
  store i64 %i.fjw, ptr %i.fkn, align 8, !tbaa !61
  br label %.loopexit3589

stack_double.exit3267:                            ; preds = %bb.avb, %bb.avf
  %.153.i3264 = phi ptr [ %i.fkb, %bb.avb ], [ %i.fkl, %bb.avf ] ; 3 uses
  %.2.i3265 = phi i64 [ %i.fkd, %bb.avb ], [ %.050.i3263, %bb.avf ]
  %i.fko = sub i64 %i.fjq, %i.fju
  %i.fkp = getelementptr i8, ptr %.153.i3264, i64 %i.fko ; 2 uses
  store ptr %i.fkp, ptr %i.o, align 8, !tbaa !59
  store ptr %.153.i3264, ptr %i.n, align 8, !tbaa !59
  %i.fkq = getelementptr [48 x i8], ptr %.153.i3264, i64 %.2.i3265
  store ptr %i.fkq, ptr %i.p, align 8, !tbaa !59
  br label %bb.avk

.loopexit3589:                                    ; preds = %bb.ava, %bb.ave, %bb.avh, %bb.avg
  %.1.i3266.ph = phi i64 [ -5, %bb.avg ], [ -5, %bb.avh ], [ -5, %bb.ava ], [ -15, %bb.ave ]
  %i.fkr = load ptr, ptr %i.n, align 8, !tbaa !59 ; 3 uses
  %.not2554 = icmp eq ptr %i.fkr, %i.bk
  br i1 %.not2554, label %bb.avj, label %bb.avi

bb.avi:                                           ; preds = %.loopexit3589
  store ptr %i.fkr, ptr %5, align 8, !tbaa !36
  %i.fks = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.fkt = ptrtoint ptr %i.fks to i64
  %i.fku = ptrtoint ptr %i.fkr to i64
  %i.fkv = sub i64 %i.fkt, %i.fku
  %i.fkw = sdiv exact i64 %i.fkv, 48
  %i.fkx = getelementptr i8, ptr %5, i64 8
  store i64 %i.fkw, ptr %i.fkx, align 8, !tbaa !61
  br label %bb.avj

bb.avj:                                           ; preds = %.loopexit3589, %bb.avi
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3615

bb.avk:                                           ; preds = %stack_double.exit3267, %bb.aux
  %i.fky = phi ptr [ %i.fkp, %stack_double.exit3267 ], [ %i.fjo, %bb.aux ] ; 5 uses
  store i32 2816, ptr %i.fky, align 8, !tbaa !63
  %i.fkz = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.fla = icmp eq ptr %i.fky, %i.fkz
  br i1 %i.fla, label %bb.avm, label %bb.avl

bb.avl:                                           ; preds = %bb.avk
  %i.flb = getelementptr i8, ptr %i.fky, i64 -40
  %i.flc = load i64, ptr %i.flb, align 8, !tbaa !65
  br label %bb.avm

bb.avm:                                           ; preds = %bb.avk, %bb.avl
  %i.fld = phi i64 [ %i.flc, %bb.avl ], [ 0, %bb.avk ]
  %i.fle = getelementptr i8, ptr %i.fky, i64 8
  store i64 %i.fld, ptr %i.fle, align 8, !tbaa !65
  %i.flf = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.flg = getelementptr i8, ptr %i.fky, i64 16
  store ptr %i.flf, ptr %i.flg, align 8, !tbaa !66
  %i.flh = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.fli = getelementptr i8, ptr %i.flh, i64 24
  store ptr %.3, ptr %i.fli, align 8, !tbaa !66
  %i.flj = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.flk = getelementptr i8, ptr %i.flj, i64 48
  store ptr %i.flk, ptr %i.o, align 8, !tbaa !59
  %i.fll = getelementptr i8, ptr %.25, i64 1
  br label %.backedge.backedge

bb.avn:                                           ; preds = %.backedge
  %i.flm = getelementptr i8, ptr %.25, i64 -1
  %i.fln = load ptr, ptr %i.o, align 8, !tbaa !59 ; 4 uses
  %i.flo = getelementptr i8, ptr %i.fln, i64 -48  ; 6 uses
  store ptr %i.flo, ptr %i.o, align 8, !tbaa !59
  %i.flp = getelementptr i8, ptr %i.fln, i64 -32
  %i.flq = load ptr, ptr %i.flp, align 8, !tbaa !66 ; 3 uses
  %i.flr = getelementptr i8, ptr %i.fln, i64 -24
  %i.fls = load ptr, ptr %i.flr, align 8, !tbaa !66 ; 14 uses
  %i.flt = load i32, ptr %.25, align 4, !tbaa !7  ; 3 uses
  %i.flu = getelementptr i8, ptr %.25, i64 4      ; 4 uses
  %i.flv = icmp ugt ptr %i.flq, %.3
  %i.flw = load ptr, ptr %i.m, align 8            ; 5 uses
  %i.flx = icmp ugt ptr %i.flw, %i.flq            ; 2 uses
  %or.cond2869 = select i1 %i.flv, i1 %i.flx, i1 false
  br i1 %or.cond2869, label %bb.avo, label %bb.awf

bb.avo:                                           ; preds = %bb.avn
  %i.fly = getelementptr i8, ptr %i.fln, i64 -96  ; 4 uses
end_hunk_1
begin_hunk_2_@match_at:bb.a
  %.050.i3287 = phi i64 [ %i.fwd, %bb.axw ], [ %i.fwd, %bb.axx ], [ %i.fwe, %bb.axy ] ; 2 uses
  %i.fwi = mul i64 %.050.i3287, 48
  %i.fwj = call ptr @realloc(ptr noundef %.pre4513, i64 noundef %i.fwi) #23 ; 2 uses
  %i.fwk = icmp eq ptr %i.fwj, null
  br i1 %i.fwk, label %bb.aya, label %stack_double.exit3291

bb.aya:                                           ; preds = %bb.axz
  br i1 %i.fvv, label %.loopexit3587, label %bb.ayb

bb.ayb:                                           ; preds = %bb.aya
  store ptr %.pre4513, ptr %5, align 8, !tbaa !36
  %i.fwl = getelementptr i8, ptr %5, i64 8
  store i64 %i.fvu, ptr %i.fwl, align 8, !tbaa !61
  br label %.loopexit3587

stack_double.exit3291:                            ; preds = %bb.axv, %bb.axz
  %.153.i3288 = phi ptr [ %i.fvz, %bb.axv ], [ %i.fwj, %bb.axz ] ; 4 uses
  %.2.i3289 = phi i64 [ %i.fwb, %bb.axv ], [ %.050.i3287, %bb.axz ]
  %i.fwm = sub i64 %i.fvp, %i.fvs
  %i.fwn = getelementptr i8, ptr %.153.i3288, i64 %i.fwm ; 2 uses
  store ptr %i.fwn, ptr %i.o, align 8, !tbaa !59
  store ptr %.153.i3288, ptr %i.n, align 8, !tbaa !59
  %i.fwo = getelementptr [48 x i8], ptr %.153.i3288, i64 %.2.i3289
  store ptr %i.fwo, ptr %i.p, align 8, !tbaa !59
  br label %bb.aye

.loopexit3587:                                    ; preds = %bb.axu, %bb.axy, %bb.ayb, %bb.aya
  %.1.i3290.ph = phi i64 [ -5, %bb.aya ], [ -5, %bb.ayb ], [ -5, %bb.axu ], [ -15, %bb.axy ]
  %i.fwp = load ptr, ptr %i.n, align 8, !tbaa !59 ; 3 uses
  %.not2547 = icmp eq ptr %i.fwp, %i.bk
  br i1 %.not2547, label %bb.ayd, label %bb.ayc

bb.ayc:                                           ; preds = %.loopexit3587
  store ptr %i.fwp, ptr %5, align 8, !tbaa !36
  %i.fwq = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.fwr = ptrtoint ptr %i.fwq to i64
  %i.fws = ptrtoint ptr %i.fwp to i64
  %i.fwt = sub i64 %i.fwr, %i.fws
  %i.fwu = sdiv exact i64 %i.fwt, 48
  %i.fwv = getelementptr i8, ptr %5, i64 8
  store i64 %i.fwu, ptr %i.fwv, align 8, !tbaa !61
  br label %bb.ayd

bb.ayd:                                           ; preds = %.loopexit3587, %bb.ayc
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3615

bb.aye:                                           ; preds = %stack_double.exit3291, %bb.axr
  %i.fww = phi ptr [ %.153.i3288, %stack_double.exit3291 ], [ %.pre4513, %bb.axr ]
  %i.fwx = phi ptr [ %i.fwn, %stack_double.exit3291 ], [ %i.fvm, %bb.axr ] ; 5 uses
  store i32 1, ptr %i.fwx, align 8, !tbaa !63
  %i.fwy = icmp eq ptr %i.fwx, %i.fww
  br i1 %i.fwy, label %bb.ayg, label %bb.ayf

bb.ayf:                                           ; preds = %bb.aye
  %i.fwz = getelementptr i8, ptr %i.fwx, i64 -40
  %i.fxa = load i64, ptr %i.fwz, align 8, !tbaa !65
  br label %bb.ayg

bb.ayg:                                           ; preds = %bb.aye, %bb.ayf
  %i.fxb = phi i64 [ %i.fxa, %bb.ayf ], [ 0, %bb.aye ]
  %i.fxc = getelementptr i8, ptr %i.fwx, i64 8
  store i64 %i.fxb, ptr %i.fxc, align 8, !tbaa !65
  %i.fxd = getelementptr i8, ptr %i.fwx, i64 16
  store ptr %i.flm, ptr %i.fxd, align 8, !tbaa !66
  %i.fxe = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.fxf = getelementptr i8, ptr %i.fxe, i64 %i.ftr
  %i.fxg = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.fxh = getelementptr i8, ptr %i.fxg, i64 24
  store ptr %i.fxf, ptr %i.fxh, align 8, !tbaa !66
  %i.fxi = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.fxj = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.fxk = getelementptr i8, ptr %i.fxj, i64 32
  store ptr %i.fxi, ptr %i.fxk, align 8, !tbaa !66
  %i.fxl = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.fxm = getelementptr i8, ptr %i.fxl, i64 40
  store ptr %.02225, ptr %i.fxm, align 8, !tbaa !66
  %i.fxn = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.fxo = getelementptr i8, ptr %i.fxn, i64 48   ; 3 uses
  store ptr %i.fxo, ptr %i.o, align 8, !tbaa !59
  %i.fxp = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.fxq = ptrtoint ptr %i.fxp to i64             ; 2 uses
  %i.fxr = ptrtoint ptr %i.fxo to i64             ; 2 uses
  %i.fxs = sub i64 %i.fxq, %i.fxr
  %i.fxt = icmp slt i64 %i.fxs, 48
  %.pre4514 = load ptr, ptr %i.n, align 8, !tbaa !59 ; 6 uses
  br i1 %i.fxt, label %bb.ayh, label %bb.ayt

bb.ayh:                                           ; preds = %bb.ayg
  %i.fxu = ptrtoint ptr %.pre4514 to i64          ; 2 uses
  %i.fxv = sub i64 %i.fxq, %i.fxu                 ; 3 uses
  %i.fxw = sdiv exact i64 %i.fxv, 48              ; 4 uses
  %i.fxx = icmp eq ptr %.pre4514, %i.bk           ; 2 uses
  br i1 %i.fxx, label %bb.ayi, label %bb.ayl

bb.ayi:                                           ; preds = %bb.ayh
  %i.fxy = load ptr, ptr %5, align 8, !tbaa !36
  %i.fxz = icmp eq ptr %i.fxy, null
  br i1 %i.fxz, label %bb.ayj, label %bb.ayl

bb.ayj:                                           ; preds = %bb.ayi
  %i.fya = shl i64 %i.fxv, 1
  %i.fyb = call noalias ptr @malloc(i64 noundef %i.fya) #22 ; 3 uses
  %i.fyc = icmp eq ptr %i.fyb, null
  br i1 %i.fyc, label %.loopexit3588, label %bb.ayk

bb.ayk:                                           ; preds = %bb.ayj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.fyb, ptr noundef nonnull align 1 %.pre4514, i64 noundef %i.fxv, i1 noundef false) #21
  %i.fyd = shl nsw i64 %i.fxw, 1
  br label %stack_double.exit3297

bb.ayl:                                           ; preds = %bb.ayi, %bb.ayh
  %i.fye = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !7 ; 3 uses
  %i.fyf = shl nsw i64 %i.fxw, 1                  ; 3 uses
  %.not.i3292 = icmp eq i32 %i.fye, 0
  br i1 %.not.i3292, label %bb.ayo, label %bb.aym

bb.aym:                                           ; preds = %bb.ayl
  %i.fyg = zext i32 %i.fye to i64                 ; 2 uses
  %i.fyh = icmp ugt i64 %i.fyf, %i.fyg
  br i1 %i.fyh, label %bb.ayn, label %bb.ayo

bb.ayn:                                           ; preds = %bb.aym
  %i.fyi = trunc i64 %i.fxw to i32
  %i.fyj = icmp eq i32 %i.fye, %i.fyi
  br i1 %i.fyj, label %.loopexit3588, label %bb.ayo

bb.ayo:                                           ; preds = %bb.ayn, %bb.aym, %bb.ayl
  %.050.i3293 = phi i64 [ %i.fyf, %bb.ayl ], [ %i.fyf, %bb.aym ], [ %i.fyg, %bb.ayn ] ; 2 uses
  %i.fyk = mul i64 %.050.i3293, 48
  %i.fyl = call ptr @realloc(ptr noundef %.pre4514, i64 noundef %i.fyk) #23 ; 2 uses
  %i.fym = icmp eq ptr %i.fyl, null
  br i1 %i.fym, label %bb.ayp, label %stack_double.exit3297

bb.ayp:                                           ; preds = %bb.ayo
  br i1 %i.fxx, label %.loopexit3588, label %bb.ayq

bb.ayq:                                           ; preds = %bb.ayp
  store ptr %.pre4514, ptr %5, align 8, !tbaa !36
  %i.fyn = getelementptr i8, ptr %5, i64 8
  store i64 %i.fxw, ptr %i.fyn, align 8, !tbaa !61
  br label %.loopexit3588

stack_double.exit3297:                            ; preds = %bb.ayk, %bb.ayo
  %.153.i3294 = phi ptr [ %i.fyb, %bb.ayk ], [ %i.fyl, %bb.ayo ] ; 4 uses
  %.2.i3295 = phi i64 [ %i.fyd, %bb.ayk ], [ %.050.i3293, %bb.ayo ]
  %i.fyo = sub i64 %i.fxr, %i.fxu
  %i.fyp = getelementptr i8, ptr %.153.i3294, i64 %i.fyo
  store ptr %.153.i3294, ptr %i.n, align 8, !tbaa !59
  %i.fyq = getelementptr [48 x i8], ptr %.153.i3294, i64 %.2.i3295
  store ptr %i.fyq, ptr %i.p, align 8, !tbaa !59
  br label %bb.ayt

.loopexit3588:                                    ; preds = %bb.ayj, %bb.ayn, %bb.ayq, %bb.ayp
  %.1.i3296.ph = phi i64 [ -5, %bb.ayp ], [ -5, %bb.ayq ], [ -5, %bb.ayj ], [ -15, %bb.ayn ]
  %i.fyr = load ptr, ptr %i.n, align 8, !tbaa !59 ; 3 uses
  %.not2546 = icmp eq ptr %i.fyr, %i.bk
  br i1 %.not2546, label %bb.ays, label %bb.ayr

bb.ayr:                                           ; preds = %.loopexit3588
  store ptr %i.fyr, ptr %5, align 8, !tbaa !36
  %i.fys = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.fyt = ptrtoint ptr %i.fys to i64
  %i.fyu = ptrtoint ptr %i.fyr to i64
  %i.fyv = sub i64 %i.fyt, %i.fyu
  %i.fyw = sdiv exact i64 %i.fyv, 48
  %i.fyx = getelementptr i8, ptr %5, i64 8
  store i64 %i.fyw, ptr %i.fyx, align 8, !tbaa !61
  br label %bb.ays

bb.ays:                                           ; preds = %.loopexit3588, %bb.ayr
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3615

bb.ayt:                                           ; preds = %stack_double.exit3297, %bb.ayg
  %i.fyy = phi ptr [ %.153.i3294, %stack_double.exit3297 ], [ %.pre4514, %bb.ayg ]
  %i.fyz = phi ptr [ %i.fyp, %stack_double.exit3297 ], [ %i.fxo, %bb.ayg ] ; 5 uses
  store i32 3072, ptr %i.fyz, align 8, !tbaa !63
  %i.fza = icmp eq ptr %i.fyz, %i.fyy
  br i1 %i.fza, label %bb.ayv, label %bb.ayu

bb.ayu:                                           ; preds = %bb.ayt
  %i.fzb = getelementptr i8, ptr %i.fyz, i64 -40
  %i.fzc = load i64, ptr %i.fzb, align 8, !tbaa !65
  br label %bb.ayv

bb.ayv:                                           ; preds = %bb.ayt, %bb.ayu
  %i.fzd = phi i64 [ %i.fzc, %bb.ayu ], [ 0, %bb.ayt ]
  %i.fze = getelementptr i8, ptr %i.fyz, i64 8
  store i64 %i.fzd, ptr %i.fze, align 8, !tbaa !65
  %i.fzf = getelementptr i8, ptr %i.fyz, i64 48
  store ptr %i.fzf, ptr %i.o, align 8, !tbaa !59
  br label %bb.ayw

bb.ayw:                                           ; preds = %bb.awh, %bb.ayv, %bb.awj
  %.23 = phi ptr [ %i.frc, %bb.awh ], [ %i.frf, %bb.awj ], [ %i.flu, %bb.ayv ] ; 2 uses
  %.02177 = phi ptr [ %i.fls, %bb.awh ], [ %i.fls, %bb.awj ], [ %.3, %bb.ayv ]
  %i.fzg = getelementptr i8, ptr %.23, i64 1
  br label %.backedge.backedge

bb.ayx:                                           ; preds = %bb.ayz, %bb.aza, %bb.ayy, %bb.ayx, %.backedge
  %i.fzh = load ptr, ptr %i.o, align 8, !tbaa !59 ; 10 uses
  %i.fzi = getelementptr i8, ptr %i.fzh, i64 -48  ; 2 uses
  store ptr %i.fzi, ptr %i.o, align 8, !tbaa !59
  %i.fzj = load i32, ptr %i.fzi, align 8, !tbaa !63
  switch i32 %i.fzj, label %bb.ayx [
    i32 3072, label %is_mbc_newline_ex.exit.thread.loopexit4133
    i32 256, label %bb.ayy
    i32 768, label %bb.ayz
    i32 33280, label %bb.aza
  ]

bb.ayy:                                           ; preds = %bb.ayx
  %i.fzk = getelementptr i8, ptr %i.fzh, i64 -32
  %i.fzl = getelementptr i8, ptr %i.fzh, i64 -16
  %i.fzm = load i64, ptr %i.fzl, align 8, !tbaa !66
  %i.fzn = load i32, ptr %i.fzk, align 8, !tbaa !66
  %i.fzo = sext i32 %i.fzn to i64
  %i.fzp = getelementptr [8 x i8], ptr %i.bq, i64 %i.fzo
  store i64 %i.fzm, ptr %i.fzp, align 8, !tbaa !20
  %i.fzq = getelementptr i8, ptr %i.fzh, i64 -32
  %i.fzr = getelementptr i8, ptr %i.fzh, i64 -8
  %i.fzs = load i64, ptr %i.fzr, align 8, !tbaa !66
  %i.fzt = load i32, ptr %i.fzq, align 8, !tbaa !66
  %i.fzu = sext i32 %i.fzt to i64
  %i.fzv = getelementptr [8 x i8], ptr %i.bt, i64 %i.fzu
  store i64 %i.fzs, ptr %i.fzv, align 8, !tbaa !20
  br label %bb.ayx

bb.ayz:                                           ; preds = %bb.ayx
  %i.fzw = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.fzx = getelementptr i8, ptr %i.fzh, i64 -32
  %i.fzy = load i64, ptr %i.fzx, align 8, !tbaa !66
  %i.fzz = getelementptr [48 x i8], ptr %i.fzw, i64 %i.fzy
  %i.gaa = getelementptr i8, ptr %i.fzz, i64 16   ; 2 uses
  %i.gab = load i32, ptr %i.gaa, align 8, !tbaa !66
  %i.gac = add i32 %i.gab, -1
  store i32 %i.gac, ptr %i.gaa, align 8, !tbaa !66
  br label %bb.ayx

bb.aza:                                           ; preds = %bb.ayx
  %i.gad = getelementptr i8, ptr %i.fzh, i64 -32
  %i.gae = getelementptr i8, ptr %i.fzh, i64 -16
  %i.gaf = load i64, ptr %i.gae, align 8, !tbaa !66
  %i.gag = load i32, ptr %i.gad, align 8, !tbaa !66
  %i.gah = sext i32 %i.gag to i64
  %i.gai = getelementptr [8 x i8], ptr %i.bq, i64 %i.gah
  store i64 %i.gaf, ptr %i.gai, align 8, !tbaa !20
  %i.gaj = getelementptr i8, ptr %i.fzh, i64 -32
  %i.gak = getelementptr i8, ptr %i.fzh, i64 -8
  %i.gal = load i64, ptr %i.gak, align 8, !tbaa !66
  %i.gam = load i32, ptr %i.gaj, align 8, !tbaa !66
  %i.gan = sext i32 %i.gam to i64
  %i.gao = getelementptr [8 x i8], ptr %i.bt, i64 %i.gan
  store i64 %i.gal, ptr %i.gao, align 8, !tbaa !20
  br label %bb.ayx

bb.azb:                                           ; preds = %.backedge
  %i.gap = load i32, ptr %.25, align 4, !tbaa !7
  %i.gaq = getelementptr i8, ptr %.25, i64 4
  %i.gar = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.gas = load ptr, ptr %i.o, align 8, !tbaa !59 ; 2 uses
  %i.gat = ptrtoint ptr %i.gar to i64             ; 2 uses
  %i.gau = ptrtoint ptr %i.gas to i64             ; 2 uses
  %i.gav = sub i64 %i.gat, %i.gau
  %i.gaw = icmp slt i64 %i.gav, 48
  br i1 %i.gaw, label %bb.azc, label %bb.azo

bb.azc:                                           ; preds = %bb.azb
  %i.gax = load ptr, ptr %i.n, align 8, !tbaa !59 ; 5 uses
  %i.gay = ptrtoint ptr %i.gax to i64             ; 2 uses
  %i.gaz = sub i64 %i.gat, %i.gay                 ; 3 uses
  %i.gba = sdiv exact i64 %i.gaz, 48              ; 4 uses
  %i.gbb = icmp eq ptr %i.gax, %i.bk              ; 2 uses
  br i1 %i.gbb, label %bb.azd, label %bb.azg

bb.azd:                                           ; preds = %bb.azc
  %i.gbc = load ptr, ptr %5, align 8, !tbaa !36
  %i.gbd = icmp eq ptr %i.gbc, null
  br i1 %i.gbd, label %bb.aze, label %bb.azg

bb.aze:                                           ; preds = %bb.azd
  %i.gbe = shl i64 %i.gaz, 1
  %i.gbf = call noalias ptr @malloc(i64 noundef %i.gbe) #22 ; 3 uses
  %i.gbg = icmp eq ptr %i.gbf, null
  br i1 %i.gbg, label %.loopexit3584, label %bb.azf

bb.azf:                                           ; preds = %bb.aze
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.gbf, ptr noundef nonnull align 1 %i.gax, i64 noundef %i.gaz, i1 noundef false) #21
  %i.gbh = shl nsw i64 %i.gba, 1
  br label %stack_double.exit3303

bb.azg:                                           ; preds = %bb.azd, %bb.azc
  %i.gbi = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !7 ; 3 uses
  %i.gbj = shl nsw i64 %i.gba, 1                  ; 3 uses
  %.not.i3298 = icmp eq i32 %i.gbi, 0
  br i1 %.not.i3298, label %bb.azj, label %bb.azh

bb.azh:                                           ; preds = %bb.azg
  %i.gbk = zext i32 %i.gbi to i64                 ; 2 uses
  %i.gbl = icmp ugt i64 %i.gbj, %i.gbk
  br i1 %i.gbl, label %bb.azi, label %bb.azj

bb.azi:                                           ; preds = %bb.azh
  %i.gbm = trunc i64 %i.gba to i32
  %i.gbn = icmp eq i32 %i.gbi, %i.gbm
  br i1 %i.gbn, label %.loopexit3584, label %bb.azj

bb.azj:                                           ; preds = %bb.azi, %bb.azh, %bb.azg
  %.050.i3299 = phi i64 [ %i.gbj, %bb.azg ], [ %i.gbj, %bb.azh ], [ %i.gbk, %bb.azi ] ; 2 uses
  %i.gbo = mul i64 %.050.i3299, 48
  %i.gbp = call ptr @realloc(ptr noundef %i.gax, i64 noundef %i.gbo) #23 ; 2 uses
  %i.gbq = icmp eq ptr %i.gbp, null
  br i1 %i.gbq, label %bb.azk, label %stack_double.exit3303

bb.azk:                                           ; preds = %bb.azj
  br i1 %i.gbb, label %.loopexit3584, label %bb.azl

bb.azl:                                           ; preds = %bb.azk
  store ptr %i.gax, ptr %5, align 8, !tbaa !36
  %i.gbr = getelementptr i8, ptr %5, i64 8
  store i64 %i.gba, ptr %i.gbr, align 8, !tbaa !61
  br label %.loopexit3584

stack_double.exit3303:                            ; preds = %bb.azf, %bb.azj
  %.153.i3300 = phi ptr [ %i.gbf, %bb.azf ], [ %i.gbp, %bb.azj ] ; 3 uses
  %.2.i3301 = phi i64 [ %i.gbh, %bb.azf ], [ %.050.i3299, %bb.azj ]
  %i.gbs = sub i64 %i.gau, %i.gay
  %i.gbt = getelementptr i8, ptr %.153.i3300, i64 %i.gbs ; 2 uses
  store ptr %i.gbt, ptr %i.o, align 8, !tbaa !59
  store ptr %.153.i3300, ptr %i.n, align 8, !tbaa !59
  %i.gbu = getelementptr [48 x i8], ptr %.153.i3300, i64 %.2.i3301
  store ptr %i.gbu, ptr %i.p, align 8, !tbaa !59
  br label %bb.azo

.loopexit3584:                                    ; preds = %bb.aze, %bb.azi, %bb.azl, %bb.azk
  %.1.i3302.ph = phi i64 [ -5, %bb.azk ], [ -5, %bb.azl ], [ -5, %bb.aze ], [ -15, %bb.azi ]
  %i.gbv = load ptr, ptr %i.n, align 8, !tbaa !59 ; 3 uses
  %.not2540 = icmp eq ptr %i.gbv, %i.bk
  br i1 %.not2540, label %bb.azn, label %bb.azm

bb.azm:                                           ; preds = %.loopexit3584
  store ptr %i.gbv, ptr %5, align 8, !tbaa !36
  %i.gbw = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.gbx = ptrtoint ptr %i.gbw to i64
  %i.gby = ptrtoint ptr %i.gbv to i64
  %i.gbz = sub i64 %i.gbx, %i.gby
  %i.gca = sdiv exact i64 %i.gbz, 48
  %i.gcb = getelementptr i8, ptr %5, i64 8
  store i64 %i.gca, ptr %i.gcb, align 8, !tbaa !61
  br label %bb.azn

bb.azn:                                           ; preds = %.loopexit3584, %bb.azm
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3615

bb.azo:                                           ; preds = %stack_double.exit3303, %bb.azb
  %i.gcc = phi ptr [ %i.gbt, %stack_double.exit3303 ], [ %i.gas, %bb.azb ] ; 5 uses
  store i32 2048, ptr %i.gcc, align 8, !tbaa !63
  %i.gcd = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.gce = icmp eq ptr %i.gcc, %i.gcd
  br i1 %i.gce, label %bb.azq, label %bb.azp

bb.azp:                                           ; preds = %bb.azo
  %i.gcf = getelementptr i8, ptr %i.gcc, i64 -40
  %i.gcg = load i64, ptr %i.gcf, align 8, !tbaa !65
  br label %bb.azq

bb.azq:                                           ; preds = %bb.azo, %bb.azp
  %i.gch = phi i64 [ %i.gcg, %bb.azp ], [ 0, %bb.azo ]
  %i.gci = getelementptr i8, ptr %i.gcc, i64 8
  store i64 %i.gch, ptr %i.gci, align 8, !tbaa !65
  %i.gcj = getelementptr i8, ptr %i.gcc, i64 16
  store ptr %i.gaq, ptr %i.gcj, align 8, !tbaa !66
  %i.gck = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.gcl = getelementptr i8, ptr %i.gck, i64 48
  store ptr %i.gcl, ptr %i.o, align 8, !tbaa !59
  %i.gcm = load ptr, ptr %0, align 8, !tbaa !11
  %i.gcn = sext i32 %i.gap to i64
  %i.gco = getelementptr i8, ptr %i.gcm, i64 %i.gcn ; 2 uses
  %i.gcp = getelementptr i8, ptr %i.gco, i64 1
  br label %.backedge.backedge

bb.azr:                                           ; preds = %.backedge
  %i.gcq = load ptr, ptr %i.o, align 8, !tbaa !59 ; 3 uses
  br label %.outer6061

.outer6061:                                       ; preds = %.outer6061.backedge, %bb.azr
  %.02196.ph = phi i32 [ 0, %bb.azr ], [ %.02196.ph.be, %.outer6061.backedge ] ; 3 uses
  %.02195.ph = phi ptr [ %i.gcq, %bb.azr ], [ %i.gcr, %.outer6061.backedge ]
  br label %bb.azs

bb.azs:                                           ; preds = %.outer6061, %bb.azs
  %.02195 = phi ptr [ %i.gcr, %bb.azs ], [ %.02195.ph, %.outer6061 ] ; 2 uses
  %i.gcr = getelementptr i8, ptr %.02195, i64 -48 ; 3 uses
  %i.gcs = load i32, ptr %i.gcr, align 8, !tbaa !63
  switch i32 %i.gcs, label %bb.azs [
    i32 2048, label %bb.azt
    i32 2304, label %bb.azw
  ]

bb.azt:                                           ; preds = %bb.azs
  %i.gct = icmp eq i32 %.02196.ph, 0
  br i1 %i.gct, label %bb.azu, label %bb.azv

bb.azu:                                           ; preds = %bb.azt
  %i.gcu = getelementptr i8, ptr %.02195, i64 -32
  %i.gcv = load ptr, ptr %i.gcu, align 8, !tbaa !66 ; 2 uses
  %i.gcw = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.gcx = ptrtoint ptr %i.gcw to i64             ; 2 uses
  %i.gcy = ptrtoint ptr %i.gcq to i64             ; 2 uses
  %i.gcz = sub i64 %i.gcx, %i.gcy
  %i.gda = icmp slt i64 %i.gcz, 48
  br i1 %i.gda, label %bb.azx, label %bb.baj

bb.azv:                                           ; preds = %bb.azt
  %i.gdb = add i32 %.02196.ph, -1
  br label %.outer6061.backedge

.outer6061.backedge:                              ; preds = %bb.azv, %bb.azw
  %.02196.ph.be = phi i32 [ %i.gdc, %bb.azw ], [ %i.gdb, %bb.azv ]
  br label %.outer6061

bb.azw:                                           ; preds = %bb.azs
  %i.gdc = add i32 %.02196.ph, 1
  br label %.outer6061.backedge

bb.azx:                                           ; preds = %bb.azu
  %i.gdd = load ptr, ptr %i.n, align 8, !tbaa !59 ; 5 uses
  %i.gde = ptrtoint ptr %i.gdd to i64             ; 2 uses
  %i.gdf = sub i64 %i.gcx, %i.gde                 ; 3 uses
  %i.gdg = sdiv exact i64 %i.gdf, 48              ; 4 uses
  %i.gdh = icmp eq ptr %i.gdd, %i.bk              ; 2 uses
  br i1 %i.gdh, label %bb.azy, label %bb.bab

bb.azy:                                           ; preds = %bb.azx
  %i.gdi = load ptr, ptr %5, align 8, !tbaa !36
  %i.gdj = icmp eq ptr %i.gdi, null
  br i1 %i.gdj, label %bb.azz, label %bb.bab

bb.azz:                                           ; preds = %bb.azy
  %i.gdk = shl i64 %i.gdf, 1
  %i.gdl = call noalias ptr @malloc(i64 noundef %i.gdk) #22 ; 3 uses
  %i.gdm = icmp eq ptr %i.gdl, null
  br i1 %i.gdm, label %.loopexit3583, label %bb.baa

bb.baa:                                           ; preds = %bb.azz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.gdl, ptr noundef nonnull align 1 %i.gdd, i64 noundef %i.gdf, i1 noundef false) #21
  %i.gdn = shl nsw i64 %i.gdg, 1
  br label %stack_double.exit3309

bb.bab:                                           ; preds = %bb.azy, %bb.azx
  %i.gdo = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !7 ; 3 uses
  %i.gdp = shl nsw i64 %i.gdg, 1                  ; 3 uses
  %.not.i3304 = icmp eq i32 %i.gdo, 0
  br i1 %.not.i3304, label %bb.bae, label %bb.bac

bb.bac:                                           ; preds = %bb.bab
  %i.gdq = zext i32 %i.gdo to i64                 ; 2 uses
  %i.gdr = icmp ugt i64 %i.gdp, %i.gdq
  br i1 %i.gdr, label %bb.bad, label %bb.bae

bb.bad:                                           ; preds = %bb.bac
  %i.gds = trunc i64 %i.gdg to i32
  %i.gdt = icmp eq i32 %i.gdo, %i.gds
  br i1 %i.gdt, label %.loopexit3583, label %bb.bae

bb.bae:                                           ; preds = %bb.bad, %bb.bac, %bb.bab
  %.050.i3305 = phi i64 [ %i.gdp, %bb.bab ], [ %i.gdp, %bb.bac ], [ %i.gdq, %bb.bad ] ; 2 uses
  %i.gdu = mul i64 %.050.i3305, 48
  %i.gdv = call ptr @realloc(ptr noundef %i.gdd, i64 noundef %i.gdu) #23 ; 2 uses
  %i.gdw = icmp eq ptr %i.gdv, null
  br i1 %i.gdw, label %bb.baf, label %stack_double.exit3309

bb.baf:                                           ; preds = %bb.bae
  br i1 %i.gdh, label %.loopexit3583, label %bb.bag

bb.bag:                                           ; preds = %bb.baf
  store ptr %i.gdd, ptr %5, align 8, !tbaa !36
  %i.gdx = getelementptr i8, ptr %5, i64 8
  store i64 %i.gdg, ptr %i.gdx, align 8, !tbaa !61
  br label %.loopexit3583

stack_double.exit3309:                            ; preds = %bb.baa, %bb.bae
  %.153.i3306 = phi ptr [ %i.gdl, %bb.baa ], [ %i.gdv, %bb.bae ] ; 3 uses
  %.2.i3307 = phi i64 [ %i.gdn, %bb.baa ], [ %.050.i3305, %bb.bae ]
  %i.gdy = sub i64 %i.gcy, %i.gde
  %i.gdz = getelementptr i8, ptr %.153.i3306, i64 %i.gdy
  store ptr %.153.i3306, ptr %i.n, align 8, !tbaa !59
  %i.gea = getelementptr [48 x i8], ptr %.153.i3306, i64 %.2.i3307
  store ptr %i.gea, ptr %i.p, align 8, !tbaa !59
  br label %bb.baj

.loopexit3583:                                    ; preds = %bb.azz, %bb.bad, %bb.bag, %bb.baf
  %.1.i3308.ph = phi i64 [ -5, %bb.baf ], [ -5, %bb.bag ], [ -5, %bb.azz ], [ -15, %bb.bad ]
  %i.geb = load ptr, ptr %i.n, align 8, !tbaa !59 ; 3 uses
  %.not2538 = icmp eq ptr %i.geb, %i.bk
  br i1 %.not2538, label %bb.bai, label %bb.bah

bb.bah:                                           ; preds = %.loopexit3583
  store ptr %i.geb, ptr %5, align 8, !tbaa !36
  %i.gec = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.ged = ptrtoint ptr %i.gec to i64
  %i.gee = ptrtoint ptr %i.geb to i64
  %i.gef = sub i64 %i.ged, %i.gee
  %i.geg = sdiv exact i64 %i.gef, 48
  %i.geh = getelementptr i8, ptr %5, i64 8
  store i64 %i.geg, ptr %i.geh, align 8, !tbaa !61
  br label %bb.bai

bb.bai:                                           ; preds = %.loopexit3583, %bb.bah
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3615

bb.baj:                                           ; preds = %stack_double.exit3309, %bb.azu
  %i.gei = phi ptr [ %i.gdz, %stack_double.exit3309 ], [ %i.gcq, %bb.azu ] ; 5 uses
  store i32 2304, ptr %i.gei, align 8, !tbaa !63
  %i.gej = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.gek = icmp eq ptr %i.gei, %i.gej
  br i1 %i.gek, label %bb.bal, label %bb.bak

bb.bak:                                           ; preds = %bb.baj
  %i.gel = getelementptr i8, ptr %i.gei, i64 -40
  %i.gem = load i64, ptr %i.gel, align 8, !tbaa !65
  br label %bb.bal

bb.bal:                                           ; preds = %bb.baj, %bb.bak
  %i.gen = phi i64 [ %i.gem, %bb.bak ], [ 0, %bb.baj ]
  %i.geo = getelementptr i8, ptr %i.gei, i64 8
  store i64 %i.gen, ptr %i.geo, align 8, !tbaa !65
  %i.gep = getelementptr i8, ptr %i.gei, i64 48
  store ptr %i.gep, ptr %i.o, align 8, !tbaa !59
  %i.geq = getelementptr i8, ptr %i.gcv, i64 1
  br label %.backedge.backedge

bb.bam:                                           ; preds = %.backedge
  %i.ger = load i16, ptr %.25, align 2, !tbaa !96 ; 2 uses
  %i.ges = getelementptr i8, ptr %.25, i64 2
  %i.get = load i32, ptr %i.ges, align 4, !tbaa !7
  %i.geu = getelementptr i8, ptr %.25, i64 6      ; 2 uses
  %i.gev = sext i16 %i.ger to i32
  %i.gew = icmp slt i32 %i.bn, %i.gev
  br i1 %i.gew, label %bb.bap, label %bb.ban

bb.ban:                                           ; preds = %bb.bam
  %i.gex = sext i16 %i.ger to i64                 ; 2 uses
  %i.gey = getelementptr [8 x i8], ptr %i.bt, i64 %i.gex
  %i.gez = load i64, ptr %i.gey, align 8, !tbaa !20
  %i.gfa = icmp eq i64 %i.gez, -1
  br i1 %i.gfa, label %bb.bap, label %bb.bao

bb.bao:                                           ; preds = %bb.ban
  %i.gfb = getelementptr [8 x i8], ptr %i.bq, i64 %i.gex
  %i.gfc = load i64, ptr %i.gfb, align 8, !tbaa !20
  %i.gfd = icmp eq i64 %i.gfc, -1
  br i1 %i.gfd, label %bb.bap, label %bb.baq

bb.bap:                                           ; preds = %bb.bao, %bb.ban, %bb.bam
  %i.gfe = sext i32 %i.get to i64
  %i.gff = getelementptr i8, ptr %i.geu, i64 %i.gfe
  br label %bb.baq

bb.baq:                                           ; preds = %bb.bap, %bb.bao
  %.24 = phi ptr [ %i.gff, %bb.bap ], [ %i.geu, %bb.bao ] ; 2 uses
  %i.gfg = getelementptr i8, ptr %.24, i64 1
  br label %.backedge.backedge

is_mbc_newline_ex.exit.thread.loopexit4133:       ; preds = %bb.ayx
  %i.gfh = icmp ult ptr %.19, %.3
  %spec.select2875 = select i1 %i.gfh, ptr %.19, ptr %.3
  br label %is_mbc_newline_ex.exit.thread

is_mbc_newline_ex.exit.thread:                    ; preds = %memoize_extended_match_cache_point.exit3271, %memoize_extended_match_cache_point.exit3269, %memoize_extended_match_cache_point.exit3273, %bb.aut, %memoize_extended_match_cache_point.exit3249, %bb.yx, %.loopexit3521, %.lr.ph6022, %bb.nr, %bb.lh, %bb.ln, %is_mbc_newline_ex.exit2959, %enclen_approx.exit2953, %bb.jb, %bb.gt, %bb.gz, %is_mbc_newline_ex.exit2907, %enclen_approx.exit2901, %bb.bk, %.lr.ph4069, %.lr.ph4075, %.lr.ph4080, %bb.cj, %bb.ci, %.lr.ph4085, %bb.cf, %.lr.ph4090, %.lr.ph6026, %.lr.ph4065, %is_mbc_newline_ex.exit.thread.loopexit4133, %.preheader3576, %._crit_edge3994, %._crit_edge3998, %bb.eg, %bb.em, %backref_match_at_nested_level.exit.thread, %string_cmp_ic.exit.thread, %.backedge, %bb.qy, %bb.qm, %bb.pg, %bb.pd, %bb.ob, %bb.ae, %bb.ad, %bb.awg, %bb.aty, %check_extended_match_cache_point.exit3215, %check_extended_match_cache_point.exit3210, %bb.aof, %check_extended_match_cache_point.exit3189, %check_extended_match_cache_point.exit3184, %bb.aky, %check_extended_match_cache_point.exit3175, %check_extended_match_cache_point.exit3170, %bb.ajf, %check_extended_match_cache_point.exit3149, %check_extended_match_cache_point.exit3144, %bb.agn, %check_extended_match_cache_point.exit3123, %check_extended_match_cache_point.exit3118, %bb.adu, %check_extended_match_cache_point.exit3109, %check_extended_match_cache_point.exit3104, %bb.acf, %.loopexit3563, %.loopexit3562, %bb.xf, %bb.wv, %bb.wu, %bb.wt, %bb.wp, %bb.wf, %bb.we, %bb.wd, %bb.su, %bb.ss, %bb.so, %bb.sk, %bb.sj, %bb.sd, %bb.sb, %bb.ry, %bb.rw, %bb.rt, %bb.rs, %bb.rm, %bb.rk, %bb.rh, %bb.rg, %bb.re, %bb.rd, %bb.qw, %rb_enc_asciicompat.exit3028.thread, %rb_enc_asciicompat.exit3032.thread, %bb.rb, %bb.qr, %bb.qs, %bb.qu, %bb.qk, %rb_enc_asciicompat.exit3020.thread, %rb_enc_asciicompat.exit3024.thread, %bb.qp, %bb.qf, %bb.qg, %bb.qi, %bb.qd, %bb.pz, %rb_enc_asciicompat.exit3008.thread, %bb.pw, %rb_enc_asciicompat.exit3004.thread, %bb.pr, %bb.pq, %bb.po, %bb.pk, %rb_enc_asciicompat.exit2992.thread, %rb_enc_asciicompat.exit2988.thread, %bb.pb, %bb.oy, %bb.ox, %bb.ov, %bb.ou, %bb.oo, %rb_enc_asciicompat.exit2984.thread, %bb.om, %bb.oh, %bb.og, %rb_enc_asciicompat.exit.thread, %bb.nz, %bb.nu, %bb.nt, %check_extended_match_cache_point.exit2967, %check_extended_match_cache_point.exit2962, %bb.lt, %check_extended_match_cache_point.exit2938, %check_extended_match_cache_point.exit2933, %bb.ji, %check_extended_match_cache_point.exit2915, %check_extended_match_cache_point.exit2910, %bb.hg, %check_extended_match_cache_point.exit2890, %check_extended_match_cache_point.exit, %bb.ex, %enclen_approx.exit2884, %bb.eo, %is_mbc_newline_ex.exit, %enclen_approx.exit2880, %bb.eb, %bb.dz, %bb.dw, %bb.du, %bb.ds, %bb.dl, %bb.dg, %bb.df, %bb.dd, %bb.da, %bb.cy, %enclen_approx.exit, %bb.cu, %bb.ct, %bb.co, %bb.cn, %bb.cl, %bb.ch, %bb.ce, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bn, %bb.bm, %bb.bh, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.aok, %bb.ald, %bb.ajk, %bb.ags, %bb.adz, %bb.ack, %bb.ly, %bb.jn, %bb.hl, %bb.fc
  %.12188 = phi i64 [ %.32190, %.loopexit3521 ], [ %.02187, %bb.ae ], [ %.32190, %bb.af ], [ %.32190, %bb.ag ], [ %.32190, %bb.al ], [ %.32190, %bb.am ], [ %.32190, %bb.an ], [ %.32190, %bb.ap ], [ %.32190, %bb.aq ], [ %.32190, %bb.ar ], [ %.32190, %bb.as ], [ %.32190, %bb.au ], [ %.32190, %bb.av ], [ %.32190, %bb.aw ], [ %.32190, %bb.ax ], [ %.32190, %bb.ay ], [ %.32190, %bb.ba ], [ %.32190, %bb.bb ], [ %.32190, %bb.bc ], [ %.32190, %bb.bd ], [ %.32190, %bb.be ], [ %.32190, %bb.bf ], [ %.32190, %bb.bh ], [ %.32190, %is_mbc_newline_ex.exit.thread.loopexit4133 ], [ %.32190, %bb.bm ], [ %.32190, %bb.bn ], [ %.32190, %bb.bo ], [ %.32190, %bb.bq ], [ %.32190, %bb.br ], [ %.32190, %bb.bs ], [ %.32190, %bb.bt ], [ %.32190, %bb.bu ], [ %.32190, %bb.bw ], [ %.32190, %bb.bx ], [ %.32190, %bb.by ], [ %.32190, %bb.bz ], [ %.32190, %bb.ca ], [ %.32190, %bb.cb ], [ %.32190, %bb.cc ], [ %.32190, %bb.ce ], [ %.32190, %._crit_edge3998 ], [ %.32190, %.lr.ph6022 ], [ %.32190, %bb.ch ], [ %.32190, %bb.em ], [ %.32190, %bb.aty ], [ %.32190, %bb.bk ], [ %.32190, %bb.cl ], [ %.32190, %bb.nr ], [ %.32190, %bb.ai ], [ %.32190, %bb.aj ], [ %.32190, %bb.jb ], [ %.32190, %bb.eg ], [ %.32190, %bb.cf ], [ %.32190, %._crit_edge3994 ], [ %.32190, %bb.cn ], [ %.32190, %bb.co ], [ %.32190, %bb.cu ], [ %.32190, %enclen_approx.exit ], [ %.32190, %bb.cy ], [ %.32190, %bb.ct ], [ %.32190, %bb.da ], [ %.32190, %bb.dd ], [ %.32190, %bb.df ], [ %.32190, %bb.dg ], [ %.32190, %bb.dl ], [ %.32190, %bb.du ], [ %.32190, %bb.ds ], [ %.32190, %bb.dw ], [ %.32190, %bb.dz ], [ %.32190, %bb.eb ], [ %.32190, %enclen_approx.exit2880 ], [ %.32190, %is_mbc_newline_ex.exit ], [ %.32190, %bb.eo ], [ %.32190, %enclen_approx.exit2884 ], [ %.32190, %bb.ex ], [ %.32190, %bb.fc ], [ %.32190, %check_extended_match_cache_point.exit ], [ %.32190, %check_extended_match_cache_point.exit2890 ], [ %.32190, %.backedge ], [ %.32190, %.lr.ph4065 ], [ %.32190, %bb.hg ], [ %.32190, %bb.hl ], [ %.32190, %check_extended_match_cache_point.exit2910 ], [ %.32190, %check_extended_match_cache_point.exit2915 ], [ %.32190, %memoize_extended_match_cache_point.exit3273 ], [ %.32190, %bb.ji ], [ %.32190, %bb.jn ], [ %.32190, %check_extended_match_cache_point.exit2933 ], [ %.32190, %check_extended_match_cache_point.exit2938 ], [ %.32190, %bb.cj ], [ %.32190, %.lr.ph4080 ], [ %.32190, %bb.lt ], [ %.32190, %bb.ly ], [ %.32190, %check_extended_match_cache_point.exit2962 ], [ %.32190, %check_extended_match_cache_point.exit2967 ], [ %.32190, %bb.aut ], [ %.32190, %bb.nt ], [ %.32190, %bb.nu ], [ %.32190, %bb.og ], [ %.32190, %bb.oh ], [ %.32190, %bb.ou ], [ %.32190, %bb.ov ], [ %.32190, %bb.ox ], [ %.32190, %bb.oy ], [ %.32190, %bb.po ], [ %.32190, %bb.pq ], [ %.32190, %bb.pr ], [ %.32190, %bb.qi ], [ %.32190, %bb.qg ], [ %.32190, %bb.qf ], [ %.32190, %bb.qr ], [ %.32190, %bb.qu ], [ %.32190, %bb.qs ], [ %.32190, %bb.nz ], [ %.32190, %bb.ob ], [ %.32190, %rb_enc_asciicompat.exit.thread ], [ %.32190, %bb.om ], [ %.32190, %bb.oo ], [ -1, %bb.ad ], [ %.32190, %rb_enc_asciicompat.exit2984.thread ], [ %.32190, %bb.pb ], [ %.32190, %bb.pd ], [ %.32190, %rb_enc_asciicompat.exit2988.thread ], [ %.32190, %bb.pg ], [ %.32190, %rb_enc_asciicompat.exit2992.thread ], [ %.32190, %bb.pk ], [ %.32190, %bb.pw ], [ %.32190, %.lr.ph4075 ], [ %.32190, %rb_enc_asciicompat.exit3004.thread ], [ %.32190, %bb.pz ], [ %.32190, %bb.awg ], [ %.32190, %rb_enc_asciicompat.exit3008.thread ], [ %.32190, %bb.qd ], [ %.32190, %bb.qp ], [ %.32190, %.preheader3576 ], [ %.32190, %rb_enc_asciicompat.exit3024.thread ], [ %.32190, %bb.qm ], [ %.32190, %rb_enc_asciicompat.exit3020.thread ], [ %.32190, %bb.qk ], [ %.32190, %bb.qw ], [ %.32190, %bb.rb ], [ %.32190, %memoize_extended_match_cache_point.exit3269 ], [ %.32190, %rb_enc_asciicompat.exit3032.thread ], [ %.32190, %bb.qy ], [ %.32190, %rb_enc_asciicompat.exit3028.thread ], [ %.32190, %bb.re ], [ %.32190, %bb.rd ], [ %.32190, %bb.rh ], [ %.32190, %bb.rg ], [ %.32190, %bb.rk ], [ %.32190, %bb.rs ], [ %.32190, %bb.rt ], [ %.32190, %bb.rm ], [ %.32190, %bb.rw ], [ %.32190, %bb.ry ], [ %.32190, %bb.sb ], [ %.32190, %bb.ss ], [ %.32190, %bb.so ], [ %.32190, %bb.sk ], [ %.32190, %bb.sj ], [ %.32190, %bb.sd ], [ %.32190, %bb.su ], [ %.32190, %bb.wd ], [ %.32190, %bb.we ], [ %.32190, %bb.wf ], [ %.32190, %bb.wp ], [ %.32190, %bb.gt ], [ %.32190, %bb.wt ], [ %.32190, %bb.wu ], [ %.32190, %bb.wv ], [ %.32190, %bb.xf ], [ %.32190, %string_cmp_ic.exit.thread ], [ %.32190, %.loopexit3562 ], [ %.32190, %.loopexit3563 ], [ %.32190, %backref_match_at_nested_level.exit.thread ], [ %.32190, %memoize_extended_match_cache_point.exit3249 ], [ %.32190, %bb.acf ], [ %.32190, %bb.ack ], [ %.32190, %check_extended_match_cache_point.exit3104 ], [ %.32190, %check_extended_match_cache_point.exit3109 ], [ %.32190, %bb.adu ], [ %.32190, %bb.adz ], [ %.32190, %check_extended_match_cache_point.exit3118 ], [ %.32190, %check_extended_match_cache_point.exit3123 ], [ %.32190, %bb.agn ], [ %.32190, %bb.ags ], [ %.32190, %check_extended_match_cache_point.exit3144 ], [ %.32190, %check_extended_match_cache_point.exit3149 ], [ %.32190, %bb.ajf ], [ %.32190, %bb.ajk ], [ %.32190, %check_extended_match_cache_point.exit3170 ], [ %.32190, %check_extended_match_cache_point.exit3175 ], [ %.32190, %bb.aky ], [ %.32190, %bb.ald ], [ %.32190, %check_extended_match_cache_point.exit3184 ], [ %.32190, %check_extended_match_cache_point.exit3189 ], [ %.32190, %bb.aof ], [ %.32190, %bb.aok ], [ %.32190, %check_extended_match_cache_point.exit3210 ], [ %.32190, %check_extended_match_cache_point.exit3215 ], [ %.32190, %.lr.ph6026 ], [ %.32190, %bb.lh ], [ %.32190, %bb.yx ], [ %.32190, %.lr.ph4090 ], [ %.32190, %.lr.ph4085 ], [ %.32190, %bb.ci ], [ %.32190, %.lr.ph4069 ], [ %.32190, %enclen_approx.exit2901 ], [ %.32190, %is_mbc_newline_ex.exit2907 ], [ %.32190, %bb.gz ], [ %.32190, %enclen_approx.exit2953 ], [ %.32190, %is_mbc_newline_ex.exit2959 ], [ %.32190, %bb.ln ], [ %.32190, %memoize_extended_match_cache_point.exit3271 ] ; 4 uses
  %.2 = phi ptr [ %.3, %.loopexit3521 ], [ %.3, %bb.ae ], [ %.3, %bb.af ], [ %.3, %bb.ag ], [ %.3, %bb.al ], [ %.3, %bb.am ], [ %.3, %bb.an ], [ %.3, %bb.ap ], [ %.3, %bb.aq ], [ %.3, %bb.ar ], [ %.3, %bb.as ], [ %.3, %bb.au ], [ %.3, %bb.av ], [ %.3, %bb.aw ], [ %.3, %bb.ax ], [ %.3, %bb.ay ], [ %.3, %bb.ba ], [ %.3, %bb.bb ], [ %.3, %bb.bc ], [ %.3, %bb.bd ], [ %.3, %bb.be ], [ %.3, %bb.bf ], [ %.3, %bb.bh ], [ %spec.select2875, %is_mbc_newline_ex.exit.thread.loopexit4133 ], [ %.3, %bb.bm ], [ %.3, %bb.bn ], [ %.3, %bb.bo ], [ %.3, %bb.bq ], [ %.3, %bb.br ], [ %.3, %bb.bs ], [ %.3, %bb.bt ], [ %.3, %bb.bu ], [ %.3, %bb.bw ], [ %.3, %bb.bx ], [ %.3, %bb.by ], [ %.3, %bb.bz ], [ %.3, %bb.ca ], [ %.3, %bb.cb ], [ %.3, %bb.cc ], [ %.3, %bb.ce ], [ %.3, %._crit_edge3998 ], [ %.3, %.lr.ph6022 ], [ %.3, %bb.ch ], [ %.3, %bb.em ], [ %.3, %bb.aty ], [ %.3, %bb.bk ], [ %.3, %bb.cl ], [ %.3, %bb.nr ], [ %.3, %bb.ai ], [ %.3, %bb.aj ], [ %.3, %bb.jb ], [ %.3, %bb.eg ], [ %.3, %bb.cf ], [ %.3, %._crit_edge3994 ], [ %.3, %bb.cn ], [ %.3, %bb.co ], [ %.3, %bb.cu ], [ %.3, %enclen_approx.exit ], [ %.3, %bb.cy ], [ %.3, %bb.ct ], [ %.3, %bb.da ], [ %.3, %bb.dd ], [ %.3, %bb.df ], [ %.3, %bb.dg ], [ %.3, %bb.dl ], [ %.3, %bb.du ], [ %.3, %bb.ds ], [ %.3, %bb.dw ], [ %.3, %bb.dz ], [ %.3, %bb.eb ], [ %.3, %enclen_approx.exit2880 ], [ %.3, %is_mbc_newline_ex.exit ], [ %.3, %bb.eo ], [ %.3, %enclen_approx.exit2884 ], [ %.3, %bb.ex ], [ %.3, %bb.fc ], [ %.3, %check_extended_match_cache_point.exit ], [ %.3, %check_extended_match_cache_point.exit2890 ], [ %.3, %.backedge ], [ %.3, %.lr.ph4065 ], [ %.3, %bb.hg ], [ %.3, %bb.hl ], [ %.3, %check_extended_match_cache_point.exit2910 ], [ %.3, %check_extended_match_cache_point.exit2915 ], [ %i.fls, %memoize_extended_match_cache_point.exit3273 ], [ %.3, %bb.ji ], [ %.3, %bb.jn ], [ %.3, %check_extended_match_cache_point.exit2933 ], [ %.3, %check_extended_match_cache_point.exit2938 ], [ %.3, %bb.cj ], [ %.3, %.lr.ph4080 ], [ %.3, %bb.lt ], [ %.3, %bb.ly ], [ %.3, %check_extended_match_cache_point.exit2962 ], [ %.3, %check_extended_match_cache_point.exit2967 ], [ %.3, %bb.aut ], [ %.3, %bb.nt ], [ %.3, %bb.nu ], [ %.3, %bb.og ], [ %.3, %bb.oh ], [ %.3, %bb.ou ], [ %.3, %bb.ov ], [ %.3, %bb.ox ], [ %.3, %bb.oy ], [ %.3, %bb.po ], [ %.3, %bb.pq ], [ %.3, %bb.pr ], [ %.3, %bb.qi ], [ %.3, %bb.qg ], [ %.3, %bb.qf ], [ %.3, %bb.qr ], [ %.3, %bb.qu ], [ %.3, %bb.qs ], [ %.3, %bb.nz ], [ %.3, %bb.ob ], [ %.3, %rb_enc_asciicompat.exit.thread ], [ %.3, %bb.om ], [ %.3, %bb.oo ], [ %.3, %bb.ad ], [ %.3, %rb_enc_asciicompat.exit2984.thread ], [ %.3, %bb.pb ], [ %.3, %bb.pd ], [ %.3, %rb_enc_asciicompat.exit2988.thread ], [ %.3, %bb.pg ], [ %.3, %rb_enc_asciicompat.exit2992.thread ], [ %.3, %bb.pk ], [ %.3, %bb.pw ], [ %.3, %.lr.ph4075 ], [ %.3, %rb_enc_asciicompat.exit3004.thread ], [ %.3, %bb.pz ], [ %i.fls, %bb.awg ], [ %.3, %rb_enc_asciicompat.exit3008.thread ], [ %.3, %bb.qd ], [ %.3, %bb.qp ], [ %i.fls, %.preheader3576 ], [ %.3, %rb_enc_asciicompat.exit3024.thread ], [ %.3, %bb.qm ], [ %.3, %rb_enc_asciicompat.exit3020.thread ], [ %.3, %bb.qk ], [ %.3, %bb.qw ], [ %.3, %bb.rb ], [ %i.fls, %memoize_extended_match_cache_point.exit3269 ], [ %.3, %rb_enc_asciicompat.exit3032.thread ], [ %.3, %bb.qy ], [ %.3, %rb_enc_asciicompat.exit3028.thread ], [ %.3, %bb.re ], [ %.3, %bb.rd ], [ %.3, %bb.rh ], [ %.3, %bb.rg ], [ %.3, %bb.rk ], [ %.3, %bb.rs ], [ %.3, %bb.rt ], [ %.3, %bb.rm ], [ %.3, %bb.rw ], [ %.3, %bb.ry ], [ %.3, %bb.sb ], [ %.3, %bb.ss ], [ %.3, %bb.so ], [ %.3, %bb.sk ], [ %.3, %bb.sj ], [ %.3, %bb.sd ], [ %.3, %bb.su ], [ %.3, %bb.wd ], [ %.3, %bb.we ], [ %.3, %bb.wf ], [ %.3, %bb.wp ], [ %.3, %bb.gt ], [ %.3, %bb.wt ], [ %.3, %bb.wu ], [ %.3, %bb.wv ], [ %.3, %bb.xf ], [ %.3, %string_cmp_ic.exit.thread ], [ %.3, %.loopexit3562 ], [ %.3, %.loopexit3563 ], [ %.3, %backref_match_at_nested_level.exit.thread ], [ %.3, %memoize_extended_match_cache_point.exit3249 ], [ %.3, %bb.acf ], [ %.3, %bb.ack ], [ %.3, %check_extended_match_cache_point.exit3104 ], [ %.3, %check_extended_match_cache_point.exit3109 ], [ %.3, %bb.adu ], [ %.3, %bb.adz ], [ %.3, %check_extended_match_cache_point.exit3118 ], [ %.3, %check_extended_match_cache_point.exit3123 ], [ %.3, %bb.agn ], [ %.3, %bb.ags ], [ %.3, %check_extended_match_cache_point.exit3144 ], [ %.3, %check_extended_match_cache_point.exit3149 ], [ %.3, %bb.ajf ], [ %.3, %bb.ajk ], [ %.3, %check_extended_match_cache_point.exit3170 ], [ %.3, %check_extended_match_cache_point.exit3175 ], [ %.3, %bb.aky ], [ %.3, %bb.ald ], [ %.3, %check_extended_match_cache_point.exit3184 ], [ %.3, %check_extended_match_cache_point.exit3189 ], [ %.3, %bb.aof ], [ %.3, %bb.aok ], [ %.3, %check_extended_match_cache_point.exit3210 ], [ %.3, %check_extended_match_cache_point.exit3215 ], [ %.3, %.lr.ph6026 ], [ %.3, %bb.lh ], [ %.3, %bb.yx ], [ %.3, %.lr.ph4090 ], [ %.3, %.lr.ph4085 ], [ %.3, %bb.ci ], [ %.3, %.lr.ph4069 ], [ %.3, %enclen_approx.exit2901 ], [ %.3, %is_mbc_newline_ex.exit2907 ], [ %.3, %bb.gz ], [ %.3, %enclen_approx.exit2953 ], [ %.3, %is_mbc_newline_ex.exit2959 ], [ %.3, %bb.ln ], [ %i.fls, %memoize_extended_match_cache_point.exit3271 ] ; 4 uses
  switch i32 %i.bm, label %.preheader3524 [
    i32 0, label %.preheader3526
    i32 1, label %.preheader3528
  ]

.preheader3528:                                   ; preds = %.preheader3580, %is_mbc_newline_ex.exit.thread
  %.25187 = phi ptr [ %.2, %is_mbc_newline_ex.exit.thread ], [ %i.fls, %.preheader3580 ] ; 2 uses
  %.121885186 = phi i64 [ %.12188, %is_mbc_newline_ex.exit.thread ], [ %.32190, %.preheader3580 ] ; 2 uses
  %i.gfi = load ptr, ptr %i.o, align 8, !tbaa !59 ; 2 uses
  %i.gfj = getelementptr i8, ptr %i.gfi, i64 -48  ; 3 uses
  store ptr %i.gfj, ptr %i.o, align 8, !tbaa !59
  %i.gfk = load i32, ptr %i.gfj, align 8, !tbaa !63 ; 2 uses
  %i.gfl = and i32 %i.gfk, 255
  %.not28214100 = icmp eq i32 %i.gfl, 0
  br i1 %.not28214100, label %.lr.ph4101, label %.loopexit3525

.preheader3526:                                   ; preds = %.preheader3578, %is_mbc_newline_ex.exit.thread
  %.25182 = phi ptr [ %.2, %is_mbc_newline_ex.exit.thread ], [ %i.fls, %.preheader3578 ] ; 2 uses
  %.121885180 = phi i64 [ %.12188, %is_mbc_newline_ex.exit.thread ], [ %.32190, %.preheader3578 ] ; 2 uses
  %i.gfm = load ptr, ptr %i.o, align 8, !tbaa !59 ; 2 uses
  %i.gfn = getelementptr i8, ptr %i.gfm, i64 -48  ; 3 uses
  store ptr %i.gfn, ptr %i.o, align 8, !tbaa !59
  %i.gfo = load i32, ptr %i.gfn, align 8, !tbaa !63 ; 2 uses
  %i.gfp = and i32 %i.gfo, 255
  %.not28224102 = icmp eq i32 %i.gfp, 0
  br i1 %.not28224102, label %.lr.ph4103, label %.loopexit3525

.preheader3524:                                   ; preds = %is_mbc_newline_ex.exit.thread
  %i.gfq = load ptr, ptr %i.o, align 8, !tbaa !59 ; 2 uses
  %i.gfr = getelementptr i8, ptr %i.gfq, i64 -48  ; 4 uses
  store ptr %i.gfr, ptr %i.o, align 8, !tbaa !59
  %i.gfs = load i32, ptr %i.gfr, align 8, !tbaa !63 ; 2 uses
  %i.gft = and i32 %i.gfs, 255
  %.not28234104 = icmp eq i32 %i.gft, 0
  br i1 %.not28234104, label %.lr.ph4105, label %.loopexit3525

.lr.ph4103:                                       ; preds = %.preheader3526, %memoize_extended_match_cache_point.exit3311
  %i.gfu = phi i32 [ %i.ggt, %memoize_extended_match_cache_point.exit3311 ], [ %i.gfo, %.preheader3526 ]
  %i.gfv = phi ptr [ %i.ggr, %memoize_extended_match_cache_point.exit3311 ], [ %i.gfm, %.preheader3526 ] ; 4 uses
  switch i32 %i.gfu, label %memoize_extended_match_cache_point.exit3311 [
    i32 3328, label %bb.bar
    i32 3584, label %bb.bas
  ]

bb.bar:                                           ; preds = %.lr.ph4103
  %i.gfw = getelementptr i8, ptr %i.gfv, i64 -32
  %i.gfx = getelementptr i8, ptr %i.gfv, i64 -24
  %i.gfy = load i8, ptr %i.gfx, align 8, !tbaa !66
  %i.gfz = load ptr, ptr %i.cn, align 8, !tbaa !55
  %i.gga = load i64, ptr %i.gfw, align 8, !tbaa !66
  %i.ggb = getelementptr i8, ptr %i.gfz, i64 %i.gga ; 2 uses
  %i.ggc = load i8, ptr %i.ggb, align 1, !tbaa !66
  %i.ggd = or i8 %i.ggc, %i.gfy
  store i8 %i.ggd, ptr %i.ggb, align 1, !tbaa !66
  br label %memoize_extended_match_cache_point.exit3311

bb.bas:                                           ; preds = %.lr.ph4103
  %i.gge = load ptr, ptr %i.cn, align 8, !tbaa !55
  %i.ggf = getelementptr i8, ptr %i.gfv, i64 -32
  %i.ggg = load i64, ptr %i.ggf, align 8, !tbaa !66
  %i.ggh = getelementptr i8, ptr %i.gfv, i64 -24
  %i.ggi = load i8, ptr %i.ggh, align 8, !tbaa !66 ; 3 uses
  %i.ggj = getelementptr i8, ptr %i.gge, i64 %i.ggg ; 4 uses
  %i.ggk = load i8, ptr %i.ggj, align 1, !tbaa !66
  %i.ggl = or i8 %i.ggk, %i.ggi                   ; 2 uses
  store i8 %i.ggl, ptr %i.ggj, align 1, !tbaa !66
  %.not.i3310 = icmp sgt i8 %i.ggi, -1
  br i1 %.not.i3310, label %bb.bau, label %bb.bat

bb.bat:                                           ; preds = %bb.bas
  %i.ggm = getelementptr i8, ptr %i.ggj, i64 1    ; 2 uses
  %i.ggn = load i8, ptr %i.ggm, align 1, !tbaa !66
  %i.ggo = or i8 %i.ggn, 1
  store i8 %i.ggo, ptr %i.ggm, align 1, !tbaa !66
  br label %memoize_extended_match_cache_point.exit3311

bb.bau:                                           ; preds = %bb.bas
  %i.ggp = shl nuw i8 %i.ggi, 1
  %i.ggq = or i8 %i.ggl, %i.ggp
  store i8 %i.ggq, ptr %i.ggj, align 1, !tbaa !66
  br label %memoize_extended_match_cache_point.exit3311

memoize_extended_match_cache_point.exit3311:      ; preds = %bb.bau, %bb.bat, %.lr.ph4103, %bb.bar
  %i.ggr = load ptr, ptr %i.o, align 8, !tbaa !59 ; 3 uses
  %i.ggs = getelementptr i8, ptr %i.ggr, i64 -48  ; 2 uses
  store ptr %i.ggs, ptr %i.o, align 8, !tbaa !59
  %i.ggt = load i32, ptr %i.ggs, align 8, !tbaa !63 ; 2 uses
  %i.ggu = and i32 %i.ggt, 255
  %.not2822 = icmp eq i32 %i.ggu, 0
  br i1 %.not2822, label %.lr.ph4103, label %.loopexit3525.loopexit5192

.lr.ph4101:                                       ; preds = %.preheader3528, %memoize_extended_match_cache_point.exit3313
  %i.ggv = phi i32 [ %i.gif, %memoize_extended_match_cache_point.exit3313 ], [ %i.gfk, %.preheader3528 ]
  %i.ggw = phi ptr [ %i.gid, %memoize_extended_match_cache_point.exit3313 ], [ %i.gfi, %.preheader3528 ] ; 7 uses
  switch i32 %i.ggv, label %memoize_extended_match_cache_point.exit3313 [
    i32 256, label %.thread3478
    i32 3328, label %bb.bav
    i32 3584, label %bb.baw
  ]

.thread3478:                                      ; preds = %.lr.ph4101
  %i.ggx = getelementptr i8, ptr %i.ggw, i64 -32  ; 2 uses
  %i.ggy = getelementptr i8, ptr %i.ggw, i64 -16
  %i.ggz = load i64, ptr %i.ggy, align 8, !tbaa !66
  %i.gha = load i32, ptr %i.ggx, align 8, !tbaa !66
  %i.ghb = sext i32 %i.gha to i64
  %i.ghc = getelementptr [8 x i8], ptr %i.bq, i64 %i.ghb
  store i64 %i.ggz, ptr %i.ghc, align 8, !tbaa !20
  %i.ghd = getelementptr i8, ptr %i.ggw, i64 -8
  %i.ghe = load i64, ptr %i.ghd, align 8, !tbaa !66
  %i.ghf = load i32, ptr %i.ggx, align 8, !tbaa !66
  %i.ghg = sext i32 %i.ghf to i64
  %i.ghh = getelementptr [8 x i8], ptr %i.bt, i64 %i.ghg
  store i64 %i.ghe, ptr %i.ghh, align 8, !tbaa !20
  br label %memoize_extended_match_cache_point.exit3313

bb.bav:                                           ; preds = %.lr.ph4101
  %i.ghi = getelementptr i8, ptr %i.ggw, i64 -32
  %i.ghj = getelementptr i8, ptr %i.ggw, i64 -24
  %i.ghk = load i8, ptr %i.ghj, align 8, !tbaa !66
  %i.ghl = load ptr, ptr %i.cn, align 8, !tbaa !55
  %i.ghm = load i64, ptr %i.ghi, align 8, !tbaa !66
  %i.ghn = getelementptr i8, ptr %i.ghl, i64 %i.ghm ; 2 uses
  %i.gho = load i8, ptr %i.ghn, align 1, !tbaa !66
  %i.ghp = or i8 %i.gho, %i.ghk
  store i8 %i.ghp, ptr %i.ghn, align 1, !tbaa !66
  br label %memoize_extended_match_cache_point.exit3313

bb.baw:                                           ; preds = %.lr.ph4101
  %i.ghq = load ptr, ptr %i.cn, align 8, !tbaa !55
  %i.ghr = getelementptr i8, ptr %i.ggw, i64 -32
  %i.ghs = load i64, ptr %i.ghr, align 8, !tbaa !66
  %i.ght = getelementptr i8, ptr %i.ggw, i64 -24
  %i.ghu = load i8, ptr %i.ght, align 8, !tbaa !66 ; 3 uses
  %i.ghv = getelementptr i8, ptr %i.ghq, i64 %i.ghs ; 4 uses
  %i.ghw = load i8, ptr %i.ghv, align 1, !tbaa !66
  %i.ghx = or i8 %i.ghw, %i.ghu                   ; 2 uses
  store i8 %i.ghx, ptr %i.ghv, align 1, !tbaa !66
  %.not.i3312 = icmp sgt i8 %i.ghu, -1
  br i1 %.not.i3312, label %bb.bay, label %bb.bax

bb.bax:                                           ; preds = %bb.baw
  %i.ghy = getelementptr i8, ptr %i.ghv, i64 1    ; 2 uses
  %i.ghz = load i8, ptr %i.ghy, align 1, !tbaa !66
  %i.gia = or i8 %i.ghz, 1
  store i8 %i.gia, ptr %i.ghy, align 1, !tbaa !66
  br label %memoize_extended_match_cache_point.exit3313

bb.bay:                                           ; preds = %bb.baw
  %i.gib = shl nuw i8 %i.ghu, 1
  %i.gic = or i8 %i.ghx, %i.gib
  store i8 %i.gic, ptr %i.ghv, align 1, !tbaa !66
  br label %memoize_extended_match_cache_point.exit3313

memoize_extended_match_cache_point.exit3313:      ; preds = %.lr.ph4101, %bb.bay, %bb.bax, %.thread3478, %bb.bav
  %i.gid = load ptr, ptr %i.o, align 8, !tbaa !59 ; 3 uses
  %i.gie = getelementptr i8, ptr %i.gid, i64 -48  ; 2 uses
  store ptr %i.gie, ptr %i.o, align 8, !tbaa !59
  %i.gif = load i32, ptr %i.gie, align 8, !tbaa !63 ; 2 uses
  %i.gig = and i32 %i.gif, 255
  %.not2821 = icmp eq i32 %i.gig, 0
  br i1 %.not2821, label %.lr.ph4101, label %.loopexit3525.loopexit5193

.lr.ph4105:                                       ; preds = %.preheader3524, %memoize_extended_match_cache_point.exit3315
  %i.gih = phi ptr [ %i.gkl, %memoize_extended_match_cache_point.exit3315 ], [ %i.gfr, %.preheader3524 ]
  %i.gii = phi i32 [ %i.gkm, %memoize_extended_match_cache_point.exit3315 ], [ %i.gfs, %.preheader3524 ] ; 2 uses
  %i.gij = phi ptr [ %i.gkk, %memoize_extended_match_cache_point.exit3315 ], [ %i.gfq, %.preheader3524 ] ; 7 uses
  switch i32 %i.gii, label %bb.bbc [
    i32 256, label %bb.baz
    i32 768, label %bb.bba
    i32 33280, label %bb.bbb
  ]

bb.baz:                                           ; preds = %.lr.ph4105
  %i.gik = getelementptr i8, ptr %i.gij, i64 -32  ; 2 uses
  %i.gil = getelementptr i8, ptr %i.gij, i64 -16
  %i.gim = load i64, ptr %i.gil, align 8, !tbaa !66
  %i.gin = load i32, ptr %i.gik, align 8, !tbaa !66
  %i.gio = sext i32 %i.gin to i64
  %i.gip = getelementptr [8 x i8], ptr %i.bq, i64 %i.gio
  store i64 %i.gim, ptr %i.gip, align 8, !tbaa !20
  %i.giq = getelementptr i8, ptr %i.gij, i64 -8
  %i.gir = load i64, ptr %i.giq, align 8, !tbaa !66
  %i.gis = load i32, ptr %i.gik, align 8, !tbaa !66
  %i.git = sext i32 %i.gis to i64
  %i.giu = getelementptr [8 x i8], ptr %i.bt, i64 %i.git
  store i64 %i.gir, ptr %i.giu, align 8, !tbaa !20
  br label %memoize_extended_match_cache_point.exit3315

bb.bba:                                           ; preds = %.lr.ph4105
  %i.giv = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.giw = getelementptr i8, ptr %i.gij, i64 -32
  %i.gix = load i64, ptr %i.giw, align 8, !tbaa !66
  %i.giy = getelementptr [48 x i8], ptr %i.giv, i64 %i.gix
  %i.giz = getelementptr i8, ptr %i.giy, i64 16   ; 2 uses
  %i.gja = load i32, ptr %i.giz, align 8, !tbaa !66
  %i.gjb = add i32 %i.gja, -1
  store i32 %i.gjb, ptr %i.giz, align 8, !tbaa !66
end_hunk_2
begin_hunk_3_@match_at:bb.a
  %i.gkp = getelementptr i8, ptr %i.gid, i64 -48
  br label %.loopexit3525

.loopexit3525:                                    ; preds = %memoize_extended_match_cache_point.exit3315, %.loopexit3525.loopexit5193, %.loopexit3525.loopexit5192, %.preheader3528, %.preheader3526, %.preheader3524
  %.25181 = phi ptr [ %.25187, %.loopexit3525.loopexit5193 ], [ %.25182, %.loopexit3525.loopexit5192 ], [ %.2, %.preheader3524 ], [ %.25187, %.preheader3528 ], [ %.25182, %.preheader3526 ], [ %.2, %memoize_extended_match_cache_point.exit3315 ] ; 2 uses
  %.121885179 = phi i64 [ %.121885186, %.loopexit3525.loopexit5193 ], [ %.121885180, %.loopexit3525.loopexit5192 ], [ %.12188, %.preheader3524 ], [ %.121885186, %.preheader3528 ], [ %.121885180, %.preheader3526 ], [ %.12188, %memoize_extended_match_cache_point.exit3315 ]
  %i.gkq = phi ptr [ %i.gkp, %.loopexit3525.loopexit5193 ], [ %i.gko, %.loopexit3525.loopexit5192 ], [ %i.gfr, %.preheader3524 ], [ %i.gfj, %.preheader3528 ], [ %i.gfn, %.preheader3526 ], [ %i.gkl, %memoize_extended_match_cache_point.exit3315 ] ; 4 uses
  %i.gkr = getelementptr i8, ptr %i.gkq, i64 16
  %i.gks = load ptr, ptr %i.gkr, align 8, !tbaa !66 ; 2 uses
  %i.gkt = getelementptr i8, ptr %i.gkq, i64 24
  %i.gku = load ptr, ptr %i.gkt, align 8, !tbaa !66
  store ptr %i.gku, ptr %i.m, align 8, !tbaa !19
  %i.gkv = getelementptr i8, ptr %i.gkq, i64 32
  %i.gkw = load ptr, ptr %i.gkv, align 8, !tbaa !66
  %i.gkx = getelementptr i8, ptr %i.gkq, i64 40
  %i.gky = load ptr, ptr %i.gkx, align 8, !tbaa !66
  %i.gkz = load i32, ptr %i.cr, align 8, !tbaa !46 ; 2 uses
  %.not2824 = icmp eq i32 %i.gkz, -1
  br i1 %.not2824, label %bb.bbz, label %bb.bbh

bb.bbh:                                           ; preds = %.loopexit3525
  %i.gla = load i64, ptr %i.co, align 8, !tbaa !47
  %i.glb = add i64 %i.gla, 1                      ; 2 uses
  store i64 %i.glb, ptr %i.co, align 8, !tbaa !47
  %i.glc = ptrtoint ptr %.25181 to i64
  %i.gld = sub i64 %i.glc, %i.cv                  ; 3 uses
  %i.gle = load i64, ptr %i.ct, align 8, !tbaa !48 ; 2 uses
  %i.glf = mul i64 %i.gle, %i.gld
  %.not2825 = icmp slt i64 %i.glb, %i.glf
  br i1 %.not2825, label %bb.bbz, label %bb.bbi

bb.bbi:                                           ; preds = %bb.bbh
  %i.glg = icmp eq i32 %i.gkz, 1
  br i1 %i.glg, label %bb.bbj, label %bb.bbm

bb.bbj:                                           ; preds = %bb.bbi
  store i32 2, ptr %i.cr, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.glh = load ptr, ptr %0, align 8, !tbaa !11
  store ptr %i.glh, ptr %i.c, align 8, !tbaa !19
  store i64 0, ptr %i.ct, align 8, !tbaa !20
  %i.gli = call fastcc i64 @count_num_cache_opcodes_inner(ptr noundef nonnull %0, i16 noundef signext -1, i32 noundef 0, ptr noundef %i.c, ptr noundef nonnull %i.ct)
  %i.glj = icmp eq i64 %i.gli, 0
  br i1 %i.glj, label %bb.bbk, label %.thread3484.sink.split

bb.bbk:                                           ; preds = %bb.bbj
  %i.glk = load i64, ptr %i.ct, align 8, !tbaa !20 ; 2 uses
  %i.gll = icmp sgt i64 %i.glk, -1
  br i1 %i.gll, label %bb.bbl, label %count_num_cache_opcodes.exit.thread3480

bb.bbl:                                           ; preds = %bb.bbk
  %i.glm = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.gln = load ptr, ptr %0, align 8, !tbaa !11
  %i.glo = load i32, ptr %i.do, align 8, !tbaa !121
  %i.glp = zext i32 %i.glo to i64
  %i.glq = getelementptr i8, ptr %i.gln, i64 %i.glp
  %.not.i3317 = icmp eq ptr %i.glm, %i.glq
  br i1 %.not.i3317, label %count_num_cache_opcodes.exit.thread3480, label %.thread3484.sink.split

count_num_cache_opcodes.exit.thread3480:          ; preds = %bb.bbk, %bb.bbl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.bbm

bb.bbm:                                           ; preds = %count_num_cache_opcodes.exit.thread3480, %bb.bbi
  %i.glr = phi i64 [ %i.glk, %count_num_cache_opcodes.exit.thread3480 ], [ %i.gle, %bb.bbi ] ; 3 uses
  %.off = add i64 %i.glr, -1
  %switch = icmp ult i64 %.off, -2
  br i1 %switch, label %bb.bbo, label %bb.bbn

bb.bbn:                                           ; preds = %bb.bbm
  store i32 -1, ptr %i.cr, align 8, !tbaa !46
  br label %bb.bbz

bb.bbo:                                           ; preds = %bb.bbm
  %i.gls = load i64, ptr %i.co, align 8, !tbaa !47
  %i.glt = mul i64 %i.glr, %i.gld
  %i.glu = icmp slt i64 %i.gls, %i.glt
  br i1 %i.glu, label %bb.bbz, label %bb.bbp

bb.bbp:                                           ; preds = %bb.bbo
  %i.glv = load ptr, ptr %i.cs, align 8, !tbaa !54
  %i.glw = icmp eq ptr %i.glv, null
  br i1 %i.glw, label %bb.bbq, label %bb.bbv

bb.bbq:                                           ; preds = %bb.bbp
  store i32 0, ptr %i.cr, align 8, !tbaa !46
  %i.glx = mul i64 %i.glr, 56
  %i.gly = call noalias ptr @malloc(i64 noundef %i.glx) #22 ; 3 uses
  %i.glz = icmp eq ptr %i.gly, null
  br i1 %i.glz, label %.loopexit3615, label %bb.bbr

bb.bbr:                                           ; preds = %bb.bbq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.gly, ptr %i.a, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.gma = load ptr, ptr %0, align 8, !tbaa !11
  store ptr %i.gma, ptr %i.b, align 8, !tbaa !19
  store i64 0, ptr %i.cu, align 8, !tbaa !20
  %i.gmb = call fastcc i64 @init_cache_opcodes_inner(ptr noundef nonnull %0, i16 noundef signext -1, i32 noundef 0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.cu) ; 2 uses
  %i.gmc = icmp eq i64 %i.gmb, 0
  br i1 %i.gmc, label %bb.bbs, label %bb.bbt

bb.bbs:                                           ; preds = %bb.bbr
  %i.gmd = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.gme = load ptr, ptr %0, align 8, !tbaa !11
  %i.gmf = load i32, ptr %i.do, align 8, !tbaa !121
  %i.gmg = zext i32 %i.gmf to i64
  %i.gmh = getelementptr i8, ptr %i.gme, i64 %i.gmg
  %.not.i3319 = icmp eq ptr %i.gmd, %i.gmh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not.i3319, label %bb.bbu, label %.thread3484

bb.bbt:                                           ; preds = %bb.bbr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gmi = icmp eq i64 %i.gmb, -14
  br i1 %i.gmi, label %..loopexit3595_crit_edge, label %.thread3484

..loopexit3595_crit_edge:                         ; preds = %bb.bbt
  %.pre4586 = load ptr, ptr %i.n, align 8, !tbaa !59
  br label %.loopexit3595

bb.bbu:                                           ; preds = %bb.bbs
  store ptr %i.gly, ptr %i.cs, align 8, !tbaa !54
  br label %bb.bbv

bb.bbv:                                           ; preds = %bb.bbu, %bb.bbp
  %i.gmj = load ptr, ptr %i.cn, align 8, !tbaa !55
  %i.gmk = icmp eq ptr %i.gmj, null
  br i1 %i.gmk, label %bb.bbw, label %bb.bbz

bb.bbw:                                           ; preds = %bb.bbv
  %i.gml = add i64 %i.gld, 1
  %i.gmm = load i64, ptr %i.cu, align 8, !tbaa !85
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gml, i64 %i.gmm) ; 2 uses
  %mul.val = extractvalue { i64, i1 } %mul, 0     ; 2 uses
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  %i.gmn = icmp ugt i64 %mul.val, 9223372036854775806
  %or.cond2877 = or i1 %mul.ov, %i.gmn
  br i1 %or.cond2877, label %.loopexit3615, label %bb.bbx

bb.bbx:                                           ; preds = %bb.bbw
  %i.gmo = add nuw i64 %mul.val, 7
  %i.gmp = lshr i64 %i.gmo, 3
  %i.gmq = add nuw nsw i64 %i.gmp, 1              ; 2 uses
  %i.gmr = call noalias ptr @malloc(i64 noundef %i.gmq) #22 ; 3 uses
  %i.gms = icmp eq ptr %i.gmr, null
  br i1 %i.gms, label %.loopexit3615, label %bb.bby

bb.bby:                                           ; preds = %bb.bbx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gmr, i8 noundef 0, i64 noundef range(i64 1, 1152921504606846978) %i.gmq, i1 noundef false) #21
  store ptr %i.gmr, ptr %i.cn, align 8, !tbaa !55
  br label %bb.bbz

bb.bbz:                                           ; preds = %bb.bbn, %bb.bbo, %bb.bbv, %bb.bby, %bb.bbh, %.loopexit3525
  %i.gmt = load i32, ptr %i.cw, align 8, !tbaa !44
  %i.gmu = add i32 %i.gmt, 1                      ; 2 uses
  store i32 %i.gmu, ptr %i.cw, align 8, !tbaa !44
  %i.gmv = icmp sgt i32 %i.gmu, 127
  br i1 %i.gmv, label %bb.bca, label %bb.bcc

bb.bca:                                           ; preds = %bb.bbz
  store i32 0, ptr %i.cw, align 8, !tbaa !44
  %i.gmw = call zeroext i1 @rb_reg_timeout_p(ptr noundef nonnull %0, ptr noundef %i.cx) #21
  br i1 %i.gmw, label %bb.bck, label %bb.bcb

bb.bcb:                                           ; preds = %bb.bca
  call void @rb_thread_check_ints() #21
  br label %bb.bcc

bb.bcc:                                           ; preds = %bb.bbz, %bb.bcb
  %i.gmx = getelementptr i8, ptr %i.gks, i64 1
  br label %.backedge.backedge

bb.bcd:                                           ; preds = %.backedge, %bb.ae, %.loopexit3530
  %.22189 = phi i64 [ %.02187, %bb.ae ], [ %.02187, %.loopexit3530 ], [ %.32190, %.backedge ]
  %i.gmy = load ptr, ptr %i.n, align 8, !tbaa !59 ; 3 uses
  %.not2836 = icmp eq ptr %i.gmy, %i.bk
  br i1 %.not2836, label %bb.bcf, label %bb.bce

bb.bce:                                           ; preds = %bb.bcd
  store ptr %i.gmy, ptr %5, align 8, !tbaa !36
  %i.gmz = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.gna = ptrtoint ptr %i.gmz to i64
  %i.gnb = ptrtoint ptr %i.gmy to i64
  %i.gnc = sub i64 %i.gna, %i.gnb
  %i.gnd = sdiv exact i64 %i.gnc, 48
  %i.gne = getelementptr i8, ptr %5, i64 8
  store i64 %i.gnd, ptr %i.gne, align 8, !tbaa !61
  br label %bb.bcf

bb.bcf:                                           ; preds = %bb.bcd, %bb.bce
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3615

.thread3484.sink.split:                           ; preds = %bb.bbj, %bb.bbl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %.thread3484

.thread3484:                                      ; preds = %.thread3484.sink.split, %bb.bbs, %bb.bbt, %.backedge
  %i.gnf = load ptr, ptr %i.n, align 8, !tbaa !59 ; 3 uses
  %.not2830 = icmp eq ptr %i.gnf, %i.bk
  br i1 %.not2830, label %bb.bch, label %bb.bcg

bb.bcg:                                           ; preds = %.thread3484
  store ptr %i.gnf, ptr %5, align 8, !tbaa !36
  %i.gng = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.gnh = ptrtoint ptr %i.gng to i64
  %i.gni = ptrtoint ptr %i.gnf to i64
  %i.gnj = sub i64 %i.gnh, %i.gni
  %i.gnk = sdiv exact i64 %i.gnj, 48
  %i.gnl = getelementptr i8, ptr %5, i64 8
  store i64 %i.gnk, ptr %i.gnl, align 8, !tbaa !61
  br label %bb.bch

bb.bch:                                           ; preds = %.thread3484, %bb.bcg
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3615

.loopexit3595:                                    ; preds = %._crit_edge3998.thread, %..loopexit3595_crit_edge
  %i.gnm = phi ptr [ %.pre4586, %..loopexit3595_crit_edge ], [ %i.crw, %._crit_edge3998.thread ] ; 3 uses
  %.not2828 = icmp eq ptr %i.gnm, %i.bk
  br i1 %.not2828, label %bb.bcj, label %bb.bci

bb.bci:                                           ; preds = %.loopexit3595
  store ptr %i.gnm, ptr %5, align 8, !tbaa !36
  %i.gnn = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.gno = ptrtoint ptr %i.gnn to i64
  %i.gnp = ptrtoint ptr %i.gnm to i64
  %i.gnq = sub i64 %i.gno, %i.gnp
  %i.gnr = sdiv exact i64 %i.gnq, 48
  %i.gns = getelementptr i8, ptr %5, i64 8
  store i64 %i.gnr, ptr %i.gns, align 8, !tbaa !61
  br label %bb.bcj

bb.bcj:                                           ; preds = %.loopexit3595, %bb.bci
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3615

bb.bck:                                           ; preds = %bb.abz, %bb.amz, %bb.aqy, %bb.bca
  %i.gnt = load ptr, ptr %i.n, align 8, !tbaa !59 ; 3 uses
  %.not2829 = icmp eq ptr %i.gnt, %i.bk
  br i1 %.not2829, label %bb.bcm, label %bb.bcl

bb.bcl:                                           ; preds = %bb.bck
  store ptr %i.gnt, ptr %5, align 8, !tbaa !36
  %i.gnu = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.gnv = ptrtoint ptr %i.gnu to i64
  %i.gnw = ptrtoint ptr %i.gnt to i64
  %i.gnx = sub i64 %i.gnv, %i.gnw
  %i.gny = sdiv exact i64 %i.gnx, 48
  %i.gnz = getelementptr i8, ptr %5, i64 8
  store i64 %i.gny, ptr %i.gnz, align 8, !tbaa !61
  br label %bb.bcm

bb.bcm:                                           ; preds = %bb.bck, %bb.bcl
  call void @free(ptr noundef %.02227) #21
  br label %.loopexit3615

.loopexit3615:                                    ; preds = %bb.bbx, %bb.bbw, %bb.bbq, %bb.bcm, %bb.bcj, %bb.bch, %bb.bcf, %bb.bai, %bb.azn, %bb.ays, %bb.ayd, %bb.axo, %bb.aww, %bb.avj, %bb.auo, %bb.atp, %bb.asq, %bb.aru, %bb.aqt, %bb.aqc, %bb.apm, %bb.aow, %bb.any, %bb.amv, %bb.amf, %bb.alp, %bb.akm, %bb.ajw, %bb.aiy, %bb.ail, %bb.ahu, %bb.ahe, %bb.agg, %bb.aft, %bb.afc, %bb.ael, %bb.adm, %bb.acw, %bb.abw, %bb.zz, %bb.vx, %bb.ux, %bb.tz, %bb.ti, %bb.nj, %bb.ms, %bb.ky, %bb.kh, %bb.iv, %bb.if, %bb.gm, %bb.fw
  %.0 = phi i64 [ %.22189, %bb.bcf ], [ -13, %bb.bch ], [ -23, %bb.bcm ], [ %.1.i3308.ph, %bb.bai ], [ -14, %bb.bcj ], [ %.1.i3290.ph, %bb.ayd ], [ %.1.i3296.ph, %bb.ays ], [ %.1.i3302.ph, %bb.azn ], [ %.1.i.ph, %bb.fw ], [ %.1.i2897.ph, %bb.gm ], [ %.1.i2920.ph, %bb.if ], [ %.1.i2926.ph, %bb.iv ], [ %.1.i2943.ph, %bb.kh ], [ %.1.i2949.ph, %bb.ky ], [ %.1.i2972.ph, %bb.ms ], [ %.1.i2978.ph, %bb.nj ], [ %.1.i3039.ph, %bb.ti ], [ %.1.i3045.ph, %bb.tz ], [ %.1.i3051.ph, %bb.ux ], [ %.1.i3057.ph, %bb.vx ], [ %i.dal, %bb.acw ], [ %.1.i3114.ph, %bb.adm ], [ %i.dgc, %bb.ael ], [ %.1.i3128.ph, %bb.afc ], [ %.1.i3134.ph, %bb.aft ], [ %.1.i3140.ph, %bb.agg ], [ %i.dpq, %bb.ahe ], [ %.1.i3154.ph, %bb.ahu ], [ %.1.i3160.ph, %bb.ail ], [ %.1.i3166.ph, %bb.aiy ], [ %i.dyv, %bb.ajw ], [ %.1.i3180.ph, %bb.akm ], [ %.1.i3200.ph, %bb.amv ], [ %i.efa, %bb.alp ], [ %.1.i3194.ph, %bb.amf ], [ %.1.i3206.ph, %bb.any ], [ %i.epm, %bb.aow ], [ %.1.i3220.ph, %bb.apm ], [ %.1.i3226.ph, %bb.aqc ], [ %.1.i3232.ph, %bb.aqt ], [ %.1.i3094.ph, %bb.zz ], [ %.1.i3100.ph, %bb.abw ], [ %.1.i3238.ph, %bb.aru ], [ %.1.i3246.ph, %bb.asq ], [ %.1.i3254.ph, %bb.atp ], [ %.1.i3260.ph, %bb.auo ], [ %.1.i3266.ph, %bb.avj ], [ %.1.i3278.ph, %bb.aww ], [ %.1.i3284.ph, %bb.axo ], [ -5, %bb.bbq ], [ -5, %bb.bbw ], [ -5, %bb.bbx ]
  ret i64 %.0

.backedge:                                        ; preds = %.backedge.backedge, %bb.i
  %.02225 = phi ptr [ %3, %bb.i ], [ %.02225.be, %.backedge.backedge ] ; 111 uses
  %.25 = phi ptr [ %i.ck, %bb.i ], [ %.25.be, %.backedge.backedge ] ; 239 uses
  %.32190 = phi i64 [ -1, %bb.i ], [ %.32190.be, %.backedge.backedge ] ; 313 uses
  %.19 = phi ptr [ %4, %bb.i ], [ %.19.be, %.backedge.backedge ] ; 96 uses
  %.3 = phi ptr [ %2, %bb.i ], [ %.3.be, %.backedge.backedge ] ; 495 uses
  %.pn.in.in = phi ptr [ %i.ai, %bb.i ], [ %.pn.in.in.be, %.backedge.backedge ] ; 13 uses
  %.pn.in = load i8, ptr %.pn.in.in, align 1, !tbaa !66
  %.pn = zext i8 %.pn.in to i64
  %.in = getelementptr [8 x i8], ptr @match_at.oplabels, i64 %.pn
  %i.goa = load ptr, ptr %.in, align 8, !tbaa !86
  indirectbr ptr %i.goa, [label %bb.bcd, label %bb.j, label %bb.af, label %bb.al, label %bb.ap, label %bb.au, label %bb.ba, label %bb.bh, label %bb.bm, label %bb.bq, label %bb.bw, label %bb.ce, label %bb.ch, label %bb.cl, label %bb.ai, label %bb.bj, label %bb.cn, label %bb.ct, label %bb.da, label %bb.df, label %bb.dl, label %bb.dw, label %bb.eb, label %bb.eo, label %bb.et, label %bb.hc, label %bb.je, label %bb.lp, label %bb.nt, label %bb.og, label %bb.ot, label %bb.pm, label %bb.qf, label %bb.qr, label %bb.nz, label %bb.om, label %bb.pa, label %bb.pt, label %bb.qk, label %bb.qw, label %bb.rd, label %bb.rg, label %bb.rj, label %bb.rv, label %bb.sa, label %bb.su, label %bb.wd, label %bb.wb, label %bb.wc, label %bb.wt, label %bb.xm, label %bb.ye, label %bb.yz, label %bb.tm, label %bb.sw, label %bb.tn, label %bb.uf, label %bb.ud, label %bb.vb, label %bb.ue, label %is_mbc_newline_ex.exit.thread, label %bb.aby, label %bb.acc, label %bb.adq, label %.thread3484, label %bb.adr, label %bb.afh, label %bb.ahz, label %bb.akr, label %bb.anj, label %bb.anc, label %bb.arb, label %bb.zn, label %bb.aab, label %bb.aai, label %bb.aav, label %bb.ari, label %bb.ary, label %bb.ase, label %memoize_extended_match_cache_point.exit3249, label %bb.atd, label %bb.att, label %bb.aty, label %bb.aua, label %bb.aut, label %bb.aux, label %bb.avn, label %bb.ayx, label %bb.azb, label %bb.azr, label %bb.bam]
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @onig_search(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @onig_search_gpos(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @onig_search_gpos(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.OnigMatchArg, align 8       ; 44 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.f = icmp ne ptr %6, null                     ; 2 uses
  br i1 %i.f, label %bb.b, label %onig_region_resize_clear.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49
  %i.i = add i32 %i.h, 1
  %i.j = tail call i32 @onig_region_resize(ptr noundef nonnull %6, i32 noundef %i.i) ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %onig_region_resize_clear.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %6, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i, label %onig_region_resize_clear.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.n = getelementptr i8, ptr %6, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 7 uses
  %i.p = getelementptr i8, ptr %6, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25   ; 7 uses
  %wide.trip.count.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 6
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = ptrtoaddr ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  %diff.check = icmp ult i64 %i.t, 32
  %or.cond827 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond827, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.u, align 8, !tbaa !20
  store <2 x i64> splat (i64 -1), ptr %i.v, align 8, !tbaa !20
  %i.w = getelementptr [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.w, align 8, !tbaa !20
  store <2 x i64> splat (i64 -1), ptr %i.x, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %onig_region_resize_clear.exit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.prol
  store i64 -1, ptr %i.z, align 8, !tbaa !20
  %i.aa = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv.i.i.prol
  store i64 -1, ptr %i.aa, align 8, !tbaa !20
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !123

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %onig_region_resize_clear.exit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i
  store i64 -1, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv.i.i
  store i64 -1, ptr %i.ae, align 8, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i
  store i64 -1, ptr %i.af, align 8, !tbaa !20
  %i.ag = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i
  store i64 -1, ptr %i.ag, align 8, !tbaa !20
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.1
  store i64 -1, ptr %i.ah, align 8, !tbaa !20
  %i.ai = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.1
  store i64 -1, ptr %i.ai, align 8, !tbaa !20
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.2
  store i64 -1, ptr %i.aj, align 8, !tbaa !20
  %i.ak = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.2
  store i64 -1, ptr %i.ak, align 8, !tbaa !20
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %onig_region_resize_clear.exit.thread, label %scalar.ph, !llvm.loop !124

onig_region_resize_clear.exit:                    ; preds = %bb.b
  %i.al = sext i32 %i.j to i64
  br label %onig_region_clear.exit

end_hunk_3
