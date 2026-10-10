Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/lzxd?download=true
inline.NumInlined: 32
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@lzxd_decompress:bb.a
  %i.avp = tail call i32 %i.avl(ptr noundef %i.avm, ptr noundef %i.avn, i32 noundef %i.avo) #5, !inline_history !47 ; 3 uses
  %i.avq = icmp slt i32 %i.avp, 0
  br i1 %i.avq, label %bb.jf, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.avr = icmp eq i32 %i.avp, 0
  br i1 %i.avr, label %bb.jd, label %bb.jg

bb.jd:                                            ; preds = %bb.jc
  %i.avs = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1625 = icmp eq i8 %i.avs, 0
  br i1 %.not.i1625, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.avt = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avt, i64 1
  store i8 0, ptr %i.avu, align 1, !tbaa !41
  %i.avv = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.avv, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.jg

bb.jf:                                            ; preds = %bb.jd, %bb.jb
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.jg:                                            ; preds = %bb.je, %bb.jc
  %.0.i1623 = phi i32 [ 2, %bb.je ], [ %i.avp, %bb.jc ]
  %i.avw = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.avw, ptr %i.ab, align 8, !tbaa !42
  %i.avx = zext nneg i32 %.0.i1623 to i64
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avw, i64 %i.avx ; 2 uses
  store ptr %i.avy, ptr %i.ac, align 8, !tbaa !43
  br label %bb.jh

bb.jh:                                            ; preds = %bb.ja, %bb.jg
  %.701259 = phi ptr [ %i.avw, %bb.jg ], [ %i.avh, %bb.ja ] ; 2 uses
  %.70 = phi ptr [ %i.avy, %bb.jg ], [ %.69, %bb.ja ] ; 2 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %.701259, i64 1 ; 2 uses
  %i.awa = load i8, ptr %.701259, align 1, !tbaa !41
  %i.awb = zext i8 %i.awa to i32
  %i.awc = shl nuw nsw i32 %i.awb, 8
  %i.awd = zext i8 %i.avi to i32
  %i.awe = or disjoint i32 %i.awc, %i.awd
  %i.awf = sub i32 16, %.373379
  %i.awg = shl i32 %i.awe, %i.awf
  %i.awh = or i32 %i.awg, %.3711043378            ; 2 uses
  %i.awi = add nsw i32 %.373379, 16               ; 3 uses
  %i.awj = icmp slt i32 %i.awi, %i.auo
  br i1 %i.awj, label %.lr.ph3380, label %._crit_edge3381

._crit_edge3381:                                  ; preds = %bb.jh, %.preheader1880
  %.681257.lcssa = phi ptr [ %.581247, %.preheader1880 ], [ %i.avz, %bb.jh ]
  %.68.lcssa = phi ptr [ %.581186, %.preheader1880 ], [ %.70, %bb.jh ]
  %.371104.lcssa = phi i32 [ %.311098, %.preheader1880 ], [ %i.awh, %bb.jh ] ; 2 uses
  %.37.lcssa = phi i32 [ %.31, %.preheader1880 ], [ %i.awi, %bb.jh ]
  %i.awk = sub nsw i32 32, %i.auo
  %i.awl = lshr i32 %.371104.lcssa, %i.awk
  %i.awm = shl i32 %.371104.lcssa, %i.auo
  %i.awn = sub nsw i32 %.37.lcssa, %i.auo
  %i.awo = add i32 %i.awl, %i.aup
  br label %bb.ji

bb.ji:                                            ; preds = %.loopexit1878, %._crit_edge3381, %bb.it, %bb.hu, %bb.hw, %bb.hv
  %.731262 = phi ptr [ %.581247, %bb.hu ], [ %.581247, %bb.hw ], [ %.581247, %bb.hv ], [ %.641253.lcssa, %.loopexit1878 ], [ %.681257.lcssa, %._crit_edge3381 ], [ %.581247, %bb.it ] ; 4 uses
  %.73 = phi ptr [ %.581186, %bb.hu ], [ %.581186, %bb.hw ], [ %.581186, %bb.hv ], [ %.64.lcssa, %.loopexit1878 ], [ %.68.lcssa, %._crit_edge3381 ], [ %.581186, %bb.it ] ; 4 uses
  %.401107 = phi i32 [ %.311098, %bb.hu ], [ %.311098, %bb.hw ], [ %.311098, %bb.hv ], [ %i.aul, %.loopexit1878 ], [ %i.awm, %._crit_edge3381 ], [ %.311098, %bb.it ] ; 4 uses
  %.40 = phi i32 [ %.31, %bb.hu ], [ %.31, %bb.hw ], [ %.31, %bb.hv ], [ %i.aum, %.loopexit1878 ], [ %i.awn, %._crit_edge3381 ], [ %.31, %bb.it ] ; 5 uses
  %.51002 = phi i32 [ %.410013484, %bb.hu ], [ %.410013484, %bb.hw ], [ %.410103483, %bb.hv ], [ %.410103483, %.loopexit1878 ], [ %.410103483, %._crit_edge3381 ], [ %.410103483, %bb.it ]
  %.5993 = phi i32 [ %.49923485, %bb.hu ], [ %.410103483, %bb.hw ], [ %.49923485, %bb.hv ], [ %.410013484, %.loopexit1878 ], [ %.410013484, %._crit_edge3381 ], [ %.410013484, %bb.it ]
  %.2 = phi i32 [ %.410103483, %bb.hu ], [ %.49923485, %bb.hw ], [ %.410013484, %bb.hv ], [ %i.aun, %.loopexit1878 ], [ %i.awo, %._crit_edge3381 ], [ %i.akw, %bb.it ] ; 5 uses
  %i.awp = icmp eq i32 %i.akn, 257
  br i1 %i.awp, label %bb.jj, label %bb.lr

bb.jj:                                            ; preds = %bb.ji
  %i.awq = load i8, ptr %i.bi, align 8, !tbaa !34
  %.not1497 = icmp eq i8 %i.awq, 0
  br i1 %.not1497, label %bb.lr, label %.preheader

.preheader:                                       ; preds = %bb.jj
  %i.awr = icmp slt i32 %.40, 3
  br i1 %i.awr, label %.lr.ph3412, label %._crit_edge3413

.lr.ph3412:                                       ; preds = %.preheader, %bb.jx
  %.413411 = phi i32 [ %i.ayj, %bb.jx ], [ %.40, %.preheader ] ; 3 uses
  %.4111083410 = phi i32 [ %i.ayi, %bb.jx ], [ %.401107, %.preheader ]
  %.743409 = phi ptr [ %.76, %bb.jx ], [ %.73, %.preheader ] ; 2 uses
  %.7412633408 = phi ptr [ %i.aya, %bb.jx ], [ %.731262, %.preheader ] ; 2 uses
  %.not1514 = icmp ult ptr %.7412633408, %.743409
  br i1 %.not1514, label %bb.jq, label %bb.jk

bb.jk:                                            ; preds = %.lr.ph3412
  %i.aws = load ptr, ptr %0, align 8, !tbaa !18
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 16
  %i.awu = load ptr, ptr %i.awt, align 8, !tbaa !46
  %i.awv = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.aww = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.awx = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.awy = tail call i32 %i.awu(ptr noundef %i.awv, ptr noundef %i.aww, i32 noundef %i.awx) #5, !inline_history !47 ; 3 uses
  %i.awz = icmp slt i32 %i.awy, 0
  br i1 %i.awz, label %bb.jo, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.axa = icmp eq i32 %i.awy, 0
  br i1 %i.axa, label %bb.jm, label %bb.jp

bb.jm:                                            ; preds = %bb.jl
  %i.axb = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1629 = icmp eq i8 %i.axb, 0
  br i1 %.not.i1629, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.axc = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 1
  store i8 0, ptr %i.axd, align 1, !tbaa !41
  %i.axe = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.axe, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.jp

bb.jo:                                            ; preds = %bb.jm, %bb.jk
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.jp:                                            ; preds = %bb.jn, %bb.jl
  %.0.i1627 = phi i32 [ 2, %bb.jn ], [ %i.awy, %bb.jl ]
  %i.axf = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.axf, ptr %i.ab, align 8, !tbaa !42
  %i.axg = zext nneg i32 %.0.i1627 to i64
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axf, i64 %i.axg ; 2 uses
  store ptr %i.axh, ptr %i.ac, align 8, !tbaa !43
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %.lr.ph3412
  %.751264 = phi ptr [ %i.axf, %bb.jp ], [ %.7412633408, %.lr.ph3412 ] ; 2 uses
  %.75 = phi ptr [ %i.axh, %bb.jp ], [ %.743409, %.lr.ph3412 ] ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %.751264, i64 1 ; 2 uses
  %i.axj = load i8, ptr %.751264, align 1, !tbaa !41
  %.not1516 = icmp ult ptr %i.axi, %.75
  br i1 %.not1516, label %bb.jx, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.axk = load ptr, ptr %0, align 8, !tbaa !18
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 16
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !46
  %i.axn = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.axo = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.axp = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.axq = tail call i32 %i.axm(ptr noundef %i.axn, ptr noundef %i.axo, i32 noundef %i.axp) #5, !inline_history !47 ; 3 uses
  %i.axr = icmp slt i32 %i.axq, 0
  br i1 %i.axr, label %bb.jv, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.axs = icmp eq i32 %i.axq, 0
  br i1 %i.axs, label %bb.jt, label %bb.jw

