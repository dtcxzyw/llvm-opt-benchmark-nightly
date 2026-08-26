Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tiff?download=true
inline.NumInlined: 42
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 51
begin_hunk_0_@decode_frame:bb.a
  %indvars.iv2021 = phi i64 [ 0, %.lr.ph1664 ], [ %indvars.iv.next2022, %.loopexit940 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store ptr null, ptr %i.l, align 8, !tbaa !101
  %i.axw = load i32, ptr %i.s, align 8, !tbaa !48
  %i.axx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv2021 ; 7 uses
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !101 ; 2 uses
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %i.awy, i64 %indvars.iv2021 ; 3 uses
  %i.aya = load i32, ptr %i.axz, align 4, !tbaa !29 ; 3 uses
  %i.ayb = load i32, ptr %i.au, align 4, !tbaa !58
  %i.ayc = icmp eq i32 %i.ayb, 5
  br i1 %i.ayc, label %bb.ln, label %bb.lp

bb.ln:                                            ; preds = %bb.lm
  %i.ayd = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 136
  %i.ayf = load i32, ptr %i.aye, align 8, !tbaa !138
  %i.ayg = icmp eq i32 %i.ayf, 26
  br i1 %i.ayg, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  %i.ayh = mul nsw i32 %i.aya, 5
  %i.ayi = sdiv i32 %i.ayh, 4                     ; 2 uses
  %i.ayj = load i32, ptr %i.dm, align 4, !tbaa !79
  %i.ayk = mul nsw i32 %i.ayj, %i.ayi
  %i.ayl = sext i32 %i.ayk to i64
  %i.aym = call noalias ptr @av_malloc(i64 noundef %i.ayl) #16 ; 3 uses
  store ptr %i.aym, ptr %i.l, align 8, !tbaa !101
  %.not808 = icmp eq ptr %i.aym, null
  br i1 %.not808, label %.thread901, label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln, %bb.lm
  %.0716 = phi ptr [ %i.aym, %bb.lo ], [ %i.axy, %bb.ln ], [ %i.axy, %bb.lm ]
  %.1697 = phi i32 [ %i.ayi, %bb.lo ], [ %i.aya, %bb.ln ], [ %i.aya, %bb.lm ] ; 17 uses
  %i.ayn = load i32, ptr %i.dm, align 4, !tbaa !79 ; 2 uses
  %i.ayo = icmp sgt i32 %i.ayn, 0
  br i1 %i.ayo, label %.lr.ph1606, label %.loopexit946

.lr.ph1606:                                       ; preds = %bb.lp, %tiff_unpack_strip.exit.thread892
  %.121602 = phi i32 [ %i.cwj, %tiff_unpack_strip.exit.thread892 ], [ 0, %bb.lp ] ; 11 uses
  %.07151601 = phi i32 [ %i.azi, %tiff_unpack_strip.exit.thread892 ], [ %i.axw, %bb.lp ] ; 2 uses
  %.17171600 = phi ptr [ %.2718, %tiff_unpack_strip.exit.thread892 ], [ %.0716, %bb.lp ] ; 2 uses
  %.not809 = icmp eq i32 %.121602, 0
  br i1 %.not809, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %.lr.ph1606
  %i.ayp = load i32, ptr %i.dn, align 4, !tbaa !84
  %i.ayq = mul nsw i32 %i.ayp, %.1697
  %i.ayr = sext i32 %i.ayq to i64
  %i.ays = getelementptr inbounds i8, ptr %.17171600, i64 %i.ayr
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %.lr.ph1606
  %.2718 = phi ptr [ %i.ays, %bb.lq ], [ %.17171600, %.lr.ph1606 ] ; 2 uses
  %i.ayt = load i32, ptr %i.bn, align 8, !tbaa !77
  %.not810 = icmp eq i32 %i.ayt, 0
  br i1 %.not810, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.ayu = load i32, ptr %i.dk, align 8, !tbaa !89
  %i.ayv = load i32, ptr %i.i, align 4, !tbaa !29
  %i.ayw = call i32 @ff_tget(ptr noundef nonnull %7, i32 noundef %i.ayu, i32 noundef %i.ayv) #16
  br label %bb.lu

bb.lt:                                            ; preds = %bb.lr
  %i.ayx = load i32, ptr %i.di, align 4, !tbaa !88
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %.0702 = phi i32 [ %i.ayw, %bb.ls ], [ %i.ayx, %bb.lt ] ; 21 uses
  %i.ayy = load i32, ptr %i.bm, align 4, !tbaa !76
  %.not811 = icmp eq i32 %i.ayy, 0
  br i1 %.not811, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.ayz = load i32, ptr %i.do, align 4, !tbaa !87
  %i.aza = load i32, ptr %i.i, align 4, !tbaa !29
  %i.azb = call i32 @ff_tget(ptr noundef nonnull %8, i32 noundef %i.ayz, i32 noundef %i.aza) #16
  br label %bb.lx

bb.lw:                                            ; preds = %bb.lu
  %i.azc = load i32, ptr %i.dl, align 8, !tbaa !85
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %bb.lv
  %.0699 = phi i32 [ %i.azb, %bb.lv ], [ %i.azc, %bb.lw ] ; 3 uses
  %i.azd = load i32, ptr %i.s, align 8, !tbaa !48 ; 2 uses
  %i.aze = icmp ugt i32 %.0699, %i.azd
  %i.azf = sub nuw i32 %i.azd, %.0699
  %i.azg = icmp ugt i32 %.0702, %i.azf
  %or.cond827 = select i1 %i.aze, i1 true, i1 %i.azg
  %i.azh = icmp ugt i32 %.0702, %.07151601
  %or.cond828 = select i1 %or.cond827, i1 true, i1 %i.azh
  br i1 %or.cond828, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %bb.lx
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.27) #16
  call void @av_freep(ptr noundef nonnull %i.l) #16
  br label %.thread901

bb.lz:                                            ; preds = %bb.lx
  %i.azi = sub nuw i32 %.07151601, %.0702
  %i.azj = load ptr, ptr %i.q, align 8, !tbaa !46 ; 2 uses
  %i.azk = zext i32 %.0699 to i64
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azj, i64 %i.azk ; 21 uses
  %i.azm = load i32, ptr %i.dn, align 4, !tbaa !84
  %i.azn = load i32, ptr %i.dm, align 4, !tbaa !79
  %i.azo = sub nsw i32 %i.azn, %.121602
  %.829 = call i32 @llvm.smin.i32(i32 %i.azm, i32 %i.azo) ; 19 uses
  %i.azp = load i32, ptr %i.dp, align 8, !tbaa !78
  %i.azq = load i32, ptr %i.as, align 8, !tbaa !56
  %i.azr = mul i32 %i.azq, %i.azp
  %i.azs = add i32 %i.azr, 7
  %i.azt = lshr i32 %i.azs, 3                     ; 2 uses
  %i.azu = load i32, ptr %i.awz, align 4, !tbaa !139
  %i.azv = call ptr @av_pix_fmt_desc_get(i32 noundef %i.azu) #16 ; 2 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 16
  %i.azx = load i64, ptr %i.azw, align 8, !tbaa !140
  %i.azy = and i64 %i.azx, 48
  %or.cond344.not.i = icmp eq i64 %i.azy, 16
  br i1 %or.cond344.not.i, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azv, i64 8
  %i.baa = load i8, ptr %i.azz, align 8, !tbaa !142
  %i.bab = icmp ugt i8 %i.baa, 2
  br label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %bb.lz
  %i.bac = phi i1 [ %i.bab, %bb.ma ], [ false, %bb.lz ] ; 10 uses
  %i.bad = load i32, ptr %i.cn, align 8, !tbaa !104
  %.not328.i = icmp eq i32 %i.bad, 0
  br i1 %.not328.i, label %bb.md, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.bae = load i32, ptr %i.at, align 4, !tbaa !57
  %i.baf = udiv i32 %i.azt, %i.bae
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.mb
  %.0306.i = phi i32 [ %i.baf, %bb.mc ], [ %i.azt, %bb.mb ]
  %i.bag = icmp slt i32 %.0702, 1
  br i1 %i.bag, label %tiff_unpack_strip.exit.thread, label %bb.me

bb.me:                                            ; preds = %bb.md
  br i1 %i.bac, label %bb.mf, label %bb.mk

bb.mf:                                            ; preds = %bb.me
  %i.bah = load i32, ptr %i.dp, align 8, !tbaa !78
  %i.bai = add nsw i32 %i.bah, -1
  %i.baj = load i32, ptr %i.cm, align 4, !tbaa !29 ; 2 uses
  %i.bak = sdiv i32 %i.bai, %i.baj
  %i.bal = add nsw i32 %i.bak, 1
  %i.bam = load i32, ptr %i.as, align 8, !tbaa !56
  %i.ban = load i32, ptr %i.axa, align 8, !tbaa !29
  %i.bao = mul i32 %i.bam, %i.baj
  %i.bap = mul i32 %i.bao, %i.bal
  %i.baq = mul i32 %i.bap, %i.ban
  %i.bar = add i32 %i.baq, 7
  %i.bas = lshr i32 %i.bar, 3                     ; 2 uses
  %i.bat = zext nneg i32 %i.bas to i64
  call void @av_fast_padded_malloc(ptr noundef nonnull %i.axb, ptr noundef nonnull %i.axc, i64 noundef %i.bat) #16
  %i.bau = load ptr, ptr %i.axb, align 8, !tbaa !143 ; 2 uses
  %.not330.i = icmp eq ptr %i.bau, null
  br i1 %.not330.i, label %.thread.i, label %bb.mg

.thread.i:                                        ; preds = %bb.mf
  %i.bav = load ptr, ptr %i.bo, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bav, i32 noundef 16, ptr noundef nonnull @.str.1829) #16
  br label %tiff_unpack_strip.exit.thread

bb.mg:                                            ; preds = %bb.mf
  %i.baw = load i32, ptr %i.dp, align 8, !tbaa !78
  %i.bax = add nsw i32 %i.baw, -1
  %i.bay = load i32, ptr %i.cm, align 4, !tbaa !29 ; 2 uses
  %i.baz = sdiv i32 %i.bax, %i.bay
  %i.bba = add nsw i32 %i.baz, 1                  ; 2 uses
  %i.bbb = mul nsw i32 %i.bba, %i.bay
  %i.bbc = load i32, ptr %i.axa, align 8, !tbaa !29
  %i.bbd = mul nsw i32 %i.bbb, %i.bbc
  %i.bbe = shl nsw i32 %i.bba, 1
  %i.bbf = add nsw i32 %i.bbd, %i.bbe             ; 2 uses
  %.not329.i = icmp sgt i32 %i.bbf, %i.bas
  br i1 %.not329.i, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1830, ptr noundef nonnull @.str.1831, i32 noundef 789) #16
  call void @abort() #17
  unreachable

bb.mi:                                            ; preds = %bb.mg
  %i.bbg = load i32, ptr %i.as, align 8, !tbaa !56
  %i.bbh = icmp eq i32 %i.bbg, 24
  br i1 %i.bbh, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1832, ptr noundef nonnull @.str.1831, i32 noundef 790) #16
  call void @abort() #17
  unreachable

bb.mk:                                            ; preds = %bb.mi, %bb.me
  %.2308.i = phi i32 [ %.0306.i, %bb.me ], [ %i.bbf, %bb.mi ] ; 39 uses
  %.1291.i = phi i32 [ %.1697, %bb.me ], [ 0, %bb.mi ]
  %.1289.i = phi ptr [ %.2718, %bb.me ], [ %i.bau, %bb.mi ]
  %i.bbi = load i32, ptr %i.ay, align 8, !tbaa !62
  %.not331.i = icmp eq i32 %i.bbi, 0
  br i1 %.not331.i, label %.thread470.i, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.bbj = load i32, ptr %i.as, align 8, !tbaa !56
  %i.bbk = load i32, ptr %i.dp, align 8, !tbaa !78
  %i.bbl = mul i32 %i.bbk, %i.bbj
  %i.bbm = add i32 %i.bbl, 7
  %i.bbn = lshr i32 %i.bbm, 3
  %i.bbo = icmp eq i32 %.2308.i, %i.bbn
  br i1 %i.bbo, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1833, ptr noundef nonnull @.str.1831, i32 noundef 793) #16
  call void @abort() #17
  unreachable

bb.mn:                                            ; preds = %bb.ml
  br i1 %i.bac, label %bb.mo, label %.thread470.i

bb.mo:                                            ; preds = %bb.mn
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1834, ptr noundef nonnull @.str.1831, i32 noundef 795) #16
  call void @abort() #17
  unreachable

.thread470.i:                                     ; preds = %bb.mn, %bb.mk
  %i.bbp = load i32, ptr %i.awz, align 4, !tbaa !139
  %i.bbq = icmp eq i32 %i.bbp, 166
  br i1 %i.bbq, label %bb.mp, label %bb.mr

