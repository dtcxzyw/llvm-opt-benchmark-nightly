Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_pe?download=true
inline.NumInlined: 58
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cli_scanpe:bb.a

bb.sr:                                            ; preds = %bb.sq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.165, ptr noundef nonnull %i.auz) #13
  br label %bb.st

bb.ss:                                            ; preds = %bb.sq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.166) #13
  br label %bb.st

bb.st:                                            ; preds = %bb.ss, %bb.sr
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.auf, ptr noundef nonnull %i.aul, ptr noundef nonnull %i.atl, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.avo = call i32 @fsync(i32 noundef %i.ava) #13 ; 0 uses
  %i.avp = call i64 @lseek(i32 noundef %i.ava, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.avq = call i32 @cli_magic_scandesc(i32 noundef %i.ava, ptr noundef %1) #13
  %i.avr = icmp eq i32 %i.avq, 1
  %i.avs = call i32 @close(i32 noundef %i.ava) #13 ; 0 uses
  %i.avt = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2835 = icmp eq i8 %i.avt, 0                ; 2 uses
  br i1 %i.avr, label %bb.su, label %bb.sx

bb.su:                                            ; preds = %bb.st
  br i1 %.not2835, label %bb.sv, label %bb.sw

bb.sv:                                            ; preds = %bb.su
  %i.avu = call i32 @unlink(ptr noundef nonnull %i.auz) #13 ; 0 uses
  br label %bb.sw

bb.sw:                                            ; preds = %bb.sv, %bb.su
  call void @free(ptr noundef nonnull %i.auz) #13
  br label %.critedge3020

bb.sx:                                            ; preds = %bb.st
  br i1 %.not2835, label %bb.sy, label %bb.sz

bb.sy:                                            ; preds = %bb.sx
  %i.avv = call i32 @unlink(ptr noundef nonnull %i.auz) #13 ; 0 uses
  br label %bb.sz

bb.sz:                                            ; preds = %bb.sy, %bb.sx
  call void @free(ptr noundef nonnull %i.auz) #13
  br label %.critedge3020

bb.ta:                                            ; preds = %bb.sp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.167) #13
  %i.avw = call i32 @close(i32 noundef %i.ava) #13 ; 0 uses
  %i.avx = call i32 @unlink(ptr noundef nonnull %i.auz) #13 ; 0 uses
  call void @free(ptr noundef nonnull %i.auz) #13
  call void @free(ptr noundef nonnull %i.atl) #13
  br label %.thread3279

bb.tb:                                            ; preds = %bb.sp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.168) #13
  %i.avy = call i32 @close(i32 noundef %i.ava) #13 ; 0 uses
  %i.avz = call i32 @unlink(ptr noundef nonnull %i.auz) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.auf, ptr noundef nonnull %i.aul, ptr noundef nonnull %i.atl, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.auz) #13
  br label %bb.tc

bb.tc:                                            ; preds = %bb.qx, %bb.qw, %bb.qv, %bb.qu, %bb.qy, %bb.rb, %bb.rd, %bb.rz, %bb.tb
  %i.awa = load ptr, ptr %i.up, align 8, !tbaa !69
  %i.awb = load i32, ptr %i.awa, align 4, !tbaa !71
  %i.awc = and i32 %i.awb, 32
  %.not2839 = icmp eq i32 %i.awc, 0
  br i1 %.not2839, label %.critedge171, label %bb.td

bb.td:                                            ; preds = %bb.tc
  %i.awd = add i32 %.724143172, 1                 ; 2 uses
  %i.awe = zext i32 %i.awd to i64
  %i.awf = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.awe ; 12 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awf, i64 12
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !30 ; 16 uses
  %i.awi = zext i32 %.724143172 to i64
  %i.awj = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.awi ; 10 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 4
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !28
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awf, i64 4
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !28
  %i.awo = add i32 %i.awn, %i.awl                 ; 5 uses
  store i32 %i.awo, ptr %i.h, align 4, !tbaa !7
  %i.awp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.awq = load ptr, ptr %i.awp, align 8, !tbaa !89 ; 2 uses
  %.not2840 = icmp eq ptr %i.awq, null
  br i1 %.not2840, label %bb.ti, label %bb.te

bb.te:                                            ; preds = %bb.td
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 24
  %i.aws = load i64, ptr %i.awr, align 8, !tbaa !91 ; 3 uses
  %.not2841 = icmp eq i64 %i.aws, 0
  br i1 %.not2841, label %bb.ti, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  %i.awt = call i32 @llvm.umax.i32(i32 %i.awo, i32 %i.awh) ; 2 uses
  %i.awu = zext i32 %i.awt to i64
  %i.awv = icmp ult i64 %i.aws, %i.awu
  br i1 %i.awv, label %bb.tg, label %bb.ti

