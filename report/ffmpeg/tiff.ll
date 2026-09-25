Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tiff?download=true
inline.NumInlined: 42
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 53
begin_hunk_0_@decode_frame:bb.a
  %i.ays = getelementptr inbounds i8, ptr %.17011603, i64 %i.ayr
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %.lr.ph1608
  %.2702 = phi ptr [ %i.ays, %bb.lq ], [ %.17011603, %.lr.ph1608 ] ; 2 uses
  %i.ayt = load i32, ptr %i.bn, align 8, !tbaa !209
  %.not810 = icmp eq i32 %i.ayt, 0
  br i1 %.not810, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.ayu = load i32, ptr %i.dk, align 8, !tbaa !217
  %i.ayv = load i32, ptr %i.i, align 4, !tbaa !33
  %i.ayw = call i32 @ff_tget(ptr noundef nonnull %7, i32 noundef %i.ayu, i32 noundef %i.ayv) #16
  br label %bb.lu

bb.lt:                                            ; preds = %bb.lr
  %i.ayx = load i32, ptr %i.di, align 4, !tbaa !216
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %.0721 = phi i32 [ %i.ayw, %bb.ls ], [ %i.ayx, %bb.lt ] ; 21 uses
  %i.ayy = load i32, ptr %i.bm, align 4, !tbaa !208
  %.not811 = icmp eq i32 %i.ayy, 0
  br i1 %.not811, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.ayz = load i32, ptr %i.do, align 4, !tbaa !215
  %i.aza = load i32, ptr %i.i, align 4, !tbaa !33
  %i.azb = call i32 @ff_tget(ptr noundef nonnull %8, i32 noundef %i.ayz, i32 noundef %i.aza) #16
  br label %bb.lx

bb.lw:                                            ; preds = %bb.lu
  %i.azc = load i32, ptr %i.dl, align 8, !tbaa !213
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %bb.lv
  %.0722 = phi i32 [ %i.azb, %bb.lv ], [ %i.azc, %bb.lw ] ; 3 uses
  %i.azd = load i32, ptr %i.s, align 8, !tbaa !50 ; 2 uses
  %i.aze = icmp ugt i32 %.0722, %i.azd
  %i.azf = sub nuw i32 %i.azd, %.0722
  %i.azg = icmp ugt i32 %.0721, %i.azf
  %or.cond827 = select i1 %i.aze, i1 true, i1 %i.azg
  %i.azh = icmp ugt i32 %.0721, %.07111602
  %or.cond828 = select i1 %or.cond827, i1 true, i1 %i.azh
  br i1 %or.cond828, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %bb.lx
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.27) #16
  call void @av_freep(ptr noundef nonnull %i.l) #16
  br label %.thread902

bb.lz:                                            ; preds = %bb.lx
  %i.azi = sub nuw i32 %.07111602, %.0721
  %i.azj = load ptr, ptr %i.q, align 8, !tbaa !49 ; 2 uses
  %i.azk = zext i32 %.0722 to i64
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azj, i64 %i.azk ; 21 uses
  %i.azm = load i32, ptr %i.dn, align 4, !tbaa !212
  %i.azn = load i32, ptr %i.dm, align 4, !tbaa !66
  %i.azo = sub nsw i32 %i.azn, %.121604
  %.829 = call i32 @llvm.smin.i32(i32 %i.azm, i32 %i.azo) ; 19 uses
  %i.azp = load i32, ptr %i.dp, align 8, !tbaa !65
  %i.azq = load i32, ptr %i.as, align 8, !tbaa !55
  %i.azr = mul i32 %i.azq, %i.azp
  %i.azs = add i32 %i.azr, 7
  %i.azt = lshr i32 %i.azs, 3                     ; 2 uses
  %i.azu = load i32, ptr %i.awz, align 4, !tbaa !83
  %i.azv = call ptr @av_pix_fmt_desc_get(i32 noundef %i.azu) #16 ; 2 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 16
  %i.azx = load i64, ptr %i.azw, align 8, !tbaa !85
  %i.azy = and i64 %i.azx, 48
  %or.cond344.not.i = icmp eq i64 %i.azy, 16
  br i1 %or.cond344.not.i, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azv, i64 8
  %i.baa = load i8, ptr %i.azz, align 8, !tbaa !86
  %i.bab = icmp ugt i8 %i.baa, 2
  br label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %bb.lz
  %i.bac = phi i1 [ %i.bab, %bb.ma ], [ false, %bb.lz ] ; 10 uses
  %i.bad = load i32, ptr %i.cn, align 8, !tbaa !74
  %.not328.i = icmp eq i32 %i.bad, 0
  br i1 %.not328.i, label %bb.md, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.bae = load i32, ptr %i.at, align 4, !tbaa !56
  %i.baf = udiv i32 %i.azt, %i.bae
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.mb
  %.0289.i = phi i32 [ %i.baf, %bb.mc ], [ %i.azt, %bb.mb ]
  %i.bag = icmp slt i32 %.0721, 1
  br i1 %i.bag, label %tiff_unpack_strip.exit.thread, label %bb.me

bb.me:                                            ; preds = %bb.md
  br i1 %i.bac, label %bb.mf, label %bb.mk

bb.mf:                                            ; preds = %bb.me
  %i.bah = load i32, ptr %i.dp, align 8, !tbaa !65
  %i.bai = add nsw i32 %i.bah, -1
  %i.baj = load i32, ptr %i.cm, align 4, !tbaa !33 ; 2 uses
  %i.bak = sdiv i32 %i.bai, %i.baj
  %i.bal = add nsw i32 %i.bak, 1
  %i.bam = load i32, ptr %i.as, align 8, !tbaa !55
  %i.ban = load i32, ptr %i.axa, align 8, !tbaa !33
  %i.bao = mul i32 %i.bam, %i.baj
  %i.bap = mul i32 %i.bao, %i.bal
  %i.baq = mul i32 %i.bap, %i.ban
  %i.bar = add i32 %i.baq, 7
  %i.bas = lshr i32 %i.bar, 3                     ; 2 uses
  %i.bat = zext nneg i32 %i.bas to i64
  call void @av_fast_padded_malloc(ptr noundef nonnull %i.axb, ptr noundef nonnull %i.axc, i64 noundef %i.bat) #16
  %i.bau = load ptr, ptr %i.axb, align 8, !tbaa !240 ; 2 uses
  %.not330.i = icmp eq ptr %i.bau, null
  br i1 %.not330.i, label %.thread.i, label %bb.mg

.thread.i:                                        ; preds = %bb.mf
  %i.bav = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bav, i32 noundef 16, ptr noundef nonnull @.str.1829) #16
  br label %tiff_unpack_strip.exit.thread

bb.mg:                                            ; preds = %bb.mf
  %i.baw = load i32, ptr %i.dp, align 8, !tbaa !65
  %i.bax = add nsw i32 %i.baw, -1
  %i.bay = load i32, ptr %i.cm, align 4, !tbaa !33 ; 2 uses
  %i.baz = sdiv i32 %i.bax, %i.bay
  %i.bba = add nsw i32 %i.baz, 1                  ; 2 uses
  %i.bbb = mul nsw i32 %i.bba, %i.bay
  %i.bbc = load i32, ptr %i.axa, align 8, !tbaa !33
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
  %i.bbg = load i32, ptr %i.as, align 8, !tbaa !55
  %i.bbh = icmp eq i32 %i.bbg, 24
  br i1 %i.bbh, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1832, ptr noundef nonnull @.str.1831, i32 noundef 790) #16
  call void @abort() #17
  unreachable

bb.mk:                                            ; preds = %bb.mi, %bb.me
  %.1302.i = phi i32 [ %.1726, %bb.me ], [ 0, %bb.mi ]
  %.1298.i = phi ptr [ %.2702, %bb.me ], [ %i.bau, %bb.mi ]
  %.2.i = phi i32 [ %.0289.i, %bb.me ], [ %i.bbf, %bb.mi ] ; 39 uses
  %i.bbi = load i32, ptr %i.ay, align 8, !tbaa !59
  %.not331.i = icmp eq i32 %i.bbi, 0
  br i1 %.not331.i, label %.thread469.i, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.bbj = load i32, ptr %i.as, align 8, !tbaa !55
  %i.bbk = load i32, ptr %i.dp, align 8, !tbaa !65
  %i.bbl = mul i32 %i.bbk, %i.bbj
  %i.bbm = add i32 %i.bbl, 7
  %i.bbn = lshr i32 %i.bbm, 3
  %i.bbo = icmp eq i32 %.2.i, %i.bbn
  br i1 %i.bbo, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1833, ptr noundef nonnull @.str.1831, i32 noundef 793) #16
  call void @abort() #17
  unreachable

bb.mn:                                            ; preds = %bb.ml
  br i1 %i.bac, label %bb.mo, label %.thread469.i

bb.mo:                                            ; preds = %bb.mn
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1834, ptr noundef nonnull @.str.1831, i32 noundef 795) #16
  call void @abort() #17
  unreachable

.thread469.i:                                     ; preds = %bb.mn, %bb.mk
  %i.bbp = load i32, ptr %i.awz, align 4, !tbaa !83
  %i.bbq = icmp eq i32 %i.bbp, 166
  br i1 %i.bbq, label %bb.mp, label %bb.mr

bb.mp:                                            ; preds = %.thread469.i
  %i.bbr = sext i32 %.2.i to i64
  call void @av_fast_padded_malloc(ptr noundef nonnull %i.axb, ptr noundef nonnull %i.axc, i64 noundef %i.bbr) #16
  %i.bbs = load ptr, ptr %i.axb, align 8, !tbaa !240 ; 2 uses
  %i.bbt = icmp eq ptr %i.bbs, null
  br i1 %i.bbt, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  %i.bbu = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bbu, i32 noundef 16, ptr noundef nonnull @.str.1829) #16
  br label %tiff_unpack_strip.exit.thread

bb.mr:                                            ; preds = %bb.mp, %.thread469.i
  %.2303.i = phi i32 [ %.1302.i, %.thread469.i ], [ 0, %bb.mp ] ; 10 uses
  %.2299.i = phi ptr [ %.1298.i, %.thread469.i ], [ %i.bbs, %bb.mp ] ; 10 uses
  %i.bbv = load i32, ptr %i.av, align 8, !tbaa !200 ; 3 uses
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
  %i.bbw = load i32, ptr %i.axa, align 8, !tbaa !33 ; 2 uses
  %i.bbx = add i32 %.829, -1
  %i.bby = add i32 %i.bbx, %i.bbw
  %i.bbz = sdiv i32 %i.bby, %i.bbw
  br label %bb.mu

bb.mu:                                            ; preds = %bb.mt, %bb.ms
  %i.bca = phi i32 [ %i.bbz, %bb.mt ], [ %.829, %bb.ms ]
  %i.bcb = mul nsw i32 %.2.i, %.829               ; 2 uses
  %i.bcc = sext i32 %i.bcb to i64                 ; 2 uses
  %i.bcd = call noalias ptr @av_malloc(i64 noundef %i.bcc) #16 ; 9 uses
  %.not67.i.i = icmp eq ptr %i.bcd, null
  br i1 %.not67.i.i, label %tiff_unpack_strip.exit.thread, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.bce = load i32, ptr %i.aw, align 4, !tbaa !201
  %.not68.i.i = icmp eq i32 %i.bce, 0
  br i1 %.not68.i.i, label %bb.my, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.bcf = zext nneg i32 %.0721 to i64            ; 3 uses
  call void @av_fast_padded_malloc(ptr noundef nonnull %i.axd, ptr noundef nonnull %i.axe, i64 noundef %i.bcf) #16
  %i.bcg = load ptr, ptr %i.axd, align 8, !tbaa !241
  %.not.i.i.i = icmp eq ptr %i.bcg, null
  br i1 %.not.i.i.i, label %bb.mx, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.mw
  %xtraiter3719 = and i64 %i.bcf, 1
  %i.bch = icmp eq i32 %.0721, 1
  br i1 %i.bch, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter3722 = and i64 %i.bcf, 2147483646
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.1, %.preheader.i.i.i ] ; 4 uses
  %niter3723 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter3723.next.1, %.preheader.i.i.i ]
  %i.bci = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.i.i.i
  %i.bcj = load i8, ptr %i.bci, align 1, !tbaa !67
  %i.bck = zext i8 %i.bcj to i64
  %i.bcl = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bck
  %i.bcm = load i8, ptr %i.bcl, align 1, !tbaa !67
  %i.bcn = load ptr, ptr %i.axd, align 8, !tbaa !241
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 %indvars.iv.i.i.i
  store i8 %i.bcm, ptr %i.bco, align 1, !tbaa !67
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.next.i.i.i
  %i.bcq = load i8, ptr %i.bcp, align 1, !tbaa !67
  %i.bcr = zext i8 %i.bcq to i64
  %i.bcs = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bcr
  %i.bct = load i8, ptr %i.bcs, align 1, !tbaa !67
  %i.bcu = load ptr, ptr %i.axd, align 8, !tbaa !241
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 %indvars.iv.next.i.i.i
  store i8 %i.bct, ptr %i.bcv, align 1, !tbaa !67
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter3723.next.1 = add i64 %niter3723, 2       ; 2 uses
  %niter3723.ncmp.1 = icmp eq i64 %niter3723.next.1, %unroll_iter3722
  br i1 %niter3723.ncmp.1, label %deinvert_buffer.exit.i.i.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !106

bb.mx:                                            ; preds = %bb.mw
  call void @av_free(ptr noundef nonnull %i.bcd) #16
  br label %tiff_unpack_strip.exit.thread

deinvert_buffer.exit.i.i.unr-lcssa:               ; preds = %.preheader.i.i.i
  %lcmp.mod3720.not = icmp eq i64 %xtraiter3719, 0
  br i1 %lcmp.mod3720.not, label %deinvert_buffer.exit.i.i, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %deinvert_buffer.exit.i.i.unr-lcssa, %.preheader.i.i.i.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.1, %deinvert_buffer.exit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod3721 = trunc i32 %.0721 to i1
  call void @llvm.assume(i1 %lcmp.mod3721)
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.i.i.i.epil.init
  %i.bcx = load i8, ptr %i.bcw, align 1, !tbaa !67
  %i.bcy = zext i8 %i.bcx to i64
  %i.bcz = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bcy
  %i.bda = load i8, ptr %i.bcz, align 1, !tbaa !67
  %i.bdb = load ptr, ptr %i.axd, align 8, !tbaa !241
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 %indvars.iv.i.i.i.epil.init
  store i8 %i.bda, ptr %i.bdc, align 1, !tbaa !67
  br label %deinvert_buffer.exit.i.i

deinvert_buffer.exit.i.i:                         ; preds = %deinvert_buffer.exit.i.i.unr-lcssa, %.preheader.i.i.i.epil.preheader
  %i.bdd = load ptr, ptr %i.axd, align 8, !tbaa !241
  br label %bb.my

bb.my:                                            ; preds = %deinvert_buffer.exit.i.i, %bb.mv
  %.059.i.i = phi ptr [ %i.bdd, %deinvert_buffer.exit.i.i ], [ %i.azl, %bb.mv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.axl, i8 0, i64 104, i1 false)
  store ptr %.059.i.i, ptr %5, align 8, !tbaa !244
  store i32 %.0721, ptr %i.axl, align 8, !tbaa !245
  store ptr %i.bcd, ptr %i.axm, align 8, !tbaa !246
  store i32 %i.bcb, ptr %i.axn, align 8, !tbaa !247
  %i.bde = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str.1846, i32 noundef 112) #16 ; 3 uses
  %.not.i70.i.i = icmp eq i32 %i.bde, 0
  br i1 %.not.i70.i.i, label %bb.mz, label %tiff_uncompress.exit.thread81.i.i

