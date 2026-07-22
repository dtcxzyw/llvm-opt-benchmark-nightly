inline.NumInlined: 11
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@FontChange:bb.a
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 8
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !73 ; 2 uses
  %i.ato = getelementptr inbounds nuw [96 x i8], ptr %i.ath, i64 %.pre-phi589 ; 3 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 8
  store ptr %i.atn, ptr %i.atp, align 8, !tbaa !73
  %i.atq = load i16, ptr %i.aql, align 8
  %i.atr = and i16 %i.atq, 4095
  %i.ats = zext nneg i16 %i.atr to i64
  %i.att = getelementptr inbounds nuw [96 x i8], ptr %i.ath, i64 %i.ats
  %i.atu = load ptr, ptr %i.att, align 8, !tbaa !72
  %i.atv = load i16, ptr %i.asa, align 8
  %i.atw = and i16 %i.atv, 4095
  %i.atx = zext nneg i16 %i.atw to i64
  %i.aty = getelementptr inbounds nuw [96 x i8], ptr %i.ath, i64 %i.atx
  %i.atz = load ptr, ptr %i.aty, align 8, !tbaa !72
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jr
  %indvars.iv562 = phi i64 [ 0, %bb.jo ], [ %indvars.iv.next563, %bb.jr ] ; 4 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atn, i64 %indvars.iv562
  %i.aub = load i8, ptr %i.aua, align 1, !tbaa !8
  %.not379 = icmp eq i8 %i.aub, 1
  br i1 %.not379, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.auc = getelementptr inbounds nuw [10 x i8], ptr %i.atz, i64 %indvars.iv562 ; 5 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 4
  %i.aue = load i16, ptr %i.aud, align 2, !tbaa !87
  %i.auf = sext i16 %i.aue to i32
  %i.aug = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.auh = mul nsw i32 %i.aug, %i.auf
  %i.aui = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.auj = sdiv i32 %i.auh, %i.aui
  %i.auk = trunc i32 %i.auj to i16
  %i.aul = getelementptr inbounds nuw [10 x i8], ptr %i.atu, i64 %indvars.iv562 ; 5 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aul, i64 4
  store i16 %i.auk, ptr %i.aum, align 2, !tbaa !87
  %i.aun = getelementptr inbounds nuw i8, ptr %i.auc, i64 6
  %i.auo = load i16, ptr %i.aun, align 2, !tbaa !58
  %i.aup = sext i16 %i.auo to i32
  %i.auq = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.aur = mul nsw i32 %i.auq, %i.aup
  %i.aus = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.aut = sdiv i32 %i.aur, %i.aus
  %i.auu = trunc i32 %i.aut to i16
  %i.auv = getelementptr inbounds nuw i8, ptr %i.aul, i64 6
  store i16 %i.auu, ptr %i.auv, align 2, !tbaa !58
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auc, i64 2
  %i.aux = load i16, ptr %i.auw, align 2, !tbaa !88
  %i.auy = sext i16 %i.aux to i32
  %i.auz = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.ava = mul nsw i32 %i.auz, %i.auy
  %i.avb = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.avc = sdiv i32 %i.ava, %i.avb
  %i.avd = trunc i32 %i.avc to i16
  %i.ave = getelementptr inbounds nuw i8, ptr %i.aul, i64 2
  store i16 %i.avd, ptr %i.ave, align 2, !tbaa !88
  %i.avf = load i16, ptr %i.auc, align 2, !tbaa !89
  %i.avg = sext i16 %i.avf to i32
  %i.avh = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.avi = mul nsw i32 %i.avh, %i.avg
  %i.avj = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.avk = sdiv i32 %i.avi, %i.avj
  %i.avl = trunc i32 %i.avk to i16
  store i16 %i.avl, ptr %i.aul, align 2, !tbaa !89
  %i.avm = getelementptr inbounds nuw i8, ptr %i.auc, i64 8
  %i.avn = load i16, ptr %i.avm, align 2, !tbaa !90
  %i.avo = sext i16 %i.avn to i32
  %i.avp = load i32, ptr %i.aqx, align 8, !tbaa !8
  %i.avq = mul nsw i32 %i.avp, %i.avo
  %i.avr = load i32, ptr %i.aqy, align 8, !tbaa !8
  %i.avs = sdiv i32 %i.avq, %i.avr
  %i.avt = trunc i32 %i.avs to i16
  %i.avu = getelementptr inbounds nuw i8, ptr %i.aul, i64 8
  store i16 %i.avt, ptr %i.avu, align 2, !tbaa !90
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jp, %bb.jq
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 2 uses
  %exitcond565.not = icmp eq i64 %indvars.iv.next563, 256
  br i1 %exitcond565.not, label %bb.js, label %bb.jp, !llvm.loop !91