bb.mp:                                            ; preds = %.thread470.i
  %i.bbr = sext i32 %.2308.i to i64
  call void @av_fast_padded_malloc(ptr noundef nonnull %i.axb, ptr noundef nonnull %i.axc, i64 noundef %i.bbr) #16
  %i.bbs = load ptr, ptr %i.axb, align 8, !tbaa !143 ; 2 uses
  %i.bbt = icmp eq ptr %i.bbs, null
  br i1 %i.bbt, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  %i.bbu = load ptr, ptr %i.bo, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bbu, i32 noundef 16, ptr noundef nonnull @.str.1829) #16
  br label %tiff_unpack_strip.exit.thread

bb.mr:                                            ; preds = %bb.mp, %.thread470.i
  %.2292.i = phi i32 [ %.1291.i, %.thread470.i ], [ 0, %bb.mp ] ; 10 uses
  %.2.i = phi ptr [ %.1289.i, %.thread470.i ], [ %i.bbs, %bb.mp ] ; 11 uses
  %i.bbv = load i32, ptr %i.av, align 8, !tbaa !59 ; 3 uses
  switch i32 %i.bbv, label %bb.ot [
    i32 32946, label %bb.ms
    i32 8, label %bb.ms
    i32 34925, label %bb.ng
    i32 5, label %bb.nt
    i32 2, label %bb.ok
    i32 3, label %bb.ok
    i32 4, label %bb.ok
  ]

bb.ms:                                            ; preds = %bb.mr, %bb.mr
  br i1 %i.bac, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %bb.ms
  %i.bbw = load i32, ptr %i.axa, align 8, !tbaa !29 ; 2 uses
  %i.bbx = add i32 %.829, -1
  %i.bby = add i32 %i.bbx, %i.bbw
  %i.bbz = sdiv i32 %i.bby, %i.bbw
  br label %bb.mu

bb.mu:                                            ; preds = %bb.mt, %bb.ms
  %i.bca = phi i32 [ %i.bbz, %bb.mt ], [ %.829, %bb.ms ]
  %i.bcb = mul nsw i32 %.2308.i, %.829            ; 2 uses
  %i.bcc = sext i32 %i.bcb to i64                 ; 2 uses
  %i.bcd = call noalias ptr @av_malloc(i64 noundef %i.bcc) #16 ; 9 uses
  %.not67.i.i = icmp eq ptr %i.bcd, null
  br i1 %.not67.i.i, label %tiff_unpack_strip.exit.thread, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.bce = load i32, ptr %i.aw, align 4, !tbaa !60
  %.not68.i.i = icmp eq i32 %i.bce, 0
  br i1 %.not68.i.i, label %bb.my, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.bcf = zext nneg i32 %.0702 to i64            ; 3 uses
  call void @av_fast_padded_malloc(ptr noundef nonnull %i.axd, ptr noundef nonnull %i.axe, i64 noundef %i.bcf) #16
  %i.bcg = load ptr, ptr %i.axd, align 8, !tbaa !144
  %.not.i.i.i = icmp eq ptr %i.bcg, null
  br i1 %.not.i.i.i, label %bb.mx, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.mw
  %xtraiter3717 = and i64 %i.bcf, 1
  %i.bch = icmp eq i32 %.0702, 1
  br i1 %i.bch, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter3720 = and i64 %i.bcf, 2147483646
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.1, %.preheader.i.i.i ] ; 4 uses
  %niter3721 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter3721.next.1, %.preheader.i.i.i ]
  %i.bci = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.i.i.i
  %i.bcj = load i8, ptr %i.bci, align 1, !tbaa !80
  %i.bck = zext i8 %i.bcj to i64
  %i.bcl = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bck
  %i.bcm = load i8, ptr %i.bcl, align 1, !tbaa !80
  %i.bcn = load ptr, ptr %i.axd, align 8, !tbaa !144
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 %indvars.iv.i.i.i
  store i8 %i.bcm, ptr %i.bco, align 1, !tbaa !80
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.next.i.i.i
  %i.bcq = load i8, ptr %i.bcp, align 1, !tbaa !80
  %i.bcr = zext i8 %i.bcq to i64
  %i.bcs = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bcr
  %i.bct = load i8, ptr %i.bcs, align 1, !tbaa !80
  %i.bcu = load ptr, ptr %i.axd, align 8, !tbaa !144
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 %indvars.iv.next.i.i.i
  store i8 %i.bct, ptr %i.bcv, align 1, !tbaa !80
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter3721.next.1 = add i64 %niter3721, 2       ; 2 uses
  %niter3721.ncmp.1 = icmp eq i64 %niter3721.next.1, %unroll_iter3720
  br i1 %niter3721.ncmp.1, label %deinvert_buffer.exit.i.i.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !145

bb.mx:                                            ; preds = %bb.mw
  call void @av_free(ptr noundef nonnull %i.bcd) #16
  br label %tiff_unpack_strip.exit.thread

deinvert_buffer.exit.i.i.unr-lcssa:               ; preds = %.preheader.i.i.i
  %lcmp.mod3718.not = icmp eq i64 %xtraiter3717, 0
  br i1 %lcmp.mod3718.not, label %deinvert_buffer.exit.i.i, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %deinvert_buffer.exit.i.i.unr-lcssa, %.preheader.i.i.i.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.1, %deinvert_buffer.exit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod3719 = trunc i32 %.0702 to i1
  call void @llvm.assume(i1 %lcmp.mod3719)
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.i.i.i.epil.init
  %i.bcx = load i8, ptr %i.bcw, align 1, !tbaa !80
  %i.bcy = zext i8 %i.bcx to i64
  %i.bcz = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bcy
  %i.bda = load i8, ptr %i.bcz, align 1, !tbaa !80
  %i.bdb = load ptr, ptr %i.axd, align 8, !tbaa !144
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 %indvars.iv.i.i.i.epil.init
  store i8 %i.bda, ptr %i.bdc, align 1, !tbaa !80
  br label %deinvert_buffer.exit.i.i

deinvert_buffer.exit.i.i:                         ; preds = %deinvert_buffer.exit.i.i.unr-lcssa, %.preheader.i.i.i.epil.preheader
  %i.bdd = load ptr, ptr %i.axd, align 8, !tbaa !144
  br label %bb.my

bb.my:                                            ; preds = %deinvert_buffer.exit.i.i, %bb.mv
  %.059.i.i = phi ptr [ %i.bdd, %deinvert_buffer.exit.i.i ], [ %i.azl, %bb.mv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.axl, i8 0, i64 104, i1 false)
  store ptr %.059.i.i, ptr %5, align 8, !tbaa !146
  store i32 %.0702, ptr %i.axl, align 8, !tbaa !149
  store ptr %i.bcd, ptr %i.axm, align 8, !tbaa !150
  store i32 %i.bcb, ptr %i.axn, align 8, !tbaa !151
  %i.bde = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str.1846, i32 noundef 112) #16 ; 3 uses
  %.not.i70.i.i = icmp eq i32 %i.bde, 0
  br i1 %.not.i70.i.i, label %bb.mz, label %tiff_uncompress.exit.thread81.i.i

tiff_uncompress.exit.thread81.i.i:                ; preds = %bb.my
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.1847, i32 noundef %i.bde) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.loopexit949

bb.mz:                                            ; preds = %bb.my
  %i.bdf = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 2) #16 ; 2 uses
  %i.bdg = call i32 @inflateEnd(ptr noundef nonnull %5) #16 ; 0 uses
  %i.bdh = load i64, ptr %i.axo, align 8, !tbaa !152 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %switch.i.i = icmp ult i32 %i.bdf, 2
  br i1 %switch.i.i, label %tiff_uncompress.exit.thread.i.i, label %.loopexit949

.loopexit949:                                     ; preds = %bb.mz, %tiff_uncompress.exit.thread81.i.i
  %.0.i7186.i.i = phi i32 [ %i.bde, %tiff_uncompress.exit.thread81.i.i ], [ %i.bdf, %bb.mz ]
  %.07485.i.i = phi i64 [ %i.bcc, %tiff_uncompress.exit.thread81.i.i ], [ %i.bdh, %bb.mz ]
  %i.bdi = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.bdj = sext i32 %.2308.i to i64
  %i.bdk = sext i32 %.829 to i64
  %i.bdl = mul nsw i64 %i.bdj, %i.bdk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bdi, i32 noundef 16, ptr noundef nonnull @.str.1844, i64 noundef %.07485.i.i, i64 noundef %i.bdl, i32 noundef %.0.i7186.i.i) #16
  call void @av_free(ptr noundef nonnull %i.bcd) #16
  br label %tiff_unpack_strip.exit.thread

tiff_uncompress.exit.thread.i.i:                  ; preds = %bb.mz
  %i.bdm = sext i32 %.2308.i to i64               ; 4 uses
  %i.bdn = sext i32 %i.bca to i64
  %i.bdo = mul nsw i64 %i.bdn, %i.bdm             ; 2 uses
  %i.bdp = icmp ult i64 %i.bdh, %i.bdo
  br i1 %i.bdp, label %bb.na, label %.preheader91.i.i

.preheader91.i.i:                                 ; preds = %tiff_uncompress.exit.thread.i.i
  %i.bdq = icmp sgt i32 %.829, 0
  br i1 %i.bdq, label %.lr.ph102.i.i, label %tiff_unpack_strip.exit.thread892.sink.split

.lr.ph102.i.i:                                    ; preds = %.preheader91.i.i
  %i.bdr = icmp sgt i32 %.2308.i, 0               ; 3 uses
  %i.bds = sext i32 %.2292.i to i64               ; 2 uses
  %i.bdt = zext i32 %.2308.i to i64               ; 10 uses
end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  %indvars.iv54.i.i = phi i64 [ %indvars.iv.next55.i.i.1, %.lr.ph41.i.i ], [ %indvars.iv54.i.i.unr, %.lr.ph41.i.i.prol.loopexit ] ; 3 uses
  %indvars.iv.next55.i.i = add nsw i64 %indvars.iv54.i.i, -1 ; 2 uses
  %i.bvd = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %indvars.iv.next55.i.i ; 2 uses
  %i.bve = load i8, ptr %i.bvd, align 1, !tbaa !80
  %i.bvf = and i8 %i.bve, 15
  %i.bvg = shl nuw nsw i64 %indvars.iv.next55.i.i, 1
  %i.bvh = getelementptr i8, ptr %.02846.i.i, i64 %i.bvg ; 2 uses
  %i.bvi = getelementptr i8, ptr %i.bvh, i64 1
  store i8 %i.bvf, ptr %i.bvi, align 1, !tbaa !80
  %i.bvj = load i8, ptr %i.bvd, align 1, !tbaa !80
  %i.bvk = lshr i8 %i.bvj, 4
  store i8 %i.bvk, ptr %i.bvh, align 1, !tbaa !80
  %indvars.iv.next55.i.i.1 = add nsw i64 %indvars.iv54.i.i, -2 ; 3 uses
  %i.bvl = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %indvars.iv.next55.i.i.1 ; 2 uses
  %i.bvm = load i8, ptr %i.bvl, align 1, !tbaa !80
  %i.bvn = and i8 %i.bvm, 15
  %i.bvo = shl nuw nsw i64 %indvars.iv.next55.i.i.1, 1
  %i.bvp = getelementptr i8, ptr %.02846.i.i, i64 %i.bvo ; 2 uses
  %i.bvq = getelementptr i8, ptr %i.bvp, i64 1
  store i8 %i.bvn, ptr %i.bvq, align 1, !tbaa !80
  %i.bvr = load i8, ptr %i.bvl, align 1, !tbaa !80
  %i.bvs = lshr i8 %i.bvr, 4
  store i8 %i.bvs, ptr %i.bvp, align 1, !tbaa !80
  %i.bvt = icmp sgt i64 %indvars.iv54.i.i, 2
  br i1 %i.bvt, label %.lr.ph41.i.i, label %horizontal_fill.exit.i422.i, !llvm.loop !178

bb.or:                                            ; preds = %bb.oq, %bb.oq, %bb.oq
  %i.bvu = icmp ne ptr %.02846.i.i, null
  %or.cond3.i.i.i421.i = and i1 %or.cond.i.i.i420.i, %i.bvu
  %i.bvv = select i1 %or.cond3.i.i.i421.i, i32 %i.bsr, i32 8 ; 2 uses
  %i.bvw = load i32, ptr %i.dp, align 8, !tbaa !78 ; 4 uses
  %i.bvx = icmp sgt i32 %i.bvw, 0
  br i1 %i.bvx, label %.lr.ph.i423.i, label %horizontal_fill.exit.i422.i

.lr.ph.i423.i:                                    ; preds = %bb.or
  %i.bvy = sub nuw nsw i32 16, %i.bsx
  %i.bvz = load i32, ptr %i.ap, align 4, !tbaa !53
  %i.bwa = add i32 %i.bvz, -1
  %spec.select.i.i.i = icmp ult i32 %i.bwa, 2
  %i.bwb = sub nuw nsw i32 32, %i.bsx             ; 3 uses
  %i.bwc = select i1 %spec.select.i.i.i, i32 0, i32 %i.bvy ; 3 uses
  %wide.trip.count.i424.i = zext nneg i32 %i.bvw to i64 ; 2 uses
  %xtraiter3692 = and i64 %wide.trip.count.i424.i, 1
  %i.bwd = icmp eq i32 %i.bvw, 1
  br i1 %i.bwd, label %.epil.preheader, label %.lr.ph.i423.i.new