bb.tg:                                            ; preds = %bb.tf
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.175, i32 noundef %i.awt, i64 noundef %i.aws) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.aww = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.awx = and i32 %i.aww, 256
  %.not2948 = icmp eq i32 %i.awx, 0
  br i1 %.not2948, label %.critedge3020, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.awy = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.176, ptr %i.awy, align 8, !tbaa !64
  br label %.critedge3020

bb.ti:                                            ; preds = %bb.tf, %bb.te, %bb.td
  %i.awz = icmp ult i32 %i.awh, 26
  br i1 %i.awz, label %bb.tk, label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  %i.axa = icmp ule i32 %i.awo, %i.awh
  %i.axb = icmp ugt i32 %i.awo, 184549376
  %or.cond175 = or i1 %i.axa, %i.axb
  br i1 %or.cond175, label %bb.tk, label %bb.tl

bb.tk:                                            ; preds = %bb.tj, %bb.ti
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.177, i32 noundef %i.awh, i32 noundef %i.awo) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.tl:                                            ; preds = %bb.tj
  %i.axc = zext i32 %i.awh to i64
  %i.axd = call ptr @cli_malloc(i64 noundef %i.axc) #13 ; 18 uses
  %i.axe = icmp eq ptr %i.axd, null
  br i1 %i.axe, label %bb.tm, label %bb.tn

bb.tm:                                            ; preds = %bb.tl
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.tn:                                            ; preds = %bb.tl
  %i.axf = load i32, ptr %i.h, align 4, !tbaa !7
  %i.axg = add i32 %i.axf, 8192
  %i.axh = zext i32 %i.axg to i64
  %i.axi = call ptr @cli_calloc(i64 noundef %i.axh, i64 noundef 1) #13 ; 16 uses
  %i.axj = icmp eq ptr %i.axi, null
  br i1 %i.axj, label %bb.to, label %bb.tp

bb.to:                                            ; preds = %bb.tn
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.axd) #13
  br label %.critedge3020

bb.tp:                                            ; preds = %bb.tn
  %i.axk = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.awf)
  %.not2842 = icmp eq i64 %i.axk, 0
  br i1 %.not2842, label %bb.tr, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.axl = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.axd, i32 noundef %i.awh) #13
  %.not2843 = icmp eq i32 %i.axl, %i.awh
  br i1 %.not2843, label %bb.ts, label %bb.tr

bb.tr:                                            ; preds = %bb.tq, %bb.tp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.178, i32 noundef %i.awd) #13
  call void @free(ptr noundef nonnull %i.em) #13
  call void @free(ptr noundef nonnull %i.axd) #13
  call void @free(ptr noundef nonnull %i.axi) #13
  br label %.critedge3020

bb.ts:                                            ; preds = %bb.tq
  %i.axm = getelementptr inbounds nuw i8, ptr %i.f, i64 105 ; 3 uses
  %i.axn = call ptr @cli_memstr(ptr noundef nonnull @.str.179, i32 noundef 24, ptr noundef nonnull %i.axm, i32 noundef 13) #13
  %.not2844 = icmp eq ptr %i.axn, null
  br i1 %.not2844, label %bb.tt, label %bb.ty

bb.tt:                                            ; preds = %bb.ts
  %i.axo = getelementptr inbounds nuw i8, ptr %i.f, i64 113 ; 3 uses
  %i.axp = call ptr @cli_memstr(ptr noundef nonnull @.str.179, i32 noundef 24, ptr noundef nonnull %i.axo, i32 noundef 13) #13
  %.not2845 = icmp eq ptr %i.axp, null
  br i1 %.not2845, label %bb.tu, label %bb.ty

bb.tu:                                            ; preds = %bb.tt
  %i.axq = call ptr @cli_memstr(ptr noundef nonnull @.str.181, i32 noundef 24, ptr noundef nonnull %i.axm, i32 noundef 13) #13
  %.not2846 = icmp eq ptr %i.axq, null
  br i1 %.not2846, label %bb.tv, label %bb.ty

bb.tv:                                            ; preds = %bb.tu
  %i.axr = call ptr @cli_memstr(ptr noundef nonnull @.str.181, i32 noundef 24, ptr noundef nonnull %i.axo, i32 noundef 13) #13
  %.not2847 = icmp eq ptr %i.axr, null
  br i1 %.not2847, label %bb.tw, label %bb.ty

