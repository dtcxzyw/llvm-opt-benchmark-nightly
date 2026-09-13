Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/backward_references_hq?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@BrotliCreateHqZopfliBackwardReferences:bb.a
  %i.aca = icmp ult i32 %i.abx, 256
  br i1 %i.aca, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.acb = zext nneg i32 %i.abx to i64
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.acb
  %i.acd = load double, ptr %i.acc, align 8, !tbaa !99
  br label %FastLog2.exit.i.i

bb.dd:                                            ; preds = %bb.db
  %i.ace = uitofp i32 %i.abx to double
  %i.acf = call double @log2(double noundef %i.ace) #13
  br label %FastLog2.exit.i.i

FastLog2.exit.i.i:                                ; preds = %bb.dd, %bb.dc
  %.0.i.i.i = phi double [ %i.acd, %bb.dc ], [ %i.acf, %bb.dd ]
  %i.acg = fptrunc double %.0.i.i.i to float
  %i.ach = fsub float %i.abu, %i.acg              ; 2 uses
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %.248.i.i
  %i.acj = fcmp olt float %i.ach, 1.000000e+00
  %spec.store.select.i.i = select i1 %i.acj, float 1.000000e+00, float %i.ach
  store float %spec.store.select.i.i, ptr %i.aci, align 4
  br label %bb.de

bb.de:                                            ; preds = %FastLog2.exit.i.i, %bb.da
  %i.ack = add nuw nsw i64 %.248.i.i, 1           ; 2 uses
  %exitcond54.not.i.i = icmp eq i64 %i.ack, 256
  br i1 %exitcond54.not.i.i, label %SetCost.exit.i, label %.lr.ph49.i.i, !llvm.loop !12

SetCost.exit.i:                                   ; preds = %bb.de
  call fastcc void @SetCost(ptr noundef nonnull %i.ya, i64 noundef 704, i32 noundef 0, ptr noundef nonnull %i.wt)
  %i.acl = load i32, ptr %i.xy, align 8, !tbaa !64
  %i.acm = zext i32 %i.acl to i64
  %i.acn = load ptr, ptr %i.xx, align 8, !tbaa !63
  call fastcc void @SetCost(ptr noundef nonnull %i.yb, i64 noundef %i.acm, i32 noundef 0, ptr noundef %i.acn)
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %SetCost.exit.i
  %.182.i = phi i64 [ 0, %SetCost.exit.i ], [ %i.adh, %bb.df ] ; 5 uses
  %.07181.i = phi float [ 1.700000e+38, %SetCost.exit.i ], [ %i.adg, %bb.df ] ; 2 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %.182.i
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !92 ; 2 uses
  %i.acq = fcmp olt float %.07181.i, %i.acp
  %i.acr = select i1 %i.acq, float %.07181.i, float %i.acp ; 2 uses
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %.182.i
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 4
  %i.acu = load float, ptr %i.act, align 4, !tbaa !92 ; 2 uses
  %i.acv = fcmp olt float %i.acr, %i.acu
  %i.acw = select i1 %i.acv, float %i.acr, float %i.acu ; 2 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %.182.i
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 8
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !92 ; 2 uses
  %i.ada = fcmp olt float %i.acw, %i.acz
  %i.adb = select i1 %i.ada, float %i.acw, float %i.acz ; 2 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %.182.i
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 12
  %i.ade = load float, ptr %i.add, align 4, !tbaa !92 ; 2 uses
  %i.adf = fcmp olt float %i.adb, %i.ade
  %i.adg = select i1 %i.adf, float %i.adb, float %i.ade ; 2 uses
  %i.adh = add nuw nsw i64 %.182.i, 4             ; 2 uses
  %exitcond92.not.i.3 = icmp eq i64 %i.adh, 704
  br i1 %exitcond92.not.i.3, label %bb.dg, label %bb.df, !llvm.loop !228

bb.dg:                                            ; preds = %bb.df
  store float %i.adg, ptr %i.ye, align 8, !tbaa !100
  %i.adi = load ptr, ptr %i.xp, align 8, !tbaa !61 ; 4 uses
  %i.adj = load i64, ptr %i.xl, align 8, !tbaa !60 ; 5 uses
  store float 0.000000e+00, ptr %i.adi, align 4, !tbaa !92
  %.not89.i = icmp eq i64 %i.adj, 0
  br i1 %.not89.i, label %ZopfliCostModelSetFromCommands.exit, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %bb.dg
  %xtraiter958 = and i64 %i.adj, 1
  %i.adk = icmp eq i64 %i.adj, 1
  br i1 %i.adk, label %.lr.ph86.i.epil.preheader, label %.lr.ph86.i.preheader.new