tiff_uncompress.exit.thread81.i.i:                ; preds = %bb.my
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.1847, i32 noundef %i.bde) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.loopexit951

bb.mz:                                            ; preds = %bb.my
  %i.bdf = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 2) #16 ; 2 uses
  %i.bdg = call i32 @inflateEnd(ptr noundef nonnull %5) #16 ; 0 uses
  %i.bdh = load i64, ptr %i.axo, align 8, !tbaa !248 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %switch.i.i = icmp ult i32 %i.bdf, 2
  br i1 %switch.i.i, label %tiff_uncompress.exit.thread.i.i, label %.loopexit951

.loopexit951:                                     ; preds = %bb.mz, %tiff_uncompress.exit.thread81.i.i
  %.0.i7186.i.i = phi i32 [ %i.bde, %tiff_uncompress.exit.thread81.i.i ], [ %i.bdf, %bb.mz ]
  %.07485.i.i = phi i64 [ %i.bcc, %tiff_uncompress.exit.thread81.i.i ], [ %i.bdh, %bb.mz ]
  %i.bdi = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.bdj = sext i32 %.2.i to i64
  %i.bdk = sext i32 %.829 to i64
  %i.bdl = mul nsw i64 %i.bdj, %i.bdk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bdi, i32 noundef 16, ptr noundef nonnull @.str.1844, i64 noundef %.07485.i.i, i64 noundef %i.bdl, i32 noundef %.0.i7186.i.i) #16
  call void @av_free(ptr noundef nonnull %i.bcd) #16
  br label %tiff_unpack_strip.exit.thread

tiff_uncompress.exit.thread.i.i:                  ; preds = %bb.mz
  %i.bdm = sext i32 %.2.i to i64                  ; 4 uses
  %i.bdn = sext i32 %i.bca to i64
  %i.bdo = mul nsw i64 %i.bdn, %i.bdm             ; 2 uses
  %i.bdp = icmp ult i64 %i.bdh, %i.bdo
  br i1 %i.bdp, label %bb.na, label %.preheader91.i.i

.preheader91.i.i:                                 ; preds = %tiff_uncompress.exit.thread.i.i
  %i.bdq = icmp sgt i32 %.829, 0
  br i1 %i.bdq, label %.lr.ph102.i.i, label %tiff_unpack_strip.exit.thread893.sink.split

.lr.ph102.i.i:                                    ; preds = %.preheader91.i.i
  %i.bdr = icmp sgt i32 %.2.i, 0                  ; 3 uses
  %i.bds = sext i32 %.2303.i to i64               ; 2 uses
  %i.bdt = zext i32 %.2.i to i64                  ; 10 uses
  %i.bdu = shl nuw nsw i64 %i.bdt, 1
  %i.bdv = getelementptr i8, ptr %.2299.i, i64 %i.bdu
  %invariant.gep3969 = getelementptr i8, ptr %i.bcd, i64 %i.bdt
  %min.iters.check3419 = icmp ult i32 %.2.i, 8
  %n.vec3421 = and i64 %i.bdt, 2147483640         ; 2 uses
  %i.bdw = and i64 %i.bdt, 7
  %cmp.n3431 = icmp eq i64 %n.vec3421, %i.bdt
  br label %bb.nb

bb.na:                                            ; preds = %tiff_uncompress.exit.thread.i.i
  %i.bdx = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bdx, i32 noundef 16, ptr noundef nonnull @.str.1845, i64 noundef %i.bdh, i64 noundef %i.bdo) #16
  call void @av_free(ptr noundef nonnull %i.bcd) #16
  br label %tiff_unpack_strip.exit.thread

bb.nb:                                            ; preds = %bb.nf, %.lr.ph102.i.i
  %indvar3411 = phi i64 [ %indvar.next3412, %bb.nf ], [ 0, %.lr.ph102.i.i ] ; 3 uses
  %.0101.i375.i = phi i32 [ %i.bfz, %bb.nf ], [ 0, %.lr.ph102.i.i ] ; 3 uses
  %.05899.i.i = phi ptr [ %i.bfx, %bb.nf ], [ %.2299.i, %.lr.ph102.i.i ] ; 8 uses
  %.16097.i.i = phi ptr [ %i.bfy, %bb.nf ], [ %i.bcd, %.lr.ph102.i.i ] ; 7 uses
  %i.bdy = mul i64 %indvar3411, %i.bds
  %scevgep3413 = getelementptr i8, ptr %i.bdv, i64 %i.bdy
  %i.bdz = mul i64 %indvar3411, %i.bdm
  %gep3970 = getelementptr i8, ptr %invariant.gep3969, i64 %i.bdz
  %i.bea = load i32, ptr %i.as, align 8, !tbaa !55 ; 2 uses
  %i.beb = icmp ult i32 %i.bea, 8
  br i1 %i.beb, label %bb.nc, label %horizontal_fill.exit.sink.split.i.i

bb.nc:                                            ; preds = %bb.nb
  %i.bec = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 136
  %i.bee = load i32, ptr %i.bed, align 8, !tbaa !82
  %i.bef = icmp eq i32 %i.bee, 11
  br i1 %i.bef, label %bb.nd, label %horizontal_fill.exit.sink.split.i.i

bb.nd:                                            ; preds = %bb.nc
  switch i32 %i.bea, label %horizontal_fill.exit.sink.split.i.i [
    i32 1, label %.preheader.i.i
    i32 2, label %.preheader87.i.i
    i32 4, label %.preheader89.i.i
  ]

.preheader89.i.i:                                 ; preds = %bb.nd
  br i1 %i.bdr, label %.lr.ph.i.i.preheader, label %horizontal_fill.exit.i.i

.lr.ph.i.i.preheader:                             ; preds = %.preheader89.i.i
  br i1 %min.iters.check3419, label %.lr.ph.i.i.preheader3482, label %vector.memcheck3410

end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  %i.buz = getelementptr i8, ptr %.02846.i.i, i64 %i.buy ; 2 uses
  %i.bva = getelementptr i8, ptr %i.buz, i64 1
  store i8 %i.bux, ptr %i.bva, align 1, !tbaa !67
  %i.bvb = load i8, ptr %i.buv, align 1, !tbaa !67
  %i.bvc = lshr i8 %i.bvb, 4
  store i8 %i.bvc, ptr %i.buz, align 1, !tbaa !67
  %indvars.iv.next55.i.i.1 = add nsw i64 %indvars.iv54.i.i, -2 ; 3 uses
  %i.bvd = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %indvars.iv.next55.i.i.1 ; 2 uses
  %i.bve = load i8, ptr %i.bvd, align 1, !tbaa !67
  %i.bvf = and i8 %i.bve, 15
  %i.bvg = shl nuw nsw i64 %indvars.iv.next55.i.i.1, 1
  %i.bvh = getelementptr i8, ptr %.02846.i.i, i64 %i.bvg ; 2 uses
  %i.bvi = getelementptr i8, ptr %i.bvh, i64 1
  store i8 %i.bvf, ptr %i.bvi, align 1, !tbaa !67
  %i.bvj = load i8, ptr %i.bvd, align 1, !tbaa !67
  %i.bvk = lshr i8 %i.bvj, 4
  store i8 %i.bvk, ptr %i.bvh, align 1, !tbaa !67
  %i.bvl = icmp sgt i64 %indvars.iv54.i.i, 2
  br i1 %i.bvl, label %.lr.ph41.i.i, label %horizontal_fill.exit.i421.i, !llvm.loop !121

bb.or:                                            ; preds = %bb.oq, %bb.oq, %bb.oq
  %i.bvm = icmp ne ptr %.02846.i.i, null
  %or.cond3.i.i.i420.i = and i1 %or.cond.i.i.i419.i, %i.bvm
  %i.bvn = select i1 %or.cond3.i.i.i420.i, i32 %i.bsn, i32 8 ; 2 uses
  %i.bvo = load i32, ptr %i.dp, align 8, !tbaa !65 ; 4 uses
  %i.bvp = icmp sgt i32 %i.bvo, 0
  br i1 %i.bvp, label %.lr.ph.i422.i, label %horizontal_fill.exit.i421.i

.lr.ph.i422.i:                                    ; preds = %bb.or
  %i.bvq = sub nuw nsw i32 16, %i.bst
  %i.bvr = load i32, ptr %i.ap, align 4, !tbaa !197
  %i.bvs = add i32 %i.bvr, -1
  %spec.select.i.i.i = icmp ult i32 %i.bvs, 2
  %i.bvt = sub nuw nsw i32 32, %i.bst             ; 3 uses
  %i.bvu = select i1 %spec.select.i.i.i, i32 0, i32 %i.bvq ; 3 uses
  %wide.trip.count.i423.i = zext nneg i32 %i.bvo to i64 ; 2 uses
  %xtraiter3694 = and i64 %wide.trip.count.i423.i, 1
  %i.bvv = icmp eq i32 %i.bvo, 1
  br i1 %i.bvv, label %.epil.preheader, label %.lr.ph.i422.i.new

.lr.ph.i422.i.new:                                ; preds = %.lr.ph.i422.i
  %unroll_iter3697 = and i64 %wide.trip.count.i423.i, 2147483646
  br label %bb.os

bb.os:                                            ; preds = %bb.os, %.lr.ph.i422.i.new
  %indvars.iv.i424.i = phi i64 [ 0, %.lr.ph.i422.i.new ], [ %indvars.iv.next.i425.i.1, %bb.os ] ; 3 uses
  %.sroa.4.038.i.i = phi i32 [ 0, %.lr.ph.i422.i.new ], [ %i.bws, %bb.os ] ; 3 uses
  %niter3698 = phi i64 [ 0, %.lr.ph.i422.i.new ], [ %niter3698.next.1, %bb.os ]
  %i.bvw = lshr i32 %.sroa.4.038.i.i, 3
  %i.bvx = zext nneg i32 %i.bvw to i64
  %i.bvy = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %i.bvx
  %i.bvz = load i32, ptr %i.bvy, align 1, !tbaa !67
  %i.bwa = call i32 @llvm.bswap.i32(i32 %i.bvz)
  %i.bwb = and i32 %.sroa.4.038.i.i, 7
  %i.bwc = shl i32 %i.bwa, %i.bwb
  %i.bwd = lshr i32 %i.bwc, %i.bvt
  %i.bwe = add i32 %.sroa.4.038.i.i, %i.bst
  %i.bwf = call i32 @llvm.umin.i32(i32 %i.bvn, i32 %i.bwe) ; 3 uses
  %i.bwg = shl nuw nsw i32 %i.bwd, %i.bvu
  %i.bwh = trunc i32 %i.bwg to i16
  %i.bwi = getelementptr inbounds nuw [2 x i8], ptr %.02846.i.i, i64 %indvars.iv.i424.i
  store i16 %i.bwh, ptr %i.bwi, align 2, !tbaa !60
  %i.bwj = lshr i32 %i.bwf, 3
  %i.bwk = zext nneg i32 %i.bwj to i64
  %i.bwl = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %i.bwk
  %i.bwm = load i32, ptr %i.bwl, align 1, !tbaa !67
  %i.bwn = call i32 @llvm.bswap.i32(i32 %i.bwm)
  %i.bwo = and i32 %i.bwf, 7
  %i.bwp = shl i32 %i.bwn, %i.bwo
  %i.bwq = lshr i32 %i.bwp, %i.bvt
  %i.bwr = add i32 %i.bwf, %i.bst
  %i.bws = call i32 @llvm.umin.i32(i32 %i.bvn, i32 %i.bwr) ; 2 uses
  %i.bwt = shl nuw nsw i32 %i.bwq, %i.bvu
  %i.bwu = trunc i32 %i.bwt to i16
  %i.bwv = getelementptr inbounds nuw [2 x i8], ptr %.02846.i.i, i64 %indvars.iv.i424.i
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bwv, i64 2
  store i16 %i.bwu, ptr %i.bww, align 2, !tbaa !60
  %indvars.iv.next.i425.i.1 = add nuw nsw i64 %indvars.iv.i424.i, 2 ; 2 uses
  %niter3698.next.1 = add i64 %niter3698, 2       ; 2 uses
  %niter3698.ncmp.1 = icmp eq i64 %niter3698.next.1, %unroll_iter3697
  br i1 %niter3698.ncmp.1, label %horizontal_fill.exit.i421.i.loopexit3491.unr-lcssa, label %bb.os, !llvm.loop !123

horizontal_fill.exit.i421.i.loopexit3491.unr-lcssa: ; preds = %bb.os
  %lcmp.mod3695.not = icmp eq i64 %xtraiter3694, 0
  br i1 %lcmp.mod3695.not, label %horizontal_fill.exit.i421.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %horizontal_fill.exit.i421.i.loopexit3491.unr-lcssa, %.lr.ph.i422.i
  %indvars.iv.i424.i.epil.init = phi i64 [ 0, %.lr.ph.i422.i ], [ %indvars.iv.next.i425.i.1, %horizontal_fill.exit.i421.i.loopexit3491.unr-lcssa ]
  %.sroa.4.038.i.i.epil.init = phi i32 [ 0, %.lr.ph.i422.i ], [ %i.bws, %horizontal_fill.exit.i421.i.loopexit3491.unr-lcssa ] ; 2 uses
  %lcmp.mod3696 = trunc i32 %i.bvo to i1
  call void @llvm.assume(i1 %lcmp.mod3696)
  %i.bwx = lshr i32 %.sroa.4.038.i.i.epil.init, 3
  %i.bwy = zext nneg i32 %i.bwx to i64
  %i.bwz = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %i.bwy
  %i.bxa = load i32, ptr %i.bwz, align 1, !tbaa !67
  %i.bxb = call i32 @llvm.bswap.i32(i32 %i.bxa)
  %i.bxc = and i32 %.sroa.4.038.i.i.epil.init, 7
  %i.bxd = shl i32 %i.bxb, %i.bxc
  %i.bxe = lshr i32 %i.bxd, %i.bvt
  %i.bxf = shl nuw nsw i32 %i.bxe, %i.bvu
  %i.bxg = trunc i32 %i.bxf to i16
  %i.bxh = getelementptr inbounds nuw [2 x i8], ptr %.02846.i.i, i64 %indvars.iv.i424.i.epil.init
  store i16 %i.bxg, ptr %i.bxh, align 2, !tbaa !60
  br label %horizontal_fill.exit.i421.i

horizontal_fill.exit.i421.i:                      ; preds = %.epil.preheader, %horizontal_fill.exit.i421.i.loopexit3491.unr-lcssa, %.lr.ph41.i.i.prol.loopexit, %.lr.ph41.i.i, %.lr.ph43.i.i, %.lr.ph45.i.i, %bb.or, %.preheader.i427.i, %.preheader32.i.i, %.preheader34.i.i, %bb.oq
  %i.bxi = getelementptr inbounds i8, ptr %.02846.i.i, i64 %i.bsp
  %i.bxj = add nuw nsw i32 %.048.i.i, 1           ; 2 uses
  %exitcond63.not.i.i = icmp eq i32 %i.bxj, %.829
  br i1 %exitcond63.not.i.i, label %tiff_unpack_strip.exit, label %bb.oq, !llvm.loop !124

bb.ot:                                            ; preds = %bb.mr
  %.not.i855 = icmp eq ptr %i.azj, null
  br i1 %.not.i855, label %bb.ou, label %bytestream2_init.exit.i

bb.ou:                                            ; preds = %bb.ot
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 141) #16
  call void @abort() #17
  unreachable

