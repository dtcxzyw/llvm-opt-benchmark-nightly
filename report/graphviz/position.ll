Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/position?download=true
inline.NumInlined: 41
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dot_position:bb.a
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !63
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !13
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 360
  %i.zv = load i32, ptr %i.zu, align 8, !tbaa !59
  %i.zw = sext i32 %i.zv to i64
  %i.zx = icmp slt i64 %indvars.iv109.i, %i.zw
  br i1 %i.zx, label %.thread77.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph90.i
  %i.zy = icmp eq i32 %i.zn, 2
  %i.zz = select i1 %i.zy, i64 56, i64 -8
  %i.aaa = getelementptr inbounds i8, ptr %i.zl, i64 %i.zz
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !63
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !13
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 360
  %i.aaf = load i32, ptr %i.aae, align 8, !tbaa !59
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = icmp slt i64 %indvars.iv109.i, %i.aag
  br i1 %i.aah, label %.thread77.i, label %bb.bl

.loopexit.i:                                      ; preds = %bb.bl, %.preheader.i, %.loopexit82.i
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next107.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.bi, !llvm.loop !113

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.aai = icmp eq ptr %i.yb, null
  br i1 %i.aai, label %.thread77.i, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.i
  %i.aaj = load ptr, ptr %i.xz, align 8, !tbaa !44 ; 2 uses
  %i.aak = sext i32 %i.xs to i64
  %i.aal = icmp slt i64 %indvars.iv109.i, %i.aak
  %.0.in.in.v.i = select i1 %i.aal, i64 96, i64 -80
  %.0.in.in.i = getelementptr inbounds i8, ptr %i.xv, i64 %.0.in.in.v.i
  %.0.in.i = load ptr, ptr %.0.in.in.i, align 8, !tbaa !43
  %.0.i30 = load ptr, ptr %.0.in.i, align 8, !tbaa !44 ; 2 uses
  %i.aam = tail call ptr @virtual_node(ptr noundef nonnull %0) #14 ; 3 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16 ; 2 uses
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !13
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 216
  store i8 2, ptr %i.aap, align 8, !tbaa !76
  %i.aaq = tail call ptr @make_aux_edge(ptr noundef %i.aam, ptr noundef %i.aaj, double noundef 0.000000e+00, i32 noundef 0) ; 0 uses
  %i.aar = tail call ptr @make_aux_edge(ptr noundef %i.aam, ptr noundef %.0.i30, double noundef 0.000000e+00, i32 noundef 0) ; 0 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !13
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 360
  %i.aav = load i32, ptr %i.aau, align 8, !tbaa !59
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0.i30, i64 16
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !13
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 360
  %i.aaz = load i32, ptr %i.aay, align 8, !tbaa !59
  %i.aba = tail call i32 @llvm.smin.i32(i32 %i.aav, i32 %i.aaz)
  %i.abb = load ptr, ptr %i.aan, align 8, !tbaa !13
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 360
  store i32 %i.aba, ptr %i.abc, align 8, !tbaa !59
  %.pre.i31 = load ptr, ptr %i.b, align 8, !tbaa !13
  br label %.thread77.i

.thread77.i:                                      ; preds = %bb.bk, %.lr.ph.i, %bb.bm, %.lr.ph90.i, %bb.bn, %._crit_edge.i, %.lr.ph97.i
  %i.abd = phi ptr [ %i.xr, %.lr.ph97.i ], [ %i.xr, %bb.bm ], [ %i.xr, %._crit_edge.i ], [ %.pre.i31, %bb.bn ], [ %i.xr, %.lr.ph90.i ], [ %i.xr, %.lr.ph.i ], [ %i.xr, %bb.bk ] ; 2 uses
  %indvars.iv.next110.i = add nsw i64 %indvars.iv109.i, 1
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 340
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !38 ; 2 uses
  %i.abg = sext i32 %i.abf to i64
  %.not66.not.i = icmp slt i64 %indvars.iv109.i, %i.abg
  br i1 %.not66.not.i, label %.lr.ph97.i, label %connectGraph.exit, !llvm.loop !114

