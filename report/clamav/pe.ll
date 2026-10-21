Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe?download=true
inline.NumInlined: 74
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@cli_scanpe:bb.a

bb.nb:                                            ; preds = %._crit_edge3282
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atz, i64 8
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !15
  %i.aue = zext i32 %i.aud to i64
  %i.auf = zext i32 %i.apj to i64
  %i.aug = load ptr, ptr %i.aqi, align 8, !tbaa !38
  %i.auh = call ptr %i.aug(ptr noundef %i.ac, i64 noundef range(i64 0, 8589934855) %i.aue, i64 noundef %i.auf, i32 noundef 0) #22, !inline_history !0 ; 2 uses
  %.not2631 = icmp eq ptr %i.auh, null
  br i1 %.not2631, label %bb.nc, label %bb.nd

bb.nc:                                            ; preds = %bb.nb, %._crit_edge3282
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.61, i32 noundef %.622202992) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void @free(ptr noundef nonnull %i.arz) #22
  br label %.thread2995

bb.nd:                                            ; preds = %bb.nb
  %i.aui = load i32, ptr %i.i, align 4, !tbaa !16
  %i.auj = zext i32 %i.aui to i64
  %i.auk = call ptr @cli_max_calloc(i64 noundef %i.auj, i64 noundef 1) #22 ; 8 uses
  %i.aul = icmp eq ptr %i.auk, null
  br i1 %i.aul, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void @free(ptr noundef nonnull %i.arz) #22
  br label %.thread2995

bb.nf:                                            ; preds = %bb.nd
  %i.aum = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aun = load i32, ptr %i.aum, align 8, !tbaa !95
  %i.auo = add i32 %i.aun, 167
  %i.aup = getelementptr inbounds nuw i8, ptr %i.f, i64 163
  %i.auq = load i32, ptr %i.aup, align 1, !tbaa !39
  %i.aur = add i32 %i.auo, %i.auq                 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.68, i32 noundef %i.aur) #22
  %.not2632 = icmp eq ptr %.02164, null
  br i1 %.not2632, label %bb.nh, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.aus = call i32 @cli_jsonstr(ptr noundef nonnull %.02164, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.69) #22 ; 0 uses
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %bb.nf
  %i.aut = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !127
  %i.auv = call ptr @cli_gentemp(ptr noundef %i.auu) #22 ; 3 uses
  store ptr %i.auv, ptr %i.g, align 8, !tbaa !82
  %.not2633 = icmp eq ptr %i.auv, null
  br i1 %.not2633, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.auk, ptr noundef nonnull %i.arz, i32 noundef 0)
  br label %.thread2995

bb.nj:                                            ; preds = %bb.nh
  %i.auw = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.auv, i32 noundef 578, i32 noundef 384) #22 ; 7 uses
  %i.aux = icmp slt i32 %i.auw, 0
  br i1 %i.aux, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.auy = load ptr, ptr %i.g, align 8, !tbaa !82
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.70, ptr noundef %i.auy) #22
  %i.auz = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.auz) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.auk, ptr noundef nonnull %i.arz, i32 noundef 0)
  br label %.thread2995

bb.nl:                                            ; preds = %bb.nj
  %i.ava = zext i32 %i.aqr to i64
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auh, i64 %i.ava
  %i.avc = load ptr, ptr %2, align 8, !tbaa !29
  %i.avd = getelementptr inbounds nuw [36 x i8], ptr %i.avc, i64 %i.apg
  %i.ave = load i32, ptr %i.avd, align 4, !tbaa !14 ; 2 uses
  %i.avf = zext i32 %i.ave to i64
  %i.avg = sub nsw i64 0, %i.avf
  %i.avh = getelementptr inbounds i8, ptr %i.avb, i64 %i.avg
  %i.avi = sub i32 %i.apj, %i.aqr
  %i.avj = add i32 %i.avi, %i.ave
  %i.avk = load i32, ptr %i.i, align 4, !tbaa !16
  %i.avl = load i32, ptr %i.aoy, align 4, !tbaa !39
  %i.avm = call i32 @unfsg_133(ptr noundef nonnull %i.avh, ptr noundef nonnull %i.auk, i32 noundef %i.avj, i32 noundef %i.avk, ptr noundef nonnull %i.arz, i32 noundef %.12103.ph3654, i32 noundef %i.avl, i32 noundef %i.aur, i32 noundef %i.auw) #22
  switch i32 %i.avm, label %bb.ny [
    i32 1, label %bb.nm
    i32 0, label %bb.nv
  ]

bb.nm:                                            ; preds = %bb.nl
  %i.avn = load ptr, ptr %i.g, align 8, !tbaa !82
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.71, ptr noundef %i.avn) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.auk, ptr noundef nonnull %i.arz, i32 noundef 0)
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.avo = call i64 @lseek(i32 noundef %i.auw, i64 noundef 0, i32 noundef 0) #22 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.45) #22
  %i.avp = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.avq = call i32 @cli_magic_scan_desc(i32 noundef %i.auw, ptr noundef %i.avp, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #22 ; 2 uses
  %.not2635 = icmp eq i32 %i.avq, 0
  %i.avr = call i32 @close(i32 noundef %i.auw) #22 ; 0 uses
  %i.avs = load ptr, ptr %i.ks, align 8, !tbaa !63
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avs, i64 48
  %i.avu = load i32, ptr %i.avt, align 8, !tbaa !128
  %.not2636 = icmp eq i32 %i.avu, 0               ; 2 uses
  br i1 %.not2635, label %bb.nr, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  br i1 %.not2636, label %bb.no, label %bb.nq

bb.no:                                            ; preds = %bb.nn
  %i.avv = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.avw = call i32 @cli_unlink(ptr noundef %i.avv) #22
  %.not2639 = icmp eq i32 %i.avw, 0
  br i1 %.not2639, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.avx = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.avx) #22
  br label %.thread2995

bb.nq:                                            ; preds = %bb.no, %bb.nn
  %i.avy = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.avy) #22
  br label %.thread2995

bb.nr:                                            ; preds = %bb.nm
  br i1 %.not2636, label %bb.ns, label %bb.nu

bb.ns:                                            ; preds = %bb.nr
  %i.avz = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.awa = call i32 @cli_unlink(ptr noundef %i.avz) #22
  %.not2637 = icmp eq i32 %i.awa, 0
  br i1 %.not2637, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.awb = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.awb) #22
  br label %.thread2995