bytestream2_init.exit.i:                          ; preds = %bb.ot
  store ptr %i.azl, ptr %i.y, align 8, !tbaa !51
  store ptr %i.azl, ptr %i.ad, align 8, !tbaa !52
  %i.bxk = zext nneg i32 %.0721 to i64            ; 2 uses
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.azl, i64 %i.bxk ; 2 uses
  store ptr %i.bxl, ptr %i.ag, align 8, !tbaa !53
  br i1 %i.bac, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %bytestream2_init.exit.i
  %i.bxm = load i32, ptr %i.axc, align 8, !tbaa !87
  br label %bb.ox

bb.ow:                                            ; preds = %bytestream2_init.exit.i
  %i.bxn = mul nsw i32 %.2303.i, %.829
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ow, %bb.ov
  %i.bxo = phi i32 [ %i.bxm, %bb.ov ], [ %i.bxn, %bb.ow ] ; 2 uses
  %i.bxp = icmp ne ptr %.2299.i, null
  %i.bxq = icmp sgt i32 %i.bxo, -1
  %or.cond.i370.i = and i1 %i.bxp, %i.bxq
  br i1 %or.cond.i370.i, label %bytestream2_init_writer.exit.i, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 151) #16
  call void @abort() #17
  unreachable

bytestream2_init_writer.exit.i:                   ; preds = %bb.ox
  %i.bxr = load i32, ptr %i.ap, align 4, !tbaa !197
  %i.bxs = add i32 %i.bxr, -1
  %spec.select.i = icmp ult i32 %i.bxs, 2         ; 3 uses
  %i.bxt = icmp eq i32 %i.bbv, 7
  %or.cond3.i = and i1 %i.bxt, %spec.select.i
  br i1 %or.cond3.i, label %bb.oz, label %bb.pd

bb.oz:                                            ; preds = %bytestream2_init_writer.exit.i
  %i.bxu = load i32, ptr %i.dj, align 8, !tbaa !214
  %i.bxv = icmp sgt i32 %i.bxu, 1
  br i1 %i.bxv, label %bb.pa, label %bb.pb

bb.pa:                                            ; preds = %bb.oz
  %i.bxw = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bxw, i32 noundef 16, ptr noundef nonnull @.str.1838) #16
  br label %tiff_unpack_strip.exit.thread

bb.pb:                                            ; preds = %bb.oz
  %i.bxx = load i32, ptr %i.ay, align 8, !tbaa !59
  %.not339.i = icmp eq i32 %i.bxx, 0
  br i1 %.not339.i, label %tiff_unpack_strip.exit.thread, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.bxy = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.bxz = load i32, ptr %i.di, align 4, !tbaa !216
  %i.bya = load i32, ptr %i.dp, align 8, !tbaa !65
  %i.byb = load i32, ptr %i.dm, align 4, !tbaa !66
  %i.byc = call fastcc i32 @dng_decode_jpeg(ptr noundef %i.bxy, ptr noundef nonnull readonly %1, i32 noundef %i.bxz, i32 noundef 0, i32 noundef 0, i32 noundef %i.bya, i32 noundef %i.byb)
  br label %tiff_unpack_strip.exit

bb.pd:                                            ; preds = %bytestream2_init_writer.exit.i
  %i.byd = icmp eq i32 %.2303.i, 0
  %or.cond5.i = and i1 %i.byd, %spec.select.i
  br i1 %or.cond5.i, label %tiff_unpack_strip.exit.thread, label %.preheader506.i

.preheader506.i:                                  ; preds = %bb.pd
  %i.bye = icmp sgt i32 %.829, 0
  br i1 %i.bye, label %.lr.ph583.i, label %tiff_unpack_strip.exit.thread893

.lr.ph583.i:                                      ; preds = %.preheader506.i
  %i.byf = ptrtoint ptr %i.azl to i64
  %i.byg = icmp sgt i32 %.2.i, 0                  ; 5 uses
  %i.byh = ptrtoint ptr %i.bxl to i64             ; 3 uses
  %i.byi = sext i32 %.2.i to i64                  ; 3 uses
  %or.cond.i428.i = icmp ugt i32 %.2.i, 268435455
  %i.byj = shl nuw nsw i32 %.2.i, 3
  %i.byk = select i1 %or.cond.i428.i, i32 -8, i32 %i.byj ; 2 uses
  %or.cond.i.i429.i = icmp ult i32 %i.byk, 2147483135
  %i.byl = add nuw nsw i32 %i.byk, 8
  %i.bym = sdiv i32 %.2.i, 2
  %i.byn = call i32 @llvm.abs.i32(i32 %.2303.i, i1 true)
  %i.byo = sext i32 %.2303.i to i64               ; 2 uses
  %i.byp = zext i32 %.2.i to i64                  ; 14 uses
  %i.byq = select i1 %or.cond.i.i429.i, i32 %i.byl, i32 8 ; 2 uses
  %i.byr = shl nuw nsw i64 %i.byp, 1
  %i.bys = getelementptr i8, ptr %.2299.i, i64 %i.byr
  %xtraiter3730.a = and i64 %i.byp, 3             ; 3 uses
  %i.byt = icmp ult i32 %.2.i, 4
  %unroll_iter3733.a = and i64 %i.byp, 2147483644
  %lcmp.mod3731.not.a = icmp eq i64 %xtraiter3730.a, 0
  %lcmp.mod3732.a = icmp ne i64 %xtraiter3730.a, 0
  %xtraiter3735 = and i64 %i.byp, 3               ; 3 uses
  %i.byu = icmp ult i32 %.2.i, 4
  %unroll_iter3739 = and i64 %i.byp, 2147483644
  %lcmp.mod3737.not = icmp eq i64 %xtraiter3735, 0
  %lcmp.mod3738 = icmp ne i64 %xtraiter3735, 0
  %min.iters.check3328 = icmp ult i32 %.2.i, 8
  %n.vec3330 = and i64 %i.byp, 2147483640         ; 2 uses
  %i.byv = and i64 %i.byp, 7
  %cmp.n3340 = icmp eq i64 %n.vec3330, %i.byp
  br label %bb.pe

bb.pe:                                            ; preds = %bb.qm, %.lr.ph583.i
  %indvar3320 = phi i64 [ %indvar.next3321, %bb.qm ], [ 0, %.lr.ph583.i ] ; 2 uses
  %.2294582.i = phi i32 [ %i.cvt, %bb.qm ], [ 0, %.lr.ph583.i ] ; 7 uses
  %.4578.i = phi ptr [ %i.cvs, %bb.qm ], [ %.2299.i, %.lr.ph583.i ] ; 51 uses
  %.1305576.i = phi ptr [ %.5.i, %bb.qm ], [ %i.azl, %.lr.ph583.i ] ; 20 uses
  %.sroa.12.0575.i = phi i1 [ %i.bzj, %bb.qm ], [ true, %.lr.ph583.i ]
  %i.byw = mul i64 %indvar3320, %i.byo
  %scevgep3322 = getelementptr i8, ptr %i.bys, i64 %i.byw
  %i.byx = ptrtoint ptr %.1305576.i to i64        ; 2 uses
  %i.byy = sub i64 %i.byx, %i.byf
  %i.byz = icmp sgt i64 %i.byy, %i.bxk
  br i1 %i.byz, label %bb.pf, label %bb.pg

bb.pf:                                            ; preds = %bb.pe
  %i.bza = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bza, i32 noundef 16, ptr noundef nonnull @.str.1839) #16
  br label %tiff_unpack_strip.exit.thread

bb.pg:                                            ; preds = %bb.pe
  %i.bzb = load ptr, ptr %i.ag, align 8, !tbaa !53
  %i.bzc = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.bzd = ptrtoint ptr %i.bzb to i64
  %i.bze = ptrtoint ptr %i.bzc to i64
  %i.bzf = sub i64 %i.bzd, %i.bze
  %i.bzg = and i64 %i.bzf, 4294967295
  %i.bzh = icmp ne i64 %i.bzg, 0
  %or.cond473.i = and i1 %.sroa.12.0575.i, %i.bzh
  br i1 %or.cond473.i, label %bytestream2_seek_p.exit.i, label %tiff_unpack_strip.exit.thread893

bytestream2_seek_p.exit.i:                        ; preds = %bb.pg
  %i.bzi = mul nsw i32 %.2294582.i, %.2303.i
  %i.bzj = icmp sge i32 %i.bxo, %i.bzi
  %i.bzk = load i32, ptr %i.av, align 8, !tbaa !200
  switch i32 %i.bzk, label %.loopexit504.i [
    i32 1, label %bb.ph
    i32 32773, label %.preheader505.i
  ]

.preheader505.i:                                  ; preds = %bytestream2_seek_p.exit.i
  br i1 %i.byg, label %.lr.ph550.i, label %.loopexit504.i

bb.ph:                                            ; preds = %bytestream2_seek_p.exit.i
  %i.bzl = sub i64 %i.byh, %i.byx
  %i.bzm = icmp slt i64 %i.bzl, %i.byi
  br i1 %i.bzm, label %tiff_unpack_strip.exit.thread, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.bzn = load i32, ptr %i.aw, align 4, !tbaa !201
  %.not336.i = icmp eq i32 %i.bzn, 0
  br i1 %.not336.i, label %bb.pj, label %.preheader501.i

.preheader501.i:                                  ; preds = %bb.pi
  br i1 %i.byg, label %.lr.ph554.i.preheader, label %horizontal_fill.exit363.i

.lr.ph554.i.preheader:                            ; preds = %.preheader501.i
  br i1 %i.byu, label %.lr.ph554.i.epil.preheader, label %.lr.ph554.i

bb.pj:                                            ; preds = %bb.pi
  %i.bzo = load i32, ptr %i.as, align 8, !tbaa !55 ; 5 uses
  %i.bzp = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bzp, i64 136
  %i.bzr = load i32, ptr %i.bzq, align 8, !tbaa !82
  %i.bzs = icmp eq i32 %i.bzr, 11
  br i1 %i.bzs, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.bzt = load i32, ptr %i.ay, align 8, !tbaa !59
  %.not337.i = icmp eq i32 %i.bzt, 0
  br i1 %.not337.i, label %.thread472.i, label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  switch i32 %i.bzo, label %.thread472.i [
    i32 1, label %.preheader495.i
    i32 2, label %.preheader496.i
    i32 4, label %.preheader498.i
    i32 10, label %bb.pm
    i32 12, label %bb.pm
    i32 14, label %bb.pm
  ]

.preheader498.i:                                  ; preds = %bb.pl
  br i1 %i.byg, label %.lr.ph560.i.preheader, label %horizontal_fill.exit363.i

.lr.ph560.i.preheader:                            ; preds = %.preheader498.i
  br i1 %min.iters.check3328, label %.lr.ph560.i.preheader3477, label %vector.memcheck3319

vector.memcheck3319:                              ; preds = %.lr.ph560.i.preheader
  %scevgep3323 = getelementptr i8, ptr %.1305576.i, i64 %i.byp
  %bound03324 = icmp ult ptr %.4578.i, %scevgep3323
  %bound13325 = icmp ult ptr %.1305576.i, %scevgep3322
  %found.conflict3326 = and i1 %bound03324, %bound13325
  br i1 %found.conflict3326, label %.lr.ph560.i.preheader3477, label %vector.body3331

vector.body3331:                                  ; preds = %vector.memcheck3319, %vector.body3331
  %index3332 = phi i64 [ %index.next3338, %vector.body3331 ], [ 0, %vector.memcheck3319 ] ; 2 uses
  %i.bzu = xor i64 %index3332, -1
  %i.bzv = add i64 %i.bzu, %i.byp                 ; 2 uses
  %i.bzw = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %i.bzv
  %i.bzx = getelementptr inbounds i8, ptr %i.bzw, i64 -7
  %wide.load3333 = load <8 x i8>, ptr %i.bzx, align 1, !tbaa !67, !alias.scope !260 ; 2 uses
  %i.bzy = and <8 x i8> %wide.load3333, splat (i8 15)
  %i.bzz = shl nuw nsw i64 %i.bzv, 1
  %i.caa = getelementptr i8, ptr %.4578.i, i64 %i.bzz
  %i.cab = lshr <8 x i8> %wide.load3333, splat (i8 4)
  %i.cac = getelementptr i8, ptr %i.caa, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %i.cab, <8 x i8> %i.bzy, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.cac, align 1, !tbaa !67, !alias.scope !261, !noalias !260
  %index.next3338 = add nuw i64 %index3332, 8     ; 2 uses
  %i.cad = icmp eq i64 %index.next3338, %n.vec3330
  br i1 %i.cad, label %middle.block3339, label %vector.body3331, !llvm.loop !128

middle.block3339:                                 ; preds = %vector.body3331
  br i1 %cmp.n3340, label %horizontal_fill.exit363.i, label %.lr.ph560.i.preheader3477

.lr.ph560.i.preheader3477:                        ; preds = %vector.memcheck3319, %.lr.ph560.i.preheader, %middle.block3339
  %indvars.iv656.i.ph = phi i64 [ %i.byp, %vector.memcheck3319 ], [ %i.byp, %.lr.ph560.i.preheader ], [ %i.byv, %middle.block3339 ]
  br label %.lr.ph560.i

.preheader496.i:                                  ; preds = %bb.pl
  br i1 %i.byg, label %.lr.ph562.i, label %horizontal_fill.exit363.i

.preheader495.i:                                  ; preds = %bb.pl
  br i1 %i.byg, label %.lr.ph564.i, label %horizontal_fill.exit363.i

.lr.ph564.i:                                      ; preds = %.preheader495.i, %.lr.ph564.i
  %indvars.iv662.i = phi i64 [ %indvars.iv.next663.i, %.lr.ph564.i ], [ %i.byp, %.preheader495.i ] ; 2 uses
  %indvars.iv.next663.i = add nsw i64 %indvars.iv662.i, -1 ; 3 uses
  %i.cae = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next663.i ; 8 uses
  %i.caf = load i8, ptr %i.cae, align 1, !tbaa !67
  %i.cag = and i8 %i.caf, 1
  %i.cah = shl nuw nsw i64 %indvars.iv.next663.i, 3
  %i.cai = getelementptr i8, ptr %.4578.i, i64 %i.cah ; 8 uses
  %i.caj = getelementptr i8, ptr %i.cai, i64 7
  store i8 %i.cag, ptr %i.caj, align 1, !tbaa !67
  %i.cak = load i8, ptr %i.cae, align 1, !tbaa !67
  %i.cal = lshr i8 %i.cak, 1
  %i.cam = and i8 %i.cal, 1
  %i.can = getelementptr i8, ptr %i.cai, i64 6
  store i8 %i.cam, ptr %i.can, align 1, !tbaa !67
  %i.cao = load i8, ptr %i.cae, align 1, !tbaa !67
  %i.cap = lshr i8 %i.cao, 2
  %i.caq = and i8 %i.cap, 1
  %i.car = getelementptr i8, ptr %i.cai, i64 5
  store i8 %i.caq, ptr %i.car, align 1, !tbaa !67
  %i.cas = load i8, ptr %i.cae, align 1, !tbaa !67
  %i.cat = lshr i8 %i.cas, 3
  %i.cau = and i8 %i.cat, 1
  %i.cav = getelementptr i8, ptr %i.cai, i64 4
  store i8 %i.cau, ptr %i.cav, align 1, !tbaa !67
  %i.caw = load i8, ptr %i.cae, align 1, !tbaa !67
  %i.cax = lshr i8 %i.caw, 4
  %i.cay = and i8 %i.cax, 1
  %i.caz = getelementptr i8, ptr %i.cai, i64 3
  store i8 %i.cay, ptr %i.caz, align 1, !tbaa !67
  %i.cba = load i8, ptr %i.cae, align 1, !tbaa !67
  %i.cbb = lshr i8 %i.cba, 5
  %i.cbc = and i8 %i.cbb, 1
  %i.cbd = getelementptr i8, ptr %i.cai, i64 2
  store i8 %i.cbc, ptr %i.cbd, align 1, !tbaa !67
  %i.cbe = load i8, ptr %i.cae, align 1, !tbaa !67
  %i.cbf = lshr i8 %i.cbe, 6
  %i.cbg = and i8 %i.cbf, 1
  %i.cbh = getelementptr i8, ptr %i.cai, i64 1
  store i8 %i.cbg, ptr %i.cbh, align 1, !tbaa !67
  %i.cbi = load i8, ptr %i.cae, align 1, !tbaa !67
  %i.cbj = lshr i8 %i.cbi, 7
  store i8 %i.cbj, ptr %i.cai, align 1, !tbaa !67
  %i.cbk = icmp samesign ugt i64 %indvars.iv662.i, 1
  br i1 %i.cbk, label %.lr.ph564.i, label %horizontal_fill.exit363.i, !llvm.loop !111

