Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dolby_e?download=true
inline.NumInlined: 42
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@parse_audio:bb.a
  %i.yi = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv78.i.i.i.i ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !51
  %i.yk = add nsw i32 %i.yj, %i.yh
  store i32 %i.yk, ptr %i.yi, align 4, !tbaa !51
  %indvars.iv.next79.i.i.i.i = add nuw nsw i64 %indvars.iv78.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next77.i.i.i.i = add nuw nsw i64 %indvars.iv76.i.i.i.i, 1
  %exitcond84.not.i.i.i.i = icmp eq i64 %indvars.iv.next79.i.i.i.i, %wide.trip.count83.i.i.i.i
  br i1 %exitcond84.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph68.i.i.i.i, !llvm.loop !133

.loopexit.i.i.i.i:                                ; preds = %.lr.ph68.i.i.i.i, %middle.block, %bb.ak, %._crit_edge.i.loopexit.i.i.i
  %indvars.iv.next86.i.i.i.i = add nuw nsw i64 %indvars.iv85.i.i.i.i, 1 ; 2 uses
  %exitcond88.not.i.i.i.i = icmp eq i64 %indvars.iv.next86.i.i.i.i, 11
  br i1 %exitcond88.not.i.i.i.i, label %calc_lowcomp.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !134

calc_lowcomp.exit.i.i.i:                          ; preds = %.loopexit.i.i.i.i
  %i.yl = load <4 x i32>, ptr %i.b, align 16, !tbaa !51
  %i.ym = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.yl, <4 x i32> splat (i32 -512))
  %i.yn = load <4 x i32>, ptr %i.c, align 16, !tbaa !51
  %i.yo = add nsw <4 x i32> %i.yn, %i.ym
  %i.yp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.yo, <4 x i32> zeroinitializer)
  store <4 x i32> %i.yp, ptr %i.c, align 16, !tbaa !51
  %i.yq = load <4 x i32>, ptr %i.ba, align 16, !tbaa !51
  %i.yr = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.yq, <4 x i32> splat (i32 -512))
  %i.ys = load <4 x i32>, ptr %i.bb, align 16, !tbaa !51
  %i.yt = add nsw <4 x i32> %i.ys, %i.yr
  %i.yu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.yt, <4 x i32> zeroinitializer)
  store <4 x i32> %i.yu, ptr %i.bb, align 16, !tbaa !51
  %i.yv = load <4 x i32>, ptr %i.bc, align 16, !tbaa !51
  %i.yw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.yv, <4 x i32> splat (i32 -512))
  %i.yx = load <4 x i32>, ptr %i.bd, align 16, !tbaa !51
  %i.yy = add nsw <4 x i32> %i.yx, %i.yw
  %i.yz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.yy, <4 x i32> zeroinitializer)
  store <4 x i32> %i.yz, ptr %i.bd, align 16, !tbaa !51
  %i.za = load <4 x i32>, ptr %i.be, align 16, !tbaa !51
  %i.zb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.za, <4 x i32> splat (i32 -512))
  %i.zc = load <4 x i32>, ptr %i.bf, align 16, !tbaa !51
  %i.zd = add nsw <4 x i32> %i.zc, %i.zb
  %i.ze = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.zd, <4 x i32> zeroinitializer)
  store <4 x i32> %i.ze, ptr %i.bf, align 16, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.al

bb.al:                                            ; preds = %calc_lowcomp.exit.i.i.i, %._crit_edge100.i.i.i
  br i1 %.not105.i.i.i, label %bit_allocate.exit.i.i, label %.lr.ph103.i.i.i

.lr.ph103.i.i.i:                                  ; preds = %bb.al
  %wide.trip.count126.i.i.i = zext i8 %i.mx to i64 ; 2 uses
  %xtraiter128 = and i64 %wide.trip.count126.i.i.i, 1
  %i.zf = icmp eq i8 %i.mx, 1
  br i1 %i.zf, label %.epil.preheader127, label %.lr.ph103.i.i.i.new