.lr.ph.i423.i.new:                                ; preds = %.lr.ph.i423.i
  %unroll_iter3695 = and i64 %wide.trip.count.i424.i, 2147483646
  br label %bb.os

bb.os:                                            ; preds = %bb.os, %.lr.ph.i423.i.new
  %indvars.iv.i425.i = phi i64 [ 0, %.lr.ph.i423.i.new ], [ %indvars.iv.next.i426.i.1, %bb.os ] ; 3 uses
  %.sroa.4.038.i.i = phi i32 [ 0, %.lr.ph.i423.i.new ], [ %i.bxa, %bb.os ] ; 3 uses
  %niter3696 = phi i64 [ 0, %.lr.ph.i423.i.new ], [ %niter3696.next.1, %bb.os ]
  %i.bwe = lshr i32 %.sroa.4.038.i.i, 3
  %i.bwf = zext nneg i32 %i.bwe to i64
  %i.bwg = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %i.bwf
  %i.bwh = load i32, ptr %i.bwg, align 1, !tbaa !80
  %i.bwi = call i32 @llvm.bswap.i32(i32 %i.bwh)
  %i.bwj = and i32 %.sroa.4.038.i.i, 7
  %i.bwk = shl i32 %i.bwi, %i.bwj
  %i.bwl = lshr i32 %i.bwk, %i.bwb
  %i.bwm = add i32 %.sroa.4.038.i.i, %i.bsx
  %i.bwn = call i32 @llvm.umin.i32(i32 %i.bvv, i32 %i.bwm) ; 3 uses
  %i.bwo = shl nuw nsw i32 %i.bwl, %i.bwc
  %i.bwp = trunc i32 %i.bwo to i16
  %i.bwq = getelementptr inbounds nuw [2 x i8], ptr %.02846.i.i, i64 %indvars.iv.i425.i
  store i16 %i.bwp, ptr %i.bwq, align 2, !tbaa !67
  %i.bwr = lshr i32 %i.bwn, 3
  %i.bws = zext nneg i32 %i.bwr to i64
  %i.bwt = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %i.bws
  %i.bwu = load i32, ptr %i.bwt, align 1, !tbaa !80
  %i.bwv = call i32 @llvm.bswap.i32(i32 %i.bwu)
  %i.bww = and i32 %i.bwn, 7
  %i.bwx = shl i32 %i.bwv, %i.bww
  %i.bwy = lshr i32 %i.bwx, %i.bwb
  %i.bwz = add i32 %i.bwn, %i.bsx
  %i.bxa = call i32 @llvm.umin.i32(i32 %i.bvv, i32 %i.bwz) ; 2 uses
  %i.bxb = shl nuw nsw i32 %i.bwy, %i.bwc
  %i.bxc = trunc i32 %i.bxb to i16
  %i.bxd = getelementptr inbounds nuw [2 x i8], ptr %.02846.i.i, i64 %indvars.iv.i425.i
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bxd, i64 2
  store i16 %i.bxc, ptr %i.bxe, align 2, !tbaa !67
  %indvars.iv.next.i426.i.1 = add nuw nsw i64 %indvars.iv.i425.i, 2 ; 2 uses
  %niter3696.next.1 = add i64 %niter3696, 2       ; 2 uses
  %niter3696.ncmp.1 = icmp eq i64 %niter3696.next.1, %unroll_iter3695
  br i1 %niter3696.ncmp.1, label %horizontal_fill.exit.i422.i.loopexit3489.unr-lcssa, label %bb.os, !llvm.loop !181

horizontal_fill.exit.i422.i.loopexit3489.unr-lcssa: ; preds = %bb.os
  %lcmp.mod3693.not = icmp eq i64 %xtraiter3692, 0
  br i1 %lcmp.mod3693.not, label %horizontal_fill.exit.i422.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %horizontal_fill.exit.i422.i.loopexit3489.unr-lcssa, %.lr.ph.i423.i
  %indvars.iv.i425.i.epil.init = phi i64 [ 0, %.lr.ph.i423.i ], [ %indvars.iv.next.i426.i.1, %horizontal_fill.exit.i422.i.loopexit3489.unr-lcssa ]
  %.sroa.4.038.i.i.epil.init = phi i32 [ 0, %.lr.ph.i423.i ], [ %i.bxa, %horizontal_fill.exit.i422.i.loopexit3489.unr-lcssa ] ; 2 uses
  %lcmp.mod3694 = trunc i32 %i.bvw to i1
  call void @llvm.assume(i1 %lcmp.mod3694)
  %i.bxf = lshr i32 %.sroa.4.038.i.i.epil.init, 3
  %i.bxg = zext nneg i32 %i.bxf to i64
  %i.bxh = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %i.bxg
  %i.bxi = load i32, ptr %i.bxh, align 1, !tbaa !80
  %i.bxj = call i32 @llvm.bswap.i32(i32 %i.bxi)
  %i.bxk = and i32 %.sroa.4.038.i.i.epil.init, 7
  %i.bxl = shl i32 %i.bxj, %i.bxk
  %i.bxm = lshr i32 %i.bxl, %i.bwb
  %i.bxn = shl nuw nsw i32 %i.bxm, %i.bwc
  %i.bxo = trunc i32 %i.bxn to i16
  %i.bxp = getelementptr inbounds nuw [2 x i8], ptr %.02846.i.i, i64 %indvars.iv.i425.i.epil.init
  store i16 %i.bxo, ptr %i.bxp, align 2, !tbaa !67
  br label %horizontal_fill.exit.i422.i

horizontal_fill.exit.i422.i:                      ; preds = %.epil.preheader, %horizontal_fill.exit.i422.i.loopexit3489.unr-lcssa, %.lr.ph41.i.i.prol.loopexit, %.lr.ph41.i.i, %.lr.ph43.i.i, %.lr.ph45.i.i, %bb.or, %.preheader.i428.i, %.preheader32.i.i, %.preheader34.i.i, %bb.oq
  %i.bxq = getelementptr inbounds i8, ptr %.02846.i.i, i64 %i.bst
  %i.bxr = add nuw nsw i32 %.048.i.i, 1           ; 2 uses
  %exitcond63.not.i.i = icmp eq i32 %i.bxr, %.829
  br i1 %exitcond63.not.i.i, label %tiff_unpack_strip.exit, label %bb.oq, !llvm.loop !182

bb.ot:                                            ; preds = %bb.mr
  %.not.i854 = icmp eq ptr %i.azj, null
  br i1 %.not.i854, label %bb.ou, label %bytestream2_init.exit.i

bb.ou:                                            ; preds = %bb.ot
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 141) #16
  call void @abort() #17
  unreachable

bytestream2_init.exit.i:                          ; preds = %bb.ot
  store ptr %i.azl, ptr %i.y, align 8, !tbaa !49
  store ptr %i.azl, ptr %i.ad, align 8, !tbaa !50
  %i.bxs = zext nneg i32 %.0702 to i64            ; 2 uses
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.azl, i64 %i.bxs ; 2 uses
  store ptr %i.bxt, ptr %i.ag, align 8, !tbaa !51
  br i1 %i.bac, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %bytestream2_init.exit.i
  %i.bxu = load i32, ptr %i.axc, align 8, !tbaa !183
  br label %bb.ox

bb.ow:                                            ; preds = %bytestream2_init.exit.i
  %i.bxv = mul nsw i32 %.2292.i, %.829
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ow, %bb.ov
  %i.bxw = phi i32 [ %i.bxu, %bb.ov ], [ %i.bxv, %bb.ow ] ; 2 uses
  %i.bxx = icmp ne ptr %.2.i, null
  %i.bxy = icmp sgt i32 %i.bxw, -1
  %or.cond.i370.i = and i1 %i.bxx, %i.bxy
  br i1 %or.cond.i370.i, label %bytestream2_init_writer.exit.i, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 151) #16
  call void @abort() #17
  unreachable

bytestream2_init_writer.exit.i:                   ; preds = %bb.ox
  %i.bxz = load i32, ptr %i.ap, align 4, !tbaa !53
  %i.bya = add i32 %i.bxz, -1
  %spec.select.i = icmp ult i32 %i.bya, 2         ; 3 uses
  %i.byb = icmp eq i32 %i.bbv, 7
  %or.cond3.i = and i1 %i.byb, %spec.select.i
  br i1 %or.cond3.i, label %bb.oz, label %bb.pd

bb.oz:                                            ; preds = %bytestream2_init_writer.exit.i
  %i.byc = load i32, ptr %i.dj, align 8, !tbaa !86
  %i.byd = icmp sgt i32 %i.byc, 1
  br i1 %i.byd, label %bb.pa, label %bb.pb

bb.pa:                                            ; preds = %bb.oz
  %i.bye = load ptr, ptr %i.bo, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bye, i32 noundef 16, ptr noundef nonnull @.str.1838) #16
  br label %tiff_unpack_strip.exit.thread

bb.pb:                                            ; preds = %bb.oz
  %i.byf = load i32, ptr %i.ay, align 8, !tbaa !62
  %.not339.i = icmp eq i32 %i.byf, 0
  br i1 %.not339.i, label %tiff_unpack_strip.exit.thread, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.byg = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.byh = load i32, ptr %i.di, align 4, !tbaa !88
  %i.byi = load i32, ptr %i.dp, align 8, !tbaa !78
  %i.byj = load i32, ptr %i.dm, align 4, !tbaa !79
  %i.byk = call fastcc i32 @dng_decode_jpeg(ptr noundef %i.byg, ptr noundef nonnull readonly %1, i32 noundef %i.byh, i32 noundef 0, i32 noundef 0, i32 noundef %i.byi, i32 noundef %i.byj)
  br label %tiff_unpack_strip.exit

bb.pd:                                            ; preds = %bytestream2_init_writer.exit.i
  %i.byl = icmp eq i32 %.2292.i, 0
  %or.cond5.i = and i1 %i.byl, %spec.select.i
  br i1 %or.cond5.i, label %tiff_unpack_strip.exit.thread, label %.preheader507.i

.preheader507.i:                                  ; preds = %bb.pd
  %i.bym = icmp sgt i32 %.829, 0
  br i1 %i.bym, label %.lr.ph584.i, label %tiff_unpack_strip.exit.thread892

.lr.ph584.i:                                      ; preds = %.preheader507.i
  %i.byn = ptrtoint ptr %i.azl to i64
  %i.byo = icmp sgt i32 %.2308.i, 0               ; 5 uses
  %i.byp = ptrtoint ptr %i.bxt to i64             ; 3 uses
  %i.byq = sext i32 %.2308.i to i64               ; 3 uses
  %or.cond.i429.i = icmp ugt i32 %.2308.i, 268435455
  %i.byr = shl nuw nsw i32 %.2308.i, 3
  %i.bys = select i1 %or.cond.i429.i, i32 -8, i32 %i.byr ; 2 uses
  %or.cond.i.i430.i = icmp ult i32 %i.bys, 2147483135
  %i.byt = add nuw nsw i32 %i.bys, 8
  %i.byu = sdiv i32 %.2308.i, 2
  %i.byv = call i32 @llvm.abs.i32(i32 %.2292.i, i1 true)
  %i.byw = sext i32 %.2292.i to i64               ; 3 uses
  %i.byx = zext i32 %.2308.i to i64               ; 14 uses
  %i.byy = select i1 %or.cond.i.i430.i, i32 %i.byt, i32 8 ; 2 uses
  %i.byz = shl nuw nsw i64 %i.byx, 1
  %i.bza = getelementptr i8, ptr %.2.i, i64 %i.byz
  %xtraiter3728 = and i64 %i.byx, 3               ; 3 uses
  %i.bzb = icmp ult i32 %.2308.i, 4
  %unroll_iter3731 = and i64 %i.byx, 2147483644
  %lcmp.mod3729.not = icmp eq i64 %xtraiter3728, 0
  %lcmp.mod3730 = icmp ne i64 %xtraiter3728, 0
  %xtraiter3733 = and i64 %i.byx, 3               ; 3 uses
  %i.bzc = icmp ult i32 %.2308.i, 4
  %unroll_iter3737 = and i64 %i.byx, 2147483644
  %lcmp.mod3735.not = icmp eq i64 %xtraiter3733, 0
  %lcmp.mod3736 = icmp ne i64 %xtraiter3733, 0
  %min.iters.check3326 = icmp ult i32 %.2308.i, 8
  %n.vec3328 = and i64 %i.byx, 2147483640         ; 2 uses
  %i.bzd = and i64 %i.byx, 7
  %cmp.n3338 = icmp eq i64 %n.vec3328, %i.byx
  br label %bb.pe

