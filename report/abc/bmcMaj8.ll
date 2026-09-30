Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj8?download=true
inline.NumInlined: 197
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@Exa8_ManExactSynthesis:bb.a
  %i.zq = load ptr, ptr %i.vo, align 8, !tbaa !183
  call void @kissat_add(ptr noundef %i.zq, i32 noundef 0) #23
  %i.zr = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.zs = call i32 @kissat_is_inconsistent(ptr noundef %i.zr) #23
  %.not.i196.not.i = icmp eq i32 %i.zs, 0
  br i1 %.not.i196.not.i, label %bb.dt, label %Exa8_ManAddCnfStart.exit.thread

._crit_edge283.i:                                 ; preds = %.loopexit255.i, %.preheader259.i
  %i.zt = load i32, ptr %i.fo, align 8, !tbaa !51 ; 3 uses
  %i.zu = add nsw i32 %i.zt, -1
  %i.zv = zext i32 %i.zu to i64
  %i.zw = icmp eq i64 %indvars.iv348.i, %i.zv
  br i1 %i.zw, label %._crit_edge291.i, label %.preheader258.i

.preheader258.i:                                  ; preds = %._crit_edge283.i
  %i.zx = load i32, ptr %i.fs, align 8, !tbaa !167 ; 3 uses
  %i.zy = icmp sgt i32 %i.zx, 0
  br i1 %i.zy, label %.lr.ph288.i, label %._crit_edge289.i

.lr.ph288.i:                                      ; preds = %.preheader258.i
  %i.zz = getelementptr inbounds nuw [256 x i8], ptr %i.xn, i64 %indvars.iv348.i ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 256
  br label %bb.du

bb.du:                                            ; preds = %.loopexit253.i, %.lr.ph288.i
  %i.aab = phi i32 [ %i.zx, %.lr.ph288.i ], [ %i.aaw, %.loopexit253.i ] ; 4 uses
  %indvars.iv342.i = phi i64 [ 0, %.lr.ph288.i ], [ %indvars.iv.next343.i, %.loopexit253.i ] ; 4 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %indvars.iv342.i ; 2 uses
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !22
  %.not171.i = icmp ne i32 %i.aad, 0
  %i.aae = sext i32 %i.aab to i64                 ; 2 uses
  %i.aaf = icmp slt i64 %indvars.iv342.i, %i.aae
  %or.cond.i = and i1 %i.aaf, %.not171.i
  br i1 %or.cond.i, label %.lr.ph285.i, label %.loopexit253.i

.lr.ph285.i:                                      ; preds = %bb.du, %bb.dv
  %i.aag = phi i32 [ %i.aas, %bb.dv ], [ %i.aab, %bb.du ]
  %i.aah = phi i32 [ %i.aat, %bb.dv ], [ %i.aab, %bb.du ]
  %indvars.iv344.i = phi i64 [ %indvars.iv.next345.i, %bb.dv ], [ %indvars.iv342.i, %bb.du ] ; 2 uses
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %indvars.iv344.i
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !22 ; 2 uses
  %.not172.i = icmp eq i32 %i.aaj, 0
  br i1 %.not172.i, label %bb.dv, label %Exa8_KissatAddClause.exit204.i

Exa8_KissatAddClause.exit204.i:                   ; preds = %.lr.ph285.i
  %i.aak = load i32, ptr %i.aac, align 4, !tbaa !22
  %i.aal = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.aam = xor i32 %i.aak, -1
  call void @kissat_add(ptr noundef %i.aal, i32 noundef %i.aam) #23
  %i.aan = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.aao = xor i32 %i.aaj, -1
  call void @kissat_add(ptr noundef %i.aan, i32 noundef %i.aao) #23
  %i.aap = load ptr, ptr %i.vo, align 8, !tbaa !183
  call void @kissat_add(ptr noundef %i.aap, i32 noundef 0) #23
  %i.aaq = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.aar = call i32 @kissat_is_inconsistent(ptr noundef %i.aaq) #23
  %.not.i203.not.i = icmp eq i32 %i.aar, 0
  br i1 %.not.i203.not.i, label %Exa8_KissatAddClause.exit204._crit_edge.i, label %Exa8_ManAddCnfStart.exit.thread

Exa8_KissatAddClause.exit204._crit_edge.i:        ; preds = %Exa8_KissatAddClause.exit204.i
  %.pre.i143 = load i32, ptr %i.fs, align 8, !tbaa !167 ; 2 uses
  br label %bb.dv

