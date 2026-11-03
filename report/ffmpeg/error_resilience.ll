Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/error_resilience?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ff_er_frame_end:bb.a
  %reass.add = add i32 %i.yp, %.3589855
  %reass.mul = shl i32 %reass.add, 1
  %i.yq = load i64, ptr %i.xw, align 8, !tbaa !21
  %i.yr = trunc i64 %i.yq to i32
  %i.ys = mul i32 %.2594858, %i.yr
  %i.yt = add i32 %i.ys, %.3589855
  %i.yu = load ptr, ptr %i.xx, align 8, !tbaa !65
  %i.yv = sext i32 %i.yt to i64                   ; 2 uses
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.yu, i64 %i.yv
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !47
  %i.yy = load ptr, ptr %i.fb, align 8, !tbaa !22
  %i.yz = getelementptr inbounds i8, ptr %i.yy, i64 %i.yv
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !43
  %i.zb = and i32 %i.yx, 7
  %.not670 = icmp ne i32 %i.zb, 0
  %i.zc = and i8 %i.za, 10
  %i.zd = icmp ne i8 %i.zc, 10
  %or.cond731 = select i1 %.not670, i1 true, i1 %i.zd
  br i1 %or.cond731, label %bb.dg, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph856
  %i.ze = load ptr, ptr %i.bq, align 8, !tbaa !55 ; 2 uses
  %.not673 = icmp eq ptr %i.ze, null
  br i1 %.not673, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !63
  %.not674 = icmp eq ptr %i.zf, null
  br i1 %.not674, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.0567 = phi i32 [ 3, %bb.cv ], [ 2, %bb.cw ]   ; 2 uses
  %i.zg = load ptr, ptr %i.cf, align 8, !tbaa !61 ; 2 uses
  %.not675 = icmp eq ptr %i.zg, null
  br i1 %.not675, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !63
  %.not676 = icmp eq ptr %i.zh, null
  br i1 %.not676, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.zi = and i32 %.0567, 1
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.1568 = phi i32 [ %.0567, %bb.cy ], [ %i.zi, %bb.cz ]
  %i.zj = load i16, ptr %i.xy, align 8, !tbaa !124 ; 2 uses
  %.not677 = icmp eq i16 %i.zj, 0
  br i1 %.not677, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.zk = load ptr, ptr %0, align 8, !tbaa !24
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 24
  %i.zm = load i32, ptr %i.zl, align 8, !tbaa !54
  %.not678 = icmp eq i32 %i.zm, 27
  br i1 %.not678, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 1219) #10
  tail call void @abort() #11
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.zn = load i16, ptr %i.xz, align 2, !tbaa !125
  %i.zo = zext i16 %i.zn to i32                   ; 3 uses
  %i.zp = zext i16 %i.zj to i32                   ; 2 uses
  %i.zq = load ptr, ptr %i.ya, align 8, !tbaa !126
  tail call void @ff_thread_progress_await(ptr noundef %i.zq, i32 noundef %.2594858) #10
  %i.zr = load ptr, ptr %i.yb, align 8, !tbaa !62
  %i.zs = sext i32 %reass.mul to i64
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %i.zs ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 2
  %i.zv = sub nsw i32 %i.zo, %i.zp                ; 2 uses
  %i.zw = load i16, ptr %i.zt, align 2, !tbaa !67
  %i.zx = sext i16 %i.zw to i32                   ; 2 uses
  %i.zy = mul nsw i32 %i.zx, %i.zo
  %i.zz = load i16, ptr %i.zu, align 2, !tbaa !67
  %i.aaa = sext i16 %i.zz to i32                  ; 2 uses
  %i.aab = mul nsw i32 %i.aaa, %i.zo
  %i.aac = mul nsw i32 %i.zv, %i.zx
  %i.aad = mul nsw i32 %i.zv, %i.aaa
  %i.aae = insertelement <4 x i32> poison, i32 %i.zy, i64 0
  %i.aaf = insertelement <4 x i32> %i.aae, i32 %i.aac, i64 1
  %i.aag = insertelement <4 x i32> %i.aaf, i32 %i.aab, i64 2
  %i.aah = insertelement <4 x i32> %i.aag, i32 %i.aad, i64 3
  %i.aai = insertelement <4 x i32> poison, i32 %i.zp, i64 0
  %i.aaj = shufflevector <4 x i32> %i.aai, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aak = sdiv <4 x i32> %i.aah, %i.aaj          ; 3 uses
  %i.aal = shufflevector <4 x i32> %i.aak, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  store <2 x i32> %i.aal, ptr %i.yc, align 8, !tbaa !47
  %i.aam = extractelement <4 x i32> %i.aak, i64 1
  store i32 %i.aam, ptr %i.ye, align 8, !tbaa !47
  %i.aan = extractelement <4 x i32> %i.aak, i64 3
  br label %bb.df

bb.de:                                            ; preds = %bb.da
  store i32 0, ptr %i.yc, align 8, !tbaa !47
  store i32 0, ptr %i.yd, align 4, !tbaa !47
  store i32 0, ptr %i.ye, align 8, !tbaa !47
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %storemerge = phi i32 [ %i.aan, %bb.dd ], [ 0, %bb.de ]
  store i32 %storemerge, ptr %i.yf, align 4, !tbaa !47
  %i.aao = load ptr, ptr %i.yg, align 8, !tbaa !68
  %i.aap = load ptr, ptr %i.yh, align 8, !tbaa !69
  tail call void %i.aao(ptr noundef %i.aap, i32 noundef 0, i32 noundef %.1568, i32 noundef 0, ptr noundef nonnull %i.yc, i32 noundef %.3589855, i32 noundef %.2594858, i32 noundef 0, i32 noundef 0) #10
  %.pre1023 = load i32, ptr %i.v, align 4, !tbaa !45
  br label %bb.dg

bb.dg:                                            ; preds = %.lr.ph856, %bb.df
  %i.aaq = phi i32 [ %i.ym, %.lr.ph856 ], [ %.pre1023, %bb.df ] ; 4 uses
  %i.aar = add nuw nsw i32 %.3589855, 1           ; 2 uses
  %i.aas = icmp slt i32 %i.aar, %i.aaq
  br i1 %i.aas, label %.lr.ph856, label %._crit_edge857.loopexit, !llvm.loop !96

._crit_edge857.loopexit:                          ; preds = %bb.dg
  %.pre1024 = load i32, ptr %i.c, align 8, !tbaa !20
  br label %._crit_edge857

._crit_edge857:                                   ; preds = %._crit_edge857.loopexit, %.preheader773
  %i.aat = phi i32 [ %.pre1024, %._crit_edge857.loopexit ], [ %i.yi, %.preheader773 ] ; 3 uses
  %i.aau = phi i32 [ %i.aaq, %._crit_edge857.loopexit ], [ %i.yj, %.preheader773 ] ; 2 uses
  %i.aav = phi i32 [ %i.aaq, %._crit_edge857.loopexit ], [ %i.yk, %.preheader773 ]
  %i.aaw = add nuw nsw i32 %.2594858, 1           ; 2 uses
  %i.aax = icmp slt i32 %i.aaw, %i.aat
  br i1 %i.aax, label %.preheader773, label %.loopexit, !llvm.loop !97

bb.dh:                                            ; preds = %._crit_edge854
  tail call fastcc void @guess_mv(ptr noundef nonnull %0)
  %.pre1025 = load i32, ptr %i.c, align 8, !tbaa !20
  %.pre1027.pre = load i32, ptr %i.v, align 4, !tbaa !45
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge857, %bb.dh
  %.pre1027 = phi i32 [ %.pre1027.pre, %bb.dh ], [ %i.aau, %._crit_edge857 ] ; 4 uses
  %i.aay = phi i32 [ %.pre1025, %bb.dh ], [ %i.aat, %._crit_edge857 ] ; 5 uses
  %i.aaz = icmp sgt i32 %i.aay, 0
  br i1 %i.aaz, label %.preheader772.lr.ph, label %._crit_edge874.split

.preheader772.lr.ph:                              ; preds = %.loopexit
  %i.aba = icmp sgt i32 %.pre1027, 0
  %i.abb = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %i.abc = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %i.aba, label %.preheader772.lr.ph.split, label %._crit_edge874.split

.preheader772.lr.ph.split:                        ; preds = %.preheader772.lr.ph
  %i.abg = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.abi = load i64, ptr %i.abh, align 8, !tbaa !21 ; 2 uses
  %i.abj = load ptr, ptr %i.abg, align 8, !tbaa !65
  %wide.trip.count970 = zext nneg i32 %i.aay to i64
  %wide.trip.count965 = zext nneg i32 %.pre1027 to i64
  br label %.preheader772

.preheader772:                                    ; preds = %.preheader772.lr.ph.split, %._crit_edge872
  %indvars.iv967 = phi i64 [ 0, %.preheader772.lr.ph.split ], [ %indvars.iv.next968, %._crit_edge872 ] ; 6 uses
  %i.abk = mul i64 %indvars.iv967, %i.abi
  %i.abl = shl nuw nsw i64 %indvars.iv967, 1
  %i.abm = mul nsw i64 %i.abi, %indvars.iv967     ; 2 uses
  %indvars.iv967.tr = trunc nuw i64 %indvars.iv967 to i32
  %i.abn = shl nuw i32 %indvars.iv967.tr, 4
  %indvars.iv967.tr1100 = trunc nuw i64 %indvars.iv967 to i32
  %i.abo = shl nuw i32 %indvars.iv967.tr1100, 3   ; 2 uses
  br label %bb.di

