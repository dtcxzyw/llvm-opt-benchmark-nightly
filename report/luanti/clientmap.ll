Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN9ClientMap14updateDrawListEv:.noexc.i
  %i.abf = sitofp nsz i16 %i.abe to float
  %i.abg = fmul nnan nsz <2 x float> %i.abd, splat (float 1.000000e+01)
  %i.abh = fmul nnan nsz float %i.abf, 1.000000e+01
  br i1 %.not302, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aaw, i64 60
  %.sroa.01.0.copyload.i572 = load <2 x float>, ptr %i.abi, align 4, !tbaa !82
  %.sroa.22.0..sroa_idx.i573 = getelementptr inbounds nuw i8, ptr %i.aaw, i64 68
  %.sroa.22.0.copyload.i574 = load float, ptr %.sroa.22.0..sroa_idx.i573, align 4, !tbaa !82
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aaw, i64 56
  %i.abk = load float, ptr %i.abj, align 8, !tbaa !480
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.abl = load i16, ptr %6, align 2, !tbaa !604  ; 2 uses
  %i.abm = zext i16 %i.abl to i32
  %i.abn = shl nuw nsw i32 %i.abm, 4
  %i.abo = uitofp nneg i32 %i.abn to float
  %i.abp = call nnan nsz float @llvm.fmuladd.f32(float %i.abo, float 5.000000e-01, float -5.000000e-01)
  %i.abq = fmul nnan nsz float %i.abp, 1.000000e+01 ; 2 uses
  %i.abr = insertelement <2 x float> poison, float %i.abq, i64 0
  %i.abs = shufflevector <2 x float> %i.abr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abt = uitofp i16 %i.abl to float
  %i.abu = fmul nnan nsz float %i.abt, 8.700000e-01
  %i.abv = fmul nnan nsz float %i.abu, 1.600000e+01
  %i.abw = fmul nnan nsz float %i.abv, 1.000000e+01
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn1110 = phi float [ %i.abq, %bb.cp ], [ %.sroa.22.0.copyload.i574, %bb.co ]
  %.pn1119 = phi <2 x float> [ %i.abs, %bb.cp ], [ %.sroa.01.0.copyload.i572, %bb.co ]
  %.0283 = phi nsz float [ %i.abw, %bb.cp ], [ %i.abk, %bb.co ] ; 2 uses
  %.sroa.0768.0 = fadd nsz <2 x float> %i.abg, %.pn1119 ; 2 uses
  %.sroa.10772.0 = fadd nsz float %i.abh, %.pn1110 ; 2 uses
  %.sroa.0768.0.vec.extract = extractelement <2 x float> %.sroa.0768.0, i64 0 ; 2 uses
  %i.abx = fsub nsz float %.sroa.0768.0.vec.extract, %i.ww ; 2 uses
  %.sroa.0768.4.vec.extract = extractelement <2 x float> %.sroa.0768.0, i64 1 ; 2 uses
  %i.aby = fsub nsz float %.sroa.0768.4.vec.extract, %i.xz ; 2 uses
  %i.abz = fsub nsz float %.sroa.10772.0, %i.ya   ; 2 uses
  %i.aca = fmul nsz float %i.aby, %i.aby
  %i.acb = call nsz float @llvm.fmuladd.f32(float %i.abx, float %i.abx, float %i.aca)
  %i.acc = call nsz float @llvm.fmuladd.f32(float %i.abz, float %i.abz, float %i.acb)
  %i.acd = call nsz noundef float @llvm.sqrt.f32(float %i.acc)
  %i.ace = load ptr, ptr %i.bu, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !564
  %i.acg = call nsz float @llvm.fmuladd.f32(float %i.acf, float 1.000000e+01, float %.0283)
  %i.ach = fcmp nsz ogt float %i.acd, %i.acg
  br i1 %i.ach, label %bb.dz, label %bb.cr, !llvm.loop !847

