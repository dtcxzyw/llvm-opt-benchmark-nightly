Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_draw?download=true
inline.NumInlined: 1448
inline.NumDeleted: 384
loop-unroll.NumCompletelyUnrolled: 298
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 351
begin_hunk_0_@_ZL40ImGui_ImplStbTrueType_FontBakedLoadGlyphP11ImFontAtlasP12ImFontConfigP11ImFontBakedPvtP11ImFontGlyph:bb.a
  %i.azb = load i8, ptr %i.aza, align 2, !tbaa !53
  %i.azc = zext i8 %i.azb to i32
  %i.azd = sub nsw i32 %i.ayy, %i.azc
  %i.aze = add i32 %i.azd, %.0131.i               ; 2 uses
  %i.azf = add nuw i64 %indvars.iv175.i, 2
  %i.azg = and i64 %i.azf, 6
  %i.azh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.azg
  store i8 %i.ayx, ptr %i.azh, align 2, !tbaa !53
  %i.azi = lshr i32 %i.aze, 1
  %i.azj = trunc i32 %i.azi to i8
  store i8 %i.azj, ptr %i.ayw, align 1, !tbaa !53
  %indvars.iv.next176.i = or disjoint i64 %indvars.iv175.i, 1 ; 2 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv.next176.i ; 2 uses
  %i.azl = load i8, ptr %i.azk, align 1, !tbaa !53 ; 2 uses
  %i.azm = zext i8 %i.azl to i32
  %i.azn = and i64 %indvars.iv.next176.i, 7
  %i.azo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.azn
  %i.azp = load i8, ptr %i.azo, align 1, !tbaa !53
  %i.azq = zext i8 %i.azp to i32
  %i.azr = sub nsw i32 %i.azm, %i.azq
  %i.azs = add i32 %i.azr, %i.aze                 ; 4 uses
  %i.azt = add nuw i64 %indvars.iv175.i, 3
  %i.azu = and i64 %i.azt, 7
  %i.azv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.azu
  store i8 %i.azl, ptr %i.azv, align 1, !tbaa !53
  %i.azw = lshr i32 %i.azs, 1
  %i.azx = trunc i32 %i.azw to i8
  store i8 %i.azx, ptr %i.azk, align 1, !tbaa !53
  %indvars.iv.next176.i.1 = add nuw nsw i64 %indvars.iv175.i, 2 ; 2 uses
  %niter402.next.1 = add nuw i64 %niter402, 2     ; 2 uses
  %niter402.ncmp.1 = icmp eq i64 %niter402.next.1, %unroll_iter401
  br i1 %niter402.ncmp.1, label %.loopexit.i.loopexit375.unr-lcssa, label %.lr.ph132.i, !llvm.loop !779

.lr.ph126.i:                                      ; preds = %.preheader107.i, %.lr.ph126.i
  %indvars.iv170.i = phi i64 [ %indvars.iv.next171.i, %.lr.ph126.i ], [ 0, %.preheader107.i ] ; 4 uses
  %.1125.i = phi i32 [ %i.bag, %.lr.ph126.i ], [ 0, %.preheader107.i ]
  %i.azy = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv170.i ; 2 uses
  %i.azz = load i8, ptr %i.azy, align 1, !tbaa !53 ; 2 uses
  %i.baa = zext i8 %i.azz to i32
  %i.bab = and i64 %indvars.iv170.i, 7
  %i.bac = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bab
  %i.bad = load i8, ptr %i.bac, align 1, !tbaa !53
  %i.bae = zext i8 %i.bad to i32
  %i.baf = sub nsw i32 %i.baa, %i.bae
  %i.bag = add i32 %i.baf, %.1125.i               ; 3 uses
  %i.bah = add nuw i64 %indvars.iv170.i, 3
  %i.bai = and i64 %i.bah, 7
  %i.baj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bai
  store i8 %i.azz, ptr %i.baj, align 1, !tbaa !53
  %i.bak = udiv i32 %i.bag, 3
  %i.bal = trunc i32 %i.bak to i8
  store i8 %i.bal, ptr %i.azy, align 1, !tbaa !53
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond174.not.i = icmp eq i64 %indvars.iv.next171.i, %wide.trip.count.i
  br i1 %exitcond174.not.i, label %.loopexit.i, label %.lr.ph126.i, !llvm.loop !780

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.preheader, %.lr.ph120.i
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i.1, %.lr.ph120.i ], [ 0, %.lr.ph120.i.preheader ] ; 4 uses
  %.2119.i = phi i32 [ %i.bbh, %.lr.ph120.i ], [ 0, %.lr.ph120.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph120.i ], [ 0, %.lr.ph120.i.preheader ]
  %i.bam = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv165.i ; 2 uses
  %i.ban = load i8, ptr %i.bam, align 1, !tbaa !53 ; 2 uses
  %i.bao = zext i8 %i.ban to i32
  %i.bap = and i64 %indvars.iv165.i, 6            ; 2 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bap
  %i.bar = load i8, ptr %i.baq, align 2, !tbaa !53
  %i.bas = zext i8 %i.bar to i32
  %i.bat = sub nsw i32 %i.bao, %i.bas
  %i.bau = add i32 %i.bat, %.2119.i               ; 2 uses
  %i.bav = xor i64 %i.bap, 4
  %i.baw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bav
  store i8 %i.ban, ptr %i.baw, align 2, !tbaa !53
  %i.bax = lshr i32 %i.bau, 2
  %i.bay = trunc i32 %i.bax to i8
  store i8 %i.bay, ptr %i.bam, align 1, !tbaa !53
  %indvars.iv.next166.i = or disjoint i64 %indvars.iv165.i, 1 ; 2 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv.next166.i ; 2 uses
  %i.bba = load i8, ptr %i.baz, align 1, !tbaa !53 ; 2 uses
  %i.bbb = zext i8 %i.bba to i32
  %i.bbc = and i64 %indvars.iv.next166.i, 7       ; 2 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bbc
  %i.bbe = load i8, ptr %i.bbd, align 1, !tbaa !53
  %i.bbf = zext i8 %i.bbe to i32
  %i.bbg = sub nsw i32 %i.bbb, %i.bbf
  %i.bbh = add i32 %i.bbg, %i.bau                 ; 4 uses
  %i.bbi = xor i64 %i.bbc, 4
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bbi
  store i8 %i.bba, ptr %i.bbj, align 1, !tbaa !53
  %i.bbk = lshr i32 %i.bbh, 2
  %i.bbl = trunc i32 %i.bbk to i8
  store i8 %i.bbl, ptr %i.baz, align 1, !tbaa !53
  %indvars.iv.next166.i.1 = add nuw nsw i64 %indvars.iv165.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit377.unr-lcssa, label %.lr.ph120.i, !llvm.loop !781

