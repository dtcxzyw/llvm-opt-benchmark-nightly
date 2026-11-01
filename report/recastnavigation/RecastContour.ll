Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastContour?download=true
inline.NumInlined: 300
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z15rcBuildContoursP9rcContextRK20rcCompactHeightfieldfiR12rcContourSeti:bb.a
.lr.ph.i.i442.preheader.us:                       ; preds = %bb.bo
  %i.axy = load i32, ptr %.sroa.104.18.us1046, align 4, !tbaa !12
  store i32 %i.axy, ptr %i.act, align 4, !tbaa !12
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit331.i.us.thread

.lr.ph816.us:                                     ; preds = %.preheader761.us
  %i.axz = load ptr, ptr %i.awh, align 8, !tbaa !139
  br label %bb.db

.lr.ph818.us:                                     ; preds = %.preheader760.us
  %i.aya = load ptr, ptr %i.axe, align 8, !tbaa !140
  br label %bb.dd

._crit_edge840.us:                                ; preds = %._crit_edge828.us
  %indvars.iv.next923 = add nuw nsw i64 %indvars.iv922, 1 ; 2 uses
  %exitcond926.not = icmp eq i64 %indvars.iv.next923, %wide.trip.count925
  br i1 %exitcond926.not, label %._crit_edge852, label %.preheader763.us

._crit_edge808:                                   ; preds = %._crit_edge
  %indvars.iv.next901 = add nuw nsw i64 %indvars.iv900, 1 ; 2 uses
  %exitcond904.not = icmp eq i64 %indvars.iv.next901, %wide.trip.count903
  br i1 %exitcond904.not, label %._crit_edge810.split, label %.preheader765

bb.de:                                            ; preds = %.preheader765, %._crit_edge
  %indvars.iv897 = phi i64 [ 0, %.preheader765 ], [ %indvars.iv.next898, %._crit_edge ] ; 6 uses
  %i.ayb = load ptr, ptr %i.bs, align 8, !tbaa !120
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %i.ayb, i64 %indvars.iv897
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %i.ayc, i64 %i.bv
  %i.aye = load i32, ptr %i.ayd, align 4          ; 3 uses
  %i.ayf = lshr i32 %i.aye, 24                    ; 2 uses
  %.not877 = icmp eq i32 %i.ayf, 0
  br i1 %.not877, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.de
  %i.ayg = and i32 %i.aye, 16777215
  %i.ayh = add nuw nsw i32 %i.ayg, %i.ayf
  %i.ayi = and i32 %i.aye, 16777215
  %i.ayj = zext nneg i32 %i.ayi to i64
  %i.ayk = zext nneg i32 %i.ayh to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.dn, %bb.de
  %indvars.iv.next898 = add nuw nsw i64 %indvars.iv897, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next898, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge808, label %bb.de

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.dn
  %indvars.iv = phi i64 [ %i.ayj, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.dn ] ; 3 uses
  %i.ayl = load ptr, ptr %i.bt, align 8, !tbaa !122 ; 5 uses
  %i.aym = getelementptr inbounds nuw [8 x i8], ptr %i.ayl, i64 %indvars.iv ; 2 uses
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 2
  %i.ayo = load i16, ptr %i.ayn, align 2, !tbaa !124 ; 5 uses
  %or.cond = icmp sgt i16 %i.ayo, 0
  br i1 %or.cond, label %.preheader764, label %bb.dn