connectGraph.exit:                                ; preds = %.thread77.i, %bb.bh
  %i.abh = tail call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str) #14 ; 2 uses
  %.not.i32 = icmp eq ptr %i.abh, null
  br i1 %.not.i32, label %nsiter2.exit36, label %bb.bo

bb.bo:                                            ; preds = %connectGraph.exit
  %i.abi = tail call i32 @agnnodes(ptr noundef nonnull %0) #14
  %i.abj = tail call double @strtod(ptr noundef nonnull captures(none) %i.abh, ptr noundef null) #14, !inline_history !110 ; 4 uses
  %i.abk = fcmp olt double %i.abj, 0.000000e+00
  br i1 %i.abk, label %nsiter2.exit36, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.abl = fcmp ogt double %i.abj, 1.000000e+00
  %i.abm = sitofp i32 %i.abi to double            ; 2 uses
  %i.abn = fdiv double f0x41DFFFFFFFC00000, %i.abj
  %i.abo = fcmp olt double %i.abn, %i.abm
  %or.cond.i.i33 = and i1 %i.abl, %i.abo
  br i1 %or.cond.i.i33, label %nsiter2.exit36, label %._crit_edge.i.i34

._crit_edge.i.i34:                                ; preds = %bb.bp
  %i.abp = fmul double %i.abj, %i.abm
  %i.abq = fptosi double %i.abp to i32
  br label %nsiter2.exit36

nsiter2.exit36:                                   ; preds = %connectGraph.exit, %bb.bo, %bb.bp, %._crit_edge.i.i34
  %.0.i35 = phi i32 [ 2147483647, %connectGraph.exit ], [ %i.abq, %._crit_edge.i.i34 ], [ 0, %bb.bo ], [ 2147483647, %bb.bp ]
  %i.abr = tail call i32 @rank(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %.0.i35) #14 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %nsiter2.exit36, %nsiter2.exit
  %.val = load ptr, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.val, i64 264
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !39
  %i.abu = getelementptr inbounds nuw i8, ptr %.val, i64 336
  %i.abv = load i32, ptr %i.abu, align 8, !tbaa !37 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %.val, i64 340
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !38 ; 2 uses
  %.not2.i = icmp sgt i32 %i.abv, %i.abx
  br i1 %.not2.i, label %set_xcoords.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.bq
  %i.aby = sext i32 %i.abv to i64
  %i.abz = add i32 %i.abx, 1
  br label %.preheader.i37

.preheader.i37:                                   ; preds = %._crit_edge.i38, %.preheader.preheader.i
  %indvars.iv6.i = phi i64 [ %i.aby, %.preheader.preheader.i ], [ %indvars.iv.next7.i, %._crit_edge.i38 ] ; 3 uses
  %i.aca = getelementptr inbounds [88 x i8], ptr %i.abt, i64 %indvars.iv6.i ; 2 uses
  %i.acb = load i32, ptr %i.aca, align 8, !tbaa !42 ; 4 uses
  %i.acc = icmp sgt i32 %i.acb, 0
  br i1 %i.acc, label %.lr.ph.i39, label %._crit_edge.i38

.lr.ph.i39:                                       ; preds = %.preheader.i37
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !43 ; 3 uses
  %wide.trip.count.i40 = zext nneg i32 %i.acb to i64 ; 2 uses
  %i.acf = trunc nsw i64 %indvars.iv6.i to i32    ; 3 uses
  %xtraiter193 = and i64 %wide.trip.count.i40, 1
  %i.acg = icmp eq i32 %i.acb, 1
  br i1 %i.acg, label %.epil.preheader192, label %.lr.ph.i39.new