.lr.ph103.i.i.i.new:                              ; preds = %.lr.ph103.i.i.i
  %unroll_iter131 = and i64 %wide.trip.count126.i.i.i, 254
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph103.i.i.i.new
  %indvars.iv123.i.i.i = phi i64 [ 0, %.lr.ph103.i.i.i.new ], [ %indvars.iv.next124.i.i.i.1, %bb.am ] ; 5 uses
  %niter132 = phi i64 [ 0, %.lr.ph103.i.i.i.new ], [ %niter132.next.1, %bb.am ]
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv123.i.i.i
  %i.zh = load i32, ptr %i.zg, align 8, !tbaa !51
  %i.zi = add nsw i32 %i.ms, %i.zh
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv123.i.i.i
  %i.zk = load i32, ptr %i.zj, align 8, !tbaa !51
  %i.zl = sub i32 %i.zi, %i.zk
  %i.zm = ashr i32 %i.zl, 5
  %i.zn = tail call i32 @llvm.smax.i32(i32 %i.zm, i32 0)
  %i.zo = tail call i32 @llvm.umin.i32(i32 %i.zn, i32 63)
  %i.zp = zext nneg i32 %i.zo to i64
  %i.zq = getelementptr inbounds nuw i8, ptr @bap_tab, i64 %i.zp
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !32
  %i.zs = zext i8 %i.zr to i32
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv123.i.i.i
  store i32 %i.zs, ptr %i.zt, align 4, !tbaa !51
  %indvars.iv.next124.i.i.i = or disjoint i64 %indvars.iv123.i.i.i, 1 ; 3 uses
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next124.i.i.i
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !51
  %i.zw = add nsw i32 %i.ms, %i.zv
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next124.i.i.i
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !51
  %i.zz = sub i32 %i.zw, %i.zy
  %i.aaa = ashr i32 %i.zz, 5
  %i.aab = tail call i32 @llvm.smax.i32(i32 %i.aaa, i32 0)
  %i.aac = tail call i32 @llvm.umin.i32(i32 %i.aab, i32 63)
  %i.aad = zext nneg i32 %i.aac to i64
  %i.aae = getelementptr inbounds nuw i8, ptr @bap_tab, i64 %i.aad
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !32
  %i.aag = zext i8 %i.aaf to i32
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.next124.i.i.i
  store i32 %i.aag, ptr %i.aah, align 4, !tbaa !51
  %indvars.iv.next124.i.i.i.1 = add nuw nsw i64 %indvars.iv123.i.i.i, 2 ; 2 uses
  %niter132.next.1 = add i64 %niter132, 2         ; 2 uses
  %niter132.ncmp.1 = icmp eq i64 %niter132.next.1, %unroll_iter131
  br i1 %niter132.ncmp.1, label %bit_allocate.exit.i.i.loopexit.unr-lcssa, label %bb.am, !llvm.loop !135

bit_allocate.exit.i.i.loopexit.unr-lcssa:         ; preds = %bb.am
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %bit_allocate.exit.i.i, label %.epil.preheader127

.epil.preheader127:                               ; preds = %bit_allocate.exit.i.i.loopexit.unr-lcssa, %.lr.ph103.i.i.i
  %indvars.iv123.i.i.i.epil.init = phi i64 [ 0, %.lr.ph103.i.i.i ], [ %indvars.iv.next124.i.i.i.1, %bit_allocate.exit.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod130 = trunc i8 %i.mx to i1
  tail call void @llvm.assume(i1 %lcmp.mod130)
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv123.i.i.i.epil.init
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !51
  %i.aak = add nsw i32 %i.ms, %i.aaj
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv123.i.i.i.epil.init
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !51
  %i.aan = sub i32 %i.aak, %i.aam
  %i.aao = ashr i32 %i.aan, 5
  %i.aap = tail call i32 @llvm.smax.i32(i32 %i.aao, i32 0)
  %i.aaq = tail call i32 @llvm.umin.i32(i32 %i.aap, i32 63)
  %i.aar = zext nneg i32 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw i8, ptr @bap_tab, i64 %i.aar
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !32
  %i.aau = zext i8 %i.aat to i32
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv123.i.i.i.epil.init
  store i32 %i.aau, ptr %i.aav, align 4, !tbaa !51
  br label %bit_allocate.exit.i.i

bit_allocate.exit.i.i:                            ; preds = %.epil.preheader127, %bit_allocate.exit.i.i.loopexit.unr-lcssa, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.ao

bb.an:                                            ; preds = %bb.ae
  %i.aaw = getelementptr inbounds nuw i8, ptr %.05064.i.i, i64 4
  %i.aax = load i16, ptr %i.aaw, align 4, !tbaa !118
  %i.aay = zext i16 %i.aax to i64
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.aay
  %i.aba = getelementptr inbounds nuw i8, ptr %.05163.i.i, i64 4
  %i.abb = load i16, ptr %i.aba, align 4, !tbaa !118
  %i.abc = zext i16 %i.abb to i64
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.abc
  %i.abe = load i8, ptr %.05064.i.i, align 8, !tbaa !113
  %i.abf = zext i8 %i.abe to i64
  %i.abg = shl nuw nsw i64 %i.abf, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aaz, ptr nonnull align 4 %i.abd, i64 %i.abg, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bit_allocate.exit.i.i
  %indvars.iv.next71.i.i = add nuw nsw i64 %indvars.iv70.i.i, 1 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.05064.i.i, i64 32
  %exitcond74.not.i.i = icmp eq i64 %indvars.iv.next71.i.i, %wide.trip.count73.i.i
  br i1 %exitcond74.not.i.i, label %.loopexit.loopexit.i, label %bb.ad, !llvm.loop !136

parse_bit_alloc.exit.i:                           ; preds = %._crit_edge.i.i
  %i.abi = load ptr, ptr %i.k, align 8, !tbaa !63
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %i.abi, ptr noundef nonnull @.str.23) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %bb.bm