.lr.ph86.i.preheader.new:                         ; preds = %.lr.ph86.i.preheader
  %unroll_iter961 = and i64 %i.adj, -2
  br label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %.lr.ph86.i, %.lr.ph86.i.preheader.new
  %i.adl = phi float [ 0.000000e+00, %.lr.ph86.i.preheader.new ], [ %i.aeh, %.lr.ph86.i ] ; 2 uses
  %.084.i = phi float [ 0.000000e+00, %.lr.ph86.i.preheader.new ], [ %i.ael, %.lr.ph86.i ]
  %.283.i = phi i64 [ 0, %.lr.ph86.i.preheader.new ], [ %i.aei, %.lr.ph86.i ] ; 3 uses
  %niter962 = phi i64 [ 0, %.lr.ph86.i.preheader.new ], [ %niter962.next.1, %.lr.ph86.i ]
  %i.adm = add i64 %.283.i, %2
  %i.adn = and i64 %i.adm, %4
  %i.ado = getelementptr inbounds nuw i8, ptr %3, i64 %i.adn
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !22
  %i.adq = zext i8 %i.adp to i64
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %i.adq
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !92
  %i.adt = fadd float %.084.i, %i.ads             ; 2 uses
  %i.adu = fadd float %i.adl, %i.adt              ; 4 uses
  %i.adv = or disjoint i64 %.283.i, 1             ; 2 uses
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %i.adv
  store float %i.adu, ptr %i.adw, align 4, !tbaa !92
  %i.adx = fsub float %i.adu, %i.adl
  %i.ady = fsub float %i.adt, %i.adx
  %i.adz = add i64 %i.adv, %2
  %i.aea = and i64 %i.adz, %4
  %i.aeb = getelementptr inbounds nuw i8, ptr %3, i64 %i.aea
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !22
  %i.aed = zext i8 %i.aec to i64
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %i.aed
  %i.aef = load float, ptr %i.aee, align 4, !tbaa !92
  %i.aeg = fadd float %i.ady, %i.aef              ; 2 uses
  %i.aeh = fadd float %i.adu, %i.aeg              ; 4 uses
  %i.aei = add nuw i64 %.283.i, 2                 ; 3 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %i.aei
  store float %i.aeh, ptr %i.aej, align 4, !tbaa !92
  %i.aek = fsub float %i.aeh, %i.adu
  %i.ael = fsub float %i.aeg, %i.aek              ; 2 uses
  %niter962.next.1 = add nuw i64 %niter962, 2     ; 2 uses
  %niter962.ncmp.1 = icmp eq i64 %niter962.next.1, %unroll_iter961
  br i1 %niter962.ncmp.1, label %ZopfliCostModelSetFromCommands.exit.loopexit.unr-lcssa, label %.lr.ph86.i, !llvm.loop !229

ZopfliCostModelSetFromCommands.exit.loopexit.unr-lcssa: ; preds = %.lr.ph86.i
  %lcmp.mod959.not = icmp eq i64 %xtraiter958, 0
  br i1 %lcmp.mod959.not, label %ZopfliCostModelSetFromCommands.exit, label %.lr.ph86.i.epil.preheader