.lr.ph.i39.new:                                   ; preds = %.lr.ph.i39
  %unroll_iter196 = and i64 %wide.trip.count.i40, 2147483646
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.lr.ph.i39.new
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.i39.new ], [ %indvars.iv.next.i42.1, %bb.br ] ; 3 uses
  %niter197 = phi i64 [ 0, %.lr.ph.i39.new ], [ %niter197.next.1, %bb.br ]
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %indvars.iv.i41
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !44
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !13 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 360 ; 2 uses
  %i.acm = load i32, ptr %i.acl, align 8, !tbaa !59
  %i.acn = sitofp i32 %i.acm to double
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ack, i64 32
  store double %i.acn, ptr %i.aco, align 8, !tbaa !84
  store i32 %i.acf, ptr %i.acl, align 8, !tbaa !59
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %indvars.iv.i41
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !44
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 16
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !13 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 360 ; 2 uses
  %i.acv = load i32, ptr %i.acu, align 8, !tbaa !59
  %i.acw = sitofp i32 %i.acv to double
  %i.acx = getelementptr inbounds nuw i8, ptr %i.act, i64 32
  store double %i.acw, ptr %i.acx, align 8, !tbaa !84
  store i32 %i.acf, ptr %i.acu, align 8, !tbaa !59
  %indvars.iv.next.i42.1 = add nuw nsw i64 %indvars.iv.i41, 2 ; 2 uses
  %niter197.next.1 = add i64 %niter197, 2         ; 2 uses
  %niter197.ncmp.1 = icmp eq i64 %niter197.next.1, %unroll_iter196
  br i1 %niter197.ncmp.1, label %._crit_edge.i38.loopexit.unr-lcssa, label %bb.br, !llvm.loop !115

._crit_edge.i38.loopexit.unr-lcssa:               ; preds = %bb.br
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %._crit_edge.i38, label %.epil.preheader192

.epil.preheader192:                               ; preds = %._crit_edge.i38.loopexit.unr-lcssa, %.lr.ph.i39
  %indvars.iv.i41.epil.init = phi i64 [ 0, %.lr.ph.i39 ], [ %indvars.iv.next.i42.1, %._crit_edge.i38.loopexit.unr-lcssa ]
  %lcmp.mod195 = trunc i32 %i.acb to i1
  tail call void @llvm.assume(i1 %lcmp.mod195)
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %indvars.iv.i41.epil.init
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !44
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !13 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 360 ; 2 uses
  %i.add = load i32, ptr %i.adc, align 8, !tbaa !59
  %i.ade = sitofp i32 %i.add to double
  %i.adf = getelementptr inbounds nuw i8, ptr %i.adb, i64 32
  store double %i.ade, ptr %i.adf, align 8, !tbaa !84
  store i32 %i.acf, ptr %i.adc, align 8, !tbaa !59
  br label %._crit_edge.i38

._crit_edge.i38:                                  ; preds = %.epil.preheader192, %._crit_edge.i38.loopexit.unr-lcssa, %.preheader.i37
  %indvars.iv.next7.i = add nsw i64 %indvars.iv6.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next7.i to i32
  %exitcond9.not.i = icmp eq i32 %i.abz, %lftr.wideiv.i
  br i1 %exitcond9.not.i, label %set_xcoords.exit, label %.preheader.i37, !llvm.loop !116