bb.js:                                            ; preds = %bb.jr
  %i.avv = load i16, ptr %i.asa, align 8
  %i.avw = and i16 %i.avv, 4095
  %i.avx = zext nneg i16 %i.avw to i64
  %i.avy = getelementptr inbounds nuw [96 x i8], ptr %i.ath, i64 %i.avx
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 16
  %i.awa = load ptr, ptr %i.avz, align 8, !tbaa !74
  %i.awb = getelementptr inbounds nuw i8, ptr %i.ato, i64 16
  store ptr %i.awa, ptr %i.awb, align 8, !tbaa !74
  %i.awc = load i16, ptr %i.asa, align 8
  %i.awd = and i16 %i.awc, 4095
  %i.awe = zext nneg i16 %i.awd to i64
  %i.awf = getelementptr inbounds nuw [96 x i8], ptr %i.ath, i64 %i.awe
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awf, i64 32
  %i.awh = load i32, ptr %i.awg, align 8, !tbaa !76 ; 4 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %i.ato, i64 32
  store i32 %i.awh, ptr %i.awi, align 8, !tbaa !76
  %i.awj = load i16, ptr %i.asa, align 8
  %i.awk = and i16 %i.awj, 4095
  %i.awl = zext nneg i16 %i.awk to i64
  %i.awm = getelementptr inbounds nuw [96 x i8], ptr %i.ath, i64 %i.awl
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 24
  %i.awo = load ptr, ptr %i.awn, align 8, !tbaa !75
  %i.awp = sext i32 %i.awh to i64
  %i.awq = mul nsw i64 %i.awp, 6
  %i.awr = call noalias ptr @malloc(i64 noundef %i.awq) #15 ; 3 uses
  %i.aws = icmp eq ptr %i.awr, null
  br i1 %i.aws, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.awt = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 54, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef nonnull %i.af) #14 ; 0 uses
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %i.awu = icmp sgt i32 %i.awh, 1
  br i1 %i.awu, label %.lr.ph514.preheader, label %._crit_edge515

.lr.ph514.preheader:                              ; preds = %bb.ju
  %wide.trip.count = zext nneg i32 %i.awh to i64
  br label %.lr.ph514

.lr.ph514:                                        ; preds = %.lr.ph514.preheader, %bb.jw
  %indvars.iv566 = phi i64 [ 1, %.lr.ph514.preheader ], [ %indvars.iv.next567, %bb.jw ] ; 3 uses
  %i.awv = getelementptr inbounds nuw [6 x i8], ptr %i.awo, i64 %indvars.iv566 ; 3 uses
  %i.aww = load i8, ptr %i.awv, align 2, !tbaa !62 ; 2 uses
  %i.awx = getelementptr inbounds nuw [6 x i8], ptr %i.awr, i64 %indvars.iv566 ; 3 uses
  store i8 %i.aww, ptr %i.awx, align 2, !tbaa !62
  %.not378 = icmp eq i8 %i.aww, 0
  br i1 %.not378, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %.lr.ph514
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awv, i64 2
  %i.awz = load i16, ptr %i.awy, align 2, !tbaa !64
  %i.axa = sext i16 %i.awz to i32
  %i.axb = load i32, ptr %i.aqx, align 8, !tbaa !8 ; 2 uses
  %i.axc = mul nsw i32 %i.axb, %i.axa
  %i.axd = load i32, ptr %i.aqy, align 8, !tbaa !8 ; 2 uses
  %i.axe = sdiv i32 %i.axc, %i.axd
  %i.axf = trunc i32 %i.axe to i16
  %i.axg = getelementptr inbounds nuw i8, ptr %i.awx, i64 2
  store i16 %i.axf, ptr %i.axg, align 2, !tbaa !64
  %i.axh = getelementptr inbounds nuw i8, ptr %i.awv, i64 4
  %i.axi = load i16, ptr %i.axh, align 2, !tbaa !65
  %i.axj = sext i16 %i.axi to i32
  %i.axk = mul nsw i32 %i.axb, %i.axj
  %i.axl = sdiv i32 %i.axk, %i.axd
  %i.axm = trunc i32 %i.axl to i16
  %i.axn = getelementptr inbounds nuw i8, ptr %i.awx, i64 4
  store i16 %i.axm, ptr %i.axn, align 2, !tbaa !65
  br label %bb.jw

