Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj7?download=true
inline.NumInlined: 184
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Exa7_ManExactSynthesis:bb.a
  store i32 %i.zd, ptr %i.o, align 4, !tbaa !22
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv283.i
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !22
  %i.zg = xor i32 %i.zf, 1
  store i32 %i.zg, ptr %i.xi, align 4, !tbaa !22
  %i.zh = load ptr, ptr %i.vu, align 8, !tbaa !36
  %i.zi = call i32 @cadical_solver_addclause(ptr noundef %i.zh, ptr noundef nonnull %i.o, ptr noundef nonnull %i.xj) #23
  %.not175.i = icmp eq i32 %i.zi, 0
  br i1 %.not175.i, label %Exa7_ManAddCnfStart.exit, label %bb.dp

._crit_edge234.i:                                 ; preds = %.loopexit206.i, %.preheader210.i
  %i.zj = load i32, ptr %i.fu, align 8, !tbaa !48 ; 3 uses
  %i.zk = add nsw i32 %i.zj, -1
  %i.zl = zext i32 %i.zk to i64
  %i.zm = icmp eq i64 %indvars.iv299.i, %i.zl
  br i1 %i.zm, label %._crit_edge242.i, label %.preheader209.i

.preheader209.i:                                  ; preds = %._crit_edge234.i
  %i.zn = load i32, ptr %i.fy, align 8, !tbaa !169 ; 3 uses
  %i.zo = icmp sgt i32 %i.zn, 0
  br i1 %i.zo, label %.lr.ph239.i, label %._crit_edge240.i

.lr.ph239.i:                                      ; preds = %.preheader209.i
  %i.zp = getelementptr inbounds nuw [256 x i8], ptr %i.xx, i64 %indvars.iv299.i ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 256
  br label %bb.dr

bb.dr:                                            ; preds = %.loopexit204.i, %.lr.ph239.i
  %i.zr = phi i32 [ %i.zn, %.lr.ph239.i ], [ %i.aal, %.loopexit204.i ] ; 4 uses
  %indvars.iv293.i = phi i64 [ 0, %.lr.ph239.i ], [ %indvars.iv.next294.i, %.loopexit204.i ] ; 4 uses
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %indvars.iv293.i ; 2 uses
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !22
  %.not172.i = icmp ne i32 %i.zt, 0
  %i.zu = sext i32 %i.zr to i64                   ; 2 uses
  %i.zv = icmp slt i64 %indvars.iv293.i, %i.zu
  %or.cond.i = and i1 %i.zv, %.not172.i
  br i1 %or.cond.i, label %.lr.ph236.i, label %.loopexit204.i

.lr.ph236.i:                                      ; preds = %bb.dr, %bb.dt
  %i.zw = phi i32 [ %i.aah, %bb.dt ], [ %i.zr, %bb.dr ]
  %i.zx = phi i32 [ %i.aai, %bb.dt ], [ %i.zr, %bb.dr ]
  %indvars.iv295.i = phi i64 [ %indvars.iv.next296.i, %bb.dt ], [ %indvars.iv293.i, %bb.dr ] ; 2 uses
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zq, i64 %indvars.iv295.i
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !22 ; 2 uses
  %.not173.i = icmp eq i32 %i.zz, 0
  br i1 %.not173.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph236.i
  %i.aaa = load i32, ptr %i.zs, align 4, !tbaa !22
  %i.aab = shl nsw i32 %i.aaa, 1
  %i.aac = or disjoint i32 %i.aab, 1
  store i32 %i.aac, ptr %i.o, align 4, !tbaa !22
  %i.aad = shl nsw i32 %i.zz, 1
  %i.aae = or disjoint i32 %i.aad, 1
  store i32 %i.aae, ptr %i.xi, align 4, !tbaa !22
  %i.aaf = load ptr, ptr %i.vu, align 8, !tbaa !36
  %i.aag = call i32 @cadical_solver_addclause(ptr noundef %i.aaf, ptr noundef nonnull %i.o, ptr noundef nonnull %i.xj) #23
  %.not174.i = icmp eq i32 %i.aag, 0
  br i1 %.not174.i, label %Exa7_ManAddCnfStart.exit, label %._crit_edge328.i

