Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/xtrans_demosaic?download=true
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN6LibRaw18xtrans_interpolateEi:bb.a
bb.az:                                            ; preds = %.lr.ph
  %i.aat = load ptr, ptr %i.e, align 8, !tbaa !119
  %i.aau = mul nsw i32 %i.aag, %.19291207
  %i.aav = sext i32 %i.aau to i64
  %i.aaw = getelementptr inbounds [8 x i8], ptr %i.aat, i64 %i.aav
  %i.aax = sext i32 %.09251208 to i64
  %i.aay = getelementptr inbounds [8 x i8], ptr %i.aaw, i64 %i.aax ; 8 uses
  %.not1037 = icmp eq i16 %.09131210, 0
  br i1 %.not1037, label %.preheader1144.preheader, label %.loopexit1145

.preheader1144.preheader:                         ; preds = %bb.az
  %i.aaz = srem i32 %.19291207, 3
  %i.aba = sext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds [96 x i8], ptr %i.b, i64 %i.aba
  %i.abc = srem i32 %.09251208, 3
  %i.abd = sext i32 %i.abc to i64
  %i.abe = getelementptr inbounds [32 x i8], ptr %i.abb, i64 %i.abd ; 6 uses
  %i.abf = load i16, ptr %i.abe, align 16, !tbaa !117
  %i.abg = sext i16 %i.abf to i64
  %i.abh = getelementptr inbounds [8 x i8], ptr %i.aay, i64 %i.abg
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 2
  %i.abj = load i16, ptr %i.abi, align 2, !tbaa !117 ; 2 uses
  %spec.select = tail call i16 @llvm.umin.i16(i16 %.09191209, i16 %i.abj)
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abe, i64 2
  %i.abl = load i16, ptr %i.abk, align 2, !tbaa !117
  %i.abm = sext i16 %i.abl to i64
  %i.abn = getelementptr inbounds [8 x i8], ptr %i.aay, i64 %i.abm
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 2
  %i.abp = load i16, ptr %i.abo, align 2, !tbaa !117 ; 2 uses
  %spec.select.1 = tail call i16 @llvm.umin.i16(i16 %spec.select, i16 %i.abp)
  %.2915.1 = tail call i16 @llvm.umax.i16(i16 %i.abj, i16 %i.abp)
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abe, i64 4
  %i.abr = load i16, ptr %i.abq, align 4, !tbaa !117
  %i.abs = sext i16 %i.abr to i64
  %i.abt = getelementptr inbounds [8 x i8], ptr %i.aay, i64 %i.abs
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 2
  %i.abv = load i16, ptr %i.abu, align 2, !tbaa !117 ; 2 uses
  %spec.select.2 = tail call i16 @llvm.umin.i16(i16 %spec.select.1, i16 %i.abv)
  %.2915.2 = tail call i16 @llvm.umax.i16(i16 %.2915.1, i16 %i.abv)
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abe, i64 6
  %i.abx = load i16, ptr %i.abw, align 2, !tbaa !117
  %i.aby = sext i16 %i.abx to i64
  %i.abz = getelementptr inbounds [8 x i8], ptr %i.aay, i64 %i.aby
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 2
  %i.acb = load i16, ptr %i.aca, align 2, !tbaa !117 ; 2 uses
  %spec.select.3 = tail call i16 @llvm.umin.i16(i16 %spec.select.2, i16 %i.acb)
  %.2915.3 = tail call i16 @llvm.umax.i16(i16 %.2915.2, i16 %i.acb)
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %i.acd = load i16, ptr %i.acc, align 8, !tbaa !117
  %i.ace = sext i16 %i.acd to i64
  %i.acf = getelementptr inbounds [8 x i8], ptr %i.aay, i64 %i.ace
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 2
  %i.ach = load i16, ptr %i.acg, align 2, !tbaa !117 ; 2 uses
  %spec.select.4 = tail call i16 @llvm.umin.i16(i16 %spec.select.3, i16 %i.ach)
  %.2915.4 = tail call i16 @llvm.umax.i16(i16 %.2915.3, i16 %i.ach)
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abe, i64 10
  %i.acj = load i16, ptr %i.aci, align 2, !tbaa !117
  %i.ack = sext i16 %i.acj to i64
  %i.acl = getelementptr inbounds [8 x i8], ptr %i.aay, i64 %i.ack
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 2
  %i.acn = load i16, ptr %i.acm, align 2, !tbaa !117 ; 2 uses
  %spec.select.5 = tail call i16 @llvm.umin.i16(i16 %spec.select.4, i16 %i.acn)
  %.2915.5 = tail call i16 @llvm.umax.i16(i16 %.2915.4, i16 %i.acn)
  br label %.loopexit1145

.loopexit1145:                                    ; preds = %.preheader1144.preheader, %bb.az
  %.3922 = phi i16 [ %.09191209, %bb.az ], [ %spec.select.5, %.preheader1144.preheader ] ; 4 uses
  %.3916 = phi i16 [ %.09131210, %bb.az ], [ %.2915.5, %.preheader1144.preheader ] ; 4 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.aay, i64 2
  store i16 %.3922, ptr %i.aco, align 2, !tbaa !117
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aay, i64 6
  store i16 %.3916, ptr %i.acp, align 2, !tbaa !117
  %i.acq = sub nsw i32 %.19291207, %i.qt
  %i.acr = srem i32 %i.acq, 3
  switch i32 %i.acr, label %bb.bf [
    i32 1, label %bb.ba
    i32 2, label %bb.bc
  ]

bb.ba:                                            ; preds = %.loopexit1145
  %i.acs = load i16, ptr %i.i, align 4, !tbaa !112
  %i.act = zext i16 %i.acs to i32
  %i.acu = add nsw i32 %i.act, -3
  %i.acv = icmp slt i32 %.19291207, %i.acu
  br i1 %i.acv, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.acw = add nsw i32 %.19291207, 1
  %i.acx = add nsw i32 %.09251208, -1
  br label %bb.bf

