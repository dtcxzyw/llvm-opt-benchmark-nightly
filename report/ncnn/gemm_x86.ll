Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86?download=true
inline.NumInlined: 231
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib:bb.a
    i32 4, label %bb.cv
  ]

bb.cu:                                            ; preds = %bb.ct
  %i.aic = load <8 x float>, ptr %.271137, align 1, !tbaa !87 ; 2 uses
  %i.aid = shufflevector <8 x float> %i.aic, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aie = shufflevector <8 x float> %i.aic, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aif = getelementptr inbounds nuw i8, ptr %.271137, i64 32
  br label %.thread858

bb.cv:                                            ; preds = %bb.ct
  %i.aig = load <4 x float>, ptr %.271137, align 1, !tbaa !87 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.271137, i64 16
  br label %.thread858

bb.cw:                                            ; preds = %.lr.ph1138
  %i.aii = load <8 x float>, ptr %.913051136, align 1, !tbaa !87 ; 2 uses
  %i.aij = shufflevector <8 x float> %i.aii, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aik = shufflevector <8 x float> %i.aii, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  br label %.thread858

.thread858:                                       ; preds = %bb.ct, %bb.cs, %.thread849, %bb.cu, %bb.cp, %bb.cv, %bb.cw
  %.3654 = phi nsz <4 x float> [ zeroinitializer, %bb.cp ], [ %i.aig, %bb.cv ], [ zeroinitializer, %bb.ct ], [ %i.aik, %bb.cw ], [ %i.aie, %bb.cu ], [ %i.ahu, %.thread849 ], [ %i.aib, %bb.cs ] ; 3 uses
  %.3649 = phi nsz <4 x float> [ zeroinitializer, %bb.cp ], [ %i.aig, %bb.cv ], [ zeroinitializer, %bb.ct ], [ %i.aij, %bb.cw ], [ %i.aid, %bb.cu ], [ %i.ahu, %.thread849 ], [ %i.ahx, %bb.cs ] ; 3 uses
  %.29 = phi ptr [ null, %bb.cp ], [ %i.aih, %bb.cv ], [ %.271137, %bb.ct ], [ %.271137, %bb.cw ], [ %i.aif, %bb.cu ], [ %.271137, %.thread849 ], [ %.271137, %bb.cs ] ; 2 uses
  br i1 %i.as, label %.lr.ph1128.preheader, label %._crit_edge1129

.lr.ph1128.preheader:                             ; preds = %.thread858
  br i1 %i.bd, label %.lr.ph1128.epil.preheader, label %.lr.ph1128

.lr.ph1128:                                       ; preds = %.lr.ph1128.preheader, %.lr.ph1128
  %.012771126 = phi ptr [ %i.ajl, %.lr.ph1128 ], [ %.112791191, %.lr.ph1128.preheader ] ; 5 uses
  %.513741125 = phi ptr [ %i.ajm, %.lr.ph1128 ], [ %.413731134, %.lr.ph1128.preheader ] ; 3 uses
  %.46501124 = phi <4 x float> [ %i.aje, %.lr.ph1128 ], [ %.3649, %.lr.ph1128.preheader ]
  %.46551123 = phi <4 x float> [ %i.ajk, %.lr.ph1128 ], [ %.3654, %.lr.ph1128.preheader ]
  %niter2261 = phi i32 [ %niter2261.next.1, %.lr.ph1128 ], [ 0, %.lr.ph1128.preheader ]
  %i.ail = load <4 x float>, ptr %.513741125, align 16, !tbaa !87 ; 2 uses
  %i.aim = load float, ptr %.012771126, align 4, !tbaa !67
  %i.ain = insertelement <4 x float> poison, float %i.aim, i64 0
  %i.aio = shufflevector <4 x float> %i.ain, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aip = fmul fast <4 x float> %i.aio, %i.ail
  %i.aiq = fadd fast <4 x float> %i.aip, %.46501124
  %i.air = getelementptr inbounds nuw i8, ptr %.012771126, i64 4
  %i.ais = load float, ptr %i.air, align 4, !tbaa !67
  %i.ait = insertelement <4 x float> poison, float %i.ais, i64 0
  %i.aiu = shufflevector <4 x float> %i.ait, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aiv = fmul fast <4 x float> %i.aiu, %i.ail
  %i.aiw = fadd fast <4 x float> %i.aiv, %.46551123
  %i.aix = getelementptr inbounds nuw i8, ptr %.012771126, i64 8
  %i.aiy = getelementptr inbounds nuw i8, ptr %.513741125, i64 16
  %i.aiz = load <4 x float>, ptr %i.aiy, align 16, !tbaa !87 ; 2 uses
  %i.aja = load float, ptr %i.aix, align 4, !tbaa !67
  %i.ajb = insertelement <4 x float> poison, float %i.aja, i64 0
  %i.ajc = shufflevector <4 x float> %i.ajb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajd = fmul fast <4 x float> %i.ajc, %i.aiz
  %i.aje = fadd fast <4 x float> %i.ajd, %i.aiq   ; 3 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %.012771126, i64 12
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !67
  %i.ajh = insertelement <4 x float> poison, float %i.ajg, i64 0
  %i.aji = shufflevector <4 x float> %i.ajh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajj = fmul fast <4 x float> %i.aji, %i.aiz
  %i.ajk = fadd fast <4 x float> %i.ajj, %i.aiw   ; 3 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.012771126, i64 16 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.513741125, i64 32 ; 2 uses
  %niter2261.next.1 = add nuw nsw i32 %niter2261, 2 ; 2 uses
  %niter2261.ncmp.1 = icmp eq i32 %niter2261.next.1, %unroll_iter2260
  br i1 %niter2261.ncmp.1, label %._crit_edge1129.loopexit.unr-lcssa, label %.lr.ph1128, !llvm.loop !338

._crit_edge1129.loopexit.unr-lcssa:               ; preds = %.lr.ph1128
  br i1 %lcmp.mod2256.not, label %._crit_edge1129.loopexit, label %.lr.ph1128.epil.preheader

.lr.ph1128.epil.preheader:                        ; preds = %._crit_edge1129.loopexit.unr-lcssa, %.lr.ph1128.preheader
  %.012771126.epil.init = phi ptr [ %.112791191, %.lr.ph1128.preheader ], [ %i.ajl, %._crit_edge1129.loopexit.unr-lcssa ] ; 2 uses
  %.513741125.epil.init = phi ptr [ %.413731134, %.lr.ph1128.preheader ], [ %i.ajm, %._crit_edge1129.loopexit.unr-lcssa ]
  %.46501124.epil.init = phi <4 x float> [ %.3649, %.lr.ph1128.preheader ], [ %i.aje, %._crit_edge1129.loopexit.unr-lcssa ]
  %.46551123.epil.init = phi <4 x float> [ %.3654, %.lr.ph1128.preheader ], [ %i.ajk, %._crit_edge1129.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2259)
  %i.ajn = load <4 x float>, ptr %.513741125.epil.init, align 16, !tbaa !87 ; 2 uses
  %i.ajo = load float, ptr %.012771126.epil.init, align 4, !tbaa !67
  %i.ajp = insertelement <4 x float> poison, float %i.ajo, i64 0
  %i.ajq = shufflevector <4 x float> %i.ajp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajr = fmul fast <4 x float> %i.ajq, %i.ajn
  %i.ajs = fadd fast <4 x float> %i.ajr, %.46501124.epil.init
  %i.ajt = getelementptr inbounds nuw i8, ptr %.012771126.epil.init, i64 4
  %i.aju = load float, ptr %i.ajt, align 4, !tbaa !67
  %i.ajv = insertelement <4 x float> poison, float %i.aju, i64 0
  %i.ajw = shufflevector <4 x float> %i.ajv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajx = fmul fast <4 x float> %i.ajw, %i.ajn
  %i.ajy = fadd fast <4 x float> %i.ajx, %.46551123.epil.init
  br label %._crit_edge1129.loopexit

._crit_edge1129.loopexit:                         ; preds = %._crit_edge1129.loopexit.unr-lcssa, %.lr.ph1128.epil.preheader
  %.lcssa2190 = phi <4 x float> [ %i.aje, %._crit_edge1129.loopexit.unr-lcssa ], [ %i.ajs, %.lr.ph1128.epil.preheader ]
  %.lcssa2189 = phi <4 x float> [ %i.ajk, %._crit_edge1129.loopexit.unr-lcssa ], [ %i.ajy, %.lr.ph1128.epil.preheader ]
  %i.ajz = getelementptr i8, ptr %.413731134, i64 %i.ay
  %scevgep1589 = getelementptr i8, ptr %i.ajz, i64 16
  br label %._crit_edge1129

._crit_edge1129:                                  ; preds = %._crit_edge1129.loopexit, %.thread858
  %.4655.lcssa = phi <4 x float> [ %.3654, %.thread858 ], [ %.lcssa2189, %._crit_edge1129.loopexit ] ; 3 uses
  %.4650.lcssa = phi <4 x float> [ %.3649, %.thread858 ], [ %.lcssa2190, %._crit_edge1129.loopexit ] ; 3 uses
  %.51374.lcssa = phi ptr [ %.413731134, %.thread858 ], [ %scevgep1589, %._crit_edge1129.loopexit ] ; 2 uses
  br i1 %9, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %._crit_edge1129
  store <4 x float> %.4650.lcssa, ptr %.413631135, align 1, !tbaa !87
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %.413631135, i64 %i.k
  store <4 x float> %.4655.lcssa, ptr %i.aka, align 1, !tbaa !87
  %i.akb = getelementptr inbounds nuw i8, ptr %.413631135, i64 16
  br label %bb.cz

bb.cy:                                            ; preds = %._crit_edge1129
  %i.akc = shufflevector <4 x float> %.4650.lcssa, <4 x float> %.4655.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.akd = shufflevector <4 x float> %.4650.lcssa, <4 x float> %.4655.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.akc, ptr %.913051136, align 1, !tbaa !87
  %i.ake = getelementptr inbounds nuw i8, ptr %.913051136, i64 16
  store <4 x float> %i.akd, ptr %i.ake, align 1, !tbaa !87
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.51364 = phi ptr [ %i.akb, %bb.cx ], [ %.413631135, %bb.cy ] ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %.913051136, i64 32 ; 2 uses
  %i.akg = add nuw nsw i32 %.213811133, 4         ; 3 uses
  %i.akh = or disjoint i32 %i.akg, 3
  %i.aki = icmp slt i32 %i.akh, %6
  br i1 %i.aki, label %.lr.ph1138, label %.preheader915, !llvm.loop !339

.preheader914:                                    ; preds = %bb.dk, %.preheader915
  %.31382.lcssa = phi i32 [ %.21381.lcssa, %.preheader915 ], [ %i.amn, %bb.dk ] ; 2 uses
  %.61375.lcssa = phi ptr [ %.41373.lcssa, %.preheader915 ], [ %.71376.lcssa, %bb.dk ]
  %.61365.lcssa = phi ptr [ %.41363.lcssa, %.preheader915 ], [ %.71366, %bb.dk ]
  %.101306.lcssa = phi ptr [ %.91305.lcssa, %.preheader915 ], [ %i.amm, %bb.dk ] ; 2 uses
  %.30.lcssa = phi ptr [ %.27.lcssa, %.preheader915 ], [ %.32, %bb.dk ] ; 2 uses
  %i.akj = icmp slt i32 %.31382.lcssa, %6
  br i1 %i.akj, label %.lr.ph1184.preheader, label %._crit_edge1185

.lr.ph1184.preheader:                             ; preds = %.preheader914
  %i.akk = getelementptr i8, ptr %.112791191, i64 %i.bj
  br label %.lr.ph1184

.lr.ph1163:                                       ; preds = %.lr.ph1163.preheader, %bb.dk
  %.301162 = phi ptr [ %.32, %bb.dk ], [ %.27.lcssa, %.lr.ph1163.preheader ] ; 11 uses
  %.1013061161 = phi ptr [ %i.amm, %bb.dk ], [ %.91305.lcssa, %.lr.ph1163.preheader ] ; 3 uses
  %.613651160 = phi ptr [ %.71366, %bb.dk ], [ %.41363.lcssa, %.lr.ph1163.preheader ] ; 5 uses
  %.613751159 = phi ptr [ %.71376.lcssa, %bb.dk ], [ %.41373.lcssa, %.lr.ph1163.preheader ] ; 5 uses
  %.313821158 = phi i32 [ %i.amn, %bb.dk ], [ %.21381.lcssa, %.lr.ph1163.preheader ]
  br i1 %i.aq, label %bb.da, label %bb.dh

bb.da:                                            ; preds = %.lr.ph1163
  %.not1398 = icmp eq ptr %.301162, null
  br i1 %.not1398, label %.thread870, label %bb.db

bb.db:                                            ; preds = %bb.da
  br i1 %i.ar, label %.thread862, label %bb.dc

.thread862:                                       ; preds = %bb.db
  %i.akl = load float, ptr %.301162, align 4, !tbaa !67
  %i.akm = insertelement <4 x float> poison, float %i.akl, i64 0
  %i.akn = shufflevector <4 x float> %i.akm, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread870

bb.dc:                                            ; preds = %bb.db
  br i1 %or.cond15, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ako = load <2 x float>, ptr %.301162, align 4, !tbaa !67
  %i.akp = shufflevector <2 x float> %i.ako, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.thread870

bb.de:                                            ; preds = %bb.dc
  switch i32 %2, label %.thread870 [
    i32 3, label %bb.df
    i32 4, label %bb.dg
  ]

bb.df:                                            ; preds = %bb.de
  %i.akq = load <4 x float>, ptr %.301162, align 4, !tbaa !67
  %i.akr = getelementptr inbounds nuw i8, ptr %.301162, i64 16
  br label %.thread870

bb.dg:                                            ; preds = %bb.de
  %i.aks = load <2 x float>, ptr %.301162, align 4, !tbaa !67
  %i.akt = shufflevector <2 x float> %i.aks, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aku = getelementptr inbounds nuw i8, ptr %.301162, i64 8
  br label %.thread870

bb.dh:                                            ; preds = %.lr.ph1163
  %i.akv = load <4 x float>, ptr %.1013061161, align 4, !tbaa !67
  br label %.thread870

.thread870:                                       ; preds = %bb.de, %bb.dd, %.thread862, %bb.df, %bb.da, %bb.dg, %bb.dh
  %.32 = phi ptr [ %i.aku, %bb.dg ], [ %.301162, %bb.de ], [ null, %bb.da ], [ %.301162, %bb.dh ], [ %i.akr, %bb.df ], [ %.301162, %.thread862 ], [ %.301162, %bb.dd ] ; 2 uses
  %i.akw = phi <4 x float> [ %i.akt, %bb.dg ], [ zeroinitializer, %bb.de ], [ zeroinitializer, %bb.da ], [ %i.akv, %bb.dh ], [ %i.akq, %bb.df ], [ %i.akn, %.thread862 ], [ %i.akp, %bb.dd ] ; 6 uses
  br i1 %i.as, label %.lr.ph1151.preheader, label %._crit_edge1152

.lr.ph1151.preheader:                             ; preds = %.thread870
  br i1 %min.iters.check1922, label %.lr.ph1151.preheader2172, label %vector.ph1923

vector.ph1923:                                    ; preds = %.lr.ph1151.preheader
  %i.akx = getelementptr i8, ptr %.613751159, i64 %i.bg
  %10 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.akw, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %11 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.akw, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %12 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.akw, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.aky = shufflevector <4 x float> %i.akw, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body1925

vector.body1925:                                  ; preds = %vector.body1925, %vector.ph1923
  %index1926 = phi i64 [ 0, %vector.ph1923 ], [ %index.next1939, %vector.body1925 ] ; 2 uses
  %vec.phi1927 = phi <4 x float> [ %10, %vector.ph1923 ], [ %i.alh, %vector.body1925 ]
  %vec.phi1928 = phi <4 x float> [ %11, %vector.ph1923 ], [ %i.alf, %vector.body1925 ]
  %vec.phi1929 = phi <4 x float> [ %12, %vector.ph1923 ], [ %i.ald, %vector.body1925 ]
  %vec.phi1930 = phi <4 x float> [ %i.aky, %vector.ph1923 ], [ %i.alb, %vector.body1925 ]
  %i.akz = shl i64 %index1926, 3                  ; 2 uses
  %next.gep1931 = getelementptr i8, ptr %.112791191, i64 %i.akz
  %next.gep1932 = getelementptr i8, ptr %.613751159, i64 %i.akz
  %wide.vec1933 = load <8 x float>, ptr %next.gep1931, align 4, !tbaa !67 ; 2 uses
  %strided.vec1934 = shufflevector <8 x float> %wide.vec1933, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec1935 = shufflevector <8 x float> %wide.vec1933, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %wide.vec1936 = load <8 x float>, ptr %next.gep1932, align 4, !tbaa !67 ; 2 uses
  %strided.vec1937 = shufflevector <8 x float> %wide.vec1936, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec1938 = shufflevector <8 x float> %wide.vec1936, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ala = fmul fast <4 x float> %strided.vec1937, %strided.vec1934
  %i.alb = fadd fast <4 x float> %i.ala, %vec.phi1930 ; 2 uses
  %i.alc = fmul fast <4 x float> %strided.vec1935, %strided.vec1937
  %i.ald = fadd fast <4 x float> %i.alc, %vec.phi1929 ; 2 uses
  %i.ale = fmul fast <4 x float> %strided.vec1938, %strided.vec1934
  %i.alf = fadd fast <4 x float> %i.ale, %vec.phi1928 ; 2 uses
  %i.alg = fmul fast <4 x float> %strided.vec1938, %strided.vec1935
  %i.alh = fadd fast <4 x float> %i.alg, %vec.phi1927 ; 2 uses
  %index.next1939 = add nuw i64 %index1926, 4     ; 2 uses
  %i.ali = icmp eq i64 %index.next1939, %n.vec1924
  br i1 %i.ali, label %middle.block1940, label %vector.body1925, !llvm.loop !340

middle.block1940:                                 ; preds = %vector.body1925
  %i.alj = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.alh)
  %i.alk = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.alf)
  %i.all = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ald)
  %i.alm = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.alb)
  %i.aln = insertelement <4 x float> poison, float %i.alm, i64 0
  %i.alo = insertelement <4 x float> %i.aln, float %i.all, i64 1
  %i.alp = insertelement <4 x float> %i.alo, float %i.alk, i64 2
  %i.alq = insertelement <4 x float> %i.alp, float %i.alj, i64 3 ; 2 uses
  br i1 %cmp.n1941, label %._crit_edge1152.loopexit, label %.lr.ph1151.preheader2172

.lr.ph1151.preheader2172:                         ; preds = %.lr.ph1151.preheader, %middle.block1940
  %.012541150.ph = phi i32 [ 0, %.lr.ph1151.preheader ], [ %i.bf, %middle.block1940 ]
  %.012551149.ph = phi ptr [ %.112791191, %.lr.ph1151.preheader ], [ %i.ahr, %middle.block1940 ]
  %.713761144.ph = phi ptr [ %.613751159, %.lr.ph1151.preheader ], [ %i.akx, %middle.block1940 ]
  %.ph2173 = phi <4 x float> [ %i.akw, %.lr.ph1151.preheader ], [ %i.alq, %middle.block1940 ]
  br label %.lr.ph1151

.lr.ph1151:                                       ; preds = %.lr.ph1151.preheader2172, %.lr.ph1151
  %.012541150 = phi i32 [ %i.ama, %.lr.ph1151 ], [ %.012541150.ph, %.lr.ph1151.preheader2172 ]
  %.012551149 = phi ptr [ %i.aly, %.lr.ph1151 ], [ %.012551149.ph, %.lr.ph1151.preheader2172 ] ; 2 uses
  %.713761144 = phi ptr [ %i.alz, %.lr.ph1151 ], [ %.713761144.ph, %.lr.ph1151.preheader2172 ] ; 2 uses
  %i.alr = phi <4 x float> [ %i.alx, %.lr.ph1151 ], [ %.ph2173, %.lr.ph1151.preheader2172 ]
  %i.als = load <2 x float>, ptr %.012551149, align 4, !tbaa !67
  %i.alt = shufflevector <2 x float> %i.als, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.alu = load <2 x float>, ptr %.713761144, align 4, !tbaa !67
  %i.alv = shufflevector <2 x float> %i.alu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.alw = fmul fast <4 x float> %i.alv, %i.alt
  %i.alx = fadd fast <4 x float> %i.alw, %i.alr   ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.012551149, i64 8
  %i.alz = getelementptr inbounds nuw i8, ptr %.713761144, i64 8
  %i.ama = add nuw nsw i32 %.012541150, 1         ; 2 uses
  %exitcond1592.not = icmp eq i32 %i.ama, %8
  br i1 %exitcond1592.not, label %._crit_edge1152.loopexit, label %.lr.ph1151, !llvm.loop !341

._crit_edge1152.loopexit:                         ; preds = %.lr.ph1151, %middle.block1940
  %i.amb = phi <4 x float> [ %i.alq, %middle.block1940 ], [ %i.alx, %.lr.ph1151 ]
  %i.amc = getelementptr i8, ptr %.613751159, i64 %i.az
  %scevgep1591 = getelementptr i8, ptr %i.amc, i64 8
  br label %._crit_edge1152

._crit_edge1152:                                  ; preds = %._crit_edge1152.loopexit, %.thread870
  %.71376.lcssa = phi ptr [ %.613751159, %.thread870 ], [ %scevgep1591, %._crit_edge1152.loopexit ] ; 2 uses
  %i.amd = phi <4 x float> [ %i.akw, %.thread870 ], [ %i.amb, %._crit_edge1152.loopexit ] ; 5 uses
  br i1 %9, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %._crit_edge1152
  %i.ame = extractelement <4 x float> %i.amd, i64 0
  store float %i.ame, ptr %.613651160, align 4, !tbaa !67
  %i.amf = getelementptr inbounds nuw i8, ptr %.613651160, i64 4
  %i.amg = extractelement <4 x float> %i.amd, i64 2
  store float %i.amg, ptr %i.amf, align 4, !tbaa !67
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %.613651160, i64 %i.k ; 2 uses
  %i.ami = extractelement <4 x float> %i.amd, i64 1
  store float %i.ami, ptr %i.amh, align 4, !tbaa !67
  %i.amj = getelementptr i8, ptr %i.amh, i64 4
  %i.amk = extractelement <4 x float> %i.amd, i64 3
  store float %i.amk, ptr %i.amj, align 4, !tbaa !67
  %i.aml = getelementptr inbounds nuw i8, ptr %.613651160, i64 8
  br label %bb.dk

bb.dj:                                            ; preds = %._crit_edge1152
  store <4 x float> %i.amd, ptr %.1013061161, align 4, !tbaa !67
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.71366 = phi ptr [ %i.aml, %bb.di ], [ %.613651160, %bb.dj ] ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %.1013061161, i64 16 ; 2 uses
  %i.amn = add nuw nsw i32 %.313821158, 2         ; 3 uses
  %i.amo = or disjoint i32 %i.amn, 1
  %i.amp = icmp slt i32 %i.amo, %6
  br i1 %i.amp, label %.lr.ph1163, label %.preheader914, !llvm.loop !342

.lr.ph1184:                                       ; preds = %.lr.ph1184.preheader, %bb.dv
  %.331183 = phi ptr [ %.35, %bb.dv ], [ %.30.lcssa, %.lr.ph1184.preheader ] ; 11 uses
  %.1113071182 = phi ptr [ %i.aon, %bb.dv ], [ %.101306.lcssa, %.lr.ph1184.preheader ] ; 3 uses
  %.813671181 = phi ptr [ %.91368, %bb.dv ], [ %.61365.lcssa, %.lr.ph1184.preheader ] ; 4 uses
  %.813771180 = phi ptr [ %.91378.lcssa, %bb.dv ], [ %.61375.lcssa, %.lr.ph1184.preheader ] ; 5 uses
  %.413831179 = phi i32 [ %i.aoo, %bb.dv ], [ %.31382.lcssa, %.lr.ph1184.preheader ]
  br i1 %i.aq, label %bb.dl, label %bb.ds

bb.dl:                                            ; preds = %.lr.ph1184
  %.not1397 = icmp eq ptr %.331183, null
  br i1 %.not1397, label %.thread884, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  br i1 %i.ar, label %.thread876, label %bb.dn

.thread876:                                       ; preds = %bb.dm
  %i.amq = load float, ptr %.331183, align 4, !tbaa !67
  %i.amr = insertelement <2 x float> poison, float %i.amq, i64 0
  %i.ams = shufflevector <2 x float> %i.amr, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.thread884

bb.dn:                                            ; preds = %bb.dm
  br i1 %or.cond15, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.amt = load <2 x float>, ptr %.331183, align 4, !tbaa !67
  br label %.thread884

bb.dp:                                            ; preds = %bb.dn
  switch i32 %2, label %.thread884 [
    i32 3, label %bb.dq
    i32 4, label %bb.dr
  ]

bb.dq:                                            ; preds = %bb.dp
  %i.amu = load <2 x float>, ptr %.331183, align 4, !tbaa !67
  %i.amv = getelementptr inbounds nuw i8, ptr %.331183, i64 8
  br label %.thread884

bb.dr:                                            ; preds = %bb.dp
  %i.amw = load float, ptr %.331183, align 4, !tbaa !67
  %i.amx = getelementptr inbounds nuw i8, ptr %.331183, i64 4
  %i.amy = insertelement <2 x float> poison, float %i.amw, i64 0
  %i.amz = shufflevector <2 x float> %i.amy, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.thread884

bb.ds:                                            ; preds = %.lr.ph1184
  %i.ana = load <2 x float>, ptr %.1113071182, align 4, !tbaa !67
  br label %.thread884

.thread884:                                       ; preds = %bb.dp, %bb.do, %.thread876, %bb.dq, %bb.dl, %bb.dr, %bb.ds
  %.35 = phi ptr [ %i.amx, %bb.dr ], [ %.331183, %bb.dp ], [ null, %bb.dl ], [ %.331183, %bb.ds ], [ %i.amv, %bb.dq ], [ %.331183, %.thread876 ], [ %.331183, %bb.do ] ; 2 uses
  %i.anb = phi <2 x float> [ %i.amz, %bb.dr ], [ zeroinitializer, %bb.dp ], [ zeroinitializer, %bb.dl ], [ %i.ana, %bb.ds ], [ %i.amu, %bb.dq ], [ %i.ams, %.thread876 ], [ %i.amt, %bb.do ] ; 3 uses
  br i1 %i.as, label %.lr.ph1174.preheader, label %._crit_edge1175