bb.tw:                                            ; preds = %bb.tv
  %i.axs = call ptr @cli_memstr(ptr noundef nonnull @.str.183, i32 noundef 24, ptr noundef nonnull %i.axm, i32 noundef 13) #13
  %.not2848 = icmp eq ptr %i.axs, null
  br i1 %.not2848, label %bb.tx, label %bb.ty

bb.tx:                                            ; preds = %bb.tw
  %i.axt = call ptr @cli_memstr(ptr noundef nonnull @.str.183, i32 noundef 24, ptr noundef nonnull %i.axo, i32 noundef 13) #13
  %.not2849 = icmp eq ptr %i.axt, null
  br i1 %.not2849, label %.thread3844, label %bb.ty

bb.ty:                                            ; preds = %bb.tw, %bb.tx, %bb.tu, %bb.tv, %bb.ts, %bb.tt
  %.str.180.sink = phi ptr [ @.str.182, %bb.tu ], [ @.str.180, %bb.ts ], [ @.str.180, %bb.tt ], [ @.str.182, %bb.tv ], [ @.str.184, %bb.tx ], [ @.str.184, %bb.tw ]
  %.02370.ph = phi ptr [ @upx_inflate2d, %bb.tu ], [ @upx_inflate2b, %bb.ts ], [ @upx_inflate2b, %bb.tt ], [ @upx_inflate2d, %bb.tv ], [ @upx_inflate2e, %bb.tx ], [ @upx_inflate2e, %bb.tw ] ; 5 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.180.sink) #13
  %i.axu = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.val3074 = load i32, ptr %i.axu, align 2
  %i.axv = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !16
  %i.axx = load i32, ptr %i.awf, align 4, !tbaa !26 ; 2 uses
  %i.axy = add i32 %i.axw, %i.axx
  %i.axz = sub i32 %.val3074, %i.axy              ; 5 uses
  %i.aya = load i8, ptr %i.aez, align 1, !tbaa !16
  %i.ayb = icmp ne i8 %i.aya, -66
  %i.ayc = add i32 %i.axz, -4096
  %i.ayd = icmp ult i32 %i.ayc, -4095
  %or.cond179 = select i1 %i.ayb, i1 true, i1 %i.ayd
  br i1 %or.cond179, label %bb.tz, label %bb.ua

bb.tz:                                            ; preds = %bb.ty
  %i.aye = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.ayf = call i32 %.02370.ph(ptr noundef nonnull %i.axd, i32 noundef %i.awh, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.aye, i32 noundef %i.axx, i32 noundef %i.cj) #13, !callees !98
  %i.ayg = icmp sgt i32 %i.ayf, -1
  br i1 %i.ayg, label %.thread3268, label %bb.uc

bb.ua:                                            ; preds = %bb.ty
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.185, i32 noundef %i.axz) #13
  %i.ayh = zext nneg i32 %i.axz to i64
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.axd, i64 %i.ayh
  %i.ayj = sub i32 %i.awh, %i.axz
  %i.ayk = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.ayl = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.aym = sub i32 %i.cj, %i.axz
  %i.ayn = call i32 %.02370.ph(ptr noundef nonnull %i.ayi, i32 noundef %i.ayj, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.ayk, i32 noundef %i.ayl, i32 noundef %i.aym) #13, !callees !98
  %i.ayo = icmp sgt i32 %i.ayn, -1
  br i1 %i.ayo, label %.thread3268, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.ayp = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.ayq = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.ayr = call i32 %.02370.ph(ptr noundef nonnull %i.axd, i32 noundef %i.awh, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.ayp, i32 noundef %i.ayq, i32 noundef %i.cj) #13, !callees !98
  %i.ays = icmp sgt i32 %i.ayr, -1
  br i1 %i.ays, label %.thread3268, label %bb.uc

.thread3268:                                      ; preds = %bb.ub, %bb.ua, %bb.tz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.186) #13
  br label %.thread3279

bb.uc:                                            ; preds = %bb.tz, %bb.ub
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.187) #13
  %.not3328 = icmp eq ptr %.02370.ph, @upx_inflate2b
  br i1 %.not3328, label %bb.uf, label %.thread3844

.thread3844:                                      ; preds = %bb.tx, %bb.uc
  %.0237032613851 = phi ptr [ %.02370.ph, %bb.uc ], [ null, %bb.tx ]
  %i.ayt = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.ayu = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.ayv = call i32 @upx_inflate2b(ptr noundef nonnull %i.axd, i32 noundef %i.awh, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.ayt, i32 noundef %i.ayu, i32 noundef %i.cj) #13
  %i.ayw = icmp eq i32 %i.ayv, -1
  br i1 %i.ayw, label %bb.ud, label %bb.ue

