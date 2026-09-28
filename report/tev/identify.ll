Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/identify?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN6LibRaw27identify_process_dng_fieldsEv:bb.a

bb.dm:                                            ; preds = %.lr.ph.2
  %i.yu = fdiv float 1.000000e+00, %i.yq
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 153260
  store float %i.yu, ptr %i.yv, align 4, !tbaa !86
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.lr.ph.2
  %exitcond697.not.2 = icmp eq i32 %i.yb, 3
  br i1 %exitcond697.not.2, label %.loopexit528, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.dn
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 187164
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !86 ; 2 uses
  %i.yy = call noundef float @llvm.fabs.f32(float %i.yx)
  %i.yz = fpext float %i.yy to double
  %i.za = fcmp ogt double %i.yz, 1.000000e-04
  br i1 %i.za, label %bb.do, label %.loopexit528

bb.do:                                            ; preds = %.lr.ph.3
  %i.zb = fdiv float 1.000000e+00, %i.yx
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float %i.zb, ptr %i.zc, align 8, !tbaa !86
  br label %.loopexit528

.loopexit528:                                     ; preds = %bb.dj, %bb.dl, %bb.dn, %bb.do, %.lr.ph.3, %bb.dh, %bb.dg, %bb.df
  %i.zd = and i32 %i.uz, 32
  %.not454 = icmp eq i32 %i.zd, 0
  br i1 %.not454, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %.loopexit528
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !231
  %i.zg = lshr i32 %i.zf, 5
  %i.zh = and i32 %i.zg, 1
  %sext456 = add nsw i32 %i.zh, -1
  br label %bb.dq

bb.dq:                                            ; preds = %.loopexit528, %bb.dp
  %i.zi = phi i32 [ %sext456, %bb.dp ], [ %i.s, %.loopexit528 ] ; 2 uses
  %i.zj = icmp sgt i32 %i.zi, -1
  br i1 %i.zj, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.zk = zext nneg i32 %i.zi to i64
  %i.zl = getelementptr inbounds nuw [33472 x i8], ptr %i.se, i64 %i.zk ; 4 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 33328
  %i.zn = load float, ptr %i.zm, align 8, !tbaa !239
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 187088
  store float %i.zn, ptr %i.zo, align 8, !tbaa !240
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zl, i64 16908
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !241
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 170668
  store i32 %i.zq, ptr %i.zr, align 4, !tbaa !242
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 154252
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zl, i64 492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16416) %i.zs, ptr noundef nonnull align 4 dereferenceable(16416) %i.zt, i64 16416, i1 false)
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 170672
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zl, i64 16912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %i.zu, ptr noundef nonnull align 8 dereferenceable(16416) %i.zv, i64 16416, i1 false)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.zw = icmp sgt i32 %i.v, -1
  br i1 %i.zw, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.zx = zext nneg i32 %i.v to i64
  %i.zy = getelementptr inbounds nuw [33472 x i8], ptr %i.se, i64 %i.zx
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 488
  %i.aaa = load i32, ptr %i.zz, align 8, !tbaa !231
  %i.aab = and i32 %i.aaa, 2048
  %.not457 = icmp eq i32 %i.aab, 0
  br i1 %.not457, label %bb.du, label %.thread509

bb.du:                                            ; preds = %bb.dt
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.aad = load i32, ptr %i.aac, align 8, !tbaa !231
  %i.aae = and i32 %i.aad, 2048
  %.not520 = icmp eq i32 %i.aae, 0
  br i1 %.not520, label %bb.dv, label %.thread509

.thread509:                                       ; preds = %bb.du, %bb.dt
  %i.aaf = phi i32 [ %i.v, %bb.dt ], [ 0, %bb.du ]
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw [33472 x i8], ptr %i.se, i64 %i.aag
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 33372
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !243
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 187132
  store i32 %i.aaj, ptr %i.aak, align 4, !tbaa !244
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.thread509, %bb.ds
  %i.aal = and i32 %i.uz, 128
  %.not460 = icmp eq i32 %i.aal, 0
  br i1 %.not460, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.aan = load i32, ptr %i.aam, align 8, !tbaa !231
  %i.aao = lshr i32 %i.aan, 7
  %i.aap = and i32 %i.aao, 1
  %sext462 = add nsw i32 %i.aap, -1
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dv, %bb.dw
  %i.aaq = phi i32 [ %sext462, %bb.dw ], [ %i.s, %bb.dv ] ; 2 uses
  %i.aar = icmp sgt i32 %i.aaq, -1
  br i1 %i.aar, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.aas = zext nneg i32 %i.aaq to i64
  %i.aat = getelementptr inbounds nuw [33472 x i8], ptr %i.se, i64 %i.aas
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 128
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !245
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 381768
  store i64 %i.aav, ptr %i.aaw, align 8, !tbaa !246
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.aax = and i32 %i.uz, 256
  %.not463 = icmp eq i32 %i.aax, 0
  br i1 %.not463, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.aaz = load i32, ptr %i.aay, align 8, !tbaa !231
  %i.aba = lshr i32 %i.aaz, 8
  %i.abb = and i32 %i.aba, 1
  %sext465 = add nsw i32 %i.abb, -1
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dz, %bb.ea
  %i.abc = phi i32 [ %sext465, %bb.ea ], [ %i.s, %bb.dz ] ; 2 uses
  %i.abd = icmp sgt i32 %i.abc, -1
  br i1 %i.abd, label %bb.ec, label %.thread510