.lr.ph1174.preheader:                             ; preds = %.thread884
  br i1 %min.iters.check, label %.lr.ph1174.preheader2170, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1174.preheader
  %i.anc = getelementptr i8, ptr %.813771180, i64 %i.bk
  %i.and = shufflevector <2 x float> %i.anb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %13 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.and, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ane = shufflevector <4 x float> %i.and, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x float> [ %13, %vector.ph ], [ %i.anp, %vector.body ]
  %vec.phi1907 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.anq, %vector.body ]
  %vec.phi1908 = phi <4 x float> [ %i.ane, %vector.ph ], [ %i.anl, %vector.body ]
  %vec.phi1909 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.anm, %vector.body ]
  %i.anf = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.112791191, i64 %i.anf
  %i.ang = getelementptr i8, ptr %.112791191, i64 %i.anf
  %next.gep1910 = getelementptr i8, ptr %i.ang, i64 32
  %i.anh = shl i64 %index, 2
  %next.gep1911 = getelementptr i8, ptr %.813771180, i64 %i.anh ; 2 uses
  %wide.vec = load <8 x float>, ptr %next.gep, align 4, !tbaa !67 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1912 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1913 = load <8 x float>, ptr %next.gep1910, align 4, !tbaa !67 ; 2 uses
  %strided.vec1914 = shufflevector <8 x float> %wide.vec1913, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1915 = shufflevector <8 x float> %wide.vec1913, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ani = getelementptr i8, ptr %next.gep1911, i64 16
  %wide.load = load <4 x float>, ptr %next.gep1911, align 4, !tbaa !67 ; 2 uses
  %wide.load1916 = load <4 x float>, ptr %i.ani, align 4, !tbaa !67 ; 2 uses
  %i.anj = fmul fast <4 x float> %wide.load, %strided.vec
  %i.ank = fmul fast <4 x float> %wide.load1916, %strided.vec1914
  %i.anl = fadd fast <4 x float> %i.anj, %vec.phi1908 ; 2 uses
  %i.anm = fadd fast <4 x float> %i.ank, %vec.phi1909 ; 2 uses
  %i.ann = fmul fast <4 x float> %strided.vec1912, %wide.load
  %i.ano = fmul fast <4 x float> %strided.vec1915, %wide.load1916
  %i.anp = fadd fast <4 x float> %i.ann, %vec.phi ; 2 uses
  %i.anq = fadd fast <4 x float> %i.ano, %vec.phi1907 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.anr = icmp eq i64 %index.next, %n.vec
  br i1 %i.anr, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.anq, %i.anp
  %i.ans = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx)
  %bin.rdx1917 = fadd fast <4 x float> %i.anm, %i.anl
  %i.ant = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1917)
  %i.anu = insertelement <2 x float> poison, float %i.ant, i64 0
  %i.anv = insertelement <2 x float> %i.anu, float %i.ans, i64 1 ; 2 uses
  br i1 %cmp.n, label %._crit_edge1175.loopexit, label %.lr.ph1174.preheader2170

.lr.ph1174.preheader2170:                         ; preds = %.lr.ph1174.preheader, %middle.block
  %.012421173.ph = phi i32 [ 0, %.lr.ph1174.preheader ], [ %i.bi, %middle.block ]
  %.012431172.ph = phi ptr [ %.112791191, %.lr.ph1174.preheader ], [ %i.akk, %middle.block ]
  %.913781169.ph = phi ptr [ %.813771180, %.lr.ph1174.preheader ], [ %i.anc, %middle.block ]
  %.ph2171 = phi <2 x float> [ %i.anb, %.lr.ph1174.preheader ], [ %i.anv, %middle.block ]
  br label %.lr.ph1174

.lr.ph1174:                                       ; preds = %.lr.ph1174.preheader2170, %.lr.ph1174
  %.012421173 = phi i32 [ %i.aof, %.lr.ph1174 ], [ %.012421173.ph, %.lr.ph1174.preheader2170 ]
  %.012431172 = phi ptr [ %i.aod, %.lr.ph1174 ], [ %.012431172.ph, %.lr.ph1174.preheader2170 ] ; 2 uses
  %.913781169 = phi ptr [ %i.aoe, %.lr.ph1174 ], [ %.913781169.ph, %.lr.ph1174.preheader2170 ] ; 2 uses
  %i.anw = phi <2 x float> [ %i.aoc, %.lr.ph1174 ], [ %.ph2171, %.lr.ph1174.preheader2170 ]
  %i.anx = load float, ptr %.913781169, align 4, !tbaa !67
  %i.any = load <2 x float>, ptr %.012431172, align 4, !tbaa !67
  %i.anz = insertelement <2 x float> poison, float %i.anx, i64 0
  %i.aoa = shufflevector <2 x float> %i.anz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aob = fmul fast <2 x float> %i.any, %i.aoa
  %i.aoc = fadd fast <2 x float> %i.aob, %i.anw   ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %.012431172, i64 8
  %i.aoe = getelementptr inbounds nuw i8, ptr %.913781169, i64 4
  %i.aof = add nuw nsw i32 %.012421173, 1         ; 2 uses
  %exitcond1594.not = icmp eq i32 %i.aof, %8
  br i1 %exitcond1594.not, label %._crit_edge1175.loopexit, label %.lr.ph1174, !llvm.loop !344

._crit_edge1175.loopexit:                         ; preds = %.lr.ph1174, %middle.block
  %i.aog = phi <2 x float> [ %i.anv, %middle.block ], [ %i.aoc, %.lr.ph1174 ]
  %i.aoh = getelementptr i8, ptr %.813771180, i64 %i.ba
  %scevgep1593 = getelementptr i8, ptr %i.aoh, i64 4
  br label %._crit_edge1175

._crit_edge1175:                                  ; preds = %._crit_edge1175.loopexit, %.thread884
  %.91378.lcssa = phi ptr [ %.813771180, %.thread884 ], [ %scevgep1593, %._crit_edge1175.loopexit ]
  %i.aoi = phi <2 x float> [ %i.anb, %.thread884 ], [ %i.aog, %._crit_edge1175.loopexit ] ; 3 uses
  br i1 %9, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %._crit_edge1175
  %i.aoj = extractelement <2 x float> %i.aoi, i64 0
  store float %i.aoj, ptr %.813671181, align 4, !tbaa !67
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %.813671181, i64 %i.k
  %i.aol = extractelement <2 x float> %i.aoi, i64 1
  store float %i.aol, ptr %i.aok, align 4, !tbaa !67
  %i.aom = getelementptr inbounds nuw i8, ptr %.813671181, i64 4
  br label %bb.dv

bb.du:                                            ; preds = %._crit_edge1175
  store <2 x float> %i.aoi, ptr %.1113071182, align 4, !tbaa !67
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.91368 = phi ptr [ %i.aom, %bb.dt ], [ %.813671181, %bb.du ]
  %i.aon = getelementptr inbounds nuw i8, ptr %.1113071182, i64 8 ; 2 uses
  %i.aoo = add nuw nsw i32 %.413831179, 1         ; 2 uses
  %exitcond1595.not = icmp eq i32 %i.aoo, %6
  br i1 %exitcond1595.not, label %._crit_edge1185, label %.lr.ph1184, !llvm.loop !345

._crit_edge1185:                                  ; preds = %bb.dv, %.preheader914
  %.111307.lcssa = phi ptr [ %.101306.lcssa, %.preheader914 ], [ %i.aon, %bb.dv ] ; 2 uses
  %.33.lcssa = phi ptr [ %.30.lcssa, %.preheader914 ], [ %.35, %bb.dv ] ; 2 uses
  %i.aop = getelementptr inbounds [4 x i8], ptr %.112791191, i64 %i.au ; 2 uses
  %indvars.iv.next1597 = add nuw nsw i64 %indvars.iv1596, 2 ; 3 uses
  %i.aoq = icmp slt i64 %indvars.iv.next1597, %invariant.op
  br i1 %i.aoq, label %bb.bo, label %.preheader913.loopexit, !llvm.loop !346

bb.dw:                                            ; preds = %.lr.ph1425, %._crit_edge1418
  %indvars.iv1609 = phi i64 [ %i.aau, %.lr.ph1425 ], [ %indvars.iv.next1610, %._crit_edge1418 ] ; 3 uses
  %.212801424 = phi ptr [ %.11279.lcssa, %.lr.ph1425 ], [ %i.byb, %._crit_edge1418 ] ; 25 uses
  %.361423 = phi ptr [ %.18.lcssa, %.lr.ph1425 ], [ %.47.lcssa, %._crit_edge1418 ] ; 2 uses
  %.1213081422 = phi ptr [ %.61302.lcssa, %.lr.ph1425 ], [ %.171313.lcssa, %._crit_edge1418 ] ; 2 uses
  %i.aor = load ptr, ptr %1, align 8, !tbaa !23
  %i.aos = add nsw i64 %indvars.iv1609, %i.aaf
  %i.aot = mul i64 %i.k, %i.aos
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %i.aot
  %i.aov = getelementptr inbounds [4 x i8], ptr %i.aou, i64 %i.aac ; 2 uses
  %.not = icmp eq ptr %.361423, null
  br i1 %.not, label %bb.ea, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  br i1 %or.cond25, label %.thread888, label %bb.dy

.thread888:                                       ; preds = %bb.dx
  %i.aow = load ptr, ptr %0, align 8, !tbaa !23
  %i.aox = getelementptr inbounds [4 x i8], ptr %i.aow, i64 %i.aaf
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %indvars.iv1609
  br label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.aae, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.aoz = load ptr, ptr %0, align 8, !tbaa !23
  %i.apa = getelementptr inbounds [4 x i8], ptr %i.aoz, i64 %i.aac
  br label %bb.ea

bb.ea:                                            ; preds = %.thread888, %bb.dy, %bb.dz, %bb.dw
  %.38 = phi ptr [ %i.apa, %bb.dz ], [ %.361423, %bb.dy ], [ null, %bb.dw ], [ %i.aoy, %.thread888 ] ; 2 uses
  br i1 %i.aag, label %.lr.ph1249, label %.preheader912

.preheader912:                                    ; preds = %bb.ej, %bb.ea
  %.131309.lcssa = phi ptr [ %.1213081422, %bb.ea ], [ %i.auy, %bb.ej ] ; 2 uses
  %.39.lcssa = phi ptr [ %.38, %bb.ea ], [ %.40, %bb.ej ] ; 2 uses
  %.01232.lcssa = phi ptr [ %i.aov, %bb.ea ], [ %.11233, %bb.ej ] ; 2 uses
  %.01227.lcssa = phi ptr [ %.0.val1, %bb.ea ], [ %.21229.lcssa, %bb.ej ] ; 2 uses
  %.01224.lcssa = phi i32 [ 0, %bb.ea ], [ %i.auz, %bb.ej ] ; 3 uses
  %i.apb = add nuw nsw i32 %.01224.lcssa, 7
  %i.apc = icmp slt i32 %i.apb, %6
  br i1 %i.apc, label %.lr.ph1296, label %.preheader911

.lr.ph1249:                                       ; preds = %bb.ea, %bb.ej
  %.012241247 = phi i32 [ %i.auz, %bb.ej ], [ 0, %bb.ea ] ; 2 uses
  %.012271246 = phi ptr [ %.21229.lcssa, %bb.ej ], [ %.0.val1, %bb.ea ] ; 2 uses
  %.012321245 = phi ptr [ %.11233, %bb.ej ], [ %i.aov, %bb.ea ] ; 5 uses
  %.391244 = phi ptr [ %.40, %bb.ej ], [ %.38, %bb.ea ] ; 9 uses
  %.1313091243 = phi ptr [ %i.auy, %bb.ej ], [ %.1213081422, %bb.ea ] ; 7 uses
  br i1 %i.aah, label %bb.eb, label %bb.ef

bb.eb:                                            ; preds = %.lr.ph1249
  %.not1395 = icmp eq ptr %.391244, null
  br i1 %.not1395, label %bb.eg, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  br i1 %or.cond29, label %.thread890, label %bb.ed

.thread890:                                       ; preds = %bb.ec
  %i.apd = load float, ptr %.391244, align 4, !tbaa !67
  %i.ape = insertelement <4 x float> poison, float %i.apd, i64 0
  %i.apf = shufflevector <4 x float> %i.ape, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  br i1 %or.cond31, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.apg = load <4 x float>, ptr %.391244, align 1, !tbaa !87
  %i.aph = getelementptr inbounds nuw i8, ptr %.391244, i64 16
  %i.api = load <4 x float>, ptr %i.aph, align 1, !tbaa !87
  %i.apj = getelementptr inbounds nuw i8, ptr %.391244, i64 32
  %i.apk = load <4 x float>, ptr %i.apj, align 1, !tbaa !87
  %i.apl = getelementptr inbounds nuw i8, ptr %.391244, i64 48
  br label %bb.eg

bb.ef:                                            ; preds = %.lr.ph1249
  %i.apm = load <4 x float>, ptr %.1313091243, align 1, !tbaa !87
  %i.apn = getelementptr inbounds nuw i8, ptr %.1313091243, i64 16
  %i.apo = load <4 x float>, ptr %i.apn, align 1, !tbaa !87
  %i.app = getelementptr inbounds nuw i8, ptr %.1313091243, i64 32
  %i.apq = load <4 x float>, ptr %i.app, align 1, !tbaa !87
  br label %bb.eg

bb.eg:                                            ; preds = %.thread890, %bb.eb, %bb.ed, %bb.ee, %bb.ef
  %.1663 = phi nsz <4 x float> [ zeroinitializer, %bb.eb ], [ %i.apk, %bb.ee ], [ zeroinitializer, %bb.ed ], [ %i.apq, %bb.ef ], [ %i.apf, %.thread890 ] ; 2 uses
  %.1660 = phi nsz <4 x float> [ zeroinitializer, %bb.eb ], [ %i.api, %bb.ee ], [ zeroinitializer, %bb.ed ], [ %i.apo, %bb.ef ], [ %i.apf, %.thread890 ] ; 2 uses
  %.1657 = phi nsz <4 x float> [ zeroinitializer, %bb.eb ], [ %i.apg, %bb.ee ], [ zeroinitializer, %bb.ed ], [ %i.apm, %bb.ef ], [ %i.apf, %.thread890 ] ; 2 uses
  %.40 = phi ptr [ null, %bb.eb ], [ %i.apl, %bb.ee ], [ %.391244, %bb.ed ], [ %.391244, %bb.ef ], [ %.391244, %.thread890 ] ; 2 uses
  br i1 %i.aaj, label %.lr.ph1213, label %._crit_edge1214

end_hunk_0
begin_hunk_1_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib:bb.a
  %i.bgp = getelementptr i8, ptr %i.bef, i64 108
  %i.bgq = load float, ptr %i.bgm, align 4, !tbaa !67
  %i.bgr = load float, ptr %i.bgn, align 4, !tbaa !67
  %i.bgs = load float, ptr %i.bgo, align 4, !tbaa !67
  %i.bgt = load float, ptr %i.bgp, align 4, !tbaa !67
  %i.bgu = insertelement <4 x float> poison, float %i.bgq, i64 0
  %i.bgv = insertelement <4 x float> %i.bgu, float %i.bgr, i64 1
  %i.bgw = insertelement <4 x float> %i.bgv, float %i.bgs, i64 2
  %i.bgx = insertelement <4 x float> %i.bgw, float %i.bgt, i64 3
  %i.bgy = fmul fast <4 x float> %i.bgx, %i.bfx
  %i.bgz = fadd fast <4 x float> %i.bgy, %vec.phi2054 ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %next.gep2060, i64 8
  %i.bhb = getelementptr i8, ptr %i.bdz, i64 24
  %i.bhc = getelementptr i8, ptr %i.bea, i64 40
  %i.bhd = getelementptr i8, ptr %i.beb, i64 56
  %i.bhe = load float, ptr %i.bha, align 4, !tbaa !67
  %i.bhf = load float, ptr %i.bhb, align 4, !tbaa !67
  %i.bhg = load float, ptr %i.bhc, align 4, !tbaa !67
  %i.bhh = load float, ptr %i.bhd, align 4, !tbaa !67
  %i.bhi = insertelement <4 x float> poison, float %i.bhe, i64 0
  %i.bhj = insertelement <4 x float> %i.bhi, float %i.bhf, i64 1
  %i.bhk = insertelement <4 x float> %i.bhj, float %i.bhg, i64 2
  %i.bhl = insertelement <4 x float> %i.bhk, float %i.bhh, i64 3 ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %next.gep2064, i64 16
  %i.bhn = getelementptr i8, ptr %i.bed, i64 48
  %i.bho = getelementptr i8, ptr %i.bee, i64 80
  %i.bhp = getelementptr i8, ptr %i.bef, i64 112
  %i.bhq = load float, ptr %i.bhm, align 4, !tbaa !67
  %i.bhr = load float, ptr %i.bhn, align 4, !tbaa !67
  %i.bhs = load float, ptr %i.bho, align 4, !tbaa !67
  %i.bht = load float, ptr %i.bhp, align 4, !tbaa !67
  %i.bhu = insertelement <4 x float> poison, float %i.bhq, i64 0
  %i.bhv = insertelement <4 x float> %i.bhu, float %i.bhr, i64 1
  %i.bhw = insertelement <4 x float> %i.bhv, float %i.bhs, i64 2
  %i.bhx = insertelement <4 x float> %i.bhw, float %i.bht, i64 3
  %i.bhy = fmul fast <4 x float> %i.bhx, %i.bhl
  %i.bhz = fadd fast <4 x float> %i.bhy, %vec.phi2057 ; 2 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %next.gep2064, i64 20
  %i.bib = getelementptr i8, ptr %i.bed, i64 52
  %i.bic = getelementptr i8, ptr %i.bee, i64 84
  %i.bid = getelementptr i8, ptr %i.bef, i64 116
  %i.bie = load float, ptr %i.bia, align 4, !tbaa !67
  %i.bif = load float, ptr %i.bib, align 4, !tbaa !67
  %i.big = load float, ptr %i.bic, align 4, !tbaa !67
  %i.bih = load float, ptr %i.bid, align 4, !tbaa !67
  %i.bii = insertelement <4 x float> poison, float %i.bie, i64 0
  %i.bij = insertelement <4 x float> %i.bii, float %i.bif, i64 1
  %i.bik = insertelement <4 x float> %i.bij, float %i.big, i64 2
  %i.bil = insertelement <4 x float> %i.bik, float %i.bih, i64 3
  %i.bim = fmul fast <4 x float> %i.bil, %i.bhl
  %i.bin = fadd fast <4 x float> %i.bim, %vec.phi2053 ; 2 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %next.gep2060, i64 12
  %i.bip = getelementptr i8, ptr %i.bdz, i64 28
  %i.biq = getelementptr i8, ptr %i.bea, i64 44
  %i.bir = getelementptr i8, ptr %i.beb, i64 60
  %i.bis = load float, ptr %i.bio, align 4, !tbaa !67
  %i.bit = load float, ptr %i.bip, align 4, !tbaa !67
  %i.biu = load float, ptr %i.biq, align 4, !tbaa !67
  %i.biv = load float, ptr %i.bir, align 4, !tbaa !67
  %i.biw = insertelement <4 x float> poison, float %i.bis, i64 0
  %i.bix = insertelement <4 x float> %i.biw, float %i.bit, i64 1
  %i.biy = insertelement <4 x float> %i.bix, float %i.biu, i64 2
  %i.biz = insertelement <4 x float> %i.biy, float %i.biv, i64 3 ; 2 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %next.gep2064, i64 24
  %i.bjb = getelementptr i8, ptr %i.bed, i64 56
  %i.bjc = getelementptr i8, ptr %i.bee, i64 88
  %i.bjd = getelementptr i8, ptr %i.bef, i64 120
  %i.bje = load float, ptr %i.bja, align 4, !tbaa !67
  %i.bjf = load float, ptr %i.bjb, align 4, !tbaa !67
  %i.bjg = load float, ptr %i.bjc, align 4, !tbaa !67
  %i.bjh = load float, ptr %i.bjd, align 4, !tbaa !67
  %i.bji = insertelement <4 x float> poison, float %i.bje, i64 0
  %i.bjj = insertelement <4 x float> %i.bji, float %i.bjf, i64 1
  %i.bjk = insertelement <4 x float> %i.bjj, float %i.bjg, i64 2
  %i.bjl = insertelement <4 x float> %i.bjk, float %i.bjh, i64 3
  %i.bjm = fmul fast <4 x float> %i.bjl, %i.biz
  %i.bjn = fadd fast <4 x float> %i.bjm, %vec.phi2056 ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %next.gep2064, i64 28
  %i.bjp = getelementptr i8, ptr %i.bed, i64 60
  %i.bjq = getelementptr i8, ptr %i.bee, i64 92
  %i.bjr = getelementptr i8, ptr %i.bef, i64 124
  %i.bjs = load float, ptr %i.bjo, align 4, !tbaa !67
  %i.bjt = load float, ptr %i.bjp, align 4, !tbaa !67
  %i.bju = load float, ptr %i.bjq, align 4, !tbaa !67
  %i.bjv = load float, ptr %i.bjr, align 4, !tbaa !67
  %i.bjw = insertelement <4 x float> poison, float %i.bjs, i64 0
  %i.bjx = insertelement <4 x float> %i.bjw, float %i.bjt, i64 1
  %i.bjy = insertelement <4 x float> %i.bjx, float %i.bju, i64 2
  %i.bjz = insertelement <4 x float> %i.bjy, float %i.bjv, i64 3
  %i.bka = fmul fast <4 x float> %i.bjz, %i.biz
  %i.bkb = fadd fast <4 x float> %i.bka, %vec.phi2052 ; 2 uses
  %index.next2068 = add nuw i64 %index2051, 4     ; 2 uses
  %i.bkc = icmp eq i64 %index.next2068, %n.vec2049
  br i1 %i.bkc, label %middle.block2069, label %vector.body2050, !llvm.loop !357

middle.block2069:                                 ; preds = %vector.body2050
  %i.bkd = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bkb)
  %i.bke = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bin)
  %i.bkf = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bgz)
  %i.bkg = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bfl)
  %i.bkh = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bjn)
  %i.bki = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bhz)
  %i.bkj = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bgl)
  %i.bkk = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bex)
  %i.bkl = insertelement <2 x float> poison, float %i.bkk, i64 0
  %i.bkm = insertelement <2 x float> %i.bkl, float %i.bkg, i64 1 ; 2 uses
  %i.bkn = insertelement <2 x float> poison, float %i.bkj, i64 0
  %i.bko = insertelement <2 x float> %i.bkn, float %i.bkf, i64 1 ; 2 uses
  %i.bkp = insertelement <2 x float> poison, float %i.bki, i64 0
  %i.bkq = insertelement <2 x float> %i.bkp, float %i.bke, i64 1 ; 2 uses
  %i.bkr = insertelement <2 x float> poison, float %i.bkh, i64 0
  %i.bks = insertelement <2 x float> %i.bkr, float %i.bkd, i64 1 ; 2 uses
  br i1 %cmp.n2070, label %._crit_edge1352.loopexit, label %.lr.ph1351.preheader2086

.lr.ph1351.preheader2086:                         ; preds = %.lr.ph1351.preheader, %middle.block2069
  %.012021341.ph = phi i32 [ 0, %.lr.ph1351.preheader ], [ %i.aax, %middle.block2069 ]
  %.012041340.ph = phi ptr [ %.212801424, %.lr.ph1351.preheader ], [ %i.azu, %middle.block2069 ]
  %.101339.ph = phi ptr [ %.91378, %.lr.ph1351.preheader ], [ %i.bdx, %middle.block2069 ]
  %.ph2087 = phi <2 x float> [ zeroinitializer, %.lr.ph1351.preheader ], [ %i.bkm, %middle.block2069 ]
  %.ph2088 = phi <2 x float> [ zeroinitializer, %.lr.ph1351.preheader ], [ %i.bko, %middle.block2069 ]
  %.ph2089 = phi <2 x float> [ zeroinitializer, %.lr.ph1351.preheader ], [ %i.bkq, %middle.block2069 ]
  %.ph2090 = phi <2 x float> [ zeroinitializer, %.lr.ph1351.preheader ], [ %i.bks, %middle.block2069 ]
  br label %.lr.ph1351

.lr.ph1351:                                       ; preds = %.lr.ph1351.preheader2086, %.lr.ph1351
  %.012021341 = phi i32 [ %i.blt, %.lr.ph1351 ], [ %.012021341.ph, %.lr.ph1351.preheader2086 ]
  %.012041340 = phi ptr [ %i.blr, %.lr.ph1351 ], [ %.012041340.ph, %.lr.ph1351.preheader2086 ] ; 2 uses
  %.101339 = phi ptr [ %i.bls, %.lr.ph1351 ], [ %.101339.ph, %.lr.ph1351.preheader2086 ] ; 5 uses
  %i.bkt = phi <2 x float> [ %i.ble, %.lr.ph1351 ], [ %.ph2087, %.lr.ph1351.preheader2086 ]
  %i.bku = phi <2 x float> [ %i.bli, %.lr.ph1351 ], [ %.ph2088, %.lr.ph1351.preheader2086 ]
  %i.bkv = phi <2 x float> [ %i.blm, %.lr.ph1351 ], [ %.ph2089, %.lr.ph1351.preheader2086 ]
  %i.bkw = phi <2 x float> [ %i.blq, %.lr.ph1351 ], [ %.ph2090, %.lr.ph1351.preheader2086 ]
  %i.bkx = getelementptr inbounds nuw i8, ptr %.101339, i64 8
  %i.bky = getelementptr inbounds nuw i8, ptr %.101339, i64 16
  %i.bkz = getelementptr inbounds nuw i8, ptr %.101339, i64 24
  %i.bla = load <2 x float>, ptr %.101339, align 4, !tbaa !67
  %i.blb = load <4 x float>, ptr %.012041340, align 4, !tbaa !67 ; 4 uses
  %i.blc = shufflevector <4 x float> %i.blb, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bld = fmul fast <2 x float> %i.bla, %i.blc
  %i.ble = fadd fast <2 x float> %i.bld, %i.bkt   ; 2 uses
  %i.blf = load <2 x float>, ptr %i.bkx, align 4, !tbaa !67
  %i.blg = shufflevector <4 x float> %i.blb, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.blh = fmul fast <2 x float> %i.blf, %i.blg
  %i.bli = fadd fast <2 x float> %i.blh, %i.bku   ; 2 uses
  %i.blj = load <2 x float>, ptr %i.bky, align 4, !tbaa !67
  %i.blk = shufflevector <4 x float> %i.blb, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bll = fmul fast <2 x float> %i.blj, %i.blk
  %i.blm = fadd fast <2 x float> %i.bll, %i.bkv   ; 2 uses
  %i.bln = load <2 x float>, ptr %i.bkz, align 4, !tbaa !67
  %i.blo = shufflevector <4 x float> %i.blb, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.blp = fmul fast <2 x float> %i.bln, %i.blo
  %i.blq = fadd fast <2 x float> %i.blp, %i.bkw   ; 2 uses
  %i.blr = getelementptr inbounds nuw i8, ptr %.012041340, i64 16 ; 2 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %.101339, i64 32
  %i.blt = add nuw nsw i32 %.012021341, 4         ; 2 uses
  %i.blu = or disjoint i32 %i.blt, 3
  %i.blv = icmp slt i32 %i.blu, %8
  br i1 %i.blv, label %.lr.ph1351, label %._crit_edge1352.loopexit, !llvm.loop !358