.lr.ph86.i.epil.preheader:                        ; preds = %ZopfliCostModelSetFromCommands.exit.loopexit.unr-lcssa, %.lr.ph86.i.preheader
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph86.i.preheader ], [ %i.aeh, %ZopfliCostModelSetFromCommands.exit.loopexit.unr-lcssa ]
  %.084.i.epil.init = phi float [ 0.000000e+00, %.lr.ph86.i.preheader ], [ %i.ael, %ZopfliCostModelSetFromCommands.exit.loopexit.unr-lcssa ]
  %.283.i.epil.init = phi i64 [ 0, %.lr.ph86.i.preheader ], [ %i.aei, %ZopfliCostModelSetFromCommands.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod960 = trunc i64 %i.adj to i1
  call void @llvm.assume(i1 %lcmp.mod960)
  %i.aem = add i64 %.283.i.epil.init, %2
  %i.aen = and i64 %i.aem, %4
  %i.aeo = getelementptr inbounds nuw i8, ptr %3, i64 %i.aen
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !22
  %i.aeq = zext i8 %i.aep to i64
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %i.aeq
  %i.aes = load float, ptr %i.aer, align 4, !tbaa !92
  %i.aet = fadd float %.084.i.epil.init, %i.aes
  %i.aeu = fadd float %.epil.init, %i.aet
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %.283.i.epil.init
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  store float %i.aeu, ptr %i.aew, align 4, !tbaa !92
  br label %ZopfliCostModelSetFromCommands.exit

ZopfliCostModelSetFromCommands.exit:              ; preds = %.lr.ph86.i.epil.preheader, %ZopfliCostModelSetFromCommands.exit.loopexit.unr-lcssa, %bb.dg, %bb.cu
  store i64 %i.ww, ptr %11, align 8, !tbaa !47
  store i64 %i.wu, ptr %12, align 8, !tbaa !47
  store i64 %i.wv, ptr %9, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.aex = load i64, ptr %i.c, align 8, !tbaa !43
  %i.aey = load i32, ptr %i.e, align 8, !tbaa !42
  %i.aez = zext nneg i32 %i.aey to i64
  %i.afa = shl nuw i64 1, %i.aez
  %i.afb = add i64 %i.afa, -16                    ; 2 uses
  %i.afc = load i32, ptr %i.yf, align 4, !tbaa !54
  %i.afd = icmp slt i32 %i.afc, 11
  %i.afe = select i1 %i.afd, i64 150, i64 325
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  store i32 0, ptr %i.xn, align 4, !tbaa !45
  store float 0.000000e+00, ptr %i.yg, align 4, !tbaa !22
  store i64 0, ptr %i.yh, align 8, !tbaa !66
  br i1 %i.wq, label %.lr.ph76.i, label %._crit_edge.i328

.lr.ph76.i:                                       ; preds = %ZopfliCostModelSetFromCommands.exit
  %i.aff = add i64 %i.yi, %i.aex
  %i.afg = add i64 %i.afb, %i.wr
  br label %bb.dh

bb.dh:                                            ; preds = %bb.ed, %.lr.ph76.i
  %.05375.i = phi i64 [ 0, %.lr.ph76.i ], [ %i.alt, %bb.ed ] ; 4 uses
  %.05574.i = phi i64 [ 0, %.lr.ph76.i ], [ %.257.i, %bb.ed ] ; 2 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %.05375.i ; 2 uses
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !21
  %i.afj = zext i32 %i.afi to i64
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %.0202.lcssa, i64 %.05574.i
  %i.afl = call fastcc i64 @UpdateNodes(i64 noundef %1, i64 noundef %2, i64 noundef %.05375.i, ptr noundef %3, i64 noundef %4, ptr noundef readonly %6, i64 noundef %i.afb, ptr noundef nonnull readonly %8, i64 noundef %i.afj, ptr noundef readonly %i.afk, ptr noundef readonly %i.wt, ptr noundef %15, ptr noundef nonnull %i.xn) ; 2 uses
  %i.afm = icmp ult i64 %i.afl, 16384
  %spec.store.select.i = select i1 %i.afm, i64 0, i64 %i.afl ; 3 uses
  %i.afn = load i32, ptr %i.afh, align 4, !tbaa !21 ; 2 uses
  %i.afo = zext i32 %i.afn to i64
  %i.afp = add i64 %.05574.i, %i.afo              ; 3 uses
  %i.afq = icmp eq i32 %i.afn, 1
  br i1 %i.afq, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.afr = getelementptr [8 x i8], ptr %.0202.lcssa, i64 %i.afp
  %i.afs = getelementptr i8, ptr %i.afr, i64 -4
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !72
  %i.afu = lshr i32 %i.aft, 5
  %i.afv = zext nneg i32 %i.afu to i64            ; 2 uses
  %i.afw = icmp samesign ult i64 %i.afe, %i.afv
  br i1 %i.afw, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.afx = call i64 @llvm.umax.i64(i64 %i.afv, i64 %spec.store.select.i)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh
  %.0.i333 = phi i64 [ %i.afx, %bb.dj ], [ %spec.store.select.i, %bb.di ], [ %spec.store.select.i, %bb.dh ] ; 2 uses
  %i.afy = icmp ugt i64 %.0.i333, 1
  br i1 %i.afy, label %.lr.ph.preheader.i, label %bb.ed

.lr.ph.preheader.i:                               ; preds = %bb.dk
  %.promoted.i = load i64, ptr %i.yh, align 8
  %.163.i = add i64 %.0.i333, -1
  br label %.lr.ph.i335

.lr.ph.i335:                                      ; preds = %EvaluateNode.exit.i, %.lr.ph.preheader.i
  %.167.i = phi i64 [ %.163.i, %.lr.ph.preheader.i ], [ %.1.i339, %EvaluateNode.exit.i ]
  %.15466.i = phi i64 [ %.05375.i, %.lr.ph.preheader.i ], [ %i.aga, %EvaluateNode.exit.i ] ; 2 uses
  %.15665.i = phi i64 [ %i.afp, %.lr.ph.preheader.i ], [ %i.als, %EvaluateNode.exit.i ] ; 2 uses
  %i.afz = phi i64 [ %.promoted.i, %.lr.ph.preheader.i ], [ %i.alo, %EvaluateNode.exit.i ] ; 5 uses
  %i.aga = add i64 %.15466.i, 1                   ; 10 uses
  %i.agb = add i64 %.15466.i, 4
  %.not60.i = icmp ult i64 %i.agb, %1
  br i1 %.not60.i, label %bb.dl, label %.loopexit.i

bb.dl:                                            ; preds = %.lr.ph.i335
  %i.agc = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.aga ; 4 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 12 ; 2 uses
  %i.age = load float, ptr %i.agd, align 4, !tbaa !22 ; 3 uses
  %i.agf = load i32, ptr %i.agc, align 4, !tbaa !45
  %i.agg = and i32 %i.agf, 33554431               ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agc, i64 8
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !46 ; 2 uses
  %i.agj = and i32 %i.agi, 134217727
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agc, i64 4
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !48 ; 2 uses
  %i.agm = icmp eq i64 %i.aga, 0
  br i1 %i.agm, label %ComputeDistanceShortcut.exit.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.agn = zext i32 %i.agl to i64                 ; 2 uses
  %i.ago = zext nneg i32 %i.agg to i64
  %i.agp = add nuw nsw i64 %i.agn, %i.ago
  %i.agq = add i64 %i.aff, %i.aga
  %.not.i.i.i336 = icmp ugt i64 %i.agp, %i.agq
  %.not23.i.i.i = icmp ult i64 %i.afg, %i.agn
  %or.cond.i.i.i = or i1 %.not23.i.i.i, %.not.i.i.i336
  br i1 %or.cond.i.i.i, label %bb.do, label %ZopfliNodeDistanceCode.exit.i.i.i

ZopfliNodeDistanceCode.exit.i.i.i:                ; preds = %bb.dm
  %i.agr = lshr i32 %i.agi, 27                    ; 2 uses
  %i.ags = icmp eq i32 %i.agr, 0
  %i.agt = add i32 %i.agl, 15
  %i.agu = add nsw i32 %i.agr, -1
  %i.agv = select i1 %i.ags, i32 %i.agt, i32 %i.agu
  %.not24.i.i.i = icmp eq i32 %i.agv, 0
  br i1 %.not24.i.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %ZopfliNodeDistanceCode.exit.i.i.i
  %i.agw = trunc i64 %i.aga to i32
  br label %ComputeDistanceShortcut.exit.i.i

bb.do:                                            ; preds = %ZopfliNodeDistanceCode.exit.i.i.i, %bb.dm
  %narrow.i.i.i = add nuw nsw i32 %i.agj, %i.agg
  %i.agx = zext nneg i32 %narrow.i.i.i to i64
  %i.agy = sub i64 %i.aga, %i.agx
  %i.agz = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.agy
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 12
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !22
  br label %ComputeDistanceShortcut.exit.i.i

ComputeDistanceShortcut.exit.i.i:                 ; preds = %bb.do, %bb.dn, %bb.dl
  %.0.i.i.i337 = phi i32 [ %i.ahb, %bb.do ], [ %i.agw, %bb.dn ], [ 0, %bb.dl ] ; 3 uses
  store i32 %.0.i.i.i337, ptr %i.agd, align 4, !tbaa !22
  %i.ahc = load ptr, ptr %i.xp, align 8, !tbaa !61 ; 2 uses
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %i.aga
  %i.ahe = load float, ptr %i.ahd, align 4, !tbaa !92
  %i.ahf = load float, ptr %i.ahc, align 4, !tbaa !92
  %i.ahg = fsub float %i.ahe, %i.ahf              ; 2 uses
  %i.ahh = fcmp ugt float %i.age, %i.ahg
  br i1 %i.ahh, label %EvaluateNode.exit.i, label %bb.dp

bb.dp:                                            ; preds = %ComputeDistanceShortcut.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  store i64 %i.aga, ptr %14, align 8, !tbaa !94
  store float %i.age, ptr %i.yj, align 4, !tbaa !95
  %i.ahi = fsub float %i.age, %i.ahg
  store float %i.ahi, ptr %i.yk, align 8, !tbaa !96
  %.not.i20.i.i = icmp eq i32 %.0.i.i.i337, 0
  br i1 %.not.i20.i.i, label %.lr.ph31.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ 4, %.lr.ph.i.i.i ], [ 8, %.lr.ph.i.i.i.1 ], [ 12, %.lr.ph.i.i.i.2 ], [ 16, %.lr.ph.i.i.i.3 ]
  %.lcssa901 = phi i1 [ true, %.lr.ph.i.i.i ], [ true, %.lr.ph.i.i.i.1 ], [ true, %.lr.ph.i.i.i.2 ], [ false, %.lr.ph.i.i.i.3 ]
  br i1 %.lcssa901, label %.lr.ph31.preheader.i.i.i, label %ComputeDistanceCache.exit.i.i