bb.ec:                                            ; preds = %bb.eb
  %i.abe = zext nneg i32 %i.abc to i64
  %i.abf = getelementptr inbounds nuw [33472 x i8], ptr %i.se, i64 %i.abe ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 136
  %i.abh = load i64, ptr %i.abg, align 8, !tbaa !247 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abf, i64 144
  %i.abj = load i32, ptr %i.abi, align 8, !tbaa !248 ; 2 uses
  %i.abk = icmp sgt i64 %i.abh, -1
  %i.abl = icmp sgt i32 %i.abj, 0
  %or.cond13 = select i1 %i.abk, i1 %i.abl, i1 false
  br i1 %or.cond13, label %bb.ed, label %.thread510

bb.ed:                                            ; preds = %bb.ec
  %i.abm = load ptr, ptr %i.p, align 8, !tbaa !99 ; 2 uses
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !101
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 40
  %i.abp = load ptr, ptr %i.abo, align 8
  %i.abq = call noundef i64 %i.abp(ptr noundef nonnull align 8 dereferenceable(8) %i.abm)
  %i.abr = load ptr, ptr %i.p, align 8, !tbaa !99 ; 2 uses
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !101
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 32
  %i.abu = load ptr, ptr %i.abt, align 8
  %i.abv = call noundef i32 %i.abu(ptr noundef nonnull align 8 dereferenceable(8) %i.abr, i64 noundef %i.abh, i32 noundef 0) ; 0 uses
  call void @_ZN6LibRaw12linear_tableEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.abj)
  %i.abw = load ptr, ptr %i.p, align 8, !tbaa !99 ; 2 uses
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !101
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 32
  %i.abz = load ptr, ptr %i.aby, align 8
  %i.aca = call noundef i32 %i.abz(ptr noundef nonnull align 8 dereferenceable(8) %i.abw, i64 noundef %i.abq, i32 noundef 0) ; 0 uses
  br label %.thread510

.thread510:                                       ; preds = %bb.eb, %bb.ec, %bb.ed, %bb.b
  %i.acb = getelementptr inbounds nuw i8, ptr %0, i64 768416
  %.unpack = load i64, ptr %i.acb, align 8, !tbaa !103
  %.elt466 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  %.unpack467 = load i64, ptr %.elt466, align 8, !tbaa !103
  %i.acc = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw18lossy_dng_load_rawEv to i64)
  %i.acd = icmp eq i64 %.unpack467, 0
  %i.ace = and i1 %i.acc, %i.acd
  br i1 %i.ace, label %.loopexit.loopexit, label %bb.ee

.loopexit.loopexit:                               ; preds = %.thread510
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.acg = getelementptr inbounds nuw i8, ptr %0, i64 187092
  store <4 x i32> splat (i32 65535), ptr %i.acf, align 8, !tbaa !77
  store <4 x i32> splat (i32 65535), ptr %i.acg, align 4, !tbaa !77
  br label %.loopexit

bb.ee:                                            ; preds = %.thread510
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 187092
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !77
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ee
  %.sink822 = phi i64 [ 153112, %.loopexit.loopexit ], [ 153096, %bb.ee ]
  %.sink = phi i32 [ 65535, %.loopexit.loopexit ], [ %i.aci, %bb.ee ] ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 %.sink822
  store i32 %.sink, ptr %i.acj, align 8, !tbaa !77
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 170668
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !242 ; 6 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  store i32 %i.acl, ptr %i.acm, align 8, !tbaa !91
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 381832
  %i.aco = load i32, ptr %i.acn, align 8, !tbaa !116 ; 5 uses
  %i.acp = icmp eq i32 %i.aco, 2
  br i1 %i.acp, label %bb.ef, label %bb.ey

bb.ef:                                            ; preds = %.loopexit
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 154252 ; 5 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 154260
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !77 ; 2 uses
  %.not468 = icmp eq i32 %i.acs, 0
  br i1 %.not468, label %bb.eg, label %bb.el

bb.eg:                                            ; preds = %bb.ef
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 154264
  %i.acu = load i32, ptr %i.act, align 8, !tbaa !77
  %.not469 = icmp eq i32 %i.acu, 0
  br i1 %.not469, label %bb.eh, label %bb.el