.lr.ph562.i:                                      ; preds = %.preheader496.i, %.lr.ph562.i
  %indvars.iv659.i = phi i64 [ %indvars.iv.next660.i, %.lr.ph562.i ], [ %i.byp, %.preheader496.i ] ; 2 uses
  %indvars.iv.next660.i = add nsw i64 %indvars.iv659.i, -1 ; 3 uses
  %i.cbl = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next660.i ; 4 uses
  %i.cbm = load i8, ptr %i.cbl, align 1, !tbaa !67
  %i.cbn = and i8 %i.cbm, 3
  %i.cbo = shl nuw nsw i64 %indvars.iv.next660.i, 2
  %i.cbp = getelementptr i8, ptr %.4578.i, i64 %i.cbo ; 4 uses
  %i.cbq = getelementptr i8, ptr %i.cbp, i64 3
  store i8 %i.cbn, ptr %i.cbq, align 1, !tbaa !67
  %i.cbr = load i8, ptr %i.cbl, align 1, !tbaa !67
  %i.cbs = lshr i8 %i.cbr, 2
  %i.cbt = and i8 %i.cbs, 3
  %i.cbu = getelementptr i8, ptr %i.cbp, i64 2
  store i8 %i.cbt, ptr %i.cbu, align 1, !tbaa !67
  %i.cbv = load i8, ptr %i.cbl, align 1, !tbaa !67
  %i.cbw = lshr i8 %i.cbv, 4
  %i.cbx = and i8 %i.cbw, 3
  %i.cby = getelementptr i8, ptr %i.cbp, i64 1
  store i8 %i.cbx, ptr %i.cby, align 1, !tbaa !67
  %i.cbz = load i8, ptr %i.cbl, align 1, !tbaa !67
  %i.cca = lshr i8 %i.cbz, 6
  store i8 %i.cca, ptr %i.cbp, align 1, !tbaa !67
  %i.ccb = icmp samesign ugt i64 %indvars.iv659.i, 1
  br i1 %i.ccb, label %.lr.ph562.i, label %horizontal_fill.exit363.i, !llvm.loop !112

.lr.ph560.i:                                      ; preds = %.lr.ph560.i.preheader3477, %.lr.ph560.i
  %indvars.iv656.i = phi i64 [ %indvars.iv.next657.i, %.lr.ph560.i ], [ %indvars.iv656.i.ph, %.lr.ph560.i.preheader3477 ] ; 2 uses
  %indvars.iv.next657.i = add nsw i64 %indvars.iv656.i, -1 ; 3 uses
  %i.ccc = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next657.i ; 2 uses
  %i.ccd = load i8, ptr %i.ccc, align 1, !tbaa !67
  %i.cce = and i8 %i.ccd, 15
  %i.ccf = shl nuw nsw i64 %indvars.iv.next657.i, 1
  %i.ccg = getelementptr i8, ptr %.4578.i, i64 %i.ccf ; 2 uses
  %i.cch = getelementptr i8, ptr %i.ccg, i64 1
  store i8 %i.cce, ptr %i.cch, align 1, !tbaa !67
end_hunk_1
begin_hunk_2_@decode_frame:bb.a
  br i1 %epil.iter3736.cmp.not, label %horizontal_fill.exit363.i, label %.lr.ph554.i.epil, !llvm.loop !131

horizontal_fill.exit363.i:                        ; preds = %horizontal_fill.exit363.i.loopexit3480.unr-lcssa, %.lr.ph554.i.epil, %.epil.preheader3741, %horizontal_fill.exit363.i.loopexit3479.unr-lcssa.a, %.lr.ph560.i, %.lr.ph562.i, %.lr.ph564.i, %middle.block3339, %.thread472.i, %bb.pm, %.preheader495.i, %.preheader496.i, %.preheader498.i, %.preheader501.i
  br i1 %spec.select.i, label %bb.po, label %bb.pr

bb.po:                                            ; preds = %horizontal_fill.exit363.i
  %i.cfj = load i32, ptr %i.as, align 8, !tbaa !55 ; 2 uses
  %i.cfk = load i32, ptr %i.at, align 4, !tbaa !56 ; 2 uses
  %i.cfl = udiv i32 %i.cfj, %i.cfk
  %i.cfm = icmp ugt i32 %i.cfl, 8                 ; 4 uses
  %i.cfn = select i1 %i.cfm, i32 %i.bym, i32 %.2.i
  %i.cfo = select i1 %i.cfm, i32 4, i32 3
  %i.cfp = shl i32 %i.cfn, %i.cfo
  %i.cfq = udiv i32 %i.cfp, %i.cfj
  %i.cfr = mul i32 %i.cfq, %i.cfk                 ; 4 uses
  %i.cfs = zext i1 %i.cfm to i32
  %i.cft = shl i32 %i.cfr, %i.cfs
  %.not338.i = icmp sgt i32 %i.cft, %i.byn
  br i1 %.not338.i, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.po
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1840, ptr noundef nonnull @.str.1831, i32 noundef 921) #16
  call void @abort() #17
  unreachable

bb.pq:                                            ; preds = %bb.po
  %i.cfu = add nsw i32 %.2294582.i, %.121604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cfv = load i32, ptr %i.ay, align 8, !tbaa !59
  %.not.i.i = icmp eq i32 %i.cfv, 0
  %i.cfw = load i32, ptr %i.ax, align 4, !tbaa !58
  %i.cfx = uitofp nsz i32 %i.cfw to float         ; 5 uses
  br i1 %.not.i.i, label %.preheader491.i, label %.preheader493.i

.preheader493.i:                                  ; preds = %bb.pq
  %i.cfy = load i8, ptr %i.cu, align 8, !tbaa !67
  %i.cfz = zext i8 %i.cfy to i64
  %i.cga = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cfz
  %i.cgb = load float, ptr %i.cga, align 4, !tbaa !62
  %i.cgc = load i8, ptr %i.cv, align 1, !tbaa !67
  %i.cgd = zext i8 %i.cgc to i64
  %i.cge = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cgd
  %i.cgf = load float, ptr %i.cge, align 4, !tbaa !62
  %i.cgg = insertelement <2 x float> poison, float %i.cgb, i64 0
  %i.cgh = insertelement <2 x float> %i.cgg, float %i.cgf, i64 1
  %i.cgi = fmul nsz <2 x float> %i.cgh, splat (float 6.553500e+04)
  %i.cgj = load <2 x float>, ptr %i.be, align 4, !tbaa !62
  %i.cgk = insertelement <2 x float> poison, float %i.cfx, i64 0
  %i.cgl = shufflevector <2 x float> %i.cgk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cgm = fsub nsz <2 x float> %i.cgl, %i.cgj
  %i.cgn = fdiv nsz <2 x float> %i.cgi, %i.cgm
  %i.cgo = load i8, ptr %i.cw, align 2, !tbaa !67
  %i.cgp = zext i8 %i.cgo to i64
  %i.cgq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cgp
  %i.cgr = load float, ptr %i.cgq, align 4, !tbaa !62
  %i.cgs = fmul nsz float %i.cgr, 6.553500e+04
  %i.cgt = load float, ptr %i.axp, align 4, !tbaa !62
  %i.cgu = fsub nsz float %i.cfx, %i.cgt
  %i.cgv = fdiv nsz float %i.cgs, %i.cgu
  %i.cgw = load i8, ptr %i.cx, align 1, !tbaa !67
  %i.cgx = zext i8 %i.cgw to i64
  %i.cgy = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cgx
  br label %.loopexit492.i

.preheader491.i:                                  ; preds = %bb.pq
  %i.cgz = load <2 x float>, ptr %i.bi, align 4, !tbaa !62
  %i.cha = fmul nsz <2 x float> %i.cgz, splat (float 6.553500e+04)
  %i.chb = load <2 x float>, ptr %i.be, align 4, !tbaa !62
  %i.chc = insertelement <2 x float> poison, float %i.cfx, i64 0
  %i.chd = shufflevector <2 x float> %i.chc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.che = fsub nsz <2 x float> %i.chd, %i.chb
  %i.chf = fdiv nsz <2 x float> %i.cha, %i.che
  %i.chg = load float, ptr %i.axt, align 4, !tbaa !62
  %i.chh = fmul nsz float %i.chg, 6.553500e+04
  %i.chi = load float, ptr %i.axp, align 4, !tbaa !62
  %i.chj = fsub nsz float %i.cfx, %i.chi
  %i.chk = fdiv nsz float %i.chh, %i.chj
  br label %.loopexit492.i

.loopexit492.i:                                   ; preds = %.preheader491.i, %.preheader493.i
  %.sink2843.in = phi ptr [ %i.axu, %.preheader491.i ], [ %i.cgy, %.preheader493.i ]
  %.sink = phi float [ %i.chk, %.preheader491.i ], [ %i.cgv, %.preheader493.i ]
  %i.chl = phi <2 x float> [ %i.chf, %.preheader491.i ], [ %i.cgn, %.preheader493.i ]
  %.sink2843 = load float, ptr %.sink2843.in, align 4, !tbaa !62
  %i.chm = fmul nsz float %.sink2843, 6.553500e+04
  %i.chn = load float, ptr %i.axr, align 8, !tbaa !62
  %i.cho = fsub nsz float %i.cfx, %i.chn
  %i.chp = fdiv nsz float %i.chm, %i.cho
  store <2 x float> %i.chl, ptr %i.a, align 16, !tbaa !62
  store float %.sink, ptr %i.axq, align 8, !tbaa !62
  store float %i.chp, ptr %i.axs, align 4, !tbaa !62
  %i.chq = icmp sgt i32 %i.cfr, 0                 ; 2 uses
  %i.chr = shl i32 %i.cfu, 1
  %i.chs = and i32 %i.chr, 2                      ; 2 uses
  br i1 %i.cfm, label %.preheader488.i, label %.preheader489.i

.preheader489.i:                                  ; preds = %.loopexit492.i
  br i1 %i.chq, label %.preheader475.i, label %dng_blit.exit.i

.preheader488.i:                                  ; preds = %.loopexit492.i
  br i1 %i.chq, label %.preheader.i, label %dng_blit.exit.i

.preheader.i:                                     ; preds = %.preheader488.i, %.preheader.i
  %.095.i573.i = phi ptr [ %i.cht, %.preheader.i ], [ %.4578.i, %.preheader488.i ] ; 3 uses
  %.2.i571.i = phi i32 [ %i.cim, %.preheader.i ], [ 0, %.preheader488.i ] ; 2 uses
  %i.cht = getelementptr i8, ptr %.095.i573.i, i64 2
  %i.chu = load i16, ptr %.095.i573.i, align 2, !tbaa !60
  %i.chv = and i32 %.2.i571.i, 1
  %i.chw = or disjoint i32 %i.chv, %i.chs
  %i.chx = zext nneg i32 %i.chw to i64            ; 2 uses
  %i.chy = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.chx
  %i.chz = load float, ptr %i.chy, align 4, !tbaa !62
  %i.cia = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.chx
  %i.cib = load float, ptr %i.cia, align 4, !tbaa !62
  %i.cic = zext i16 %i.chu to i64
  %i.cid = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cic
  %i.cie = load i16, ptr %i.cid, align 2, !tbaa !60
  %i.cif = uitofp nsz i16 %i.cie to float
  %i.cig = fsub nsz float %i.cif, %i.chz
  %i.cih = fmul nsz float %i.cib, %i.cig
  %i.cii = call i64 @llvm.lrint.i64.f32(float %i.cih) ; 2 uses
  %i.cij = trunc i64 %i.cii to i32                ; 2 uses
  %.not.i347.i = icmp ult i32 %i.cij, 65536
  %isnotneg.i348.i = icmp sgt i32 %i.cij, -1
  %i.cik = sext i1 %isnotneg.i348.i to i16
  %i.cil = trunc i64 %i.cii to i16
  %.0.i349.i = select i1 %.not.i347.i, i16 %i.cil, i16 %i.cik
  store i16 %.0.i349.i, ptr %.095.i573.i, align 2, !tbaa !60
  %i.cim = add nuw nsw i32 %.2.i571.i, 1          ; 2 uses
  %i.cin = icmp slt i32 %i.cim, %i.cfr
  br i1 %i.cin, label %.preheader.i, label %dng_blit.exit.i, !llvm.loop !2

.preheader475.i:                                  ; preds = %.preheader489.i, %.preheader475.i
  %.0.i569.i = phi ptr [ %i.cio, %.preheader475.i ], [ %.4578.i, %.preheader489.i ] ; 3 uses
  %.3.i567.i = phi i32 [ %i.cjj, %.preheader475.i ], [ 0, %.preheader489.i ] ; 2 uses
  %i.cio = getelementptr i8, ptr %.0.i569.i, i64 1
  %i.cip = load i8, ptr %.0.i569.i, align 1, !tbaa !67
  %i.ciq = and i32 %.3.i567.i, 1
  %i.cir = or disjoint i32 %i.ciq, %i.chs
  %i.cis = zext nneg i32 %i.cir to i64            ; 2 uses
  %i.cit = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cis
  %i.ciu = load float, ptr %i.cit, align 4, !tbaa !62
  %i.civ = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cis
  %i.ciw = load float, ptr %i.civ, align 4, !tbaa !62
  %i.cix = zext i8 %i.cip to i64
  %i.ciy = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cix
  %i.ciz = load i16, ptr %i.ciy, align 2, !tbaa !60
  %i.cja = uitofp nsz i16 %i.ciz to float
  %i.cjb = fsub nsz float %i.cja, %i.ciu
  %i.cjc = fmul nsz float %i.ciw, %i.cjb
  %i.cjd = call i64 @llvm.lrint.i64.f32(float %i.cjc) ; 2 uses
  %i.cje = trunc i64 %i.cjd to i32                ; 2 uses
  %.not.i345.i = icmp ult i32 %i.cje, 65536
  %isnotneg.i.i = icmp sgt i32 %i.cje, -1
  %i.cjf = sext i1 %isnotneg.i.i to i16
  %i.cjg = trunc i64 %i.cjd to i16
  %.0.i346.i = select i1 %.not.i345.i, i16 %i.cjg, i16 %i.cjf
  %i.cjh = lshr i16 %.0.i346.i, 8
  %i.cji = trunc nuw i16 %i.cjh to i8
  store i8 %i.cji, ptr %.0.i569.i, align 1, !tbaa !67
  %i.cjj = add nuw nsw i32 %.3.i567.i, 1          ; 2 uses
  %i.cjk = icmp slt i32 %i.cjj, %i.cfr
  br i1 %i.cjk, label %.preheader475.i, label %dng_blit.exit.i, !llvm.loop !3

