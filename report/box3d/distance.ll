Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/distance?download=true
inline.NumInlined: 318
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3ShapeDistance:bb.a

bb.bt:                                            ; preds = %bb.bq
  %i.acr = load float, ptr %i.fj, align 16, !tbaa !16 ; 5 uses
  %i.acs = fcmp ugt float %i.acr, 0.000000e+00
  br i1 %i.acs, label %bb.bu, label %b3SolveSimplex4.exit

bb.bu:                                            ; preds = %bb.bt
  %i.act = fdiv float %i.acf, %i.acr
  store float %i.act, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.acu = fdiv float %i.abv, %i.acr
  store float %i.acu, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  %i.acv = fdiv float %i.abj, %i.acr
  store float %i.acv, ptr %.sroa.24285.0..sroa_idx.i, align 4, !tbaa !22
  %i.acw = fdiv float %i.aax, %i.acr
  store float %i.acw, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !22
  br label %b3SolveSimplex4.exit.thread788

b3SolveSimplex4.exit.thread:                      ; preds = %bb.ai, %bb.ak, %bb.am, %bb.ao, %bb.ar, %bb.au, %bb.ax, %bb.ba, %bb.bd, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0293.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24330.i)
  br label %bb.bv

b3SolveSimplex4.exit.thread785:                   ; preds = %bb.az, %bb.bc, %bb.bf, %bb.aq, %bb.at, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0293.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24330.i)
  br label %.thread770.sink.split

b3SolveSimplex4.exit.thread788:                   ; preds = %bb.bs, %bb.bj, %bb.bm, %bb.bp, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0293.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24330.i)
  br label %bb.bv

b3SolveSimplex4.exit:                             ; preds = %bb.bi, %bb.bl, %bb.bo, %bb.br, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0293.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24330.i)
  br label %.thread770.sink.split

b3SolveSimplex2.exit.thread768:                   ; preds = %bb.r, %bb.t, %bb.v, %bb.ae, %bb.y, %bb.ab, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.094.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12111.i)
  br label %bb.bv

b3SolveSimplex2.exit:                             ; preds = %bb.af, %bb.ad, %bb.aa, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.094.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12111.i)
  br label %.thread770.sink.split

bb.bv:                                            ; preds = %b3SolveSimplex4.exit.thread788, %b3SolveSimplex4.exit.thread, %b3SolveSimplex2.exit.thread768, %b3SolveSimplex2.exit.thread, %.critedge483
  %i.acx = icmp slt i32 %.1840, %4
  %or.cond485 = select i1 %.not, i1 %i.acx, i1 false
  br i1 %or.cond485, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.acy = sext i32 %.1840 to i64
  %i.acz = getelementptr inbounds [196 x i8], ptr %3, i64 %i.acy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.acz, ptr noundef nonnull align 8 dereferenceable(196) %5, i64 196, i1 false), !tbaa.struct !51
  %i.ada = add nsw i32 %.1840, 1                  ; 2 uses
  store i32 %.0469836, ptr %i.fk, align 4, !tbaa !54
  store i32 %i.ada, ptr %i.fl, align 4, !tbaa !55
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.2 = phi i32 [ %i.ada, %bb.bw ], [ %.1840, %bb.bv ] ; 6 uses
  %i.adb = load i32, ptr %i.ae, align 8, !tbaa !19 ; 6 uses
  switch i32 %i.adb, label %bb.cc [
    i32 4, label %bb.by
    i32 1, label %bb.bz
    i32 2, label %bb.ca
    i32 3, label %bb.cb
  ]

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call fastcc void @b3ComputeWitnessPoints(ptr noundef %5, ptr noundef %0, ptr noundef %7)
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.adc, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !25
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.add, i8 0, i64 16, i1 false)
  store i32 %.0469836, ptr %i.fk, align 4, !tbaa !54
  store i32 %.2, ptr %i.fl, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %.thread777

bb.bz:                                            ; preds = %bb.bx
  %.sroa.0284.0.copyload = load <2 x float>, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16
  %.sroa.9.0.copyload = load float, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bx
  %i.ade = load float, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22 ; 2 uses
  %i.adf = load float, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22 ; 2 uses
  %.sroa.0280.0.copyload = load <2 x float>, ptr %.sroa.10339.0..sroa_idx.i, align 8
  %.sroa.2281.0.copyload = load float, ptr %.sroa.17360.0..sroa_idx.i, align 8
  %.sroa.0278.0.copyload = load <2 x float>, ptr %.sroa.10294.0..sroa_idx.i, align 8
  %.sroa.2279.0.copyload = load float, ptr %.sroa.17315.0..sroa_idx.i, align 8
  %i.adg = insertelement <2 x float> poison, float %i.ade, i64 0
  %i.adh = shufflevector <2 x float> %i.adg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adi = fmul <2 x float> %i.adh, %.sroa.0280.0.copyload
  %i.adj = insertelement <2 x float> poison, float %i.adf, i64 0
  %i.adk = shufflevector <2 x float> %i.adj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adl = fmul <2 x float> %i.adk, %.sroa.0278.0.copyload
  %i.adm = fadd <2 x float> %i.adi, %i.adl
  %i.adn = fmul float %i.ade, %.sroa.2281.0.copyload
  %i.ado = fmul float %i.adf, %.sroa.2279.0.copyload
  %i.adp = fadd float %i.adn, %i.ado
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bx
  %i.adq = load float, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22 ; 2 uses
  %i.adr = load float, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22 ; 2 uses
  %i.ads = load float, ptr %.sroa.24285.0..sroa_idx.i, align 4, !tbaa !22 ; 3 uses
  %.sroa.0270.0.copyload = load <2 x float>, ptr %.sroa.10339.0..sroa_idx.i, align 8
  %.sroa.2271.0.copyload = load float, ptr %.sroa.17360.0..sroa_idx.i, align 8
  %.sroa.0268.0.copyload = load <2 x float>, ptr %.sroa.10294.0..sroa_idx.i, align 8
  %.sroa.2269.0.copyload = load float, ptr %.sroa.17315.0..sroa_idx.i, align 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.17270.0..sroa_idx.i, align 8, !tbaa !16
  %i.adt = load <2 x float>, ptr %.sroa.10249.0..sroa_idx.i, align 8, !tbaa !16 ; 2 uses
  %i.adu = insertelement <2 x float> poison, float %i.adq, i64 0
  %i.adv = shufflevector <2 x float> %i.adu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adw = fmul <2 x float> %i.adv, %.sroa.0270.0.copyload
  %i.adx = insertelement <2 x float> poison, float %i.adr, i64 0
  %i.ady = shufflevector <2 x float> %i.adx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adz = fmul <2 x float> %i.ady, %.sroa.0268.0.copyload
  %i.aea = fadd <2 x float> %i.adw, %i.adz
  %i.aeb = insertelement <2 x float> %i.adt, float %i.ads, i64 1
  %i.aec = insertelement <2 x float> %i.adt, float %i.ads, i64 0
  %i.aed = fmul <2 x float> %i.aeb, %i.aec
  %i.aee = fadd <2 x float> %i.aea, %i.aed
  %i.aef = fmul float %i.adq, %.sroa.2271.0.copyload
  %i.aeg = fmul float %i.adr, %.sroa.2269.0.copyload
  %i.aeh = fadd float %i.aef, %i.aeg
  %i.aei = fmul float %i.ads, %.sroa.5.0.copyload
  %i.aej = fadd float %i.aeh, %i.aei
  br label %bb.cc