bb.pe:                                            ; preds = %bb.qm, %.lr.ph584.i
  %indvar3318 = phi i64 [ %indvar.next3319, %bb.qm ], [ 0, %.lr.ph584.i ] ; 3 uses
  %.4580.i = phi ptr [ %i.cwc, %bb.qm ], [ %.2.i, %.lr.ph584.i ] ; 46 uses
  %.1294578.i = phi ptr [ %.5.i, %bb.qm ], [ %i.azl, %.lr.ph584.i ] ; 20 uses
  %.2301577.i = phi i32 [ %i.cwd, %bb.qm ], [ 0, %.lr.ph584.i ] ; 7 uses
  %.sroa.12.0576.i = phi i1 [ %i.bzt, %bb.qm ], [ true, %.lr.ph584.i ]
  %i.bze = mul i64 %indvar3318, %i.byw
  %i.bzf = getelementptr i8, ptr %.2.i, i64 %i.bze
  %i.bzg = mul i64 %indvar3318, %i.byw
  %scevgep3320 = getelementptr i8, ptr %i.bza, i64 %i.bzg
  %i.bzh = ptrtoint ptr %.1294578.i to i64        ; 2 uses
  %i.bzi = sub i64 %i.bzh, %i.byn
  %i.bzj = icmp sgt i64 %i.bzi, %i.bxs
  br i1 %i.bzj, label %bb.pf, label %bb.pg

bb.pf:                                            ; preds = %bb.pe
  %i.bzk = load ptr, ptr %i.bo, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bzk, i32 noundef 16, ptr noundef nonnull @.str.1839) #16
  br label %tiff_unpack_strip.exit.thread

bb.pg:                                            ; preds = %bb.pe
  %i.bzl = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.bzm = load ptr, ptr %i.y, align 8, !tbaa !49
  %i.bzn = ptrtoint ptr %i.bzl to i64
  %i.bzo = ptrtoint ptr %i.bzm to i64
  %i.bzp = sub i64 %i.bzn, %i.bzo
  %i.bzq = and i64 %i.bzp, 4294967295
  %i.bzr = icmp ne i64 %i.bzq, 0
  %or.cond474.i = and i1 %.sroa.12.0576.i, %i.bzr
  br i1 %or.cond474.i, label %bytestream2_seek_p.exit.i, label %tiff_unpack_strip.exit.thread892

bytestream2_seek_p.exit.i:                        ; preds = %bb.pg
  %i.bzs = mul nsw i32 %.2301577.i, %.2292.i
  %i.bzt = icmp sge i32 %i.bxw, %i.bzs
  %i.bzu = load i32, ptr %i.av, align 8, !tbaa !59
  switch i32 %i.bzu, label %.loopexit505.i [
    i32 1, label %bb.ph
    i32 32773, label %.preheader506.i
  ]

.preheader506.i:                                  ; preds = %bytestream2_seek_p.exit.i
  br i1 %i.byo, label %.lr.ph551.i, label %.loopexit505.i

bb.ph:                                            ; preds = %bytestream2_seek_p.exit.i
  %i.bzv = sub i64 %i.byp, %i.bzh
  %i.bzw = icmp slt i64 %i.bzv, %i.byq
  br i1 %i.bzw, label %tiff_unpack_strip.exit.thread, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.bzx = load i32, ptr %i.aw, align 4, !tbaa !60
  %.not336.i = icmp eq i32 %i.bzx, 0
  br i1 %.not336.i, label %bb.pj, label %.preheader502.i

.preheader502.i:                                  ; preds = %bb.pi
  br i1 %i.byo, label %.lr.ph555.i.preheader, label %horizontal_fill.exit363.i

.lr.ph555.i.preheader:                            ; preds = %.preheader502.i
  br i1 %i.bzc, label %.lr.ph555.i.epil.preheader, label %.lr.ph555.i

bb.pj:                                            ; preds = %bb.pi
  %i.bzy = load i32, ptr %i.as, align 8, !tbaa !56 ; 5 uses
  %i.bzz = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.caa = getelementptr inbounds nuw i8, ptr %i.bzz, i64 136
  %i.cab = load i32, ptr %i.caa, align 8, !tbaa !138
  %i.cac = icmp eq i32 %i.cab, 11
  br i1 %i.cac, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.cad = load i32, ptr %i.ay, align 8, !tbaa !62
  %.not337.i = icmp eq i32 %i.cad, 0
  br i1 %.not337.i, label %.thread473.i, label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  switch i32 %i.bzy, label %.thread473.i [
    i32 1, label %.preheader496.i
    i32 2, label %.preheader497.i
    i32 4, label %.preheader499.i
    i32 10, label %bb.pm
    i32 12, label %bb.pm
    i32 14, label %bb.pm
  ]

.preheader499.i:                                  ; preds = %bb.pl
  br i1 %i.byo, label %.lr.ph561.i.preheader, label %horizontal_fill.exit363.i

.lr.ph561.i.preheader:                            ; preds = %.preheader499.i
  br i1 %min.iters.check3326, label %.lr.ph561.i.preheader3475, label %vector.memcheck3317

vector.memcheck3317:                              ; preds = %.lr.ph561.i.preheader
  %scevgep3321 = getelementptr i8, ptr %.1294578.i, i64 %i.byx
  %bound03322 = icmp ult ptr %.4580.i, %scevgep3321
  %bound13323 = icmp ult ptr %.1294578.i, %scevgep3320
  %found.conflict3324 = and i1 %bound03322, %bound13323
  br i1 %found.conflict3324, label %.lr.ph561.i.preheader3475, label %vector.body3329

vector.body3329:                                  ; preds = %vector.memcheck3317, %vector.body3329
  %index3330 = phi i64 [ %index.next3336, %vector.body3329 ], [ 0, %vector.memcheck3317 ] ; 2 uses
  %i.cae = xor i64 %index3330, -1
  %i.caf = add i64 %i.cae, %i.byx                 ; 2 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %.1294578.i, i64 %i.caf
  %i.cah = getelementptr inbounds i8, ptr %i.cag, i64 -7
  %wide.load3331 = load <8 x i8>, ptr %i.cah, align 1, !tbaa !80, !alias.scope !184 ; 2 uses
  %i.cai = and <8 x i8> %wide.load3331, splat (i8 15)
  %i.caj = shl nuw nsw i64 %i.caf, 1
  %i.cak = getelementptr i8, ptr %.4580.i, i64 %i.caj
  %i.cal = lshr <8 x i8> %wide.load3331, splat (i8 4)
  %i.cam = getelementptr i8, ptr %i.cak, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %i.cal, <8 x i8> %i.cai, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.cam, align 1, !tbaa !80, !alias.scope !187, !noalias !184
  %index.next3336 = add nuw i64 %index3330, 8     ; 2 uses
  %i.can = icmp eq i64 %index.next3336, %n.vec3328
  br i1 %i.can, label %middle.block3337, label %vector.body3329, !llvm.loop !189

middle.block3337:                                 ; preds = %vector.body3329
  br i1 %cmp.n3338, label %horizontal_fill.exit363.i, label %.lr.ph561.i.preheader3475

.lr.ph561.i.preheader3475:                        ; preds = %vector.memcheck3317, %.lr.ph561.i.preheader, %middle.block3337
  %indvars.iv657.i.ph = phi i64 [ %i.byx, %vector.memcheck3317 ], [ %i.byx, %.lr.ph561.i.preheader ], [ %i.bzd, %middle.block3337 ]
  br label %.lr.ph561.i

.preheader497.i:                                  ; preds = %bb.pl
  br i1 %i.byo, label %.lr.ph563.i, label %horizontal_fill.exit363.i

.preheader496.i:                                  ; preds = %bb.pl
  br i1 %i.byo, label %.lr.ph565.i, label %horizontal_fill.exit363.i

.lr.ph565.i:                                      ; preds = %.preheader496.i, %.lr.ph565.i
  %indvars.iv663.i = phi i64 [ %indvars.iv.next664.i, %.lr.ph565.i ], [ %i.byx, %.preheader496.i ] ; 2 uses
  %indvars.iv.next664.i = add nsw i64 %indvars.iv663.i, -1 ; 3 uses
  %i.cao = getelementptr inbounds nuw i8, ptr %.1294578.i, i64 %indvars.iv.next664.i ; 8 uses
  %i.cap = load i8, ptr %i.cao, align 1, !tbaa !80
  %i.caq = and i8 %i.cap, 1
  %i.car = shl nsw i64 %indvars.iv.next664.i, 3
  %i.cas = getelementptr i8, ptr %.4580.i, i64 %i.car ; 8 uses
  %i.cat = getelementptr i8, ptr %i.cas, i64 7
  store i8 %i.caq, ptr %i.cat, align 1, !tbaa !80
  %i.cau = load i8, ptr %i.cao, align 1, !tbaa !80
  %i.cav = lshr i8 %i.cau, 1
  %i.caw = and i8 %i.cav, 1
  %i.cax = getelementptr i8, ptr %i.cas, i64 6
  store i8 %i.caw, ptr %i.cax, align 1, !tbaa !80
  %i.cay = load i8, ptr %i.cao, align 1, !tbaa !80
  %i.caz = lshr i8 %i.cay, 2
  %i.cba = and i8 %i.caz, 1
  %i.cbb = getelementptr i8, ptr %i.cas, i64 5
  store i8 %i.cba, ptr %i.cbb, align 1, !tbaa !80
  %i.cbc = load i8, ptr %i.cao, align 1, !tbaa !80
  %i.cbd = lshr i8 %i.cbc, 3
  %i.cbe = and i8 %i.cbd, 1
  %i.cbf = getelementptr i8, ptr %i.cas, i64 4
  store i8 %i.cbe, ptr %i.cbf, align 1, !tbaa !80
  %i.cbg = load i8, ptr %i.cao, align 1, !tbaa !80
  %i.cbh = lshr i8 %i.cbg, 4
  %i.cbi = and i8 %i.cbh, 1
  %i.cbj = getelementptr i8, ptr %i.cas, i64 3
  store i8 %i.cbi, ptr %i.cbj, align 1, !tbaa !80
  %i.cbk = load i8, ptr %i.cao, align 1, !tbaa !80
  %i.cbl = lshr i8 %i.cbk, 5
  %i.cbm = and i8 %i.cbl, 1
  %i.cbn = getelementptr i8, ptr %i.cas, i64 2
  store i8 %i.cbm, ptr %i.cbn, align 1, !tbaa !80
  %i.cbo = load i8, ptr %i.cao, align 1, !tbaa !80
  %i.cbp = lshr i8 %i.cbo, 6
  %i.cbq = and i8 %i.cbp, 1
  %i.cbr = getelementptr i8, ptr %i.cas, i64 1
  store i8 %i.cbq, ptr %i.cbr, align 1, !tbaa !80
  %i.cbs = load i8, ptr %i.cao, align 1, !tbaa !80
  %i.cbt = lshr i8 %i.cbs, 7
  store i8 %i.cbt, ptr %i.cas, align 1, !tbaa !80
  %i.cbu = icmp samesign ugt i64 %indvars.iv663.i, 1
  br i1 %i.cbu, label %.lr.ph565.i, label %horizontal_fill.exit363.i, !llvm.loop !159

.lr.ph563.i:                                      ; preds = %.preheader497.i, %.lr.ph563.i
  %indvars.iv660.i = phi i64 [ %indvars.iv.next661.i, %.lr.ph563.i ], [ %i.byx, %.preheader497.i ] ; 2 uses
  %indvars.iv.next661.i = add nsw i64 %indvars.iv660.i, -1 ; 3 uses
  %i.cbv = getelementptr inbounds nuw i8, ptr %.1294578.i, i64 %indvars.iv.next661.i ; 4 uses
  %i.cbw = load i8, ptr %i.cbv, align 1, !tbaa !80
  %i.cbx = and i8 %i.cbw, 3
  %i.cby = shl nsw i64 %indvars.iv.next661.i, 2
  %i.cbz = getelementptr i8, ptr %.4580.i, i64 %i.cby ; 4 uses
  %i.cca = getelementptr i8, ptr %i.cbz, i64 3
  store i8 %i.cbx, ptr %i.cca, align 1, !tbaa !80
  %i.ccb = load i8, ptr %i.cbv, align 1, !tbaa !80
  %i.ccc = lshr i8 %i.ccb, 2
  %i.ccd = and i8 %i.ccc, 3
  %i.cce = getelementptr i8, ptr %i.cbz, i64 2
  store i8 %i.ccd, ptr %i.cce, align 1, !tbaa !80
  %i.ccf = load i8, ptr %i.cbv, align 1, !tbaa !80
  %i.ccg = lshr i8 %i.ccf, 4
  %i.cch = and i8 %i.ccg, 3
  %i.cci = getelementptr i8, ptr %i.cbz, i64 1
  store i8 %i.cch, ptr %i.cci, align 1, !tbaa !80
  %i.ccj = load i8, ptr %i.cbv, align 1, !tbaa !80
  %i.cck = lshr i8 %i.ccj, 6
  store i8 %i.cck, ptr %i.cbz, align 1, !tbaa !80
  %i.ccl = icmp samesign ugt i64 %indvars.iv660.i, 1
  br i1 %i.ccl, label %.lr.ph563.i, label %horizontal_fill.exit363.i, !llvm.loop !160