.loopexit.loopexit.i:                             ; preds = %bb.ao
  %.pre.i = load i32, ptr %i.dm, align 8, !tbaa !100
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.ab
  %i.abj = phi i32 [ %.pre.i, %.loopexit.loopexit.i ], [ %.pr.i, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  %i.abk = icmp sgt i32 %i.abj, 0
  br i1 %i.abk, label %.lr.ph53.i.i, label %parse_mantissas.exit.i

.lr.ph53.i.i:                                     ; preds = %.loopexit.i
  %i.abl = getelementptr i8, ptr %i.bt, i64 2736  ; 6 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.i.i, %.lr.ph53.i.i
  %.03752.i.i = phi i32 [ 0, %.lr.ph53.i.i ], [ %i.ady, %.loopexit.i.i ] ; 2 uses
  %.03851.i.i = phi ptr [ %i.dr, %.lr.ph53.i.i ], [ %i.adz, %.loopexit.i.i ] ; 8 uses
  %.03950.i.i = phi ptr [ null, %.lr.ph53.i.i ], [ %.03851.i.i, %.loopexit.i.i ] ; 2 uses
  %i.abm = load i32, ptr %i.aw, align 8, !tbaa !104 ; 4 uses
  %i.abn = load ptr, ptr %i.av, align 8, !tbaa !106 ; 3 uses
  %i.abo = lshr i32 %i.abm, 3
  %i.abp = zext nneg i32 %i.abo to i64
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abn, i64 %i.abp
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !32
  %i.abs = load i32, ptr %i.ax, align 8, !tbaa !105 ; 2 uses
  %i.abt = icmp slt i32 %i.abm, %i.abs
  %i.abu = zext i1 %i.abt to i32
  %spec.select.i.i71.i = add i32 %i.abm, %i.abu   ; 4 uses
  %i.abv = zext i8 %i.abr to i32
  %i.abw = and i32 %i.abm, 7
  store i32 %spec.select.i.i71.i, ptr %i.aw, align 8, !tbaa !104
  %i.abx = lshr exact i32 128, %i.abw
  %i.aby = and i32 %i.abx, %i.abv
  %.not.i72.i = icmp eq i32 %i.aby, 0
  br i1 %.not.i72.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.abz = lshr i32 %spec.select.i.i71.i, 3
  %i.aca = zext nneg i32 %i.abz to i64
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abn, i64 %i.aca
  %i.acc = load i32, ptr %i.acb, align 1, !tbaa !32
  %i.acd = tail call i32 @llvm.bswap.i32(i32 %i.acc)
  %i.ace = and i32 %spec.select.i.i71.i, 7
  %i.acf = shl i32 %i.acd, %i.ace                 ; 2 uses
  %i.acg = lshr i32 %i.acf, 26                    ; 4 uses
  %i.ach = add i32 %spec.select.i.i71.i, 6
  %i.aci = tail call i32 @llvm.umin.i32(i32 %i.abs, i32 %i.ach)
  store i32 %i.aci, ptr %i.aw, align 8, !tbaa !104
  %i.acj = load i8, ptr %.03851.i.i, align 8, !tbaa !113 ; 2 uses
  %i.ack = zext i8 %i.acj to i32                  ; 2 uses
  %.not44.i.i = icmp samesign ugt i32 %i.acg, %i.ack
  br i1 %.not44.i.i, label %parse_indices.exit.i, label %.preheader45.i.i

.preheader45.i.i:                                 ; preds = %bb.aq
  %.not54.i73.i = icmp eq i32 %i.acg, 0
  br i1 %.not54.i73.i, label %.preheader.i.i, label %.lr.ph.i74.i

.lr.ph.i74.i:                                     ; preds = %.preheader45.i.i
  %i.acl = getelementptr inbounds nuw i8, ptr %.03851.i.i, i64 4
  %i.acm = load i16, ptr %i.acl, align 4, !tbaa !118
  %i.acn = zext i16 %i.acm to i64
  %i.aco = shl nuw nsw i64 %i.acn, 2
  %scevgep55.i.i = getelementptr i8, ptr %i.abl, i64 %i.aco
  %4 = lshr i32 %i.acf, 24
  %5 = and i32 %4, 252
  %6 = zext nneg i32 %5 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep55.i.i, i8 0, i64 %6, i1 false), !tbaa !51
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i74.i, %.preheader45.i.i
  %i.acp = icmp samesign ult i32 %i.acg, %i.ack
  br i1 %i.acp, label %.lr.ph49.i.i, label %.loopexit.i.i