bb.jt:                                            ; preds = %bb.js
  %i.axt = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1633 = icmp eq i8 %i.axt, 0
  br i1 %.not.i1633, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.axu = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 1
  store i8 0, ptr %i.axv, align 1, !tbaa !41
  %i.axw = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.axw, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.jw

bb.jv:                                            ; preds = %bb.jt, %bb.jr
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.jw:                                            ; preds = %bb.ju, %bb.js
  %.0.i1631 = phi i32 [ 2, %bb.ju ], [ %i.axq, %bb.js ]
  %i.axx = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.axx, ptr %i.ab, align 8, !tbaa !42
  %i.axy = zext nneg i32 %.0.i1631 to i64
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axx, i64 %i.axy ; 2 uses
  store ptr %i.axz, ptr %i.ac, align 8, !tbaa !43
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jq, %bb.jw
  %.761265 = phi ptr [ %i.axx, %bb.jw ], [ %i.axi, %bb.jq ] ; 2 uses
  %.76 = phi ptr [ %i.axz, %bb.jw ], [ %.75, %bb.jq ] ; 2 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %.761265, i64 1 ; 2 uses
  %i.ayb = load i8, ptr %.761265, align 1, !tbaa !41
  %i.ayc = zext i8 %i.ayb to i32
  %i.ayd = shl nuw nsw i32 %i.ayc, 8
  %i.aye = zext i8 %i.axj to i32
  %i.ayf = or disjoint i32 %i.ayd, %i.aye
  %i.ayg = sub i32 16, %.413411
  %i.ayh = shl i32 %i.ayf, %i.ayg
  %i.ayi = or i32 %i.ayh, %.4111083410            ; 2 uses
  %i.ayj = add nsw i32 %.413411, 16               ; 2 uses
  %i.ayk = icmp slt i32 %.413411, -13
  br i1 %i.ayk, label %.lr.ph3412, label %._crit_edge3413

._crit_edge3413:                                  ; preds = %bb.jx, %.preheader
  %.741263.lcssa = phi ptr [ %.731262, %.preheader ], [ %i.aya, %bb.jx ] ; 8 uses
  %.74.lcssa = phi ptr [ %.73, %.preheader ], [ %.76, %bb.jx ] ; 8 uses
  %.411108.lcssa = phi i32 [ %.401107, %.preheader ], [ %i.ayi, %bb.jx ] ; 6 uses
  %.41.lcssa = phi i32 [ %.40, %.preheader ], [ %i.ayj, %bb.jx ] ; 7 uses
  %i.ayl = icmp sgt i32 %.411108.lcssa, -1
  br i1 %i.ayl, label %bb.jy, label %bb.kn

bb.jy:                                            ; preds = %._crit_edge3413
  %i.aym = shl nuw i32 %.411108.lcssa, 1          ; 2 uses
  %i.ayn = add nsw i32 %.41.lcssa, -1             ; 2 uses
  %i.ayo = icmp samesign ult i32 %.41.lcssa, 9
  br i1 %i.ayo, label %.lr.ph3456, label %._crit_edge3457

.lr.ph3456:                                       ; preds = %bb.jy, %bb.km
  %.433454 = phi i32 [ %3, %bb.km ], [ %i.ayn, %bb.jy ] ; 3 uses
  %.4311103453 = phi i32 [ %i.bae, %bb.km ], [ %i.aym, %bb.jy ]
  %.783452 = phi ptr [ %.80, %bb.km ], [ %.74.lcssa, %bb.jy ] ; 2 uses
  %.7812673451 = phi ptr [ %2, %bb.km ], [ %.741263.lcssa, %bb.jy ] ; 2 uses
  %.not1510 = icmp ult ptr %.7812673451, %.783452
  br i1 %.not1510, label %bb.kf, label %bb.jz

bb.jz:                                            ; preds = %.lr.ph3456
  %i.ayp = load ptr, ptr %0, align 8, !tbaa !18
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 16
  %i.ayr = load ptr, ptr %i.ayq, align 8, !tbaa !46
  %i.ays = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.ayt = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.ayu = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.ayv = tail call i32 %i.ayr(ptr noundef %i.ays, ptr noundef %i.ayt, i32 noundef %i.ayu) #5, !inline_history !47 ; 3 uses
  %i.ayw = icmp slt i32 %i.ayv, 0
  br i1 %i.ayw, label %bb.kd, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.ayx = icmp eq i32 %i.ayv, 0
  br i1 %i.ayx, label %bb.kb, label %bb.ke

bb.kb:                                            ; preds = %bb.ka
  %i.ayy = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1637 = icmp eq i8 %i.ayy, 0
  br i1 %.not.i1637, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.ayz = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 1
  store i8 0, ptr %i.aza, align 1, !tbaa !41
  %i.azb = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.azb, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.ke

bb.kd:                                            ; preds = %bb.kb, %bb.jz
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ke:                                            ; preds = %bb.kc, %bb.ka
  %.0.i1635 = phi i32 [ 2, %bb.kc ], [ %i.ayv, %bb.ka ]
  %i.azc = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.azc, ptr %i.ab, align 8, !tbaa !42
  %i.azd = zext nneg i32 %.0.i1635 to i64
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azc, i64 %i.azd ; 2 uses
  store ptr %i.aze, ptr %i.ac, align 8, !tbaa !43
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %.lr.ph3456
  %.791268 = phi ptr [ %i.azc, %bb.ke ], [ %.7812673451, %.lr.ph3456 ] ; 2 uses
  %.79 = phi ptr [ %i.aze, %bb.ke ], [ %.783452, %.lr.ph3456 ] ; 2 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %.791268, i64 1 ; 2 uses
  %i.azg = load i8, ptr %.791268, align 1, !tbaa !41
  %.not1512 = icmp ult ptr %i.azf, %.79
  br i1 %.not1512, label %bb.km, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.azh = load ptr, ptr %0, align 8, !tbaa !18
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 16
  %i.azj = load ptr, ptr %i.azi, align 8, !tbaa !46
  %i.azk = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.azl = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.azm = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.azn = tail call i32 %i.azj(ptr noundef %i.azk, ptr noundef %i.azl, i32 noundef %i.azm) #5, !inline_history !47 ; 3 uses
  %i.azo = icmp slt i32 %i.azn, 0
  br i1 %i.azo, label %bb.kk, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.azp = icmp eq i32 %i.azn, 0
  br i1 %i.azp, label %bb.ki, label %bb.kl

bb.ki:                                            ; preds = %bb.kh
  %i.azq = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1641 = icmp eq i8 %i.azq, 0
  br i1 %.not.i1641, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.azr = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 1
  store i8 0, ptr %i.azs, align 1, !tbaa !41
  %i.azt = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.azt, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.kl

bb.kk:                                            ; preds = %bb.ki, %bb.kg
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.kl:                                            ; preds = %bb.kj, %bb.kh
  %.0.i1639 = phi i32 [ 2, %bb.kj ], [ %i.azn, %bb.kh ]
  %i.azu = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.azu, ptr %i.ab, align 8, !tbaa !42
  %i.azv = zext nneg i32 %.0.i1639 to i64
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azu, i64 %i.azv ; 2 uses
  store ptr %i.azw, ptr %i.ac, align 8, !tbaa !43
  br label %bb.km

bb.km:                                            ; preds = %bb.kf, %bb.kl
  %.801269 = phi ptr [ %i.azu, %bb.kl ], [ %i.azf, %bb.kf ] ; 2 uses
  %.80 = phi ptr [ %i.azw, %bb.kl ], [ %.79, %bb.kf ] ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %.801269, i64 1 ; 2 uses
  %i.azx = load i8, ptr %.801269, align 1, !tbaa !41
  %i.azy = zext i8 %i.azx to i32
  %i.azz = shl nuw nsw i32 %i.azy, 8
  %i.baa = zext i8 %i.azg to i32
  %i.bab = or disjoint i32 %i.azz, %i.baa
  %i.bac = sub nuw nsw i32 16, %.433454
  %i.bad = shl nuw nsw i32 %i.bab, %i.bac
  %i.bae = or i32 %i.bad, %.4311103453            ; 2 uses
  %3 = add nuw nsw i32 %.433454, 16               ; 2 uses
  %4 = icmp slt i32 %.433454, -8
  br i1 %4, label %.lr.ph3456, label %._crit_edge3457