set_xcoords.exit:                                 ; preds = %._crit_edge.i38, %bb.bq
  tail call fastcc void @rec_bb(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %i.adg = load ptr, ptr %i.b, align 8, !tbaa !13 ; 14 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 340
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !38
  %i.adj = icmp sgt i32 %i.adi, 0
  br i1 %i.adj, label %bb.bs, label %set_aspect.exit

bb.bs:                                            ; preds = %set_xcoords.exit
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adg, i64 16
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !147 ; 9 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 84
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !149 ; 2 uses
  %.not.i44 = icmp eq i32 %i.adn, 0
  br i1 %.not.i44, label %set_aspect.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adg, i64 32
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adg, i64 48
  %i.adq = load <2 x double>, ptr %i.adp, align 8 ; 6 uses
  %i.adr = load <2 x double>, ptr %i.ado, align 8
  %i.ads = fsub <2 x double> %i.adq, %i.adr       ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adg, i64 132
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !81
  %i.adv = and i32 %i.adu, 1
  %.not86.i = icmp eq i32 %i.adv, 0
  %i.adw = insertelement <2 x i1> poison, i1 %.not86.i, i64 0
  %i.adx = shufflevector <2 x i1> %i.adw, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ady = shufflevector <2 x double> %i.ads, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.adz = select <2 x i1> %i.adx, <2 x double> %i.ads, <2 x double> %i.ady ; 3 uses
  switch i32 %i.adn, label %set_aspect.exit [
    i32 4, label %bb.bu
    i32 2, label %._crit_edge97.i
    i32 5, label %bb.cb
    i32 1, label %bb.ce
  ]

._crit_edge97.i:                                  ; preds = %bb.bt
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.adl, i64 64
  %.pre.i48 = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !151
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adl, i64 48
  %i.aeb = load <2 x double>, ptr %i.aea, align 8, !tbaa !80 ; 3 uses
  %i.aec = extractelement <2 x double> %i.aeb, i64 0
  %i.aed = fcmp olt double %i.aec, 1.000000e-03
  %i.aee = extractelement <2 x double> %i.aeb, i64 1
  %i.aef = fcmp olt double %i.aee, 1.000000e-03
  %or.cond.i.i49 = select i1 %i.aed, i1 true, i1 %i.aef
  br i1 %or.cond.i.i49, label %set_aspect.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adl, i64 32
  %i.aeh = load <2 x double>, ptr %i.aeg, align 8, !tbaa !80 ; 2 uses
  %i.aei = fsub <2 x double> %i.aeb, %i.aeh
  %i.aej = fsub <2 x double> %i.aei, %i.aeh       ; 3 uses
  %i.aek = fdiv <2 x double> %i.aej, %i.adq       ; 3 uses
  %i.ael = fcmp oge <2 x double> %i.aek, splat (double 1.000000e+00) ; 2 uses
  %i.aem = extractelement <2 x i1> %i.ael, i64 0
  %i.aen = extractelement <2 x i1> %i.ael, i64 1
  %or.cond4.i.i = select i1 %i.aem, i1 %i.aen, i1 false
  br i1 %or.cond4.i.i, label %set_aspect.exit, label %idealsize.exit.thread92.i

idealsize.exit.thread92.i:                        ; preds = %bb.bv
  %i.aeo = extractelement <2 x double> %i.aek, i64 0 ; 2 uses
  %i.aep = extractelement <2 x double> %i.aek, i64 1 ; 2 uses
  %i.aeq = fcmp olt double %i.aeo, %i.aep
  %i.aer = select i1 %i.aeq, double %i.aeo, double %i.aep ; 2 uses
  %i.aes = fcmp ogt double %i.aer, 5.000000e-01
  %i.aet = select i1 %i.aes, double %i.aer, double 5.000000e-01
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.adl, i64 64
  %i.aev = insertelement <2 x double> poison, double %i.aet, i64 0
  %i.aew = shufflevector <2 x double> %i.aev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aex = fmul <2 x double> %i.adq, %i.aew
  %i.aey = fdiv <2 x double> %i.aex, %i.aej
  %i.aez = tail call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.aey)
  %i.afa = fmul <2 x double> %i.aej, %i.aez
  %i.afb = fdiv <2 x double> %i.afa, %i.adq
  %i.afc = fmul <2 x double> %i.adq, %i.afb       ; 2 uses
  store <2 x double> %i.afc, ptr %i.aeu, align 8, !tbaa !80
  %i.afd = extractelement <2 x double> %i.afc, i64 0
  br label %bb.bw

bb.bw:                                            ; preds = %idealsize.exit.thread92.i, %._crit_edge97.i
  %i.afe = phi double [ %.pre.i48, %._crit_edge97.i ], [ %i.afd, %idealsize.exit.thread92.i ] ; 2 uses
  %i.aff = fcmp ugt double %i.afe, 0.000000e+00
  br i1 %i.aff, label %bb.bx, label %set_aspect.exit