.lr.ph561.i:                                      ; preds = %.lr.ph561.i.preheader3475, %.lr.ph561.i
  %indvars.iv657.i = phi i64 [ %indvars.iv.next658.i, %.lr.ph561.i ], [ %indvars.iv657.i.ph, %.lr.ph561.i.preheader3475 ] ; 2 uses
  %indvars.iv.next658.i = add nsw i64 %indvars.iv657.i, -1 ; 3 uses
  %i.ccm = getelementptr inbounds nuw i8, ptr %.1294578.i, i64 %indvars.iv.next658.i ; 2 uses
  %i.ccn = load i8, ptr %i.ccm, align 1, !tbaa !80
  %i.cco = and i8 %i.ccn, 15
  %i.ccp = shl nuw nsw i64 %indvars.iv.next658.i, 1
  %i.ccq = getelementptr i8, ptr %.4580.i, i64 %i.ccp ; 2 uses
  %i.ccr = getelementptr i8, ptr %i.ccq, i64 1
  store i8 %i.cco, ptr %i.ccr, align 1, !tbaa !80
  %i.ccs = load i8, ptr %i.ccm, align 1, !tbaa !80
  %i.cct = lshr i8 %i.ccs, 4
  store i8 %i.cct, ptr %i.ccq, align 1, !tbaa !80
  %i.ccu = icmp samesign ugt i64 %indvars.iv657.i, 1
  br i1 %i.ccu, label %.lr.ph561.i, label %horizontal_fill.exit363.i, !llvm.loop !190

bb.pm:                                            ; preds = %bb.pl, %bb.pl, %bb.pl
  %i.ccv = load i32, ptr %i.dp, align 8, !tbaa !78 ; 4 uses
  %i.ccw = icmp sgt i32 %i.ccv, 0
  br i1 %i.ccw, label %.lr.ph559.i, label %horizontal_fill.exit363.i

.lr.ph559.i:                                      ; preds = %bb.pm
  %i.ccx = sub nuw nsw i32 16, %i.bzy
  %i.ccy = load i32, ptr %i.ap, align 4, !tbaa !53
  %i.ccz = add i32 %i.ccy, -1
  %spec.select.i358.i = icmp ult i32 %i.ccz, 2
  %i.cda = sub nuw nsw i32 32, %i.bzy             ; 3 uses
  %i.cdb = select i1 %spec.select.i358.i, i32 0, i32 %i.ccx ; 3 uses
  %wide.trip.count655.i = zext nneg i32 %i.ccv to i64 ; 2 uses
  %xtraiter3740 = and i64 %wide.trip.count655.i, 1
  %i.cdc = icmp eq i32 %i.ccv, 1
  br i1 %i.cdc, label %.epil.preheader3739, label %.lr.ph559.i.new

.lr.ph559.i.new:                                  ; preds = %.lr.ph559.i
  %unroll_iter3744 = and i64 %wide.trip.count655.i, 2147483646
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pn, %.lr.ph559.i.new
  %indvars.iv652.i = phi i64 [ 0, %.lr.ph559.i.new ], [ %indvars.iv.next653.i.1, %bb.pn ] ; 3 uses
  %.sroa.4458.0556.i = phi i32 [ 0, %.lr.ph559.i.new ], [ %i.cdz, %bb.pn ] ; 3 uses
  %niter3745 = phi i64 [ 0, %.lr.ph559.i.new ], [ %niter3745.next.1, %bb.pn ]
  %i.cdd = lshr i32 %.sroa.4458.0556.i, 3
  %i.cde = zext nneg i32 %i.cdd to i64
  %i.cdf = getelementptr inbounds nuw i8, ptr %.1294578.i, i64 %i.cde
  %i.cdg = load i32, ptr %i.cdf, align 1, !tbaa !80
  %i.cdh = call i32 @llvm.bswap.i32(i32 %i.cdg)
  %i.cdi = and i32 %.sroa.4458.0556.i, 7
  %i.cdj = shl i32 %i.cdh, %i.cdi
  %i.cdk = lshr i32 %i.cdj, %i.cda
  %i.cdl = add i32 %.sroa.4458.0556.i, %i.bzy
  %i.cdm = call i32 @llvm.umin.i32(i32 %i.byy, i32 %i.cdl) ; 3 uses
  %i.cdn = shl nuw nsw i32 %i.cdk, %i.cdb
  %i.cdo = trunc i32 %i.cdn to i16
  %i.cdp = getelementptr inbounds nuw [2 x i8], ptr %.4580.i, i64 %indvars.iv652.i
  store i16 %i.cdo, ptr %i.cdp, align 2, !tbaa !67
  %i.cdq = lshr i32 %i.cdm, 3
  %i.cdr = zext nneg i32 %i.cdq to i64
  %i.cds = getelementptr inbounds nuw i8, ptr %.1294578.i, i64 %i.cdr
  %i.cdt = load i32, ptr %i.cds, align 1, !tbaa !80
  %i.cdu = call i32 @llvm.bswap.i32(i32 %i.cdt)
  %i.cdv = and i32 %i.cdm, 7
  %i.cdw = shl i32 %i.cdu, %i.cdv
  %i.cdx = lshr i32 %i.cdw, %i.cda
  %i.cdy = add i32 %i.cdm, %i.bzy
  %i.cdz = call i32 @llvm.umin.i32(i32 %i.byy, i32 %i.cdy) ; 2 uses
  %i.cea = shl nuw nsw i32 %i.cdx, %i.cdb
  %i.ceb = trunc i32 %i.cea to i16
  %i.cec = getelementptr inbounds nuw [2 x i8], ptr %.4580.i, i64 %indvars.iv652.i
  %i.ced = getelementptr inbounds nuw i8, ptr %i.cec, i64 2
  store i16 %i.ceb, ptr %i.ced, align 2, !tbaa !67
  %indvars.iv.next653.i.1 = add nuw nsw i64 %indvars.iv652.i, 2 ; 2 uses
  %niter3745.next.1 = add i64 %niter3745, 2       ; 2 uses
  %niter3745.ncmp.1 = icmp eq i64 %niter3745.next.1, %unroll_iter3744
  br i1 %niter3745.ncmp.1, label %horizontal_fill.exit363.i.loopexit3477.unr-lcssa, label %bb.pn, !llvm.loop !181

.thread473.i:                                     ; preds = %bb.pl, %bb.pk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.4580.i, ptr align 1 %.1294578.i, i64 %i.byq, i1 false)
  br label %horizontal_fill.exit363.i

.lr.ph555.i:                                      ; preds = %.lr.ph555.i.preheader, %.lr.ph555.i
  %indvars.iv647.i = phi i64 [ %indvars.iv.next648.i.3, %.lr.ph555.i ], [ 0, %.lr.ph555.i.preheader ] ; 6 uses
  %niter3738 = phi i64 [ %niter3738.next.3, %.lr.ph555.i ], [ 0, %.lr.ph555.i.preheader ]
  %i.cee = getelementptr inbounds nuw i8, ptr %.1294578.i, i64 %indvars.iv647.i
  %i.cef = load i8, ptr %i.cee, align 1, !tbaa !80
  %i.ceg = zext i8 %i.cef to i64
  %i.ceh = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.ceg
  %i.cei = load i8, ptr %i.ceh, align 1, !tbaa !80
  %i.cej = getelementptr inbounds nuw i8, ptr %.4580.i, i64 %indvars.iv647.i
  store i8 %i.cei, ptr %i.cej, align 1, !tbaa !80
  %indvars.iv.next648.i = or disjoint i64 %indvars.iv647.i, 1 ; 2 uses
  %i.cek = getelementptr inbounds nuw i8, ptr %.1294578.i, i64 %indvars.iv.next648.i
  %i.cel = load i8, ptr %i.cek, align 1, !tbaa !80
  %i.cem = zext i8 %i.cel to i64
  %i.cen = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cem
  %i.ceo = load i8, ptr %i.cen, align 1, !tbaa !80
  %i.cep = getelementptr inbounds nuw i8, ptr %.4580.i, i64 %indvars.iv.next648.i
  store i8 %i.ceo, ptr %i.cep, align 1, !tbaa !80
  %indvars.iv.next648.i.1 = or disjoint i64 %indvars.iv647.i, 2 ; 2 uses
  %i.ceq = getelementptr inbounds nuw i8, ptr %.1294578.i, i64 %indvars.iv.next648.i.1
  %i.cer = load i8, ptr %i.ceq, align 1, !tbaa !80
  %i.ces = zext i8 %i.cer to i64
  %i.cet = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.ces
  %i.ceu = load i8, ptr %i.cet, align 1, !tbaa !80
  %i.cev = getelementptr inbounds nuw i8, ptr %.4580.i, i64 %indvars.iv.next648.i.1
  store i8 %i.ceu, ptr %i.cev, align 1, !tbaa !80
  %indvars.iv.next648.i.2 = or disjoint i64 %indvars.iv647.i, 3 ; 2 uses
  %i.cew = getelementptr inbounds nuw i8, ptr %.1294578.i, i64 %indvars.iv.next648.i.2
  %i.cex = load i8, ptr %i.cew, align 1, !tbaa !80
  %i.cey = zext i8 %i.cex to i64
  %i.cez = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cey
  %i.cfa = load i8, ptr %i.cez, align 1, !tbaa !80
  %i.cfb = getelementptr inbounds nuw i8, ptr %.4580.i, i64 %indvars.iv.next648.i.2
  store i8 %i.cfa, ptr %i.cfb, align 1, !tbaa !80
  %indvars.iv.next648.i.3 = add nuw nsw i64 %indvars.iv647.i, 4 ; 2 uses
  %niter3738.next.3 = add i64 %niter3738, 4       ; 2 uses
  %niter3738.ncmp.3 = icmp eq i64 %niter3738.next.3, %unroll_iter3737
  br i1 %niter3738.ncmp.3, label %horizontal_fill.exit363.i.loopexit3478.unr-lcssa, label %.lr.ph555.i, !llvm.loop !191

horizontal_fill.exit363.i.loopexit3477.unr-lcssa: ; preds = %bb.pn
  %lcmp.mod3742.not = icmp eq i64 %xtraiter3740, 0
  br i1 %lcmp.mod3742.not, label %horizontal_fill.exit363.i, label %.epil.preheader3739

.epil.preheader3739:                              ; preds = %horizontal_fill.exit363.i.loopexit3477.unr-lcssa, %.lr.ph559.i
  %indvars.iv652.i.epil.init = phi i64 [ 0, %.lr.ph559.i ], [ %indvars.iv.next653.i.1, %horizontal_fill.exit363.i.loopexit3477.unr-lcssa ]
  %.sroa.4458.0556.i.epil.init = phi i32 [ 0, %.lr.ph559.i ], [ %i.cdz, %horizontal_fill.exit363.i.loopexit3477.unr-lcssa ] ; 2 uses
  %lcmp.mod3743 = trunc i32 %i.ccv to i1
  call void @llvm.assume(i1 %lcmp.mod3743)
  %i.cfc = lshr i32 %.sroa.4458.0556.i.epil.init, 3
  %i.cfd = zext nneg i32 %i.cfc to i64
  %i.cfe = getelementptr inbounds nuw i8, ptr %.1294578.i, i64 %i.cfd
  %i.cff = load i32, ptr %i.cfe, align 1, !tbaa !80
  %i.cfg = call i32 @llvm.bswap.i32(i32 %i.cff)
  %i.cfh = and i32 %.sroa.4458.0556.i.epil.init, 7
  %i.cfi = shl i32 %i.cfg, %i.cfh
  %i.cfj = lshr i32 %i.cfi, %i.cda
  %i.cfk = shl nuw nsw i32 %i.cfj, %i.cdb
  %i.cfl = trunc i32 %i.cfk to i16
  %i.cfm = getelementptr inbounds nuw [2 x i8], ptr %.4580.i, i64 %indvars.iv652.i.epil.init
  store i16 %i.cfl, ptr %i.cfm, align 2, !tbaa !67
  br label %horizontal_fill.exit363.i

horizontal_fill.exit363.i.loopexit3478.unr-lcssa: ; preds = %.lr.ph555.i
  br i1 %lcmp.mod3735.not, label %horizontal_fill.exit363.i, label %.lr.ph555.i.epil.preheader

.lr.ph555.i.epil.preheader:                       ; preds = %horizontal_fill.exit363.i.loopexit3478.unr-lcssa, %.lr.ph555.i.preheader
  %indvars.iv647.i.epil.init = phi i64 [ 0, %.lr.ph555.i.preheader ], [ %indvars.iv.next648.i.3, %horizontal_fill.exit363.i.loopexit3478.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3736)
  br label %.lr.ph555.i.epil