._crit_edge328.i:                                 ; preds = %bb.ds
  %.pre.i151 = load i32, ptr %i.fy, align 8, !tbaa !169 ; 2 uses
  br label %bb.dt

bb.dt:                                            ; preds = %._crit_edge328.i, %.lr.ph236.i
  %i.aah = phi i32 [ %.pre.i151, %._crit_edge328.i ], [ %i.zw, %.lr.ph236.i ] ; 3 uses
  %i.aai = phi i32 [ %.pre.i151, %._crit_edge328.i ], [ %i.zx, %.lr.ph236.i ] ; 2 uses
  %indvars.iv.next296.i = add nuw nsw i64 %indvars.iv295.i, 1 ; 2 uses
  %i.aaj = trunc nuw i64 %indvars.iv.next296.i to i32
  %i.aak = icmp sgt i32 %i.aai, %i.aaj
  br i1 %i.aak, label %.lr.ph236.i, label %.loopexit204.i.loopexit, !llvm.loop !88

.loopexit204.i.loopexit:                          ; preds = %bb.dt
  %.pre532 = sext i32 %i.aah to i64
  br label %.loopexit204.i

.loopexit204.i:                                   ; preds = %.loopexit204.i.loopexit, %bb.dr
  %.pre-phi = phi i64 [ %.pre532, %.loopexit204.i.loopexit ], [ %i.zu, %bb.dr ]
  %i.aal = phi i32 [ %i.aah, %.loopexit204.i.loopexit ], [ %i.zr, %bb.dr ] ; 2 uses
  %indvars.iv.next294.i = add nuw nsw i64 %indvars.iv293.i, 1 ; 2 uses
  %i.aam = icmp slt i64 %indvars.iv.next294.i, %.pre-phi
  br i1 %i.aam, label %bb.dr, label %._crit_edge240.loopexit.i, !llvm.loop !89

._crit_edge240.loopexit.i:                        ; preds = %.loopexit204.i
  %.pre329.i = load i32, ptr %i.fu, align 8, !tbaa !48
  br label %._crit_edge240.i

._crit_edge240.i:                                 ; preds = %._crit_edge240.loopexit.i, %.preheader209.i
  %i.aan = phi i32 [ %.pre329.i, %._crit_edge240.loopexit.i ], [ %i.zj, %.preheader209.i ] ; 2 uses
  %i.aao = phi i32 [ %i.aal, %._crit_edge240.loopexit.i ], [ %i.zn, %.preheader209.i ]
  %indvars.iv.next300.i = add nuw nsw i64 %indvars.iv299.i, 1 ; 2 uses
  %i.aap = sext i32 %i.aan to i64
  %i.aaq = icmp slt i64 %indvars.iv.next300.i, %i.aap
  br i1 %i.aaq, label %.preheader211.i, label %._crit_edge242.i, !llvm.loop !90

._crit_edge242.i:                                 ; preds = %._crit_edge240.i, %._crit_edge234.i, %bb.di
  %i.aar = phi i32 [ %i.xv, %bb.di ], [ %i.zj, %._crit_edge234.i ], [ %i.aan, %._crit_edge240.i ] ; 3 uses
  %i.aas = load ptr, ptr %i.fm, align 8, !tbaa !44
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 52
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !189
  %.not176.i = icmp eq i32 %i.aau, 0
  br i1 %.not176.i, label %.loopexit214.i, label %bb.du