bb.bx:                                            ; preds = %bb.bw
  %i.afg = getelementptr inbounds nuw i8, ptr %i.adl, i64 72
  %i.afh = load double, ptr %i.afg, align 8, !tbaa !152
  %i.afi = insertelement <2 x double> poison, double %i.afe, i64 0
  %i.afj = insertelement <2 x double> %i.afi, double %i.afh, i64 1
  %i.afk = fdiv <2 x double> %i.afj, %i.adz       ; 3 uses
  %i.afl = extractelement <2 x double> %i.afk, i64 0 ; 4 uses
  %i.afm = fcmp olt double %i.afl, 1.000000e+00
  %i.afn = extractelement <2 x double> %i.afk, i64 1 ; 4 uses
  %i.afo = fcmp olt double %i.afn, 1.000000e+00
  %or.cond.i = select i1 %i.afm, i1 true, i1 %i.afo
  br i1 %or.cond.i, label %bb.by, label %bb.ch

bb.by:                                            ; preds = %bb.bx
  %i.afp = fcmp olt double %i.afl, %i.afn
  br i1 %i.afp, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.afq = fdiv double %i.afn, %i.afl
  %i.afr = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.afq, i64 1
  br label %bb.ch

bb.ca:                                            ; preds = %bb.by
  %i.afs = fdiv double %i.afl, %i.afn
  %i.aft = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.afs, i64 0
  br label %bb.ch

bb.cb:                                            ; preds = %bb.bt
  %i.afu = getelementptr inbounds nuw i8, ptr %i.adl, i64 64
  %i.afv = load double, ptr %i.afu, align 8, !tbaa !151 ; 2 uses
  %i.afw = fcmp ugt double %i.afv, 0.000000e+00
  br i1 %i.afw, label %bb.cc, label %set_aspect.exit

bb.cc:                                            ; preds = %bb.cb
  %1 = getelementptr inbounds nuw i8, ptr %i.adl, i64 72
  %2 = load double, ptr %1, align 8, !tbaa !152
  %3 = insertelement <2 x double> poison, double %i.afv, i64 0
  %4 = insertelement <2 x double> %3, double %2, i64 1
  %i.afx = fdiv <2 x double> %4, %i.adq           ; 3 uses
  %i.afy = fcmp ogt <2 x double> %i.afx, splat (double 1.000000e+00) ; 2 uses
  %i.afz = extractelement <2 x i1> %i.afy, i64 0
  %i.aga = extractelement <2 x i1> %i.afy, i64 1
  %or.cond3.i = select i1 %i.afz, i1 %i.aga, i1 false
  br i1 %or.cond3.i, label %bb.cd, label %set_aspect.exit

bb.cd:                                            ; preds = %bb.cc
  %i.agb = extractelement <2 x double> %i.afx, i64 0
  %i.agc = extractelement <2 x double> %i.afx, i64 1
  %i.agd = tail call nsz double @llvm.minnum.f64(double %i.agb, double %i.agc)
  %i.age = insertelement <2 x double> poison, double %i.agd, i64 0
  %i.agf = shufflevector <2 x double> %i.age, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ch

bb.ce:                                            ; preds = %bb.bt
  %i.agg = getelementptr inbounds nuw i8, ptr %i.adl, i64 16
  %i.agh = load double, ptr %i.agg, align 8, !tbaa !153 ; 3 uses
  %i.agi = extractelement <2 x double> %i.adz, i64 0
  %i.agj = extractelement <2 x double> %i.adz, i64 1
  %i.agk = fdiv double %i.agj, %i.agi             ; 3 uses
  %i.agl = fcmp olt double %i.agk, %i.agh
  br i1 %i.agl, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.agm = fdiv double %i.agh, %i.agk
  %i.agn = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.agm, i64 1
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.ago = fdiv double %i.agk, %i.agh
  %i.agp = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.ago, i64 0
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.cd, %bb.ca, %bb.bz, %bb.bx
  %i.agq = phi <2 x double> [ %i.agp, %bb.cg ], [ %i.afr, %bb.bz ], [ %i.aft, %bb.ca ], [ %i.afk, %bb.bx ], [ %i.agn, %bb.cf ], [ %i.agf, %bb.cd ] ; 2 uses
  %i.agr = shufflevector <2 x double> %i.agq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ags = select <2 x i1> %i.adx, <2 x double> %i.agq, <2 x double> %i.agr ; 3 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.adg, i64 256
  %.07094.i = load ptr, ptr %i.agt, align 8, !tbaa !44 ; 2 uses
  %.not8895.i = icmp eq ptr %.07094.i, null
  br i1 %.not8895.i, label %._crit_edge.i47, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.ch, %.lr.ph.i46
  %.07096.i = phi ptr [ %.070.i, %.lr.ph.i46 ], [ %.07094.i, %bb.ch ]
  %i.agu = getelementptr inbounds nuw i8, ptr %.07096.i, i64 16
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !13 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 32 ; 2 uses
  %i.agx = load <2 x double>, ptr %i.agw, align 8, !tbaa !80
  %i.agy = fmul <2 x double> %i.ags, %i.agx
  %i.agz = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.agy)
  store <2 x double> %i.agz, ptr %i.agw, align 8, !tbaa !80
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agv, i64 240
  %.070.i = load ptr, ptr %i.aha, align 8, !tbaa !44 ; 2 uses
  %.not88.i = icmp eq ptr %.070.i, null
  br i1 %.not88.i, label %._crit_edge.i47, label %.lr.ph.i46, !llvm.loop !117

