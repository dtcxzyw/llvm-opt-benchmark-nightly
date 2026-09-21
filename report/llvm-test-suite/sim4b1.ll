Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sim4b1?download=true
inline.NumInlined: 64
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@SIM4:bb.a
  %smin.i393 = call i32 @llvm.smin.i32(i32 %.lcssa.i392, i32 1)
  %i.zr = add i32 %smin.i393, -1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %.critedge2.i
  %.2226303.i = phi i32 [ %.lcssa.i392, %.critedge2.i ], [ %i.zz, %bb.ct ] ; 4 uses
  %i.zs = zext nneg i32 %.2226303.i to i64
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.zs ; 2 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !10
  %i.zv = getelementptr i8, ptr %i.zt, i64 -4
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !10
  %i.zx = sub nsw i32 %i.zu, %i.zw
  %i.zy = icmp slt i32 %i.zx, 3
  br i1 %i.zy, label %bb.ct, label %.critedge8.i

bb.ct:                                            ; preds = %bb.cs
  %i.zz = add nsw i32 %.2226303.i, -1
  %i.aaa = icmp sgt i32 %.2226303.i, 1
  br i1 %i.aaa, label %bb.cs, label %.critedge8.i, !llvm.loop !97

.critedge8.i:                                     ; preds = %bb.ct, %bb.cs
  %.2226.lcssa.i = phi i32 [ %i.zr, %bb.ct ], [ %.2226303.i, %bb.cs ] ; 2 uses
  %i.aab = sext i32 %.2226.lcssa.i to i64         ; 2 uses
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !10 ; 2 uses
  %i.aae = getelementptr inbounds [4 x i8], ptr %i.uz, i64 %i.aab
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !10
  %i.aag = sub i32 %i.to, %spec.select348
  %i.aah = add i32 %i.aag, %i.aad
  %i.aai = add i32 %i.aah, %i.aaf
  call void @free(ptr noundef nonnull %i.uy) #18
  call void @free(ptr noundef %i.uz) #18
  call void @free(ptr noundef %i.uo) #18
  call void @free(ptr noundef %i.uq) #18
  br label %extend_fw.exit

extend_fw.exit:                                   ; preds = %bb.bn, %bb.bo, %bb.cj, %bb.cl, %bb.cn, %.critedge8.i
  %spec.select348.pn = phi i32 [ %spec.select348, %bb.bn ], [ %i.tu, %bb.bo ], [ %i.aad, %.critedge8.i ], [ %spec.select348, %bb.cj ], [ %spec.select348, %bb.cl ], [ %.3230.i, %bb.cn ]
  %.0542 = phi i32 [ %i.uh, %bb.bn ], [ %i.uj, %bb.bo ], [ %i.aai, %.critedge8.i ], [ %i.xt, %bb.cj ], [ %i.xv, %bb.cl ], [ %i.xx, %bb.cn ]
  %.0234.i = phi i32 [ 0, %bb.bn ], [ 0, %bb.bo ], [ %.2226.lcssa.i, %.critedge8.i ], [ %i.xs, %bb.cj ], [ %i.xu, %bb.cl ], [ %i.xw, %bb.cn ]
  %.0543 = add nsw i32 %spec.select348.pn, %i.th  ; 2 uses
  %i.aaj = load i32, ptr %i.tg, align 4, !tbaa !44
  %i.aak = sub nsw i32 %.0543, %i.aaj
  %i.aal = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 56), align 8, !tbaa !143
  %i.aam = mul nsw i32 %i.aak, %i.aal
  %i.aan = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 48), align 8, !tbaa !144
  %i.aao = mul nsw i32 %i.aan, %.0234.i
  %i.aap = add nsw i32 %i.aao, %i.aam
  %i.aaq = icmp sgt i32 %i.aap, -1
  br i1 %i.aaq, label %bb.cu, label %.thread555

bb.cu:                                            ; preds = %extend_fw.exit
  store i32 %.0543, ptr %i.tg, align 4, !tbaa !44
  store i32 %.0542, ptr %i.tn, align 4, !tbaa !43
  br label %.thread555

.thread555:                                       ; preds = %extend_fw.exit, %bb.cu, %.critedge7.thread, %bb.az, %.thread548
  %i.aar = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.aas = icmp ugt i32 %i.aar, 1
  br i1 %i.aas, label %.lr.ph663, label %.loopexit599

.lr.ph663:                                        ; preds = %.thread555, %bb.fg
  %i.aat = phi i32 [ %i.atq, %bb.fg ], [ %i.aar, %.thread555 ] ; 2 uses
  %.0285662 = phi i32 [ %i.atr, %bb.fg ], [ 1, %.thread555 ] ; 6 uses
  %i.aau = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.aav = add i32 %.0285662, -1                  ; 2 uses
  %i.aaw = zext i32 %i.aav to i64
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %i.aaw
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !29 ; 2 uses
  %i.aaz = zext i32 %.0285662 to i64
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %i.aaz
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !29 ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 4
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !31 ; 6 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aay, i64 12 ; 2 uses
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !44 ; 9 uses
  %i.abg = xor i32 %i.abf, -1
  %i.abh = add i32 %i.abd, %i.abg                 ; 14 uses
  %i.abi = icmp sgt i32 %i.abh, 0
  br i1 %i.abi, label %bb.cv, label %bb.fg

bb.cv:                                            ; preds = %.lr.ph663
  %i.abj = load i32, ptr %i.abb, align 4, !tbaa !32 ; 2 uses
  %i.abk = add i32 %i.abj, -1                     ; 4 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aay, i64 8 ; 3 uses
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !43 ; 10 uses
  %i.abn = icmp ugt i32 %i.abk, %i.abm
  br i1 %i.abn, label %bb.cw, label %bb.fg

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.abo = icmp samesign ult i32 %i.abh, 501
  %.pre759 = load i32, ptr %i.x, align 4, !tbaa !36 ; 3 uses
  %.pre762 = load ptr, ptr %i.w, align 8, !tbaa !27 ; 2 uses
  br i1 %i.abo, label %bb.cx, label %.thread559

bb.cx:                                            ; preds = %bb.cw
  %i.abp = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.abq = zext i32 %i.abf to i64
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.abq ; 4 uses
  %i.abs = zext i32 %i.abm to i64
  %i.abt = getelementptr inbounds nuw i8, ptr %.pre762, i64 %i.abs ; 4 uses
  %i.abu = xor i32 %i.abm, -1
  %i.abv = add i32 %i.abj, %i.abu                 ; 8 uses
  %i.abw = icmp ugt i32 %i.abv, 999999
  br i1 %i.abw, label %greedy.exitthread-pre-split, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.abx = sub nsw i32 %i.abv, %i.abh             ; 3 uses
  %i.aby = uitofp nneg i32 %i.abh to double       ; 2 uses
  %i.abz = call double @llvm.fmuladd.f64(double %i.aby, double 2.000000e-01, double 1.000000e+00)
  %i.aca = fptoui double %i.abz to i32
  %..i = call i32 @llvm.umax.i32(i32 %.pre759, i32 %i.aca) ; 22 uses
  %i.acb = icmp slt i32 %i.abx, 0
  br i1 %i.acb, label %bb.cz, label %.lr.ph.i408.preheader

bb.cz:                                            ; preds = %bb.cy
  %i.acc = uitofp i32 %.pre759 to double          ; 2 uses
  %i.acd = uitofp nneg i32 %i.abv to double       ; 2 uses
  %i.ace = fmul nnan double %i.acd, 1.200000e+00  ; 2 uses
  %i.acf = fcmp olt double %i.ace, %i.acc
  %.501.i = select i1 %i.acf, double %i.ace, double %i.acc
  %i.acg = fcmp ult double %.501.i, %i.aby
  br i1 %i.acg, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ach = add nuw i32 %i.abm, 1
  %i.aci = add i32 %i.abf, 1
  %i.acj = add i32 %i.abd, -1
  %i.ack = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.ach, ptr %i.ack, align 4, !tbaa !32
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 4
  store i32 %i.aci, ptr %i.acl, align 4, !tbaa !31
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  store i32 %i.abk, ptr %i.acm, align 4, !tbaa !43
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ack, i64 12
  store i32 %i.acj, ptr %i.acn, align 4, !tbaa !44
  %i.aco = load i32, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.acp = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i.i426 = icmp ugt i32 %i.aco, %i.acp
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i.i426, label %add_col_elt.exit.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.acq = add i32 %i.aco, 5                      ; 2 uses
  store i32 %i.acq, ptr %i.s, align 4, !tbaa !18
  %i.acr = zext i32 %i.acq to i64
  %i.acs = shl nuw nsw i64 %i.acr, 3
  %i.act = call ptr @xrealloc(ptr noundef %.pre.i.i, i64 noundef %i.acs) #18 ; 2 uses
  store ptr %i.act, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit.i

add_col_elt.exit.i:                               ; preds = %bb.db, %bb.da
  %i.acu = phi ptr [ %i.act, %bb.db ], [ %.pre.i.i, %bb.da ]
  %i.acv = add i32 %i.acp, 1
  store i32 %i.acv, ptr %i.t, align 8, !tbaa !19
  %i.acw = zext i32 %i.acp to i64
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %i.acw
  store ptr %i.ack, ptr %i.acx, align 8, !tbaa !40
  %i.acy = sub nsw i32 %i.abh, %i.abv
  %i.acz = call double @llvm.fmuladd.f64(double %i.acd, double 2.000000e-01, double 1.000000e+00)
  %i.ada = fptoui double %i.acz to i32
  %i.adb = add i32 %i.acy, %i.ada
  br label %greedy.exitthread-pre-split

bb.dc:                                            ; preds = %bb.cz
  %i.adc = add i32 %..i, 1
  br label %greedy.exitthread-pre-split

.lr.ph.i408.preheader:                            ; preds = %bb.cy
  %.neg606.i = sub i32 %i.abx, %..i               ; 2 uses
  br label %.lr.ph.i408

.lr.ph.i408:                                      ; preds = %.lr.ph.i408.preheader, %bb.dd
  %.0442532.i = phi i32 [ %i.adm, %bb.dd ], [ %i.abh, %.lr.ph.i408.preheader ] ; 3 uses
  %.0453531.i = phi i32 [ %i.adn, %bb.dd ], [ %i.abv, %.lr.ph.i408.preheader ] ; 3 uses
  %i.add = zext nneg i32 %.0442532.i to i64
  %i.ade = getelementptr i8, ptr %i.abr, i64 %i.add
  %i.adf = getelementptr i8, ptr %i.ade, i64 -1
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !20
  %i.adh = zext nneg i32 %.0453531.i to i64
  %i.adi = getelementptr i8, ptr %i.abt, i64 %i.adh
  %i.adj = getelementptr i8, ptr %i.adi, i64 -1
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !20
  %i.adl = icmp eq i8 %i.adg, %i.adk
  br i1 %i.adl, label %bb.dd, label %.critedge.thread.i409

bb.dd:                                            ; preds = %.lr.ph.i408
  %i.adm = add nsw i32 %.0442532.i, -1            ; 4 uses
  %i.adn = add nsw i32 %.0453531.i, -1
  %i.ado = icmp ne i32 %i.adm, 0
  %i.adp = icmp sgt i32 %.0453531.i, 1
  %or.cond.i424 = and i1 %i.ado, %i.adp
  br i1 %or.cond.i424, label %.lr.ph.i408, label %.critedge.i425, !llvm.loop !98

.critedge.i425:                                   ; preds = %bb.dd
  %i.adq = icmp eq i32 %i.adm, 0
  br i1 %i.adq, label %bb.de, label %.critedge.thread.i409

bb.de:                                            ; preds = %.critedge.i425
  %i.adr = add i32 %i.abm, 1
  %i.ads = add i32 %i.adr, %i.abx
  %i.adt = add i32 %i.abf, 1
  %i.adu = add i32 %i.abd, -1
  %i.adv = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.ads, ptr %i.adv, align 4, !tbaa !32
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 4
  store i32 %i.adt, ptr %i.adw, align 4, !tbaa !31
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adv, i64 8
  store i32 %i.abk, ptr %i.adx, align 4, !tbaa !43
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adv, i64 12
  store i32 %i.adu, ptr %i.ady, align 4, !tbaa !44
  %i.adz = load i32, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.aea = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i505.i = icmp ugt i32 %i.adz, %i.aea
  %.pre.i506.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i505.i, label %add_col_elt.exit508.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aeb = add i32 %i.adz, 5                      ; 2 uses
  store i32 %i.aeb, ptr %i.s, align 4, !tbaa !18
  %i.aec = zext i32 %i.aeb to i64
  %i.aed = shl nuw nsw i64 %i.aec, 3
  %i.aee = call ptr @xrealloc(ptr noundef %.pre.i506.i, i64 noundef %i.aed) #18 ; 2 uses
  store ptr %i.aee, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit508.i

add_col_elt.exit508.i:                            ; preds = %bb.df, %bb.de
  %i.aef = phi ptr [ %i.aee, %bb.df ], [ %.pre.i506.i, %bb.de ]
  %i.aeg = add i32 %i.aea, 1                      ; 2 uses
  store i32 %i.aeg, ptr %i.t, align 8, !tbaa !19
  %i.aeh = zext i32 %i.aea to i64
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.aef, i64 %i.aeh
  store ptr %i.adv, ptr %i.aei, align 8, !tbaa !40
  br label %greedy.exit