bb.cr:                                            ; preds = %bb.cq
  %i.aci = fadd nsz float %.0283, 3.000000e+02    ; 4 uses
  %i.acj = load float, ptr %i.fo, align 4, !tbaa !481
  %i.ack = fsub nsz float %.sroa.0768.0.vec.extract, %i.acj ; 4 uses
  %i.acl = load float, ptr %i.wy, align 4, !tbaa !482
  %i.acm = fsub nsz float %.sroa.0768.4.vec.extract, %i.acl ; 4 uses
  %i.acn = load float, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !483
  %i.aco = fsub nsz float %.sroa.10772.0, %i.acn  ; 4 uses
  %i.acp = load float, ptr %8, align 4, !tbaa !481
  %i.acq = load float, ptr %i.wz, align 4, !tbaa !482
  %i.acr = fmul nsz float %i.acm, %i.acq
  %i.acs = call nsz float @llvm.fmuladd.f32(float %i.ack, float %i.acp, float %i.acr)
  %i.act = load float, ptr %i.xa, align 4, !tbaa !483
  %i.acu = call nsz noundef float @llvm.fmuladd.f32(float %i.aco, float %i.act, float %i.acs)
  %i.acv = load float, ptr %i.xb, align 4, !tbaa !485
  %i.acw = fadd nsz float %i.acv, %i.acu
  %i.acx = fcmp nsz ogt float %i.acw, %i.aci
  br i1 %i.acx, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609.thread, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.acy = load float, ptr %.014.ptr.1.i605, align 4, !tbaa !481
  %i.acz = load float, ptr %i.xc, align 4, !tbaa !482
  %i.ada = fmul nsz float %i.acm, %i.acz
  %i.adb = call nsz float @llvm.fmuladd.f32(float %i.ack, float %i.acy, float %i.ada)
  %i.adc = load float, ptr %i.xd, align 4, !tbaa !483
  %i.add = call nsz noundef float @llvm.fmuladd.f32(float %i.aco, float %i.adc, float %i.adb)
  %i.ade = load float, ptr %i.xe, align 4, !tbaa !485
  %i.adf = fadd nsz float %i.ade, %i.add
  %i.adg = fcmp nsz ogt float %i.adf, %i.aci
  br i1 %i.adg, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609.thread, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.adh = load float, ptr %.014.ptr.2.i606, align 4, !tbaa !481
  %i.adi = load float, ptr %i.xf, align 4, !tbaa !482
  %i.adj = fmul nsz float %i.acm, %i.adi
  %i.adk = call nsz float @llvm.fmuladd.f32(float %i.ack, float %i.adh, float %i.adj)
  %i.adl = load float, ptr %i.xg, align 4, !tbaa !483
  %i.adm = call nsz noundef float @llvm.fmuladd.f32(float %i.aco, float %i.adl, float %i.adk)
  %i.adn = load float, ptr %i.xh, align 4, !tbaa !485
  %i.ado = fadd nsz float %i.adn, %i.adm
  %i.adp = fcmp nsz ogt float %i.ado, %i.aci
  br i1 %i.adp, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609.thread, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609

_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609: ; preds = %bb.ct
  %i.adq = load float, ptr %.014.ptr.3.i607, align 4, !tbaa !481
  %i.adr = load float, ptr %i.xi, align 4, !tbaa !482
  %i.ads = fmul nsz float %i.acm, %i.adr
  %i.adt = call nsz float @llvm.fmuladd.f32(float %i.ack, float %i.adq, float %i.ads)
  %i.adu = load float, ptr %i.xj, align 4, !tbaa !483
  %i.adv = call nsz noundef float @llvm.fmuladd.f32(float %i.aco, float %i.adu, float %i.adt)
  %i.adw = load float, ptr %i.xk, align 4, !tbaa !485
  %i.adx = fadd nsz float %i.adw, %i.adv
  %i.ady = fcmp nsz ogt float %i.adx, %i.aci
  br i1 %i.ady, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609.thread, label %bb.cu

_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609.thread: ; preds = %bb.cs, %bb.cr, %bb.ct, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609
  %i.adz = add i32 %.5265966, 1
  br label %bb.dz, !llvm.loop !847

