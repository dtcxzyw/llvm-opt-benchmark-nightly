Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/subdivpatch1base?download=true
inline.NumInlined: 25
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN6embree16SubdivPatch1BaseC2EjjjPKNS_10SubdivMeshEmPKNS_4Vec2IfEEPKfPKii:bb.a
  %i.yk = load <4 x float>, ptr %i.hp, align 16
  store <4 x float> %i.yk, ptr %i.yj, align 16
  %i.yl = load ptr, ptr %i.dk, align 64
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 160
  %i.yn = load <4 x float>, ptr %i.hq, align 32
  store <4 x float> %i.yn, ptr %i.ym, align 16
  %i.yo = load ptr, ptr %i.dk, align 64
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 176
  %i.yq = load <4 x float>, ptr %i.hr, align 16
  store <4 x float> %i.yq, ptr %i.yp, align 16
  %i.yr = load ptr, ptr %i.dk, align 64
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 192
  %i.yt = load <4 x float>, ptr %i.hs, align 64
  store <4 x float> %i.yt, ptr %i.ys, align 16
  %i.yu = load ptr, ptr %i.dk, align 64
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 208
  %i.yw = load <4 x float>, ptr %i.ht, align 16
  store <4 x float> %i.yw, ptr %i.yv, align 16
  %i.yx = load ptr, ptr %i.dk, align 64
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 224
  %i.yz = load <4 x float>, ptr %i.hu, align 32
  store <4 x float> %i.yz, ptr %i.yy, align 16
  %i.za = load ptr, ptr %i.dk, align 64
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 240
  %i.zc = load <4 x float>, ptr %i.hv, align 16
  store <4 x float> %i.zc, ptr %i.zb, align 16
  %i.zd = load ptr, ptr %i.dk, align 64
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 256
  %i.zf = load <4 x float>, ptr %i.hw, align 64
  store <4 x float> %i.zf, ptr %i.ze, align 16
  %i.zg = load ptr, ptr %i.dk, align 64
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 272
  %i.zi = load <4 x float>, ptr %i.hx, align 16
  store <4 x float> %i.zi, ptr %i.zh, align 16
  %i.zj = load ptr, ptr %i.dk, align 64
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 288
  %i.zl = load <4 x float>, ptr %i.hy, align 32
  store <4 x float> %i.zl, ptr %i.zk, align 16
  %i.zm = load ptr, ptr %i.dk, align 64
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 304
  %i.zo = load <4 x float>, ptr %i.hz, align 16
  store <4 x float> %i.zo, ptr %i.zn, align 16
  %i.zp = load ptr, ptr %i.dk, align 64
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 320
  %i.zr = load <4 x float>, ptr %i.ia, align 64
  store <4 x float> %i.zr, ptr %i.zq, align 16
  %i.zs = load ptr, ptr %i.dk, align 64
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 336
  %i.zu = load <4 x float>, ptr %i.ib, align 16
  store <4 x float> %i.zu, ptr %i.zt, align 16
  %i.zv = load ptr, ptr %i.dk, align 64
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 352
  %i.zx = load <4 x float>, ptr %i.ic, align 32
  store <4 x float> %i.zx, ptr %i.zw, align 16
  %i.zy = load ptr, ptr %i.dk, align 64
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 368
  %i.aaa = load <4 x float>, ptr %i.id, align 16
  store <4 x float> %i.aaa, ptr %i.zz, align 16
  %i.aab = load ptr, ptr %i.dk, align 64
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 384
  %i.aad = load <4 x float>, ptr %i.ie, align 64
  store <4 x float> %i.aad, ptr %i.aac, align 16
  %i.aae = load ptr, ptr %i.dk, align 64
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 400
  %i.aag = load <4 x float>, ptr %i.if, align 16
  store <4 x float> %i.aag, ptr %i.aaf, align 16
  %i.aah = load ptr, ptr %i.dk, align 64
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 416
  %i.aaj = load <4 x float>, ptr %i.ig, align 32
  store <4 x float> %i.aaj, ptr %i.aai, align 16
  %i.aak = load ptr, ptr %i.dk, align 64
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 432
  %i.aam = load <4 x float>, ptr %i.ih, align 16
  store <4 x float> %i.aam, ptr %i.aal, align 16
  %i.aan = load ptr, ptr %i.dk, align 64
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 448
  %i.aap = load <4 x float>, ptr %i.ii, align 64
  store <4 x float> %i.aap, ptr %i.aao, align 16
  %i.aaq = load ptr, ptr %i.dk, align 64
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 464
  %i.aas = load <4 x float>, ptr %i.ij, align 16
  store <4 x float> %i.aas, ptr %i.aar, align 16
  %i.aat = load ptr, ptr %i.dk, align 64
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 480
  %i.aav = load <4 x float>, ptr %i.ik, align 32
  store <4 x float> %i.aav, ptr %i.aau, align 16
  %i.aaw = load ptr, ptr %i.dk, align 64
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 496
  %i.aay = load <4 x float>, ptr %i.il, align 16
  store <4 x float> %i.aay, ptr %i.aax, align 16
  br label %.noexc42.sink.split

.noexc42.sink.split:                              ; preds = %.noexc79.preheader, %.noexc41.thread
  %.ph138 = phi i32 [ 1, %.noexc41.thread ], [ %i.xf, %.noexc79.preheader ]
  %.ph139 = phi i32 [ 0, %.noexc41.thread ], [ %i.xa, %.noexc79.preheader ]
  %.pre121127 = load ptr, ptr %i.dk, align 64
  br label %.noexc42

.noexc42:                                         ; preds = %.noexc42.sink.split, %.noexc41, %bb.q
  %i.aaz = phi i32 [ %i.xf, %bb.q ], [ %i.xf, %.noexc41 ], [ %.ph138, %.noexc42.sink.split ] ; 2 uses
  %i.aba = phi i32 [ %i.xa, %bb.q ], [ %i.xa, %.noexc41 ], [ %.ph139, %.noexc42.sink.split ]
  %i.abb = phi ptr [ %.pre121, %bb.q ], [ %.pre121, %.noexc41 ], [ %.pre121127, %.noexc42.sink.split ]
  %i.abc = zext i32 %i.aba to i64
  %i.abd = getelementptr inbounds nuw [16 x i8], ptr %i.abb, i64 %i.abc
  %i.abe = load <4 x float>, ptr %i.cz, align 16
  store <4 x float> %i.abe, ptr %i.abd, align 16
  %i.abf = load i32, ptr %i.dl, align 4           ; 2 uses
  %.not100107 = icmp eq i32 %i.abf, 0
  br i1 %.not100107, label %.noexc, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc42, %.lr.ph
  %i.abg = phi i32 [ %i.abo, %.lr.ph ], [ %i.abf, %.noexc42 ]
  %.156.i108 = phi ptr [ %i.abm, %.lr.ph ], [ %i.ct, %.noexc42 ]
  %i.abh = sext i32 %i.abg to i64
  %i.abi = getelementptr inbounds [32 x i8], ptr %.156.i108, i64 %i.abh ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 4
  %i.abk = load i32, ptr %i.abj, align 4
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr inbounds [32 x i8], ptr %i.abi, i64 %i.abl ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 12
  %i.abo = load i32, ptr %i.abn, align 4          ; 2 uses
  %.not100 = icmp eq i32 %i.abo, 0
  br i1 %.not100, label %.loopexit, label %.lr.ph, !llvm.loop !21

.loopexit:                                        ; preds = %.lr.ph, %bb.k
  %.257.i = phi ptr [ %i.sc, %bb.k ], [ %i.abm, %.lr.ph ] ; 2 uses
  %.154.i = phi i32 [ %i.nz, %bb.k ], [ %i.aaz, %.lr.ph ] ; 2 uses
  %.352.i = phi i32 [ %spec.select.i, %bb.k ], [ %spec.select61.i, %.lr.ph ] ; 2 uses
  %.3.i = phi i32 [ %spec.select60.i, %bb.k ], [ %spec.select62.i, %.lr.ph ] ; 2 uses
  %.not.i = icmp eq ptr %.257.i, %i.ct
  br i1 %.not.i, label %.noexc, label %bb.d, !llvm.loop !22

.noexc:                                           ; preds = %.noexc42, %.loopexit
  %.3.i135 = phi i32 [ %.3.i, %.loopexit ], [ %spec.select62.i, %.noexc42 ]
  %.352.i134 = phi i32 [ %.352.i, %.loopexit ], [ %spec.select61.i, %.noexc42 ]
  %.154.i133 = phi i32 [ %.154.i, %.loopexit ], [ %i.aaz, %.noexc42 ] ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %.154.i133, ptr %i.abp, align 8
  %i.abq = lshr i32 %.154.i133, 1
  %i.abr = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %i.abq, ptr %i.abr, align 4
  %i.abs = getelementptr inbounds nuw i8, ptr %i.cs, i64 204
  store i32 %.352.i134, ptr %i.abs, align 4
  %i.abt = getelementptr inbounds nuw i8, ptr %i.cs, i64 200
  store i32 %.3.i135, ptr %i.abt, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %_ZN6embree18CatmullClarkPatchTINS_6Vec3faES1_EC2EPKNS_8HalfEdgeERKNS_10BufferViewIS1_EE.exit.preheader, label %bb.c, !llvm.loop !23