bb.di:                                            ; preds = %.preheader772, %bb.dm
  %indvars.iv962 = phi i64 [ 0, %.preheader772 ], [ %indvars.iv.next963, %bb.dm ] ; 7 uses
  %i.abp = add i64 %i.abk, %indvars.iv962
  %sext1098 = shl i64 %i.abp, 32
  %i.abq = ashr exact i64 %sext1098, 30
  %i.abr = getelementptr inbounds i8, ptr %i.abj, i64 %i.abq
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !47
  %i.abt = and i32 %i.abs, 7
  %.not667 = icmp eq i32 %i.abt, 0
  br i1 %.not667, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.abu = load i32, ptr %i.hc, align 8, !tbaa !119
  %.not668 = icmp eq i32 %i.abu, 0
  br i1 %.not668, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.abv = load ptr, ptr %i.q, align 8, !tbaa !50 ; 3 uses
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !63
  %i.abx = shl nuw nsw i64 %indvars.iv962, 4
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abw, i64 %i.abx
  %i.abz = load i32, ptr %i.ah, align 4, !tbaa !47 ; 9 uses
  %i.aca = mul nsw i32 %i.abn, %i.abz
  %i.acb = sext i32 %i.aca to i64
  %i.acc = getelementptr inbounds i8, ptr %i.aby, i64 %i.acb ; 64 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !63
  %i.acf = load i32, ptr %i.abb, align 4, !tbaa !47 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !63 ; 2 uses
  %i.aci = load i32, ptr %i.abc, align 4, !tbaa !47 ; 2 uses
  %i.acj = load ptr, ptr %i.abd, align 8, !tbaa !62
  %i.ack = load i64, ptr %i.a, align 8, !tbaa !53 ; 2 uses
  %i.acl = mul nsw i64 %i.ack, %i.abl
  %i.acm = getelementptr [2 x i8], ptr %i.acj, i64 %i.acl
  %.idx1099 = shl i64 %indvars.iv962, 2
  %i.acn = getelementptr i8, ptr %i.acm, i64 %.idx1099
  br label %.preheader770

.preheader770:                                    ; preds = %bb.dk, %.preheader770
  %.0559863 = phi i32 [ 0, %bb.dk ], [ %i.ask, %.preheader770 ] ; 5 uses
  %i.aco = shl nuw nsw i32 %.0559863, 3
  %i.acp = and i32 %i.aco, 8                      ; 8 uses
  %i.acq = shl nuw nsw i32 %.0559863, 2
  %i.acr = and i32 %i.acq, 8                      ; 8 uses
  %i.acs = mul i32 %i.acr, %i.abz
  %i.act = add i32 %i.acs, %i.acp                 ; 8 uses
  %i.acu = sext i32 %i.act to i64
  %i.acv = getelementptr inbounds i8, ptr %i.acc, i64 %i.acu
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !43
  %i.acx = zext i8 %i.acw to i32
  %i.acy = sext i32 %i.act to i64
  %i.acz = getelementptr i8, ptr %i.acc, i64 %i.acy
  %i.ada = getelementptr i8, ptr %i.acz, i64 1
  %i.adb = load i8, ptr %i.ada, align 1, !tbaa !43
  %i.adc = zext i8 %i.adb to i32
  %i.add = add nuw nsw i32 %i.acx, %i.adc
  %i.ade = sext i32 %i.act to i64
  %i.adf = getelementptr i8, ptr %i.acc, i64 %i.ade
  %i.adg = getelementptr i8, ptr %i.adf, i64 2
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !43
  %i.adi = zext i8 %i.adh to i32
  %i.adj = add nuw nsw i32 %i.add, %i.adi
  %i.adk = sext i32 %i.act to i64
  %i.adl = getelementptr i8, ptr %i.acc, i64 %i.adk
  %i.adm = getelementptr i8, ptr %i.adl, i64 3
  %i.adn = load i8, ptr %i.adm, align 1, !tbaa !43
  %i.ado = zext i8 %i.adn to i32
  %i.adp = add nuw nsw i32 %i.adj, %i.ado
  %i.adq = sext i32 %i.act to i64
  %i.adr = getelementptr i8, ptr %i.acc, i64 %i.adq
  %i.ads = getelementptr i8, ptr %i.adr, i64 4
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !43
  %i.adu = zext i8 %i.adt to i32
  %i.adv = add nuw nsw i32 %i.adp, %i.adu
  %i.adw = sext i32 %i.act to i64
  %i.adx = getelementptr i8, ptr %i.acc, i64 %i.adw
  %i.ady = getelementptr i8, ptr %i.adx, i64 5
  %i.adz = load i8, ptr %i.ady, align 1, !tbaa !43
  %i.aea = zext i8 %i.adz to i32
  %i.aeb = add nuw nsw i32 %i.adv, %i.aea
  %i.aec = sext i32 %i.act to i64
  %i.aed = getelementptr i8, ptr %i.acc, i64 %i.aec
  %i.aee = getelementptr i8, ptr %i.aed, i64 6
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !43
  %i.aeg = zext i8 %i.aef to i32
  %i.aeh = add nuw nsw i32 %i.aeb, %i.aeg
  %i.aei = sext i32 %i.act to i64
  %i.aej = getelementptr i8, ptr %i.acc, i64 %i.aei
  %i.aek = getelementptr i8, ptr %i.aej, i64 7
  %i.ael = load i8, ptr %i.aek, align 1, !tbaa !43
  %i.aem = zext i8 %i.ael to i32
  %i.aen = add nuw nsw i32 %i.aeh, %i.aem
  %i.aeo = or disjoint i32 %i.acr, 1
  %i.aep = mul i32 %i.aeo, %i.abz
  %i.aeq = add i32 %i.aep, %i.acp                 ; 8 uses
  %i.aer = sext i32 %i.aeq to i64
  %i.aes = getelementptr inbounds i8, ptr %i.acc, i64 %i.aer
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !43
  %i.aeu = zext i8 %i.aet to i32
  %i.aev = add nuw nsw i32 %i.aen, %i.aeu
  %i.aew = add i32 %i.aeq, 1
  %i.aex = sext i32 %i.aew to i64
  %i.aey = getelementptr inbounds i8, ptr %i.acc, i64 %i.aex
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !43
  %i.afa = zext i8 %i.aez to i32
  %i.afb = add nuw nsw i32 %i.aev, %i.afa
  %i.afc = add i32 %i.aeq, 2
  %i.afd = sext i32 %i.afc to i64
  %i.afe = getelementptr inbounds i8, ptr %i.acc, i64 %i.afd
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !43
  %i.afg = zext i8 %i.aff to i32
  %i.afh = add nuw nsw i32 %i.afb, %i.afg
  %i.afi = add i32 %i.aeq, 3
  %i.afj = sext i32 %i.afi to i64
  %i.afk = getelementptr inbounds i8, ptr %i.acc, i64 %i.afj
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !43
  %i.afm = zext i8 %i.afl to i32
  %i.afn = add nuw nsw i32 %i.afh, %i.afm
  %i.afo = add i32 %i.aeq, 4
  %i.afp = sext i32 %i.afo to i64
  %i.afq = getelementptr inbounds i8, ptr %i.acc, i64 %i.afp
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !43
  %i.afs = zext i8 %i.afr to i32
  %i.aft = add nuw nsw i32 %i.afn, %i.afs
  %i.afu = add i32 %i.aeq, 5
  %i.afv = sext i32 %i.afu to i64
  %i.afw = getelementptr inbounds i8, ptr %i.acc, i64 %i.afv
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !43
  %i.afy = zext i8 %i.afx to i32
  %i.afz = add nuw nsw i32 %i.aft, %i.afy
  %i.aga = add i32 %i.aeq, 6
  %i.agb = sext i32 %i.aga to i64
  %i.agc = getelementptr inbounds i8, ptr %i.acc, i64 %i.agb
  %i.agd = load i8, ptr %i.agc, align 1, !tbaa !43
  %i.age = zext i8 %i.agd to i32
  %i.agf = add nuw nsw i32 %i.afz, %i.age
  %i.agg = add i32 %i.aeq, 7
  %i.agh = sext i32 %i.agg to i64
  %i.agi = getelementptr inbounds i8, ptr %i.acc, i64 %i.agh
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !43
  %i.agk = zext i8 %i.agj to i32
  %i.agl = add nuw nsw i32 %i.agf, %i.agk
  %i.agm = or disjoint i32 %i.acr, 2
  %i.agn = mul i32 %i.agm, %i.abz
  %i.ago = add i32 %i.agn, %i.acp                 ; 8 uses
  %i.agp = sext i32 %i.ago to i64
  %i.agq = getelementptr inbounds i8, ptr %i.acc, i64 %i.agp
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !43
  %i.ags = zext i8 %i.agr to i32
  %i.agt = add nuw nsw i32 %i.agl, %i.ags
  %i.agu = sext i32 %i.ago to i64
  %i.agv = getelementptr i8, ptr %i.acc, i64 %i.agu
  %i.agw = getelementptr i8, ptr %i.agv, i64 1
  %i.agx = load i8, ptr %i.agw, align 1, !tbaa !43
  %i.agy = zext i8 %i.agx to i32
  %i.agz = add nuw nsw i32 %i.agt, %i.agy
  %i.aha = add i32 %i.ago, 2
  %i.ahb = sext i32 %i.aha to i64
  %i.ahc = getelementptr inbounds i8, ptr %i.acc, i64 %i.ahb
  %i.ahd = load i8, ptr %i.ahc, align 1, !tbaa !43
  %i.ahe = zext i8 %i.ahd to i32
  %i.ahf = add nuw nsw i32 %i.agz, %i.ahe
  %i.ahg = add i32 %i.ago, 3
  %i.ahh = sext i32 %i.ahg to i64
  %i.ahi = getelementptr inbounds i8, ptr %i.acc, i64 %i.ahh
  %i.ahj = load i8, ptr %i.ahi, align 1, !tbaa !43
  %i.ahk = zext i8 %i.ahj to i32
  %i.ahl = add nuw nsw i32 %i.ahf, %i.ahk
  %i.ahm = add i32 %i.ago, 4
  %i.ahn = sext i32 %i.ahm to i64
  %i.aho = getelementptr inbounds i8, ptr %i.acc, i64 %i.ahn
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !43
  %i.ahq = zext i8 %i.ahp to i32
  %i.ahr = add nuw nsw i32 %i.ahl, %i.ahq
  %i.ahs = add i32 %i.ago, 5
  %i.aht = sext i32 %i.ahs to i64
  %i.ahu = getelementptr inbounds i8, ptr %i.acc, i64 %i.aht
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !43
  %i.ahw = zext i8 %i.ahv to i32
  %i.ahx = add nuw nsw i32 %i.ahr, %i.ahw
  %i.ahy = add i32 %i.ago, 6
  %i.ahz = sext i32 %i.ahy to i64
  %i.aia = getelementptr inbounds i8, ptr %i.acc, i64 %i.ahz
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !43
  %i.aic = zext i8 %i.aib to i32
  %i.aid = add nuw nsw i32 %i.ahx, %i.aic
  %i.aie = add i32 %i.ago, 7
  %i.aif = sext i32 %i.aie to i64
  %i.aig = getelementptr inbounds i8, ptr %i.acc, i64 %i.aif
  %i.aih = load i8, ptr %i.aig, align 1, !tbaa !43
  %i.aii = zext i8 %i.aih to i32
  %i.aij = add nuw nsw i32 %i.aid, %i.aii
  %i.aik = or disjoint i32 %i.acr, 3
  %i.ail = mul i32 %i.aik, %i.abz
  %i.aim = add i32 %i.ail, %i.acp                 ; 8 uses
  %i.ain = sext i32 %i.aim to i64
  %i.aio = getelementptr inbounds i8, ptr %i.acc, i64 %i.ain
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !43
  %i.aiq = zext i8 %i.aip to i32
  %i.air = add nuw nsw i32 %i.aij, %i.aiq
  %i.ais = add i32 %i.aim, 1
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds i8, ptr %i.acc, i64 %i.ait
  %i.aiv = load i8, ptr %i.aiu, align 1, !tbaa !43
  %i.aiw = zext i8 %i.aiv to i32
  %i.aix = add nuw nsw i32 %i.air, %i.aiw
  %i.aiy = add i32 %i.aim, 2
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = getelementptr inbounds i8, ptr %i.acc, i64 %i.aiz
  %i.ajb = load i8, ptr %i.aja, align 1, !tbaa !43
  %i.ajc = zext i8 %i.ajb to i32
  %i.ajd = add nuw nsw i32 %i.aix, %i.ajc
  %i.aje = add i32 %i.aim, 3
  %i.ajf = sext i32 %i.aje to i64
  %i.ajg = getelementptr inbounds i8, ptr %i.acc, i64 %i.ajf
  %i.ajh = load i8, ptr %i.ajg, align 1, !tbaa !43
  %i.aji = zext i8 %i.ajh to i32
  %i.ajj = add nuw nsw i32 %i.ajd, %i.aji
  %i.ajk = add i32 %i.aim, 4
  %i.ajl = sext i32 %i.ajk to i64
  %i.ajm = getelementptr inbounds i8, ptr %i.acc, i64 %i.ajl
  %i.ajn = load i8, ptr %i.ajm, align 1, !tbaa !43
  %i.ajo = zext i8 %i.ajn to i32
  %i.ajp = add nuw nsw i32 %i.ajj, %i.ajo
  %i.ajq = add i32 %i.aim, 5
  %i.ajr = sext i32 %i.ajq to i64
  %i.ajs = getelementptr inbounds i8, ptr %i.acc, i64 %i.ajr
  %i.ajt = load i8, ptr %i.ajs, align 1, !tbaa !43
  %i.aju = zext i8 %i.ajt to i32
  %i.ajv = add nuw nsw i32 %i.ajp, %i.aju