bb.cu:                                            ; preds = %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit609
  %i.aea = load i16, ptr %13, align 8, !tbaa !157
  %i.aeb = sub i16 %i.aax, %i.aea                 ; 4 uses
  %i.aec = load i16, ptr %i.xl, align 2, !tbaa !158
  %i.aed = extractelement <2 x i16> %i.aaz, i64 0
  %i.aee = sub i16 %i.aed, %i.aec                 ; 4 uses
  %i.aef = load i16, ptr %i.xm, align 4, !tbaa !159
  %i.aeg = extractelement <2 x i16> %i.aaz, i64 1
  %i.aeh = sub i16 %i.aeg, %i.aef                 ; 4 uses
  %i.aei = load i8, ptr %i.aan, align 1, !tbaa !65 ; 2 uses
  br i1 %.1271, label %bb.cv, label %bb.da

bb.cv:                                            ; preds = %bb.cu
  %i.aej = and i8 %i.aei, 7
  %i.aek = load i8, ptr %i.xn, align 1, !tbaa !185, !range !174, !noundef !175
  %i.ael = trunc nuw i8 %i.aek to i1
  %or.cond9 = and i1 %i.aau, %i.ael
  %i.aem = icmp ne i8 %i.aej, 7
  %or.cond12 = select i1 %or.cond9, i1 %i.aem, i1 false
  br i1 %or.cond12, label %bb.cw, label %bb.da

bb.cw:                                            ; preds = %bb.cv
  %i.aen = load i16, ptr %6, align 2, !tbaa !604
  %i.aeo = invoke noundef zeroext i1 @_ZN9ClientMap14isMeshOccludedEP8MapBlocktN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull %i.aat, i16 noundef zeroext %i.aen, i48 %.sroa.0844.0.insert.insert859)
          to label %bb.cx unwind label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  br i1 %i.aeo, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.aep = add i32 %.5254967, 1
  br label %bb.dz, !llvm.loop !847

bb.cz:                                            ; preds = %bb.ck, %bb.cg, %bb.db, %bb.cw
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.da:                                            ; preds = %bb.cx, %bb.cv, %bb.cu
  br i1 %.not302, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.aat, ptr %i.g, align 8, !tbaa !241
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aat, i64 22 ; 2 uses
  %i.aes = load i16, ptr %i.aer, align 2, !tbaa !239
  %i.aet = add i16 %i.aes, 1
  store i16 %i.aet, ptr %i.aer, align 2, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aat, i64 10
  %.sroa.0.0.copyload.i.i617 = load i48, ptr %i.aeu, align 2, !tbaa !162
  store i48 %.sroa.0.0.copyload.i.i617, ptr %2, align 8
  %i.aev = invoke { ptr, i8 } @_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEE7emplaceIJS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 2 dereferenceable(6) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %"_ZZN9ClientMap14updateDrawListEvENK3$_0clEP8MapBlock.exit619" unwind label %bb.cz ; 0 uses

"_ZZN9ClientMap14updateDrawListEvENK3$_0clEP8MapBlock.exit619": ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.dc

bb.dc:                                            ; preds = %"_ZZN9ClientMap14updateDrawListEvENK3$_0clEP8MapBlock.exit619", %bb.da
  %i.aew = icmp eq i16 %i.aeb, 0
  %i.aex = select i1 %i.aew, i8 3, i8 0
  %i.aey = icmp eq i16 %i.aee, 0
  %i.aez = select i1 %i.aey, i8 12, i8 0
  %i.afa = or disjoint i8 %i.aez, %i.aex
  %i.afb = icmp eq i16 %i.aeh, 0
  %i.afc = select i1 %i.afb, i8 48, i8 0
  %i.afd = or disjoint i8 %i.afa, %i.afc          ; 2 uses
  %i.afe = icmp sgt i16 %i.aeb, 0
  %i.aff = select i1 %i.afe, i8 1, i8 2
  %i.afg = icmp sgt i16 %i.aee, 0
  %i.afh = select i1 %i.afg, i8 4, i8 8
  %i.afi = or disjoint i8 %i.afh, %i.aff
  %i.afj = icmp sgt i16 %i.aeh, 0
  %i.afk = select i1 %i.afj, i8 16, i8 32
  %i.afl = or disjoint i8 %i.afi, %i.afk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #2
  %or.cond14 = and i1 %.1271, %i.aau
  br i1 %or.cond14, label %bb.dd, label %._crit_edge1009