bb.cc:                                            ; preds = %bb.bx, %bb.cb, %bb.ca, %bb.bz
  %.sroa.0284.0 = phi <2 x float> [ zeroinitializer, %bb.bx ], [ %.sroa.0284.0.copyload, %bb.bz ], [ %i.adm, %bb.ca ], [ %i.aee, %bb.cb ] ; 2 uses
  %.sroa.9.0 = phi float [ 0.000000e+00, %bb.bx ], [ %.sroa.9.0.copyload, %bb.bz ], [ %i.adp, %bb.ca ], [ %i.aej, %bb.cb ] ; 2 uses
  %i.aek = fmul <2 x float> %.sroa.0284.0, %.sroa.0284.0 ; 2 uses
  %shift1163 = shufflevector <2 x float> %i.aek, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1164 = fadd <2 x float> %i.aek, %shift1163
  %i.ael = extractelement <2 x float> %foldExtExtBinop1164, i64 0
  %i.aem = fmul float %.sroa.9.0, %.sroa.9.0
  %i.aen = fadd float %i.aem, %i.ael              ; 2 uses
  %i.aeo = fcmp ult float %i.aen, %.0467839
  br i1 %i.aeo, label %bb.cd, label %.thread770.sink.split

bb.cd:                                            ; preds = %bb.cc
  switch i32 %i.adb, label %bb.ci [
    i32 1, label %bb.ce
    i32 2, label %bb.cf
    i32 3, label %bb.cg
  ]

bb.ce:                                            ; preds = %bb.cd
  %.sroa.0222.0.copyload = load <2 x float>, ptr %.sroa.10339.0..sroa_idx.i, align 8
  %.sroa.2223.0.copyload = load float, ptr %.sroa.17360.0..sroa_idx.i, align 8
  %i.aep = fneg <2 x float> %.sroa.0222.0.copyload
  %i.aeq = fneg float %.sroa.2223.0.copyload
  br label %bb.ci

bb.cf:                                            ; preds = %bb.cd
  %.sroa.0215.0.copyload = load <2 x float>, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16 ; 4 uses
  %.sroa.5217.0.copyload = load float, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16 ; 2 uses
  %.sroa.0213.0.copyload = load <2 x float>, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16
  %.sroa.4214.0.copyload = load float, ptr %.sroa.17315.0..sroa_idx.i, align 8, !tbaa !16
  %i.aer = shufflevector <2 x float> %.sroa.0215.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aes = fsub <2 x float> %.sroa.0213.0.copyload, %.sroa.0215.0.copyload ; 6 uses
  %i.aet = fmul <2 x float> %i.aer, %i.aes        ; 2 uses
  %i.aeu = shufflevector <2 x float> %.sroa.0215.0.copyload, <2 x float> %i.aes, <2 x i32> <i32 0, i32 3>
  %i.aev = insertelement <2 x float> %i.aet, float %.sroa.4214.0.copyload, i64 0
  %i.aew = shufflevector <2 x float> %i.aet, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aex = insertelement <2 x float> %i.aew, float %.sroa.5217.0.copyload, i64 0
  %i.aey = fsub <2 x float> %i.aev, %i.aex        ; 3 uses
  %i.aez = insertelement <2 x float> %i.aey, float %.sroa.5217.0.copyload, i64 1 ; 2 uses
  %i.afa = fmul <2 x float> %i.aez, %i.aeu
  %i.afb = shufflevector <2 x float> %i.aes, <2 x float> %.sroa.0215.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.afc = shufflevector <2 x float> %i.aez, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.afd = fmul <2 x float> %i.afb, %i.afc
  %i.afe = fsub <2 x float> %i.afd, %i.afa        ; 3 uses
  %i.aff = shufflevector <2 x float> %i.afe, <2 x float> %i.aes, <2 x i32> <i32 0, i32 2>
  %i.afg = fmul <2 x float> %i.aey, %i.aff
  %i.afh = shufflevector <2 x float> %i.afe, <2 x float> %i.aes, <2 x i32> <i32 3, i32 1>
  %i.afi = shufflevector <2 x float> %i.aey, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.afj = fmul <2 x float> %i.afh, %i.afi
  %i.afk = fsub <2 x float> %i.afg, %i.afj
  %i.afl = fmul <2 x float> %i.aes, %i.afe        ; 2 uses
  %shift1166 = shufflevector <2 x float> %i.afl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1167 = fsub <2 x float> %shift1166, %i.afl
  %i.afm = extractelement <2 x float> %foldExtExtBinop1167, i64 0
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cd
  %.sroa.0170.0.copyload = load <2 x float>, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16 ; 3 uses
  %.sroa.6173.0.copyload = load float, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16 ; 2 uses
  %.sroa.0168.0.copyload = load <2 x float>, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16
  %.sroa.4169.0.copyload = load float, ptr %.sroa.17315.0..sroa_idx.i, align 8, !tbaa !16
  %.sroa.0166.0.copyload = load <2 x float>, ptr %.sroa.10249.0..sroa_idx.i, align 8, !tbaa !16
  %11 = load <2 x float>, ptr %.sroa.17270.0..sroa_idx.i, align 8
  %i.afn = fsub <2 x float> %.sroa.0168.0.copyload, %.sroa.0170.0.copyload ; 3 uses
  %i.afo = fsub <2 x float> %.sroa.0166.0.copyload, %.sroa.0170.0.copyload ; 3 uses
  %i.afp = shufflevector <2 x float> %i.afo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.afq = insertelement <2 x float> %11, float %.sroa.4169.0.copyload, i64 1
  %i.afr = insertelement <2 x float> poison, float %.sroa.6173.0.copyload, i64 0
  %i.afs = shufflevector <2 x float> %i.afr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aft = fsub <2 x float> %i.afq, %i.afs        ; 2 uses
  %i.afu = shufflevector <2 x float> %i.afn, <2 x float> %i.afo, <2 x i32> <i32 1, i32 2>
  %i.afv = fmul <2 x float> %i.afu, %i.aft
  %i.afw = shufflevector <2 x float> %i.aft, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.afx = shufflevector <2 x float> %i.afn, <2 x float> %i.afo, <2 x i32> <i32 3, i32 0>
  %i.afy = fmul <2 x float> %i.afw, %i.afx
  %i.afz = fsub <2 x float> %i.afv, %i.afy        ; 3 uses
  %i.aga = fmul <2 x float> %i.afn, %i.afp        ; 2 uses
  %shift1169 = shufflevector <2 x float> %i.aga, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1170 = fsub <2 x float> %i.aga, %shift1169
  %i.agb = extractelement <2 x float> %foldExtExtBinop1170, i64 0 ; 3 uses
  %i.agc = fmul <2 x float> %.sroa.0170.0.copyload, %i.afz ; 2 uses
  %shift1172 = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1173 = fadd <2 x float> %i.agc, %shift1172
  %i.agd = extractelement <2 x float> %foldExtExtBinop1173, i64 0
  %i.age = fmul float %.sroa.6173.0.copyload, %i.agb
  %i.agf = fadd float %i.age, %i.agd
  %i.agg = fcmp olt float %i.agf, 0.000000e+00
  br i1 %i.agg, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.agh = fneg <2 x float> %i.afz
  %i.agi = fneg float %i.agb
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cd, %bb.cf, %bb.ce
  %.sroa.0226.1 = phi <2 x float> [ zeroinitializer, %bb.cd ], [ %i.aep, %bb.ce ], [ %i.afk, %bb.cf ], [ %i.agh, %bb.ch ], [ %i.afz, %bb.cg ] ; 8 uses
  %.sroa.11.1 = phi float [ 0.000000e+00, %bb.cd ], [ %i.aeq, %bb.ce ], [ %i.afm, %bb.cf ], [ %i.agi, %bb.ch ], [ %i.agb, %bb.cg ] ; 6 uses
  %i.agj = fmul <2 x float> %.sroa.0226.1, %.sroa.0226.1 ; 2 uses
  %shift1175 = shufflevector <2 x float> %i.agj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1176 = fadd <2 x float> %i.agj, %shift1175
  %i.agk = extractelement <2 x float> %foldExtExtBinop1176, i64 0
  %i.agl = fmul float %.sroa.11.1, %.sroa.11.1
  %i.agm = fadd float %i.agl, %i.agk
  %i.agn = fcmp olt float %i.agm, f0x057A0000
  br i1 %i.agn, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call fastcc void @b3ComputeWitnessPoints(ptr noundef %5, ptr noundef %0, ptr noundef %8)
  %i.ago = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ago, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !25
  %i.agp = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agp, i8 0, i64 16, i1 false)
  store i32 %.0469836, ptr %i.fk, align 4, !tbaa !54
  store i32 %.2, ptr %i.fl, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %.thread777