bb.jw:                                            ; preds = %.lr.ph514, %bb.jv
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %exitcond569.not = icmp eq i64 %indvars.iv.next567, %wide.trip.count
  br i1 %exitcond569.not, label %._crit_edge515, label %.lr.ph514, !llvm.loop !92

._crit_edge515:                                   ; preds = %bb.jw, %bb.ju
  %i.axo = load ptr, ptr @finfo, align 8, !tbaa !13 ; 6 uses
  %i.axp = load i32, ptr @font_count, align 4, !tbaa !4
  %i.axq = zext i32 %i.axp to i64
  %i.axr = getelementptr inbounds nuw [96 x i8], ptr %i.axo, i64 %i.axq ; 5 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 24
  store ptr %i.awr, ptr %i.axs, align 8, !tbaa !75
  %i.axt = load i16, ptr %i.asa, align 8
  %i.axu = and i16 %i.axt, 4095
  %i.axv = zext nneg i16 %i.axu to i64
  %i.axw = getelementptr inbounds nuw [96 x i8], ptr %i.axo, i64 %i.axv
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 64
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !77
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axr, i64 64
  store ptr %i.axy, ptr %i.axz, align 8, !tbaa !77
  %i.aya = load i16, ptr %i.asa, align 8
  %i.ayb = and i16 %i.aya, 4095
  %i.ayc = zext nneg i16 %i.ayb to i64
  %i.ayd = getelementptr inbounds nuw [96 x i8], ptr %i.axo, i64 %i.ayc
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 72
  %i.ayf = load ptr, ptr %i.aye, align 8, !tbaa !78
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.axr, i64 72
  store ptr %i.ayf, ptr %i.ayg, align 8, !tbaa !78
  %i.ayh = load i16, ptr %i.asa, align 8
  %i.ayi = and i16 %i.ayh, 4095
  %i.ayj = zext nneg i16 %i.ayi to i64
  %i.ayk = getelementptr inbounds nuw [96 x i8], ptr %i.axo, i64 %i.ayj
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 80
  %i.aym = load ptr, ptr %i.ayl, align 8, !tbaa !79
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.axr, i64 80
  store ptr %i.aym, ptr %i.ayn, align 8, !tbaa !79
  %i.ayo = load i16, ptr %i.asa, align 8
  %i.ayp = and i16 %i.ayo, 4095
  %i.ayq = zext nneg i16 %i.ayp to i64
  %i.ayr = getelementptr inbounds nuw [96 x i8], ptr %i.axo, i64 %i.ayq
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 88
  %i.ayt = load ptr, ptr %i.ays, align 8, !tbaa !80 ; 5 uses
  %.not377 = icmp eq ptr %i.ayt, null
  br i1 %.not377, label %bb.ka, label %bb.jx

bb.jx:                                            ; preds = %._crit_edge515
  %i.ayu = load i16, ptr %i.ayt, align 2, !tbaa !34 ; 5 uses
  %wide.trip.count573 = zext i16 %i.ayu to i64
  %i.ayv = sext i16 %i.ayu to i64
  %i.ayw = shl nsw i64 %i.ayv, 1
  %i.ayx = call noalias ptr @malloc(i64 noundef %i.ayw) #15 ; 6 uses
  %i.ayy = load i32, ptr @font_count, align 4, !tbaa !4
  %i.ayz = zext i32 %i.ayy to i64
  %i.aza = getelementptr inbounds nuw [96 x i8], ptr %i.axo, i64 %i.ayz
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 88
  store ptr %i.ayx, ptr %i.azb, align 8, !tbaa !80
  %i.azc = icmp eq ptr %i.ayx, null
  br i1 %i.azc, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.azd = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 55, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef nonnull %i.af) #14 ; 0 uses
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  store i16 %i.ayu, ptr %i.ayx, align 2, !tbaa !34
  %i.aze = icmp sgt i16 %i.ayu, 1
  br i1 %i.aze, label %.lr.ph518.preheader, label %.loopexit