bb.ud:                                            ; preds = %.thread3844
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.axd, i64 21
  %i.ayy = add nsw i32 %i.awh, -21
  %i.ayz = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.aza = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.azb = add i32 %i.cj, -21
  %i.azc = call i32 @upx_inflate2b(ptr noundef nonnull %i.ayx, i32 noundef %i.ayy, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.ayz, i32 noundef %i.aza, i32 noundef %i.azb) #13
  %i.azd = icmp eq i32 %i.azc, -1
  br i1 %i.azd, label %.split, label %bb.ue

.split:                                           ; preds = %bb.ud
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.188) #13
  br label %bb.uf

bb.ue:                                            ; preds = %bb.ud, %.thread3844
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.189) #13
  br label %.thread3279

bb.uf:                                            ; preds = %.split, %bb.uc
  %.0237032613852 = phi ptr [ %.0237032613851, %.split ], [ @upx_inflate2b, %bb.uc ] ; 2 uses
  %.not3329 = icmp eq ptr %.0237032613852, @upx_inflate2d
  br i1 %.not3329, label %bb.uj, label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  %i.aze = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.azf = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.azg = call i32 @upx_inflate2d(ptr noundef nonnull %i.axd, i32 noundef %i.awh, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.aze, i32 noundef %i.azf, i32 noundef %i.cj) #13
  %i.azh = icmp eq i32 %i.azg, -1
  br i1 %i.azh, label %bb.uh, label %bb.ui

bb.uh:                                            ; preds = %bb.ug
  %i.azi = getelementptr inbounds nuw i8, ptr %i.axd, i64 21
  %i.azj = add nsw i32 %i.awh, -21
  %i.azk = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.azl = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.azm = add i32 %i.cj, -21
  %i.azn = call i32 @upx_inflate2d(ptr noundef nonnull %i.azi, i32 noundef %i.azj, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.azk, i32 noundef %i.azl, i32 noundef %i.azm) #13
  %i.azo = icmp eq i32 %i.azn, -1
  br i1 %i.azo, label %.split3846, label %bb.ui

.split3846:                                       ; preds = %bb.uh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.190) #13
  br label %bb.uj

bb.ui:                                            ; preds = %bb.uh, %bb.ug
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.191) #13
  br label %.thread3279

bb.uj:                                            ; preds = %.split3846, %bb.uf
  %.not3330 = icmp eq ptr %.0237032613852, @upx_inflate2e
  br i1 %.not3330, label %bb.uo, label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  %i.azp = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.azq = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.azr = call i32 @upx_inflate2e(ptr noundef nonnull %i.axd, i32 noundef %i.awh, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.azp, i32 noundef %i.azq, i32 noundef %i.cj) #13
  %i.azs = icmp eq i32 %i.azr, -1
  br i1 %i.azs, label %bb.ul, label %bb.un

bb.ul:                                            ; preds = %bb.uk
  %i.azt = getelementptr inbounds nuw i8, ptr %i.axd, i64 21
  %i.azu = add nsw i32 %i.awh, -21
  %i.azv = load i32, ptr %i.awj, align 4, !tbaa !26
  %i.azw = load i32, ptr %i.awf, align 4, !tbaa !26
  %i.azx = add i32 %i.cj, -21
  %i.azy = call i32 @upx_inflate2e(ptr noundef nonnull %i.azt, i32 noundef %i.azu, ptr noundef nonnull %i.axi, ptr noundef nonnull %i.h, i32 noundef %i.azv, i32 noundef %i.azw, i32 noundef %i.azx) #13
  %i.azz = icmp eq i32 %i.azy, -1
  br i1 %i.azz, label %bb.um, label %bb.un

bb.um:                                            ; preds = %bb.ul
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.192) #13
  br label %bb.uo

bb.un:                                            ; preds = %bb.ul, %bb.uk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.193) #13
  br label %.thread3279

bb.uo:                                            ; preds = %bb.um, %bb.uj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.194) #13
  call void @free(ptr noundef nonnull %i.axd) #13
  call void @free(ptr noundef nonnull %i.axi) #13
  br label %.critedge171