bb.nu:                                            ; preds = %bb.ns, %bb.nr
  %i.awc = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.awc) #22
  br label %.thread2995

bb.nv:                                            ; preds = %bb.nl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.72) #22
  %i.awd = call i32 @close(i32 noundef %i.auw) #22 ; 0 uses
  %i.awe = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.awf = call i32 @cli_unlink(ptr noundef %i.awe) #22
  %.not2634 = icmp eq i32 %i.awf, 0
  br i1 %.not2634, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.awg = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.awg) #22
  call void @free(ptr noundef nonnull %i.arz) #22
  br label %.thread2995

bb.nx:                                            ; preds = %bb.nv
  %i.awh = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.awh) #22
  br label %.sink.split3693

bb.ny:                                            ; preds = %bb.nl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.73) #22
  %i.awi = call i32 @close(i32 noundef %i.auw) #22 ; 0 uses
  %i.awj = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.awk = call i32 @cli_unlink(ptr noundef %i.awj) #22
  %.not2640 = icmp eq i32 %i.awk, 0
  br i1 %.not2640, label %bb.oa, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  %i.awl = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.awl) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.auk, ptr noundef nonnull %i.arz, i32 noundef 0)
  br label %.thread2995

bb.oa:                                            ; preds = %bb.ny
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.auk, ptr noundef nonnull %i.arz, i32 noundef 0)
  %i.awm = load ptr, ptr %i.g, align 8, !tbaa !82
  call void @free(ptr noundef %i.awm) #22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.my, %.preheader3185, %bb.mf, %bb.me, %bb.mk, %.loopexit3186, %bb.mr, %bb.mt, %bb.oa
  %i.awn = load ptr, ptr %i.kx, align 8, !tbaa !58
  %i.awo = load i32, ptr %i.awn, align 4, !tbaa !60
  %i.awp = and i32 %i.awo, 64
  %i.awq = icmp ne i32 %i.awp, 0
  %i.awr = load i8, ptr %i.f, align 16
  %i.aws = icmp eq i8 %i.awr, -69
  %or.cond119 = select i1 %i.awq, i1 %i.aws, i1 false
  br i1 %or.cond119, label %bb.ob, label %bb.qb

bb.ob:                                            ; preds = %.loopexit
  %i.awt = load i32, ptr %i.aji, align 1, !tbaa !39
  %i.awu = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 4 uses
  %i.awv = load i32, ptr %i.awu, align 4, !tbaa !39 ; 3 uses
  %i.aww = sub i32 %i.awt, %i.awv                 ; 5 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !96
  %i.awz = icmp ult i32 %i.aww, %i.awy
  %i.axa = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.axb = load i8, ptr %i.axa, align 1
  %i.axc = icmp eq i8 %i.axb, -65
  %or.cond123 = select i1 %i.awz, i1 %i.axc, i1 false
  %i.axd = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.axe = load i8, ptr %i.axd, align 2
  %i.axf = icmp eq i8 %i.axe, -66
  %or.cond127 = select i1 %or.cond123, i1 %i.axf, i1 false
  br i1 %or.cond127, label %bb.oc, label %bb.qb

bb.oc:                                            ; preds = %bb.ob
  %i.axg = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.axh = load i32, ptr %i.axg, align 8, !tbaa !95 ; 2 uses
  %i.axi = load ptr, ptr %2, align 8, !tbaa !29   ; 2 uses
  %i.axj = add i32 %.622202992, 1
  %i.axk = zext i32 %i.axj to i64                 ; 4 uses
  %i.axl = getelementptr inbounds nuw [36 x i8], ptr %i.axi, i64 %i.axk ; 4 uses
  %i.axm = load i32, ptr %i.axl, align 4, !tbaa !14 ; 3 uses
  %.not2642 = icmp ult i32 %i.axh, %i.axm
  br i1 %.not2642, label %bb.qb, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.axn = sub nuw i32 %i.axh, %i.axm             ; 2 uses
  %i.axo = add i32 %i.axm, -224
  %i.axp = icmp ugt i32 %i.axn, %i.axo
  br i1 %i.axp, label %cli_rawaddr.exit2929, label %bb.qb

cli_rawaddr.exit2929:                             ; preds = %bb.od
  %i.axq = load i32, ptr %i.km, align 8, !tbaa !31
  %i.axr = icmp uge i32 %i.aww, %i.axq
  %i.axs = zext i32 %i.aww to i64
  %.not36.i2926 = icmp ule i64 %i.ae, %i.axs
  %narrow3151 = select i1 %i.axr, i1 true, i1 %.not36.i2926 ; 2 uses
  %.sink.i2924 = zext i1 %narrow3151 to i32
  store i32 %.sink.i2924, ptr %i.h, align 4, !tbaa !16
  %i.axt = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.axu = load i32, ptr %i.axt, align 1, !tbaa !39
  %i.axv = sub i32 %i.axu, %i.awv                 ; 4 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.axx = load i32, ptr %i.axw, align 2, !tbaa !39
  %i.axy = sub i32 %i.axx, %i.awv                 ; 3 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axl, i64 12
  %i.aya = load i32, ptr %i.axz, align 4, !tbaa !13 ; 6 uses
  %i.ayb = zext i32 %.622202992 to i64            ; 2 uses
  %i.ayc = getelementptr inbounds nuw [36 x i8], ptr %i.axi, i64 %i.ayb ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 4
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !61 ; 2 uses
  store i32 %i.aye, ptr %i.i, align 4, !tbaa !16
  br i1 %narrow3151, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %cli_rawaddr.exit2929
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.74) #22
  br label %bb.qb

bb.of:                                            ; preds = %cli_rawaddr.exit2929
  %i.ayf = load i32, ptr %i.axl, align 4, !tbaa !14 ; 2 uses
  %i.ayg = icmp ult i32 %i.axv, %i.ayf
  br i1 %i.ayg, label %bb.oh, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.ayh = sub nuw i32 %i.axv, %i.ayf
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.axl, i64 8
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !15
  %.not2644 = icmp ult i32 %i.ayh, %i.ayj
  br i1 %.not2644, label %bb.oi, label %bb.oh

bb.oh:                                            ; preds = %bb.og, %bb.of
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.66) #22
  br label %bb.qb