.preheader764:                                    ; preds = %.lr.ph
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.aym, i64 4
  %i.ayq = load i32, ptr %i.ayp, align 4          ; 4 uses
  %i.ayr = and i32 %i.ayq, 63                     ; 2 uses
  %.not337 = icmp eq i32 %i.ayr, 63
  br i1 %.not337, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.preheader764
  %i.ays = load ptr, ptr %i.bs, align 8, !tbaa !120
  %i.ayt = getelementptr [4 x i8], ptr %i.ays, i64 %indvars.iv897
  %i.ayu = getelementptr i8, ptr %i.ayt, i64 -4
  %i.ayv = getelementptr [4 x i8], ptr %i.ayu, i64 %i.bv
  %i.ayw = load i32, ptr %i.ayv, align 4
  %i.ayx = and i32 %i.ayw, 16777215
  %i.ayy = add nuw nsw i32 %i.ayx, %i.ayr
  %i.ayz = zext nneg i32 %i.ayy to i64
  %i.aza = getelementptr inbounds nuw [8 x i8], ptr %i.ayl, i64 %i.ayz
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 2
  %i.azc = load i16, ptr %i.azb, align 2, !tbaa !124
  %i.azd = icmp eq i16 %i.azc, %i.ayo
  %i.aze = zext i1 %i.azd to i8
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %.preheader764
  %.0293 = phi i8 [ %i.aze, %bb.df ], [ 0, %.preheader764 ] ; 2 uses
  %i.azf = lshr i32 %i.ayq, 6
  %i.azg = and i32 %i.azf, 63                     ; 2 uses
  %.not337.1 = icmp eq i32 %i.azg, 63
  br i1 %.not337.1, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.azh = load ptr, ptr %i.bs, align 8, !tbaa !120
  %i.azi = getelementptr inbounds nuw [4 x i8], ptr %i.azh, i64 %indvars.iv897
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %i.azi, i64 %i.bx
  %i.azk = load i32, ptr %i.azj, align 4
  %i.azl = and i32 %i.azk, 16777215
  %i.azm = add nuw nsw i32 %i.azl, %i.azg
  %i.azn = zext nneg i32 %i.azm to i64
  %i.azo = getelementptr inbounds nuw [8 x i8], ptr %i.ayl, i64 %i.azn
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 2
  %i.azq = load i16, ptr %i.azp, align 2, !tbaa !124
  %i.azr = icmp eq i16 %i.azq, %i.ayo
  %i.azs = select i1 %i.azr, i8 2, i8 0
  %i.azt = or disjoint i8 %i.azs, %.0293
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.0293.1 = phi i8 [ %i.azt, %bb.dh ], [ %.0293, %bb.dg ] ; 2 uses
  %i.azu = lshr i32 %i.ayq, 12
  %i.azv = and i32 %i.azu, 63                     ; 2 uses
  %.not337.2 = icmp eq i32 %i.azv, 63
  br i1 %.not337.2, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.azw = load ptr, ptr %i.bs, align 8, !tbaa !120
  %i.azx = getelementptr inbounds nuw [4 x i8], ptr %i.azw, i64 %indvars.iv897
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 4
  %i.azz = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %i.bv
  %i.baa = load i32, ptr %i.azz, align 4
  %i.bab = and i32 %i.baa, 16777215
  %i.bac = add nuw nsw i32 %i.bab, %i.azv
  %i.bad = zext nneg i32 %i.bac to i64
  %i.bae = getelementptr inbounds nuw [8 x i8], ptr %i.ayl, i64 %i.bad
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 2
  %i.bag = load i16, ptr %i.baf, align 2, !tbaa !124
  %i.bah = icmp eq i16 %i.bag, %i.ayo
  %i.bai = select i1 %i.bah, i8 4, i8 0
  %i.baj = or i8 %i.bai, %.0293.1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.0293.2 = phi i8 [ %i.baj, %bb.dj ], [ %.0293.1, %bb.di ] ; 2 uses
  %i.bak = lshr i32 %i.ayq, 18
  %i.bal = and i32 %i.bak, 63                     ; 2 uses
  %.not337.3 = icmp eq i32 %i.bal, 63
  br i1 %.not337.3, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.bam = load ptr, ptr %i.bs, align 8, !tbaa !120
  %i.ban = getelementptr [4 x i8], ptr %i.bam, i64 %indvars.iv897
  %i.bao = getelementptr [4 x i8], ptr %i.ban, i64 %i.bz
  %i.bap = load i32, ptr %i.bao, align 4
  %i.baq = and i32 %i.bap, 16777215
  %i.bar = add nuw nsw i32 %i.baq, %i.bal
  %i.bas = zext nneg i32 %i.bar to i64
  %i.bat = getelementptr inbounds nuw [8 x i8], ptr %i.ayl, i64 %i.bas
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 2
  %i.bav = load i16, ptr %i.bau, align 2, !tbaa !124
  %i.baw = icmp eq i16 %i.bav, %i.ayo
  %i.bax = select i1 %i.baw, i8 8, i8 0
  %i.bay = or i8 %i.bax, %.0293.2
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.0293.3 = phi i8 [ %i.bay, %bb.dl ], [ %.0293.2, %bb.dk ]
  %i.baz = xor i8 %.0293.3, 15
  br label %bb.dn