bb.du:                                            ; preds = %._crit_edge242.i
  %i.aav = load i32, ptr %i.fo, align 8, !tbaa !35
  %i.aaw = sext i32 %i.aav to i64                 ; 2 uses
  %i.aax = icmp sgt i64 %indvars.iv316.i, %i.aaw
  br i1 %i.aax, label %.preheader208.lr.ph.i, label %.loopexit214.i

.preheader208.lr.ph.i:                            ; preds = %bb.du
  %i.aay = getelementptr inbounds [2048 x i8], ptr %i.xh, i64 %indvars.iv316.i
  %i.aaz = load i32, ptr %i.fy, align 8, !tbaa !169 ; 3 uses
  %i.aba = icmp sgt i32 %i.aaz, 0
  br i1 %i.aba, label %.preheader208.i, label %.loopexit214.i

.preheader208.i:                                  ; preds = %.preheader208.lr.ph.i, %._crit_edge251.i
  %i.abb = phi i32 [ %i.acd, %._crit_edge251.i ], [ %i.aaz, %.preheader208.lr.ph.i ] ; 2 uses
  %i.abc = phi i32 [ %i.ace, %._crit_edge251.i ], [ %i.aaz, %.preheader208.lr.ph.i ] ; 3 uses
  %indvars.iv311.i = phi i64 [ %indvars.iv.next312.i, %._crit_edge251.i ], [ %i.aaw, %.preheader208.lr.ph.i ] ; 2 uses
  %i.abd = icmp sgt i32 %i.abc, 0
  br i1 %i.abd, label %.lr.ph250.i, label %._crit_edge251.i

.lr.ph250.i:                                      ; preds = %.preheader208.i
  %i.abe = getelementptr inbounds [2048 x i8], ptr %i.xh, i64 %indvars.iv311.i
  br label %bb.dv

bb.dv:                                            ; preds = %.loopexit.i, %.lr.ph250.i
  %i.abf = phi i32 [ %i.abb, %.lr.ph250.i ], [ %i.aca, %.loopexit.i ] ; 2 uses
  %i.abg = phi i32 [ %i.abc, %.lr.ph250.i ], [ %i.aca, %.loopexit.i ] ; 2 uses
  %indvars.iv307.i = phi i64 [ 0, %.lr.ph250.i ], [ %.pre334.i, %.loopexit.i ] ; 2 uses
  %indvars.iv302.i = phi i64 [ 1, %.lr.ph250.i ], [ %indvars.iv.next303.i, %.loopexit.i ] ; 2 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %indvars.iv307.i ; 2 uses
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !22
  %.not181.i = icmp ne i32 %i.abi, 0
  %.pre334.i = add nuw nsw i64 %indvars.iv307.i, 1 ; 3 uses
  %i.abj = sext i32 %i.abg to i64
  %i.abk = icmp slt i64 %.pre334.i, %i.abj
  %or.cond367.i = select i1 %.not181.i, i1 %i.abk, i1 false
  br i1 %or.cond367.i, label %.lr.ph248.i, label %.loopexit.i

.lr.ph248.i:                                      ; preds = %bb.dv, %bb.dx
  %i.abl = phi i32 [ %i.abw, %bb.dx ], [ %i.abf, %bb.dv ]
  %i.abm = phi i32 [ %i.abx, %bb.dx ], [ %i.abg, %bb.dv ]
  %indvars.iv304.i = phi i64 [ %indvars.iv.next305.i, %bb.dx ], [ %indvars.iv302.i, %bb.dv ] ; 2 uses
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %indvars.iv304.i
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !22 ; 2 uses
  %.not182.i = icmp eq i32 %i.abo, 0
  br i1 %.not182.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph248.i
  %i.abp = load i32, ptr %i.abh, align 4, !tbaa !22
  %i.abq = shl nsw i32 %i.abp, 1
  %i.abr = or disjoint i32 %i.abq, 1
  store i32 %i.abr, ptr %i.o, align 4, !tbaa !22
  %i.abs = shl nsw i32 %i.abo, 1
  %i.abt = or disjoint i32 %i.abs, 1
  store i32 %i.abt, ptr %i.xi, align 4, !tbaa !22
  %i.abu = load ptr, ptr %i.vu, align 8, !tbaa !36
  %i.abv = call i32 @cadical_solver_addclause(ptr noundef %i.abu, ptr noundef nonnull %i.o, ptr noundef nonnull %i.xj) #23
  %.not183.i = icmp eq i32 %i.abv, 0
  br i1 %.not183.i, label %Exa7_ManAddCnfStart.exit, label %._crit_edge330.i