.lr.ph.i:                                         ; preds = %.preheader111.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader111.i ] ; 4 uses
  %.3115.i = phi i32 [ %i.bbu, %.lr.ph.i ], [ 0, %.preheader111.i ]
  %i.bbm = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv.i ; 2 uses
  %i.bbn = load i8, ptr %i.bbm, align 1, !tbaa !53 ; 2 uses
  %i.bbo = zext i8 %i.bbn to i32
  %i.bbp = and i64 %indvars.iv.i, 7
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bbp
  %i.bbr = load i8, ptr %i.bbq, align 1, !tbaa !53
  %i.bbs = zext i8 %i.bbr to i32
  %i.bbt = sub nsw i32 %i.bbo, %i.bbs
  %i.bbu = add i32 %i.bbt, %.3115.i               ; 3 uses
  %i.bbv = add nuw i64 %indvars.iv.i, 5
  %i.bbw = and i64 %i.bbv, 7
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bbw
  store i8 %i.bbn, ptr %i.bbx, align 1, !tbaa !53
  %i.bby = udiv i32 %i.bbu, 5
  %i.bbz = trunc i32 %i.bby to i8
  store i8 %i.bbz, ptr %i.bbm, align 1, !tbaa !53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i111 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i111, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !782

.lr.ph138.i:                                      ; preds = %.preheader.i, %.lr.ph138.i
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i, %.lr.ph138.i ], [ 0, %.preheader.i ] ; 4 uses
  %.4137.i = phi i32 [ %i.bci, %.lr.ph138.i ], [ 0, %.preheader.i ]
  %i.bca = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv180.i ; 2 uses
  %i.bcb = load i8, ptr %i.bca, align 1, !tbaa !53 ; 2 uses
  %i.bcc = zext i8 %i.bcb to i32
  %i.bcd = and i64 %indvars.iv180.i, 7
  %i.bce = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bcd
  %i.bcf = load i8, ptr %i.bce, align 1, !tbaa !53
  %i.bcg = zext i8 %i.bcf to i32
  %i.bch = sub nsw i32 %i.bcc, %i.bcg
  %i.bci = add i32 %i.bch, %.4137.i               ; 3 uses
  %i.bcj = trunc i64 %indvars.iv180.i to i32
  %i.bck = add i32 %i.al, %i.bcj
  %i.bcl = and i32 %i.bck, 7
  %i.bcm = zext nneg i32 %i.bcl to i64
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bcm
  store i8 %i.bcb, ptr %i.bcn, align 1, !tbaa !53
  %i.bco = udiv i32 %i.bci, %i.al
  %i.bcp = trunc i32 %i.bco to i8
  store i8 %i.bcp, ptr %i.bca, align 1, !tbaa !53
  %indvars.iv.next181.i = add nuw nsw i64 %indvars.iv180.i, 1 ; 2 uses
  %exitcond184.not.i = icmp eq i64 %indvars.iv.next181.i, %wide.trip.count.i
  br i1 %exitcond184.not.i, label %.loopexit.i, label %.lr.ph138.i, !llvm.loop !783

.loopexit.i.loopexit375.unr-lcssa:                ; preds = %.lr.ph132.i
  br i1 %lcmp.mod398.not, label %.loopexit.i, label %.lr.ph132.i.epil.preheader

.lr.ph132.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit375.unr-lcssa, %.lr.ph132.i.preheader
  %indvars.iv175.i.epil.init = phi i64 [ 0, %.lr.ph132.i.preheader ], [ %indvars.iv.next176.i.1, %.loopexit.i.loopexit375.unr-lcssa ] ; 3 uses
  %.0131.i.epil.init = phi i32 [ 0, %.lr.ph132.i.preheader ], [ %i.azs, %.loopexit.i.loopexit375.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod400)
  %i.bcq = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv175.i.epil.init ; 2 uses
  %i.bcr = load i8, ptr %i.bcq, align 1, !tbaa !53 ; 2 uses
  %i.bcs = zext i8 %i.bcr to i32
  %i.bct = and i64 %indvars.iv175.i.epil.init, 7
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bct
  %i.bcv = load i8, ptr %i.bcu, align 1, !tbaa !53
  %i.bcw = zext i8 %i.bcv to i32
  %i.bcx = sub nsw i32 %i.bcs, %i.bcw
  %i.bcy = add i32 %i.bcx, %.0131.i.epil.init     ; 2 uses
  %i.bcz = add nuw i64 %indvars.iv175.i.epil.init, 2
  %i.bda = and i64 %i.bcz, 7
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bda
  store i8 %i.bcr, ptr %i.bdb, align 1, !tbaa !53
  %i.bdc = lshr i32 %i.bcy, 1
  %i.bdd = trunc i32 %i.bdc to i8
  store i8 %i.bdd, ptr %i.bcq, align 1, !tbaa !53
  br label %.loopexit.i

.loopexit.i.loopexit377.unr-lcssa:                ; preds = %.lr.ph120.i
  br i1 %lcmp.mod394.not, label %.loopexit.i, label %.lr.ph120.i.epil.preheader