.lr.ph31.preheader.i.i.i:                         ; preds = %.preheader.i.i.i, %bb.dp
  %.021.lcssa37.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.lcssa, %.preheader.i.i.i ], [ 0, %bb.dp ] ; 2 uses
  %i.ahj = getelementptr nuw i8, ptr %14, i64 %.021.lcssa37.i.i.i
  %scevgep.i.i = getelementptr nuw i8, ptr %i.ahj, i64 8
  %i.ahk = sub nuw nsw i64 16, %.021.lcssa37.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep.i.i, ptr nonnull readonly align 4 %8, i64 %i.ahk, i1 false), !tbaa !21
  br label %ComputeDistanceCache.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.dp
  %.022.i.i.i338 = zext i32 %.0.i.i.i337 to i64   ; 2 uses
  %i.ahl = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %.022.i.i.i338 ; 3 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !46
  %i.aho = and i32 %i.ahn, 134217727
  %i.ahp = load i32, ptr %i.ahl, align 4, !tbaa !45
  %i.ahq = and i32 %i.ahp, 33554431
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahl, i64 4
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !48
  store i32 %i.ahs, ptr %i.yl, align 8, !tbaa !21
  %narrow.i21.i.i = add nuw nsw i32 %i.ahq, %i.aho
  %i.aht = zext nneg i32 %narrow.i21.i.i to i64
  %i.ahu = sub nsw i64 %.022.i.i.i338, %i.aht
  %.pn.i.i.i = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.ahu
  %.022.in.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 12
  %.022.in.i.i.i = load i32, ptr %.022.in.in.i.i.i, align 4, !tbaa !22 ; 2 uses
  %.not963 = icmp eq i32 %.022.in.i.i.i, 0
  br i1 %.not963, label %.preheader.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %.022.i.i.i338.1 = zext i32 %.022.in.i.i.i to i64 ; 2 uses
  %i.ahv = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %.022.i.i.i338.1 ; 3 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !46
  %i.ahy = and i32 %i.ahx, 134217727
  %i.ahz = load i32, ptr %i.ahv, align 4, !tbaa !45
  %i.aia = and i32 %i.ahz, 33554431
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahv, i64 4
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !48
  store i32 %i.aic, ptr %i.yq, align 4, !tbaa !21
  %narrow.i21.i.i.1 = add nuw nsw i32 %i.aia, %i.ahy
  %i.aid = zext nneg i32 %narrow.i21.i.i.1 to i64
  %i.aie = sub nsw i64 %.022.i.i.i338.1, %i.aid
  %.pn.i.i.i.1 = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.aie
  %.022.in.in.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.1, i64 12
  %.022.in.i.i.i.1 = load i32, ptr %.022.in.in.i.i.i.1, align 4, !tbaa !22 ; 2 uses
  %.not964 = icmp eq i32 %.022.in.i.i.i.1, 0
  br i1 %.not964, label %.preheader.i.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %.022.i.i.i338.2 = zext i32 %.022.in.i.i.i.1 to i64 ; 2 uses
  %i.aif = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %.022.i.i.i338.2 ; 3 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 8
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !46
  %i.aii = and i32 %i.aih, 134217727
  %i.aij = load i32, ptr %i.aif, align 4, !tbaa !45
  %i.aik = and i32 %i.aij, 33554431
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aif, i64 4
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !48
  store i32 %i.aim, ptr %i.yr, align 8, !tbaa !21
  %narrow.i21.i.i.2 = add nuw nsw i32 %i.aik, %i.aii
  %i.ain = zext nneg i32 %narrow.i21.i.i.2 to i64
  %i.aio = sub nsw i64 %.022.i.i.i338.2, %i.ain
  %.pn.i.i.i.2 = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.aio
  %.022.in.in.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.2, i64 12
  %.022.in.i.i.i.2 = load i32, ptr %.022.in.in.i.i.i.2, align 4, !tbaa !22 ; 2 uses
  %.not965 = icmp eq i32 %.022.in.i.i.i.2, 0
  br i1 %.not965, label %.preheader.i.i.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %.022.i.i.i338.3 = zext i32 %.022.in.i.i.i.2 to i64
  %i.aip = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %.022.i.i.i338.3
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 4
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !48
  store i32 %i.air, ptr %i.ys, align 4, !tbaa !21
  br label %.preheader.i.i.i