.thread3279:                                      ; preds = %.thread3268, %bb.ue, %bb.ui, %bb.qs, %bb.ta, %bb.or, %bb.un
  %.102369.ph = phi ptr [ %i.axd, %bb.un ], [ %i.aoh, %bb.qs ], [ %i.agh, %bb.or ], [ %i.auf, %bb.ta ], [ %i.axd, %bb.ui ], [ %i.axd, %bb.ue ], [ %i.axd, %.thread3268 ]
  %.82358.ph = phi ptr [ %i.axi, %bb.un ], [ %i.aon, %bb.qs ], [ %i.ahu, %bb.or ], [ %i.aul, %bb.ta ], [ %i.axi, %bb.ui ], [ %i.axi, %bb.ue ], [ %i.axi, %.thread3268 ] ; 5 uses
  call void @free(ptr noundef nonnull %.102369.ph) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.baa = call ptr @cli_gentemp(ptr noundef null) #13 ; 10 uses
  %.not2943 = icmp eq ptr %i.baa, null
  br i1 %.not2943, label %bb.up, label %bb.uq

bb.up:                                            ; preds = %.thread3279
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %.82358.ph, i32 noundef 0)
  br label %.critedge3020

bb.uq:                                            ; preds = %.thread3279
  %i.bab = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.baa, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.bac = icmp slt i32 %i.bab, 0
  br i1 %i.bac, label %bb.ur, label %bb.us

bb.ur:                                            ; preds = %bb.uq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.195, ptr noundef nonnull %i.baa) #13
  call void @free(ptr noundef nonnull %i.baa) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %.82358.ph, i32 noundef 0)
  br label %.critedge3020

bb.us:                                            ; preds = %bb.uq
  %i.bad = load i32, ptr %i.h, align 4, !tbaa !7
  %i.bae = zext i32 %i.bad to i64
  %i.baf = call i64 @write(i32 noundef %i.bab, ptr noundef nonnull %.82358.ph, i64 noundef %i.bae) #13
  %i.bag = trunc i64 %i.baf to i32
  %i.bah = load i32, ptr %i.h, align 4, !tbaa !7  ; 2 uses
  %.not2944 = icmp eq i32 %i.bah, %i.bag
  br i1 %.not2944, label %bb.uu, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.196, i32 noundef %i.bah) #13
  call void @free(ptr noundef nonnull %i.baa) #13
  call void @free(ptr noundef nonnull %.82358.ph) #13
  %i.bai = call i32 @close(i32 noundef %i.bab) #13 ; 0 uses
  br label %.critedge3020

bb.uu:                                            ; preds = %bb.us
  call void @free(ptr noundef nonnull %.82358.ph) #13
  %i.baj = call i32 @fsync(i32 noundef %i.bab) #13 ; 0 uses
  %i.bak = call i64 @lseek(i32 noundef %i.bab, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.bal = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2945 = icmp eq i8 %i.bal, 0
  br i1 %.not2945, label %bb.uw, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.197, ptr noundef nonnull %i.baa) #13
  br label %bb.uw

bb.uw:                                            ; preds = %bb.uv, %bb.uu
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.198) #13
  %i.bam = call i32 @cli_magic_scandesc(i32 noundef %i.bab, ptr noundef %1) #13 ; 2 uses
  %i.ban = icmp eq i32 %i.bam, 1
  %i.bao = call i32 @close(i32 noundef %i.bab) #13 ; 0 uses
  %i.bap = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !16
  %.not2947 = icmp eq i8 %i.bap, 0                ; 2 uses
  br i1 %i.ban, label %bb.ux, label %bb.va

bb.ux:                                            ; preds = %bb.uw
  br i1 %.not2947, label %bb.uy, label %bb.uz

bb.uy:                                            ; preds = %bb.ux
  %i.baq = call i32 @unlink(ptr noundef nonnull %i.baa) #13 ; 0 uses
  br label %bb.uz

bb.uz:                                            ; preds = %bb.uy, %bb.ux
  call void @free(ptr noundef nonnull %i.baa) #13
  br label %.critedge3020

bb.va:                                            ; preds = %bb.uw
  br i1 %.not2947, label %bb.vb, label %bb.vc

bb.vb:                                            ; preds = %bb.va
  %i.bar = call i32 @unlink(ptr noundef nonnull %i.baa) #13 ; 0 uses
  br label %bb.vc

bb.vc:                                            ; preds = %bb.vb, %bb.va
  call void @free(ptr noundef nonnull %i.baa) #13
  br label %.critedge3020

.critedge171:                                     ; preds = %bb.tc, %bb.uo, %.critedge137
  %i.bas = icmp ult i32 %i.lh, 200
  br i1 %i.bas, label %bb.vd, label %bb.ve

bb.vd:                                            ; preds = %.critedge171
  call void @free(ptr noundef %i.em) #13
  br label %.critedge3020