.critedge.thread.i409:                            ; preds = %.lr.ph.i408, %.critedge.i425
  %.0442530.i = phi i32 [ %i.adm, %.critedge.i425 ], [ %.0442532.i, %.lr.ph.i408 ]
  %i.aej = add i32 %..i, %i.abv                   ; 3 uses
  %i.aek = add i32 %i.aej, 1
  %i.ael = zext i32 %i.aek to i64                 ; 2 uses
  %i.aem = shl nuw nsw i64 %i.ael, 2              ; 4 uses
  %i.aen = call ptr @xmalloc(i64 noundef %i.aem) #18 ; 15 uses
  %i.aeo = call ptr @xmalloc(i64 noundef %i.aem) #18 ; 13 uses
  %i.aep = sub i32 %i.abd, %i.abf                 ; 18 uses
  %i.aeq = zext i32 %i.aej to i64                 ; 4 uses
  %i.aer = add nuw nsw i64 %i.aeq, 1              ; 2 uses
  %min.iters.check1046 = icmp ult i32 %i.aej, 7
  %i.aes = ptrtoaddr ptr %i.aeo to i64
  %i.aet = ptrtoaddr ptr %i.aen to i64
  %i.aeu = sub i64 %i.aet, %i.aes
  %diff.check1044 = icmp ugt i64 %i.aeu, -32
  %or.cond1112 = select i1 %min.iters.check1046, i1 true, i1 %diff.check1044
  br i1 %or.cond1112, label %scalar.ph1045.preheader, label %vector.ph1047

vector.ph1047:                                    ; preds = %.critedge.thread.i409
  %n.vec1048 = and i64 %i.aer, 8589934584         ; 3 uses
  %broadcast.splatinsert1049 = insertelement <4 x i32> poison, i32 %i.aep, i64 0
  %broadcast.splat1050 = shufflevector <4 x i32> %broadcast.splatinsert1049, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %vector.ph1047
  %index1052 = phi i64 [ 0, %vector.ph1047 ], [ %index.next1053, %vector.body1051 ] ; 3 uses
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %index1052 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 16
  store <4 x i32> %broadcast.splat1050, ptr %i.aev, align 4, !tbaa !10
  store <4 x i32> %broadcast.splat1050, ptr %i.aew, align 4, !tbaa !10
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %index1052 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 16
  store <4 x i32> %broadcast.splat1050, ptr %i.aex, align 4, !tbaa !10
  store <4 x i32> %broadcast.splat1050, ptr %i.aey, align 4, !tbaa !10
  %index.next1053 = add nuw i64 %index1052, 8     ; 2 uses
  %i.aez = icmp eq i64 %index.next1053, %n.vec1048
  br i1 %i.aez, label %middle.block1054, label %vector.body1051, !llvm.loop !99

middle.block1054:                                 ; preds = %vector.body1051
  %cmp.n1055 = icmp eq i64 %i.aer, %n.vec1048
  br i1 %cmp.n1055, label %.lr.ph536.preheader.i, label %scalar.ph1045.preheader

scalar.ph1045.preheader:                          ; preds = %.critedge.thread.i409, %middle.block1054
  %indvars.iv.i410.ph = phi i64 [ 0, %.critedge.thread.i409 ], [ %n.vec1048, %middle.block1054 ] ; 3 uses
  %i.afa = add nuw nsw i64 %i.aeq, 1
  %i.afb = sub nsw i64 %i.aeq, %indvars.iv.i410.ph
  %xtraiter1195 = and i64 %i.afa, 3               ; 2 uses
  %lcmp.mod1196.not = icmp eq i64 %xtraiter1195, 0
  br i1 %lcmp.mod1196.not, label %scalar.ph1045.prol.loopexit, label %scalar.ph1045.prol

scalar.ph1045.prol:                               ; preds = %scalar.ph1045.preheader, %scalar.ph1045.prol
  %indvars.iv.i410.prol = phi i64 [ %indvars.iv.next.i411.prol, %scalar.ph1045.prol ], [ %indvars.iv.i410.ph, %scalar.ph1045.preheader ] ; 3 uses
  %prol.iter1197 = phi i64 [ %prol.iter1197.next, %scalar.ph1045.prol ], [ 0, %scalar.ph1045.preheader ]
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.i410.prol
  store i32 %i.aep, ptr %i.afc, align 4, !tbaa !10
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %indvars.iv.i410.prol
  store i32 %i.aep, ptr %i.afd, align 4, !tbaa !10
  %indvars.iv.next.i411.prol = add nuw nsw i64 %indvars.iv.i410.prol, 1 ; 2 uses
  %prol.iter1197.next = add i64 %prol.iter1197, 1 ; 2 uses
  %prol.iter1197.cmp.not = icmp eq i64 %prol.iter1197.next, %xtraiter1195
  br i1 %prol.iter1197.cmp.not, label %scalar.ph1045.prol.loopexit, label %scalar.ph1045.prol, !llvm.loop !100

scalar.ph1045.prol.loopexit:                      ; preds = %scalar.ph1045.prol, %scalar.ph1045.preheader
  %indvars.iv.i410.unr = phi i64 [ %indvars.iv.i410.ph, %scalar.ph1045.preheader ], [ %indvars.iv.next.i411.prol, %scalar.ph1045.prol ]
  %i.afe = icmp ult i64 %i.afb, 3
  br i1 %i.afe, label %.lr.ph536.preheader.i, label %scalar.ph1045

scalar.ph1045:                                    ; preds = %scalar.ph1045.prol.loopexit, %scalar.ph1045
  %indvars.iv.i410 = phi i64 [ %indvars.iv.next.i411.3, %scalar.ph1045 ], [ %indvars.iv.i410.unr, %scalar.ph1045.prol.loopexit ] ; 6 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.i410
  store i32 %i.aep, ptr %i.aff, align 4, !tbaa !10
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %indvars.iv.i410
  store i32 %i.aep, ptr %i.afg, align 4, !tbaa !10
  %indvars.iv.next.i411 = add nuw nsw i64 %indvars.iv.i410, 1 ; 2 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.next.i411
  store i32 %i.aep, ptr %i.afh, align 4, !tbaa !10
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %indvars.iv.next.i411
  store i32 %i.aep, ptr %i.afi, align 4, !tbaa !10
  %indvars.iv.next.i411.1 = add nuw nsw i64 %indvars.iv.i410, 2 ; 2 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.next.i411.1
  store i32 %i.aep, ptr %i.afj, align 4, !tbaa !10
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %indvars.iv.next.i411.1
  store i32 %i.aep, ptr %i.afk, align 4, !tbaa !10
  %indvars.iv.next.i411.2 = add nuw nsw i64 %indvars.iv.i410, 3 ; 3 uses
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.next.i411.2
  store i32 %i.aep, ptr %i.afl, align 4, !tbaa !10
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %indvars.iv.next.i411.2
  store i32 %i.aep, ptr %i.afm, align 4, !tbaa !10
  %indvars.iv.next.i411.3 = add nuw nsw i64 %indvars.iv.i410, 4
  %exitcond746.not.3 = icmp eq i64 %indvars.iv.next.i411.2, %i.aeq
  br i1 %exitcond746.not.3, label %.lr.ph536.preheader.i, label %scalar.ph1045, !llvm.loop !101

.lr.ph536.preheader.i:                            ; preds = %scalar.ph1045.prol.loopexit, %scalar.ph1045, %middle.block1054
  %i.afn = sext i32 %..i to i64                   ; 4 uses
  %i.afo = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.afn ; 3 uses
  store i32 %.0442530.i, ptr %i.afo, align 4, !tbaa !10
  %i.afp = add i32 %..i, -1
  %i.afq = add i32 %..i, 1                        ; 4 uses
  %wide.trip.count.i412 = zext nneg i32 %i.abh to i64 ; 2 uses
  br label %.lr.ph536.i

.lr.ph536.i:                                      ; preds = %bb.dg, %.lr.ph536.preheader.i
  %indvars.iv612.i = phi i64 [ 0, %.lr.ph536.preheader.i ], [ %indvars.iv.next613.i, %bb.dg ] ; 4 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.abr, i64 %indvars.iv612.i
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !20
  %i.aft = getelementptr inbounds nuw i8, ptr %i.abt, i64 %indvars.iv612.i
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !20
  %i.afv = icmp eq i8 %i.afs, %i.afu
  br i1 %i.afv, label %bb.dg, label %.critedge3.i

bb.dg:                                            ; preds = %.lr.ph536.i
  %indvars.iv.next613.i = add nuw nsw i64 %indvars.iv612.i, 1 ; 2 uses
  %exitcond.not.i423 = icmp eq i64 %indvars.iv.next613.i, %wide.trip.count.i412
  br i1 %exitcond.not.i423, label %.critedge3.i.thread, label %.lr.ph536.i, !llvm.loop !102

.critedge3.i:                                     ; preds = %.lr.ph536.i
  %i.afw = trunc nuw nsw i64 %indvars.iv612.i to i32 ; 2 uses
  %i.afx = icmp eq i32 %i.abh, %i.afw
  br i1 %i.afx, label %.critedge3.i.thread, label %.critedge3.thread.i

.critedge3.i.thread:                              ; preds = %bb.dg, %.critedge3.i
  %i.afy = add i32 %i.abm, 1
  %i.afz = add i32 %i.abf, 1
  %i.aga = add i32 %i.abm, %i.abh
  %i.agb = add i32 %i.abd, -1
  %i.agc = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.afy, ptr %i.agc, align 4, !tbaa !32
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 4
  store i32 %i.afz, ptr %i.agd, align 4, !tbaa !31
  %i.age = getelementptr inbounds nuw i8, ptr %i.agc, i64 8
  store i32 %i.aga, ptr %i.age, align 4, !tbaa !43
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agc, i64 12
  store i32 %i.agb, ptr %i.agf, align 4, !tbaa !44
  %i.agg = load i32, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.agh = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i509.i = icmp ugt i32 %i.agg, %i.agh
  %.pre.i510.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i509.i, label %add_col_elt.exit512.i, label %bb.dh

bb.dh:                                            ; preds = %.critedge3.i.thread
  %i.agi = add i32 %i.agg, 5                      ; 2 uses
  store i32 %i.agi, ptr %i.s, align 4, !tbaa !18
  %i.agj = zext i32 %i.agi to i64
  %i.agk = shl nuw nsw i64 %i.agj, 3
  %i.agl = call ptr @xrealloc(ptr noundef %.pre.i510.i, i64 noundef %i.agk) #18 ; 2 uses
  store ptr %i.agl, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit512.i

add_col_elt.exit512.i:                            ; preds = %bb.dh, %.critedge3.i.thread
  %i.agm = phi ptr [ %i.agl, %bb.dh ], [ %.pre.i510.i, %.critedge3.i.thread ]
  %i.agn = add i32 %i.agh, 1
  store i32 %i.agn, ptr %i.t, align 8, !tbaa !19
  %i.ago = zext i32 %i.agh to i64
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %i.agm, i64 %i.ago
  store ptr %i.agc, ptr %i.agp, align 8, !tbaa !40
  call void @free(ptr noundef %i.aen) #18
  call void @free(ptr noundef %i.aeo) #18
  br label %greedy.exitthread-pre-split

.critedge3.thread.i:                              ; preds = %.critedge3.i
  %i.agq = call ptr @xmalloc(i64 noundef %i.aem) #18 ; 8 uses
  %i.agr = call ptr @xmalloc(i64 noundef %i.aem) #18 ; 6 uses
  %umax.i413 = call i64 @llvm.umax.i64(i64 %i.ael, i64 1)
  %11 = shl nuw nsw i64 %umax.i413, 2             ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.agq, i8 -1, i64 %11, i1 false), !tbaa !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.agr, i8 -1, i64 %11, i1 false), !tbaa !10
  %i.ags = getelementptr inbounds [4 x i8], ptr %i.agq, i64 %i.afn ; 3 uses
  store i32 %i.afw, ptr %i.ags, align 4, !tbaa !10
  %i.agt = zext i32 %i.afq to i64
  %i.agu = shl nuw nsw i64 %i.agt, 2              ; 4 uses
  %i.agv = call ptr @xmalloc(i64 noundef %i.agu) #18 ; 15 uses
  %i.agw = call ptr @xmalloc(i64 noundef %i.agu) #18 ; 15 uses
  %i.agx = call ptr @xmalloc(i64 noundef %i.agu) #18 ; 7 uses
  %i.agy = call ptr @xmalloc(i64 noundef %i.agu) #18 ; 7 uses
  %.not481541.i = icmp eq i32 %..i, 0
  br i1 %.not481541.i, label %._crit_edge.thread.i, label %.lr.ph543.i

._crit_edge.thread.i:                             ; preds = %.critedge3.thread.i
  %i.agz = load i32, ptr %i.afo, align 4, !tbaa !10
  store i32 %i.agz, ptr %i.agw, align 4, !tbaa !10
  store i32 0, ptr %i.agy, align 4, !tbaa !10
  %i.aha = load i32, ptr %i.ags, align 4, !tbaa !10
  store i32 %i.aha, ptr %i.agv, align 4, !tbaa !10
  store i32 0, ptr %i.agx, align 4, !tbaa !10
  br label %._crit_edge600.i

.lr.ph543.i:                                      ; preds = %.critedge3.thread.i
  %i.ahb = ptrtoaddr ptr %i.agw to i64
  %i.ahc = ptrtoaddr ptr %i.agv to i64
  %umax622.i = call i32 @llvm.umax.i32(i32 %i.afq, i32 2)
  %wide.trip.count623.i = zext i32 %umax622.i to i64 ; 4 uses
  %i.ahd = add nsw i64 %wide.trip.count623.i, -1  ; 2 uses
  %min.iters.check1034 = icmp ult i32 %i.afq, 9
  %i.ahe = sub i64 %i.ahb, %i.ahc
  %diff.check = icmp ugt i64 %i.ahe, -32
  %or.cond1113 = select i1 %min.iters.check1034, i1 true, i1 %diff.check
  br i1 %or.cond1113, label %scalar.ph1033.preheader, label %vector.ph1035