._crit_edge330.i:                                 ; preds = %bb.dw
  %.pre331.i = load i32, ptr %i.fy, align 8, !tbaa !169 ; 2 uses
  br label %bb.dx

bb.dx:                                            ; preds = %._crit_edge330.i, %.lr.ph248.i
  %i.abw = phi i32 [ %.pre331.i, %._crit_edge330.i ], [ %i.abl, %.lr.ph248.i ] ; 2 uses
  %i.abx = phi i32 [ %.pre331.i, %._crit_edge330.i ], [ %i.abm, %.lr.ph248.i ] ; 2 uses
  %indvars.iv.next305.i = add nuw nsw i64 %indvars.iv304.i, 1 ; 2 uses
  %i.aby = trunc nuw i64 %indvars.iv.next305.i to i32
  %i.abz = icmp sgt i32 %i.abx, %i.aby
  br i1 %i.abz, label %.lr.ph248.i, label %.loopexit.i, !llvm.loop !91

.loopexit.i:                                      ; preds = %bb.dx, %bb.dv
  %i.aca = phi i32 [ %i.abf, %bb.dv ], [ %i.abw, %bb.dx ] ; 5 uses
  %i.acb = sext i32 %i.aca to i64
  %i.acc = icmp slt i64 %.pre334.i, %i.acb
  %indvars.iv.next303.i = add nuw nsw i64 %indvars.iv302.i, 1
  br i1 %i.acc, label %bb.dv, label %._crit_edge251.i, !llvm.loop !92

._crit_edge251.i:                                 ; preds = %.loopexit.i, %.preheader208.i
  %i.acd = phi i32 [ %i.abb, %.preheader208.i ], [ %i.aca, %.loopexit.i ]
  %i.ace = phi i32 [ %i.abc, %.preheader208.i ], [ %i.aca, %.loopexit.i ]
  %indvars.iv.next312.i = add nsw i64 %indvars.iv311.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next312.i to i32
  %exitcond314.not.i = icmp eq i32 %lftr.wideiv.i, %i.xt
  br i1 %exitcond314.not.i, label %.loopexit214.loopexit.i, label %.preheader208.i, !llvm.loop !93

.loopexit214.loopexit.i:                          ; preds = %._crit_edge251.i
  %.pre332.i = load i32, ptr %i.fu, align 8, !tbaa !48
  br label %.loopexit214.i

.loopexit214.i:                                   ; preds = %.loopexit214.loopexit.i, %.preheader208.lr.ph.i, %bb.du, %._crit_edge242.i
  %i.acf = phi i32 [ %i.aar, %._crit_edge242.i ], [ %.pre332.i, %.loopexit214.loopexit.i ], [ %i.aar, %bb.du ], [ %i.aar, %.preheader208.lr.ph.i ]
  %.not177.i = icmp eq i32 %i.acf, 2
  br i1 %.not177.i, label %.preheader212.i, label %bb.ec