bb.ck:                                            ; preds = %bb.ci
  %i.agq = fneg <2 x float> %.sroa.0226.1         ; 4 uses
  %i.agr = fneg float %.sroa.11.1                 ; 3 uses
  %i.ags = load i32, ptr %i.fm, align 8, !tbaa !14 ; 2 uses
  %i.agt = load ptr, ptr %1, align 8, !tbaa !15   ; 5 uses
  %.sroa.4.0..sroa_idx.i634 = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  %.sroa.4.0.copyload.i635 = load float, ptr %.sroa.4.0..sroa_idx.i634, align 4, !tbaa !16 ; 2 uses
  %i.agu = icmp sgt i32 %i.ags, 1
  br i1 %i.agu, label %.lr.ph.i, label %b3GetProxySupport.exit

.lr.ph.i:                                         ; preds = %bb.ck
  %.sroa.017.0.copyload.i = load <2 x float>, ptr %i.agt, align 4, !tbaa !16
  %wide.trip.count.i = zext nneg i32 %i.ags to i64
  %i.agv = shufflevector <2 x float> %.sroa.0226.1, <2 x float> %i.agq, <2 x i32> <i32 0, i32 3>
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.cl ] ; 3 uses
  %.033.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.cl ]
  %.02732.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %.128.i, %bb.cl ] ; 2 uses
  %i.agw = getelementptr inbounds nuw [12 x i8], ptr %i.agt, i64 %indvars.iv.i ; 2 uses
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %i.agw, align 4
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 4
  %i.agx = fsub float %.sroa.28.0.copyload.i, %.sroa.4.0.copyload.i635
  %i.agy = fsub <2 x float> %.sroa.07.0.copyload.i, %.sroa.017.0.copyload.i
  %i.agz = fmul <2 x float> %i.agy, %i.agv        ; 2 uses
  %shift1178 = shufflevector <2 x float> %i.agz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1179 = fsub <2 x float> %shift1178, %i.agz
  %i.aha = extractelement <2 x float> %foldExtExtBinop1179, i64 0
  %i.ahb = fmul float %.sroa.11.1, %i.agx
  %i.ahc = fsub float %i.aha, %i.ahb              ; 2 uses
  %i.ahd = fcmp ogt float %i.ahc, %.02732.i       ; 2 uses
  %.128.i = select i1 %i.ahd, float %i.ahc, float %.02732.i
  %i.ahe = trunc nuw nsw i64 %indvars.iv.i to i32
  %.1.i = select i1 %i.ahd, i32 %i.ahe, i32 %.033.i ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %b3GetProxySupport.exit.loopexit, label %bb.cl, !llvm.loop !0

b3GetProxySupport.exit.loopexit:                  ; preds = %bb.cl
  %.phi.trans.insert = sext i32 %.1.i to i64
  %.phi.trans.insert894 = getelementptr inbounds [12 x i8], ptr %i.agt, i64 %.phi.trans.insert
  %.sroa.596.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert894, i64 8
  %.sroa.596.0.copyload.pre = load float, ptr %.sroa.596.0..sroa_idx.phi.trans.insert, align 4, !tbaa !16
  br label %b3GetProxySupport.exit

b3GetProxySupport.exit:                           ; preds = %bb.ck, %b3GetProxySupport.exit.loopexit
  %.sroa.596.0.copyload = phi float [ %.sroa.596.0.copyload.pre, %b3GetProxySupport.exit.loopexit ], [ %.sroa.4.0.copyload.i635, %bb.ck ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %.1.i, %b3GetProxySupport.exit.loopexit ], [ 0, %bb.ck ] ; 3 uses
  %i.ahf = sext i32 %.0.lcssa.i to i64
  %i.ahg = getelementptr inbounds [12 x i8], ptr %i.agt, i64 %i.ahf
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.ahg, align 4, !tbaa !16 ; 2 uses
  %i.ahh = insertelement <2 x float> poison, float %.sroa.11.1, i64 0
  %i.ahi = shufflevector <2 x float> %i.ahh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahj = fmul <2 x float> %i.fp, %i.ahi
  %foldExtExtBinop1181 = fmul <2 x float> %i.n, %.sroa.0226.1
  %foldExtExtBinop1183 = fmul <2 x float> %i.o, %.sroa.0226.1
  %shift1185 = shufflevector <2 x float> %foldExtExtBinop1183, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1186 = fadd <2 x float> %foldExtExtBinop1181, %shift1185
  %i.ahk = extractelement <2 x float> %foldExtExtBinop1186, i64 0
  %i.ahl = fmul float %i.q, %.sroa.11.1
  %i.ahm = fadd float %i.ahl, %i.ahk
  %i.ahn = fmul <2 x float> %i.fq, %.sroa.0226.1
  %i.aho = shufflevector <2 x float> %.sroa.0226.1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ahp = fmul <2 x float> %i.fr, %i.aho
  %i.ahq = fadd <2 x float> %i.ahp, %i.ahn
  %i.ahr = fadd <2 x float> %i.ahj, %i.ahq
  %i.ahs = load i32, ptr %i.fn, align 8, !tbaa !14 ; 2 uses
  %i.aht = load ptr, ptr %i.aa, align 8, !tbaa !15 ; 5 uses
  %.sroa.4.0..sroa_idx.i646 = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  %.sroa.4.0.copyload.i647 = load float, ptr %.sroa.4.0..sroa_idx.i646, align 4, !tbaa !16 ; 2 uses
  %i.ahu = icmp sgt i32 %i.ahs, 1
  br i1 %i.ahu, label %.lr.ph.i649, label %b3GetProxySupport.exit668