vector.ph1035:                                    ; preds = %.lr.ph543.i
  %n.vec1036 = and i64 %i.ahd, -8                 ; 3 uses
  %i.ahf = or disjoint i64 %n.vec1036, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aep, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1037

vector.body1037:                                  ; preds = %vector.body1037, %vector.ph1035
  %index1038 = phi i64 [ 0, %vector.ph1035 ], [ %index.next1039, %vector.body1037 ] ; 2 uses
  %i.ahg = or disjoint i64 %index1038, 1          ; 2 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.ahg ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ahh, align 4, !tbaa !10
  store <4 x i32> %broadcast.splat, ptr %i.ahi, align 4, !tbaa !10
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %i.ahg ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.ahj, align 4, !tbaa !10
  store <4 x i32> splat (i32 -1), ptr %i.ahk, align 4, !tbaa !10
  %index.next1039 = add nuw i64 %index1038, 8     ; 2 uses
  %i.ahl = icmp eq i64 %index.next1039, %n.vec1036
  br i1 %i.ahl, label %middle.block1040, label %vector.body1037, !llvm.loop !103

middle.block1040:                                 ; preds = %vector.body1037
  %cmp.n1041 = icmp eq i64 %i.ahd, %n.vec1036
  br i1 %cmp.n1041, label %.preheader528.lr.ph.i, label %scalar.ph1033.preheader

scalar.ph1033.preheader:                          ; preds = %.lr.ph543.i, %middle.block1040
  %indvars.iv619.i.ph = phi i64 [ 1, %.lr.ph543.i ], [ %i.ahf, %middle.block1040 ] ; 4 uses
  %i.ahm = sub nsw i64 %wide.trip.count623.i, %indvars.iv619.i.ph
  %xtraiter1198 = and i64 %i.ahm, 3               ; 2 uses
  %lcmp.mod1199.not = icmp eq i64 %xtraiter1198, 0
  br i1 %lcmp.mod1199.not, label %scalar.ph1033.prol.loopexit, label %scalar.ph1033.prol

scalar.ph1033.prol:                               ; preds = %scalar.ph1033.preheader, %scalar.ph1033.prol
  %indvars.iv619.i.prol = phi i64 [ %indvars.iv.next620.i.prol, %scalar.ph1033.prol ], [ %indvars.iv619.i.ph, %scalar.ph1033.preheader ] ; 3 uses
  %prol.iter1200 = phi i64 [ %prol.iter1200.next, %scalar.ph1033.prol ], [ 0, %scalar.ph1033.preheader ]
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv619.i.prol
  store i32 %i.aep, ptr %i.ahn, align 4, !tbaa !10
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %indvars.iv619.i.prol
  store i32 -1, ptr %i.aho, align 4, !tbaa !10
  %indvars.iv.next620.i.prol = add nuw nsw i64 %indvars.iv619.i.prol, 1 ; 2 uses
  %prol.iter1200.next = add i64 %prol.iter1200, 1 ; 2 uses
  %prol.iter1200.cmp.not = icmp eq i64 %prol.iter1200.next, %xtraiter1198
  br i1 %prol.iter1200.cmp.not, label %scalar.ph1033.prol.loopexit, label %scalar.ph1033.prol, !llvm.loop !104

scalar.ph1033.prol.loopexit:                      ; preds = %scalar.ph1033.prol, %scalar.ph1033.preheader
  %indvars.iv619.i.unr = phi i64 [ %indvars.iv619.i.ph, %scalar.ph1033.preheader ], [ %indvars.iv.next620.i.prol, %scalar.ph1033.prol ]
  %i.ahp = sub nsw i64 %indvars.iv619.i.ph, %wide.trip.count623.i
  %i.ahq = icmp ugt i64 %i.ahp, -4
  br i1 %i.ahq, label %.preheader528.lr.ph.i, label %scalar.ph1033

scalar.ph1033:                                    ; preds = %scalar.ph1033.prol.loopexit, %scalar.ph1033
  %indvars.iv619.i = phi i64 [ %indvars.iv.next620.i.3, %scalar.ph1033 ], [ %indvars.iv619.i.unr, %scalar.ph1033.prol.loopexit ] ; 6 uses
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv619.i
  store i32 %i.aep, ptr %i.ahr, align 4, !tbaa !10
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %indvars.iv619.i
  store i32 -1, ptr %i.ahs, align 4, !tbaa !10
  %indvars.iv.next620.i = add nuw nsw i64 %indvars.iv619.i, 1 ; 2 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv.next620.i
  store i32 %i.aep, ptr %i.aht, align 4, !tbaa !10
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %indvars.iv.next620.i
  store i32 -1, ptr %i.ahu, align 4, !tbaa !10
  %indvars.iv.next620.i.1 = add nuw nsw i64 %indvars.iv619.i, 2 ; 2 uses
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv.next620.i.1
  store i32 %i.aep, ptr %i.ahv, align 4, !tbaa !10
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %indvars.iv.next620.i.1
  store i32 -1, ptr %i.ahw, align 4, !tbaa !10
  %indvars.iv.next620.i.2 = add nuw nsw i64 %indvars.iv619.i, 3 ; 2 uses
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv.next620.i.2
  store i32 %i.aep, ptr %i.ahx, align 4, !tbaa !10
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %indvars.iv.next620.i.2
  store i32 -1, ptr %i.ahy, align 4, !tbaa !10
  %indvars.iv.next620.i.3 = add nuw nsw i64 %indvars.iv619.i, 4 ; 2 uses
  %exitcond624.i.3 = icmp eq i64 %indvars.iv.next620.i.3, %wide.trip.count623.i
  br i1 %exitcond624.i.3, label %.preheader528.lr.ph.i, label %scalar.ph1033, !llvm.loop !105

.preheader528.lr.ph.i:                            ; preds = %scalar.ph1033.prol.loopexit, %scalar.ph1033, %middle.block1040
  %i.ahz = load i32, ptr %i.afo, align 4, !tbaa !10
  store i32 %i.ahz, ptr %i.agw, align 4, !tbaa !10
  store i32 %..i, ptr %i.agy, align 4, !tbaa !10
  %i.aia = load i32, ptr %i.ags, align 4, !tbaa !10
  store i32 %i.aia, ptr %i.agv, align 4, !tbaa !10
  store i32 %..i, ptr %i.agx, align 4, !tbaa !10
  %i.aib = getelementptr inbounds [4 x i8], ptr %i.aeo, i64 %i.afn ; 2 uses
  %i.aic = getelementptr inbounds [4 x i8], ptr %i.agr, i64 %i.afn ; 2 uses
  %i.aid = sext i32 %i.afp to i64
  %i.aie = add i32 %..i, 2
  %i.aif = zext nneg i32 %i.abv to i64
  br label %.preheader528.i

.preheader528.i:                                  ; preds = %bb.ek, %.preheader528.lr.ph.i
  %indvars.iv747 = phi i32 [ %indvars.iv.next748, %bb.ek ], [ 2, %.preheader528.lr.ph.i ] ; 2 uses
  %indvars.iv646.i.a = phi i32 [ %indvars.iv.next647.i, %bb.ek ], [ -1, %.preheader528.lr.ph.i ] ; 2 uses
  %indvars.iv631.i = phi i32 [ %indvars.iv.next632.i, %bb.ek ], [ %i.aie, %.preheader528.lr.ph.i ] ; 4 uses
  %indvars.iv625.i.a = phi i64 [ %indvars.iv.next626.i, %bb.ek ], [ %i.aid, %.preheader528.lr.ph.i ] ; 6 uses
  %.0429599.i = phi i32 [ %.2.i, %bb.ek ], [ -1, %.preheader528.lr.ph.i ] ; 3 uses
  %.0430598.i = phi i32 [ %.2432.i, %bb.ek ], [ -1, %.preheader528.lr.ph.i ] ; 2 uses
  %.0437597.i = phi i32 [ %.2439.i, %bb.ek ], [ %..i, %.preheader528.lr.ph.i ] ; 4 uses
  %.1441596.i = phi i32 [ %i.anc, %bb.ek ], [ 1, %.preheader528.lr.ph.i ] ; 13 uses
  %.0445595.i = phi i32 [ %i.aks, %bb.ek ], [ %i.afq, %.preheader528.lr.ph.i ] ; 2 uses
  %indvars672.i = trunc i64 %indvars.iv625.i.a to i32
  %.not486552.i = icmp slt i32 %.0445595.i, %indvars672.i ; 2 uses
  br i1 %.not486552.i, label %._crit_edge555.thread.i, label %.lr.ph554.i

._crit_edge555.thread.i:                          ; preds = %.preheader528.i
  %i.aig = load i32, ptr %i.aib, align 4, !tbaa !10
  %i.aih = zext i32 %.1441596.i to i64            ; 3 uses
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.aih ; 2 uses
  store i32 %i.aig, ptr %i.aii, align 4, !tbaa !10
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.aih
  store i32 %..i, ptr %i.aij, align 4, !tbaa !10
  br label %.preheader527.i

.lr.ph554.i:                                      ; preds = %.preheader528.i
  %i.aik = sub i32 %..i, %.1441596.i
  %i.ail = add i32 %.1441596.i, %..i
  %sext.i = sext i32 %i.ail to i64                ; 2 uses
  %sext629.i = sext i32 %i.aik to i64             ; 2 uses
  %i.aim = getelementptr [4 x i8], ptr %i.aen, i64 %sext.i
  %i.ain = getelementptr i8, ptr %i.aim, i64 -4
  %i.aio = getelementptr [4 x i8], ptr %i.aen, i64 %sext629.i
  %i.aip = getelementptr i8, ptr %i.aio, i64 4
  br label %bb.di

bb.di:                                            ; preds = %.critedge7.i414, %.lr.ph554.i
  %indvars.iv627.i = phi i64 [ %indvars.iv625.i.a, %.lr.ph554.i ], [ %indvars.iv.next628.i, %.critedge7.i414 ] ; 6 uses
  %i.aiq = icmp eq i64 %indvars.iv627.i, %sext629.i
  br i1 %i.aiq, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.air = load i32, ptr %i.aip, align 4, !tbaa !10
  br label %bb.dp

bb.dk:                                            ; preds = %bb.di
  %i.ais = icmp eq i64 %indvars.iv627.i, %sext.i
  br i1 %i.ais, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ait = load i32, ptr %i.ain, align 4, !tbaa !10
  %i.aiu = add nsw i32 %i.ait, -1
  br label %bb.dp

bb.dm:                                            ; preds = %bb.dk
  %i.aiv = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %indvars.iv627.i ; 4 uses
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !10 ; 3 uses
  %i.aix = getelementptr i8, ptr %i.aiv, i64 4
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !10 ; 3 uses
  %.not497.i = icmp sgt i32 %i.aiw, %i.aiy
  br i1 %.not497.i, label %._crit_edge673.i, label %bb.dn

._crit_edge673.i:                                 ; preds = %bb.dm
  %.phi.trans.insert.i421 = getelementptr i8, ptr %i.aiv, i64 -4
  %.pre.i422 = load i32, ptr %.phi.trans.insert.i421, align 4, !tbaa !10
  br label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.aiz = add nsw i32 %i.aiw, -1                 ; 2 uses
  %i.aja = getelementptr i8, ptr %i.aiv, i64 -4
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !10 ; 2 uses
  %.not498.i = icmp sgt i32 %i.aiz, %i.ajb
  br i1 %.not498.i, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn, %._crit_edge673.i
  %i.ajc = phi i32 [ %.pre.i422, %._crit_edge673.i ], [ %i.ajb, %bb.dn ] ; 3 uses
  %.not499.not.i = icmp slt i32 %i.ajc, %i.aiy
  %.not500.not.i = icmp slt i32 %i.ajc, %i.aiw
  %or.cond521.i = and i1 %.not499.not.i, %.not500.not.i
  %i.ajd = add nsw i32 %i.ajc, -1
end_hunk_0
begin_hunk_1_@SIM4:bb.a

bb.dx:                                            ; preds = %bb.dw
  %i.ald = load i32, ptr %i.alb, align 4, !tbaa !10
  %i.ale = add nsw i32 %i.ald, 1
  br label %bb.ed

bb.dy:                                            ; preds = %bb.dw
  %i.alf = icmp eq i64 %indvars.iv655.i, %sext657.i
  br i1 %i.alf, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.alg = load i32, ptr %i.akz, align 4, !tbaa !10
  br label %bb.ed

bb.ea:                                            ; preds = %bb.dy
  %i.alh = getelementptr inbounds [4 x i8], ptr %i.agq, i64 %indvars.iv655.i ; 4 uses
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !10 ; 3 uses
  %i.alj = getelementptr i8, ptr %i.alh, i64 4
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !10 ; 3 uses
  %.not493.i = icmp slt i32 %i.ali, %i.alk
  br i1 %.not493.i, label %._crit_edge674.i, label %bb.eb

._crit_edge674.i:                                 ; preds = %bb.ea
  %.phi.trans.insert675.i = getelementptr i8, ptr %i.alh, i64 -4
  %.pre676.i = load i32, ptr %.phi.trans.insert675.i, align 4, !tbaa !10
  br label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.all = add nsw i32 %i.ali, 1                  ; 2 uses
  %i.alm = getelementptr i8, ptr %i.alh, i64 -4
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !10 ; 2 uses
  %.not494.i = icmp slt i32 %i.all, %i.aln
  br i1 %.not494.i, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb, %._crit_edge674.i
  %i.alo = phi i32 [ %.pre676.i, %._crit_edge674.i ], [ %i.aln, %bb.eb ] ; 2 uses
  %i.alp = add nsw i32 %i.alk, 1
  %.not496.i = icmp slt i32 %i.alk, %i.ali
  %i.alq = call i32 @llvm.smax.i32(i32 %i.alp, i32 %i.alo)
  %spec.select523.i = select i1 %.not496.i, i32 %i.alo, i32 %i.alq
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %bb.dz, %bb.dx
  %.4.i = phi i32 [ %i.ale, %bb.dx ], [ %i.alg, %bb.dz ], [ %spec.select523.i, %bb.ec ], [ %i.all, %bb.eb ] ; 7 uses
  %i.alr = icmp sgt i32 %.4.i, -1
  br i1 %i.alr, label %.preheader.i419, label %.critedge11.i417

