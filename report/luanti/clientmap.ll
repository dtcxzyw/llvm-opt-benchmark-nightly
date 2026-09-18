Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN9ClientMap14updateDrawListEv:.noexc.i
  %i.aci = load ptr, ptr %i.bs, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !564
  %i.ack = call nsz float @llvm.fmuladd.f32(float %i.acj, float 1.000000e+01, float %.0283)
  %i.acl = fcmp nsz ogt float %i.ach, %i.ack
  br i1 %i.acl, label %bb.ec, label %bb.cu, !llvm.loop !847

bb.cu:                                            ; preds = %bb.ct
  %i.acm = fadd nsz float %.0283, 3.000000e+02    ; 4 uses
  %i.acn = load float, ptr %i.fn, align 4, !tbaa !481
  %i.aco = fsub nsz float %.sroa.0769.0.vec.extract, %i.acn ; 4 uses
  %i.acp = load float, ptr %i.wx, align 4, !tbaa !482
  %i.acq = fsub nsz float %.sroa.0769.4.vec.extract, %i.acp ; 4 uses
  %i.acr = load float, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !483
  %i.acs = fsub nsz float %.sroa.10773.0, %i.acr  ; 4 uses
  %i.act = load float, ptr %8, align 4, !tbaa !481
  %i.acu = load float, ptr %i.wy, align 4, !tbaa !482
  %i.acv = fmul nsz float %i.acq, %i.acu
  %i.acw = call nsz float @llvm.fmuladd.f32(float %i.aco, float %i.act, float %i.acv)
  %i.acx = load float, ptr %i.wz, align 4, !tbaa !483
  %i.acy = call nsz noundef float @llvm.fmuladd.f32(float %i.acs, float %i.acx, float %i.acw)
  %i.acz = load float, ptr %i.xa, align 4, !tbaa !485
  %i.ada = fadd nsz float %i.acz, %i.acy
  %i.adb = fcmp nsz ogt float %i.ada, %i.acm
  br i1 %i.adb, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.adc = load float, ptr %.014.ptr.1.i606, align 4, !tbaa !481
  %i.add = load float, ptr %i.xb, align 4, !tbaa !482
  %i.ade = fmul nsz float %i.acq, %i.add
  %i.adf = call nsz float @llvm.fmuladd.f32(float %i.aco, float %i.adc, float %i.ade)
  %i.adg = load float, ptr %i.xc, align 4, !tbaa !483
  %i.adh = call nsz noundef float @llvm.fmuladd.f32(float %i.acs, float %i.adg, float %i.adf)
  %i.adi = load float, ptr %i.xd, align 4, !tbaa !485
  %i.adj = fadd nsz float %i.adi, %i.adh
  %i.adk = fcmp nsz ogt float %i.adj, %i.acm
  br i1 %i.adk, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.adl = load float, ptr %.014.ptr.2.i607, align 4, !tbaa !481
  %i.adm = load float, ptr %i.xe, align 4, !tbaa !482
  %i.adn = fmul nsz float %i.acq, %i.adm
  %i.ado = call nsz float @llvm.fmuladd.f32(float %i.aco, float %i.adl, float %i.adn)
  %i.adp = load float, ptr %i.xf, align 4, !tbaa !483
  %i.adq = call nsz noundef float @llvm.fmuladd.f32(float %i.acs, float %i.adp, float %i.ado)
  %i.adr = load float, ptr %i.xg, align 4, !tbaa !485
  %i.ads = fadd nsz float %i.adr, %i.adq
  %i.adt = fcmp nsz ogt float %i.ads, %i.acm
  br i1 %i.adt, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610

_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610: ; preds = %bb.cw
  %i.adu = load float, ptr %.014.ptr.3.i608, align 4, !tbaa !481
  %i.adv = load float, ptr %i.xh, align 4, !tbaa !482
  %i.adw = fmul nsz float %i.acq, %i.adv
  %i.adx = call nsz float @llvm.fmuladd.f32(float %i.aco, float %i.adu, float %i.adw)
  %i.ady = load float, ptr %i.xi, align 4, !tbaa !483
  %i.adz = call nsz noundef float @llvm.fmuladd.f32(float %i.acs, float %i.ady, float %i.adx)
  %i.aea = load float, ptr %i.xj, align 4, !tbaa !485
  %i.aeb = fadd nsz float %i.aea, %i.adz
  %i.aec = fcmp nsz ogt float %i.aeb, %i.acm
  br i1 %i.aec, label %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread, label %bb.cx