dng_blit.exit.i:                                  ; preds = %.preheader475.i, %.preheader.i, %.preheader488.i, %.preheader489.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.pr

bb.pr:                                            ; preds = %dng_blit.exit.i, %horizontal_fill.exit363.i
  %i.cjl = getelementptr inbounds i8, ptr %.1305576.i, i64 %i.byi
  br label %.loopexit504.i

.lr.ph550.i:                                      ; preds = %.preheader505.i, %horizontal_fill.exit.i
  %.0290549.i = phi i32 [ %.1291.i, %horizontal_fill.exit.i ], [ 0, %.preheader505.i ] ; 11 uses
  %.2306548.i = phi ptr [ %.4308.i, %horizontal_fill.exit.i ], [ %.1305576.i, %.preheader505.i ] ; 10 uses
  %i.cjm = ptrtoint ptr %.2306548.i to i64
  %i.cjn = sub i64 %i.byh, %i.cjm
  %i.cjo = icmp slt i64 %i.cjn, 2
  br i1 %i.cjo, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %.lr.ph550.i
  %i.cjp = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cjp, i32 noundef 16, ptr noundef nonnull @.str.1841) #16
  br label %tiff_unpack_strip.exit.thread

bb.pt:                                            ; preds = %.lr.ph550.i
  %i.cjq = load i32, ptr %i.aw, align 4, !tbaa !201
  %.not334.i = icmp eq i32 %i.cjq, 0
  br i1 %.not334.i, label %bb.pv, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.cjr = load i8, ptr %.2306548.i, align 1, !tbaa !67
  %i.cjs = zext i8 %i.cjr to i64
  %i.cjt = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cjs
  br label %bb.pv

bb.pv:                                            ; preds = %bb.pu, %bb.pt
  %.in.in.i = phi ptr [ %i.cjt, %bb.pu ], [ %.2306548.i, %bb.pt ]
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !67 ; 7 uses
  %i.cju = sext i8 %.in.i to i32                  ; 2 uses
  %.3307.i = getelementptr i8, ptr %.2306548.i, i64 1 ; 9 uses
  %i.cjv = icmp sgt i8 %.in.i, -1
  br i1 %i.cjv, label %bb.pw, label %bb.qc

bb.pw:                                            ; preds = %bb.pv
  %i.cjw = add nuw nsw i32 %i.cju, 1              ; 3 uses
  %i.cjx = add nsw i32 %i.cjw, %.0290549.i        ; 2 uses
  %i.cjy = icmp sgt i32 %i.cjx, %.2.i
  br i1 %i.cjy, label %._crit_edge673.i, label %bb.px

._crit_edge673.i:                                 ; preds = %bb.pw
  %.pre674.i = load ptr, ptr %i.bo, align 8, !tbaa !43
  br label %split.i

bb.px:                                            ; preds = %bb.pw
  %i.cjz = ptrtoint ptr %.3307.i to i64
  %i.cka = sub i64 %i.byh, %i.cjz
  %i.ckb = zext nneg i32 %i.cjw to i64            ; 3 uses
  %i.ckc = icmp slt i64 %i.cka, %i.ckb
  %.pre675.i = load ptr, ptr %i.bo, align 8, !tbaa !43 ; 2 uses
  br i1 %i.ckc, label %split.i, label %bb.py

split.i:                                          ; preds = %bb.px, %._crit_edge673.i
  %i.ckd = phi ptr [ %.pre674.i, %._crit_edge673.i ], [ %.pre675.i, %bb.px ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ckd, i32 noundef 16, ptr noundef nonnull @.str.1842) #16
  br label %tiff_unpack_strip.exit.thread

bb.py:                                            ; preds = %bb.px
  %i.cke = load i32, ptr %i.as, align 8, !tbaa !55
  %i.ckf = getelementptr inbounds nuw i8, ptr %.pre675.i, i64 136
  %i.ckg = load i32, ptr %i.ckf, align 8, !tbaa !82
  %i.ckh = icmp eq i32 %i.ckg, 11
  %i.cki = select i1 %i.ckh, i32 %i.cke, i32 0    ; 5 uses
  switch i32 %i.cki, label %bb.qb [
    i32 1, label %.lr.ph547.preheader.i
    i32 2, label %.lr.ph545.preheader.i
    i32 4, label %.lr.ph543.preheader.i
    i32 10, label %bb.pz
    i32 12, label %bb.pz
    i32 14, label %bb.pz
  ]

.lr.ph543.preheader.i:                            ; preds = %bb.py
  %narrow717.i = add nuw i8 %.in.i, 1
  %i.ckj = zext i8 %narrow717.i to i64            ; 8 uses
  %i.ckk = sext i32 %.0290549.i to i64            ; 4 uses
  %min.iters.check3352 = icmp ult i8 %.in.i, 7
  br i1 %min.iters.check3352, label %.lr.ph543.i.preheader, label %vector.memcheck3342

vector.memcheck3342:                              ; preds = %.lr.ph543.preheader.i
  %i.ckl = shl nsw i64 %i.ckk, 1
  %scevgep3344.a = getelementptr i8, ptr %.4578.i, i64 %i.ckl
  %i.ckm = add nsw i64 %i.ckk, %i.ckj
  %i.ckn = shl nsw i64 %i.ckm, 1
  %scevgep3345.a = getelementptr i8, ptr %.4578.i, i64 %i.ckn
  %scevgep3346.a = getelementptr i8, ptr %.2306548.i, i64 1
  %scevgep3347 = getelementptr i8, ptr %scevgep3346.a, i64 %i.ckj
  %bound03348 = icmp ult ptr %scevgep3344.a, %scevgep3347
  %bound13349 = icmp ult ptr %.3307.i, %scevgep3345.a
  %found.conflict3350 = and i1 %bound03348, %bound13349
  br i1 %found.conflict3350, label %.lr.ph543.i.preheader, label %vector.ph3353

vector.ph3353:                                    ; preds = %vector.memcheck3342
  %n.vec3354 = and i64 %i.ckj, 248                ; 2 uses
  %i.cko = and i64 %i.ckj, 7
  %invariant.op3971 = add i64 -1, %i.ckk
  br label %vector.body3355

vector.body3355:                                  ; preds = %vector.body3355, %vector.ph3353
  %index3356 = phi i64 [ 0, %vector.ph3353 ], [ %index.next3364, %vector.body3355 ] ; 2 uses
  %i.ckp = sub i64 %i.ckj, %index3356             ; 2 uses
  %i.ckq = getelementptr i8, ptr %.2306548.i, i64 %i.ckp
  %i.ckr = getelementptr i8, ptr %i.ckq, i64 -7
  %wide.load3357 = load <8 x i8>, ptr %i.ckr, align 1, !tbaa !67, !alias.scope !263 ; 2 uses
  %i.cks = and <8 x i8> %wide.load3357, splat (i8 15)
  %.reass3972 = add i64 %i.ckp, %invariant.op3971
  %i.ckt = shl nsw i64 %.reass3972, 1
  %i.cku = getelementptr i8, ptr %.4578.i, i64 %i.ckt
  %i.ckv = lshr <8 x i8> %wide.load3357, splat (i8 4)
  %i.ckw = getelementptr i8, ptr %i.cku, i64 -14
  %interleaved.vec3363 = shufflevector <8 x i8> %i.ckv, <8 x i8> %i.cks, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec3363, ptr %i.ckw, align 1, !tbaa !67, !alias.scope !264, !noalias !263
  %index.next3364 = add nuw i64 %index3356, 8     ; 2 uses
  %i.ckx = icmp eq i64 %index.next3364, %n.vec3354
  br i1 %i.ckx, label %middle.block3365, label %vector.body3355, !llvm.loop !135

middle.block3365:                                 ; preds = %vector.body3355
  %cmp.n3366 = icmp eq i64 %n.vec3354, %i.ckj
  br i1 %cmp.n3366, label %horizontal_fill.exit357.i, label %.lr.ph543.i.preheader

.lr.ph543.i.preheader:                            ; preds = %vector.memcheck3342, %.lr.ph543.preheader.i, %middle.block3365
  %indvars.iv632.i.ph = phi i64 [ %i.ckj, %vector.memcheck3342 ], [ %i.ckj, %.lr.ph543.preheader.i ], [ %i.cko, %middle.block3365 ]
  br label %.lr.ph543.i

.lr.ph545.preheader.i:                            ; preds = %bb.py
  %narrow718.i = add nuw i8 %.in.i, 1
  %i.cky = zext i8 %narrow718.i to i64
  %i.ckz = sext i32 %.0290549.i to i64
  br label %.lr.ph545.i

.lr.ph547.preheader.i:                            ; preds = %bb.py
  %narrow719.i = add nuw i8 %.in.i, 1
  %i.cla = zext i8 %narrow719.i to i64
  %i.clb = sext i32 %.0290549.i to i64
  br label %.lr.ph547.i

.lr.ph547.i:                                      ; preds = %.lr.ph547.i, %.lr.ph547.preheader.i
  %indvars.iv638.i = phi i64 [ %i.cla, %.lr.ph547.preheader.i ], [ %indvars.iv.next639.i, %.lr.ph547.i ] ; 3 uses
  %indvars.iv.next639.i = add nsw i64 %indvars.iv638.i, -1 ; 2 uses
  %i.clc = getelementptr i8, ptr %.2306548.i, i64 %indvars.iv638.i ; 8 uses
  %i.cld = load i8, ptr %i.clc, align 1, !tbaa !67
  %i.cle = and i8 %i.cld, 1
  %i.clf = add nsw i64 %indvars.iv.next639.i, %i.clb
  %i.clg = shl nsw i64 %i.clf, 3
  %i.clh = getelementptr i8, ptr %.4578.i, i64 %i.clg ; 8 uses
  %i.cli = getelementptr i8, ptr %i.clh, i64 7
  store i8 %i.cle, ptr %i.cli, align 1, !tbaa !67
  %i.clj = load i8, ptr %i.clc, align 1, !tbaa !67
  %i.clk = lshr i8 %i.clj, 1
  %i.cll = and i8 %i.clk, 1
  %i.clm = getelementptr i8, ptr %i.clh, i64 6
  store i8 %i.cll, ptr %i.clm, align 1, !tbaa !67
  %i.cln = load i8, ptr %i.clc, align 1, !tbaa !67
  %i.clo = lshr i8 %i.cln, 2
  %i.clp = and i8 %i.clo, 1
  %i.clq = getelementptr i8, ptr %i.clh, i64 5
  store i8 %i.clp, ptr %i.clq, align 1, !tbaa !67
  %i.clr = load i8, ptr %i.clc, align 1, !tbaa !67
  %i.cls = lshr i8 %i.clr, 3
  %i.clt = and i8 %i.cls, 1
  %i.clu = getelementptr i8, ptr %i.clh, i64 4
  store i8 %i.clt, ptr %i.clu, align 1, !tbaa !67
  %i.clv = load i8, ptr %i.clc, align 1, !tbaa !67
  %i.clw = lshr i8 %i.clv, 4
  %i.clx = and i8 %i.clw, 1
  %i.cly = getelementptr i8, ptr %i.clh, i64 3
  store i8 %i.clx, ptr %i.cly, align 1, !tbaa !67
  %i.clz = load i8, ptr %i.clc, align 1, !tbaa !67
  %i.cma = lshr i8 %i.clz, 5
  %i.cmb = and i8 %i.cma, 1
  %i.cmc = getelementptr i8, ptr %i.clh, i64 2
  store i8 %i.cmb, ptr %i.cmc, align 1, !tbaa !67
  %i.cmd = load i8, ptr %i.clc, align 1, !tbaa !67
  %i.cme = lshr i8 %i.cmd, 6
  %i.cmf = and i8 %i.cme, 1
  %i.cmg = getelementptr i8, ptr %i.clh, i64 1
  store i8 %i.cmf, ptr %i.cmg, align 1, !tbaa !67
  %i.cmh = load i8, ptr %i.clc, align 1, !tbaa !67
  %i.cmi = lshr i8 %i.cmh, 7
  store i8 %i.cmi, ptr %i.clh, align 1, !tbaa !67
  %i.cmj = icmp samesign ugt i64 %indvars.iv638.i, 1
  br i1 %i.cmj, label %.lr.ph547.i, label %horizontal_fill.exit357.i, !llvm.loop !111

.lr.ph545.i:                                      ; preds = %.lr.ph545.i, %.lr.ph545.preheader.i
  %indvars.iv635.i = phi i64 [ %i.cky, %.lr.ph545.preheader.i ], [ %indvars.iv.next636.i, %.lr.ph545.i ] ; 3 uses
  %indvars.iv.next636.i = add nsw i64 %indvars.iv635.i, -1 ; 2 uses
  %i.cmk = getelementptr i8, ptr %.2306548.i, i64 %indvars.iv635.i ; 4 uses
  %i.cml = load i8, ptr %i.cmk, align 1, !tbaa !67
  %i.cmm = and i8 %i.cml, 3
  %i.cmn = add nsw i64 %indvars.iv.next636.i, %i.ckz
  %i.cmo = shl nsw i64 %i.cmn, 2
  %i.cmp = getelementptr i8, ptr %.4578.i, i64 %i.cmo ; 4 uses
  %i.cmq = getelementptr i8, ptr %i.cmp, i64 3
  store i8 %i.cmm, ptr %i.cmq, align 1, !tbaa !67
  %i.cmr = load i8, ptr %i.cmk, align 1, !tbaa !67
  %i.cms = lshr i8 %i.cmr, 2
  %i.cmt = and i8 %i.cms, 3
  %i.cmu = getelementptr i8, ptr %i.cmp, i64 2
  store i8 %i.cmt, ptr %i.cmu, align 1, !tbaa !67
  %i.cmv = load i8, ptr %i.cmk, align 1, !tbaa !67
  %i.cmw = lshr i8 %i.cmv, 4
  %i.cmx = and i8 %i.cmw, 3
  %i.cmy = getelementptr i8, ptr %i.cmp, i64 1
  store i8 %i.cmx, ptr %i.cmy, align 1, !tbaa !67
  %i.cmz = load i8, ptr %i.cmk, align 1, !tbaa !67
  %i.cna = lshr i8 %i.cmz, 6
  store i8 %i.cna, ptr %i.cmp, align 1, !tbaa !67
  %i.cnb = icmp samesign ugt i64 %indvars.iv635.i, 1
  br i1 %i.cnb, label %.lr.ph545.i, label %horizontal_fill.exit357.i, !llvm.loop !112

.lr.ph543.i:                                      ; preds = %.lr.ph543.i.preheader, %.lr.ph543.i
  %indvars.iv632.i = phi i64 [ %indvars.iv.next633.i, %.lr.ph543.i ], [ %indvars.iv632.i.ph, %.lr.ph543.i.preheader ] ; 3 uses
  %indvars.iv.next633.i = add nsw i64 %indvars.iv632.i, -1 ; 2 uses
  %i.cnc = getelementptr i8, ptr %.2306548.i, i64 %indvars.iv632.i ; 2 uses
  %i.cnd = load i8, ptr %i.cnc, align 1, !tbaa !67
  %i.cne = and i8 %i.cnd, 15
  %i.cnf = add nsw i64 %indvars.iv.next633.i, %i.ckk
  %i.cng = shl nsw i64 %i.cnf, 1
  %i.cnh = getelementptr i8, ptr %.4578.i, i64 %i.cng ; 2 uses
  %i.cni = getelementptr i8, ptr %i.cnh, i64 1
  store i8 %i.cne, ptr %i.cni, align 1, !tbaa !67
  %i.cnj = load i8, ptr %i.cnc, align 1, !tbaa !67
  %i.cnk = lshr i8 %i.cnj, 4
  store i8 %i.cnk, ptr %i.cnh, align 1, !tbaa !67
  %i.cnl = icmp samesign ugt i64 %indvars.iv632.i, 1
  br i1 %i.cnl, label %.lr.ph543.i, label %horizontal_fill.exit357.i, !llvm.loop !136