bb.dn:                                            ; preds = %.lr.ph, %bb.dm
  %.sink = phi i8 [ %i.baz, %bb.dm ], [ 0, %.lr.ph ]
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv
  store i8 %.sink, ptr %i.bba, align 1, !tbaa !121
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bbb = icmp samesign ult i64 %indvars.iv.next, %i.ayk
  br i1 %i.bbb, label %.lr.ph, label %._crit_edge

.split.us:                                        ; preds = %bb.cz
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef %i.awo) #9
  br label %bb.fh

.split858.us:                                     ; preds = %.loopexit762.us
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.3, i32 noundef %i.axf) #9
  br label %bb.fh

._crit_edge852:                                   ; preds = %._crit_edge840.us, %.preheader763.lr.ph, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit
  %.sroa.39.0.lcssa = phi ptr [ %i.cf, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit ], [ %i.cf, %.preheader763.lr.ph ], [ %.sroa.39.2.lcssa.us, %._crit_edge840.us ] ; 3 uses
  %.sroa.104.0.lcssa = phi ptr [ %i.cg, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit ], [ %i.cg, %.preheader763.lr.ph ], [ %.sroa.104.2.lcssa.us, %._crit_edge840.us ] ; 3 uses
  %i.bbc = load i32, ptr %i.bf, align 8, !tbaa !117 ; 2 uses
  %i.bbd = icmp sgt i32 %i.bbc, 0
  br i1 %i.bbd, label %bb.do, label %bb.fh

bb.do:                                            ; preds = %._crit_edge852
  %i.bbe = zext nneg i32 %i.bbc to i64
  %i.bbf = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bbe, i32 noundef 1) #9 ; 7 uses
  %.not327 = icmp eq ptr %i.bbf, null
  %i.bbg = load i32, ptr %i.bf, align 8, !tbaa !117 ; 2 uses
  br i1 %.not327, label %bb.dp, label %.preheader759

.preheader759:                                    ; preds = %bb.do
  %i.bbh = icmp sgt i32 %i.bbg, 0
  br i1 %i.bbh, label %.lr.ph866, label %._crit_edge867.thread

bb.dp:                                            ; preds = %bb.do
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.4, i32 noundef %i.bbg) #9
  br label %.critedge342

._crit_edge867:                                   ; preds = %bb.dr
  %i.bbi = icmp sgt i32 %i.bdf, 0
  br i1 %i.bbi, label %bb.ds, label %._crit_edge867.thread

.lr.ph866:                                        ; preds = %.preheader759, %bb.dr
  %indvars.iv927 = phi i64 [ %indvars.iv.next928, %bb.dr ], [ 0, %.preheader759 ] ; 4 uses
  %.0273864 = phi i32 [ %i.bdf, %bb.dr ], [ 0, %.preheader759 ] ; 2 uses
  %i.bbj = load ptr, ptr %4, align 8, !tbaa !116
  %i.bbk = getelementptr inbounds nuw [32 x i8], ptr %i.bbj, i64 %indvars.iv927 ; 2 uses
  %i.bbl = load ptr, ptr %i.bbk, align 8, !tbaa !139 ; 5 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbk, i64 8
  %i.bbn = load i32, ptr %i.bbm, align 8, !tbaa !141 ; 5 uses
  %i.bbo = icmp sgt i32 %i.bbn, 0
  br i1 %i.bbo, label %.lr.ph.preheader.i, label %_ZL19calcAreaOfPolygon2DPKii.exit.thread