bb.dv:                                            ; preds = %Exa8_KissatAddClause.exit204._crit_edge.i, %.lr.ph285.i
  %i.aas = phi i32 [ %.pre.i143, %Exa8_KissatAddClause.exit204._crit_edge.i ], [ %i.aag, %.lr.ph285.i ] ; 3 uses
  %i.aat = phi i32 [ %.pre.i143, %Exa8_KissatAddClause.exit204._crit_edge.i ], [ %i.aah, %.lr.ph285.i ] ; 2 uses
  %indvars.iv.next345.i = add nuw nsw i64 %indvars.iv344.i, 1 ; 2 uses
  %i.aau = trunc nuw i64 %indvars.iv.next345.i to i32
  %i.aav = icmp sgt i32 %i.aat, %i.aau
  br i1 %i.aav, label %.lr.ph285.i, label %.loopexit253.i.loopexit, !llvm.loop !97

.loopexit253.i.loopexit:                          ; preds = %bb.dv
  %.pre462 = sext i32 %i.aas to i64
  br label %.loopexit253.i

.loopexit253.i:                                   ; preds = %.loopexit253.i.loopexit, %bb.du
  %.pre-phi = phi i64 [ %.pre462, %.loopexit253.i.loopexit ], [ %i.aae, %bb.du ]
  %i.aaw = phi i32 [ %i.aas, %.loopexit253.i.loopexit ], [ %i.aab, %bb.du ] ; 2 uses
  %indvars.iv.next343.i = add nuw nsw i64 %indvars.iv342.i, 1 ; 2 uses
  %i.aax = icmp slt i64 %indvars.iv.next343.i, %.pre-phi
  br i1 %i.aax, label %bb.du, label %._crit_edge289.loopexit.i, !llvm.loop !98

._crit_edge289.loopexit.i:                        ; preds = %.loopexit253.i
  %.pre383.i = load i32, ptr %i.fo, align 8, !tbaa !51
  br label %._crit_edge289.i

._crit_edge289.i:                                 ; preds = %._crit_edge289.loopexit.i, %.preheader258.i
  %i.aay = phi i32 [ %.pre383.i, %._crit_edge289.loopexit.i ], [ %i.zt, %.preheader258.i ] ; 2 uses
  %i.aaz = phi i32 [ %i.aaw, %._crit_edge289.loopexit.i ], [ %i.zx, %.preheader258.i ]
  %indvars.iv.next349.i = add nuw nsw i64 %indvars.iv348.i, 1 ; 2 uses
  %i.aba = sext i32 %i.aay to i64
  %i.abb = icmp slt i64 %indvars.iv.next349.i, %i.aba
  br i1 %i.abb, label %.preheader260.i, label %._crit_edge291.i, !llvm.loop !99

._crit_edge291.i:                                 ; preds = %._crit_edge289.i, %._crit_edge283.i, %bb.dl
  %i.abc = phi i32 [ %i.xl, %bb.dl ], [ %i.zt, %._crit_edge283.i ], [ %i.aay, %._crit_edge289.i ] ; 3 uses
  %i.abd = load ptr, ptr %i.fg, align 8, !tbaa !47
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 52
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !185
  %.not175.i = icmp eq i32 %i.abf, 0
  br i1 %.not175.i, label %.loopexit263.i, label %bb.dw

bb.dw:                                            ; preds = %._crit_edge291.i
  %i.abg = load i32, ptr %i.fi, align 8, !tbaa !165
  %i.abh = sext i32 %i.abg to i64                 ; 2 uses
  %i.abi = icmp sgt i64 %indvars.iv367.i, %i.abh
  br i1 %i.abi, label %.preheader257.lr.ph.i, label %.loopexit263.i

.preheader257.lr.ph.i:                            ; preds = %bb.dw
  %i.abj = getelementptr inbounds [2048 x i8], ptr %i.wz, i64 %indvars.iv367.i
  %i.abk = load i32, ptr %i.fs, align 8, !tbaa !167 ; 3 uses
  %i.abl = icmp sgt i32 %i.abk, 0
  br i1 %i.abl, label %.preheader257.i, label %.loopexit263.i