bb.pz:                                            ; preds = %bb.py, %bb.py, %bb.py
  %i.cnm = shl nuw nsw i32 %i.cjw, 3
  %i.cnn = add nuw nsw i32 %i.cnm, 8              ; 2 uses
  %i.cno = load i32, ptr %i.dp, align 8, !tbaa !65 ; 4 uses
  %i.cnp = icmp sgt i32 %i.cno, 0
  br i1 %i.cnp, label %.lr.ph541.i, label %horizontal_fill.exit357.i

.lr.ph541.i:                                      ; preds = %bb.pz
  %i.cnq = sub nuw nsw i32 16, %i.cki
  %i.cnr = load i32, ptr %i.ap, align 4, !tbaa !197
  %i.cns = add i32 %i.cnr, -1
  %spec.select.i352.i = icmp ult i32 %i.cns, 2
  %i.cnt = sub nuw nsw i32 32, %i.cki             ; 3 uses
  %i.cnu = select i1 %spec.select.i352.i, i32 0, i32 %i.cnq ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.cno to i64 ; 2 uses
  %xtraiter3725 = and i64 %wide.trip.count.i, 1
  %i.cnv = icmp eq i32 %i.cno, 1
  br i1 %i.cnv, label %.epil.preheader3724, label %.lr.ph541.i.new

.lr.ph541.i.new:                                  ; preds = %.lr.ph541.i
  %unroll_iter3728 = and i64 %wide.trip.count.i, 2147483646
  br label %bb.qa

bb.qa:                                            ; preds = %bb.qa, %.lr.ph541.i.new
  %indvars.iv629.i = phi i64 [ 0, %.lr.ph541.i.new ], [ %indvars.iv.next630.i.1, %bb.qa ] ; 3 uses
  %.sroa.4452.0539.i = phi i32 [ 0, %.lr.ph541.i.new ], [ %i.cos, %bb.qa ] ; 3 uses
  %niter3729 = phi i64 [ 0, %.lr.ph541.i.new ], [ %niter3729.next.1, %bb.qa ]
  %i.cnw = lshr i32 %.sroa.4452.0539.i, 3
  %i.cnx = zext nneg i32 %i.cnw to i64
  %i.cny = getelementptr inbounds nuw i8, ptr %.3307.i, i64 %i.cnx
  %i.cnz = load i32, ptr %i.cny, align 1, !tbaa !67
  %i.coa = call i32 @llvm.bswap.i32(i32 %i.cnz)
  %i.cob = and i32 %.sroa.4452.0539.i, 7
  %i.coc = shl i32 %i.coa, %i.cob
  %i.cod = lshr i32 %i.coc, %i.cnt
  %i.coe = add i32 %.sroa.4452.0539.i, %i.cki
  %i.cof = call i32 @llvm.umin.i32(i32 %i.cnn, i32 %i.coe) ; 3 uses
  %i.cog = shl nuw nsw i32 %i.cod, %i.cnu
  %i.coh = trunc i32 %i.cog to i16
  %i.coi = getelementptr inbounds nuw [2 x i8], ptr %.4578.i, i64 %indvars.iv629.i
  store i16 %i.coh, ptr %i.coi, align 2, !tbaa !60
  %i.coj = lshr i32 %i.cof, 3
  %i.cok = zext nneg i32 %i.coj to i64
  %i.col = getelementptr inbounds nuw i8, ptr %.3307.i, i64 %i.cok
  %i.com = load i32, ptr %i.col, align 1, !tbaa !67
  %i.con = call i32 @llvm.bswap.i32(i32 %i.com)
  %i.coo = and i32 %i.cof, 7
  %i.cop = shl i32 %i.con, %i.coo
  %i.coq = lshr i32 %i.cop, %i.cnt
  %i.cor = add i32 %i.cof, %i.cki
  %i.cos = call i32 @llvm.umin.i32(i32 %i.cnn, i32 %i.cor) ; 2 uses
  %i.cot = shl nuw nsw i32 %i.coq, %i.cnu
  %i.cou = trunc i32 %i.cot to i16
  %i.cov = getelementptr inbounds nuw [2 x i8], ptr %.4578.i, i64 %indvars.iv629.i
  %i.cow = getelementptr inbounds nuw i8, ptr %i.cov, i64 2
  store i16 %i.cou, ptr %i.cow, align 2, !tbaa !60
  %indvars.iv.next630.i.1 = add nuw nsw i64 %indvars.iv629.i, 2 ; 2 uses
  %niter3729.next.1 = add i64 %niter3729, 2       ; 2 uses
  %niter3729.ncmp.1 = icmp eq i64 %niter3729.next.1, %unroll_iter3728
  br i1 %niter3729.ncmp.1, label %horizontal_fill.exit357.i.loopexit3472.unr-lcssa, label %bb.qa, !llvm.loop !123

bb.qb:                                            ; preds = %bb.py
end_hunk_2
begin_hunk_3_@decode_frame:bb.a
  %i.cpj = getelementptr inbounds nuw [2 x i8], ptr %.4578.i, i64 %indvars.iv629.i.epil.init
  store i16 %i.cpi, ptr %i.cpj, align 2, !tbaa !60
  br label %horizontal_fill.exit357.i

horizontal_fill.exit357.i:                        ; preds = %.epil.preheader3724, %horizontal_fill.exit357.i.loopexit3472.unr-lcssa, %.lr.ph543.i, %.lr.ph545.i, %.lr.ph547.i, %middle.block3365, %bb.qb, %bb.pz
  %i.cpk = getelementptr inbounds nuw i8, ptr %.3307.i, i64 %i.ckb
  br label %horizontal_fill.exit.i

bb.qc:                                            ; preds = %bb.pv
  %.not335.i = icmp eq i8 %.in.i, -128
  br i1 %.not335.i, label %horizontal_fill.exit.i, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.cpl = sub nsw i32 1, %i.cju                  ; 7 uses
  %i.cpm = add nsw i32 %i.cpl, %.0290549.i        ; 10 uses
  %i.cpn = icmp sgt i32 %i.cpm, %.2.i
  br i1 %i.cpn, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  %i.cpo = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cpo, i32 noundef 16, ptr noundef nonnull @.str.1843) #16
  br label %tiff_unpack_strip.exit.thread

bb.qf:                                            ; preds = %bb.qd
  %i.cpp = getelementptr inbounds nuw i8, ptr %.2306548.i, i64 2 ; 9 uses
  %i.cpq = load i8, ptr %.3307.i, align 1, !tbaa !67 ; 15 uses
  %i.cpr = load i32, ptr %i.as, align 8, !tbaa !55
  %i.cps = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.cpt = getelementptr inbounds nuw i8, ptr %i.cps, i64 136
  %i.cpu = load i32, ptr %i.cpt, align 8, !tbaa !82
  %i.cpv = icmp eq i32 %i.cpu, 11
  %i.cpw = select i1 %i.cpv, i32 %i.cpr, i32 0
  switch i32 %i.cpw, label %bb.qi [
    i32 1, label %.lr.ph538.i
    i32 2, label %.lr.ph536.i
    i32 4, label %iter.check3391
    i32 10, label %horizontal_fill.exit.i
    i32 12, label %horizontal_fill.exit.i
    i32 14, label %horizontal_fill.exit.i
  ]

iter.check3391:                                   ; preds = %bb.qf
  %i.cpx = and i8 %i.cpq, 15                      ; 3 uses
  %i.cpy = lshr i8 %i.cpq, 4                      ; 3 uses
  %i.cpz = zext nneg i32 %i.cpl to i64            ; 17 uses
  %i.cqa = sext i32 %.0290549.i to i64            ; 10 uses
  %min.iters.check3369 = icmp ult i32 %i.cpl, 4
  br i1 %min.iters.check3369, label %vec.epilog.scalar.ph3392.preheader, label %vector.main.loop.iter.check3370

vector.main.loop.iter.check3370:                  ; preds = %iter.check3391
  %min.iters.check3371 = icmp ult i32 %i.cpl, 16
  br i1 %min.iters.check3371, label %vec.epilog.ph3395, label %vector.ph3372

vector.ph3372:                                    ; preds = %vector.main.loop.iter.check3370
  %i.cqb = and i64 %i.cpz, 12
  %n.vec3373 = and i64 %i.cpz, 240                ; 9 uses
  %i.cqc = and i64 %i.cpz, 15
  %broadcast.splatinsert3374 = insertelement <8 x i8> poison, i8 %i.cpx, i64 0 ; 8 uses
  %broadcast.splatinsert3376 = insertelement <8 x i8> poison, i8 %i.cpy, i64 0 ; 8 uses
  %i.cqd = add nsw i64 %i.cpz, -1
  %i.cqe = add nsw i64 %i.cqd, %i.cqa
  %i.cqf = shl nsw i64 %i.cqe, 1
  %i.cqg = getelementptr i8, ptr %.4578.i, i64 %i.cqf ; 2 uses
  %i.cqh = getelementptr i8, ptr %i.cqg, i64 -14
  %i.cqi = getelementptr i8, ptr %i.cqg, i64 -30
  %interleaved.vec3382 = shufflevector <8 x i8> %broadcast.splatinsert3376, <8 x i8> %broadcast.splatinsert3374, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec3382, ptr %i.cqh, align 1, !tbaa !67
  store <16 x i8> %interleaved.vec3382, ptr %i.cqi, align 1, !tbaa !67
  %i.cqj = icmp eq i64 %n.vec3373, 16
  br i1 %i.cqj, label %middle.block3387, label %vector.body3378.1

vector.body3378.1:                                ; preds = %vector.ph3372
  %i.cqk = add nsw i64 %i.cpz, -17
  %i.cql = add nsw i64 %i.cqk, %i.cqa
  %i.cqm = shl nsw i64 %i.cql, 1
  %i.cqn = getelementptr i8, ptr %.4578.i, i64 %i.cqm ; 2 uses
  %i.cqo = getelementptr i8, ptr %i.cqn, i64 -14
  %i.cqp = getelementptr i8, ptr %i.cqn, i64 -30
  %interleaved.vec3382.1 = shufflevector <8 x i8> %broadcast.splatinsert3376, <8 x i8> %broadcast.splatinsert3374, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec3382.1, ptr %i.cqo, align 1, !tbaa !67
  store <16 x i8> %interleaved.vec3382.1, ptr %i.cqp, align 1, !tbaa !67
  %i.cqq = icmp eq i64 %n.vec3373, 32
  br i1 %i.cqq, label %middle.block3387, label %vector.body3378.2

vector.body3378.2:                                ; preds = %vector.body3378.1
  %i.cqr = add nsw i64 %i.cpz, -33
  %i.cqs = add nsw i64 %i.cqr, %i.cqa
  %i.cqt = shl nsw i64 %i.cqs, 1
  %i.cqu = getelementptr i8, ptr %.4578.i, i64 %i.cqt ; 2 uses
  %i.cqv = getelementptr i8, ptr %i.cqu, i64 -14
  %i.cqw = getelementptr i8, ptr %i.cqu, i64 -30
  %interleaved.vec3382.2 = shufflevector <8 x i8> %broadcast.splatinsert3376, <8 x i8> %broadcast.splatinsert3374, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec3382.2, ptr %i.cqv, align 1, !tbaa !67
  store <16 x i8> %interleaved.vec3382.2, ptr %i.cqw, align 1, !tbaa !67
  %i.cqx = icmp eq i64 %n.vec3373, 48
  br i1 %i.cqx, label %middle.block3387, label %vector.body3378.3

vector.body3378.3:                                ; preds = %vector.body3378.2
  %i.cqy = add nsw i64 %i.cpz, -49
  %i.cqz = add nsw i64 %i.cqy, %i.cqa
  %i.cra = shl nsw i64 %i.cqz, 1
  %i.crb = getelementptr i8, ptr %.4578.i, i64 %i.cra ; 2 uses
  %i.crc = getelementptr i8, ptr %i.crb, i64 -14
  %i.crd = getelementptr i8, ptr %i.crb, i64 -30
  %interleaved.vec3382.3 = shufflevector <8 x i8> %broadcast.splatinsert3376, <8 x i8> %broadcast.splatinsert3374, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec3382.3, ptr %i.crc, align 1, !tbaa !67
  store <16 x i8> %interleaved.vec3382.3, ptr %i.crd, align 1, !tbaa !67
  %i.cre = icmp eq i64 %n.vec3373, 64
  br i1 %i.cre, label %middle.block3387, label %vector.body3378.4

vector.body3378.4:                                ; preds = %vector.body3378.3
  %i.crf = add nsw i64 %i.cpz, -65
  %i.crg = add nsw i64 %i.crf, %i.cqa
  %i.crh = shl nsw i64 %i.crg, 1
  %i.cri = getelementptr i8, ptr %.4578.i, i64 %i.crh ; 2 uses
  %i.crj = getelementptr i8, ptr %i.cri, i64 -14
  %i.crk = getelementptr i8, ptr %i.cri, i64 -30
  %interleaved.vec3382.4 = shufflevector <8 x i8> %broadcast.splatinsert3376, <8 x i8> %broadcast.splatinsert3374, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec3382.4, ptr %i.crj, align 1, !tbaa !67
  store <16 x i8> %interleaved.vec3382.4, ptr %i.crk, align 1, !tbaa !67
  %i.crl = icmp eq i64 %n.vec3373, 80
  br i1 %i.crl, label %middle.block3387, label %vector.body3378.5

vector.body3378.5:                                ; preds = %vector.body3378.4
  %i.crm = add nsw i64 %i.cpz, -81
  %i.crn = add nsw i64 %i.crm, %i.cqa
  %i.cro = shl nsw i64 %i.crn, 1
  %i.crp = getelementptr i8, ptr %.4578.i, i64 %i.cro ; 2 uses
  %i.crq = getelementptr i8, ptr %i.crp, i64 -14
  %i.crr = getelementptr i8, ptr %i.crp, i64 -30
  %interleaved.vec3382.5 = shufflevector <8 x i8> %broadcast.splatinsert3376, <8 x i8> %broadcast.splatinsert3374, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec3382.5, ptr %i.crq, align 1, !tbaa !67
  store <16 x i8> %interleaved.vec3382.5, ptr %i.crr, align 1, !tbaa !67
  %i.crs = icmp eq i64 %n.vec3373, 96
  br i1 %i.crs, label %middle.block3387, label %vector.body3378.6

vector.body3378.6:                                ; preds = %vector.body3378.5
  %i.crt = add nsw i64 %i.cpz, -97
  %i.cru = add nsw i64 %i.crt, %i.cqa
  %i.crv = shl nsw i64 %i.cru, 1
  %i.crw = getelementptr i8, ptr %.4578.i, i64 %i.crv ; 2 uses
  %i.crx = getelementptr i8, ptr %i.crw, i64 -14
  %i.cry = getelementptr i8, ptr %i.crw, i64 -30
  %interleaved.vec3382.6 = shufflevector <8 x i8> %broadcast.splatinsert3376, <8 x i8> %broadcast.splatinsert3374, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec3382.6, ptr %i.crx, align 1, !tbaa !67
  store <16 x i8> %interleaved.vec3382.6, ptr %i.cry, align 1, !tbaa !67
  %i.crz = icmp eq i64 %n.vec3373, 112
  br i1 %i.crz, label %middle.block3387, label %vector.body3378.7