.preheader212.i:                                  ; preds = %.loopexit214.i
  %i.acg = shl i32 %i.xr, 1
  %i.ach = mul i32 %i.acg, %i.xu                  ; 4 uses
  %i.aci = add i32 %i.ach, 2                      ; 3 uses
  %i.acj = add i32 %i.ach, 4                      ; 3 uses
  %i.ack = add i32 %i.ach, 6                      ; 3 uses
  store i32 %i.aci, ptr %i.n, align 16, !tbaa !22
  store i32 %i.acj, ptr %i.xk, align 4, !tbaa !22
  store i32 %i.ack, ptr %i.xl, align 8, !tbaa !22
  %i.acl = load ptr, ptr %i.vu, align 8, !tbaa !36
  %i.acm = call i32 @cadical_solver_addclause(ptr noundef %i.acl, ptr noundef nonnull %i.n, ptr noundef nonnull %i.xm) #23
  %.not180.i = icmp eq i32 %i.acm, 0
  br i1 %.not180.i, label %Exa7_ManAddCnfStart.exit, label %bb.dy

bb.dy:                                            ; preds = %.preheader212.i
  %5 = or disjoint i32 %i.aci, 1                  ; 2 uses
  store i32 %5, ptr %i.n, align 16, !tbaa !22
  store i32 %i.acj, ptr %i.xk, align 4, !tbaa !22
  %6 = or disjoint i32 %i.ack, 1                  ; 2 uses
  store i32 %6, ptr %i.xl, align 8, !tbaa !22
  %i.acn = load ptr, ptr %i.vu, align 8, !tbaa !36
  %i.aco = call i32 @cadical_solver_addclause(ptr noundef %i.acn, ptr noundef nonnull %i.n, ptr noundef nonnull %i.xm) #23
  %.not180.1.i = icmp eq i32 %i.aco, 0
  br i1 %.not180.1.i, label %Exa7_ManAddCnfStart.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  store i32 %i.aci, ptr %i.n, align 16, !tbaa !22
  %7 = or disjoint i32 %i.acj, 1
  store i32 %7, ptr %i.xk, align 4, !tbaa !22
  store i32 %6, ptr %i.xl, align 8, !tbaa !22
  %i.acp = load ptr, ptr %i.vu, align 8, !tbaa !36
  %i.acq = call i32 @cadical_solver_addclause(ptr noundef %i.acp, ptr noundef nonnull %i.n, ptr noundef nonnull %i.xm) #23
  %.not180.2.i = icmp eq i32 %i.acq, 0
  br i1 %.not180.2.i, label %Exa7_ManAddCnfStart.exit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  br i1 %.not178.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  store i32 %5, ptr %i.n, align 16, !tbaa !22
  %8 = add i32 %i.ach, 5
  store i32 %8, ptr %i.xk, align 4, !tbaa !22
  store i32 %i.ack, ptr %i.xl, align 8, !tbaa !22
  %i.acr = load ptr, ptr %i.vu, align 8, !tbaa !36
  %i.acs = call i32 @cadical_solver_addclause(ptr noundef %i.acr, ptr noundef nonnull %i.n, ptr noundef nonnull %i.xm) #23
  %.not179.i = icmp eq i32 %i.acs, 0
  br i1 %.not179.i, label %Exa7_ManAddCnfStart.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %.loopexit214.i
  %indvars.iv.next317.i = add nsw i64 %indvars.iv316.i, 1 ; 2 uses
  %i.act = load i32, ptr %i.fy, align 8, !tbaa !169 ; 3 uses
  %i.acu = sext i32 %i.act to i64
  %i.acv = icmp slt i64 %indvars.iv.next317.i, %i.acu
  br i1 %i.acv, label %bb.di, label %.preheader199.i, !llvm.loop !94

bb.ed:                                            ; preds = %.lr.ph261.i
  %indvars.iv.next320.i = add nuw nsw i64 %indvars.iv319.i, 1 ; 2 uses
  %i.acw = load i32, ptr %i.fy, align 8, !tbaa !169
  %i.acx = add nsw i32 %i.acw, -1
  %i.acy = sext i32 %i.acx to i64
  %i.acz = icmp slt i64 %indvars.iv.next320.i, %i.acy
  br i1 %i.acz, label %.lr.ph261.i, label %._crit_edge262.i, !llvm.loop !95