.lr.ph518.preheader:                              ; preds = %bb.jz
  %.pre583 = load i32, ptr %i.aqx, align 8, !tbaa !8 ; 3 uses
  %.pre584 = load i32, ptr %i.aqy, align 8, !tbaa !8 ; 3 uses
  %3 = add nsw i64 %wide.trip.count573, -1        ; 3 uses
  %xtraiter764 = and i64 %3, 1
  %i.azf = icmp eq i16 %i.ayu, 2
  br i1 %i.azf, label %.lr.ph518.epil.preheader, label %.lr.ph518.preheader.new

.lr.ph518.preheader.new:                          ; preds = %.lr.ph518.preheader
  %unroll_iter = and i64 %3, -2
  br label %.lr.ph518

.lr.ph518:                                        ; preds = %.lr.ph518, %.lr.ph518.preheader.new
  %indvars.iv570 = phi i64 [ 1, %.lr.ph518.preheader.new ], [ %indvars.iv.next571.1, %.lr.ph518 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph518.preheader.new ], [ %niter.next.1, %.lr.ph518 ]
  %i.azg = getelementptr inbounds nuw [2 x i8], ptr %i.ayt, i64 %indvars.iv570
  %i.azh = load i16, ptr %i.azg, align 2, !tbaa !34
  %i.azi = sext i16 %i.azh to i32
  %i.azj = mul nsw i32 %.pre583, %i.azi
  %i.azk = sdiv i32 %i.azj, %.pre584
  %i.azl = trunc i32 %i.azk to i16
  %i.azm = getelementptr inbounds nuw [2 x i8], ptr %i.ayx, i64 %indvars.iv570
  store i16 %i.azl, ptr %i.azm, align 2, !tbaa !34
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %i.azn = getelementptr inbounds nuw [2 x i8], ptr %i.ayt, i64 %indvars.iv.next571
  %i.azo = load i16, ptr %i.azn, align 2, !tbaa !34
  %i.azp = sext i16 %i.azo to i32
  %i.azq = mul nsw i32 %.pre583, %i.azp
  %i.azr = sdiv i32 %i.azq, %.pre584
  %i.azs = trunc i32 %i.azr to i16
  %i.azt = getelementptr inbounds nuw [2 x i8], ptr %i.ayx, i64 %indvars.iv.next571
  store i16 %i.azs, ptr %i.azt, align 2, !tbaa !34
  %indvars.iv.next571.1 = add nuw nsw i64 %indvars.iv570, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph518, !llvm.loop !93

bb.ka:                                            ; preds = %._crit_edge515
  %i.azu = getelementptr inbounds nuw i8, ptr %i.axr, i64 88
  store ptr null, ptr %i.azu, align 8, !tbaa !80
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph518
  %lcmp.mod765.not = icmp eq i64 %xtraiter764, 0
  br i1 %lcmp.mod765.not, label %.loopexit, label %.lr.ph518.epil.preheader