.lr.ph.preheader.i:                               ; preds = %.lr.ph866
  %i.bbp = add nsw i32 %i.bbn, -1                 ; 2 uses
  %wide.trip.count.i375 = zext nneg i32 %i.bbn to i64 ; 2 uses
  %xtraiter1332 = and i64 %wide.trip.count.i375, 1
  %i.bbq = icmp eq i32 %i.bbn, 1
  br i1 %i.bbq, label %.lr.ph.i376.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i375, 2147483646
  br label %.lr.ph.i376

.lr.ph.i376:                                      ; preds = %.lr.ph.i376, %.lr.ph.preheader.i.new
  %indvars.iv.i377 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i379.1, %.lr.ph.i376 ] ; 3 uses
  %.017.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %.fr.1, %.lr.ph.i376 ]
  %.01415.i = phi i32 [ %i.bbp, %.lr.ph.preheader.i.new ], [ %i.bcn, %.lr.ph.i376 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i376 ]
  %.idx.i378 = shl nuw nsw i64 %indvars.iv.i377, 4
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbl, i64 %.idx.i378 ; 2 uses
  %i.bbs = shl nsw i32 %.01415.i, 2
  %i.bbt = sext i32 %i.bbs to i64
  %i.bbu = getelementptr inbounds [4 x i8], ptr %i.bbl, i64 %i.bbt ; 2 uses
  %i.bbv = load i32, ptr %i.bbr, align 4, !tbaa !12 ; 2 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbu, i64 8
  %i.bbx = load i32, ptr %i.bbw, align 4, !tbaa !12
  %i.bby = mul nsw i32 %i.bbx, %i.bbv
  %i.bbz = load i32, ptr %i.bbu, align 4, !tbaa !12
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbr, i64 8
  %i.bcb = load i32, ptr %i.bca, align 4, !tbaa !12 ; 2 uses
  %i.bcc = mul nsw i32 %i.bcb, %i.bbz
  %i.bcd = add i32 %i.bby, %.017.i
  %i.bce = sub i32 %i.bcd, %i.bcc
  %.fr = freeze i32 %i.bce
  %indvars.iv.next.i379 = or disjoint i64 %indvars.iv.i377, 1 ; 2 uses
  %.idx.i378.1 = shl nuw nsw i64 %indvars.iv.next.i379, 4
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bbl, i64 %.idx.i378.1 ; 2 uses
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !12
  %i.bch = mul nsw i32 %i.bcb, %i.bcg
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bcf, i64 8
  %i.bcj = load i32, ptr %i.bci, align 4, !tbaa !12
  %i.bck = mul nsw i32 %i.bcj, %i.bbv
  %i.bcl = add i32 %i.bch, %.fr
  %i.bcm = sub i32 %i.bcl, %i.bck
  %.fr.1 = freeze i32 %i.bcm                      ; 3 uses
  %indvars.iv.next.i379.1 = add nuw nsw i64 %indvars.iv.i377, 2 ; 2 uses
  %i.bcn = trunc nuw nsw i64 %indvars.iv.next.i379 to i32 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL19calcAreaOfPolygon2DPKii.exit.unr-lcssa, label %.lr.ph.i376

_ZL19calcAreaOfPolygon2DPKii.exit.unr-lcssa:      ; preds = %.lr.ph.i376
  %lcmp.mod1333.not = icmp eq i64 %xtraiter1332, 0
  br i1 %lcmp.mod1333.not, label %_ZL19calcAreaOfPolygon2DPKii.exit, label %.lr.ph.i376.epil.preheader