ComputeDistanceCache.exit.i.i:                    ; preds = %.lr.ph31.preheader.i.i.i, %.preheader.i.i.i
  %i.ais = add i64 %i.afz, 1                      ; 8 uses
  %i.ait = and i64 %i.afz, 7                      ; 7 uses
  %i.aiu = xor i64 %i.ait, 7                      ; 2 uses
  %i.aiv = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.aiu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aiv, ptr noundef nonnull readonly align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !97
  %i.aiw = icmp ugt i64 %i.ais, 1
  br i1 %i.aiw, label %.lr.ph.i22.i.i, label %StartPosQueuePush.exit.i.i

.lr.ph.i22.i.i:                                   ; preds = %ComputeDistanceCache.exit.i.i
  %i.aix = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.aiu ; 3 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 24
  %i.aiz = load float, ptr %i.aiy, align 8, !tbaa !96
  %i.aja = sub nuw nsw i64 8, %i.ait              ; 2 uses
  %i.ajb = and i64 %i.aja, 7
  %i.ajc = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.ajb ; 3 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 24
  %i.aje = load float, ptr %i.ajd, align 8, !tbaa !96
  %i.ajf = fcmp ogt float %i.aiz, %i.aje
  br i1 %i.ajf, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.lr.ph.i22.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.aix, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aix, ptr noundef nonnull align 8 dereferenceable(32) %i.ajc, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ajc, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.lr.ph.i22.i.i
  %exitcond.not.i23.i.i = icmp eq i64 %i.ais, 2
  br i1 %exitcond.not.i23.i.i, label %StartPosQueuePush.exit.i.i, label %.lr.ph.i22.i.i.1

.lr.ph.i22.i.i.1:                                 ; preds = %bb.dr
  %i.ajg = and i64 %i.aja, 7
  %i.ajh = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.ajg ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 24
  %i.ajj = load float, ptr %i.aji, align 8, !tbaa !96
  %i.ajk = sub nuw nsw i64 9, %i.ait              ; 2 uses
  %i.ajl = and i64 %i.ajk, 7
  %i.ajm = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.ajl ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 24
  %i.ajo = load float, ptr %i.ajn, align 8, !tbaa !96
  %i.ajp = fcmp ogt float %i.ajj, %i.ajo
  br i1 %i.ajp, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %.lr.ph.i22.i.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ajh, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ajh, ptr noundef nonnull align 8 dereferenceable(32) %i.ajm, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ajm, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %.lr.ph.i22.i.i.1
  %exitcond.not.i23.i.i.1 = icmp eq i64 %i.ais, 3
  br i1 %exitcond.not.i23.i.i.1, label %StartPosQueuePush.exit.i.i, label %.lr.ph.i22.i.i.2

.lr.ph.i22.i.i.2:                                 ; preds = %bb.dt
  %i.ajq = and i64 %i.ajk, 7
  %i.ajr = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.ajq ; 3 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 24
  %i.ajt = load float, ptr %i.ajs, align 8, !tbaa !96
  %i.aju = sub nuw nsw i64 10, %i.ait             ; 2 uses
  %i.ajv = and i64 %i.aju, 7
  %i.ajw = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.ajv ; 3 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 24
  %i.ajy = load float, ptr %i.ajx, align 8, !tbaa !96
  %i.ajz = fcmp ogt float %i.ajt, %i.ajy
  br i1 %i.ajz, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %.lr.ph.i22.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ajr, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ajr, ptr noundef nonnull align 8 dereferenceable(32) %i.ajw, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ajw, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.lr.ph.i22.i.i.2
  %exitcond.not.i23.i.i.2 = icmp eq i64 %i.ais, 4
  br i1 %exitcond.not.i23.i.i.2, label %StartPosQueuePush.exit.i.i, label %.lr.ph.i22.i.i.3