vector.body3378.7:                                ; preds = %vector.body3378.6
  %i.csa = add nsw i64 %i.cpz, -113
  %i.csb = add nsw i64 %i.csa, %i.cqa
  %i.csc = shl nsw i64 %i.csb, 1
  %i.csd = getelementptr i8, ptr %.4578.i, i64 %i.csc ; 2 uses
  %i.cse = getelementptr i8, ptr %i.csd, i64 -14
  %i.csf = getelementptr i8, ptr %i.csd, i64 -30
  %interleaved.vec3382.7 = shufflevector <8 x i8> %broadcast.splatinsert3376, <8 x i8> %broadcast.splatinsert3374, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec3382.7, ptr %i.cse, align 1, !tbaa !67
  store <16 x i8> %interleaved.vec3382.7, ptr %i.csf, align 1, !tbaa !67
  br label %middle.block3387

middle.block3387:                                 ; preds = %vector.body3378.7, %vector.body3378.6, %vector.body3378.5, %vector.body3378.4, %vector.body3378.3, %vector.body3378.2, %vector.body3378.1, %vector.ph3372
  %cmp.n3388 = icmp eq i64 %n.vec3373, %i.cpz
  br i1 %cmp.n3388, label %horizontal_fill.exit.i, label %vec.epilog.iter.check3393

vec.epilog.iter.check3393:                        ; preds = %middle.block3387
  %min.epilog.iters.check3394 = icmp eq i64 %i.cqb, 0
  br i1 %min.epilog.iters.check3394, label %vec.epilog.scalar.ph3392.preheader, label %vec.epilog.ph3395, !prof !265

vec.epilog.ph3395:                                ; preds = %vector.main.loop.iter.check3370, %vec.epilog.iter.check3393
  %vec.epilog.resume.val3389 = phi i64 [ %n.vec3373, %vec.epilog.iter.check3393 ], [ 0, %vector.main.loop.iter.check3370 ]
  %n.vec3396 = and i64 %i.cpz, 252                ; 2 uses
  %i.csg = and i64 %i.cpz, 3
  %broadcast.splatinsert3397 = insertelement <4 x i8> poison, i8 %i.cpx, i64 0
  %broadcast.splatinsert3399 = insertelement <4 x i8> poison, i8 %i.cpy, i64 0
  %invariant.op = add i64 %i.cpz, %i.cqa
  %interleaved.vec3405 = shufflevector <4 x i8> %broadcast.splatinsert3399, <4 x i8> %broadcast.splatinsert3397, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body3401

vec.epilog.vector.body3401:                       ; preds = %vec.epilog.vector.body3401, %vec.epilog.ph3395
  %index3402 = phi i64 [ %vec.epilog.resume.val3389, %vec.epilog.ph3395 ], [ %index.next3406, %vec.epilog.vector.body3401 ] ; 2 uses
  %i.csh = xor i64 %index3402, -1
  %.reass = add i64 %i.csh, %invariant.op
  %i.csi = shl nsw i64 %.reass, 1
  %i.csj = getelementptr i8, ptr %.4578.i, i64 %i.csi
  %i.csk = getelementptr i8, ptr %i.csj, i64 -6
  store <8 x i8> %interleaved.vec3405, ptr %i.csk, align 1, !tbaa !67
  %index.next3406 = add nuw i64 %index3402, 4     ; 2 uses
  %i.csl = icmp eq i64 %index.next3406, %n.vec3396
  br i1 %i.csl, label %vec.epilog.middle.block3407, label %vec.epilog.vector.body3401, !llvm.loop !137

vec.epilog.middle.block3407:                      ; preds = %vec.epilog.vector.body3401
  %cmp.n3408 = icmp eq i64 %n.vec3396, %i.cpz
  br i1 %cmp.n3408, label %horizontal_fill.exit.i, label %vec.epilog.scalar.ph3392.preheader

vec.epilog.scalar.ph3392.preheader:               ; preds = %iter.check3391, %vec.epilog.iter.check3393, %vec.epilog.middle.block3407
  %indvars.iv620.i.ph = phi i64 [ %i.cpz, %iter.check3391 ], [ %i.cqc, %vec.epilog.iter.check3393 ], [ %i.csg, %vec.epilog.middle.block3407 ]
  br label %vec.epilog.scalar.ph3392

.lr.ph536.i:                                      ; preds = %bb.qf
  %i.csm = and i8 %i.cpq, 3                       ; 3 uses
  %i.csn = lshr i8 %i.cpq, 2
  %i.cso = and i8 %i.csn, 3                       ; 3 uses
  %i.csp = lshr i8 %i.cpq, 4
  %i.csq = and i8 %i.csp, 3                       ; 3 uses
  %i.csr = lshr i8 %i.cpq, 6                      ; 3 uses
  %i.css = zext nneg i32 %i.cpl to i64            ; 3 uses
  %i.cst = sext i32 %.0290549.i to i64            ; 3 uses
  %xtraiter3723 = and i64 %i.css, 1
  %lcmp.mod3724.not = icmp eq i64 %xtraiter3723, 0
  br i1 %lcmp.mod3724.not, label %.lr.ph536.i.new, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph536.i
  %indvars.iv.next624.i.prol = add nsw i64 %i.css, -1 ; 2 uses
  %9 = add nsw i64 %indvars.iv.next624.i.prol, %i.cst
  %10 = shl nsw i64 %9, 2
  %11 = getelementptr i8, ptr %.4578.i, i64 %10   ; 4 uses
  %12 = getelementptr i8, ptr %11, i64 3
  store i8 %i.csm, ptr %12, align 1, !tbaa !67
  %13 = getelementptr i8, ptr %11, i64 2
  store i8 %i.cso, ptr %13, align 1, !tbaa !67
  %14 = getelementptr i8, ptr %11, i64 1
  store i8 %i.csq, ptr %14, align 1, !tbaa !67
  store i8 %i.csr, ptr %11, align 1, !tbaa !67
  br label %.lr.ph536.i.new

.lr.ph536.i.new:                                  ; preds = %.lr.ph536.i, %.prol.loopexit.unr-lcssa
  %indvars.iv623.i.unr = phi i64 [ %i.css, %.lr.ph536.i ], [ %indvars.iv.next624.i.prol, %.prol.loopexit.unr-lcssa ]
  %invariant.op3976 = add i64 -1, %i.cst
  br label %bb.qh

.lr.ph538.i:                                      ; preds = %bb.qf
  %i.csu = and i8 %i.cpq, 1                       ; 3 uses
  %i.csv = lshr i8 %i.cpq, 1
  %i.csw = and i8 %i.csv, 1                       ; 3 uses
  %i.csx = lshr i8 %i.cpq, 2
  %i.csy = and i8 %i.csx, 1                       ; 3 uses
  %i.csz = lshr i8 %i.cpq, 3
  %i.cta = lshr i8 %i.cpq, 4
  %i.ctb = lshr i8 %i.cpq, 5
  %i.ctc = lshr i8 %i.cpq, 6
  %i.ctd = insertelement <4 x i8> poison, i8 %i.ctc, i64 0
  %i.cte = insertelement <4 x i8> %i.ctd, i8 %i.ctb, i64 1
  %i.ctf = insertelement <4 x i8> %i.cte, i8 %i.cta, i64 2
  %i.ctg = insertelement <4 x i8> %i.ctf, i8 %i.csz, i64 3
  %i.cth = and <4 x i8> %i.ctg, splat (i8 1)      ; 3 uses
  %i.cti = lshr i8 %i.cpq, 7                      ; 3 uses
  %i.ctj = zext nneg i32 %i.cpl to i64            ; 3 uses
  %i.ctk = sext i32 %.0290549.i to i64            ; 3 uses
  %xtraiter3727 = and i64 %i.ctj, 1
  %lcmp.mod3728.not = icmp eq i64 %xtraiter3727, 0
  br i1 %lcmp.mod3728.not, label %.lr.ph538.i.new, label %.prol.loopexit3726.unr-lcssa

.prol.loopexit3726.unr-lcssa:                     ; preds = %.lr.ph538.i
  %indvars.iv.next627.i.prol = add nsw i64 %i.ctj, -1 ; 2 uses
  %15 = add nsw i64 %indvars.iv.next627.i.prol, %i.ctk
  %16 = shl nsw i64 %15, 3
  %17 = getelementptr i8, ptr %.4578.i, i64 %16   ; 5 uses
  %18 = getelementptr i8, ptr %17, i64 7
  store i8 %i.csu, ptr %18, align 1, !tbaa !67
  %19 = getelementptr i8, ptr %17, i64 6
  store i8 %i.csw, ptr %19, align 1, !tbaa !67
  %20 = getelementptr i8, ptr %17, i64 5
  store i8 %i.csy, ptr %20, align 1, !tbaa !67
  %21 = getelementptr i8, ptr %17, i64 1
  store <4 x i8> %i.cth, ptr %21, align 1, !tbaa !67
  store i8 %i.cti, ptr %17, align 1, !tbaa !67
  br label %.lr.ph538.i.new

.lr.ph538.i.new:                                  ; preds = %.lr.ph538.i, %.prol.loopexit3726.unr-lcssa
  %indvars.iv626.i.unr = phi i64 [ %i.ctj, %.lr.ph538.i ], [ %indvars.iv.next627.i.prol, %.prol.loopexit3726.unr-lcssa ]
  %invariant.op3978 = add i64 -1, %i.ctk
  br label %bb.qg

bb.qg:                                            ; preds = %bb.qg, %.lr.ph538.i.new
  %indvars.iv626.i = phi i64 [ %indvars.iv626.i.unr, %.lr.ph538.i.new ], [ %indvars.iv.next627.i, %bb.qg ] ; 3 uses
  %.reass3979 = add i64 %indvars.iv626.i, %invariant.op3978
  %22 = shl nsw i64 %.reass3979, 3
  %23 = getelementptr i8, ptr %.4578.i, i64 %22   ; 5 uses
  %24 = getelementptr i8, ptr %23, i64 7
  store i8 %i.csu, ptr %24, align 1, !tbaa !67
  %25 = getelementptr i8, ptr %23, i64 6
  store i8 %i.csw, ptr %25, align 1, !tbaa !67
  %26 = getelementptr i8, ptr %23, i64 5
  store i8 %i.csy, ptr %26, align 1, !tbaa !67
  %27 = getelementptr i8, ptr %23, i64 1
  store <4 x i8> %i.cth, ptr %27, align 1, !tbaa !67
  store i8 %i.cti, ptr %23, align 1, !tbaa !67
  %indvars.iv.next627.i = add nsw i64 %indvars.iv626.i, -2 ; 2 uses
  %i.ctl = add nsw i64 %indvars.iv.next627.i, %i.ctk
  %i.ctm = shl nsw i64 %i.ctl, 3
  %i.ctn = getelementptr i8, ptr %.4578.i, i64 %i.ctm ; 5 uses
  %i.cto = getelementptr i8, ptr %i.ctn, i64 7
  store i8 %i.csu, ptr %i.cto, align 1, !tbaa !67
  %i.ctp = getelementptr i8, ptr %i.ctn, i64 6
  store i8 %i.csw, ptr %i.ctp, align 1, !tbaa !67
  %i.ctq = getelementptr i8, ptr %i.ctn, i64 5
  store i8 %i.csy, ptr %i.ctq, align 1, !tbaa !67
  %i.ctr = getelementptr i8, ptr %i.ctn, i64 1
  store <4 x i8> %i.cth, ptr %i.ctr, align 1, !tbaa !67
  store i8 %i.cti, ptr %i.ctn, align 1, !tbaa !67
  %28 = icmp sgt i64 %indvars.iv626.i, 2
  br i1 %28, label %bb.qg, label %horizontal_fill.exit.i, !llvm.loop !111

bb.qh:                                            ; preds = %bb.qh, %.lr.ph536.i.new
  %indvars.iv623.i = phi i64 [ %indvars.iv623.i.unr, %.lr.ph536.i.new ], [ %indvars.iv.next624.i, %bb.qh ] ; 3 uses
  %.reass3977 = add i64 %indvars.iv623.i, %invariant.op3976
  %29 = shl nsw i64 %.reass3977, 2
  %30 = getelementptr i8, ptr %.4578.i, i64 %29   ; 4 uses
  %31 = getelementptr i8, ptr %30, i64 3
  store i8 %i.csm, ptr %31, align 1, !tbaa !67
  %32 = getelementptr i8, ptr %30, i64 2
  store i8 %i.cso, ptr %32, align 1, !tbaa !67
  %33 = getelementptr i8, ptr %30, i64 1
  store i8 %i.csq, ptr %33, align 1, !tbaa !67
  store i8 %i.csr, ptr %30, align 1, !tbaa !67
  %indvars.iv.next624.i = add nsw i64 %indvars.iv623.i, -2 ; 2 uses
  %i.cts = add nsw i64 %indvars.iv.next624.i, %i.cst
  %i.ctt = shl nsw i64 %i.cts, 2
  %i.ctu = getelementptr i8, ptr %.4578.i, i64 %i.ctt ; 4 uses
  %i.ctv = getelementptr i8, ptr %i.ctu, i64 3
  store i8 %i.csm, ptr %i.ctv, align 1, !tbaa !67
  %i.ctw = getelementptr i8, ptr %i.ctu, i64 2
  store i8 %i.cso, ptr %i.ctw, align 1, !tbaa !67
  %i.ctx = getelementptr i8, ptr %i.ctu, i64 1
  store i8 %i.csq, ptr %i.ctx, align 1, !tbaa !67
  store i8 %i.csr, ptr %i.ctu, align 1, !tbaa !67
  %34 = icmp sgt i64 %indvars.iv623.i, 2
  br i1 %34, label %bb.qh, label %horizontal_fill.exit.i, !llvm.loop !112

vec.epilog.scalar.ph3392:                         ; preds = %vec.epilog.scalar.ph3392.preheader, %vec.epilog.scalar.ph3392
  %indvars.iv620.i = phi i64 [ %indvars.iv.next621.i, %vec.epilog.scalar.ph3392 ], [ %indvars.iv620.i.ph, %vec.epilog.scalar.ph3392.preheader ] ; 2 uses
  %indvars.iv.next621.i = add nsw i64 %indvars.iv620.i, -1 ; 2 uses
  %i.cty = add nsw i64 %indvars.iv.next621.i, %i.cqa
  %i.ctz = shl nsw i64 %i.cty, 1
  %i.cua = getelementptr i8, ptr %.4578.i, i64 %i.ctz ; 2 uses
  %i.cub = getelementptr i8, ptr %i.cua, i64 1
  store i8 %i.cpx, ptr %i.cub, align 1, !tbaa !67
  store i8 %i.cpy, ptr %i.cua, align 1, !tbaa !67
  %i.cuc = icmp samesign ugt i64 %indvars.iv620.i, 1
  br i1 %i.cuc, label %vec.epilog.scalar.ph3392, label %horizontal_fill.exit.i, !llvm.loop !138

bb.qi:                                            ; preds = %bb.qf
  %i.cud = sext i32 %.0290549.i to i64
  %i.cue = getelementptr inbounds i8, ptr %.4578.i, i64 %i.cud
  %i.cuf = zext nneg i32 %i.cpl to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.cue, i8 %i.cpq, i64 %i.cuf, i1 false)
  br label %horizontal_fill.exit.i