.preheader257.i:                                  ; preds = %.preheader257.lr.ph.i, %._crit_edge300.i
  %i.abm = phi i32 [ %i.acp, %._crit_edge300.i ], [ %i.abk, %.preheader257.lr.ph.i ] ; 2 uses
  %i.abn = phi i32 [ %i.acq, %._crit_edge300.i ], [ %i.abk, %.preheader257.lr.ph.i ] ; 3 uses
  %indvars.iv360.i = phi i64 [ %indvars.iv.next361.i, %._crit_edge300.i ], [ %i.abh, %.preheader257.lr.ph.i ] ; 2 uses
  %i.abo = icmp sgt i32 %i.abn, 0
  br i1 %i.abo, label %.lr.ph299.i, label %._crit_edge300.i

.lr.ph299.i:                                      ; preds = %.preheader257.i
  %i.abp = getelementptr inbounds [2048 x i8], ptr %i.wz, i64 %indvars.iv360.i
  br label %bb.dx

bb.dx:                                            ; preds = %.loopexit.i, %.lr.ph299.i
  %i.abq = phi i32 [ %i.abm, %.lr.ph299.i ], [ %i.acm, %.loopexit.i ] ; 2 uses
  %i.abr = phi i32 [ %i.abn, %.lr.ph299.i ], [ %i.acm, %.loopexit.i ] ; 2 uses
  %indvars.iv356.i = phi i64 [ 0, %.lr.ph299.i ], [ %.pre387.i, %.loopexit.i ] ; 2 uses
  %indvars.iv351.i = phi i64 [ 1, %.lr.ph299.i ], [ %indvars.iv.next352.i, %.loopexit.i ] ; 2 uses
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %indvars.iv356.i ; 2 uses
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !22
  %.not180.i = icmp ne i32 %i.abt, 0
  %.pre387.i = add nuw nsw i64 %indvars.iv356.i, 1 ; 3 uses
  %i.abu = sext i32 %i.abr to i64
  %i.abv = icmp slt i64 %.pre387.i, %i.abu
  %or.cond427.i = select i1 %.not180.i, i1 %i.abv, i1 false
  br i1 %or.cond427.i, label %.lr.ph297.i, label %.loopexit.i

.lr.ph297.i:                                      ; preds = %bb.dx, %bb.dy
  %i.abw = phi i32 [ %i.aci, %bb.dy ], [ %i.abq, %bb.dx ]
  %i.abx = phi i32 [ %i.acj, %bb.dy ], [ %i.abr, %bb.dx ]
  %indvars.iv353.i = phi i64 [ %indvars.iv.next354.i, %bb.dy ], [ %indvars.iv351.i, %bb.dx ] ; 2 uses
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.abp, i64 %indvars.iv353.i
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !22 ; 2 uses
  %.not181.i = icmp eq i32 %i.abz, 0
  br i1 %.not181.i, label %bb.dy, label %Exa8_KissatAddClause.exit211.i

Exa8_KissatAddClause.exit211.i:                   ; preds = %.lr.ph297.i
  %i.aca = load i32, ptr %i.abs, align 4, !tbaa !22
  %i.acb = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.acc = xor i32 %i.aca, -1
  call void @kissat_add(ptr noundef %i.acb, i32 noundef %i.acc) #23
  %i.acd = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.ace = xor i32 %i.abz, -1
  call void @kissat_add(ptr noundef %i.acd, i32 noundef %i.ace) #23
  %i.acf = load ptr, ptr %i.vo, align 8, !tbaa !183
  call void @kissat_add(ptr noundef %i.acf, i32 noundef 0) #23
  %i.acg = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.ach = call i32 @kissat_is_inconsistent(ptr noundef %i.acg) #23
  %.not.i210.not.i = icmp eq i32 %i.ach, 0
  br i1 %.not.i210.not.i, label %Exa8_KissatAddClause.exit211._crit_edge.i, label %Exa8_ManAddCnfStart.exit.thread

Exa8_KissatAddClause.exit211._crit_edge.i:        ; preds = %Exa8_KissatAddClause.exit211.i
  %.pre384.i = load i32, ptr %i.fs, align 8, !tbaa !167 ; 2 uses
  br label %bb.dy