.lr.ph.i22.i.i.3:                                 ; preds = %bb.dv
  %i.aka = and i64 %i.aju, 7
  %i.akb = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.aka ; 3 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 24
  %i.akd = load float, ptr %i.akc, align 8, !tbaa !96
  %i.ake = sub nuw nsw i64 11, %i.ait             ; 2 uses
  %i.akf = and i64 %i.ake, 7
  %i.akg = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.akf ; 3 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 24
  %i.aki = load float, ptr %i.akh, align 8, !tbaa !96
  %i.akj = fcmp ogt float %i.akd, %i.aki
  br i1 %i.akj, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %.lr.ph.i22.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.akb, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akb, ptr noundef nonnull align 8 dereferenceable(32) %i.akg, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akg, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.lr.ph.i22.i.i.3
  %exitcond.not.i23.i.i.3 = icmp eq i64 %i.ais, 5
  br i1 %exitcond.not.i23.i.i.3, label %StartPosQueuePush.exit.i.i, label %.lr.ph.i22.i.i.4

.lr.ph.i22.i.i.4:                                 ; preds = %bb.dx
  %i.akk = and i64 %i.ake, 7
  %i.akl = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.akk ; 3 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 24
  %i.akn = load float, ptr %i.akm, align 8, !tbaa !96
  %i.ako = sub nuw nsw i64 12, %i.ait             ; 2 uses
  %i.akp = and i64 %i.ako, 7
  %i.akq = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.akp ; 3 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 24
  %i.aks = load float, ptr %i.akr, align 8, !tbaa !96
  %i.akt = fcmp ogt float %i.akn, %i.aks
  br i1 %i.akt, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %.lr.ph.i22.i.i.4
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.akl, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akl, ptr noundef nonnull align 8 dereferenceable(32) %i.akq, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akq, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph.i22.i.i.4
  %exitcond.not.i23.i.i.4 = icmp eq i64 %i.ais, 6
  br i1 %exitcond.not.i23.i.i.4, label %StartPosQueuePush.exit.i.i, label %.lr.ph.i22.i.i.5

.lr.ph.i22.i.i.5:                                 ; preds = %bb.dz
  %i.aku = and i64 %i.ako, 7
  %i.akv = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.aku ; 3 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 24
  %i.akx = load float, ptr %i.akw, align 8, !tbaa !96
  %i.aky = sub nuw nsw i64 13, %i.ait             ; 2 uses
  %i.akz = and i64 %i.aky, 7
  %i.ala = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.akz ; 3 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 24
  %i.alc = load float, ptr %i.alb, align 8, !tbaa !96
  %i.ald = fcmp ogt float %i.akx, %i.alc
  br i1 %i.ald, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %.lr.ph.i22.i.i.5
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.akv, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akv, ptr noundef nonnull align 8 dereferenceable(32) %i.ala, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ala, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %.lr.ph.i22.i.i.5
  %exitcond.not.i23.i.i.5 = icmp eq i64 %i.ais, 7
  br i1 %exitcond.not.i23.i.i.5, label %StartPosQueuePush.exit.i.i, label %.lr.ph.i22.i.i.6

.lr.ph.i22.i.i.6:                                 ; preds = %bb.eb
  %i.ale = and i64 %i.aky, 7
  %i.alf = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.ale ; 3 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 24
  %i.alh = load float, ptr %i.alg, align 8, !tbaa !96
  %i.ali = sub i64 6, %i.afz
  %i.alj = and i64 %i.ali, 7
  %i.alk = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.alj ; 3 uses
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 24
  %i.alm = load float, ptr %i.all, align 8, !tbaa !96
  %i.aln = fcmp ogt float %i.alh, %i.alm
  br i1 %i.aln, label %bb.ec, label %StartPosQueuePush.exit.i.i

bb.ec:                                            ; preds = %.lr.ph.i22.i.i.6
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.alf, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alf, ptr noundef nonnull align 8 dereferenceable(32) %i.alk, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alk, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %StartPosQueuePush.exit.i.i

StartPosQueuePush.exit.i.i:                       ; preds = %bb.dr, %bb.dt, %bb.dv, %bb.dx, %bb.dz, %bb.eb, %bb.ec, %.lr.ph.i22.i.i.6, %ComputeDistanceCache.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %EvaluateNode.exit.i

EvaluateNode.exit.i:                              ; preds = %StartPosQueuePush.exit.i.i, %ComputeDistanceShortcut.exit.i.i
  %i.alo = phi i64 [ %i.afz, %ComputeDistanceShortcut.exit.i.i ], [ %i.ais, %StartPosQueuePush.exit.i.i ] ; 2 uses
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %i.aga
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !21
  %i.alr = zext i32 %i.alq to i64
  %i.als = add i64 %.15665.i, %i.alr              ; 2 uses
  %.1.i339 = add i64 %.167.i, -1                  ; 2 uses
  %.not.i340 = icmp eq i64 %.1.i339, 0
  br i1 %.not.i340, label %.loopexit.i, label %.lr.ph.i335, !llvm.loop !230