horizontal_fill.exit.i:                           ; preds = %vec.epilog.scalar.ph3392, %bb.qh, %bb.qg, %middle.block3387, %vec.epilog.middle.block3407, %bb.qf, %bb.qf, %bb.qf, %bb.qi, %bb.qc, %horizontal_fill.exit357.i
  %.4308.i = phi ptr [ %i.cpk, %horizontal_fill.exit357.i ], [ %.3307.i, %bb.qc ], [ %i.cpp, %bb.qh ], [ %i.cpp, %bb.qi ], [ %i.cpp, %middle.block3387 ], [ %i.cpp, %bb.qf ], [ %i.cpp, %bb.qf ], [ %i.cpp, %bb.qf ], [ %i.cpp, %bb.qg ], [ %i.cpp, %vec.epilog.middle.block3407 ], [ %i.cpp, %vec.epilog.scalar.ph3392 ] ; 4 uses
  %.1291.i = phi i32 [ %i.cjx, %horizontal_fill.exit357.i ], [ %.0290549.i, %bb.qc ], [ %i.cpm, %bb.qh ], [ %i.cpm, %bb.qi ], [ %i.cpm, %middle.block3387 ], [ %i.cpm, %bb.qf ], [ %i.cpm, %bb.qf ], [ %i.cpm, %bb.qf ], [ %i.cpm, %bb.qg ], [ %i.cpm, %vec.epilog.middle.block3407 ], [ %i.cpm, %vec.epilog.scalar.ph3392 ] ; 2 uses
  %i.cug = icmp slt i32 %.1291.i, %.2.i
  br i1 %i.cug, label %.lr.ph550.i, label %._crit_edge.i856, !llvm.loop !139

._crit_edge.i856:                                 ; preds = %horizontal_fill.exit.i
  %i.cuh = load i32, ptr %i.aw, align 4, !tbaa !201
  %.not333.i = icmp eq i32 %i.cuh, 0
  br i1 %.not333.i, label %.loopexit504.i, label %.lr.ph552.i.preheader

.lr.ph552.i.preheader:                            ; preds = %._crit_edge.i856
  br i1 %i.byt, label %.lr.ph552.i.epil.preheader, label %.lr.ph552.i

.lr.ph552.i:                                      ; preds = %.lr.ph552.i.preheader, %.lr.ph552.i
  %indvars.iv641.i = phi i64 [ %indvars.iv.next642.i.3, %.lr.ph552.i ], [ 0, %.lr.ph552.i.preheader ] ; 5 uses
  %niter3734 = phi i64 [ %niter3734.next.3, %.lr.ph552.i ], [ 0, %.lr.ph552.i.preheader ]
  %i.cui = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv641.i ; 2 uses
  %i.cuj = load i8, ptr %i.cui, align 1, !tbaa !67
  %i.cuk = zext i8 %i.cuj to i64
  %i.cul = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cuk
  %i.cum = load i8, ptr %i.cul, align 1, !tbaa !67
  store i8 %i.cum, ptr %i.cui, align 1, !tbaa !67
  %i.cun = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv641.i
  %i.cuo = getelementptr inbounds nuw i8, ptr %i.cun, i64 1 ; 2 uses
  %i.cup = load i8, ptr %i.cuo, align 1, !tbaa !67
  %i.cuq = zext i8 %i.cup to i64
  %i.cur = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cuq
  %i.cus = load i8, ptr %i.cur, align 1, !tbaa !67
  store i8 %i.cus, ptr %i.cuo, align 1, !tbaa !67
  %i.cut = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv641.i
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.cut, i64 2 ; 2 uses
  %i.cuv = load i8, ptr %i.cuu, align 1, !tbaa !67
  %i.cuw = zext i8 %i.cuv to i64
  %i.cux = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cuw
  %i.cuy = load i8, ptr %i.cux, align 1, !tbaa !67
  store i8 %i.cuy, ptr %i.cuu, align 1, !tbaa !67
  %i.cuz = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv641.i
  %i.cva = getelementptr inbounds nuw i8, ptr %i.cuz, i64 3 ; 2 uses
  %i.cvb = load i8, ptr %i.cva, align 1, !tbaa !67
  %i.cvc = zext i8 %i.cvb to i64
  %i.cvd = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cvc
  %i.cve = load i8, ptr %i.cvd, align 1, !tbaa !67
  store i8 %i.cve, ptr %i.cva, align 1, !tbaa !67
  %indvars.iv.next642.i.3 = add nuw nsw i64 %indvars.iv641.i, 4 ; 2 uses
  %niter3734.next.3 = add i64 %niter3734, 4       ; 2 uses
  %niter3734.ncmp.3 = icmp eq i64 %niter3734.next.3, %unroll_iter3733.a
  br i1 %niter3734.ncmp.3, label %.loopexit504.i.loopexit.unr-lcssa, label %.lr.ph552.i, !llvm.loop !140

.loopexit504.i.loopexit.unr-lcssa:                ; preds = %.lr.ph552.i
  br i1 %lcmp.mod3731.not.a, label %.loopexit504.i, label %.lr.ph552.i.epil.preheader

.lr.ph552.i.epil.preheader:                       ; preds = %.loopexit504.i.loopexit.unr-lcssa, %.lr.ph552.i.preheader
  %indvars.iv641.i.epil.init = phi i64 [ 0, %.lr.ph552.i.preheader ], [ %indvars.iv.next642.i.3, %.loopexit504.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3732.a)
  br label %.lr.ph552.i.epil

.lr.ph552.i.epil:                                 ; preds = %.lr.ph552.i.epil, %.lr.ph552.i.epil.preheader
  %indvars.iv641.i.epil = phi i64 [ %indvars.iv.next642.i.epil, %.lr.ph552.i.epil ], [ %indvars.iv641.i.epil.init, %.lr.ph552.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph552.i.epil ], [ 0, %.lr.ph552.i.epil.preheader ]
  %i.cvf = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv641.i.epil ; 2 uses
  %i.cvg = load i8, ptr %i.cvf, align 1, !tbaa !67
  %i.cvh = zext i8 %i.cvg to i64
  %i.cvi = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cvh
  %i.cvj = load i8, ptr %i.cvi, align 1, !tbaa !67
  store i8 %i.cvj, ptr %i.cvf, align 1, !tbaa !67
  %indvars.iv.next642.i.epil = add nuw nsw i64 %indvars.iv641.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3730.a
  br i1 %epil.iter.cmp.not, label %.loopexit504.i, label %.lr.ph552.i.epil, !llvm.loop !141

.loopexit504.i:                                   ; preds = %.loopexit504.i.loopexit.unr-lcssa, %.lr.ph552.i.epil, %._crit_edge.i856, %bb.pr, %.preheader505.i, %bytestream2_seek_p.exit.i
  %.5.i = phi ptr [ %.1305576.i, %bytestream2_seek_p.exit.i ], [ %i.cjl, %bb.pr ], [ %.4308.i, %._crit_edge.i856 ], [ %.1305576.i, %.preheader505.i ], [ %.4308.i, %.lr.ph552.i.epil ], [ %.4308.i, %.loopexit504.i.loopexit.unr-lcssa ]
  br i1 %i.bac, label %bb.qj, label %bb.qk

bb.qj:                                            ; preds = %.loopexit504.i
  %i.cvk = add nsw i32 %.2294582.i, %.121604
  call fastcc void @unpack_yuv(ptr noundef nonnull %i.o, ptr noundef readonly %1, ptr noundef %.4578.i, i32 noundef %i.cvk)
  %i.cvl = load i32, ptr %i.axa, align 8, !tbaa !33
  %i.cvm = add i32 %.2294582.i, -1
  %i.cvn = add i32 %i.cvm, %i.cvl
  br label %bb.qm

bb.qk:                                            ; preds = %.loopexit504.i
  %i.cvo = load i32, ptr %i.awz, align 4, !tbaa !83
  %i.cvp = icmp eq i32 %i.cvo, 166
  br i1 %i.cvp, label %bb.ql, label %bb.qm

bb.ql:                                            ; preds = %bb.qk
  %i.cvq = add nsw i32 %.2294582.i, %.121604
  %i.cvr = load i32, ptr %i.as, align 8, !tbaa !55
  %.val.i = load ptr, ptr %1, align 8, !tbaa !72
  %.val371.i = load i32, ptr %i.awy, align 8, !tbaa !33
  call fastcc void @unpack_gray(ptr noundef nonnull %i.o, ptr %.val.i, i32 %.val371.i, ptr noundef %.4578.i, i32 noundef %i.cvq, i32 noundef %.2.i, i32 noundef %i.cvr)
  br label %bb.qm

bb.qm:                                            ; preds = %bb.ql, %bb.qk, %bb.qj
  %.3.i = phi i32 [ %i.cvn, %bb.qj ], [ %.2294582.i, %bb.ql ], [ %.2294582.i, %bb.qk ]
  %i.cvs = getelementptr i8, ptr %.4578.i, i64 %i.byo
  %i.cvt = add nsw i32 %.3.i, 1                   ; 2 uses
  %i.cvu = icmp slt i32 %i.cvt, %.829
  %indvar.next3321 = add i64 %indvar3320, 1
  br i1 %i.cvu, label %bb.pe, label %tiff_unpack_strip.exit.thread893, !llvm.loop !142

tiff_unpack_strip.exit:                           ; preds = %horizontal_fill.exit.i421.i, %bb.oo, %bb.op, %bb.pc
  %.1296.i = phi i32 [ %i.byc, %bb.pc ], [ %i.bsd, %bb.op ], [ %i.bsd, %bb.oo ], [ %i.bsd, %horizontal_fill.exit.i421.i ] ; 2 uses
  %i.cvv = icmp slt i32 %.1296.i, 0
  br i1 %i.cvv, label %tiff_unpack_strip.exit.thread, label %tiff_unpack_strip.exit.thread893

tiff_unpack_strip.exit.thread:                    ; preds = %bb.nu, %bb.pd, %bb.on, %bb.ol, %bb.ok, %bb.pb, %bb.ni, %bb.md, %bb.mu, %tiff_unpack_strip.exit, %bb.ph, %bb.nn, %.loopexit950, %bb.nl, %bb.na, %.loopexit951, %bb.mx, %bb.qe, %split.i, %bb.ps, %bb.pf, %bb.pa, %bb.oc, %bb.oa, %bb.mq, %.thread.i
  %.1296.i891 = phi i32 [ %i.blh, %bb.oa ], [ -12, %.thread.i ], [ -1094995529, %bb.nn ], [ -1313558101, %.loopexit950 ], [ -12, %bb.nl ], [ -1094995529, %bb.na ], [ -1313558101, %.loopexit951 ], [ -12, %bb.mx ], [ -12, %bb.mq ], [ -1094995529, %bb.qe ], [ -1094995529, %split.i ], [ -1094995529, %bb.ps ], [ -1163346256, %bb.pa ], [ -1094995529, %bb.ph ], [ -1094995529, %bb.pf ], [ -1094995529, %bb.oc ], [ -12, %bb.mu ], [ -1094995529, %bb.md ], [ -12, %bb.ni ], [ -1163346256, %bb.pb ], [ -1094995529, %bb.ok ], [ -1094995529, %bb.ol ], [ -12, %bb.on ], [ -1094995529, %bb.pd ], [ -12, %bb.nu ], [ %.1296.i, %tiff_unpack_strip.exit ]
  %i.cvw = load i32, ptr %i.axv, align 8, !tbaa !78
  %i.cvx = and i32 %i.cvw, 8
  %.not812 = icmp eq i32 %i.cvx, 0
  br i1 %.not812, label %tiff_unpack_strip.exit.thread..loopexit948_crit_edge, label %bb.qn

tiff_unpack_strip.exit.thread..loopexit948_crit_edge: ; preds = %tiff_unpack_strip.exit.thread
  %.pre2036 = load i32, ptr %i.dm, align 4, !tbaa !66
  br label %.loopexit948

bb.qn:                                            ; preds = %tiff_unpack_strip.exit.thread
  call void @av_freep(ptr noundef nonnull %i.l) #16
  br label %.thread902

tiff_unpack_strip.exit.thread893.sink.split:      ; preds = %bb.ns, %bb.nf, %.preheader92.i.i, %.preheader91.i.i
  %.sink2844 = phi ptr [ %i.bcd, %.preheader91.i.i ], [ %i.bgj, %.preheader92.i.i ], [ %i.bcd, %bb.nf ], [ %i.bgj, %bb.ns ]
  call void @av_free(ptr noundef nonnull %.sink2844) #16
  br label %tiff_unpack_strip.exit.thread893

tiff_unpack_strip.exit.thread893:                 ; preds = %unpack_gray.exit.i, %bb.qm, %bb.pg, %tiff_unpack_strip.exit.thread893.sink.split, %.preheader516.i, %.preheader506.i, %tiff_unpack_strip.exit
  %i.cvy = load i32, ptr %i.dn, align 4, !tbaa !212
  %i.cvz = add nsw i32 %i.cvy, %.121604           ; 3 uses
  %i.cwa = load i32, ptr %i.dm, align 4, !tbaa !66 ; 2 uses
  %i.cwb = icmp slt i32 %i.cvz, %i.cwa
  br i1 %i.cwb, label %.lr.ph1608, label %.loopexit948, !llvm.loop !143

.loopexit948:                                     ; preds = %tiff_unpack_strip.exit.thread893, %tiff_unpack_strip.exit.thread..loopexit948_crit_edge, %bb.lp
  %i.cwc = phi i32 [ %.pre2036, %tiff_unpack_strip.exit.thread..loopexit948_crit_edge ], [ %i.ayn, %bb.lp ], [ %i.cwa, %tiff_unpack_strip.exit.thread893 ]
  %.121097 = phi i32 [ %.121604, %tiff_unpack_strip.exit.thread..loopexit948_crit_edge ], [ 0, %bb.lp ], [ %i.cvz, %tiff_unpack_strip.exit.thread893 ]
  %..12 = call i32 @llvm.smin.i32(i32 %.121097, i32 %i.cwc) ; 11 uses
  %i.cwd = load i32, ptr %i.cz, align 8, !tbaa !210 ; 2 uses
  %i.cwe = icmp eq i32 %i.cwd, 2
  br i1 %i.cwe, label %bb.qo, label %bb.qx

bb.qo:                                            ; preds = %.loopexit948
  %i.cwf = load i32, ptr %i.au, align 4, !tbaa !57
  %i.cwg = icmp eq i32 %i.cwf, 6
  br i1 %i.cwg, label %bb.qp, label %bb.qq

bb.qp:                                            ; preds = %bb.qo
  %i.cwh = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cwh, i32 noundef 16, ptr noundef nonnull @.str.28) #16
  br label %.thread902

bb.qq:                                            ; preds = %bb.qo
  %i.cwi = load ptr, ptr %i.l, align 8, !tbaa !72 ; 2 uses
  %.not813 = icmp eq ptr %i.cwi, null
  br i1 %.not813, label %bb.qr, label %bb.qs

bb.qr:                                            ; preds = %bb.qq
  %i.cwj = load ptr, ptr %i.axx, align 8, !tbaa !72
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qq, %bb.qr
  %i.cwk = phi ptr [ %i.cwj, %bb.qr ], [ %i.cwi, %bb.qq ] ; 15 uses
  %i.cwl = load i32, ptr %i.as, align 8, !tbaa !55
  %i.cwm = lshr i32 %i.cwl, 3                     ; 2 uses
  %i.cwn = load i32, ptr %i.cn, align 8, !tbaa !74
  %.not814 = icmp eq i32 %i.cwn, 0
  br i1 %.not814, label %bb.qu, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.cwo = load i32, ptr %i.at, align 4, !tbaa !56
  %i.cwp = udiv i32 %i.cwm, %i.cwo
  %spec.select830 = call i32 @llvm.umax.i32(i32 %i.cwp, i32 1)
  br label %bb.qu

bb.qu:                                            ; preds = %bb.qt, %bb.qs
  %.1723 = phi i32 [ %spec.select830, %bb.qt ], [ %i.cwm, %bb.qs ] ; 8 uses
  %i.cwq = load i32, ptr %i.dp, align 8, !tbaa !65
end_hunk_3