bb.dy:                                            ; preds = %Exa8_KissatAddClause.exit211._crit_edge.i, %.lr.ph297.i
  %i.aci = phi i32 [ %.pre384.i, %Exa8_KissatAddClause.exit211._crit_edge.i ], [ %i.abw, %.lr.ph297.i ] ; 2 uses
  %i.acj = phi i32 [ %.pre384.i, %Exa8_KissatAddClause.exit211._crit_edge.i ], [ %i.abx, %.lr.ph297.i ] ; 2 uses
  %indvars.iv.next354.i = add nuw nsw i64 %indvars.iv353.i, 1 ; 2 uses
  %i.ack = trunc nuw i64 %indvars.iv.next354.i to i32
  %i.acl = icmp sgt i32 %i.acj, %i.ack
  br i1 %i.acl, label %.lr.ph297.i, label %.loopexit.i, !llvm.loop !100

.loopexit.i:                                      ; preds = %bb.dy, %bb.dx
  %i.acm = phi i32 [ %i.abq, %bb.dx ], [ %i.aci, %bb.dy ] ; 5 uses
  %i.acn = sext i32 %i.acm to i64
  %i.aco = icmp slt i64 %.pre387.i, %i.acn
  %indvars.iv.next352.i = add nuw nsw i64 %indvars.iv351.i, 1
  br i1 %i.aco, label %bb.dx, label %._crit_edge300.i, !llvm.loop !101

._crit_edge300.i:                                 ; preds = %.loopexit.i, %.preheader257.i
  %i.acp = phi i32 [ %i.abm, %.preheader257.i ], [ %i.acm, %.loopexit.i ]
  %i.acq = phi i32 [ %i.abn, %.preheader257.i ], [ %i.acm, %.loopexit.i ]
  %indvars.iv.next361.i = add nsw i64 %indvars.iv360.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next361.i to i32
  %exitcond363.not.i = icmp eq i32 %lftr.wideiv.i, %i.xi
  br i1 %exitcond363.not.i, label %.loopexit263.loopexit.i, label %.preheader257.i, !llvm.loop !102

.loopexit263.loopexit.i:                          ; preds = %._crit_edge300.i
  %.pre385.i = load i32, ptr %i.fo, align 8, !tbaa !51
  br label %.loopexit263.i

.loopexit263.i:                                   ; preds = %.loopexit263.loopexit.i, %.preheader257.lr.ph.i, %bb.dw, %._crit_edge291.i
  %i.acr = phi i32 [ %i.abc, %._crit_edge291.i ], [ %.pre385.i, %.loopexit263.loopexit.i ], [ %i.abc, %bb.dw ], [ %i.abc, %.preheader257.lr.ph.i ]
  %.not176.i = icmp eq i32 %i.acr, 2
  br i1 %.not176.i, label %.preheader261.i, label %bb.ea

.preheader261.i:                                  ; preds = %.loopexit263.i
  %i.acs = shl i32 %i.xk, 1                       ; 4 uses
  %i.act = add i32 %i.acs, 2                      ; 3 uses
  %i.acu = add i32 %i.acs, 4                      ; 2 uses
  %i.acv = add i32 %i.acs, 6                      ; 3 uses
  %i.acw = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.acx = add nsw i32 %i.xk, 2                   ; 2 uses
  call void @kissat_add(ptr noundef %i.acw, i32 noundef %i.acx) #23
  %i.acy = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.acz = ashr exact i32 %i.acu, 1               ; 2 uses
  %i.ada = add nsw i32 %i.acz, 1                  ; 2 uses
  call void @kissat_add(ptr noundef %i.acy, i32 noundef %i.ada) #23
  %i.adb = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.adc = ashr exact i32 %i.acv, 1               ; 2 uses
  %i.add = add nsw i32 %i.adc, 1                  ; 2 uses
  call void @kissat_add(ptr noundef %i.adb, i32 noundef %i.add) #23
  %i.ade = load ptr, ptr %i.vo, align 8, !tbaa !183
  call void @kissat_add(ptr noundef %i.ade, i32 noundef 0) #23
  %i.adf = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.adg = call i32 @kissat_is_inconsistent(ptr noundef %i.adf) #23
  %.not.i217.not.i = icmp eq i32 %i.adg, 0
  br i1 %.not.i217.not.i, label %Exa8_KissatAddClause.exit218.1.i, label %Exa8_ManAddCnfStart.exit.thread