.lr.ph.i649:                                      ; preds = %b3GetProxySupport.exit
  %.sroa.017.0.copyload.i650 = load <2 x float>, ptr %i.aht, align 4, !tbaa !16 ; 2 uses
  %wide.trip.count.i655 = zext nneg i32 %i.ahs to i64
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %.lr.ph.i649
  %indvars.iv.i656 = phi i64 [ 1, %.lr.ph.i649 ], [ %indvars.iv.next.i666, %bb.cm ] ; 3 uses
  %.033.i657 = phi i32 [ 0, %.lr.ph.i649 ], [ %.1.i665, %bb.cm ]
  %.02732.i658 = phi float [ 0.000000e+00, %.lr.ph.i649 ], [ %.128.i664, %bb.cm ] ; 2 uses
  %i.ahv = getelementptr inbounds nuw [12 x i8], ptr %i.aht, i64 %indvars.iv.i656 ; 2 uses
  %.sroa.07.0.copyload.i659 = load <2 x float>, ptr %i.ahv, align 4 ; 2 uses
  %.sroa.28.0..sroa_idx.i660 = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  %.sroa.28.0.copyload.i661 = load float, ptr %.sroa.28.0..sroa_idx.i660, align 4
  %foldExtExtBinop1188 = fsub <2 x float> %.sroa.07.0.copyload.i659, %.sroa.017.0.copyload.i650
  %i.ahw = extractelement <2 x float> %foldExtExtBinop1188, i64 1
  %i.ahx = fmul float %i.ahm, %i.ahw
  %foldExtExtBinop1190 = fsub <2 x float> %.sroa.07.0.copyload.i659, %.sroa.017.0.copyload.i650
  %i.ahy = fsub float %.sroa.28.0.copyload.i661, %.sroa.4.0.copyload.i647
  %i.ahz = insertelement <2 x float> poison, float %i.ahy, i64 0
  %i.aia = shufflevector <2 x float> %i.ahz, <2 x float> %foldExtExtBinop1190, <2 x i32> <i32 0, i32 2>
  %i.aib = fmul <2 x float> %i.ahr, %i.aia        ; 2 uses
  %i.aic = extractelement <2 x float> %i.aib, i64 1
  %i.aid = fadd float %i.aic, %i.ahx
  %i.aie = extractelement <2 x float> %i.aib, i64 0
  %i.aif = fadd float %i.aie, %i.aid              ; 2 uses
  %i.aig = fcmp ogt float %i.aif, %.02732.i658    ; 2 uses
  %.128.i664 = select i1 %i.aig, float %i.aif, float %.02732.i658
  %i.aih = trunc nuw nsw i64 %indvars.iv.i656 to i32
  %.1.i665 = select i1 %i.aig, i32 %i.aih, i32 %.033.i657 ; 3 uses
  %indvars.iv.next.i666 = add nuw nsw i64 %indvars.iv.i656, 1 ; 2 uses
  %exitcond.not.i667 = icmp eq i64 %indvars.iv.next.i666, %wide.trip.count.i655
  br i1 %exitcond.not.i667, label %b3GetProxySupport.exit668.loopexit, label %bb.cm, !llvm.loop !0

b3GetProxySupport.exit668.loopexit:               ; preds = %bb.cm
  %.phi.trans.insert896 = sext i32 %.1.i665 to i64
  %.phi.trans.insert897 = getelementptr inbounds [12 x i8], ptr %i.aht, i64 %.phi.trans.insert896
  %.sroa.277.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert897, i64 8
  %.sroa.277.0.copyload.pre = load float, ptr %.sroa.277.0..sroa_idx.phi.trans.insert, align 4
  br label %b3GetProxySupport.exit668

b3GetProxySupport.exit668:                        ; preds = %b3GetProxySupport.exit, %b3GetProxySupport.exit668.loopexit
  %.sroa.277.0.copyload = phi float [ %.sroa.277.0.copyload.pre, %b3GetProxySupport.exit668.loopexit ], [ %.sroa.4.0.copyload.i647, %b3GetProxySupport.exit ] ; 2 uses
  %.0.lcssa.i648 = phi i32 [ %.1.i665, %b3GetProxySupport.exit668.loopexit ], [ 0, %b3GetProxySupport.exit ] ; 3 uses
  %i.aii = sext i32 %.0.lcssa.i648 to i64
  %i.aij = getelementptr inbounds [12 x i8], ptr %i.aht, i64 %i.aii
  %.sroa.076.0.copyload = load <2 x float>, ptr %i.aij, align 4 ; 4 uses
  %i.aik = shufflevector <2 x float> %.sroa.076.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i669 = extractelement <2 x float> %.sroa.076.0.copyload, i64 0
  %i.ail = insertelement <2 x float> poison, float %.sroa.277.0.copyload, i64 0
  %i.aim = shufflevector <2 x float> %i.ail, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ain = fmul <2 x float> %i.u, %i.aim
  %i.aio = fmul float %i.x, %.sroa.03.0.vec.extract.i669
  %i.aip = extractelement <2 x float> %.sroa.076.0.copyload, i64 1
  %i.aiq = fmul float %i.q, %i.aip
  %i.air = fadd float %i.aio, %i.aiq
  %i.ais = fmul float %i.z, %.sroa.277.0.copyload
  %i.ait = fadd float %i.ais, %i.air
  %i.aiu = fmul <2 x float> %i.n, %i.aik
  %i.aiv = fmul <2 x float> %i.o, %.sroa.076.0.copyload
  %i.aiw = fadd <2 x float> %i.aiu, %i.aiv
  %i.aix = fadd <2 x float> %i.ain, %i.aiw
  %i.aiy = fadd <2 x float> %.sroa.0438.0.copyload, %i.aix ; 2 uses
  %i.aiz = fadd float %.sroa.6441.0.copyload, %i.ait ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %6, ptr noundef nonnull align 8 dereferenceable(196) %5, i64 196, i1 false), !tbaa.struct !51
  %i.aja = icmp sgt i32 %i.adb, 0
  br i1 %i.aja, label %.lr.ph834.preheader, label %._crit_edge835

.lr.ph834.preheader:                              ; preds = %b3GetProxySupport.exit668
  %wide.trip.count891 = zext nneg i32 %i.adb to i64
  br label %.lr.ph834

.lr.ph834:                                        ; preds = %.lr.ph834.preheader, %bb.co
  %indvars.iv888 = phi i64 [ 0, %.lr.ph834.preheader ], [ %indvars.iv.next889, %bb.co ] ; 2 uses
  %i.ajb = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv888 ; 2 uses