.preheader.i419:                                  ; preds = %bb.ed
  %i.als = trunc nsw i64 %indvars.iv655.i to i32
  %i.alt = sub i32 %i.als, %..i
  %i.alu = add i32 %i.alt, %.4.i
  %i.alv = icmp ult i32 %.4.i, %i.abh
  %i.alw = icmp ult i32 %i.alu, %i.abv
  %or.cond504574.i = select i1 %i.alv, i1 %i.alw, i1 false
  br i1 %or.cond504574.i, label %.lr.ph577.preheader.i, label %.critedge11.i417

.lr.ph577.preheader.i:                            ; preds = %.preheader.i419
  %i.alx = zext nneg i32 %.4.i to i64
  %i.aly = add i32 %.4.i, %indvars.iv648.i.a
  %i.alz = zext i32 %i.aly to i64
  br label %.lr.ph577.i

.lr.ph577.i:                                      ; preds = %bb.ee, %.lr.ph577.preheader.i
  %indvars.iv650.i = phi i64 [ %i.alz, %.lr.ph577.preheader.i ], [ %indvars.iv.next651.i, %bb.ee ] ; 2 uses
  %indvars.iv644.i = phi i64 [ %i.alx, %.lr.ph577.preheader.i ], [ %indvars.iv.next645.i.a, %bb.ee ] ; 3 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.abr, i64 %indvars.iv644.i
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !20
  %i.amc = getelementptr inbounds nuw i8, ptr %i.abt, i64 %indvars.iv650.i
  %i.amd = load i8, ptr %i.amc, align 1, !tbaa !20
  %i.ame = icmp eq i8 %i.amb, %i.amd
  br i1 %i.ame, label %bb.ee, label %.critedge11.loopexit.i

bb.ee:                                            ; preds = %.lr.ph577.i
  %indvars.iv.next645.i.a = add nuw nsw i64 %indvars.iv644.i, 1 ; 3 uses
  %indvars.iv.next651.i = add nuw nsw i64 %indvars.iv650.i, 1 ; 2 uses
  %i.amf = icmp samesign ult i64 %indvars.iv.next645.i.a, %wide.trip.count.i412
  %i.amg = icmp samesign ult i64 %indvars.iv.next651.i, %i.aif
  %or.cond504.i = select i1 %i.amf, i1 %i.amg, i1 false
  br i1 %or.cond504.i, label %.lr.ph577.i, label %.critedge11.loopexit.i, !llvm.loop !110

.critedge11.loopexit.i:                           ; preds = %bb.ee, %.lr.ph577.i
  %.6.ph.in.i = phi i64 [ %indvars.iv644.i, %.lr.ph577.i ], [ %indvars.iv.next645.i.a, %bb.ee ]
  %.6.ph.i = trunc nuw nsw i64 %.6.ph.in.i to i32
  br label %.critedge11.i417

.critedge11.i417:                                 ; preds = %.critedge11.loopexit.i, %.preheader.i419, %bb.ed
  %.6.i = phi i32 [ %.4.i, %bb.ed ], [ %.4.i, %.preheader.i419 ], [ %.6.ph.i, %.critedge11.loopexit.i ]
  %i.amh = getelementptr inbounds [4 x i8], ptr %i.agr, i64 %indvars.iv655.i
  store i32 %.6.i, ptr %i.amh, align 4, !tbaa !10
  %indvars.iv.next656.i = add nsw i64 %indvars.iv655.i, 1
  %indvars.iv.next649.i = add i32 %indvars.iv648.i.a, 1 ; 2 uses
  %exitcond749 = icmp eq i32 %indvars.iv.next649.i, %indvars.iv747
  br i1 %exitcond749, label %._crit_edge585.i, label %bb.dw, !llvm.loop !111

._crit_edge585.i:                                 ; preds = %.critedge11.i417
  %i.ami = load i32, ptr %i.aic, align 4, !tbaa !10
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %i.akc ; 4 uses
  store i32 %i.ami, ptr %i.amj, align 4, !tbaa !10
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.akc ; 2 uses
  store i32 %..i, ptr %i.amk, align 4, !tbaa !10
  br label %.lr.ph589.i

.preheader526.i:                                  ; preds = %bb.eg, %._crit_edge585.thread.i
  %i.aml = phi ptr [ %i.aku, %._crit_edge585.thread.i ], [ %i.amj, %bb.eg ]
  %i.amm = load i32, ptr %i.aml, align 4, !tbaa !10
  %i.amn = icmp slt i32 %.1.i, 0
  br label %bb.eh

.lr.ph589.i:                                      ; preds = %bb.eg, %._crit_edge585.i
  %indvars.iv663.i = phi i64 [ %indvars.iv.next664.i, %bb.eg ], [ %indvars.iv625.i.a, %._crit_edge585.i ] ; 4 uses
  %i.amo = getelementptr inbounds [4 x i8], ptr %i.agr, i64 %indvars.iv663.i ; 2 uses
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !10
  %i.amq = getelementptr inbounds [4 x i8], ptr %i.agq, i64 %indvars.iv663.i ; 2 uses
  store i32 %i.amp, ptr %i.amq, align 4, !tbaa !10
  store i32 -1, ptr %i.amo, align 4, !tbaa !10
  %i.amr = load i32, ptr %i.amq, align 4, !tbaa !10 ; 2 uses
  %i.ams = load i32, ptr %i.amj, align 4, !tbaa !10
  %i.amt = icmp sgt i32 %i.amr, %i.ams
  br i1 %i.amt, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.lr.ph589.i
  store i32 %i.amr, ptr %i.amj, align 4, !tbaa !10
  %i.amu = trunc nsw i64 %indvars.iv663.i to i32
  store i32 %i.amu, ptr %i.amk, align 4, !tbaa !10
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.lr.ph589.i
  %indvars.iv.next664.i = add nsw i64 %indvars.iv663.i, 1 ; 2 uses
  %lftr.wideiv667.i = trunc i64 %indvars.iv.next664.i to i32
  %exitcond668.not.i = icmp eq i32 %indvars.iv631.i, %lftr.wideiv667.i
  br i1 %exitcond668.not.i, label %.preheader526.i, label %.lr.ph589.i, !llvm.loop !112

bb.eh:                                            ; preds = %bb.ej, %.preheader526.i
  %.1436590.i = phi i32 [ 0, %.preheader526.i ], [ %i.anb, %bb.ej ] ; 4 uses
  %i.amv = zext i32 %.1436590.i to i64
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.amv
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !10
  %.not492.i = icmp sgt i32 %i.amx, %i.amm
  br i1 %.not492.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.amy = add i32 %.1436590.i, %.1441596.i       ; 3 uses
  %i.amz = icmp ugt i32 %.1438.i, %i.amy
  %i.ana = icmp eq i32 %.1438.i, %i.amy
  %or.cond13.i418 = select i1 %i.ana, i1 %i.amn, i1 false
  %or.cond604.i = select i1 %i.amz, i1 true, i1 %or.cond13.i418
  br i1 %or.cond604.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.anb = add i32 %.1436590.i, 1                 ; 2 uses
  %.not491.i = icmp ugt i32 %i.anb, %.1441596.i
  br i1 %.not491.i, label %bb.ek, label %bb.eh, !llvm.loop !113

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.2439.i = phi i32 [ %.1438.i, %bb.ej ], [ %i.amy, %bb.ei ] ; 2 uses
  %.2432.i = phi i32 [ %.1431.i, %bb.ej ], [ %.1436590.i, %bb.ei ] ; 2 uses
  %.2.i = phi i32 [ %.1.i, %bb.ej ], [ %.1441596.i, %bb.ei ] ; 2 uses
  %i.anc = add i32 %.1441596.i, 1                 ; 3 uses
  %.not482.i = icmp ugt i32 %i.anc, %.2439.i
  %indvars.iv.next632.i = add i32 %indvars.iv631.i, 1
  %indvars.iv.next647.i = add i32 %indvars.iv646.i.a, -1
  %indvars.iv.next748 = add i32 %indvars.iv747, 1
  br i1 %.not482.i, label %._crit_edge600.i, label %.preheader528.i, !llvm.loop !114

._crit_edge600.i:                                 ; preds = %bb.ek, %._crit_edge.thread.i
  %.1441.lcssa.i = phi i32 [ 1, %._crit_edge.thread.i ], [ %i.anc, %bb.ek ] ; 2 uses
  %.0430.lcssa.i = phi i32 [ -1, %._crit_edge.thread.i ], [ %.2432.i, %bb.ek ] ; 2 uses
  %.0429.lcssa.i = phi i32 [ -1, %._crit_edge.thread.i ], [ %.2.i, %bb.ek ] ; 2 uses
  %i.and = icmp ugt i32 %.1441.lcssa.i, %..i
  br i1 %i.and, label %bb.el, label %bb.em

bb.el:                                            ; preds = %._crit_edge600.i
  call void @free(ptr noundef %i.aen) #18
  call void @free(ptr noundef %i.aeo) #18
  call void @free(ptr noundef %i.agq) #18
  call void @free(ptr noundef %i.agr) #18
  call void @free(ptr noundef nonnull %i.agw) #18
  call void @free(ptr noundef %i.agy) #18
  call void @free(ptr noundef %i.agv) #18
  call void @free(ptr noundef %i.agx) #18
  br label %greedy.exitthread-pre-split

bb.em:                                            ; preds = %._crit_edge600.i
  %i.ane = sext i32 %.0430.lcssa.i to i64         ; 2 uses
  %i.anf = getelementptr inbounds [4 x i8], ptr %i.agw, i64 %i.ane
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !10 ; 2 uses
  %i.anh = sub nsw i32 %i.abh, %i.ang
  %i.ani = sext i32 %.0429.lcssa.i to i64         ; 2 uses
  %i.anj = getelementptr inbounds [4 x i8], ptr %i.agv, i64 %i.ani
  %i.ank = load i32, ptr %i.anj, align 4, !tbaa !10 ; 2 uses
  %.not483.i = icmp slt i32 %i.anh, %i.ank
  %i.anl = getelementptr inbounds [4 x i8], ptr %i.agy, i64 %i.ane
  %i.anm = load i32, ptr %i.anl, align 4, !tbaa !10
  %.714.i = select i1 %.not483.i, i32 %i.ank, i32 %i.ang ; 6 uses
  %.not485.i = icmp eq i32 %.714.i, 0
  br i1 %.not485.i, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ann = getelementptr inbounds [4 x i8], ptr %i.agx, i64 %i.ani
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !10
  %i.anp = add i32 %i.abm, 1
  %i.anq = add i32 %i.abf, 1
  %i.anr = sub i32 %i.abm, %..i
  %.0427.i = add i32 %i.anr, %.714.i
  %i.ans = add i32 %.0427.i, %i.ano
  %i.ant = add i32 %.714.i, %i.abf
  %i.anu = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.anp, ptr %i.anu, align 4, !tbaa !32
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 4
  store i32 %i.anq, ptr %i.anv, align 4, !tbaa !31
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anu, i64 8
  store i32 %i.ans, ptr %i.anw, align 4, !tbaa !43
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anu, i64 12
  store i32 %i.ant, ptr %i.anx, align 4, !tbaa !44
  %i.any = load i32, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.anz = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i513.i = icmp ugt i32 %i.any, %i.anz
  %.pre.i514.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i513.i, label %add_col_elt.exit516.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.aoa = add i32 %i.any, 5                      ; 2 uses
  store i32 %i.aoa, ptr %i.s, align 4, !tbaa !18
  %i.aob = zext i32 %i.aoa to i64
  %i.aoc = shl nuw nsw i64 %i.aob, 3
  %i.aod = call ptr @xrealloc(ptr noundef %.pre.i514.i, i64 noundef %i.aoc) #18 ; 2 uses
  store ptr %i.aod, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit516.i

add_col_elt.exit516.i:                            ; preds = %bb.eo, %bb.en
  %i.aoe = phi ptr [ %i.aod, %bb.eo ], [ %.pre.i514.i, %bb.en ]
  %i.aof = add i32 %i.anz, 1
  store i32 %i.aof, ptr %i.t, align 8, !tbaa !19
  %i.aog = zext i32 %i.anz to i64
  %i.aoh = getelementptr inbounds nuw [8 x i8], ptr %i.aoe, i64 %i.aog
  store ptr %i.anu, ptr %i.aoh, align 8, !tbaa !40
  br label %bb.ep