.lr.ph.i376.epil.preheader:                       ; preds = %_ZL19calcAreaOfPolygon2DPKii.exit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i377.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i379.1, %_ZL19calcAreaOfPolygon2DPKii.exit.unr-lcssa ]
  %.017.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.fr.1, %_ZL19calcAreaOfPolygon2DPKii.exit.unr-lcssa ]
  %.01415.i.epil.init = phi i32 [ %i.bbp, %.lr.ph.preheader.i ], [ %i.bcn, %_ZL19calcAreaOfPolygon2DPKii.exit.unr-lcssa ]
  %lcmp.mod1335 = trunc i32 %i.bbn to i1
  tail call void @llvm.assume(i1 %lcmp.mod1335)
  %.idx.i378.epil = shl nuw nsw i64 %indvars.iv.i377.epil.init, 4
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bbl, i64 %.idx.i378.epil ; 2 uses
  %i.bcp = shl nsw i32 %.01415.i.epil.init, 2
  %i.bcq = sext i32 %i.bcp to i64
  %i.bcr = getelementptr inbounds [4 x i8], ptr %i.bbl, i64 %i.bcq ; 2 uses
  %i.bcs = load i32, ptr %i.bco, align 4, !tbaa !12
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcr, i64 8
  %i.bcu = load i32, ptr %i.bct, align 4, !tbaa !12
  %i.bcv = mul nsw i32 %i.bcu, %i.bcs
  %i.bcw = load i32, ptr %i.bcr, align 4, !tbaa !12
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bco, i64 8
  %i.bcy = load i32, ptr %i.bcx, align 4, !tbaa !12
  %i.bcz = mul nsw i32 %i.bcy, %i.bcw
  %i.bda = add i32 %i.bcv, %.017.i.epil.init
  %i.bdb = sub i32 %i.bda, %i.bcz
  %.fr.epil = freeze i32 %i.bdb
  br label %_ZL19calcAreaOfPolygon2DPKii.exit

_ZL19calcAreaOfPolygon2DPKii.exit:                ; preds = %_ZL19calcAreaOfPolygon2DPKii.exit.unr-lcssa, %.lr.ph.i376.epil.preheader
  %.fr.lcssa = phi i32 [ %.fr.1, %_ZL19calcAreaOfPolygon2DPKii.exit.unr-lcssa ], [ %.fr.epil, %.lr.ph.i376.epil.preheader ]
  %.inv = icmp sgt i32 %.fr.lcssa, -3
  br i1 %.inv, label %_ZL19calcAreaOfPolygon2DPKii.exit.thread, label %bb.dq

_ZL19calcAreaOfPolygon2DPKii.exit.thread:         ; preds = %.lr.ph866, %_ZL19calcAreaOfPolygon2DPKii.exit
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bbf, i64 %indvars.iv927
  store i8 1, ptr %i.bdc, align 1, !tbaa !121
  br label %bb.dr

bb.dq:                                            ; preds = %_ZL19calcAreaOfPolygon2DPKii.exit
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bbf, i64 %indvars.iv927
  store i8 -1, ptr %i.bdd, align 1, !tbaa !121
  %i.bde = add nsw i32 %.0273864, 1
  br label %bb.dr

bb.dr:                                            ; preds = %_ZL19calcAreaOfPolygon2DPKii.exit.thread, %bb.dq
  %i.bdf = phi i32 [ %i.bde, %bb.dq ], [ %.0273864, %_ZL19calcAreaOfPolygon2DPKii.exit.thread ] ; 2 uses
  %indvars.iv.next928 = add nuw nsw i64 %indvars.iv927, 1 ; 2 uses
  %i.bdg = load i32, ptr %i.bf, align 8, !tbaa !117
  %i.bdh = sext i32 %i.bdg to i64
  %i.bdi = icmp slt i64 %indvars.iv.next928, %i.bdh
  br i1 %i.bdi, label %.lr.ph866, label %._crit_edge867

bb.ds:                                            ; preds = %._crit_edge867
  %i.bdj = load i16, ptr %i.ay, align 2, !tbaa !115 ; 2 uses
  %i.bdk = zext i16 %i.bdj to i32
  %i.bdl = add nuw nsw i32 %i.bdk, 1              ; 4 uses
  %narrow = mul nuw nsw i32 %i.bdl, 24
  %i.bdm = zext nneg i32 %narrow to i64           ; 2 uses
  %i.bdn = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bdm, i32 noundef 1) #9 ; 10 uses
  %.not328 = icmp eq ptr %i.bdn, null
  br i1 %.not328, label %.critedge340, label %bb.dt