end_hunk_0
begin_hunk_1_@b3TimeOfImpact:bb.a
  %.0 = phi float [ 0.000000e+00, %bb.a ], [ %.2.ph, %select.unfold1070 ] ; 11 uses
  %i.cw = select i1 %i.cm, <2 x float> %i.bb, <2 x float> %.sroa.25.0.copyload
  %i.cx = select i1 %i.cm, <2 x float> %i.ba, <2 x float> %.sroa.23.0.copyload
  %i.cy = fsub float 1.000000e+00, %.0            ; 3 uses
  %i.cz = insertelement <2 x float> poison, float %.0, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.db = fmul <2 x float> %.sroa.27.0.copyload, %i.da ; 3 uses
  %i.dc = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer ; 13 uses
  %i.de = fmul <2 x float> %i.dd, %i.cx
  %i.df = fadd <2 x float> %i.db, %i.de           ; 2 uses
  %i.dg = fmul <2 x float> %.sroa.31.0.copyload, %i.da ; 3 uses
  %i.dh = fmul <2 x float> %i.dd, %i.cw
  %i.di = fadd <2 x float> %i.dg, %i.dh           ; 2 uses
  %i.dj = shufflevector <2 x float> %i.df, <2 x float> %i.di, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.dk = fmul <4 x float> %i.dj, %i.dj           ; 4 uses
  %shift = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2431 = fadd <4 x float> %i.dk, %shift
  %shift2433 = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2434 = fadd <4 x float> %foldExtExtBinop2431, %shift2433
  %shift2436 = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2437 = fadd <4 x float> %shift2436, %foldExtExtBinop2434
  %i.dl = extractelement <4 x float> %foldExtExtBinop2437, i64 0 ; 2 uses
  %i.dm = fcmp ogt float %i.dl, f0x057A0000
  br i1 %i.dm, label %bb.c, label %b3GetSweepTransform.exit

bb.c:                                             ; preds = %bb.b
  %sqrt.i.i.i = call float @llvm.sqrt.f32(float %i.dl)
  %i.dn = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.do = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = fmul <2 x float> %i.df, %i.dp
  %i.dr = fmul <2 x float> %i.di, %i.dp
  br label %b3GetSweepTransform.exit

b3GetSweepTransform.exit:                         ; preds = %bb.b, %bb.c
  %.sroa.010.0.i.i.i = phi <2 x float> [ %i.dq, %bb.c ], [ zeroinitializer, %bb.b ] ; 45 uses
  %.sroa.4.0.i.i.i = phi <2 x float> [ %i.dr, %bb.c ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.b ] ; 27 uses
  %i.ds = fmul float %i.cy, 0.000000e+00          ; 2 uses
  %i.dt = fmul <2 x float> %i.d, %i.da
  %i.du = fmul float %i.e, %.0
  %i.dv = fadd float %i.du, %i.ds                 ; 2 uses
  %i.dw = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dx = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.010.0.i.i.i, i64 0 ; 16 uses
  %i.dy = fmul float %.sroa.6967.0.copyload, %.sroa.011.0.vec.extract.i.i.i
  %i.dz = fmul <2 x float> %.sroa.0964.0.copyload, %.sroa.4.0.i.i.i ; 2 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  %i.eb = fsub float %i.ea, %i.dy
  %i.ec = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fadd <2 x float> %i.dt, %i.ed           ; 3 uses
  %i.ef = extractelement <2 x float> %i.dz, i64 1
  %i.eg = fadd float %i.ef, %i.eb                 ; 2 uses
  %i.eh = fmul <2 x float> %i.cj, %.sroa.010.0.i.i.i
  %i.ei = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i, <2 x i32> <i32 1, i32 2> ; 18 uses
  %i.ej = fmul <2 x float> %.sroa.0964.0.copyload, %i.ei
  %i.ek = fsub <2 x float> %i.eh, %i.ej
  %i.el = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 11 uses
  %i.em = fmul <2 x float> %i.ck, %i.el
  %i.en = fadd <2 x float> %i.em, %i.ek           ; 3 uses
  %i.eo = fmul <2 x float> %i.ei, %i.en
  %i.ep = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.010.0.i.i.i, <2 x i32> <i32 0, i32 2> ; 10 uses
  %i.eq = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.er = insertelement <2 x float> %i.eq, float %i.eg, i64 0
  %i.es = fmul <2 x float> %i.ep, %i.er
  %i.et = fsub <2 x float> %i.eo, %i.es
  %i.eu = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.eg
  %foldExtExtBinop2439 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.en
  %i.ev = extractelement <2 x float> %foldExtExtBinop2439, i64 1
  %i.ew = fsub float %i.eu, %i.ev
  %i.ex = fmul <2 x float> %i.et, splat (float 2.000000e+00)
  %i.ey = fadd <2 x float> %.sroa.0964.0.copyload, %i.ex
  %i.ez = fmul float %i.ew, 2.000000e+00
  %i.fa = fadd float %.sroa.6967.0.copyload, %i.ez
  %i.fb = fsub <2 x float> %i.ee, %i.ey           ; 9 uses
  %i.fc = fsub float %i.dv, %i.fa                 ; 8 uses
  %i.fd = select i1 %i.cl, <2 x float> %i.bd, <2 x float> %.sroa.26.0.copyload
  %i.fe = select i1 %i.cl, <2 x float> %i.bc, <2 x float> %.sroa.24.0.copyload
  %i.ff = fmul <2 x float> %i.dd, %i.fe
  %i.fg = fmul <2 x float> %.sroa.28.0.copyload, %i.da ; 3 uses
  %i.fh = fadd <2 x float> %i.fg, %i.ff           ; 2 uses
  %i.fi = fmul <2 x float> %i.dd, %i.fd
  %i.fj = fmul <2 x float> %.sroa.32.0.copyload, %i.da ; 3 uses
  %i.fk = fadd <2 x float> %i.fj, %i.fi           ; 2 uses
  %i.fl = shufflevector <2 x float> %i.fh, <2 x float> %i.fk, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.fm = fmul <4 x float> %i.fl, %i.fl           ; 4 uses
  %shift2441 = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2442 = fadd <4 x float> %i.fm, %shift2441
  %shift2444 = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2445 = fadd <4 x float> %foldExtExtBinop2442, %shift2444
  %shift2447 = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2448 = fadd <4 x float> %shift2447, %foldExtExtBinop2445
  %i.fn = extractelement <4 x float> %foldExtExtBinop2448, i64 0 ; 2 uses
  %i.fo = fcmp ogt float %i.fn, f0x057A0000
  br i1 %i.fo, label %bb.d, label %b3GetSweepTransform.exit421

bb.d:                                             ; preds = %b3GetSweepTransform.exit
  %sqrt.i.i.i416 = call float @llvm.sqrt.f32(float %i.fn)
  %i.fp = fdiv float 1.000000e+00, %sqrt.i.i.i416
  %i.fq = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fs = fmul <2 x float> %i.fh, %i.fr
  %i.ft = fmul <2 x float> %i.fk, %i.fr
  br label %b3GetSweepTransform.exit421