_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread: ; preds = %bb.cv, %bb.cu, %bb.cw, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610
  %i.aed = add i32 %.5265977, 1
  br label %bb.ec, !llvm.loop !847

bb.cx:                                            ; preds = %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610
  %i.aee = load i16, ptr %13, align 8, !tbaa !157
  %i.aef = sub i16 %i.aba, %i.aee                 ; 4 uses
  %i.aeg = load i16, ptr %i.xk, align 2, !tbaa !158
  %i.aeh = extractelement <2 x i16> %i.abc, i64 0
  %i.aei = sub i16 %i.aeh, %i.aeg                 ; 4 uses
  %i.aej = load i16, ptr %i.xl, align 4, !tbaa !159
  %i.aek = extractelement <2 x i16> %i.abc, i64 1
  %i.ael = sub i16 %i.aek, %i.aej                 ; 4 uses
  %i.aem = load i8, ptr %i.aap, align 1, !tbaa !65 ; 2 uses
  br i1 %.1271, label %bb.cy, label %bb.dd

bb.cy:                                            ; preds = %bb.cx
  %i.aen = and i8 %i.aem, 7
  %i.aeo = load i8, ptr %i.xm, align 1, !tbaa !185, !range !174, !noundef !175
  %i.aep = trunc nuw i8 %i.aeo to i1
  %or.cond9 = and i1 %i.aax, %i.aep
  %i.aeq = icmp ne i8 %i.aen, 7
  %or.cond12 = select i1 %or.cond9, i1 %i.aeq, i1 false
  br i1 %or.cond12, label %bb.cz, label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  %i.aer = load i16, ptr %6, align 2, !tbaa !604
  %i.aes = invoke noundef zeroext i1 @_ZN9ClientMap14isMeshOccludedEP8MapBlocktN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull %i.aaw, i16 noundef zeroext %i.aer, i48 %.sroa.0845.0.insert.insert860)
          to label %bb.da unwind label %bb.dc

bb.da:                                            ; preds = %bb.cz
  br i1 %i.aes, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.aet = add i32 %.5254978, 1
  br label %bb.ec, !llvm.loop !847

bb.dc:                                            ; preds = %bb.de, %bb.cz
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.dd:                                            ; preds = %bb.da, %bb.cy, %bb.cx
  br i1 %.not302, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.aaw, ptr %i.g, align 8, !tbaa !241
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aaw, i64 22 ; 2 uses
  %i.aew = load i16, ptr %i.aev, align 2, !tbaa !239
  %i.aex = add i16 %i.aew, 1
  store i16 %i.aex, ptr %i.aev, align 2, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aaw, i64 10
  %.sroa.0.0.copyload.i.i618 = load i48, ptr %i.aey, align 2
  store i48 %.sroa.0.0.copyload.i.i618, ptr %2, align 8
  %i.aez = invoke { ptr, i8 } @_ZNSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEE7emplaceIJS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 2 dereferenceable(6) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %"_ZZN9ClientMap14updateDrawListEvENK3$_0clEP8MapBlock.exit620" unwind label %bb.dc ; 0 uses

"_ZZN9ClientMap14updateDrawListEvENK3$_0clEP8MapBlock.exit620": ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.df