._crit_edge1352.loopexit:                         ; preds = %.lr.ph1351, %middle.block2069
  %.lcssa1818 = phi ptr [ %i.azu, %middle.block2069 ], [ %i.blr, %.lr.ph1351 ]
  %i.blw = phi <2 x float> [ %i.bkm, %middle.block2069 ], [ %i.ble, %.lr.ph1351 ]
  %i.blx = phi <2 x float> [ %i.bko, %middle.block2069 ], [ %i.bli, %.lr.ph1351 ]
  %i.bly = phi <2 x float> [ %i.bkq, %middle.block2069 ], [ %i.blm, %.lr.ph1351 ]
  %i.blz = phi <2 x float> [ %i.bks, %middle.block2069 ], [ %i.blq, %.lr.ph1351 ]
  %i.bma = getelementptr i8, ptr %.91378, i64 %i.aas
  %scevgep1604 = getelementptr i8, ptr %i.bma, i64 32
  %i.bmb = fadd fast <2 x float> %i.blw, %i.bdw
  %i.bmc = fadd fast <2 x float> %i.bmb, %i.blx
  %i.bmd = fadd fast <2 x float> %i.bmc, %i.bly
  %i.bme = fadd fast <2 x float> %i.bmd, %i.blz
  br label %._crit_edge1352

._crit_edge1352:                                  ; preds = %._crit_edge1352.loopexit, %bb.fh
  %.10.lcssa = phi ptr [ %.91378, %bb.fh ], [ %scevgep1604, %._crit_edge1352.loopexit ] ; 5 uses
  %.01204.lcssa = phi ptr [ %.212801424, %bb.fh ], [ %.lcssa1818, %._crit_edge1352.loopexit ] ; 3 uses
  %.01202.lcssa = phi i32 [ 0, %bb.fh ], [ %i.aan, %._crit_edge1352.loopexit ] ; 4 uses
  %i.bmf = phi <2 x float> [ %i.bdw, %bb.fh ], [ %i.bme, %._crit_edge1352.loopexit ] ; 4 uses
  %i.bmg = icmp slt i32 %.01202.lcssa, %8
  %i.bmh = extractelement <2 x float> %i.bmf, i64 0
  %i.bmi = extractelement <2 x float> %i.bmf, i64 1
  br i1 %i.bmg, label %.lr.ph1370.preheader, label %._crit_edge1371

.lr.ph1370.preheader:                             ; preds = %._crit_edge1352
  %i.bmj = xor i32 %.01202.lcssa, -1
  %i.bmk = add i32 %8, %i.bmj                     ; 2 uses
  %i.bml = zext i32 %i.bmk to i64
  %i.bmm = add nuw nsw i64 %i.bml, 1              ; 2 uses
  %min.iters.check2016 = icmp ult i32 %i.bmk, 7
  br i1 %min.iters.check2016, label %.lr.ph1370.preheader2084, label %vector.ph2017

vector.ph2017:                                    ; preds = %.lr.ph1370.preheader
  %n.vec2018 = and i64 %i.bmm, 8589934584         ; 5 uses
  %i.bmn = trunc i64 %n.vec2018 to i32
  %i.bmo = add i32 %.01202.lcssa, %i.bmn
  %i.bmp = shl nuw nsw i64 %n.vec2018, 2
  %i.bmq = getelementptr i8, ptr %.01204.lcssa, i64 %i.bmp
  %i.bmr = shl nuw nsw i64 %n.vec2018, 3
  %i.bms = getelementptr i8, ptr %.10.lcssa, i64 %i.bmr ; 2 uses
  %i.bmt = shufflevector <2 x float> %i.bmf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %14 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.bmt, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.bmu = shufflevector <4 x float> %i.bmt, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body2019

vector.body2019:                                  ; preds = %vector.body2019, %vector.ph2017
  %index2020 = phi i64 [ 0, %vector.ph2017 ], [ %index.next2036, %vector.body2019 ] ; 3 uses
  %vec.phi2021 = phi <4 x float> [ %14, %vector.ph2017 ], [ %i.bnf, %vector.body2019 ]
  %vec.phi2022 = phi <4 x float> [ zeroinitializer, %vector.ph2017 ], [ %i.bng, %vector.body2019 ]
  %vec.phi2023 = phi <4 x float> [ %i.bmu, %vector.ph2017 ], [ %i.bnb, %vector.body2019 ]
  %vec.phi2024 = phi <4 x float> [ zeroinitializer, %vector.ph2017 ], [ %i.bnc, %vector.body2019 ]
  %i.bmv = shl i64 %index2020, 2
  %next.gep2025 = getelementptr i8, ptr %.01204.lcssa, i64 %i.bmv ; 2 uses
  %i.bmw = shl i64 %index2020, 3                  ; 2 uses
  %next.gep2026 = getelementptr i8, ptr %.10.lcssa, i64 %i.bmw
  %i.bmx = getelementptr i8, ptr %.10.lcssa, i64 %i.bmw
  %next.gep2027 = getelementptr i8, ptr %i.bmx, i64 32
  %i.bmy = getelementptr i8, ptr %next.gep2025, i64 16
  %wide.load2028 = load <4 x float>, ptr %next.gep2025, align 4, !tbaa !67 ; 2 uses
  %wide.load2029 = load <4 x float>, ptr %i.bmy, align 4, !tbaa !67 ; 2 uses
  %wide.vec2030 = load <8 x float>, ptr %next.gep2026, align 4, !tbaa !67 ; 2 uses
  %strided.vec2031 = shufflevector <8 x float> %wide.vec2030, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec2032 = shufflevector <8 x float> %wide.vec2030, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec2033 = load <8 x float>, ptr %next.gep2027, align 4, !tbaa !67 ; 2 uses
  %strided.vec2034 = shufflevector <8 x float> %wide.vec2033, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec2035 = shufflevector <8 x float> %wide.vec2033, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bmz = fmul fast <4 x float> %strided.vec2031, %wide.load2028
  %i.bna = fmul fast <4 x float> %strided.vec2034, %wide.load2029
  %i.bnb = fadd fast <4 x float> %i.bmz, %vec.phi2023 ; 2 uses
  %i.bnc = fadd fast <4 x float> %i.bna, %vec.phi2024 ; 2 uses
  %i.bnd = fmul fast <4 x float> %strided.vec2032, %wide.load2028
  %i.bne = fmul fast <4 x float> %strided.vec2035, %wide.load2029
  %i.bnf = fadd fast <4 x float> %i.bnd, %vec.phi2021 ; 2 uses
  %i.bng = fadd fast <4 x float> %i.bne, %vec.phi2022 ; 2 uses
  %index.next2036 = add nuw i64 %index2020, 8     ; 2 uses
  %i.bnh = icmp eq i64 %index.next2036, %n.vec2018
  br i1 %i.bnh, label %middle.block2037, label %vector.body2019, !llvm.loop !359

middle.block2037:                                 ; preds = %vector.body2019
  %bin.rdx2038 = fadd fast <4 x float> %i.bng, %i.bnf
  %i.bni = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx2038) ; 2 uses
  %bin.rdx2039 = fadd fast <4 x float> %i.bnc, %i.bnb
  %i.bnj = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx2039) ; 2 uses
  %cmp.n2040 = icmp eq i64 %i.bmm, %n.vec2018
  %i.bnk = insertelement <2 x float> poison, float %i.bnj, i64 0
  %i.bnl = insertelement <2 x float> %i.bnk, float %i.bni, i64 1
  br i1 %cmp.n2040, label %._crit_edge1371, label %.lr.ph1370.preheader2084

.lr.ph1370.preheader2084:                         ; preds = %.lr.ph1370.preheader, %middle.block2037
  %.112031368.ph = phi i32 [ %.01202.lcssa, %.lr.ph1370.preheader ], [ %i.bmo, %middle.block2037 ]
  %.112051367.ph = phi ptr [ %.01204.lcssa, %.lr.ph1370.preheader ], [ %i.bmq, %middle.block2037 ]
  %.111364.ph = phi ptr [ %.10.lcssa, %.lr.ph1370.preheader ], [ %i.bms, %middle.block2037 ]
  %.ph2085 = phi <2 x float> [ %i.bmf, %.lr.ph1370.preheader ], [ %i.bnl, %middle.block2037 ]
  br label %.lr.ph1370

.lr.ph1370:                                       ; preds = %.lr.ph1370.preheader2084, %.lr.ph1370
  %.112031368 = phi i32 [ %i.bnv, %.lr.ph1370 ], [ %.112031368.ph, %.lr.ph1370.preheader2084 ]
  %.112051367 = phi ptr [ %i.bnt, %.lr.ph1370 ], [ %.112051367.ph, %.lr.ph1370.preheader2084 ] ; 2 uses
  %.111364 = phi ptr [ %i.bnu, %.lr.ph1370 ], [ %.111364.ph, %.lr.ph1370.preheader2084 ] ; 2 uses
  %i.bnm = phi <2 x float> [ %i.bns, %.lr.ph1370 ], [ %.ph2085, %.lr.ph1370.preheader2084 ]
  %i.bnn = load float, ptr %.112051367, align 4, !tbaa !67
  %i.bno = load <2 x float>, ptr %.111364, align 4, !tbaa !67
  %i.bnp = insertelement <2 x float> poison, float %i.bnn, i64 0
  %i.bnq = shufflevector <2 x float> %i.bnp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bnr = fmul fast <2 x float> %i.bno, %i.bnq
  %i.bns = fadd fast <2 x float> %i.bnr, %i.bnm   ; 3 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %.112051367, i64 4
  %i.bnu = getelementptr inbounds nuw i8, ptr %.111364, i64 8 ; 2 uses
  %i.bnv = add nuw nsw i32 %.112031368, 1         ; 2 uses
  %exitcond1605.not = icmp eq i32 %i.bnv, %8
  br i1 %exitcond1605.not, label %._crit_edge1371.loopexit, label %.lr.ph1370, !llvm.loop !360

._crit_edge1371.loopexit:                         ; preds = %.lr.ph1370
  %i.bnw = extractelement <2 x float> %i.bns, i64 1
  %i.bnx = extractelement <2 x float> %i.bns, i64 0
  br label %._crit_edge1371

._crit_edge1371:                                  ; preds = %._crit_edge1371.loopexit, %middle.block2037, %._crit_edge1352
  %.11.lcssa = phi ptr [ %.10.lcssa, %._crit_edge1352 ], [ %i.bms, %middle.block2037 ], [ %i.bnu, %._crit_edge1371.loopexit ] ; 2 uses
  %.21211.lcssa = phi float [ %i.bmh, %._crit_edge1352 ], [ %i.bnj, %middle.block2037 ], [ %i.bnx, %._crit_edge1371.loopexit ] ; 2 uses
  %.21208.lcssa = phi float [ %i.bmi, %._crit_edge1352 ], [ %i.bni, %middle.block2037 ], [ %i.bnw, %._crit_edge1371.loopexit ] ; 2 uses
  br i1 %9, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %._crit_edge1371
  store float %.21211.lcssa, ptr %.612381377, align 4, !tbaa !67
  %i.bny = getelementptr inbounds nuw i8, ptr %.612381377, i64 4
  store float %.21208.lcssa, ptr %i.bny, align 4, !tbaa !67
  %i.bnz = getelementptr inbounds nuw i8, ptr %.612381377, i64 8
  br label %bb.fk

bb.fj:                                            ; preds = %._crit_edge1371
  store float %.21211.lcssa, ptr %.1613121375, align 4, !tbaa !67
  %i.boa = getelementptr inbounds nuw i8, ptr %.1613121375, i64 4
  store float %.21208.lcssa, ptr %i.boa, align 4, !tbaa !67
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.71239 = phi ptr [ %i.bnz, %bb.fi ], [ %.612381377, %bb.fj ] ; 2 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %.1613121375, i64 8 ; 2 uses
  %i.boc = add nuw nsw i32 %.31379, 2             ; 3 uses
  %i.bod = or disjoint i32 %i.boc, 1
  %i.boe = icmp slt i32 %i.bod, %6
  br i1 %i.boe, label %.lr.ph1380, label %.preheader, !llvm.loop !361

.lr.ph1417:                                       ; preds = %.lr.ph1417.preheader, %bb.ft
  %.41416 = phi i32 [ %i.bya, %bb.ft ], [ %.3.lcssa, %.lr.ph1417.preheader ]
  %.121415 = phi ptr [ %.14.lcssa, %bb.ft ], [ %.9.lcssa, %.lr.ph1417.preheader ] ; 12 uses
  %.812401414 = phi ptr [ %.91241, %bb.ft ], [ %.61238.lcssa, %.lr.ph1417.preheader ] ; 3 uses
  %.471413 = phi ptr [ %.48, %bb.ft ], [ %.45.lcssa, %.lr.ph1417.preheader ] ; 7 uses
  %.1713131412 = phi ptr [ %i.bxz, %bb.ft ], [ %.161312.lcssa, %.lr.ph1417.preheader ] ; 3 uses
  br i1 %i.aah, label %bb.fl, label %bb.fp

bb.fl:                                            ; preds = %.lr.ph1417
  %.not1391 = icmp eq ptr %.471413, null
  br i1 %.not1391, label %bb.fq, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  br i1 %or.cond29, label %.thread905, label %bb.fn

.thread905:                                       ; preds = %bb.fm
  %i.bof = load float, ptr %.471413, align 4, !tbaa !67
  br label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  br i1 %or.cond31, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %bb.fn
  %i.bog = load float, ptr %.471413, align 4, !tbaa !67
  %i.boh = getelementptr inbounds nuw i8, ptr %.471413, i64 4
  br label %bb.fq

bb.fp:                                            ; preds = %.lr.ph1417
  %i.boi = load float, ptr %.1713131412, align 4, !tbaa !67
  br label %bb.fq

bb.fq:                                            ; preds = %.thread905, %bb.fl, %bb.fn, %bb.fo, %bb.fp
  %.48 = phi ptr [ %i.boh, %bb.fo ], [ %.471413, %bb.fn ], [ null, %bb.fl ], [ %.471413, %bb.fp ], [ %.471413, %.thread905 ] ; 2 uses
  %.11193 = phi nsz float [ %i.bog, %bb.fo ], [ 0.000000e+00, %bb.fn ], [ 0.000000e+00, %bb.fl ], [ %i.boi, %bb.fp ], [ %i.bof, %.thread905 ] ; 2 uses
  br i1 %i.aaj, label %.lr.ph1394.preheader, label %._crit_edge1395

.lr.ph1394.preheader:                             ; preds = %bb.fq
  br i1 %min.iters.check1972, label %.lr.ph1394.preheader2083, label %vector.ph1973

vector.ph1973:                                    ; preds = %.lr.ph1394.preheader
  %i.boj = getelementptr i8, ptr %.121415, i64 %i.abd
  br label %vector.body1975

vector.body1975:                                  ; preds = %vector.body1975, %vector.ph1973
  %index1976 = phi i64 [ 0, %vector.ph1973 ], [ %index.next2001, %vector.body1975 ] ; 2 uses
  %vec.phi1977 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.bwa, %vector.body1975 ]
  %vec.phi1978 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.bwb, %vector.body1975 ]
  %vec.phi1979 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.bua, %vector.body1975 ]
  %vec.phi1980 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.bub, %vector.body1975 ]
  %vec.phi1981 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.bsa, %vector.body1975 ]
  %vec.phi1982 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.bsb, %vector.body1975 ]
  %vec.phi1983 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.bqa, %vector.body1975 ]
  %vec.phi1984 = phi <4 x float> [ zeroinitializer, %vector.ph1973 ], [ %i.bqb, %vector.body1975 ]
  %i.bok = shl i64 %index1976, 4                  ; 9 uses
  %i.bol = or disjoint i64 %i.bok, 16             ; 2 uses
  %i.bom = or disjoint i64 %i.bok, 32             ; 2 uses
  %i.bon = or disjoint i64 %i.bok, 48             ; 2 uses
  %i.boo = or disjoint i64 %i.bok, 64             ; 2 uses
  %i.bop = or disjoint i64 %i.bok, 80             ; 2 uses
  %i.boq = or disjoint i64 %i.bok, 96             ; 2 uses
  %i.bor = or disjoint i64 %i.bok, 112            ; 2 uses
  %next.gep1985 = getelementptr i8, ptr %.212801424, i64 %i.bok ; 4 uses
  %next.gep1986 = getelementptr i8, ptr %.212801424, i64 %i.bol ; 4 uses
  %next.gep1987 = getelementptr i8, ptr %.212801424, i64 %i.bom ; 4 uses
  %next.gep1988 = getelementptr i8, ptr %.212801424, i64 %i.bon ; 4 uses
  %next.gep1989 = getelementptr i8, ptr %.212801424, i64 %i.boo ; 4 uses
  %next.gep1990 = getelementptr i8, ptr %.212801424, i64 %i.bop ; 4 uses
  %next.gep1991 = getelementptr i8, ptr %.212801424, i64 %i.boq ; 4 uses
  %next.gep1992 = getelementptr i8, ptr %.212801424, i64 %i.bor ; 4 uses
  %next.gep1993 = getelementptr i8, ptr %.121415, i64 %i.bok ; 4 uses
  %next.gep1994 = getelementptr i8, ptr %.121415, i64 %i.bol ; 4 uses
  %next.gep1995 = getelementptr i8, ptr %.121415, i64 %i.bom ; 4 uses
  %next.gep1996 = getelementptr i8, ptr %.121415, i64 %i.bon ; 4 uses
  %next.gep1997 = getelementptr i8, ptr %.121415, i64 %i.boo ; 4 uses
  %next.gep1998 = getelementptr i8, ptr %.121415, i64 %i.bop ; 4 uses
  %next.gep1999 = getelementptr i8, ptr %.121415, i64 %i.boq ; 4 uses
  %next.gep2000 = getelementptr i8, ptr %.121415, i64 %i.bor ; 4 uses
  %i.bos = load float, ptr %next.gep1985, align 4, !tbaa !67
  %i.bot = load float, ptr %next.gep1986, align 4, !tbaa !67
  %i.bou = load float, ptr %next.gep1987, align 4, !tbaa !67
  %i.bov = load float, ptr %next.gep1988, align 4, !tbaa !67
  %i.bow = insertelement <4 x float> poison, float %i.bos, i64 0
  %i.box = insertelement <4 x float> %i.bow, float %i.bot, i64 1
  %i.boy = insertelement <4 x float> %i.box, float %i.bou, i64 2
  %i.boz = insertelement <4 x float> %i.boy, float %i.bov, i64 3
  %i.bpa = load float, ptr %next.gep1989, align 4, !tbaa !67
  %i.bpb = load float, ptr %next.gep1990, align 4, !tbaa !67
  %i.bpc = load float, ptr %next.gep1991, align 4, !tbaa !67
  %i.bpd = load float, ptr %next.gep1992, align 4, !tbaa !67
  %i.bpe = insertelement <4 x float> poison, float %i.bpa, i64 0
  %i.bpf = insertelement <4 x float> %i.bpe, float %i.bpb, i64 1
  %i.bpg = insertelement <4 x float> %i.bpf, float %i.bpc, i64 2
  %i.bph = insertelement <4 x float> %i.bpg, float %i.bpd, i64 3
  %i.bpi = load float, ptr %next.gep1993, align 4, !tbaa !67
  %i.bpj = load float, ptr %next.gep1994, align 4, !tbaa !67
  %i.bpk = load float, ptr %next.gep1995, align 4, !tbaa !67
  %i.bpl = load float, ptr %next.gep1996, align 4, !tbaa !67
  %i.bpm = insertelement <4 x float> poison, float %i.bpi, i64 0
end_hunk_1
begin_hunk_2_@_ZN4ncnnL20gemm_AT_BT_x86_bf16sERKNS_3MatES2_S2_RS0_iiiiiffiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.ap = load float, ptr %16, align 4, !tbaa !67
  %i.aq = load float, ptr %17, align 4, !tbaa !67
  %i.ar = load i32, ptr %18, align 4, !tbaa !49
  %i.as = load i32, ptr %19, align 4, !tbaa !49
  call fastcc void @_ZN4ncnnL31unpack_output_tile_fp32_to_bf16ERKNS_3MatES2_RS0_iiiiiffii(ptr %i.al, ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.ao, i32 noundef %i.x, i32 noundef %.sroa.speculated158, i32 noundef %i.z, i32 noundef %.sroa.speculated154, float noundef nofpclass(nan inf) %i.ap, float noundef nofpclass(nan inf) %i.aq, i32 noundef %i.ar, i32 noundef %i.as)
  %i.at = add nsw i32 %.054163, 1
  %i.au = load i32, ptr %i.b, align 4, !tbaa !49
  %.not.not = icmp slt i32 %.054163, %i.au
  br i1 %.not.not, label %bb.c, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit58:                          ; preds = %_ZN4ncnn3MatD2Ev.exit58.preheader, %_ZN4ncnn3MatD2Ev.exit58
  %i.av = phi i32 [ %i.cc, %_ZN4ncnn3MatD2Ev.exit58 ], [ %.pre, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 2 uses
  %i.aw = phi i32 [ %i.ce, %_ZN4ncnn3MatD2Ev.exit58 ], [ %i.am, %_ZN4ncnn3MatD2Ev.exit58.preheader ]
  %.0161 = phi i32 [ %i.cd, %_ZN4ncnn3MatD2Ev.exit58 ], [ 0, %_ZN4ncnn3MatD2Ev.exit58.preheader ] ; 4 uses
  %i.ax = sub nsw i32 %i.aw, %.0161
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ax)
  %i.ay = load i32, ptr %4, align 4, !tbaa !49
  %i.az = sdiv i32 %i.x, %i.ay
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !953
  %i.bb = load ptr, ptr %11, align 8, !tbaa !23, !noalias !953
  %i.bc = load i64, ptr %i.o, align 8, !tbaa !24, !noalias !953
  %i.bd = sext i32 %i.az to i64
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = load i64, ptr %i.p, align 8, !tbaa !62, !noalias !953 ; 2 uses
  %i.bg = mul i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  %i.bi = sext i32 %i.ba to i64
  %i.bj = sdiv i32 %.0161, %i.av
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = mul i64 %i.bf, %i.bi
  %i.bm = mul i64 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bm
  %i.bo = load i32, ptr %5, align 4, !tbaa !49
  %i.bp = sdiv i32 %i.z, %i.bo
  %i.bq = load i32, ptr %i.q, align 4, !tbaa !75, !noalias !954
  %i.br = load ptr, ptr %12, align 8, !tbaa !23, !noalias !954
  %i.bs = load i64, ptr %i.r, align 8, !tbaa !24, !noalias !954
  %i.bt = sext i32 %i.bp to i64
  %i.bu = mul i64 %i.bs, %i.bt
  %i.bv = load i64, ptr %i.s, align 8, !tbaa !62, !noalias !954 ; 2 uses
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  %i.by = sext i32 %i.bq to i64
  %i.bz = mul i64 %i.bv, %i.by
  %i.ca = mul i64 %i.bz, %i.bk
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ca
  call fastcc void @_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii(ptr %i.bn, ptr %i.cb, ptr %i.al, i32 noundef %.sroa.speculated158, i32 noundef %.sroa.speculated154, i32 noundef %.0161, i32 noundef %.sroa.speculated)
  %i.cc = load i32, ptr %10, align 4, !tbaa !49   ; 2 uses
  %i.cd = add nsw i32 %i.cc, %.0161               ; 2 uses
  %i.ce = load i32, ptr %9, align 4, !tbaa !49    ; 2 uses
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %_ZN4ncnn3MatD2Ev.exit58, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !951

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly %.0.val1, ptr nofree %.0.val3, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %0, 3
  br i1 %i.a, label %.preheader254.lr.ph, label %.preheader250

.preheader254.lr.ph:                              ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 7
  %.not515 = icmp eq i32 %2, 0                    ; 6 uses
  %i.c = icmp sgt i32 %3, 0                       ; 4 uses
  %i.d = shl nsw i32 %3, 2
  %i.e = sext i32 %i.d to i64
  %i.f = add i32 %3, -1
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = shl nuw nsw i64 %i.g, 4
  %i.i = and i32 %1, -8
  %i.j = shl nuw nsw i64 %i.g, 3
  %i.k = add i32 %1, -2
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = add nsw i32 %1, -1                       ; 2 uses
  %i.n = shl nuw nsw i64 %i.g, 1
  br label %.preheader254

.preheader254:                                    ; preds = %.preheader254.lr.ph, %._crit_edge346
  %.0401356 = phi ptr [ %.0.val, %.preheader254.lr.ph ], [ %i.gv, %._crit_edge346 ] ; 5 uses
  %.0403355 = phi ptr [ %.0.val3, %.preheader254.lr.ph ], [ %.4.lcssa, %._crit_edge346 ] ; 2 uses
  %.0406354 = phi i32 [ 0, %.preheader254.lr.ph ], [ %i.gw, %._crit_edge346 ]
  br i1 %i.b, label %.lr.ph277, label %.preheader253

.preheader250.loopexit:                           ; preds = %._crit_edge346
  %i.o = and i32 %0, 2147483644
  br label %.preheader250

.preheader250:                                    ; preds = %.preheader250.loopexit, %bb.a
  %.0406.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %.preheader250.loopexit ] ; 3 uses
  %.0403.lcssa = phi ptr [ %.0.val3, %bb.a ], [ %.4.lcssa, %.preheader250.loopexit ] ; 2 uses
  %.0401.lcssa = phi ptr [ %.0.val, %bb.a ], [ %i.gv, %.preheader250.loopexit ] ; 2 uses
  %i.p = or disjoint i32 %.0406.lcssa, 1
  %i.q = icmp slt i32 %i.p, %0
  br i1 %i.q, label %.preheader249.lr.ph, label %.preheader245

.preheader249.lr.ph:                              ; preds = %.preheader250
  %i.r = icmp sgt i32 %1, 7
  %.not511 = icmp eq i32 %2, 0                    ; 5 uses
  %i.s = icmp sgt i32 %3, 0                       ; 4 uses
  %i.t = shl nsw i32 %3, 1
  %i.u = sext i32 %i.t to i64
  %i.v = add i32 %3, -1
  %i.w = zext i32 %i.v to i64                     ; 4 uses
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = and i32 %1, -8
  %i.z = add i32 %1, -4
  %i.aa = shl nuw nsw i64 %i.w, 3
  %i.ab = shl nuw nsw i64 %i.w, 2
  %i.ac = shl nuw nsw i64 %i.w, 1
  %i.ad = zext nneg i32 %3 to i64                 ; 2 uses
  %min.iters.check108 = icmp ult i32 %3, 4
  %n.vec110 = and i64 %i.ad, 2147483644           ; 4 uses
  %i.ae = shl nuw nsw i64 %n.vec110, 2            ; 2 uses
  %i.af = trunc nuw nsw i64 %n.vec110 to i32
  %cmp.n127 = icmp eq i64 %n.vec110, %i.ad
  %i.ag = zext nneg i32 %3 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %i.ag, 2147483640              ; 5 uses
  %i.ah = trunc nuw nsw i64 %n.vec to i32
  %i.ai = shl nuw nsw i64 %n.vec, 2
  %i.aj = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.ag
  br label %.preheader249