bb.eh:                                            ; preds = %bb.eg
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 154268 ; 2 uses
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !77
  %i.acx = icmp eq i32 %i.acw, 1
  br i1 %i.acx, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %bb.eh
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 154272 ; 2 uses
  %i.acz = load i32, ptr %i.acy, align 8, !tbaa !77
  %i.ada = icmp eq i32 %i.acz, 1
  br i1 %i.ada, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %bb.ei
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 170664
  %i.adc = load i32, ptr %i.adb, align 8, !tbaa !77
  %i.add = icmp eq i32 %i.adc, 2
  br i1 %i.add, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 5556
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !106
  %i.adg = zext i32 %i.adf to i64
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %i.adg
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !77 ; 2 uses
  store i32 %i.adi, ptr %i.acm, align 8, !tbaa !91
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 154256
  store i32 0, ptr %i.adj, align 8, !tbaa !77
  store i32 0, ptr %i.acq, align 4, !tbaa !77
  store i32 0, ptr %i.acy, align 8, !tbaa !77
  store i32 0, ptr %i.acv, align 4, !tbaa !77
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 170672
  store <2 x float> zeroinitializer, ptr %i.adk, align 8, !tbaa !86
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 170688
  store <2 x float> zeroinitializer, ptr %i.adl, align 8, !tbaa !86
  br label %.thread515

bb.el:                                            ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 154268 ; 2 uses
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !77 ; 3 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 154272 ; 2 uses
  %i.adp = load i32, ptr %i.ado, align 8, !tbaa !77 ; 3 uses
  %i.adq = shl i32 %i.adn, 1
  %i.adr = mul i32 %i.adq, %i.adp
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 170664
  %i.adt = load i32, ptr %i.ads, align 8, !tbaa !77
  %i.adu = icmp eq i32 %i.adr, %i.adt
  br i1 %i.adu, label %bb.em, label %.thread515