.lr.ph49.i.i:                                     ; preds = %.preheader.i.i
  %i.acq = getelementptr inbounds nuw i8, ptr %.03851.i.i, i64 4
  %i.acr = load i16, ptr %i.acq, align 4, !tbaa !118
  %i.acs = zext nneg i32 %i.acg to i64
  %i.act = zext i16 %i.acr to i64
  %wide.trip.count57.i.i = zext i8 %i.acj to i64
  %invariant.gep.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %i.act
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph49.i.i
  %indvars.iv.i75.i = phi i64 [ %i.acs, %.lr.ph49.i.i ], [ %indvars.iv.next.i76.i, %bb.ar ] ; 2 uses
  %i.acu = load i32, ptr %i.aw, align 8, !tbaa !104 ; 3 uses
  %i.acv = load i32, ptr %i.ax, align 8, !tbaa !105
  %i.acw = lshr i32 %i.acu, 3
  %i.acx = zext nneg i32 %i.acw to i64
  %i.acy = getelementptr inbounds nuw i8, ptr %i.abn, i64 %i.acx
  %i.acz = load i32, ptr %i.acy, align 1, !tbaa !32
  %i.ada = tail call i32 @llvm.bswap.i32(i32 %i.acz)
  %i.adb = and i32 %i.acu, 7
  %i.adc = shl i32 %i.ada, %i.adb
  %i.add = lshr i32 %i.adc, 30
  %i.ade = add i32 %i.acu, 2
  %i.adf = tail call i32 @llvm.umin.i32(i32 %i.acv, i32 %i.ade)
  store i32 %i.adf, ptr %i.aw, align 8, !tbaa !104
  %gep.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i75.i
  store i32 %i.add, ptr %gep.i.i, align 4, !tbaa !51
  %indvars.iv.next.i76.i = add nuw nsw i64 %indvars.iv.i75.i, 1 ; 2 uses
  %exitcond.not.i77.i = icmp eq i64 %indvars.iv.next.i76.i, %wide.trip.count57.i.i
  br i1 %exitcond.not.i77.i, label %.loopexit.i.i, label %bb.ar, !llvm.loop !137

bb.as:                                            ; preds = %bb.ap
  %.not43.i.i = icmp eq i32 %.03752.i.i, 0
  %.pre.i78.i = load i8, ptr %.03851.i.i, align 8, !tbaa !113 ; 3 uses
  br i1 %.not43.i.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.adg = load i8, ptr %.03950.i.i, align 8, !tbaa !113
  %i.adh = icmp eq i8 %.pre.i78.i, %i.adg
  br i1 %i.adh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.adi = getelementptr inbounds nuw i8, ptr %.03851.i.i, i64 4
  %i.adj = load i16, ptr %i.adi, align 4, !tbaa !118
  %i.adk = zext i16 %i.adj to i64
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %i.adk
  %i.adm = getelementptr inbounds nuw i8, ptr %.03950.i.i, i64 4
  %i.adn = load i16, ptr %i.adm, align 4, !tbaa !118
  %i.ado = zext i16 %i.adn to i64
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %i.ado
  %i.adq = zext i8 %.pre.i78.i to i64
  %i.adr = shl nuw nsw i64 %i.adq, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.adl, ptr nonnull align 4 %i.adp, i64 %i.adr, i1 false)
  br label %.loopexit.i.i