.lr.ph120.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit377.unr-lcssa, %.lr.ph120.i.preheader
  %indvars.iv165.i.epil.init = phi i64 [ 0, %.lr.ph120.i.preheader ], [ %indvars.iv.next166.i.1, %.loopexit.i.loopexit377.unr-lcssa ] ; 2 uses
  %.2119.i.epil.init = phi i32 [ 0, %.lr.ph120.i.preheader ], [ %i.bbh, %.loopexit.i.loopexit377.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod396)
  %i.bde = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv165.i.epil.init ; 2 uses
  %i.bdf = load i8, ptr %i.bde, align 1, !tbaa !53 ; 2 uses
  %i.bdg = zext i8 %i.bdf to i32
  %i.bdh = and i64 %indvars.iv165.i.epil.init, 7  ; 2 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bdh
  %i.bdj = load i8, ptr %i.bdi, align 1, !tbaa !53
  %i.bdk = zext i8 %i.bdj to i32
  %i.bdl = sub nsw i32 %i.bdg, %i.bdk
  %i.bdm = add i32 %i.bdl, %.2119.i.epil.init     ; 2 uses
  %i.bdn = xor i64 %i.bdh, 4
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bdn
  store i8 %i.bdf, ptr %i.bdo, align 1, !tbaa !53
  %i.bdp = lshr i32 %i.bdm, 2
  %i.bdq = trunc i32 %i.bdp to i8
  store i8 %i.bdq, ptr %i.bde, align 1, !tbaa !53
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph120.i.epil.preheader, %.loopexit.i.loopexit377.unr-lcssa, %.lr.ph126.i, %.lr.ph132.i.epil.preheader, %.loopexit.i.loopexit375.unr-lcssa, %.lr.ph138.i, %.preheader.i, %.preheader105.i, %.preheader107.i, %.preheader109.i, %.preheader111.i
  %.593.i = phi i32 [ %i.ayr, %.lr.ph138.i ], [ %i.ayr, %.lr.ph132.i.epil.preheader ], [ %i.ayr, %.lr.ph126.i ], [ %i.ayr, %.lr.ph120.i.epil.preheader ], [ 0, %.preheader.i ], [ 0, %.preheader105.i ], [ 0, %.preheader107.i ], [ 0, %.preheader109.i ], [ 0, %.preheader111.i ], [ %i.ayr, %.loopexit.i.loopexit375.unr-lcssa ], [ %i.ayr, %.loopexit.i.loopexit377.unr-lcssa ], [ %i.ayr, %.lr.ph.i ] ; 2 uses
  %.5.i = phi i32 [ %i.bci, %.lr.ph138.i ], [ %i.bcy, %.lr.ph132.i.epil.preheader ], [ %i.bag, %.lr.ph126.i ], [ %i.bdm, %.lr.ph120.i.epil.preheader ], [ 0, %.preheader.i ], [ 0, %.preheader105.i ], [ 0, %.preheader107.i ], [ 0, %.preheader109.i ], [ 0, %.preheader111.i ], [ %i.azs, %.loopexit.i.loopexit375.unr-lcssa ], [ %i.bbh, %.loopexit.i.loopexit377.unr-lcssa ], [ %i.bbu, %.lr.ph.i ] ; 2 uses
  %i.bdr = icmp samesign ult i32 %.593.i, %i.aym
  br i1 %i.bdr, label %.lr.ph143.preheader.i, label %._crit_edge.i

.lr.ph143.preheader.i:                            ; preds = %.loopexit.i
  %i.bds = zext i32 %.593.i to i64                ; 6 uses
  %i.bdt = sub nsw i64 %i.ayq, %i.bds
  %xtraiter403 = and i64 %i.bdt, 1
  %lcmp.mod404.not = icmp eq i64 %xtraiter403, 0
  br i1 %lcmp.mod404.not, label %.lr.ph143.i.prol.loopexit, label %.lr.ph143.i.prol

.lr.ph143.i.prol:                                 ; preds = %.lr.ph143.preheader.i
  %i.bdu = and i64 %i.bds, 7
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bdu
  %i.bdw = load i8, ptr %i.bdv, align 1, !tbaa !53
  %i.bdx = zext i8 %i.bdw to i32
  %i.bdy = sub i32 %.5.i, %i.bdx                  ; 2 uses
  %i.bdz = udiv i32 %i.bdy, %i.al
  %i.bea = trunc i32 %i.bdz to i8
  %i.beb = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %i.bds
  store i8 %i.bea, ptr %i.beb, align 1, !tbaa !53
  %indvars.iv.next186.i.prol = add nuw nsw i64 %i.bds, 1
  br label %.lr.ph143.i.prol.loopexit

.lr.ph143.i.prol.loopexit:                        ; preds = %.lr.ph143.i.prol, %.lr.ph143.preheader.i
  %indvars.iv185.i.unr = phi i64 [ %i.bds, %.lr.ph143.preheader.i ], [ %indvars.iv.next186.i.prol, %.lr.ph143.i.prol ]
  %.6142.i.unr = phi i32 [ %.5.i, %.lr.ph143.preheader.i ], [ %i.bdy, %.lr.ph143.i.prol ]
  %i.bec = icmp eq i64 %i.ayv, %i.bds
  br i1 %i.bec, label %._crit_edge.i, label %.lr.ph143.i

.lr.ph143.i:                                      ; preds = %.lr.ph143.i.prol.loopexit, %.lr.ph143.i
  %indvars.iv185.i = phi i64 [ %indvars.iv.next186.i.1, %.lr.ph143.i ], [ %indvars.iv185.i.unr, %.lr.ph143.i.prol.loopexit ] ; 4 uses
  %.6142.i = phi i32 [ %i.bep, %.lr.ph143.i ], [ %.6142.i.unr, %.lr.ph143.i.prol.loopexit ]
  %i.bed = and i64 %indvars.iv185.i, 7
  %i.bee = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bed
  %i.bef = load i8, ptr %i.bee, align 1, !tbaa !53
  %i.beg = zext i8 %i.bef to i32
  %i.beh = sub i32 %.6142.i, %i.beg               ; 2 uses
  %i.bei = udiv i32 %i.beh, %i.al
  %i.bej = trunc i32 %i.bei to i8
  %i.bek = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv185.i
  store i8 %i.bej, ptr %i.bek, align 1, !tbaa !53
  %indvars.iv.next186.i = add nuw nsw i64 %indvars.iv185.i, 1 ; 2 uses
  %i.bel = and i64 %indvars.iv.next186.i, 7
  %i.bem = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bel
  %i.ben = load i8, ptr %i.bem, align 1, !tbaa !53
  %i.beo = zext i8 %i.ben to i32
  %i.bep = sub i32 %i.beh, %i.beo                 ; 2 uses
  %i.beq = udiv i32 %i.bep, %i.al
  %i.ber = trunc i32 %i.beq to i8
  %i.bes = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv.next186.i
  store i8 %i.ber, ptr %i.bes, align 1, !tbaa !53
  %indvars.iv.next186.i.1 = add nuw nsw i64 %indvars.iv185.i, 2 ; 2 uses
  %exitcond189.not.i.1 = icmp eq i64 %indvars.iv.next186.i.1, %i.ayq
  br i1 %exitcond189.not.i.1, label %._crit_edge.i, label %.lr.ph143.i, !llvm.loop !784