.preheader253:                                    ; preds = %._crit_edge, %.preheader254
  %.0437.lcssa = phi i32 [ 0, %.preheader254 ], [ %i.i, %._crit_edge ] ; 3 uses
  %.0409.lcssa = phi ptr [ %.0.val1, %.preheader254 ], [ %.1410.lcssa, %._crit_edge ] ; 2 uses
  %.1404.lcssa = phi ptr [ %.0403355, %.preheader254 ], [ %i.cs, %._crit_edge ] ; 2 uses
  %i.ak = or disjoint i32 %.0437.lcssa, 3
  %i.al = icmp slt i32 %i.ak, %1
  br i1 %i.al, label %.lr.ph299, label %.preheader252

.lr.ph277:                                        ; preds = %.preheader254, %._crit_edge
  %.1404276 = phi ptr [ %i.cs, %._crit_edge ], [ %.0403355, %.preheader254 ] ; 17 uses
  %.0409275 = phi ptr [ %.1410.lcssa, %._crit_edge ], [ %.0.val1, %.preheader254 ] ; 3 uses
  %.0437274 = phi i32 [ %i.ct, %._crit_edge ], [ 0, %.preheader254 ]
  br i1 %.not515, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph277
  %i.am = load <4 x float>, ptr %.1404276, align 16, !tbaa !87
  %i.an = getelementptr inbounds nuw i8, ptr %.1404276, i64 16
  %i.ao = load <4 x float>, ptr %i.an, align 16, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %.1404276, i64 32
  %i.aq = load <4 x float>, ptr %i.ap, align 16, !tbaa !87
  %i.ar = getelementptr inbounds nuw i8, ptr %.1404276, i64 48
  %i.as = load <4 x float>, ptr %i.ar, align 16, !tbaa !87
  %i.at = getelementptr inbounds nuw i8, ptr %.1404276, i64 64
  %i.au = load <4 x float>, ptr %i.at, align 16, !tbaa !87
  %i.av = getelementptr inbounds nuw i8, ptr %.1404276, i64 80
  %i.aw = load <4 x float>, ptr %i.av, align 16, !tbaa !87
  %i.ax = getelementptr inbounds nuw i8, ptr %.1404276, i64 96
  %i.ay = load <4 x float>, ptr %i.ax, align 16, !tbaa !87
  %i.az = getelementptr inbounds nuw i8, ptr %.1404276, i64 112
  %i.ba = load <4 x float>, ptr %i.az, align 16, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph277
  %.0196 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.ba, %bb.b ] ; 2 uses
  %.0194 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.ay, %bb.b ] ; 2 uses
  %.0192 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.aw, %bb.b ] ; 2 uses
  %.0190 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.au, %bb.b ] ; 2 uses
  %.0188 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.as, %bb.b ] ; 2 uses
  %.0186 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.aq, %bb.b ] ; 2 uses
  %.0184 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.ao, %bb.b ] ; 2 uses
  %.0182 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph277 ], [ %i.am, %bb.b ] ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.1410265 = phi ptr [ %i.ci, %.lr.ph ], [ %.0409275, %bb.c ] ; 3 uses
  %.0441264 = phi ptr [ %i.ch, %.lr.ph ], [ %.0401356, %bb.c ] ; 2 uses
  %.0442263 = phi i32 [ %i.cj, %.lr.ph ], [ 0, %bb.c ]
  %.1183262 = phi <4 x float> [ %i.bs, %.lr.ph ], [ %.0182, %bb.c ]
  %.1185261 = phi <4 x float> [ %i.bu, %.lr.ph ], [ %.0184, %bb.c ]
  %.1187260 = phi <4 x float> [ %i.bw, %.lr.ph ], [ %.0186, %bb.c ]
  %.1189259 = phi <4 x float> [ %i.by, %.lr.ph ], [ %.0188, %bb.c ]
  %.1191258 = phi <4 x float> [ %i.ca, %.lr.ph ], [ %.0190, %bb.c ]
  %.1193257 = phi <4 x float> [ %i.cc, %.lr.ph ], [ %.0192, %bb.c ]
  %.1195256 = phi <4 x float> [ %i.ce, %.lr.ph ], [ %.0194, %bb.c ]
  %.1197255 = phi <4 x float> [ %i.cg, %.lr.ph ], [ %.0196, %bb.c ]
  %i.bb = load i64, ptr %.0441264, align 1, !tbaa !87
  %i.bc = insertelement <2 x i64> poison, i64 %i.bb, i64 0
  %i.bd = bitcast <2 x i64> %i.bc to <8 x i16>
  %4 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.be = bitcast <8 x i16> %4 to <4 x float>     ; 5 uses
  %i.bf = load i64, ptr %.1410265, align 1, !tbaa !87
  %i.bg = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %i.bh = bitcast <2 x i64> %i.bg to <8 x i16>
  %5 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bi = bitcast <8 x i16> %5 to <4 x float>     ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.1410265, i64 8
  %i.bk = load i64, ptr %i.bj, align 1, !tbaa !87
  %i.bl = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %i.bm = bitcast <2 x i64> %i.bl to <8 x i16>
  %6 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bn = bitcast <8 x i16> %6 to <4 x float>     ; 3 uses
  %i.bo = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 4 uses
  %i.bp = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.bq = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.br = fmul fast <4 x float> %i.bi, %i.be
  %i.bs = fadd fast <4 x float> %i.br, %.1183262  ; 2 uses
  %i.bt = fmul fast <4 x float> %i.bn, %i.be
  %i.bu = fadd fast <4 x float> %i.bt, %.1185261  ; 2 uses
  %i.bv = fmul fast <4 x float> %i.bo, %i.bi
  %i.bw = fadd fast <4 x float> %i.bv, %.1187260  ; 2 uses
  %i.bx = fmul fast <4 x float> %i.bo, %i.bn
  %i.by = fadd fast <4 x float> %i.bx, %.1189259  ; 2 uses
  %i.bz = fmul fast <4 x float> %i.bp, %i.be
  %i.ca = fadd fast <4 x float> %i.bz, %.1191258  ; 2 uses
  %i.cb = fmul fast <4 x float> %i.bq, %i.be
  %i.cc = fadd fast <4 x float> %i.cb, %.1193257  ; 2 uses
  %i.cd = fmul fast <4 x float> %i.bp, %i.bo
  %i.ce = fadd fast <4 x float> %i.cd, %.1195256  ; 2 uses
  %i.cf = fmul fast <4 x float> %i.bq, %i.bo
  %i.cg = fadd fast <4 x float> %i.cf, %.1197255  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0441264, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.1410265, i64 16
  %i.cj = add nuw nsw i32 %.0442263, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cj, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !955

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ck = getelementptr i8, ptr %.0409275, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.ck, i64 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.1197.lcssa = phi <4 x float> [ %.0196, %bb.c ], [ %i.cg, %._crit_edge.loopexit ]
  %.1195.lcssa = phi <4 x float> [ %.0194, %bb.c ], [ %i.ce, %._crit_edge.loopexit ]
  %.1193.lcssa = phi <4 x float> [ %.0192, %bb.c ], [ %i.cc, %._crit_edge.loopexit ]
  %.1191.lcssa = phi <4 x float> [ %.0190, %bb.c ], [ %i.ca, %._crit_edge.loopexit ]
  %.1189.lcssa = phi <4 x float> [ %.0188, %bb.c ], [ %i.by, %._crit_edge.loopexit ]
  %.1187.lcssa = phi <4 x float> [ %.0186, %bb.c ], [ %i.bw, %._crit_edge.loopexit ]
  %.1185.lcssa = phi <4 x float> [ %.0184, %bb.c ], [ %i.bu, %._crit_edge.loopexit ]
  %.1183.lcssa = phi <4 x float> [ %.0182, %bb.c ], [ %i.bs, %._crit_edge.loopexit ]
  %.1410.lcssa = phi ptr [ %.0409275, %bb.c ], [ %scevgep, %._crit_edge.loopexit ] ; 2 uses
  store <4 x float> %.1183.lcssa, ptr %.1404276, align 16, !tbaa !87
  %i.cl = getelementptr inbounds nuw i8, ptr %.1404276, i64 16
  store <4 x float> %.1185.lcssa, ptr %i.cl, align 16, !tbaa !87
  %i.cm = getelementptr inbounds nuw i8, ptr %.1404276, i64 32
  store <4 x float> %.1187.lcssa, ptr %i.cm, align 16, !tbaa !87
  %i.cn = getelementptr inbounds nuw i8, ptr %.1404276, i64 48
  store <4 x float> %.1189.lcssa, ptr %i.cn, align 16, !tbaa !87
  %i.co = getelementptr inbounds nuw i8, ptr %.1404276, i64 64
  store <4 x float> %.1191.lcssa, ptr %i.co, align 16, !tbaa !87
  %i.cp = getelementptr inbounds nuw i8, ptr %.1404276, i64 80
  store <4 x float> %.1193.lcssa, ptr %i.cp, align 16, !tbaa !87
  %i.cq = getelementptr inbounds nuw i8, ptr %.1404276, i64 96
  store <4 x float> %.1195.lcssa, ptr %i.cq, align 16, !tbaa !87
  %i.cr = getelementptr inbounds nuw i8, ptr %.1404276, i64 112
  store <4 x float> %.1197.lcssa, ptr %i.cr, align 16, !tbaa !87
  %i.cs = getelementptr inbounds nuw i8, ptr %.1404276, i64 128 ; 2 uses
  %i.ct = add nuw nsw i32 %.0437274, 8            ; 2 uses
  %i.cu = or disjoint i32 %i.ct, 7
  %i.cv = icmp slt i32 %i.cu, %1
  br i1 %i.cv, label %.lr.ph277, label %.preheader253, !llvm.loop !956

.preheader252:                                    ; preds = %._crit_edge290, %.preheader253
  %.1438.lcssa = phi i32 [ %.0437.lcssa, %.preheader253 ], [ %i.fn, %._crit_edge290 ] ; 6 uses
  %.2411.lcssa = phi ptr [ %.0409.lcssa, %.preheader253 ], [ %.3412.lcssa, %._crit_edge290 ] ; 4 uses
  %.2405.lcssa = phi ptr [ %.1404.lcssa, %.preheader253 ], [ %i.fm, %._crit_edge290 ] ; 5 uses
  %i.cw = or disjoint i32 %.1438.lcssa, 1
  %i.cx = icmp slt i32 %i.cw, %1
  br i1 %i.cx, label %.lr.ph317, label %.preheader251

.lr.ph317:                                        ; preds = %.preheader252
  br i1 %i.c, label %.lr.ph317.split.us, label %.lr.ph317.split

.lr.ph317.split.us:                               ; preds = %.lr.ph317, %._crit_edge310.us
  %.3316.us = phi ptr [ %i.du, %._crit_edge310.us ], [ %.2405.lcssa, %.lr.ph317 ] ; 5 uses
  %.4413315.us = phi ptr [ %scevgep739, %._crit_edge310.us ], [ %.2411.lcssa, %.lr.ph317 ] ; 2 uses
  %.2439314.us = phi i32 [ %i.dv, %._crit_edge310.us ], [ %.1438.lcssa, %.lr.ph317 ]
  br i1 %.not515, label %.lr.ph309.us.preheader, label %bb.d

bb.d:                                             ; preds = %.lr.ph317.split.us
  %i.cy = load <4 x float>, ptr %.3316.us, align 16, !tbaa !87
  %i.cz = getelementptr inbounds nuw i8, ptr %.3316.us, i64 16
  %i.da = load <4 x float>, ptr %i.cz, align 16, !tbaa !87
  br label %.lr.ph309.us.preheader

.lr.ph309.us.preheader:                           ; preds = %bb.d, %.lr.ph317.split.us
  %.1207304.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph317.split.us ], [ %i.cy, %bb.d ]
  %.1209303.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph317.split.us ], [ %i.da, %bb.d ]
  br label %.lr.ph309.us

.lr.ph309.us:                                     ; preds = %.lr.ph309.us.preheader, %.lr.ph309.us
  %.5414307.us = phi ptr [ %i.dq, %.lr.ph309.us ], [ %.4413315.us, %.lr.ph309.us.preheader ] ; 2 uses
  %.0445306.us = phi ptr [ %i.dp, %.lr.ph309.us ], [ %.0401356, %.lr.ph309.us.preheader ] ; 2 uses
  %.0446305.us = phi i32 [ %i.dr, %.lr.ph309.us ], [ 0, %.lr.ph309.us.preheader ]
  %.1207304.us = phi <4 x float> [ %i.dm, %.lr.ph309.us ], [ %.1207304.us.ph, %.lr.ph309.us.preheader ]
  %.1209303.us = phi <4 x float> [ %i.do, %.lr.ph309.us ], [ %.1209303.us.ph, %.lr.ph309.us.preheader ]
  %i.db = load i64, ptr %.0445306.us, align 1, !tbaa !87
  %i.dc = insertelement <2 x i64> poison, i64 %i.db, i64 0
  %i.dd = bitcast <2 x i64> %i.dc to <8 x i16>
  %7 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.de = bitcast <8 x i16> %7 to <4 x float>     ; 2 uses
  %i.df = load float, ptr %.5414307.us, align 1, !tbaa !87
  %i.dg = insertelement <4 x float> poison, float %i.df, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.di = bitcast <4 x float> %i.dh to <8 x i16>
  %8 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.di, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dj = bitcast <8 x i16> %8 to <4 x float>     ; 2 uses
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dl = fmul fast <4 x float> %i.dj, %i.de
  %i.dm = fadd fast <4 x float> %i.dl, %.1207304.us ; 2 uses
  %i.dn = fmul fast <4 x float> %i.dk, %i.de
  %i.do = fadd fast <4 x float> %i.dn, %.1209303.us ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0445306.us, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.5414307.us, i64 4
  %i.dr = add nuw nsw i32 %.0446305.us, 1         ; 2 uses
  %exitcond740.not = icmp eq i32 %i.dr, %3
  br i1 %exitcond740.not, label %._crit_edge310.us, label %.lr.ph309.us, !llvm.loop !957

._crit_edge310.us:                                ; preds = %.lr.ph309.us
  %i.ds = getelementptr i8, ptr %.4413315.us, i64 %i.l
  %scevgep739 = getelementptr i8, ptr %i.ds, i64 4 ; 2 uses
  store <4 x float> %i.dm, ptr %.3316.us, align 16, !tbaa !87
  %i.dt = getelementptr inbounds nuw i8, ptr %.3316.us, i64 16
  store <4 x float> %i.do, ptr %i.dt, align 16, !tbaa !87
  %i.du = getelementptr inbounds nuw i8, ptr %.3316.us, i64 32 ; 2 uses
  %i.dv = add nuw nsw i32 %.2439314.us, 2         ; 3 uses
  %i.dw = or disjoint i32 %i.dv, 1
  %i.dx = icmp slt i32 %i.dw, %1
  br i1 %i.dx, label %.lr.ph317.split.us, label %.preheader251, !llvm.loop !958

.lr.ph317.split:                                  ; preds = %.lr.ph317
  br i1 %.not515, label %.lr.ph317.split.split.us.preheader, label %.lr.ph317.split.split

.lr.ph317.split.split.us.preheader:               ; preds = %.lr.ph317.split
  %i.dy = sub i32 %i.k, %.1438.lcssa              ; 2 uses
  %i.dz = lshr i32 %i.dy, 1
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, 5                ; 2 uses
  %i.ec = add nuw nsw i64 %i.eb, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.2405.lcssa, i8 0, i64 %i.ec, i1 false), !tbaa !87
  %scevgep737 = getelementptr i8, ptr %.2405.lcssa, i64 32
  %scevgep738 = getelementptr i8, ptr %scevgep737, i64 %i.eb
  %i.ed = add i32 %.1438.lcssa, 2
  %i.ee = and i32 %i.dy, -2
  %i.ef = add i32 %i.ed, %i.ee
  br label %.preheader251

.lr.ph299:                                        ; preds = %.preheader253, %._crit_edge290
  %.2405298 = phi ptr [ %i.fm, %._crit_edge290 ], [ %.1404.lcssa, %.preheader253 ] ; 9 uses
  %.2411297 = phi ptr [ %.3412.lcssa, %._crit_edge290 ], [ %.0409.lcssa, %.preheader253 ] ; 3 uses
  %.1438296 = phi i32 [ %i.fn, %._crit_edge290 ], [ %.0437.lcssa, %.preheader253 ]
  br i1 %.not515, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph299
  %i.eg = load <4 x float>, ptr %.2405298, align 16, !tbaa !87
  %i.eh = getelementptr inbounds nuw i8, ptr %.2405298, i64 16
  %i.ei = load <4 x float>, ptr %i.eh, align 16, !tbaa !87
  %i.ej = getelementptr inbounds nuw i8, ptr %.2405298, i64 32
  %i.ek = load <4 x float>, ptr %i.ej, align 16, !tbaa !87
  %i.el = getelementptr inbounds nuw i8, ptr %.2405298, i64 48
  %i.em = load <4 x float>, ptr %i.el, align 16, !tbaa !87
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph299
  %.0204 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph299 ], [ %i.em, %bb.e ] ; 2 uses
  %.0202 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph299 ], [ %i.ek, %bb.e ] ; 2 uses
  %.0200 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph299 ], [ %i.ei, %bb.e ] ; 2 uses
  %.0198 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph299 ], [ %i.eg, %bb.e ] ; 2 uses
  br i1 %i.c, label %.lr.ph289, label %._crit_edge290

.lr.ph289:                                        ; preds = %bb.f, %.lr.ph289
  %.3412287 = phi ptr [ %i.fg, %.lr.ph289 ], [ %.2411297, %bb.f ] ; 2 uses
  %.0443286 = phi ptr [ %i.ff, %.lr.ph289 ], [ %.0401356, %bb.f ] ; 2 uses
  %.0444285 = phi i32 [ %i.fh, %.lr.ph289 ], [ 0, %bb.f ]
  %.1199284 = phi <4 x float> [ %i.ey, %.lr.ph289 ], [ %.0198, %bb.f ]
  %.1201283 = phi <4 x float> [ %i.fa, %.lr.ph289 ], [ %.0200, %bb.f ]
  %.1203282 = phi <4 x float> [ %i.fc, %.lr.ph289 ], [ %.0202, %bb.f ]
  %.1205281 = phi <4 x float> [ %i.fe, %.lr.ph289 ], [ %.0204, %bb.f ]
  %i.en = load i64, ptr %.0443286, align 1, !tbaa !87
  %i.eo = insertelement <2 x i64> poison, i64 %i.en, i64 0
  %i.ep = bitcast <2 x i64> %i.eo to <8 x i16>
  %9 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ep, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eq = bitcast <8 x i16> %9 to <4 x float>     ; 3 uses
  %i.er = load i64, ptr %.3412287, align 1, !tbaa !87
  %i.es = insertelement <2 x i64> poison, i64 %i.er, i64 0
  %i.et = bitcast <2 x i64> %i.es to <8 x i16>
  %10 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.et, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eu = bitcast <8 x i16> %10 to <4 x float>    ; 3 uses
  %i.ev = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ew = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.ex = fmul fast <4 x float> %i.eu, %i.eq
  %i.ey = fadd fast <4 x float> %i.ex, %.1199284  ; 2 uses
  %i.ez = fmul fast <4 x float> %i.ew, %i.eq
  %i.fa = fadd fast <4 x float> %i.ez, %.1201283  ; 2 uses
  %i.fb = fmul fast <4 x float> %i.ev, %i.eu
  %i.fc = fadd fast <4 x float> %i.fb, %.1203282  ; 2 uses
  %i.fd = fmul fast <4 x float> %i.ew, %i.ev
  %i.fe = fadd fast <4 x float> %i.fd, %.1205281  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0443286, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.3412287, i64 8
  %i.fh = add nuw nsw i32 %.0444285, 1            ; 2 uses
  %exitcond736.not = icmp eq i32 %i.fh, %3
  br i1 %exitcond736.not, label %._crit_edge290.loopexit, label %.lr.ph289, !llvm.loop !959

._crit_edge290.loopexit:                          ; preds = %.lr.ph289
  %i.fi = getelementptr i8, ptr %.2411297, i64 %i.j
  %scevgep735 = getelementptr i8, ptr %i.fi, i64 8
  br label %._crit_edge290

._crit_edge290:                                   ; preds = %._crit_edge290.loopexit, %bb.f
  %.1205.lcssa = phi <4 x float> [ %.0204, %bb.f ], [ %i.fe, %._crit_edge290.loopexit ]
  %.1203.lcssa = phi <4 x float> [ %.0202, %bb.f ], [ %i.fc, %._crit_edge290.loopexit ]
  %.1201.lcssa = phi <4 x float> [ %.0200, %bb.f ], [ %i.fa, %._crit_edge290.loopexit ]
  %.1199.lcssa = phi <4 x float> [ %.0198, %bb.f ], [ %i.ey, %._crit_edge290.loopexit ]
  %.3412.lcssa = phi ptr [ %.2411297, %bb.f ], [ %scevgep735, %._crit_edge290.loopexit ] ; 2 uses
  store <4 x float> %.1199.lcssa, ptr %.2405298, align 16, !tbaa !87
  %i.fj = getelementptr inbounds nuw i8, ptr %.2405298, i64 16
  store <4 x float> %.1201.lcssa, ptr %i.fj, align 16, !tbaa !87
  %i.fk = getelementptr inbounds nuw i8, ptr %.2405298, i64 32
  store <4 x float> %.1203.lcssa, ptr %i.fk, align 16, !tbaa !87
  %i.fl = getelementptr inbounds nuw i8, ptr %.2405298, i64 48
  store <4 x float> %.1205.lcssa, ptr %i.fl, align 16, !tbaa !87
  %i.fm = getelementptr inbounds nuw i8, ptr %.2405298, i64 64 ; 2 uses
  %i.fn = add nuw nsw i32 %.1438296, 4            ; 3 uses
  %i.fo = or disjoint i32 %i.fn, 3
  %i.fp = icmp slt i32 %i.fo, %1
  br i1 %i.fp, label %.lr.ph299, label %.preheader252, !llvm.loop !960

.preheader251:                                    ; preds = %.lr.ph317.split.split, %._crit_edge310.us, %.lr.ph317.split.split.us.preheader, %.preheader252
  %.2439.lcssa = phi i32 [ %.1438.lcssa, %.preheader252 ], [ %i.ef, %.lr.ph317.split.split.us.preheader ], [ %i.dv, %._crit_edge310.us ], [ %i.gs, %.lr.ph317.split.split ] ; 4 uses
  %.4413.lcssa = phi ptr [ %.2411.lcssa, %.preheader252 ], [ %.2411.lcssa, %.lr.ph317.split.split.us.preheader ], [ %scevgep739, %._crit_edge310.us ], [ %.2411.lcssa, %.lr.ph317.split.split ]
  %.3.lcssa = phi ptr [ %.2405.lcssa, %.preheader252 ], [ %scevgep738, %.lr.ph317.split.split.us.preheader ], [ %i.du, %._crit_edge310.us ], [ %i.gr, %.lr.ph317.split.split ] ; 5 uses
  %i.fq = icmp slt i32 %.2439.lcssa, %1
  br i1 %i.fq, label %.lr.ph345, label %._crit_edge346

.lr.ph345:                                        ; preds = %.preheader251
  br i1 %i.c, label %.lr.ph345.split.us, label %.lr.ph345.split

.lr.ph345.split.us:                               ; preds = %.lr.ph345, %._crit_edge339.us
  %.4344.us = phi ptr [ %i.gi, %._crit_edge339.us ], [ %.3.lcssa, %.lr.ph345 ] ; 3 uses
  %.6415343.us = phi ptr [ %scevgep745, %._crit_edge339.us ], [ %.4413.lcssa, %.lr.ph345 ] ; 2 uses
  %.3440342.us = phi i32 [ %i.gj, %._crit_edge339.us ], [ %.2439.lcssa, %.lr.ph345 ]
  br i1 %.not515, label %.lr.ph338.us.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph345.split.us
  %i.fr = load <4 x float>, ptr %.4344.us, align 16, !tbaa !87
  br label %.lr.ph338.us.preheader

.lr.ph338.us.preheader:                           ; preds = %bb.g, %.lr.ph345.split.us
  %.1211333.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph345.split.us ], [ %i.fr, %bb.g ]
  br label %.lr.ph338.us

.lr.ph338.us:                                     ; preds = %.lr.ph338.us.preheader, %.lr.ph338.us
  %.7416336.us = phi ptr [ %i.gf, %.lr.ph338.us ], [ %.6415343.us, %.lr.ph338.us.preheader ] ; 2 uses
  %.0473335.us = phi ptr [ %i.ge, %.lr.ph338.us ], [ %.0401356, %.lr.ph338.us.preheader ] ; 2 uses
  %.0474334.us = phi i32 [ %i.gg, %.lr.ph338.us ], [ 0, %.lr.ph338.us.preheader ]
  %.1211333.us = phi <4 x float> [ %i.gd, %.lr.ph338.us ], [ %.1211333.us.ph, %.lr.ph338.us.preheader ]
  %i.fs = load i64, ptr %.0473335.us, align 1, !tbaa !87
  %i.ft = insertelement <2 x i64> poison, i64 %i.fs, i64 0
  %i.fu = bitcast <2 x i64> %i.ft to <8 x i16>
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fv = bitcast <8 x i16> %11 to <4 x float>
  %i.fw = load i16, ptr %.7416336.us, align 2, !tbaa !105
  %i.fx = zext i16 %i.fw to i32
  %i.fy = shl nuw i32 %i.fx, 16
  %i.fz = insertelement <4 x i32> poison, i32 %i.fy, i64 0
  %i.ga = bitcast <4 x i32> %i.fz to <4 x float>
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gc = fmul fast <4 x float> %i.gb, %i.fv
  %i.gd = fadd fast <4 x float> %i.gc, %.1211333.us ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.0473335.us, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %.7416336.us, i64 2
  %i.gg = add nuw nsw i32 %.0474334.us, 1         ; 2 uses
  %exitcond746.not = icmp eq i32 %i.gg, %3
  br i1 %exitcond746.not, label %._crit_edge339.us, label %.lr.ph338.us, !llvm.loop !961

._crit_edge339.us:                                ; preds = %.lr.ph338.us
  %i.gh = getelementptr i8, ptr %.6415343.us, i64 %i.n
  %scevgep745 = getelementptr i8, ptr %i.gh, i64 2
  store <4 x float> %i.gd, ptr %.4344.us, align 16, !tbaa !87
  %i.gi = getelementptr inbounds nuw i8, ptr %.4344.us, i64 16 ; 2 uses
  %i.gj = add nuw nsw i32 %.3440342.us, 1         ; 2 uses
  %exitcond747.not = icmp eq i32 %i.gj, %1
  br i1 %exitcond747.not, label %._crit_edge346, label %.lr.ph345.split.us, !llvm.loop !962

.lr.ph345.split:                                  ; preds = %.lr.ph345
  br i1 %.not515, label %.lr.ph345.split.split.us.preheader, label %.lr.ph345.split.split.preheader