bb.df:                                            ; preds = %"_ZZN9ClientMap14updateDrawListEvENK3$_0clEP8MapBlock.exit620", %bb.dd
  %i.afa = icmp eq i16 %i.aef, 0
  %i.afb = select i1 %i.afa, i8 3, i8 0
  %i.afc = icmp eq i16 %i.aei, 0
  %i.afd = select i1 %i.afc, i8 12, i8 0
  %i.afe = or disjoint i8 %i.afd, %i.afb
  %i.aff = icmp eq i16 %i.ael, 0
  %i.afg = select i1 %i.aff, i8 48, i8 0
  %i.afh = or disjoint i8 %i.afe, %i.afg          ; 2 uses
  %i.afi = icmp sgt i16 %i.aef, 0
  %i.afj = select i1 %i.afi, i8 1, i8 2
  %i.afk = icmp sgt i16 %i.aei, 0
  %i.afl = select i1 %i.afk, i8 4, i8 8
  %i.afm = or disjoint i8 %i.afl, %i.afj
  %i.afn = icmp sgt i16 %i.ael, 0
  %i.afo = select i1 %i.afn, i8 16, i8 32
  %i.afp = or disjoint i8 %i.afm, %i.afo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #2
  %or.cond14 = and i1 %.1271, %i.aax
  br i1 %or.cond14, label %bb.dg, label %._crit_edge1018

bb.dg:                                            ; preds = %bb.df
  %i.afq = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  %i.afr = load i8, ptr %i.afq, align 8, !tbaa !855
  %i.afs = xor i8 %i.afr, -1
  br label %._crit_edge1018

._crit_edge1018:                                  ; preds = %bb.df, %bb.dg
  %i.aft = phi i8 [ %i.afs, %bb.dg ], [ 63, %bb.df ] ; 2 uses
  store i8 %i.aft, ptr %i.m, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #2
  %i.afu = icmp eq i8 %i.afh, 63                  ; 2 uses
  %i.afv = select i1 %i.afu, i8 63, i8 %i.aft
  %i.afw = xor i8 %i.afh, -1
  %i.afx = select i1 %i.afu, i8 63, i8 %i.afw
  %i.afy = and i8 %i.afx, %i.afp
  %i.afz = and i8 %i.afy, %i.afv                  ; 2 uses
  %i.aga = lshr i8 %i.afz, 1
  %i.agb = or i8 %i.aga, %i.afz                   ; 3 uses
  %i.agc = and i8 %i.agb, 1
  %i.agd = lshr i8 %i.agb, 1
  %i.age = and i8 %i.agd, 2
  %i.agf = or disjoint i8 %i.age, %i.agc
  %i.agg = lshr i8 %i.agb, 2
  %i.agh = and i8 %i.agg, 4
  %i.agi = or disjoint i8 %i.agf, %i.agh
  %i.agj = and i8 %i.agi, %i.aem
  store i8 %i.agj, ptr %i.n, align 1, !tbaa !65
  %i.agk = sub i16 %i.abb, %i.bz
  %i.agl = sub <2 x i16> %i.abd, %i.bp
  %i.agm = shl i16 %i.agk, 1
  %i.agn = load i16, ptr %6, align 2, !tbaa !604
  %i.ago = shl i16 %i.agn, 4
  %i.agp = add i16 %i.ago, -1                     ; 2 uses
  %i.agq = add i16 %i.agp, %i.agm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #2
  %i.agr = call i16 @llvm.abs.i16(i16 %i.agq, i1 false) ; 4 uses
  %i.ags = shl <2 x i16> %i.agl, splat (i16 1)
  %i.agt = insertelement <2 x i16> poison, i16 %i.agp, i64 0
  %i.agu = shufflevector <2 x i16> %i.agt, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.agv = add <2 x i16> %i.agu, %i.ags
  %i.agw = call <2 x i16> @llvm.abs.v2i16(<2 x i16> %i.agv, i1 false) ; 2 uses
  %i.agx = extractelement <2 x i16> %i.agw, i64 0 ; 4 uses
  %i.agy = icmp samesign ugt i16 %i.agr, %i.agx
  %i.agz = extractelement <2 x i16> %i.agw, i64 1 ; 4 uses
  %i.aha = icmp samesign ugt i16 %i.agr, %i.agz
  %narrow = select i1 %i.agy, i1 %i.aha, i1 false
  %i.ahb = zext i1 %narrow to i8
  %i.ahc = icmp samesign ugt i16 %i.agx, %i.agz
  %i.ahd = icmp samesign ugt i16 %i.agx, %i.agr
  %i.ahe = select i1 %i.ahc, i1 %i.ahd, i1 false
  %i.ahf = select i1 %i.ahe, i8 2, i8 0
  %i.ahg = icmp samesign ugt i16 %i.agz, %i.agr
  %i.ahh = icmp samesign ugt i16 %i.agz, %i.agx
  %i.ahi = select i1 %i.ahg, i1 %i.ahh, i1 false
  %i.ahj = select i1 %i.ahi, i8 4, i8 0
  %22 = or disjoint i8 %i.ahj, %i.ahf
  %i.ahk = or disjoint i8 %22, %i.ahb
  store i8 %i.ahk, ptr %i.o, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #2
  store i16 0, ptr %i.p, align 2, !tbaa !162
  br label %bb.di