bb.em:                                            ; preds = %bb.el
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.adw = load i32, ptr %i.adv, align 8, !tbaa !78 ; 8 uses
  %i.adx = icmp ugt i32 %i.adw, 999
  br i1 %i.adx, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  %i.ady = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !95
  %i.aea = icmp eq i32 %i.adz, 3
  br i1 %i.aea, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.aeb = lshr i32 %i.adw, 2
  %i.aec = and i32 %i.aeb, 572662306
  %i.aed = shl i32 %i.adw, 2
  %i.aee = and i32 %i.aed, -2004318072
  %i.aef = or disjoint i32 %i.aec, %i.aee
  %i.aeg = shl i32 %i.adw, 1
  %i.aeh = and i32 %i.aef, %i.aeg
  %i.aei = or i32 %i.aeh, %i.adw                  ; 2 uses
  store i32 %i.aei, ptr %i.adv, align 8, !tbaa !78
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %bb.em
  %i.aej = phi i32 [ %i.aei, %bb.eo ], [ %i.adw, %bb.en ], [ %i.adw, %bb.em ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.aek = icmp ne i32 %i.adn, 0
  %i.ael = icmp ne i32 %i.adp, 0
  %or.cond628 = and i1 %i.aek, %i.ael
  br i1 %or.cond628, label %.preheader524.lr.ph.split, label %.preheader523.thread

.preheader524.lr.ph.split:                        ; preds = %bb.ep
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 5556
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !106
  %i.aeo = add i32 %i.aen, 6
  br label %.preheader524

.preheader524:                                    ; preds = %.preheader524.lr.ph.split, %._crit_edge605
  %.0338608 = phi i32 [ 0, %.preheader524.lr.ph.split ], [ %i.aer, %._crit_edge605 ] ; 2 uses
  %.0339607 = phi i32 [ %i.aeo, %.preheader524.lr.ph.split ], [ %i.afh, %._crit_edge605 ]
  %i.aep = shl i32 %.0338608, 1
  %i.aeq = and i32 %i.aep, 14
  br label %bb.eq

.preheader523:                                    ; preds = %._crit_edge605
  %.pre742 = load i32, ptr %i.e, align 16, !tbaa !77 ; 2 uses
  %.not477 = icmp eq i32 %.pre742, 0
  br i1 %.not477, label %.preheader523.thread, label %bb.er

._crit_edge605:                                   ; preds = %bb.eq
  %i.aer = add nuw i32 %.0338608, 1               ; 2 uses
  %exitcond718.not = icmp eq i32 %i.aer, %i.adn
  br i1 %exitcond718.not, label %.preheader523, label %.preheader524, !llvm.loop !224

bb.eq:                                            ; preds = %.preheader524, %bb.eq
  %.0337603 = phi i32 [ 0, %.preheader524 ], [ %i.afi, %bb.eq ] ; 2 uses
  %.1340602 = phi i32 [ %.0339607, %.preheader524 ], [ %i.afh, %bb.eq ] ; 2 uses
  %i.aes = sext i32 %.1340602 to i64
  %i.aet = getelementptr inbounds [4 x i8], ptr %i.acq, i64 %i.aes
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !77
  %i.aev = and i32 %.0337603, 1
  %i.aew = or disjoint i32 %i.aev, %i.aeq
  %i.aex = shl nuw nsw i32 %i.aew, 1
  %i.aey = lshr i32 %i.aej, %i.aex
  %i.aez = and i32 %i.aey, 3
  %i.afa = zext nneg i32 %i.aez to i64            ; 2 uses
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.afa ; 2 uses
  %i.afc = load i32, ptr %i.afb, align 4, !tbaa !77
  %i.afd = add i32 %i.afc, %i.aeu
  store i32 %i.afd, ptr %i.afb, align 4, !tbaa !77
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.afa ; 2 uses
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !77
  %i.afg = add nsw i32 %i.aff, 1
  store i32 %i.afg, ptr %i.afe, align 4, !tbaa !77
  %i.afh = add i32 %.1340602, 2                   ; 2 uses
  %i.afi = add nuw i32 %.0337603, 1               ; 2 uses
  %exitcond717.not = icmp eq i32 %i.afi, %i.adp
  br i1 %exitcond717.not, label %._crit_edge605, label %bb.eq, !llvm.loop !225

bb.er:                                            ; preds = %.preheader523
  %i.afj = load i32, ptr %i.d, align 16, !tbaa !77
  %i.afk = sdiv i32 %i.afj, %.pre742
  %i.afl = load i32, ptr %i.acq, align 4, !tbaa !77
  %i.afm = add i32 %i.afl, %i.afk
  store i32 %i.afm, ptr %i.acq, align 4, !tbaa !77
  br label %.preheader523.thread

.preheader523.thread:                             ; preds = %bb.ep, %.preheader523, %bb.er
  %i.afn = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !77 ; 2 uses
  %.not477.1 = icmp eq i32 %i.afo, 0
  br i1 %.not477.1, label %bb.et, label %bb.es

bb.es:                                            ; preds = %.preheader523.thread
  %i.afp = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !77
  %i.afr = sdiv i32 %i.afq, %i.afo
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 154256 ; 2 uses
  %i.aft = load i32, ptr %i.afs, align 8, !tbaa !77
  %i.afu = add i32 %i.aft, %i.afr
  store i32 %i.afu, ptr %i.afs, align 8, !tbaa !77
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %.preheader523.thread
  %i.afv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.afw = load i32, ptr %i.afv, align 8, !tbaa !77 ; 2 uses
  %.not477.2 = icmp eq i32 %i.afw, 0
  br i1 %.not477.2, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.afx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.afy = load i32, ptr %i.afx, align 8, !tbaa !77
  %i.afz = sdiv i32 %i.afy, %i.afw
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 154260
  %i.agb = add i32 %i.acs, %i.afz
  store i32 %i.agb, ptr %i.aga, align 4, !tbaa !77
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.agc = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !77 ; 2 uses
  %.not477.3 = icmp eq i32 %i.agd, 0
  br i1 %.not477.3, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.age = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !77
  %i.agg = sdiv i32 %i.agf, %i.agd
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 154264 ; 2 uses
  %i.agi = load i32, ptr %i.agh, align 8, !tbaa !77
  %i.agj = add i32 %i.agi, %i.agg
  store i32 %i.agj, ptr %i.agh, align 8, !tbaa !77
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  store i32 0, ptr %i.ado, align 8, !tbaa !77
  store i32 0, ptr %i.adm, align 4, !tbaa !77
  store i32 %i.adw, ptr %i.adv, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %.thread515

bb.ey:                                            ; preds = %.loopexit
  %i.agk = add i32 %i.aco, -3
  %or.cond505 = icmp ult i32 %i.agk, 2
  br i1 %or.cond505, label %bb.ez, label %.thread515

bb.ez:                                            ; preds = %bb.ey
  %i.agl = getelementptr inbounds nuw i8, ptr %0, i64 154252 ; 6 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %0, i64 154268 ; 2 uses
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !77 ; 3 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %0, i64 154272 ; 2 uses
  %i.agp = load i32, ptr %i.ago, align 8, !tbaa !77 ; 3 uses
  %i.agq = mul i32 %i.agn, %i.aco
  %i.agr = mul i32 %i.agq, %i.agp
  %i.ags = getelementptr inbounds nuw i8, ptr %0, i64 170664
  %i.agt = load i32, ptr %i.ags, align 8, !tbaa !77
  %i.agu = icmp eq i32 %i.agr, %i.agt
  br i1 %i.agu, label %bb.fa, label %.thread515

bb.fa:                                            ; preds = %bb.ez
  %.not629 = icmp eq i32 %i.agn, 0
  %.not630 = icmp eq i32 %i.agp, 0
  %or.cond809 = or i1 %.not629, %.not630
  br i1 %or.cond809, label %.preheader525.thread, label %.preheader527.us.preheader

.preheader527.us.preheader:                       ; preds = %bb.fa
  %exitcond710.not = icmp eq i32 %i.aco, 1
  %exitcond710.not.2 = icmp eq i32 %i.aco, 3
  br label %.preheader527.us

.preheader527.us:                                 ; preds = %.preheader527.us.preheader, %._crit_edge595.split.us.us
  %.sroa.0853.0 = phi i32 [ 0, %.preheader527.us.preheader ], [ %i.agx, %._crit_edge595.split.us.us ]
  %.sroa.6855.0 = phi i32 [ 0, %.preheader527.us.preheader ], [ %.sroa.6855.2, %._crit_edge595.split.us.us ]
  %.sroa.9857.0 = phi i32 [ 0, %.preheader527.us.preheader ], [ %.sroa.9857.2, %._crit_edge595.split.us.us ]
  %.sroa.12859.0 = phi i32 [ 0, %.preheader527.us.preheader ], [ %.sroa.12859.2, %._crit_edge595.split.us.us ]
  %.sroa.0.0 = phi i32 [ 0, %.preheader527.us.preheader ], [ %i.agy, %._crit_edge595.split.us.us ]
  %.sroa.6.0 = phi i32 [ 0, %.preheader527.us.preheader ], [ %.sroa.6.2, %._crit_edge595.split.us.us ]
  %.sroa.9.0 = phi i32 [ 0, %.preheader527.us.preheader ], [ %.sroa.9.2, %._crit_edge595.split.us.us ]
  %.sroa.12.0 = phi i32 [ 0, %.preheader527.us.preheader ], [ %.sroa.12.2, %._crit_edge595.split.us.us ]
  %.0333598.us = phi i32 [ 0, %.preheader527.us.preheader ], [ %i.ahe, %._crit_edge595.split.us.us ]
  %.0334597.us = phi i64 [ 6, %.preheader527.us.preheader ], [ %indvars.iv.next705.lcssa, %._crit_edge595.split.us.us ]
  br label %.preheader526.us.us

.preheader526.us.us:                              ; preds = %._crit_edge591.us.us, %.preheader527.us
  %.sroa.0853.1 = phi i32 [ %.sroa.0853.0, %.preheader527.us ], [ %i.agx, %._crit_edge591.us.us ]
  %.sroa.6855.1 = phi i32 [ %.sroa.6855.0, %.preheader527.us ], [ %.sroa.6855.2, %._crit_edge591.us.us ] ; 2 uses
  %.sroa.9857.1 = phi i32 [ %.sroa.9857.0, %.preheader527.us ], [ %.sroa.9857.2, %._crit_edge591.us.us ] ; 2 uses
  %.sroa.12859.1 = phi i32 [ %.sroa.12859.0, %.preheader527.us ], [ %.sroa.12859.2, %._crit_edge591.us.us ] ; 3 uses
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %.preheader527.us ], [ %i.agy, %._crit_edge591.us.us ]
  %.sroa.6.1 = phi i32 [ %.sroa.6.0, %.preheader527.us ], [ %.sroa.6.2, %._crit_edge591.us.us ] ; 2 uses
  %.sroa.9.1 = phi i32 [ %.sroa.9.0, %.preheader527.us ], [ %.sroa.9.2, %._crit_edge591.us.us ] ; 2 uses
  %.sroa.12.1 = phi i32 [ %.sroa.12.0, %.preheader527.us ], [ %.sroa.12.2, %._crit_edge591.us.us ] ; 3 uses
  %.0332594.us.us = phi i32 [ 0, %.preheader527.us ], [ %i.ahd, %._crit_edge591.us.us ]
  %.1335593.us.us = phi i64 [ %.0334597.us, %.preheader527.us ], [ %indvars.iv.next705.lcssa, %._crit_edge591.us.us ] ; 5 uses
  %i.agv = getelementptr inbounds [4 x i8], ptr %i.agl, i64 %.1335593.us.us
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !77
  %i.agx = add i32 %.sroa.0853.1, %i.agw          ; 3 uses
  %i.agy = add nsw i32 %.sroa.0.1, 1              ; 4 uses
  %indvars.iv.next705 = add nsw i64 %.1335593.us.us, 1 ; 2 uses
  br i1 %exitcond710.not, label %._crit_edge591.us.us, label %1