.lr.ph345.split.split.preheader:                  ; preds = %.lr.ph345.split
  %scevgep741 = getelementptr i8, ptr %.3.lcssa, i64 16
  %i.gk = sub i32 %i.m, %.2439.lcssa
  %i.gl = zext i32 %i.gk to i64
  %i.gm = shl nuw nsw i64 %i.gl, 4
  %scevgep742 = getelementptr i8, ptr %scevgep741, i64 %i.gm
  br label %._crit_edge346

.lr.ph345.split.split.us.preheader:               ; preds = %.lr.ph345.split
  %i.gn = sub i32 %i.m, %.2439.lcssa
  %i.go = zext i32 %i.gn to i64
  %i.gp = shl nuw nsw i64 %i.go, 4                ; 2 uses
  %i.gq = add nuw nsw i64 %i.gp, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.3.lcssa, i8 0, i64 %i.gq, i1 false), !tbaa !87
  %scevgep743 = getelementptr i8, ptr %.3.lcssa, i64 16
  %scevgep744 = getelementptr i8, ptr %scevgep743, i64 %i.gp
  br label %._crit_edge346

.lr.ph317.split.split:                            ; preds = %.lr.ph317.split, %.lr.ph317.split.split
  %.3316 = phi ptr [ %i.gr, %.lr.ph317.split.split ], [ %.2405.lcssa, %.lr.ph317.split ]
  %.2439314 = phi i32 [ %i.gs, %.lr.ph317.split.split ], [ %.1438.lcssa, %.lr.ph317.split ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.3316, i64 32 ; 2 uses
  %i.gs = add nuw nsw i32 %.2439314, 2            ; 3 uses
  %i.gt = or disjoint i32 %i.gs, 1
  %i.gu = icmp slt i32 %i.gt, %1
  br i1 %i.gu, label %.lr.ph317.split.split, label %.preheader251, !llvm.loop !958

._crit_edge346:                                   ; preds = %._crit_edge339.us, %.lr.ph345.split.split.preheader, %.lr.ph345.split.split.us.preheader, %.preheader251
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader251 ], [ %scevgep744, %.lr.ph345.split.split.us.preheader ], [ %scevgep742, %.lr.ph345.split.split.preheader ], [ %i.gi, %._crit_edge339.us ] ; 2 uses
  %i.gv = getelementptr inbounds [2 x i8], ptr %.0401356, i64 %i.e ; 2 uses
  %i.gw = add nuw nsw i32 %.0406354, 4            ; 2 uses
  %i.gx = or disjoint i32 %i.gw, 3
  %i.gy = icmp slt i32 %i.gx, %0
  br i1 %i.gy, label %.preheader254, label %.preheader250.loopexit, !llvm.loop !963

.preheader249:                                    ; preds = %.preheader249.lr.ph, %._crit_edge451
  %.1402455 = phi ptr [ %.0401.lcssa, %.preheader249.lr.ph ], [ %i.pr, %._crit_edge451 ] ; 10 uses
  %.5454 = phi ptr [ %.0403.lcssa, %.preheader249.lr.ph ], [ %.9.lcssa, %._crit_edge451 ] ; 2 uses
  %.1407453 = phi i32 [ %.0406.lcssa, %.preheader249.lr.ph ], [ %i.ps, %._crit_edge451 ]
  br i1 %i.r, label %.lr.ph379, label %.preheader248

.preheader245:                                    ; preds = %._crit_edge451, %.preheader250
  %.1407.lcssa = phi i32 [ %.0406.lcssa, %.preheader250 ], [ %i.ps, %._crit_edge451 ] ; 2 uses
  %.5.lcssa = phi ptr [ %.0403.lcssa, %.preheader250 ], [ %.9.lcssa, %._crit_edge451 ]
  %.1402.lcssa = phi ptr [ %.0401.lcssa, %.preheader250 ], [ %i.pr, %._crit_edge451 ]
  %i.gz = icmp slt i32 %.1407.lcssa, %0
  br i1 %i.gz, label %.preheader244.lr.ph, label %._crit_edge613

.preheader244.lr.ph:                              ; preds = %.preheader245
  %i.ha = icmp sgt i32 %1, 7
  %.not507 = icmp eq i32 %2, 0                    ; 4 uses
  %i.hb = icmp sgt i32 %3, 3                      ; 4 uses
  %i.hc = sext i32 %3 to i64
  %i.hd = add i32 %3, -4                          ; 4 uses
  %i.he = and i32 %i.hd, -4
  %i.hf = add i32 %i.he, 4                        ; 4 uses
  %i.hg = and i32 %1, -8
  %i.hh = lshr i32 %i.hd, 2
  %i.hi = zext nneg i32 %i.hh to i64              ; 5 uses
  %i.hj = shl nuw nsw i64 %i.hi, 5
  %i.hk = shl nuw nsw i64 %i.hi, 4
  %i.hl = shl nuw nsw i64 %i.hi, 3
  %i.hm = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %min.iters.check233 = icmp ult i32 %i.hd, 12
  %n.vec235 = and i64 %i.hm, 2147483644           ; 5 uses
  %i.hn = trunc nuw nsw i64 %n.vec235 to i32
  %i.ho = shl i32 %i.hn, 2
  %i.hp = shl nuw nsw i64 %n.vec235, 3
  %i.hq = shl nuw nsw i64 %n.vec235, 4
  %cmp.n256 = icmp eq i64 %i.hm, %n.vec235
  %i.hr = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %min.iters.check158 = icmp ult i32 %i.hd, 28
  %n.vec160 = and i64 %i.hr, 2147483640           ; 4 uses
  %i.hs = trunc nuw nsw i64 %n.vec160 to i32
  %i.ht = shl i32 %i.hs, 2
  %i.hu = shl nuw nsw i64 %n.vec160, 3            ; 2 uses
  %cmp.n193 = icmp eq i64 %i.hr, %n.vec160
  br label %.preheader244

.preheader248:                                    ; preds = %._crit_edge370, %.preheader249
  %.0483.lcssa = phi i32 [ 0, %.preheader249 ], [ %i.y, %._crit_edge370 ] ; 6 uses
  %.0475.lcssa = phi ptr [ %.0.val1, %.preheader249 ], [ %.1476.lcssa, %._crit_edge370 ] ; 4 uses
  %.6.lcssa = phi ptr [ %.5454, %.preheader249 ], [ %i.km, %._crit_edge370 ] ; 5 uses
  %i.hv = or disjoint i32 %.0483.lcssa, 3
  %i.hw = icmp slt i32 %i.hv, %1
  br i1 %i.hw, label %.lr.ph397, label %.preheader247

.lr.ph397:                                        ; preds = %.preheader248
  br i1 %i.s, label %.lr.ph397.split.us, label %.lr.ph397.split

.lr.ph397.split.us:                               ; preds = %.lr.ph397, %._crit_edge390.us
  %.7396.us = phi ptr [ %i.it, %._crit_edge390.us ], [ %.6.lcssa, %.lr.ph397 ] ; 5 uses
  %.2477395.us = phi ptr [ %scevgep752, %._crit_edge390.us ], [ %.0475.lcssa, %.lr.ph397 ] ; 2 uses
  %.1484394.us = phi i32 [ %i.iu, %._crit_edge390.us ], [ %.0483.lcssa, %.lr.ph397 ]
  br i1 %.not511, label %.lr.ph389.us.preheader, label %bb.h

bb.h:                                             ; preds = %.lr.ph397.split.us
  %i.hx = load <4 x float>, ptr %.7396.us, align 16, !tbaa !87
  %i.hy = getelementptr inbounds nuw i8, ptr %.7396.us, i64 16
  %i.hz = load <4 x float>, ptr %i.hy, align 16, !tbaa !87
  br label %.lr.ph389.us.preheader

.lr.ph389.us.preheader:                           ; preds = %bb.h, %.lr.ph397.split.us
  %.1227384.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph397.split.us ], [ %i.hx, %bb.h ]
  %.1229383.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph397.split.us ], [ %i.hz, %bb.h ]
  br label %.lr.ph389.us

.lr.ph389.us:                                     ; preds = %.lr.ph389.us.preheader, %.lr.ph389.us
  %.3478387.us = phi ptr [ %i.ip, %.lr.ph389.us ], [ %.2477395.us, %.lr.ph389.us.preheader ] ; 2 uses
  %.0497386.us = phi i32 [ %i.iq, %.lr.ph389.us ], [ 0, %.lr.ph389.us.preheader ]
  %.0498385.us = phi ptr [ %i.io, %.lr.ph389.us ], [ %.1402455, %.lr.ph389.us.preheader ] ; 2 uses
  %.1227384.us = phi <4 x float> [ %i.il, %.lr.ph389.us ], [ %.1227384.us.ph, %.lr.ph389.us.preheader ]
  %.1229383.us = phi <4 x float> [ %i.in, %.lr.ph389.us ], [ %.1229383.us.ph, %.lr.ph389.us.preheader ]
  %i.ia = load float, ptr %.0498385.us, align 1, !tbaa !87
  %i.ib = insertelement <4 x float> poison, float %i.ia, i64 0
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.id = bitcast <4 x float> %i.ic to <8 x i16>
  %12 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.id, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ie = bitcast <8 x i16> %12 to <4 x float>    ; 2 uses
  %i.if = load i64, ptr %.3478387.us, align 1, !tbaa !87
  %i.ig = insertelement <2 x i64> poison, i64 %i.if, i64 0
  %i.ih = bitcast <2 x i64> %i.ig to <8 x i16>
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ih, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ii = bitcast <8 x i16> %13 to <4 x float>    ; 2 uses
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ik = fmul fast <4 x float> %i.ie, %i.ii
  %i.il = fadd fast <4 x float> %i.ik, %.1227384.us ; 2 uses
  %i.im = fmul fast <4 x float> %i.ij, %i.ie
  %i.in = fadd fast <4 x float> %i.im, %.1229383.us ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0498385.us, i64 4
  %i.ip = getelementptr inbounds nuw i8, ptr %.3478387.us, i64 8
  %i.iq = add nuw nsw i32 %.0497386.us, 1         ; 2 uses
  %exitcond753.not = icmp eq i32 %i.iq, %3
  br i1 %exitcond753.not, label %._crit_edge390.us, label %.lr.ph389.us, !llvm.loop !964

._crit_edge390.us:                                ; preds = %.lr.ph389.us
  %i.ir = getelementptr i8, ptr %.2477395.us, i64 %i.aa
  %scevgep752 = getelementptr i8, ptr %i.ir, i64 8 ; 2 uses
  store <4 x float> %i.il, ptr %.7396.us, align 16, !tbaa !87
  %i.is = getelementptr inbounds nuw i8, ptr %.7396.us, i64 16
  store <4 x float> %i.in, ptr %i.is, align 16, !tbaa !87
  %i.it = getelementptr inbounds nuw i8, ptr %.7396.us, i64 32 ; 2 uses
  %i.iu = add nuw nsw i32 %.1484394.us, 4         ; 3 uses
  %i.iv = or disjoint i32 %i.iu, 3
  %i.iw = icmp slt i32 %i.iv, %1
  br i1 %i.iw, label %.lr.ph397.split.us, label %.preheader247, !llvm.loop !965

.lr.ph397.split:                                  ; preds = %.lr.ph397
  br i1 %.not511, label %.lr.ph397.split.split.us.preheader, label %.lr.ph397.split.split

.lr.ph397.split.split.us.preheader:               ; preds = %.lr.ph397.split
  %i.ix = sub i32 %i.z, %.0483.lcssa              ; 2 uses
  %i.iy = lshr i32 %i.ix, 2
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = shl nuw nsw i64 %i.iz, 5                ; 2 uses
  %i.jb = add nuw nsw i64 %i.ja, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.6.lcssa, i8 0, i64 %i.jb, i1 false), !tbaa !87
  %scevgep750 = getelementptr i8, ptr %.6.lcssa, i64 32
  %scevgep751 = getelementptr i8, ptr %scevgep750, i64 %i.ja
  %i.jc = or disjoint i32 %.0483.lcssa, 4
  %i.jd = and i32 %i.ix, -4
  %i.je = add i32 %i.jc, %i.jd
  br label %.preheader247

.lr.ph379:                                        ; preds = %.preheader249, %._crit_edge370
  %.6378 = phi ptr [ %i.km, %._crit_edge370 ], [ %.5454, %.preheader249 ] ; 9 uses
  %.0475377 = phi ptr [ %.1476.lcssa, %._crit_edge370 ], [ %.0.val1, %.preheader249 ] ; 3 uses
  %.0483376 = phi i32 [ %i.kn, %._crit_edge370 ], [ 0, %.preheader249 ]
  br i1 %.not511, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph379
  %i.jf = load <4 x float>, ptr %.6378, align 16, !tbaa !87
  %i.jg = getelementptr inbounds nuw i8, ptr %.6378, i64 16
  %i.jh = load <4 x float>, ptr %i.jg, align 16, !tbaa !87
  %i.ji = getelementptr inbounds nuw i8, ptr %.6378, i64 32
  %i.jj = load <4 x float>, ptr %i.ji, align 16, !tbaa !87
  %i.jk = getelementptr inbounds nuw i8, ptr %.6378, i64 48
  %i.jl = load <4 x float>, ptr %i.jk, align 16, !tbaa !87
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph379
  %.0224 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph379 ], [ %i.jl, %bb.i ] ; 2 uses
  %.0222 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph379 ], [ %i.jj, %bb.i ] ; 2 uses
  %.0220 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph379 ], [ %i.jh, %bb.i ] ; 2 uses
  %.0218 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph379 ], [ %i.jf, %bb.i ] ; 2 uses
  br i1 %i.s, label %.lr.ph369, label %._crit_edge370

.lr.ph369:                                        ; preds = %bb.j, %.lr.ph369
  %.1476367 = phi ptr [ %i.kg, %.lr.ph369 ], [ %.0475377, %bb.j ] ; 2 uses
  %.0499366 = phi i32 [ %i.kh, %.lr.ph369 ], [ 0, %bb.j ]
  %.0500365 = phi ptr [ %i.kf, %.lr.ph369 ], [ %.1402455, %bb.j ] ; 2 uses
  %.1219364 = phi <4 x float> [ %i.jy, %.lr.ph369 ], [ %.0218, %bb.j ]
  %.1221363 = phi <4 x float> [ %i.ka, %.lr.ph369 ], [ %.0220, %bb.j ]
  %.1223362 = phi <4 x float> [ %i.kc, %.lr.ph369 ], [ %.0222, %bb.j ]
  %.1225361 = phi <4 x float> [ %i.ke, %.lr.ph369 ], [ %.0224, %bb.j ]
  %i.jm = load float, ptr %.0500365, align 1, !tbaa !87
  %i.jn = insertelement <4 x float> poison, float %i.jm, i64 0
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.jp = load <2 x i64>, ptr %.1476367, align 1, !tbaa !87 ; 2 uses
  %i.jq = bitcast <4 x float> %i.jo to <8 x i16>
  %14 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jr = bitcast <8 x i16> %14 to <4 x float>    ; 3 uses
  %i.js = shufflevector <4 x float> %i.jr, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.jt = bitcast <2 x i64> %i.jp to <8 x i16>
  %15 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ju = bitcast <8 x i16> %15 to <4 x float>    ; 2 uses
  %i.jv = bitcast <2 x i64> %i.jp to <8 x i16>
  %16 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jv, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.jw = bitcast <8 x i16> %16 to <4 x float>    ; 2 uses
  %i.jx = fmul fast <4 x float> %i.jr, %i.ju
  %i.jy = fadd fast <4 x float> %i.jx, %.1219364  ; 2 uses
  %i.jz = fmul fast <4 x float> %i.jw, %i.jr
  %i.ka = fadd fast <4 x float> %i.jz, %.1221363  ; 2 uses
  %i.kb = fmul fast <4 x float> %i.js, %i.ju
  %i.kc = fadd fast <4 x float> %i.kb, %.1223362  ; 2 uses
  %i.kd = fmul fast <4 x float> %i.js, %i.jw
  %i.ke = fadd fast <4 x float> %i.kd, %.1225361  ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.0500365, i64 4
  %i.kg = getelementptr inbounds nuw i8, ptr %.1476367, i64 16
  %i.kh = add nuw nsw i32 %.0499366, 1            ; 2 uses
  %exitcond749.not = icmp eq i32 %i.kh, %3
  br i1 %exitcond749.not, label %._crit_edge370.loopexit, label %.lr.ph369, !llvm.loop !966

._crit_edge370.loopexit:                          ; preds = %.lr.ph369
  %i.ki = getelementptr i8, ptr %.0475377, i64 %i.x
  %scevgep748 = getelementptr i8, ptr %i.ki, i64 16
  br label %._crit_edge370

._crit_edge370:                                   ; preds = %._crit_edge370.loopexit, %bb.j
  %.1225.lcssa = phi <4 x float> [ %.0224, %bb.j ], [ %i.ke, %._crit_edge370.loopexit ]
  %.1223.lcssa = phi <4 x float> [ %.0222, %bb.j ], [ %i.kc, %._crit_edge370.loopexit ]
  %.1221.lcssa = phi <4 x float> [ %.0220, %bb.j ], [ %i.ka, %._crit_edge370.loopexit ]
  %.1219.lcssa = phi <4 x float> [ %.0218, %bb.j ], [ %i.jy, %._crit_edge370.loopexit ]
  %.1476.lcssa = phi ptr [ %.0475377, %bb.j ], [ %scevgep748, %._crit_edge370.loopexit ] ; 2 uses
  store <4 x float> %.1219.lcssa, ptr %.6378, align 16, !tbaa !87
  %i.kj = getelementptr inbounds nuw i8, ptr %.6378, i64 16
  store <4 x float> %.1221.lcssa, ptr %i.kj, align 16, !tbaa !87
  %i.kk = getelementptr inbounds nuw i8, ptr %.6378, i64 32
  store <4 x float> %.1223.lcssa, ptr %i.kk, align 16, !tbaa !87
  %i.kl = getelementptr inbounds nuw i8, ptr %.6378, i64 48
  store <4 x float> %.1225.lcssa, ptr %i.kl, align 16, !tbaa !87
  %i.km = getelementptr inbounds nuw i8, ptr %.6378, i64 64 ; 2 uses
  %i.kn = add nuw nsw i32 %.0483376, 8            ; 2 uses
  %i.ko = or disjoint i32 %i.kn, 7
  %i.kp = icmp slt i32 %i.ko, %1
  br i1 %i.kp, label %.lr.ph379, label %.preheader248, !llvm.loop !967

.preheader247:                                    ; preds = %.lr.ph397.split.split, %._crit_edge390.us, %.lr.ph397.split.split.us.preheader, %.preheader248
  %.1484.lcssa = phi i32 [ %.0483.lcssa, %.preheader248 ], [ %i.je, %.lr.ph397.split.split.us.preheader ], [ %i.iu, %._crit_edge390.us ], [ %i.ku, %.lr.ph397.split.split ] ; 3 uses
  %.2477.lcssa = phi ptr [ %.0475.lcssa, %.preheader248 ], [ %.0475.lcssa, %.lr.ph397.split.split.us.preheader ], [ %scevgep752, %._crit_edge390.us ], [ %.0475.lcssa, %.lr.ph397.split.split ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6.lcssa, %.preheader248 ], [ %scevgep751, %.lr.ph397.split.split.us.preheader ], [ %i.it, %._crit_edge390.us ], [ %i.kt, %.lr.ph397.split.split ] ; 2 uses
  %i.kq = or disjoint i32 %.1484.lcssa, 1
  %i.kr = icmp slt i32 %i.kq, %1
  br i1 %i.kr, label %.lr.ph432.preheader, label %.preheader246

.lr.ph432.preheader:                              ; preds = %.preheader247
  %i.ks = getelementptr i8, ptr %.1402455, i64 %i.ae
  br label %.lr.ph432

.lr.ph397.split.split:                            ; preds = %.lr.ph397.split, %.lr.ph397.split.split
  %.7396 = phi ptr [ %i.kt, %.lr.ph397.split.split ], [ %.6.lcssa, %.lr.ph397.split ]
  %.1484394 = phi i32 [ %i.ku, %.lr.ph397.split.split ], [ %.0483.lcssa, %.lr.ph397.split ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.7396, i64 32 ; 2 uses
  %i.ku = add nuw nsw i32 %.1484394, 4            ; 3 uses
  %i.kv = or disjoint i32 %i.ku, 3
  %i.kw = icmp slt i32 %i.kv, %1
  br i1 %i.kw, label %.lr.ph397.split.split, label %.preheader247, !llvm.loop !965

.preheader246:                                    ; preds = %._crit_edge423, %.preheader247
  %.2485.lcssa = phi i32 [ %.1484.lcssa, %.preheader247 ], [ %i.nd, %._crit_edge423 ] ; 2 uses
  %.4479.lcssa = phi ptr [ %.2477.lcssa, %.preheader247 ], [ %.5480.lcssa, %._crit_edge423 ]
  %.8.lcssa = phi ptr [ %.7.lcssa, %.preheader247 ], [ %i.nc, %._crit_edge423 ] ; 2 uses
  %i.kx = icmp slt i32 %.2485.lcssa, %1
  br i1 %i.kx, label %.lr.ph450.preheader, label %._crit_edge451

.lr.ph450.preheader:                              ; preds = %.preheader246
  %i.ky = getelementptr i8, ptr %.1402455, i64 %i.ai
  br label %.lr.ph450

.lr.ph432:                                        ; preds = %.lr.ph432.preheader, %._crit_edge423
  %.8431 = phi ptr [ %i.nc, %._crit_edge423 ], [ %.7.lcssa, %.lr.ph432.preheader ] ; 3 uses
  %.4479430 = phi ptr [ %.5480.lcssa, %._crit_edge423 ], [ %.2477.lcssa, %.lr.ph432.preheader ] ; 5 uses
  %.2485429 = phi i32 [ %i.nd, %._crit_edge423 ], [ %.1484.lcssa, %.lr.ph432.preheader ]
  br i1 %.not511, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph432
  %i.kz = load <4 x float>, ptr %.8431, align 4, !tbaa !67
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph432
  %i.la = phi <4 x float> [ %i.kz, %bb.k ], [ zeroinitializer, %.lr.ph432 ] ; 6 uses
  br i1 %i.s, label %.lr.ph422.preheader, label %._crit_edge423

.lr.ph422.preheader:                              ; preds = %bb.l
  br i1 %min.iters.check108, label %.lr.ph422.preheader341, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph422.preheader
  %i.lb = getelementptr i8, ptr %.4479430, i64 %i.ae
  %17 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.la, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %18 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.la, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %19 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.la, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.lc = shufflevector <4 x float> %i.la, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next125, %vector.body111 ] ; 2 uses
  %vec.phi113 = phi <4 x float> [ %17, %vector.ph109 ], [ %i.lz, %vector.body111 ]
  %vec.phi114 = phi <4 x float> [ %18, %vector.ph109 ], [ %i.lx, %vector.body111 ]
  %vec.phi115 = phi <4 x float> [ %19, %vector.ph109 ], [ %i.lv, %vector.body111 ]
  %vec.phi116 = phi <4 x float> [ %i.lc, %vector.ph109 ], [ %i.lt, %vector.body111 ]
  %i.ld = shl i64 %index112, 2                    ; 2 uses
  %next.gep117 = getelementptr i8, ptr %.4479430, i64 %i.ld
  %next.gep118 = getelementptr i8, ptr %.1402455, i64 %i.ld
  %wide.vec119 = load <8 x i16>, ptr %next.gep118, align 2, !tbaa !105
  %i.le = freeze <8 x i16> %wide.vec119           ; 2 uses
  %i.lf = bitcast <8 x i16> %i.le to <4 x i32>
  %i.lg = bitcast <8 x i16> %i.le to <4 x i32>
  %i.lh = and <4 x i32> %i.lg, splat (i32 -65536)
  %i.li = shl <4 x i32> %i.lf, splat (i32 16)
  %i.lj = bitcast <4 x i32> %i.li to <4 x float>  ; 2 uses
  %i.lk = bitcast <4 x i32> %i.lh to <4 x float>  ; 2 uses
  %wide.vec122 = load <8 x i16>, ptr %next.gep117, align 2, !tbaa !105
  %i.ll = freeze <8 x i16> %wide.vec122           ; 2 uses
  %i.lm = bitcast <8 x i16> %i.ll to <4 x i32>
  %i.ln = bitcast <8 x i16> %i.ll to <4 x i32>
  %i.lo = and <4 x i32> %i.ln, splat (i32 -65536)
  %i.lp = shl <4 x i32> %i.lm, splat (i32 16)
  %i.lq = bitcast <4 x i32> %i.lp to <4 x float>  ; 2 uses
  %i.lr = bitcast <4 x i32> %i.lo to <4 x float>  ; 2 uses
  %i.ls = fmul fast <4 x float> %i.lq, %i.lj
  %i.lt = fadd fast <4 x float> %i.ls, %vec.phi116 ; 2 uses
  %i.lu = fmul fast <4 x float> %i.lr, %i.lj
  %i.lv = fadd fast <4 x float> %i.lu, %vec.phi115 ; 2 uses
  %i.lw = fmul fast <4 x float> %i.lq, %i.lk
  %i.lx = fadd fast <4 x float> %i.lw, %vec.phi114 ; 2 uses
  %i.ly = fmul fast <4 x float> %i.lr, %i.lk
  %i.lz = fadd fast <4 x float> %i.ly, %vec.phi113 ; 2 uses
  %index.next125 = add nuw i64 %index112, 4       ; 2 uses
  %i.ma = icmp eq i64 %index.next125, %n.vec110
  br i1 %i.ma, label %middle.block126, label %vector.body111, !llvm.loop !968

middle.block126:                                  ; preds = %vector.body111
  %i.mb = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.lz)
  %i.mc = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.lx)
  %i.md = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.lv)
  %i.me = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.lt)
  %i.mf = insertelement <4 x float> poison, float %i.me, i64 0
  %i.mg = insertelement <4 x float> %i.mf, float %i.md, i64 1
  %i.mh = insertelement <4 x float> %i.mg, float %i.mc, i64 2
  %i.mi = insertelement <4 x float> %i.mh, float %i.mb, i64 3 ; 2 uses
  br i1 %cmp.n127, label %._crit_edge423.loopexit, label %.lr.ph422.preheader341

.lr.ph422.preheader341:                           ; preds = %.lr.ph422.preheader, %middle.block126
  %.5480420.ph = phi ptr [ %.4479430, %.lr.ph422.preheader ], [ %i.lb, %middle.block126 ]
  %.0487419.ph = phi i32 [ 0, %.lr.ph422.preheader ], [ %i.af, %middle.block126 ]
  %.0488418.ph = phi ptr [ %.1402455, %.lr.ph422.preheader ], [ %i.ks, %middle.block126 ]
  %.ph342 = phi <4 x float> [ %i.la, %.lr.ph422.preheader ], [ %i.mi, %middle.block126 ]
  br label %.lr.ph422