bb.dh:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #2
  br label %bb.ec

bb.di:                                            ; preds = %._crit_edge1018, %bb.eb
  %storemerge975 = phi i16 [ 0, %._crit_edge1018 ], [ %i.aip, %bb.eb ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #2
  %i.ahl = sext i16 %storemerge975 to i32
  %i.ahm = shl nsw i32 %i.ahl, 1
  %i.ahn = shl nuw nsw i32 1, %i.ahm
  %i.aho = trunc i32 %i.ahn to i8                 ; 3 uses
  store i8 %i.aho, ptr %i.q, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #2
  %i.ahp = zext nneg i16 %storemerge975 to i32
  %i.ahq = shl nuw i32 1, %i.ahp
  %i.ahr = trunc i32 %i.ahq to i8                 ; 2 uses
  store i8 %i.ahr, ptr %i.r, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #2
  %i.ahs = xor i8 %i.ahr, 7
  store i8 %i.ahs, ptr %i.s, align 1, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #2
  store ptr %i.n, ptr %16, align 8, !tbaa !192
  store ptr %i.s, ptr %i.xn, align 8, !tbaa !192
  store ptr %i.r, ptr %i.xo, align 8, !tbaa !192
  store ptr %i.o, ptr %i.xp, align 8, !tbaa !192
  store ptr %i.q, ptr %i.xq, align 8, !tbaa !192
  store ptr %i.m, ptr %i.xr, align 8, !tbaa !192
  store ptr %15, ptr %i.xs, align 8, !tbaa !627
  store ptr %i.p, ptr %i.xt, align 8, !tbaa !547
  store ptr %6, ptr %i.xu, align 8, !tbaa !856
  store ptr %14, ptr %i.xv, align 8, !tbaa !857
  store ptr %12, ptr %i.xw, align 8, !tbaa !858
  store ptr %i.l, ptr %i.xx, align 8, !tbaa !634
  switch i16 %storemerge975, label %bb.dl [
    i16 0, label %_ZN4core8vector3dIsEixEj.exit
    i16 1, label %bb.dj
    i16 2, label %bb.dk
  ]

bb.dj:                                            ; preds = %bb.di
  br label %_ZN4core8vector3dIsEixEj.exit

bb.dk:                                            ; preds = %bb.di
  br label %_ZN4core8vector3dIsEixEj.exit

bb.dl:                                            ; preds = %bb.di
  unreachable

_ZN4core8vector3dIsEixEj.exit:                    ; preds = %bb.di, %bb.dj, %bb.dk
  %.0.i642.sroa.speculated = phi i16 [ %i.ael, %bb.dk ], [ %i.aei, %bb.dj ], [ %i.aef, %bb.di ]
  %i.aht = icmp slt i16 %.0.i642.sroa.speculated, 1
  br i1 %i.aht, label %bb.dm, label %bb.ds

bb.dm:                                            ; preds = %_ZN4core8vector3dIsEixEj.exit
  switch i16 %storemerge975, label %bb.dn [
    i16 0, label %_ZN4core8vector3dIsEixEj.exit644.thread
    i16 1, label %bb.do
    i16 2, label %bb.dp
  ]

_ZN4core8vector3dIsEixEj.exit644.thread:          ; preds = %bb.dm
  %i.ahu = load i16, ptr %15, align 8, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit646

bb.dn:                                            ; preds = %bb.dm
  unreachable

bb.do:                                            ; preds = %bb.dm
  %i.ahv = load i16, ptr %i.wr, align 2, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit646

bb.dp:                                            ; preds = %bb.dm
  %i.ahw = load i16, ptr %i.ws, align 4, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit646

_ZN4core8vector3dIsEixEj.exit646:                 ; preds = %_ZN4core8vector3dIsEixEj.exit644.thread, %bb.do, %bb.dp
  %i.ahx = phi i16 [ %i.ahw, %bb.dp ], [ %i.ahv, %bb.do ], [ %i.ahu, %_ZN4core8vector3dIsEixEj.exit644.thread ]
  %.0.i645.sroa.speculated = phi i16 [ %i.yc, %bb.dp ], [ %i.yb, %bb.do ], [ %i.ya, %_ZN4core8vector3dIsEixEj.exit644.thread ]
  %i.ahy = icmp sgt i16 %i.ahx, %.0.i645.sroa.speculated
  br i1 %i.ahy, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %_ZN4core8vector3dIsEixEj.exit646
  %i.ahz = load i16, ptr %6, align 2, !tbaa !604
  %i.aia = trunc i16 %i.ahz to i8
  %i.aib = sub i8 0, %i.aia
  invoke fastcc void @"_ZZN9ClientMap14updateDrawListEvENK3$_1clEa"(ptr noundef nonnull align 8 dereferenceable(96) %16, i8 noundef signext %i.aib)
          to label %._crit_edge unwind label %bb.dr

._crit_edge:                                      ; preds = %bb.dq
  %.pre = load i8, ptr %i.q, align 1, !tbaa !65
  %.pre1015 = load i16, ptr %i.p, align 2, !tbaa !162
  br label %bb.ds

bb.dr:                                            ; preds = %bb.ea, %bb.dq
  %i.aic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #2
  br label %bb.ed

bb.ds:                                            ; preds = %._crit_edge, %_ZN4core8vector3dIsEixEj.exit646, %_ZN4core8vector3dIsEixEj.exit
  %i.aid = phi i16 [ %.pre1015, %._crit_edge ], [ %storemerge975, %_ZN4core8vector3dIsEixEj.exit646 ], [ %storemerge975, %_ZN4core8vector3dIsEixEj.exit ] ; 4 uses
  %i.aie = phi i8 [ %.pre, %._crit_edge ], [ %i.aho, %_ZN4core8vector3dIsEixEj.exit646 ], [ %i.aho, %_ZN4core8vector3dIsEixEj.exit ]
  %i.aif = shl i8 %i.aie, 1
  store i8 %i.aif, ptr %i.q, align 1, !tbaa !65
  switch i16 %i.aid, label %bb.dv [
    i16 0, label %_ZN4core8vector3dIsEixEj.exit648
    i16 1, label %bb.dt
    i16 2, label %bb.du
  ]

bb.dt:                                            ; preds = %bb.ds
  br label %_ZN4core8vector3dIsEixEj.exit648

bb.du:                                            ; preds = %bb.ds
  br label %_ZN4core8vector3dIsEixEj.exit648

bb.dv:                                            ; preds = %bb.ds
  unreachable

_ZN4core8vector3dIsEixEj.exit648:                 ; preds = %bb.ds, %bb.dt, %bb.du
  %.0.i647.sroa.speculated = phi i16 [ %i.ael, %bb.du ], [ %i.aei, %bb.dt ], [ %i.aef, %bb.ds ]
  %i.aig = icmp sgt i16 %.0.i647.sroa.speculated, -1
  br i1 %i.aig, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %_ZN4core8vector3dIsEixEj.exit648
  switch i16 %i.aid, label %bb.dx [
    i16 0, label %_ZN4core8vector3dIsEixEj.exit650.thread
    i16 1, label %bb.dy
    i16 2, label %bb.dz
  ]

_ZN4core8vector3dIsEixEj.exit650.thread:          ; preds = %bb.dw
  %i.aih = load i16, ptr %15, align 8, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit652

bb.dx:                                            ; preds = %bb.dw
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %i.aii = load i16, ptr %i.wr, align 2, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit652

bb.dz:                                            ; preds = %bb.dw
  %i.aij = load i16, ptr %i.ws, align 4, !tbaa !162
  br label %_ZN4core8vector3dIsEixEj.exit652

_ZN4core8vector3dIsEixEj.exit652:                 ; preds = %_ZN4core8vector3dIsEixEj.exit650.thread, %bb.dy, %bb.dz
  %i.aik = phi i16 [ %i.aij, %bb.dz ], [ %i.aii, %bb.dy ], [ %i.aih, %_ZN4core8vector3dIsEixEj.exit650.thread ]
  %.0.i651.sroa.speculated = phi i16 [ %i.cs, %bb.dz ], [ %i.ye, %bb.dy ], [ %i.yd, %_ZN4core8vector3dIsEixEj.exit650.thread ]
  %i.ail = icmp slt i16 %i.aik, %.0.i651.sroa.speculated
  br i1 %i.ail, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %_ZN4core8vector3dIsEixEj.exit652
  %i.aim = load i16, ptr %6, align 2, !tbaa !604
  %i.ain = trunc i16 %i.aim to i8
  invoke fastcc void @"_ZZN9ClientMap14updateDrawListEvENK3$_1clEa"(ptr noundef nonnull align 8 dereferenceable(96) %16, i8 noundef signext %i.ain)
          to label %._crit_edge1016 unwind label %bb.dr

._crit_edge1016:                                  ; preds = %bb.ea
  %.pre1017 = load i16, ptr %i.p, align 2, !tbaa !162
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge1016, %_ZN4core8vector3dIsEixEj.exit652, %_ZN4core8vector3dIsEixEj.exit648
  %i.aio = phi i16 [ %.pre1017, %._crit_edge1016 ], [ %i.aid, %_ZN4core8vector3dIsEixEj.exit652 ], [ %i.aid, %_ZN4core8vector3dIsEixEj.exit648 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #2
  %i.aip = add i16 %i.aio, 1                      ; 3 uses
  store i16 %i.aip, ptr %i.p, align 2, !tbaa !162
  %i.aiq = icmp slt i16 %i.aip, 3
  br i1 %i.aiq, label %bb.di, label %bb.dh, !llvm.loop !848

bb.ec:                                            ; preds = %bb.ct, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread, %bb.dh, %bb.db, %bb.ci
  %.1282 = phi i32 [ %.0281976, %bb.ci ], [ %i.aav, %bb.db ], [ %i.aav, %bb.dh ], [ %i.aav, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread ], [ %i.aav, %bb.ct ] ; 2 uses
  %.8268 = phi i32 [ %.5265977, %bb.ci ], [ %.5265977, %bb.db ], [ %.5265977, %bb.dh ], [ %i.aed, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread ], [ %.5265977, %bb.ct ] ; 2 uses
  %.9258 = phi i32 [ %.5254978, %bb.ci ], [ %i.aet, %bb.db ], [ %.5254978, %bb.dh ], [ %.5254978, %_ZZNK6Camera16getFrustumCullerEvENKUlN4core8vector3dIfEEfE_clES2_f.exit610.thread ], [ %.5254978, %bb.ct ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #2
  %i.air = load ptr, ptr %i.ut, align 8, !tbaa !624
  %i.ais = load ptr, ptr %i.wk, align 8, !tbaa !624 ; 2 uses
  %i.ait = icmp eq ptr %i.air, %i.ais
  br i1 %i.ait, label %.noexc.i654.loopexit, label %bb.cd

bb.ed:                                            ; preds = %bb.dc, %bb.dr, %bb.cl, %bb.cr
  %.pn307.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aeu, %bb.dc ], [ %i.aat, %bb.cl ], [ %i.abo, %bb.cr ], [ %i.aic, %bb.dr ]
end_hunk_0