end_hunk_0
begin_hunk_1_@ff_er_frame_end:bb.a
  %i.alc = sext i32 %i.akk to i64
  %i.ald = getelementptr i8, ptr %i.acc, i64 %i.alc
  %i.ale = getelementptr i8, ptr %i.ald, i64 3
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !43
  %i.alg = zext i8 %i.alf to i32
  %i.alh = add nuw nsw i32 %i.alb, %i.alg
  %i.ali = add i32 %i.akk, 4
  %i.alj = sext i32 %i.ali to i64
  %i.alk = getelementptr inbounds i8, ptr %i.acc, i64 %i.alj
  %i.all = load i8, ptr %i.alk, align 1, !tbaa !43
  %i.alm = zext i8 %i.all to i32
  %i.aln = add nuw nsw i32 %i.alh, %i.alm
  %i.alo = add i32 %i.akk, 5
  %i.alp = sext i32 %i.alo to i64
  %i.alq = getelementptr inbounds i8, ptr %i.acc, i64 %i.alp
  %i.alr = load i8, ptr %i.alq, align 1, !tbaa !43
  %i.als = zext i8 %i.alr to i32
  %i.alt = add nuw nsw i32 %i.aln, %i.als
  %i.alu = add i32 %i.akk, 6
  %i.alv = sext i32 %i.alu to i64
  %i.alw = getelementptr inbounds i8, ptr %i.acc, i64 %i.alv
  %i.alx = load i8, ptr %i.alw, align 1, !tbaa !43
  %i.aly = zext i8 %i.alx to i32
  %i.alz = add nuw nsw i32 %i.alt, %i.aly
  %i.ama = add i32 %i.akk, 7
  %i.amb = sext i32 %i.ama to i64
  %i.amc = getelementptr inbounds i8, ptr %i.acc, i64 %i.amb
  %i.amd = load i8, ptr %i.amc, align 1, !tbaa !43
  %i.ame = zext i8 %i.amd to i32
  %i.amf = add nuw nsw i32 %i.alz, %i.ame
  %i.amg = or disjoint i32 %i.acr, 5
  %i.amh = mul i32 %i.amg, %i.abz
  %i.ami = add i32 %i.amh, %i.acp                 ; 8 uses
  %i.amj = sext i32 %i.ami to i64
  %i.amk = getelementptr inbounds i8, ptr %i.acc, i64 %i.amj
  %i.aml = load i8, ptr %i.amk, align 1, !tbaa !43
  %i.amm = zext i8 %i.aml to i32
  %i.amn = add nuw nsw i32 %i.amf, %i.amm
  %i.amo = add i32 %i.ami, 1
  %i.amp = sext i32 %i.amo to i64
  %i.amq = getelementptr inbounds i8, ptr %i.acc, i64 %i.amp
  %i.amr = load i8, ptr %i.amq, align 1, !tbaa !43
  %i.ams = zext i8 %i.amr to i32
  %i.amt = add nuw nsw i32 %i.amn, %i.ams
  %i.amu = add i32 %i.ami, 2
  %i.amv = sext i32 %i.amu to i64
  %i.amw = getelementptr inbounds i8, ptr %i.acc, i64 %i.amv
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !43
  %i.amy = zext i8 %i.amx to i32
  %i.amz = add nuw nsw i32 %i.amt, %i.amy
  %i.ana = add i32 %i.ami, 3
  %i.anb = sext i32 %i.ana to i64
  %i.anc = getelementptr inbounds i8, ptr %i.acc, i64 %i.anb
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !43
  %i.ane = zext i8 %i.and to i32
  %i.anf = add nuw nsw i32 %i.amz, %i.ane
  %i.ang = add i32 %i.ami, 4
  %i.anh = sext i32 %i.ang to i64
  %i.ani = getelementptr inbounds i8, ptr %i.acc, i64 %i.anh
  %i.anj = load i8, ptr %i.ani, align 1, !tbaa !43
  %i.ank = zext i8 %i.anj to i32
  %i.anl = add nuw nsw i32 %i.anf, %i.ank
  %i.anm = add i32 %i.ami, 5
  %i.ann = sext i32 %i.anm to i64
  %i.ano = getelementptr inbounds i8, ptr %i.acc, i64 %i.ann
  %i.anp = load i8, ptr %i.ano, align 1, !tbaa !43
  %i.anq = zext i8 %i.anp to i32
  %i.anr = add nuw nsw i32 %i.anl, %i.anq
  %i.ans = add i32 %i.ami, 6
  %i.ant = sext i32 %i.ans to i64
  %i.anu = getelementptr inbounds i8, ptr %i.acc, i64 %i.ant
  %i.anv = load i8, ptr %i.anu, align 1, !tbaa !43
  %i.anw = zext i8 %i.anv to i32
  %i.anx = add nuw nsw i32 %i.anr, %i.anw
  %i.any = add i32 %i.ami, 7
  %i.anz = sext i32 %i.any to i64
  %i.aoa = getelementptr inbounds i8, ptr %i.acc, i64 %i.anz
  %i.aob = load i8, ptr %i.aoa, align 1, !tbaa !43
  %i.aoc = zext i8 %i.aob to i32
  %i.aod = add nuw nsw i32 %i.anx, %i.aoc
  %i.aoe = or disjoint i32 %i.acr, 6
  %i.aof = mul i32 %i.aoe, %i.abz
  %i.aog = add i32 %i.aof, %i.acp                 ; 8 uses
  %i.aoh = sext i32 %i.aog to i64
  %i.aoi = getelementptr inbounds i8, ptr %i.acc, i64 %i.aoh
  %i.aoj = load i8, ptr %i.aoi, align 1, !tbaa !43
  %i.aok = zext i8 %i.aoj to i32
  %i.aol = add nuw nsw i32 %i.aod, %i.aok
  %i.aom = sext i32 %i.aog to i64
  %i.aon = getelementptr i8, ptr %i.acc, i64 %i.aom
  %i.aoo = getelementptr i8, ptr %i.aon, i64 1
  %i.aop = load i8, ptr %i.aoo, align 1, !tbaa !43
  %i.aoq = zext i8 %i.aop to i32
  %i.aor = add nuw nsw i32 %i.aol, %i.aoq
  %i.aos = add i32 %i.aog, 2
  %i.aot = sext i32 %i.aos to i64
  %i.aou = getelementptr inbounds i8, ptr %i.acc, i64 %i.aot
  %i.aov = load i8, ptr %i.aou, align 1, !tbaa !43
  %i.aow = zext i8 %i.aov to i32
  %i.aox = add nuw nsw i32 %i.aor, %i.aow
  %i.aoy = add i32 %i.aog, 3
  %i.aoz = sext i32 %i.aoy to i64
  %i.apa = getelementptr inbounds i8, ptr %i.acc, i64 %i.aoz
  %i.apb = load i8, ptr %i.apa, align 1, !tbaa !43
  %i.apc = zext i8 %i.apb to i32
  %i.apd = add nuw nsw i32 %i.aox, %i.apc
  %i.ape = add i32 %i.aog, 4
  %i.apf = sext i32 %i.ape to i64
  %i.apg = getelementptr inbounds i8, ptr %i.acc, i64 %i.apf
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !43
  %i.api = zext i8 %i.aph to i32
  %i.apj = add nuw nsw i32 %i.apd, %i.api
  %i.apk = add i32 %i.aog, 5
  %i.apl = sext i32 %i.apk to i64
  %i.apm = getelementptr inbounds i8, ptr %i.acc, i64 %i.apl
  %i.apn = load i8, ptr %i.apm, align 1, !tbaa !43
  %i.apo = zext i8 %i.apn to i32
  %i.app = add nuw nsw i32 %i.apj, %i.apo
  %i.apq = add i32 %i.aog, 6
  %i.apr = sext i32 %i.apq to i64
  %i.aps = getelementptr inbounds i8, ptr %i.acc, i64 %i.apr
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !43
  %i.apu = zext i8 %i.apt to i32
  %i.apv = add nuw nsw i32 %i.app, %i.apu
  %i.apw = add i32 %i.aog, 7
  %i.apx = sext i32 %i.apw to i64
  %i.apy = getelementptr inbounds i8, ptr %i.acc, i64 %i.apx
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !43
  %i.aqa = zext i8 %i.apz to i32
  %i.aqb = add nuw nsw i32 %i.apv, %i.aqa
  %i.aqc = or disjoint i32 %i.acr, 7
  %i.aqd = mul i32 %i.aqc, %i.abz
  %i.aqe = add i32 %i.aqd, %i.acp                 ; 8 uses
  %i.aqf = sext i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds i8, ptr %i.acc, i64 %i.aqf
  %i.aqh = load i8, ptr %i.aqg, align 1, !tbaa !43
  %i.aqi = zext i8 %i.aqh to i32
  %i.aqj = add nuw nsw i32 %i.aqb, %i.aqi
  %i.aqk = add i32 %i.aqe, 1
  %i.aql = sext i32 %i.aqk to i64
  %i.aqm = getelementptr inbounds i8, ptr %i.acc, i64 %i.aql
  %i.aqn = load i8, ptr %i.aqm, align 1, !tbaa !43
  %i.aqo = zext i8 %i.aqn to i32
  %i.aqp = add nuw nsw i32 %i.aqj, %i.aqo
  %i.aqq = add i32 %i.aqe, 2
  %i.aqr = sext i32 %i.aqq to i64
  %i.aqs = getelementptr inbounds i8, ptr %i.acc, i64 %i.aqr
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !43
  %i.aqu = zext i8 %i.aqt to i32
  %i.aqv = add nuw nsw i32 %i.aqp, %i.aqu
  %i.aqw = add i32 %i.aqe, 3
  %i.aqx = sext i32 %i.aqw to i64
  %i.aqy = getelementptr inbounds i8, ptr %i.acc, i64 %i.aqx
  %i.aqz = load i8, ptr %i.aqy, align 1, !tbaa !43
  %i.ara = zext i8 %i.aqz to i32
  %i.arb = add nuw nsw i32 %i.aqv, %i.ara
  %i.arc = add i32 %i.aqe, 4
  %i.ard = sext i32 %i.arc to i64
  %i.are = getelementptr inbounds i8, ptr %i.acc, i64 %i.ard
  %i.arf = load i8, ptr %i.are, align 1, !tbaa !43
  %i.arg = zext i8 %i.arf to i32
  %i.arh = add nuw nsw i32 %i.arb, %i.arg
  %i.ari = add i32 %i.aqe, 5
  %i.arj = sext i32 %i.ari to i64
  %i.ark = getelementptr inbounds i8, ptr %i.acc, i64 %i.arj
  %i.arl = load i8, ptr %i.ark, align 1, !tbaa !43
  %i.arm = zext i8 %i.arl to i32
  %i.arn = add nuw nsw i32 %i.arh, %i.arm
  %i.aro = add i32 %i.aqe, 6
  %i.arp = sext i32 %i.aro to i64
  %i.arq = getelementptr inbounds i8, ptr %i.acc, i64 %i.arp
  %i.arr = load i8, ptr %i.arq, align 1, !tbaa !43
  %i.ars = zext i8 %i.arr to i32
  %i.art = add nuw nsw i32 %i.arn, %i.ars
  %i.aru = add i32 %i.aqe, 7
  %i.arv = sext i32 %i.aru to i64
  %i.arw = getelementptr inbounds i8, ptr %i.acc, i64 %i.arv
  %i.arx = load i8, ptr %i.arw, align 1, !tbaa !43
  %i.ary = zext i8 %i.arx to i32
  %i.arz = add nuw nsw i32 %i.art, %i.ary
  %i.asa = add nuw nsw i32 %i.arz, 4
  %i.asb = lshr i32 %i.asa, 3
  %i.asc = trunc nuw nsw i32 %i.asb to i16
  %i.asd = and i32 %.0559863, 1
  %i.ase = zext nneg i32 %i.asd to i64
  %i.asf = lshr i32 %.0559863, 1
  %i.asg = zext nneg i32 %i.asf to i64
  %i.ash = mul nuw nsw i64 %i.ack, %i.asg
  %i.asi = getelementptr [2 x i8], ptr %i.acn, i64 %i.ash
  %i.asj = getelementptr [2 x i8], ptr %i.asi, i64 %i.ase
  store i16 %i.asc, ptr %i.asj, align 2, !tbaa !67
  %i.ask = add nuw nsw i32 %.0559863, 1           ; 2 uses
  %exitcond953.not = icmp eq i32 %i.ask, 4
  br i1 %exitcond953.not, label %bb.dl, label %.preheader770, !llvm.loop !98