._crit_edge.i:                                    ; preds = %.lr.ph143.i.prol.loopexit, %.lr.ph143.i, %.loopexit.i
  %i.bet = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %i.ayq
  %i.beu = add nuw nsw i32 %.095146.i, 1          ; 2 uses
  %exitcond190.not.i = icmp eq i32 %i.beu, %i.ayo
  br i1 %exitcond190.not.i, label %_ZL18stbtt__h_prefilterPhiiij.exit, label %bb.iw, !llvm.loop !785

_ZL18stbtt__h_prefilterPhiiij.exit:               ; preds = %._crit_edge.i, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %bb.ix

bb.ix:                                            ; preds = %_ZL18stbtt__h_prefilterPhiiij.exit, %_ZL29stbtt_MakeGlyphBitmapSubpixelPK14stbtt_fontinfoPhiiiffffi.exit
  %i.bev = icmp sgt i8 %narrow.i, 1
  br i1 %i.bev, label %bb.iy, label %bb.ja

bb.iy:                                            ; preds = %bb.ix
  %i.bew = load i16, ptr %i.ed, align 2, !tbaa !451 ; 3 uses
  %i.bex = zext i16 %i.bew to i32
  %i.bey = load i16, ptr %i.ei, align 2, !tbaa !452 ; 2 uses
  %i.bez = zext i16 %i.bey to i32                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 0, ptr %i.a, align 8
  %.not165.i = icmp eq i16 %i.bew, 0
  br i1 %.not165.i, label %_ZL18stbtt__v_prefilterPhiiij.exit, label %.lr.ph163.i

.lr.ph163.i:                                      ; preds = %bb.iy
  %i.bfa = zext nneg i32 %spec.select.i to i64
  %.not128.i = icmp samesign ult i32 %i.bez, %spec.select.i ; 5 uses
  %i.bfb = zext i16 %i.bew to i64                 ; 10 uses
  %reass.sub168 = sub nsw i32 %i.bez, %spec.select.i
  %i.bfc = add nsw i32 %reass.sub168, 1           ; 8 uses
  %wide.trip.count.i112 = zext i32 %i.bfc to i64  ; 6 uses
  %wide.trip.count203.i = zext i16 %i.bey to i64  ; 3 uses
  %xtraiter405 = and i64 %wide.trip.count.i112, 1
  %i.bfd = icmp eq i32 %i.bez, %spec.select.i
  %unroll_iter409 = and i64 %wide.trip.count.i112, 4294967294
  %lcmp.mod406.not = icmp eq i64 %xtraiter405, 0
  %lcmp.mod408 = trunc i32 %i.bfc to i1
  %i.bfe = add nsw i64 %wide.trip.count203.i, -1
  br label %bb.iz

bb.iz:                                            ; preds = %._crit_edge.i121, %.lr.ph163.i
  %.0110161.i = phi i32 [ 0, %.lr.ph163.i ], [ %i.bkl, %._crit_edge.i121 ]
  %.0111159.i = phi ptr [ %i.eb, %.lr.ph163.i ], [ %i.bkk, %._crit_edge.i121 ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, i8 0, i64 %i.bfa, i1 false)
  switch i8 %narrow.i, label %.preheader.i128 [
    i8 2, label %.preheader120.i
    i8 3, label %.preheader122.i
    i8 4, label %.preheader124.i
    i8 5, label %.preheader126.i
  ]

.preheader126.i:                                  ; preds = %bb.iz
  br i1 %.not128.i, label %.loopexit.i119, label %.lr.ph.i115

.preheader124.i:                                  ; preds = %bb.iz
  br i1 %.not128.i, label %.loopexit.i119, label %.lr.ph135.i.preheader

.lr.ph135.i.preheader:                            ; preds = %.preheader124.i
  br i1 %i.bfd, label %.lr.ph135.i.epil.preheader, label %.lr.ph135.i

.preheader122.i:                                  ; preds = %bb.iz
  br i1 %.not128.i, label %.loopexit.i119, label %.lr.ph141.i

.preheader120.i:                                  ; preds = %bb.iz
  br i1 %.not128.i, label %.loopexit.i119, label %.lr.ph147.i

.preheader.i128:                                  ; preds = %bb.iz
  br i1 %.not128.i, label %.loopexit.i119, label %.lr.ph153.i

.lr.ph147.i:                                      ; preds = %.preheader120.i, %.lr.ph147.i
  %indvars.iv190.i = phi i64 [ %indvars.iv.next191.i, %.lr.ph147.i ], [ 0, %.preheader120.i ] ; 4 uses
  %.0146.i = phi i32 [ %i.bfo, %.lr.ph147.i ], [ 0, %.preheader120.i ]
  %i.bff = mul nuw nsw i64 %indvars.iv190.i, %i.bfb
  %i.bfg = getelementptr inbounds nuw i8, ptr %.0111159.i, i64 %i.bff ; 2 uses
  %i.bfh = load i8, ptr %i.bfg, align 1, !tbaa !53 ; 2 uses
  %i.bfi = zext i8 %i.bfh to i32
  %i.bfj = and i64 %indvars.iv190.i, 7
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bfj
  %i.bfl = load i8, ptr %i.bfk, align 1, !tbaa !53
  %i.bfm = zext i8 %i.bfl to i32
  %i.bfn = sub nsw i32 %i.bfi, %i.bfm
  %i.bfo = add i32 %i.bfn, %.0146.i               ; 3 uses
  %i.bfp = add nuw i64 %indvars.iv190.i, 2
  %i.bfq = and i64 %i.bfp, 7
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bfq
  store i8 %i.bfh, ptr %i.bfr, align 1, !tbaa !53
  %i.bfs = lshr i32 %i.bfo, 1
  %i.bft = trunc i32 %i.bfs to i8
  store i8 %i.bft, ptr %i.bfg, align 1, !tbaa !53
  %indvars.iv.next191.i = add nuw nsw i64 %indvars.iv190.i, 1 ; 2 uses
  %exitcond194.not.i = icmp eq i64 %indvars.iv.next191.i, %wide.trip.count.i112
  br i1 %exitcond194.not.i, label %.loopexit.i119, label %.lr.ph147.i, !llvm.loop !786