.lr.ph261.i:                                      ; preds = %.preheader199.i, %bb.ed
  %indvars.iv319.i = phi i64 [ %indvars.iv.next320.i, %bb.ed ], [ 0, %.preheader199.i ] ; 2 uses
  %i.ada = load ptr, ptr %i.gm, align 8, !tbaa !172
  %i.adb = getelementptr i8, ptr %i.ada, i64 8
  %.val187.i = load ptr, ptr %i.adb, align 8, !tbaa !15
  %i.adc = getelementptr inbounds nuw [16 x i8], ptr %.val187.i, i64 %indvars.iv319.i ; 2 uses
  %i.add = getelementptr i8, ptr %i.adc, i64 8
  %.val191.i = load ptr, ptr %i.add, align 8, !tbaa !20 ; 2 uses
  %i.ade = getelementptr i8, ptr %i.adc, i64 4
  %.val189.i = load i32, ptr %i.ade, align 4, !tbaa !19
  %i.adf = load ptr, ptr %i.vu, align 8, !tbaa !36
  %i.adg = sext i32 %.val189.i to i64
  %i.adh = getelementptr inbounds [4 x i8], ptr %.val191.i, i64 %i.adg
  %i.adi = call i32 @cadical_solver_addclause(ptr noundef %i.adf, ptr noundef %.val191.i, ptr noundef %i.adh) #23
  %.not170.not.i = icmp eq i32 %i.adi, 0
  br i1 %.not170.not.i, label %Exa7_ManAddCnfStart.exit, label %bb.ed

._crit_edge262.i:                                 ; preds = %bb.ed, %.preheader199.i
  %i.adj = getelementptr inbounds nuw i8, ptr %i.fm, i64 131408 ; 2 uses
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !174 ; 3 uses
  %.not.i148 = icmp eq ptr %i.adk, null
  br i1 %.not.i148, label %Exa7_ManAddCnfStart.exit, label %.preheader.i149

.preheader.i149:                                  ; preds = %._crit_edge262.i
  %i.adl = getelementptr i8, ptr %i.adk, i64 4
  %.val267.i = load i32, ptr %i.adl, align 4, !tbaa !16
  %.not169268.i = icmp sgt i32 %.val267.i, 0
  br i1 %.not169268.i, label %.lr.ph270.i, label %Exa7_ManAddCnfStart.exit

.lr.ph270.i:                                      ; preds = %.preheader.i149
  %i.adm = getelementptr inbounds nuw i8, ptr %i.fm, i64 72
  %i.adn = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  br label %bb.ee

bb.ee:                                            ; preds = %.critedge3.i, %.lr.ph270.i
  %i.ado = phi ptr [ %i.adk, %.lr.ph270.i ], [ %i.aes, %.critedge3.i ] ; 2 uses
  %indvars.iv325.i = phi i64 [ 0, %.lr.ph270.i ], [ %indvars.iv.next326.i, %.critedge3.i ] ; 3 uses
  %i.adp = getelementptr i8, ptr %i.ado, i64 8
  %.val186.i = load ptr, ptr %i.adp, align 8, !tbaa !15
  %i.adq = getelementptr inbounds nuw [16 x i8], ptr %.val186.i, i64 %indvars.iv325.i ; 2 uses
  %i.adr = getelementptr i8, ptr %i.adq, i64 4    ; 2 uses
  %.val188263.i = load i32, ptr %i.adr, align 4, !tbaa !19
  %i.ads = icmp sgt i32 %.val188263.i, 0
  br i1 %i.ads, label %.lr.ph266.i, label %.critedge3.i