1:                                                ; preds = %.preheader526.us.us
  %2 = getelementptr inbounds [4 x i8], ptr %i.agl, i64 %indvars.iv.next705
  %3 = load i32, ptr %2, align 4, !tbaa !77
  %4 = add i32 %.sroa.6855.1, %3                  ; 2 uses
  %5 = add nsw i32 %.sroa.6.1, 1                  ; 2 uses
  %6 = getelementptr [4 x i8], ptr %i.agl, i64 %.1335593.us.us
  %7 = getelementptr i8, ptr %6, i64 8
  %8 = load i32, ptr %7, align 4, !tbaa !77
  %9 = add i32 %.sroa.9857.1, %8                  ; 2 uses
  %10 = add nsw i32 %.sroa.9.1, 1                 ; 2 uses
  %indvars.iv.next705.2 = add nsw i64 %.1335593.us.us, 3 ; 2 uses
  br i1 %exitcond710.not.2, label %._crit_edge591.us.us, label %bb.fb

bb.fb:                                            ; preds = %1
  %i.agz = getelementptr inbounds [4 x i8], ptr %i.agl, i64 %indvars.iv.next705.2
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !77
  %i.ahb = add i32 %.sroa.12859.1, %i.aha
  %i.ahc = add nsw i32 %.sroa.12.1, 1
  %indvars.iv.next705.3 = add nsw i64 %.1335593.us.us, 4
  br label %._crit_edge591.us.us