_ZN6embree18CatmullClarkPatchTINS_6Vec3faES1_EC2EPKNS_8HalfEdgeERKNS_10BufferViewIS1_EE.exit.preheader: ; preds = %.noexc
  invoke void @_ZN6embree13BSplinePatchTINS_6Vec3faES1_E4initERKNS_18CatmullClarkPatchTIS1_S1_EE(ptr noundef nonnull align 64 dereferenceable(256) %.ptr32, ptr noundef nonnull align 64 dereferenceable(3328) %10)
          to label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_EC2ERKNS_18CatmullClarkPatchTIS1_S1_EE.exit unwind label %bb.t

common.resume:                                    ; preds = %bb.t, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.abu, %bb.s ], [ %i.abv, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.j, %bb.h, %bb.n, %bb.f
  %i.abu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree7array_tINS_18CatmullClark1RingTINS_6Vec3faES2_EELm4EED2Ev(ptr noundef nonnull align 64 dead_on_return(3328) dereferenceable(3328) %10) #12
  br label %common.resume

_ZN6embree13BSplinePatchTINS_6Vec3faES1_EC2ERKNS_18CatmullClarkPatchTIS1_S1_EE.exit: ; preds = %_ZN6embree18CatmullClarkPatchTINS_6Vec3faES1_EC2EPKNS_8HalfEdgeERKNS_10BufferViewIS1_EE.exit.preheader
  call void @_ZN6embree7array_tINS_18CatmullClark1RingTINS_6Vec3faES2_EELm4EED2Ev(ptr noundef nonnull align 64 dead_on_return(3328) dereferenceable(3328) %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.v

bb.t:                                             ; preds = %_ZN6embree18CatmullClarkPatchTINS_6Vec3faES1_EC2EPKNS_8HalfEdgeERKNS_10BufferViewIS1_EE.exit.preheader
  %i.abv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree7array_tINS_18CatmullClark1RingTINS_6Vec3faES2_EELm4EED2Ev(ptr noundef nonnull align 64 dead_on_return(3328) dereferenceable(3328) %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %common.resume

bb.u:                                             ; preds = %bb.a
  store i8 5, ptr %i.e, align 1
  %i.abw = load ptr, ptr %i.k, align 8            ; 2 uses
  %i.abx = load ptr, ptr %i.abw, align 8
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 632
  %i.abz = load ptr, ptr %i.aby, align 8
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.abz, i64 %i.j
  %i.acb = load i32, ptr %i.aca, align 4
  %i.acc = zext i32 %i.acb to i64
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abw, i64 104
  %i.ace = load ptr, ptr %i.acd, align 8
  %i.acf = getelementptr inbounds nuw [32 x i8], ptr %i.ace, i64 %i.acc
  store ptr %i.acf, ptr %.ptr32, align 64
  %i.acg = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %3, ptr %i.acg, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZN6embree13BSplinePatchTINS_6Vec3faES1_EC2ERKNS_18CatmullClarkPatchTIS1_S1_EE.exit, %bb.u, %_ZN6embree14BilinearPatchTINS_6Vec3faES1_EC2EPKNS_8HalfEdgeERKNS_10BufferViewIS1_EE.exit
  %i.ach = add i64 %i.b, 32
  %i.aci = or disjoint i64 %i.a, 10
  %i.acj = or disjoint i64 %i.a, 26
  %rt.bound0 = icmp ult i64 %i.aci, %i.ach
  %rt.bound1 = icmp ugt i64 %i.acj, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !35

.rtvec:                                           ; preds = %bb.v
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.acl = load <8 x float>, ptr %6, align 4
  %i.acm = fmul <8 x float> %i.acl, splat (float 8.192000e+03) ; 2 uses
  %i.acn = fcmp olt <8 x float> %i.acm, splat (float 6.553500e+04)
  %i.aco = select <8 x i1> %i.acn, <8 x float> %i.acm, <8 x float> splat (float 6.553500e+04) ; 2 uses
  %i.acp = fcmp olt <8 x float> %i.aco, zeroinitializer
  %i.acq = select <8 x i1> %i.acp, <8 x float> zeroinitializer, <8 x float> %i.aco
  %i.acr = shufflevector <8 x float> %i.acq, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.acs = fptoui <8 x float> %i.acr to <8 x i16>
  store <8 x i16> %i.acs, ptr %i.ack, align 2
  %i.act = call noundef zeroext i1 @_ZN6embree16SubdivPatch1Base16updateEdgeLevelsEPKfPKiPKNS_10SubdivMeshEi(ptr noundef nonnull align 64 dereferenceable(320) %0, ptr noundef %7, ptr noundef %8, ptr nonnull poison, i32 noundef %9) ; 0 uses
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.v
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.acw = load float, ptr %6, align 4
  %i.acx = fmul float %i.acw, 8.192000e+03        ; 2 uses
  %i.acy = fcmp olt float %i.acx, 6.553500e+04
  %i.acz = select i1 %i.acy, float %i.acx, float 6.553500e+04 ; 2 uses
  %i.ada = fcmp olt float %i.acz, 0.000000e+00
  %i.adb = select i1 %i.ada, float 0.000000e+00, float %i.acz
  %i.adc = fptoui float %i.adb to i16
  store i16 %i.adc, ptr %i.acu, align 2
  %i.add = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ade = load float, ptr %i.add, align 4
  %i.adf = fmul float %i.ade, 8.192000e+03        ; 2 uses
  %i.adg = fcmp olt float %i.adf, 6.553500e+04
  %i.adh = select i1 %i.adg, float %i.adf, float 6.553500e+04 ; 2 uses
  %i.adi = fcmp olt float %i.adh, 0.000000e+00
  %i.adj = select i1 %i.adi, float 0.000000e+00, float %i.adh
  %i.adk = fptoui float %i.adj to i16
  store i16 %i.adk, ptr %i.acv, align 2
  %i.adl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.adm = load float, ptr %i.adl, align 4
  %i.adn = fmul float %i.adm, 8.192000e+03        ; 2 uses
  %i.ado = fcmp olt float %i.adn, 6.553500e+04
  %i.adp = select i1 %i.ado, float %i.adn, float 6.553500e+04 ; 2 uses
  %i.adq = fcmp olt float %i.adp, 0.000000e+00
  %i.adr = select i1 %i.adq, float 0.000000e+00, float %i.adp
  %i.ads = fptoui float %i.adr to i16
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.ads, ptr %i.adt, align 4
  %i.adu = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.adv = load float, ptr %i.adu, align 4
  %i.adw = fmul float %i.adv, 8.192000e+03        ; 2 uses
  %i.adx = fcmp olt float %i.adw, 6.553500e+04
  %i.ady = select i1 %i.adx, float %i.adw, float 6.553500e+04 ; 2 uses
  %i.adz = fcmp olt float %i.ady, 0.000000e+00
  %i.aea = select i1 %i.adz, float 0.000000e+00, float %i.ady
  %i.aeb = fptoui float %i.aea to i16
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.aeb, ptr %i.aec, align 4
  %i.aed = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aee = load float, ptr %i.aed, align 4
  %i.aef = fmul float %i.aee, 8.192000e+03        ; 2 uses
  %i.aeg = fcmp olt float %i.aef, 6.553500e+04
  %i.aeh = select i1 %i.aeg, float %i.aef, float 6.553500e+04 ; 2 uses
  %i.aei = fcmp olt float %i.aeh, 0.000000e+00
  %i.aej = select i1 %i.aei, float 0.000000e+00, float %i.aeh
  %i.aek = fptoui float %i.aej to i16
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %i.aek, ptr %i.ael, align 2
  %i.aem = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.aen = load float, ptr %i.aem, align 4
  %i.aeo = fmul float %i.aen, 8.192000e+03        ; 2 uses
  %i.aep = fcmp olt float %i.aeo, 6.553500e+04
  %i.aeq = select i1 %i.aep, float %i.aeo, float 6.553500e+04 ; 2 uses
  %i.aer = fcmp olt float %i.aeq, 0.000000e+00
  %i.aes = select i1 %i.aer, float 0.000000e+00, float %i.aeq
  %i.aet = fptoui float %i.aes to i16
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.aet, ptr %i.aeu, align 2
  %i.aev = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aew = load float, ptr %i.aev, align 4
  %i.aex = fmul float %i.aew, 8.192000e+03        ; 2 uses
  %i.aey = fcmp olt float %i.aex, 6.553500e+04
  %i.aez = select i1 %i.aey, float %i.aex, float 6.553500e+04 ; 2 uses
  %i.afa = fcmp olt float %i.aez, 0.000000e+00
  %i.afb = select i1 %i.afa, float 0.000000e+00, float %i.aez
  %i.afc = fptoui float %i.afb to i16
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.afc, ptr %i.afd, align 16
  %i.afe = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.aff = load float, ptr %i.afe, align 4
  %i.afg = fmul float %i.aff, 8.192000e+03        ; 2 uses
  %i.afh = fcmp olt float %i.afg, 6.553500e+04
  %i.afi = select i1 %i.afh, float %i.afg, float 6.553500e+04 ; 2 uses
  %i.afj = fcmp olt float %i.afi, 0.000000e+00
  %i.afk = select i1 %i.afj, float 0.000000e+00, float %i.afi
  %i.afl = fptoui float %i.afk to i16
  %i.afm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.afl, ptr %i.afm, align 8
  %i.afn = call noundef zeroext i1 @_ZN6embree16SubdivPatch1Base16updateEdgeLevelsEPKfPKiPKNS_10SubdivMeshEi(ptr noundef nonnull align 64 dereferenceable(320) %0, ptr noundef %7, ptr noundef %8, ptr nonnull poison, i32 noundef %9) ; 0 uses
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN6embree16SubdivPatch1Base16updateEdgeLevelsEPKfPKiPKNS_10SubdivMeshEi(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(320) initializes((46, 48), (56, 60)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @_ZN6embree16SubdivPatch1Base17computeEdgeLevelsEPKfPKiPf(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.c = load <4 x float>, ptr %i.a, align 16     ; 4 uses
  %i.d = load <4 x float>, ptr %i.b, align 4
  %i.e = fptosi <4 x float> %i.c to <4 x i32>     ; 5 uses
  store <4 x float> %i.c, ptr %i.b, align 4
  %i.f = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.g = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.h = fcmp olt <2 x float> %i.f, %i.g
  %i.i = select <2 x i1> %i.h, <2 x float> %i.g, <2 x float> %i.f ; 2 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  %i.k = fptosi float %i.j to i32
  %i.l = add nsw i32 %i.k, 1                      ; 2 uses
  %i.m = extractelement <2 x float> %i.i, i64 1
  %i.n = fptosi float %i.m to i32
  %i.o = add nsw i32 %i.n, 1                      ; 2 uses
  %i.p = trunc i32 %i.l to i16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 46
  store i16 %i.p, ptr %i.q, align 2
  %i.r = trunc i32 %i.o to i16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %i.r, ptr %i.s, align 8
  %i.t = and i32 %i.l, 65535                      ; 3 uses
  %i.u = and i32 %i.o, 65535                      ; 3 uses
  %i.v = mul nuw nsw i32 %i.u, %i.t
  %i.w = add i32 %4, -1
  %i.x = add i32 %i.w, %i.v
  %i.y = sub nsw i32 0, %4
  %i.z = and i32 %i.x, %i.y
  %i.aa = sdiv i32 %i.z, %4
  %i.ab = trunc i32 %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %i.ab, ptr %i.ac, align 2
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 4             ; 2 uses
  %i.af = and i8 %i.ae, -17
  store i8 %i.af, ptr %i.ad, align 4
  %i.ag = extractelement <4 x i32> %i.e, i64 0
  %i.ah = add nsw i32 %i.ag, 1
  %i.ai = icmp slt i32 %i.ah, %i.t
  %i.aj = extractelement <4 x i32> %i.e, i64 2
  %i.ak = add nsw i32 %i.aj, 1
  %i.al = icmp slt i32 %i.ak, %i.t
  %or.cond23 = select i1 %i.ai, i1 true, i1 %i.al
  br i1 %or.cond23, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.am = extractelement <4 x i32> %i.e, i64 3
  %i.an = add nsw i32 %i.am, 1
  %i.ao = extractelement <4 x i32> %i.e, i64 1
  %i.ap = add nsw i32 %i.ao, 1
  %i.aq = icmp slt i32 %i.ap, %i.u
  %i.ar = icmp slt i32 %i.an, %i.u
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.as = or i8 %i.ae, 16
  store i8 %i.as, ptr %i.ad, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.at = fptosi <4 x float> %i.d to <4 x i32>
  %i.au = icmp ne <4 x i32> %i.e, %i.at
  %i.av = bitcast <4 x i1> %i.au to i4
  %i.aw = icmp ne i4 %i.av, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i1 %i.aw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN6embree16SubdivPatch1Base17computeEdgeLevelsEPKfPKiPf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 3 uses
  %i.b = load i32, ptr %1, align 4                ; 8 uses
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN6embree23adjustTessellationLevelEfm.exit26, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.c, 7
  %i.d = icmp ult i32 %i.b, 8
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.c, -8
  br label %.lr.ph

.lr.ph32.preheader.unr-lcssa:                     ; preds = %.lr.ph
  %i.e = and i32 %i.b, 7
  %lcmp.mod.not = icmp eq i32 %i.e, 0
  br i1 %lcmp.mod.not, label %.lr.ph32.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph32.preheader.unr-lcssa, %.lr.ph.preheader
  %.011.i2227.epil.init = phi float [ %i.a, %.lr.ph.preheader ], [ %i.q, %.lr.ph32.preheader.unr-lcssa ]
  %i.f = and i32 %i.b, 7
  %lcmp.mod114 = icmp ne i32 %i.f, 0
  tail call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.011.i2227.epil = phi float [ %i.g, %.lr.ph.epil ], [ %.011.i2227.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.g = fmul float %.011.i2227.epil, 5.000000e-01 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph32.preheader, label %.lr.ph.epil, !llvm.loop !36

.lr.ph32.preheader:                               ; preds = %.lr.ph.epil, %.lr.ph32.preheader.unr-lcssa
  %.lcssa112 = phi float [ %i.q, %.lr.ph32.preheader.unr-lcssa ], [ %i.g, %.lr.ph.epil ]
  %i.h = tail call float @llvm.ceil.f32(float %.lcssa112) ; 2 uses
  %xtraiter115 = and i64 %i.c, 7
  %i.i = icmp ult i32 %i.b, 8
  br i1 %i.i, label %.lr.ph32.epil.preheader, label %.lr.ph32.preheader.new

.lr.ph32.preheader.new:                           ; preds = %.lr.ph32.preheader
  %unroll_iter120 = and i64 %i.c, -8
  br label %.lr.ph32

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.011.i2227 = phi float [ %i.a, %.lr.ph.preheader.new ], [ %i.q, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.j = fmul float %.011.i2227, 5.000000e-01
  %i.k = fmul float %i.j, 5.000000e-01
  %i.l = fmul float %i.k, 5.000000e-01
  %i.m = fmul float %i.l, 5.000000e-01
  %i.n = fmul float %i.m, 5.000000e-01
  %i.o = fmul float %i.n, 5.000000e-01
  %i.p = fmul float %i.o, 5.000000e-01
  %i.q = fmul float %i.p, 5.000000e-01            ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph32.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !37

.lr.ph32:                                         ; preds = %.lr.ph32, %.lr.ph32.preheader.new
  %.09.i2429 = phi float [ %i.h, %.lr.ph32.preheader.new ], [ %i.y, %.lr.ph32 ]
  %niter121 = phi i64 [ 0, %.lr.ph32.preheader.new ], [ %niter121.next.7, %.lr.ph32 ]
  %i.r = fmul float %.09.i2429, 2.000000e+00
  %i.s = fmul float %i.r, 2.000000e+00
  %i.t = fmul float %i.s, 2.000000e+00
  %i.u = fmul float %i.t, 2.000000e+00
  %i.v = fmul float %i.u, 2.000000e+00
  %i.w = fmul float %i.v, 2.000000e+00
  %i.x = fmul float %i.w, 2.000000e+00
  %i.y = fmul float %i.x, 2.000000e+00            ; 3 uses
  %niter121.next.7 = add i64 %niter121, 8         ; 2 uses
  %niter121.ncmp.7 = icmp eq i64 %niter121.next.7, %unroll_iter120
  br i1 %niter121.ncmp.7, label %_ZN6embree23adjustTessellationLevelEfm.exit26.loopexit.unr-lcssa, label %.lr.ph32, !llvm.loop !38

_ZN6embree23adjustTessellationLevelEfm.exit26.loopexit.unr-lcssa: ; preds = %.lr.ph32
  %i.z = and i32 %i.b, 7
  %lcmp.mod117.not = icmp eq i32 %i.z, 0
  br i1 %lcmp.mod117.not, label %_ZN6embree23adjustTessellationLevelEfm.exit26, label %.lr.ph32.epil.preheader

.lr.ph32.epil.preheader:                          ; preds = %_ZN6embree23adjustTessellationLevelEfm.exit26.loopexit.unr-lcssa, %.lr.ph32.preheader
  %.09.i2429.epil.init = phi float [ %i.h, %.lr.ph32.preheader ], [ %i.y, %_ZN6embree23adjustTessellationLevelEfm.exit26.loopexit.unr-lcssa ]
  %i.aa = and i32 %i.b, 7
  %lcmp.mod119 = icmp ne i32 %i.aa, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph32.epil

.lr.ph32.epil:                                    ; preds = %.lr.ph32.epil, %.lr.ph32.epil.preheader
  %.09.i2429.epil = phi float [ %i.ab, %.lr.ph32.epil ], [ %.09.i2429.epil.init, %.lr.ph32.epil.preheader ]
  %epil.iter116 = phi i64 [ %epil.iter116.next, %.lr.ph32.epil ], [ 0, %.lr.ph32.epil.preheader ]
  %i.ab = fmul float %.09.i2429.epil, 2.000000e+00 ; 2 uses
  %epil.iter116.next = add i64 %epil.iter116, 1   ; 2 uses
  %epil.iter116.cmp.not = icmp eq i64 %epil.iter116.next, %xtraiter115
  br i1 %epil.iter116.cmp.not, label %_ZN6embree23adjustTessellationLevelEfm.exit26, label %.lr.ph32.epil, !llvm.loop !39

_ZN6embree23adjustTessellationLevelEfm.exit26:    ; preds = %_ZN6embree23adjustTessellationLevelEfm.exit26.loopexit.unr-lcssa, %.lr.ph32.epil, %bb.a
  %.sink = phi float [ %i.a, %bb.a ], [ %i.y, %_ZN6embree23adjustTessellationLevelEfm.exit26.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph32.epil ]
  %i.ac = tail call float @llvm.ceil.f32(float %.sink) ; 2 uses
  %i.ad = fcmp olt float %i.ac, 1.000000e+00
  %i.ae = select i1 %i.ad, float 1.000000e+00, float %i.ac
  store float %i.ae, ptr %2, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load float, ptr %i.af, align 4          ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load i32, ptr %i.ah, align 4            ; 8 uses
  %i.aj = sext i32 %i.ai to i64                   ; 4 uses
  %.not65 = icmp eq i32 %i.ai, 0
  br i1 %.not65, label %_ZN6embree23adjustTessellationLevelEfm.exit21, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %_ZN6embree23adjustTessellationLevelEfm.exit26
  %xtraiter122 = and i64 %i.aj, 7
  %i.ak = icmp ult i32 %i.ai, 8
  br i1 %i.ak, label %.lr.ph36.epil.preheader, label %.lr.ph36.preheader.new

.lr.ph36.preheader.new:                           ; preds = %.lr.ph36.preheader
  %unroll_iter127 = and i64 %i.aj, -8
  br label %.lr.ph36

.lr.ph42.preheader.unr-lcssa:                     ; preds = %.lr.ph36
  %i.al = and i32 %i.ai, 7
  %lcmp.mod124.not = icmp eq i32 %i.al, 0
  br i1 %lcmp.mod124.not, label %.lr.ph42.preheader, label %.lr.ph36.epil.preheader

.lr.ph36.epil.preheader:                          ; preds = %.lr.ph42.preheader.unr-lcssa, %.lr.ph36.preheader
  %.011.i1734.epil.init = phi float [ %i.ag, %.lr.ph36.preheader ], [ %i.ax, %.lr.ph42.preheader.unr-lcssa ]
  %i.am = and i32 %i.ai, 7
  %lcmp.mod126 = icmp ne i32 %i.am, 0
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph36.epil

.lr.ph36.epil:                                    ; preds = %.lr.ph36.epil, %.lr.ph36.epil.preheader
  %.011.i1734.epil = phi float [ %i.an, %.lr.ph36.epil ], [ %.011.i1734.epil.init, %.lr.ph36.epil.preheader ]
  %epil.iter123 = phi i64 [ %epil.iter123.next, %.lr.ph36.epil ], [ 0, %.lr.ph36.epil.preheader ]
  %i.an = fmul float %.011.i1734.epil, 5.000000e-01 ; 2 uses
  %epil.iter123.next = add i64 %epil.iter123, 1   ; 2 uses
  %epil.iter123.cmp.not = icmp eq i64 %epil.iter123.next, %xtraiter122
  br i1 %epil.iter123.cmp.not, label %.lr.ph42.preheader, label %.lr.ph36.epil, !llvm.loop !40

.lr.ph42.preheader:                               ; preds = %.lr.ph36.epil, %.lr.ph42.preheader.unr-lcssa
  %.lcssa110 = phi float [ %i.ax, %.lr.ph42.preheader.unr-lcssa ], [ %i.an, %.lr.ph36.epil ]
  %i.ao = tail call float @llvm.ceil.f32(float %.lcssa110) ; 2 uses
  %xtraiter129 = and i64 %i.aj, 7
  %i.ap = icmp ult i32 %i.ai, 8
  br i1 %i.ap, label %.lr.ph42.epil.preheader, label %.lr.ph42.preheader.new

.lr.ph42.preheader.new:                           ; preds = %.lr.ph42.preheader
  %unroll_iter134 = and i64 %i.aj, -8
  br label %.lr.ph42

.lr.ph36:                                         ; preds = %.lr.ph36, %.lr.ph36.preheader.new
  %.011.i1734 = phi float [ %i.ag, %.lr.ph36.preheader.new ], [ %i.ax, %.lr.ph36 ]
  %niter128 = phi i64 [ 0, %.lr.ph36.preheader.new ], [ %niter128.next.7, %.lr.ph36 ]
  %i.aq = fmul float %.011.i1734, 5.000000e-01
  %i.ar = fmul float %i.aq, 5.000000e-01
  %i.as = fmul float %i.ar, 5.000000e-01
  %i.at = fmul float %i.as, 5.000000e-01
  %i.au = fmul float %i.at, 5.000000e-01
  %i.av = fmul float %i.au, 5.000000e-01
  %i.aw = fmul float %i.av, 5.000000e-01
  %i.ax = fmul float %i.aw, 5.000000e-01          ; 3 uses
  %niter128.next.7 = add i64 %niter128, 8         ; 2 uses
  %niter128.ncmp.7 = icmp eq i64 %niter128.next.7, %unroll_iter127
  br i1 %niter128.ncmp.7, label %.lr.ph42.preheader.unr-lcssa, label %.lr.ph36, !llvm.loop !37

.lr.ph42:                                         ; preds = %.lr.ph42, %.lr.ph42.preheader.new
  %.09.i1939 = phi float [ %i.ao, %.lr.ph42.preheader.new ], [ %i.bf, %.lr.ph42 ]
  %niter135 = phi i64 [ 0, %.lr.ph42.preheader.new ], [ %niter135.next.7, %.lr.ph42 ]
  %i.ay = fmul float %.09.i1939, 2.000000e+00
  %i.az = fmul float %i.ay, 2.000000e+00
  %i.ba = fmul float %i.az, 2.000000e+00
  %i.bb = fmul float %i.ba, 2.000000e+00
  %i.bc = fmul float %i.bb, 2.000000e+00
  %i.bd = fmul float %i.bc, 2.000000e+00
  %i.be = fmul float %i.bd, 2.000000e+00
  %i.bf = fmul float %i.be, 2.000000e+00          ; 3 uses
  %niter135.next.7 = add i64 %niter135, 8         ; 2 uses
  %niter135.ncmp.7 = icmp eq i64 %niter135.next.7, %unroll_iter134
  br i1 %niter135.ncmp.7, label %_ZN6embree23adjustTessellationLevelEfm.exit21.loopexit.unr-lcssa, label %.lr.ph42, !llvm.loop !38

_ZN6embree23adjustTessellationLevelEfm.exit21.loopexit.unr-lcssa: ; preds = %.lr.ph42
  %i.bg = and i32 %i.ai, 7
  %lcmp.mod131.not = icmp eq i32 %i.bg, 0
  br i1 %lcmp.mod131.not, label %_ZN6embree23adjustTessellationLevelEfm.exit21, label %.lr.ph42.epil.preheader

.lr.ph42.epil.preheader:                          ; preds = %_ZN6embree23adjustTessellationLevelEfm.exit21.loopexit.unr-lcssa, %.lr.ph42.preheader
  %.09.i1939.epil.init = phi float [ %i.ao, %.lr.ph42.preheader ], [ %i.bf, %_ZN6embree23adjustTessellationLevelEfm.exit21.loopexit.unr-lcssa ]
  %i.bh = and i32 %i.ai, 7
  %lcmp.mod133 = icmp ne i32 %i.bh, 0
  tail call void @llvm.assume(i1 %lcmp.mod133)
  br label %.lr.ph42.epil

.lr.ph42.epil:                                    ; preds = %.lr.ph42.epil, %.lr.ph42.epil.preheader
  %.09.i1939.epil = phi float [ %i.bi, %.lr.ph42.epil ], [ %.09.i1939.epil.init, %.lr.ph42.epil.preheader ]
  %epil.iter130 = phi i64 [ %epil.iter130.next, %.lr.ph42.epil ], [ 0, %.lr.ph42.epil.preheader ]
  %i.bi = fmul float %.09.i1939.epil, 2.000000e+00 ; 2 uses
  %epil.iter130.next = add i64 %epil.iter130, 1   ; 2 uses
  %epil.iter130.cmp.not = icmp eq i64 %epil.iter130.next, %xtraiter129
  br i1 %epil.iter130.cmp.not, label %_ZN6embree23adjustTessellationLevelEfm.exit21, label %.lr.ph42.epil, !llvm.loop !41

_ZN6embree23adjustTessellationLevelEfm.exit21:    ; preds = %_ZN6embree23adjustTessellationLevelEfm.exit21.loopexit.unr-lcssa, %.lr.ph42.epil, %_ZN6embree23adjustTessellationLevelEfm.exit26
  %.sink96 = phi float [ %i.ag, %_ZN6embree23adjustTessellationLevelEfm.exit26 ], [ %i.bf, %_ZN6embree23adjustTessellationLevelEfm.exit21.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph42.epil ]
  %i.bj = tail call float @llvm.ceil.f32(float %.sink96) ; 2 uses
  %i.bk = fcmp olt float %i.bj, 1.000000e+00
  %i.bl = select i1 %i.bk, float 1.000000e+00, float %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.bl, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load float, ptr %i.bn, align 4          ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load i32, ptr %i.bp, align 4            ; 8 uses
  %i.br = sext i32 %i.bq to i64                   ; 4 uses
  %.not67 = icmp eq i32 %i.bq, 0
  br i1 %.not67, label %_ZN6embree23adjustTessellationLevelEfm.exit16, label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %_ZN6embree23adjustTessellationLevelEfm.exit21
  %xtraiter136 = and i64 %i.br, 7
  %i.bs = icmp ult i32 %i.bq, 8
  br i1 %i.bs, label %.lr.ph46.epil.preheader, label %.lr.ph46.preheader.new

.lr.ph46.preheader.new:                           ; preds = %.lr.ph46.preheader
  %unroll_iter141 = and i64 %i.br, -8
  br label %.lr.ph46

.lr.ph52.preheader.unr-lcssa:                     ; preds = %.lr.ph46
  %i.bt = and i32 %i.bq, 7
  %lcmp.mod138.not = icmp eq i32 %i.bt, 0
  br i1 %lcmp.mod138.not, label %.lr.ph52.preheader, label %.lr.ph46.epil.preheader

.lr.ph46.epil.preheader:                          ; preds = %.lr.ph52.preheader.unr-lcssa, %.lr.ph46.preheader
  %.011.i1244.epil.init = phi float [ %i.bo, %.lr.ph46.preheader ], [ %i.cf, %.lr.ph52.preheader.unr-lcssa ]
  %i.bu = and i32 %i.bq, 7
  %lcmp.mod140 = icmp ne i32 %i.bu, 0
  tail call void @llvm.assume(i1 %lcmp.mod140)
  br label %.lr.ph46.epil

.lr.ph46.epil:                                    ; preds = %.lr.ph46.epil, %.lr.ph46.epil.preheader
  %.011.i1244.epil = phi float [ %i.bv, %.lr.ph46.epil ], [ %.011.i1244.epil.init, %.lr.ph46.epil.preheader ]
  %epil.iter137 = phi i64 [ %epil.iter137.next, %.lr.ph46.epil ], [ 0, %.lr.ph46.epil.preheader ]
  %i.bv = fmul float %.011.i1244.epil, 5.000000e-01 ; 2 uses
  %epil.iter137.next = add i64 %epil.iter137, 1   ; 2 uses
  %epil.iter137.cmp.not = icmp eq i64 %epil.iter137.next, %xtraiter136
  br i1 %epil.iter137.cmp.not, label %.lr.ph52.preheader, label %.lr.ph46.epil, !llvm.loop !42

.lr.ph52.preheader:                               ; preds = %.lr.ph46.epil, %.lr.ph52.preheader.unr-lcssa
  %.lcssa108 = phi float [ %i.cf, %.lr.ph52.preheader.unr-lcssa ], [ %i.bv, %.lr.ph46.epil ]
  %i.bw = tail call float @llvm.ceil.f32(float %.lcssa108) ; 2 uses
  %xtraiter143 = and i64 %i.br, 7
  %i.bx = icmp ult i32 %i.bq, 8
  br i1 %i.bx, label %.lr.ph52.epil.preheader, label %.lr.ph52.preheader.new

.lr.ph52.preheader.new:                           ; preds = %.lr.ph52.preheader
  %unroll_iter148 = and i64 %i.br, -8
  br label %.lr.ph52

.lr.ph46:                                         ; preds = %.lr.ph46, %.lr.ph46.preheader.new
  %.011.i1244 = phi float [ %i.bo, %.lr.ph46.preheader.new ], [ %i.cf, %.lr.ph46 ]
  %niter142 = phi i64 [ 0, %.lr.ph46.preheader.new ], [ %niter142.next.7, %.lr.ph46 ]
  %i.by = fmul float %.011.i1244, 5.000000e-01
  %i.bz = fmul float %i.by, 5.000000e-01
  %i.ca = fmul float %i.bz, 5.000000e-01
  %i.cb = fmul float %i.ca, 5.000000e-01
  %i.cc = fmul float %i.cb, 5.000000e-01
  %i.cd = fmul float %i.cc, 5.000000e-01
  %i.ce = fmul float %i.cd, 5.000000e-01
  %i.cf = fmul float %i.ce, 5.000000e-01          ; 3 uses
  %niter142.next.7 = add i64 %niter142, 8         ; 2 uses
  %niter142.ncmp.7 = icmp eq i64 %niter142.next.7, %unroll_iter141
  br i1 %niter142.ncmp.7, label %.lr.ph52.preheader.unr-lcssa, label %.lr.ph46, !llvm.loop !37

.lr.ph52:                                         ; preds = %.lr.ph52, %.lr.ph52.preheader.new
  %.09.i1449 = phi float [ %i.bw, %.lr.ph52.preheader.new ], [ %i.cn, %.lr.ph52 ]
  %niter149 = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %niter149.next.7, %.lr.ph52 ]
  %i.cg = fmul float %.09.i1449, 2.000000e+00
  %i.ch = fmul float %i.cg, 2.000000e+00
  %i.ci = fmul float %i.ch, 2.000000e+00
  %i.cj = fmul float %i.ci, 2.000000e+00
  %i.ck = fmul float %i.cj, 2.000000e+00
  %i.cl = fmul float %i.ck, 2.000000e+00
  %i.cm = fmul float %i.cl, 2.000000e+00
  %i.cn = fmul float %i.cm, 2.000000e+00          ; 3 uses
  %niter149.next.7 = add i64 %niter149, 8         ; 2 uses
  %niter149.ncmp.7 = icmp eq i64 %niter149.next.7, %unroll_iter148
  br i1 %niter149.ncmp.7, label %_ZN6embree23adjustTessellationLevelEfm.exit16.loopexit.unr-lcssa, label %.lr.ph52, !llvm.loop !38

_ZN6embree23adjustTessellationLevelEfm.exit16.loopexit.unr-lcssa: ; preds = %.lr.ph52
  %i.co = and i32 %i.bq, 7
  %lcmp.mod145.not = icmp eq i32 %i.co, 0
  br i1 %lcmp.mod145.not, label %_ZN6embree23adjustTessellationLevelEfm.exit16, label %.lr.ph52.epil.preheader

.lr.ph52.epil.preheader:                          ; preds = %_ZN6embree23adjustTessellationLevelEfm.exit16.loopexit.unr-lcssa, %.lr.ph52.preheader
  %.09.i1449.epil.init = phi float [ %i.bw, %.lr.ph52.preheader ], [ %i.cn, %_ZN6embree23adjustTessellationLevelEfm.exit16.loopexit.unr-lcssa ]
  %i.cp = and i32 %i.bq, 7
  %lcmp.mod147 = icmp ne i32 %i.cp, 0
  tail call void @llvm.assume(i1 %lcmp.mod147)
  br label %.lr.ph52.epil

.lr.ph52.epil:                                    ; preds = %.lr.ph52.epil, %.lr.ph52.epil.preheader
  %.09.i1449.epil = phi float [ %i.cq, %.lr.ph52.epil ], [ %.09.i1449.epil.init, %.lr.ph52.epil.preheader ]
  %epil.iter144 = phi i64 [ %epil.iter144.next, %.lr.ph52.epil ], [ 0, %.lr.ph52.epil.preheader ]
  %i.cq = fmul float %.09.i1449.epil, 2.000000e+00 ; 2 uses
  %epil.iter144.next = add i64 %epil.iter144, 1   ; 2 uses
  %epil.iter144.cmp.not = icmp eq i64 %epil.iter144.next, %xtraiter143
  br i1 %epil.iter144.cmp.not, label %_ZN6embree23adjustTessellationLevelEfm.exit16, label %.lr.ph52.epil, !llvm.loop !43

_ZN6embree23adjustTessellationLevelEfm.exit16:    ; preds = %_ZN6embree23adjustTessellationLevelEfm.exit16.loopexit.unr-lcssa, %.lr.ph52.epil, %_ZN6embree23adjustTessellationLevelEfm.exit21
  %.sink97 = phi float [ %i.bo, %_ZN6embree23adjustTessellationLevelEfm.exit21 ], [ %i.cn, %_ZN6embree23adjustTessellationLevelEfm.exit16.loopexit.unr-lcssa ], [ %i.cq, %.lr.ph52.epil ]
  %i.cr = tail call float @llvm.ceil.f32(float %.sink97) ; 2 uses
  %i.cs = fcmp olt float %i.cr, 1.000000e+00
  %i.ct = select i1 %i.cs, float 1.000000e+00, float %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.ct, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cw = load float, ptr %i.cv, align 4          ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cy = load i32, ptr %i.cx, align 4            ; 8 uses
  %i.cz = sext i32 %i.cy to i64                   ; 4 uses
  %.not69 = icmp eq i32 %i.cy, 0
  br i1 %.not69, label %_ZN6embree23adjustTessellationLevelEfm.exit, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %_ZN6embree23adjustTessellationLevelEfm.exit16
  %xtraiter150 = and i64 %i.cz, 7
  %i.da = icmp ult i32 %i.cy, 8
  br i1 %i.da, label %.lr.ph56.epil.preheader, label %.lr.ph56.preheader.new

.lr.ph56.preheader.new:                           ; preds = %.lr.ph56.preheader
  %unroll_iter155 = and i64 %i.cz, -8
  br label %.lr.ph56

.lr.ph62.preheader.unr-lcssa:                     ; preds = %.lr.ph56
  %i.db = and i32 %i.cy, 7
  %lcmp.mod152.not = icmp eq i32 %i.db, 0
  br i1 %lcmp.mod152.not, label %.lr.ph62.preheader, label %.lr.ph56.epil.preheader

.lr.ph56.epil.preheader:                          ; preds = %.lr.ph62.preheader.unr-lcssa, %.lr.ph56.preheader
  %.011.i54.epil.init = phi float [ %i.cw, %.lr.ph56.preheader ], [ %i.dn, %.lr.ph62.preheader.unr-lcssa ]
  %i.dc = and i32 %i.cy, 7
  %lcmp.mod154 = icmp ne i32 %i.dc, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph56.epil

.lr.ph56.epil:                                    ; preds = %.lr.ph56.epil, %.lr.ph56.epil.preheader
  %.011.i54.epil = phi float [ %i.dd, %.lr.ph56.epil ], [ %.011.i54.epil.init, %.lr.ph56.epil.preheader ]
  %epil.iter151 = phi i64 [ %epil.iter151.next, %.lr.ph56.epil ], [ 0, %.lr.ph56.epil.preheader ]
  %i.dd = fmul float %.011.i54.epil, 5.000000e-01 ; 2 uses
  %epil.iter151.next = add i64 %epil.iter151, 1   ; 2 uses
  %epil.iter151.cmp.not = icmp eq i64 %epil.iter151.next, %xtraiter150
  br i1 %epil.iter151.cmp.not, label %.lr.ph62.preheader, label %.lr.ph56.epil, !llvm.loop !44

.lr.ph62.preheader:                               ; preds = %.lr.ph56.epil, %.lr.ph62.preheader.unr-lcssa
  %.lcssa106 = phi float [ %i.dn, %.lr.ph62.preheader.unr-lcssa ], [ %i.dd, %.lr.ph56.epil ]
  %i.de = tail call float @llvm.ceil.f32(float %.lcssa106) ; 2 uses
  %xtraiter157 = and i64 %i.cz, 7
  %i.df = icmp ult i32 %i.cy, 8
  br i1 %i.df, label %.lr.ph62.epil.preheader, label %.lr.ph62.preheader.new

.lr.ph62.preheader.new:                           ; preds = %.lr.ph62.preheader
  %unroll_iter162 = and i64 %i.cz, -8
  br label %.lr.ph62

.lr.ph56:                                         ; preds = %.lr.ph56, %.lr.ph56.preheader.new
  %.011.i54 = phi float [ %i.cw, %.lr.ph56.preheader.new ], [ %i.dn, %.lr.ph56 ]
  %niter156 = phi i64 [ 0, %.lr.ph56.preheader.new ], [ %niter156.next.7, %.lr.ph56 ]
  %i.dg = fmul float %.011.i54, 5.000000e-01
  %i.dh = fmul float %i.dg, 5.000000e-01
  %i.di = fmul float %i.dh, 5.000000e-01
  %i.dj = fmul float %i.di, 5.000000e-01
  %i.dk = fmul float %i.dj, 5.000000e-01
  %i.dl = fmul float %i.dk, 5.000000e-01
  %i.dm = fmul float %i.dl, 5.000000e-01
  %i.dn = fmul float %i.dm, 5.000000e-01          ; 3 uses
  %niter156.next.7 = add i64 %niter156, 8         ; 2 uses
  %niter156.ncmp.7 = icmp eq i64 %niter156.next.7, %unroll_iter155
  br i1 %niter156.ncmp.7, label %.lr.ph62.preheader.unr-lcssa, label %.lr.ph56, !llvm.loop !37

.lr.ph62:                                         ; preds = %.lr.ph62, %.lr.ph62.preheader.new
  %.09.i59 = phi float [ %i.de, %.lr.ph62.preheader.new ], [ %i.dv, %.lr.ph62 ]
  %niter163 = phi i64 [ 0, %.lr.ph62.preheader.new ], [ %niter163.next.7, %.lr.ph62 ]
  %i.do = fmul float %.09.i59, 2.000000e+00
  %i.dp = fmul float %i.do, 2.000000e+00
  %i.dq = fmul float %i.dp, 2.000000e+00
  %i.dr = fmul float %i.dq, 2.000000e+00
  %i.ds = fmul float %i.dr, 2.000000e+00
  %i.dt = fmul float %i.ds, 2.000000e+00
  %i.du = fmul float %i.dt, 2.000000e+00
  %i.dv = fmul float %i.du, 2.000000e+00          ; 3 uses
  %niter163.next.7 = add i64 %niter163, 8         ; 2 uses
  %niter163.ncmp.7 = icmp eq i64 %niter163.next.7, %unroll_iter162
  br i1 %niter163.ncmp.7, label %_ZN6embree23adjustTessellationLevelEfm.exit.loopexit.unr-lcssa, label %.lr.ph62, !llvm.loop !38

_ZN6embree23adjustTessellationLevelEfm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph62
  %i.dw = and i32 %i.cy, 7
  %lcmp.mod159.not = icmp eq i32 %i.dw, 0
  br i1 %lcmp.mod159.not, label %_ZN6embree23adjustTessellationLevelEfm.exit, label %.lr.ph62.epil.preheader

.lr.ph62.epil.preheader:                          ; preds = %_ZN6embree23adjustTessellationLevelEfm.exit.loopexit.unr-lcssa, %.lr.ph62.preheader
  %.09.i59.epil.init = phi float [ %i.de, %.lr.ph62.preheader ], [ %i.dv, %_ZN6embree23adjustTessellationLevelEfm.exit.loopexit.unr-lcssa ]
  %i.dx = and i32 %i.cy, 7
  %lcmp.mod161 = icmp ne i32 %i.dx, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph62.epil

.lr.ph62.epil:                                    ; preds = %.lr.ph62.epil, %.lr.ph62.epil.preheader
  %.09.i59.epil = phi float [ %i.dy, %.lr.ph62.epil ], [ %.09.i59.epil.init, %.lr.ph62.epil.preheader ]
  %epil.iter158 = phi i64 [ %epil.iter158.next, %.lr.ph62.epil ], [ 0, %.lr.ph62.epil.preheader ]
  %i.dy = fmul float %.09.i59.epil, 2.000000e+00  ; 2 uses
  %epil.iter158.next = add i64 %epil.iter158, 1   ; 2 uses
  %epil.iter158.cmp.not = icmp eq i64 %epil.iter158.next, %xtraiter157
  br i1 %epil.iter158.cmp.not, label %_ZN6embree23adjustTessellationLevelEfm.exit, label %.lr.ph62.epil, !llvm.loop !45

_ZN6embree23adjustTessellationLevelEfm.exit:      ; preds = %_ZN6embree23adjustTessellationLevelEfm.exit.loopexit.unr-lcssa, %.lr.ph62.epil, %_ZN6embree23adjustTessellationLevelEfm.exit16
  %.sink98 = phi float [ %i.cw, %_ZN6embree23adjustTessellationLevelEfm.exit16 ], [ %i.dv, %_ZN6embree23adjustTessellationLevelEfm.exit.loopexit.unr-lcssa ], [ %i.dy, %.lr.ph62.epil ]
  %i.dz = tail call float @llvm.ceil.f32(float %.sink98) ; 2 uses
  %i.ea = fcmp olt float %i.dz, 1.000000e+00
  %i.eb = select i1 %i.ea, float 1.000000e+00, float %i.dz
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.eb, ptr %i.ec, align 4
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6embree16SubdivPatch1Base15computeGridSizeEPKf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.embree::Vec2.42") align 4 captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x float>, ptr %1, align 4        ; 2 uses
  %i.c = load <2 x float>, ptr %i.a, align 4      ; 2 uses
  %i.d = fcmp olt <2 x float> %i.b, %i.c
  %i.e = select <2 x i1> %i.d, <2 x float> %i.c, <2 x float> %i.b
  %i.f = fptosi <2 x float> %i.e to <2 x i32>
  %i.g = add nsw <2 x i32> %i.f, splat (i32 1)
  store <2 x i32> %i.g, ptr %0, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree7array_tINS_18CatmullClark1RingTINS_6Vec3faES2_EELm4EED2Ev(ptr noundef nonnull align 64 dead_on_return(3328) dereferenceable(3328) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2752
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %i.c = load ptr, ptr %i.b, align 64             ; 3 uses
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = icmp eq ptr %i.c, null
  %or.cond.i = or i1 %i.d, %i.e
  br i1 %or.cond.i, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.c)
          to label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #14
  unreachable

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.j = load ptr, ptr %i.i, align 64             ; 3 uses
  %i.k = icmp eq ptr %i.j, %i.h
  %i.l = icmp eq ptr %i.j, null
  %or.cond1.i = or i1 %i.k, %i.l
  br i1 %or.cond1.i, label %_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #15
  br label %_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit

_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit: ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.o = load ptr, ptr %i.n, align 64             ; 3 uses
  %i.p = icmp eq ptr %i.o, %i.m
  %i.q = icmp eq ptr %i.o, null
  %or.cond.i.1 = or i1 %i.p, %i.q
  br i1 %or.cond.i.1, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i.1, label %bb.e

bb.e:                                             ; preds = %_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.o)
          to label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i.1 unwind label %bb.c

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i.1: ; preds = %bb.e, %_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.t = load ptr, ptr %i.s, align 64             ; 3 uses
  %i.u = icmp eq ptr %i.t, %i.r
  %i.v = icmp eq ptr %i.t, null
  %or.cond1.i.1 = or i1 %i.u, %i.v
  br i1 %or.cond1.i.1, label %_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit.1, label %bb.f

bb.f:                                             ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i.1
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #15
  br label %_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit.1

_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit.1: ; preds = %bb.f, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i.1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.y = load ptr, ptr %i.x, align 64             ; 3 uses
  %i.z = icmp eq ptr %i.y, %i.w
  %i.aa = icmp eq ptr %i.y, null
  %or.cond.i.2 = or i1 %i.z, %i.aa
  br i1 %or.cond.i.2, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i.2, label %bb.g

bb.g:                                             ; preds = %_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit.1
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.y)
          to label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i.2 unwind label %bb.c

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i.2: ; preds = %bb.g, %_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit.1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ad = load ptr, ptr %i.ac, align 64           ; 3 uses
  %i.ae = icmp eq ptr %i.ad, %i.ab
  %i.af = icmp eq ptr %i.ad, null
  %or.cond1.i.2 = or i1 %i.ae, %i.af
  br i1 %or.cond1.i.2, label %_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit.2, label %bb.h

bb.h:                                             ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i.2
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #15
  br label %_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit.2

_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit.2: ; preds = %bb.h, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i.2
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.ai = load ptr, ptr %i.ah, align 64           ; 3 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  %i.ak = icmp eq ptr %i.ai, null
  %or.cond.i.3 = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.3, label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i.3, label %bb.i

bb.i:                                             ; preds = %_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit.2
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.ai)
          to label %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i.3 unwind label %bb.c

_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i.3: ; preds = %bb.i, %_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit.2
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.an = load ptr, ptr %i.am, align 64           ; 3 uses
  %i.ao = icmp eq ptr %i.an, %i.al
  %i.ap = icmp eq ptr %i.an, null
  %or.cond1.i.3 = or i1 %i.ao, %i.ap
  br i1 %or.cond1.i.3, label %_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit.3, label %bb.j

bb.j:                                             ; preds = %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i.3
  tail call void @_ZdaPv(ptr noundef nonnull %i.an) #15
  br label %_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit.3

_ZN6embree18CatmullClark1RingTINS_6Vec3faES1_ED2Ev.exit.3: ; preds = %bb.j, %_ZN6embree17DynamicStackArrayINS_6Vec3faELm32ELm128EED2Ev.exit.i.3
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare void @_ZN6embree11alignedFreeEPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

declare noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13BSplinePatchTINS_6Vec3faES1_E4initERKNS_18CatmullClarkPatchTIS1_S1_EE(ptr noundef nonnull align 64 dereferenceable(256) %0, ptr noundef nonnull align 64 dereferenceable(3328) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <4 x float>, ptr %i.a, align 16     ; 10 uses
  store <4 x float> %i.d, ptr %i.c, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load <4 x float>, ptr %i.f, align 16     ; 10 uses
  store <4 x float> %i.h, ptr %i.g, align 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1664 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1872
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load <4 x float>, ptr %i.j, align 16     ; 10 uses
  store <4 x float> %i.m, ptr %i.l, align 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2496 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2704
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load <4 x float>, ptr %i.o, align 16     ; 10 uses
  store <4 x float> %i.q, ptr %i.p, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i32, ptr %1, align 64
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = add nsw i64 %i.x, -2
end_hunk_0
begin_hunk_1_@_ZN6embree13BSplinePatchTINS_6Vec3faES1_E4initERKNS_18CatmullClarkPatchTIS1_S1_EE:bb.a

_ZN6embree13BSplinePatchTINS_6Vec3faES1_E13convex_cornerEfRKS1_S4_S4_S4_S4_S4_S4_S4_.exit19: ; preds = %bb.x, %bb.y
  %.pn179 = phi <4 x float> [ %i.fg, %bb.x ], [ %i.fj, %bb.y ]
  %.sroa.095.0 = fadd <4 x float> %i.q, %.pn179
  br label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit17

_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit17: ; preds = %bb.s, %bb.t, %bb.v, %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E13convex_cornerEfRKS1_S4_S4_S4_S4_S4_S4_S4_.exit19
  %.sink186 = phi <4 x float> [ %i.eu, %bb.s ], [ %i.ew, %bb.t ], [ %i.ey, %bb.v ], [ %.sroa.095.0, %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E13convex_cornerEfRKS1_S4_S4_S4_S4_S4_S4_S4_.exit19 ]
  store <4 x float> %.sink186, ptr %i.ek, align 16
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.fl = load i32, ptr %i.i, align 64            ; 2 uses
  %i.fm = sext i32 %i.fl to i64
  %i.fn = load i32, ptr %i.bt, align 8
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = add nsw i64 %i.fo, -2
  %.not180 = icmp eq i64 %i.fp, %i.fm
  %.not181 = icmp eq i32 %i.fl, 2                 ; 2 uses
  br i1 %.not180, label %bb.ac, label %bb.z, !prof !3

bb.z:                                             ; preds = %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit17
  br i1 %.not181, label %bb.ab, label %bb.aa, !prof !3

bb.aa:                                            ; preds = %bb.z
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 2432
  %i.fr = load ptr, ptr %i.fq, align 64
  %i.fs = getelementptr [16 x i8], ptr %i.fr, i64 %i.fo
  %i.ft = getelementptr i8, ptr %i.fs, i64 -48
  %i.fu = load <4 x float>, ptr %i.ft, align 16
  br label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit16

bb.ab:                                            ; preds = %bb.z
  %i.fv = fmul <4 x float> %i.cm, splat (float 2.000000e+00)
  %i.fw = fsub <4 x float> %i.fv, %i.cn
  br label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit16

bb.ac:                                            ; preds = %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit17
  br i1 %.not181, label %bb.ae, label %bb.ad, !prof !3

bb.ad:                                            ; preds = %bb.ac
  %i.fx = fmul <4 x float> %i.bo, splat (float 2.000000e+00)
  %i.fy = fsub <4 x float> %i.fx, %i.bn
  br label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit16

bb.ae:                                            ; preds = %bb.ac
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 1676
  %i.ga = load float, ptr %i.fz, align 4
  %i.gb = tail call float @llvm.fabs.f32(float %i.ga)
  %i.gc = fcmp oeq float %i.gb, +inf
  %i.gd = fadd <4 x float> %i.h, %i.q             ; 2 uses
  br i1 %i.gc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ge = fmul <4 x float> %i.m, splat (float 4.000000e+00)
  %i.gf = fmul <4 x float> %i.gd, splat (float 2.000000e+00)
  %i.gg = fsub <4 x float> %i.ge, %i.gf
  br label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E13convex_cornerEfRKS1_S4_S4_S4_S4_S4_S4_S4_.exit20

bb.ag:                                            ; preds = %bb.ae
  %i.gh = fmul <4 x float> %i.m, splat (float 8.000000e+00)
  %i.gi = fmul <4 x float> %i.gd, splat (float 4.000000e+00)
  %i.gj = fsub <4 x float> %i.gi, %i.gh
  br label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E13convex_cornerEfRKS1_S4_S4_S4_S4_S4_S4_S4_.exit20

_ZN6embree13BSplinePatchTINS_6Vec3faES1_E13convex_cornerEfRKS1_S4_S4_S4_S4_S4_S4_S4_.exit20: ; preds = %bb.af, %bb.ag
  %.pn182 = phi <4 x float> [ %i.gg, %bb.af ], [ %i.gj, %bb.ag ]
  %.sroa.090.0 = fadd <4 x float> %i.d, %.pn182
  br label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit16

_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit16: ; preds = %bb.aa, %bb.ab, %bb.ad, %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E13convex_cornerEfRKS1_S4_S4_S4_S4_S4_S4_S4_.exit20
  %.sink187 = phi <4 x float> [ %i.fu, %bb.aa ], [ %i.fw, %bb.ab ], [ %i.fy, %bb.ad ], [ %.sroa.090.0, %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E13convex_cornerEfRKS1_S4_S4_S4_S4_S4_S4_S4_.exit20 ]
  store <4 x float> %.sink187, ptr %i.fk, align 16
  %i.gk = load i32, ptr %i.n, align 64            ; 2 uses
  %i.gl = sext i32 %i.gk to i64
  %i.gm = load i32, ptr %i.cq, align 8
  %i.gn = zext i32 %i.gm to i64                   ; 2 uses
  %i.go = add nsw i64 %i.gn, -2
  %.not183 = icmp eq i64 %i.go, %i.gl
  %.not184 = icmp eq i32 %i.gk, 2                 ; 2 uses
  br i1 %.not183, label %bb.ak, label %bb.ah, !prof !3

bb.ah:                                            ; preds = %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit16
  br i1 %.not184, label %bb.aj, label %bb.ai, !prof !3

bb.ai:                                            ; preds = %bb.ah
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 3264
  %i.gq = load ptr, ptr %i.gp, align 64
  %i.gr = getelementptr [16 x i8], ptr %i.gq, i64 %i.gn
  %i.gs = getelementptr i8, ptr %i.gr, i64 -48
  %i.gt = load <4 x float>, ptr %i.gs, align 16
  br label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.gu = fmul <4 x float> %i.dj, splat (float 2.000000e+00)
  %i.gv = fsub <4 x float> %i.gu, %i.dk
  br label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit

bb.ak:                                            ; preds = %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit16
  br i1 %.not184, label %bb.am, label %bb.al, !prof !3

bb.al:                                            ; preds = %bb.ak
  %i.gw = fmul <4 x float> %i.cn, splat (float 2.000000e+00)
  %i.gx = fsub <4 x float> %i.gw, %i.cm
  br label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit

bb.am:                                            ; preds = %bb.ak
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 2508
  %i.gz = load float, ptr %i.gy, align 4
  %i.ha = tail call float @llvm.fabs.f32(float %i.gz)
  %i.hb = fcmp oeq float %i.ha, +inf
  %i.hc = fadd <4 x float> %i.d, %i.m             ; 2 uses
  br i1 %i.hb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hd = fmul <4 x float> %i.q, splat (float 4.000000e+00)
  %i.he = fmul <4 x float> %i.hc, splat (float 2.000000e+00)
  %i.hf = fsub <4 x float> %i.hd, %i.he
  br label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E13convex_cornerEfRKS1_S4_S4_S4_S4_S4_S4_S4_.exit21

bb.ao:                                            ; preds = %bb.am
  %i.hg = fmul <4 x float> %i.q, splat (float 8.000000e+00)
  %i.hh = fmul <4 x float> %i.hc, splat (float 4.000000e+00)
  %i.hi = fsub <4 x float> %i.hh, %i.hg
  br label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E13convex_cornerEfRKS1_S4_S4_S4_S4_S4_S4_S4_.exit21

_ZN6embree13BSplinePatchTINS_6Vec3faES1_E13convex_cornerEfRKS1_S4_S4_S4_S4_S4_S4_S4_.exit21: ; preds = %bb.an, %bb.ao
  %.pn185 = phi <4 x float> [ %i.hf, %bb.an ], [ %i.hi, %bb.ao ]
  %.sroa.085.0 = fadd <4 x float> %i.h, %.pn185
  br label %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit

_ZN6embree13BSplinePatchTINS_6Vec3faES1_E11init_cornerERKNS_18CatmullClark1RingTIS1_S1_EERS1_RKS1_S9_S9_S9_S9_S9_S9_S9_.exit: ; preds = %bb.ai, %bb.aj, %bb.al, %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E13convex_cornerEfRKS1_S4_S4_S4_S4_S4_S4_S4_.exit21
  %.sink188 = phi <4 x float> [ %i.gt, %bb.ai ], [ %i.gv, %bb.aj ], [ %i.gx, %bb.al ], [ %.sroa.085.0, %_ZN6embree13BSplinePatchTINS_6Vec3faES1_E13convex_cornerEfRKS1_S4_S4_S4_S4_S4_S4_S4_.exit21 ]
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x float> %.sink188, ptr %i.hj, align 64
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !"_ZN6embree6Vec3fa5loaduEPKv"}
!6 = distinct !{!6, !5, !"_ZN6embree6Vec3fa5loaduEPKv: argument 0"}
!7 = distinct !{!7, !"_ZN6embree6Vec3fa5loaduEPKv"}
!8 = distinct !{!8, !7, !"_ZN6embree6Vec3fa5loaduEPKv: argument 0"}
!9 = distinct !{!9, !"_ZN6embree6Vec3fa5loaduEPKv"}
!10 = distinct !{!10, !9, !"_ZN6embree6Vec3fa5loaduEPKv: argument 0"}
!11 = distinct !{!11, !"_ZN6embree6Vec3fa5loaduEPKv"}
!12 = distinct !{!12, !11, !"_ZN6embree6Vec3fa5loaduEPKv: argument 0"}
!13 = distinct !{!13, !"_ZN6embree6Vec3fa5loaduEPKv"}
!14 = distinct !{!14, !13, !"_ZN6embree6Vec3fa5loaduEPKv: argument 0"}
!15 = distinct !{!15, !"_ZN6embree6Vec3fa5loaduEPKv"}
!16 = distinct !{!16, !15, !"_ZN6embree6Vec3fa5loaduEPKv: argument 0"}
!17 = distinct !{!17, !"_ZN6embree6Vec3fa5loaduEPKv"}
!18 = distinct !{!18, !17, !"_ZN6embree6Vec3fa5loaduEPKv: argument 0"}
!19 = distinct !{!19, !"_ZN6embree6Vec3fa5loaduEPKv"}
!20 = distinct !{!20, !19, !"_ZN6embree6Vec3fa5loaduEPKv: argument 0"}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, !4}
!24 = !{!6}
!25 = !{!8}
!26 = !{!10}
!27 = !{!12}
!28 = !{!14}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{!16}
!31 = !{!18}
!32 = !{!20}
!33 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!34 = !{!"branch_weights", !"expected", i32 2146410444, i32 1073204}
!35 = !{!"branch_weights", i32 1, i32 1048575}
!36 = distinct !{!36, !46}
!37 = distinct !{!37, !4}
!38 = distinct !{!38, !4}
!39 = distinct !{!39, !46}
!40 = distinct !{!40, !46}
!41 = distinct !{!41, !46}
!42 = distinct !{!42, !46}
!43 = distinct !{!43, !46}
!44 = distinct !{!44, !46}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