bb.bc:                                            ; preds = %.loopexit1145
  %i.acy = add nsw i32 %.09251208, 2              ; 3 uses
  %i.acz = load i16, ptr %i.f, align 2, !tbaa !111
  %i.ada = zext i16 %i.acz to i32                 ; 2 uses
  %i.adb = add nsw i32 %i.ada, -3
  %i.adc = icmp slt i32 %i.acy, %i.adb
  %i.add = icmp sgt i32 %.19291207, 2
  %or.cond19 = and i1 %i.adc, %i.add
  br i1 %or.cond19, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.ade = add nsw i32 %.19291207, -1
  %i.adf = add nsw i32 %.19331206, 1
  %i.adg = load i16, ptr %i.i, align 4, !tbaa !112
  %i.adh = zext i16 %i.adg to i32
  %i.adi = mul nuw nsw i32 %i.adh, %i.ada
  %i.adj = icmp sgt i32 %.19331206, %i.adi
  br i1 %i.adj, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.adk = tail call ptr @__cxa_allocate_exception(i64 4) #9 ; 2 uses
  store i32 5, ptr %i.adk, align 16, !tbaa !116
  tail call void @__cxa_throw(ptr nonnull %i.adk, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #10
  unreachable

bb.bf:                                            ; preds = %.loopexit1145, %bb.bb, %bb.ba, %bb.bd, %bb.bc, %.lr.ph
  %.3935 = phi i32 [ %.19331206, %.lr.ph ], [ %.19331206, %.loopexit1145 ], [ %.19331206, %bb.bb ], [ %.19331206, %bb.ba ], [ %i.adf, %bb.bd ], [ %.19331206, %bb.bc ] ; 2 uses
  %.3931 = phi i32 [ %.19291207, %.lr.ph ], [ %.19291207, %.loopexit1145 ], [ %i.acw, %bb.bb ], [ %.19291207, %bb.ba ], [ %i.ade, %bb.bd ], [ %.19291207, %bb.bc ] ; 2 uses
  %.2927 = phi i32 [ %.09251208, %.lr.ph ], [ %.09251208, %.loopexit1145 ], [ %i.acx, %bb.bb ], [ %.09251208, %bb.ba ], [ %i.acy, %bb.bd ], [ %i.acy, %bb.bc ]
  %.5924 = phi i16 [ -1, %.lr.ph ], [ %.3922, %.loopexit1145 ], [ %.3922, %bb.bb ], [ %.3922, %bb.ba ], [ -1, %bb.bd ], [ -1, %bb.bc ]
  %.5918 = phi i16 [ 0, %.lr.ph ], [ %.3916, %.loopexit1145 ], [ %.3916, %bb.bb ], [ %.3916, %bb.ba ], [ 0, %bb.bd ], [ 0, %bb.bc ]
  %i.adl = add nsw i32 %.2927, 1                  ; 2 uses
  %i.adm = load i16, ptr %i.f, align 2, !tbaa !111 ; 2 uses
  %i.adn = zext i16 %i.adm to i32                 ; 2 uses
  %i.ado = add nsw i32 %i.adn, -2
  %i.adp = icmp slt i32 %i.adl, %i.ado
  br i1 %i.adp, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !15

._crit_edge.loopexit:                             ; preds = %bb.bf
  %.pre = load i16, ptr %i.i, align 4, !tbaa !112
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader1146
  %i.adq = phi i16 [ %i.zw, %.preheader1146 ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.adr = phi i16 [ %i.zx, %.preheader1146 ], [ %i.adm, %._crit_edge.loopexit ] ; 2 uses
  %.1933.lcssa = phi i32 [ %.09321212, %.preheader1146 ], [ %.3935, %._crit_edge.loopexit ]
  %.1929.lcssa = phi i32 [ %.09281213, %.preheader1146 ], [ %.3931, %._crit_edge.loopexit ]
  %i.ads = add nsw i32 %.1929.lcssa, 1            ; 2 uses
  %i.adt = zext i16 %i.adq to i32                 ; 2 uses
  %i.adu = add nsw i32 %i.adt, -2
  %i.adv = icmp slt i32 %i.ads, %i.adu
  br i1 %i.adv, label %.preheader1146, label %.preheader1143, !llvm.loop !16

.preheader1142:                                   ; preds = %.preheader1142.lr.ph, %.critedge21
  %.09111218 = phi i32 [ 3, %.preheader1142.lr.ph ], [ %i.afl, %.critedge21 ] ; 5 uses
  %i.adw = add nuw nsw i32 %.09111218, 6
  %i.adx = urem i32 %i.adw, 6
  %i.ady = zext nneg i32 %i.adx to i64
  %i.adz = getelementptr inbounds nuw [6 x i8], ptr %i.n, i64 %i.ady ; 6 uses
  %i.aea = urem i32 %.09111218, 3
  %i.aeb = zext nneg i32 %i.aea to i64
  %i.aec = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %i.aeb ; 12 uses
  %i.aed = mul nuw nsw i32 %.09111218, %i.aab     ; 6 uses
  br i1 %exitcond1417.not, label %.critedge21, label %bb.bg

.critedge:                                        ; preds = %.critedge21, %.preheader1143
  %i.aee = select i1 %i.jz, i64 24641536, i64 13107200
  %i.aef = tail call noundef ptr @_ZN6LibRaw18malloc_omp_buffersEim(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1, i64 noundef %i.aee) ; 2 uses
  %i.aeg = load i16, ptr %i.i, align 4, !tbaa !112 ; 2 uses
  %i.aeh = icmp ugt i16 %i.aeg, 22
  br i1 %i.aeh, label %.lr.ph1356, label %._crit_edge1357

.lr.ph1356:                                       ; preds = %.critedge
  %i.aei = select i1 %i.jz, i64 12582912, i64 6291456
  %i.aej = select i1 %i.jz, i64 22544384, i64 12058624
  %i.aek = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.aem = zext nneg i16 %.3943 to i32
  %i.aen = icmp sgt i32 %1, 0
  %i.aeo = zext nneg i16 %.3947 to i32
  %i.aep = shl nuw nsw i32 1048576, %i.ka
  %i.aeq = zext nneg i32 %i.aep to i64
  %i.aer = zext i16 %.3943 to i64                 ; 4 uses
  %i.aes = zext i16 %.3947 to i64
  %i.aet = tail call i32 @llvm.smax.i32(i32 %i.kb, i32 5)
  %smax1565 = add nsw i32 %i.aet, -4
  %i.aeu = zext i16 %.3947 to i64
  %i.aev = zext i16 %.3943 to i64
  %.pre1600 = load i16, ptr %i.f, align 2, !tbaa !111
  %i.aew = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.kb to i64   ; 7 uses
  %wide.trip.count1566 = zext i32 %smax1565 to i64 ; 2 uses
  %i.aey = add nuw nsw i64 %wide.trip.count, 7
  %gep1254.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %invariant.gep1248.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %gep1254.1.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %invariant.gep1248.2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %invariant.gep1248.3 = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 4 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.afa = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.afb = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %gep1254.1.3 = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %invariant.gep1248.4 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %invariant.gep1248.5 = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 4 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.afd = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.afe = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %gep1254.1.5 = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %xtraiter = and i64 %wide.trip.count, 4         ; 2 uses
  %unroll_iter = and i64 %wide.trip.count, 8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1877 = icmp ne i64 %xtraiter, 0
  %trip.count.minus.1 = add nsw i64 %wide.trip.count1566, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.rnd.up = add nuw nsw i64 %wide.trip.count1566, 3
  %n.vec = and i64 %n.rnd.up, 8589934588
  %i.aff = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.afh = icmp eq i64 %n.vec, 4
  %i.afi = icmp ugt <4 x i64> %broadcast.splat, <i64 3, i64 4, i64 5, i64 6> ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %xtraiter1880 = and i64 %i.aey, 7
  br label %bb.cm

.critedge21:                                      ; preds = %bb.ch, %bb.cl, %.loopexit1141.4, %.loopexit1141.3, %.loopexit1141.2, %.loopexit1141.1, %.loopexit1141, %.preheader1142
  %i.afl = add nuw nsw i32 %.09111218, 1
  %exitcond1424.not = icmp eq i32 %.09111218, %i.aaf
  br i1 %exitcond1424.not, label %.critedge, label %.preheader1142, !llvm.loop !17

bb.bg:                                            ; preds = %.preheader1142
  %i.afm = getelementptr inbounds nuw i8, ptr %i.adz, i64 3
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !113
  %i.afo = icmp eq i8 %i.afn, 1
  br i1 %i.afo, label %.loopexit1141, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.afp = add nuw i32 %i.aed, 3                  ; 4 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %i.afr = load i16, ptr %i.afq, align 8, !tbaa !117
  %i.afs = sext i16 %i.afr to i32                 ; 2 uses
  %i.aft = mul nsw i32 %i.afs, 3
  %i.afu = add i32 %i.afp, %i.aft                 ; 2 uses
  %i.afv = icmp sgt i32 %i.afu, -1
  %.not1035 = icmp slt i32 %i.afu, %i.aac
  %or.cond1040 = select i1 %i.afv, i1 %.not1035, i1 false
  br i1 %or.cond1040, label %bb.bl, label %bb.bk

bb.bi:                                            ; preds = %bb.bl
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aec, i64 10
  %i.afx = load i16, ptr %i.afw, align 2, !tbaa !117
  %i.afy = sext i16 %i.afx to i32                 ; 2 uses
  %i.afz = mul nsw i32 %i.afy, 3
  %i.aga = add i32 %i.afp, %i.afz                 ; 2 uses
  %i.agb = icmp sgt i32 %i.aga, -1
  %.not1035.1 = icmp slt i32 %i.aga, %i.aac
  %or.cond1040.1 = select i1 %i.agb, i1 %.not1035.1, i1 false
  br i1 %or.cond1040.1, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.agc = mul nsw i32 %i.afy, -3
  %i.agd = add i32 %i.afp, %i.agc                 ; 2 uses
  %i.age = icmp sgt i32 %i.agd, -1
  %.not1036.1 = icmp slt i32 %i.agd, %i.aac
  %or.cond1041.1 = select i1 %i.age, i1 %.not1036.1, i1 false
  br i1 %or.cond1041.1, label %.loopexit1141, label %bb.bm

bb.bk:                                            ; preds = %bb.ck, %bb.ci, %bb.cf, %bb.cd, %bb.ca, %bb.by, %bb.bv, %bb.bt, %bb.bq, %bb.bo, %bb.bi, %bb.bh
  %i.agf = tail call ptr @__cxa_allocate_exception(i64 4) #9 ; 2 uses
  store i32 5, ptr %i.agf, align 16, !tbaa !116
  tail call void @__cxa_throw(ptr nonnull %i.agf, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #10
  unreachable

bb.bl:                                            ; preds = %bb.bh
  %i.agg = mul nsw i32 %i.afs, -3
  %i.agh = add i32 %i.afp, %i.agg                 ; 2 uses
  %i.agi = icmp sgt i32 %i.agh, -1
  %.not1036 = icmp slt i32 %i.agh, %i.aac
  %or.cond1041 = select i1 %i.agi, i1 %.not1036, i1 false
  br i1 %or.cond1041, label %bb.bi, label %bb.bm

bb.bm:                                            ; preds = %bb.cl, %bb.cj, %bb.cg, %bb.ce, %bb.cb, %bb.bz, %bb.bw, %bb.bu, %bb.br, %bb.bp, %bb.bj, %bb.bl
  %i.agj = tail call ptr @__cxa_allocate_exception(i64 4) #9 ; 2 uses
  store i32 5, ptr %i.agj, align 16, !tbaa !116
  tail call void @__cxa_throw(ptr nonnull %i.agj, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #10
  unreachable

.loopexit1141:                                    ; preds = %bb.bj, %bb.bg
  br i1 %exitcond1417.1.not, label %.critedge21, label %bb.bn

bb.bn:                                            ; preds = %.loopexit1141
  %i.agk = getelementptr inbounds nuw i8, ptr %i.adz, i64 4
  %i.agl = load i8, ptr %i.agk, align 2, !tbaa !113
  %i.agm = icmp eq i8 %i.agl, 1
  br i1 %i.agm, label %.loopexit1141.1, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.agn = add nuw i32 %i.aed, 4                  ; 4 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.aec, i64 40
  %i.agp = load i16, ptr %i.ago, align 8, !tbaa !117
  %i.agq = sext i16 %i.agp to i32                 ; 2 uses
  %i.agr = mul nsw i32 %i.agq, 3
  %i.ags = add i32 %i.agn, %i.agr                 ; 2 uses
  %i.agt = icmp sgt i32 %i.ags, -1
  %.not1035.11419 = icmp slt i32 %i.ags, %i.aac
  %or.cond1040.11420 = select i1 %i.agt, i1 %.not1035.11419, i1 false
  br i1 %or.cond1040.11420, label %bb.bp, label %bb.bk

bb.bp:                                            ; preds = %bb.bo
  %i.agu = mul nsw i32 %i.agq, -3
  %i.agv = add i32 %i.agn, %i.agu                 ; 2 uses
  %i.agw = icmp sgt i32 %i.agv, -1
  %.not1036.11421 = icmp slt i32 %i.agv, %i.aac
  %or.cond1041.11422 = select i1 %i.agw, i1 %.not1036.11421, i1 false
  br i1 %or.cond1041.11422, label %bb.bq, label %bb.bm

bb.bq:                                            ; preds = %bb.bp
  %i.agx = getelementptr inbounds nuw i8, ptr %i.aec, i64 42
  %i.agy = load i16, ptr %i.agx, align 2, !tbaa !117
  %i.agz = sext i16 %i.agy to i32                 ; 2 uses
  %i.aha = mul nsw i32 %i.agz, 3
  %i.ahb = add i32 %i.agn, %i.aha                 ; 2 uses
  %i.ahc = icmp sgt i32 %i.ahb, -1
  %.not1035.1.1 = icmp slt i32 %i.ahb, %i.aac
  %or.cond1040.1.1 = select i1 %i.ahc, i1 %.not1035.1.1, i1 false
  br i1 %or.cond1040.1.1, label %bb.br, label %bb.bk

bb.br:                                            ; preds = %bb.bq
  %i.ahd = mul nsw i32 %i.agz, -3
  %i.ahe = add i32 %i.agn, %i.ahd                 ; 2 uses
  %i.ahf = icmp sgt i32 %i.ahe, -1
  %.not1036.1.1 = icmp slt i32 %i.ahe, %i.aac
  %or.cond1041.1.1 = select i1 %i.ahf, i1 %.not1036.1.1, i1 false
  br i1 %or.cond1041.1.1, label %.loopexit1141.1, label %bb.bm

.loopexit1141.1:                                  ; preds = %bb.br, %bb.bn
  br i1 %exitcond1417.2.not, label %.critedge21, label %bb.bs

bb.bs:                                            ; preds = %.loopexit1141.1
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.adz, i64 5
  %i.ahh = load i8, ptr %i.ahg, align 1, !tbaa !113
  %i.ahi = icmp eq i8 %i.ahh, 1
  br i1 %i.ahi, label %.loopexit1141.2, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ahj = add nuw i32 %i.aed, 5                  ; 4 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.aec, i64 72
  %i.ahl = load i16, ptr %i.ahk, align 8, !tbaa !117
  %i.ahm = sext i16 %i.ahl to i32                 ; 2 uses
  %i.ahn = mul nsw i32 %i.ahm, 3
  %i.aho = add i32 %i.ahj, %i.ahn                 ; 2 uses
  %i.ahp = icmp sgt i32 %i.aho, -1
  %.not1035.2 = icmp slt i32 %i.aho, %i.aac
  %or.cond1040.2 = select i1 %i.ahp, i1 %.not1035.2, i1 false
  br i1 %or.cond1040.2, label %bb.bu, label %bb.bk

bb.bu:                                            ; preds = %bb.bt
  %i.ahq = mul nsw i32 %i.ahm, -3
  %i.ahr = add i32 %i.ahj, %i.ahq                 ; 2 uses
  %i.ahs = icmp sgt i32 %i.ahr, -1
  %.not1036.2 = icmp slt i32 %i.ahr, %i.aac
  %or.cond1041.2 = select i1 %i.ahs, i1 %.not1036.2, i1 false
  br i1 %or.cond1041.2, label %bb.bv, label %bb.bm

bb.bv:                                            ; preds = %bb.bu
  %i.aht = getelementptr inbounds nuw i8, ptr %i.aec, i64 74
  %i.ahu = load i16, ptr %i.aht, align 2, !tbaa !117
  %i.ahv = sext i16 %i.ahu to i32                 ; 2 uses
  %i.ahw = mul nsw i32 %i.ahv, 3
  %i.ahx = add i32 %i.ahj, %i.ahw                 ; 2 uses
  %i.ahy = icmp sgt i32 %i.ahx, -1
  %.not1035.1.2 = icmp slt i32 %i.ahx, %i.aac
  %or.cond1040.1.2 = select i1 %i.ahy, i1 %.not1035.1.2, i1 false
  br i1 %or.cond1040.1.2, label %bb.bw, label %bb.bk

bb.bw:                                            ; preds = %bb.bv
  %i.ahz = mul nsw i32 %i.ahv, -3
  %i.aia = add i32 %i.ahj, %i.ahz                 ; 2 uses
  %i.aib = icmp sgt i32 %i.aia, -1
  %.not1036.1.2 = icmp slt i32 %i.aia, %i.aac
  %or.cond1041.1.2 = select i1 %i.aib, i1 %.not1036.1.2, i1 false
  br i1 %or.cond1041.1.2, label %.loopexit1141.2, label %bb.bm

.loopexit1141.2:                                  ; preds = %bb.bw, %bb.bs
  br i1 %exitcond1417.3.not, label %.critedge21, label %bb.bx

bb.bx:                                            ; preds = %.loopexit1141.2
  %i.aic = load i8, ptr %i.adz, align 2, !tbaa !113
  %i.aid = icmp eq i8 %i.aic, 1
  br i1 %i.aid, label %.loopexit1141.3, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.aie = add nuw i32 %i.aed, 6                  ; 4 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %i.aig = load i16, ptr %i.aif, align 8, !tbaa !117
  %i.aih = sext i16 %i.aig to i32                 ; 2 uses
  %i.aii = mul nsw i32 %i.aih, 3
  %i.aij = add i32 %i.aie, %i.aii                 ; 2 uses
  %i.aik = icmp sgt i32 %i.aij, -1
  %.not1035.3 = icmp slt i32 %i.aij, %i.aac
  %or.cond1040.3 = select i1 %i.aik, i1 %.not1035.3, i1 false
  br i1 %or.cond1040.3, label %bb.bz, label %bb.bk

bb.bz:                                            ; preds = %bb.by
  %i.ail = mul nsw i32 %i.aih, -3
  %i.aim = add i32 %i.aie, %i.ail                 ; 2 uses
  %i.ain = icmp sgt i32 %i.aim, -1
  %.not1036.3 = icmp slt i32 %i.aim, %i.aac
  %or.cond1041.3 = select i1 %i.ain, i1 %.not1036.3, i1 false
  br i1 %or.cond1041.3, label %bb.ca, label %bb.bm

end_hunk_0
begin_hunk_1_@_ZN6LibRaw18xtrans_interpolateEi:bb.a
  %indvars.iv1512 = phi i64 [ %indvars.iv.next1513, %._crit_edge1297 ], [ 2, %.preheader1130.lr.ph ] ; 3 uses
  %i.cno = getelementptr inbounds nuw [3072 x i8], ptr %i.cnh, i64 %indvars.iv1512
  %i.cnp = getelementptr inbounds nuw [3072 x i8], ptr %i.aks, i64 %indvars.iv1512
  br label %bb.ds

._crit_edge1299.split:                            ; preds = %._crit_edge1297, %.preheader1130.lr.ph
  %i.cnq = and i64 %indvars.iv1521, 3
  %i.cnr = getelementptr inbounds nuw [2 x i8], ptr @_ZZN6LibRaw18xtrans_interpolateEiE3dir, i64 %i.cnq
  %i.cns = load i16, ptr %i.cnr, align 2, !tbaa !117
  %i.cnt = sext i16 %i.cns to i64                 ; 3 uses
  br i1 %i.avw, label %.preheader1129.lr.ph, label %._crit_edge1304.split

.preheader1129.lr.ph:                             ; preds = %._crit_edge1299.split
  %i.cnu = sub nsw i64 0, %i.cnt                  ; 2 uses
  %i.cnv = getelementptr inbounds nuw [1048576 x i8], ptr %i.akt, i64 %indvars.iv1521
  br i1 %i.avy, label %.preheader1129, label %._crit_edge1304.split

._crit_edge1297:                                  ; preds = %bb.ds
  %indvars.iv.next1513 = add nuw nsw i64 %indvars.iv1512, 1 ; 2 uses
  %i.cnw = icmp slt i64 %indvars.iv.next1513, %i.awa
  br i1 %i.cnw, label %.preheader1130, label %._crit_edge1299.split, !llvm.loop !32

bb.ds:                                            ; preds = %.preheader1130, %bb.ds
  %indvars.iv1509 = phi i64 [ 2, %.preheader1130 ], [ %indvars.iv.next1510, %bb.ds ] ; 3 uses
  %i.cnx = getelementptr inbounds nuw [6 x i8], ptr %i.cno, i64 %indvars.iv1509
  %i.cny = getelementptr inbounds nuw [6 x i8], ptr %i.cnp, i64 %indvars.iv1509
  tail call void @_ZN6LibRaw6cielabEPtPs(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.cnx, ptr noundef nonnull %i.cny)
  %indvars.iv.next1510 = add nuw nsw i64 %indvars.iv1509, 1 ; 2 uses
  %i.cnz = icmp slt i64 %indvars.iv.next1510, %i.avz
  br i1 %i.cnz, label %bb.ds, label %._crit_edge1297, !llvm.loop !33

.preheader1129:                                   ; preds = %.preheader1129.lr.ph, %._crit_edge1302
  %indvars.iv1518 = phi i64 [ %indvars.iv.next1519, %._crit_edge1302 ], [ 3, %.preheader1129.lr.ph ] ; 3 uses
  %i.coa = getelementptr inbounds nuw [3072 x i8], ptr %i.aks, i64 %indvars.iv1518 ; 2 uses
  %i.cob = getelementptr inbounds nuw [2048 x i8], ptr %i.cnv, i64 %indvars.iv1518 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader.a, label %vector.body1803.a

vector.body1803.a:                                ; preds = %.preheader1129, %vector.body1803.a
  %index1804.a = phi i64 [ %index.next1815, %vector.body1803.a ], [ 0, %.preheader1129 ] ; 2 uses
  %i.coc = or disjoint i64 %index1804.a, 3        ; 2 uses
  %i.cod = getelementptr inbounds nuw [6 x i8], ptr %i.coa, i64 %i.coc ; 3 uses
  %wide.vec = load <24 x i16>, ptr %i.cod, align 2, !tbaa !117 ; 3 uses
  %strided.vec = shufflevector <24 x i16> %wide.vec, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1805 = shufflevector <24 x i16> %wide.vec, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1806 = shufflevector <24 x i16> %wide.vec, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.coe = sext <8 x i16> %strided.vec to <8 x i32>
  %i.cof = shl nsw <8 x i32> %i.coe, splat (i32 1)
  %i.cog = getelementptr inbounds [6 x i8], ptr %i.cod, i64 %i.cnt
  %wide.vec1807 = load <24 x i16>, ptr %i.cog, align 2, !tbaa !117 ; 3 uses
  %strided.vec1808 = shufflevector <24 x i16> %wide.vec1807, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1809 = shufflevector <24 x i16> %wide.vec1807, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1810 = shufflevector <24 x i16> %wide.vec1807, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.coh = sext <8 x i16> %strided.vec1808 to <8 x i32>
  %i.coi = getelementptr inbounds [6 x i8], ptr %i.cod, i64 %i.cnu
  %wide.vec1811 = load <24 x i16>, ptr %i.coi, align 2, !tbaa !117 ; 3 uses
  %strided.vec1812 = shufflevector <24 x i16> %wide.vec1811, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1813 = shufflevector <24 x i16> %wide.vec1811, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1814 = shufflevector <24 x i16> %wide.vec1811, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.coj = sext <8 x i16> %strided.vec1812 to <8 x i32>
  %i.cok = add nsw <8 x i32> %i.coh, %i.coj
  %i.col = sub nsw <8 x i32> %i.cof, %i.cok       ; 3 uses
  %i.com = mul nsw <8 x i32> %i.col, %i.col
  %i.con = sext <8 x i16> %strided.vec1805 to <8 x i32>
  %i.coo = shl nsw <8 x i32> %i.con, splat (i32 1)
  %i.cop = sext <8 x i16> %strided.vec1809 to <8 x i32>
  %i.coq = sext <8 x i16> %strided.vec1813 to <8 x i32>
  %i.cor = mul nsw <8 x i32> %i.col, splat (i32 500) ; 2 uses
  %i.cos = sdiv <8 x i32> %i.cor, splat (i32 232)
  %i.cot = add nsw <8 x i32> %i.cop, %i.coq
  %i.cou = sub nsw <8 x i32> %i.coo, %i.cot
  %i.cov = add nsw <8 x i32> %i.cou, %i.cos       ; 2 uses
  %i.cow = mul nsw <8 x i32> %i.cov, %i.cov
  %i.cox = add nuw nsw <8 x i32> %i.cow, %i.com
  %i.coy = sext <8 x i16> %strided.vec1806 to <8 x i32>
  %i.coz = shl nsw <8 x i32> %i.coy, splat (i32 1)
  %i.cpa = sext <8 x i16> %strided.vec1810 to <8 x i32>
  %i.cpb = sext <8 x i16> %strided.vec1814 to <8 x i32>
  %i.cpc = sdiv <8 x i32> %i.cor, splat (i32 -580)
  %i.cpd = add nsw <8 x i32> %i.cpc, %i.coz
  %i.cpe = add nsw <8 x i32> %i.cpa, %i.cpb
  %i.cpf = sub nsw <8 x i32> %i.cpd, %i.cpe       ; 2 uses
  %i.cpg = mul nsw <8 x i32> %i.cpf, %i.cpf
  %i.cph = add nuw nsw <8 x i32> %i.cox, %i.cpg
  %i.cpi = uitofp nneg <8 x i32> %i.cph to <8 x float>
  %i.cpj = getelementptr inbounds nuw [4 x i8], ptr %i.cob, i64 %i.coc
  store <8 x float> %i.cpi, ptr %i.cpj, align 4, !tbaa !121
  %index.next1815 = add nuw i64 %index1804.a, 8   ; 2 uses
  %i.cpk = icmp eq i64 %index.next1815, %n.vec1802
  br i1 %i.cpk, label %middle.block1816, label %vector.body1803.a, !llvm.loop !34

middle.block1816:                                 ; preds = %vector.body1803.a
  br i1 %cmp.n, label %._crit_edge1302, label %scalar.ph.preheader.a

scalar.ph.preheader.a:                            ; preds = %.preheader1129, %middle.block1816
  %indvars.iv1515.ph = phi i64 [ 3, %.preheader1129 ], [ %i.awf, %middle.block1816 ]
  br label %scalar.ph.a

._crit_edge1304.split:                            ; preds = %._crit_edge1302, %.preheader1135, %.preheader1129.lr.ph, %._crit_edge1299.split
  %indvars.iv.next1522 = add nuw nsw i64 %indvars.iv1521, 1 ; 2 uses
  %exitcond1524.not = icmp eq i64 %indvars.iv.next1522, %wide.trip.count
  br i1 %exitcond1524.not, label %bb.dr, label %.preheader1135, !llvm.loop !35

._crit_edge1302:                                  ; preds = %scalar.ph.a, %middle.block1816
  %indvars.iv.next1519 = add nuw nsw i64 %indvars.iv1518, 1 ; 2 uses
  %i.cpl = icmp slt i64 %indvars.iv.next1519, %i.awc
  br i1 %i.cpl, label %.preheader1129, label %._crit_edge1304.split, !llvm.loop !36

scalar.ph.a:                                      ; preds = %scalar.ph.preheader.a, %scalar.ph.a
  %indvars.iv1515 = phi i64 [ %indvars.iv.next1516, %scalar.ph.a ], [ %indvars.iv1515.ph, %scalar.ph.preheader.a ] ; 3 uses
  %i.cpm = getelementptr inbounds nuw [6 x i8], ptr %i.coa, i64 %indvars.iv1515 ; 5 uses
  %i.cpn = load i16, ptr %i.cpm, align 2, !tbaa !117
  %i.cpo = sext i16 %i.cpn to i32
  %i.cpp = shl nsw i32 %i.cpo, 1
  %i.cpq = getelementptr inbounds [6 x i8], ptr %i.cpm, i64 %i.cnt ; 3 uses
  %i.cpr = load i16, ptr %i.cpq, align 2, !tbaa !117
  %i.cps = sext i16 %i.cpr to i32
  %i.cpt = getelementptr inbounds [6 x i8], ptr %i.cpm, i64 %i.cnu ; 3 uses
  %i.cpu = load i16, ptr %i.cpt, align 2, !tbaa !117
  %i.cpv = sext i16 %i.cpu to i32
  %i.cpw = add nsw i32 %i.cps, %i.cpv
  %i.cpx = sub nsw i32 %i.cpp, %i.cpw             ; 3 uses
  %i.cpy = mul nsw i32 %i.cpx, %i.cpx
  %i.cpz = getelementptr inbounds nuw i8, ptr %i.cpm, i64 2
  %i.cqa = load i16, ptr %i.cpz, align 2, !tbaa !117
  %i.cqb = sext i16 %i.cqa to i32
  %i.cqc = shl nsw i32 %i.cqb, 1
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.cpq, i64 2
  %i.cqe = load i16, ptr %i.cqd, align 2, !tbaa !117
  %i.cqf = sext i16 %i.cqe to i32
  %i.cqg = getelementptr inbounds nuw i8, ptr %i.cpt, i64 2
  %i.cqh = load i16, ptr %i.cqg, align 2, !tbaa !117
  %i.cqi = sext i16 %i.cqh to i32
  %i.cqj = mul nsw i32 %i.cpx, 500                ; 2 uses
  %i.cqk = sdiv i32 %i.cqj, 232
  %i.cql = add nsw i32 %i.cqf, %i.cqi
  %i.cqm = sub nsw i32 %i.cqc, %i.cql
  %i.cqn = add nsw i32 %i.cqm, %i.cqk             ; 2 uses
  %i.cqo = mul nsw i32 %i.cqn, %i.cqn
  %i.cqp = add nuw nsw i32 %i.cqo, %i.cpy
  %i.cqq = getelementptr inbounds nuw i8, ptr %i.cpm, i64 4
  %i.cqr = load i16, ptr %i.cqq, align 2, !tbaa !117
  %i.cqs = sext i16 %i.cqr to i32
  %i.cqt = shl nsw i32 %i.cqs, 1
  %i.cqu = getelementptr inbounds nuw i8, ptr %i.cpq, i64 4
  %i.cqv = load i16, ptr %i.cqu, align 2, !tbaa !117
  %i.cqw = sext i16 %i.cqv to i32
  %i.cqx = getelementptr inbounds nuw i8, ptr %i.cpt, i64 4
  %i.cqy = load i16, ptr %i.cqx, align 2, !tbaa !117
  %i.cqz = sext i16 %i.cqy to i32
  %.neg = sdiv i32 %i.cqj, -580
  %i.cra = add nsw i32 %.neg, %i.cqt
  %i.crb = add nsw i32 %i.cqw, %i.cqz
  %i.crc = sub nsw i32 %i.cra, %i.crb             ; 2 uses
  %i.crd = mul nsw i32 %i.crc, %i.crc
  %i.cre = add nuw nsw i32 %i.cqp, %i.crd
  %i.crf = uitofp nsz nneg i32 %i.cre to float
  %i.crg = getelementptr inbounds nuw [4 x i8], ptr %i.cob, i64 %indvars.iv1515
  store float %i.crf, ptr %i.crg, align 4, !tbaa !121
  %indvars.iv.next1516 = add nuw nsw i64 %indvars.iv1515, 1 ; 2 uses
  %i.crh = icmp slt i64 %indvars.iv.next1516, %i.awb
  br i1 %i.crh, label %scalar.ph.a, label %._crit_edge1302, !llvm.loop !37

.preheader1134:                                   ; preds = %.preheader1134.preheader, %._crit_edge1320
  %indvars.iv1546 = phi i64 [ 4, %.preheader1134.preheader ], [ %i.cri, %._crit_edge1320 ] ; 5 uses
  %invariant.gep1306 = getelementptr inbounds nuw [2048 x i8], ptr %i.akt, i64 %indvars.iv1546
  %invariant.gep1314 = getelementptr inbounds nuw [512 x i8], ptr %i.aku, i64 %indvars.iv1546
  %i.cri = add nuw nsw i64 %indvars.iv1546, 1     ; 3 uses
  br label %.preheader1128

._crit_edge1322.split:                            ; preds = %._crit_edge1320, %bb.dr
  %i.crj = load i16, ptr %i.i, align 4, !tbaa !112
  %i.crk = zext i16 %i.crj to i32
  %i.crl = sub nsw i32 %i.crk, %i.alf             ; 2 uses
  %i.crm = icmp slt i32 %i.crl, 516
  %i.crn = add nsw i32 %i.crl, 2
  %spec.select1053 = select i1 %i.crm, i32 %i.crn, i32 %i.avo
  %i.cro = add nsw i32 %spec.select1053, -8       ; 2 uses
  %i.crp = icmp slt i32 %i.alg, %i.cro
  %.pre1625 = load i16, ptr %i.f, align 2, !tbaa !111 ; 3 uses
  br i1 %i.crp, label %.lr.ph1347, label %._crit_edge1348.split

.lr.ph1347:                                       ; preds = %._crit_edge1322.split
  %i.crq = zext i16 %.pre1625 to i32
  %i.crr = sub nsw i32 %i.crq, %i.avp             ; 2 uses
  %i.crs = icmp slt i32 %i.crr, 516
  %i.crt = add nsw i32 %i.crr, 2
  %.0898 = select i1 %i.crs, i32 %i.crt, i32 %i.avq
  %i.cru = tail call i32 @llvm.umin.i32(i32 %i.avp, i32 8)
  %i.crv = add nsw i32 %.0898, -8                 ; 2 uses
  %i.crw = icmp slt i32 %i.cru, %i.crv
  br i1 %i.crw, label %.lr.ph1347.split, label %._crit_edge1348.split

.lr.ph1347.split:                                 ; preds = %.lr.ph1347
  %i.crx = load ptr, ptr %i.e, align 8, !tbaa !119 ; 3 uses
  %i.cry = zext nneg i32 %i.crv to i64
  %i.crz = zext nneg i32 %i.cro to i64
  br label %.lr.ph1343

.preheader1128:                                   ; preds = %.preheader1134, %bb.du
  %indvars.iv1543 = phi i64 [ 4, %.preheader1134 ], [ %i.cse, %bb.du ] ; 7 uses
  %invariant.gep1308 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1306, i64 %indvars.iv1543 ; 9 uses
  br i1 %i.jz, label %.preheader1128.new, label %.epil.preheader

._crit_edge1320:                                  ; preds = %bb.du
  %2 = icmp samesign ult i64 %i.cri, %i.cnn
  br i1 %2, label %.preheader1134, label %._crit_edge1322.split, !llvm.loop !38

.preheader1128.new:                               ; preds = %.preheader1128, %.preheader1128.new
  %indvars.iv1525 = phi i64 [ %indvars.iv.next1526.7, %.preheader1128.new ], [ 0, %.preheader1128 ] ; 9 uses
  %.08661311 = phi float [ %spec.select1054.7, %.preheader1128.new ], [ f0x7F7FFFFF, %.preheader1128 ] ; 2 uses
  %niter = phi i64 [ %niter.next.7, %.preheader1128.new ], [ 0, %.preheader1128 ]
  %gep1309 = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1308, i64 %indvars.iv1525
  %3 = load float, ptr %gep1309, align 4, !tbaa !121 ; 2 uses
  %4 = fcmp reassoc nsz arcp contract afn ogt float %.08661311, %3
  %spec.select1054 = select nsz i1 %4, float %3, float %.08661311 ; 2 uses
  %5 = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1308, i64 %indvars.iv1525
  %gep1309.1 = getelementptr inbounds nuw i8, ptr %5, i64 1048576
  %6 = load float, ptr %gep1309.1, align 4, !tbaa !121 ; 2 uses
  %7 = fcmp reassoc nsz arcp contract afn ogt float %spec.select1054, %6
  %spec.select1054.1 = select nsz i1 %7, float %6, float %spec.select1054 ; 2 uses
  %8 = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1308, i64 %indvars.iv1525
  %gep1309.2 = getelementptr inbounds nuw i8, ptr %8, i64 2097152
  %9 = load float, ptr %gep1309.2, align 4, !tbaa !121 ; 2 uses
  %10 = fcmp reassoc nsz arcp contract afn ogt float %spec.select1054.1, %9
  %spec.select1054.2 = select nsz i1 %10, float %9, float %spec.select1054.1 ; 2 uses
  %11 = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1308, i64 %indvars.iv1525
  %gep1309.3 = getelementptr inbounds nuw i8, ptr %11, i64 3145728
  %12 = load float, ptr %gep1309.3, align 4, !tbaa !121 ; 2 uses
  %13 = fcmp reassoc nsz arcp contract afn ogt float %spec.select1054.2, %12
  %spec.select1054.3 = select nsz i1 %13, float %12, float %spec.select1054.2 ; 2 uses
  %14 = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1308, i64 %indvars.iv1525
  %gep1309.4 = getelementptr inbounds nuw i8, ptr %14, i64 4194304
  %15 = load float, ptr %gep1309.4, align 4, !tbaa !121 ; 2 uses
  %16 = fcmp reassoc nsz arcp contract afn ogt float %spec.select1054.3, %15
  %spec.select1054.4 = select nsz i1 %16, float %15, float %spec.select1054.3 ; 2 uses
  %17 = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1308, i64 %indvars.iv1525
  %gep1309.5 = getelementptr inbounds nuw i8, ptr %17, i64 5242880
  %18 = load float, ptr %gep1309.5, align 4, !tbaa !121 ; 2 uses
  %19 = fcmp reassoc nsz arcp contract afn ogt float %spec.select1054.4, %18
  %spec.select1054.5 = select nsz i1 %19, float %18, float %spec.select1054.4 ; 2 uses
  %20 = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1308, i64 %indvars.iv1525
  %gep1309.6 = getelementptr inbounds nuw i8, ptr %20, i64 6291456
  %21 = load float, ptr %gep1309.6, align 4, !tbaa !121 ; 2 uses
  %22 = fcmp reassoc nsz arcp contract afn ogt float %spec.select1054.5, %21
  %spec.select1054.6 = select nsz i1 %22, float %21, float %spec.select1054.5 ; 2 uses
  %23 = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1308, i64 %indvars.iv1525
  %gep1309.7 = getelementptr inbounds nuw i8, ptr %23, i64 7340032
  %24 = load float, ptr %gep1309.7, align 4, !tbaa !121 ; 2 uses
  %25 = fcmp reassoc nsz arcp contract afn ogt float %spec.select1054.6, %24
  %spec.select1054.7 = select nsz i1 %25, float %24, float %spec.select1054.6 ; 3 uses
  %indvars.iv.next1526.7 = add nuw nsw i64 %indvars.iv1525, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.preheader1128.new, !llvm.loop !39

.unr-lcssa:                                       ; preds = %.preheader1128.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa.a, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader1128
  %indvars.iv1525.epil.init = phi i64 [ 0, %.preheader1128 ], [ %indvars.iv.next1526.7, %.unr-lcssa ]
  %.08661311.epil.init = phi float [ f0x7F7FFFFF, %.preheader1128 ], [ %spec.select1054.7, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1877)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dt, %.epil.preheader
  %indvars.iv1525.epil = phi i64 [ %indvars.iv1525.epil.init, %.epil.preheader ], [ %indvars.iv.next1526.epil, %bb.dt ] ; 2 uses
  %.08661311.epil = phi float [ %.08661311.epil.init, %.epil.preheader ], [ %spec.select1054.epil, %bb.dt ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next.a, %bb.dt ]
  %gep1309.epil = getelementptr inbounds nuw [1048576 x i8], ptr %invariant.gep1308, i64 %indvars.iv1525.epil
  %i.csa = load float, ptr %gep1309.epil, align 4, !tbaa !121 ; 2 uses
  %i.csb = fcmp reassoc nsz arcp contract afn ogt float %.08661311.epil, %i.csa
  %spec.select1054.epil = select nsz i1 %i.csb, float %i.csa, float %.08661311.epil ; 2 uses
  %indvars.iv.next1526.epil = add nuw nsw i64 %indvars.iv1525.epil, 1
  %epil.iter.next.a = add i64 %epil.iter, 1       ; 2 uses
  %epil.iter.cmp.not.a = icmp eq i64 %epil.iter.next.a, 4
  br i1 %epil.iter.cmp.not.a, label %.epilog-lcssa.a, label %bb.dt, !llvm.loop !40

.epilog-lcssa.a:                                  ; preds = %bb.dt, %.unr-lcssa
  %spec.select1054.lcssa = phi float [ %spec.select1054.7, %.unr-lcssa ], [ %spec.select1054.epil, %bb.dt ]
  %i.csc = fmul reassoc nsz arcp contract afn float %spec.select1054.lcssa, 8.000000e+00 ; 9 uses
  %invariant.gep1316 = getelementptr inbounds nuw i8, ptr %invariant.gep1314, i64 %indvars.iv1543
  %i.csd = add nsw i64 %indvars.iv1543, -1        ; 3 uses
  %i.cse = add nuw nsw i64 %indvars.iv1543, 1     ; 5 uses
  br label %.preheader1122

.preheader1122:                                   ; preds = %.epilog-lcssa.a, %bb.ek
  %indvars.iv1538 = phi i64 [ 0, %.epilog-lcssa.a ], [ %indvars.iv.next1539, %bb.ek ] ; 3 uses
  %i.csf = getelementptr inbounds nuw [1048576 x i8], ptr %i.akt, i64 %indvars.iv1538 ; 3 uses
  %gep1317 = getelementptr inbounds nuw [262144 x i8], ptr %invariant.gep1316, i64 %indvars.iv1538 ; 18 uses
  %i.csg = getelementptr [2048 x i8], ptr %i.csf, i64 %indvars.iv1546
  %i.csh = getelementptr i8, ptr %i.csg, i64 -2048 ; 3 uses
  %i.csi = getelementptr inbounds [4 x i8], ptr %i.csh, i64 %i.csd
  %i.csj = load float, ptr %i.csi, align 4, !tbaa !121
  %i.csk = fcmp reassoc nsz arcp contract afn ugt float %i.csj, %i.csc
  br i1 %i.csk, label %bb.dw, label %bb.dv

bb.du:                                            ; preds = %bb.ek
  %i.csl = icmp samesign ult i64 %i.cse, %i.cnm
  br i1 %i.csl, label %.preheader1128, label %._crit_edge1320, !llvm.loop !41

bb.dv:                                            ; preds = %.preheader1122
  %i.csm = load i8, ptr %gep1317, align 1, !tbaa !113
  %i.csn = add i8 %i.csm, 1
  store i8 %i.csn, ptr %gep1317, align 1, !tbaa !113
  br label %bb.dw

bb.dw:                                            ; preds = %.preheader1122, %bb.dv
  %i.cso = getelementptr inbounds nuw [4 x i8], ptr %i.csh, i64 %indvars.iv1543
  %i.csp = load float, ptr %i.cso, align 4, !tbaa !121
  %i.csq = fcmp reassoc nsz arcp contract afn ugt float %i.csp, %i.csc
  br i1 %i.csq, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.csr = load i8, ptr %gep1317, align 1, !tbaa !113
  %i.css = add i8 %i.csr, 1
  store i8 %i.css, ptr %gep1317, align 1, !tbaa !113
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.cst = getelementptr inbounds nuw [4 x i8], ptr %i.csh, i64 %i.cse
  %i.csu = load float, ptr %i.cst, align 4, !tbaa !121
  %i.csv = fcmp reassoc nsz arcp contract afn ugt float %i.csu, %i.csc
  br i1 %i.csv, label %.preheader1115.1, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.csw = load i8, ptr %gep1317, align 1, !tbaa !113
  %i.csx = add i8 %i.csw, 1
  store i8 %i.csx, ptr %gep1317, align 1, !tbaa !113
  br label %.preheader1115.1

.preheader1115.1:                                 ; preds = %bb.dz, %bb.dy
  %i.csy = getelementptr inbounds nuw [2048 x i8], ptr %i.csf, i64 %indvars.iv1546 ; 3 uses
  %i.csz = getelementptr inbounds [4 x i8], ptr %i.csy, i64 %i.csd
  %i.cta = load float, ptr %i.csz, align 4, !tbaa !121
  %i.ctb = fcmp reassoc nsz arcp contract afn ugt float %i.cta, %i.csc
  br i1 %i.ctb, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %.preheader1115.1
  %i.ctc = load i8, ptr %gep1317, align 1, !tbaa !113
  %i.ctd = add i8 %i.ctc, 1
  store i8 %i.ctd, ptr %gep1317, align 1, !tbaa !113
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %.preheader1115.1
  %i.cte = getelementptr inbounds nuw [4 x i8], ptr %i.csy, i64 %indvars.iv1543
  %i.ctf = load float, ptr %i.cte, align 4, !tbaa !121
  %i.ctg = fcmp reassoc nsz arcp contract afn ugt float %i.ctf, %i.csc
  br i1 %i.ctg, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.cth = load i8, ptr %gep1317, align 1, !tbaa !113
  %i.cti = add i8 %i.cth, 1
  store i8 %i.cti, ptr %gep1317, align 1, !tbaa !113
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.ctj = getelementptr inbounds nuw [4 x i8], ptr %i.csy, i64 %i.cse
  %i.ctk = load float, ptr %i.ctj, align 4, !tbaa !121
  %i.ctl = fcmp reassoc nsz arcp contract afn ugt float %i.ctk, %i.csc
  br i1 %i.ctl, label %.preheader1115.2, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ctm = load i8, ptr %gep1317, align 1, !tbaa !113
  %i.ctn = add i8 %i.ctm, 1
  store i8 %i.ctn, ptr %gep1317, align 1, !tbaa !113
  br label %.preheader1115.2

.preheader1115.2:                                 ; preds = %bb.ee, %bb.ed
  %i.cto = getelementptr inbounds nuw [2048 x i8], ptr %i.csf, i64 %i.cri ; 3 uses
  %i.ctp = getelementptr inbounds [4 x i8], ptr %i.cto, i64 %i.csd
  %i.ctq = load float, ptr %i.ctp, align 4, !tbaa !121
  %i.ctr = fcmp reassoc nsz arcp contract afn ugt float %i.ctq, %i.csc
  br i1 %i.ctr, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %.preheader1115.2
  %i.cts = load i8, ptr %gep1317, align 1, !tbaa !113
  %i.ctt = add i8 %i.cts, 1
  store i8 %i.ctt, ptr %gep1317, align 1, !tbaa !113
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.preheader1115.2
  %i.ctu = getelementptr inbounds nuw [4 x i8], ptr %i.cto, i64 %indvars.iv1543
  %i.ctv = load float, ptr %i.ctu, align 4, !tbaa !121
  %i.ctw = fcmp reassoc nsz arcp contract afn ugt float %i.ctv, %i.csc
  br i1 %i.ctw, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ctx = load i8, ptr %gep1317, align 1, !tbaa !113
  %i.cty = add i8 %i.ctx, 1
  store i8 %i.cty, ptr %gep1317, align 1, !tbaa !113
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.ctz = getelementptr inbounds nuw [4 x i8], ptr %i.cto, i64 %i.cse
  %i.cua = load float, ptr %i.ctz, align 4, !tbaa !121
  %i.cub = fcmp reassoc nsz arcp contract afn ugt float %i.cua, %i.csc
  br i1 %i.cub, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.cuc = load i8, ptr %gep1317, align 1, !tbaa !113
  %i.cud = add i8 %i.cuc, 1
  store i8 %i.cud, ptr %gep1317, align 1, !tbaa !113
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %indvars.iv.next1539 = add nuw nsw i64 %indvars.iv1538, 1 ; 2 uses
  %exitcond1542.not = icmp eq i64 %indvars.iv.next1539, %wide.trip.count
  br i1 %exitcond1542.not, label %bb.du, label %.preheader1122, !llvm.loop !42

._crit_edge1348.split.loopexit:                   ; preds = %._crit_edge1344
  %.pre1624 = load i16, ptr %i.f, align 2, !tbaa !111
  br label %._crit_edge1348.split

._crit_edge1348.split:                            ; preds = %._crit_edge1348.split.loopexit, %.lr.ph1347, %._crit_edge1322.split
  %i.cue = phi i16 [ %.pre1624, %._crit_edge1348.split.loopexit ], [ %.pre1625, %.lr.ph1347 ], [ %.pre1625, %._crit_edge1322.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %indvars.iv.next1426 = add nuw nsw i64 %indvars.iv1425, 496 ; 2 uses
  %i.cuf = zext i16 %i.cue to i32                 ; 2 uses
  %i.cug = add nsw i32 %i.cuf, -19
  %i.cuh = sext i32 %i.cug to i64
  %i.cui = icmp slt i64 %indvars.iv.next1426, %i.cuh
  %indvars.iv.next1457 = add nuw nsw i64 %indvars.iv1456, 496
  %indvars.iv.next1484 = add nuw nsw i64 %indvars.iv1483, 496
  br i1 %i.cui, label %bb.cn, label %._crit_edge1354.loopexit, !llvm.loop !43

.lr.ph1343:                                       ; preds = %.lr.ph1347.split, %._crit_edge1344
  %indvars.iv1589 = phi i64 [ %umin1588, %.lr.ph1347.split ], [ %i.cuk, %._crit_edge1344 ] ; 7 uses
  %invariant.gep1336 = getelementptr inbounds nuw [3072 x i8], ptr %i.akr, i64 %indvars.iv1589
  %i.cuj = add nuw nsw i64 %indvars.iv1589, %indvars.iv1430 ; 3 uses
  %i.cuk = add nuw nsw i64 %indvars.iv1589, 1     ; 3 uses
  br label %bb.el

._crit_edge1344:                                  ; preds = %.preheader1126
  %i.cul = icmp samesign ult i64 %i.cuk, %i.crz
  br i1 %i.cul, label %.lr.ph1343, label %._crit_edge1348.split.loopexit, !llvm.loop !44

bb.el:                                            ; preds = %.lr.ph1343, %.preheader1126
  %indvars.iv1586 = phi i64 [ %umin, %.lr.ph1343 ], [ %i.cuo, %.preheader1126 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.cum = add nsw i64 %indvars.iv1586, -2        ; 5 uses
  %i.cun = add nsw i64 %indvars.iv1586, -1        ; 4 uses
  %i.cuo = add nuw nsw i64 %indvars.iv1586, 1     ; 5 uses
  %i.cup = add nuw nsw i64 %indvars.iv1586, 2     ; 4 uses
  br label %.preheader

.preheader1127:                                   ; preds = %.preheader
  br i1 %i.jz, label %vector.body, label %._crit_edge1331

vector.body:                                      ; preds = %.preheader1127
  %unmaskedload = load <4 x i32>, ptr %i.d, align 16, !tbaa !114 ; 2 uses
  %unmaskedload1910 = load <4 x i32>, ptr %i.afg, align 16, !tbaa !114 ; 2 uses
  %i.cuq = icmp slt <4 x i32> %unmaskedload, %unmaskedload1910
  %i.cur = icmp sgt <4 x i32> %unmaskedload, %unmaskedload1910
  %i.cus = select <4 x i1> %i.aff, <4 x i1> %i.cur, <4 x i1> zeroinitializer
  call void @llvm.masked.store.v4i32.p0(<4 x i32> zeroinitializer, ptr align 16 %i.afg, <4 x i1> %i.cus), !tbaa !114
  %i.cut = select <4 x i1> %i.aff, <4 x i1> %i.cuq, <4 x i1> zeroinitializer
  call void @llvm.masked.store.v4i32.p0(<4 x i32> zeroinitializer, ptr align 16 %i.d, <4 x i1> %i.cut), !tbaa !114
  br i1 %i.afh, label %._crit_edge1331, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %unmaskedload1911 = load <4 x i32>, ptr %i.afj, align 16, !tbaa !114 ; 2 uses
  %wide.masked.load1800.1 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 16 %i.afk, <4 x i1> %i.afi, <4 x i32> poison), !tbaa !114 ; 2 uses
  %i.cuu = icmp slt <4 x i32> %unmaskedload1911, %wide.masked.load1800.1
  %i.cuv = icmp sgt <4 x i32> %unmaskedload1911, %wide.masked.load1800.1
  %i.cuw = select <4 x i1> %i.afi, <4 x i1> %i.cuv, <4 x i1> zeroinitializer
  call void @llvm.masked.store.v4i32.p0(<4 x i32> zeroinitializer, ptr align 16 %i.afk, <4 x i1> %i.cuw), !tbaa !114
  %i.cux = select <4 x i1> %i.afi, <4 x i1> %i.cuu, <4 x i1> zeroinitializer
  call void @llvm.masked.store.v4i32.p0(<4 x i32> zeroinitializer, ptr align 16 %i.afj, <4 x i1> %i.cux), !tbaa !114
  br label %._crit_edge1331

.preheader:                                       ; preds = %bb.el, %.preheader
  %indvars.iv1557 = phi i64 [ 0, %bb.el ], [ %indvars.iv.next1558, %.preheader ] ; 3 uses
  %i.cuy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1557
  %i.cuz = getelementptr inbounds nuw [262144 x i8], ptr %i.aku, i64 %indvars.iv1557 ; 5 uses
  %i.cva = getelementptr [512 x i8], ptr %i.cuz, i64 %indvars.iv1589
  %i.cvb = getelementptr i8, ptr %i.cva, i64 -1024 ; 5 uses
  %i.cvc = getelementptr inbounds i8, ptr %i.cvb, i64 %i.cum
  %i.cvd = load i8, ptr %i.cvc, align 1, !tbaa !113
  %i.cve = sext i8 %i.cvd to i32
end_hunk_1
begin_hunk_2_@_ZN6LibRaw18xtrans_interpolateEi:bb.a
  %epil.iter1881.cmp.not = icmp eq i64 %epil.iter1881.next, %xtraiter1880
  br i1 %epil.iter1881.cmp.not, label %.epilog-lcssa1883, label %bb.em, !llvm.loop !46

.epilog-lcssa1883:                                ; preds = %bb.em
  %i.cxt = trunc i32 %spec.select10551077.epil to i16 ; 2 uses
  %i.cxu = lshr i16 %i.cxt, 3
  %i.cxv = sub i16 %i.cxt, %i.cxu
  %i.cxw = zext i16 %i.cxv to i32                 ; 4 uses
  %invariant.gep1338 = getelementptr inbounds nuw [6 x i8], ptr %invariant.gep1336, i64 %indvars.iv1586 ; 4 uses
  br label %bb.en

.preheader1126:                                   ; preds = %bb.er
  %i.cxx = add nuw nsw i64 %indvars.iv1586, %indvars.iv1425 ; 3 uses
  %i.cxy = sdiv i32 %.sroa.0.1.3, %.sroa.12.1.3
  %i.cxz = trunc i32 %i.cxy to i16
  %i.cya = load i16, ptr %i.f, align 2, !tbaa !111
  %i.cyb = zext i16 %i.cya to i64
  %i.cyc = mul i64 %i.cuj, %i.cyb
  %i.cyd = add i64 %i.cyc, %i.cxx
  %i.cye = and i64 %i.cyd, 4294967295
  %i.cyf = getelementptr inbounds nuw [8 x i8], ptr %i.crx, i64 %i.cye
  store i16 %i.cxz, ptr %i.cyf, align 2, !tbaa !117
  %i.cyg = load i16, ptr %i.f, align 2, !tbaa !111
  %i.cyh = zext i16 %i.cyg to i64
  %i.cyi = mul i64 %i.cuj, %i.cyh
  %i.cyj = add i64 %i.cyi, %i.cxx
  %i.cyk = and i64 %i.cyj, 4294967295
  %i.cyl = getelementptr inbounds nuw [8 x i8], ptr %i.crx, i64 %i.cyk
  %i.cym = getelementptr inbounds nuw i8, ptr %i.cyl, i64 2
  %i.cyn = insertelement <2 x i32> poison, i32 %.sroa.12.1.3, i64 0
  %i.cyo = shufflevector <2 x i32> %i.cyn, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cyp = sdiv <2 x i32> %i.dat, %i.cyo
  %i.cyq = trunc <2 x i32> %i.cyp to <2 x i16>    ; 2 uses
  %i.cyr = extractelement <2 x i16> %i.cyq, i64 0
  store i16 %i.cyr, ptr %i.cym, align 2, !tbaa !117
  %i.cys = load i16, ptr %i.f, align 2, !tbaa !111
  %i.cyt = zext i16 %i.cys to i64
  %i.cyu = mul i64 %i.cuj, %i.cyt
  %i.cyv = add i64 %i.cyu, %i.cxx
  %i.cyw = and i64 %i.cyv, 4294967295
  %i.cyx = getelementptr inbounds nuw [8 x i8], ptr %i.crx, i64 %i.cyw
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cyx, i64 4
  %i.cyz = extractelement <2 x i16> %i.cyq, i64 1
  store i16 %i.cyz, ptr %i.cyy, align 2, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.cza = icmp samesign ult i64 %i.cuo, %i.cry
  br i1 %i.cza, label %bb.el, label %._crit_edge1344, !llvm.loop !47

bb.en:                                            ; preds = %bb.er, %.epilog-lcssa1883
  %.sroa.0.0 = phi i32 [ 0, %.epilog-lcssa1883 ], [ %.sroa.0.1.3, %bb.er ] ; 2 uses
  %.sroa.12.0 = phi i32 [ 0, %.epilog-lcssa1883 ], [ %.sroa.12.1.3, %bb.er ] ; 2 uses
  %indvars.iv1577 = phi i64 [ 0, %.epilog-lcssa1883 ], [ %indvars.iv.next1578.3, %bb.er ] ; 6 uses
  %i.czb = phi <2 x i32> [ zeroinitializer, %.epilog-lcssa1883 ], [ %i.dat, %bb.er ] ; 2 uses
  %i.czc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv1577
  %i.czd = load i32, ptr %i.czc, align 16, !tbaa !114
  %.not1019 = icmp slt i32 %i.czd, %i.cxw
  br i1 %.not1019, label %bb.eo, label %.preheader1121

.preheader1121:                                   ; preds = %bb.en
  %gep1339 = getelementptr inbounds nuw [1572864 x i8], ptr %invariant.gep1338, i64 %indvars.iv1577 ; 2 uses
  %i.cze = load i16, ptr %gep1339, align 2, !tbaa !117
  %i.czf = zext i16 %i.cze to i32
  %i.czg = add nsw i32 %.sroa.0.0, %i.czf
  %i.czh = getelementptr inbounds nuw i8, ptr %gep1339, i64 2
  %i.czi = load <2 x i16>, ptr %i.czh, align 2, !tbaa !117
  %i.czj = zext <2 x i16> %i.czi to <2 x i32>
  %i.czk = add nsw <2 x i32> %i.czb, %i.czj
  %i.czl = add nsw i32 %.sroa.12.0, 1
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.preheader1121
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.en ], [ %i.czg, %.preheader1121 ] ; 2 uses
  %.sroa.12.1 = phi i32 [ %.sroa.12.0, %bb.en ], [ %i.czl, %.preheader1121 ] ; 2 uses
  %i.czm = phi <2 x i32> [ %i.czb, %bb.en ], [ %i.czk, %.preheader1121 ] ; 2 uses
  %indvars.iv.next1578 = or disjoint i64 %indvars.iv1577, 1 ; 2 uses
  %i.czn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next1578
  %i.czo = load i32, ptr %i.czn, align 4, !tbaa !114
  %.not1019.1 = icmp slt i32 %i.czo, %i.cxw
  br i1 %.not1019.1, label %bb.ep, label %.preheader1121.1

.preheader1121.1:                                 ; preds = %bb.eo
  %gep1339.1 = getelementptr inbounds nuw [1572864 x i8], ptr %invariant.gep1338, i64 %indvars.iv.next1578 ; 2 uses
  %i.czp = load i16, ptr %gep1339.1, align 2, !tbaa !117
  %i.czq = zext i16 %i.czp to i32
  %i.czr = add nsw i32 %.sroa.0.1, %i.czq
  %i.czs = getelementptr inbounds nuw i8, ptr %gep1339.1, i64 2
  %i.czt = load <2 x i16>, ptr %i.czs, align 2, !tbaa !117
  %i.czu = zext <2 x i16> %i.czt to <2 x i32>
  %i.czv = add nsw <2 x i32> %i.czm, %i.czu
  %i.czw = add nsw i32 %.sroa.12.1, 1
  br label %bb.ep

bb.ep:                                            ; preds = %.preheader1121.1, %bb.eo
  %.sroa.0.1.1 = phi i32 [ %.sroa.0.1, %bb.eo ], [ %i.czr, %.preheader1121.1 ] ; 2 uses
  %.sroa.12.1.1 = phi i32 [ %.sroa.12.1, %bb.eo ], [ %i.czw, %.preheader1121.1 ] ; 2 uses
  %i.czx = phi <2 x i32> [ %i.czm, %bb.eo ], [ %i.czv, %.preheader1121.1 ] ; 2 uses
  %indvars.iv.next1578.1 = or disjoint i64 %indvars.iv1577, 2 ; 2 uses
  %i.czy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next1578.1
  %i.czz = load i32, ptr %i.czy, align 8, !tbaa !114
  %.not1019.2 = icmp slt i32 %i.czz, %i.cxw
  br i1 %.not1019.2, label %bb.eq, label %.preheader1121.2

.preheader1121.2:                                 ; preds = %bb.ep
  %gep1339.2 = getelementptr inbounds nuw [1572864 x i8], ptr %invariant.gep1338, i64 %indvars.iv.next1578.1 ; 2 uses
  %i.daa = load i16, ptr %gep1339.2, align 2, !tbaa !117
  %i.dab = zext i16 %i.daa to i32
  %i.dac = add nsw i32 %.sroa.0.1.1, %i.dab
  %i.dad = getelementptr inbounds nuw i8, ptr %gep1339.2, i64 2
  %i.dae = load <2 x i16>, ptr %i.dad, align 2, !tbaa !117
  %i.daf = zext <2 x i16> %i.dae to <2 x i32>
  %i.dag = add nsw <2 x i32> %i.czx, %i.daf
  %i.dah = add nsw i32 %.sroa.12.1.1, 1
  br label %bb.eq

bb.eq:                                            ; preds = %.preheader1121.2, %bb.ep
  %.sroa.0.1.2 = phi i32 [ %.sroa.0.1.1, %bb.ep ], [ %i.dac, %.preheader1121.2 ] ; 2 uses
  %.sroa.12.1.2 = phi i32 [ %.sroa.12.1.1, %bb.ep ], [ %i.dah, %.preheader1121.2 ] ; 2 uses
  %i.dai = phi <2 x i32> [ %i.czx, %bb.ep ], [ %i.dag, %.preheader1121.2 ] ; 2 uses
  %indvars.iv.next1578.2 = or disjoint i64 %indvars.iv1577, 3 ; 2 uses
  %i.daj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next1578.2
  %i.dak = load i32, ptr %i.daj, align 4, !tbaa !114
  %.not1019.3 = icmp slt i32 %i.dak, %i.cxw
  br i1 %.not1019.3, label %bb.er, label %.preheader1121.3

.preheader1121.3:                                 ; preds = %bb.eq
  %gep1339.3 = getelementptr inbounds nuw [1572864 x i8], ptr %invariant.gep1338, i64 %indvars.iv.next1578.2 ; 2 uses
  %i.dal = load i16, ptr %gep1339.3, align 2, !tbaa !117
  %i.dam = zext i16 %i.dal to i32
  %i.dan = add nsw i32 %.sroa.0.1.2, %i.dam
  %i.dao = getelementptr inbounds nuw i8, ptr %gep1339.3, i64 2
  %i.dap = load <2 x i16>, ptr %i.dao, align 2, !tbaa !117
  %i.daq = zext <2 x i16> %i.dap to <2 x i32>
  %i.dar = add nsw <2 x i32> %i.dai, %i.daq
  %i.das = add nsw i32 %.sroa.12.1.2, 1
  br label %bb.er

bb.er:                                            ; preds = %.preheader1121.3, %bb.eq
  %.sroa.0.1.3 = phi i32 [ %.sroa.0.1.2, %bb.eq ], [ %i.dan, %.preheader1121.3 ] ; 2 uses
  %.sroa.12.1.3 = phi i32 [ %.sroa.12.1.2, %bb.eq ], [ %i.das, %.preheader1121.3 ] ; 3 uses
  %i.dat = phi <2 x i32> [ %i.dai, %bb.eq ], [ %i.dar, %.preheader1121.3 ] ; 2 uses
  %indvars.iv.next1578.3 = add nuw nsw i64 %indvars.iv1577, 4 ; 2 uses
  %exitcond1581.not.3 = icmp eq i64 %indvars.iv.next1578.3, %wide.trip.count
  br i1 %exitcond1581.not.3, label %.preheader1126, label %bb.en, !llvm.loop !48
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6LibRaw6cielabEPtPs(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6LibRaw18malloc_omp_buffersEim(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6LibRaw16free_omp_buffersEPPci(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN6LibRaw18border_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i32> @llvm.masked.load.v4i32.p0(ptr captures(none), <4 x i1>, <4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i32.p0(<4 x i32>, ptr captures(none), <4 x i1>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v3i16.p0(<3 x i16>, ptr captures(none), <3 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { cold noreturn }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = distinct !{!11, !118}
!12 = distinct !{!12, !118}
!13 = distinct !{!13, !118}
!14 = distinct !{!14, !118}
!15 = distinct !{!15, !118}
!16 = distinct !{!16, !118}
!17 = distinct !{!17, !118}
!18 = distinct !{!18, !118}
!19 = distinct !{!19, !118}
!20 = distinct !{!20, !118}
!21 = distinct !{!21, !118}
!22 = distinct !{!22, !118}
!23 = distinct !{!23, !118}
!24 = distinct !{!24, !118}
!25 = distinct !{!25, !118}
!26 = distinct !{!26, !118}
!27 = distinct !{!27, !118}
!28 = distinct !{!28, !118}
!29 = distinct !{!29, !118}
!30 = distinct !{!30, !118}
!31 = distinct !{!31, !118}
!32 = distinct !{!32, !118}
!33 = distinct !{!33, !118}
!34 = distinct !{!34, !118, !122, !123}
!35 = distinct !{!35, !118}
!36 = distinct !{!36, !118}
!37 = distinct !{!37, !118, !123, !122}
!38 = distinct !{!38, !118}
!39 = distinct !{!39, !118}
!40 = distinct !{!40, !124}
!41 = distinct !{!41, !118}
!42 = distinct !{!42, !118}
!43 = distinct !{!43, !118}
!44 = distinct !{!44, !118}
!45 = distinct !{!45, !118}
!46 = distinct !{!46, !124}
!47 = distinct !{!47, !118}
!48 = distinct !{!48, !118}
!49 = !{!"any pointer", !7, i64 0}
!50 = !{!"p1 short", !49, i64 0}
!51 = !{!"short", !7, i64 0}
!52 = !{!"double", !7, i64 0}
!53 = !{!"_ZTS20libraw_image_sizes_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !51, i64 12, !51, i64 14, !8, i64 16, !52, i64 24, !8, i64 32, !7, i64 36, !51, i64 164, !7, i64 166}
!54 = !{!"p1 omnipotent char", !49, i64 0}
!55 = !{!"_ZTS16libraw_iparams_t", !7, i64 0, !7, i64 4, !7, i64 68, !7, i64 132, !7, i64 196, !7, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !7, i64 348, !7, i64 384, !7, i64 420, !8, i64 428, !54, i64 432}
!56 = !{!"float", !7, i64 0}
!57 = !{!"_ZTS18libraw_nikonlens_t", !56, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7}
!58 = !{!"_ZTS16libraw_dnglens_t", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!59 = !{!"long long", !7, i64 0}
!60 = !{!"_ZTS24libraw_makernotes_lens_t", !59, i64 0, !7, i64 8, !51, i64 136, !51, i64 138, !59, i64 144, !51, i64 152, !51, i64 154, !7, i64 156, !51, i64 220, !7, i64 222, !7, i64 238, !56, i64 256, !56, i64 260, !56, i64 264, !56, i64 268, !56, i64 272, !56, i64 276, !56, i64 280, !56, i64 284, !56, i64 288, !56, i64 292, !56, i64 296, !56, i64 300, !56, i64 304, !56, i64 308, !56, i64 312, !59, i64 320, !7, i64 328, !59, i64 456, !7, i64 464, !59, i64 592, !7, i64 600, !51, i64 728, !56, i64 732}
!61 = !{!"_ZTS17libraw_lensinfo_t", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !7, i64 20, !7, i64 148, !7, i64 276, !7, i64 404, !51, i64 532, !57, i64 536, !58, i64 544, !60, i64 560}
!62 = !{!"_ZTS13libraw_area_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6}
!63 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16, !8, i64 32, !7, i64 36, !51, i64 52, !51, i64 54, !7, i64 56, !51, i64 58, !51, i64 60, !51, i64 62, !51, i64 64, !51, i64 66, !51, i64 68, !51, i64 70, !51, i64 72, !51, i64 74, !51, i64 76, !51, i64 78, !51, i64 80, !51, i64 82, !8, i64 84, !56, i64 88, !51, i64 92, !51, i64 94, !51, i64 96, !51, i64 98, !8, i64 100, !51, i64 104, !8, i64 108, !8, i64 112, !51, i64 116, !8, i64 120, !62, i64 124, !62, i64 132, !62, i64 140, !62, i64 148, !62, i64 156, !7, i64 164}
!64 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6}
!65 = !{!"_ZTS25libraw_nikon_makernotes_t", !52, i64 0, !51, i64 8, !51, i64 10, !7, i64 12, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 34, !7, i64 54, !7, i64 58, !7, i64 62, !7, i64 66, !7, i64 67, !7, i64 68, !7, i64 69, !7, i64 70, !7, i64 71, !7, i64 73, !7, i64 74, !7, i64 75, !7, i64 76, !7, i64 77, !7, i64 78, !7, i64 82, !7, i64 86, !51, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !7, i64 112, !7, i64 144, !7, i64 145, !7, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !7, i64 160, !7, i64 162, !51, i64 170, !64, i64 172, !51, i64 180, !51, i64 182, !51, i64 184, !8, i64 188, !7, i64 192, !7, i64 212, !8, i64 232, !7, i64 236, !8, i64 248, !54, i64 256, !51, i64 264, !51, i64 266, !7, i64 268, !51, i64 270, !52, i64 272, !52, i64 280, !52, i64 288}
!66 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !52, i64 8, !7, i64 16, !7, i64 24, !7, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !7, i64 168, !7, i64 200, !8, i64 264, !7, i64 268, !7, i64 276, !7, i64 288}
!67 = !{!"_ZTS18libraw_fuji_info_t", !56, i64 0, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !51, i64 12, !51, i64 14, !51, i64 16, !51, i64 18, !7, i64 20, !7, i64 53, !56, i64 88, !51, i64 92, !51, i64 94, !7, i64 96, !51, i64 100, !8, i64 104, !8, i64 108, !51, i64 112, !7, i64 114, !51, i64 120, !51, i64 122, !51, i64 124, !51, i64 126, !51, i64 128, !8, i64 132, !51, i64 136, !7, i64 138, !7, i64 151, !7, i64 156, !8, i64 164, !51, i64 168, !8, i64 172, !51, i64 176, !7, i64 178, !7, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !7, i64 336, !8, i64 344}
!68 = !{!"_ZTS27libraw_olympus_makernotes_t", !7, i64 0, !51, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !7, i64 64, !7, i64 72, !51, i64 82, !7, i64 84, !51, i64 88, !51, i64 90, !7, i64 92, !7, i64 352, !51, i64 392, !7, i64 394, !7, i64 396, !7, i64 404, !51, i64 416, !51, i64 418, !51, i64 420, !51, i64 422, !52, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !8, i64 452, !51, i64 456, !51, i64 458}
!69 = !{!"_ZTS18libraw_sony_info_t", !51, i64 0, !7, i64 2, !7, i64 3, !8, i64 4, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 17, !51, i64 18, !7, i64 20, !7, i64 24, !7, i64 25, !51, i64 26, !7, i64 28, !7, i64 38, !7, i64 39, !7, i64 40, !51, i64 48, !7, i64 50, !7, i64 51, !7, i64 52, !51, i64 54, !8, i64 56, !51, i64 60, !7, i64 62, !51, i64 66, !51, i64 68, !51, i64 70, !51, i64 72, !51, i64 74, !51, i64 76, !51, i64 78, !8, i64 80, !56, i64 84, !51, i64 88, !8, i64 92, !8, i64 96, !51, i64 100, !7, i64 102, !8, i64 124, !51, i64 128, !8, i64 132, !7, i64 136, !7, i64 137, !51, i64 138, !51, i64 140, !51, i64 142, !51, i64 144, !51, i64 146, !51, i64 148, !51, i64 150, !51, i64 152, !51, i64 154, !8, i64 156, !51, i64 160, !7, i64 162, !56, i64 180}
!70 = !{!"_ZTS25libraw_kodak_makernotes_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !7, i64 12, !7, i64 48, !7, i64 84, !7, i64 120, !7, i64 156, !7, i64 192, !51, i64 228, !51, i64 230, !51, i64 232, !51, i64 234, !56, i64 236, !56, i64 240}
!71 = !{!"_ZTS29libraw_panasonic_makernotes_t", !51, i64 0, !51, i64 2, !7, i64 4, !8, i64 36, !56, i64 40, !7, i64 44, !51, i64 56, !51, i64 58, !8, i64 60, !8, i64 64}
!72 = !{!"_ZTS26libraw_pentax_makernotes_t", !7, i64 0, !7, i64 4, !7, i64 8, !51, i64 12, !8, i64 16, !8, i64 20, !51, i64 24, !7, i64 26, !51, i64 30, !7, i64 32, !7, i64 33, !51, i64 34}
!73 = !{!"_ZTS22libraw_p1_makernotes_t", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 384}
!74 = !{!"_ZTS25libraw_ricoh_makernotes_t", !51, i64 0, !7, i64 4, !7, i64 12, !51, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !51, i64 40, !51, i64 42, !51, i64 44, !51, i64 46, !51, i64 48, !51, i64 50, !52, i64 56, !52, i64 64}
!75 = !{!"_ZTS27libraw_samsung_makernotes_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 40, !52, i64 88, !8, i64 96, !7, i64 100}
!76 = !{!"_ZTS24libraw_metadata_common_t", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !51, i64 64, !7, i64 66, !56, i64 196, !7, i64 200, !8, i64 296}
!77 = !{!"_ZTS19libraw_makernotes_t", !63, i64 0, !65, i64 168, !66, i64 464, !67, i64 848, !68, i64 1200, !69, i64 1664, !70, i64 1848, !71, i64 2092, !72, i64 2160, !73, i64 2196, !74, i64 2648, !75, i64 2720, !76, i64 2856}
!78 = !{!"_ZTS21libraw_shootinginfo_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !51, i64 12, !7, i64 14, !7, i64 78}
!79 = !{!"_ZTS22libraw_output_params_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 64, !7, i64 112, !56, i64 128, !56, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !54, i64 168, !54, i64 176, !54, i64 184, !54, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !7, i64 224, !8, i64 240, !8, i64 244, !56, i64 248, !56, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !56, i64 288, !56, i64 292, !8, i64 296, !8, i64 300}
!80 = !{!"any p2 pointer", !49, i64 0}
!81 = !{!"p2 omnipotent char", !80, i64 0}
!82 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !56, i64 28, !7, i64 32, !81, i64 40}
!83 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !56, i64 32}
!84 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !7, i64 4, !8, i64 16420, !7, i64 16424, !56, i64 32840, !7, i64 32844, !7, i64 32860, !7, i64 32868, !8, i64 32884, !7, i64 32888, !7, i64 32904, !56, i64 32920, !56, i64 32924, !7, i64 32928}
!85 = !{!"_ZTS18libraw_colordata_t", !7, i64 0, !7, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !7, i64 147500, !56, i64 147516, !56, i64 147520, !7, i64 147524, !7, i64 147652, !7, i64 147668, !7, i64 147684, !7, i64 147732, !7, i64 147780, !7, i64 147828, !83, i64 147876, !56, i64 147912, !56, i64 147916, !7, i64 147920, !7, i64 147984, !7, i64 148048, !7, i64 148112, !7, i64 148176, !7, i64 148193, !49, i64 148264, !8, i64 148272, !7, i64 148276, !7, i64 148308, !84, i64 148648, !7, i64 181624, !7, i64 185720, !8, i64 187000, !7, i64 187004, !8, i64 187076, !8, i64 187080}
!86 = !{!"long", !7, i64 0}
!87 = !{!"_ZTS17libraw_gps_info_t", !7, i64 0, !7, i64 12, !7, i64 24, !56, i64 36, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !7, i64 44}
!88 = !{!"_ZTS17libraw_imgother_t", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !86, i64 16, !8, i64 24, !7, i64 28, !87, i64 156, !7, i64 204, !7, i64 716, !7, i64 780}
!89 = !{!"_ZTS24LibRaw_thumbnail_formats", !7, i64 0}
!90 = !{!"_ZTS18libraw_thumbnail_t", !89, i64 0, !51, i64 4, !51, i64 6, !8, i64 8, !8, i64 12, !54, i64 16}
!91 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !7, i64 8}
!92 = !{!"p1 float", !49, i64 0}
!93 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !51, i64 12, !51, i64 14}
!94 = !{!"_ZTS16libraw_rawdata_t", !49, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !50, i64 56, !50, i64 64, !55, i64 72, !53, i64 512, !93, i64 696, !85, i64 712}
!95 = !{!"_ZTS13libraw_data_t", !50, i64 0, !53, i64 8, !55, i64 192, !61, i64 632, !77, i64 1928, !78, i64 5088, !79, i64 5232, !82, i64 5536, !8, i64 5584, !8, i64 5588, !85, i64 5592, !88, i64 192680, !90, i64 193480, !91, i64 193504, !94, i64 193768, !49, i64 381568}
!96 = !{!"p1 _ZTS10LibRaw_TLS", !49, i64 0}
!97 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !49, i64 0}
!98 = !{!"p1 _ZTS8_IO_FILE", !49, i64 0}
!99 = !{!"_ZTS15internal_data_t", !97, i64 0, !98, i64 8, !8, i64 16, !54, i64 24, !59, i64 32, !59, i64 40, !7, i64 48}
!100 = !{!"p1 int", !49, i64 0}
!101 = !{!"_ZTS13output_data_t", !100, i64 0, !100, i64 8}
!102 = !{!"_ZTS15identify_data_t", !8, i64 0, !59, i64 8, !59, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!103 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !7, i64 0}
!104 = !{!"_ZTS12pana8_tags_t", !7, i64 0, !7, i64 24, !51, i64 36, !7, i64 38, !7, i64 46, !7, i64 80, !7, i64 114, !51, i64 148, !51, i64 150, !7, i64 152, !7, i64 192, !7, i64 204, !7, i64 224, !7, i64 234}
!105 = !{!"_ZTS15unpacker_data_t", !51, i64 0, !7, i64 2, !7, i64 10, !8, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !59, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !103, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !59, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !104, i64 192, !7, i64 440, !8, i64 2488, !8, i64 2492, !51, i64 2496, !51, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !7, i64 2528, !51, i64 2608}
!106 = !{!"_ZTS22libraw_internal_data_t", !99, i64 0, !93, i64 64, !101, i64 80, !102, i64 96, !105, i64 136}
!107 = !{!"p1 _ZTS6decode", !49, i64 0}
!108 = !{!"_ZTS13libraw_memmgr", !80, i64 0, !8, i64 8}
!109 = !{!"_ZTS18libraw_callbacks_t", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !49, i64 104, !49, i64 112, !49, i64 120, !49, i64 128, !49, i64 136, !49, i64 144}
!110 = !{!"_ZTS6LibRaw", !95, i64 8, !96, i64 381584, !106, i64 381592, !7, i64 384344, !107, i64 433496, !107, i64 433504, !7, i64 433512, !108, i64 768232, !109, i64 768248, !7, i64 768400, !7, i64 768416, !7, i64 768432, !49, i64 768448, !49, i64 768456, !49, i64 768464, !86, i64 768472, !49, i64 768480, !49, i64 768488, !49, i64 768496, !49, i64 768504}
!111 = !{!110, !51, i64 22}
!112 = !{!110, !51, i64 20}
!113 = !{!7, !7, i64 0}
!114 = !{!8, !8, i64 0}
!115 = !{!"_ZTS17LibRaw_exceptions", !7, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!51, !51, i64 0}
!118 = !{!"llvm.loop.mustprogress"}
!119 = !{!110, !50, i64 8}
!120 = !{!54, !54, i64 0}
!121 = !{!56, !56, i64 0}
!122 = !{!"llvm.loop.isvectorized", i32 1}
!123 = !{!"llvm.loop.unroll.runtime.disable"}
!124 = !{!"llvm.loop.unroll.disable"}
end_hunk_2