.lr.ph422:                                        ; preds = %.lr.ph422.preheader341, %.lr.ph422
  %.5480420 = phi ptr [ %i.mx, %.lr.ph422 ], [ %.5480420.ph, %.lr.ph422.preheader341 ] ; 2 uses
  %.0487419 = phi i32 [ %i.my, %.lr.ph422 ], [ %.0487419.ph, %.lr.ph422.preheader341 ]
  %.0488418 = phi ptr [ %i.mw, %.lr.ph422 ], [ %.0488418.ph, %.lr.ph422.preheader341 ] ; 2 uses
  %i.mj = phi <4 x float> [ %i.mv, %.lr.ph422 ], [ %.ph342, %.lr.ph422.preheader341 ]
  %i.mk = load <2 x i16>, ptr %.0488418, align 2, !tbaa !105
  %i.ml = shufflevector <2 x i16> %i.mk, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.mm = zext <4 x i16> %i.ml to <4 x i32>
  %i.mn = shl nuw <4 x i32> %i.mm, splat (i32 16)
  %i.mo = bitcast <4 x i32> %i.mn to <4 x float>
  %i.mp = load <2 x i16>, ptr %.5480420, align 2, !tbaa !105
  %i.mq = shufflevector <2 x i16> %i.mp, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mr = zext <4 x i16> %i.mq to <4 x i32>
  %i.ms = shl nuw <4 x i32> %i.mr, splat (i32 16)
  %i.mt = bitcast <4 x i32> %i.ms to <4 x float>
  %i.mu = fmul fast <4 x float> %i.mt, %i.mo
  %i.mv = fadd fast <4 x float> %i.mu, %i.mj      ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.0488418, i64 4
  %i.mx = getelementptr inbounds nuw i8, ptr %.5480420, i64 4
  %i.my = add nuw nsw i32 %.0487419, 1            ; 2 uses
  %exitcond755.not = icmp eq i32 %i.my, %3
  br i1 %exitcond755.not, label %._crit_edge423.loopexit, label %.lr.ph422, !llvm.loop !969

._crit_edge423.loopexit:                          ; preds = %.lr.ph422, %middle.block126
  %i.mz = phi <4 x float> [ %i.mi, %middle.block126 ], [ %i.mv, %.lr.ph422 ]
  %i.na = getelementptr i8, ptr %.4479430, i64 %i.ab
  %scevgep754 = getelementptr i8, ptr %i.na, i64 4
  br label %._crit_edge423

._crit_edge423:                                   ; preds = %._crit_edge423.loopexit, %bb.l
  %.5480.lcssa = phi ptr [ %.4479430, %bb.l ], [ %scevgep754, %._crit_edge423.loopexit ] ; 2 uses
  %i.nb = phi <4 x float> [ %i.la, %bb.l ], [ %i.mz, %._crit_edge423.loopexit ]
  store <4 x float> %i.nb, ptr %.8431, align 4, !tbaa !67
  %i.nc = getelementptr inbounds nuw i8, ptr %.8431, i64 16 ; 2 uses
  %i.nd = add nuw nsw i32 %.2485429, 2            ; 3 uses
  %i.ne = or disjoint i32 %i.nd, 1
  %i.nf = icmp slt i32 %i.ne, %1
  br i1 %i.nf, label %.lr.ph432, label %.preheader246, !llvm.loop !970

.lr.ph450:                                        ; preds = %.lr.ph450.preheader, %._crit_edge443
  %.9449 = phi ptr [ %i.pp, %._crit_edge443 ], [ %.8.lcssa, %.lr.ph450.preheader ] ; 3 uses
  %.6481448 = phi ptr [ %.7482.lcssa, %._crit_edge443 ], [ %.4479.lcssa, %.lr.ph450.preheader ] ; 5 uses
  %.3486447 = phi i32 [ %i.pq, %._crit_edge443 ], [ %.2485.lcssa, %.lr.ph450.preheader ]
  br i1 %.not511, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph450
  %i.ng = load <2 x float>, ptr %.9449, align 4, !tbaa !67
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph450
  %i.nh = phi <2 x float> [ %i.ng, %bb.m ], [ zeroinitializer, %.lr.ph450 ] ; 3 uses
  br i1 %i.s, label %.lr.ph442.preheader, label %._crit_edge443

.lr.ph442.preheader:                              ; preds = %bb.n
  br i1 %min.iters.check, label %.lr.ph442.preheader339, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph442.preheader
  %i.ni = getelementptr i8, ptr %.6481448, i64 %i.aj
  %i.nj = shufflevector <2 x float> %i.nh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %20 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.nj, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x float> [ %20, %vector.ph ], [ %i.op, %vector.body ]
  %vec.phi93 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.oq, %vector.body ]
  %vec.phi94 = phi <4 x float> [ %i.nk, %vector.ph ], [ %i.oj, %vector.body ]
  %vec.phi95 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ok, %vector.body ]
  %i.nl = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.1402455, i64 %i.nl
  %i.nm = getelementptr i8, ptr %.1402455, i64 %i.nl
  %next.gep96 = getelementptr i8, ptr %i.nm, i64 16
  %i.nn = shl i64 %index, 1
  %next.gep97 = getelementptr i8, ptr %.6481448, i64 %i.nn ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep, align 2, !tbaa !105
  %i.no = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.np = bitcast <8 x i16> %i.no to <4 x i32>
  %i.nq = bitcast <8 x i16> %i.no to <4 x i32>
  %i.nr = and <4 x i32> %i.nq, splat (i32 -65536)
  %wide.vec99 = load <8 x i16>, ptr %next.gep96, align 2, !tbaa !105
  %i.ns = freeze <8 x i16> %wide.vec99            ; 2 uses
  %i.nt = bitcast <8 x i16> %i.ns to <4 x i32>
  %i.nu = bitcast <8 x i16> %i.ns to <4 x i32>
  %i.nv = and <4 x i32> %i.nu, splat (i32 -65536)
  %i.nw = shl <4 x i32> %i.np, splat (i32 16)
  %i.nx = shl <4 x i32> %i.nt, splat (i32 16)
  %i.ny = bitcast <4 x i32> %i.nw to <4 x float>
  %i.nz = bitcast <4 x i32> %i.nx to <4 x float>
  %i.oa = getelementptr i8, ptr %next.gep97, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep97, align 2, !tbaa !105
  %wide.load102 = load <4 x i16>, ptr %i.oa, align 2, !tbaa !105
  %i.ob = zext <4 x i16> %wide.load to <4 x i32>
  %i.oc = zext <4 x i16> %wide.load102 to <4 x i32>
  %i.od = shl nuw <4 x i32> %i.ob, splat (i32 16)
  %i.oe = shl nuw <4 x i32> %i.oc, splat (i32 16)
  %i.of = bitcast <4 x i32> %i.od to <4 x float>  ; 2 uses
  %i.og = bitcast <4 x i32> %i.oe to <4 x float>  ; 2 uses
  %i.oh = fmul fast <4 x float> %i.of, %i.ny
  %i.oi = fmul fast <4 x float> %i.og, %i.nz
  %i.oj = fadd fast <4 x float> %i.oh, %vec.phi94 ; 2 uses
  %i.ok = fadd fast <4 x float> %i.oi, %vec.phi95 ; 2 uses
  %i.ol = bitcast <4 x i32> %i.nr to <4 x float>
  %i.om = bitcast <4 x i32> %i.nv to <4 x float>
  %i.on = fmul fast <4 x float> %i.ol, %i.of
  %i.oo = fmul fast <4 x float> %i.om, %i.og
  %i.op = fadd fast <4 x float> %i.on, %vec.phi   ; 2 uses
  %i.oq = fadd fast <4 x float> %i.oo, %vec.phi93 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.or = icmp eq i64 %index.next, %n.vec
  br i1 %i.or, label %middle.block, label %vector.body, !llvm.loop !971

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.oq, %i.op
  %i.os = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx)
  %bin.rdx103 = fadd fast <4 x float> %i.ok, %i.oj
  %i.ot = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx103)
  %i.ou = insertelement <2 x float> poison, float %i.ot, i64 0
  %i.ov = insertelement <2 x float> %i.ou, float %i.os, i64 1 ; 2 uses
  br i1 %cmp.n, label %._crit_edge443.loopexit, label %.lr.ph442.preheader339

.lr.ph442.preheader339:                           ; preds = %.lr.ph442.preheader, %middle.block
  %.0467440.ph = phi i32 [ 0, %.lr.ph442.preheader ], [ %i.ah, %middle.block ]
  %.0468439.ph = phi ptr [ %.1402455, %.lr.ph442.preheader ], [ %i.ky, %middle.block ]
  %.7482436.ph = phi ptr [ %.6481448, %.lr.ph442.preheader ], [ %i.ni, %middle.block ]
  %.ph340 = phi <2 x float> [ %i.nh, %.lr.ph442.preheader ], [ %i.ov, %middle.block ]
  br label %.lr.ph442

.lr.ph442:                                        ; preds = %.lr.ph442.preheader339, %.lr.ph442
  %.0467440 = phi i32 [ %i.pl, %.lr.ph442 ], [ %.0467440.ph, %.lr.ph442.preheader339 ]
  %.0468439 = phi ptr [ %i.pj, %.lr.ph442 ], [ %.0468439.ph, %.lr.ph442.preheader339 ] ; 2 uses
  %.7482436 = phi ptr [ %i.pk, %.lr.ph442 ], [ %.7482436.ph, %.lr.ph442.preheader339 ] ; 2 uses
  %i.ow = phi <2 x float> [ %i.pi, %.lr.ph442 ], [ %.ph340, %.lr.ph442.preheader339 ]
  %i.ox = load i16, ptr %.7482436, align 2, !tbaa !105 ; 2 uses
  %i.oy = load <2 x i16>, ptr %.0468439, align 2, !tbaa !105 ; 2 uses
  %i.oz = insertelement <2 x i16> %i.oy, i16 %i.ox, i64 1
  %i.pa = zext <2 x i16> %i.oz to <2 x i32>
  %i.pb = insertelement <2 x i16> %i.oy, i16 %i.ox, i64 0
  %i.pc = zext <2 x i16> %i.pb to <2 x i32>
  %i.pd = shl nuw <2 x i32> %i.pa, splat (i32 16)
  %i.pe = shl nuw <2 x i32> %i.pc, splat (i32 16)
  %i.pf = bitcast <2 x i32> %i.pd to <2 x float>
  %i.pg = bitcast <2 x i32> %i.pe to <2 x float>
  %i.ph = fmul fast <2 x float> %i.pg, %i.pf
  %i.pi = fadd fast <2 x float> %i.ph, %i.ow      ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.0468439, i64 4
  %i.pk = getelementptr inbounds nuw i8, ptr %.7482436, i64 2
  %i.pl = add nuw nsw i32 %.0467440, 1            ; 2 uses
  %exitcond757.not = icmp eq i32 %i.pl, %3
  br i1 %exitcond757.not, label %._crit_edge443.loopexit, label %.lr.ph442, !llvm.loop !972

._crit_edge443.loopexit:                          ; preds = %.lr.ph442, %middle.block
  %i.pm = phi <2 x float> [ %i.ov, %middle.block ], [ %i.pi, %.lr.ph442 ]
  %i.pn = getelementptr i8, ptr %.6481448, i64 %i.ac
  %scevgep756 = getelementptr i8, ptr %i.pn, i64 2
  br label %._crit_edge443

._crit_edge443:                                   ; preds = %._crit_edge443.loopexit, %bb.n
  %.7482.lcssa = phi ptr [ %.6481448, %bb.n ], [ %scevgep756, %._crit_edge443.loopexit ]
  %i.po = phi <2 x float> [ %i.nh, %bb.n ], [ %i.pm, %._crit_edge443.loopexit ]
  store <2 x float> %i.po, ptr %.9449, align 4, !tbaa !67
  %i.pp = getelementptr inbounds nuw i8, ptr %.9449, i64 8 ; 2 uses
  %i.pq = add nuw nsw i32 %.3486447, 1            ; 2 uses
  %exitcond758.not = icmp eq i32 %i.pq, %1
  br i1 %exitcond758.not, label %._crit_edge451, label %.lr.ph450, !llvm.loop !973

._crit_edge451:                                   ; preds = %._crit_edge443, %.preheader246
  %.9.lcssa = phi ptr [ %.8.lcssa, %.preheader246 ], [ %i.pp, %._crit_edge443 ] ; 2 uses
  %i.pr = getelementptr inbounds [2 x i8], ptr %.1402455, i64 %i.u ; 2 uses
  %i.ps = add nuw nsw i32 %.1407453, 2            ; 3 uses
  %i.pt = or disjoint i32 %i.ps, 1
  %i.pu = icmp slt i32 %i.pt, %0
  br i1 %i.pu, label %.preheader249, label %.preheader245, !llvm.loop !974

.preheader244:                                    ; preds = %.preheader244.lr.ph, %._crit_edge608
  %.2612 = phi ptr [ %.1402.lcssa, %.preheader244.lr.ph ], [ %i.avp, %._crit_edge608 ] ; 23 uses
  %.10611 = phi ptr [ %.5.lcssa, %.preheader244.lr.ph ], [ %.14.lcssa, %._crit_edge608 ] ; 2 uses
  %.2408610 = phi i32 [ %.1407.lcssa, %.preheader244.lr.ph ], [ %i.avq, %._crit_edge608 ]
  br i1 %i.ha, label %.lr.ph498, label %.preheader243

.preheader243:                                    ; preds = %._crit_edge491, %.preheader244
  %.0455.lcssa = phi ptr [ %.0.val1, %.preheader244 ], [ %.2457.lcssa, %._crit_edge491 ] ; 2 uses
  %.0451.lcssa = phi i32 [ 0, %.preheader244 ], [ %i.hg, %._crit_edge491 ] ; 3 uses
  %.11.lcssa = phi ptr [ %.10611, %.preheader244 ], [ %i.sv, %._crit_edge491 ] ; 2 uses
  %i.pv = or disjoint i32 %.0451.lcssa, 3
  %i.pw = icmp slt i32 %i.pv, %1
  br i1 %i.pw, label %.lr.ph531, label %.preheader242

.lr.ph498:                                        ; preds = %.preheader244, %._crit_edge491
  %.11497 = phi ptr [ %i.sv, %._crit_edge491 ], [ %.10611, %.preheader244 ] ; 5 uses
  %.0451496 = phi i32 [ %i.sw, %._crit_edge491 ], [ 0, %.preheader244 ]
  %.0455495 = phi ptr [ %.2457.lcssa, %._crit_edge491 ], [ %.0.val1, %.preheader244 ] ; 2 uses
  br i1 %.not507, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph498
  %i.px = load <4 x float>, ptr %.11497, align 1, !tbaa !87
  %i.py = getelementptr inbounds nuw i8, ptr %.11497, i64 16
  %i.pz = load <4 x float>, ptr %i.py, align 1, !tbaa !87
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph498
  %.0232 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph498 ], [ %i.pz, %bb.o ] ; 2 uses
  %.0230 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph498 ], [ %i.px, %bb.o ] ; 2 uses
  br i1 %i.hb, label %.lr.ph471, label %._crit_edge472

.lr.ph471:                                        ; preds = %bb.p, %.lr.ph471
  %.0447469 = phi i32 [ %i.rs, %.lr.ph471 ], [ 0, %bb.p ]
  %.0449468 = phi ptr [ %i.rq, %.lr.ph471 ], [ %.2612, %bb.p ] ; 2 uses
  %.1456467 = phi ptr [ %i.rr, %.lr.ph471 ], [ %.0455495, %bb.p ] ; 5 uses
  %.0234466 = phi <4 x float> [ %i.qr, %.lr.ph471 ], [ zeroinitializer, %bb.p ]
  %.0235465 = phi <4 x float> [ %i.qx, %.lr.ph471 ], [ zeroinitializer, %bb.p ]
  %.0236464 = phi <4 x float> [ %i.rd, %.lr.ph471 ], [ zeroinitializer, %bb.p ]
  %.0237463 = phi <4 x float> [ %i.rn, %.lr.ph471 ], [ zeroinitializer, %bb.p ]
  %.0238462 = phi <4 x float> [ %i.qt, %.lr.ph471 ], [ zeroinitializer, %bb.p ]
  %.0239461 = phi <4 x float> [ %i.qz, %.lr.ph471 ], [ zeroinitializer, %bb.p ]
  %.0240460 = phi <4 x float> [ %i.rf, %.lr.ph471 ], [ zeroinitializer, %bb.p ]
  %.0241459 = phi <4 x float> [ %i.rp, %.lr.ph471 ], [ zeroinitializer, %bb.p ]
  %i.qa = load <8 x i16>, ptr %.1456467, align 1, !tbaa !87 ; 2 uses
  %21 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qb = bitcast <8 x i16> %21 to <4 x float>
  %22 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.qa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.qc = bitcast <8 x i16> %22 to <4 x float>
  %i.qd = getelementptr inbounds nuw i8, ptr %.1456467, i64 16
  %i.qe = load <8 x i16>, ptr %i.qd, align 1, !tbaa !87 ; 2 uses
  %23 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qf = bitcast <8 x i16> %23 to <4 x float>
  %24 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.qe, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.qg = bitcast <8 x i16> %24 to <4 x float>
  %i.qh = getelementptr inbounds nuw i8, ptr %.1456467, i64 32
  %i.qi = load <8 x i16>, ptr %i.qh, align 1, !tbaa !87 ; 2 uses
  %25 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qj = bitcast <8 x i16> %25 to <4 x float>
  %26 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.qi, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.qk = bitcast <8 x i16> %26 to <4 x float>
  %i.ql = load <4 x i16>, ptr %.0449468, align 2, !tbaa !105
  %i.qm = zext <4 x i16> %i.ql to <4 x i32>
  %i.qn = shl nuw <4 x i32> %i.qm, splat (i32 16) ; 4 uses
  %i.qo = bitcast <4 x i32> %i.qn to <4 x float>
  %i.qp = shufflevector <4 x float> %i.qo, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qq = fmul fast <4 x float> %i.qp, %i.qb
  %i.qr = fadd fast <4 x float> %i.qq, %.0234466  ; 2 uses
  %i.qs = fmul fast <4 x float> %i.qp, %i.qc
  %i.qt = fadd fast <4 x float> %i.qs, %.0238462  ; 2 uses
  %i.qu = bitcast <4 x i32> %i.qn to <4 x float>
  %i.qv = shufflevector <4 x float> %i.qu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.qw = fmul fast <4 x float> %i.qv, %i.qf
  %i.qx = fadd fast <4 x float> %i.qw, %.0235465  ; 2 uses
  %i.qy = fmul fast <4 x float> %i.qv, %i.qg
  %i.qz = fadd fast <4 x float> %i.qy, %.0239461  ; 2 uses
  %i.ra = bitcast <4 x i32> %i.qn to <4 x float>
  %i.rb = shufflevector <4 x float> %i.ra, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.rc = fmul fast <4 x float> %i.rb, %i.qj
  %i.rd = fadd fast <4 x float> %i.rc, %.0236464  ; 2 uses
  %i.re = fmul fast <4 x float> %i.rb, %i.qk
  %i.rf = fadd fast <4 x float> %i.re, %.0240460  ; 2 uses
  %i.rg = bitcast <4 x i32> %i.qn to <4 x float>
  %i.rh = shufflevector <4 x float> %i.rg, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.1456467, i64 48
  %i.rj = load <8 x i16>, ptr %i.ri, align 1, !tbaa !87 ; 2 uses
  %27 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rk = bitcast <8 x i16> %27 to <4 x float>
  %28 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rl = bitcast <8 x i16> %28 to <4 x float>
  %i.rm = fmul fast <4 x float> %i.rh, %i.rk
  %i.rn = fadd fast <4 x float> %i.rm, %.0237463  ; 2 uses
  %i.ro = fmul fast <4 x float> %i.rh, %i.rl
  %i.rp = fadd fast <4 x float> %i.ro, %.0241459  ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.0449468, i64 8 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.1456467, i64 64 ; 2 uses
  %i.rs = add nuw nsw i32 %.0447469, 4            ; 2 uses
  %i.rt = or disjoint i32 %i.rs, 3
  %i.ru = icmp slt i32 %i.rt, %3
  br i1 %i.ru, label %.lr.ph471, label %._crit_edge472.loopexit, !llvm.loop !975

._crit_edge472.loopexit:                          ; preds = %.lr.ph471
  %i.rv = fadd fast <4 x float> %i.rn, %.0230
  %i.rw = fadd fast <4 x float> %i.rv, %i.rd
  %i.rx = fadd fast <4 x float> %i.rw, %i.qx
  %i.ry = fadd fast <4 x float> %i.rx, %i.qr
  %i.rz = fadd fast <4 x float> %i.rp, %.0232
  %i.sa = fadd fast <4 x float> %i.rz, %i.rf
  %i.sb = fadd fast <4 x float> %i.sa, %i.qz
  %i.sc = fadd fast <4 x float> %i.sb, %i.qt
  br label %._crit_edge472

._crit_edge472:                                   ; preds = %._crit_edge472.loopexit, %bb.p
  %.0241.lcssa = phi <4 x float> [ %.0232, %bb.p ], [ %i.sc, %._crit_edge472.loopexit ] ; 2 uses
  %.0237.lcssa = phi <4 x float> [ %.0230, %bb.p ], [ %i.ry, %._crit_edge472.loopexit ] ; 2 uses
  %.1456.lcssa = phi ptr [ %.0455495, %bb.p ], [ %i.rr, %._crit_edge472.loopexit ] ; 2 uses
  %.0449.lcssa = phi ptr [ %.2612, %bb.p ], [ %i.rq, %._crit_edge472.loopexit ]
  %.0447.lcssa = phi i32 [ 0, %bb.p ], [ %i.hf, %._crit_edge472.loopexit ] ; 2 uses
  %i.sd = icmp slt i32 %.0447.lcssa, %3
  br i1 %i.sd, label %.lr.ph490, label %._crit_edge491

.lr.ph490:                                        ; preds = %._crit_edge472, %.lr.ph490
  %.1448488 = phi i32 [ %i.st, %.lr.ph490 ], [ %.0447.lcssa, %._crit_edge472 ]
  %.1450487 = phi ptr [ %i.sr, %.lr.ph490 ], [ %.0449.lcssa, %._crit_edge472 ] ; 2 uses
  %.2457486 = phi ptr [ %i.ss, %.lr.ph490 ], [ %.1456.lcssa, %._crit_edge472 ] ; 2 uses
  %.1231485 = phi <4 x float> [ %i.so, %.lr.ph490 ], [ %.0237.lcssa, %._crit_edge472 ]
  %.1233484 = phi <4 x float> [ %i.sq, %.lr.ph490 ], [ %.0241.lcssa, %._crit_edge472 ]
  %i.se = load i16, ptr %.1450487, align 2, !tbaa !105
  %i.sf = zext i16 %i.se to i32
  %i.sg = shl nuw i32 %i.sf, 16
  %i.sh = insertelement <4 x i32> poison, i32 %i.sg, i64 0
  %i.si = bitcast <4 x i32> %i.sh to <4 x float>
  %i.sj = shufflevector <4 x float> %i.si, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sk = load <8 x i16>, ptr %.2457486, align 1, !tbaa !87 ; 2 uses
  %29 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sl = bitcast <8 x i16> %29 to <4 x float>
  %30 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.sk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sm = bitcast <8 x i16> %30 to <4 x float>
  %i.sn = fmul fast <4 x float> %i.sj, %i.sl
  %i.so = fadd fast <4 x float> %i.sn, %.1231485  ; 2 uses
  %i.sp = fmul fast <4 x float> %i.sj, %i.sm
  %i.sq = fadd fast <4 x float> %i.sp, %.1233484  ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.1450487, i64 2
  %i.ss = getelementptr inbounds nuw i8, ptr %.2457486, i64 16 ; 2 uses
  %i.st = add nuw nsw i32 %.1448488, 1            ; 2 uses
  %exitcond759.not = icmp eq i32 %i.st, %3
  br i1 %exitcond759.not, label %._crit_edge491, label %.lr.ph490, !llvm.loop !976

._crit_edge491:                                   ; preds = %.lr.ph490, %._crit_edge472
  %.1233.lcssa = phi <4 x float> [ %.0241.lcssa, %._crit_edge472 ], [ %i.sq, %.lr.ph490 ]
  %.1231.lcssa = phi <4 x float> [ %.0237.lcssa, %._crit_edge472 ], [ %i.so, %.lr.ph490 ]
  %.2457.lcssa = phi ptr [ %.1456.lcssa, %._crit_edge472 ], [ %i.ss, %.lr.ph490 ] ; 2 uses
  store <4 x float> %.1231.lcssa, ptr %.11497, align 1, !tbaa !87
  %i.su = getelementptr inbounds nuw i8, ptr %.11497, i64 16
  store <4 x float> %.1233.lcssa, ptr %i.su, align 1, !tbaa !87
  %i.sv = getelementptr inbounds nuw i8, ptr %.11497, i64 32 ; 2 uses
  %i.sw = add nuw nsw i32 %.0451496, 8            ; 2 uses
  %i.sx = or disjoint i32 %i.sw, 7
  %i.sy = icmp slt i32 %i.sx, %1
  br i1 %i.sy, label %.lr.ph498, label %.preheader243, !llvm.loop !977

.preheader242:                                    ; preds = %._crit_edge525, %.preheader243
  %.3458.lcssa = phi ptr [ %.0455.lcssa, %.preheader243 ], [ %.5460.lcssa, %._crit_edge525 ] ; 2 uses
  %.1452.lcssa = phi i32 [ %.0451.lcssa, %.preheader243 ], [ %i.vq, %._crit_edge525 ] ; 3 uses
  %.12.lcssa = phi ptr [ %.11.lcssa, %.preheader243 ], [ %i.vp, %._crit_edge525 ] ; 2 uses
  %i.sz = or disjoint i32 %.1452.lcssa, 1
  %i.ta = icmp slt i32 %i.sz, %1
  br i1 %i.ta, label %.lr.ph574.preheader, label %.preheader

.lr.ph574.preheader:                              ; preds = %.preheader242
  %i.tb = getelementptr i8, ptr %.2612, i64 %i.hp ; 2 uses
  br label %.lr.ph574

.lr.ph531:                                        ; preds = %.preheader243, %._crit_edge525
  %.12530 = phi ptr [ %i.vp, %._crit_edge525 ], [ %.11.lcssa, %.preheader243 ] ; 3 uses
  %.1452529 = phi i32 [ %i.vq, %._crit_edge525 ], [ %.0451.lcssa, %.preheader243 ]
  %.3458528 = phi ptr [ %.5460.lcssa, %._crit_edge525 ], [ %.0455.lcssa, %.preheader243 ] ; 3 uses
  br i1 %.not507, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph531
  %i.tc = load <4 x float>, ptr %.12530, align 1, !tbaa !87
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph531
  %.0216 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph531 ], [ %i.tc, %bb.q ] ; 2 uses
  br i1 %i.hb, label %.lr.ph510, label %._crit_edge511