bb.dl:                                            ; preds = %.preheader770
  %i.asl = shl nuw nsw i64 %indvars.iv962, 3      ; 2 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %i.ace, i64 %i.asl
  %i.asn = mul nsw i32 %i.acf, %i.abo
  %i.aso = sext i32 %i.asn to i64
  %i.asp = getelementptr inbounds i8, ptr %i.asm, i64 %i.aso ; 8 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.ach, i64 %i.asl
  %i.asr = mul nsw i32 %i.aci, %i.abo
  %i.ass = sext i32 %i.asr to i64
  %i.ast = getelementptr inbounds i8, ptr %i.asq, i64 %i.ass ; 8 uses
  %.not669 = icmp eq ptr %i.ach, null
  br i1 %.not669, label %bb.dm, label %.preheader769.a

.preheader769.a:                                  ; preds = %bb.dl
  %2 = sext i32 %i.aci to i64                     ; 7 uses
  %3 = sext i32 %i.acf to i64                     ; 7 uses
  %4 = load <8 x i8>, ptr %i.asp, align 1, !tbaa !43
  %5 = zext <8 x i8> %4 to <8 x i32>
  %6 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %5)
  %7 = load <8 x i8>, ptr %i.ast, align 1, !tbaa !43
  %8 = zext <8 x i8> %7 to <8 x i32>
  %9 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %8)
  %i.asu = getelementptr inbounds i8, ptr %i.asp, i64 %3
  %i.asv = getelementptr inbounds i8, ptr %i.ast, i64 %2
  %10 = load <8 x i8>, ptr %i.asu, align 1, !tbaa !43
  %11 = zext <8 x i8> %10 to <8 x i32>
  %12 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %11)
  %op.rdx1163.1 = add nuw nsw i32 %12, %6
  %13 = load <8 x i8>, ptr %i.asv, align 1, !tbaa !43
  %14 = zext <8 x i8> %13 to <8 x i32>
  %15 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %14)
  %op.rdx.1 = add nuw nsw i32 %15, %9
  %16 = shl nsw i64 %3, 1
  %17 = shl nsw i64 %2, 1
  %i.asw = getelementptr inbounds i8, ptr %i.asp, i64 %16
  %i.asx = getelementptr inbounds i8, ptr %i.ast, i64 %17
  %18 = load <8 x i8>, ptr %i.asw, align 1, !tbaa !43
  %19 = zext <8 x i8> %18 to <8 x i32>
  %20 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %19)
  %op.rdx1163.2 = add nuw nsw i32 %20, %op.rdx1163.1
  %21 = load <8 x i8>, ptr %i.asx, align 1, !tbaa !43
  %22 = zext <8 x i8> %21 to <8 x i32>
  %23 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %22)
  %op.rdx.2 = add nuw nsw i32 %23, %op.rdx.1
  %24 = mul nsw i64 %3, 3
  %25 = mul nsw i64 %2, 3
  %i.asy = getelementptr inbounds i8, ptr %i.asp, i64 %24
  %i.asz = getelementptr inbounds i8, ptr %i.ast, i64 %25
  %26 = load <8 x i8>, ptr %i.asy, align 1, !tbaa !43
  %27 = zext <8 x i8> %26 to <8 x i32>
  %28 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %27)
  %op.rdx1163.3 = add nuw nsw i32 %28, %op.rdx1163.2
  %29 = load <8 x i8>, ptr %i.asz, align 1, !tbaa !43
  %30 = zext <8 x i8> %29 to <8 x i32>
  %31 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %30)
  %op.rdx.3 = add nuw nsw i32 %31, %op.rdx.2
  %32 = shl nsw i64 %3, 2
  %33 = shl nsw i64 %2, 2
  %i.ata = getelementptr inbounds i8, ptr %i.asp, i64 %32
  %i.atb = getelementptr inbounds i8, ptr %i.ast, i64 %33
  %34 = load <8 x i8>, ptr %i.ata, align 1, !tbaa !43
  %35 = zext <8 x i8> %34 to <8 x i32>
  %36 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %35)
  %op.rdx1163.4 = add nuw nsw i32 %36, %op.rdx1163.3
  %37 = load <8 x i8>, ptr %i.atb, align 1, !tbaa !43
  %38 = zext <8 x i8> %37 to <8 x i32>
  %39 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %38)
  %op.rdx.4 = add nuw nsw i32 %39, %op.rdx.3
  %40 = mul nsw i64 %3, 5
  %41 = mul nsw i64 %2, 5
  %i.atc = getelementptr inbounds i8, ptr %i.asp, i64 %40
  %i.atd = getelementptr inbounds i8, ptr %i.ast, i64 %41
  %42 = load <8 x i8>, ptr %i.atc, align 1, !tbaa !43
  %43 = zext <8 x i8> %42 to <8 x i32>
  %44 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %43)
  %op.rdx1163.5 = add nuw nsw i32 %44, %op.rdx1163.4
  %45 = load <8 x i8>, ptr %i.atd, align 1, !tbaa !43
  %46 = zext <8 x i8> %45 to <8 x i32>
  %47 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %46)
  %op.rdx.5 = add nuw nsw i32 %47, %op.rdx.4
  %48 = mul nsw i64 %3, 6
  %49 = mul nsw i64 %2, 6
  %i.ate = getelementptr inbounds i8, ptr %i.asp, i64 %48
  %50 = getelementptr inbounds i8, ptr %i.ast, i64 %49
  %51 = load <8 x i8>, ptr %i.ate, align 1, !tbaa !43
  %52 = zext <8 x i8> %51 to <8 x i32>
  %53 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %52)
  %op.rdx1163.6 = add i32 %53, %op.rdx1163.5
  %54 = load <8 x i8>, ptr %50, align 1, !tbaa !43
  %55 = zext <8 x i8> %54 to <8 x i32>
  %56 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %55)
  %op.rdx.6 = add i32 %56, %op.rdx.5
  %57 = mul nsw i64 %3, 7
  %58 = mul nsw i64 %2, 7
  %i.atf = getelementptr inbounds i8, ptr %i.asp, i64 %57
  %59 = getelementptr inbounds i8, ptr %i.ast, i64 %58
  %60 = load <8 x i8>, ptr %i.atf, align 1, !tbaa !43
  %61 = zext <8 x i8> %60 to <8 x i32>
  %62 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %61)
  %op.rdx1163.7 = add i32 %62, %op.rdx1163.6
  %63 = load <8 x i8>, ptr %59, align 1, !tbaa !43
  %64 = zext <8 x i8> %63 to <8 x i32>
  %65 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %64)
  %op.rdx.7 = add i32 %65, %op.rdx.6
  %66 = add nsw i32 %op.rdx1163.7, 4
  %67 = lshr i32 %66, 3
  %68 = trunc i32 %67 to i16
  %69 = load ptr, ptr %i.abe, align 8, !tbaa !62
  %70 = getelementptr [2 x i8], ptr %69, i64 %i.abm
  %71 = getelementptr [2 x i8], ptr %70, i64 %indvars.iv962
  store i16 %68, ptr %71, align 2, !tbaa !67
  %72 = add nsw i32 %op.rdx.7, 4
  %73 = lshr i32 %72, 3
  %74 = trunc i32 %73 to i16
  %75 = load ptr, ptr %i.abf, align 8, !tbaa !62
  %76 = getelementptr [2 x i8], ptr %75, i64 %i.abm
  %77 = getelementptr [2 x i8], ptr %76, i64 %indvars.iv962
  store i16 %74, ptr %77, align 2, !tbaa !67
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dj, %.preheader769.a
  %indvars.iv.next963 = add nuw nsw i64 %indvars.iv962, 1 ; 2 uses
  %exitcond966.not = icmp eq i64 %indvars.iv.next963, %wide.trip.count965
  br i1 %exitcond966.not, label %._crit_edge872, label %bb.di, !llvm.loop !99