._crit_edge591.us.us:                             ; preds = %bb.fb, %1, %.preheader526.us.us
  %.sroa.6855.2 = phi i32 [ %.sroa.6855.1, %.preheader526.us.us ], [ %4, %bb.fb ], [ %4, %1 ] ; 4 uses
  %.sroa.9857.2 = phi i32 [ %.sroa.9857.1, %.preheader526.us.us ], [ %9, %bb.fb ], [ %9, %1 ] ; 4 uses
  %.sroa.12859.2 = phi i32 [ %.sroa.12859.1, %.preheader526.us.us ], [ %i.ahb, %bb.fb ], [ %.sroa.12859.1, %1 ] ; 4 uses
  %.sroa.6.2 = phi i32 [ %.sroa.6.1, %.preheader526.us.us ], [ %5, %bb.fb ], [ %5, %1 ] ; 4 uses
  %.sroa.9.2 = phi i32 [ %.sroa.9.1, %.preheader526.us.us ], [ %10, %bb.fb ], [ %10, %1 ] ; 4 uses
  %.sroa.12.2 = phi i32 [ %.sroa.12.1, %.preheader526.us.us ], [ %i.ahc, %bb.fb ], [ %.sroa.12.1, %1 ] ; 4 uses
  %indvars.iv.next705.lcssa = phi i64 [ %indvars.iv.next705, %.preheader526.us.us ], [ %indvars.iv.next705.3, %bb.fb ], [ %indvars.iv.next705.2, %1 ] ; 2 uses
  %i.ahd = add nuw i32 %.0332594.us.us, 1         ; 2 uses
  %exitcond711.not = icmp eq i32 %i.ahd, %i.agp
  br i1 %exitcond711.not, label %._crit_edge595.split.us.us, label %.preheader526.us.us, !llvm.loop !226

._crit_edge595.split.us.us:                       ; preds = %._crit_edge591.us.us
  %i.ahe = add nuw i32 %.0333598.us, 1            ; 2 uses
  %exitcond712.not = icmp eq i32 %i.ahe, %i.agn
  br i1 %exitcond712.not, label %.preheader525, label %.preheader527.us, !llvm.loop !227

.preheader525:                                    ; preds = %._crit_edge595.split.us.us
  %.not470 = icmp eq i32 %i.agy, 0
  br i1 %.not470, label %.preheader525.thread, label %bb.fc

bb.fc:                                            ; preds = %.preheader525
  %i.ahf = sdiv i32 %i.agx, %i.agy
  %i.ahg = load i32, ptr %i.agl, align 4, !tbaa !77
  %i.ahh = add i32 %i.ahg, %i.ahf
  store i32 %i.ahh, ptr %i.agl, align 4, !tbaa !77
  br label %.preheader525.thread

.preheader525.thread:                             ; preds = %bb.fa, %.preheader525, %bb.fc
  %.sroa.6855.3 = phi i32 [ 0, %bb.fa ], [ %.sroa.6855.2, %.preheader525 ], [ %.sroa.6855.2, %bb.fc ]
  %.sroa.9857.3 = phi i32 [ 0, %bb.fa ], [ %.sroa.9857.2, %.preheader525 ], [ %.sroa.9857.2, %bb.fc ]
  %.sroa.12859.3 = phi i32 [ 0, %bb.fa ], [ %.sroa.12859.2, %.preheader525 ], [ %.sroa.12859.2, %bb.fc ]
  %.sroa.6.3 = phi i32 [ 0, %bb.fa ], [ %.sroa.6.2, %.preheader525 ], [ %.sroa.6.2, %bb.fc ] ; 2 uses
  %.sroa.9.3 = phi i32 [ 0, %bb.fa ], [ %.sroa.9.2, %.preheader525 ], [ %.sroa.9.2, %bb.fc ] ; 2 uses
  %.sroa.12.3 = phi i32 [ 0, %bb.fa ], [ %.sroa.12.2, %.preheader525 ], [ %.sroa.12.2, %bb.fc ] ; 2 uses
  %.not470.1 = icmp eq i32 %.sroa.6.3, 0
  br i1 %.not470.1, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %.preheader525.thread
  %i.ahi = sdiv i32 %.sroa.6855.3, %.sroa.6.3
  %i.ahj = getelementptr inbounds nuw i8, ptr %0, i64 154256 ; 2 uses
  %i.ahk = load i32, ptr %i.ahj, align 8, !tbaa !77
  %i.ahl = add i32 %i.ahk, %i.ahi
  store i32 %i.ahl, ptr %i.ahj, align 8, !tbaa !77
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %.preheader525.thread
  %.not470.2 = icmp eq i32 %.sroa.9.3, 0
  br i1 %.not470.2, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ahm = sdiv i32 %.sroa.9857.3, %.sroa.9.3
  %i.ahn = getelementptr inbounds nuw i8, ptr %0, i64 154260 ; 2 uses
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !77
  %i.ahp = add i32 %i.aho, %i.ahm
  store i32 %i.ahp, ptr %i.ahn, align 4, !tbaa !77
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.not470.3 = icmp eq i32 %.sroa.12.3, 0
  br i1 %.not470.3, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ahq = sdiv i32 %.sroa.12859.3, %.sroa.12.3
  %i.ahr = getelementptr inbounds nuw i8, ptr %0, i64 154264 ; 2 uses
  %i.ahs = load i32, ptr %i.ahr, align 8, !tbaa !77
  %i.aht = add i32 %i.ahs, %i.ahq
  store i32 %i.aht, ptr %i.ahr, align 8, !tbaa !77
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  store i32 0, ptr %i.ago, align 8, !tbaa !77
  store i32 0, ptr %i.agm, align 4, !tbaa !77
  br label %.thread515