bb.ep:                                            ; preds = %add_col_elt.exit516.i, %bb.em
  %i.aoi = icmp ult i32 %.714.i, %i.abh
  br i1 %i.aoi, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.aoj = add i32 %i.abm, 1
  %.0.i = add i32 %i.aoj, %.neg606.i
  %i.aok = add i32 %.0.i, %i.anm
  %i.aol = add i32 %i.aok, %.714.i
  %i.aom = add i32 %i.abf, 1
  %i.aon = add i32 %i.aom, %.714.i
  %i.aoo = add i32 %i.abd, -1
  %i.aop = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.aol, ptr %i.aop, align 4, !tbaa !32
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 4
  store i32 %i.aon, ptr %i.aoq, align 4, !tbaa !31
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aop, i64 8
  store i32 %i.abk, ptr %i.aor, align 4, !tbaa !43
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aop, i64 12
  store i32 %i.aoo, ptr %i.aos, align 4, !tbaa !44
  %i.aot = load i32, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.aou = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i517.i = icmp ugt i32 %i.aot, %i.aou
  %.pre.i518.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i517.i, label %add_col_elt.exit520.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aov = add i32 %i.aot, 5                      ; 2 uses
  store i32 %i.aov, ptr %i.s, align 4, !tbaa !18
  %i.aow = zext i32 %i.aov to i64
  %i.aox = shl nuw nsw i64 %i.aow, 3
  %i.aoy = call ptr @xrealloc(ptr noundef %.pre.i518.i, i64 noundef %i.aox) #18 ; 2 uses
  store ptr %i.aoy, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit520.i

add_col_elt.exit520.i:                            ; preds = %bb.er, %bb.eq
  %i.aoz = phi ptr [ %i.aoy, %bb.er ], [ %.pre.i518.i, %bb.eq ]
  %i.apa = add i32 %i.aou, 1
  store i32 %i.apa, ptr %i.t, align 8, !tbaa !19
  %i.apb = zext i32 %i.aou to i64
  %i.apc = getelementptr inbounds nuw [8 x i8], ptr %i.aoz, i64 %i.apb
  store ptr %i.aop, ptr %i.apc, align 8, !tbaa !40
  br label %bb.es

bb.es:                                            ; preds = %add_col_elt.exit520.i, %bb.ep
  call void @free(ptr noundef %i.aen) #18
  call void @free(ptr noundef %i.aeo) #18
  call void @free(ptr noundef %i.agq) #18
  call void @free(ptr noundef %i.agr) #18
  call void @free(ptr noundef nonnull %i.agw) #18
  call void @free(ptr noundef nonnull %i.agy) #18
  call void @free(ptr noundef nonnull %i.agv) #18
  call void @free(ptr noundef nonnull %i.agx) #18
  %i.apd = add nsw i32 %.0429.lcssa.i, %.0430.lcssa.i
  br label %greedy.exitthread-pre-split

greedy.exitthread-pre-split:                      ; preds = %bb.es, %bb.el, %add_col_elt.exit512.i, %bb.dc, %add_col_elt.exit.i, %bb.cx
  %.0456.i.ph = phi i32 [ 0, %bb.cx ], [ %.1441.lcssa.i, %bb.el ], [ 0, %add_col_elt.exit512.i ], [ %i.adc, %bb.dc ], [ %i.adb, %add_col_elt.exit.i ], [ %i.apd, %bb.es ]
  %.pr = load i32, ptr %i.t, align 8, !tbaa !19
  %i.ape = sitofp i32 %.0456.i.ph to double
  br label %greedy.exit

greedy.exit:                                      ; preds = %greedy.exitthread-pre-split, %add_col_elt.exit508.i
  %i.apf = phi i32 [ %.pr, %greedy.exitthread-pre-split ], [ %i.aeg, %add_col_elt.exit508.i ] ; 2 uses
  %.0456.i = phi double [ %i.ape, %greedy.exitthread-pre-split ], [ 0.000000e+00, %add_col_elt.exit508.i ]
  %.not344 = icmp eq i32 %i.apf, 0
  %.pre758 = load i32, ptr %i.x, align 4, !tbaa !36 ; 7 uses
  br i1 %.not344, label %greedy.exit..thread559_crit_edge, label %bb.et

greedy.exit..thread559_crit_edge:                 ; preds = %greedy.exit
  %.pre760 = load ptr, ptr %i.w, align 8, !tbaa !27
  br label %.thread559

bb.et:                                            ; preds = %greedy.exit
  %i.apg = uitofp i32 %.pre758 to double          ; 2 uses
  %i.aph = uitofp nneg i32 %i.abh to double
  %i.api = call double @llvm.fmuladd.f64(double %i.aph, double 2.000000e-01, double 1.000000e+00) ; 2 uses
  %i.apj = fcmp ogt double %i.api, %i.apg
  %. = select i1 %i.apj, double %i.api, double %i.apg
  %i.apk = fcmp ult double %., %.0456.i
  %.pre761 = load ptr, ptr %i.w, align 8, !tbaa !27 ; 4 uses
  br i1 %i.apk, label %.thread559, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.apl = load ptr, ptr %7, align 8, !tbaa !20   ; 2 uses
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !29 ; 2 uses
  %i.apn = load ptr, ptr %i.o, align 8, !tbaa !136 ; 3 uses
  %i.apo = load <2 x i32>, ptr %i.apm, align 4, !tbaa !10 ; 4 uses
  %i.app = icmp ult <2 x i32> %i.apo, splat (i32 2) ; 2 uses
  %i.apq = extractelement <2 x i1> %i.app, i64 0
  %i.apr = extractelement <2 x i1> %i.app, i64 1
  %or.cond18.i429 = select i1 %i.apq, i1 true, i1 %i.apr
  br i1 %or.cond18.i429, label %grow_exon_left.exit438, label %.lr.ph.preheader.i430

.lr.ph.preheader.i430:                            ; preds = %bb.eu
  %i.aps = extractelement <2 x i32> %i.apo, i64 1
  %i.apt = zext i32 %i.aps to i64
  %i.apu = getelementptr i8, ptr %i.apn, i64 %i.apt
  %i.apv = getelementptr i8, ptr %i.apu, i64 -2
  %i.apw = extractelement <2 x i32> %i.apo, i64 0
  %i.apx = zext i32 %i.apw to i64
  %i.apy = getelementptr i8, ptr %.pre761, i64 %i.apx
  %i.apz = getelementptr i8, ptr %i.apy, i64 -2
  br label %.lr.ph.i431

.lr.ph.i431:                                      ; preds = %bb.ev, %.lr.ph.preheader.i430
  %.020.i432 = phi ptr [ %i.aqf, %bb.ev ], [ %i.apv, %.lr.ph.preheader.i430 ] ; 2 uses
  %.01419.i433 = phi ptr [ %i.aqe, %bb.ev ], [ %i.apz, %.lr.ph.preheader.i430 ] ; 2 uses
  %i.aqa = phi <2 x i32> [ %i.aqg, %bb.ev ], [ %i.apo, %.lr.ph.preheader.i430 ]
  %i.aqb = load i8, ptr %.01419.i433, align 1, !tbaa !20
  %i.aqc = load i8, ptr %.020.i432, align 1, !tbaa !20
  %i.aqd = icmp eq i8 %i.aqb, %i.aqc
  br i1 %i.aqd, label %bb.ev, label %grow_exon_left.exit438

bb.ev:                                            ; preds = %.lr.ph.i431
  %i.aqe = getelementptr inbounds i8, ptr %.01419.i433, i64 -1 ; 2 uses
  %i.aqf = getelementptr inbounds i8, ptr %.020.i432, i64 -1 ; 2 uses
  %i.aqg = add <2 x i32> %i.aqa, splat (i32 -1)   ; 2 uses
  store <2 x i32> %i.aqg, ptr %i.apm, align 4, !tbaa !10
  %.not.i435 = icmp ult ptr %i.aqe, %.pre761
  %.not15.i436 = icmp ult ptr %i.aqf, %i.apn
  %or.cond.i437 = select i1 %.not.i435, i1 true, i1 %.not15.i436
  br i1 %or.cond.i437, label %grow_exon_left.exit438, label %.lr.ph.i431, !llvm.loop !86

grow_exon_left.exit438:                           ; preds = %.lr.ph.i431, %bb.ev, %bb.eu
  %i.aqh = add i32 %i.apf, -1
  %i.aqi = zext i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw [8 x i8], ptr %i.apl, i64 %i.aqi
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !29 ; 2 uses
  %i.aql = load i32, ptr %i.f, align 8, !tbaa !16 ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqk, i64 12 ; 2 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8 ; 2 uses
  %.promoted.i439 = load i32, ptr %i.aqn, align 4, !tbaa !43 ; 2 uses
  %i.aqo = icmp ult i32 %.promoted.i439, %i.aql
  br i1 %i.aqo, label %.lr.ph.i441, label %.sink.split

.lr.ph.i441:                                      ; preds = %grow_exon_left.exit438
  %i.aqp = load i32, ptr %i.i, align 4, !tbaa !135
  %.promoted12.i442 = load i32, ptr %i.aqm, align 4, !tbaa !44 ; 2 uses
  %i.aqq = zext i32 %.promoted12.i442 to i64
  %i.aqr = zext i32 %.promoted.i439 to i64
  %umax.i443 = call i32 @llvm.umax.i32(i32 %.promoted12.i442, i32 %i.aqp)
  %wide.trip.count.i444 = zext i32 %umax.i443 to i64
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ey, %.lr.ph.i441
  %indvars.iv13.i445 = phi i64 [ %i.aqr, %.lr.ph.i441 ], [ %indvars.iv.next14.i448, %bb.ey ] ; 2 uses
  %indvars.iv.i446 = phi i64 [ %i.aqq, %.lr.ph.i441 ], [ %indvars.iv.next.i449, %bb.ey ] ; 3 uses
  %exitcond.not.i447 = icmp eq i64 %indvars.iv.i446, %wide.trip.count.i444
  br i1 %exitcond.not.i447, label %.sink.split, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aqs = getelementptr inbounds nuw i8, ptr %.pre761, i64 %indvars.iv13.i445
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !20
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.apn, i64 %indvars.iv.i446
  %i.aqv = load i8, ptr %i.aqu, align 1, !tbaa !20
  %i.aqw = icmp eq i8 %i.aqt, %i.aqv
  br i1 %i.aqw, label %bb.ey, label %.sink.split

bb.ey:                                            ; preds = %bb.ex
  %indvars.iv.next14.i448 = add nuw nsw i64 %indvars.iv13.i445, 1 ; 2 uses
  %i.aqx = trunc i64 %indvars.iv.next14.i448 to i32 ; 2 uses
  store i32 %i.aqx, ptr %i.aqn, align 4, !tbaa !43
  %indvars.iv.next.i449 = add nuw nsw i64 %indvars.iv.i446, 1 ; 2 uses
  %i.aqy = trunc nuw i64 %indvars.iv.next.i449 to i32
  store i32 %i.aqy, ptr %i.aqm, align 4, !tbaa !44
  %exitcond18.not.i450 = icmp eq i32 %i.aql, %i.aqx
  br i1 %exitcond18.not.i450, label %.sink.split, label %bb.ew, !llvm.loop !69

.thread559:                                       ; preds = %greedy.exit..thread559_crit_edge, %bb.et, %bb.cw
  %i.aqz = phi ptr [ %.pre760, %greedy.exit..thread559_crit_edge ], [ %.pre761, %bb.et ], [ %.pre762, %bb.cw ]
  %i.ara = phi i32 [ %.pre758, %greedy.exit..thread559_crit_edge ], [ %.pre758, %bb.et ], [ %.pre759, %bb.cw ]
  %spec.select349 = call i32 @llvm.umin.i32(i32 %i.ara, i32 8) ; 2 uses
  %i.arb = load i32, ptr %i.abl, align 4, !tbaa !43 ; 3 uses
  %i.arc = zext i32 %i.arb to i64
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.arc
  %i.are = load i32, ptr %i.abb, align 4, !tbaa !32 ; 2 uses
  %i.arf = xor i32 %i.arb, -1
  %i.arg = add i32 %i.are, %i.arf
  store i32 %spec.select349, ptr %i.ai, align 4, !tbaa !36
  store ptr %i.ard, ptr %i.aj, align 8, !tbaa !27
  store i32 %i.arg, ptr %i.ak, align 8, !tbaa !16
  %i.arh = shl nuw nsw i32 %spec.select349, 1
  %i.ari = add nsw i32 %i.arh, -2
  %notmask.i452 = shl nsw i32 -1, %i.ari
  %i.arj = xor i32 %notmask.i452, -1
  store i32 %i.arj, ptr %i.al, align 8, !tbaa !37
  %i.ark = sub i32 %i.are, %i.arb
  %i.arl = zext i32 %i.ark to i64
  %i.arm = shl nuw nsw i64 %i.arl, 2
  %i.arn = call ptr @xmalloc(i64 noundef %i.arm) #18 ; 2 uses
  store ptr %i.arn, ptr %i.am, align 8, !tbaa !38
  %i.aro = call ptr @xcalloc(i64 noundef 524288, i64 noundef 8) #18 ; 3 uses
  store ptr %i.aro, ptr %10, align 8, !tbaa !39
  call void @bld_table(ptr noundef nonnull %10)
  %i.arp = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.arq = load i32, ptr %i.abe, align 4, !tbaa !44 ; 2 uses
  %i.arr = zext i32 %i.arq to i64
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arp, i64 %i.arr
  %i.art = load i32, ptr %i.abl, align 4, !tbaa !43
  %i.aru = add i32 %i.art, 1
  %i.arv = add i32 %i.arq, 1
  %i.arw = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 24), align 8, !tbaa !139
  call fastcc void @exon_cores(ptr noundef nonnull %10, ptr noundef %i.ars, i32 noundef %i.abh, i32 noundef %i.aru, i32 noundef %i.arv, i32 noundef %i.arw, ptr noundef %6, ptr noundef null, ptr noundef nonnull %7)
  call void @free(ptr noundef %i.arn) #18
  br label %bb.ez
end_hunk_1
begin_hunk_2_@SIM4:bb.a
  %i.cah = sub i32 %i.cag, %i.cab
  br label %.thread307.sink.split.i