._crit_edge872:                                   ; preds = %bb.dm
  %indvars.iv.next968 = add nuw nsw i64 %indvars.iv967, 1 ; 2 uses
  %exitcond971.not = icmp eq i64 %indvars.iv.next968, %wide.trip.count970
  br i1 %exitcond971.not, label %._crit_edge874.split.loopexit, label %.preheader772, !llvm.loop !100

._crit_edge874.split.loopexit:                    ; preds = %._crit_edge872
  %.pre1026 = load i32, ptr %i.v, align 4, !tbaa !45
  br label %._crit_edge874.split

._crit_edge874.split:                             ; preds = %.preheader774, %._crit_edge874.split.loopexit, %.preheader772.lr.ph, %.loopexit
  %i.atg = phi i32 [ %i.aay, %._crit_edge874.split.loopexit ], [ %i.aay, %.preheader772.lr.ph ], [ %i.aay, %.loopexit ], [ %i.xq, %.preheader774 ]
  %i.ath = phi i32 [ %.pre1026, %._crit_edge874.split.loopexit ], [ %.pre1027, %.preheader772.lr.ph ], [ %.pre1027, %.loopexit ], [ %.pre1027.pre1032, %.preheader774 ]
  %i.ati = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !62
  %i.atk = shl nsw i32 %i.ath, 1
  %i.atl = shl nsw i32 %i.atg, 1
  %i.atm = load i64, ptr %i.a, align 8, !tbaa !53
  tail call fastcc void @guess_dc(ptr noundef nonnull %0, ptr noundef %i.atj, i32 noundef %i.atk, i32 noundef %i.atl, i64 noundef %i.atm, i32 noundef 1)
  %i.atn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !62
  %i.atp = load i32, ptr %i.v, align 4, !tbaa !45
  %i.atq = load i32, ptr %i.c, align 8, !tbaa !20
  %i.atr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ats = load i64, ptr %i.atr, align 8, !tbaa !21
  tail call fastcc void @guess_dc(ptr noundef nonnull %0, ptr noundef %i.ato, i32 noundef %i.atp, i32 noundef %i.atq, i64 noundef %i.ats, i32 noundef 0)
  %i.att = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.atu = load ptr, ptr %i.att, align 8, !tbaa !62
  %i.atv = load i32, ptr %i.v, align 4, !tbaa !45
  %i.atw = load i32, ptr %i.c, align 8, !tbaa !20
  %i.atx = load i64, ptr %i.atr, align 8, !tbaa !21
  tail call fastcc void @guess_dc(ptr noundef nonnull %0, ptr noundef %i.atu, i32 noundef %i.atv, i32 noundef %i.atw, i64 noundef %i.atx, i32 noundef 0)
  %i.aty = load ptr, ptr %i.ati, align 8, !tbaa !62 ; 2 uses
  %i.atz = load i32, ptr %i.c, align 8, !tbaa !20 ; 5 uses
  %i.aua = shl i32 %i.atz, 1                      ; 2 uses
  %i.aub = load i64, ptr %i.a, align 8, !tbaa !53 ; 4 uses
  %i.auc = add nsw i32 %i.aua, -1
  %i.aud = icmp sgt i32 %i.atz, 1
  br i1 %i.aud, label %.lr.ph68.i, label %filter181.exit