.critedge340:                                     ; preds = %bb.ds
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef %i.bdl) #9
  tail call void @_Z6rcFreePv(ptr noundef null) #9
  br label %.critedge342

bb.dt:                                            ; preds = %bb.ds
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bdn, i8 0, i64 %i.bdm, i1 false)
  %i.bdo = load i32, ptr %i.bf, align 8, !tbaa !117
  %i.bdp = sext i32 %i.bdo to i64
  %i.bdq = mul nsw i64 %i.bdp, 24
  %i.bdr = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bdq, i32 noundef 1) #9 ; 6 uses
  %.not329.not = icmp eq ptr %i.bdr, null         ; 2 uses
  %i.bds = load i32, ptr %i.bf, align 8, !tbaa !117 ; 2 uses
  br i1 %.not329.not, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef %i.bds) #9
  br label %.loopexit

bb.dv:                                            ; preds = %bb.dt
  %i.bdt = sext i32 %i.bds to i64
  %i.bdu = mul nsw i64 %i.bdt, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bdr, i8 0, i64 %i.bdu, i1 false)
  %i.bdv = load i32, ptr %i.bf, align 8, !tbaa !117 ; 4 uses
  %i.bdw = icmp sgt i32 %i.bdv, 0
  br i1 %i.bdw, label %.lr.ph870, label %.preheader758

.preheader758:                                    ; preds = %bb.ea, %bb.dv
  %.lcssa771 = phi i32 [ %i.bdv, %bb.dv ], [ %i.beo, %bb.ea ] ; 2 uses
  %wide.trip.count936 = zext nneg i32 %i.bdl to i64 ; 3 uses
  %xtraiter1336 = and i64 %wide.trip.count936, 1
  %i.bdx = icmp eq i16 %i.bdj, 0
  br i1 %i.bdx, label %.epil.preheader, label %.preheader758.new

.preheader758.new:                                ; preds = %.preheader758
  %unroll_iter1339 = and i64 %wide.trip.count936, 131070
  br label %bb.ec

.lr.ph870:                                        ; preds = %bb.dv, %bb.ea
  %.pre953954 = phi i32 [ %.pre953955, %bb.ea ], [ %i.bdv, %bb.dv ] ; 2 uses
  %i.bdy = phi i32 [ %i.beo, %bb.ea ], [ %i.bdv, %bb.dv ]
  %indvars.iv930 = phi i64 [ %indvars.iv.next931, %bb.ea ], [ 0, %bb.dv ] ; 3 uses
  %i.bdz = load ptr, ptr %4, align 8, !tbaa !116
  %i.bea = getelementptr inbounds nuw [32 x i8], ptr %i.bdz, i64 %indvars.iv930 ; 2 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bbf, i64 %indvars.iv930
  %i.bec = load i8, ptr %i.beb, align 1, !tbaa !121
  %i.bed = icmp sgt i8 %i.bec, 0
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bea, i64 28 ; 2 uses
  %i.bef = load i16, ptr %i.bee, align 4, !tbaa !143 ; 2 uses
  %i.beg = zext i16 %i.bef to i64                 ; 2 uses
  %i.beh = getelementptr inbounds nuw [24 x i8], ptr %i.bdn, i64 %i.beg ; 2 uses
  br i1 %i.bed, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %.lr.ph870
  %i.bei = load ptr, ptr %i.beh, align 8, !tbaa !147
  %.not334 = icmp eq ptr %i.bei, null
  br i1 %.not334, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.bej = zext i16 %i.bef to i32
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.7, i32 noundef %i.bej) #9
  %.pre952 = load i16, ptr %i.bee, align 4, !tbaa !143
  %.pre953.pre = load i32, ptr %i.bf, align 8, !tbaa !117
  %.pre957 = zext i16 %.pre952 to i64
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.pre-phi = phi i64 [ %.pre957, %bb.dx ], [ %i.beg, %bb.dw ]
  %.pre953 = phi i32 [ %.pre953.pre, %bb.dx ], [ %.pre953954, %bb.dw ] ; 2 uses
  %i.bek = getelementptr inbounds nuw [24 x i8], ptr %i.bdn, i64 %.pre-phi
  store ptr %i.bea, ptr %i.bek, align 8, !tbaa !147
  br label %bb.ea