bb.ve:                                            ; preds = %.critedge171
  %i.bat = load i8, ptr %i.f, align 16, !tbaa !16
  %.not2854 = icmp eq i8 %i.bat, -72
  br i1 %.not2854, label %bb.vf, label %.critedge3049

bb.vf:                                            ; preds = %bb.ve
  %i.bau = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.val3073 = load i32, ptr %i.bau, align 1       ; 2 uses
  %i.bav = getelementptr [36 x i8], ptr %i.em, i64 %i.ek ; 2 uses
  %i.baw = getelementptr i8, ptr %i.bav, i64 -36
  %i.bax = load i32, ptr %i.baw, align 4, !tbaa !26
  %i.bay = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !16 ; 2 uses
  %i.bba = add i32 %i.baz, %i.bax
  %.not2855 = icmp eq i32 %.val3073, %i.bba
  br i1 %.not2855, label %bb.vi, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.bbb = icmp ult i16 %i.aj, 2
  br i1 %i.bbb, label %.thread3850, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %i.bbc = getelementptr i8, ptr %i.bav, i64 -72
  %i.bbd = load i32, ptr %i.bbc, align 4, !tbaa !26
  %i.bbe = add i32 %i.baz, %i.bbd
  %.not2856 = icmp eq i32 %.val3073, %i.bbe
  br i1 %.not2856, label %bb.vi, label %.critedge3049

bb.vi:                                            ; preds = %bb.vh, %bb.vf
  %.neg2862 = phi i32 [ 0, %bb.vf ], [ -1, %bb.vh ]
  %.102406 = phi i32 [ 2, %bb.vf ], [ 1, %bb.vh ] ; 2 uses
  %i.bbf = load ptr, ptr %i.up, align 8, !tbaa !69
  %i.bbg = load i32, ptr %i.bbf, align 4, !tbaa !71
  %i.bbh = and i32 %i.bbg, 256
  %.not2858 = icmp eq i32 %i.bbh, 0
  br i1 %.not2858, label %.critedge3049, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.199, i32 noundef %.102406) #13
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %.val3071 = load i32, ptr %i.bbi, align 16
  %i.bbj = icmp eq i32 %.val3071, 373069965
  br i1 %i.bbj, label %bb.vk, label %bb.vl

bb.vk:                                            ; preds = %bb.vj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.200) #13
  br label %.critedge3049

bb.vl:                                            ; preds = %bb.vj
  %i.bbk = sub i32 %.12377, %.22380               ; 5 uses
  store i32 %i.bbk, ptr %i.h, align 4, !tbaa !7
  %i.bbl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bbm = load ptr, ptr %i.bbl, align 8, !tbaa !89 ; 2 uses
  %.not2859 = icmp eq ptr %i.bbm, null
  br i1 %.not2859, label %._crit_edge3618, label %bb.vm

._crit_edge3618:                                  ; preds = %bb.vl
  %.pre3624.a = zext i32 %i.bbk to i64
  br label %bb.vp

bb.vm:                                            ; preds = %bb.vl
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 24
  %i.bbo = load i64, ptr %i.bbn, align 8, !tbaa !91 ; 3 uses
  %.not2860 = icmp ne i64 %i.bbo, 0
  %i.bbp = zext i32 %i.bbk to i64                 ; 2 uses
  %i.bbq = icmp ult i64 %i.bbo, %i.bbp
  %or.cond3051 = select i1 %.not2860, i1 %i.bbq, i1 false
  br i1 %or.cond3051, label %bb.vn, label %bb.vp

bb.vn:                                            ; preds = %bb.vm
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.201, i32 noundef %i.bbk, i64 noundef %i.bbo) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bbr = load i32, ptr %i.dr, align 8, !tbaa !61
  %i.bbs = and i32 %i.bbr, 256
  %.not2869 = icmp eq i32 %i.bbs, 0
  br i1 %.not2869, label %.critedge3020, label %bb.vo

bb.vo:                                            ; preds = %bb.vn
  %i.bbt = load ptr, ptr %1, align 8, !tbaa !62
  store ptr @.str.202, ptr %i.bbt, align 8, !tbaa !64
  br label %.critedge3020

bb.vp:                                            ; preds = %._crit_edge3618, %bb.vm
  %.pre-phi3625.a = phi i64 [ %.pre3624.a, %._crit_edge3618 ], [ %i.bbp, %bb.vm ]
  %i.bbu = call ptr @cli_calloc(i64 noundef %.pre-phi3625.a, i64 noundef 1) #13 ; 8 uses
  %i.bbv = icmp eq ptr %i.bbu, null
  br i1 %i.bbv, label %bb.vq, label %.lr.ph3460