.lr.ph68.i:                                       ; preds = %._crit_edge874.split
  %i.aue = load i32, ptr %i.v, align 4, !tbaa !45 ; 2 uses
  %i.auf = icmp sgt i32 %i.aue, 1
  br i1 %i.auf, label %.lr.ph.preheader.i, label %.preheader.lr.ph

.lr.ph.preheader.i:                               ; preds = %.lr.ph68.i
  %i.aug = shl nuw nsw i32 %i.aue, 1              ; 2 uses
  %i.auh = add nsw i32 %i.aug, -1
  %wide.trip.count83.i = zext nneg i32 %i.auc to i64 ; 2 uses
  %wide.trip.count.i733 = zext nneg i32 %i.auh to i64 ; 2 uses
  %i.aui = add nsw i32 %i.aug, -2                 ; 2 uses
  %i.auj = zext i32 %i.aui to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.aui, 8
  %n.vec = and i64 %i.auj, 4294967288             ; 3 uses
  %i.auk = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.auj
  br label %.lr.ph.i734

.lr.ph.i734:                                      ; preds = %._crit_edge.i739, %.lr.ph.preheader.i
  %indvars.iv80.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next81.i, %._crit_edge.i739 ] ; 2 uses
  %i.aul = mul nsw i64 %indvars.iv80.i, %i.aub
  %i.aum = getelementptr inbounds [2 x i8], ptr %i.aty, i64 %i.aul ; 6 uses
  %i.aun = load i16, ptr %i.aum, align 2, !tbaa !67
  %i.auo = sext i16 %i.aun to i32                 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %i.aum, i64 2
  %.pre.i735 = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !67 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i734
  %vector.recur.init = insertelement <8 x i16> poison, i16 %.pre.i735, i64 7
  %vector.recur.init1142 = insertelement <8 x i32> poison, i32 %i.auo, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <8 x i16> [ %vector.recur.init, %vector.ph ], [ %wide.load.a, %vector.body ]
  %vector.recur1143 = phi <8 x i32> [ %vector.recur.init1142, %vector.ph ], [ %i.auu, %vector.body ]
  %i.aup = getelementptr [2 x i8], ptr %i.aum, i64 %index
  %i.auq = getelementptr i8, ptr %i.aup, i64 2
  %i.aur = getelementptr [2 x i8], ptr %i.aum, i64 %index
  %i.aus = getelementptr i8, ptr %i.aur, i64 4
  %wide.load.a = load <8 x i16>, ptr %i.aus, align 2, !tbaa !67 ; 4 uses
  %i.aut = shufflevector <8 x i16> %vector.recur, <8 x i16> %wide.load.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.auu = sext <8 x i16> %i.aut to <8 x i32>     ; 4 uses
  %i.auv = shufflevector <8 x i32> %vector.recur1143, <8 x i32> %i.auu, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.auw = shl nsw <8 x i32> %i.auu, splat (i32 3)
  %i.aux = sext <8 x i16> %wide.load.a to <8 x i32>
  %i.auy = add nsw <8 x i32> %i.auv, %i.aux
  %i.auz = sub nsw <8 x i32> %i.auw, %i.auy
  %i.ava = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.auz, <8 x i32> splat (i32 -196602))
  %i.avb = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ava, <8 x i32> splat (i32 163834))
  %i.avc = mul nsw <8 x i32> %i.avb, splat (i32 10923)
  %i.avd = add nsw <8 x i32> %i.avc, splat (i32 32768)
  %i.ave = lshr <8 x i32> %i.avd, splat (i32 16)
  %i.avf = trunc nuw <8 x i32> %i.ave to <8 x i16>
  store <8 x i16> %i.avf, ptr %i.auq, align 2, !tbaa !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.avg = icmp eq i64 %index.next, %n.vec
  br i1 %i.avg, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i16> %wide.load.a, i64 7
  %vector.recur.extract1144 = extractelement <8 x i32> %i.auu, i64 7
  br i1 %cmp.n, label %._crit_edge.i739, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i734, %middle.block
  %.ph = phi i16 [ %.pre.i735, %.lr.ph.i734 ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.i736.ph = phi i64 [ 1, %.lr.ph.i734 ], [ %i.auk, %middle.block ]
  %.05764.i.ph = phi i32 [ %i.auo, %.lr.ph.i734 ], [ %vector.recur.extract1144, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.avh = phi i16 [ %i.avm, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv.i736 = phi i64 [ %indvars.iv.next.i737, %scalar.ph ], [ %indvars.iv.i736.ph, %scalar.ph.preheader ] ; 2 uses
  %.05764.i = phi i32 [ %i.avj, %scalar.ph ], [ %.05764.i.ph, %scalar.ph.preheader ]
  %i.avi = getelementptr [2 x i8], ptr %i.aum, i64 %indvars.iv.i736
  %i.avj = sext i16 %i.avh to i32                 ; 2 uses
  %i.avk = shl nsw i32 %i.avj, 3
  %indvars.iv.next.i737 = add nuw nsw i64 %indvars.iv.i736, 1 ; 3 uses
  %i.avl = getelementptr [2 x i8], ptr %i.aum, i64 %indvars.iv.next.i737
  %i.avm = load i16, ptr %i.avl, align 2, !tbaa !67 ; 2 uses
  %i.avn = sext i16 %i.avm to i32
  %i.avo = add nsw i32 %.05764.i, %i.avn
  %i.avp = sub nsw i32 %i.avk, %i.avo
  %i.avq = tail call i32 @llvm.smax.i32(i32 %i.avp, i32 -196602)
  %.0.i60.i = tail call i32 @llvm.smin.i32(i32 %i.avq, i32 163834)
  %i.avr = mul nsw i32 %.0.i60.i, 10923
  %i.avs = add nsw i32 %i.avr, 32768
  %i.avt = lshr i32 %i.avs, 16
  %i.avu = trunc nuw i32 %i.avt to i16
  store i16 %i.avu, ptr %i.avi, align 2, !tbaa !67
  %exitcond.not.i738 = icmp eq i64 %indvars.iv.next.i737, %wide.trip.count.i733
  br i1 %exitcond.not.i738, label %._crit_edge.i739, label %scalar.ph, !llvm.loop !102

._crit_edge.i739:                                 ; preds = %scalar.ph, %middle.block
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count83.i
  br i1 %exitcond84.not.i, label %.lr.ph74.i.preheader, label %.lr.ph.i734, !llvm.loop !103

.lr.ph74.i.preheader:                             ; preds = %._crit_edge.i739
  %i.avv = add i32 %i.aua, -2                     ; 2 uses
  %i.avw = zext i32 %i.avv to i64                 ; 2 uses
  %min.iters.check1147 = icmp ugt i32 %i.avv, 7
  %ident.check.not = icmp eq i64 %i.aub, 1
  %or.cond1162 = select i1 %min.iters.check1147, i1 %ident.check.not, i1 false
  %n.vec1149 = and i64 %i.avw, 4294967288         ; 3 uses
  %i.avx = or disjoint i64 %n.vec1149, 1
  %cmp.n1159 = icmp eq i64 %n.vec1149, %i.avw
  br label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %._crit_edge75.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i, %._crit_edge75.i ], [ 1, %.lr.ph74.i.preheader ] ; 2 uses
  %i.avy = getelementptr [2 x i8], ptr %i.aty, i64 %indvars.iv90.i ; 5 uses
  %i.avz = load i16, ptr %i.avy, align 2, !tbaa !67
  %i.awa = sext i16 %i.avz to i32                 ; 2 uses
  br i1 %or.cond1162, label %vector.ph1148, label %scalar.ph1146.preheader

vector.ph1148:                                    ; preds = %.lr.ph74.i
  %vector.recur.init1152 = insertelement <8 x i32> poison, i32 %i.awa, i64 7
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %vector.ph1148
  %index1151 = phi i64 [ 0, %vector.ph1148 ], [ %index.next1156, %vector.body1150 ] ; 3 uses
  %vector.recur1153 = phi <8 x i32> [ %vector.recur.init1152, %vector.ph1148 ], [ %i.awd, %vector.body1150 ]
  %i.awb = getelementptr [2 x i8], ptr %i.avy, i64 %index1151
  %i.awc = getelementptr i8, ptr %i.awb, i64 2    ; 2 uses
  %wide.load1154.a = load <8 x i16>, ptr %i.awc, align 2, !tbaa !67
  %i.awd = sext <8 x i16> %wide.load1154.a to <8 x i32> ; 4 uses
  %i.awe = shufflevector <8 x i32> %vector.recur1153, <8 x i32> %i.awd, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.awf = shl nsw <8 x i32> %i.awd, splat (i32 3)
  %i.awg = getelementptr [2 x i8], ptr %i.avy, i64 %index1151
  %i.awh = getelementptr i8, ptr %i.awg, i64 4
  %wide.load1155.a = load <8 x i16>, ptr %i.awh, align 2, !tbaa !67
  %i.awi = sext <8 x i16> %wide.load1155.a to <8 x i32>
  %i.awj = add nsw <8 x i32> %i.awe, %i.awi
  %i.awk = sub nsw <8 x i32> %i.awf, %i.awj
  %i.awl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.awk, <8 x i32> splat (i32 -196602))
  %i.awm = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.awl, <8 x i32> splat (i32 163834))
  %i.awn = mul nsw <8 x i32> %i.awm, splat (i32 10923)
  %i.awo = add nsw <8 x i32> %i.awn, splat (i32 32768)
  %i.awp = lshr <8 x i32> %i.awo, splat (i32 16)
  %i.awq = trunc nuw <8 x i32> %i.awp to <8 x i16>
  store <8 x i16> %i.awq, ptr %i.awc, align 2, !tbaa !67
  %index.next1156 = add nuw i64 %index1151, 8     ; 2 uses
  %i.awr = icmp eq i64 %index.next1156, %n.vec1149
  br i1 %i.awr, label %middle.block1157, label %vector.body1150, !llvm.loop !104