.lr.ph266.i:                                      ; preds = %bb.ee
  %i.adt = getelementptr i8, ptr %i.adq, i64 8
  %i.adu = trunc nuw nsw i64 %indvars.iv325.i to i32
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ej, %.lr.ph266.i
  %indvars.iv322.i = phi i64 [ 0, %.lr.ph266.i ], [ %indvars.iv.next323.i, %bb.ej ] ; 3 uses
  %.val190.i = load ptr, ptr %i.adt, align 8, !tbaa !20
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %.val190.i, i64 %indvars.iv322.i
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !22 ; 3 uses
  %i.adx = icmp slt i32 %i.adw, 0
  br i1 %i.adx, label %bb.ej, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ady = load i32, ptr %i.fo, align 8, !tbaa !35
  %i.adz = add nsw i32 %i.ady, %i.adu
  %i.aea = sext i32 %i.adz to i64
  %i.aeb = getelementptr inbounds [2048 x i8], ptr %i.adm, i64 %i.aea
  %i.aec = load i32, ptr %i.fu, align 8, !tbaa !48
  %i.aed = trunc nuw nsw i64 %indvars.iv322.i to i32 ; 2 uses
  %i.aee = xor i32 %i.aed, -1
  %i.aef = add i32 %i.aec, %i.aee
  %i.aeg = sext i32 %i.aef to i64
  %i.aeh = getelementptr inbounds [256 x i8], ptr %i.aeb, i64 %i.aeg
  %i.aei = zext nneg i32 %i.adw to i64
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %i.aei
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !22 ; 2 uses
  %i.ael = icmp eq i32 %i.aek, 0
  br i1 %i.ael, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.aem = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.adw, i32 noundef %i.aed) ; 0 uses
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  %i.aen = shl nsw i32 %i.aek, 1
  store i32 %i.aen, ptr %i.n, align 16, !tbaa !22
  %i.aeo = load ptr, ptr %i.vu, align 8, !tbaa !36
  %i.aep = call i32 @cadical_solver_addclause(ptr noundef %i.aeo, ptr noundef nonnull %i.n, ptr noundef nonnull %i.adn) #23
  %.not168.i = icmp eq i32 %i.aep, 0
  br i1 %.not168.i, label %Exa7_ManAddCnfStart.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh, %bb.ef
  %indvars.iv.next323.i = add nuw nsw i64 %indvars.iv322.i, 1 ; 2 uses
  %.val188.i = load i32, ptr %i.adr, align 4, !tbaa !19
  %i.aeq = sext i32 %.val188.i to i64
  %i.aer = icmp slt i64 %indvars.iv.next323.i, %i.aeq
  br i1 %i.aer, label %bb.ef, label %.critedge3.loopexit.i, !llvm.loop !96

.critedge3.loopexit.i:                            ; preds = %bb.ej
  %.pre333.i = load ptr, ptr %i.adj, align 8, !tbaa !174
  br label %.critedge3.i

.critedge3.i:                                     ; preds = %.critedge3.loopexit.i, %bb.ee
  %i.aes = phi ptr [ %.pre333.i, %.critedge3.loopexit.i ], [ %i.ado, %bb.ee ] ; 2 uses
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 1 ; 2 uses
  %i.aet = getelementptr i8, ptr %i.aes, i64 4
  %.val.i = load i32, ptr %i.aet, align 4, !tbaa !16
  %i.aeu = sext i32 %.val.i to i64
  %.not169.i = icmp slt i64 %indvars.iv.next326.i, %i.aeu
  br i1 %.not169.i, label %bb.ee, label %Exa7_ManAddCnfStart.exit, !llvm.loop !97