bb.oi:                                            ; preds = %bb.og
  %i.ayk = load i32, ptr %i.ayc, align 4, !tbaa !14 ; 2 uses
  %.not2645 = icmp eq i32 %i.axy, %i.ayk
  br i1 %.not2645, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.76, i32 noundef %i.axy, i32 noundef %i.ayk) #22
  br label %bb.qb

bb.ok:                                            ; preds = %bb.oi
  %i.ayl = call i32 @llvm.umax.i32(i32 %i.aye, i32 %i.aya)
  %i.aym = zext i32 %i.ayl to i64
  %i.ayn = call i32 @cli_checklimits(ptr noundef nonnull @.str.58, ptr noundef nonnull %0, i64 noundef %i.aym, i64 noundef 0, i64 noundef 0) #22
  %.not2646 = icmp eq i32 %i.ayn, 0
  br i1 %.not2646, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.om:                                            ; preds = %bb.ok
  %i.ayo = icmp ugt i32 %i.aya, 25
  %i.ayp = load i32, ptr %i.i, align 4            ; 2 uses
  %.not2647 = icmp ugt i32 %i.ayp, %i.aya
  %or.cond2892 = select i1 %i.ayo, i1 %.not2647, i1 false
  br i1 %or.cond2892, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %bb.om
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.59, i32 noundef %i.aya, i32 noundef %i.ayp) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.oo:                                            ; preds = %bb.om
  %i.ayq = load ptr, ptr %2, align 8, !tbaa !29
  %i.ayr = getelementptr inbounds nuw [36 x i8], ptr %i.ayq, i64 %i.axk
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 8
  %i.ayt = load i32, ptr %i.ays, align 4, !tbaa !15
  %i.ayu = sub i32 %i.ayt, %i.aww                 ; 4 uses
  %i.ayv = zext i32 %i.ayu to i64                 ; 2 uses
  %i.ayw = call i32 @cli_checklimits(ptr noundef nonnull @.str.58, ptr noundef nonnull %0, i64 noundef %i.ayv, i64 noundef 0, i64 noundef 0) #22
  %.not2648 = icmp eq i32 %i.ayw, 0
  br i1 %.not2648, label %bb.oq, label %bb.op

bb.op:                                            ; preds = %bb.oo
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.oq:                                            ; preds = %bb.oo
  %3 = zext i32 %i.aww to i64
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ac, i64 104 ; 2 uses
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !38
  %i.ayz = call ptr %i.ayy(ptr noundef %i.ac, i64 noundef range(i64 0, 8589934855) %3, i64 noundef %i.ayv, i32 noundef 0) #22, !inline_history !0 ; 6 uses
  %.not2649 = icmp eq ptr %i.ayz, null
  br i1 %.not2649, label %bb.or, label %.preheader3184

.preheader3184:                                   ; preds = %bb.oq
  %i.aza = add i32 %i.ayu, -2                     ; 2 uses
  %.not3337 = icmp eq i32 %i.aza, 0
  br i1 %.not3337, label %.thread3047, label %.lr.ph3285

.lr.ph3285:                                       ; preds = %.preheader3184
  %i.azb = load i32, ptr %i.awu, align 4
  %i.azc = load ptr, ptr %2, align 8
  %i.azd = getelementptr inbounds nuw [36 x i8], ptr %i.azc, i64 %i.ayb ; 2 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 4
  %invariant.op = sub i32 -8192, %i.azb
  br label %bb.os

bb.or:                                            ; preds = %bb.oq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.75, i32 noundef %i.ayu) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.os:                                            ; preds = %.lr.ph3285, %bb.ow
  %.020953284 = phi i32 [ 0, %.lr.ph3285 ], [ %i.azx, %bb.ow ] ; 5 uses
  %.020973283 = phi i32 [ 0, %.lr.ph3285 ], [ %i.azs, %bb.ow ] ; 2 uses
  %i.azf = zext i32 %.020953284 to i64
  %i.azg = getelementptr inbounds nuw i8, ptr %i.ayz, i64 %i.azf
  %i.azh = load i8, ptr %i.azg, align 1, !tbaa !39
  %i.azi = sext i8 %i.azh to i32
  %i.azj = or disjoint i32 %.020953284, 1
  %i.azk = zext i32 %i.azj to i64
  %i.azl = getelementptr inbounds nuw i8, ptr %i.ayz, i64 %i.azk
  %i.azm = load i8, ptr %i.azl, align 1, !tbaa !39
  %i.azn = sext i8 %i.azm to i32
  %i.azo = shl nsw i32 %i.azn, 8
  %i.azp = or i32 %i.azo, %i.azi                  ; 2 uses
  %i.azq = add nsw i32 %i.azp, -1
  %or.cond131 = icmp ult i32 %i.azq, 2
  br i1 %or.cond131, label %.thread3047, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.azr = shl nsw i32 %i.azp, 12
  %.reass.reass.reass = add i32 %i.azr, %invariant.op ; 2 uses
  %i.azs = add nuw nsw i32 %.020973283, 1         ; 4 uses
  %i.azt = load i32, ptr %i.azd, align 4, !tbaa !14 ; 2 uses
  %i.azu = icmp ult i32 %.reass.reass.reass, %i.azt
  br i1 %i.azu, label %bb.ov, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.azv = sub nuw i32 %.reass.reass.reass, %i.azt
  %i.azw = load i32, ptr %i.aze, align 4, !tbaa !61
  %.not2650 = icmp ult i32 %i.azv, %i.azw
  br i1 %.not2650, label %bb.ow, label %bb.ov

bb.ov:                                            ; preds = %bb.ou, %bb.ot
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.78, i32 noundef %i.azs) #22
  br label %.thread3047

bb.ow:                                            ; preds = %bb.ou
  %i.azx = add i32 %.020953284, 2                 ; 3 uses
  %i.azy = icmp ult i32 %i.azx, %i.aza
  br i1 %i.azy, label %bb.os, label %.thread3047

.thread3047:                                      ; preds = %bb.ow, %bb.os, %.preheader3184, %bb.ov
  %.020953193 = phi i32 [ %.020953284, %bb.ov ], [ 0, %.preheader3184 ], [ %i.azx, %bb.ow ], [ %.020953284, %bb.os ] ; 2 uses
  %.22099 = phi i32 [ %i.azs, %bb.ov ], [ 0, %.preheader3184 ], [ %i.azs, %bb.ow ], [ %.020973283, %bb.os ] ; 4 uses
  %i.azz = add i32 %i.ayu, -10
  %.not2651 = icmp ult i32 %.020953193, %i.azz
  br i1 %.not2651, label %bb.ox, label %bb.qb