.lr.ph141.i:                                      ; preds = %.preheader122.i, %.lr.ph141.i
  %indvars.iv185.i125 = phi i64 [ %indvars.iv.next186.i126, %.lr.ph141.i ], [ 0, %.preheader122.i ] ; 4 uses
  %.1140.i = phi i32 [ %i.bgd, %.lr.ph141.i ], [ 0, %.preheader122.i ]
  %i.bfu = mul nuw nsw i64 %indvars.iv185.i125, %i.bfb
  %i.bfv = getelementptr inbounds nuw i8, ptr %.0111159.i, i64 %i.bfu ; 2 uses
  %i.bfw = load i8, ptr %i.bfv, align 1, !tbaa !53 ; 2 uses
  %i.bfx = zext i8 %i.bfw to i32
  %i.bfy = and i64 %indvars.iv185.i125, 7
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bfy
  %i.bga = load i8, ptr %i.bfz, align 1, !tbaa !53
  %i.bgb = zext i8 %i.bga to i32
  %i.bgc = sub nsw i32 %i.bfx, %i.bgb
  %i.bgd = add i32 %i.bgc, %.1140.i               ; 3 uses
  %i.bge = add nuw i64 %indvars.iv185.i125, 3
  %i.bgf = and i64 %i.bge, 7
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bgf
  store i8 %i.bfw, ptr %i.bgg, align 1, !tbaa !53
  %i.bgh = udiv i32 %i.bgd, 3
  %i.bgi = trunc i32 %i.bgh to i8
  store i8 %i.bgi, ptr %i.bfv, align 1, !tbaa !53
  %indvars.iv.next186.i126 = add nuw nsw i64 %indvars.iv185.i125, 1 ; 2 uses
  %exitcond189.not.i127 = icmp eq i64 %indvars.iv.next186.i126, %wide.trip.count.i112
  br i1 %exitcond189.not.i127, label %.loopexit.i119, label %.lr.ph141.i, !llvm.loop !787

.lr.ph135.i:                                      ; preds = %.lr.ph135.i.preheader, %.lr.ph135.i
  %indvars.iv180.i122 = phi i64 [ %indvars.iv.next181.i123.1, %.lr.ph135.i ], [ 0, %.lr.ph135.i.preheader ] ; 4 uses
  %.2134.i = phi i32 [ %i.bhg, %.lr.ph135.i ], [ 0, %.lr.ph135.i.preheader ]
  %niter410 = phi i64 [ %niter410.next.1, %.lr.ph135.i ], [ 0, %.lr.ph135.i.preheader ]
  %i.bgj = mul nuw nsw i64 %indvars.iv180.i122, %i.bfb
  %i.bgk = getelementptr inbounds nuw i8, ptr %.0111159.i, i64 %i.bgj ; 2 uses
  %i.bgl = load i8, ptr %i.bgk, align 1, !tbaa !53 ; 2 uses
  %i.bgm = zext i8 %i.bgl to i32
  %i.bgn = and i64 %indvars.iv180.i122, 6         ; 2 uses
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bgn
  %i.bgp = load i8, ptr %i.bgo, align 2, !tbaa !53
  %i.bgq = zext i8 %i.bgp to i32
  %i.bgr = sub nsw i32 %i.bgm, %i.bgq
  %i.bgs = add i32 %i.bgr, %.2134.i               ; 2 uses
  %i.bgt = xor i64 %i.bgn, 4
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bgt
  store i8 %i.bgl, ptr %i.bgu, align 2, !tbaa !53
  %i.bgv = lshr i32 %i.bgs, 2
  %i.bgw = trunc i32 %i.bgv to i8
  store i8 %i.bgw, ptr %i.bgk, align 1, !tbaa !53
  %indvars.iv.next181.i123 = or disjoint i64 %indvars.iv180.i122, 1 ; 2 uses
  %i.bgx = mul nuw nsw i64 %indvars.iv.next181.i123, %i.bfb
  %i.bgy = getelementptr inbounds nuw i8, ptr %.0111159.i, i64 %i.bgx ; 2 uses
  %i.bgz = load i8, ptr %i.bgy, align 1, !tbaa !53 ; 2 uses
  %i.bha = zext i8 %i.bgz to i32
  %i.bhb = and i64 %indvars.iv.next181.i123, 7    ; 2 uses
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bhb
  %i.bhd = load i8, ptr %i.bhc, align 1, !tbaa !53
  %i.bhe = zext i8 %i.bhd to i32
  %i.bhf = sub nsw i32 %i.bha, %i.bhe
  %i.bhg = add i32 %i.bhf, %i.bgs                 ; 4 uses
  %i.bhh = xor i64 %i.bhb, 4
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bhh
  store i8 %i.bgz, ptr %i.bhi, align 1, !tbaa !53
  %i.bhj = lshr i32 %i.bhg, 2
  %i.bhk = trunc i32 %i.bhj to i8
  store i8 %i.bhk, ptr %i.bgy, align 1, !tbaa !53
  %indvars.iv.next181.i123.1 = add nuw nsw i64 %indvars.iv180.i122, 2 ; 2 uses
  %niter410.next.1 = add i64 %niter410, 2         ; 2 uses
  %niter410.ncmp.1 = icmp eq i64 %niter410.next.1, %unroll_iter409
  br i1 %niter410.ncmp.1, label %.loopexit.i119.loopexit369.unr-lcssa, label %.lr.ph135.i, !llvm.loop !788

.lr.ph.i115:                                      ; preds = %.preheader126.i, %.lr.ph.i115
  %indvars.iv.i116 = phi i64 [ %indvars.iv.next.i117, %.lr.ph.i115 ], [ 0, %.preheader126.i ] ; 4 uses
  %.3130.i = phi i32 [ %i.bhu, %.lr.ph.i115 ], [ 0, %.preheader126.i ]
  %i.bhl = mul nuw nsw i64 %indvars.iv.i116, %i.bfb
  %i.bhm = getelementptr inbounds nuw i8, ptr %.0111159.i, i64 %i.bhl ; 2 uses
  %i.bhn = load i8, ptr %i.bhm, align 1, !tbaa !53 ; 2 uses
  %i.bho = zext i8 %i.bhn to i32
  %i.bhp = and i64 %indvars.iv.i116, 7
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bhp
  %i.bhr = load i8, ptr %i.bhq, align 1, !tbaa !53
  %i.bhs = zext i8 %i.bhr to i32
  %i.bht = sub nsw i32 %i.bho, %i.bhs
  %i.bhu = add i32 %i.bht, %.3130.i               ; 3 uses
  %i.bhv = add nuw i64 %indvars.iv.i116, 5
  %i.bhw = and i64 %i.bhv, 7
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bhw
  store i8 %i.bhn, ptr %i.bhx, align 1, !tbaa !53
  %i.bhy = udiv i32 %i.bhu, 5
  %i.bhz = trunc i32 %i.bhy to i8
  store i8 %i.bhz, ptr %i.bhm, align 1, !tbaa !53
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i116, 1 ; 2 uses
  %exitcond.not.i118 = icmp eq i64 %indvars.iv.next.i117, %wide.trip.count.i112
  br i1 %exitcond.not.i118, label %.loopexit.i119, label %.lr.ph.i115, !llvm.loop !789