Exa8_KissatAddClause.exit218.1.i:                 ; preds = %.preheader261.i
  %4 = or disjoint i32 %i.act, 1
  %i.adh = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.adi = ashr exact i32 %i.act, 1
  %i.adj = xor i32 %i.adi, -1                     ; 2 uses
  call void @kissat_add(ptr noundef %i.adh, i32 noundef %i.adj) #23
  %i.adk = load ptr, ptr %i.vo, align 8, !tbaa !183
  call void @kissat_add(ptr noundef %i.adk, i32 noundef %i.ada) #23
  %i.adl = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.adm = xor i32 %i.adc, -1                     ; 2 uses
  call void @kissat_add(ptr noundef %i.adl, i32 noundef %i.adm) #23
  %i.adn = load ptr, ptr %i.vo, align 8, !tbaa !183
  call void @kissat_add(ptr noundef %i.adn, i32 noundef 0) #23
  %i.ado = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.adp = call i32 @kissat_is_inconsistent(ptr noundef %i.ado) #23
  %.not.i217.not.1.i = icmp eq i32 %i.adp, 0
  br i1 %.not.i217.not.1.i, label %Exa8_KissatAddClause.exit218.2.i, label %Exa8_ManAddCnfStart.exit.thread

Exa8_KissatAddClause.exit218.2.i:                 ; preds = %Exa8_KissatAddClause.exit218.1.i
  %5 = or disjoint i32 %i.acv, 1
  store i32 %i.act, ptr %i.k, align 16, !tbaa !22
  %6 = or disjoint i32 %i.acu, 1
  store i32 %6, ptr %i.xa, align 4, !tbaa !22
  store i32 %5, ptr %i.xb, align 8, !tbaa !22
  %i.adq = load ptr, ptr %i.vo, align 8, !tbaa !183
  call void @kissat_add(ptr noundef %i.adq, i32 noundef %i.acx) #23
  %i.adr = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.ads = xor i32 %i.acz, -1
  call void @kissat_add(ptr noundef %i.adr, i32 noundef %i.ads) #23
  %i.adt = load ptr, ptr %i.vo, align 8, !tbaa !183
  call void @kissat_add(ptr noundef %i.adt, i32 noundef %i.adm) #23
  %i.adu = load ptr, ptr %i.vo, align 8, !tbaa !183
  call void @kissat_add(ptr noundef %i.adu, i32 noundef 0) #23
  %i.adv = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.adw = call i32 @kissat_is_inconsistent(ptr noundef %i.adv) #23
  %.not.i217.not.2.i = icmp eq i32 %i.adw, 0
  br i1 %.not.i217.not.2.i, label %bb.dz, label %Exa8_ManAddCnfStart.exit.thread

bb.dz:                                            ; preds = %Exa8_KissatAddClause.exit218.2.i
  br i1 %.not177.i, label %bb.ea, label %Exa8_KissatAddClause.exit225.i

Exa8_KissatAddClause.exit225.i:                   ; preds = %bb.dz
  store i32 %4, ptr %i.k, align 16, !tbaa !22
  %7 = add i32 %i.acs, 5                          ; 2 uses
  store i32 %7, ptr %i.xa, align 4, !tbaa !22
  store i32 %i.acv, ptr %i.xb, align 8, !tbaa !22
  %i.adx = load ptr, ptr %i.vo, align 8, !tbaa !183
  call void @kissat_add(ptr noundef %i.adx, i32 noundef %i.adj) #23
  %i.ady = load ptr, ptr %i.vo, align 8, !tbaa !183
  %8 = ashr i32 %7, 1
  %9 = xor i32 %8, -1
  call void @kissat_add(ptr noundef %i.ady, i32 noundef %9) #23
  %i.adz = load ptr, ptr %i.vo, align 8, !tbaa !183
  call void @kissat_add(ptr noundef %i.adz, i32 noundef %i.add) #23
  %i.aea = load ptr, ptr %i.vo, align 8, !tbaa !183
  call void @kissat_add(ptr noundef %i.aea, i32 noundef 0) #23
  %i.aeb = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.aec = call i32 @kissat_is_inconsistent(ptr noundef %i.aeb) #23
  %.not.i224.not.i = icmp eq i32 %i.aec, 0
  br i1 %.not.i224.not.i, label %bb.ea, label %Exa8_ManAddCnfStart.exit.thread

bb.ea:                                            ; preds = %Exa8_KissatAddClause.exit225.i, %bb.dz, %.loopexit263.i
  %indvars.iv.next368.i = add nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %i.aed = load i32, ptr %i.fs, align 8, !tbaa !167 ; 3 uses
  %i.aee = sext i32 %i.aed to i64
  %i.aef = icmp slt i64 %indvars.iv.next368.i, %i.aee
  br i1 %i.aef, label %bb.dl, label %.preheader248.i, !llvm.loop !103