.lr.ph555.i.epil:                                 ; preds = %.lr.ph555.i.epil, %.lr.ph555.i.epil.preheader
  %indvars.iv647.i.epil = phi i64 [ %indvars.iv.next648.i.epil, %.lr.ph555.i.epil ], [ %indvars.iv647.i.epil.init, %.lr.ph555.i.epil.preheader ] ; 3 uses
  %epil.iter3734 = phi i64 [ %epil.iter3734.next, %.lr.ph555.i.epil ], [ 0, %.lr.ph555.i.epil.preheader ]
  %i.cfn = getelementptr inbounds nuw i8, ptr %.1294578.i, i64 %indvars.iv647.i.epil
  %i.cfo = load i8, ptr %i.cfn, align 1, !tbaa !80
  %i.cfp = zext i8 %i.cfo to i64
  %i.cfq = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cfp
  %i.cfr = load i8, ptr %i.cfq, align 1, !tbaa !80
  %i.cfs = getelementptr inbounds nuw i8, ptr %.4580.i, i64 %indvars.iv647.i.epil
  store i8 %i.cfr, ptr %i.cfs, align 1, !tbaa !80
  %indvars.iv.next648.i.epil = add nuw nsw i64 %indvars.iv647.i.epil, 1
  %epil.iter3734.next = add i64 %epil.iter3734, 1 ; 2 uses
  %epil.iter3734.cmp.not = icmp eq i64 %epil.iter3734.next, %xtraiter3733
  br i1 %epil.iter3734.cmp.not, label %horizontal_fill.exit363.i, label %.lr.ph555.i.epil, !llvm.loop !192

horizontal_fill.exit363.i:                        ; preds = %horizontal_fill.exit363.i.loopexit3478.unr-lcssa, %.lr.ph555.i.epil, %.epil.preheader3739, %horizontal_fill.exit363.i.loopexit3477.unr-lcssa, %.lr.ph561.i, %.lr.ph563.i, %.lr.ph565.i, %middle.block3337, %.thread473.i, %bb.pm, %.preheader496.i, %.preheader497.i, %.preheader499.i, %.preheader502.i
  br i1 %spec.select.i, label %bb.po, label %bb.pr

bb.po:                                            ; preds = %horizontal_fill.exit363.i
  %i.cft = load i32, ptr %i.as, align 8, !tbaa !56 ; 2 uses
  %i.cfu = load i32, ptr %i.at, align 4, !tbaa !57 ; 2 uses
  %i.cfv = udiv i32 %i.cft, %i.cfu
  %i.cfw = icmp ugt i32 %i.cfv, 8                 ; 4 uses
  %9 = select i1 %i.cfw, i32 %i.byu, i32 %.2308.i
  %i.cfx = select i1 %i.cfw, i32 4, i32 3
  %10 = shl i32 %9, %i.cfx
  %i.cfy = udiv i32 %10, %i.cft
  %i.cfz = mul i32 %i.cfy, %i.cfu                 ; 4 uses
  %i.cga = zext i1 %i.cfw to i32
  %i.cgb = shl i32 %i.cfz, %i.cga
  %.not338.i = icmp sgt i32 %i.cgb, %i.byv
  br i1 %.not338.i, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.po
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1840, ptr noundef nonnull @.str.1831, i32 noundef 921) #16
  call void @abort() #17
  unreachable

bb.pq:                                            ; preds = %bb.po
  %i.cgc = add nsw i32 %.2301577.i, %.121602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cgd = load i32, ptr %i.ay, align 8, !tbaa !62
  %.not.i.i = icmp eq i32 %i.cgd, 0
  %i.cge = load i32, ptr %i.ax, align 4, !tbaa !61
  %i.cgf = uitofp nsz i32 %i.cge to float         ; 5 uses
  br i1 %.not.i.i, label %.preheader492.i, label %.preheader494.i

.preheader494.i:                                  ; preds = %bb.pq
  %i.cgg = load i8, ptr %i.cu, align 8, !tbaa !80
  %i.cgh = zext i8 %i.cgg to i64
  %i.cgi = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cgh
  %i.cgj = load float, ptr %i.cgi, align 4, !tbaa !72
  %i.cgk = load i8, ptr %i.cv, align 1, !tbaa !80
  %i.cgl = zext i8 %i.cgk to i64
  %i.cgm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cgl
  %i.cgn = load float, ptr %i.cgm, align 4, !tbaa !72
  %i.cgo = insertelement <2 x float> poison, float %i.cgj, i64 0
  %i.cgp = insertelement <2 x float> %i.cgo, float %i.cgn, i64 1
  %i.cgq = fmul nsz <2 x float> %i.cgp, splat (float 6.553500e+04)
  %i.cgr = load <2 x float>, ptr %i.be, align 4, !tbaa !72
  %i.cgs = insertelement <2 x float> poison, float %i.cgf, i64 0
  %i.cgt = shufflevector <2 x float> %i.cgs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cgu = fsub nsz <2 x float> %i.cgt, %i.cgr
  %i.cgv = fdiv nsz <2 x float> %i.cgq, %i.cgu
  %i.cgw = load i8, ptr %i.cw, align 2, !tbaa !80
  %i.cgx = zext i8 %i.cgw to i64
  %i.cgy = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cgx
  %i.cgz = load float, ptr %i.cgy, align 4, !tbaa !72
  %i.cha = fmul nsz float %i.cgz, 6.553500e+04
  %i.chb = load float, ptr %i.axp, align 4, !tbaa !72
  %i.chc = fsub nsz float %i.cgf, %i.chb
  %i.chd = fdiv nsz float %i.cha, %i.chc
  %i.che = load i8, ptr %i.cx, align 1, !tbaa !80
  %i.chf = zext i8 %i.che to i64
  %i.chg = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.chf
  br label %.loopexit493.i

.preheader492.i:                                  ; preds = %bb.pq
  %i.chh = load <2 x float>, ptr %i.bi, align 4, !tbaa !72
  %i.chi = fmul nsz <2 x float> %i.chh, splat (float 6.553500e+04)
  %i.chj = load <2 x float>, ptr %i.be, align 4, !tbaa !72
  %i.chk = insertelement <2 x float> poison, float %i.cgf, i64 0
  %i.chl = shufflevector <2 x float> %i.chk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.chm = fsub nsz <2 x float> %i.chl, %i.chj
  %i.chn = fdiv nsz <2 x float> %i.chi, %i.chm
  %i.cho = load float, ptr %i.axt, align 4, !tbaa !72
  %i.chp = fmul nsz float %i.cho, 6.553500e+04
  %i.chq = load float, ptr %i.axp, align 4, !tbaa !72
  %i.chr = fsub nsz float %i.cgf, %i.chq
  %i.chs = fdiv nsz float %i.chp, %i.chr
  br label %.loopexit493.i

.loopexit493.i:                                   ; preds = %.preheader492.i, %.preheader494.i
  %.sink2841.in = phi ptr [ %i.axu, %.preheader492.i ], [ %i.chg, %.preheader494.i ]
  %.sink = phi float [ %i.chs, %.preheader492.i ], [ %i.chd, %.preheader494.i ]
  %i.cht = phi <2 x float> [ %i.chn, %.preheader492.i ], [ %i.cgv, %.preheader494.i ]
  %.sink2841 = load float, ptr %.sink2841.in, align 4, !tbaa !72
  %i.chu = fmul nsz float %.sink2841, 6.553500e+04
  %i.chv = load float, ptr %i.axr, align 8, !tbaa !72
  %i.chw = fsub nsz float %i.cgf, %i.chv
  %i.chx = fdiv nsz float %i.chu, %i.chw
  store <2 x float> %i.cht, ptr %i.a, align 16, !tbaa !72
  store float %.sink, ptr %i.axq, align 8, !tbaa !72
  store float %i.chx, ptr %i.axs, align 4, !tbaa !72
  %i.chy = icmp sgt i32 %i.cfz, 0                 ; 2 uses
  %i.chz = shl i32 %i.cgc, 1
  %i.cia = and i32 %i.chz, 2                      ; 2 uses
  br i1 %i.cfw, label %.preheader489.i, label %.preheader490.i

.preheader490.i:                                  ; preds = %.loopexit493.i
  br i1 %i.chy, label %.preheader476.i, label %dng_blit.exit.i

.preheader489.i:                                  ; preds = %.loopexit493.i
  br i1 %i.chy, label %.preheader.i, label %dng_blit.exit.i

.preheader.i:                                     ; preds = %.preheader489.i, %.preheader.i
  %.095.i574.i = phi ptr [ %i.cib, %.preheader.i ], [ %.4580.i, %.preheader489.i ] ; 3 uses
  %.2.i572.i = phi i32 [ %i.ciu, %.preheader.i ], [ 0, %.preheader489.i ] ; 2 uses
  %i.cib = getelementptr i8, ptr %.095.i574.i, i64 2
  %i.cic = load i16, ptr %.095.i574.i, align 2, !tbaa !67
  %i.cid = and i32 %.2.i572.i, 1
  %i.cie = or disjoint i32 %i.cid, %i.cia
  %i.cif = zext nneg i32 %i.cie to i64            ; 2 uses
  %i.cig = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cif
  %i.cih = load float, ptr %i.cig, align 4, !tbaa !72
  %i.cii = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cif
  %i.cij = load float, ptr %i.cii, align 4, !tbaa !72
  %i.cik = zext i16 %i.cic to i64
  %i.cil = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cik
  %i.cim = load i16, ptr %i.cil, align 2, !tbaa !67
  %i.cin = uitofp nsz i16 %i.cim to float
  %i.cio = fsub nsz float %i.cin, %i.cih
  %i.cip = fmul nsz float %i.cij, %i.cio
  %i.ciq = call i64 @llvm.lrint.i64.f32(float %i.cip) ; 2 uses
  %i.cir = trunc i64 %i.ciq to i32                ; 2 uses
  %.not.i347.i = icmp ult i32 %i.cir, 65536
  %isnotneg.i348.i = icmp sgt i32 %i.cir, -1
  %i.cis = sext i1 %isnotneg.i348.i to i16
  %i.cit = trunc i64 %i.ciq to i16
  %.0.i349.i = select i1 %.not.i347.i, i16 %i.cit, i16 %i.cis
  store i16 %.0.i349.i, ptr %.095.i574.i, align 2, !tbaa !67
  %i.ciu = add nuw nsw i32 %.2.i572.i, 1          ; 2 uses
  %i.civ = icmp slt i32 %i.ciu, %i.cfz
  br i1 %i.civ, label %.preheader.i, label %dng_blit.exit.i, !llvm.loop !194

.preheader476.i:                                  ; preds = %.preheader490.i, %.preheader476.i
  %.0.i570.i = phi ptr [ %i.ciw, %.preheader476.i ], [ %.4580.i, %.preheader490.i ] ; 3 uses
  %.3.i568.i = phi i32 [ %i.cjr, %.preheader476.i ], [ 0, %.preheader490.i ] ; 2 uses
  %i.ciw = getelementptr i8, ptr %.0.i570.i, i64 1
  %i.cix = load i8, ptr %.0.i570.i, align 1, !tbaa !80
  %i.ciy = and i32 %.3.i568.i, 1
  %i.ciz = or disjoint i32 %i.ciy, %i.cia
  %i.cja = zext nneg i32 %i.ciz to i64            ; 2 uses
  %i.cjb = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cja
  %i.cjc = load float, ptr %i.cjb, align 4, !tbaa !72
  %i.cjd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cja
  %i.cje = load float, ptr %i.cjd, align 4, !tbaa !72
  %i.cjf = zext i8 %i.cix to i64
  %i.cjg = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cjf
  %i.cjh = load i16, ptr %i.cjg, align 2, !tbaa !67
  %i.cji = uitofp nsz i16 %i.cjh to float
  %i.cjj = fsub nsz float %i.cji, %i.cjc
  %i.cjk = fmul nsz float %i.cje, %i.cjj
  %i.cjl = call i64 @llvm.lrint.i64.f32(float %i.cjk) ; 2 uses
  %i.cjm = trunc i64 %i.cjl to i32                ; 2 uses
  %.not.i345.i = icmp ult i32 %i.cjm, 65536
  %isnotneg.i.i = icmp sgt i32 %i.cjm, -1
  %i.cjn = sext i1 %isnotneg.i.i to i16
  %i.cjo = trunc i64 %i.cjl to i16
  %.0.i346.i = select i1 %.not.i345.i, i16 %i.cjo, i16 %i.cjn
  %i.cjp = lshr i16 %.0.i346.i, 8
  %i.cjq = trunc nuw i16 %i.cjp to i8
  store i8 %i.cjq, ptr %.0.i570.i, align 1, !tbaa !80
  %i.cjr = add nuw nsw i32 %.3.i568.i, 1          ; 2 uses
  %i.cjs = icmp slt i32 %i.cjr, %i.cfz
  br i1 %i.cjs, label %.preheader476.i, label %dng_blit.exit.i, !llvm.loop !195

dng_blit.exit.i:                                  ; preds = %.preheader476.i, %.preheader.i, %.preheader489.i, %.preheader490.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.pr

bb.pr:                                            ; preds = %dng_blit.exit.i, %horizontal_fill.exit363.i
  %i.cjt = getelementptr inbounds i8, ptr %.1294578.i, i64 %i.byq
  br label %.loopexit505.i

.lr.ph551.i:                                      ; preds = %.preheader506.i, %horizontal_fill.exit.i
  %.2295550.i = phi ptr [ %.4297.i, %horizontal_fill.exit.i ], [ %.1294578.i, %.preheader506.i ] ; 10 uses
  %.0304549.i = phi i32 [ %.1305.i, %horizontal_fill.exit.i ], [ 0, %.preheader506.i ] ; 11 uses
  %i.cju = ptrtoint ptr %.2295550.i to i64
  %i.cjv = sub i64 %i.byp, %i.cju
  %i.cjw = icmp slt i64 %i.cjv, 2
  br i1 %i.cjw, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %.lr.ph551.i
  %i.cjx = load ptr, ptr %i.bo, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cjx, i32 noundef 16, ptr noundef nonnull @.str.1841) #16
  br label %tiff_unpack_strip.exit.thread