.lr.ph153.i:                                      ; preds = %.preheader.i128, %.lr.ph153.i
  %indvars.iv195.i = phi i64 [ %indvars.iv.next196.i, %.lr.ph153.i ], [ 0, %.preheader.i128 ] ; 4 uses
  %.4152.i = phi i32 [ %i.bij, %.lr.ph153.i ], [ 0, %.preheader.i128 ]
  %i.bia = mul nuw nsw i64 %indvars.iv195.i, %i.bfb
  %i.bib = getelementptr inbounds nuw i8, ptr %.0111159.i, i64 %i.bia ; 2 uses
  %i.bic = load i8, ptr %i.bib, align 1, !tbaa !53 ; 2 uses
  %i.bid = zext i8 %i.bic to i32
  %i.bie = and i64 %indvars.iv195.i, 7
  %i.bif = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bie
  %i.big = load i8, ptr %i.bif, align 1, !tbaa !53
  %i.bih = zext i8 %i.big to i32
  %i.bii = sub nsw i32 %i.bid, %i.bih
  %i.bij = add i32 %i.bii, %.4152.i               ; 3 uses
  %i.bik = trunc i64 %indvars.iv195.i to i32
  %i.bil = add i32 %i.bik, %spec.select.i
  %i.bim = and i32 %i.bil, 7
  %i.bin = zext nneg i32 %i.bim to i64
  %i.bio = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bin
  store i8 %i.bic, ptr %i.bio, align 1, !tbaa !53
  %i.bip = udiv i32 %i.bij, %spec.select.i
  %i.biq = trunc i32 %i.bip to i8
  store i8 %i.biq, ptr %i.bib, align 1, !tbaa !53
  %indvars.iv.next196.i = add nuw nsw i64 %indvars.iv195.i, 1 ; 2 uses
  %exitcond199.not.i = icmp eq i64 %indvars.iv.next196.i, %wide.trip.count.i112
  br i1 %exitcond199.not.i, label %.loopexit.i119, label %.lr.ph153.i, !llvm.loop !790

.loopexit.i119.loopexit369.unr-lcssa:             ; preds = %.lr.ph135.i
  br i1 %lcmp.mod406.not, label %.loopexit.i119, label %.lr.ph135.i.epil.preheader

.lr.ph135.i.epil.preheader:                       ; preds = %.loopexit.i119.loopexit369.unr-lcssa, %.lr.ph135.i.preheader
  %indvars.iv180.i122.epil.init = phi i64 [ 0, %.lr.ph135.i.preheader ], [ %indvars.iv.next181.i123.1, %.loopexit.i119.loopexit369.unr-lcssa ] ; 2 uses
  %.2134.i.epil.init = phi i32 [ 0, %.lr.ph135.i.preheader ], [ %i.bhg, %.loopexit.i119.loopexit369.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod408)
  %i.bir = mul nuw nsw i64 %indvars.iv180.i122.epil.init, %i.bfb
  %i.bis = getelementptr inbounds nuw i8, ptr %.0111159.i, i64 %i.bir ; 2 uses
  %i.bit = load i8, ptr %i.bis, align 1, !tbaa !53 ; 2 uses
  %i.biu = zext i8 %i.bit to i32
  %i.biv = and i64 %indvars.iv180.i122.epil.init, 7 ; 2 uses
  %i.biw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.biv
  %i.bix = load i8, ptr %i.biw, align 1, !tbaa !53
  %i.biy = zext i8 %i.bix to i32
  %i.biz = sub nsw i32 %i.biu, %i.biy
  %i.bja = add i32 %i.biz, %.2134.i.epil.init     ; 2 uses
  %i.bjb = xor i64 %i.biv, 4
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bjb
  store i8 %i.bit, ptr %i.bjc, align 1, !tbaa !53
  %i.bjd = lshr i32 %i.bja, 2
  %i.bje = trunc i32 %i.bjd to i8
  store i8 %i.bje, ptr %i.bis, align 1, !tbaa !53
  br label %.loopexit.i119

.loopexit.i119:                                   ; preds = %.lr.ph.i115, %.lr.ph135.i.epil.preheader, %.loopexit.i119.loopexit369.unr-lcssa, %.lr.ph141.i, %.lr.ph147.i, %.lr.ph153.i, %.preheader.i128, %.preheader120.i, %.preheader122.i, %.preheader124.i, %.preheader126.i
  %.5108.i = phi i32 [ %i.bfc, %.lr.ph153.i ], [ %i.bfc, %.lr.ph147.i ], [ %i.bfc, %.lr.ph141.i ], [ %i.bfc, %.lr.ph135.i.epil.preheader ], [ 0, %.preheader.i128 ], [ 0, %.preheader120.i ], [ 0, %.preheader122.i ], [ 0, %.preheader124.i ], [ 0, %.preheader126.i ], [ %i.bfc, %.loopexit.i119.loopexit369.unr-lcssa ], [ %i.bfc, %.lr.ph.i115 ] ; 2 uses
  %.5.i120 = phi i32 [ %i.bij, %.lr.ph153.i ], [ %i.bfo, %.lr.ph147.i ], [ %i.bgd, %.lr.ph141.i ], [ %i.bja, %.lr.ph135.i.epil.preheader ], [ 0, %.preheader.i128 ], [ 0, %.preheader120.i ], [ 0, %.preheader122.i ], [ 0, %.preheader124.i ], [ 0, %.preheader126.i ], [ %i.bhg, %.loopexit.i119.loopexit369.unr-lcssa ], [ %i.bhu, %.lr.ph.i115 ] ; 2 uses
  %i.bjf = icmp samesign ult i32 %.5108.i, %i.bez
  br i1 %i.bjf, label %.lr.ph158.preheader.i, label %._crit_edge.i121