.lr.ph510:                                        ; preds = %bb.r, %.lr.ph510
  %.0433508 = phi i32 [ %i.ur, %.lr.ph510 ], [ 0, %bb.r ]
  %.0435507 = phi ptr [ %i.up, %.lr.ph510 ], [ %.2612, %bb.r ] ; 2 uses
  %.4459506 = phi ptr [ %i.uq, %.lr.ph510 ], [ %.3458528, %bb.r ] ; 5 uses
  %.0212505 = phi <4 x float> [ %i.uo, %.lr.ph510 ], [ zeroinitializer, %bb.r ]
  %.0213504 = phi <4 x float> [ %i.uf, %.lr.ph510 ], [ zeroinitializer, %bb.r ]
  %.0214503 = phi <4 x float> [ %i.ub, %.lr.ph510 ], [ zeroinitializer, %bb.r ]
  %.0215502 = phi <4 x float> [ %i.tx, %.lr.ph510 ], [ zeroinitializer, %bb.r ]
  %i.td = load i64, ptr %.4459506, align 1, !tbaa !87
  %i.te = insertelement <2 x i64> poison, i64 %i.td, i64 0
  %i.tf = bitcast <2 x i64> %i.te to <8 x i16>
  %31 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tg = bitcast <8 x i16> %31 to <4 x float>
  %i.th = getelementptr inbounds nuw i8, ptr %.4459506, i64 8
  %i.ti = load i64, ptr %i.th, align 1, !tbaa !87
  %i.tj = insertelement <2 x i64> poison, i64 %i.ti, i64 0
  %i.tk = bitcast <2 x i64> %i.tj to <8 x i16>
  %32 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tl = bitcast <8 x i16> %32 to <4 x float>
  %i.tm = getelementptr inbounds nuw i8, ptr %.4459506, i64 16
  %i.tn = load i64, ptr %i.tm, align 1, !tbaa !87
  %i.to = insertelement <2 x i64> poison, i64 %i.tn, i64 0
  %i.tp = bitcast <2 x i64> %i.to to <8 x i16>
  %33 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tq = bitcast <8 x i16> %33 to <4 x float>
  %i.tr = load <4 x i16>, ptr %.0435507, align 2, !tbaa !105
  %i.ts = zext <4 x i16> %i.tr to <4 x i32>
  %i.tt = shl nuw <4 x i32> %i.ts, splat (i32 16) ; 4 uses
  %i.tu = bitcast <4 x i32> %i.tt to <4 x float>
  %i.tv = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tw = fmul fast <4 x float> %i.tv, %i.tg
  %i.tx = fadd fast <4 x float> %i.tw, %.0215502  ; 2 uses
  %i.ty = bitcast <4 x i32> %i.tt to <4 x float>
  %i.tz = shufflevector <4 x float> %i.ty, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ua = fmul fast <4 x float> %i.tz, %i.tl
  %i.ub = fadd fast <4 x float> %i.ua, %.0214503  ; 2 uses
  %i.uc = bitcast <4 x i32> %i.tt to <4 x float>
  %i.ud = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ue = fmul fast <4 x float> %i.ud, %i.tq
  %i.uf = fadd fast <4 x float> %i.ue, %.0213504  ; 2 uses
  %i.ug = bitcast <4 x i32> %i.tt to <4 x float>
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ui = getelementptr inbounds nuw i8, ptr %.4459506, i64 24
  %i.uj = load i64, ptr %i.ui, align 1, !tbaa !87
  %i.uk = insertelement <2 x i64> poison, i64 %i.uj, i64 0
  %i.ul = bitcast <2 x i64> %i.uk to <8 x i16>
  %34 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ul, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.um = bitcast <8 x i16> %34 to <4 x float>
  %i.un = fmul fast <4 x float> %i.uh, %i.um
  %i.uo = fadd fast <4 x float> %i.un, %.0212505  ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.0435507, i64 8 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.4459506, i64 32
  %i.ur = add nuw nsw i32 %.0433508, 4            ; 2 uses
  %i.us = or disjoint i32 %i.ur, 3
  %i.ut = icmp slt i32 %i.us, %3
  br i1 %i.ut, label %.lr.ph510, label %._crit_edge511.loopexit, !llvm.loop !978

._crit_edge511.loopexit:                          ; preds = %.lr.ph510
  %i.uu = getelementptr i8, ptr %.3458528, i64 %i.hj
  %scevgep760 = getelementptr i8, ptr %i.uu, i64 32
  %i.uv = fadd fast <4 x float> %i.tx, %.0216
  %i.uw = fadd fast <4 x float> %i.uv, %i.ub
  %i.ux = fadd fast <4 x float> %i.uw, %i.uf
  %i.uy = fadd fast <4 x float> %i.ux, %i.uo
  br label %._crit_edge511

._crit_edge511:                                   ; preds = %._crit_edge511.loopexit, %bb.r
  %.0215.lcssa = phi <4 x float> [ %.0216, %bb.r ], [ %i.uy, %._crit_edge511.loopexit ] ; 2 uses
  %.4459.lcssa = phi ptr [ %.3458528, %bb.r ], [ %scevgep760, %._crit_edge511.loopexit ] ; 2 uses
  %.0435.lcssa = phi ptr [ %.2612, %bb.r ], [ %i.up, %._crit_edge511.loopexit ]
  %.0433.lcssa = phi i32 [ 0, %bb.r ], [ %i.hf, %._crit_edge511.loopexit ] ; 2 uses
  %i.uz = icmp slt i32 %.0433.lcssa, %3
  br i1 %i.uz, label %.lr.ph524, label %._crit_edge525

.lr.ph524:                                        ; preds = %._crit_edge511, %.lr.ph524
  %.1434522 = phi i32 [ %i.vo, %.lr.ph524 ], [ %.0433.lcssa, %._crit_edge511 ]
  %.1436521 = phi ptr [ %i.vm, %.lr.ph524 ], [ %.0435.lcssa, %._crit_edge511 ] ; 2 uses
  %.5460520 = phi ptr [ %i.vn, %.lr.ph524 ], [ %.4459.lcssa, %._crit_edge511 ] ; 2 uses
  %.1217519 = phi <4 x float> [ %i.vl, %.lr.ph524 ], [ %.0215.lcssa, %._crit_edge511 ]
  %i.va = load i16, ptr %.1436521, align 2, !tbaa !105
  %i.vb = zext i16 %i.va to i32
  %i.vc = shl nuw i32 %i.vb, 16
  %i.vd = insertelement <4 x i32> poison, i32 %i.vc, i64 0
  %i.ve = bitcast <4 x i32> %i.vd to <4 x float>
  %i.vf = shufflevector <4 x float> %i.ve, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vg = load i64, ptr %.5460520, align 1, !tbaa !87
  %i.vh = insertelement <2 x i64> poison, i64 %i.vg, i64 0
  %i.vi = bitcast <2 x i64> %i.vh to <8 x i16>
  %35 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.vi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vj = bitcast <8 x i16> %35 to <4 x float>
  %i.vk = fmul fast <4 x float> %i.vf, %i.vj
  %i.vl = fadd fast <4 x float> %i.vk, %.1217519  ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.1436521, i64 2
  %i.vn = getelementptr inbounds nuw i8, ptr %.5460520, i64 8 ; 2 uses
  %i.vo = add nuw nsw i32 %.1434522, 1            ; 2 uses
  %exitcond761.not = icmp eq i32 %i.vo, %3
  br i1 %exitcond761.not, label %._crit_edge525, label %.lr.ph524, !llvm.loop !979

._crit_edge525:                                   ; preds = %.lr.ph524, %._crit_edge511
  %.1217.lcssa = phi <4 x float> [ %.0215.lcssa, %._crit_edge511 ], [ %i.vl, %.lr.ph524 ]
  %.5460.lcssa = phi ptr [ %.4459.lcssa, %._crit_edge511 ], [ %i.vn, %.lr.ph524 ] ; 2 uses
  store <4 x float> %.1217.lcssa, ptr %.12530, align 1, !tbaa !87
  %i.vp = getelementptr inbounds nuw i8, ptr %.12530, i64 16 ; 2 uses
  %i.vq = add nuw nsw i32 %.1452529, 4            ; 3 uses
  %i.vr = or disjoint i32 %i.vq, 3
  %i.vs = icmp slt i32 %i.vr, %1
  br i1 %i.vs, label %.lr.ph531, label %.preheader242, !llvm.loop !980

.preheader:                                       ; preds = %._crit_edge567, %.preheader242
  %.6461.lcssa = phi ptr [ %.3458.lcssa, %.preheader242 ], [ %.8463.lcssa, %._crit_edge567 ]
  %.2453.lcssa = phi i32 [ %.1452.lcssa, %.preheader242 ], [ %i.aja, %._crit_edge567 ] ; 2 uses
  %.13.lcssa = phi ptr [ %.12.lcssa, %.preheader242 ], [ %i.aiz, %._crit_edge567 ] ; 2 uses
  %i.vt = icmp slt i32 %.2453.lcssa, %1
  br i1 %i.vt, label %.lr.ph607.preheader, label %._crit_edge608

.lr.ph607.preheader:                              ; preds = %.preheader
  %i.vu = getelementptr i8, ptr %.2612, i64 %i.hu ; 2 uses
  br label %.lr.ph607

.lr.ph574:                                        ; preds = %.lr.ph574.preheader, %._crit_edge567
  %.13573 = phi ptr [ %i.aiz, %._crit_edge567 ], [ %.12.lcssa, %.lr.ph574.preheader ] ; 3 uses
  %.2453572 = phi i32 [ %i.aja, %._crit_edge567 ], [ %.1452.lcssa, %.lr.ph574.preheader ]
  %.6461571 = phi ptr [ %.8463.lcssa, %._crit_edge567 ], [ %.3458.lcssa, %.lr.ph574.preheader ] ; 8 uses
  br i1 %.not507, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph574
  %i.vv = load <2 x float>, ptr %.13573, align 4, !tbaa !67
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph574
  %i.vw = phi <2 x float> [ %i.vv, %bb.s ], [ zeroinitializer, %.lr.ph574 ] ; 2 uses
  br i1 %i.hb, label %.lr.ph547.preheader, label %._crit_edge548

.lr.ph547.preheader:                              ; preds = %bb.t
  br i1 %min.iters.check233, label %.lr.ph547.preheader276, label %vector.ph234

vector.ph234:                                     ; preds = %.lr.ph547.preheader
  %i.vx = getelementptr i8, ptr %.6461571, i64 %i.hq
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph234
  %index237 = phi i64 [ 0, %vector.ph234 ], [ %index.next254, %vector.body236 ] ; 3 uses
  %vec.phi238 = phi <4 x float> [ zeroinitializer, %vector.ph234 ], [ %i.adl, %vector.body236 ]
  %vec.phi239 = phi <4 x float> [ zeroinitializer, %vector.ph234 ], [ %i.acd, %vector.body236 ]
  %vec.phi240 = phi <4 x float> [ zeroinitializer, %vector.ph234 ], [ %i.aav, %vector.body236 ]
  %vec.phi241 = phi <4 x float> [ zeroinitializer, %vector.ph234 ], [ %i.zn, %vector.body236 ]
  %vec.phi242 = phi <4 x float> [ zeroinitializer, %vector.ph234 ], [ %i.acu, %vector.body236 ]
  %vec.phi243 = phi <4 x float> [ zeroinitializer, %vector.ph234 ], [ %i.abm, %vector.body236 ]
  %vec.phi244 = phi <4 x float> [ zeroinitializer, %vector.ph234 ], [ %i.aae, %vector.body236 ]
  %vec.phi245 = phi <4 x float> [ zeroinitializer, %vector.ph234 ], [ %i.yw, %vector.body236 ]
  %i.vy = shl i64 %index237, 3                    ; 4 uses
  %next.gep246 = getelementptr i8, ptr %.2612, i64 %i.vy ; 4 uses
  %i.vz = getelementptr i8, ptr %.2612, i64 %i.vy ; 4 uses
  %next.gep247 = getelementptr i8, ptr %i.vz, i64 8
  %i.wa = getelementptr i8, ptr %.2612, i64 %i.vy ; 4 uses
  %next.gep248 = getelementptr i8, ptr %i.wa, i64 16
  %i.wb = getelementptr i8, ptr %.2612, i64 %i.vy ; 4 uses
  %next.gep249 = getelementptr i8, ptr %i.wb, i64 24
  %i.wc = shl i64 %index237, 4                    ; 4 uses
  %next.gep250 = getelementptr i8, ptr %.6461571, i64 %i.wc ; 8 uses
  %i.wd = getelementptr i8, ptr %.6461571, i64 %i.wc ; 8 uses
  %next.gep251 = getelementptr i8, ptr %i.wd, i64 16
  %i.we = getelementptr i8, ptr %.6461571, i64 %i.wc ; 8 uses
  %next.gep252 = getelementptr i8, ptr %i.we, i64 32
  %i.wf = getelementptr i8, ptr %.6461571, i64 %i.wc ; 8 uses
  %next.gep253 = getelementptr i8, ptr %i.wf, i64 48
  %i.wg = load i16, ptr %next.gep246, align 2, !tbaa !105
  %i.wh = load i16, ptr %next.gep247, align 2, !tbaa !105
  %i.wi = load i16, ptr %next.gep248, align 2, !tbaa !105
  %i.wj = load i16, ptr %next.gep249, align 2, !tbaa !105
  %i.wk = insertelement <4 x i16> poison, i16 %i.wg, i64 0
  %i.wl = insertelement <4 x i16> %i.wk, i16 %i.wh, i64 1
  %i.wm = insertelement <4 x i16> %i.wl, i16 %i.wi, i64 2
  %i.wn = insertelement <4 x i16> %i.wm, i16 %i.wj, i64 3
  %i.wo = zext <4 x i16> %i.wn to <4 x i32>
  %i.wp = shl nuw <4 x i32> %i.wo, splat (i32 16)
  %i.wq = bitcast <4 x i32> %i.wp to <4 x float>  ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %next.gep246, i64 2
  %i.ws = getelementptr i8, ptr %i.vz, i64 10
  %i.wt = getelementptr i8, ptr %i.wa, i64 18
  %i.wu = getelementptr i8, ptr %i.wb, i64 26
  %i.wv = load i16, ptr %i.wr, align 2, !tbaa !105
  %i.ww = load i16, ptr %i.ws, align 2, !tbaa !105
  %i.wx = load i16, ptr %i.wt, align 2, !tbaa !105
  %i.wy = load i16, ptr %i.wu, align 2, !tbaa !105
  %i.wz = insertelement <4 x i16> poison, i16 %i.wv, i64 0
  %i.xa = insertelement <4 x i16> %i.wz, i16 %i.ww, i64 1
  %i.xb = insertelement <4 x i16> %i.xa, i16 %i.wx, i64 2
  %i.xc = insertelement <4 x i16> %i.xb, i16 %i.wy, i64 3
  %i.xd = zext <4 x i16> %i.xc to <4 x i32>
  %i.xe = shl nuw <4 x i32> %i.xd, splat (i32 16)
  %i.xf = bitcast <4 x i32> %i.xe to <4 x float>  ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %next.gep246, i64 4
  %i.xh = getelementptr i8, ptr %i.vz, i64 12
  %i.xi = getelementptr i8, ptr %i.wa, i64 20
  %i.xj = getelementptr i8, ptr %i.wb, i64 28
  %i.xk = load i16, ptr %i.xg, align 2, !tbaa !105
  %i.xl = load i16, ptr %i.xh, align 2, !tbaa !105
  %i.xm = load i16, ptr %i.xi, align 2, !tbaa !105
  %i.xn = load i16, ptr %i.xj, align 2, !tbaa !105
  %i.xo = insertelement <4 x i16> poison, i16 %i.xk, i64 0
  %i.xp = insertelement <4 x i16> %i.xo, i16 %i.xl, i64 1
  %i.xq = insertelement <4 x i16> %i.xp, i16 %i.xm, i64 2
  %i.xr = insertelement <4 x i16> %i.xq, i16 %i.xn, i64 3
  %i.xs = zext <4 x i16> %i.xr to <4 x i32>
  %i.xt = shl nuw <4 x i32> %i.xs, splat (i32 16)
  %i.xu = bitcast <4 x i32> %i.xt to <4 x float>  ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %next.gep246, i64 6
  %i.xw = getelementptr i8, ptr %i.vz, i64 14
  %i.xx = getelementptr i8, ptr %i.wa, i64 22
  %i.xy = getelementptr i8, ptr %i.wb, i64 30
  %i.xz = load i16, ptr %i.xv, align 2, !tbaa !105
  %i.ya = load i16, ptr %i.xw, align 2, !tbaa !105
  %i.yb = load i16, ptr %i.xx, align 2, !tbaa !105
  %i.yc = load i16, ptr %i.xy, align 2, !tbaa !105
  %i.yd = insertelement <4 x i16> poison, i16 %i.xz, i64 0
  %i.ye = insertelement <4 x i16> %i.yd, i16 %i.ya, i64 1
  %i.yf = insertelement <4 x i16> %i.ye, i16 %i.yb, i64 2
  %i.yg = insertelement <4 x i16> %i.yf, i16 %i.yc, i64 3
  %i.yh = zext <4 x i16> %i.yg to <4 x i32>
  %i.yi = shl nuw <4 x i32> %i.yh, splat (i32 16)
  %i.yj = bitcast <4 x i32> %i.yi to <4 x float>  ; 2 uses
  %i.yk = load i16, ptr %next.gep250, align 2, !tbaa !105
  %i.yl = load i16, ptr %next.gep251, align 2, !tbaa !105
  %i.ym = load i16, ptr %next.gep252, align 2, !tbaa !105
  %i.yn = load i16, ptr %next.gep253, align 2, !tbaa !105
  %i.yo = insertelement <4 x i16> poison, i16 %i.yk, i64 0
  %i.yp = insertelement <4 x i16> %i.yo, i16 %i.yl, i64 1
  %i.yq = insertelement <4 x i16> %i.yp, i16 %i.ym, i64 2
  %i.yr = insertelement <4 x i16> %i.yq, i16 %i.yn, i64 3
  %i.ys = zext <4 x i16> %i.yr to <4 x i32>
  %i.yt = shl nuw <4 x i32> %i.ys, splat (i32 16)
  %i.yu = bitcast <4 x i32> %i.yt to <4 x float>
  %i.yv = fmul fast <4 x float> %i.yu, %i.wq
  %i.yw = fadd fast <4 x float> %i.yv, %vec.phi245 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %next.gep250, i64 2
  %i.yy = getelementptr i8, ptr %i.wd, i64 18
  %i.yz = getelementptr i8, ptr %i.we, i64 34
  %i.za = getelementptr i8, ptr %i.wf, i64 50
  %i.zb = load i16, ptr %i.yx, align 2, !tbaa !105
  %i.zc = load i16, ptr %i.yy, align 2, !tbaa !105
  %i.zd = load i16, ptr %i.yz, align 2, !tbaa !105
  %i.ze = load i16, ptr %i.za, align 2, !tbaa !105
  %i.zf = insertelement <4 x i16> poison, i16 %i.zb, i64 0
  %i.zg = insertelement <4 x i16> %i.zf, i16 %i.zc, i64 1
  %i.zh = insertelement <4 x i16> %i.zg, i16 %i.zd, i64 2
  %i.zi = insertelement <4 x i16> %i.zh, i16 %i.ze, i64 3
  %i.zj = zext <4 x i16> %i.zi to <4 x i32>
  %i.zk = shl nuw <4 x i32> %i.zj, splat (i32 16)
  %i.zl = bitcast <4 x i32> %i.zk to <4 x float>
  %i.zm = fmul fast <4 x float> %i.zl, %i.wq
  %i.zn = fadd fast <4 x float> %i.zm, %vec.phi241 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %next.gep250, i64 4
  %i.zp = getelementptr i8, ptr %i.wd, i64 20
  %i.zq = getelementptr i8, ptr %i.we, i64 36
  %i.zr = getelementptr i8, ptr %i.wf, i64 52
  %i.zs = load i16, ptr %i.zo, align 2, !tbaa !105
  %i.zt = load i16, ptr %i.zp, align 2, !tbaa !105
  %i.zu = load i16, ptr %i.zq, align 2, !tbaa !105
  %i.zv = load i16, ptr %i.zr, align 2, !tbaa !105
  %i.zw = insertelement <4 x i16> poison, i16 %i.zs, i64 0
  %i.zx = insertelement <4 x i16> %i.zw, i16 %i.zt, i64 1
  %i.zy = insertelement <4 x i16> %i.zx, i16 %i.zu, i64 2
  %i.zz = insertelement <4 x i16> %i.zy, i16 %i.zv, i64 3
  %i.aaa = zext <4 x i16> %i.zz to <4 x i32>
  %i.aab = shl nuw <4 x i32> %i.aaa, splat (i32 16)
  %i.aac = bitcast <4 x i32> %i.aab to <4 x float>
  %i.aad = fmul fast <4 x float> %i.aac, %i.xf
  %i.aae = fadd fast <4 x float> %i.aad, %vec.phi244 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %next.gep250, i64 6
  %i.aag = getelementptr i8, ptr %i.wd, i64 22
  %i.aah = getelementptr i8, ptr %i.we, i64 38
  %i.aai = getelementptr i8, ptr %i.wf, i64 54
  %i.aaj = load i16, ptr %i.aaf, align 2, !tbaa !105
  %i.aak = load i16, ptr %i.aag, align 2, !tbaa !105
  %i.aal = load i16, ptr %i.aah, align 2, !tbaa !105
  %i.aam = load i16, ptr %i.aai, align 2, !tbaa !105
  %i.aan = insertelement <4 x i16> poison, i16 %i.aaj, i64 0
  %i.aao = insertelement <4 x i16> %i.aan, i16 %i.aak, i64 1
  %i.aap = insertelement <4 x i16> %i.aao, i16 %i.aal, i64 2
  %i.aaq = insertelement <4 x i16> %i.aap, i16 %i.aam, i64 3
  %i.aar = zext <4 x i16> %i.aaq to <4 x i32>
  %i.aas = shl nuw <4 x i32> %i.aar, splat (i32 16)
  %i.aat = bitcast <4 x i32> %i.aas to <4 x float>
  %i.aau = fmul fast <4 x float> %i.aat, %i.xf
  %i.aav = fadd fast <4 x float> %i.aau, %vec.phi240 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %next.gep250, i64 8
  %i.aax = getelementptr i8, ptr %i.wd, i64 24
  %i.aay = getelementptr i8, ptr %i.we, i64 40
  %i.aaz = getelementptr i8, ptr %i.wf, i64 56
  %i.aba = load i16, ptr %i.aaw, align 2, !tbaa !105
  %i.abb = load i16, ptr %i.aax, align 2, !tbaa !105
  %i.abc = load i16, ptr %i.aay, align 2, !tbaa !105
  %i.abd = load i16, ptr %i.aaz, align 2, !tbaa !105
  %i.abe = insertelement <4 x i16> poison, i16 %i.aba, i64 0
  %i.abf = insertelement <4 x i16> %i.abe, i16 %i.abb, i64 1
  %i.abg = insertelement <4 x i16> %i.abf, i16 %i.abc, i64 2
  %i.abh = insertelement <4 x i16> %i.abg, i16 %i.abd, i64 3
  %i.abi = zext <4 x i16> %i.abh to <4 x i32>
  %i.abj = shl nuw <4 x i32> %i.abi, splat (i32 16)
  %i.abk = bitcast <4 x i32> %i.abj to <4 x float>
  %i.abl = fmul fast <4 x float> %i.abk, %i.xu
  %i.abm = fadd fast <4 x float> %i.abl, %vec.phi243 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %next.gep250, i64 10
  %i.abo = getelementptr i8, ptr %i.wd, i64 26
  %i.abp = getelementptr i8, ptr %i.we, i64 42
  %i.abq = getelementptr i8, ptr %i.wf, i64 58
  %i.abr = load i16, ptr %i.abn, align 2, !tbaa !105
  %i.abs = load i16, ptr %i.abo, align 2, !tbaa !105
  %i.abt = load i16, ptr %i.abp, align 2, !tbaa !105
  %i.abu = load i16, ptr %i.abq, align 2, !tbaa !105
  %i.abv = insertelement <4 x i16> poison, i16 %i.abr, i64 0
  %i.abw = insertelement <4 x i16> %i.abv, i16 %i.abs, i64 1
  %i.abx = insertelement <4 x i16> %i.abw, i16 %i.abt, i64 2
  %i.aby = insertelement <4 x i16> %i.abx, i16 %i.abu, i64 3
  %i.abz = zext <4 x i16> %i.aby to <4 x i32>
  %i.aca = shl nuw <4 x i32> %i.abz, splat (i32 16)
  %i.acb = bitcast <4 x i32> %i.aca to <4 x float>
  %i.acc = fmul fast <4 x float> %i.acb, %i.xu
  %i.acd = fadd fast <4 x float> %i.acc, %vec.phi239 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %next.gep250, i64 12
  %i.acf = getelementptr i8, ptr %i.wd, i64 28
  %i.acg = getelementptr i8, ptr %i.we, i64 44
  %i.ach = getelementptr i8, ptr %i.wf, i64 60
  %i.aci = load i16, ptr %i.ace, align 2, !tbaa !105
  %i.acj = load i16, ptr %i.acf, align 2, !tbaa !105
  %i.ack = load i16, ptr %i.acg, align 2, !tbaa !105
  %i.acl = load i16, ptr %i.ach, align 2, !tbaa !105
  %i.acm = insertelement <4 x i16> poison, i16 %i.aci, i64 0
  %i.acn = insertelement <4 x i16> %i.acm, i16 %i.acj, i64 1
  %i.aco = insertelement <4 x i16> %i.acn, i16 %i.ack, i64 2
  %i.acp = insertelement <4 x i16> %i.aco, i16 %i.acl, i64 3
  %i.acq = zext <4 x i16> %i.acp to <4 x i32>
  %i.acr = shl nuw <4 x i32> %i.acq, splat (i32 16)
  %i.acs = bitcast <4 x i32> %i.acr to <4 x float>
  %i.act = fmul fast <4 x float> %i.acs, %i.yj
  %i.acu = fadd fast <4 x float> %i.act, %vec.phi242 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %next.gep250, i64 14
  %i.acw = getelementptr i8, ptr %i.wd, i64 30
  %i.acx = getelementptr i8, ptr %i.we, i64 46
  %i.acy = getelementptr i8, ptr %i.wf, i64 62
  %i.acz = load i16, ptr %i.acv, align 2, !tbaa !105
  %i.ada = load i16, ptr %i.acw, align 2, !tbaa !105
  %i.adb = load i16, ptr %i.acx, align 2, !tbaa !105
  %i.adc = load i16, ptr %i.acy, align 2, !tbaa !105
  %i.add = insertelement <4 x i16> poison, i16 %i.acz, i64 0
  %i.ade = insertelement <4 x i16> %i.add, i16 %i.ada, i64 1
  %i.adf = insertelement <4 x i16> %i.ade, i16 %i.adb, i64 2
  %i.adg = insertelement <4 x i16> %i.adf, i16 %i.adc, i64 3
  %i.adh = zext <4 x i16> %i.adg to <4 x i32>
  %i.adi = shl nuw <4 x i32> %i.adh, splat (i32 16)
  %i.adj = bitcast <4 x i32> %i.adi to <4 x float>
  %i.adk = fmul fast <4 x float> %i.adj, %i.yj
  %i.adl = fadd fast <4 x float> %i.adk, %vec.phi238 ; 2 uses
  %index.next254 = add nuw i64 %index237, 4       ; 2 uses
  %i.adm = icmp eq i64 %index.next254, %n.vec235
  br i1 %i.adm, label %middle.block255, label %vector.body236, !llvm.loop !981