bb.dd:                                            ; preds = %bb.dc
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %i.afn = load i8, ptr %i.afm, align 8, !tbaa !855
  %i.afo = xor i8 %i.afn, -1
  br label %._crit_edge1009

._crit_edge1009:                                  ; preds = %bb.dc, %bb.dd
  %i.afp = phi i8 [ %i.afo, %bb.dd ], [ 63, %bb.dc ] ; 2 uses
  store i8 %i.afp, ptr %i.m, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #2
  %i.afq = icmp eq i8 %i.afd, 63
  %i.afr = xor i8 %i.afd, -1
  %22 = and i8 %i.afp, %i.afr
  %23 = select i1 %i.afq, i8 63, i8 %22
  %i.afs = and i8 %23, %i.afl                     ; 2 uses
  %i.aft = lshr i8 %i.afs, 1
  %i.afu = or i8 %i.aft, %i.afs                   ; 3 uses
  %i.afv = and i8 %i.afu, 1
  %i.afw = lshr i8 %i.afu, 1
  %i.afx = and i8 %i.afw, 2
  %i.afy = or disjoint i8 %i.afx, %i.afv
  %i.afz = lshr i8 %i.afu, 2
  %i.aga = and i8 %i.afz, 4
  %i.agb = or disjoint i8 %i.afy, %i.aga
  %i.agc = and i8 %i.agb, %i.aei
  store i8 %i.agc, ptr %i.n, align 1, !tbaa !65
  %i.agd = sub i16 %i.aay, %i.bj
  %i.age = sub <2 x i16> %i.aba, %i.bq
  %i.agf = shl i16 %i.agd, 1
  %i.agg = load i16, ptr %6, align 2, !tbaa !604
  %i.agh = shl i16 %i.agg, 4
  %i.agi = add i16 %i.agh, -1                     ; 2 uses
  %i.agj = add i16 %i.agi, %i.agf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #2
  %i.agk = call i16 @llvm.abs.i16(i16 %i.agj, i1 false) ; 4 uses
  %i.agl = shl <2 x i16> %i.age, splat (i16 1)
  %i.agm = insertelement <2 x i16> poison, i16 %i.agi, i64 0
  %i.agn = shufflevector <2 x i16> %i.agm, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.ago = add <2 x i16> %i.agn, %i.agl
  %i.agp = call <2 x i16> @llvm.abs.v2i16(<2 x i16> %i.ago, i1 false) ; 2 uses
  %i.agq = extractelement <2 x i16> %i.agp, i64 0 ; 4 uses
  %i.agr = icmp samesign ugt i16 %i.agk, %i.agq
  %i.ags = extractelement <2 x i16> %i.agp, i64 1 ; 4 uses
  %i.agt = icmp samesign ugt i16 %i.agk, %i.ags
  %narrow = select i1 %i.agr, i1 %i.agt, i1 false
  %i.agu = zext i1 %narrow to i8
  %i.agv = icmp samesign ugt i16 %i.agq, %i.ags
  %i.agw = icmp samesign ugt i16 %i.agq, %i.agk
  %i.agx = select i1 %i.agv, i1 %i.agw, i1 false
  %i.agy = select i1 %i.agx, i8 2, i8 0
  %i.agz = icmp samesign ugt i16 %i.ags, %i.agk
  %i.aha = icmp samesign ugt i16 %i.ags, %i.agq
  %i.ahb = select i1 %i.agz, i1 %i.aha, i1 false
  %i.ahc = select i1 %i.ahb, i8 4, i8 %i.agy
  %i.ahd = or disjoint i8 %i.ahc, %i.agu
  store i8 %i.ahd, ptr %i.o, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #2
  store i16 0, ptr %i.p, align 2, !tbaa !162
  br label %bb.df