.lr.ph158.preheader.i:                            ; preds = %.loopexit.i119
  %i.bjg = zext i32 %.5108.i to i64               ; 6 uses
  %i.bjh = sub nsw i64 %wide.trip.count203.i, %i.bjg
  %xtraiter411 = and i64 %i.bjh, 1
  %lcmp.mod412.not = icmp eq i64 %xtraiter411, 0
  br i1 %lcmp.mod412.not, label %.lr.ph158.i.prol.loopexit, label %.lr.ph158.i.prol

.lr.ph158.i.prol:                                 ; preds = %.lr.ph158.preheader.i
  %i.bji = and i64 %i.bjg, 7
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bji
  %i.bjk = load i8, ptr %i.bjj, align 1, !tbaa !53
  %i.bjl = zext i8 %i.bjk to i32
  %i.bjm = sub i32 %.5.i120, %i.bjl               ; 2 uses
  %i.bjn = udiv i32 %i.bjm, %spec.select.i
  %i.bjo = trunc i32 %i.bjn to i8
  %i.bjp = mul nuw nsw i64 %i.bjg, %i.bfb
  %i.bjq = getelementptr inbounds nuw i8, ptr %.0111159.i, i64 %i.bjp
  store i8 %i.bjo, ptr %i.bjq, align 1, !tbaa !53
  %indvars.iv.next201.i.prol = add nuw nsw i64 %i.bjg, 1
  br label %.lr.ph158.i.prol.loopexit

.lr.ph158.i.prol.loopexit:                        ; preds = %.lr.ph158.i.prol, %.lr.ph158.preheader.i
  %indvars.iv200.i.unr = phi i64 [ %i.bjg, %.lr.ph158.preheader.i ], [ %indvars.iv.next201.i.prol, %.lr.ph158.i.prol ]
  %.6157.i.unr = phi i32 [ %.5.i120, %.lr.ph158.preheader.i ], [ %i.bjm, %.lr.ph158.i.prol ]
  %i.bjr = icmp eq i64 %i.bfe, %i.bjg
  br i1 %i.bjr, label %._crit_edge.i121, label %.lr.ph158.i

.lr.ph158.i:                                      ; preds = %.lr.ph158.i.prol.loopexit, %.lr.ph158.i
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i.1, %.lr.ph158.i ], [ %indvars.iv200.i.unr, %.lr.ph158.i.prol.loopexit ] ; 4 uses
  %.6157.i = phi i32 [ %i.bkf, %.lr.ph158.i ], [ %.6157.i.unr, %.lr.ph158.i.prol.loopexit ]
  %i.bjs = and i64 %indvars.iv200.i, 7
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bjs
  %i.bju = load i8, ptr %i.bjt, align 1, !tbaa !53
  %i.bjv = zext i8 %i.bju to i32
  %i.bjw = sub i32 %.6157.i, %i.bjv               ; 2 uses
  %i.bjx = udiv i32 %i.bjw, %spec.select.i
  %i.bjy = trunc i32 %i.bjx to i8
  %i.bjz = mul nuw nsw i64 %indvars.iv200.i, %i.bfb
  %i.bka = getelementptr inbounds nuw i8, ptr %.0111159.i, i64 %i.bjz
  store i8 %i.bjy, ptr %i.bka, align 1, !tbaa !53
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, 1 ; 2 uses
  %i.bkb = and i64 %indvars.iv.next201.i, 7
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bkb
  %i.bkd = load i8, ptr %i.bkc, align 1, !tbaa !53
  %i.bke = zext i8 %i.bkd to i32
  %i.bkf = sub i32 %i.bjw, %i.bke                 ; 2 uses
  %i.bkg = udiv i32 %i.bkf, %spec.select.i
  %i.bkh = trunc i32 %i.bkg to i8
  %i.bki = mul nuw nsw i64 %indvars.iv.next201.i, %i.bfb
  %i.bkj = getelementptr inbounds nuw i8, ptr %.0111159.i, i64 %i.bki
  store i8 %i.bkh, ptr %i.bkj, align 1, !tbaa !53
  %indvars.iv.next201.i.1 = add nuw nsw i64 %indvars.iv200.i, 2 ; 2 uses
  %exitcond204.not.i.1 = icmp eq i64 %indvars.iv.next201.i.1, %wide.trip.count203.i
  br i1 %exitcond204.not.i.1, label %._crit_edge.i121, label %.lr.ph158.i, !llvm.loop !791

._crit_edge.i121:                                 ; preds = %.lr.ph158.i.prol.loopexit, %.lr.ph158.i, %.loopexit.i119
  %i.bkk = getelementptr inbounds nuw i8, ptr %.0111159.i, i64 1
  %i.bkl = add nuw nsw i32 %.0110161.i, 1         ; 2 uses
  %exitcond205.not.i = icmp eq i32 %i.bkl, %i.bex
  br i1 %exitcond205.not.i, label %_ZL18stbtt__v_prefilterPhiiij.exit, label %bb.iz, !llvm.loop !792

_ZL18stbtt__v_prefilterPhiiij.exit:               ; preds = %._crit_edge.i121, %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.ja

bb.ja:                                            ; preds = %_ZL18stbtt__v_prefilterPhiiij.exit, %bb.ix
  %i.bkm = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bkn = load ptr, ptr %i.bkm, align 8, !tbaa !286
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 40
  %i.bkp = load ptr, ptr %i.bko, align 8, !tbaa !292
  %i.bkq = load ptr, ptr %i.bkp, align 8, !tbaa !297
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkq, i64 60
  %i.bks = load float, ptr %i.bkr, align 4, !tbaa !313 ; 2 uses
  %i.bkt = fcmp une float %i.bks, 0.000000e+00
  br i1 %i.bkt, label %bb.jb, label %_ZL23stbtt__oversample_shifti.exit132

bb.jb:                                            ; preds = %bb.ja
  %i.bku = load float, ptr %i.aq, align 4, !tbaa !154
  %i.bkv = fdiv float %i.bku, %i.bks
  br label %_ZL23stbtt__oversample_shifti.exit132