middle.block255:                                  ; preds = %vector.body236
  %i.adn = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.adl)
  %i.ado = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.acd)
  %i.adp = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aav)
  %i.adq = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.zn)
  %i.adr = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.acu)
  %i.ads = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.abm)
  %i.adt = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aae)
  %i.adu = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.yw)
  %i.adv = insertelement <2 x float> poison, float %i.adu, i64 0
  %i.adw = insertelement <2 x float> %i.adv, float %i.adq, i64 1 ; 2 uses
  %i.adx = insertelement <2 x float> poison, float %i.adt, i64 0
  %i.ady = insertelement <2 x float> %i.adx, float %i.adp, i64 1 ; 2 uses
  %i.adz = insertelement <2 x float> poison, float %i.ads, i64 0
  %i.aea = insertelement <2 x float> %i.adz, float %i.ado, i64 1 ; 2 uses
  %i.aeb = insertelement <2 x float> poison, float %i.adr, i64 0
  %i.aec = insertelement <2 x float> %i.aeb, float %i.adn, i64 1 ; 2 uses
  br i1 %cmp.n256, label %._crit_edge548.loopexit, label %.lr.ph547.preheader276

.lr.ph547.preheader276:                           ; preds = %.lr.ph547.preheader, %middle.block255
  %.0425537.ph = phi i32 [ 0, %.lr.ph547.preheader ], [ %i.ho, %middle.block255 ]
  %.0427536.ph = phi ptr [ %.2612, %.lr.ph547.preheader ], [ %i.tb, %middle.block255 ]
  %.7462535.ph = phi ptr [ %.6461571, %.lr.ph547.preheader ], [ %i.vx, %middle.block255 ]
  %.ph277 = phi <2 x float> [ zeroinitializer, %.lr.ph547.preheader ], [ %i.adw, %middle.block255 ]
  %.ph278 = phi <2 x float> [ zeroinitializer, %.lr.ph547.preheader ], [ %i.ady, %middle.block255 ]
  %.ph279 = phi <2 x float> [ zeroinitializer, %.lr.ph547.preheader ], [ %i.aea, %middle.block255 ]
  %.ph280 = phi <2 x float> [ zeroinitializer, %.lr.ph547.preheader ], [ %i.aec, %middle.block255 ]
  br label %.lr.ph547

.lr.ph547:                                        ; preds = %.lr.ph547.preheader276, %.lr.ph547
  %.0425537 = phi i32 [ %i.afs, %.lr.ph547 ], [ %.0425537.ph, %.lr.ph547.preheader276 ]
  %.0427536 = phi ptr [ %i.afq, %.lr.ph547 ], [ %.0427536.ph, %.lr.ph547.preheader276 ] ; 2 uses
  %.7462535 = phi ptr [ %i.afr, %.lr.ph547 ], [ %.7462535.ph, %.lr.ph547.preheader276 ] ; 5 uses
  %i.aed = phi <2 x float> [ %i.aeu, %.lr.ph547 ], [ %.ph277, %.lr.ph547.preheader276 ]
  %i.aee = phi <2 x float> [ %i.afb, %.lr.ph547 ], [ %.ph278, %.lr.ph547.preheader276 ]
  %i.aef = phi <2 x float> [ %i.afi, %.lr.ph547 ], [ %.ph279, %.lr.ph547.preheader276 ]
  %i.aeg = phi <2 x float> [ %i.afp, %.lr.ph547 ], [ %.ph280, %.lr.ph547.preheader276 ]
  %i.aeh = getelementptr inbounds nuw i8, ptr %.7462535, i64 4
  %i.aei = getelementptr inbounds nuw i8, ptr %.7462535, i64 8
  %i.aej = getelementptr inbounds nuw i8, ptr %.7462535, i64 12
  %i.aek = load <4 x i16>, ptr %.0427536, align 2, !tbaa !105
  %i.ael = zext <4 x i16> %i.aek to <4 x i32>
  %i.aem = shl nuw <4 x i32> %i.ael, splat (i32 16)
  %i.aen = bitcast <4 x i32> %i.aem to <4 x float> ; 4 uses
  %i.aeo = load <2 x i16>, ptr %.7462535, align 2, !tbaa !105
  %i.aep = zext <2 x i16> %i.aeo to <2 x i32>
  %i.aeq = shl nuw <2 x i32> %i.aep, splat (i32 16)
  %i.aer = bitcast <2 x i32> %i.aeq to <2 x float>
  %i.aes = shufflevector <4 x float> %i.aen, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aet = fmul fast <2 x float> %i.aes, %i.aer
  %i.aeu = fadd fast <2 x float> %i.aet, %i.aed   ; 2 uses
  %i.aev = load <2 x i16>, ptr %i.aeh, align 2, !tbaa !105
  %i.aew = zext <2 x i16> %i.aev to <2 x i32>
  %i.aex = shl nuw <2 x i32> %i.aew, splat (i32 16)
  %i.aey = bitcast <2 x i32> %i.aex to <2 x float>
  %i.aez = shufflevector <4 x float> %i.aen, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.afa = fmul fast <2 x float> %i.aez, %i.aey
  %i.afb = fadd fast <2 x float> %i.afa, %i.aee   ; 2 uses
  %i.afc = load <2 x i16>, ptr %i.aei, align 2, !tbaa !105
  %i.afd = zext <2 x i16> %i.afc to <2 x i32>
  %i.afe = shl nuw <2 x i32> %i.afd, splat (i32 16)
  %i.aff = bitcast <2 x i32> %i.afe to <2 x float>
  %i.afg = shufflevector <4 x float> %i.aen, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.afh = fmul fast <2 x float> %i.afg, %i.aff
  %i.afi = fadd fast <2 x float> %i.afh, %i.aef   ; 2 uses
  %i.afj = load <2 x i16>, ptr %i.aej, align 2, !tbaa !105
  %i.afk = zext <2 x i16> %i.afj to <2 x i32>
  %i.afl = shl nuw <2 x i32> %i.afk, splat (i32 16)
  %i.afm = bitcast <2 x i32> %i.afl to <2 x float>
  %i.afn = shufflevector <4 x float> %i.aen, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.afo = fmul fast <2 x float> %i.afn, %i.afm
  %i.afp = fadd fast <2 x float> %i.afo, %i.aeg   ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %.0427536, i64 8 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.7462535, i64 16
  %i.afs = add nuw nsw i32 %.0425537, 4           ; 2 uses
  %i.aft = or disjoint i32 %i.afs, 3
  %i.afu = icmp slt i32 %i.aft, %3
  br i1 %i.afu, label %.lr.ph547, label %._crit_edge548.loopexit, !llvm.loop !982

._crit_edge548.loopexit:                          ; preds = %.lr.ph547, %middle.block255
  %.lcssa25 = phi ptr [ %i.tb, %middle.block255 ], [ %i.afq, %.lr.ph547 ]
  %i.afv = phi <2 x float> [ %i.adw, %middle.block255 ], [ %i.aeu, %.lr.ph547 ]
  %i.afw = phi <2 x float> [ %i.ady, %middle.block255 ], [ %i.afb, %.lr.ph547 ]
  %i.afx = phi <2 x float> [ %i.aea, %middle.block255 ], [ %i.afi, %.lr.ph547 ]
  %i.afy = phi <2 x float> [ %i.aec, %middle.block255 ], [ %i.afp, %.lr.ph547 ]
  %i.afz = getelementptr i8, ptr %.6461571, i64 %i.hk
  %scevgep762 = getelementptr i8, ptr %i.afz, i64 16
  %i.aga = fadd fast <2 x float> %i.afv, %i.vw
  %i.agb = fadd fast <2 x float> %i.aga, %i.afw
  %i.agc = fadd fast <2 x float> %i.agb, %i.afx
  %i.agd = fadd fast <2 x float> %i.agc, %i.afy
  br label %._crit_edge548

._crit_edge548:                                   ; preds = %._crit_edge548.loopexit, %bb.t
  %.7462.lcssa = phi ptr [ %.6461571, %bb.t ], [ %scevgep762, %._crit_edge548.loopexit ] ; 5 uses
  %.0427.lcssa = phi ptr [ %.2612, %bb.t ], [ %.lcssa25, %._crit_edge548.loopexit ] ; 3 uses
  %.0425.lcssa = phi i32 [ 0, %bb.t ], [ %i.hf, %._crit_edge548.loopexit ] ; 4 uses
  %i.age = phi <2 x float> [ %i.vw, %bb.t ], [ %i.agd, %._crit_edge548.loopexit ] ; 4 uses
  %i.agf = icmp slt i32 %.0425.lcssa, %3
  br i1 %i.agf, label %.lr.ph566.preheader, label %._crit_edge567

.lr.ph566.preheader:                              ; preds = %._crit_edge548
  %i.agg = xor i32 %.0425.lcssa, -1
  %i.agh = add i32 %3, %i.agg                     ; 2 uses
  %i.agi = zext i32 %i.agh to i64
  %i.agj = add nuw nsw i64 %i.agi, 1              ; 2 uses
  %min.iters.check202 = icmp ult i32 %i.agh, 7
  %i.agk = extractelement <2 x float> %i.age, i64 0
  %i.agl = extractelement <2 x float> %i.age, i64 1
  br i1 %min.iters.check202, label %.lr.ph566.preheader275, label %vector.ph203

vector.ph203:                                     ; preds = %.lr.ph566.preheader
  %n.vec204 = and i64 %i.agj, 8589934584          ; 5 uses
  %i.agm = trunc i64 %n.vec204 to i32
  %i.agn = add i32 %.0425.lcssa, %i.agm
  %i.ago = shl nuw nsw i64 %n.vec204, 1
  %i.agp = getelementptr i8, ptr %.0427.lcssa, i64 %i.ago
  %i.agq = shl nuw nsw i64 %n.vec204, 2
  %i.agr = getelementptr i8, ptr %.7462.lcssa, i64 %i.agq ; 2 uses
  %i.ags = shufflevector <2 x float> %i.age, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %36 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ags, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.agt = shufflevector <4 x float> %i.ags, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next222, %vector.body205 ] ; 3 uses
  %vec.phi207 = phi <4 x float> [ %36, %vector.ph203 ], [ %i.ahy, %vector.body205 ]
  %vec.phi208 = phi <4 x float> [ zeroinitializer, %vector.ph203 ], [ %i.ahz, %vector.body205 ]
  %vec.phi209 = phi <4 x float> [ %i.agt, %vector.ph203 ], [ %i.ahs, %vector.body205 ]
  %vec.phi210 = phi <4 x float> [ zeroinitializer, %vector.ph203 ], [ %i.aht, %vector.body205 ]
  %i.agu = shl i64 %index206, 1
  %next.gep211 = getelementptr i8, ptr %.0427.lcssa, i64 %i.agu ; 2 uses
  %i.agv = shl i64 %index206, 2                   ; 2 uses
  %next.gep212 = getelementptr i8, ptr %.7462.lcssa, i64 %i.agv
  %i.agw = getelementptr i8, ptr %.7462.lcssa, i64 %i.agv
  %next.gep213 = getelementptr i8, ptr %i.agw, i64 16
  %i.agx = getelementptr i8, ptr %next.gep211, i64 8
  %wide.load214 = load <4 x i16>, ptr %next.gep211, align 2, !tbaa !105
  %wide.load215 = load <4 x i16>, ptr %i.agx, align 2, !tbaa !105
  %i.agy = zext <4 x i16> %wide.load214 to <4 x i32>
  %i.agz = zext <4 x i16> %wide.load215 to <4 x i32>
  %i.aha = shl nuw <4 x i32> %i.agy, splat (i32 16)
  %i.ahb = shl nuw <4 x i32> %i.agz, splat (i32 16)
  %i.ahc = bitcast <4 x i32> %i.aha to <4 x float> ; 2 uses
  %i.ahd = bitcast <4 x i32> %i.ahb to <4 x float> ; 2 uses
  %wide.vec216 = load <8 x i16>, ptr %next.gep212, align 2, !tbaa !105
  %i.ahe = freeze <8 x i16> %wide.vec216          ; 2 uses
  %i.ahf = bitcast <8 x i16> %i.ahe to <4 x i32>
  %i.ahg = bitcast <8 x i16> %i.ahe to <4 x i32>
  %i.ahh = and <4 x i32> %i.ahg, splat (i32 -65536)
  %wide.vec219 = load <8 x i16>, ptr %next.gep213, align 2, !tbaa !105
  %i.ahi = freeze <8 x i16> %wide.vec219          ; 2 uses
  %i.ahj = bitcast <8 x i16> %i.ahi to <4 x i32>
  %i.ahk = bitcast <8 x i16> %i.ahi to <4 x i32>
  %i.ahl = and <4 x i32> %i.ahk, splat (i32 -65536)
  %i.ahm = shl <4 x i32> %i.ahf, splat (i32 16)
  %i.ahn = shl <4 x i32> %i.ahj, splat (i32 16)
  %i.aho = bitcast <4 x i32> %i.ahm to <4 x float>
  %i.ahp = bitcast <4 x i32> %i.ahn to <4 x float>
  %i.ahq = fmul fast <4 x float> %i.aho, %i.ahc
  %i.ahr = fmul fast <4 x float> %i.ahp, %i.ahd
  %i.ahs = fadd fast <4 x float> %i.ahq, %vec.phi209 ; 2 uses
  %i.aht = fadd fast <4 x float> %i.ahr, %vec.phi210 ; 2 uses
  %i.ahu = bitcast <4 x i32> %i.ahh to <4 x float>
  %i.ahv = bitcast <4 x i32> %i.ahl to <4 x float>
  %i.ahw = fmul fast <4 x float> %i.ahu, %i.ahc
  %i.ahx = fmul fast <4 x float> %i.ahv, %i.ahd
  %i.ahy = fadd fast <4 x float> %i.ahw, %vec.phi207 ; 2 uses
  %i.ahz = fadd fast <4 x float> %i.ahx, %vec.phi208 ; 2 uses
  %index.next222 = add nuw i64 %index206, 8       ; 2 uses
  %i.aia = icmp eq i64 %index.next222, %n.vec204
  br i1 %i.aia, label %middle.block223, label %vector.body205, !llvm.loop !983

middle.block223:                                  ; preds = %vector.body205
  %bin.rdx224 = fadd fast <4 x float> %i.ahz, %i.ahy
  %i.aib = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx224) ; 2 uses
  %bin.rdx225 = fadd fast <4 x float> %i.aht, %i.ahs
  %i.aic = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx225) ; 2 uses
  %cmp.n226 = icmp eq i64 %i.agj, %n.vec204
  %i.aid = insertelement <2 x float> poison, float %i.aic, i64 0
  %i.aie = insertelement <2 x float> %i.aid, float %i.aib, i64 1
  br i1 %cmp.n226, label %._crit_edge567, label %.lr.ph566.preheader275

.lr.ph566.preheader275:                           ; preds = %.lr.ph566.preheader, %middle.block223
  %.1426564.ph = phi i32 [ %.0425.lcssa, %.lr.ph566.preheader ], [ %i.agn, %middle.block223 ]
  %.1428563.ph = phi ptr [ %.0427.lcssa, %.lr.ph566.preheader ], [ %i.agp, %middle.block223 ]
  %.1430562.ph = phi float [ %i.agl, %.lr.ph566.preheader ], [ %i.aib, %middle.block223 ]
  %.1432561.ph = phi float [ %i.agk, %.lr.ph566.preheader ], [ %i.aic, %middle.block223 ]
  %.8463560.ph = phi ptr [ %.7462.lcssa, %.lr.ph566.preheader ], [ %i.agr, %middle.block223 ]
  br label %.lr.ph566

.lr.ph566:                                        ; preds = %.lr.ph566.preheader275, %.lr.ph566
  %.1426564 = phi i32 [ %i.aiv, %.lr.ph566 ], [ %.1426564.ph, %.lr.ph566.preheader275 ]
  %.1428563 = phi ptr [ %i.ait, %.lr.ph566 ], [ %.1428563.ph, %.lr.ph566.preheader275 ] ; 2 uses
  %.1430562 = phi float [ %i.aix, %.lr.ph566 ], [ %.1430562.ph, %.lr.ph566.preheader275 ]
  %.1432561 = phi float [ %i.aiw, %.lr.ph566 ], [ %.1432561.ph, %.lr.ph566.preheader275 ]
  %.8463560 = phi ptr [ %i.aiu, %.lr.ph566 ], [ %.8463560.ph, %.lr.ph566.preheader275 ] ; 2 uses
  %i.aif = load i16, ptr %.1428563, align 2, !tbaa !105
  %i.aig = zext i16 %i.aif to i32
  %i.aih = shl nuw i32 %i.aig, 16
  %i.aii = load <2 x i16>, ptr %.8463560, align 2, !tbaa !105
  %i.aij = zext <2 x i16> %i.aii to <2 x i32>
  %i.aik = shl nuw <2 x i32> %i.aij, splat (i32 16)
  %i.ail = bitcast <2 x i32> %i.aik to <2 x float>
  %i.aim = insertelement <2 x i32> poison, i32 %i.aih, i64 0
  %i.ain = bitcast <2 x i32> %i.aim to <2 x float>
  %i.aio = shufflevector <2 x float> %i.ain, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aip = fmul fast <2 x float> %i.aio, %i.ail
  %i.aiq = insertelement <2 x float> poison, float %.1432561, i64 0
  %i.air = insertelement <2 x float> %i.aiq, float %.1430562, i64 1
  %i.ais = fadd fast <2 x float> %i.aip, %i.air   ; 3 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.1428563, i64 2
  %i.aiu = getelementptr inbounds nuw i8, ptr %.8463560, i64 4 ; 2 uses
  %i.aiv = add nuw nsw i32 %.1426564, 1           ; 2 uses
  %exitcond763.not = icmp eq i32 %i.aiv, %3
  %i.aiw = extractelement <2 x float> %i.ais, i64 0
  %i.aix = extractelement <2 x float> %i.ais, i64 1
  br i1 %exitcond763.not, label %._crit_edge567, label %.lr.ph566, !llvm.loop !984

._crit_edge567:                                   ; preds = %.lr.ph566, %middle.block223, %._crit_edge548
  %.8463.lcssa = phi ptr [ %.7462.lcssa, %._crit_edge548 ], [ %i.agr, %middle.block223 ], [ %i.aiu, %.lr.ph566 ] ; 2 uses
  %i.aiy = phi <2 x float> [ %i.age, %._crit_edge548 ], [ %i.aie, %middle.block223 ], [ %i.ais, %.lr.ph566 ]
  store <2 x float> %i.aiy, ptr %.13573, align 4, !tbaa !67
  %i.aiz = getelementptr inbounds nuw i8, ptr %.13573, i64 8 ; 2 uses
  %i.aja = add nuw nsw i32 %.2453572, 2           ; 3 uses
  %i.ajb = or disjoint i32 %i.aja, 1
  %i.ajc = icmp slt i32 %i.ajb, %1
  br i1 %i.ajc, label %.lr.ph574, label %.preheader, !llvm.loop !985

.lr.ph607:                                        ; preds = %.lr.ph607.preheader, %._crit_edge601
  %.14606 = phi ptr [ %i.avn, %._crit_edge601 ], [ %.13.lcssa, %.lr.ph607.preheader ] ; 3 uses
  %.3454605 = phi i32 [ %i.avo, %._crit_edge601 ], [ %.2453.lcssa, %.lr.ph607.preheader ]
  %.9464604 = phi ptr [ %.11466.lcssa, %._crit_edge601 ], [ %.6461.lcssa, %.lr.ph607.preheader ] ; 12 uses
  br i1 %.not507, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph607
  %i.ajd = load float, ptr %.14606, align 4, !tbaa !67
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph607
  %.0397 = phi nsz float [ %i.ajd, %bb.u ], [ 0.000000e+00, %.lr.ph607 ] ; 2 uses
  br i1 %i.hb, label %.lr.ph586.preheader, label %._crit_edge587

.lr.ph586.preheader:                              ; preds = %bb.v
  br i1 %min.iters.check158, label %.lr.ph586.preheader274, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph586.preheader
  %i.aje = getelementptr i8, ptr %.9464604, i64 %i.hu
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next187, %vector.body161 ] ; 2 uses
  %vec.phi163 = phi <4 x float> [ zeroinitializer, %vector.ph159 ], [ %i.asr, %vector.body161 ]
  %vec.phi164 = phi <4 x float> [ zeroinitializer, %vector.ph159 ], [ %i.ass, %vector.body161 ]
  %vec.phi165 = phi <4 x float> [ zeroinitializer, %vector.ph159 ], [ %i.aqf, %vector.body161 ]
  %vec.phi166 = phi <4 x float> [ zeroinitializer, %vector.ph159 ], [ %i.aqg, %vector.body161 ]
  %vec.phi167 = phi <4 x float> [ zeroinitializer, %vector.ph159 ], [ %i.ant, %vector.body161 ]
  %vec.phi168 = phi <4 x float> [ zeroinitializer, %vector.ph159 ], [ %i.anu, %vector.body161 ]
  %vec.phi169 = phi <4 x float> [ zeroinitializer, %vector.ph159 ], [ %i.alh, %vector.body161 ]
  %vec.phi170 = phi <4 x float> [ zeroinitializer, %vector.ph159 ], [ %i.ali, %vector.body161 ]
  %i.ajf = shl i64 %index162, 3                   ; 9 uses
  %i.ajg = or disjoint i64 %i.ajf, 8              ; 2 uses
  %i.ajh = or disjoint i64 %i.ajf, 16             ; 2 uses
  %i.aji = or disjoint i64 %i.ajf, 24             ; 2 uses
  %i.ajj = or disjoint i64 %i.ajf, 32             ; 2 uses
  %i.ajk = or disjoint i64 %i.ajf, 40             ; 2 uses
  %i.ajl = or disjoint i64 %i.ajf, 48             ; 2 uses
  %i.ajm = or disjoint i64 %i.ajf, 56             ; 2 uses
  %next.gep171 = getelementptr i8, ptr %.2612, i64 %i.ajf ; 4 uses
  %next.gep172 = getelementptr i8, ptr %.2612, i64 %i.ajg ; 4 uses
  %next.gep173 = getelementptr i8, ptr %.2612, i64 %i.ajh ; 4 uses
  %next.gep174 = getelementptr i8, ptr %.2612, i64 %i.aji ; 4 uses
  %next.gep175 = getelementptr i8, ptr %.2612, i64 %i.ajj ; 4 uses
  %next.gep176 = getelementptr i8, ptr %.2612, i64 %i.ajk ; 4 uses
  %next.gep177 = getelementptr i8, ptr %.2612, i64 %i.ajl ; 4 uses
  %next.gep178 = getelementptr i8, ptr %.2612, i64 %i.ajm ; 4 uses
  %next.gep179 = getelementptr i8, ptr %.9464604, i64 %i.ajf ; 4 uses
  %next.gep180 = getelementptr i8, ptr %.9464604, i64 %i.ajg ; 4 uses
  %next.gep181 = getelementptr i8, ptr %.9464604, i64 %i.ajh ; 4 uses
  %next.gep182 = getelementptr i8, ptr %.9464604, i64 %i.aji ; 4 uses
  %next.gep183 = getelementptr i8, ptr %.9464604, i64 %i.ajj ; 4 uses
  %next.gep184 = getelementptr i8, ptr %.9464604, i64 %i.ajk ; 4 uses
  %next.gep185 = getelementptr i8, ptr %.9464604, i64 %i.ajl ; 4 uses
  %next.gep186 = getelementptr i8, ptr %.9464604, i64 %i.ajm ; 4 uses
  %i.ajn = load i16, ptr %next.gep171, align 2, !tbaa !105
  %i.ajo = load i16, ptr %next.gep172, align 2, !tbaa !105
  %i.ajp = load i16, ptr %next.gep173, align 2, !tbaa !105
  %i.ajq = load i16, ptr %next.gep174, align 2, !tbaa !105
  %i.ajr = insertelement <4 x i16> poison, i16 %i.ajn, i64 0
  %i.ajs = insertelement <4 x i16> %i.ajr, i16 %i.ajo, i64 1
  %i.ajt = insertelement <4 x i16> %i.ajs, i16 %i.ajp, i64 2
  %i.aju = insertelement <4 x i16> %i.ajt, i16 %i.ajq, i64 3
  %i.ajv = load i16, ptr %next.gep175, align 2, !tbaa !105
  %i.ajw = load i16, ptr %next.gep176, align 2, !tbaa !105
  %i.ajx = load i16, ptr %next.gep177, align 2, !tbaa !105
  %i.ajy = load i16, ptr %next.gep178, align 2, !tbaa !105
  %i.ajz = insertelement <4 x i16> poison, i16 %i.ajv, i64 0
  %i.aka = insertelement <4 x i16> %i.ajz, i16 %i.ajw, i64 1
  %i.akb = insertelement <4 x i16> %i.aka, i16 %i.ajx, i64 2
  %i.akc = insertelement <4 x i16> %i.akb, i16 %i.ajy, i64 3
  %i.akd = zext <4 x i16> %i.aju to <4 x i32>
  %i.ake = zext <4 x i16> %i.akc to <4 x i32>
  %i.akf = shl nuw <4 x i32> %i.akd, splat (i32 16)
  %i.akg = shl nuw <4 x i32> %i.ake, splat (i32 16)
  %i.akh = bitcast <4 x i32> %i.akf to <4 x float>
  %i.aki = bitcast <4 x i32> %i.akg to <4 x float>
  %i.akj = load i16, ptr %next.gep179, align 2, !tbaa !105
  %i.akk = load i16, ptr %next.gep180, align 2, !tbaa !105
  %i.akl = load i16, ptr %next.gep181, align 2, !tbaa !105
  %i.akm = load i16, ptr %next.gep182, align 2, !tbaa !105
  %i.akn = insertelement <4 x i16> poison, i16 %i.akj, i64 0
  %i.ako = insertelement <4 x i16> %i.akn, i16 %i.akk, i64 1
  %i.akp = insertelement <4 x i16> %i.ako, i16 %i.akl, i64 2
  %i.akq = insertelement <4 x i16> %i.akp, i16 %i.akm, i64 3
  %i.akr = load i16, ptr %next.gep183, align 2, !tbaa !105
  %i.aks = load i16, ptr %next.gep184, align 2, !tbaa !105
  %i.akt = load i16, ptr %next.gep185, align 2, !tbaa !105
  %i.aku = load i16, ptr %next.gep186, align 2, !tbaa !105
  %i.akv = insertelement <4 x i16> poison, i16 %i.akr, i64 0
  %i.akw = insertelement <4 x i16> %i.akv, i16 %i.aks, i64 1
  %i.akx = insertelement <4 x i16> %i.akw, i16 %i.akt, i64 2
end_hunk_2