._crit_edge.i47:                                  ; preds = %.lr.ph.i46, %bb.ch
  %i.ahb = extractelement <2 x double> %i.ags, i64 0
  %i.ahc = extractelement <2 x double> %i.ags, i64 1
  tail call fastcc void @scale_bb(ptr noundef nonnull %0, double noundef %i.ahb, double noundef %i.ahc)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !13
  br label %set_aspect.exit

set_aspect.exit:                                  ; preds = %set_xcoords.exit, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.cb, %bb.cc, %._crit_edge.i47
  %i.ahd = phi ptr [ %i.adg, %set_xcoords.exit ], [ %i.adg, %bb.bs ], [ %i.adg, %bb.bt ], [ %i.adg, %bb.bu ], [ %i.adg, %bb.bv ], [ %i.adg, %bb.bw ], [ %i.adg, %bb.cb ], [ %i.adg, %bb.cc ], [ %.pre, %._crit_edge.i47 ]
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 256
  %.02941.i = load ptr, ptr %i.ahe, align 8, !tbaa !44 ; 2 uses
  %.not42.i = icmp eq ptr %.02941.i, null
  br i1 %.not42.i, label %remove_aux_edges.exit, label %.preheader.i52

.preheader.i52:                                   ; preds = %set_aspect.exit, %._crit_edge.i56
  %.02943.i = phi ptr [ %.029.i, %._crit_edge.i56 ], [ %.02941.i, %set_aspect.exit ]
  %i.ahf = getelementptr inbounds nuw i8, ptr %.02943.i, i64 16 ; 6 uses
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !13
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 272
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !55 ; 2 uses
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !56 ; 2 uses
  %.not3739.i = icmp eq ptr %i.ahj, null
  br i1 %.not3739.i, label %._crit_edge.i56, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.preheader.i52, %.lr.ph.i53
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i55, %.lr.ph.i53 ], [ 0, %.preheader.i52 ]
  %i.ahk = phi ptr [ %i.ahr, %.lr.ph.i53 ], [ %i.ahj, %.preheader.i52 ] ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !154
  tail call void @free(ptr noundef %i.ahm) #14
  tail call void @free(ptr noundef nonnull %i.ahk) #14
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %i.ahn = load ptr, ptr %i.ahf, align 8, !tbaa !13
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 272
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !55 ; 2 uses
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %i.ahp, i64 %indvars.iv.next.i55
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !56 ; 2 uses
  %.not37.i = icmp eq ptr %i.ahr, null
  br i1 %.not37.i, label %._crit_edge.i56, label %.lr.ph.i53, !llvm.loop !118