bb.de:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #2
  br label %bb.dz

bb.df:                                            ; preds = %._crit_edge1009, %bb.dy
  %storemerge964 = phi i16 [ 0, %._crit_edge1009 ], [ %i.aii, %bb.dy ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #2
  %i.ahe = sext i16 %storemerge964 to i32
  %i.ahf = shl nsw i32 %i.ahe, 1
  %i.ahg = shl nuw nsw i32 1, %i.ahf
  %i.ahh = trunc i32 %i.ahg to i8                 ; 3 uses
  store i8 %i.ahh, ptr %i.q, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #2
  %i.ahi = zext nneg i16 %storemerge964 to i32
  %i.ahj = shl nuw i32 1, %i.ahi
  %i.ahk = trunc i32 %i.ahj to i8                 ; 2 uses
  store i8 %i.ahk, ptr %i.r, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #2
  %i.ahl = xor i8 %i.ahk, 7
  store i8 %i.ahl, ptr %i.s, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #2
  store ptr %i.n, ptr %16, align 8, !tbaa !192
  store ptr %i.s, ptr %i.xo, align 8, !tbaa !192
  store ptr %i.r, ptr %i.xp, align 8, !tbaa !192
  store ptr %i.o, ptr %i.xq, align 8, !tbaa !192
  store ptr %i.q, ptr %i.xr, align 8, !tbaa !192
  store ptr %i.m, ptr %i.xs, align 8, !tbaa !192
  store ptr %15, ptr %i.xt, align 8, !tbaa !627
  store ptr %i.p, ptr %i.xu, align 8, !tbaa !547
  store ptr %6, ptr %i.xv, align 8, !tbaa !856
  store ptr %14, ptr %i.xw, align 8, !tbaa !857
  store ptr %12, ptr %i.xx, align 8, !tbaa !858
  store ptr %i.l, ptr %i.xy, align 8, !tbaa !634
  switch i16 %storemerge964, label %bb.di [
    i16 0, label %_ZN4core8vector3dIsEixEj.exit
    i16 1, label %bb.dg
    i16 2, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  br label %_ZN4core8vector3dIsEixEj.exit

bb.dh:                                            ; preds = %bb.df
  br label %_ZN4core8vector3dIsEixEj.exit

bb.di:                                            ; preds = %bb.df
  unreachable

_ZN4core8vector3dIsEixEj.exit:                    ; preds = %bb.df, %bb.dg, %bb.dh
  %.0.i641.sroa.speculated = phi i16 [ %i.aeh, %bb.dh ], [ %i.aee, %bb.dg ], [ %i.aeb, %bb.df ]
  %i.ahm = icmp slt i16 %.0.i641.sroa.speculated, 1
  br i1 %i.ahm, label %bb.dj, label %bb.dp

bb.dj:                                            ; preds = %_ZN4core8vector3dIsEixEj.exit
  switch i16 %storemerge964, label %bb.dk [
    i16 0, label %_ZN4core8vector3dIsEixEj.exit643.thread
    i16 1, label %bb.dl
    i16 2, label %bb.dm
  ]

_ZN4core8vector3dIsEixEj.exit643.thread:          ; preds = %bb.dj
  %i.ahn = load i16, ptr %15, align 8, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit645

bb.dk:                                            ; preds = %bb.dj
  unreachable

bb.dl:                                            ; preds = %bb.dj
  %i.aho = load i16, ptr %i.ws, align 2, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit645

bb.dm:                                            ; preds = %bb.dj
  %i.ahp = load i16, ptr %i.wt, align 4, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit645

_ZN4core8vector3dIsEixEj.exit645:                 ; preds = %_ZN4core8vector3dIsEixEj.exit643.thread, %bb.dl, %bb.dm
  %i.ahq = phi i16 [ %i.ahp, %bb.dm ], [ %i.aho, %bb.dl ], [ %i.ahn, %_ZN4core8vector3dIsEixEj.exit643.thread ]
  %.0.i644.sroa.speculated = phi i16 [ %i.yc, %bb.dm ], [ %i.yb, %bb.dl ], [ %i.cf, %_ZN4core8vector3dIsEixEj.exit643.thread ]
  %i.ahr = icmp sgt i16 %i.ahq, %.0.i644.sroa.speculated
  br i1 %i.ahr, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %_ZN4core8vector3dIsEixEj.exit645
  %i.ahs = load i16, ptr %6, align 2, !tbaa !604
  %i.aht = trunc i16 %i.ahs to i8
  %i.ahu = sub i8 0, %i.aht
  invoke fastcc void @"_ZZN9ClientMap14updateDrawListEvENK3$_1clEa"(ptr noundef nonnull align 8 dereferenceable(96) %16, i8 noundef signext %i.ahu)
          to label %._crit_edge unwind label %bb.do

._crit_edge:                                      ; preds = %bb.dn
  %.pre = load i8, ptr %i.q, align 1, !tbaa !65
  %.pre1006 = load i16, ptr %i.p, align 2, !tbaa !162
  br label %bb.dp

bb.do:                                            ; preds = %bb.dx, %bb.dn
  %i.ahv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #2
  br label %bb.ea

bb.dp:                                            ; preds = %._crit_edge, %_ZN4core8vector3dIsEixEj.exit645, %_ZN4core8vector3dIsEixEj.exit
  %i.ahw = phi i16 [ %.pre1006, %._crit_edge ], [ %storemerge964, %_ZN4core8vector3dIsEixEj.exit645 ], [ %storemerge964, %_ZN4core8vector3dIsEixEj.exit ] ; 4 uses
  %i.ahx = phi i8 [ %.pre, %._crit_edge ], [ %i.ahh, %_ZN4core8vector3dIsEixEj.exit645 ], [ %i.ahh, %_ZN4core8vector3dIsEixEj.exit ]
  %i.ahy = shl i8 %i.ahx, 1
  store i8 %i.ahy, ptr %i.q, align 1, !tbaa !65
  switch i16 %i.ahw, label %bb.ds [
    i16 0, label %_ZN4core8vector3dIsEixEj.exit647
    i16 1, label %bb.dq
    i16 2, label %bb.dr
  ]

bb.dq:                                            ; preds = %bb.dp
  br label %_ZN4core8vector3dIsEixEj.exit647

bb.dr:                                            ; preds = %bb.dp
  br label %_ZN4core8vector3dIsEixEj.exit647

bb.ds:                                            ; preds = %bb.dp
  unreachable

_ZN4core8vector3dIsEixEj.exit647:                 ; preds = %bb.dp, %bb.dq, %bb.dr
  %.0.i646.sroa.speculated = phi i16 [ %i.aeh, %bb.dr ], [ %i.aee, %bb.dq ], [ %i.aeb, %bb.dp ]
  %i.ahz = icmp sgt i16 %.0.i646.sroa.speculated, -1
  br i1 %i.ahz, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %_ZN4core8vector3dIsEixEj.exit647
  switch i16 %i.ahw, label %bb.du [
    i16 0, label %_ZN4core8vector3dIsEixEj.exit649.thread
    i16 1, label %bb.dv
    i16 2, label %bb.dw
  ]

_ZN4core8vector3dIsEixEj.exit649.thread:          ; preds = %bb.dt
  %i.aia = load i16, ptr %15, align 8, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit651

bb.du:                                            ; preds = %bb.dt
  unreachable

bb.dv:                                            ; preds = %bb.dt
  %i.aib = load i16, ptr %i.ws, align 2, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit651

bb.dw:                                            ; preds = %bb.dt
  %i.aic = load i16, ptr %i.wt, align 4, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit651
end_hunk_0