bb.eb:                                            ; preds = %Exa8_KissatAddClause.exit233.i
  %indvars.iv.next371.i = add nuw nsw i64 %indvars.iv370.i, 1 ; 2 uses
  %i.aeg = load i32, ptr %i.fs, align 8, !tbaa !167
  %i.aeh = add nsw i32 %i.aeg, -1
  %i.aei = sext i32 %i.aeh to i64
  %i.aej = icmp slt i64 %indvars.iv.next371.i, %i.aei
  br i1 %i.aej, label %.lr.ph310.i, label %._crit_edge311.i, !llvm.loop !104

.lr.ph310.i:                                      ; preds = %.preheader248.i, %bb.eb
  %indvars.iv370.i = phi i64 [ %indvars.iv.next371.i, %bb.eb ], [ 0, %.preheader248.i ] ; 2 uses
  %i.aek = load ptr, ptr %i.gg, align 8, !tbaa !170
  %i.ael = getelementptr i8, ptr %i.aek, i64 8
  %.val186.i = load ptr, ptr %i.ael, align 8, !tbaa !15
  %i.aem = getelementptr inbounds nuw [16 x i8], ptr %.val186.i, i64 %indvars.iv370.i ; 2 uses
  %i.aen = getelementptr i8, ptr %i.aem, i64 8
  %.val190.i = load ptr, ptr %i.aen, align 8, !tbaa !20
  %i.aeo = getelementptr i8, ptr %i.aem, i64 4
  %.val188.i = load i32, ptr %i.aeo, align 4, !tbaa !19 ; 2 uses
  %i.aep = icmp sgt i32 %.val188.i, 0
  br i1 %i.aep, label %.lr.ph.i227.i, label %Exa8_KissatAddClause.exit233.i

.lr.ph.i227.i:                                    ; preds = %.lr.ph310.i
  %wide.trip.count.i228.i = zext nneg i32 %.val188.i to i64
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ec, %.lr.ph.i227.i
  %indvars.iv.i229.i = phi i64 [ 0, %.lr.ph.i227.i ], [ %indvars.iv.next.i231.i, %bb.ec ] ; 2 uses
  %i.aeq = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %.val190.i, i64 %indvars.iv.i229.i
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !22 ; 2 uses
  %i.aet = and i32 %i.aes, 1
  %.not.i.i230.i = icmp eq i32 %i.aet, 0
  %i.aeu = ashr i32 %i.aes, 1                     ; 2 uses
  %i.aev = xor i32 %i.aeu, -1
  %i.aew = add nsw i32 %i.aeu, 1
  %i.aex = select i1 %.not.i.i230.i, i32 %i.aew, i32 %i.aev
  call void @kissat_add(ptr noundef %i.aeq, i32 noundef %i.aex) #23
  %indvars.iv.next.i231.i = add nuw nsw i64 %indvars.iv.i229.i, 1 ; 2 uses
  %exitcond.not.i232.i = icmp eq i64 %indvars.iv.next.i231.i, %wide.trip.count.i228.i
  br i1 %exitcond.not.i232.i, label %Exa8_KissatAddClause.exit233.i, label %bb.ec, !llvm.loop !94

Exa8_KissatAddClause.exit233.i:                   ; preds = %bb.ec, %.lr.ph310.i
  %i.aey = load ptr, ptr %i.vo, align 8, !tbaa !183
  call void @kissat_add(ptr noundef %i.aey, i32 noundef 0) #23
  %i.aez = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.afa = call i32 @kissat_is_inconsistent(ptr noundef %i.aez) #23
  %.not.i226.not.i = icmp eq i32 %i.afa, 0
  br i1 %.not.i226.not.i, label %bb.eb, label %Exa8_ManAddCnfStart.exit.thread

._crit_edge311.i:                                 ; preds = %bb.eb, %.preheader248.i
  %i.afb = getelementptr inbounds nuw i8, ptr %i.fg, i64 131408 ; 2 uses
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !172 ; 3 uses
  %.not.i141 = icmp eq ptr %i.afc, null
  br i1 %.not.i141, label %.loopexit360, label %.preheader.i142

.preheader.i142:                                  ; preds = %._crit_edge311.i
  %i.afd = getelementptr i8, ptr %i.afc, i64 4
  %.val316.i = load i32, ptr %i.afd, align 4, !tbaa !16
  %.not168317.i = icmp sgt i32 %.val316.i, 0
  br i1 %.not168317.i, label %.lr.ph319.i, label %.loopexit360