.thread515:                                       ; preds = %bb.el, %bb.ex, %bb.fi, %bb.ez, %bb.ey, %bb.ek
  %i.ahu = phi i32 [ %i.acl, %bb.el ], [ %i.acl, %bb.ex ], [ %i.acl, %bb.fi ], [ %i.acl, %bb.ez ], [ %i.acl, %bb.ey ], [ %i.adi, %bb.ek ]
  %i.ahv = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 4 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 154252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %i.ahv, ptr noundef nonnull align 4 dereferenceable(16416) %i.ahw, i64 16416, i1 false)
  %i.ahx = load i32, ptr %i.w, align 8, !tbaa !84
  %i.ahy = icmp slt i32 %i.s, %i.ahx
  %or.cond15 = and i1 %i.z, %i.ahy
  br i1 %or.cond15, label %bb.fj, label %bb.fr

bb.fj:                                            ; preds = %.thread515
  %i.ahz = getelementptr inbounds nuw i8, ptr %0, i64 433512 ; 2 uses
  %i.aia = zext nneg i32 %i.s to i64
  %i.aib = getelementptr inbounds nuw [33472 x i8], ptr %i.ahz, i64 %i.aia
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 488
  %i.aid = load i32, ptr %i.aic, align 8, !tbaa !231
  %i.aie = and i32 %i.aid, 16384
  %.not471 = icmp eq i32 %i.aie, 0
  br i1 %.not471, label %bb.fk, label %.thread517

bb.fk:                                            ; preds = %bb.fj
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.aig = load i32, ptr %i.aif, align 8, !tbaa !231
  %i.aih = and i32 %i.aig, 16384
  %.not521 = icmp eq i32 %i.aih, 0
  br i1 %.not521, label %bb.fr, label %.thread517

.thread517:                                       ; preds = %bb.fk, %bb.fj
  %i.aii = phi i32 [ %i.s, %bb.fj ], [ 0, %bb.fk ]
  %i.aij = zext nneg i32 %i.aii to i64
  %i.aik = getelementptr inbounds nuw [33472 x i8], ptr %i.ahz, i64 %i.aij
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 33412
  %i.aim = load float, ptr %i.ail, align 4, !tbaa !249 ; 4 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %0, i64 187172
  store float %i.aim, ptr %i.ain, align 4, !tbaa !250
  %i.aio = fpext float %i.aim to double
  %i.aip = fcmp ule double %i.aio, 1.000000e-01
  %i.aiq = fcmp ugt float %i.aim, 1.000000e+00
  %or.cond506 = or i1 %i.aiq, %i.aip
  br i1 %or.cond506, label %bb.fr, label %.preheader522

.preheader522:                                    ; preds = %.thread517
  %i.air = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !95 ; 8 uses
  %i.ait = icmp sgt i32 %i.ais, 0                 ; 2 uses
  br i1 %i.ait, label %.lr.ph614, label %._crit_edge615

._crit_edge615:                                   ; preds = %.lr.ph614, %.lr.ph614.1, %.lr.ph614.2, %.lr.ph614.3, %.preheader522
  %.0329.lcssa = phi i32 [ 0, %.preheader522 ], [ %i.ajj, %.lr.ph614 ], [ %i.ajm, %.lr.ph614.1 ], [ %i.ajp, %.lr.ph614.2 ], [ %i.ajs, %.lr.ph614.3 ]
  %i.aiu = call i32 @llvm.smax.i32(i32 %i.ais, i32 1)
  %i.aiv = call i32 @llvm.umin.i32(i32 %i.aiu, i32 4)
  %i.aiw = sdiv i32 %.0329.lcssa, %i.aiv
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 136688
  %i.aiy = load i32, ptr %i.aix, align 8, !tbaa !77
  %i.aiz = getelementptr inbounds nuw i8, ptr %0, i64 136692
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !77
  %i.ajb = mul i32 %i.aja, %i.aiy                 ; 3 uses
  %.not474 = icmp eq i32 %i.ajb, 0
  br i1 %.not474, label %bb.fl, label %.preheader