bb.ox:                                            ; preds = %.thread3047
  %i.baa = zext i32 %.020953193 to i64
  %i.bab = getelementptr inbounds nuw i8, ptr %i.ayz, i64 %i.baa
  %i.bac = getelementptr inbounds nuw i8, ptr %i.bab, i64 6
  %i.bad = load i32, ptr %i.bac, align 1, !tbaa !39
  %.not2652 = icmp eq i32 %i.bad, 2
  br i1 %.not2652, label %bb.oy, label %bb.qb

bb.oy:                                            ; preds = %bb.ox
  %i.bae = add nsw i32 %.22099, 1
  %i.baf = sext i32 %i.bae to i64
  %i.bag = mul nsw i64 %i.baf, 36                 ; 2 uses
  %i.bah = call ptr @cli_max_malloc(i64 noundef %i.bag) #22 ; 13 uses
  %i.bai = icmp eq ptr %i.bah, null
  br i1 %i.bai, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.79, i64 noundef %i.bag) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.pa:                                            ; preds = %bb.oy
  store i32 %i.axy, ptr %i.bah, align 4, !tbaa !14
  %.not3339 = icmp eq i32 %.22099, 0
  br i1 %.not3339, label %._crit_edge3294, label %.lr.ph3293.preheader

.lr.ph3293.preheader:                             ; preds = %bb.pa
  %wide.trip.count3397 = zext i32 %.22099 to i64
  br label %.lr.ph3293

.lr.ph3293:                                       ; preds = %.lr.ph3293.preheader, %.lr.ph3293
  %indvars.iv3394 = phi i64 [ 0, %.lr.ph3293.preheader ], [ %indvars.iv.next3395, %.lr.ph3293 ] ; 2 uses
  %i.baj = trunc nuw i64 %indvars.iv3394 to i32
  %i.bak = shl i32 %i.baj, 1                      ; 2 uses
  %i.bal = zext i32 %i.bak to i64
  %i.bam = getelementptr inbounds nuw i8, ptr %i.ayz, i64 %i.bal
  %i.ban = load i8, ptr %i.bam, align 1, !tbaa !39
  %i.bao = sext i8 %i.ban to i32
  %i.bap = or disjoint i32 %i.bak, 1
  %i.baq = zext i32 %i.bap to i64
  %i.bar = getelementptr inbounds nuw i8, ptr %i.ayz, i64 %i.baq
  %i.bas = load i8, ptr %i.bar, align 1, !tbaa !39
  %i.bat = sext i8 %i.bas to i32
  %i.bau = shl nsw i32 %i.bat, 20
  %i.bav = shl nsw i32 %i.bao, 12
  %i.baw = or i32 %i.bau, %i.bav
  %i.bax = load i32, ptr %i.awu, align 4, !tbaa !39
  %reass.sub3340 = sub i32 %i.baw, %i.bax
  %i.bay = add i32 %reass.sub3340, -8192
  %indvars.iv.next3395 = add nuw nsw i64 %indvars.iv3394, 1 ; 3 uses
  %i.baz = getelementptr inbounds nuw [36 x i8], ptr %i.bah, i64 %indvars.iv.next3395
  store i32 %i.bay, ptr %i.baz, align 4, !tbaa !14
  %exitcond3398.not = icmp eq i64 %indvars.iv.next3395, %wide.trip.count3397
  br i1 %exitcond3398.not, label %._crit_edge3294, label %.lr.ph3293

._crit_edge3294:                                  ; preds = %.lr.ph3293, %bb.pa
  %i.bba = load ptr, ptr %2, align 8, !tbaa !29
  %i.bbb = getelementptr inbounds nuw [36 x i8], ptr %i.bba, i64 %i.axk ; 2 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 12
  %i.bbd = load i32, ptr %i.bbc, align 4, !tbaa !13
  %.not2653 = icmp eq i32 %i.bbd, 0
  br i1 %.not2653, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %._crit_edge3294
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbb, i64 8
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !15
  %i.bbg = zext i32 %i.bbf to i64
  %i.bbh = zext i32 %i.aya to i64
  %i.bbi = load ptr, ptr %i.ayx, align 8, !tbaa !38
  %i.bbj = call ptr %i.bbi(ptr noundef %i.ac, i64 noundef range(i64 0, 8589934855) %i.bbg, i64 noundef %i.bbh, i32 noundef 0) #22, !inline_history !0 ; 3 uses
  %.not2654 = icmp eq ptr %i.bbj, null
  br i1 %.not2654, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb, %._crit_edge3294
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.80, i32 noundef %.622202992) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void @free(ptr noundef nonnull %i.bah) #22
  br label %.thread2995

bb.pd:                                            ; preds = %bb.pb
  %i.bbk = load i32, ptr %i.i, align 4, !tbaa !16
  %i.bbl = zext i32 %i.bbk to i64
  %i.bbm = call ptr @cli_max_calloc(i64 noundef %i.bbl, i64 noundef 1) #22 ; 8 uses
  %i.bbn = icmp eq ptr %i.bbm, null
  br i1 %i.bbn, label %bb.pe, label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void @free(ptr noundef nonnull %i.bah) #22
  br label %.thread2995

bb.pf:                                            ; preds = %bb.pd
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bbp = load i8, ptr %i.bbo, align 16, !tbaa !39
  %i.bbq = icmp eq i8 %i.bbp, -24
  %i.bbr = select i1 %i.bbq, i32 224, i32 218     ; 2 uses
  %i.bbs = load i32, ptr %i.axg, align 8, !tbaa !95
  %i.bbt = zext nneg i32 %i.bbr to i64
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbj, i64 %i.bbt
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 2
  %i.bbw = zext i32 %i.axn to i64
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbv, i64 %i.bbw
  %i.bby = load i32, ptr %i.bbx, align 1, !tbaa !39
  %i.bbz = add i32 %i.bbs, 6
  %i.bca = add i32 %i.bbz, %i.bbr
  %i.bcb = add i32 %i.bca, %i.bby                 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.68, i32 noundef %i.bcb) #22
  %.not2655 = icmp eq ptr %.02164, null
  br i1 %.not2655, label %bb.ph, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.bcc = call i32 @cli_jsonstr(ptr noundef nonnull %.02164, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.69) #22 ; 0 uses
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  %i.bcd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bce = load ptr, ptr %i.bcd, align 8, !tbaa !127
  %i.bcf = call ptr @cli_gentemp(ptr noundef %i.bce) #22 ; 3 uses
  store ptr %i.bcf, ptr %i.g, align 8, !tbaa !82
  %.not2656 = icmp eq ptr %i.bcf, null
  br i1 %.not2656, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bbm, ptr noundef nonnull %i.bah, i32 noundef 0)
  br label %.thread2995