_ZL23stbtt__oversample_shifti.exit132:            ; preds = %bb.ja, %bb.jb
  %i.bkw = phi float [ %i.bkv, %bb.jb ], [ 1.000000e+00, %bb.ja ]
  %i.bkx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bky = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.bkz = insertelement <2 x i32> poison, i32 %i.al, i64 0
  %i.bla = insertelement <2 x i32> %i.bkz, i32 %spec.select.i, i64 1
  %i.blb = sub nsw <2 x i32> splat (i32 1), %i.bla
  %i.blc = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bld = insertelement <2 x float> %i.blc, float %i.aw, i64 1 ; 2 uses
  %i.ble = fmul nnan <2 x float> %i.bld, splat (float 2.000000e+00)
  %i.blf = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.blg = load float, ptr %i.blf, align 4, !tbaa !515
  %i.blh = fadd float %i.blg, 5.000000e-01
  %i.bli = fptosi float %i.blh to i32
  %i.blj = insertelement <2 x float> poison, float %i.as, i64 0
  %i.blk = shufflevector <2 x float> %i.blj, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bll = shufflevector <2 x float> %i.bld, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.blm = fmul <4 x float> %i.blk, %i.bll
  %i.bln = load i32, ptr %i.i, align 4, !tbaa !205 ; 2 uses
  %i.blo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.blp = load i32, ptr %i.j, align 4, !tbaa !205 ; 2 uses
  %i.blq = load <2 x i16>, ptr %i.ed, align 2, !tbaa !136
  %i.blr = zext <2 x i16> %i.blq to <2 x i32>
  %i.bls = insertelement <2 x i32> poison, i32 %i.bln, i64 0
  %i.blt = insertelement <2 x i32> %i.bls, i32 %i.blp, i64 1
  %i.blu = add nsw <2 x i32> %i.blt, %i.blr
  %i.blv = load <2 x float>, ptr %i.bkx, align 8, !tbaa !31
  %i.blw = insertelement <2 x float> poison, float %i.bkw, i64 0
  %i.blx = shufflevector <2 x float> %i.blw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bly = fmul <2 x float> %i.blx, %i.blv        ; 2 uses
  %i.blz = load <2 x i8>, ptr %i.bky, align 2, !tbaa !443
  %i.bma = trunc <2 x i8> %i.blz to <2 x i1>
  %i.bmb = fadd <2 x float> %i.bly, splat (float 5.000000e-01)
  %i.bmc = fptosi <2 x float> %i.bmb to <2 x i32>
  %i.bmd = sitofp <2 x i32> %i.bmc to <2 x float>
  %i.bme = select <2 x i1> %i.bma, <2 x float> %i.bmd, <2 x float> %i.bly
  %i.bmf = sitofp <2 x i32> %i.blb to <2 x float>
  %i.bmg = fdiv <2 x float> %i.bmf, %i.ble        ; 2 uses
  %i.bmh = sitofp i32 %i.bli to float
  %i.bmi = extractelement <2 x float> %i.bmg, i64 1
  %i.bmj = fadd float %i.bmi, %i.bmh
  %i.bmk = insertelement <2 x float> %i.bmg, float %i.bmj, i64 1
  %i.bml = fadd <2 x float> %i.bmk, %i.bme
  %i.bmm = shufflevector <2 x float> %i.bml, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bmn = fdiv <4 x float> splat (float 1.000000e+00), %i.blm
  %i.bmo = insertelement <4 x i32> poison, i32 %i.bln, i64 0
  %i.bmp = insertelement <4 x i32> %i.bmo, i32 %i.blp, i64 1
  %i.bmq = shufflevector <2 x i32> %i.blu, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bmr = shufflevector <4 x i32> %i.bmp, <4 x i32> %i.bmq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bms = sitofp <4 x i32> %i.bmr to <4 x float>
  %i.bmt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bms, <4 x float> %i.bmn, <4 x float> %i.bmm)
  store <4 x float> %i.bmt, ptr %i.blo, align 4, !tbaa !31
  %i.bmu = load i32, ptr %5, align 4
  %i.bmv = or i32 %i.bmu, 2
  store i32 %i.bmv, ptr %5, align 4
  %i.bmw = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %i.cv, ptr %i.bmw, align 4, !tbaa !477
  call void @_Z34ImFontAtlasBakedSetFontGlyphBitmapP11ImFontAtlasP11ImFontBakedP12ImFontConfigP11ImFontGlyphP13ImTextureRectPKh15ImTextureFormati(ptr noundef %0, ptr nonnull poison, ptr noundef %1, ptr nonnull poison, ptr noundef nonnull %i.dj, ptr noundef %i.eb, i32 noundef 1, i32 noundef %i.cr)
  br label %.critedge

.critedge:                                        ; preds = %_Z36ImFontAtlasBuildGetOversampleFactorsP12ImFontConfigP11ImFontBakedPiS3_.exit, %_ZL23stbtt__oversample_shifti.exit132, %bb.f
  %.1 = phi i1 [ false, %bb.f ], [ true, %_ZL23stbtt__oversample_shifti.exit132 ], [ true, %_Z36ImFontAtlasBuildGetOversampleFactorsP12ImFontConfigP11ImFontBakedPiS3_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #35
  br label %bb.jc

bb.jc:                                            ; preds = %bb.a, %.critedge
  %.2 = phi i1 [ %.1, %.critedge ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11ImFontAtlas19GetGlyphRangesGreekEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #19 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas19GetGlyphRangesGreekEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11ImFontAtlas20GetGlyphRangesKoreanEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #19 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas20GetGlyphRangesKoreanEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11ImFontAtlas25GetGlyphRangesChineseFullEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #19 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas25GetGlyphRangesChineseFullEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @_ZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = load i16, ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11full_ranges, align 16, !tbaa !136
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11full_ranges, ptr noundef nonnull align 16 dereferenceable(24) @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11base_ranges, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.4, %bb.c ] ; 6 uses
  %.01215.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE11full_ranges, i64 24), %bb.b ], [ %i.ad, %bb.c ] ; 11 uses
  %.01314.i = phi i16 [ 19968, %bb.b ], [ %i.ab, %bb.c ]
  %i.b = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.c = load i16, ptr %i.b, align 2, !tbaa !136
  %i.d = add i16 %i.c, %.01314.i                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01215.i, i64 2
  store i16 %i.d, ptr %i.e, align 2, !tbaa !136
  store i16 %i.d, ptr %.01215.i, align 2, !tbaa !136
  %i.f = getelementptr inbounds nuw i8, ptr %.01215.i, i64 4
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @_ZZN11ImFontAtlas37GetGlyphRangesChineseSimplifiedCommonEvE32accumulative_offsets_from_0x4E00, i64 %indvars.iv.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !136
  %i.j = add i16 %i.i, %i.d                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01215.i, i64 6
  store i16 %i.j, ptr %i.k, align 2, !tbaa !136
  store i16 %i.j, ptr %i.f, align 2, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %.01215.i, i64 8
end_hunk_0