._crit_edge3457:                                  ; preds = %bb.km, %bb.jy
  %.781267.lcssa = phi ptr [ %.741263.lcssa, %bb.jy ], [ %2, %bb.km ]
  %.78.lcssa = phi ptr [ %.74.lcssa, %bb.jy ], [ %.80, %bb.km ]
  %.431110.lcssa = phi i32 [ %i.aym, %bb.jy ], [ %i.bae, %bb.km ] ; 2 uses
  %.43.lcssa = phi i32 [ %i.ayn, %bb.jy ], [ %3, %bb.km ]
  %i.baf = lshr i32 %.431110.lcssa, 24
  %i.bag = shl i32 %.431110.lcssa, 8
  %i.bah = add nsw i32 %.43.lcssa, -8
  br label %bb.lq

bb.kn:                                            ; preds = %._crit_edge3413
  %i.bai = icmp samesign ult i32 %.411108.lcssa, -1073741824
  br i1 %i.bai, label %bb.ko, label %bb.kx

bb.ko:                                            ; preds = %bb.kn
  %i.baj = shl i32 %.411108.lcssa, 2              ; 2 uses
  %i.bak = add nsw i32 %.41.lcssa, -2             ; 2 uses
  %i.bal = icmp samesign ult i32 %.41.lcssa, 12
  br i1 %i.bal, label %.lr.ph3445, label %._crit_edge3446

.lr.ph3445:                                       ; preds = %bb.ko, %bb.kw
  %.453443 = phi i32 [ %6, %bb.kw ], [ %i.bak, %bb.ko ] ; 3 uses
  %.4511123442 = phi i32 [ %i.bbd, %bb.kw ], [ %i.baj, %bb.ko ]
  %.823441 = phi ptr [ %.84, %bb.kw ], [ %.74.lcssa, %bb.ko ] ; 2 uses
  %.8212713440 = phi ptr [ %5, %bb.kw ], [ %.741263.lcssa, %bb.ko ] ; 2 uses
  %.not1506 = icmp ult ptr %.8212713440, %.823441
  br i1 %.not1506, label %bb.ks, label %bb.kp

bb.kp:                                            ; preds = %.lr.ph3445
  %i.bam = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1507 = icmp eq i32 %i.bam, 0
  br i1 %.not1507, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.ban = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.kr:                                            ; preds = %bb.kp
  %i.bao = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.bap = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %.lr.ph3445
  %.831272 = phi ptr [ %i.bao, %bb.kr ], [ %.8212713440, %.lr.ph3445 ] ; 2 uses
  %.83 = phi ptr [ %i.bap, %bb.kr ], [ %.823441, %.lr.ph3445 ] ; 2 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %.831272, i64 1 ; 2 uses
  %i.bar = load i8, ptr %.831272, align 1, !tbaa !41
  %.not1508 = icmp ult ptr %i.baq, %.83
  br i1 %.not1508, label %bb.kw, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.bas = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1509 = icmp eq i32 %i.bas, 0
  br i1 %.not1509, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bat = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.kv:                                            ; preds = %bb.kt
  %i.bau = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.bav = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.kw