.loopexit.i:                                      ; preds = %EvaluateNode.exit.i, %.lr.ph.i335
  %.lcssa62.ph.i = phi i64 [ %i.afz, %.lr.ph.i335 ], [ %i.alo, %EvaluateNode.exit.i ]
  %.156.lcssa.ph.i = phi i64 [ %.15665.i, %.lr.ph.i335 ], [ %i.als, %EvaluateNode.exit.i ]
  store i64 %.lcssa62.ph.i, ptr %i.yh, align 8
  br label %bb.ed

bb.ed:                                            ; preds = %.loopexit.i, %bb.dk
  %.257.i = phi i64 [ %i.afp, %bb.dk ], [ %.156.lcssa.ph.i, %.loopexit.i ]
  %.2.i334 = phi i64 [ %.05375.i, %bb.dk ], [ %i.aga, %.loopexit.i ] ; 2 uses
  %i.alt = add i64 %.2.i334, 1
  %i.alu = add i64 %.2.i334, 4
  %i.alv = icmp ult i64 %i.alu, %1
  br i1 %i.alv, label %bb.dh, label %._crit_edge.i328, !llvm.loop !231

._crit_edge.i328:                                 ; preds = %bb.ed, %ZopfliCostModelSetFromCommands.exit
  %i.alw = load i32, ptr %i.yn, align 4, !tbaa !46
  %i.alx = and i32 %i.alw, 134217727
  %i.aly = icmp eq i32 %i.alx, 0
  br i1 %i.aly, label %.lr.ph.i.i332, label %.critedge.i.i329

.lr.ph.i.i332:                                    ; preds = %._crit_edge.i328, %bb.ee
  %i.alz = phi ptr [ %i.amd, %bb.ee ], [ %i.ym, %._crit_edge.i328 ] ; 2 uses
  %.018.i.i = phi i64 [ %i.amc, %bb.ee ], [ %1, %._crit_edge.i328 ] ; 2 uses
  %i.ama = load i32, ptr %i.alz, align 4, !tbaa !45
  %i.amb = icmp eq i32 %i.ama, 1
  br i1 %i.amb, label %bb.ee, label %.critedge.i.i329

bb.ee:                                            ; preds = %.lr.ph.i.i332
  %i.amc = add i64 %.018.i.i, -1                  ; 3 uses
  %i.amd = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.amc ; 3 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 8
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !46
  %i.amg = and i32 %i.amf, 134217727
  %i.amh = icmp eq i32 %i.amg, 0
  br i1 %i.amh, label %.lr.ph.i.i332, label %.critedge.i.i329, !llvm.loop !10

.critedge.i.i329:                                 ; preds = %bb.ee, %.lr.ph.i.i332, %._crit_edge.i328
  %.0.lcssa.i.i = phi i64 [ %1, %._crit_edge.i328 ], [ %i.amc, %bb.ee ], [ %.018.i.i, %.lr.ph.i.i332 ] ; 2 uses
  %.lcssa.i.i = phi ptr [ %i.ym, %._crit_edge.i328 ], [ %i.amd, %bb.ee ], [ %i.alz, %.lr.ph.i.i332 ]
  %i.ami = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 12
  store i32 -1, ptr %i.ami, align 4, !tbaa !22
  %.not23.i.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not23.i.i, label %ZopfliIterate.exit, label %.lr.ph26.i.i

.lr.ph26.i.i:                                     ; preds = %.critedge.i.i329, %.lr.ph26.i.i
  %.125.i.i330 = phi i64 [ %i.amr, %.lr.ph26.i.i ], [ %.0.lcssa.i.i, %.critedge.i.i329 ] ; 2 uses
  %.01724.i.i = phi i64 [ %i.amu, %.lr.ph26.i.i ], [ 0, %.critedge.i.i329 ]
  %i.amj = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %.125.i.i330 ; 2 uses
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !45
  %i.aml = and i32 %i.amk, 33554431
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amj, i64 8
  %i.amn = load i32, ptr %i.amm, align 4, !tbaa !46
  %i.amo = and i32 %i.amn, 134217727
  %i.amp = add nuw nsw i32 %i.amo, %i.aml         ; 2 uses
  %i.amq = zext nneg i32 %i.amp to i64
  %i.amr = sub i64 %.125.i.i330, %i.amq           ; 3 uses
  %i.ams = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.amr
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 12
  store i32 %i.amp, ptr %i.amt, align 4, !tbaa !22
  %i.amu = add i64 %.01724.i.i, 1                 ; 2 uses
  %.not.i.i331 = icmp eq i64 %i.amr, 0
  br i1 %.not.i.i331, label %ZopfliIterate.exit, label %.lr.ph26.i.i, !llvm.loop !11