bb.pj:                                            ; preds = %bb.ph
  %i.bcg = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bcf, i32 noundef 578, i32 noundef 384) #22 ; 7 uses
  %i.bch = icmp slt i32 %i.bcg, 0
  br i1 %i.bch, label %bb.pk, label %bb.pl
end_hunk_0
begin_hunk_1_@scan_pe_imp:bb.a
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
  %.083182 = phi ptr [ %i.an, %.preheader ], [ %i.de, %.thread ] ; 3 uses
  %.084181 = phi i32 [ 0, %.preheader ], [ %i.dd, %.thread ]
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
  %9 = zext i32 %.030.i120156 to i64
  %i.bv = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.bw = tail call ptr %i.bv(ptr noundef nonnull %2, i64 noundef range(i64 0, 8589934855) %9, i64 noundef 16, i32 noundef 0) #22, !inline_history !0 ; 3 uses
  %.not105 = icmp eq ptr %i.bw, null
  br i1 %.not105, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load i32, ptr %i.bx, align 1, !tbaa !39 ; 5 uses
  %i.bz = load i32, ptr %i.bw, align 1, !tbaa !39 ; 5 uses
  %i.ca = load ptr, ptr %3, align 8, !tbaa !29
  %i.cb = load i16, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.cc = load i32, ptr %i.d, align 8, !tbaa !31
  %i.cd = icmp ult i32 %i.bz, %i.cc
  br i1 %i.cd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ce = zext i32 %i.bz to i64
  %.not36.i134.not = icmp samesign ugt i64 %4, %i.ce ; 2 uses
  %.48.i136 = select i1 %.not36.i134.not, i32 %i.bz, i32 0
  br label %cli_rawaddr.exit137

bb.aa:                                            ; preds = %bb.y
  %i.cf = icmp eq i16 %i.cb, 0
  br i1 %i.cf, label %cli_rawaddr.exit137.thread, label %.lr.ph.preheader.i125

.lr.ph.preheader.i125:                            ; preds = %bb.aa
  %i.cg = zext i16 %i.cb to i64
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %bb.ac, %.lr.ph.preheader.i125
  %indvars.iv.i127 = phi i64 [ %i.cg, %.lr.ph.preheader.i125 ], [ %indvars.iv.next.i128, %bb.ac ] ; 2 uses
  %indvars.iv.next.i128 = add nsw i64 %indvars.iv.i127, -1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [36 x i8], ptr %i.ca, i64 %indvars.iv.next.i128 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !13 ; 2 uses
  %.not.i129 = icmp eq i32 %i.cj, 0
  br i1 %.not.i129, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i126
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !14 ; 2 uses
  %.not34.i130 = icmp ule i32 %i.ck, %i.bz
  %i.cl = sub i32 %i.bz, %i.ck                    ; 2 uses
  %i.cm = icmp ugt i32 %i.cj, %i.cl
  %or.cond.i131 = and i1 %.not34.i130, %i.cm
  br i1 %or.cond.i131, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i126
  %i.cn = icmp samesign ult i64 %indvars.iv.i127, 2
  br i1 %i.cn, label %cli_rawaddr.exit137.thread, label %.lr.ph.i126

bb.ad:                                            ; preds = %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !15
  %i.cq = add i32 %i.cp, %i.cl
  br label %cli_rawaddr.exit137

cli_rawaddr.exit137:                              ; preds = %bb.z, %bb.ad
  %.sink.i132 = phi i1 [ true, %bb.ad ], [ %.not36.i134.not, %bb.z ]
  %.030.i133 = phi i32 [ %i.cq, %bb.ad ], [ %.48.i136, %bb.z ] ; 4 uses
  %i.cr = icmp ne i32 %i.by, 0
  %or.cond = select i1 %.sink.i132, i1 %i.cr, i1 false
  br i1 %or.cond, label %bb.ae, label %cli_rawaddr.exit137.thread

bb.ae:                                            ; preds = %cli_rawaddr.exit137
  %i.cs = zext i32 %i.by to i64                   ; 2 uses
  %.not106 = icmp samesign ugt i64 %4, %i.cs
  %i.ct = add i32 %.030.i133, %i.by
  %i.cu = zext i32 %i.ct to i64
  %.not107 = icmp samesign ugt i64 %4, %i.cu
  %or.cond111 = select i1 %.not106, i1 %.not107, i1 false
  br i1 %or.cond111, label %bb.af, label %cli_rawaddr.exit137.thread

cli_rawaddr.exit137.thread:                       ; preds = %bb.ac, %bb.aa, %bb.ae, %cli_rawaddr.exit137
  %.030.i133160 = phi i32 [ %.030.i133, %cli_rawaddr.exit137 ], [ %.030.i133, %bb.ae ], [ 0, %bb.aa ], [ 0, %bb.ac ]
  %i.cv = zext i32 %.030.i133160 to i64
  %i.cw = zext i32 %i.by to i64
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.354, i64 noundef %i.cv, i64 noundef %i.cw) #22
  %i.cx = load i32, ptr %i.ao, align 4, !tbaa !147
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.ao, align 4, !tbaa !147
  br label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.cz = and i32 %i.ax, 255
  %.not108 = icmp eq i32 %i.cz, 9
  br i1 %.not108, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.da = zext i32 %.030.i133 to i64
  %i.db = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.dc = tail call ptr %i.db(ptr noundef nonnull %2, i64 noundef range(i64 0, 8589934855) %i.da, i64 noundef %i.cs, i32 noundef 0) #22, !inline_history !0 ; 2 uses
  %.not109 = icmp eq ptr %i.dc, null
  br i1 %.not109, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @cli_detect_swizz_str(ptr noundef nonnull %i.dc, i32 noundef %i.by, ptr noundef nonnull %8, i32 noundef %.186148) #22
  br label %.thread

bb.ai:                                            ; preds = %bb.m
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.353) #22
  br label %bb.ak