b3GetSweepTransform.exit421:                      ; preds = %b3GetSweepTransform.exit, %bb.d
  %.sroa.010.0.i.i.i391 = phi <2 x float> [ %i.fs, %bb.d ], [ zeroinitializer, %b3GetSweepTransform.exit ] ; 11 uses
  %.sroa.4.0.i.i.i392 = phi <2 x float> [ %i.ft, %bb.d ], [ <float 0.000000e+00, float 1.000000e+00>, %b3GetSweepTransform.exit ] ; 7 uses
  %i.fu = fmul float %i.f, %i.cy
  %i.fv = fmul float %i.g, %.0
  %i.fw = fadd float %i.fv, %i.fu                 ; 2 uses
  %i.fx = fmul <2 x float> %i.l, %i.dd
  %i.fy = fmul <2 x float> %i.o, %i.da
  %i.fz = fadd <2 x float> %i.fy, %i.fx           ; 3 uses
  %.sroa.011.0.vec.extract.i.i.i411 = extractelement <2 x float> %.sroa.010.0.i.i.i391, i64 0
  %i.ga = extractelement <2 x float> %i.fz, i64 0
  %foldExtExtBinop2450 = fmul <2 x float> %.sroa.0929.0.copyload, %.sroa.4.0.i.i.i392
  %i.gb = extractelement <2 x float> %foldExtExtBinop2450, i64 0
  %i.gc = fmul float %.sroa.6932.0.copyload, %.sroa.011.0.vec.extract.i.i.i411
  %i.gd = fsub float %i.gb, %i.gc
  %i.ge = fmul <2 x float> %i.cg, %.sroa.010.0.i.i.i391
  %i.gf = shufflevector <2 x float> %.sroa.010.0.i.i.i391, <2 x float> %.sroa.4.0.i.i.i392, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.gg = fmul <2 x float> %.sroa.0929.0.copyload, %i.gf
  %i.gh = fsub <2 x float> %i.ge, %i.gg           ; 2 uses
  %i.gi = shufflevector <2 x float> %.sroa.4.0.i.i.i392, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.gj = fmul <2 x float> %i.ch, %i.gi
  %i.gk = fmul <2 x float> %i.cg, %i.gi
  %i.gl = fadd <2 x float> %i.gj, %i.gh           ; 2 uses
  %i.gm = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gn = insertelement <2 x float> %i.gm, float %i.gd, i64 0
  %i.go = fadd <2 x float> %i.gk, %i.gn           ; 2 uses
  %i.gp = fmul <2 x float> %i.gf, %i.gl
  %i.gq = shufflevector <2 x float> %.sroa.4.0.i.i.i392, <2 x float> %.sroa.010.0.i.i.i391, <2 x i32> <i32 0, i32 2>
  %i.gr = fmul <2 x float> %i.gq, %i.go
  %i.gs = fsub <2 x float> %i.gp, %i.gr
  %foldExtExtBinop2452 = fmul <2 x float> %.sroa.010.0.i.i.i391, %i.go
  %foldExtExtBinop2454 = fmul <2 x float> %.sroa.010.0.i.i.i391, %i.gl
  %shift2456 = shufflevector <2 x float> %foldExtExtBinop2454, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2457 = fsub <2 x float> %foldExtExtBinop2452, %shift2456
  %i.gt = fmul <2 x float> %i.gs, splat (float 2.000000e+00)
  %i.gu = fadd <2 x float> %.sroa.0929.0.copyload, %i.gt
  %i.gv = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gw = insertelement <2 x float> %i.gv, float %i.fw, i64 1
  %i.gx = fsub <2 x float> %i.gw, %i.gu
  %i.gy = fsub <2 x float> %i.gx, %i.fb           ; 4 uses
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ha = fmul <2 x float> %i.ep, %i.gy
  %i.hb = fmul <2 x float> %i.ei, %i.gy
  %i.hc = fmul <2 x float> %i.dx, %.sroa.010.0.i.i.i391 ; 2 uses
  %shift2459 = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2460 = fsub <2 x float> %i.hc, %shift2459
  %i.hd = shufflevector <2 x float> %.sroa.4.0.i.i.i, <2 x float> %.sroa.010.0.i.i.i, <4 x i32> <i32 poison, i32 0, i32 3, i32 2>
  %i.he = shufflevector <2 x float> %foldExtExtBinop2457, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> %i.hd, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.hg = shufflevector <2 x float> %.sroa.010.0.i.i.i391, <2 x float> %.sroa.4.0.i.i.i392, <4 x i32> <i32 poison, i32 1, i32 2, i32 2>
  %i.hh = insertelement <4 x float> %i.hg, float 2.000000e+00, i64 0
  %i.hi = fmul <4 x float> %i.hf, %i.hh           ; 3 uses
  %i.hj = extractelement <4 x float> %i.hi, i64 0
  %i.hk = fadd float %.sroa.6932.0.copyload, %i.hj
  %i.hl = fsub float %i.ga, %i.hk
  %i.hm = fsub float %i.hl, %i.fc                 ; 3 uses
  %i.hn = insertelement <2 x float> %i.gz, float %i.hm, i64 1 ; 2 uses
  %i.ho = fmul <2 x float> %.sroa.010.0.i.i.i, %i.hn
  %i.hp = insertelement <2 x float> %i.gz, float %i.hm, i64 0 ; 2 uses
  %i.hq = fmul <2 x float> %.sroa.010.0.i.i.i, %i.hp
  %i.hr = fsub <2 x float> %i.ho, %i.hb
  %i.hs = fsub <2 x float> %i.ha, %i.hq
  %i.ht = fmul <2 x float> %i.el, %i.hp
  %i.hu = fmul <2 x float> %i.el, %i.hn
  %i.hv = fsub <2 x float> %i.hr, %i.ht           ; 2 uses
  %i.hw = fsub <2 x float> %i.hs, %i.hu           ; 2 uses
  %i.hx = fmul <2 x float> %i.ei, %i.hv
  %i.hy = fmul <2 x float> %i.ep, %i.hw
  %i.hz = fsub <2 x float> %i.hx, %i.hy
  %foldExtExtBinop2462 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.hw
  %foldExtExtBinop2464 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.hv
  %shift2466 = shufflevector <2 x float> %foldExtExtBinop2464, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2467 = fsub <2 x float> %foldExtExtBinop2462, %shift2466
  %i.ia = extractelement <2 x float> %foldExtExtBinop2467, i64 0
  %i.ib = fmul <2 x float> %i.hz, splat (float 2.000000e+00)
  %i.ic = fadd <2 x float> %i.gy, %i.ib
  %i.id = fmul float %i.ia, 2.000000e+00
  %i.ie = fadd float %i.hm, %i.id
  %foldExtExtBinop2469 = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.010.0.i.i.i391
  %i.if = shufflevector <4 x float> %i.hi, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ig = shufflevector <4 x float> %i.hi, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> %foldExtExtBinop2469, <2 x i32> <i32 0, i32 2>
  %i.ii = fsub <2 x float> %i.if, %i.ih
  %i.ij = fmul <2 x float> %i.el, %.sroa.010.0.i.i.i391
  %i.ik = fadd <2 x float> %i.ij, %i.ii
  %i.il = fmul <2 x float> %.sroa.010.0.i.i.i, %i.gi
  %i.im = fsub <2 x float> %i.ik, %i.il
  %i.in = fmul <2 x float> %i.dw, %.sroa.4.0.i.i.i392 ; 2 uses
  %foldExtExtBinop2471 = fadd <2 x float> %foldExtExtBinop2460, %i.in
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.251.8.vec.insert.i = fsub <2 x float> %foldExtExtBinop2471, %i.io
  %i.ip = shufflevector <2 x float> %.sroa.010.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.iq = shufflevector <2 x float> %.sroa.010.0.i.i.i391, <2 x float> %.sroa.4.0.i.i.i392, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ir = fmul <4 x float> %i.ip, %i.iq           ; 4 uses
  %8 = shufflevector <4 x float> %i.ir, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %9 = shufflevector <4 x float> %i.ir, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %10 = shufflevector <4 x float> %i.ir, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %11 = shufflevector <4 x float> %i.ir, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %12 = fadd <2 x float> %10, %11
  %13 = fadd <2 x float> %9, %12
  %14 = fadd <2 x float> %8, %13
  %.sroa.251.12.vec.insert.i = shufflevector <2 x float> %.sroa.251.8.vec.insert.i, <2 x float> %14, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.ic, ptr %i.az, align 8, !tbaa !16
  store float %i.ie, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !16
  store <2 x float> %i.im, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !16
  store <2 x float> %.sroa.251.12.vec.insert.i, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %6, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0)
  %i.is = load float, ptr %i.be, align 4, !tbaa !26 ; 8 uses
  %.sroa.0218.0.copyload = load <2 x float>, ptr %i.bg, align 8 ; 5 uses
  %.sroa.2219.0.copyload = load float, ptr %.sroa.2219.0..sroa_idx, align 8 ; 4 uses
  %i.it = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2219.0.copyload
  %i.iu = fmul <2 x float> %i.ei, %.sroa.0218.0.copyload
  %i.iv = shufflevector <2 x float> %.sroa.0218.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iw = insertelement <2 x float> %i.iv, float %.sroa.2219.0.copyload, i64 1
  %i.ix = fmul <2 x float> %.sroa.010.0.i.i.i, %i.iw
  %i.iy = fsub <2 x float> %i.ix, %i.iu
  %i.iz = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0218.0.copyload ; 2 uses
  %i.ja = extractelement <2 x float> %i.iz, i64 0
  %i.jb = fsub float %i.ja, %i.it
  %i.jc = extractelement <2 x float> %i.iz, i64 1
  %i.jd = fadd float %i.jc, %i.jb                 ; 2 uses
  %i.je = shufflevector <2 x float> %.sroa.0218.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jf = insertelement <2 x float> %i.je, float %.sroa.2219.0.copyload, i64 0
  %i.jg = fmul <2 x float> %i.el, %i.jf
  %i.jh = fadd <2 x float> %i.jg, %i.iy           ; 3 uses
  %i.ji = fmul <2 x float> %i.ei, %i.jh
  %i.jj = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jk = insertelement <2 x float> %i.jj, float %i.jd, i64 0
  %i.jl = fmul <2 x float> %i.ep, %i.jk
  %i.jm = fsub <2 x float> %i.ji, %i.jl
  %i.jn = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.jd
  %foldExtExtBinop2488 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.jh
  %i.jo = extractelement <2 x float> %foldExtExtBinop2488, i64 1
  %i.jp = fsub float %i.jn, %i.jo
  %i.jq = fmul <2 x float> %i.jm, splat (float 2.000000e+00)
  %i.jr = fadd <2 x float> %.sroa.0218.0.copyload, %i.jq ; 20 uses
  %i.js = fmul float %i.jp, 2.000000e+00
  %i.jt = fadd float %.sroa.2219.0.copyload, %i.js ; 19 uses
  %.sroa.0207.0.copyload = load <2 x float>, ptr %6, align 8 ; 22 uses
  %.sroa.2208.0.copyload = load float, ptr %.sroa.2208.0..sroa_idx, align 8 ; 19 uses
  %.sroa.0197.0.copyload = load <2 x float>, ptr %i.bh, align 4 ; 22 uses
  %.sroa.2198.0.copyload = load float, ptr %.sroa.2198.0..sroa_idx, align 4 ; 19 uses
  %i.ju = add nsw i32 %i.cv, 1                    ; 6 uses
  %i.jv = add nuw nsw i32 %.0318, 1               ; 2 uses
  %i.jw = fcmp ugt float %i.is, 0.000000e+00
  br i1 %i.jw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %b3GetSweepTransform.exit421
  store float %i.is, ptr %i.bf, align 4
  store i32 %i.ju, ptr %i.bi, align 4
  store i32 %.lcssa116111721986, ptr %i.bs, align 4
  store i32 %i.cu, ptr %i.bt, align 4
  %i.jx = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2208.0.copyload
  %i.jy = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jz = insertelement <2 x float> %i.jy, float %.sroa.2208.0.copyload, i64 1
  %i.ka = fmul <2 x float> %.sroa.010.0.i.i.i, %i.jz
  %i.kb = fmul <2 x float> %i.ei, %.sroa.0207.0.copyload
  %i.kc = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2198.0.copyload
  %i.kd = shufflevector <2 x float> %.sroa.0197.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ke = insertelement <2 x float> %i.kd, float %.sroa.2198.0.copyload, i64 1
  %i.kf = fmul <2 x float> %.sroa.010.0.i.i.i, %i.ke
  %i.kg = fmul <2 x float> %i.ei, %.sroa.0197.0.copyload
  store i32 2, ptr %0, align 4, !tbaa !86
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !82
  %i.kh = load float, ptr %i.z, align 4, !tbaa !85 ; 2 uses
  %i.ki = fmul float %i.jt, %i.kh
  %i.kj = load float, ptr %i.ab, align 4, !tbaa !85 ; 2 uses
  %i.kk = fmul float %i.jt, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.km = fsub <2 x float> %i.ka, %i.kb
  %i.kn = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0207.0.copyload ; 2 uses
  %i.ko = extractelement <2 x float> %i.kn, i64 0
  %i.kp = fsub float %i.ko, %i.jx
  %i.kq = extractelement <2 x float> %i.kn, i64 1
  %i.kr = fadd float %i.kq, %i.kp                 ; 2 uses
  %i.ks = insertelement <2 x float> %i.jy, float %.sroa.2208.0.copyload, i64 0
  %i.kt = fmul <2 x float> %i.el, %i.ks
  %i.ku = fadd <2 x float> %i.kt, %i.km           ; 3 uses
  %i.kv = fmul <2 x float> %i.ei, %i.ku
  %i.kw = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kx = insertelement <2 x float> %i.kw, float %i.kr, i64 0
  %i.ky = fmul <2 x float> %i.ep, %i.kx
  %i.kz = fsub <2 x float> %i.kv, %i.ky
  %i.la = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.kr
  %foldExtExtBinop2490 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.ku
  %i.lb = extractelement <2 x float> %foldExtExtBinop2490, i64 1
  %i.lc = fsub float %i.la, %i.lb
  %i.ld = fmul <2 x float> %i.kz, splat (float 2.000000e+00)
  %i.le = fadd <2 x float> %.sroa.0207.0.copyload, %i.ld
  %i.lf = fmul float %i.lc, 2.000000e+00
  %i.lg = fadd float %.sroa.2208.0.copyload, %i.lf
  %i.lh = fadd <2 x float> %i.fb, %i.le
  %i.li = fadd float %i.fc, %i.lg
  %i.lj = fsub <2 x float> %i.kf, %i.kg
  %i.lk = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0197.0.copyload ; 2 uses
  %i.ll = extractelement <2 x float> %i.lk, i64 0
  %i.lm = fsub float %i.ll, %i.kc
  %i.ln = extractelement <2 x float> %i.lk, i64 1
  %i.lo = fadd float %i.ln, %i.lm                 ; 2 uses
  %i.lp = insertelement <2 x float> %i.kd, float %.sroa.2198.0.copyload, i64 0
  %i.lq = fmul <2 x float> %i.el, %i.lp
  %i.lr = fadd <2 x float> %i.lq, %i.lj           ; 3 uses
  %i.ls = fmul <2 x float> %i.ei, %i.lr
  %i.lt = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lu = insertelement <2 x float> %i.lt, float %i.lo, i64 0
  %i.lv = fmul <2 x float> %i.ep, %i.lu
  %i.lw = fsub <2 x float> %i.ls, %i.lv
  %i.lx = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.lo
  %foldExtExtBinop2492 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.lr
  %i.ly = extractelement <2 x float> %foldExtExtBinop2492, i64 1
  %i.lz = fsub float %i.lx, %i.ly
  %i.ma = fmul <2 x float> %i.lw, splat (float 2.000000e+00)
  %i.mb = fadd <2 x float> %.sroa.0197.0.copyload, %i.ma
  %i.mc = fmul float %i.lz, 2.000000e+00
  %i.md = fadd float %.sroa.2198.0.copyload, %i.mc
  %i.me = fadd <2 x float> %i.fb, %i.mb
  %i.mf = fadd float %i.fc, %i.md
  %i.mg = insertelement <2 x float> poison, float %i.kh, i64 0
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mi = fmul <2 x float> %i.jr, %i.mh
  %i.mj = fadd <2 x float> %i.lh, %i.mi
  %i.mk = fadd float %i.li, %i.ki
  %i.ml = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.mm = shufflevector <2 x float> %i.ml, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mn = fmul <2 x float> %i.jr, %i.mm
  %i.mo = fsub <2 x float> %i.me, %i.mn
  %i.mp = fsub float %i.mf, %i.kk
  %i.mq = fmul <2 x float> %i.mj, splat (float 5.000000e-01)
  %i.mr = fmul <2 x float> %i.mo, splat (float 5.000000e-01)
  %i.ms = fadd <2 x float> %i.mq, %i.mr
  %i.mt = fmul float %i.mk, 5.000000e-01
  %i.mu = fmul float %i.mp, 5.000000e-01
  %i.mv = fadd float %i.mt, %i.mu
  %i.mw = fadd <2 x float> %.sroa.8970.0.copyload, %i.ms
  %i.mx = fadd float %.sroa.12975.0.copyload, %i.mv
  store <2 x float> %i.mw, ptr %i.kl, align 4, !tbaa !16
  store float %i.mx, ptr %.sroa.4172.0..sroa_idx, align 4, !tbaa !16
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.jr, ptr %i.my, align 4, !tbaa !16
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.jt, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !16
  br label %.thread1087