bb.av:                                            ; preds = %bb.at, %bb.as
  %i.ads = getelementptr inbounds nuw i8, ptr %.03851.i.i, i64 4
  %i.adt = load i16, ptr %i.ads, align 4, !tbaa !118
  %i.adu = zext i16 %i.adt to i64
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %i.adu
  %i.adw = zext i8 %.pre.i78.i to i64
  %i.adx = shl nuw nsw i64 %i.adw, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.adv, i8 0, i64 %i.adx, i1 false)
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ar, %bb.av, %bb.au, %.preheader.i.i
  %i.ady = add nuw nsw i32 %.03752.i.i, 1         ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %.03851.i.i, i64 32
  %exitcond58.not.i.i = icmp eq i32 %i.ady, %i.abj
  br i1 %exitcond58.not.i.i, label %bb.aw, label %bb.ap, !llvm.loop !138

parse_indices.exit.i:                             ; preds = %bb.aq
  %i.aea = load ptr, ptr %i.k, align 8, !tbaa !63
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aea, i32 noundef 16, ptr noundef nonnull @.str.28) #10
  br label %bb.bm

bb.aw:                                            ; preds = %.loopexit.i.i
  %.pr94.i = load i32, ptr %i.dm, align 8, !tbaa !100
  %i.aeb = icmp sgt i32 %.pr94.i, 0
  br i1 %i.aeb, label %.lr.ph122.i.i, label %parse_mantissas.exit.i

.lr.ph122.i.i:                                    ; preds = %bb.aw
  %i.aec = getelementptr inbounds nuw i8, ptr %i.bt, i64 3952
  %i.aed = getelementptr inbounds nuw i8, ptr %i.bt, i64 1520
  %i.aee = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge118.i.i, %.lr.ph122.i.i
  %.090120.i.i = phi i32 [ 0, %.lr.ph122.i.i ], [ %i.akf, %._crit_edge118.i.i ]
  %.091119.i.i = phi ptr [ %i.dr, %.lr.ph122.i.i ], [ %i.akg, %._crit_edge118.i.i ] ; 8 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %.091119.i.i, i64 6
  %i.aeg = load i16, ptr %i.aef, align 2, !tbaa !139
  %i.aeh = zext i16 %i.aeg to i64
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %i.aeh ; 2 uses
  %i.aej = load i8, ptr %.091119.i.i, align 8, !tbaa !113 ; 2 uses
  %.not124.i.i = icmp eq i8 %i.aej, 0
  br i1 %.not124.i.i, label %.preheader100.i.i, label %.lr.ph113.i.i

.lr.ph113.i.i:                                    ; preds = %bb.ax
  %i.aek = getelementptr inbounds nuw i8, ptr %.091119.i.i, i64 4
  %i.ael = getelementptr inbounds nuw i8, ptr %.091119.i.i, i64 8
  br label %bb.ay

.preheader100.loopexit.i.i:                       ; preds = %.loopexit.i88.i
  %i.aem = trunc nuw nsw i64 %indvars.iv.next141.i.i to i32
  %i.aen = zext i8 %i.ajk to i32
  br label %.preheader100.i.i

.preheader100.i.i:                                ; preds = %.preheader100.loopexit.i.i, %bb.ax
  %i.aeo = phi i32 [ %i.aen, %.preheader100.loopexit.i.i ], [ 0, %bb.ax ]
  %.088.lcssa.i.i = phi i32 [ %i.aem, %.preheader100.loopexit.i.i ], [ 0, %bb.ax ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %i.ajm, %.preheader100.loopexit.i.i ], [ %i.aei, %bb.ax ]
  %i.aep = load i32, ptr %i.aee, align 4, !tbaa !103
  %i.aeq = add nsw i32 %i.aep, %i.aeo
  %i.aer = icmp slt i32 %.088.lcssa.i.i, %i.aeq
  br i1 %i.aer, label %.lr.ph117.i.i, label %._crit_edge118.i.i

.lr.ph117.i.i:                                    ; preds = %.preheader100.i.i
  %i.aes = getelementptr inbounds nuw i8, ptr %.091119.i.i, i64 8 ; 2 uses
  %i.aet = zext nneg i32 %.088.lcssa.i.i to i64
  %.pre146.i.i = load ptr, ptr %i.aes, align 8, !tbaa !140
  br label %bb.bk