.thread:                                          ; preds = %bb.w, %bb.ag, %bb.ah, %bb.u, %bb.q, %bb.o, %bb.af, %bb.r, %cli_rawaddr.exit137.thread, %cli_rawaddr.exit124, %bb.x, %bb.s
  %.2.ph = phi i32 [ %.186148, %bb.s ], [ %.186148, %bb.x ], [ %.186148, %cli_rawaddr.exit124 ], [ 0, %bb.q ], [ %.186148, %bb.u ], [ %.186148, %cli_rawaddr.exit137.thread ], [ 0, %bb.r ], [ %.186148, %bb.af ], [ 0, %bb.o ], [ %.186148, %bb.ag ], [ %.186148, %bb.ah ], [ %.186148, %bb.w ]
  %i.dd = add nuw nsw i32 %.084181, 1             ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.083182, i64 8
  %exitcond.not = icmp eq i32 %i.dd, %i.ac
  br i1 %exitcond.not, label %bb.aj, label %bb.m

bb.aj:                                            ; preds = %.thread
  %i.df = getelementptr i8, ptr %2, i64 16
  %.val.i = load ptr, ptr %i.df, align 8, !tbaa !40
  %i.dg = getelementptr i8, ptr %2, i64 72
  %.val3.i = load i64, ptr %i.dg, align 8, !tbaa !41
  %i.dh = ptrtoint ptr %i.an to i64
  %i.di = ptrtoint ptr %.val.i to i64
  %i.dj = add i64 %.val3.i, %i.di
  %i.dk = sub i64 %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !99
  tail call void %i.dm(ptr noundef nonnull %2, i64 noundef %i.dk, i64 noundef range(i64 8, 524281) %i.al) #22, !inline_history !145
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

end_hunk_1
begin_hunk_2_@cli_hashsect:bb.a
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
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.367) #22
  br label %.thread213

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %4, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !31
  %i.r = icmp ult i32 %i.h, %i.q
  br i1 %i.r, label %cli_rawaddr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i16 %i.o, 0
  br i1 %i.s, label %cli_rawaddr.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.t = zext i16 %i.o to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.t, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.u = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %indvars.iv.next.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !13   ; 2 uses
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.x = load i32, ptr %i.u, align 4, !tbaa !14   ; 2 uses
  %.not34.i = icmp ule i32 %i.x, %i.h
  %i.y = sub i32 %i.h, %i.x                       ; 2 uses
  %i.z = icmp ugt i32 %i.w, %i.y
  %or.cond.i = and i1 %.not34.i, %i.z
  br i1 %or.cond.i, label %cli_rawaddr.exit.thread130, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.aa = icmp samesign ult i64 %indvars.iv.i, 2
  br i1 %i.aa, label %cli_rawaddr.exit.thread, label %.lr.ph.i

cli_rawaddr.exit.thread130:                       ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !15
  %i.ad = add i32 %i.ac, %i.y
  br label %bb.h

cli_rawaddr.exit:                                 ; preds = %bb.d
  %i.ae = zext i32 %i.h to i64
  %.not36.i.not = icmp ugt i64 %i.f, %i.ae
  br i1 %.not36.i.not, label %bb.h, label %cli_rawaddr.exit.thread

bb.h:                                             ; preds = %cli_rawaddr.exit.thread130, %cli_rawaddr.exit
  %.030.i134 = phi i32 [ %i.ad, %cli_rawaddr.exit.thread130 ], [ %i.h, %cli_rawaddr.exit ] ; 2 uses
  %i.af = add i32 %.030.i134, %i.k
  %i.ag = zext i32 %i.af to i64
  %i.ah = icmp ult i64 %i.f, %i.ag
  br i1 %i.ah, label %cli_rawaddr.exit.thread, label %bb.i

cli_rawaddr.exit.thread:                          ; preds = %bb.g, %bb.e, %bb.h, %cli_rawaddr.exit
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.368) #22
  br label %.thread213

bb.i:                                             ; preds = %bb.h
  %i.ai = zext i32 %.030.i134 to i64              ; 2 uses
  %i.aj = zext i32 %i.k to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38
  %i.am = tail call ptr %i.al(ptr noundef %i.d, i64 noundef range(i64 0, 4294967296) %i.ai, i64 noundef range(i64 0, 4294967296) %i.aj, i32 noundef 1) #22, !inline_history !2 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.369) #22
  br label %.thread213

bb.k:                                             ; preds = %bb.i
  %i.ao = load i32, ptr %i.j, align 4, !tbaa !94  ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = load i8, ptr %3, align 1, !tbaa !83, !range !104, !noundef !105
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.as = tail call ptr @cli_hash_name(i32 noundef 0) #22
  %i.at = tail call ptr @cl_hash_init(ptr noundef %i.as) #22 ; 3 uses
  store ptr %i.at, ptr %i.a, align 16, !tbaa !103
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.q, %bb.o, %bb.l
  %i.av = phi ptr [ null, %bb.l ], [ null, %bb.o ], [ %i.bg, %bb.q ]
  %i.aw = phi ptr [ null, %bb.l ], [ %i.ay, %bb.o ], [ %i.ay, %bb.q ]
  %.085171.lcssa.wide = phi i32 [ 0, %bb.l ], [ 1, %bb.o ], [ 2, %bb.q ]
  %i.ax = tail call ptr @cli_hash_name(i32 noundef %.085171.lcssa.wide) #22
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.370, ptr noundef %i.ax) #22
  br label %.loopexit