ZopfliIterate.exit:                               ; preds = %.lr.ph26.i.i, %.critedge.i.i329
  %.017.lcssa.i.i = phi i64 [ 0, %.critedge.i.i329 ], [ %i.amu, %.lr.ph26.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  %i.amv = load i64, ptr %11, align 8, !tbaa !47
  %i.amw = add i64 %i.amv, %.017.lcssa.i.i
  store i64 %i.amw, ptr %11, align 8, !tbaa !47
  call void @BrotliZopfliCreateCommands(i64 noundef %1, i64 noundef %2, ptr noundef nonnull %i.xn, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %6, ptr noundef %10, ptr noundef nonnull %12)
  br i1 %i.yt, label %bb.ct, label %bb.ef, !llvm.loop !232

bb.ef:                                            ; preds = %ZopfliIterate.exit
  %i.amx = load ptr, ptr %i.xp, align 8, !tbaa !61
  call void @BrotliFree(ptr noundef %0, ptr noundef %i.amx) #13
  store ptr null, ptr %i.xp, align 8, !tbaa !61
  %i.amy = load ptr, ptr %i.xx, align 8, !tbaa !63
  call void @BrotliFree(ptr noundef %0, ptr noundef %i.amy) #13
  store ptr null, ptr %i.xx, align 8, !tbaa !63
  call void @BrotliFree(ptr noundef %0, ptr noundef %i.wt) #13
  call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.xn) #13
  call void @BrotliFree(ptr noundef %0, ptr noundef %.0202.lcssa) #13
  call void @BrotliFree(ptr noundef %0, ptr noundef %i.ws) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

declare hidden void @BrotliEstimateBitCostsForLiterals(i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #8

declare hidden i32 @BrotliFindAllStaticDictionaryMatches(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @SetCost(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #9 {
bb.a:
  %.not51 = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not51, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader81, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, 4294967292                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %vec.phi60 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.load = load <2 x i32>, ptr %i.a, align 4, !tbaa !21
  %wide.load61 = load <2 x i32>, ptr %i.b, align 4, !tbaa !21
  %i.c = zext <2 x i32> %wide.load to <2 x i64>
  %i.d = zext <2 x i32> %wide.load61 to <2 x i64>
  %i.e = add <2 x i64> %vec.phi, %i.c             ; 2 uses
  %i.f = add <2 x i64> %vec.phi60, %i.d           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !266

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.f, %i.e
  %i.h = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader81

.lr.ph.preheader81:                               ; preds = %.lr.ph.preheader, %middle.block
  %.043.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.03542.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader81, %.lr.ph
  %.043 = phi i64 [ %i.m, %.lr.ph ], [ %.043.ph, %.lr.ph.preheader81 ] ; 2 uses
  %.03542 = phi i64 [ %i.l, %.lr.ph ], [ %.03542.ph, %.lr.ph.preheader81 ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.043
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21
  %i.k = zext i32 %i.j to i64
  %i.l = add i64 %.03542, %i.k                    ; 2 uses
  %i.m = add nuw nsw i64 %.043, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !267

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.h, %middle.block ], [ %i.l, %.lr.ph ] ; 4 uses
  %i.n = icmp ult i64 %.lcssa, 256
  br i1 %i.n, label %._crit_edge.thread, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.035.lcssa59 = phi i64 [ %.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %.035.lcssa59
  %i.p = load double, ptr %i.o, align 8, !tbaa !99
  br label %FastLog2.exit41

bb.b:                                             ; preds = %._crit_edge
  %i.q = uitofp i64 %.lcssa to double
  %i.r = tail call double @log2(double noundef %i.q) #13
  br label %FastLog2.exit41

FastLog2.exit41:                                  ; preds = %._crit_edge.thread, %bb.b
  %.035.lcssa58 = phi i64 [ %.035.lcssa59, %._crit_edge.thread ], [ %.lcssa, %bb.b ] ; 3 uses
  %.0.i40 = phi double [ %i.p, %._crit_edge.thread ], [ %i.r, %bb.b ]
  %i.s = fptrunc double %.0.i40 to float
  %.not = icmp eq i32 %2, 0
  %i.t = icmp ne i64 %1, 0
  %or.cond = and i1 %.not, %i.t
  br i1 %or.cond, label %.lr.ph46.preheader, label %.loopexit

.lr.ph46.preheader:                               ; preds = %FastLog2.exit41
  %min.iters.check63 = icmp samesign ult i64 %1, 4
  br i1 %min.iters.check63, label %.lr.ph46.preheader78, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph46.preheader
  %n.vec65 = and i64 %1, 4294967292               ; 3 uses
  %i.u = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.035.lcssa58, i64 0
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <2 x i64> [ %i.u, %vector.ph64 ], [ %i.ab, %vector.body66 ]
  %vec.phi69 = phi <2 x i64> [ zeroinitializer, %vector.ph64 ], [ %i.ac, %vector.body66 ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index67 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %wide.load70 = load <2 x i32>, ptr %i.v, align 4, !tbaa !21
  %wide.load71 = load <2 x i32>, ptr %i.w, align 4, !tbaa !21
  %i.x = icmp eq <2 x i32> %wide.load70, zeroinitializer
  %i.y = icmp eq <2 x i32> %wide.load71, zeroinitializer
  %i.z = zext <2 x i1> %i.x to <2 x i64>
  %i.aa = zext <2 x i1> %i.y to <2 x i64>
  %i.ab = add <2 x i64> %vec.phi68, %i.z          ; 2 uses
  %i.ac = add <2 x i64> %vec.phi69, %i.aa         ; 2 uses
end_hunk_0