middle.block1157:                                 ; preds = %vector.body1150
  %vector.recur.extract1158 = extractelement <8 x i32> %i.awd, i64 7
  br i1 %cmp.n1159, label %._crit_edge75.i, label %scalar.ph1146.preheader

scalar.ph1146.preheader:                          ; preds = %.lr.ph74.i, %middle.block1157
  %indvars.iv85.i.ph = phi i64 [ 1, %.lr.ph74.i ], [ %i.avx, %middle.block1157 ]
  %.05472.i.ph = phi i32 [ %i.awa, %.lr.ph74.i ], [ %vector.recur.extract1158, %middle.block1157 ]
  br label %scalar.ph1146

scalar.ph1146:                                    ; preds = %scalar.ph1146.preheader, %scalar.ph1146
end_hunk_1
begin_hunk_2_@v_block_filter:bb.a
bb.g:                                             ; preds = %bb.f
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !65  ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bf
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !47
  %i.bx = and i32 %i.bw, 7
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bb
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !47
  %i.ca = and i32 %i.bz, 7
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = icmp ne i32 %i.bx, 0
  %or.cond3 = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = load i16, ptr %i.bp, align 2, !tbaa !67
  %i.ce = sext i16 %i.cd to i32
  %i.cf = load i16, ptr %i.br, align 2, !tbaa !67
  %i.cg = sext i16 %i.cf to i32
  %i.ch = sub nsw i32 %i.ce, %i.cg
  %i.ci = tail call i32 @llvm.abs.i32(i32 %i.ch, i1 true)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !67
  %i.cl = sext i16 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !67
  %i.co = sext i16 %i.cn to i32
  %i.cp = add nsw i32 %i.co, %i.cl
  %i.cq = tail call i32 @llvm.abs.i32(i32 %i.cp, i1 true)
  %i.cr = add nuw nsw i32 %i.cq, %i.ci
  %i.cs = icmp samesign ult i32 %i.cr, 2
  br i1 %i.cs, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %or.cond5 = select i1 %i.bs, i1 %i.bt, i1 false
  %i.ct = sext i32 %i.bl to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.o
  %indvars.iv = phi i64 [ 0, %bb.i ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %i.cu = add nuw nsw i64 %indvars.iv, %i.ct      ; 8 uses
  %i.cv = getelementptr i8, ptr %i.y, i64 %i.cu   ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !43
  %i.cx = zext i8 %i.cw to i32                    ; 3 uses
  %i.cy = getelementptr i8, ptr %i.aa, i64 %i.cu  ; 3 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !43
  %i.da = zext i8 %i.cz to i32
  %i.db = sub nsw i32 %i.cx, %i.da
  %i.dc = getelementptr i8, ptr %i.ac, i64 %i.cu  ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !43
  %i.de = zext i8 %i.dd to i32                    ; 2 uses
  %i.df = sub nsw i32 %i.de, %i.cx                ; 2 uses
  %i.dg = getelementptr i8, ptr %i.ae, i64 %i.cu  ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !43
  %i.di = zext i8 %i.dh to i32
  %i.dj = sub nsw i32 %i.di, %i.de
  %i.dk = tail call i32 @llvm.abs.i32(i32 %i.df, i1 true)
  %i.dl = tail call i32 @llvm.abs.i32(i32 %i.db, i1 true)
  %i.dm = tail call i32 @llvm.abs.i32(i32 %i.dj, i1 true)
  %i.dn = add nuw nsw i32 %i.dl, 1
  %i.do = add nuw nsw i32 %i.dn, %i.dm
  %i.dp = lshr i32 %i.do, 1
  %i.dq = sub nsw i32 %i.dk, %i.dp                ; 2 uses
  %i.dr = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 0) ; 2 uses
  %i.ds = icmp slt i32 %i.df, 0
  %i.dt = sub nsw i32 0, %i.dr
  %spec.select = select i1 %i.ds, i32 %i.dt, i32 %i.dr ; 2 uses
  %i.du = icmp slt i32 %i.dq, 1
  br i1 %i.du, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %or.cond5, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %spec.select.tr = trunc nsw i32 %spec.select to i16
  %.lhs.trunc = shl nsw i16 %spec.select.tr, 4
  %i.dv = sdiv i16 %.lhs.trunc, 9
  %.sext = sext i16 %i.dv to i32                  ; 2 uses
  br i1 %i.bs, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.k, %bb.l
  %.1199 = phi i32 [ %.sext, %bb.l ], [ %spec.select, %bb.k ] ; 5 uses
  %i.dw = mul nsw i32 %.1199, 7
  %i.dx = ashr i32 %i.dw, 4
  %i.dy = add nsw i32 %i.dx, %i.cx
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !43
  store i8 %i.eb, ptr %i.cv, align 1, !tbaa !43
  %i.ec = load i8, ptr %i.cy, align 1, !tbaa !43
  %i.ed = zext i8 %i.ec to i32
  %i.ee = mul nsw i32 %.1199, 5
  %i.ef = ashr i32 %i.ee, 4
  %i.eg = add nsw i32 %i.ef, %i.ed
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !43
  store i8 %i.ej, ptr %i.cy, align 1, !tbaa !43
  %i.ek = getelementptr i8, ptr %i.ag, i64 %i.cu  ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !43
  %i.em = zext i8 %i.el to i32
  %i.en = mul nsw i32 %.1199, 3
  %i.eo = ashr i32 %i.en, 4
  %i.ep = add nsw i32 %i.eo, %i.em
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !43
  store i8 %i.es, ptr %i.ek, align 1, !tbaa !43
  %i.et = getelementptr i8, ptr %i.ai, i64 %i.cu  ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !43
  %i.ev = zext i8 %i.eu to i32
  %i.ew = ashr i32 %.1199, 4
  %i.ex = add nsw i32 %i.ew, %i.ev
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !43
  store i8 %i.fa, ptr %i.et, align 1, !tbaa !43
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %.1200 = phi i32 [ %.1199, %.thread ], [ %.sext, %bb.l ] ; 4 uses
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fb = load i8, ptr %i.dc, align 1, !tbaa !43
  %i.fc = zext i8 %i.fb to i32
  %i.fd = mul nsw i32 %.1200, 7
  %i.fe = ashr i32 %i.fd, 4
  %i.ff = sub nsw i32 %i.fc, %i.fe
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !43
  store i8 %i.fi, ptr %i.dc, align 1, !tbaa !43
  %i.fj = load i8, ptr %i.dg, align 1, !tbaa !43
  %i.fk = zext i8 %i.fj to i32
  %i.fl = mul nsw i32 %.1200, 5
  %i.fm = ashr i32 %i.fl, 4
  %i.fn = sub nsw i32 %i.fk, %i.fm
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !43
  store i8 %i.fq, ptr %i.dg, align 1, !tbaa !43
  %i.fr = getelementptr i8, ptr %i.ak, i64 %i.cu  ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !43
  %i.ft = zext i8 %i.fs to i32
  %i.fu = mul nsw i32 %.1200, 3
  %i.fv = ashr i32 %i.fu, 4
  %i.fw = sub nsw i32 %i.ft, %i.fv
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !43
  store i8 %i.fz, ptr %i.fr, align 1, !tbaa !43
  %i.ga = getelementptr i8, ptr %i.am, i64 %i.cu  ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !43
  %i.gc = zext i8 %i.gb to i32
  %i.gd = ashr i32 %.1200, 4
  %i.ge = sub nsw i32 %i.gc, %i.gd
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !43
  store i8 %i.gh, ptr %i.ga, align 1, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !154