bb.n:                                             ; preds = %bb.k, %bb.l
  %i.ay = phi ptr [ null, %bb.k ], [ %i.at, %bb.l ] ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !83, !range !104, !noundef !105
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = tail call ptr @cli_hash_name(i32 noundef 1) #22
  %i.bd = tail call ptr @cl_hash_init(ptr noundef %i.bc) #22 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !103
  %i.bf = icmp eq ptr %i.bd, null
  br i1 %i.bf, label %bb.m, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bg = phi ptr [ %i.bd, %bb.o ], [ null, %bb.n ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !83, !range !104, !noundef !105
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.q, label %.preheader.preheader

bb.q:                                             ; preds = %bb.p
  %i.bk = tail call ptr @cli_hash_name(i32 noundef 2) #22
  %i.bl = tail call ptr @cl_hash_init(ptr noundef %i.bk) #22 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bl, ptr %i.bm, align 16, !tbaa !103
  %i.bn = icmp eq ptr %i.bl, null
  br i1 %i.bn, label %bb.m, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.q, %bb.p
  %i.bo = phi ptr [ %i.bl, %bb.q ], [ null, %bb.p ] ; 5 uses
  %i.bp = icmp ugt i32 %i.ao, 20
  br i1 %i.bp, label %.lr.ph, label %.thread148

.preheader:                                       ; preds = %bb.aa
  %i.bq = icmp ugt i64 %i.bu, 20
  %i.br = icmp samesign ult i32 %.084233, 1023
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %i.bs, label %.lr.ph, label %.thread148

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.084233 = phi i32 [ %i.bv, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %.088232 = phi i64 [ %i.bu, %.preheader ], [ %i.ap, %.preheader.preheader ]
  %.090231 = phi ptr [ %i.bw, %.preheader ], [ %i.am, %.preheader.preheader ] ; 4 uses
  %.sroa.0.0.copyload = load i32, ptr %.090231, align 4
  %.sroa.5125.0..090.sroa_idx = getelementptr inbounds nuw i8, ptr %.090231, i64 12
  %.sroa.5125.0.copyload = load i32, ptr %.sroa.5125.0..090.sroa_idx, align 4 ; 6 uses
  %.sroa.6.0..090.sroa_idx = getelementptr inbounds nuw i8, ptr %.090231, i64 16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..090.sroa_idx, align 4
  %i.bt = icmp eq i32 %.sroa.5125.0.copyload, 0
  br i1 %i.bt, label %.thread148, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.bu = add nsw i64 %.088232, -20               ; 2 uses
  %i.bv = add nuw nsw i32 %.084233, 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.090231, i64 20
  %i.bx = load ptr, ptr %4, align 8, !tbaa !29
  %i.by = load i16, ptr %i.n, align 8, !tbaa !30  ; 2 uses
  %i.bz = load i32, ptr %i.p, align 8, !tbaa !31
  %i.ca = icmp ult i32 %.sroa.5125.0.copyload, %i.bz
  br i1 %i.ca, label %cli_rawaddr.exit121, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = icmp eq i16 %i.by, 0
  br i1 %i.cb, label %cli_rawaddr.exit121.thread, label %.lr.ph.preheader.i109

.lr.ph.preheader.i109:                            ; preds = %bb.s
  %i.cc = zext i16 %i.by to i64
  br label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.u, %.lr.ph.preheader.i109
  %indvars.iv.i111 = phi i64 [ %i.cc, %.lr.ph.preheader.i109 ], [ %indvars.iv.next.i112, %bb.u ] ; 2 uses
  %indvars.iv.next.i112 = add nsw i64 %indvars.iv.i111, -1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [36 x i8], ptr %i.bx, i64 %indvars.iv.next.i112 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !13 ; 2 uses
  %.not.i113 = icmp eq i32 %i.cf, 0
  br i1 %.not.i113, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i110
  %i.cg = load i32, ptr %i.cd, align 4, !tbaa !14 ; 2 uses
  %.not34.i114 = icmp ule i32 %i.cg, %.sroa.5125.0.copyload
  %i.ch = sub i32 %.sroa.5125.0.copyload, %i.cg   ; 2 uses
  %i.ci = icmp ugt i32 %i.cf, %i.ch
  %or.cond.i115 = and i1 %.not34.i114, %i.ci
  br i1 %or.cond.i115, label %cli_rawaddr.exit121.thread138, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i110
  %i.cj = icmp samesign ult i64 %indvars.iv.i111, 2
  br i1 %i.cj, label %cli_rawaddr.exit121.thread, label %.lr.ph.i110

cli_rawaddr.exit121.thread138:                    ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !15
  %i.cm = add i32 %i.cl, %i.ch
  br label %bb.v

cli_rawaddr.exit121:                              ; preds = %bb.r
  %i.cn = zext i32 %.sroa.5125.0.copyload to i64
  %.not36.i118.not = icmp ugt i64 %i.f, %i.cn
  br i1 %.not36.i118.not, label %bb.v, label %cli_rawaddr.exit121.thread

bb.v:                                             ; preds = %cli_rawaddr.exit121.thread138, %cli_rawaddr.exit121
  %.030.i117142 = phi i32 [ %i.cm, %cli_rawaddr.exit121.thread138 ], [ %.sroa.5125.0.copyload, %cli_rawaddr.exit121 ]
  %5 = zext i32 %.030.i117142 to i64              ; 3 uses
  %i.co = icmp ult i64 %i.f, %5
  br i1 %i.co, label %cli_rawaddr.exit121.thread, label %bb.w

cli_rawaddr.exit121.thread:                       ; preds = %bb.s, %bb.v, %cli_rawaddr.exit121, %bb.u
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.371) #22
  br label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.cp = sub nuw i64 %i.f, %5
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 256) ; 2 uses
  %i.cr = load ptr, ptr %i.ak, align 8, !tbaa !38
  %i.cs = tail call ptr %i.cr(ptr noundef %i.d, i64 noundef range(i64 0, 8589934855) %5, i64 noundef %i.cq, i32 noundef 0) #22, !inline_history !0 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.372) #22
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.cu = tail call noalias ptr @strndup(ptr noundef nonnull %i.cs, i64 noundef %i.cq) #22 ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.374) #22
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  %i.cw = call fastcc i32 @hash_impfns(ptr noundef %0, ptr noundef %i.a, ptr noundef %2, i32 %.sroa.0.0.copyload, i32 %.sroa.6.0.copyload, ptr noundef %i.cu, ptr noundef %4, ptr noundef %i.b) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.cu) #22
  %.not106 = icmp eq i32 %i.cw, 0
  br i1 %.not106, label %.preheader, label %.loopexit