bb.kw:                                            ; preds = %bb.ks, %bb.kv
  %.841273 = phi ptr [ %i.bau, %bb.kv ], [ %i.baq, %bb.ks ] ; 2 uses
  %.84 = phi ptr [ %i.bav, %bb.kv ], [ %.83, %bb.ks ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.841273, i64 1 ; 2 uses
  %i.baw = load i8, ptr %.841273, align 1, !tbaa !41
  %i.bax = zext i8 %i.baw to i32
  %i.bay = shl nuw nsw i32 %i.bax, 8
  %i.baz = zext i8 %i.bar to i32
  %i.bba = or disjoint i32 %i.bay, %i.baz
  %i.bbb = sub nuw nsw i32 16, %.453443
  %i.bbc = shl nuw nsw i32 %i.bba, %i.bbb
  %i.bbd = or i32 %i.bbc, %.4511123442            ; 2 uses
  %6 = add nuw nsw i32 %.453443, 16               ; 2 uses
  %7 = icmp slt i32 %.453443, -6
  br i1 %7, label %.lr.ph3445, label %._crit_edge3446

._crit_edge3446:                                  ; preds = %bb.kw, %bb.ko
  %.821271.lcssa = phi ptr [ %.741263.lcssa, %bb.ko ], [ %5, %bb.kw ]
  %.82.lcssa = phi ptr [ %.74.lcssa, %bb.ko ], [ %.84, %bb.kw ]
  %.451112.lcssa = phi i32 [ %i.baj, %bb.ko ], [ %i.bbd, %bb.kw ] ; 2 uses
  %.45.lcssa = phi i32 [ %i.bak, %bb.ko ], [ %6, %bb.kw ]
  %i.bbe = lshr i32 %.451112.lcssa, 22
  %i.bbf = shl i32 %.451112.lcssa, 10
  %i.bbg = add nsw i32 %.45.lcssa, -10
  %i.bbh = add nuw nsw i32 %i.bbe, 256
  br label %bb.lq

bb.kx:                                            ; preds = %bb.kn
  %i.bbi = icmp samesign ult i32 %.411108.lcssa, -536870912
  %i.bbj = shl i32 %.411108.lcssa, 3              ; 4 uses
  %i.bbk = add nsw i32 %.41.lcssa, -3             ; 4 uses
  br i1 %i.bbi, label %bb.ky, label %bb.lh

bb.ky:                                            ; preds = %bb.kx
  %i.bbl = icmp samesign ult i32 %.41.lcssa, 15
  br i1 %i.bbl, label %.lr.ph3434, label %._crit_edge3435

.lr.ph3434:                                       ; preds = %bb.ky, %bb.lg
  %.473432 = phi i32 [ %9, %bb.lg ], [ %i.bbk, %bb.ky ] ; 3 uses
  %.4711143431 = phi i32 [ %i.bcd, %bb.lg ], [ %i.bbj, %bb.ky ]
  %.863430 = phi ptr [ %.88, %bb.lg ], [ %.74.lcssa, %bb.ky ] ; 2 uses
  %.8612753429 = phi ptr [ %8, %bb.lg ], [ %.741263.lcssa, %bb.ky ] ; 2 uses
  %.not1502 = icmp ult ptr %.8612753429, %.863430
  br i1 %.not1502, label %bb.lc, label %bb.kz

bb.kz:                                            ; preds = %.lr.ph3434
  %i.bbm = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1503 = icmp eq i32 %i.bbm, 0
  br i1 %.not1503, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.bbn = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.lb:                                            ; preds = %bb.kz
  %i.bbo = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.bbp = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %.lr.ph3434
  %.871276 = phi ptr [ %i.bbo, %bb.lb ], [ %.8612753429, %.lr.ph3434 ] ; 2 uses
  %.87 = phi ptr [ %i.bbp, %bb.lb ], [ %.863430, %.lr.ph3434 ] ; 2 uses
  %i.bbq = getelementptr inbounds nuw i8, ptr %.871276, i64 1 ; 2 uses
  %i.bbr = load i8, ptr %.871276, align 1, !tbaa !41
  %.not1504 = icmp ult ptr %i.bbq, %.87
  br i1 %.not1504, label %bb.lg, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.bbs = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1505 = icmp eq i32 %i.bbs, 0
  br i1 %.not1505, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bbt = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.lf:                                            ; preds = %bb.ld
  %i.bbu = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.bbv = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lc, %bb.lf
  %.881277 = phi ptr [ %i.bbu, %bb.lf ], [ %i.bbq, %bb.lc ] ; 2 uses
  %.88 = phi ptr [ %i.bbv, %bb.lf ], [ %.87, %bb.lc ] ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.881277, i64 1 ; 2 uses
  %i.bbw = load i8, ptr %.881277, align 1, !tbaa !41
  %i.bbx = zext i8 %i.bbw to i32
  %i.bby = shl nuw nsw i32 %i.bbx, 8
  %i.bbz = zext i8 %i.bbr to i32
  %i.bca = or disjoint i32 %i.bby, %i.bbz
  %i.bcb = sub nuw nsw i32 16, %.473432
  %i.bcc = shl nuw i32 %i.bca, %i.bcb
  %i.bcd = or i32 %i.bcc, %.4711143431            ; 2 uses
  %9 = add nuw nsw i32 %.473432, 16               ; 2 uses
  %10 = icmp slt i32 %.473432, -4
  br i1 %10, label %.lr.ph3434, label %._crit_edge3435

._crit_edge3435:                                  ; preds = %bb.lg, %bb.ky
  %.861275.lcssa = phi ptr [ %.741263.lcssa, %bb.ky ], [ %8, %bb.lg ]
  %.86.lcssa = phi ptr [ %.74.lcssa, %bb.ky ], [ %.88, %bb.lg ]
  %.471114.lcssa = phi i32 [ %i.bbj, %bb.ky ], [ %i.bcd, %bb.lg ] ; 2 uses
  %.47.lcssa = phi i32 [ %i.bbk, %bb.ky ], [ %9, %bb.lg ]
  %i.bce = lshr i32 %.471114.lcssa, 20
  %i.bcf = shl i32 %.471114.lcssa, 12
  %i.bcg = add nsw i32 %.47.lcssa, -12
  %i.bch = add nuw nsw i32 %i.bce, 1280
  br label %bb.lq

bb.lh:                                            ; preds = %bb.kx
  %i.bci = icmp samesign ult i32 %.41.lcssa, 18
  br i1 %i.bci, label %.lr.ph3423, label %._crit_edge3424

.lr.ph3423:                                       ; preds = %bb.lh, %bb.lp
  %.493421 = phi i32 [ %i.bdc, %bb.lp ], [ %i.bbk, %bb.lh ] ; 3 uses
  %.4911163420 = phi i32 [ %i.bdb, %bb.lp ], [ %i.bbj, %bb.lh ]
  %.903419 = phi ptr [ %.92, %bb.lp ], [ %.74.lcssa, %bb.lh ] ; 2 uses
  %.9012793418 = phi ptr [ %i.bct, %bb.lp ], [ %.741263.lcssa, %bb.lh ] ; 2 uses
  %.not1498 = icmp ult ptr %.9012793418, %.903419
  br i1 %.not1498, label %bb.ll, label %bb.li

bb.li:                                            ; preds = %.lr.ph3423
  %i.bcj = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1499 = icmp eq i32 %i.bcj, 0
  br i1 %.not1499, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bck = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.lk:                                            ; preds = %bb.li
  %i.bcl = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.bcm = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %.lr.ph3423
  %.911280 = phi ptr [ %i.bcl, %bb.lk ], [ %.9012793418, %.lr.ph3423 ] ; 2 uses
  %.91 = phi ptr [ %i.bcm, %bb.lk ], [ %.903419, %.lr.ph3423 ] ; 2 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %.911280, i64 1 ; 2 uses
  %i.bco = load i8, ptr %.911280, align 1, !tbaa !41
  %.not1500 = icmp ult ptr %i.bcn, %.91
  br i1 %.not1500, label %bb.lp, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.bcp = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1501 = icmp eq i32 %i.bcp, 0
  br i1 %.not1501, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.bcq = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.lo:                                            ; preds = %bb.lm
  %i.bcr = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.bcs = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.lp

bb.lp:                                            ; preds = %bb.ll, %bb.lo
  %.921281 = phi ptr [ %i.bcr, %bb.lo ], [ %i.bcn, %bb.ll ] ; 2 uses
  %.92 = phi ptr [ %i.bcs, %bb.lo ], [ %.91, %bb.ll ] ; 2 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %.921281, i64 1 ; 2 uses
  %i.bcu = load i8, ptr %.921281, align 1, !tbaa !41
  %i.bcv = zext i8 %i.bcu to i32
  %i.bcw = shl nuw nsw i32 %i.bcv, 8
  %i.bcx = zext i8 %i.bco to i32
  %i.bcy = or disjoint i32 %i.bcw, %i.bcx
  %i.bcz = sub nuw nsw i32 16, %.493421
  %i.bda = shl nuw i32 %i.bcy, %i.bcz
  %i.bdb = or i32 %i.bda, %.4911163420            ; 2 uses
  %i.bdc = add nuw nsw i32 %.493421, 16           ; 2 uses
  %i.bdd = icmp slt i32 %.493421, -1
  br i1 %i.bdd, label %.lr.ph3423, label %._crit_edge3424

._crit_edge3424:                                  ; preds = %bb.lp, %bb.lh
  %.901279.lcssa = phi ptr [ %.741263.lcssa, %bb.lh ], [ %i.bct, %bb.lp ]
  %.90.lcssa = phi ptr [ %.74.lcssa, %bb.lh ], [ %.92, %bb.lp ]
  %.491116.lcssa = phi i32 [ %i.bbj, %bb.lh ], [ %i.bdb, %bb.lp ] ; 2 uses
  %.49.lcssa = phi i32 [ %i.bbk, %bb.lh ], [ %i.bdc, %bb.lp ]
  %i.bde = lshr i32 %.491116.lcssa, 17
  %i.bdf = shl i32 %.491116.lcssa, 15
  %i.bdg = add nsw i32 %.49.lcssa, -15
  br label %bb.lq

bb.lq:                                            ; preds = %._crit_edge3457, %._crit_edge3435, %._crit_edge3424, %._crit_edge3446
  %.941283 = phi ptr [ %.781267.lcssa, %._crit_edge3457 ], [ %.821271.lcssa, %._crit_edge3446 ], [ %.861275.lcssa, %._crit_edge3435 ], [ %.901279.lcssa, %._crit_edge3424 ]
  %.94 = phi ptr [ %.78.lcssa, %._crit_edge3457 ], [ %.82.lcssa, %._crit_edge3446 ], [ %.86.lcssa, %._crit_edge3435 ], [ %.90.lcssa, %._crit_edge3424 ]
  %.511118 = phi i32 [ %i.bag, %._crit_edge3457 ], [ %i.bbf, %._crit_edge3446 ], [ %i.bcf, %._crit_edge3435 ], [ %i.bdf, %._crit_edge3424 ]
  %.51 = phi i32 [ %i.bah, %._crit_edge3457 ], [ %i.bbg, %._crit_edge3446 ], [ %i.bcg, %._crit_edge3435 ], [ %i.bdg, %._crit_edge3424 ]
  %.0961 = phi i32 [ %i.baf, %._crit_edge3457 ], [ %i.bbh, %._crit_edge3446 ], [ %i.bch, %._crit_edge3435 ], [ %i.bde, %._crit_edge3424 ]
  %i.bdh = add nuw nsw i32 %.0961, 257
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.jj, %bb.ji
  %.961285 = phi ptr [ %.941283, %bb.lq ], [ %.731262, %bb.jj ], [ %.731262, %bb.ji ]
  %.96 = phi ptr [ %.94, %bb.lq ], [ %.73, %bb.jj ], [ %.73, %bb.ji ]
  %.531120 = phi i32 [ %.511118, %bb.lq ], [ %.401107, %bb.jj ], [ %.401107, %bb.ji ]
  %.53 = phi i32 [ %.51, %bb.lq ], [ %.40, %bb.jj ], [ %.40, %bb.ji ]
  %.2965 = phi i32 [ %i.bdh, %bb.lq ], [ 257, %bb.jj ], [ %i.akn, %bb.ji ] ; 10 uses
  %i.bdi = add i32 %.2965, %.210173482            ; 2 uses
  %i.bdj = load i32, ptr %i.bz, align 8, !tbaa !24 ; 3 uses
  %i.bdk = icmp ugt i32 %i.bdi, %i.bdj
  br i1 %i.bdk, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.lt:                                            ; preds = %bb.lr
  %i.bdl = zext i32 %.210173482 to i64            ; 2 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bdl ; 13 uses
  %i.bdn = icmp ugt i32 %.2, %.210173482
  %i.bdo = zext i32 %.2 to i64                    ; 2 uses
  br i1 %i.bdn, label %bb.lu, label %iter.check4199

bb.lu:                                            ; preds = %bb.lt
  %i.bdp = load i64, ptr %i.al, align 8, !tbaa !21
  %i.bdq = icmp slt i64 %i.bdp, %i.bdo
  %i.bdr = sub nuw i32 %.2, %.210173482           ; 12 uses
  br i1 %i.bdq, label %bb.lv, label %._crit_edge3648

bb.lv:                                            ; preds = %bb.lu
  %i.bds = load i32, ptr %i.ca, align 4, !tbaa !25
  %i.bdt = icmp ugt i32 %i.bdr, %i.bds
  br i1 %i.bdt, label %bb.lw, label %._crit_edge3648

bb.lw:                                            ; preds = %bb.lv
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

._crit_edge3648:                                  ; preds = %bb.lu, %bb.lv
  %i.bdu = icmp sgt i32 %i.bdr, %i.bdj
  br i1 %i.bdu, label %bb.lx, label %bb.ly

bb.lx:                                            ; preds = %._crit_edge3648
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ly:                                            ; preds = %._crit_edge3648
  %i.bdv = sub i32 %i.bdj, %i.bdr
  %i.bdw = zext i32 %i.bdv to i64                 ; 2 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bdw ; 6 uses
  %i.bdy = icmp slt i32 %i.bdr, %.2965
  br i1 %i.bdy, label %bb.lz, label %.loopexit1875

bb.lz:                                            ; preds = %bb.ly
  %i.bdz = sub nsw i32 %.2965, %i.bdr             ; 4 uses
  %i.bea = icmp sgt i32 %i.bdr, 0
  br i1 %i.bea, label %iter.check4163, label %.loopexit1875

iter.check4163:                                   ; preds = %bb.lz
  %i.beb = zext nneg i32 %i.bdr to i64            ; 5 uses
  %min.iters.check4146 = icmp ult i32 %i.bdr, 4
  %i.bec = sub nsw i64 %i.bdw, %i.bdl
  %diff.check4145 = icmp ugt i64 %i.bec, -32
  %or.cond4216 = select i1 %min.iters.check4146, i1 true, i1 %diff.check4145
  br i1 %or.cond4216, label %.lr.ph3471.preheader, label %vector.main.loop.iter.check4147

vector.main.loop.iter.check4147:                  ; preds = %iter.check4163
  %min.iters.check4148 = icmp ult i32 %i.bdr, 32
  br i1 %min.iters.check4148, label %vec.epilog.ph4167, label %vector.ph4149

vector.ph4149:                                    ; preds = %vector.main.loop.iter.check4147
  %i.bed = and i64 %i.beb, 28
  %n.vec4150 = and i64 %i.beb, 2147483616         ; 6 uses
  %i.bee = trunc nuw nsw i64 %n.vec4150 to i32
  %i.bef = sub nsw i32 %i.bdr, %i.bee
  %i.beg = getelementptr i8, ptr %i.bdm, i64 %n.vec4150 ; 2 uses
  %i.beh = getelementptr i8, ptr %i.bdx, i64 %n.vec4150
  br label %vector.body4151

vector.body4151:                                  ; preds = %vector.ph4149, %vector.body4151
  %index4152 = phi i64 [ 0, %vector.ph4149 ], [ %index.next4157, %vector.body4151 ] ; 3 uses
  %next.gep4153 = getelementptr i8, ptr %i.bdm, i64 %index4152 ; 2 uses
  %next.gep4154 = getelementptr i8, ptr %i.bdx, i64 %index4152 ; 2 uses
  %i.bei = getelementptr i8, ptr %next.gep4154, i64 16
  %wide.load4155 = load <16 x i8>, ptr %next.gep4154, align 1, !tbaa !41
  %wide.load4156 = load <16 x i8>, ptr %i.bei, align 1, !tbaa !41
  %i.bej = getelementptr i8, ptr %next.gep4153, i64 16
  store <16 x i8> %wide.load4155, ptr %next.gep4153, align 1, !tbaa !41
  store <16 x i8> %wide.load4156, ptr %i.bej, align 1, !tbaa !41
  %index.next4157 = add nuw i64 %index4152, 32    ; 2 uses
  %i.bek = icmp eq i64 %index.next4157, %n.vec4150
  br i1 %i.bek, label %middle.block4158, label %vector.body4151, !llvm.loop !57

middle.block4158:                                 ; preds = %vector.body4151
  %cmp.n4159 = icmp eq i64 %n.vec4150, %i.beb
  br i1 %cmp.n4159, label %.loopexit1875, label %vec.epilog.iter.check4165

vec.epilog.iter.check4165:                        ; preds = %middle.block4158
  %min.epilog.iters.check4166 = icmp eq i64 %i.bed, 0
  br i1 %min.epilog.iters.check4166, label %.lr.ph3471.preheader, label %vec.epilog.ph4167, !prof !53

vec.epilog.ph4167:                                ; preds = %vector.main.loop.iter.check4147, %vec.epilog.iter.check4165
  %vec.epilog.resume.val4160 = phi i64 [ %n.vec4150, %vec.epilog.iter.check4165 ], [ 0, %vector.main.loop.iter.check4147 ]
  %n.vec4168 = and i64 %i.beb, 2147483644         ; 5 uses
  %i.bel = trunc nuw nsw i64 %n.vec4168 to i32
  %i.bem = sub nsw i32 %i.bdr, %i.bel
  %i.ben = getelementptr i8, ptr %i.bdm, i64 %n.vec4168 ; 2 uses
  %i.beo = getelementptr i8, ptr %i.bdx, i64 %n.vec4168
  br label %vec.epilog.vector.body4169

vec.epilog.vector.body4169:                       ; preds = %vec.epilog.vector.body4169, %vec.epilog.ph4167
  %index4170 = phi i64 [ %vec.epilog.resume.val4160, %vec.epilog.ph4167 ], [ %index.next4174, %vec.epilog.vector.body4169 ] ; 3 uses
end_hunk_0
begin_hunk_1_@lzxd_decompress:bb.a
  %index4206 = phi i64 [ %vec.epilog.resume.val4196, %vec.epilog.ph4203 ], [ %index.next4210, %vec.epilog.vector.body4205 ] ; 3 uses
  %next.gep4207 = getelementptr i8, ptr %i.bdm, i64 %index4206
  %next.gep4208 = getelementptr i8, ptr %i.bfr, i64 %index4206
  %wide.load4209 = load <4 x i8>, ptr %next.gep4208, align 1, !tbaa !41
  store <4 x i8> %wide.load4209, ptr %next.gep4207, align 1, !tbaa !41
  %index.next4210 = add nuw i64 %index4206, 4     ; 2 uses
  %i.bgi = icmp eq i64 %index.next4210, %n.vec4204
  br i1 %i.bgi, label %vec.epilog.middle.block4211, label %vec.epilog.vector.body4205, !llvm.loop !64

vec.epilog.middle.block4211:                      ; preds = %vec.epilog.vector.body4205
  %cmp.n4212 = icmp eq i64 %i.bfu, %n.vec4204
  br i1 %cmp.n4212, label %.loopexit, label %.lr.ph3466.preheader

.lr.ph3466.preheader:                             ; preds = %iter.check4199, %vec.epilog.iter.check4201, %vec.epilog.middle.block4211
  %.79783464.ph = phi i32 [ %.2965, %iter.check4199 ], [ %i.bfy, %vec.epilog.iter.check4201 ], [ %i.bgf, %vec.epilog.middle.block4211 ]
  %.410293463.ph = phi ptr [ %i.bdm, %iter.check4199 ], [ %i.bfz, %vec.epilog.iter.check4201 ], [ %i.bgg, %vec.epilog.middle.block4211 ]
  %.310353462.ph = phi ptr [ %i.bfr, %iter.check4199 ], [ %i.bga, %vec.epilog.iter.check4201 ], [ %i.bgh, %vec.epilog.middle.block4211 ]
  br label %.lr.ph3466

.lr.ph3466:                                       ; preds = %.lr.ph3466.preheader, %.lr.ph3466
  %.79783464 = phi i32 [ %i.bgj, %.lr.ph3466 ], [ %.79783464.ph, %.lr.ph3466.preheader ] ; 2 uses
  %.410293463 = phi ptr [ %i.bgm, %.lr.ph3466 ], [ %.410293463.ph, %.lr.ph3466.preheader ] ; 2 uses
  %.310353462 = phi ptr [ %i.bgk, %.lr.ph3466 ], [ %.310353462.ph, %.lr.ph3466.preheader ] ; 2 uses
  %i.bgj = add nsw i32 %.79783464, -1
  %i.bgk = getelementptr inbounds nuw i8, ptr %.310353462, i64 1
  %i.bgl = load i8, ptr %.310353462, align 1, !tbaa !41
  %i.bgm = getelementptr inbounds nuw i8, ptr %.410293463, i64 1
  store i8 %i.bgl, ptr %.410293463, align 1, !tbaa !41
  %i.bgn = icmp sgt i32 %.79783464, 1
  br i1 %i.bgn, label %.lr.ph3466, label %.loopexit, !llvm.loop !65

.loopexit:                                        ; preds = %.lr.ph3466, %.lr.ph3477, %middle.block4194, %vec.epilog.middle.block4211, %middle.block, %vec.epilog.middle.block, %.loopexit1875
  %i.bgo = sub nsw i32 %.19813486, %.2965
  br label %bb.ma

bb.ma:                                            ; preds = %bb.hb, %.loopexit
  %.981287 = phi ptr [ %.961285, %.loopexit ], [ %.501239.lcssa, %bb.hb ] ; 2 uses
  %.98 = phi ptr [ %.96, %.loopexit ], [ %.501178.lcssa, %bb.hb ] ; 2 uses
  %.551122 = phi i32 [ %.531120, %.loopexit ], [ %i.ack, %bb.hb ] ; 2 uses
  %.55 = phi i32 [ %.53, %.loopexit ], [ %i.acl, %bb.hb ] ; 2 uses
  %.41019 = phi i32 [ %i.bdi, %.loopexit ], [ %i.aco, %bb.hb ] ; 2 uses
  %.71013 = phi i32 [ %.2, %.loopexit ], [ %.410103483, %bb.hb ] ; 2 uses
  %.71004 = phi i32 [ %.51002, %.loopexit ], [ %.410013484, %bb.hb ] ; 2 uses
  %.7995 = phi i32 [ %.5993, %.loopexit ], [ %.49923485, %bb.hb ] ; 2 uses
  %.3983 = phi i32 [ %i.bgo, %.loopexit ], [ %i.acr, %bb.hb ] ; 3 uses
  %i.bgp = icmp sgt i32 %.3983, 0
  br i1 %i.bgp, label %.preheader1886, label %.loopexit1888

bb.mb:                                            ; preds = %bb.gk
  %i.bgq = add i32 %spec.select1556, %.110163500  ; 2 uses
  %i.bgr = icmp sgt i32 %i.us, 0
  br i1 %i.bgr, label %.lr.ph3352.preheader, label %.loopexit1888

.lr.ph3352.preheader:                             ; preds = %bb.mb
  %i.bgs = zext i32 %.110163500 to i64
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bgs
  br label %.lr.ph3352

.lr.ph3352:                                       ; preds = %.lr.ph3352.preheader, %bb.mk
  %.49843350 = phi i32 [ %.5985, %bb.mk ], [ %spec.select1556, %.lr.ph3352.preheader ] ; 4 uses
  %.510303349 = phi ptr [ %.61031, %bb.mk ], [ %i.bgt, %.lr.ph3352.preheader ] ; 4 uses
  %.993348 = phi ptr [ %.100, %bb.mk ], [ %.481176, %.lr.ph3352.preheader ] ; 4 uses
  %.9912883347 = phi ptr [ %.1001289, %bb.mk ], [ %.481237, %.lr.ph3352.preheader ] ; 5 uses
  %i.bgu = ptrtoint ptr %.993348 to i64
  %i.bgv = ptrtoint ptr %.9912883347 to i64
  %i.bgw = sub i64 %i.bgu, %i.bgv
  %i.bgx = trunc i64 %i.bgw to i32                ; 2 uses
  %i.bgy = icmp eq i32 %i.bgx, 0
  br i1 %i.bgy, label %bb.mc, label %bb.mj

bb.mc:                                            ; preds = %.lr.ph3352
  %.not1483 = icmp ult ptr %.9912883347, %.993348
  br i1 %.not1483, label %bb.mk, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.bgz = load ptr, ptr %0, align 8, !tbaa !18
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgz, i64 16
  %i.bhb = load ptr, ptr %i.bha, align 8, !tbaa !46
  %i.bhc = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.bhd = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.bhe = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.bhf = tail call i32 %i.bhb(ptr noundef %i.bhc, ptr noundef %i.bhd, i32 noundef %i.bhe) #5, !inline_history !47 ; 3 uses
  %i.bhg = icmp slt i32 %i.bhf, 0
  br i1 %i.bhg, label %bb.mh, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.bhh = icmp eq i32 %i.bhf, 0
  br i1 %i.bhh, label %bb.mf, label %bb.mi

bb.mf:                                            ; preds = %bb.me
  %i.bhi = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1645 = icmp eq i8 %i.bhi, 0
  br i1 %.not.i1645, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %bb.mf
  %i.bhj = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhj, i64 1
  store i8 0, ptr %i.bhk, align 1, !tbaa !41
  %i.bhl = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.bhl, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.mi

bb.mh:                                            ; preds = %bb.mf, %bb.md
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.mi:                                            ; preds = %bb.mg, %bb.me
  %.0.i1643 = phi i32 [ 2, %bb.mg ], [ %i.bhf, %bb.me ]
  %i.bhm = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.bhm, ptr %i.ab, align 8, !tbaa !42
  %i.bhn = zext nneg i32 %.0.i1643 to i64
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %i.bhn ; 2 uses
  store ptr %i.bho, ptr %i.ac, align 8, !tbaa !43
  br label %bb.mk

bb.mj:                                            ; preds = %.lr.ph3352
  %spec.select1557 = tail call i32 @llvm.smin.i32(i32 %.49843350, i32 %i.bgx) ; 2 uses
  %i.bhp = load ptr, ptr %0, align 8, !tbaa !18
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 72
  %i.bhr = load ptr, ptr %i.bhq, align 8, !tbaa !74
  %i.bhs = sext i32 %spec.select1557 to i64       ; 3 uses
  tail call void %i.bhr(ptr noundef %.9912883347, ptr noundef %.510303349, i64 noundef %i.bhs) #5
  %i.bht = getelementptr inbounds i8, ptr %.510303349, i64 %i.bhs
  %i.bhu = getelementptr inbounds i8, ptr %.9912883347, i64 %i.bhs
  %i.bhv = sub nsw i32 %.49843350, %spec.select1557
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mc, %bb.mi, %bb.mj
  %.1001289 = phi ptr [ %i.bhm, %bb.mi ], [ %.9912883347, %bb.mc ], [ %i.bhu, %bb.mj ] ; 2 uses
  %.100 = phi ptr [ %i.bho, %bb.mi ], [ %.993348, %bb.mc ], [ %.993348, %bb.mj ] ; 2 uses
  %.61031 = phi ptr [ %.510303349, %bb.mi ], [ %.510303349, %bb.mc ], [ %i.bht, %bb.mj ]
  %.5985 = phi i32 [ %.49843350, %bb.mi ], [ %.49843350, %bb.mc ], [ %i.bhv, %bb.mj ] ; 3 uses
  %i.bhw = icmp sgt i32 %.5985, 0
  br i1 %i.bhw, label %.lr.ph3352, label %.loopexit1888

bb.ml:                                            ; preds = %bb.gk
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

.loopexit1888:                                    ; preds = %bb.mk, %bb.ma, %bb.mb, %bb.gl
  %.1011290 = phi ptr [ %.981287, %bb.ma ], [ %.481237, %bb.gl ], [ %.481237, %bb.mb ], [ %.1001289, %bb.mk ] ; 2 uses
  %.101 = phi ptr [ %.98, %bb.ma ], [ %.481176, %bb.gl ], [ %.481176, %bb.mb ], [ %.100, %bb.mk ] ; 2 uses
  %.561123 = phi i32 [ %.551122, %bb.ma ], [ %.251092, %bb.gl ], [ %.251092, %bb.mb ], [ %.251092, %bb.mk ] ; 2 uses
  %.56 = phi i32 [ %.55, %bb.ma ], [ %.25, %bb.gl ], [ %.25, %bb.mb ], [ %.25, %bb.mk ] ; 2 uses
  %.51020 = phi i32 [ %.41019, %bb.ma ], [ %.110163500, %bb.gl ], [ %i.bgq, %bb.mb ], [ %i.bgq, %bb.mk ] ; 2 uses
  %.81014 = phi i32 [ %.71013, %bb.ma ], [ %.31009, %bb.gl ], [ %.31009, %bb.mb ], [ %.31009, %bb.mk ] ; 2 uses
  %.81005 = phi i32 [ %.71004, %bb.ma ], [ %.31000, %bb.gl ], [ %.31000, %bb.mb ], [ %.31000, %bb.mk ] ; 2 uses
  %.8996 = phi i32 [ %.7995, %bb.ma ], [ %.3991, %bb.gl ], [ %.3991, %bb.mb ], [ %.3991, %bb.mk ] ; 2 uses
  %.6986 = phi i32 [ %.3983, %bb.ma ], [ %spec.select1556, %bb.gl ], [ %spec.select1556, %bb.mb ], [ %.5985, %bb.mk ] ; 3 uses
  %i.bhx = icmp slt i32 %.6986, 0
  br i1 %i.bhx, label %bb.mm, label %bb.mp

bb.mm:                                            ; preds = %.loopexit1888
  %i.bhy = sub nsw i32 0, %.6986
  %i.bhz = load i32, ptr %i.bd, align 4, !tbaa !40 ; 2 uses
  %i.bia = icmp ult i32 %i.bhz, %i.bhy
  br i1 %i.bia, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.mo:                                            ; preds = %bb.mm
  %i.bib = add i32 %i.bhz, %.6986
  store i32 %i.bib, ptr %i.bd, align 4, !tbaa !40
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %.loopexit1888
  %i.bic = icmp sgt i32 %i.ut, 0
  br i1 %i.bic, label %.lr.ph3506, label %._crit_edge3507.loopexit

._crit_edge3507.loopexit:                         ; preds = %bb.mp
  %.pre = load i32, ptr %i.bp, align 8, !tbaa !27
  br label %._crit_edge3507

._crit_edge3507:                                  ; preds = %._crit_edge3507.loopexit, %bb.bq
  %i.bid = phi i32 [ %.pre, %._crit_edge3507.loopexit ], [ %i.ji, %bb.bq ]
  %.201209.lcssa = phi ptr [ %.1011290, %._crit_edge3507.loopexit ], [ %.191208, %bb.bq ] ; 3 uses
  %.201148.lcssa = phi ptr [ %.101, %._crit_edge3507.loopexit ], [ %.191147, %bb.bq ] ; 3 uses
  %.121079.lcssa = phi i32 [ %.561123, %._crit_edge3507.loopexit ], [ %.111078, %bb.bq ] ; 2 uses
  %.121057.lcssa = phi i32 [ %.56, %._crit_edge3507.loopexit ], [ %.111056, %bb.bq ] ; 4 uses
  %.11016.lcssa = phi i32 [ %.51020, %._crit_edge3507.loopexit ], [ %.010153526, %bb.bq ] ; 3 uses
  %.21008.lcssa = phi i32 [ %.81014, %._crit_edge3507.loopexit ], [ %.11007, %bb.bq ] ; 2 uses
  %.2999.lcssa = phi i32 [ %.81005, %._crit_edge3507.loopexit ], [ %.1998, %bb.bq ] ; 2 uses
  %.2990.lcssa = phi i32 [ %.8996, %._crit_edge3507.loopexit ], [ %.1989, %bb.bq ] ; 2 uses
  %i.bie = sub i32 %.11016.lcssa, %i.bid
  %.not1454 = icmp eq i32 %i.bie, %.01021
  br i1 %.not1454, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %._crit_edge3507
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.mr:                                            ; preds = %._crit_edge3507
  %i.bif = add i32 %.121057.lcssa, -1
  %or.cond31 = icmp ult i32 %i.bif, 15
  br i1 %or.cond31, label %.preheader1893, label %.loopexit1894

.preheader1893:                                   ; preds = %bb.mr
  %.not1455 = icmp ult ptr %.201209.lcssa, %.201148.lcssa
  br i1 %.not1455, label %bb.mv, label %bb.ms

bb.ms:                                            ; preds = %.preheader1893
  %i.big = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1456 = icmp eq i32 %i.big, 0
  br i1 %.not1456, label %bb.mu, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.bih = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.mu:                                            ; preds = %bb.ms
  %i.bii = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.bij = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %.preheader1893
  %.1031292 = phi ptr [ %i.bii, %bb.mu ], [ %.201209.lcssa, %.preheader1893 ] ; 2 uses
  %.103 = phi ptr [ %i.bij, %bb.mu ], [ %.201148.lcssa, %.preheader1893 ] ; 2 uses
  %i.bik = getelementptr inbounds nuw i8, ptr %.1031292, i64 1 ; 2 uses
  %i.bil = load i8, ptr %.1031292, align 1, !tbaa !41
  %.not1457 = icmp ult ptr %i.bik, %.103
  br i1 %.not1457, label %.loopexit1894.loopexit, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.bim = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1458 = icmp eq i32 %i.bim, 0
  br i1 %.not1458, label %bb.my, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.bin = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.my:                                            ; preds = %bb.mw
  %i.bio = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.bip = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %.loopexit1894.loopexit

.loopexit1894.loopexit:                           ; preds = %bb.mv, %bb.my
  %.1041293 = phi ptr [ %i.bio, %bb.my ], [ %i.bik, %bb.mv ] ; 2 uses
  %.104 = phi ptr [ %i.bip, %bb.my ], [ %.103, %bb.mv ]
  %11 = or disjoint i32 %.121057.lcssa, 16
  %12 = load i8, ptr %.1041293, align 1, !tbaa !41
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = zext i8 %i.bil to i32
  %16 = or disjoint i32 %14, %15
  %17 = sub nuw nsw i32 16, %.121057.lcssa
  %18 = shl nuw nsw i32 %16, %17
  %19 = or i32 %18, %.121079.lcssa
  %20 = getelementptr inbounds nuw i8, ptr %.1041293, i64 1
  br label %.loopexit1894

.loopexit1894:                                    ; preds = %.loopexit1894.loopexit, %bb.mr
  %.1061295 = phi ptr [ %.201209.lcssa, %bb.mr ], [ %20, %.loopexit1894.loopexit ] ; 2 uses
  %.106 = phi ptr [ %.201148.lcssa, %bb.mr ], [ %.104, %.loopexit1894.loopexit ] ; 2 uses
  %.591126 = phi i32 [ %.121079.lcssa, %bb.mr ], [ %19, %.loopexit1894.loopexit ]
  %.59 = phi i32 [ %.121057.lcssa, %bb.mr ], [ %11, %.loopexit1894.loopexit ] ; 2 uses
  %i.biq = and i32 %.59, 15
  %i.bir = shl i32 %.591126, %i.biq               ; 2 uses
  %i.bis = and i32 %.59, -16                      ; 2 uses
  %i.bit = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.biu = load ptr, ptr %i.e, align 8, !tbaa !35
  %.not1460 = icmp eq ptr %i.bit, %i.biu
  br i1 %.not1460, label %bb.na, label %bb.mz

bb.mz:                                            ; preds = %.loopexit1894
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.na:                                            ; preds = %.loopexit1894
  %i.biv = load i8, ptr %i.br, align 4, !tbaa !72
  %.not1461 = icmp eq i8 %i.biv, 0
  br i1 %.not1461, label %bb.ng, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.biw = load i32, ptr %i.bn, align 8, !tbaa !30 ; 3 uses
  %.not1462 = icmp eq i32 %i.biw, 0
  br i1 %.not1462, label %bb.ng, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.bix = load i32, ptr %i.ar, align 4, !tbaa !28
  %i.biy = icmp ult i32 %i.bix, 32768
  %i.biz = icmp ugt i32 %.01021, 10
  %or.cond24 = and i1 %i.biz, %i.biy
  br i1 %or.cond24, label %.lr.ph3519.preheader, label %bb.ng

.lr.ph3519.preheader:                             ; preds = %bb.nc
  %i.bja = add i32 %.01021, -10
  %i.bjb = zext i32 %i.bja to i64
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bjb
  %i.bjd = load i64, ptr %i.al, align 8, !tbaa !21
  store ptr %i.cb, ptr %i.g, align 8, !tbaa !36
  %i.bje = load ptr, ptr %0, align 8, !tbaa !18
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 72
  %i.bjg = load ptr, ptr %i.bjf, align 8, !tbaa !74
  %i.bjh = load ptr, ptr %i.af, align 8, !tbaa !15
  %i.bji = load i32, ptr %i.bp, align 8, !tbaa !27
  %i.bjj = zext i32 %i.bji to i64
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjh, i64 %i.bjj
  %i.bjl = zext i32 %.01021 to i64                ; 2 uses
  tail call void %i.bjg(ptr noundef %i.bjk, ptr noundef nonnull %i.cb, i64 noundef %i.bjl) #5
  %i.bjm = trunc i64 %i.bjd to i32
  br label %.lr.ph3519

.lr.ph3519:                                       ; preds = %.lr.ph3519.preheader, %.backedge
  %.03517 = phi i32 [ %i.bjp, %.backedge ], [ %i.bjm, %.lr.ph3519.preheader ] ; 2 uses
  %.09603516 = phi ptr [ %.0960.be, %.backedge ], [ %i.cb, %.lr.ph3519.preheader ] ; 5 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %.09603516, i64 1 ; 3 uses
  %i.bjo = load i8, ptr %.09603516, align 1, !tbaa !41
  %.not1465 = icmp eq i8 %i.bjo, -24
  br i1 %.not1465, label %bb.nd, label %.backedge

.backedge:                                        ; preds = %.lr.ph3519, %bb.nf
  %.sink = phi i32 [ 5, %bb.nf ], [ 1, %.lr.ph3519 ]
  %.0960.be = phi ptr [ %i.bkh, %bb.nf ], [ %i.bjn, %.lr.ph3519 ] ; 2 uses
  %i.bjp = add nsw i32 %.03517, %.sink
  %i.bjq = icmp ult ptr %.0960.be, %i.bjc
  br i1 %i.bjq, label %.lr.ph3519, label %.loopexit1892

bb.nd:                                            ; preds = %.lr.ph3519
  %i.bjr = getelementptr inbounds nuw i8, ptr %.09603516, i64 4
  %i.bjs = load i8, ptr %i.bjr, align 1, !tbaa !41
  %i.bjt = zext i8 %i.bjs to i32
  %i.bju = shl nuw i32 %i.bjt, 24                 ; 2 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %.09603516, i64 3
  %i.bjw = load i8, ptr %i.bjv, align 1, !tbaa !41
  %i.bjx = zext i8 %i.bjw to i32
  %i.bjy = shl nuw nsw i32 %i.bjx, 16
  %i.bjz = load i16, ptr %i.bjn, align 1
  %i.bka = zext i16 %i.bjz to i32
  %i.bkb = or disjoint i32 %i.bjy, %i.bka
  %i.bkc = or disjoint i32 %i.bkb, %i.bju         ; 3 uses
  %i.bkd = sub i32 0, %.03517                     ; 2 uses
  %.not1466 = icmp sge i32 %i.bkc, %i.bkd
  %i.bke = icmp slt i32 %i.bkc, %i.biw
  %or.cond1558 = and i1 %.not1466, %i.bke
  br i1 %or.cond1558, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  %i.bkf = icmp slt i32 %i.bju, 0
  %.p = select i1 %i.bkf, i32 %i.biw, i32 %i.bkd
  %i.bkg = add i32 %i.bkc, %.p
  store i32 %i.bkg, ptr %i.bjn, align 1
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %i.bkh = getelementptr inbounds nuw i8, ptr %.09603516, i64 5
  br label %.backedge

bb.ng:                                            ; preds = %bb.nc, %bb.nb, %bb.na
  %i.bki = load ptr, ptr %i.af, align 8, !tbaa !15
  %i.bkj = load i32, ptr %i.bp, align 8, !tbaa !27
  %i.bkk = zext i32 %i.bkj to i64
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bki, i64 %i.bkk
  store ptr %i.bkl, ptr %i.g, align 8, !tbaa !36
  %.pre3647 = zext i32 %.01021 to i64
  br label %.loopexit1892

.loopexit1892:                                    ; preds = %.backedge, %bb.ng
  %.pre-phi = phi i64 [ %.pre3647, %bb.ng ], [ %i.bjl, %.backedge ] ; 2 uses
  %i.bkm = load ptr, ptr %i.g, align 8, !tbaa !36 ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkm, i64 %.pre-phi
  store ptr %i.bkn, ptr %i.e, align 8, !tbaa !35
  %i.bko = tail call i64 @llvm.smin.i64(i64 %.112973520, i64 %.pre-phi) ; 2 uses
  %i.bkp = trunc i64 %i.bko to i32                ; 2 uses
  %i.bkq = load ptr, ptr %0, align 8, !tbaa !18
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkq, i64 24
  %i.bks = load ptr, ptr %i.bkr, align 8, !tbaa !66
  %i.bkt = load ptr, ptr %i.cc, align 8, !tbaa !20
  %i.bku = tail call i32 %i.bks(ptr noundef %i.bkt, ptr noundef %i.bkm, i32 noundef %i.bkp) #5
  %.not1463 = icmp eq i32 %i.bku, %i.bkp
  br i1 %.not1463, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %.loopexit1892
  store i32 4, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ni:                                            ; preds = %.loopexit1892
  %i.bkv = load ptr, ptr %i.g, align 8, !tbaa !36
  %sext1464 = shl i64 %i.bko, 32
  %i.bkw = ashr exact i64 %sext1464, 32           ; 3 uses
  %i.bkx = getelementptr inbounds i8, ptr %i.bkv, i64 %i.bkw
  store ptr %i.bkx, ptr %i.g, align 8, !tbaa !36
  %i.bky = load i64, ptr %i.al, align 8, !tbaa !21
  %i.bkz = add nsw i64 %i.bky, %i.bkw
  store i64 %i.bkz, ptr %i.al, align 8, !tbaa !21
  %i.bla = sub nsw i64 %.112973520, %i.bkw        ; 2 uses
  %i.blb = load i32, ptr %i.bp, align 8, !tbaa !27
  %i.blc = add i32 %i.blb, %.01021                ; 2 uses
  store i32 %i.blc, ptr %i.bp, align 8, !tbaa !27
  %i.bld = load i32, ptr %i.ar, align 4, !tbaa !28
  %i.ble = add i32 %i.bld, 1                      ; 3 uses
  store i32 %i.ble, ptr %i.ar, align 4, !tbaa !28
  %i.blf = load i32, ptr %i.bz, align 8, !tbaa !24 ; 2 uses
  %i.blg = icmp eq i32 %.11016.lcssa, %i.blf
  %spec.store.select = select i1 %i.blg, i32 0, i32 %.11016.lcssa ; 2 uses
  %i.blh = icmp eq i32 %i.blc, %i.blf
  br i1 %i.blh, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  store i32 0, ptr %i.bp, align 8, !tbaa !27
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %i.bli = icmp ult i32 %i.ble, %i.aq
  br i1 %i.bli, label %bb.i, label %._crit_edge3532

._crit_edge3532:                                  ; preds = %bb.nk
  %i.blj = icmp eq i64 %i.bla, 0
  br i1 %i.blj, label %bb.nl, label %._crit_edge3532.thread

._crit_edge3532.thread:                           ; preds = %bb.h, %._crit_edge3532
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.nl:                                            ; preds = %._crit_edge3532
  store ptr %.1061295, ptr %i.ab, align 8, !tbaa !42
  store ptr %.106, ptr %i.ac, align 8, !tbaa !43
  store i32 %i.bir, ptr %i.ad, align 8, !tbaa !44
  store i32 %i.bis, ptr %i.ae, align 4, !tbaa !45
  store i32 %spec.store.select, ptr %i.ah, align 4, !tbaa !26
  store i32 %.21008.lcssa, ptr %i.ai, align 4, !tbaa !37
  store i32 %.2999.lcssa, ptr %i.aj, align 8, !tbaa !38
  store i32 %.2990.lcssa, ptr %i.ak, align 4, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %bb.mx, %bb.mt, %bb.ln, %bb.lj, %bb.le, %bb.la, %bb.ku, %bb.kq, %bb.kk, %bb.kd, %bb.jv, %bb.jo, %bb.jf, %bb.iy, %bb.ip, %bb.il, %bb.ig, %bb.ic, %bb.hq, %bb.hj, %bb.gx, %bb.gq, %bb.lx, %bb.lw, %bb.ls, %bb.is, %bb.ht, %bb.he, %bb.ha, %bb.ev, %bb.er, %bb.du, %bb.dq, %bb.dm, %bb.df, %bb.cy, %bb.cr, %bb.ck, %bb.cd, %bb.bk, %bb.bg, %bb.bc, %bb.av, %bb.ao, %bb.ah, %bb.z, %bb.s, %bb.g, %bb.b, %bb.a, %bb.nl, %._crit_edge3532.thread, %bb.nh, %bb.mz, %bb.mq, %bb.mn, %bb.ml, %bb.mh, %bb.gj, %bb.ez, %bb.el, %bb.ei, %bb.ee, %bb.ec, %bb.ea, %bb.dy, %bb.bv, %bb.e
  %.611359 = phi i32 [ 0, %bb.nl ], [ 1, %bb.a ], [ 4, %bb.e ], [ %i.d, %bb.b ], [ 0, %bb.g ], [ %i.jt, %bb.bv ], [ %i.ig, %bb.bg ], [ 3, %bb.cd ], [ 3, %bb.cr ], [ 11, %bb.gj ], [ 3, %bb.df ], [ 11, %bb.dy ], [ %i.qv, %bb.ea ], [ %i.qz, %bb.ec ], [ 11, %bb.ee ], [ %i.rf, %bb.ei ], [ 11, %bb.el ], [ 11, %bb.ml ], [ %i.sb, %bb.er ], [ 11, %bb.mn ], [ 3, %bb.mh ], [ %i.sk, %bb.ez ], [ %i.pu, %bb.dq ], [ 11, %bb.mq ], [ 11, %bb.mz ], [ 4, %bb.nh ], [ %i.bck, %bb.lj ], [ 3, %bb.s ], [ 3, %bb.ah ], [ 3, %bb.av ], [ 11, %._crit_edge3532.thread ], [ 3, %bb.z ], [ 3, %bb.ao ], [ 3, %bb.bc ], [ %i.im, %bb.bk ], [ 3, %bb.ck ], [ 3, %bb.cy ], [ 3, %bb.dm ], [ %i.qa, %bb.du ], [ %i.sg, %bb.ev ], [ 3, %bb.iy ], [ 11, %bb.lx ], [ 11, %bb.lw ], [ 11, %bb.ls ], [ 11, %bb.is ], [ %i.alm, %bb.ic ], [ 3, %bb.hj ], [ 11, %bb.ht ], [ 3, %bb.gq ], [ 11, %bb.he ], [ %i.amo, %bb.il ], [ 11, %bb.ha ], [ 3, %bb.gx ], [ 3, %bb.hq ], [ %i.als, %bb.ig ], [ %i.amu, %bb.ip ], [ 3, %bb.jf ], [ %i.bbn, %bb.la ], [ %i.ban, %bb.kq ], [ 3, %bb.kd ], [ 3, %bb.jo ], [ 3, %bb.jv ], [ 3, %bb.kk ], [ %i.bat, %bb.ku ], [ %i.bbt, %bb.le ], [ %i.bcq, %bb.ln ], [ %i.bin, %bb.mx ], [ %i.bih, %bb.mt ]
  ret i32 %.611359
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @read_input(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23
  %i.j = tail call i32 %i.c(ptr noundef %i.e, ptr noundef %i.g, i32 noundef %i.i) #5 ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 3, ptr %i.l, align 4, !tbaa !31
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %i.j, 0
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
end_hunk_1