.lr.ph319.i:                                      ; preds = %.preheader.i142
  %i.afe = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %.promoted422.i = load i32, ptr %i.k, align 16
  br label %bb.ed

bb.ed:                                            ; preds = %.critedge3.i, %.lr.ph319.i
  %.lcssa421424.i = phi i32 [ %.promoted422.i, %.lr.ph319.i ], [ %.lcssa421423.i, %.critedge3.i ] ; 2 uses
  %i.aff = phi ptr [ %i.afc, %.lr.ph319.i ], [ %i.ago, %.critedge3.i ] ; 2 uses
  %indvars.iv376.i = phi i64 [ 0, %.lr.ph319.i ], [ %indvars.iv.next377.i, %.critedge3.i ] ; 3 uses
  %i.afg = getelementptr i8, ptr %i.aff, i64 8
  %.val185.i = load ptr, ptr %i.afg, align 8, !tbaa !15
  %i.afh = getelementptr inbounds nuw [16 x i8], ptr %.val185.i, i64 %indvars.iv376.i ; 2 uses
  %i.afi = getelementptr i8, ptr %i.afh, i64 4    ; 2 uses
  %.val187312.i = load i32, ptr %i.afi, align 4, !tbaa !19
  %i.afj = icmp sgt i32 %.val187312.i, 0
  br i1 %i.afj, label %.lr.ph315.i, label %.critedge3.i

.lr.ph315.i:                                      ; preds = %bb.ed
  %i.afk = getelementptr i8, ptr %i.afh, i64 8
  %i.afl = trunc nuw nsw i64 %indvars.iv376.i to i32
  br label %bb.ee

bb.ee:                                            ; preds = %bb.eh, %.lr.ph315.i
  %i.afm = phi i32 [ %.lcssa421424.i, %.lr.ph315.i ], [ %i.agl, %bb.eh ] ; 2 uses
  %indvars.iv373.i = phi i64 [ 0, %.lr.ph315.i ], [ %indvars.iv.next374.i, %bb.eh ] ; 3 uses
  %.val189.i = load ptr, ptr %i.afk, align 8, !tbaa !20
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %.val189.i, i64 %indvars.iv373.i
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !22 ; 3 uses
  %i.afp = icmp slt i32 %i.afo, 0
  br i1 %i.afp, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.afq = load i32, ptr %i.fi, align 8, !tbaa !165
  %i.afr = add nsw i32 %i.afq, %i.afl
  %i.afs = sext i32 %i.afr to i64
  %i.aft = getelementptr inbounds [2048 x i8], ptr %i.afe, i64 %i.afs
  %i.afu = load i32, ptr %i.fo, align 8, !tbaa !51
  %i.afv = trunc nuw nsw i64 %indvars.iv373.i to i32 ; 2 uses
  %i.afw = xor i32 %i.afv, -1
  %i.afx = add i32 %i.afu, %i.afw
  %i.afy = sext i32 %i.afx to i64
  %i.afz = getelementptr inbounds [256 x i8], ptr %i.aft, i64 %i.afy
  %i.aga = zext nneg i32 %i.afo to i64
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.afz, i64 %i.aga
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !22 ; 3 uses
  %i.agd = icmp eq i32 %i.agc, 0
  br i1 %i.agd, label %bb.eg, label %Exa8_KissatAddClause.exit240.i

bb.eg:                                            ; preds = %bb.ef
  %i.age = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.afo, i32 noundef %i.afv) ; 0 uses
  br label %bb.eh

Exa8_KissatAddClause.exit240.i:                   ; preds = %bb.ef
  %i.agf = shl nsw i32 %i.agc, 1                  ; 2 uses
  %i.agg = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.agh = add nsw i32 %i.agc, 1
  call void @kissat_add(ptr noundef %i.agg, i32 noundef %i.agh) #23
  %i.agi = load ptr, ptr %i.vo, align 8, !tbaa !183
  call void @kissat_add(ptr noundef %i.agi, i32 noundef 0) #23
  %i.agj = load ptr, ptr %i.vo, align 8, !tbaa !183
  %i.agk = call i32 @kissat_is_inconsistent(ptr noundef %i.agj) #23
  %.not.i239.not.i = icmp eq i32 %i.agk, 0
  br i1 %.not.i239.not.i, label %bb.eh, label %.critedge.loopexit.i