.thread148:                                       ; preds = %.preheader, %.lr.ph, %.preheader.preheader
  %i.cx = load ptr, ptr %1, align 8, !tbaa !82
  %i.cy = tail call i32 @cl_finish_hash(ptr noundef %i.ay, ptr noundef %i.cx) #22 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !82
  %i.db = tail call i32 @cl_finish_hash(ptr noundef %i.bg, ptr noundef %i.da) #22 ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !82
  %i.de = tail call i32 @cl_finish_hash(ptr noundef %i.bo, ptr noundef %i.dd) #22 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aa, %bb.m, %cli_rawaddr.exit121.thread, %bb.x, %bb.z, %.thread148
  %i.df = phi ptr [ %i.bo, %cli_rawaddr.exit121.thread ], [ null, %bb.m ], [ %i.bo, %bb.z ], [ null, %.thread148 ], [ %i.bo, %bb.x ], [ %i.bo, %bb.aa ] ; 2 uses
  %i.dg = phi ptr [ %i.bg, %cli_rawaddr.exit121.thread ], [ %i.av, %bb.m ], [ %i.bg, %bb.z ], [ null, %.thread148 ], [ %i.bg, %bb.x ], [ %i.bg, %bb.aa ] ; 2 uses
  %i.dh = phi ptr [ %i.ay, %cli_rawaddr.exit121.thread ], [ %i.aw, %bb.m ], [ %i.ay, %bb.z ], [ null, %.thread148 ], [ %i.ay, %bb.x ], [ %i.ay, %bb.aa ] ; 2 uses
  %.294.ph = phi i32 [ 26, %cli_rawaddr.exit121.thread ], [ 20, %bb.m ], [ 20, %bb.z ], [ 0, %.thread148 ], [ 12, %bb.x ], [ %i.cw, %bb.aa ] ; 2 uses
  %i.di = load i32, ptr %i.j, align 4, !tbaa !94
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !99
  tail call void %i.dl(ptr noundef %i.d, i64 noundef %i.ai, i64 noundef range(i64 0, 4294967296) %i.dj) #22, !inline_history !3
  %.not107 = icmp eq ptr %i.dh, null
  br i1 %.not107, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  tail call void @cl_hash_destroy(ptr noundef nonnull %i.dh) #22
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %bb.ab
  %.not107.1 = icmp eq ptr %i.dg, null
  br i1 %.not107.1, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @cl_hash_destroy(ptr noundef nonnull %i.dg) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not107.2 = icmp eq ptr %i.df, null
  br i1 %.not107.2, label %.thread213, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @cl_hash_destroy(ptr noundef nonnull %i.df) #22
  br label %.thread213

.thread213:                                       ; preds = %bb.j, %cli_rawaddr.exit.thread, %bb.c, %bb.af, %bb.ae
  %.294159208212216 = phi i32 [ %.294.ph, %bb.ae ], [ %.294.ph, %bb.af ], [ 12, %bb.j ], [ 22, %cli_rawaddr.exit.thread ], [ 22, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.294159208212216
}

declare i32 @json_object_object_get_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @json_object_new_object() local_unnamed_addr #3

declare i32 @json_object_object_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @cli_hm_have_wild(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cl_hash_data(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cli_append_virus(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cli_hm_scan_wild(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @cli_hm_have_any(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cli_detect_swizz_str(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #15

declare ptr @json_object_new_array() local_unnamed_addr #3

declare ptr @json_object_new_string(ptr noundef) local_unnamed_addr #3

declare i32 @json_object_array_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @json_object_new_int(i32 noundef) local_unnamed_addr #3

declare ptr @json_object_new_boolean(i32 noundef) local_unnamed_addr #3

declare ptr @cl_sha1(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cl_sha256(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cli_hash_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strndup(ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 27) i32 @hash_impfns(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 %.0.val, i32 %.16.val, ptr noundef nonnull %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #4 {
bb.a:
  %.sroa.01 = alloca i32, align 4                 ; 7 uses
  %.sroa.0 = alloca i64, align 8                  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37   ; 7 uses
  %.not = icmp eq i32 %.0.val, 0
  %.pre = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre161 = load i16, ptr %.phi.trans.insert, align 8, !tbaa !30 ; 4 uses
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre163 = load i32, ptr %.phi.trans.insert162, align 8, !tbaa !31 ; 3 uses
  br i1 %.not, label %cli_rawaddr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %.0.val, %.pre163
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %.0.val to i64
  %.not36.i = icmp ule i64 %i.d, %i.f             ; 2 uses
  %.48.i = select i1 %.not36.i, i32 0, i32 %.0.val
  br label %cli_rawaddr.exit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i16 %.pre161, 0
  br i1 %i.g, label %cli_rawaddr.exit.thread.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.h = zext i16 %.pre161 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.i = getelementptr inbounds nuw [36 x i8], ptr %.pre, i64 %indvars.iv.next.i ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !13   ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.l = load i32, ptr %i.i, align 4, !tbaa !14   ; 2 uses
  %.not34.i = icmp ule i32 %i.l, %.0.val
  %i.m = sub i32 %.0.val, %i.l                    ; 2 uses
  %i.n = icmp ugt i32 %i.k, %i.m
  %or.cond.i = and i1 %.not34.i, %i.n
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %i.o = icmp samesign ult i64 %indvars.iv.i, 2
  br i1 %i.o, label %cli_rawaddr.exit.thread, label %.lr.ph.i

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %i.r = add i32 %i.q, %i.m
  br label %cli_rawaddr.exit

cli_rawaddr.exit:                                 ; preds = %bb.g, %bb.c
  %.04 = phi i1 [ %.not36.i, %bb.c ], [ false, %bb.g ]
  %.0201 = phi i32 [ %.48.i, %bb.c ], [ %i.r, %bb.g ] ; 2 uses
  %i.s = icmp eq i32 %.0201, 0
  %or.cond = select i1 %.04, i1 true, i1 %i.s
  br i1 %or.cond, label %cli_rawaddr.exit.thread, label %cli_rawaddr.exit293.thread

cli_rawaddr.exit.thread:                          ; preds = %bb.f, %bb.a, %cli_rawaddr.exit
  %i.t = icmp ult i32 %.16.val, %.pre163
  br i1 %i.t, label %cli_rawaddr.exit293, label %bb.h

cli_rawaddr.exit.thread.thread:                   ; preds = %bb.d
  %i.u = icmp ult i32 %.16.val, %.pre163
  %i.v = zext i32 %.16.val to i64
  %.not36.i290.not = icmp ugt i64 %i.d, %i.v
  %or.cond224 = select i1 %i.u, i1 %.not36.i290.not, i1 false
  br i1 %or.cond224, label %cli_rawaddr.exit293.thread, label %cli_rawaddr.exit293.thread14

bb.h:                                             ; preds = %cli_rawaddr.exit.thread
  %i.w = icmp eq i16 %.pre161, 0
  br i1 %i.w, label %cli_rawaddr.exit293.thread14, label %.lr.ph.preheader.i281

end_hunk_2