bb.pt:                                            ; preds = %.lr.ph551.i
  %i.cjy = load i32, ptr %i.aw, align 4, !tbaa !60
  %.not334.i = icmp eq i32 %i.cjy, 0
  br i1 %.not334.i, label %bb.pv, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.cjz = load i8, ptr %.2295550.i, align 1, !tbaa !80
  %i.cka = zext i8 %i.cjz to i64
  %i.ckb = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cka
  br label %bb.pv

bb.pv:                                            ; preds = %bb.pu, %bb.pt
  %.in.in.i = phi ptr [ %i.ckb, %bb.pu ], [ %.2295550.i, %bb.pt ]
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !80 ; 7 uses
  %i.ckc = sext i8 %.in.i to i32                  ; 2 uses
  %.3296.i = getelementptr inbounds nuw i8, ptr %.2295550.i, i64 1 ; 8 uses
  %i.ckd = icmp sgt i8 %.in.i, -1
  br i1 %i.ckd, label %bb.pw, label %bb.qc

bb.pw:                                            ; preds = %bb.pv
  %i.cke = add nuw nsw i32 %i.ckc, 1              ; 3 uses
  %i.ckf = add nsw i32 %i.cke, %.0304549.i        ; 2 uses
  %i.ckg = icmp sgt i32 %i.ckf, %.2308.i
  br i1 %i.ckg, label %._crit_edge674.i, label %bb.px

._crit_edge674.i:                                 ; preds = %bb.pw
  %.pre675.i = load ptr, ptr %i.bo, align 8, !tbaa !30
  br label %split.i

end_hunk_1
begin_hunk_2_@doubles2str:bb.a
  br i1 %.not, label %bb.e, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  store i8 0, ptr %i.d, align 1, !tbaa !80
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.0293 = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.j, %bb.d ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.f = load double, ptr %i.e, align 8, !tbaa !115
  %i.g = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.0293, i64 noundef 26, ptr noundef nonnull @.str.1815, double noundef %i.f, ptr noundef nonnull @.str.62) #16 ; 2 uses
  %i.h = icmp ult i32 %i.g, 26
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @av_free(ptr noundef nonnull %i.d) #16
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.0293, i64 %i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !284

._crit_edge:                                      ; preds = %bb.d
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #18
  %i.l = getelementptr i8, ptr %i.d, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -2
  store i8 0, ptr %i.m, align 1, !tbaa !80
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %._crit_edge
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.d, %._crit_edge ], [ null, %bb.b ]
  ret ptr %.2
}