bb.eh:                                            ; preds = %Exa8_KissatAddClause.exit240.i, %bb.eg, %bb.ee
  %i.agl = phi i32 [ %i.agf, %Exa8_KissatAddClause.exit240.i ], [ %i.afm, %bb.ee ], [ %i.afm, %bb.eg ] ; 3 uses
  %indvars.iv.next374.i = add nuw nsw i64 %indvars.iv373.i, 1 ; 2 uses
  %.val187.i = load i32, ptr %i.afi, align 4, !tbaa !19
  %i.agm = sext i32 %.val187.i to i64
  %i.agn = icmp slt i64 %indvars.iv.next374.i, %i.agm
  br i1 %i.agn, label %bb.ee, label %.critedge3.loopexit.i, !llvm.loop !105

.critedge3.loopexit.i:                            ; preds = %bb.eh
  store i32 %i.agl, ptr %i.k, align 16
  %.pre386.i = load ptr, ptr %i.afb, align 8, !tbaa !172
  br label %.critedge3.i

.critedge3.i:                                     ; preds = %.critedge3.loopexit.i, %bb.ed
  %.lcssa421423.i = phi i32 [ %i.agl, %.critedge3.loopexit.i ], [ %.lcssa421424.i, %bb.ed ]
  %i.ago = phi ptr [ %.pre386.i, %.critedge3.loopexit.i ], [ %i.aff, %bb.ed ] ; 2 uses
  %indvars.iv.next377.i = add nuw nsw i64 %indvars.iv376.i, 1 ; 2 uses
  %i.agp = getelementptr i8, ptr %i.ago, i64 4
  %.val.i = load i32, ptr %i.agp, align 4, !tbaa !16
  %i.agq = sext i32 %.val.i to i64
  %.not168.i = icmp slt i64 %indvars.iv.next377.i, %i.agq
  br i1 %.not168.i, label %bb.ed, label %.loopexit360, !llvm.loop !106

.critedge.loopexit.i:                             ; preds = %Exa8_KissatAddClause.exit240.i
  store i32 %i.agf, ptr %i.k, align 16
  br label %Exa8_ManAddCnfStart.exit.thread

Exa8_ManAddCnfStart.exit.thread:                  ; preds = %Exa8_KissatAddClause.exit218.2.i, %Exa8_KissatAddClause.exit218.1.i, %.preheader261.i, %Exa8_KissatAddClause.exit225.i, %Exa8_KissatAddClause.exit.i, %Exa8_KissatAddClause.exit197.i, %Exa8_KissatAddClause.exit204.i, %Exa8_KissatAddClause.exit211.i, %Exa8_KissatAddClause.exit233.i, %.critedge.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  br label %.thread

.loopexit360:                                     ; preds = %.critedge3.i, %.preheader.i142, %._crit_edge311.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  %i.agr = load i32, ptr %i.fi, align 8, !tbaa !165 ; 2 uses
  %i.ags = shl nuw i32 1, %i.agr                  ; 2 uses
  %.not408 = icmp eq i32 %i.agr, 31
  br i1 %.not408, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit360
  %i.agt = getelementptr inbounds nuw i8, ptr %i.fg, i64 131144 ; 3 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %smax = call i32 @llvm.smax.i32(i32 %i.ags, i32 1) ; 2 uses
  br label %bb.ei

bb.ei:                                            ; preds = %.lr.ph, %.loopexit
  %.0407 = phi i32 [ 0, %.lr.ph ], [ %i.aot, %.loopexit ] ; 8 uses
  %i.agv = load ptr, ptr %i.fy, align 8, !tbaa !169
  %i.agw = lshr i32 %.0407, 6
  %i.agx = zext nneg i32 %i.agw to i64
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %i.agx
  %i.agz = load i64, ptr %i.agy, align 8, !tbaa !164
  %i.aha = and i32 %.0407, 63
  %i.ahb = zext nneg i32 %i.aha to i64
  %i.ahc = lshr i64 %i.agz, %i.ahb                ; 2 uses
  %i.ahd = load i32, ptr %i.fi, align 8, !tbaa !165 ; 5 uses
  %i.ahe = icmp sgt i32 %i.ahd, 0
  br i1 %i.ahe, label %.lr.ph.i163, label %.preheader153.i

.lr.ph.i163:                                      ; preds = %bb.ei
end_hunk_0