bb.ic:                                            ; preds = %._crit_edge261.i
  br i1 %.not203.i, label %pluri_align.exit, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.cai = call ptr @xmalloc(i64 noundef 40) #18  ; 6 uses
  %i.caj = load ptr, ptr %i.be, align 8, !tbaa !149
  store ptr %i.caj, ptr %i.cai, align 8, !tbaa !59
  store ptr %i.cai, ptr %i.be, align 8, !tbaa !149
  %i.cak = load i32, ptr %i.btf, align 4, !tbaa !32 ; 2 uses
  %i.cal = getelementptr inbounds nuw i8, ptr %i.cai, i64 16
  store i32 %i.cak, ptr %i.cal, align 8, !tbaa !150
  %i.cam = getelementptr inbounds nuw i8, ptr %i.cai, i64 20
  store i32 1, ptr %i.cam, align 4, !tbaa !151
  %i.can = add i32 %.2169.i, 1
  %i.cao = sub i32 %i.can, %i.cak
  %i.cap = getelementptr inbounds nuw i8, ptr %i.cai, i64 24
  store i32 %i.cao, ptr %i.cap, align 8, !tbaa !152
  br label %.thread307.sink.split.i

.thread307.sink.split.i:                          ; preds = %bb.id, %bb.ib
  %.sink323.i = phi ptr [ %i.cai, %bb.id ], [ %i.bzx, %bb.ib ] ; 3 uses
  %.1197.lcssa318.sink.i = phi i32 [ %.1197.i, %bb.id ], [ %i.cah, %bb.ib ]
  %i.caq = getelementptr inbounds nuw i8, ptr %.sink323.i, i64 28
  store i32 %.1197.lcssa318.sink.i, ptr %i.caq, align 4, !tbaa !153
  %i.car = getelementptr inbounds nuw i8, ptr %.sink323.i, i64 8
  store ptr %i.bzu, ptr %i.car, align 8, !tbaa !60
  %i.cas = getelementptr inbounds nuw i8, ptr %.sink323.i, i64 32
  store i32 %i.bzf, ptr %i.cas, align 8, !tbaa !154
  br label %pluri_align.exit

pluri_align.exit.thread:                          ; preds = %.critedge.i505, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.ie

pluri_align.exit:                                 ; preds = %slide_intron.exit, %bb.ic, %.thread307.sink.split.i
  %.0188.lcssa301.i = phi i32 [ %.1189.lcssa.i, %bb.ic ], [ 0, %slide_intron.exit ], [ %.1189.lcssa.i, %.thread307.sink.split.i ]
  store i32 %.0188.lcssa301.i, ptr %i.bg, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.cat = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 20), align 4
  %.not582 = icmp eq i32 %i.cat, 0
  br i1 %.not582, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %pluri_align.exit.thread, %pluri_align.exit
  %i.cau = load ptr, ptr %i.be, align 8, !tbaa !160 ; 2 uses
  %.not5.i = icmp eq ptr %i.cau, null
  br i1 %.not5.i, label %free_align.exit, label %.lr.ph.i518

.lr.ph.i518:                                      ; preds = %bb.ie, %.lr.ph.i518
  %.06.i = phi ptr [ %i.cav, %.lr.ph.i518 ], [ %i.cau, %bb.ie ] ; 3 uses
  %i.cav = load ptr, ptr %.06.i, align 8, !tbaa !59 ; 2 uses
  %i.caw = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.cax = load ptr, ptr %i.caw, align 8, !tbaa !60
  call void @Free_script(ptr noundef %i.cax) #18
  call void @free(ptr noundef nonnull %.06.i) #18
  %.not.i519 = icmp eq ptr %i.cav, null
  br i1 %.not.i519, label %free_align.exit, label %.lr.ph.i518, !llvm.loop !2

free_align.exit:                                  ; preds = %.lr.ph.i518, %bb.ie
  store ptr null, ptr %i.be, align 8, !tbaa !160
  br label %bb.if

bb.if:                                            ; preds = %._crit_edge, %bb.q, %free_align.exit, %pluri_align.exit, %bb.d
  %indvars.iv.next754 = add nuw nsw i64 %indvars.iv753, 1 ; 2 uses
  %i.cay = load i32, ptr %i.u, align 8, !tbaa !19
  %i.caz = zext i32 %i.cay to i64
  %i.cba = icmp samesign ult i64 %indvars.iv.next754, %i.caz
  br i1 %i.cba, label %bb.d, label %._crit_edge676.loopexit, !llvm.loop !132

._crit_edge676.loopexit:                          ; preds = %bb.if
  %.pre768 = load ptr, ptr %7, align 8, !tbaa !20
  br label %._crit_edge676

._crit_edge676:                                   ; preds = %._crit_edge676.loopexit, %bb.c
  %i.cbb = phi ptr [ %.pre768, %._crit_edge676.loopexit ], [ null, %bb.c ]
  %i.cbc = load ptr, ptr %6, align 8, !tbaa !20
  call void @free(ptr noundef %i.cbc) #18
  call void @free(ptr noundef %i.cbb) #18
  br label %bb.ig

bb.ig:                                            ; preds = %bb.a, %bb.b, %._crit_edge676
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @init_col(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.a, align 4, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !19
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = tail call ptr @xmalloc(i64 noundef %i.d) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @exon_cores(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(address_is_null) %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct._hash_node_t, align 4       ; 7 uses
  %i.a = icmp ne ptr %8, null
  %i.b = zext i1 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  %i.e = add i32 %2, 1
  %i.f = add i32 %i.e, %i.d
  %i.g = zext i32 %i.f to i64
  %i.h = tail call ptr @xcalloc(i64 noundef %i.g, i64 noundef 4) #18 ; 2 uses
  %i.i = load i32, ptr %i.c, align 8, !tbaa !16
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %.not81.i = icmp eq i32 %2, 0
  br i1 %.not81.i, label %search.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = zext i32 %2 to i64                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.q = ptrtoint ptr %1 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  br label %.critedge.i

.critedge.i.backedge:                             ; preds = %.lr.ph.i, %.lr.ph71.i
  %.144.i.be = phi ptr [ %i.an, %.lr.ph71.i ], [ %i.aa, %.lr.ph.i ]
  %.142.i.be = phi i32 [ %i.as, %.lr.ph71.i ], [ %i.af, %.lr.ph.i ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %bb.b
  %.144.i = phi ptr [ %1, %bb.b ], [ %.144.i.be, %.critedge.i.backedge ] ; 2 uses
  %.142.i = phi i32 [ 0, %bb.b ], [ %.142.i.be, %.critedge.i.backedge ] ; 3 uses
  store i32 0, ptr %9, align 4, !tbaa !63
  %i.u = load i32, ptr %i.l, align 4, !tbaa !36   ; 2 uses
  %i.v = icmp ugt i32 %i.u, 1
  %i.w = icmp ult i32 %.142.i, %2
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  br i1 %i.x, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.critedge.i
  %.245.lcssa.i = phi ptr [ %.144.i, %.critedge.i ], [ %i.aa, %bb.c ]
  %.2.lcssa.i = phi i32 [ %.142.i, %.critedge.i ], [ %i.af, %bb.c ] ; 2 uses
  %i.y = icmp ult i32 %.2.lcssa.i, %2
  br i1 %i.y, label %.lr.ph71.i, label %._crit_edge80.loopexit.i

.lr.ph.i:                                         ; preds = %.critedge.i, %bb.c
  %.04064.i = phi i32 [ %i.aj, %bb.c ], [ 1, %.critedge.i ]
  %.263.i = phi i32 [ %i.af, %bb.c ], [ %.142.i, %.critedge.i ]
  %.24562.i = phi ptr [ %i.aa, %bb.c ], [ %.144.i, %.critedge.i ] ; 2 uses
  %i.z = phi i32 [ %i.ai, %bb.c ], [ 0, %.critedge.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.24562.i, i64 1 ; 3 uses
  %i.ab = load i8, ptr %.24562.i, align 1, !tbaa !20
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @encoding, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !10 ; 2 uses
  %i.af = add nuw i32 %.263.i, 1                  ; 4 uses
  %i.ag = icmp ugt i32 %i.ae, 3
  br i1 %i.ag, label %.critedge.i.backedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ah = shl i32 %i.z, 2
  %i.ai = or disjoint i32 %i.ae, %i.ah            ; 2 uses
  store i32 %i.ai, ptr %9, align 4, !tbaa !63
  %i.aj = add nuw i32 %.04064.i, 1                ; 2 uses
  %i.ak = icmp ult i32 %i.aj, %i.u
  %i.al = icmp ult i32 %i.af, %2
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph.i, label %.preheader.i, !llvm.loop !161

.lr.ph71.i:                                       ; preds = %.preheader.i, %.loopexit.i
  %.370.i = phi i32 [ %i.as, %.loopexit.i ], [ %.2.lcssa.i, %.preheader.i ]
  %.34669.i = phi ptr [ %i.an, %.loopexit.i ], [ %.245.lcssa.i, %.preheader.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.34669.i, i64 1 ; 2 uses
  %i.ao = load i8, ptr %.34669.i, align 1, !tbaa !20
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @encoding, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10 ; 2 uses
  %i.as = add i32 %.370.i, 1                      ; 5 uses
  %i.at = icmp ult i32 %i.ar, 4
  br i1 %i.at, label %bb.d, label %.critedge.i.backedge

bb.d:                                             ; preds = %.lr.ph71.i
  %i.au = load i32, ptr %9, align 4, !tbaa !63
  %i.av = load i32, ptr %i.m, align 8, !tbaa !37
  %i.aw = and i32 %i.av, %i.au
  %i.ax = shl i32 %i.aw, 2
  %i.ay = or disjoint i32 %i.ax, %i.ar            ; 2 uses
  store i32 %i.ay, ptr %9, align 4, !tbaa !63
  %i.az = load ptr, ptr %0, align 8, !tbaa !39
  %i.ba = and i32 %i.ay, 524287
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bb
  %i.bd = call ptr @tfind(ptr noundef nonnull %9, ptr noundef %i.bc, ptr noundef nonnull @hash_node_compare) #18 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !65
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.066.i = load i32, ptr %i.bf, align 4, !tbaa !10 ; 2 uses
  %i.bg = icmp sgt i32 %.066.i, -1
  br i1 %i.bg, label %.lr.ph68.i, label %.loopexit.i

.lr.ph68.i:                                       ; preds = %bb.e
  %i.bh = sext i32 %i.as to i64                   ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %1, i64 %i.bh ; 2 uses
  %i.bj = icmp slt i64 %i.bh, %i.o
  br label %bb.f

bb.f:                                             ; preds = %extend_hit.exit.i, %.lr.ph68.i
  %.067.i = phi i32 [ %.066.i, %.lr.ph68.i ], [ %.0.i, %extend_hit.exit.i ] ; 5 uses
  %i.bk = sub nsw i32 %i.as, %.067.i
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !10
  %i.bo = icmp sgt i32 %i.bn, %.067.i
  br i1 %i.bo, label %.extend_hit.exit_crit_edge.i, label %bb.g

.extend_hit.exit_crit_edge.i:                     ; preds = %bb.f
  %.pre.i = zext nneg i32 %.067.i to i64
  br label %extend_hit.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bp = load ptr, ptr %i.n, align 8, !tbaa !27  ; 5 uses
  %i.bq = zext nneg i32 %.067.i to i64            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq ; 4 uses
  br i1 %i.bj, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.bs = load i32, ptr %i.c, align 8, !tbaa !16
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bt
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 64), align 8
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 56), align 8
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 48), align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.095.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.cg, %bb.i ] ; 2 uses
  %.07094.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %spec.select90.i.i, %bb.i ] ; 4 uses
  %.07493.i.i = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %i.ca, %bb.i ] ; 2 uses
  %.07692.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %i.cc, %bb.i ] ; 3 uses
  %.07891.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %i.by = icmp uge ptr %.07692.i.i, %i.bu
  %i.bz = sub nsw i32 %.07094.i.i, %i.bv
  %.not.i.i = icmp slt i32 %.095.i.i, %i.bz
  %or.cond118.i.i = select i1 %i.by, i1 true, i1 %.not.i.i
  br i1 %or.cond118.i.i, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %.07493.i.i, i64 1 ; 2 uses
  %i.cb = load i8, ptr %.07493.i.i, align 1, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %.07692.i.i, i64 1 ; 2 uses
  %i.cd = load i8, ptr %.07692.i.i, align 1, !tbaa !20
  %i.ce = icmp eq i8 %i.cb, %i.cd
  %i.cf = select i1 %i.ce, i32 %i.bw, i32 %i.bx
  %i.cg = add nsw i32 %i.cf, %.095.i.i            ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, %.07094.i.i
  %spec.select.i.i = select i1 %i.ch, ptr %i.cc, ptr %.07891.i.i ; 2 uses
  %spec.select90.i.i = call i32 @llvm.smax.i32(i32 %i.cg, i32 %.07094.i.i) ; 2 uses
  %i.ci = icmp ult ptr %i.ca, %i.p
  br i1 %i.ci, label %bb.h, label %.critedge.i.i, !llvm.loop !162

.critedge.i.i:                                    ; preds = %bb.i, %bb.h, %bb.g
  %.078.lcssa.i.i = phi ptr [ %i.br, %bb.g ], [ %.07891.i.i, %bb.h ], [ %spec.select.i.i, %bb.i ] ; 3 uses
  %.070.lcssa.i.i = phi i32 [ 0, %bb.g ], [ %.07094.i.i, %bb.h ], [ %spec.select90.i.i, %bb.i ]
  %i.cj = load i32, ptr %i.l, align 4, !tbaa !36  ; 4 uses
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = sub nsw i64 0, %i.ck                    ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.br, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds i8, ptr %i.bi, i64 %i.cl ; 3 uses
  %i.co = icmp sgt i64 %i.bh, %i.ck
  %i.cp = icmp ugt i32 %.067.i, %i.cj
  %or.cond103.i.i = and i1 %i.cp, %i.co
  br i1 %or.cond103.i.i, label %.lr.ph110.i.i, label %.critedge2.i.i