bb.dz:                                            ; preds = %.lr.ph870
  %i.bel = getelementptr inbounds nuw i8, ptr %i.beh, i64 16 ; 2 uses
  %i.bem = load i32, ptr %i.bel, align 8, !tbaa !148
  %i.ben = add nsw i32 %i.bem, 1
  store i32 %i.ben, ptr %i.bel, align 8, !tbaa !148
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.pre953955 = phi i32 [ %.pre953954, %bb.dz ], [ %.pre953, %bb.dy ]
  %i.beo = phi i32 [ %i.bdy, %bb.dz ], [ %.pre953, %bb.dy ] ; 3 uses
  %indvars.iv.next931 = add nuw nsw i64 %indvars.iv930, 1 ; 2 uses
  %i.bep = sext i32 %i.beo to i64
  %i.beq = icmp slt i64 %indvars.iv.next931, %i.bep
  br i1 %i.beq, label %.lr.ph870, label %.preheader758

.preheader757.unr-lcssa:                          ; preds = %bb.eg
  %lcmp.mod1337.not = icmp eq i64 %xtraiter1336, 0
  br i1 %lcmp.mod1337.not, label %.preheader757, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader757.unr-lcssa, %.preheader758
  %indvars.iv933.epil.init = phi i64 [ 0, %.preheader758 ], [ %indvars.iv.next934.1, %.preheader757.unr-lcssa ]
  %.0270872.epil.init = phi i32 [ 0, %.preheader758 ], [ %.1.1, %.preheader757.unr-lcssa ]
  %lcmp.mod1338 = trunc i32 %i.bdl to i1
  tail call void @llvm.assume(i1 %lcmp.mod1338)
  %i.ber = getelementptr inbounds nuw [24 x i8], ptr %i.bdn, i64 %indvars.iv933.epil.init ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 16 ; 2 uses
  %i.bet = load i32, ptr %i.bes, align 8, !tbaa !148
  %i.beu = icmp sgt i32 %i.bet, 0
  br i1 %i.beu, label %bb.eb, label %.preheader757

bb.eb:                                            ; preds = %.epil.preheader
  %i.bev = zext nneg i32 %.0270872.epil.init to i64
  %i.bew = getelementptr inbounds nuw [24 x i8], ptr %i.bdr, i64 %i.bev
  %i.bex = getelementptr inbounds nuw i8, ptr %i.ber, i64 8
  store ptr %i.bew, ptr %i.bex, align 8, !tbaa !149
  store i32 0, ptr %i.bes, align 8, !tbaa !148
  br label %.preheader757

.preheader757:                                    ; preds = %.epil.preheader, %bb.eb, %.preheader757.unr-lcssa
  %i.bey = icmp sgt i32 %.lcssa771, 0
  br i1 %i.bey, label %.lr.ph875.preheader, label %.preheader.preheader

.lr.ph875.preheader:                              ; preds = %.preheader757
  %wide.trip.count941 = zext nneg i32 %.lcssa771 to i64
  br label %.lr.ph875

bb.ec:                                            ; preds = %bb.eg, %.preheader758.new
  %indvars.iv933 = phi i64 [ 0, %.preheader758.new ], [ %indvars.iv.next934.1, %bb.eg ] ; 3 uses
  %.0270872 = phi i32 [ 0, %.preheader758.new ], [ %.1.1, %bb.eg ] ; 3 uses
  %niter1340 = phi i64 [ 0, %.preheader758.new ], [ %niter1340.next.1, %bb.eg ]
  %i.bez = getelementptr inbounds nuw [24 x i8], ptr %i.bdn, i64 %indvars.iv933 ; 2 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 16 ; 2 uses
  %i.bfb = load i32, ptr %i.bfa, align 8, !tbaa !148 ; 2 uses
  %i.bfc = icmp sgt i32 %i.bfb, 0
  br i1 %i.bfc, label %bb.ed, label %bb.ee

end_hunk_0