._crit_edge.i56:                                  ; preds = %.lr.ph.i53, %.preheader.i52
  %.lcssa.i = phi ptr [ %i.ahi, %.preheader.i52 ], [ %i.ahp, %.lr.ph.i53 ]
  tail call void @free(ptr noundef nonnull %.lcssa.i) #14
  %i.ahs = load ptr, ptr %i.ahf, align 8, !tbaa !13
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 256
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !129
  tail call void @free(ptr noundef %i.ahu) #14
  %i.ahv = load ptr, ptr %i.ahf, align 8, !tbaa !13 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 272
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahv, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahw, ptr noundef nonnull align 8 dereferenceable(16) %i.ahx, i64 16, i1 false), !tbaa.struct !128
  %i.ahy = load ptr, ptr %i.ahf, align 8, !tbaa !13 ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 256
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahy, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahz, ptr noundef nonnull align 8 dereferenceable(16) %i.aia, i64 16, i1 false), !tbaa.struct !128
  %i.aib = load ptr, ptr %i.ahf, align 8, !tbaa !13
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 240
  %.029.i = load ptr, ptr %i.aic, align 8, !tbaa !44 ; 2 uses
  %.not.i57 = icmp eq ptr %.029.i, null
  br i1 %.not.i57, label %._crit_edge44.i, label %.preheader.i52, !llvm.loop !119

._crit_edge44.i:                                  ; preds = %._crit_edge.i56
  %.pre.i58 = load ptr, ptr %i.b, align 8, !tbaa !13
  %.phi.trans.insert.i59 = getelementptr inbounds nuw i8, ptr %.pre.i58, i64 256
  %.pre53.i = load ptr, ptr %.phi.trans.insert.i59, align 8, !tbaa !121 ; 2 uses
  %.not3445.i = icmp eq ptr %.pre53.i, null
  br i1 %.not3445.i, label %remove_aux_edges.exit, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %._crit_edge44.i, %bb.co
  %.047.i = phi ptr [ %.1.i60, %bb.co ], [ null, %._crit_edge44.i ] ; 4 uses
  %.13046.i = phi ptr [ %i.aig, %bb.co ], [ %.pre53.i, %._crit_edge44.i ] ; 3 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %.13046.i, i64 16
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !13 ; 3 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 240
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !155 ; 6 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aie, i64 216
  %i.aii = load i8, ptr %i.aih, align 8, !tbaa !76
  %i.aij = icmp eq i8 %i.aii, 2
  br i1 %i.aij, label %bb.ci, label %bb.co

bb.ci:                                            ; preds = %.lr.ph49.i
  %.not35.i = icmp eq ptr %.047.i, null
  br i1 %.not35.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.aik = getelementptr inbounds nuw i8, ptr %.047.i, i64 16
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !13
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 240
  store ptr %i.aig, ptr %i.aim, align 8, !tbaa !155
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.ain = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 256
  store ptr %i.aig, ptr %i.aio, align 8, !tbaa !121
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.not36.i = icmp eq ptr %i.aig, null
  br i1 %.not36.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !13
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 248
  store ptr %.047.i, ptr %i.air, align 8, !tbaa !156
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  tail call void @free(ptr noundef nonnull %i.aie) #14
  tail call void @free(ptr noundef nonnull %.13046.i) #14
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.lr.ph49.i
  %.1.i60 = phi ptr [ %.047.i, %bb.cn ], [ %.13046.i, %.lr.ph49.i ]
  %.not34.i = icmp eq ptr %i.aig, null
  br i1 %.not34.i, label %remove_aux_edges.exit, label %.lr.ph49.i, !llvm.loop !120

remove_aux_edges.exit:                            ; preds = %bb.co, %._crit_edge44.i, %set_aspect.exit, %bb.c, %bb.a
  %.1 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %set_aspect.exit ], [ 0, %._crit_edge44.i ], [ 0, %bb.co ]
  ret i32 %.1
}

declare void @mark_lowclusters(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @set_ycoords(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38
  %.not153 = icmp sgt i32 %i.f, %i.h
  br i1 %.not153, label %._crit_edge155, label %.preheader147.preheader

.preheader147.preheader:                          ; preds = %bb.a
  %i.i = sext i32 %i.f to i64
  br label %.preheader147

.preheader147:                                    ; preds = %.preheader147.preheader, %._crit_edge
end_hunk_0