.loopexit:                                        ; preds = %bb.o, %bb.h, %bb.f
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count
  br i1 %exitcond209.not, label %._crit_edge, label %bb.f, !llvm.loop !155

._crit_edge:                                      ; preds = %.loopexit
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count213
  br i1 %exitcond214.not, label %._crit_edge204.split, label %.preheader, !llvm.loop !156

._crit_edge204.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %set_mv_strides.exit
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @ff_thread_await_progress(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.abs.v16i16(<16 x i16>, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!11 = !{!"p1 int", !9, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!15 = !{!"p1 _ZTS11ThreadFrame", !9, i64 0}
!16 = !{!"p1 _ZTS14ThreadProgress", !9, i64 0}
!17 = !{!"ERPicture", !14, i64 0, !15, i64 8, !16, i64 16, !5, i64 24, !5, i64 40, !11, i64 56, !6, i64 64}
!18 = !{!"short", !5, i64 0}
!19 = !{!"ERContext", !10, i64 0, !9, i64 8, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !12, i64 40, !12, i64 48, !5, i64 56, !6, i64 60, !13, i64 64, !13, i64 72, !5, i64 80, !13, i64 104, !13, i64 112, !5, i64 120, !17, i64 184, !17, i64 256, !17, i64 328, !5, i64 400, !5, i64 416, !18, i64 432, !18, i64 434, !6, i64 436, !6, i64 440, !9, i64 448, !9, i64 456}
!20 = !{!19, !6, i64 32}
!21 = !{!19, !12, i64 40}
!22 = !{!19, !13, i64 64}
!23 = !{!19, !13, i64 72}
!24 = !{!19, !10, i64 0}
!25 = !{!19, !9, i64 8}
!26 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!27 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!28 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!29 = !{!"AVRational", !6, i64 0, !6, i64 4}
!30 = !{!"float", !5, i64 0}
!31 = !{!"p1 short", !9, i64 0}
!32 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!33 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!34 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!35 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!36 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!37 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!38 = !{!"any p2 pointer", !9, i64 0}
!39 = !{!"p2 _ZTS15AVFrameSideData", !38, i64 0}
!40 = !{!"AVCodecContext", !26, i64 0, !6, i64 8, !6, i64 12, !27, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !28, i64 40, !9, i64 48, !12, i64 56, !6, i64 64, !6, i64 68, !13, i64 72, !6, i64 80, !29, i64 84, !29, i64 92, !29, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !29, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !30, i64 204, !30, i64 208, !30, i64 212, !30, i64 216, !30, i64 220, !30, i64 224, !30, i64 228, !30, i64 232, !30, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !31, i64 288, !31, i64 296, !31, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !32, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !30, i64 428, !30, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !33, i64 456, !12, i64 464, !12, i64 472, !30, i64 480, !30, i64 484, !6, i64 488, !6, i64 492, !13, i64 496, !13, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !34, i64 536, !9, i64 544, !35, i64 552, !35, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !36, i64 728, !13, i64 736, !6, i64 744, !6, i64 748, !13, i64 752, !13, i64 760, !13, i64 768, !37, i64 776, !6, i64 784, !6, i64 788, !12, i64 792, !6, i64 800, !6, i64 804, !12, i64 808, !9, i64 816, !12, i64 824, !11, i64 832, !6, i64 840, !39, i64 848, !6, i64 856, !6, i64 860}
!41 = !{!40, !6, i64 520}
!42 = !{!19, !6, i64 24}
!43 = !{!5, !5, i64 0}
!44 = !{!19, !6, i64 60}
!45 = !{!19, !6, i64 28}
!46 = !{!19, !11, i64 16}
!47 = !{!6, !6, i64 0}
!48 = !{!40, !34, i64 536}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!19, !14, i64 184}
!51 = !{!19, !6, i64 248}
!52 = !{!40, !6, i64 712}
!53 = !{!19, !12, i64 48}
!54 = !{!40, !6, i64 24}
!55 = !{!19, !14, i64 256}
!56 = !{!"p2 omnipotent char", !38, i64 0}
!57 = !{!"p2 _ZTS11AVBufferRef", !38, i64 0}
!58 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!59 = !{!"AVFrame", !5, i64 0, !5, i64 64, !56, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !29, i64 124, !12, i64 136, !12, i64 144, !29, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !57, i64 248, !6, i64 256, !39, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !12, i64 304, !58, i64 312, !6, i64 320, !35, i64 328, !35, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368, !9, i64 376, !32, i64 384, !12, i64 408, !6, i64 416}
!60 = !{!59, !6, i64 108}
!61 = !{!19, !14, i64 328}
!62 = !{!31, !31, i64 0}
!63 = !{!13, !13, i64 0}
!64 = !{!19, !16, i64 272}
!65 = !{!19, !11, i64 240}
!66 = !{!"llvm.loop.unswitch.partial.disable"}
!67 = !{!18, !18, i64 0}
!68 = !{!19, !9, i64 448}
!69 = !{!19, !9, i64 456}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!19, !6, i64 436}
!73 = !{!9, !9, i64 0}
!74 = distinct !{!74, !76}
!75 = distinct !{!75, !49}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{!40, !6, i64 664}
!78 = distinct !{!78, !49}
!79 = distinct !{!79, !49}
!80 = distinct !{!80, !49}
!81 = distinct !{!81, !49}
!82 = distinct !{!82, !49}
!83 = distinct !{!83, !49}
!84 = distinct !{!84, !49}
!85 = distinct !{!85, !49}
!86 = distinct !{!86, !49}
!87 = distinct !{!87, !49}
!88 = distinct !{!88, !49}
!89 = distinct !{null}
!90 = distinct !{!90, !49}
!91 = distinct !{!91, !49, !66}
!92 = distinct !{!92, !49}
!93 = distinct !{!93, !49}
!94 = distinct !{!94, !49}
!95 = distinct !{!95, !49}
!96 = distinct !{!96, !49}
!97 = distinct !{!97, !49}
!98 = distinct !{!98, !49}
!99 = distinct !{!99, !49}
!100 = distinct !{!100, !49}
!101 = distinct !{!101, !49, !70, !71}
!102 = distinct !{!102, !49, !71, !70}
!103 = distinct !{!103, !49}
!104 = distinct !{!104, !49, !70, !71}
!105 = distinct !{!105, !49, !70}
!106 = distinct !{!106, !49}
!107 = distinct !{!107, !49}
!108 = distinct !{!108, !49}
!109 = distinct !{!109, !49}
!110 = distinct !{!110, !49}
!111 = distinct !{!111, !49}
!112 = distinct !{!112, !49}
!113 = !{!40, !6, i64 720}
!114 = !{!40, !6, i64 716}
!115 = !{!40, !6, i64 116}
!116 = !{!59, !6, i64 104}
!117 = !{!59, !6, i64 116}
!118 = !{!40, !6, i64 524}
!119 = !{!19, !6, i64 440}
!120 = !{!40, !6, i64 528}
!121 = !{!19, !13, i64 104}
!122 = !{!59, !6, i64 120}
!123 = !{!59, !6, i64 320}
!124 = !{!19, !18, i64 432}
!125 = !{!19, !18, i64 434}
!126 = !{!19, !16, i64 344}
!127 = !{!19, !13, i64 112}
!128 = distinct !{!128, !49}
!129 = distinct !{!129, !49, !141}
!130 = distinct !{!130, !49}
!131 = distinct !{!131, !49}
!132 = distinct !{!132, !49, !66}
!133 = distinct !{!133, !49, !141}
!134 = distinct !{!134, !49, !70, !71}
!135 = distinct !{!135, !49, !71, !70}
!136 = distinct !{!136, !49}
!137 = distinct !{!137, !49}
!138 = distinct !{!138, !49}
!139 = distinct !{!139, !49}
!140 = !{!19, !15, i64 264}
!141 = !{!"llvm.loop.peeled.count", i32 1}
!142 = distinct !{!142, !49}
!143 = distinct !{!143, !49}
!144 = distinct !{!144, !49}
!145 = distinct !{!145, !49}
!146 = distinct !{!146, !49}
!147 = distinct !{!147, !49}
!148 = distinct !{!148, !49}
!149 = distinct !{!149, !49}
!150 = !{!11, !11, i64 0}
!151 = distinct !{!151, !49}
!152 = distinct !{!152, !49}
!153 = distinct !{!153, !49}
end_hunk_2