.lr.ph110.i.i:                                    ; preds = %.critedge.i.i
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 64), align 8, !tbaa !178
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 56), align 8
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 48), align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph110.i.i
  %.1109.i.i = phi i32 [ 0, %.lr.ph110.i.i ], [ %i.da, %bb.k ] ; 2 uses
  %.072108.i.i = phi i32 [ 0, %.lr.ph110.i.i ], [ %.173.i.i, %bb.k ] ; 4 uses
  %.175107.i.i = phi ptr [ %i.cn, %.lr.ph110.i.i ], [ %i.cu, %bb.k ]
  %.177106.i.i = phi ptr [ %i.cm, %.lr.ph110.i.i ], [ %i.cw, %bb.k ]
  %.080105.i.i = phi ptr [ %i.cm, %.lr.ph110.i.i ], [ %.181.i.i, %bb.k ] ; 2 uses
  %.082104.i.i = phi ptr [ %i.cn, %.lr.ph110.i.i ], [ %.183.i.i, %bb.k ] ; 2 uses
  %i.ct = sub nsw i32 %.072108.i.i, %i.cq
  %.not88.i.i = icmp slt i32 %.1109.i.i, %i.ct
  br i1 %.not88.i.i, label %.critedge2.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds i8, ptr %.175107.i.i, i64 -1 ; 4 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !20
  %i.cw = getelementptr inbounds i8, ptr %.177106.i.i, i64 -1 ; 4 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !20
  %i.cy = icmp eq i8 %i.cv, %i.cx
  %i.cz = select i1 %i.cy, i32 %i.cr, i32 %i.cs
  %i.da = add nsw i32 %i.cz, %.1109.i.i           ; 3 uses
  %i.db = icmp sgt i32 %i.da, %.072108.i.i        ; 2 uses
  %.183.i.i = select i1 %i.db, ptr %i.cu, ptr %.082104.i.i ; 2 uses
  %.181.i.i = select i1 %i.db, ptr %i.cw, ptr %.080105.i.i ; 2 uses
  %.173.i.i = call i32 @llvm.smax.i32(i32 %i.da, i32 %.072108.i.i) ; 2 uses
  %i.dc = icmp ugt ptr %i.cu, %1
  %i.dd = icmp ugt ptr %i.cw, %i.bp
  %or.cond.i.i = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond.i.i, label %bb.j, label %.critedge2.i.i, !llvm.loop !163

.critedge2.i.i:                                   ; preds = %bb.k, %bb.j, %.critedge.i.i
  %.082.lcssa.i.i = phi ptr [ %i.cn, %.critedge.i.i ], [ %.183.i.i, %bb.k ], [ %.082104.i.i, %bb.j ]
  %.080.lcssa.i.i = phi ptr [ %i.cm, %.critedge.i.i ], [ %.181.i.i, %bb.k ], [ %.080105.i.i, %bb.j ]
  %.072.lcssa.i.i = phi i32 [ 0, %.critedge.i.i ], [ %.173.i.i, %bb.k ], [ %.072108.i.i, %bb.j ]
  %i.de = add i32 %i.cj, %.070.lcssa.i.i
  %i.df = add i32 %i.de, %.072.lcssa.i.i          ; 2 uses
  %.not89.i.i = icmp slt i32 %i.df, %5
  br i1 %.not89.i.i, label %.critedge2._crit_edge.i.i, label %bb.l

.critedge2._crit_edge.i.i:                        ; preds = %.critedge2.i.i
  %.pre120.i.i = ptrtoint ptr %.078.lcssa.i.i to i64
  br label %bb.n

bb.l:                                             ; preds = %.critedge2.i.i
  %i.dg = ptrtoint ptr %.080.lcssa.i.i to i64     ; 2 uses
  %i.dh = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = trunc i64 %i.di to i32
  %i.dk = ptrtoint ptr %.082.lcssa.i.i to i64
  %i.dl = sub i64 %i.dk, %i.q                     ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = ptrtoint ptr %.078.lcssa.i.i to i64     ; 2 uses
  %i.do = xor i64 %i.dh, -1
  %i.dp = add i64 %i.dn, %i.do
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = getelementptr inbounds i8, ptr %.078.lcssa.i.i, i64 %i.dl
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = xor i64 %i.dg, -1
  %i.du = add i64 %i.ds, %i.dt
  %i.dv = trunc i64 %i.du to i32
  %i.dw = call ptr @xmalloc(i64 noundef 32) #18   ; 5 uses
  store i32 %i.dj, ptr %i.dw, align 4, !tbaa !32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i32 %i.dm, ptr %i.dx, align 4, !tbaa !31
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 %i.dq, ptr %i.dy, align 4, !tbaa !43
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 %i.dv, ptr %i.dz, align 4, !tbaa !44
  %i.ea = load i32, ptr %i.r, align 4, !tbaa !18  ; 2 uses
  %i.eb = load i32, ptr %i.s, align 8, !tbaa !19  ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.ea, %i.eb
  %.pre.i.i.i = load ptr, ptr %6, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i.i.i, label %add_col_elt.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ec = add i32 %i.ea, 5                        ; 2 uses
  store i32 %i.ec, ptr %i.r, align 4, !tbaa !18
  %i.ed = zext i32 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = call ptr @xrealloc(ptr noundef %.pre.i.i.i, i64 noundef %i.ee) #18 ; 2 uses
  store ptr %i.ef, ptr %6, align 8, !tbaa !20
  %.pre9.i.i.i = load i32, ptr %i.s, align 8, !tbaa !19
  br label %add_col_elt.exit.i.i

add_col_elt.exit.i.i:                             ; preds = %bb.m, %bb.l
  %i.eg = phi i32 [ %.pre9.i.i.i, %bb.m ], [ %i.eb, %bb.l ] ; 2 uses
  %i.eh = phi ptr [ %i.ef, %bb.m ], [ %.pre.i.i.i, %bb.l ]
  %i.ei = add i32 %i.eg, 1
  store i32 %i.ei, ptr %i.s, align 8, !tbaa !19
  %i.ej = zext i32 %i.eg to i64                   ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ej
  store ptr %i.dw, ptr %i.ek, align 8, !tbaa !40
  %i.el = load ptr, ptr %6, align 8, !tbaa !20
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ej
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !29
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i32 %i.df, ptr %i.eo, align 4, !tbaa !61
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !27
end_hunk_2
begin_hunk_3_@compute_max_score_1:bb.a
  %.sroa.293.1.1 = phi i32 [ %i.bd, %splice_score_compare.exit79.1 ], [ %i.dx, %SWscore.exit76.1 ], [ %i.dx, %bb.d ] ; 2 uses
  %i.gk = icmp eq i8 %i.ec, %i.al                 ; 2 uses
  %spec.store.select.2 = zext i1 %i.gk to i32
  %i.gl = add i32 %i.ak, 2
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !20
  %i.gp = icmp eq i8 %i.go, %i.am
  %i.gq = select i1 %i.gk, i32 2, i32 1
  %spec.select.2 = select i1 %i.gp, i32 %i.gq, i32 %spec.store.select.2 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !20  ; 2 uses
  %i.gt = icmp eq i8 %i.gs, %i.at
  %i.gu = zext i1 %i.gt to i32                    ; 2 uses
  br i1 %i.au, label %.lr.ph.i.2, label %SWscore.exit.2

.lr.ph.i.2:                                       ; preds = %splice_score_compare.exit79.thread.1, %.lr.ph.i.2
  %i.gv = phi i8 [ %i.gy, %.lr.ph.i.2 ], [ %i.at, %splice_score_compare.exit79.thread.1 ]
  %i.gw = phi i8 [ %i.hd, %.lr.ph.i.2 ], [ %i.gs, %splice_score_compare.exit79.thread.1 ]
  %indvars.iv.i.2 = phi i64 [ %indvars.iv.next.i.2, %.lr.ph.i.2 ], [ 1, %splice_score_compare.exit79.thread.1 ] ; 3 uses
  %.sroa.0.051.i.2 = phi i32 [ %.sroa.10.0..i.2, %.lr.ph.i.2 ], [ 0, %splice_score_compare.exit79.thread.1 ]
  %.sroa.10.050.i.2 = phi i32 [ %i.hn, %.lr.ph.i.2 ], [ %i.gu, %splice_score_compare.exit79.thread.1 ] ; 3 uses
  %.sroa.19.049.i.2 = phi i32 [ %i.hh, %.lr.ph.i.2 ], [ 0, %splice_score_compare.exit79.thread.1 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.i.2
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !20  ; 3 uses
  %i.gz = icmp eq i8 %i.gw, %i.gy
  %i.ha = zext i1 %i.gz to i32
  %i.hb = add nuw nsw i32 %.sroa.0.051.i.2, %i.ha
  %.sroa.10.0..i.2 = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 %.sroa.10.050.i.2) ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv.i.2
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !20  ; 3 uses
  %i.he = icmp eq i8 %i.hd, %i.gv
  %i.hf = zext i1 %i.he to i32
  %i.hg = add nuw nsw i32 %.sroa.19.049.i.2, %i.hf
  %i.hh = tail call i32 @llvm.smax.i32(i32 %i.hg, i32 %.sroa.10.050.i.2) ; 2 uses
  %i.hi = tail call i32 @llvm.smax.i32(i32 %.sroa.10.0..i.2, i32 %i.hh) ; 2 uses
  %i.hj = icmp eq i8 %i.hd, %i.gy
  %i.hk = zext i1 %i.hj to i32
  %i.hl = add nsw i32 %.sroa.10.050.i.2, %i.hk    ; 2 uses
  %.not.i.2 = icmp sgt i32 %i.hi, %i.hl
  %i.hm = add nsw i32 %i.hi, -1
  %i.hn = select i1 %.not.i.2, i32 %i.hm, i32 %i.hl ; 2 uses
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, %wide.trip.count.i
  br i1 %exitcond.not.i.2, label %SWscore.exit.2, label %.lr.ph.i.2, !llvm.loop !1

SWscore.exit.2:                                   ; preds = %.lr.ph.i.2, %splice_score_compare.exit79.thread.1
  %.sroa.10.0.lcssa.i.2 = phi i32 [ %i.gu, %splice_score_compare.exit79.thread.1 ], [ %i.hn, %.lr.ph.i.2 ] ; 3 uses
  %i.ho = icmp ult i32 %.sroa.10.0.lcssa.i.2, %.sroa.7.1.1
  br i1 %i.ho, label %splice_score_compare.exit.thread.2, label %bb.e

bb.e:                                             ; preds = %SWscore.exit.2
  %i.hp = icmp ugt i32 %.sroa.10.0.lcssa.i.2, %.sroa.7.1.1
  %or.cond.2 = icmp samesign ugt i32 %spec.select.2, %.sroa.14103.1.1
  %or.cond115.2 = select i1 %i.hp, i1 true, i1 %or.cond.2
  br i1 %or.cond115.2, label %splice_score_compare.exit.2, label %splice_score_compare.exit.thread.2

splice_score_compare.exit.thread.2:               ; preds = %bb.e, %SWscore.exit.2
  br label %splice_score_compare.exit.2

splice_score_compare.exit.2:                      ; preds = %splice_score_compare.exit.thread.2, %bb.e
  %.sroa.096.1.2 = phi i32 [ %.sroa.096.1.1, %splice_score_compare.exit.thread.2 ], [ %i.dz, %bb.e ]
  %.sroa.7.1.2 = phi i32 [ %.sroa.7.1.1, %splice_score_compare.exit.thread.2 ], [ %.sroa.10.0.lcssa.i.2, %bb.e ]
  %.sroa.14103.1.2 = phi i32 [ %.sroa.14103.1.1, %splice_score_compare.exit.thread.2 ], [ %spec.select.2, %bb.e ]
  %i.hq = add i32 %i.av, 1
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !20
  %i.hu = icmp eq i8 %i.ht, %i.aw                 ; 2 uses
  %spec.select113.2 = zext i1 %i.hu to i32
  %i.hv = add i32 %i.ax, 1
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !20
  %i.hz = icmp eq i8 %i.hy, %i.ay
  %i.ia = select i1 %i.hu, i32 2, i32 1
  %.sroa.11.2.2 = select i1 %i.hz, i32 %i.ia, i32 %spec.select113.2 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !20  ; 2 uses
  %i.id = icmp eq i8 %i.ic, %i.bc
  %i.ie = zext i1 %i.id to i32                    ; 2 uses
  br i1 %i.au, label %.lr.ph.i67.2, label %SWscore.exit76.2