.lr.ph3460:                                       ; preds = %bb.vp
  %i.bbw = zext i32 %.22380 to i64
  %i.bbx = sub nsw i64 0, %i.bbw
  %invariant.gep = getelementptr i8, ptr %i.bbu, i64 %i.bbx
  %wide.trip.count3572 = zext nneg i16 %i.aj to i64
  br label %bb.vr

bb.vq:                                            ; preds = %bb.vp
  %i.bby = load i32, ptr %i.h, align 4, !tbaa !7
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.203, i32 noundef %i.bby) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.vr:                                            ; preds = %.lr.ph3460, %bb.vv
  %indvars.iv3569 = phi i64 [ 0, %.lr.ph3460 ], [ %indvars.iv.next3570, %bb.vv ] ; 2 uses
  %i.bbz = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3569 ; 4 uses
end_hunk_0
begin_hunk_1_@cli_md5sect:bb.a
  br label %cli_seeksect.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 4, !tbaa !30
  %i.m = tail call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.k, i32 noundef %i.l) #13
  %i.n = load i32, ptr %i.a, align 4, !tbaa !30
  %.not14 = icmp eq i32 %i.m, %i.n
  br i1 %.not14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.258) #13
  br label %cli_seeksect.exit.thread

bb.i:                                             ; preds = %bb.g
  call void @cli_md5_init(ptr noundef nonnull %3) #13
  %i.o = load i32, ptr %i.a, align 4, !tbaa !30
  %i.p = zext i32 %i.o to i64
  call void @cli_md5_update(ptr noundef nonnull %3, ptr noundef nonnull %i.k, i64 noundef %i.p) #13
  call void @free(ptr noundef nonnull %i.k) #13
  call void @cli_md5_final(ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  br label %cli_seeksect.exit.thread

cli_seeksect.exit.thread:                         ; preds = %bb.c, %cli_seeksect.exit.thread17, %bb.i, %bb.h, %bb.f, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.h ], [ 1, %bb.i ], [ 0, %bb.f ], [ 0, %cli_seeksect.exit.thread17 ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.0
}

declare i32 @cli_bm_scanbuff(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @cli_rawaddr(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, ptr nofree noundef nonnull writeonly captures(none) %3, i64 noundef %4, i32 noundef %5) unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i32 %0, %5
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  %.not36 = icmp ule i64 %4, %i.b                 ; 2 uses
  %. = zext i1 %.not36 to i32
  %.48 = select i1 %.not36, i32 0, i32 %0
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i16 %2, 0
  br i1 %i.c, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.d = zext i16 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.e = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv.next ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30   ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.e, align 4, !tbaa !26   ; 2 uses
  %.not34 = icmp ule i32 %i.h, %0
  %i.i = sub i32 %0, %i.h                         ; 2 uses
  %i.j = icmp ugt i32 %i.g, %i.i
  %or.cond = and i1 %.not34, %i.j
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.k = icmp samesign ult i64 %indvars.iv, 2
  br i1 %i.k, label %.critedge, label %.lr.ph, !llvm.loop !100

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !29
  %i.n = add i32 %i.i, %i.m
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.b, %bb.f
  %.sink = phi i32 [ 0, %bb.f ], [ %., %bb.b ], [ 1, %bb.c ], [ 1, %bb.e ]
  %.030 = phi i32 [ %i.n, %bb.f ], [ %.48, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ]
  store i32 %.sink, ptr %3, align 4, !tbaa !7
  ret i32 %.030
}

declare ptr @cli_memstr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -9223372036854775807, -9223372036854775808) i64 @cli_seeksect(i32 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i64 @lseek(i32 noundef %0, i64 noundef %i.e, i32 noundef 0) #13 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.259) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = add nsw i64 %i.f, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i64 [ %i.h, %bb.d ], [ 0, %bb.a ]
  ret i64 %.0
}

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @cli_realloc2(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare ptr @cli_gentemp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @cli_multifree(ptr noundef captures(none) %0, ...) unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  tail call void @free(ptr noundef %0) #13
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.l) #13
  br label %bb.b, !llvm.loop !101

bb.g:                                             ; preds = %bb.e
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #8