bb.f:                                             ; preds = %b3GetSweepTransform.exit421
  %i.mz = fcmp ugt float %i.is, %i.bj
  br i1 %i.mz, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store float %i.is, ptr %i.bf, align 4
  store i32 %i.ju, ptr %i.bi, align 4
  store i32 %.lcssa116111721986, ptr %i.bs, align 4
  store i32 %i.cu, ptr %i.bt, align 4
  %i.na = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2208.0.copyload
  %i.nb = shufflevector <2 x float> %.sroa.0207.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nc = insertelement <2 x float> %i.nb, float %.sroa.2208.0.copyload, i64 1
  %i.nd = fmul <2 x float> %.sroa.010.0.i.i.i, %i.nc
  %i.ne = fmul <2 x float> %i.ei, %.sroa.0207.0.copyload
  %i.nf = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.2198.0.copyload
  %i.ng = shufflevector <2 x float> %.sroa.0197.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nh = insertelement <2 x float> %i.ng, float %.sroa.2198.0.copyload, i64 1
  %i.ni = fmul <2 x float> %.sroa.010.0.i.i.i, %i.nh
  %i.nj = fmul <2 x float> %i.ei, %.sroa.0197.0.copyload
  store i32 3, ptr %0, align 4, !tbaa !86
  %i.nk = load float, ptr %i.z, align 4, !tbaa !85 ; 2 uses
  %i.nl = fmul float %i.jt, %i.nk
  %i.nm = load float, ptr %i.ab, align 4, !tbaa !85 ; 2 uses
  %i.nn = fmul float %i.jt, %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.np = fsub <2 x float> %i.nd, %i.ne
  %i.nq = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0207.0.copyload ; 2 uses
  %i.nr = extractelement <2 x float> %i.nq, i64 0
  %i.ns = fsub float %i.nr, %i.na
  %i.nt = extractelement <2 x float> %i.nq, i64 1
  %i.nu = fadd float %i.nt, %i.ns                 ; 2 uses
  %i.nv = insertelement <2 x float> %i.nb, float %.sroa.2208.0.copyload, i64 0
  %i.nw = fmul <2 x float> %i.el, %i.nv
  %i.nx = fadd <2 x float> %i.nw, %i.np           ; 3 uses
  %i.ny = fmul <2 x float> %i.ei, %i.nx
  %i.nz = shufflevector <2 x float> %i.nx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.oa = insertelement <2 x float> %i.nz, float %i.nu, i64 0
  %i.ob = fmul <2 x float> %i.ep, %i.oa
  %i.oc = fsub <2 x float> %i.ny, %i.ob
  %i.od = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.nu
  %foldExtExtBinop2494 = fmul <2 x float> %.sroa.010.0.i.i.i, %i.nx
  %i.oe = extractelement <2 x float> %foldExtExtBinop2494, i64 1
  %i.of = fsub float %i.od, %i.oe
  %i.og = fmul <2 x float> %i.oc, splat (float 2.000000e+00)
  %i.oh = fadd <2 x float> %.sroa.0207.0.copyload, %i.og
  %i.oi = fmul float %i.of, 2.000000e+00
  %i.oj = fadd float %.sroa.2208.0.copyload, %i.oi
  %i.ok = fadd <2 x float> %i.fb, %i.oh
  %i.ol = fadd float %i.fc, %i.oj
  %i.om = fsub <2 x float> %i.ni, %i.nj
  %i.on = fmul <2 x float> %.sroa.4.0.i.i.i, %.sroa.0197.0.copyload ; 2 uses
  %i.oo = extractelement <2 x float> %i.on, i64 0
  %i.op = fsub float %i.oo, %i.nf
  %i.oq = extractelement <2 x float> %i.on, i64 1
  %i.or = fadd float %i.oq, %i.op                 ; 2 uses
  %i.os = insertelement <2 x float> %i.ng, float %.sroa.2198.0.copyload, i64 0
end_hunk_1