.lr.ph.i67.2:                                     ; preds = %splice_score_compare.exit.2, %.lr.ph.i67.2
  %i.if = phi i8 [ %i.ii, %.lr.ph.i67.2 ], [ %i.bc, %splice_score_compare.exit.2 ]
  %i.ig = phi i8 [ %i.in, %.lr.ph.i67.2 ], [ %i.ic, %splice_score_compare.exit.2 ]
  %indvars.iv.i68.2 = phi i64 [ %indvars.iv.next.i74.2, %.lr.ph.i67.2 ], [ 1, %splice_score_compare.exit.2 ] ; 3 uses
  %.sroa.0.051.i69.2 = phi i32 [ %.sroa.10.0..i72.2, %.lr.ph.i67.2 ], [ 0, %splice_score_compare.exit.2 ]
  %.sroa.10.050.i70.2 = phi i32 [ %i.ix, %.lr.ph.i67.2 ], [ %i.ie, %splice_score_compare.exit.2 ] ; 3 uses
  %.sroa.19.049.i71.2 = phi i32 [ %i.ir, %.lr.ph.i67.2 ], [ 0, %splice_score_compare.exit.2 ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i68.2
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !20  ; 3 uses
  %i.ij = icmp eq i8 %i.ig, %i.ii
  %i.ik = zext i1 %i.ij to i32
  %i.il = add nuw nsw i32 %.sroa.0.051.i69.2, %i.ik
  %.sroa.10.0..i72.2 = tail call i32 @llvm.smax.i32(i32 %i.il, i32 %.sroa.10.050.i70.2) ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i68.2
  %i.in = load i8, ptr %i.im, align 1, !tbaa !20  ; 3 uses
  %i.io = icmp eq i8 %i.in, %i.if
  %i.ip = zext i1 %i.io to i32
  %i.iq = add nuw nsw i32 %.sroa.19.049.i71.2, %i.ip
  %i.ir = tail call i32 @llvm.smax.i32(i32 %i.iq, i32 %.sroa.10.050.i70.2) ; 2 uses
  %i.is = tail call i32 @llvm.smax.i32(i32 %.sroa.10.0..i72.2, i32 %i.ir) ; 2 uses
  %i.it = icmp eq i8 %i.in, %i.ii
  %i.iu = zext i1 %i.it to i32
  %i.iv = add nsw i32 %.sroa.10.050.i70.2, %i.iu  ; 2 uses
  %.not.i73.2 = icmp sgt i32 %i.is, %i.iv
  %i.iw = add nsw i32 %i.is, -1
  %i.ix = select i1 %.not.i73.2, i32 %i.iw, i32 %i.iv ; 2 uses
  %indvars.iv.next.i74.2 = add nuw nsw i64 %indvars.iv.i68.2, 1 ; 2 uses
  %exitcond.not.i75.2 = icmp eq i64 %indvars.iv.next.i74.2, %wide.trip.count.i
  br i1 %exitcond.not.i75.2, label %SWscore.exit76.2, label %.lr.ph.i67.2, !llvm.loop !1

SWscore.exit76.2:                                 ; preds = %.lr.ph.i67.2, %splice_score_compare.exit.2
  %.sroa.10.0.lcssa.i64.2 = phi i32 [ %i.ie, %splice_score_compare.exit.2 ], [ %i.ix, %.lr.ph.i67.2 ] ; 3 uses
  %i.iy = icmp ult i32 %.sroa.10.0.lcssa.i64.2, %.sroa.6.1.1
  br i1 %i.iy, label %splice_score_compare.exit79.thread.2, label %bb.f

bb.f:                                             ; preds = %SWscore.exit76.2
  %i.iz = icmp ugt i32 %.sroa.10.0.lcssa.i64.2, %.sroa.6.1.1
  %or.cond114.2 = icmp samesign ugt i32 %.sroa.11.2.2, %.sroa.10.1.1
  %or.cond116.2 = select i1 %i.iz, i1 true, i1 %or.cond114.2
  br i1 %or.cond116.2, label %splice_score_compare.exit79.2, label %splice_score_compare.exit79.thread.2

splice_score_compare.exit79.2:                    ; preds = %bb.f
  %i.ja = add i32 %i.bd, 1
  br label %splice_score_compare.exit79.thread.2

splice_score_compare.exit79.thread.2:             ; preds = %splice_score_compare.exit79.2, %bb.f, %SWscore.exit76.2
  %.sroa.10.1.2 = phi i32 [ %.sroa.11.2.2, %splice_score_compare.exit79.2 ], [ %.sroa.10.1.1, %SWscore.exit76.2 ], [ %.sroa.10.1.1, %bb.f ]
  %.sroa.6.1.2 = phi i32 [ %.sroa.10.0.lcssa.i64.2, %splice_score_compare.exit79.2 ], [ %.sroa.6.1.1, %SWscore.exit76.2 ], [ %.sroa.6.1.1, %bb.f ]
  %.sroa.293.1.2 = phi i32 [ %i.ja, %splice_score_compare.exit79.2 ], [ %.sroa.293.1.1, %SWscore.exit76.2 ], [ %.sroa.293.1.1, %bb.f ]
  %i.jb = add i32 %.sroa.7.1.2, %.sroa.6.1.2      ; 3 uses
  %i.jc = add nuw nsw i32 %.sroa.14103.1.2, %.sroa.10.1.2 ; 3 uses
  %i.jd = load i32, ptr %i.s, align 4, !tbaa !54  ; 2 uses
  %i.je = icmp ult i32 %i.jb, %i.jd
  br i1 %i.je, label %splice_score_compare.exit82.thread, label %bb.g

bb.g:                                             ; preds = %splice_score_compare.exit79.thread.2
  %i.jf = icmp ugt i32 %i.jb, %i.jd
  br i1 %i.jf, label %splice_score_compare.exit82.thread111, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.jg = load i32, ptr %i.t, align 4, !tbaa !55  ; 2 uses
  %i.jh = icmp ult i32 %i.jc, %i.jg
  br i1 %i.jh, label %splice_score_compare.exit82.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ji = icmp samesign ugt i32 %i.jc, %i.jg
  br i1 %i.ji, label %splice_score_compare.exit82.thread111, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.jj = load i32, ptr %i.u, align 4, !tbaa !52
  %i.jk = icmp ult i32 %3, %i.jj
  br i1 %i.jk, label %splice_score_compare.exit82.thread111, label %splice_score_compare.exit82.thread

splice_score_compare.exit82.thread111:            ; preds = %bb.j, %bb.g, %bb.i
  store i32 %i.jb, ptr %i.s, align 4, !tbaa !54
  store i32 %i.jc, ptr %i.t, align 4, !tbaa !55
  store i32 %.sroa.096.1.2, ptr %2, align 4, !tbaa !49
  %i.jl = add i32 %5, %i.aj
  store i32 %i.jl, ptr %i.v, align 4, !tbaa !50
  store i32 %.sroa.293.1.2, ptr %i.w, align 4, !tbaa !51
  store i32 %3, ptr %i.u, align 4, !tbaa !52
  store i32 %9, ptr %i.x, align 4, !tbaa !53
  br label %splice_score_compare.exit82.thread

splice_score_compare.exit82.thread:               ; preds = %bb.h, %splice_score_compare.exit79.thread.2, %bb.j, %splice_score_compare.exit82.thread111
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.jm = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 36), align 4, !tbaa !46
  %i.jn = sext i32 %i.jm to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.jn
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !202

._crit_edge:                                      ; preds = %splice_score_compare.exit82.thread, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !41}
!1 = distinct !{!1, !41}
!2 = distinct !{!2, !41}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"any p2 pointer", !11, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!"_hash_env_t", !12, i64 0, !13, i64 8, !9, i64 16, !14, i64 24, !9, i64 32, !9, i64 36}
!16 = !{!15, !9, i64 16}
!17 = !{!"_collec_t", !8, i64 0, !9, i64 8, !9, i64 12}
!18 = !{!17, !9, i64 12}
!19 = !{!17, !9, i64 8}
!20 = !{!8, !8, i64 0}
!21 = !{!"p1 _ZTS11_junction_t", !11, i64 0}
!22 = !{!"_options_t", !13, i64 0, !21, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76}
!23 = !{!22, !9, i64 40}
!24 = !{!"p1 _ZTS9_result_t", !11, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"_sim4_stats", !9, i64 0, !9, i64 4, !9, i64 8}
!27 = !{!15, !13, i64 8}
!28 = !{!"p1 _ZTS7_exon_t", !11, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"_exon_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 24, !9, i64 24, !9, i64 28, !9, i64 28, !9, i64 31}
!31 = !{!30, !9, i64 4}
!32 = !{!30, !9, i64 0}
!33 = !{!"p1 _ZTS17_edit_script_list", !11, i64 0}
!34 = !{!"_result_t", !33, i64 0, !17, i64 8, !9, i64 24, !9, i64 28, !9, i64 32, !26, i64 36}
!35 = !{!34, !9, i64 24}
!36 = !{!15, !9, i64 36}
!37 = !{!15, !9, i64 32}
!38 = !{!15, !14, i64 24}
!39 = !{!15, !12, i64 0}
!40 = !{!11, !11, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!30, !9, i64 8}
!44 = !{!30, !9, i64 12}
!45 = !{!34, !9, i64 28}
!46 = !{!22, !9, i64 36}
!47 = !{!22, !9, i64 44}
!48 = !{!"_splice_score_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24}
!49 = !{!48, !9, i64 0}
!50 = !{!48, !9, i64 4}
!51 = !{!48, !9, i64 8}
!52 = !{!48, !9, i64 12}
!53 = !{!48, !9, i64 24}
!54 = !{!48, !9, i64 16}
!55 = !{!48, !9, i64 20}
!56 = !{!22, !21, i64 8}
!57 = !{!"p1 _ZTS12_edit_script", !11, i64 0}
!58 = !{!"_edit_script_list", !33, i64 0, !57, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!59 = !{!58, !33, i64 0}
!60 = !{!58, !57, i64 8}
!61 = !{!30, !9, i64 16}
!62 = !{!"_hash_node_t", !9, i64 0, !9, i64 4}
!63 = !{!62, !9, i64 0}
!64 = !{!"p1 _ZTS12_hash_node_t", !11, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!30, !9, i64 20}
!67 = distinct !{!67, !41}
!68 = distinct !{!68, !42}
!69 = distinct !{!69, !41}
!70 = distinct !{!70, !41}
!71 = distinct !{!71, !41}
!72 = distinct !{!72, !41}
!73 = distinct !{!73, !41, !140, !141}
!74 = distinct !{!74, !41, !141, !140}
!75 = distinct !{!75, !41, !140, !141}
!76 = distinct !{!76, !41, !141, !140}
!77 = distinct !{!77, !41}
!78 = distinct !{!78, !41}
!79 = distinct !{!79, !41}
!80 = distinct !{!80, !41}
!81 = distinct !{!81, !41, !140, !141}
!82 = distinct !{!82, !42}
!83 = distinct !{!83, !41, !140}
!84 = distinct !{!84, !41}
!85 = distinct !{!85, !42}
!86 = distinct !{!86, !41}
!87 = distinct !{!87, !41}
!88 = distinct !{!88, !41}
!89 = distinct !{!89, !41}
!90 = distinct !{!90, !41}
!91 = distinct !{!91, !41}
!92 = distinct !{!92, !41}
!93 = distinct !{!93, !41, !140, !141}
!94 = distinct !{!94, !42}
!95 = distinct !{!95, !41, !140}
!96 = distinct !{!96, !41}
!97 = distinct !{!97, !41}
!98 = distinct !{!98, !41}
!99 = distinct !{!99, !41, !140, !141}
!100 = distinct !{!100, !42}
!101 = distinct !{!101, !41, !140}
!102 = distinct !{!102, !41}
!103 = distinct !{!103, !41, !140, !141}
!104 = distinct !{!104, !42}
!105 = distinct !{!105, !41, !140}
!106 = distinct !{!106, !41}
!107 = distinct !{!107, !41}
!108 = distinct !{!108, !41}
!109 = distinct !{!109, !41}
!110 = distinct !{!110, !41}
!111 = distinct !{!111, !41}
!112 = distinct !{!112, !41}
!113 = distinct !{!113, !41}
!114 = distinct !{!114, !41}
!115 = distinct !{!115, !41}
!116 = distinct !{!116, !41}
!117 = distinct !{!117, !41}
!118 = distinct !{!118, !41}
!119 = distinct !{!119, !41}
!120 = distinct !{!120, !41}
!121 = distinct !{!121, !41}
!122 = distinct !{!122, !41}
!123 = distinct !{!123, !41}
!124 = distinct !{!124, !41}
!125 = distinct !{!125, !41}
!126 = distinct !{!126, !41}
!127 = distinct !{!127, !41}
!128 = distinct !{!128, !41, !140, !141}
!129 = distinct !{!129, !41, !141, !140}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !41}
!132 = distinct !{!132, !41}
!133 = !{!"_read_buf_t", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !8, i64 20}
!134 = !{!"_seq_t", !13, i64 0, !13, i64 8, !13, i64 16, !133, i64 24, !9, i64 4144, !9, i64 4148, !9, i64 4152, !9, i64 4156}
!135 = !{!134, !9, i64 4148}
!136 = !{!134, !13, i64 16}
!137 = !{!26, !9, i64 4}
!138 = !{!26, !9, i64 8}
!139 = !{!22, !9, i64 24}
!140 = !{!"llvm.loop.isvectorized", i32 1}
!141 = !{!"llvm.loop.unroll.runtime.disable"}
!142 = !{!22, !9, i64 28}
!143 = !{!22, !9, i64 56}
!144 = !{!22, !9, i64 48}
!145 = !{!22, !9, i64 32}
!146 = !{!34, !9, i64 32}
!147 = !{!34, !9, i64 16}
!148 = !{!22, !9, i64 16}
!149 = !{!33, !33, i64 0}
!150 = !{!58, !9, i64 16}
!151 = !{!58, !9, i64 20}
!152 = !{!58, !9, i64 24}
!153 = !{!58, !9, i64 28}
!154 = !{!58, !9, i64 32}
!155 = !{!"_edit_script", !57, i64 0, !9, i64 8, !8, i64 12}
!156 = !{!155, !8, i64 12}
!157 = !{!155, !9, i64 8}
!158 = !{!155, !57, i64 0}
!159 = !{!57, !57, i64 0}
!160 = !{!34, !33, i64 0}
!161 = distinct !{!161, !41}
!162 = distinct !{!162, !41}
!163 = distinct !{!163, !41}
!164 = distinct !{!164, !41}
!165 = distinct !{!165, !41}
!166 = distinct !{!166, !41}
!167 = distinct !{!167, !41}
end_hunk_3