.lr.ph518.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph518.preheader
  %indvars.iv570.epil.init = phi i64 [ 1, %.lr.ph518.preheader ], [ %indvars.iv.next571.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod766 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod766)
  %i.azv = getelementptr inbounds nuw [2 x i8], ptr %i.ayt, i64 %indvars.iv570.epil.init
  %i.azw = load i16, ptr %i.azv, align 2, !tbaa !34
  %i.azx = sext i16 %i.azw to i32
  %i.azy = mul nsw i32 %.pre583, %i.azx
  %i.azz = sdiv i32 %i.azy, %.pre584
  %i.baa = trunc i32 %i.azz to i16
  %i.bab = getelementptr inbounds nuw [2 x i8], ptr %i.ayx, i64 %indvars.iv570.epil.init
  store i16 %i.baa, ptr %i.bab, align 2, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph518.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.jz, %bb.ka
  %i.bac = load i32, ptr @font_count, align 4, !tbaa !4
  %i.bad = load i32, ptr %i.z, align 4
  %i.bae = and i32 %i.bac, 4095
  %i.baf = and i32 %i.bad, -4096
  %i.bag = or disjoint i32 %i.baf, %i.bae
  store i32 %i.bag, ptr %i.z, align 4
  %i.bah = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bai = load i16, ptr %i.bah, align 4
  %i.baj = and i16 %i.bai, 255
  %i.bak = or disjoint i16 %i.baj, 9728
  store i16 %i.bak, ptr %i.bah, align 4
  %i.bal = load i32, ptr %i.aru, align 8, !tbaa !8
  %i.bam = trunc i32 %i.bal to i16
  %i.ban = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.bam, ptr %i.ban, align 2, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.preheader448, %bb.h, %bb.g, %bb.e, %bb.c, %bb.ia, %bb.ib, %._crit_edge, %.loopexit, %bb.ix, %bb.iu, %bb.aa, %bb.s, %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare void @GetGap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local void @FontWordSize(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !8
  %.off = add i8 %i.c, -11
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.e = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef %i.d, ptr noundef nonnull @.str.40) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !8
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = and i32 %i.i, 4095
  %i.k = load i32, ptr @font_count, align 4
  %i.l = freeze i32 %i.k
  %i.m = add nsw i32 %i.j, -1
  %or.cond.not = icmp ult i32 %i.m, %i.l
  br i1 %or.cond.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 56, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #14 ; 0 uses
  %.pre = load i32, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.o = phi i32 [ %i.i, %bb.d ], [ %.pre, %bb.e ] ; 3 uses
  %i.p = and i32 %i.o, 4190208
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @BackEnd, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !94
  %.not159 = icmp eq i32 %i.t, 0
  br i1 %.not159, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 57, ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #14 ; 0 uses
  %.pre202 = load i32, ptr %i.h, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.v = phi i32 [ %.pre202, %bb.h ], [ %i.o, %bb.g ], [ %i.o, %bb.f ] ; 2 uses
  %i.w = and i32 %i.v, 528482304
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 37, i32 noundef 58, ptr noundef nonnull @.str.43, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #14 ; 0 uses
  %.pre203 = load i32, ptr %i.h, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = phi i32 [ %.pre203, %bb.j ], [ %i.v, %bb.i ]
  %i.aa = load ptr, ptr @finfo, align 8, !tbaa !13
  %i.ab = and i32 %i.z, 4095
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %i.aa, i64 %i.ac ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !72 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  %i.ak = load i8, ptr %i.aj, align 4
  %i.al = and i8 %i.ak, 127
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @MapTable, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !95
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2945 ; 3 uses
  %.pre204 = load i8, ptr %i.f, align 8, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.k
  %i.aq = phi i8 [ %.pre204, %bb.k ], [ %i.ei, %.loopexit ] ; 5 uses
  %.0146 = phi i32 [ 0, %bb.k ], [ %spec.select, %.loopexit ]
  %.0144 = phi i32 [ 0, %bb.k ], [ %.1145, %.loopexit ]
  %.0141 = phi i32 [ 0, %bb.k ], [ %i.eh, %.loopexit ]
  %.0135 = phi ptr [ %i.a, %bb.k ], [ %i.ed, %.loopexit ] ; 6 uses
  %.0 = phi ptr [ %i.f, %bb.k ], [ %.1, %.loopexit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 7 uses
  store i8 %i.aq, ptr %.0135, align 1, !tbaa !8
  %i.as = zext i8 %i.aq to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  switch i8 %i.au, label %bb.q [
    i8 0, label %.loopexit
    i8 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.av = tail call ptr @MakeWord(i32 noundef 12, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.b) #14 ; 6 uses
  %i.aw = load i8, ptr %.0135, align 1, !tbaa !8  ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  store i8 %i.aw, ptr %i.ax, align 8, !tbaa !8
  %i.ay = zext i8 %i.aw to i64                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ay ; 5 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !8   ; 2 uses
  %.not164 = icmp eq i8 %i.ba, %i.aw
  br i1 %.not164, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [10 x i8], ptr %i.ae, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !89
  %i.be = getelementptr inbounds nuw [10 x i8], ptr %i.ae, i64 %i.ay ; 5 uses
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !89
  %i.bf = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [10 x i8], ptr %i.ae, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !88
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !88
  %i.bl = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [10 x i8], ptr %i.ae, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !87
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !87
  %i.br = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [10 x i8], ptr %i.ae, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !58
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !58
  %i.bx = load i8, ptr %i.az, align 1, !tbaa !8
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [10 x i8], ptr %i.ae, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !90
  %i.cc = getelementptr inbounds nuw i8, ptr %i.be, i64 8
end_hunk_0