declare i32 @ff_frame_new_side_data(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_reduce(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_tadd_doubles_metadata(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_tadd_shorts_metadata(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_tadd_string_metadata(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @dng_decode_jpeg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 11 uses
  %i.b = alloca [64 x i8], align 1                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 29 uses
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp sgt i32 %2, %i.m
  br i1 %i.n, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42
  tail call void @av_packet_unref(ptr noundef %i.p) #16
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !285
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !42   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.q, ptr %i.s, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i32 %2, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 1184 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !62
  %.not = icmp eq i32 %i.v, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43 ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 924
  store i32 1, ptr %i.y, align 4, !tbaa !286
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.aa = tail call i32 @avcodec_send_packet(ptr noundef %.pre, ptr noundef nonnull %i.r) #16 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.1826) #16
  br label %bb.t

bb.f:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.af = tail call i32 @avcodec_receive_frame(ptr noundef %i.ac, ptr noundef %i.ae) #16 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.ah = call i32 @av_strerror(i32 noundef range(i32 -2147483648, 0) %i.af, ptr noundef nonnull %i.b, i64 noundef 64) #16 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.1827, ptr noundef nonnull %i.b) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !125
  %i.ak = and i32 %i.aj, 8
  %.not79 = icmp eq i32 %i.ak, 0
  %. = select i1 %.not79, i32 0, i32 -1094995529
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.am = load i32, ptr %i.al, align 8, !tbaa !56
  %i.an = icmp ugt i32 %i.am, 8                   ; 6 uses
  %i.ao = zext i1 %i.an to i32
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !41 ; 13 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !295 ; 3 uses
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !43  ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %i.au = load i32, ptr %i.at, align 8, !tbaa !273
  %.not74 = icmp eq i32 %i.ar, %i.au
  br i1 %.not74, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 108
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !296 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 116
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !274
  %.not75 = icmp eq i32 %i.aw, %i.ay
  br i1 %.not75, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 116
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !139 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !138
  %.not76 = icmp eq i32 %i.ba, %i.bc
  br i1 %.not76, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.bd = shl nsw i32 %5, 1
  %i.be = icmp ne i32 %i.ar, %i.bd
  %i.bf = sdiv i32 %6, 2
  %i.bg = icmp ne i32 %i.aw, %i.bf
  %or.cond81.not103 = or i1 %i.be, %i.bg
  %i.bh = icmp ne i32 %i.ba, 30
  %or.cond82.not = or i1 %or.cond81.not103, %i.bh ; 2 uses
  br i1 %or.cond82.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not77 = icmp sge i32 %i.ar, %5
  %.not78 = icmp sge i32 %i.aw, %6
  %or.cond.not99 = and i1 %.not77, %.not78
  %i.bi = select i1 %i.an, i32 30, i32 8
  %i.bj = icmp eq i32 %i.ba, %i.bi
  %or.cond98 = select i1 %or.cond.not99, i1 %i.bj, i1 false
  br i1 %or.cond98, label %.thread, label %bb.t

bb.m:                                             ; preds = %bb.k
  br i1 %i.an, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bl, i32 noundef 16, ptr noundef nonnull @.str.1828) #16
  %i.bm = load ptr, ptr %i.ad, align 8, !tbaa !41
  tail call void @av_frame_unref(ptr noundef %i.bm) #16
  br label %bb.t

.thread:                                          ; preds = %bb.l, %bb.m
  %7 = select i1 %i.an, i32 2, i32 1              ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !29 ; 2 uses
  %i.bp = mul nsw i32 %i.bo, %4
  %i.bq = sdiv i32 %i.bp, %7
  %i.br = add nsw i32 %i.bq, %3
  %i.bs = load ptr, ptr %1, align 8, !tbaa !101
  %i.bt = shl i32 %i.br, %i.ao
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bu ; 3 uses
  %i.bw = load ptr, ptr %i.ap, align 8, !tbaa !101 ; 3 uses
  %i.bx = sdiv i32 %i.bo, %7                      ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !29
  %i.ca = sdiv i32 %i.bz, %7                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cb = load i32, ptr %i.u, align 8, !tbaa !62
  %.not.i = icmp eq i32 %i.cb, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 1356 ; 5 uses
  br i1 %.not.i, label %.preheader111, label %.preheader112

.preheader112:                                    ; preds = %.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 1192
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 1388
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !61
  %i.cg = uitofp nsz i32 %i.cf to float           ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 1372
  %i.ci = load i8, ptr %i.cd, align 8, !tbaa !80
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !72
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 1193
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !80
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !72
  %i.cr = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.cq, i64 1
  %i.ct = fmul nsz <2 x float> %i.cs, splat (float 6.553500e+04)
  %i.cu = load <2 x float>, ptr %i.ch, align 4, !tbaa !72
  %i.cv = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fsub nsz <2 x float> %i.cw, %i.cu
  %i.cy = fdiv nsz <2 x float> %i.ct, %i.cx
  store <2 x float> %i.cy, ptr %i.a, align 16, !tbaa !72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 1194
  %i.da = load i8, ptr %i.cz, align 2, !tbaa !80
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !72
  %i.de = fmul nsz float %i.dd, 6.553500e+04
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 1380
  %i.dg = load float, ptr %i.df, align 4, !tbaa !72
  %i.dh = fsub nsz float %i.cg, %i.dg
  %i.di = fdiv nsz float %i.de, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.di, ptr %i.dj, align 8, !tbaa !72
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 1195
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !80
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.dm
  br label %.loopexit

.preheader111:                                    ; preds = %.thread
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 1388
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !61
  %i.dq = uitofp nsz i32 %i.dp to float           ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 1372
  %i.ds = load <2 x float>, ptr %i.cc, align 4, !tbaa !72
  %i.dt = fmul nsz <2 x float> %i.ds, splat (float 6.553500e+04)
  %i.du = load <2 x float>, ptr %i.dr, align 4, !tbaa !72
  %i.dv = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fsub nsz <2 x float> %i.dw, %i.du
  %i.dy = fdiv nsz <2 x float> %i.dt, %i.dx
  store <2 x float> %i.dy, ptr %i.a, align 16, !tbaa !72
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 1364
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !72
  %i.eb = fmul nsz float %i.ea, 6.553500e+04
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 1380
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !72
  %i.ee = fsub nsz float %i.dq, %i.ed
  %i.ef = fdiv nsz float %i.eb, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.ef, ptr %i.eg, align 8, !tbaa !72
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 1368
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader112, %.preheader111
  %.sink172.in = phi ptr [ %i.dn, %.preheader112 ], [ %i.eh, %.preheader111 ]
  %.sink = phi float [ %i.cg, %.preheader112 ], [ %i.dq, %.preheader111 ]
  %.sink172 = load float, ptr %.sink172.in, align 4, !tbaa !72
  %i.ei = fmul nsz float %.sink172, 6.553500e+04
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 1384
  %i.ek = load float, ptr %i.ej, align 8, !tbaa !72
  %i.el = fsub nsz float %.sink, %i.ek
  %i.em = fdiv nsz float %i.ei, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.em, ptr %i.en, align 4, !tbaa !72
  br i1 %or.cond82.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.eo = icmp sgt i32 %6, 1
  %or.cond = and i1 %i.an, %i.eo
  br i1 %or.cond, label %.preheader108.lr.ph, label %dng_blit.exit

.preheader108.lr.ph:                              ; preds = %bb.o
  %i.ep = icmp sgt i32 %5, 0
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 1392 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 1372 ; 2 uses
  %i.es = sext i32 %i.bx to i64
  %i.et = shl nsw i64 %i.es, 1                    ; 2 uses
  %i.eu = sext i32 %i.ca to i64
  %i.ev = shl nsw i64 %i.eu, 1
  br i1 %i.ep, label %.lr.ph.us.preheader, label %dng_blit.exit

.lr.ph.us.preheader:                              ; preds = %.preheader108.lr.ph, %._crit_edge124.us
  %.0104.i127.us = phi i32 [ %i.go, %._crit_edge124.us ], [ 0, %.preheader108.lr.ph ]
  %.0107.i126.us = phi ptr [ %i.gm, %._crit_edge124.us ], [ %i.bv, %.preheader108.lr.ph ] ; 2 uses
  %.0110.i125.us = phi ptr [ %i.gn, %._crit_edge124.us ], [ %i.bw, %.preheader108.lr.ph ] ; 2 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.097.i118.us = phi ptr [ %i.ew, %.lr.ph.us ], [ %.0110.i125.us, %.lr.ph.us.preheader ] ; 2 uses
  %.098.i117.us = phi ptr [ %i.fo, %.lr.ph.us ], [ %.0107.i126.us, %.lr.ph.us.preheader ] ; 2 uses
  %.0102.i116.us = phi i32 [ %i.fp, %.lr.ph.us ], [ 0, %.lr.ph.us.preheader ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.097.i118.us, i64 2 ; 2 uses
  %i.ex = load i16, ptr %.097.i118.us, align 2, !tbaa !67
  %i.ey = and i32 %.0102.i116.us, 1
  %i.ez = zext nneg i32 %i.ey to i64              ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !72
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ez
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !72
  %i.fe = zext i16 %i.ex to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !67
  %i.fh = uitofp nsz i16 %i.fg to float
  %i.fi = fsub nsz float %i.fh, %i.fb
  %i.fj = fmul nsz float %i.fd, %i.fi
  %i.fk = tail call i64 @llvm.lrint.i64.f32(float %i.fj) ; 2 uses
  %i.fl = trunc i64 %i.fk to i32                  ; 2 uses
  %.not.i88.us = icmp ult i32 %i.fl, 65536
  %isnotneg.i89.us = icmp sgt i32 %i.fl, -1
  %i.fm = sext i1 %isnotneg.i89.us to i16
  %i.fn = trunc i64 %i.fk to i16
  %.0.i90.us = select i1 %.not.i88.us, i16 %i.fn, i16 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %.098.i117.us, i64 2
  store i16 %.0.i90.us, ptr %.098.i117.us, align 2, !tbaa !67
  %i.fp = add nuw nsw i32 %.0102.i116.us, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.fp, %5
  br i1 %exitcond.not, label %.lr.ph123.us, label %.lr.ph.us, !llvm.loop !297

.lr.ph123.us:                                     ; preds = %.lr.ph.us
  %i.fq = getelementptr inbounds nuw i8, ptr %.0107.i126.us, i64 %i.et ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph123.us, %bb.p
  %.1.i121.us = phi ptr [ %i.ew, %.lr.ph123.us ], [ %i.fr, %bb.p ] ; 2 uses
  %.199.i120.us = phi ptr [ %i.fq, %.lr.ph123.us ], [ %i.gk, %bb.p ] ; 2 uses
  %.1103.i119.us = phi i32 [ 0, %.lr.ph123.us ], [ %i.gl, %bb.p ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.1.i121.us, i64 2
  %i.fs = load i16, ptr %.1.i121.us, align 2, !tbaa !67
  %i.ft = and i32 %.1103.i119.us, 1
  %i.fu = or disjoint i32 %i.ft, 2
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !72
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fv
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !72
  %i.ga = zext i16 %i.fs to i64
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.ga
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !67
  %i.gd = uitofp nsz i16 %i.gc to float
  %i.ge = fsub nsz float %i.gd, %i.fx
  %i.gf = fmul nsz float %i.fz, %i.ge
  %i.gg = tail call i64 @llvm.lrint.i64.f32(float %i.gf) ; 2 uses
  %i.gh = trunc i64 %i.gg to i32                  ; 2 uses
  %.not.i85.us = icmp ult i32 %i.gh, 65536
  %isnotneg.i86.us = icmp sgt i32 %i.gh, -1
  %i.gi = sext i1 %isnotneg.i86.us to i16
  %i.gj = trunc i64 %i.gg to i16
  %.0.i87.us = select i1 %.not.i85.us, i16 %i.gj, i16 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %.199.i120.us, i64 2
  store i16 %.0.i87.us, ptr %.199.i120.us, align 2, !tbaa !67
  %i.gl = add nuw nsw i32 %.1103.i119.us, 1       ; 2 uses
  %exitcond147.not = icmp eq i32 %i.gl, %5
  br i1 %exitcond147.not, label %._crit_edge124.us, label %bb.p, !llvm.loop !298

._crit_edge124.us:                                ; preds = %bb.p
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.et
  %i.gn = getelementptr inbounds nuw i8, ptr %.0110.i125.us, i64 %i.ev
  %i.go = add nuw nsw i32 %.0104.i127.us, 1       ; 2 uses
  %exitcond148.not = icmp eq i32 %i.go, %i.aw
  br i1 %exitcond148.not, label %dng_blit.exit, label %.lr.ph.us.preheader, !llvm.loop !299

bb.q:                                             ; preds = %.loopexit
  %i.gp = icmp sgt i32 %6, 0                      ; 2 uses
  br i1 %i.an, label %.preheader104, label %.preheader106

.preheader106:                                    ; preds = %bb.q
  br i1 %i.gp, label %.preheader105.lr.ph, label %dng_blit.exit

.preheader105.lr.ph:                              ; preds = %.preheader106
  %i.gq = icmp sgt i32 %5, 0
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 1392
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 1372
  %i.gt = sext i32 %i.bx to i64
  %i.gu = sext i32 %i.ca to i64
  br i1 %i.gq, label %.preheader105, label %dng_blit.exit

.preheader104:                                    ; preds = %bb.q
  br i1 %i.gp, label %.preheader.lr.ph, label %dng_blit.exit

.preheader.lr.ph:                                 ; preds = %.preheader104
  %i.gv = icmp sgt i32 %5, 0
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 1392
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 1372
  %i.gy = sext i32 %i.bx to i64
  %i.gz = shl nsw i64 %i.gy, 1
  %i.ha = sext i32 %i.ca to i64
  %i.hb = shl nsw i64 %i.ha, 1
  br i1 %i.gv, label %.preheader, label %dng_blit.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge138
  %.1105.i141 = phi i32 [ %i.ib, %._crit_edge138 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.1108.i140 = phi ptr [ %i.hz, %._crit_edge138 ], [ %i.bv, %.preheader.lr.ph ] ; 2 uses
  %.1111.i139 = phi ptr [ %i.ia, %._crit_edge138 ], [ %i.bw, %.preheader.lr.ph ] ; 2 uses
  %i.hc = shl nuw i32 %.1105.i141, 1
  %i.hd = and i32 %i.hc, 2
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.r
  %.095.i137 = phi ptr [ %.1111.i139, %.preheader ], [ %i.he, %bb.r ] ; 2 uses
  %.096.i136 = phi ptr [ %.1108.i140, %.preheader ], [ %i.hx, %bb.r ] ; 2 uses
  %.2.i135 = phi i32 [ 0, %.preheader ], [ %i.hy, %bb.r ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.095.i137, i64 2
  %i.hf = load i16, ptr %.095.i137, align 2, !tbaa !67
  %i.hg = and i32 %.2.i135, 1
  %i.hh = or disjoint i32 %i.hg, %i.hd
  %i.hi = zext nneg i32 %i.hh to i64              ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.hi
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !72
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hi
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !72
  %i.hn = zext i16 %i.hf to i64
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %i.hn
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !67
  %i.hq = uitofp nsz i16 %i.hp to float
  %i.hr = fsub nsz float %i.hq, %i.hk
  %i.hs = fmul nsz float %i.hm, %i.hr
  %i.ht = tail call i64 @llvm.lrint.i64.f32(float %i.hs) ; 2 uses
  %i.hu = trunc i64 %i.ht to i32                  ; 2 uses
  %.not.i91 = icmp ult i32 %i.hu, 65536
  %isnotneg.i92 = icmp sgt i32 %i.hu, -1
  %i.hv = sext i1 %isnotneg.i92 to i16
  %i.hw = trunc i64 %i.ht to i16
  %.0.i93 = select i1 %.not.i91, i16 %i.hw, i16 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %.096.i136, i64 2
  store i16 %.0.i93, ptr %.096.i136, align 2, !tbaa !67
  %i.hy = add nuw nsw i32 %.2.i135, 1             ; 2 uses
  %exitcond151.not = icmp eq i32 %i.hy, %5
  br i1 %exitcond151.not, label %._crit_edge138, label %bb.r, !llvm.loop !194

._crit_edge138:                                   ; preds = %bb.r
  %i.hz = getelementptr inbounds nuw i8, ptr %.1108.i140, i64 %i.gz
  %i.ia = getelementptr inbounds nuw i8, ptr %.1111.i139, i64 %i.hb
  %i.ib = add nuw nsw i32 %.1105.i141, 1          ; 2 uses
  %exitcond152.not = icmp eq i32 %i.ib, %6
  br i1 %exitcond152.not, label %dng_blit.exit, label %.preheader, !llvm.loop !300

.preheader105:                                    ; preds = %.preheader105.lr.ph, %._crit_edge131
  %.2106.i134 = phi i32 [ %i.jd, %._crit_edge131 ], [ 0, %.preheader105.lr.ph ] ; 2 uses
  %.2109.i133 = phi ptr [ %i.jb, %._crit_edge131 ], [ %i.bv, %.preheader105.lr.ph ] ; 2 uses
  %.2112.i132 = phi ptr [ %i.jc, %._crit_edge131 ], [ %i.bw, %.preheader105.lr.ph ] ; 2 uses
  %i.ic = shl nuw i32 %.2106.i134, 1
  %i.id = and i32 %i.ic, 2
  br label %bb.s

bb.s:                                             ; preds = %.preheader105, %bb.s
  %.0.i130 = phi ptr [ %.2112.i132, %.preheader105 ], [ %i.ie, %bb.s ] ; 2 uses
  %.094.i129 = phi ptr [ %.2109.i133, %.preheader105 ], [ %i.iz, %bb.s ] ; 2 uses
  %.3.i128 = phi i32 [ 0, %.preheader105 ], [ %i.ja, %bb.s ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.i130, i64 1
  %i.if = load i8, ptr %.0.i130, align 1, !tbaa !80
  %i.ig = and i32 %.3.i128, 1
  %i.ih = or disjoint i32 %i.ig, %i.id
  %i.ii = zext nneg i32 %i.ih to i64              ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.ii
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !72
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ii
  %i.im = load float, ptr %i.il, align 4, !tbaa !72
  %i.in = zext i8 %i.if to i64
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.gr, i64 %i.in
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !67
  %i.iq = uitofp nsz i16 %i.ip to float
  %i.ir = fsub nsz float %i.iq, %i.ik
  %i.is = fmul nsz float %i.im, %i.ir
  %i.it = tail call i64 @llvm.lrint.i64.f32(float %i.is) ; 2 uses
  %i.iu = trunc i64 %i.it to i32                  ; 2 uses
  %.not.i83 = icmp ult i32 %i.iu, 65536
  %isnotneg.i = icmp sgt i32 %i.iu, -1
  %i.iv = sext i1 %isnotneg.i to i16
  %i.iw = trunc i64 %i.it to i16
  %.0.i84 = select i1 %.not.i83, i16 %i.iw, i16 %i.iv
  %i.ix = lshr i16 %.0.i84, 8
  %i.iy = trunc nuw i16 %i.ix to i8
  %i.iz = getelementptr inbounds nuw i8, ptr %.094.i129, i64 1
  store i8 %i.iy, ptr %.094.i129, align 1, !tbaa !80
  %i.ja = add nuw nsw i32 %.3.i128, 1             ; 2 uses
  %exitcond149.not = icmp eq i32 %i.ja, %5
  br i1 %exitcond149.not, label %._crit_edge131, label %bb.s, !llvm.loop !195

._crit_edge131:                                   ; preds = %bb.s
  %i.jb = getelementptr inbounds i8, ptr %.2109.i133, i64 %i.gt
  %i.jc = getelementptr inbounds i8, ptr %.2112.i132, i64 %i.gu
  %i.jd = add nuw nsw i32 %.2106.i134, 1          ; 2 uses
  %exitcond150.not = icmp eq i32 %i.jd, %6
  br i1 %exitcond150.not, label %dng_blit.exit.loopexit142, label %.preheader105, !llvm.loop !301

dng_blit.exit.loopexit142:                        ; preds = %._crit_edge131
  %.pre153 = load ptr, ptr %i.ad, align 8, !tbaa !41
  br label %dng_blit.exit

dng_blit.exit:                                    ; preds = %._crit_edge124.us, %._crit_edge138, %dng_blit.exit.loopexit142, %.preheader108.lr.ph, %.preheader106, %.preheader105.lr.ph, %.preheader104, %.preheader.lr.ph, %bb.o
  %i.je = phi ptr [ %i.ap, %._crit_edge138 ], [ %.pre153, %dng_blit.exit.loopexit142 ], [ %i.ap, %bb.o ], [ %i.ap, %.preheader108.lr.ph ], [ %i.ap, %.preheader106 ], [ %i.ap, %.preheader105.lr.ph ], [ %i.ap, %.preheader104 ], [ %i.ap, %.preheader.lr.ph ], [ %i.ap, %._crit_edge124.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  tail call void @av_frame_unref(ptr noundef %i.je) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.l, %bb.h, %bb.i, %bb.j, %bb.g, %bb.a, %bb.b, %dng_blit.exit, %bb.n, %bb.e
  %.0 = phi i32 [ -1094995529, %bb.h ], [ %i.aa, %bb.e ], [ %., %bb.g ], [ -1094995529, %bb.a ], [ -1094995529, %bb.b ], [ 0, %dng_blit.exit ], [ -1163346256, %bb.n ], [ -1094995529, %bb.j ], [ -1094995529, %bb.i ], [ -1094995529, %bb.l ]
  ret i32 %.0
}

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #2

declare i32 @avcodec_send_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @avcodec_receive_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #6

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_lzw_decode_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_lzw_decode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @unpack_yuv(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 5 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29   ; 2 uses
  %i.f = sdiv i32 %i.c, %i.e                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %i.k = sdiv i32 %3, %i.j                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.n = load i32, ptr %i.m, align 4, !tbaa !29
  %i.o = mul nsw i32 %i.n, %i.k
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !101
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !29
  %i.v = mul nsw i32 %i.u, %i.k
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w ; 2 uses
  %i.y = srem i32 %i.b, %i.e
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !79
  %i.ab = srem i32 %i.aa, %i.j
  %.not79 = icmp eq i32 %i.ab, 0
  br i1 %.not79, label %.preheader85, label %bb.c

.preheader85:                                     ; preds = %bb.b
  %.not80111 = icmp slt i32 %i.f, 0
  br i1 %.not80111, label %.loopexit, label %.preheader84

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8195 = icmp slt i32 %i.f, 0
  br i1 %.not8195, label %.loopexit, label %.preheader87.lr.ph

.preheader87.lr.ph:                               ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.lr.ph, %._crit_edge93
  %.0100 = phi ptr [ %i.x, %.preheader87.lr.ph ], [ %i.bo, %._crit_edge93 ] ; 2 uses
  %.06499 = phi ptr [ %i.q, %.preheader87.lr.ph ], [ %i.bl, %._crit_edge93 ] ; 2 uses
  %.06698 = phi ptr [ %2, %.preheader87.lr.ph ], [ %i.bm, %._crit_edge93 ] ; 3 uses
  %.07296 = phi i32 [ 0, %.preheader87.lr.ph ], [ %i.bp, %._crit_edge93 ] ; 3 uses
  %i.ad = load i32, ptr %i.i, align 8, !tbaa !29  ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
end_hunk_2