declare i32 @unmew11(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fsync(i32 noundef) local_unnamed_addr #2

declare i32 @cli_magic_scandesc(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i32 @unupack(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @unfsg_200(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @unfsg_133(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @upx_inflate2b(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @upx_inflate2d(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @upx_inflate2e(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

declare i32 @petite_inflate2x_1to9(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @unspin(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @yc_decrypt(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wwunpack(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @unaspack212(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @unspack(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @cli_peheader(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.pe_image_file_hdr, align 4  ; 6 uses
  %3 = alloca %union.anon.0, align 8              ; 9 uses
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.254) #13
  %i.d = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %4) #13
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.84) #13
  br label %bb.bd

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !107
  %i.j = sub nsw i64 %i.g, %i.i                   ; 3 uses
  %i.k = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 2) #13
  %.not = icmp eq i32 %i.k, 2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #13
  br label %bb.bd

bb.e:                                             ; preds = %bb.c
  %i.l = load i16, ptr %i.a, align 2, !tbaa !9
  switch i16 %i.l, label %bb.f [
    i16 23117, label %bb.g
    i16 19802, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #13
  br label %bb.bd

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.m = call i64 @lseek(i32 noundef %0, i64 noundef 58, i32 noundef 1) #13 ; 0 uses
  %i.n = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i32 noundef 4) #13
  %.not167 = icmp eq i32 %i.n, 4
  br i1 %.not167, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #13
  br label %bb.bd

bb.i:                                             ; preds = %bb.g
  %i.o = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  %.not168 = icmp eq i32 %i.o, 0
  br i1 %.not168, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #13
  br label %bb.bd

bb.k:                                             ; preds = %bb.i
  %i.p = load i64, ptr %i.h, align 8, !tbaa !107
  %i.q = zext i32 %i.o to i64
  %i.r = add nsw i64 %i.p, %i.q
  %i.s = call i64 @lseek(i32 noundef %0, i64 noundef %i.r, i32 noundef 0) #13
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #13
  br label %bb.bd

bb.m:                                             ; preds = %bb.k
  %i.u = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %2, i32 noundef 24) #13
  %.not169 = icmp eq i32 %i.u, 24
  br i1 %.not169, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #13
  br label %bb.bd

bb.o:                                             ; preds = %bb.m
  %i.v = load i32, ptr %2, align 4, !tbaa !12
  %.not170 = icmp eq i32 %i.v, 17744
  br i1 %.not170, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #13
  br label %bb.bd

bb.q:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.x = load i16, ptr %i.w, align 2, !tbaa !13   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  store i16 %i.x, ptr %i.y, align 4, !tbaa !108
  %i.z = add i16 %i.x, -97
  %or.cond = icmp ult i16 %i.z, -96
  br i1 %or.cond, label %bb.bd, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !15
  %i.ac = icmp ult i16 %i.ab, 224
  br i1 %i.ac, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.48) #13
  br label %bb.bd

bb.t:                                             ; preds = %bb.r
  %i.ad = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %3, i32 noundef 224) #13
  %.not171 = icmp eq i32 %i.ad, 224
  br i1 %.not171, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #13
  br label %bb.bd

bb.v:                                             ; preds = %bb.t
  %i.ae = load i16, ptr %3, align 8, !tbaa !16
  %.not176 = icmp eq i16 %i.ae, 523
  %i.af = load i16, ptr %i.aa, align 4, !tbaa !15 ; 3 uses
  br i1 %.not176, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %.not173 = icmp eq i16 %i.af, 240
  br i1 %.not173, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.50) #13
  br label %bb.bd

bb.y:                                             ; preds = %bb.w
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.ah = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.ag, i32 noundef 16) #13
  %.not174 = icmp eq i32 %i.ah, 16
  br i1 %.not174, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #13
  br label %bb.bd

bb.aa:                                            ; preds = %bb.v
  %.not172 = icmp eq i16 %i.af, 224
  br i1 %.not172, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ai = zext i16 %i.af to i64
  %i.aj = add nsw i64 %i.ai, -224
  %i.ak = call i64 @lseek(i32 noundef %0, i64 noundef %i.aj, i32 noundef 1) #13 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.y
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ao = load i32, ptr %i.an, align 8            ; 11 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.aq = load i32, ptr %i.ap, align 4            ; 3 uses
  %.not177 = icmp eq i32 %i.ao, 0                 ; 3 uses
  br i1 %.not177, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ar = udiv i32 %i.am, %i.ao
  %i.as = urem i32 %i.am, %i.ao
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = add i32 %i.ar, %i.au
  %i.aw = mul i32 %i.av, %i.ao
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.ax = phi i32 [ %i.aw, %bb.ad ], [ %i.am, %bb.ac ]
  %i.ay = load i16, ptr %i.y, align 4, !tbaa !108
  %i.az = zext i16 %i.ay to i64
  %i.ba = call ptr @cli_calloc(i64 noundef %i.az, i64 noundef 36) #13 ; 2 uses
end_hunk_1