bb.ay:                                            ; preds = %.loopexit.i88.i, %.lr.ph113.i.i
  %i.aeu = phi i8 [ %i.aej, %.lr.ph113.i.i ], [ %i.ajk, %.loopexit.i88.i ] ; 3 uses
  %indvars.iv140.i.i = phi i64 [ 0, %.lr.ph113.i.i ], [ %indvars.iv.next141.i.i, %.loopexit.i88.i ] ; 3 uses
  %.0110.i.i = phi ptr [ %i.aei, %.lr.ph113.i.i ], [ %i.ajm, %.loopexit.i88.i ] ; 4 uses
  %i.aev = load i16, ptr %i.aek, align 4, !tbaa !118
  %i.aew = zext i16 %i.aev to i64
  %i.aex = add nuw nsw i64 %indvars.iv140.i.i, %i.aew ; 3 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.aed, i64 %i.aex
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !51
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %i.aex
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !51 ; 2 uses
  %i.afc = sext i32 %i.aez to i64                 ; 2 uses
  %i.afd = getelementptr inbounds [4 x i8], ptr @mantissa_size1, i64 %i.afc
  %i.afe = sext i32 %i.afb to i64                 ; 5 uses
  %i.aff = getelementptr inbounds i8, ptr %i.afd, i64 %i.afe
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !32 ; 3 uses
  %i.afh = zext i8 %i.afg to i32                  ; 7 uses
  %i.afi = load ptr, ptr %i.ael, align 8, !tbaa !140
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 %indvars.iv140.i.i
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !32 ; 8 uses
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.aex
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !51
  %i.afn = sext i32 %i.afm to i64
  %i.afo = getelementptr inbounds [4 x i8], ptr @exponent_tab, i64 %i.afn
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !29 ; 3 uses
  %i.afq = zext i8 %i.afg to i64
  %i.afr = getelementptr inbounds nuw [16 x i8], ptr @mantissa_tab1, i64 %i.afq
  %i.afs = getelementptr inbounds [4 x i8], ptr %i.afr, i64 %i.afe
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !29
  %i.afu = fmul nsz float %i.afp, %i.aft          ; 2 uses
  %.not.i79.i = icmp eq i8 %i.afg, 0
  br i1 %.not.i79.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.afv = zext i8 %i.afk to i64
  %i.afw = shl nuw nsw i64 %i.afv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0110.i.i, i8 0, i64 %i.afw, i1 false)
  %.pre.i91.i = load i8, ptr %.091119.i.i, align 8, !tbaa !113
  br label %.loopexit.i88.i

bb.ba:                                            ; preds = %bb.ay
  %.not97.i.i = icmp eq i32 %i.afb, 0
  br i1 %.not97.i.i, label %.preheader.i90.i, label %bb.bb

.preheader.i90.i:                                 ; preds = %bb.ba
  %.not127.i.i = icmp eq i8 %i.afk, 0
  br i1 %.not127.i.i, label %.loopexit.i88.i, label %.lr.ph107.i.i

.lr.ph107.i.i:                                    ; preds = %.preheader.i90.i
  %i.afx = load i32, ptr %i.ax, align 8, !tbaa !105
  %i.afy = load ptr, ptr %i.av, align 8, !tbaa !106
  %i.afz = sub nsw i32 32, %i.afh
  %.promoted108.i.i = load i32, ptr %i.aw, align 8, !tbaa !104
  %wide.trip.count138.i.i = zext i8 %i.afk to i64
  br label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.aga = add nsw i32 %i.afh, -1
  %.neg.i.i = shl nsw i32 -1, %i.aga
  %.not125.i.i = icmp eq i8 %i.afk, 0
  br i1 %.not125.i.i, label %._crit_edge.i87.i, label %.lr.ph.i80.i

.lr.ph.i80.i:                                     ; preds = %bb.bb
  %i.agb = load i32, ptr %i.ax, align 8, !tbaa !105 ; 4 uses
  %i.agc = load ptr, ptr %i.av, align 8, !tbaa !106 ; 4 uses
  %i.agd = sub nsw i32 32, %i.afh                 ; 3 uses
  %.promoted.i.i = load i32, ptr %i.aw, align 8, !tbaa !104 ; 2 uses
  %wide.trip.count.i81.i = zext i8 %i.afk to i64  ; 3 uses
  %xtraiter134 = and i64 %wide.trip.count.i81.i, 1
  %i.age = icmp eq i8 %i.afk, 1
  br i1 %i.age, label %.epil.preheader133, label %.lr.ph.i80.i.new
end_hunk_0