Exa7_ManAddCnfStart.exit:                         ; preds = %.preheader212.i, %bb.dy, %bb.dz, %bb.eb, %._crit_edge.i150, %bb.dq, %bb.ds, %bb.dw, %.lr.ph261.i, %.critedge3.i, %bb.ei, %._crit_edge262.i, %.preheader.i149
  %.8.i = phi i32 [ 1, %._crit_edge262.i ], [ 1, %.critedge3.i ], [ 0, %.lr.ph261.i ], [ 0, %bb.ei ], [ 0, %bb.ds ], [ 1, %.preheader.i149 ], [ 0, %._crit_edge.i150 ], [ 0, %bb.dq ], [ 0, %bb.dw ], [ 0, %bb.eb ], [ 0, %bb.dz ], [ 0, %bb.dy ], [ 0, %.preheader212.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  %i.aev = load i32, ptr %i.qz, align 8, !tbaa !43
  %.not113 = icmp eq i32 %i.aev, 0
  br i1 %.not113, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %Exa7_ManAddCnfStart.exit
  %i.aew = load i32, ptr %i.fo, align 8, !tbaa !35
  %i.aex = load i32, ptr %i.fr, align 4, !tbaa !46
  %i.aey = load i32, ptr %i.fu, align 8, !tbaa !48
  %i.aez = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.aew, i32 noundef %i.aex, i32 noundef %i.aey) ; 0 uses
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %Exa7_ManAddCnfStart.exit
  %i.afa = load i32, ptr %i.vv, align 4, !tbaa !53
  %.not114 = icmp eq i32 %i.afa, 0
  br i1 %.not114, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.afb = load ptr, ptr %i.vu, align 8, !tbaa !36
  %i.afc = call i32 @cadical_solver_solve(ptr noundef %i.afb, ptr noundef null, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #23
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.099 = phi i32 [ %i.afc, %bb.em ], [ %.8.i, %bb.el ]
  %i.afd = getelementptr inbounds nuw i8, ptr %i.fm, i64 131144 ; 7 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.fm, i64 72 ; 9 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.fm, i64 131428 ; 5 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.fm, i64 56 ; 4 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.fm, i64 131432 ; 5 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.afk = getelementptr inbounds nuw i8, ptr %i.fm, i64 64 ; 4 uses
  %.0100.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  %.0100.sroa.gep124.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %Exa7_ManEval.exit
  %.097458 = phi i32 [ 1, %bb.en ], [ %i.bfd, %Exa7_ManEval.exit ] ; 16 uses
  %.1457 = phi i32 [ %.099, %bb.en ], [ %i.avr, %Exa7_ManEval.exit ] ; 3 uses
  %.0100456 = phi i32 [ 0, %bb.en ], [ %i.bfe, %Exa7_ManEval.exit ] ; 8 uses
  %i.afo = load i32, ptr %i.vv, align 4, !tbaa !53
  %.not116 = icmp eq i32 %i.afo, 0
  br i1 %.not116, label %bb.fn, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.afp = load i32, ptr %i.gp, align 8, !tbaa !173
  %i.afq = load i32, ptr %i.fr, align 4, !tbaa !46
  %i.afr = mul nsw i32 %i.afq, %.097458
  %i.afs = add nsw i32 %i.afr, %i.afp             ; 3 uses
  %i.aft = load ptr, ptr %i.ge, align 8, !tbaa !171
  %i.afu = ashr i32 %.097458, 6
  %i.afv = sext i32 %i.afu to i64
  %i.afw = getelementptr inbounds [8 x i8], ptr %i.aft, i64 %i.afv
  %i.afx = load i64, ptr %i.afw, align 8, !tbaa !167
  %i.afy = and i32 %.097458, 63
  %i.afz = zext nneg i32 %i.afy to i64
  %i.aga = lshr i64 %i.afx, %i.afz                ; 2 uses
  %i.agb = load i32, ptr %i.fo, align 8, !tbaa !35 ; 5 uses
  %i.agc = icmp sgt i32 %i.agb, 0
  br i1 %i.agc, label %.lr.ph.i167, label %.preheader128.i

.lr.ph.i167:                                      ; preds = %bb.ep
  %wide.trip.count.i168 = zext nneg i32 %i.agb to i64 ; 3 uses
  %min.iters.check1024 = icmp ult i32 %i.agb, 8
  br i1 %min.iters.check1024, label %scalar.ph1023.preheader, label %vector.ph1025

end_hunk_0