.preheader:                                       ; preds = %._crit_edge615
  %invariant.umin618 = call i32 @llvm.umin.i32(i32 %i.ajb, i32 4096) ; 2 uses
  %wide.trip.count733 = zext nneg i32 %invariant.umin618 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ajb, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %wide.trip.count733, 8184      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ajf, %vector.body ]
  %vec.phi816 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ajg, %vector.body ]
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %index ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 24
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajc, i64 40
  %wide.load = load <4 x i32>, ptr %i.ajd, align 8, !tbaa !77
  %wide.load817 = load <4 x i32>, ptr %i.aje, align 8, !tbaa !77
  %i.ajf = add <4 x i32> %wide.load, %vec.phi     ; 2 uses
  %i.ajg = add <4 x i32> %wide.load817, %vec.phi816 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ajh = icmp eq i64 %index.next, %n.vec
  br i1 %i.ajh, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ajg, %i.ajf
  %i.aji = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count733
  br i1 %cmp.n, label %.critedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv728.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  %.0328619.ph = phi i32 [ 0, %.preheader ], [ %i.aji, %middle.block ]
  br label %scalar.ph

.lr.ph614:                                        ; preds = %.preheader522
  %i.ajj = load i32, ptr %i.ahv, align 8, !tbaa !77 ; 2 uses
  %exitcond727.not = icmp eq i32 %i.ais, 1
  br i1 %exitcond727.not, label %._crit_edge615, label %.lr.ph614.1

.lr.ph614.1:                                      ; preds = %.lr.ph614
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !77
  %i.ajm = add i32 %i.ajl, %i.ajj                 ; 2 uses
  %exitcond727.not.1 = icmp eq i32 %i.ais, 2
  br i1 %exitcond727.not.1, label %._crit_edge615, label %.lr.ph614.2

.lr.ph614.2:                                      ; preds = %.lr.ph614.1
  %i.ajn = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.ajo = load i32, ptr %i.ajn, align 8, !tbaa !77
  %i.ajp = add i32 %i.ajo, %i.ajm                 ; 2 uses
  %exitcond727.not.2 = icmp eq i32 %i.ais, 3
  br i1 %exitcond727.not.2, label %._crit_edge615, label %.lr.ph614.3

.lr.ph614.3:                                      ; preds = %.lr.ph614.2
  %i.ajq = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !77
  %i.ajs = add i32 %i.ajr, %i.ajp
  br label %._crit_edge615

.critedge:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.aji, %middle.block ], [ %i.ajx, %scalar.ph ]
  %i.ajt = udiv i32 %.lcssa, %invariant.umin618
  br label %bb.fl

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv728 = phi i64 [ %indvars.iv.next729, %scalar.ph ], [ %indvars.iv728.ph, %scalar.ph.preheader ] ; 2 uses
  %.0328619 = phi i32 [ %i.ajx, %scalar.ph ], [ %.0328619.ph, %scalar.ph.preheader ]
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %indvars.iv728
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 24
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !77
  %i.ajx = add i32 %i.ajw, %.0328619              ; 2 uses
  %indvars.iv.next729 = add nuw nsw i64 %indvars.iv728, 1 ; 2 uses
  %exitcond734.not = icmp eq i64 %indvars.iv.next729, %wide.trip.count733
  br i1 %exitcond734.not, label %.critedge, label %scalar.ph, !llvm.loop !229

bb.fl:                                            ; preds = %.critedge, %._crit_edge615
  %.1 = phi i32 [ %i.ajt, %.critedge ], [ 0, %._crit_edge615 ]
  br i1 %i.ait, label %.lr.ph626, label %._crit_edge627

.lr.ph626:                                        ; preds = %bb.fl
  %i.ajy = add i32 %.1, %i.aiw
  %i.ajz = add i32 %i.ajy, %i.ahu                 ; 2 uses
  %i.aka = sub i32 %.sink, %i.ajz
  %i.akb = uitofp i32 %i.aka to float
  %i.akc = sitofp i32 %i.ajz to float
  %i.akd = call float @llvm.fmuladd.f32(float %i.akb, float %i.aim, float %i.akc)
  %i.ake = fptoui float %i.akd to i32             ; 4 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 153100
  store i32 %i.ake, ptr %i.akf, align 4, !tbaa !77
  %exitcond739.not = icmp eq i32 %i.ais, 1
  br i1 %exitcond739.not, label %._crit_edge627, label %bb.fm

._crit_edge627:                                   ; preds = %.lr.ph626, %bb.fm, %bb.fn, %bb.fo, %bb.fl
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 153104
  %i.akh = load i32, ptr %i.akg, align 8, !tbaa !77 ; 2 uses
  %.not475 = icmp eq i32 %i.akh, 0
  br i1 %.not475, label %bb.fr, label %bb.fp
end_hunk_0
