Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_avx?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4ncnn21Convolution1D_x86_avx15create_pipelineERKNS_6OptionE:bb.a

._crit_edge.us1228.i:                             ; preds = %bb.ak
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %.28391217.us.i, i64 %i.gf ; 2 uses
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %.28421216.us.i, i64 %i.gf ; 2 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %.28501215.us.i, i64 %i.gf ; 2 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %.28531214.us.i, i64 %i.gf ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.28571213.us.i, i64 %i.gf ; 2 uses
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %.28601212.us.i, i64 %i.gf ; 2 uses
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %.28831211.us.i, i64 %i.gf ; 2 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %.28861210.us.i, i64 %i.gf ; 2 uses
  %i.zk = add nuw nsw i32 %.29001208.us.i, 2      ; 3 uses
  %i.zl = or disjoint i32 %i.zk, 1
  %i.zm = icmp slt i32 %i.zl, %i.n
  br i1 %i.zm, label %.preheader1105.us.i, label %.preheader1108.i, !llvm.loop !60

.preheader1108.i:                                 ; preds = %._crit_edge.us1228.i, %.preheader1109.i
  %.2900.lcssa.i = phi i32 [ %.1899.lcssa.i, %.preheader1109.i ], [ %i.zk, %._crit_edge.us1228.i ] ; 2 uses
  %.6893.lcssa.i = phi ptr [ %.3890.lcssa.i, %.preheader1109.i ], [ %i.zb, %._crit_edge.us1228.i ]
  %.2886.lcssa.i = phi ptr [ %.1885.lcssa.i, %.preheader1109.i ], [ %i.zj, %._crit_edge.us1228.i ] ; 4 uses
  %.2883.lcssa.i = phi ptr [ %.1882.lcssa.i, %.preheader1109.i ], [ %i.zi, %._crit_edge.us1228.i ] ; 4 uses
  %.2860.lcssa.i = phi ptr [ %.1859.lcssa.i, %.preheader1109.i ], [ %i.zh, %._crit_edge.us1228.i ] ; 4 uses
  %.2857.lcssa.i = phi ptr [ %.1856.lcssa.i, %.preheader1109.i ], [ %i.zg, %._crit_edge.us1228.i ] ; 4 uses
  %.2853.lcssa.i = phi ptr [ %.1852.lcssa.i, %.preheader1109.i ], [ %i.zf, %._crit_edge.us1228.i ] ; 4 uses
  %.2850.lcssa.i = phi ptr [ %.1849.lcssa.i, %.preheader1109.i ], [ %i.ze, %._crit_edge.us1228.i ] ; 4 uses
  %.2842.lcssa.i = phi ptr [ %.1841.lcssa.i, %.preheader1109.i ], [ %i.zd, %._crit_edge.us1228.i ] ; 4 uses
  %.2839.lcssa.i = phi ptr [ %.1838.lcssa.i, %.preheader1109.i ], [ %i.zc, %._crit_edge.us1228.i ] ; 4 uses
  %i.zn = icmp sge i32 %.2900.lcssa.i, %i.n
  %brmerge.i = or i1 %i.gg, %i.zn
  br i1 %brmerge.i, label %._crit_edge1244.split.i, label %.preheader1104.i.preheader

.preheader1104.i.preheader:                       ; preds = %.preheader1108.i
  %scevgep292 = getelementptr i8, ptr %.2886.lcssa.i, i64 %i.ha
  %scevgep293 = getelementptr i8, ptr %.2883.lcssa.i, i64 %i.ha
  %scevgep294 = getelementptr i8, ptr %.2860.lcssa.i, i64 %i.ha
  %scevgep295 = getelementptr i8, ptr %.2857.lcssa.i, i64 %i.ha
  %scevgep296 = getelementptr i8, ptr %.2853.lcssa.i, i64 %i.ha
  %scevgep297 = getelementptr i8, ptr %.2850.lcssa.i, i64 %i.ha
  %scevgep298 = getelementptr i8, ptr %.2842.lcssa.i, i64 %i.ha
  %scevgep299 = getelementptr i8, ptr %.2839.lcssa.i, i64 %i.ha
  %i.zo = insertelement <8 x ptr> poison, ptr %scevgep292, i64 0
  %i.zp = insertelement <8 x ptr> %i.zo, ptr %scevgep293, i64 1
  %i.zq = insertelement <8 x ptr> %i.zp, ptr %scevgep294, i64 2
  %i.zr = insertelement <8 x ptr> %i.zq, ptr %scevgep295, i64 3
  %i.zs = insertelement <8 x ptr> %i.zr, ptr %scevgep296, i64 4
  %i.zt = insertelement <8 x ptr> %i.zs, ptr %scevgep297, i64 5
  %i.zu = insertelement <8 x ptr> %i.zt, ptr %scevgep298, i64 6
  %i.zv = insertelement <8 x ptr> %i.zu, ptr %scevgep299, i64 7
  %i.zw = insertelement <8 x ptr> poison, ptr %.2886.lcssa.i, i64 0
  %i.zx = insertelement <8 x ptr> %i.zw, ptr %.2883.lcssa.i, i64 1
  %i.zy = insertelement <8 x ptr> %i.zx, ptr %.2860.lcssa.i, i64 2
  %i.zz = insertelement <8 x ptr> %i.zy, ptr %.2857.lcssa.i, i64 3
  %i.aaa = insertelement <8 x ptr> %i.zz, ptr %.2853.lcssa.i, i64 4
  %i.aab = insertelement <8 x ptr> %i.aaa, ptr %.2850.lcssa.i, i64 5
  %i.aac = insertelement <8 x ptr> %i.aab, ptr %.2842.lcssa.i, i64 6
  %i.aad = insertelement <8 x ptr> %i.aac, ptr %.2839.lcssa.i, i64 7
  br label %.preheader1104.i

.preheader1104.i:                                 ; preds = %.preheader1104.i.preheader, %._crit_edge.i
  %.98961243.i = phi ptr [ %.lcssa291, %._crit_edge.i ], [ %.6893.lcssa.i, %.preheader1104.i.preheader ] ; 6 uses
  %.39011242.i = phi i32 [ %i.abd, %._crit_edge.i ], [ %.2900.lcssa.i, %.preheader1104.i.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader1104.i
  %scevgep = getelementptr i8, ptr %.98961243.i, i64 %i.gz
  %i.aae = insertelement <8 x ptr> poison, ptr %.98961243.i, i64 0
  %i.aaf = shufflevector <8 x ptr> %i.aae, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aag = icmp ult <8 x ptr> %i.aaf, %i.zv
  %i.aah = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.aai = shufflevector <8 x ptr> %i.aah, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aaj = icmp ult <8 x ptr> %i.aad, %i.aai
  %i.aak = and <8 x i1> %i.aag, %i.aaj
  %i.aal = bitcast <8 x i1> %i.aak to i8
  %.not817 = icmp eq i8 %i.aal, 0
  br i1 %.not817, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.aam = getelementptr i8, ptr %.98961243.i, i64 %i.hb ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.aan = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %.98961243.i, i64 %i.aan
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %.2839.lcssa.i, i64 %index
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %.2842.lcssa.i, i64 %index
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %.2850.lcssa.i, i64 %index
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.2853.lcssa.i, i64 %index
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %.2857.lcssa.i, i64 %index
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.2860.lcssa.i, i64 %index
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %.2883.lcssa.i, i64 %index
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %.2886.lcssa.i, i64 %index
  %wide.load = load <8 x float>, ptr %i.aao, align 4, !tbaa !53, !alias.scope !61
  %wide.load327 = load <8 x float>, ptr %i.aap, align 4, !tbaa !53, !alias.scope !64
  %wide.load328 = load <8 x float>, ptr %i.aaq, align 4, !tbaa !53, !alias.scope !66
  %wide.load329 = load <8 x float>, ptr %i.aar, align 4, !tbaa !53, !alias.scope !68
  %wide.load330 = load <8 x float>, ptr %i.aas, align 4, !tbaa !53, !alias.scope !70
  %wide.load331 = load <8 x float>, ptr %i.aat, align 4, !tbaa !53, !alias.scope !72
  %wide.load332 = load <8 x float>, ptr %i.aau, align 4, !tbaa !53, !alias.scope !74
  %wide.load333 = load <8 x float>, ptr %i.aav, align 4, !tbaa !53, !alias.scope !76
  %i.aaw = shufflevector <8 x float> %wide.load, <8 x float> %wide.load327, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aax = shufflevector <8 x float> %wide.load328, <8 x float> %wide.load329, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aay = shufflevector <8 x float> %wide.load330, <8 x float> %wide.load331, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaz = shufflevector <8 x float> %wide.load332, <8 x float> %wide.load333, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aba = shufflevector <16 x float> %i.aaw, <16 x float> %i.aax, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abb = shufflevector <16 x float> %i.aay, <16 x float> %i.aaz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x float> %i.aba, <32 x float> %i.abb, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !53, !alias.scope !78, !noalias !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.abc = icmp eq i64 %index.next, %n.vec
  br i1 %i.abc, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader1104.i, %middle.block
  %indvars.iv1677.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader1104.i ], [ %n.vec, %middle.block ]
  %.108971241.i.ph = phi ptr [ %.98961243.i, %vector.memcheck ], [ %.98961243.i, %.preheader1104.i ], [ %i.aam, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa291 = phi ptr [ %i.aam, %middle.block ], [ %i.acb, %scalar.ph ]
  %i.abd = add nuw nsw i32 %.39011242.i, 1        ; 2 uses
  %exitcond1682.not.i = icmp eq i32 %i.abd, %i.n
  br i1 %exitcond1682.not.i, label %._crit_edge1244.split.i, label %.preheader1104.i, !llvm.loop !84

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1677.i = phi i64 [ %indvars.iv.next1678.i, %scalar.ph ], [ %indvars.iv1677.i.ph, %scalar.ph.preheader ] ; 9 uses
  %.108971241.i = phi ptr [ %i.acb, %scalar.ph ], [ %.108971241.i.ph, %scalar.ph.preheader ] ; 9 uses
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %.2839.lcssa.i, i64 %indvars.iv1677.i
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %.2842.lcssa.i, i64 %indvars.iv1677.i
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %.2850.lcssa.i, i64 %indvars.iv1677.i
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %.2853.lcssa.i, i64 %indvars.iv1677.i
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %.2857.lcssa.i, i64 %indvars.iv1677.i
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %.2860.lcssa.i, i64 %indvars.iv1677.i
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.2883.lcssa.i, i64 %indvars.iv1677.i
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %.2886.lcssa.i, i64 %indvars.iv1677.i
  %i.abm = load float, ptr %i.abe, align 4, !tbaa !53
  store float %i.abm, ptr %.108971241.i, align 4, !tbaa !53
  %i.abn = load float, ptr %i.abf, align 4, !tbaa !53
  %i.abo = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 4
  store float %i.abn, ptr %i.abo, align 4, !tbaa !53
  %i.abp = load float, ptr %i.abg, align 4, !tbaa !53
  %i.abq = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 8
  store float %i.abp, ptr %i.abq, align 4, !tbaa !53
  %i.abr = load float, ptr %i.abh, align 4, !tbaa !53
  %i.abs = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 12
  store float %i.abr, ptr %i.abs, align 4, !tbaa !53
  %i.abt = load float, ptr %i.abi, align 4, !tbaa !53
  %i.abu = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 16
  store float %i.abt, ptr %i.abu, align 4, !tbaa !53
  %i.abv = load float, ptr %i.abj, align 4, !tbaa !53
  %i.abw = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 20
  store float %i.abv, ptr %i.abw, align 4, !tbaa !53
  %i.abx = load float, ptr %i.abk, align 4, !tbaa !53
  %i.aby = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 24
  store float %i.abx, ptr %i.aby, align 4, !tbaa !53
  %i.abz = load float, ptr %i.abl, align 4, !tbaa !53
  %i.aca = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 28
  store float %i.abz, ptr %i.aca, align 4, !tbaa !53
  %i.acb = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 32 ; 2 uses
  %indvars.iv.next1678.i = add nuw nsw i64 %indvars.iv1677.i, 1 ; 2 uses
  %exitcond1681.not.i = icmp eq i64 %indvars.iv.next1678.i, %wide.trip.count.i
  br i1 %exitcond1681.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !85

._crit_edge1244.split.i:                          ; preds = %._crit_edge.i, %.preheader1108.i, %.preheader1105.lr.ph.i
  %indvars.iv.next1684.i = add nuw nsw i64 %indvars.iv1683.i, 8 ; 3 uses
  %i.acc = or disjoint i64 %indvars.iv.next1684.i, 7
  %i.acd = icmp samesign ult i64 %i.acc, %i.gw
  %indvars.iv.next.i = add i32 %indvars.iv.i, %i.gm
  %indvars.iv.next1621.i = add i32 %indvars.iv1620.i, %i.gm
  %indvars.iv.next1625.i = add i32 %indvars.iv1624.i, %i.gm
  %indvars.iv.next1629.i = add i32 %indvars.iv1628.i, %i.gm
  %indvars.iv.next1633.i = add i32 %indvars.iv1632.i, %i.gm
  %indvars.iv.next1637.i = add i32 %indvars.iv1636.i, %i.gm
  %indvars.iv.next1641.i = add i32 %indvars.iv1640.i, %i.gm
  %indvars.iv.next1645.i = add i32 %indvars.iv1644.i, %i.gm
  br i1 %i.acd, label %_ZN4ncnn3MatD2Ev.exit1005.i, label %.preheader1103.loopexit.i, !llvm.loop !86

.preheader1095.loopexit.i:                        ; preds = %._crit_edge1337.split.i
  %i.ace = trunc nuw nsw i64 %indvars.iv.next1737.i to i32
  br label %.preheader1095.i

.preheader1095.i:                                 ; preds = %.preheader1095.loopexit.i, %.preheader1103.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader1103.i ], [ %i.ace, %.preheader1095.loopexit.i ] ; 4 uses
  %i.acf = or disjoint i32 %.1.lcssa.i, 1         ; 3 uses
  %i.acg = icmp slt i32 %i.acf, %i.m
  br i1 %i.acg, label %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i, label %.preheader1087.i

_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i:                ; preds = %.preheader1095.i
  %i.ach = load ptr, ptr %i.o, align 8, !tbaa !18 ; 3 uses
  %i.aci = mul i32 %i.n, %i.j                     ; 5 uses
  %i.acj = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !87
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.acl = load i64, ptr %i.ack, align 8, !tbaa !20, !noalias !87
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.acn = load i64, ptr %i.acm, align 8, !tbaa !49, !noalias !87
  %factor.op.mul1403.i = mul i64 %i.acn, %i.acl
  %i.aco = icmp sgt i32 %i.n, 7
  %i.acp = icmp sgt i32 %i.j, 0                   ; 3 uses
  %i.acq = sext i32 %i.j to i64                   ; 16 uses
  %i.acr = shl i32 %i.j, 1                        ; 2 uses
  %2 = sext i32 %i.acr to i64                     ; 10 uses
  %i.acs = mul i32 %i.j, 3
  %3 = sext i32 %i.acs to i64                     ; 7 uses
  %i.act = shl i32 %i.j, 2                        ; 2 uses
  %4 = sext i32 %i.act to i64                     ; 6 uses
  %i.acu = mul nsw i32 %i.j, 5
  %5 = sext i32 %i.acu to i64                     ; 2 uses
  %i.acv = mul nsw i32 %i.j, 6
  %6 = sext i32 %i.acv to i64                     ; 2 uses
  %i.acw = mul nsw i32 %i.j, 7
  %7 = sext i32 %i.acw to i64                     ; 2 uses
  %i.acx = shl i32 %i.j, 3
  %i.acy = sext i32 %i.acx to i64                 ; 3 uses
  %i.acz = icmp slt i32 %i.j, 1
  %i.ada = add i32 %i.n, -8                       ; 2 uses
  %i.adb = lshr i32 %i.ada, 1
  %i.adc = and i32 %i.adb, 2147483644
  %narrow1838.i = add nuw i32 %i.adc, 4
  %i.add = zext i32 %narrow1838.i to i64
  %i.ade = mul nsw i64 %i.add, %i.acy
  %scevgep1741.i = getelementptr i8, ptr %i.ach, i64 %i.ade ; 2 uses
  %i.adf = mul i32 %i.aci, %.1.lcssa.i
  %i.adg = shl i32 %i.aci, 1                      ; 2 uses
  %i.adh = mul i32 %i.acf, %i.aci
  %i.adi = and i32 %i.ada, -8
  %i.adj = add i32 %i.adi, 8                      ; 4 uses
  %i.adk = add i32 %i.n, -4
  %i.adl = zext nneg i32 %.1.lcssa.i to i64
  %i.adm = sext i32 %i.m to i64
  %i.adn = or disjoint i32 %i.adj, 3
  %i.ado = icmp slt i32 %i.adn, %i.n
  %wide.trip.count1752.i = zext i32 %i.j to i64   ; 19 uses
  %i.adp = shl nuw nsw i64 %wide.trip.count1752.i, 3
  %i.adq = shl nuw nsw i64 %wide.trip.count1752.i, 2 ; 5 uses
  %i.adr = shl nuw nsw i64 %wide.trip.count1752.i, 4
  %i.ads = shl nuw nsw i64 %i.acq, 2              ; 3 uses
  %i.adt = add nuw nsw i64 %i.ads, %i.adq         ; 2 uses
  %i.adu = shl nsw i64 %2, 2
  %i.adv = shl nuw nsw i64 %wide.trip.count1752.i, 5
  %i.adw = shl nuw nsw i64 %3, 2                  ; 3 uses
  %i.adx = shl nuw nsw i64 %wide.trip.count1752.i, 2 ; 5 uses
  %i.ady = add nuw nsw i64 %i.adw, %i.adx         ; 2 uses
  %i.adz = shl nsw i64 %4, 2
  %i.aea = add i32 %i.n, -4
  %i.aeb = shl nuw nsw i64 %2, 2                  ; 3 uses
  %i.aec = add nuw nsw i64 %i.aeb, %i.adx         ; 2 uses
  %i.aed = shl nuw nsw i64 %i.acq, 2              ; 3 uses
  %i.aee = add nuw nsw i64 %i.aed, %i.adx         ; 2 uses
  %min.iters.check597 = icmp ult i32 %i.j, 16
  %stride.check564 = icmp slt i32 %i.act, 0
  %n.vec599 = and i64 %wide.trip.count1752.i, 2147483640 ; 4 uses
  %i.aef = shl nuw nsw i64 %n.vec599, 5
  %cmp.n614 = icmp eq i64 %n.vec599, %wide.trip.count1752.i
  %min.iters.check517 = icmp ult i32 %i.j, 16
  %stride.check504 = icmp slt i32 %i.acr, 0
  %n.vec519 = and i64 %wide.trip.count1752.i, 2147483640 ; 4 uses
  %i.aeg = shl nuw nsw i64 %n.vec519, 4
  %cmp.n530 = icmp eq i64 %n.vec519, %wide.trip.count1752.i
  %xtraiter887 = and i64 %wide.trip.count1752.i, 1
  %lcmp.mod888.not = icmp eq i64 %xtraiter887, 0
  %i.aeh = add nsw i64 %wide.trip.count1752.i, -1
  %min.iters.check466 = icmp ult i32 %i.j, 6
  %n.vec468 = and i64 %wide.trip.count1752.i, 2147483644 ; 4 uses
  %i.aei = shl nuw nsw i64 %n.vec468, 3
  %cmp.n481 = icmp eq i64 %n.vec468, %wide.trip.count1752.i
  %xtraiter889 = and i64 %wide.trip.count1752.i, 3 ; 2 uses
  %lcmp.mod890.not = icmp eq i64 %xtraiter889, 0
  br label %_ZN4ncnn3MatD2Ev.exit1003.i

_ZN4ncnn3MatD2Ev.exit1004.i:                      ; preds = %._crit_edge1337.split.i, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i
  %indvars.iv1736.i = phi i64 [ %i.il, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1737.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1734.i = phi i32 [ %i.im, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1735.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1699.i = phi i32 [ %i.ih, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1700.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1695.i = phi i32 [ %i.ig, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1696.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1691.i = phi i32 [ %i.ie, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1692.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1687.i = phi i32 [ %i.ib, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1688.i, %._crit_edge1337.split.i ] ; 2 uses
  %i.aej = sext i32 %indvars.iv1687.i to i64
  %i.aek = shl nsw i64 %i.aej, 2
  %scevgep1689.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aek ; 2 uses
  %i.ael = sext i32 %indvars.iv1691.i to i64
  %i.aem = shl nsw i64 %i.ael, 2
  %scevgep1693.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aem ; 2 uses
  %i.aen = sext i32 %indvars.iv1695.i to i64
  %i.aeo = shl nsw i64 %i.aen, 2
  %scevgep1697.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aeo ; 2 uses
  %i.aep = sext i32 %indvars.iv1699.i to i64
  %i.aeq = shl nsw i64 %i.aep, 2
  %scevgep1701.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aeq ; 2 uses
  %i.aer = trunc nuw i64 %indvars.iv1736.i to i32 ; 5 uses
  %i.aes = mul i32 %i.hg, %i.aer
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.aet ; 2 uses
  %i.aev = add i32 %i.aer, 1
  %i.aew = mul i32 %i.aev, %i.hg
  %i.aex = sext i32 %i.aew to i64
  %i.aey = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.aex ; 2 uses
  %i.aez = add i32 %i.aer, 2
  %i.afa = mul i32 %i.aez, %i.hg
  %i.afb = sext i32 %i.afa to i64
  %i.afc = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.afb ; 2 uses
  %i.afd = mul i32 %indvars.iv1734.i, %i.hg
  %i.afe = sext i32 %i.afd to i64
  %i.aff = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.afe ; 2 uses
  %i.afg = lshr i32 %i.aer, 3
  %i.afh = lshr i32 %i.aer, 2
  %i.afi = and i32 %i.afh, 1
  %i.afj = add nuw nsw i32 %i.afi, %i.afg
  %i.afk = zext nneg i32 %i.afj to i64
  %.reass1341.i = mul i64 %factor.op.mul1340.i, %i.afk
  %i.afl = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.reass1341.i ; 4 uses
  br i1 %i.hm, label %.preheader1099.lr.ph.i, label %.preheader1102.i

.preheader1099.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1004.i
  br i1 %i.hn, label %.preheader1099.us.i, label %.preheader1102.thread.i

.preheader1099.us.i:                              ; preds = %.preheader1099.lr.ph.i, %._crit_edge1255.us.i
  %.09211262.us.i = phi i32 [ %i.aji, %._crit_edge1255.us.i ], [ 0, %.preheader1099.lr.ph.i ]
  %.09251261.us.i = phi ptr [ %i.ajd, %._crit_edge1255.us.i ], [ %i.afl, %.preheader1099.lr.ph.i ]
  %.09361260.us.i = phi ptr [ %i.ajh, %._crit_edge1255.us.i ], [ %i.aff, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09391259.us.i = phi ptr [ %i.ajg, %._crit_edge1255.us.i ], [ %i.afc, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09421258.us.i = phi ptr [ %i.ajf, %._crit_edge1255.us.i ], [ %i.aey, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09451257.us.i = phi ptr [ %i.aje, %._crit_edge1255.us.i ], [ %i.aeu, %.preheader1099.lr.ph.i ] ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.preheader1099.us.i
  %indvars.iv1703.i = phi i64 [ 0, %.preheader1099.us.i ], [ %indvars.iv.next1704.i, %bb.al ] ; 5 uses
  %.19261253.us.i = phi ptr [ %.09251261.us.i, %.preheader1099.us.i ], [ %i.ajd, %bb.al ] ; 33 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %.09451257.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %.09421258.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %.09391259.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %.09361260.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afq = load float, ptr %i.afm, align 4, !tbaa !53
  store float %i.afq, ptr %.19261253.us.i, align 4, !tbaa !53
  %i.afr = load float, ptr %i.afn, align 4, !tbaa !53
  %i.afs = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 4
  store float %i.afr, ptr %i.afs, align 4, !tbaa !53
  %i.aft = load float, ptr %i.afo, align 4, !tbaa !53
  %i.afu = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 8
  store float %i.aft, ptr %i.afu, align 4, !tbaa !53
  %i.afv = load float, ptr %i.afp, align 4, !tbaa !53
  %i.afw = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 12
  store float %i.afv, ptr %i.afw, align 4, !tbaa !53
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.afm, i64 %i.ho ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %i.ho ; 2 uses
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %i.ho ; 2 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.afp, i64 %i.ho ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 16
  %i.agc = load float, ptr %i.afx, align 4, !tbaa !53
  store float %i.agc, ptr %i.agb, align 4, !tbaa !53
  %i.agd = load float, ptr %i.afy, align 4, !tbaa !53
  %i.age = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 20
  store float %i.agd, ptr %i.age, align 4, !tbaa !53
  %i.agf = load float, ptr %i.afz, align 4, !tbaa !53
  %i.agg = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 24
  store float %i.agf, ptr %i.agg, align 4, !tbaa !53
  %i.agh = load float, ptr %i.aga, align 4, !tbaa !53
  %i.agi = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 28
  store float %i.agh, ptr %i.agi, align 4, !tbaa !53
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %i.ho ; 2 uses
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %i.ho ; 2 uses
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.afz, i64 %i.ho ; 2 uses
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.aga, i64 %i.ho ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 32
  %i.ago = load float, ptr %i.agj, align 4, !tbaa !53
  store float %i.ago, ptr %i.agn, align 4, !tbaa !53
  %i.agp = load float, ptr %i.agk, align 4, !tbaa !53
  %i.agq = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 36
  store float %i.agp, ptr %i.agq, align 4, !tbaa !53
  %i.agr = load float, ptr %i.agl, align 4, !tbaa !53
  %i.ags = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 40
  store float %i.agr, ptr %i.ags, align 4, !tbaa !53
  %i.agt = load float, ptr %i.agm, align 4, !tbaa !53
  %i.agu = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 44
  store float %i.agt, ptr %i.agu, align 4, !tbaa !53
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %i.ho ; 2 uses
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.agk, i64 %i.ho ; 2 uses
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %i.ho ; 2 uses
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.agm, i64 %i.ho ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 48
  %i.aha = load float, ptr %i.agv, align 4, !tbaa !53
  store float %i.aha, ptr %i.agz, align 4, !tbaa !53
  %i.ahb = load float, ptr %i.agw, align 4, !tbaa !53
  %i.ahc = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 52
  store float %i.ahb, ptr %i.ahc, align 4, !tbaa !53
  %i.ahd = load float, ptr %i.agx, align 4, !tbaa !53
  %i.ahe = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 56
  store float %i.ahd, ptr %i.ahe, align 4, !tbaa !53
  %i.ahf = load float, ptr %i.agy, align 4, !tbaa !53
  %i.ahg = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 60
  store float %i.ahf, ptr %i.ahg, align 4, !tbaa !53
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %i.ho ; 2 uses
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.ho ; 2 uses
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.ho ; 2 uses
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.ho ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 64
  %i.ahm = load float, ptr %i.ahh, align 4, !tbaa !53
  store float %i.ahm, ptr %i.ahl, align 4, !tbaa !53
  %i.ahn = load float, ptr %i.ahi, align 4, !tbaa !53
  %i.aho = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 68
  store float %i.ahn, ptr %i.aho, align 4, !tbaa !53
  %i.ahp = load float, ptr %i.ahj, align 4, !tbaa !53
  %i.ahq = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 72
  store float %i.ahp, ptr %i.ahq, align 4, !tbaa !53
  %i.ahr = load float, ptr %i.ahk, align 4, !tbaa !53
  %i.ahs = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 76
  store float %i.ahr, ptr %i.ahs, align 4, !tbaa !53
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %i.ho ; 2 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %i.ho ; 2 uses
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %i.ho ; 2 uses
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.ahk, i64 %i.ho ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 80
  %i.ahy = load float, ptr %i.aht, align 4, !tbaa !53
  store float %i.ahy, ptr %i.ahx, align 4, !tbaa !53
  %i.ahz = load float, ptr %i.ahu, align 4, !tbaa !53
  %i.aia = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 84
  store float %i.ahz, ptr %i.aia, align 4, !tbaa !53
  %i.aib = load float, ptr %i.ahv, align 4, !tbaa !53
  %i.aic = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 88
  store float %i.aib, ptr %i.aic, align 4, !tbaa !53
  %i.aid = load float, ptr %i.ahw, align 4, !tbaa !53
  %i.aie = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 92
  store float %i.aid, ptr %i.aie, align 4, !tbaa !53
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.ho ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %i.ho ; 2 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.ahv, i64 %i.ho ; 2 uses
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %i.ho ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 96
  %i.aik = load float, ptr %i.aif, align 4, !tbaa !53
  store float %i.aik, ptr %i.aij, align 4, !tbaa !53
  %i.ail = load float, ptr %i.aig, align 4, !tbaa !53
  %i.aim = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 100
  store float %i.ail, ptr %i.aim, align 4, !tbaa !53
  %i.ain = load float, ptr %i.aih, align 4, !tbaa !53
  %i.aio = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 104
  store float %i.ain, ptr %i.aio, align 4, !tbaa !53
  %i.aip = load float, ptr %i.aii, align 4, !tbaa !53
  %i.aiq = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 108
  store float %i.aip, ptr %i.aiq, align 4, !tbaa !53
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %i.ho
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %i.ho
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.aih, i64 %i.ho
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.ho
  %i.aiv = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 112
  %i.aiw = load float, ptr %i.air, align 4, !tbaa !53
  store float %i.aiw, ptr %i.aiv, align 4, !tbaa !53
  %i.aix = load float, ptr %i.ais, align 4, !tbaa !53
end_hunk_0
begin_hunk_1_@_ZN4ncnn21Convolution1D_x86_avx15create_pipelineERKNS_6OptionE:bb.a
  store float %i.aoo, ptr %i.aop, align 4, !tbaa !53
  %i.aoq = load float, ptr %i.aoj, align 4, !tbaa !53
  %i.aor = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 28
  store float %i.aoq, ptr %i.aor, align 4, !tbaa !53
  %i.aos = getelementptr inbounds nuw i8, ptr %.79321309.us.i, i64 32 ; 2 uses
  %indvars.iv.next1724.i = add nuw nsw i64 %indvars.iv1723.i, 1 ; 2 uses
  %exitcond1727.not.i = icmp eq i64 %indvars.iv.next1724.i, %wide.trip.count1706.i
  br i1 %exitcond1727.not.i, label %._crit_edge1311.us.i, label %scalar.ph433, !llvm.loop !115

._crit_edge1311.us.i:                             ; preds = %scalar.ph433, %middle.block450
  %.lcssa255 = phi ptr [ %i.ane, %middle.block450 ], [ %i.aos, %scalar.ph433 ] ; 2 uses
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %.29471313.us.i, i64 %i.hu ; 2 uses
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %.29441314.us.i, i64 %i.hu ; 2 uses
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %.29411315.us.i, i64 %i.hu ; 2 uses
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %.29381316.us.i, i64 %i.hu ; 2 uses
  %i.aox = add nuw nsw i32 %.29231318.us.i, 2     ; 3 uses
  %i.aoy = or disjoint i32 %i.aox, 1
  %i.aoz = icmp slt i32 %i.aoy, %i.n
  br i1 %i.aoz, label %.preheader1097.us.i, label %.preheader1100.i, !llvm.loop !116

.preheader1100.i:                                 ; preds = %._crit_edge1311.us.i, %.preheader1101.i
  %.2947.lcssa.i = phi ptr [ %.1946.lcssa.i, %.preheader1101.i ], [ %i.aot, %._crit_edge1311.us.i ] ; 6 uses
  %.2944.lcssa.i = phi ptr [ %.1943.lcssa.i, %.preheader1101.i ], [ %i.aou, %._crit_edge1311.us.i ] ; 6 uses
  %.2941.lcssa.i = phi ptr [ %.1940.lcssa.i, %.preheader1101.i ], [ %i.aov, %._crit_edge1311.us.i ] ; 6 uses
  %.2938.lcssa.i = phi ptr [ %.1937.lcssa.i, %.preheader1101.i ], [ %i.aow, %._crit_edge1311.us.i ] ; 6 uses
  %.6931.lcssa.i = phi ptr [ %.3928.lcssa.i, %.preheader1101.i ], [ %.lcssa255, %._crit_edge1311.us.i ]
  %.2923.lcssa.i = phi i32 [ %.1922.lcssa.i, %.preheader1101.i ], [ %i.aox, %._crit_edge1311.us.i ] ; 2 uses
  %i.apa = icmp sge i32 %.2923.lcssa.i, %i.n
  %brmerge1467.i = or i1 %i.hv, %i.apa
  br i1 %brmerge1467.i, label %._crit_edge1337.split.i, label %.preheader1096.i.preheader

.preheader1096.i.preheader:                       ; preds = %.preheader1100.i
  %scevgep337 = getelementptr i8, ptr %.2938.lcssa.i, i64 %i.ir
  %scevgep338 = getelementptr i8, ptr %.2941.lcssa.i, i64 %i.ir
  %scevgep339 = getelementptr i8, ptr %.2944.lcssa.i, i64 %i.ir
  %scevgep340 = getelementptr i8, ptr %.2947.lcssa.i, i64 %i.ir
  br label %.preheader1096.i

.preheader1096.i:                                 ; preds = %.preheader1096.i.preheader, %._crit_edge1333.i
  %.39241336.i = phi i32 [ %i.apx, %._crit_edge1333.i ], [ %.2923.lcssa.i, %.preheader1096.i.preheader ]
  %.99341335.i = phi ptr [ %.lcssa261, %._crit_edge1333.i ], [ %.6931.lcssa.i, %.preheader1096.i.preheader ] ; 9 uses
  br i1 %min.iters.check357, label %scalar.ph356.preheader, label %vector.memcheck335

vector.memcheck335:                               ; preds = %.preheader1096.i
  %scevgep336 = getelementptr i8, ptr %.99341335.i, i64 %i.iq ; 4 uses
  %bound0341 = icmp ult ptr %.99341335.i, %scevgep337
  %bound1342 = icmp ult ptr %.2938.lcssa.i, %scevgep336
  %found.conflict343 = and i1 %bound0341, %bound1342
  %bound0344 = icmp ult ptr %.99341335.i, %scevgep338
  %bound1345 = icmp ult ptr %.2941.lcssa.i, %scevgep336
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %found.conflict343, %found.conflict346
  %bound0348 = icmp ult ptr %.99341335.i, %scevgep339
  %bound1349 = icmp ult ptr %.2944.lcssa.i, %scevgep336
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx347, %found.conflict350
  %bound0352 = icmp ult ptr %.99341335.i, %scevgep340
  %bound1353 = icmp ult ptr %.2947.lcssa.i, %scevgep336
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx355 = or i1 %conflict.rdx351, %found.conflict354
  br i1 %conflict.rdx355, label %scalar.ph356.preheader, label %vector.ph358

vector.ph358:                                     ; preds = %vector.memcheck335
  %i.apb = getelementptr i8, ptr %.99341335.i, i64 %i.ix ; 2 uses
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next368, %vector.body360 ] ; 6 uses
  %i.apc = shl i64 %index361, 4
  %next.gep362 = getelementptr i8, ptr %.99341335.i, i64 %i.apc
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %index361
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %index361
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %index361
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %index361
  %wide.load363 = load <8 x float>, ptr %i.apd, align 4, !tbaa !53, !alias.scope !117
  %wide.load364 = load <8 x float>, ptr %i.ape, align 4, !tbaa !53, !alias.scope !120
  %wide.load365 = load <8 x float>, ptr %i.apf, align 4, !tbaa !53, !alias.scope !122
  %wide.load366 = load <8 x float>, ptr %i.apg, align 4, !tbaa !53, !alias.scope !124
  %i.aph = shufflevector <8 x float> %wide.load363, <8 x float> %wide.load364, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.api = shufflevector <8 x float> %wide.load365, <8 x float> %wide.load366, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec367 = shufflevector <16 x float> %i.aph, <16 x float> %i.api, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec367, ptr %next.gep362, align 4, !tbaa !53, !alias.scope !126, !noalias !128
  %index.next368 = add nuw i64 %index361, 8       ; 2 uses
  %i.apj = icmp eq i64 %index.next368, %n.vec359
  br i1 %i.apj, label %middle.block369, label %vector.body360, !llvm.loop !129

middle.block369:                                  ; preds = %vector.body360
  br i1 %cmp.n370, label %._crit_edge1333.i, label %scalar.ph356.preheader

scalar.ph356.preheader:                           ; preds = %vector.memcheck335, %.preheader1096.i, %middle.block369
  %indvars.iv1728.i.ph = phi i64 [ 0, %vector.memcheck335 ], [ 0, %.preheader1096.i ], [ %n.vec359, %middle.block369 ] ; 7 uses
  %.109351331.i.ph = phi ptr [ %.99341335.i, %vector.memcheck335 ], [ %.99341335.i, %.preheader1096.i ], [ %i.apb, %middle.block369 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph356.prol.loopexit, label %scalar.ph356.prol

scalar.ph356.prol:                                ; preds = %scalar.ph356.preheader
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv1728.i.ph
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv1728.i.ph
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv1728.i.ph
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv1728.i.ph
  %i.apo = load float, ptr %i.apk, align 4, !tbaa !53
  store float %i.apo, ptr %.109351331.i.ph, align 4, !tbaa !53
  %i.app = load float, ptr %i.apl, align 4, !tbaa !53
  %i.apq = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 4
  store float %i.app, ptr %i.apq, align 4, !tbaa !53
  %i.apr = load float, ptr %i.apm, align 4, !tbaa !53
  %i.aps = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 8
  store float %i.apr, ptr %i.aps, align 4, !tbaa !53
  %i.apt = load float, ptr %i.apn, align 4, !tbaa !53
  %i.apu = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 12
  store float %i.apt, ptr %i.apu, align 4, !tbaa !53
  %i.apv = getelementptr inbounds nuw i8, ptr %.109351331.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1729.i.prol = or disjoint i64 %indvars.iv1728.i.ph, 1
  br label %scalar.ph356.prol.loopexit

scalar.ph356.prol.loopexit:                       ; preds = %scalar.ph356.prol, %scalar.ph356.preheader
  %.lcssa856.unr = phi ptr [ poison, %scalar.ph356.preheader ], [ %i.apv, %scalar.ph356.prol ]
  %indvars.iv1728.i.unr = phi i64 [ %indvars.iv1728.i.ph, %scalar.ph356.preheader ], [ %indvars.iv.next1729.i.prol, %scalar.ph356.prol ]
  %.109351331.i.unr = phi ptr [ %.109351331.i.ph, %scalar.ph356.preheader ], [ %i.apv, %scalar.ph356.prol ]
  %i.apw = icmp eq i64 %indvars.iv1728.i.ph, %i.iy
  br i1 %i.apw, label %._crit_edge1333.i, label %scalar.ph356

._crit_edge1333.i:                                ; preds = %scalar.ph356.prol.loopexit, %scalar.ph356, %middle.block369
  %.lcssa261 = phi ptr [ %i.apb, %middle.block369 ], [ %.lcssa856.unr, %scalar.ph356.prol.loopexit ], [ %i.aqv, %scalar.ph356 ]
  %i.apx = add nuw nsw i32 %.39241336.i, 1        ; 2 uses
  %exitcond1733.not.i = icmp eq i32 %i.apx, %i.n
  br i1 %exitcond1733.not.i, label %._crit_edge1337.split.i, label %.preheader1096.i, !llvm.loop !130

scalar.ph356:                                     ; preds = %scalar.ph356.prol.loopexit, %scalar.ph356
  %indvars.iv1728.i = phi i64 [ %indvars.iv.next1729.i.1, %scalar.ph356 ], [ %indvars.iv1728.i.unr, %scalar.ph356.prol.loopexit ] ; 6 uses
  %.109351331.i = phi ptr [ %i.aqv, %scalar.ph356 ], [ %.109351331.i.unr, %scalar.ph356.prol.loopexit ] ; 9 uses
  %i.apy = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv1728.i
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv1728.i
  %i.aqa = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv1728.i
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv1728.i
  %i.aqc = load float, ptr %i.apy, align 4, !tbaa !53
  store float %i.aqc, ptr %.109351331.i, align 4, !tbaa !53
  %i.aqd = load float, ptr %i.apz, align 4, !tbaa !53
  %i.aqe = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 4
  store float %i.aqd, ptr %i.aqe, align 4, !tbaa !53
  %i.aqf = load float, ptr %i.aqa, align 4, !tbaa !53
  %i.aqg = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 8
  store float %i.aqf, ptr %i.aqg, align 4, !tbaa !53
  %i.aqh = load float, ptr %i.aqb, align 4, !tbaa !53
  %i.aqi = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 12
  store float %i.aqh, ptr %i.aqi, align 4, !tbaa !53
  %i.aqj = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 16
  %indvars.iv.next1729.i = add nuw nsw i64 %indvars.iv1728.i, 1 ; 4 uses
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %.2947.lcssa.i, i64 %indvars.iv.next1729.i
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %.2944.lcssa.i, i64 %indvars.iv.next1729.i
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr %.2941.lcssa.i, i64 %indvars.iv.next1729.i
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %.2938.lcssa.i, i64 %indvars.iv.next1729.i
  %i.aqo = load float, ptr %i.aqk, align 4, !tbaa !53
  store float %i.aqo, ptr %i.aqj, align 4, !tbaa !53
  %i.aqp = load float, ptr %i.aql, align 4, !tbaa !53
  %i.aqq = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 20
  store float %i.aqp, ptr %i.aqq, align 4, !tbaa !53
  %i.aqr = load float, ptr %i.aqm, align 4, !tbaa !53
  %i.aqs = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 24
  store float %i.aqr, ptr %i.aqs, align 4, !tbaa !53
  %i.aqt = load float, ptr %i.aqn, align 4, !tbaa !53
  %i.aqu = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 28
  store float %i.aqt, ptr %i.aqu, align 4, !tbaa !53
  %i.aqv = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 32 ; 2 uses
  %indvars.iv.next1729.i.1 = add nuw nsw i64 %indvars.iv1728.i, 2 ; 2 uses
  %exitcond1732.not.i.1 = icmp eq i64 %indvars.iv.next1729.i.1, %wide.trip.count1706.i
  br i1 %exitcond1732.not.i.1, label %._crit_edge1333.i, label %scalar.ph356, !llvm.loop !131

._crit_edge1337.split.i:                          ; preds = %._crit_edge1333.i, %.preheader1100.i, %.preheader1097.lr.ph.i
  %indvars.iv.next1737.i = add nuw nsw i64 %indvars.iv1736.i, 4 ; 3 uses
  %i.aqw = icmp slt i64 %indvars.iv.next1737.i, %invariant.op.i
  %indvars.iv.next1688.i = add i32 %indvars.iv1687.i, %i.ic
  %indvars.iv.next1692.i = add i32 %indvars.iv1691.i, %i.ic
  %indvars.iv.next1696.i = add i32 %indvars.iv1695.i, %i.ic
  %indvars.iv.next1700.i = add i32 %indvars.iv1699.i, %i.ic
  %indvars.iv.next1735.i = add i32 %indvars.iv1734.i, 4
  br i1 %i.aqw, label %_ZN4ncnn3MatD2Ev.exit1004.i, label %.preheader1095.loopexit.i, !llvm.loop !132

.preheader1087.loopexit.i:                        ; preds = %._crit_edge1400.split.i
  %i.aqx = trunc nsw i64 %indvars.iv.next1776.i to i32
  br label %.preheader1087.i

.preheader1087.i:                                 ; preds = %.preheader1087.loopexit.i, %.preheader1095.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1095.i ], [ %i.aqx, %.preheader1087.loopexit.i ] ; 4 uses
  %i.aqy = icmp slt i32 %.2.lcssa.i, %i.m
  br i1 %i.aqy, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1087.i
  %i.aqz = load ptr, ptr %i.o, align 8, !tbaa !18 ; 17 uses
  %i.ara = mul i32 %i.n, %i.j                     ; 3 uses
  %i.arb = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !133
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ard = load i64, ptr %i.arc, align 8, !tbaa !20, !noalias !133
  %i.are = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.arf = load i64, ptr %i.are, align 8, !tbaa !49, !noalias !133
  %factor.op.mul1462.i = mul i64 %i.arf, %i.ard
  %i.arg = icmp sgt i32 %i.n, 7
  %i.arh = icmp sgt i32 %i.j, 0                   ; 3 uses
  %i.ari = sext i32 %i.j to i64                   ; 43 uses
  %i.arj = shl i32 %i.j, 3                        ; 2 uses
  %i.ark = sext i32 %i.arj to i64                 ; 3 uses
  %i.arl = shl i32 %i.j, 2
  %i.arm = sext i32 %i.arl to i64                 ; 3 uses
  %i.arn = shl i32 %i.j, 1
  %i.aro = sext i32 %i.arn to i64                 ; 2 uses
  %i.arp = icmp slt i32 %i.j, 1
  %i.arq = add i32 %i.n, -8                       ; 3 uses
  %i.arr = lshr i32 %i.arq, 1
  %i.ars = and i32 %i.arr, 2147483644
  %narrow1839.i = add nuw i32 %i.ars, 4
  %i.art = zext i32 %narrow1839.i to i64
  %i.aru = mul nsw i64 %i.art, %i.ark
  %scevgep1778.i = getelementptr i8, ptr %i.aqz, i64 %i.aru
  %i.arv = mul i32 %i.ara, %.2.lcssa.i
  %i.arw = and i32 %i.arq, -8
  %i.arx = add i32 %i.arw, 8                      ; 4 uses
  %i.ary = add i32 %i.n, -4
  %i.arz = sext i32 %.2.lcssa.i to i64
  %wide.trip.count1811.i = sext i32 %i.m to i64
  %i.asa = or disjoint i32 %i.arx, 3
  %i.asb = icmp slt i32 %i.asa, %i.n
  %wide.trip.count1786.i = zext i32 %i.j to i64   ; 26 uses
  %i.asc = shl nuw nsw i64 %wide.trip.count1786.i, 3
  %i.asd = shl nuw nsw i64 %i.ari, 2              ; 2 uses
  %i.ase = shl nuw nsw i64 %wide.trip.count1786.i, 2 ; 6 uses
  %i.asf = shl nsw i64 %i.aro, 2
  %i.asg = shl nuw nsw i64 %wide.trip.count1786.i, 4
  %i.ash = mul nsw i64 %i.ari, 12                 ; 2 uses
  %i.asi = shl nsw i64 %i.arm, 2
  %i.asj = add i32 %i.n, -4
  %i.ask = shl nsw i64 %i.ari, 3                  ; 2 uses
  %i.asl = shl nuw nsw i64 %i.ari, 2              ; 2 uses
  %i.asm = shl nuw nsw i64 %wide.trip.count1786.i, 5
  %i.asn = mul nsw i64 %i.ari, 28                 ; 2 uses
  %scevgep725 = getelementptr i8, ptr %i.aqz, i64 %i.asn
  %i.aso = mul i32 %.2.lcssa.i, %i.j
  %i.asp = mul i32 %i.aso, %i.n
  %i.asq = mul i32 %i.j, %i.n
  %i.asr = lshr i32 %i.arq, 3
  %i.ass = zext nneg i32 %i.asr to i64
  %i.ast = mul nsw i64 %i.ass, %i.ark
  %i.asu = shl nsw i64 %i.ast, 2                  ; 8 uses
  %i.asv = shl nuw nsw i64 %wide.trip.count1786.i, 2 ; 8 uses
  %i.asw = getelementptr i8, ptr %i.aqz, i64 %i.asu
  %i.asx = getelementptr i8, ptr %i.asw, i64 %i.asn
  %scevgep727 = getelementptr i8, ptr %i.asx, i64 %i.asv
  %i.asy = mul nsw i64 %i.ari, 24                 ; 2 uses
  %scevgep729 = getelementptr i8, ptr %i.aqz, i64 %i.asy
  %i.asz = getelementptr i8, ptr %i.aqz, i64 %i.asu
  %i.ata = getelementptr i8, ptr %i.asz, i64 %i.asy
  %scevgep731 = getelementptr i8, ptr %i.ata, i64 %i.asv
  %i.atb = mul nsw i64 %i.ari, 20                 ; 2 uses
  %scevgep733 = getelementptr i8, ptr %i.aqz, i64 %i.atb
  %i.atc = getelementptr i8, ptr %i.aqz, i64 %i.asu
  %i.atd = getelementptr i8, ptr %i.atc, i64 %i.atb
  %scevgep735 = getelementptr i8, ptr %i.atd, i64 %i.asv
  %i.ate = shl nsw i64 %i.ari, 4                  ; 2 uses
  %scevgep737 = getelementptr i8, ptr %i.aqz, i64 %i.ate
  %i.atf = getelementptr i8, ptr %i.aqz, i64 %i.asu
  %i.atg = getelementptr i8, ptr %i.atf, i64 %i.ate
  %scevgep739 = getelementptr i8, ptr %i.atg, i64 %i.asv
  %i.ath = mul nsw i64 %i.ari, 12                 ; 2 uses
  %scevgep741 = getelementptr i8, ptr %i.aqz, i64 %i.ath
  %i.ati = getelementptr i8, ptr %i.aqz, i64 %i.asu
  %i.atj = getelementptr i8, ptr %i.ati, i64 %i.ath
  %scevgep743 = getelementptr i8, ptr %i.atj, i64 %i.asv
  %i.atk = shl nsw i64 %i.ari, 3                  ; 2 uses
  %scevgep745 = getelementptr i8, ptr %i.aqz, i64 %i.atk
  %i.atl = getelementptr i8, ptr %i.aqz, i64 %i.asu
  %i.atm = getelementptr i8, ptr %i.atl, i64 %i.atk
  %scevgep747 = getelementptr i8, ptr %i.atm, i64 %i.asv
  %i.atn = shl nuw nsw i64 %i.ari, 2              ; 2 uses
  %scevgep749 = getelementptr i8, ptr %i.aqz, i64 %i.atn
  %i.ato = getelementptr i8, ptr %i.aqz, i64 %i.asu
  %i.atp = getelementptr i8, ptr %i.ato, i64 %i.atn
  %scevgep751 = getelementptr i8, ptr %i.atp, i64 %i.asv
  %i.atq = getelementptr i8, ptr %i.aqz, i64 %i.asu
  %scevgep753 = getelementptr i8, ptr %i.atq, i64 %i.asv
  %min.iters.check795 = icmp ult i32 %i.j, 16
  %stride.check762 = icmp slt i32 %i.arj, 0
  %n.vec797 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.atr = shl nuw nsw i64 %n.vec797, 5
  %cmp.n812 = icmp eq i64 %n.vec797, %wide.trip.count1786.i
  %min.iters.check707 = icmp ult i32 %i.j, 8
  %n.vec709 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.ats = shl nuw nsw i64 %n.vec709, 4
  %cmp.n720 = icmp eq i64 %n.vec709, %wide.trip.count1786.i
  %xtraiter891 = and i64 %wide.trip.count1786.i, 1
  %lcmp.mod892.not = icmp eq i64 %xtraiter891, 0
  %i.att = add nsw i64 %wide.trip.count1786.i, -1
  %min.iters.check660 = icmp ult i32 %i.j, 6
  %n.vec662 = and i64 %wide.trip.count1786.i, 2147483644 ; 4 uses
  %i.atu = shl nuw nsw i64 %n.vec662, 3
  %cmp.n675 = icmp eq i64 %n.vec662, %wide.trip.count1786.i
  %xtraiter894 = and i64 %wide.trip.count1786.i, 3 ; 2 uses
  %lcmp.mod895.not = icmp eq i64 %xtraiter894, 0
  %min.iters.check621 = icmp ult i32 %i.j, 8
  %min.iters.check622 = icmp ult i32 %i.j, 32
  %i.atv = and i64 %wide.trip.count1786.i, 24
  %n.vec624 = and i64 %wide.trip.count1786.i, 2147483616 ; 5 uses
  %i.atw = shl nuw nsw i64 %n.vec624, 2
  %cmp.n634 = icmp eq i64 %n.vec624, %wide.trip.count1786.i
  %min.epilog.iters.check = icmp eq i64 %i.atv, 0
  %n.vec636 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.atx = shl nuw nsw i64 %n.vec636, 2
  %cmp.n641 = icmp eq i64 %n.vec636, %wide.trip.count1786.i
  %xtraiter897 = and i64 %wide.trip.count1786.i, 7 ; 2 uses
  %lcmp.mod898.not = icmp eq i64 %xtraiter897, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1003.i:                      ; preds = %._crit_edge1400.split.i, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i
  %indvars.iv1775.i = phi i64 [ %i.adl, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1776.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1746.i = phi i32 [ %i.adh, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1747.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1742.i = phi i32 [ %i.adf, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1743.i, %._crit_edge1400.split.i ] ; 2 uses
  %i.aty = phi i32 [ %i.acf, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %i.bea, %._crit_edge1400.split.i ]
  %i.atz = sext i32 %indvars.iv1742.i to i64
  %i.aua = shl nsw i64 %i.atz, 2
  %scevgep1744.i = getelementptr i8, ptr %scevgep1741.i, i64 %i.aua ; 2 uses
  %i.aub = sext i32 %indvars.iv1746.i to i64
  %i.auc = shl nsw i64 %i.aub, 2
  %scevgep1748.i = getelementptr i8, ptr %scevgep1741.i, i64 %i.auc ; 2 uses
  %i.aud = trunc i64 %indvars.iv1775.i to i32     ; 4 uses
  %i.aue = mul i32 %i.aci, %i.aud
  %i.auf = sext i32 %i.aue to i64
  %i.aug = getelementptr inbounds [4 x i8], ptr %i.ach, i64 %i.auf ; 2 uses
  %i.auh = mul i32 %i.aty, %i.aci
  %i.aui = sext i32 %i.auh to i64
  %i.auj = getelementptr inbounds [4 x i8], ptr %i.ach, i64 %i.aui ; 2 uses
  %i.auk = lshr i32 %i.aud, 3
  %i.aul = lshr i32 %i.aud, 2
  %i.aum = and i32 %i.aul, 1
  %i.aun = add nuw nsw i32 %i.aum, %i.auk
  %i.auo = lshr i32 %i.aud, 1
  %i.aup = and i32 %i.auo, 1
  %i.auq = add nuw nsw i32 %i.aun, %i.aup
  %i.aur = zext nneg i32 %i.auq to i64
  %.reass1404.i = mul i64 %factor.op.mul1403.i, %i.aur
  %i.aus = getelementptr inbounds nuw i8, ptr %i.acj, i64 %.reass1404.i ; 4 uses
  br i1 %i.aco, label %.preheader1091.lr.ph.i, label %.preheader1094.i

.preheader1091.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1003.i
  br i1 %i.acp, label %.preheader1091.us.i, label %.preheader1094.thread.i

.preheader1091.us.i:                              ; preds = %.preheader1091.lr.ph.i, %._crit_edge1344.us.i
  %.08621349.us.i = phi i32 [ %i.awr, %._crit_edge1344.us.i ], [ 0, %.preheader1091.lr.ph.i ]
  %.08661348.us.i = phi ptr [ %i.awo, %._crit_edge1344.us.i ], [ %i.aus, %.preheader1091.lr.ph.i ]
  %.08751347.us.i = phi ptr [ %i.awq, %._crit_edge1344.us.i ], [ %i.auj, %.preheader1091.lr.ph.i ] ; 2 uses
  %.08781346.us.i = phi ptr [ %i.awp, %._crit_edge1344.us.i ], [ %i.aug, %.preheader1091.lr.ph.i ] ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.preheader1091.us.i
  %indvars.iv1749.i = phi i64 [ 0, %.preheader1091.us.i ], [ %indvars.iv.next1750.i, %bb.an ] ; 3 uses
  %.18671342.us.i = phi ptr [ %.08661348.us.i, %.preheader1091.us.i ], [ %i.awo, %bb.an ] ; 17 uses
  %i.aut = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %indvars.iv1749.i ; 8 uses
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %indvars.iv1749.i ; 8 uses
  %i.auv = load float, ptr %i.aut, align 4, !tbaa !53
  store float %i.auv, ptr %.18671342.us.i, align 4, !tbaa !53
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %i.acq
  %i.aux = load float, ptr %i.auw, align 4, !tbaa !53
  %i.auy = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 4
  store float %i.aux, ptr %i.auy, align 4, !tbaa !53
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %2
  %i.ava = load float, ptr %i.auz, align 4, !tbaa !53
  %i.avb = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 8
  store float %i.ava, ptr %i.avb, align 4, !tbaa !53
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %3
  %i.avd = load float, ptr %i.avc, align 4, !tbaa !53
  %i.ave = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 12
  store float %i.avd, ptr %i.ave, align 4, !tbaa !53
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %4
  %i.avg = load float, ptr %i.avf, align 4, !tbaa !53
  %i.avh = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 16
  store float %i.avg, ptr %i.avh, align 4, !tbaa !53
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %5
  %i.avj = load float, ptr %i.avi, align 4, !tbaa !53
  %i.avk = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 20
  store float %i.avj, ptr %i.avk, align 4, !tbaa !53
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %6
  %i.avm = load float, ptr %i.avl, align 4, !tbaa !53
  %i.avn = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 24
  store float %i.avm, ptr %i.avn, align 4, !tbaa !53
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %7
  %i.avp = load float, ptr %i.avo, align 4, !tbaa !53
  %i.avq = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 28
  store float %i.avp, ptr %i.avq, align 4, !tbaa !53
  %i.avr = load float, ptr %i.auu, align 4, !tbaa !53
  %i.avs = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 32
  store float %i.avr, ptr %i.avs, align 4, !tbaa !53
  %i.avt = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %i.acq
  %i.avu = load float, ptr %i.avt, align 4, !tbaa !53
  %i.avv = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 36
  store float %i.avu, ptr %i.avv, align 4, !tbaa !53
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %2
  %i.avx = load float, ptr %i.avw, align 4, !tbaa !53
  %i.avy = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 40
  store float %i.avx, ptr %i.avy, align 4, !tbaa !53
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %3
  %i.awa = load float, ptr %i.avz, align 4, !tbaa !53
  %i.awb = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 44
  store float %i.awa, ptr %i.awb, align 4, !tbaa !53
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %4
  %i.awd = load float, ptr %i.awc, align 4, !tbaa !53
  %i.awe = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 48
  store float %i.awd, ptr %i.awe, align 4, !tbaa !53
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %5
  %i.awg = load float, ptr %i.awf, align 4, !tbaa !53
  %i.awh = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 52
  store float %i.awg, ptr %i.awh, align 4, !tbaa !53
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %6
  %i.awj = load float, ptr %i.awi, align 4, !tbaa !53
  %i.awk = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 56
  store float %i.awj, ptr %i.awk, align 4, !tbaa !53
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %7
  %i.awm = load float, ptr %i.awl, align 4, !tbaa !53
  %i.awn = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 60
  store float %i.awm, ptr %i.awn, align 4, !tbaa !53
  %i.awo = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 64 ; 3 uses
  %indvars.iv.next1750.i = add nuw nsw i64 %indvars.iv1749.i, 1 ; 2 uses
  %exitcond1753.not.i = icmp eq i64 %indvars.iv.next1750.i, %wide.trip.count1752.i
  br i1 %exitcond1753.not.i, label %._crit_edge1344.us.i, label %bb.an, !llvm.loop !136

._crit_edge1344.us.i:                             ; preds = %bb.an
  %i.awp = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %i.acy ; 2 uses
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %i.acy ; 2 uses
  %i.awr = add nuw nsw i32 %.08621349.us.i, 8     ; 2 uses
  %i.aws = or disjoint i32 %i.awr, 7
  %i.awt = icmp slt i32 %i.aws, %i.n
  br i1 %i.awt, label %.preheader1091.us.i, label %.preheader1094.i, !llvm.loop !137

.preheader1094.i:                                 ; preds = %._crit_edge1344.us.i, %_ZN4ncnn3MatD2Ev.exit1003.i
  %.0878.lcssa.i = phi ptr [ %i.aug, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.awp, %._crit_edge1344.us.i ] ; 11 uses
  %.0875.lcssa.i = phi ptr [ %i.auj, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.awq, %._crit_edge1344.us.i ] ; 11 uses
  %.0866.lcssa.i = phi ptr [ %i.aus, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.awo, %._crit_edge1344.us.i ] ; 3 uses
  %.0862.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.adj, %._crit_edge1344.us.i ] ; 5 uses
  %i.awu = or disjoint i32 %.0862.lcssa.i, 3
  %i.awv = icmp slt i32 %i.awu, %i.n
  br i1 %i.awv, label %.preheader1090.lr.ph.i, label %.preheader1093.i

.preheader1094.thread.i:                          ; preds = %.preheader1091.lr.ph.i
  br i1 %i.ado, label %.preheader1090.preheader.i, label %.preheader1093.i

.preheader1090.lr.ph.i:                           ; preds = %.preheader1094.i
  br i1 %i.acp, label %.preheader1090.us.i.preheader, label %.preheader1090.preheader.i

.preheader1090.us.i.preheader:                    ; preds = %.preheader1090.lr.ph.i
  %scevgep535 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.adw
  %scevgep536 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.ady
  %i.aww = sub i32 %i.aea, %.0862.lcssa.i
  %i.awx = lshr i32 %i.aww, 2
  %i.awy = zext nneg i32 %i.awx to i64
  %i.awz = mul nsw i64 %i.adz, %i.awy             ; 8 uses
  %scevgep537 = getelementptr i8, ptr %scevgep536, i64 %i.awz
  %scevgep538 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aeb
  %scevgep539 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aec
  %scevgep540 = getelementptr i8, ptr %scevgep539, i64 %i.awz
  %scevgep541 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aed
  %scevgep542 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.aee
  %scevgep543 = getelementptr i8, ptr %scevgep542, i64 %i.awz
  %scevgep544 = getelementptr i8, ptr %.0875.lcssa.i, i64 %i.adx
  %scevgep545 = getelementptr i8, ptr %scevgep544, i64 %i.awz
  %scevgep546 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.adw
  %scevgep547 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.ady
  %scevgep548 = getelementptr i8, ptr %scevgep547, i64 %i.awz
  %scevgep549 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aeb
  %scevgep550 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aec
  %scevgep551 = getelementptr i8, ptr %scevgep550, i64 %i.awz
  %scevgep552 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aed
  %scevgep553 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.aee
  %scevgep554 = getelementptr i8, ptr %scevgep553, i64 %i.awz
  %scevgep555 = getelementptr i8, ptr %.0878.lcssa.i, i64 %i.adx
  %scevgep556 = getelementptr i8, ptr %scevgep555, i64 %i.awz
  %i.axa = insertelement <8 x ptr> poison, ptr %scevgep540, i64 0
  %i.axb = insertelement <8 x ptr> %i.axa, ptr %scevgep537, i64 1
  %i.axc = insertelement <8 x ptr> %i.axb, ptr %scevgep543, i64 2
  %i.axd = insertelement <8 x ptr> %i.axc, ptr %scevgep545, i64 3
  %i.axe = insertelement <8 x ptr> %i.axd, ptr %scevgep548, i64 4
  %i.axf = insertelement <8 x ptr> %i.axe, ptr %scevgep551, i64 5
  %i.axg = insertelement <8 x ptr> %i.axf, ptr %scevgep554, i64 6
  %i.axh = insertelement <8 x ptr> %i.axg, ptr %scevgep556, i64 7
  %i.axi = insertelement <8 x ptr> poison, ptr %scevgep538, i64 0
  %i.axj = insertelement <8 x ptr> %i.axi, ptr %scevgep535, i64 1
  %i.axk = insertelement <8 x ptr> %i.axj, ptr %scevgep541, i64 2
  %i.axl = insertelement <8 x ptr> %i.axk, ptr %.0875.lcssa.i, i64 3
  %i.axm = insertelement <8 x ptr> %i.axl, ptr %scevgep546, i64 4
  %i.axn = insertelement <8 x ptr> %i.axm, ptr %scevgep549, i64 5
  %i.axo = insertelement <8 x ptr> %i.axn, ptr %scevgep552, i64 6
  %i.axp = insertelement <8 x ptr> %i.axo, ptr %.0878.lcssa.i, i64 7
  br label %.preheader1090.us.i

.preheader1090.preheader.i:                       ; preds = %.preheader1090.lr.ph.i, %.preheader1094.thread.i
  %.0878.lcssa19261937.i = phi ptr [ %.0878.lcssa.i, %.preheader1090.lr.ph.i ], [ %scevgep1744.i, %.preheader1094.thread.i ]
  %.0875.lcssa19271936.i = phi ptr [ %.0875.lcssa.i, %.preheader1090.lr.ph.i ], [ %scevgep1748.i, %.preheader1094.thread.i ]
  %.0866.lcssa19281935.i = phi ptr [ %.0866.lcssa.i, %.preheader1090.lr.ph.i ], [ %i.aus, %.preheader1094.thread.i ]
  %.0862.lcssa19291934.i = phi i32 [ %.0862.lcssa.i, %.preheader1090.lr.ph.i ], [ %i.adj, %.preheader1094.thread.i ] ; 2 uses
  %i.axq = sub i32 %i.adk, %.0862.lcssa19291934.i
  %i.axr = and i32 %i.axq, -4                     ; 2 uses
  %i.axs = zext i32 %i.axr to i64
  %i.axt = add nuw nsw i64 %i.axs, 4
  %i.axu = mul nsw i64 %i.axt, %4                 ; 2 uses
  %scevgep1754.i = getelementptr i8, ptr %.0878.lcssa19261937.i, i64 %i.axu
  %scevgep1755.i = getelementptr i8, ptr %.0875.lcssa19271936.i, i64 %i.axu
  %i.axv = add i32 %.0862.lcssa19291934.i, 4
  %i.axw = add i32 %i.axv, %i.axr
  br label %.preheader1093.i

.preheader1090.us.i:                              ; preds = %.preheader1090.us.i.preheader, %._crit_edge1360.us.i
  %.18631365.us.i = phi i32 [ %i.azx, %._crit_edge1360.us.i ], [ %.0862.lcssa.i, %.preheader1090.us.i.preheader ]
  %.28681364.us.i = phi ptr [ %.lcssa235, %._crit_edge1360.us.i ], [ %.0866.lcssa.i, %.preheader1090.us.i.preheader ] ; 6 uses
  %.18761363.us.i = phi ptr [ %i.azw, %._crit_edge1360.us.i ], [ %.0875.lcssa.i, %.preheader1090.us.i.preheader ] ; 3 uses
  %.18791362.us.i = phi ptr [ %i.azv, %._crit_edge1360.us.i ], [ %.0878.lcssa.i, %.preheader1090.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check597, label %scalar.ph596.preheader, label %vector.memcheck533

vector.memcheck533:                               ; preds = %.preheader1090.us.i
  %scevgep534 = getelementptr i8, ptr %.28681364.us.i, i64 %i.adv
  %i.axx = insertelement <8 x ptr> poison, ptr %.28681364.us.i, i64 0
  %i.axy = shufflevector <8 x ptr> %i.axx, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.axz = icmp ult <8 x ptr> %i.axy, %i.axh
  %i.aya = insertelement <8 x ptr> poison, ptr %scevgep534, i64 0
  %i.ayb = shufflevector <8 x ptr> %i.aya, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ayc = icmp ult <8 x ptr> %i.axp, %i.ayb
  %i.ayd = and <8 x i1> %i.axz, %i.ayc
  %i.aye = bitcast <8 x i1> %i.ayd to i8
  %i.ayf = icmp ne i8 %i.aye, 0
  %op.rdx815 = or i1 %i.ayf, %stride.check564
  br i1 %op.rdx815, label %scalar.ph596.preheader, label %vector.ph598

vector.ph598:                                     ; preds = %vector.memcheck533
  %i.ayg = getelementptr i8, ptr %.28681364.us.i, i64 %i.aef ; 2 uses
  br label %vector.body600

vector.body600:                                   ; preds = %vector.body600, %vector.ph598
  %index601 = phi i64 [ 0, %vector.ph598 ], [ %index.next612, %vector.body600 ] ; 4 uses
  %i.ayh = shl i64 %index601, 5
  %next.gep602 = getelementptr i8, ptr %.28681364.us.i, i64 %i.ayh
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %index601 ; 4 uses
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %index601 ; 4 uses
  %wide.load603 = load <8 x float>, ptr %i.ayi, align 4, !tbaa !53, !alias.scope !138
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr %i.ayi, i64 %i.acq
  %wide.load604 = load <8 x float>, ptr %i.ayk, align 4, !tbaa !53, !alias.scope !141
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %i.ayi, i64 %2
  %wide.load605 = load <8 x float>, ptr %i.ayl, align 4, !tbaa !53, !alias.scope !143
  %i.aym = getelementptr inbounds nuw [4 x i8], ptr %i.ayi, i64 %3
  %wide.load606 = load <8 x float>, ptr %i.aym, align 4, !tbaa !53, !alias.scope !145
  %wide.load607 = load <8 x float>, ptr %i.ayj, align 4, !tbaa !53, !alias.scope !147
  %i.ayn = getelementptr inbounds nuw [4 x i8], ptr %i.ayj, i64 %i.acq
  %wide.load608 = load <8 x float>, ptr %i.ayn, align 4, !tbaa !53, !alias.scope !149
  %i.ayo = getelementptr inbounds nuw [4 x i8], ptr %i.ayj, i64 %2
  %wide.load609 = load <8 x float>, ptr %i.ayo, align 4, !tbaa !53, !alias.scope !151
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %i.ayj, i64 %3
  %wide.load610 = load <8 x float>, ptr %i.ayp, align 4, !tbaa !53, !alias.scope !153
  %i.ayq = shufflevector <8 x float> %wide.load603, <8 x float> %wide.load604, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ayr = shufflevector <8 x float> %wide.load605, <8 x float> %wide.load606, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ays = shufflevector <8 x float> %wide.load607, <8 x float> %wide.load608, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ayt = shufflevector <8 x float> %wide.load609, <8 x float> %wide.load610, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ayu = shufflevector <16 x float> %i.ayq, <16 x float> %i.ayr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ayv = shufflevector <16 x float> %i.ays, <16 x float> %i.ayt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec611 = shufflevector <32 x float> %i.ayu, <32 x float> %i.ayv, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec611, ptr %next.gep602, align 4, !tbaa !53, !alias.scope !155, !noalias !157
  %index.next612 = add nuw i64 %index601, 8       ; 2 uses
  %i.ayw = icmp eq i64 %index.next612, %n.vec599
  br i1 %i.ayw, label %middle.block613, label %vector.body600, !llvm.loop !158

middle.block613:                                  ; preds = %vector.body600
  br i1 %cmp.n614, label %._crit_edge1360.us.i, label %scalar.ph596.preheader

scalar.ph596.preheader:                           ; preds = %vector.memcheck533, %.preheader1090.us.i, %middle.block613
  %indvars.iv1756.i.ph = phi i64 [ 0, %vector.memcheck533 ], [ 0, %.preheader1090.us.i ], [ %n.vec599, %middle.block613 ]
  %.38691358.us.i.ph = phi ptr [ %.28681364.us.i, %vector.memcheck533 ], [ %.28681364.us.i, %.preheader1090.us.i ], [ %i.ayg, %middle.block613 ]
  br label %scalar.ph596

scalar.ph596:                                     ; preds = %scalar.ph596.preheader, %scalar.ph596
  %indvars.iv1756.i = phi i64 [ %indvars.iv.next1757.i, %scalar.ph596 ], [ %indvars.iv1756.i.ph, %scalar.ph596.preheader ] ; 3 uses
  %.38691358.us.i = phi ptr [ %i.azu, %scalar.ph596 ], [ %.38691358.us.i.ph, %scalar.ph596.preheader ] ; 9 uses
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %indvars.iv1756.i ; 4 uses
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %indvars.iv1756.i ; 4 uses
  %i.ayz = load float, ptr %i.ayx, align 4, !tbaa !53
  store float %i.ayz, ptr %.38691358.us.i, align 4, !tbaa !53
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %i.ayx, i64 %i.acq
  %i.azb = load float, ptr %i.aza, align 4, !tbaa !53
  %i.azc = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 4
  store float %i.azb, ptr %i.azc, align 4, !tbaa !53
  %i.azd = getelementptr inbounds nuw [4 x i8], ptr %i.ayx, i64 %2
  %i.aze = load float, ptr %i.azd, align 4, !tbaa !53
  %i.azf = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 8
  store float %i.aze, ptr %i.azf, align 4, !tbaa !53
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %i.ayx, i64 %3
  %i.azh = load float, ptr %i.azg, align 4, !tbaa !53
  %i.azi = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 12
  store float %i.azh, ptr %i.azi, align 4, !tbaa !53
  %i.azj = load float, ptr %i.ayy, align 4, !tbaa !53
  %i.azk = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 16
  store float %i.azj, ptr %i.azk, align 4, !tbaa !53
  %i.azl = getelementptr inbounds nuw [4 x i8], ptr %i.ayy, i64 %i.acq
  %i.azm = load float, ptr %i.azl, align 4, !tbaa !53
  %i.azn = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 20
  store float %i.azm, ptr %i.azn, align 4, !tbaa !53
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %i.ayy, i64 %2
  %i.azp = load float, ptr %i.azo, align 4, !tbaa !53
  %i.azq = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 24
  store float %i.azp, ptr %i.azq, align 4, !tbaa !53
  %i.azr = getelementptr inbounds nuw [4 x i8], ptr %i.ayy, i64 %3
  %i.azs = load float, ptr %i.azr, align 4, !tbaa !53
  %i.azt = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 28
  store float %i.azs, ptr %i.azt, align 4, !tbaa !53
  %i.azu = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 32 ; 2 uses
  %indvars.iv.next1757.i = add nuw nsw i64 %indvars.iv1756.i, 1 ; 2 uses
  %exitcond1760.not.i = icmp eq i64 %indvars.iv.next1757.i, %wide.trip.count1752.i
  br i1 %exitcond1760.not.i, label %._crit_edge1360.us.i, label %scalar.ph596, !llvm.loop !159

._crit_edge1360.us.i:                             ; preds = %scalar.ph596, %middle.block613
  %.lcssa235 = phi ptr [ %i.ayg, %middle.block613 ], [ %i.azu, %scalar.ph596 ] ; 2 uses
  %i.azv = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %4 ; 2 uses
  %i.azw = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %4 ; 2 uses
  %i.azx = add nuw nsw i32 %.18631365.us.i, 4     ; 3 uses
  %i.azy = or disjoint i32 %i.azx, 3
  %i.azz = icmp slt i32 %i.azy, %i.n
  br i1 %i.azz, label %.preheader1090.us.i, label %.preheader1093.i, !llvm.loop !160

.preheader1093.i:                                 ; preds = %._crit_edge1360.us.i, %.preheader1090.preheader.i, %.preheader1094.thread.i, %.preheader1094.i
  %.1879.lcssa.i = phi ptr [ %.0878.lcssa.i, %.preheader1094.i ], [ %scevgep1744.i, %.preheader1094.thread.i ], [ %scevgep1754.i, %.preheader1090.preheader.i ], [ %i.azv, %._crit_edge1360.us.i ] ; 6 uses
  %.1876.lcssa.i = phi ptr [ %.0875.lcssa.i, %.preheader1094.i ], [ %scevgep1748.i, %.preheader1094.thread.i ], [ %scevgep1755.i, %.preheader1090.preheader.i ], [ %i.azw, %._crit_edge1360.us.i ] ; 6 uses
  %.2868.lcssa.i = phi ptr [ %.0866.lcssa.i, %.preheader1094.i ], [ %i.aus, %.preheader1094.thread.i ], [ %.0866.lcssa19281935.i, %.preheader1090.preheader.i ], [ %.lcssa235, %._crit_edge1360.us.i ] ; 2 uses
  %.1863.lcssa.i = phi i32 [ %.0862.lcssa.i, %.preheader1094.i ], [ %i.adj, %.preheader1094.thread.i ], [ %i.axw, %.preheader1090.preheader.i ], [ %i.azx, %._crit_edge1360.us.i ] ; 5 uses
  %i.baa = or disjoint i32 %.1863.lcssa.i, 1
  %i.bab = icmp slt i32 %i.baa, %i.n
  br i1 %i.bab, label %.preheader1089.lr.ph.i, label %.preheader1092.i

.preheader1089.lr.ph.i:                           ; preds = %.preheader1093.i
  br i1 %i.acp, label %.preheader1089.us.i.preheader, label %._crit_edge1400.split.i

.preheader1089.us.i.preheader:                    ; preds = %.preheader1089.lr.ph.i
  %scevgep486 = getelementptr i8, ptr %.1876.lcssa.i, i64 %i.ads
  %scevgep487 = getelementptr i8, ptr %.1876.lcssa.i, i64 %i.adt
  %i.bac = add i32 %.1863.lcssa.i, 3
  %smax488 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %i.bac)
  %i.bad = add i32 %smax488, -2
  %i.bae = sub i32 %i.bad, %.1863.lcssa.i
  %i.baf = lshr i32 %i.bae, 1
  %i.bag = zext nneg i32 %i.baf to i64
  %i.bah = mul i64 %i.adu, %i.bag                 ; 4 uses
  %scevgep489 = getelementptr i8, ptr %scevgep487, i64 %i.bah
  %scevgep490 = getelementptr i8, ptr %.1879.lcssa.i, i64 %i.ads
  %scevgep491 = getelementptr i8, ptr %.1879.lcssa.i, i64 %i.adt
  %scevgep492 = getelementptr i8, ptr %scevgep491, i64 %i.bah
  %scevgep493 = getelementptr i8, ptr %.1876.lcssa.i, i64 %i.adq
  %scevgep494 = getelementptr i8, ptr %scevgep493, i64 %i.bah
  %scevgep495 = getelementptr i8, ptr %.1879.lcssa.i, i64 %i.adq
  %scevgep496 = getelementptr i8, ptr %scevgep495, i64 %i.bah
  br label %.preheader1089.us.i

.preheader1089.us.i:                              ; preds = %.preheader1089.us.i.preheader, %._crit_edge1380.us.i
  %.28641385.us.i = phi i32 [ %i.bcf, %._crit_edge1380.us.i ], [ %.1863.lcssa.i, %.preheader1089.us.i.preheader ]
  %.48701384.us.i = phi ptr [ %.lcssa239, %._crit_edge1380.us.i ], [ %.2868.lcssa.i, %.preheader1089.us.i.preheader ] ; 9 uses
  %.28771383.us.i = phi ptr [ %i.bce, %._crit_edge1380.us.i ], [ %.1876.lcssa.i, %.preheader1089.us.i.preheader ] ; 5 uses
  %.28801382.us.i = phi ptr [ %i.bcd, %._crit_edge1380.us.i ], [ %.1879.lcssa.i, %.preheader1089.us.i.preheader ] ; 5 uses
  br i1 %min.iters.check517, label %scalar.ph516.preheader, label %vector.memcheck484

vector.memcheck484:                               ; preds = %.preheader1089.us.i
  %scevgep485 = getelementptr i8, ptr %.48701384.us.i, i64 %i.adr ; 4 uses
  %bound0497 = icmp ult ptr %.48701384.us.i, %scevgep489
  %bound1498 = icmp ult ptr %scevgep486, %scevgep485
  %found.conflict499 = and i1 %bound0497, %bound1498
  %bound0501 = icmp ult ptr %.48701384.us.i, %scevgep492
  %bound1502 = icmp ult ptr %scevgep490, %scevgep485
  %found.conflict503 = and i1 %bound0501, %bound1502
  %i.bai = or i1 %found.conflict503, %stride.check504
  %conflict.rdx505 = or i1 %found.conflict499, %i.bai
  %bound0506 = icmp ult ptr %.48701384.us.i, %scevgep494
  %bound1507 = icmp ult ptr %.1876.lcssa.i, %scevgep485
  %found.conflict508 = and i1 %bound0506, %bound1507
  %conflict.rdx510 = or i1 %found.conflict508, %conflict.rdx505
  %bound0511 = icmp ult ptr %.48701384.us.i, %scevgep496
  %bound1512 = icmp ult ptr %.1879.lcssa.i, %scevgep485
  %found.conflict513 = and i1 %bound0511, %bound1512
  %conflict.rdx515 = or i1 %found.conflict513, %conflict.rdx510
  br i1 %conflict.rdx515, label %scalar.ph516.preheader, label %vector.ph518

vector.ph518:                                     ; preds = %vector.memcheck484
  %i.baj = getelementptr i8, ptr %.48701384.us.i, i64 %i.aeg ; 2 uses
  br label %vector.body520

vector.body520:                                   ; preds = %vector.body520, %vector.ph518
  %index521 = phi i64 [ 0, %vector.ph518 ], [ %index.next528, %vector.body520 ] ; 4 uses
  %i.bak = shl i64 %index521, 4
  %next.gep522 = getelementptr i8, ptr %.48701384.us.i, i64 %i.bak
  %i.bal = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %index521 ; 2 uses
  %i.bam = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %index521 ; 2 uses
  %wide.load523 = load <8 x float>, ptr %i.bal, align 4, !tbaa !53, !alias.scope !161
  %wide.load524 = load <8 x float>, ptr %i.bam, align 4, !tbaa !53, !alias.scope !164
  %i.ban = getelementptr inbounds nuw [4 x i8], ptr %i.bal, i64 %i.acq
  %i.bao = getelementptr inbounds nuw [4 x i8], ptr %i.bam, i64 %i.acq
  %wide.load525 = load <8 x float>, ptr %i.ban, align 4, !tbaa !53, !alias.scope !166
  %wide.load526 = load <8 x float>, ptr %i.bao, align 4, !tbaa !53, !alias.scope !168
  %i.bap = shufflevector <8 x float> %wide.load523, <8 x float> %wide.load524, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.baq = shufflevector <8 x float> %wide.load525, <8 x float> %wide.load526, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec527 = shufflevector <16 x float> %i.bap, <16 x float> %i.baq, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec527, ptr %next.gep522, align 4, !tbaa !53, !alias.scope !170, !noalias !172
  %index.next528 = add nuw i64 %index521, 8       ; 2 uses
  %i.bar = icmp eq i64 %index.next528, %n.vec519
  br i1 %i.bar, label %middle.block529, label %vector.body520, !llvm.loop !173

middle.block529:                                  ; preds = %vector.body520
  br i1 %cmp.n530, label %._crit_edge1380.us.i, label %scalar.ph516.preheader

scalar.ph516.preheader:                           ; preds = %vector.memcheck484, %.preheader1089.us.i, %middle.block529
  %indvars.iv1764.i.ph = phi i64 [ 0, %vector.memcheck484 ], [ 0, %.preheader1089.us.i ], [ %n.vec519, %middle.block529 ] ; 5 uses
  %.58711378.us.i.ph = phi ptr [ %.48701384.us.i, %vector.memcheck484 ], [ %.48701384.us.i, %.preheader1089.us.i ], [ %i.baj, %middle.block529 ] ; 6 uses
  br i1 %lcmp.mod888.not, label %scalar.ph516.prol.loopexit, label %scalar.ph516.prol

scalar.ph516.prol:                                ; preds = %scalar.ph516.preheader
  %i.bas = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %indvars.iv1764.i.ph ; 2 uses
  %i.bat = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %indvars.iv1764.i.ph ; 2 uses
  %i.bau = load float, ptr %i.bas, align 4, !tbaa !53
  store float %i.bau, ptr %.58711378.us.i.ph, align 4, !tbaa !53
  %i.bav = load float, ptr %i.bat, align 4, !tbaa !53
  %i.baw = getelementptr inbounds nuw i8, ptr %.58711378.us.i.ph, i64 4
  store float %i.bav, ptr %i.baw, align 4, !tbaa !53
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %i.bas, i64 %i.acq
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %i.bat, i64 %i.acq
  %i.baz = getelementptr inbounds nuw i8, ptr %.58711378.us.i.ph, i64 8
  %i.bba = load float, ptr %i.bax, align 4, !tbaa !53
  store float %i.bba, ptr %i.baz, align 4, !tbaa !53
  %i.bbb = load float, ptr %i.bay, align 4, !tbaa !53
  %i.bbc = getelementptr inbounds nuw i8, ptr %.58711378.us.i.ph, i64 12
  store float %i.bbb, ptr %i.bbc, align 4, !tbaa !53
  %i.bbd = getelementptr inbounds nuw i8, ptr %.58711378.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1765.i.prol = or disjoint i64 %indvars.iv1764.i.ph, 1
  br label %scalar.ph516.prol.loopexit

scalar.ph516.prol.loopexit:                       ; preds = %scalar.ph516.prol, %scalar.ph516.preheader
  %.lcssa834.unr = phi ptr [ poison, %scalar.ph516.preheader ], [ %i.bbd, %scalar.ph516.prol ]
  %indvars.iv1764.i.unr = phi i64 [ %indvars.iv1764.i.ph, %scalar.ph516.preheader ], [ %indvars.iv.next1765.i.prol, %scalar.ph516.prol ]
  %.58711378.us.i.unr = phi ptr [ %.58711378.us.i.ph, %scalar.ph516.preheader ], [ %i.bbd, %scalar.ph516.prol ]
  %i.bbe = icmp eq i64 %indvars.iv1764.i.ph, %i.aeh
  br i1 %i.bbe, label %._crit_edge1380.us.i, label %scalar.ph516

scalar.ph516:                                     ; preds = %scalar.ph516.prol.loopexit, %scalar.ph516
  %indvars.iv1764.i = phi i64 [ %indvars.iv.next1765.i.1, %scalar.ph516 ], [ %indvars.iv1764.i.unr, %scalar.ph516.prol.loopexit ] ; 4 uses
  %.58711378.us.i = phi ptr [ %i.bcc, %scalar.ph516 ], [ %.58711378.us.i.unr, %scalar.ph516.prol.loopexit ] ; 9 uses
  %i.bbf = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %indvars.iv1764.i ; 2 uses
  %i.bbg = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %indvars.iv1764.i ; 2 uses
  %i.bbh = load float, ptr %i.bbf, align 4, !tbaa !53
  store float %i.bbh, ptr %.58711378.us.i, align 4, !tbaa !53
  %i.bbi = load float, ptr %i.bbg, align 4, !tbaa !53
  %i.bbj = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 4
  store float %i.bbi, ptr %i.bbj, align 4, !tbaa !53
  %i.bbk = getelementptr inbounds nuw [4 x i8], ptr %i.bbf, i64 %i.acq
  %i.bbl = getelementptr inbounds nuw [4 x i8], ptr %i.bbg, i64 %i.acq
  %i.bbm = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 8
  %i.bbn = load float, ptr %i.bbk, align 4, !tbaa !53
  store float %i.bbn, ptr %i.bbm, align 4, !tbaa !53
  %i.bbo = load float, ptr %i.bbl, align 4, !tbaa !53
  %i.bbp = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 12
  store float %i.bbo, ptr %i.bbp, align 4, !tbaa !53
  %i.bbq = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 16
  %indvars.iv.next1765.i = add nuw nsw i64 %indvars.iv1764.i, 1 ; 2 uses
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %indvars.iv.next1765.i ; 2 uses
  %i.bbs = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %indvars.iv.next1765.i ; 2 uses
  %i.bbt = load float, ptr %i.bbr, align 4, !tbaa !53
  store float %i.bbt, ptr %i.bbq, align 4, !tbaa !53
  %i.bbu = load float, ptr %i.bbs, align 4, !tbaa !53
  %i.bbv = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 20
  store float %i.bbu, ptr %i.bbv, align 4, !tbaa !53
  %i.bbw = getelementptr inbounds nuw [4 x i8], ptr %i.bbr, i64 %i.acq
  %i.bbx = getelementptr inbounds nuw [4 x i8], ptr %i.bbs, i64 %i.acq
  %i.bby = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 24
  %i.bbz = load float, ptr %i.bbw, align 4, !tbaa !53
  store float %i.bbz, ptr %i.bby, align 4, !tbaa !53
  %i.bca = load float, ptr %i.bbx, align 4, !tbaa !53
  %i.bcb = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 28
  store float %i.bca, ptr %i.bcb, align 4, !tbaa !53
  %i.bcc = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 32 ; 2 uses
  %indvars.iv.next1765.i.1 = add nuw nsw i64 %indvars.iv1764.i, 2 ; 2 uses
  %exitcond1768.not.i.1 = icmp eq i64 %indvars.iv.next1765.i.1, %wide.trip.count1752.i
  br i1 %exitcond1768.not.i.1, label %._crit_edge1380.us.i, label %scalar.ph516, !llvm.loop !174

._crit_edge1380.us.i:                             ; preds = %scalar.ph516.prol.loopexit, %scalar.ph516, %middle.block529
  %.lcssa239 = phi ptr [ %i.baj, %middle.block529 ], [ %.lcssa834.unr, %scalar.ph516.prol.loopexit ], [ %i.bcc, %scalar.ph516 ] ; 2 uses
  %i.bcd = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %2 ; 2 uses
  %i.bce = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %2 ; 2 uses
  %i.bcf = add nuw nsw i32 %.28641385.us.i, 2     ; 3 uses
  %i.bcg = or disjoint i32 %i.bcf, 1
  %i.bch = icmp slt i32 %i.bcg, %i.n
  br i1 %i.bch, label %.preheader1089.us.i, label %.preheader1092.i, !llvm.loop !175

.preheader1092.i:                                 ; preds = %._crit_edge1380.us.i, %.preheader1093.i
  %.2880.lcssa.i = phi ptr [ %.1879.lcssa.i, %.preheader1093.i ], [ %i.bcd, %._crit_edge1380.us.i ] ; 8 uses
  %.2877.lcssa.i = phi ptr [ %.1876.lcssa.i, %.preheader1093.i ], [ %i.bce, %._crit_edge1380.us.i ] ; 8 uses
  %.4870.lcssa.i = phi ptr [ %.2868.lcssa.i, %.preheader1093.i ], [ %.lcssa239, %._crit_edge1380.us.i ]
  %.2864.lcssa.i = phi i32 [ %.1863.lcssa.i, %.preheader1093.i ], [ %i.bcf, %._crit_edge1380.us.i ] ; 2 uses
  %i.bci = icmp sge i32 %.2864.lcssa.i, %i.n
  %brmerge1470.i = or i1 %i.acz, %i.bci
  br i1 %brmerge1470.i, label %._crit_edge1400.split.i, label %.preheader1088.i.preheader

.preheader1088.i.preheader:                       ; preds = %.preheader1092.i
  %scevgep456 = getelementptr i8, ptr %.2877.lcssa.i, i64 %i.adq
  %scevgep457 = getelementptr i8, ptr %.2880.lcssa.i, i64 %i.adq
  br label %.preheader1088.i

.preheader1088.i:                                 ; preds = %.preheader1088.i.preheader, %._crit_edge1396.i
  %.38651399.i = phi i32 [ %i.bcz, %._crit_edge1396.i ], [ %.2864.lcssa.i, %.preheader1088.i.preheader ]
  %.78731398.i = phi ptr [ %.lcssa243, %._crit_edge1396.i ], [ %.4870.lcssa.i, %.preheader1088.i.preheader ] ; 8 uses
  br i1 %min.iters.check466, label %scalar.ph465.preheader, label %vector.memcheck454

vector.memcheck454:                               ; preds = %.preheader1088.i
  %scevgep455 = getelementptr i8, ptr %.78731398.i, i64 %i.adp ; 2 uses
  %bound0458 = icmp ult ptr %.78731398.i, %scevgep456
  %bound1459 = icmp ult ptr %.2877.lcssa.i, %scevgep455
  %found.conflict460 = and i1 %bound0458, %bound1459
  %bound0461 = icmp ult ptr %.78731398.i, %scevgep457
  %bound1462 = icmp ult ptr %.2880.lcssa.i, %scevgep455
  %found.conflict463 = and i1 %bound0461, %bound1462
  %conflict.rdx464 = or i1 %found.conflict460, %found.conflict463
  br i1 %conflict.rdx464, label %scalar.ph465.preheader, label %vector.ph467

vector.ph467:                                     ; preds = %vector.memcheck454
  %i.bcj = getelementptr i8, ptr %.78731398.i, i64 %i.aei ; 2 uses
  br label %vector.body469

vector.body469:                                   ; preds = %vector.body469, %vector.ph467
  %index470 = phi i64 [ 0, %vector.ph467 ], [ %index.next479, %vector.body469 ] ; 4 uses
  %i.bck = shl i64 %index470, 3                   ; 2 uses
  %next.gep471 = getelementptr i8, ptr %.78731398.i, i64 %i.bck
  %i.bcl = getelementptr i8, ptr %.78731398.i, i64 %i.bck
  %next.gep472 = getelementptr i8, ptr %i.bcl, i64 16
  %i.bcm = getelementptr inbounds nuw [4 x i8], ptr %.2880.lcssa.i, i64 %index470 ; 2 uses
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %.2877.lcssa.i, i64 %index470 ; 2 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcm, i64 8
  %wide.load473 = load <2 x float>, ptr %i.bcm, align 4, !tbaa !53, !alias.scope !176
  %wide.load474 = load <2 x float>, ptr %i.bco, align 4, !tbaa !53, !alias.scope !176
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcn, i64 8
  %wide.load475 = load <2 x float>, ptr %i.bcn, align 4, !tbaa !53, !alias.scope !179
  %wide.load476 = load <2 x float>, ptr %i.bcp, align 4, !tbaa !53, !alias.scope !179
  %interleaved.vec477 = shufflevector <2 x float> %wide.load473, <2 x float> %wide.load475, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec477, ptr %next.gep471, align 4, !tbaa !53, !alias.scope !181, !noalias !183
  %interleaved.vec478 = shufflevector <2 x float> %wide.load474, <2 x float> %wide.load476, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec478, ptr %next.gep472, align 4, !tbaa !53, !alias.scope !181, !noalias !183
  %index.next479 = add nuw i64 %index470, 4       ; 2 uses
  %i.bcq = icmp eq i64 %index.next479, %n.vec468
  br i1 %i.bcq, label %middle.block480, label %vector.body469, !llvm.loop !184

middle.block480:                                  ; preds = %vector.body469
  br i1 %cmp.n481, label %._crit_edge1396.i, label %scalar.ph465.preheader

scalar.ph465.preheader:                           ; preds = %vector.memcheck454, %.preheader1088.i, %middle.block480
  %indvars.iv1769.i.ph = phi i64 [ 0, %vector.memcheck454 ], [ 0, %.preheader1088.i ], [ %n.vec468, %middle.block480 ] ; 3 uses
  %.88741394.i.ph = phi ptr [ %.78731398.i, %vector.memcheck454 ], [ %.78731398.i, %.preheader1088.i ], [ %i.bcj, %middle.block480 ] ; 2 uses
  br i1 %lcmp.mod890.not, label %scalar.ph465.prol.loopexit, label %scalar.ph465.prol

scalar.ph465.prol:                                ; preds = %scalar.ph465.preheader, %scalar.ph465.prol
  %indvars.iv1769.i.prol = phi i64 [ %indvars.iv.next1770.i.prol, %scalar.ph465.prol ], [ %indvars.iv1769.i.ph, %scalar.ph465.preheader ] ; 3 uses
  %.88741394.i.prol = phi ptr [ %i.bcw, %scalar.ph465.prol ], [ %.88741394.i.ph, %scalar.ph465.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph465.prol ], [ 0, %scalar.ph465.preheader ]
  %i.bcr = getelementptr inbounds nuw [4 x i8], ptr %.2880.lcssa.i, i64 %indvars.iv1769.i.prol
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %.2877.lcssa.i, i64 %indvars.iv1769.i.prol
  %i.bct = load float, ptr %i.bcr, align 4, !tbaa !53
  store float %i.bct, ptr %.88741394.i.prol, align 4, !tbaa !53
  %i.bcu = load float, ptr %i.bcs, align 4, !tbaa !53
  %i.bcv = getelementptr inbounds nuw i8, ptr %.88741394.i.prol, i64 4
  store float %i.bcu, ptr %i.bcv, align 4, !tbaa !53
  %i.bcw = getelementptr inbounds nuw i8, ptr %.88741394.i.prol, i64 8 ; 3 uses
  %indvars.iv.next1770.i.prol = add nuw nsw i64 %indvars.iv1769.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter889
  br i1 %prol.iter.cmp.not, label %scalar.ph465.prol.loopexit, label %scalar.ph465.prol, !llvm.loop !185

scalar.ph465.prol.loopexit:                       ; preds = %scalar.ph465.prol, %scalar.ph465.preheader
  %.lcssa838.unr = phi ptr [ poison, %scalar.ph465.preheader ], [ %i.bcw, %scalar.ph465.prol ]
  %indvars.iv1769.i.unr = phi i64 [ %indvars.iv1769.i.ph, %scalar.ph465.preheader ], [ %indvars.iv.next1770.i.prol, %scalar.ph465.prol ]
  %.88741394.i.unr = phi ptr [ %.88741394.i.ph, %scalar.ph465.preheader ], [ %i.bcw, %scalar.ph465.prol ]
  %i.bcx = sub nsw i64 %indvars.iv1769.i.ph, %wide.trip.count1752.i
  %i.bcy = icmp ugt i64 %i.bcx, -4
  br i1 %i.bcy, label %._crit_edge1396.i, label %scalar.ph465

._crit_edge1396.i:                                ; preds = %scalar.ph465.prol.loopexit, %scalar.ph465, %middle.block480
  %.lcssa243 = phi ptr [ %i.bcj, %middle.block480 ], [ %.lcssa838.unr, %scalar.ph465.prol.loopexit ], [ %i.bdx, %scalar.ph465 ]
  %i.bcz = add nuw nsw i32 %.38651399.i, 1        ; 2 uses
  %exitcond1774.not.i = icmp eq i32 %i.bcz, %i.n
  br i1 %exitcond1774.not.i, label %._crit_edge1400.split.i, label %.preheader1088.i, !llvm.loop !187

scalar.ph465:                                     ; preds = %scalar.ph465.prol.loopexit, %scalar.ph465
  %indvars.iv1769.i = phi i64 [ %indvars.iv.next1770.i.3, %scalar.ph465 ], [ %indvars.iv1769.i.unr, %scalar.ph465.prol.loopexit ] ; 6 uses
  %.88741394.i = phi ptr [ %i.bdx, %scalar.ph465 ], [ %.88741394.i.unr, %scalar.ph465.prol.loopexit ] ; 9 uses
  %i.bda = getelementptr inbounds nuw [4 x i8], ptr %.2880.lcssa.i, i64 %indvars.iv1769.i
  %i.bdb = getelementptr inbounds nuw [4 x i8], ptr %.2877.lcssa.i, i64 %indvars.iv1769.i
  %i.bdc = load float, ptr %i.bda, align 4, !tbaa !53
  store float %i.bdc, ptr %.88741394.i, align 4, !tbaa !53
  %i.bdd = load float, ptr %i.bdb, align 4, !tbaa !53
  %i.bde = getelementptr inbounds nuw i8, ptr %.88741394.i, i64 4
  store float %i.bdd, ptr %i.bde, align 4, !tbaa !53
  %i.bdf = getelementptr inbounds nuw i8, ptr %.88741394.i, i64 8
  %indvars.iv.next1770.i = add nuw nsw i64 %indvars.iv1769.i, 1 ; 2 uses
  %i.bdg = getelementptr inbounds nuw [4 x i8], ptr %.2880.lcssa.i, i64 %indvars.iv.next1770.i
  %i.bdh = getelementptr inbounds nuw [4 x i8], ptr %.2877.lcssa.i, i64 %indvars.iv.next1770.i
  %i.bdi = load float, ptr %i.bdg, align 4, !tbaa !53
  store float %i.bdi, ptr %i.bdf, align 4, !tbaa !53
  %i.bdj = load float, ptr %i.bdh, align 4, !tbaa !53
  %i.bdk = getelementptr inbounds nuw i8, ptr %.88741394.i, i64 12
  store float %i.bdj, ptr %i.bdk, align 4, !tbaa !53
  %i.bdl = getelementptr inbounds nuw i8, ptr %.88741394.i, i64 16
  %indvars.iv.next1770.i.1 = add nuw nsw i64 %indvars.iv1769.i, 2 ; 2 uses
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %.2880.lcssa.i, i64 %indvars.iv.next1770.i.1
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %.2877.lcssa.i, i64 %indvars.iv.next1770.i.1
  %i.bdo = load float, ptr %i.bdm, align 4, !tbaa !53
  store float %i.bdo, ptr %i.bdl, align 4, !tbaa !53
  %i.bdp = load float, ptr %i.bdn, align 4, !tbaa !53
  %i.bdq = getelementptr inbounds nuw i8, ptr %.88741394.i, i64 20
  store float %i.bdp, ptr %i.bdq, align 4, !tbaa !53
  %i.bdr = getelementptr inbounds nuw i8, ptr %.88741394.i, i64 24
  %indvars.iv.next1770.i.2 = add nuw nsw i64 %indvars.iv1769.i, 3 ; 2 uses
  %i.bds = getelementptr inbounds nuw [4 x i8], ptr %.2880.lcssa.i, i64 %indvars.iv.next1770.i.2
  %i.bdt = getelementptr inbounds nuw [4 x i8], ptr %.2877.lcssa.i, i64 %indvars.iv.next1770.i.2
  %i.bdu = load float, ptr %i.bds, align 4, !tbaa !53
  store float %i.bdu, ptr %i.bdr, align 4, !tbaa !53
  %i.bdv = load float, ptr %i.bdt, align 4, !tbaa !53
  %i.bdw = getelementptr inbounds nuw i8, ptr %.88741394.i, i64 28
  store float %i.bdv, ptr %i.bdw, align 4, !tbaa !53
  %i.bdx = getelementptr inbounds nuw i8, ptr %.88741394.i, i64 32 ; 2 uses
  %indvars.iv.next1770.i.3 = add nuw nsw i64 %indvars.iv1769.i, 4 ; 2 uses
  %exitcond1773.not.i.3 = icmp eq i64 %indvars.iv.next1770.i.3, %wide.trip.count1752.i
  br i1 %exitcond1773.not.i.3, label %._crit_edge1396.i, label %scalar.ph465, !llvm.loop !188

._crit_edge1400.split.i:                          ; preds = %._crit_edge1396.i, %.preheader1092.i, %.preheader1089.lr.ph.i
  %indvars.iv.next1776.i = add nuw nsw i64 %indvars.iv1775.i, 2 ; 3 uses
  %i.bdy = or disjoint i64 %indvars.iv.next1776.i, 1 ; 2 uses
  %i.bdz = icmp slt i64 %i.bdy, %i.adm
  %indvars.iv.next1743.i = add i32 %indvars.iv1742.i, %i.adg
  %indvars.iv.next1747.i = add i32 %indvars.iv1746.i, %i.adg
  %i.bea = trunc nsw i64 %i.bdy to i32
  br i1 %i.bdz, label %_ZN4ncnn3MatD2Ev.exit1003.i, label %.preheader1087.loopexit.i, !llvm.loop !189

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge1459.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge1459.split.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ] ; 2 uses
  %indvars.iv1808.i = phi i64 [ %indvars.iv.next1809.i, %._crit_edge1459.split.i ], [ %i.arz, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ] ; 2 uses
  %indvars.iv1779.i = phi i32 [ %indvars.iv.next1780.i, %._crit_edge1459.split.i ], [ %i.arv, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ] ; 2 uses
  %i.beb = mul i32 %i.asq, %indvar
  %i.bec = add i32 %i.asp, %i.beb
  %i.bed = sext i32 %i.bec to i64
  %i.bee = shl nsw i64 %i.bed, 2                  ; 15 uses
  %scevgep726 = getelementptr i8, ptr %scevgep725, i64 %i.bee
  %scevgep728 = getelementptr i8, ptr %scevgep727, i64 %i.bee
  %scevgep730.a = getelementptr i8, ptr %scevgep729, i64 %i.bee
  %scevgep732 = getelementptr i8, ptr %scevgep731, i64 %i.bee
  %scevgep734 = getelementptr i8, ptr %scevgep733, i64 %i.bee
  %scevgep736 = getelementptr i8, ptr %scevgep735, i64 %i.bee
  %scevgep738 = getelementptr i8, ptr %scevgep737, i64 %i.bee
  %scevgep740 = getelementptr i8, ptr %scevgep739, i64 %i.bee
  %scevgep742 = getelementptr i8, ptr %scevgep741, i64 %i.bee
  %scevgep744 = getelementptr i8, ptr %scevgep743, i64 %i.bee
  %scevgep746 = getelementptr i8, ptr %scevgep745, i64 %i.bee
  %scevgep748 = getelementptr i8, ptr %scevgep747, i64 %i.bee
  %scevgep750 = getelementptr i8, ptr %scevgep749, i64 %i.bee
  %scevgep752 = getelementptr i8, ptr %scevgep751, i64 %i.bee
  %scevgep754 = getelementptr i8, ptr %scevgep753, i64 %i.bee
  %i.bef = sext i32 %indvars.iv1779.i to i64
  %i.beg = shl nsw i64 %i.bef, 2
  %scevgep1781.i = getelementptr i8, ptr %scevgep1778.i, i64 %i.beg ; 2 uses
  %i.beh = trunc i64 %indvars.iv1808.i to i32     ; 5 uses
  %i.bei = mul i32 %i.ara, %i.beh
  %i.bej = sext i32 %i.bei to i64
  %i.bek = getelementptr [4 x i8], ptr %i.aqz, i64 %i.bej ; 3 uses
  %i.bel = lshr i32 %i.beh, 3
  %i.bem = lshr i32 %i.beh, 2
  %i.ben = and i32 %i.bem, 1
  %i.beo = lshr i32 %i.beh, 1
  %i.bep = and i32 %i.beo, 1
  %i.beq = and i32 %i.beh, 1
  %i.ber = add nuw nsw i32 %i.beq, %i.bel
  %i.bes = add nuw nsw i32 %i.ber, %i.ben
  %i.bet = add nuw nsw i32 %i.bes, %i.bep
  %i.beu = zext nneg i32 %i.bet to i64
  %.reass1463.i = mul i64 %factor.op.mul1462.i, %i.beu
  %i.bev = getelementptr inbounds nuw i8, ptr %i.arb, i64 %.reass1463.i ; 4 uses
  br i1 %i.arg, label %.preheader1083.lr.ph.i, label %.preheader1086.i

.preheader1083.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.arh, label %.preheader1083.us.i.preheader, label %.preheader1086.thread.i

.preheader1083.us.i.preheader:                    ; preds = %.preheader1083.lr.ph.i
  %i.bew = insertelement <8 x ptr> poison, ptr %scevgep732, i64 0
  %i.bex = insertelement <8 x ptr> %i.bew, ptr %scevgep728, i64 1
  %i.bey = insertelement <8 x ptr> %i.bex, ptr %scevgep736, i64 2
  %i.bez = insertelement <8 x ptr> %i.bey, ptr %scevgep740, i64 3
  %i.bfa = insertelement <8 x ptr> %i.bez, ptr %scevgep744, i64 4
  %i.bfb = insertelement <8 x ptr> %i.bfa, ptr %scevgep748, i64 5
  %i.bfc = insertelement <8 x ptr> %i.bfb, ptr %scevgep752, i64 6
  %i.bfd = insertelement <8 x ptr> %i.bfc, ptr %scevgep754, i64 7
  %i.bfe = insertelement <8 x ptr> poison, ptr %scevgep730.a, i64 0
  %i.bff = insertelement <8 x ptr> %i.bfe, ptr %scevgep726, i64 1
  %i.bfg = insertelement <8 x ptr> %i.bff, ptr %scevgep734, i64 2
  %i.bfh = insertelement <8 x ptr> %i.bfg, ptr %scevgep738, i64 3
  %i.bfi = insertelement <8 x ptr> %i.bfh, ptr %scevgep742, i64 4
  %i.bfj = insertelement <8 x ptr> %i.bfi, ptr %scevgep746, i64 5
  %i.bfk = insertelement <8 x ptr> %i.bfj, ptr %scevgep750, i64 6
  %i.bfl = insertelement <8 x ptr> %i.bfk, ptr %i.bek, i64 7
  br label %.preheader1083.us.i

.preheader1083.us.i:                              ; preds = %.preheader1083.us.i.preheader, %._crit_edge1410.us.i
  %.08261414.us.i = phi i32 [ %i.bhl, %._crit_edge1410.us.i ], [ 0, %.preheader1083.us.i.preheader ]
  %.08301413.us.i = phi ptr [ %.lcssa, %._crit_edge1410.us.i ], [ %i.bev, %.preheader1083.us.i.preheader ] ; 6 uses
  %.08341412.us.i = phi ptr [ %i.bhk, %._crit_edge1410.us.i ], [ %i.bek, %.preheader1083.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check795, label %scalar.ph794.preheader, label %vector.memcheck723

vector.memcheck723:                               ; preds = %.preheader1083.us.i
  %scevgep724 = getelementptr i8, ptr %.08301413.us.i, i64 %i.asm
  %i.bfm = insertelement <8 x ptr> poison, ptr %.08301413.us.i, i64 0
  %i.bfn = shufflevector <8 x ptr> %i.bfm, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bfo = icmp ult <8 x ptr> %i.bfn, %i.bfd
  %i.bfp = insertelement <8 x ptr> poison, ptr %scevgep724, i64 0
  %i.bfq = shufflevector <8 x ptr> %i.bfp, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bfr = icmp ult <8 x ptr> %i.bfl, %i.bfq
  %i.bfs = and <8 x i1> %i.bfo, %i.bfr
  %i.bft = bitcast <8 x i1> %i.bfs to i8
  %i.bfu = icmp ne i8 %i.bft, 0
  %op.rdx = or i1 %i.bfu, %stride.check762
  br i1 %op.rdx, label %scalar.ph794.preheader, label %vector.ph796

vector.ph796:                                     ; preds = %vector.memcheck723
  %i.bfv = getelementptr i8, ptr %.08301413.us.i, i64 %i.atr ; 2 uses
  br label %vector.body798

vector.body798:                                   ; preds = %vector.body798, %vector.ph796
  %index799 = phi i64 [ 0, %vector.ph796 ], [ %index.next810, %vector.body798 ] ; 3 uses
  %i.bfw = shl i64 %index799, 5
  %next.gep800 = getelementptr i8, ptr %.08301413.us.i, i64 %i.bfw
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %.08341412.us.i, i64 %index799 ; 2 uses
  %wide.load801 = load <8 x float>, ptr %i.bfx, align 4, !tbaa !53, !alias.scope !190
  %i.bfy = getelementptr inbounds nuw [4 x i8], ptr %i.bfx, i64 %i.ari ; 2 uses
  %wide.load802 = load <8 x float>, ptr %i.bfy, align 4, !tbaa !53, !alias.scope !193
  %i.bfz = getelementptr inbounds nuw [4 x i8], ptr %i.bfy, i64 %i.ari ; 2 uses
  %wide.load803 = load <8 x float>, ptr %i.bfz, align 4, !tbaa !53, !alias.scope !195
  %i.bga = getelementptr inbounds nuw [4 x i8], ptr %i.bfz, i64 %i.ari ; 2 uses
  %wide.load804 = load <8 x float>, ptr %i.bga, align 4, !tbaa !53, !alias.scope !197
  %i.bgb = getelementptr inbounds nuw [4 x i8], ptr %i.bga, i64 %i.ari ; 2 uses
  %wide.load805 = load <8 x float>, ptr %i.bgb, align 4, !tbaa !53, !alias.scope !199
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %i.bgb, i64 %i.ari ; 2 uses
  %wide.load806 = load <8 x float>, ptr %i.bgc, align 4, !tbaa !53, !alias.scope !201
  %i.bgd = getelementptr inbounds nuw [4 x i8], ptr %i.bgc, i64 %i.ari ; 2 uses
  %wide.load807 = load <8 x float>, ptr %i.bgd, align 4, !tbaa !53, !alias.scope !203
  %i.bge = getelementptr inbounds nuw [4 x i8], ptr %i.bgd, i64 %i.ari
  %wide.load808 = load <8 x float>, ptr %i.bge, align 4, !tbaa !53, !alias.scope !205
  %i.bgf = shufflevector <8 x float> %wide.load801, <8 x float> %wide.load802, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgg = shufflevector <8 x float> %wide.load803, <8 x float> %wide.load804, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgh = shufflevector <8 x float> %wide.load805, <8 x float> %wide.load806, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgi = shufflevector <8 x float> %wide.load807, <8 x float> %wide.load808, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgj = shufflevector <16 x float> %i.bgf, <16 x float> %i.bgg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bgk = shufflevector <16 x float> %i.bgh, <16 x float> %i.bgi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec809 = shufflevector <32 x float> %i.bgj, <32 x float> %i.bgk, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec809, ptr %next.gep800, align 4, !tbaa !53, !alias.scope !207, !noalias !209
  %index.next810 = add nuw i64 %index799, 8       ; 2 uses
  %i.bgl = icmp eq i64 %index.next810, %n.vec797
  br i1 %i.bgl, label %middle.block811, label %vector.body798, !llvm.loop !210

middle.block811:                                  ; preds = %vector.body798
  br i1 %cmp.n812, label %._crit_edge1410.us.i, label %scalar.ph794.preheader

scalar.ph794.preheader:                           ; preds = %vector.memcheck723, %.preheader1083.us.i, %middle.block811
  %indvars.iv1783.i.ph = phi i64 [ 0, %vector.memcheck723 ], [ 0, %.preheader1083.us.i ], [ %n.vec797, %middle.block811 ]
  %.18311408.us.i.ph = phi ptr [ %.08301413.us.i, %vector.memcheck723 ], [ %.08301413.us.i, %.preheader1083.us.i ], [ %i.bfv, %middle.block811 ]
  br label %scalar.ph794

scalar.ph794:                                     ; preds = %scalar.ph794.preheader, %scalar.ph794
  %indvars.iv1783.i = phi i64 [ %indvars.iv.next1784.i, %scalar.ph794 ], [ %indvars.iv1783.i.ph, %scalar.ph794.preheader ] ; 2 uses
  %.18311408.us.i = phi ptr [ %i.bhj, %scalar.ph794 ], [ %.18311408.us.i.ph, %scalar.ph794.preheader ] ; 9 uses
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %.08341412.us.i, i64 %indvars.iv1783.i ; 2 uses
  %i.bgn = load float, ptr %i.bgm, align 4, !tbaa !53
  store float %i.bgn, ptr %.18311408.us.i, align 4, !tbaa !53
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.ari ; 2 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 4
  %i.bgq = load float, ptr %i.bgo, align 4, !tbaa !53
  store float %i.bgq, ptr %i.bgp, align 4, !tbaa !53
  %i.bgr = getelementptr inbounds nuw [4 x i8], ptr %i.bgo, i64 %i.ari ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 8
  %i.bgt = load float, ptr %i.bgr, align 4, !tbaa !53
  store float %i.bgt, ptr %i.bgs, align 4, !tbaa !53
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr %i.bgr, i64 %i.ari ; 2 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 12
  %i.bgw = load float, ptr %i.bgu, align 4, !tbaa !53
  store float %i.bgw, ptr %i.bgv, align 4, !tbaa !53
  %i.bgx = getelementptr inbounds nuw [4 x i8], ptr %i.bgu, i64 %i.ari ; 2 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 16
  %i.bgz = load float, ptr %i.bgx, align 4, !tbaa !53
  store float %i.bgz, ptr %i.bgy, align 4, !tbaa !53
  %i.bha = getelementptr inbounds nuw [4 x i8], ptr %i.bgx, i64 %i.ari ; 2 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 20
  %i.bhc = load float, ptr %i.bha, align 4, !tbaa !53
  store float %i.bhc, ptr %i.bhb, align 4, !tbaa !53
  %i.bhd = getelementptr inbounds nuw [4 x i8], ptr %i.bha, i64 %i.ari ; 2 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 24
  %i.bhf = load float, ptr %i.bhd, align 4, !tbaa !53
  store float %i.bhf, ptr %i.bhe, align 4, !tbaa !53
  %i.bhg = getelementptr inbounds nuw [4 x i8], ptr %i.bhd, i64 %i.ari
  %i.bhh = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 28
  %i.bhi = load float, ptr %i.bhg, align 4, !tbaa !53
  store float %i.bhi, ptr %i.bhh, align 4, !tbaa !53
  %i.bhj = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 32 ; 2 uses
  %indvars.iv.next1784.i = add nuw nsw i64 %indvars.iv1783.i, 1 ; 2 uses
  %exitcond1787.not.i = icmp eq i64 %indvars.iv.next1784.i, %wide.trip.count1786.i
  br i1 %exitcond1787.not.i, label %._crit_edge1410.us.i, label %scalar.ph794, !llvm.loop !211

._crit_edge1410.us.i:                             ; preds = %scalar.ph794, %middle.block811
  %.lcssa = phi ptr [ %i.bfv, %middle.block811 ], [ %i.bhj, %scalar.ph794 ] ; 2 uses
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %.08341412.us.i, i64 %i.ark ; 2 uses
  %i.bhl = add nuw nsw i32 %.08261414.us.i, 8     ; 2 uses
  %i.bhm = or disjoint i32 %i.bhl, 7
  %i.bhn = icmp slt i32 %i.bhm, %i.n
  br i1 %i.bhn, label %.preheader1083.us.i, label %.preheader1086.i, !llvm.loop !212

.preheader1086.i:                                 ; preds = %._crit_edge1410.us.i, %_ZN4ncnn3MatD2Ev.exit.i
  %.0834.lcssa.i = phi ptr [ %i.bek, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.bhk, %._crit_edge1410.us.i ] ; 11 uses
  %.0830.lcssa.i = phi ptr [ %i.bev, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa, %._crit_edge1410.us.i ] ; 3 uses
  %.0826.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.arx, %._crit_edge1410.us.i ] ; 5 uses
  %i.bho = or disjoint i32 %.0826.lcssa.i, 3
  %i.bhp = icmp slt i32 %i.bho, %i.n
  br i1 %i.bhp, label %.preheader1082.lr.ph.i, label %.preheader1085.i

.preheader1086.thread.i:                          ; preds = %.preheader1083.lr.ph.i
  br i1 %i.asb, label %.preheader1082.preheader.i, label %.preheader1085.i

.preheader1082.lr.ph.i:                           ; preds = %.preheader1086.i
  br i1 %i.arh, label %.preheader1082.us.i.preheader, label %.preheader1082.preheader.i

.preheader1082.us.i.preheader:                    ; preds = %.preheader1082.lr.ph.i
  %scevgep680 = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.ash
  %i.bhq = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.ash
  %scevgep681.a = getelementptr i8, ptr %i.bhq, i64 %i.ase
  %i.bhr = sub i32 %i.asj, %.0826.lcssa.i
  %i.bhs = lshr i32 %i.bhr, 2
  %i.bht = zext nneg i32 %i.bhs to i64
  %i.bhu = mul nsw i64 %i.asi, %i.bht             ; 4 uses
  %scevgep682 = getelementptr i8, ptr %scevgep681.a, i64 %i.bhu
  %scevgep683 = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.ask
  %i.bhv = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.ask
  %scevgep684 = getelementptr i8, ptr %i.bhv, i64 %i.ase
  %scevgep685 = getelementptr i8, ptr %scevgep684, i64 %i.bhu
  %scevgep686 = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asl
  %i.bhw = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.asl
  %scevgep687 = getelementptr i8, ptr %i.bhw, i64 %i.ase
  %scevgep688 = getelementptr i8, ptr %scevgep687, i64 %i.bhu
  %scevgep689 = getelementptr i8, ptr %.0834.lcssa.i, i64 %i.ase
  %scevgep690 = getelementptr i8, ptr %scevgep689, i64 %i.bhu
  br label %.preheader1082.us.i

.preheader1082.preheader.i:                       ; preds = %.preheader1082.lr.ph.i, %.preheader1086.thread.i
  %.0834.lcssa19461954.i = phi ptr [ %.0834.lcssa.i, %.preheader1082.lr.ph.i ], [ %scevgep1781.i, %.preheader1086.thread.i ]
  %.0830.lcssa19471953.i = phi ptr [ %.0830.lcssa.i, %.preheader1082.lr.ph.i ], [ %i.bev, %.preheader1086.thread.i ]
  %.0826.lcssa19481952.i = phi i32 [ %.0826.lcssa.i, %.preheader1082.lr.ph.i ], [ %i.arx, %.preheader1086.thread.i ] ; 2 uses
  %i.bhx = sub i32 %i.ary, %.0826.lcssa19481952.i
  %i.bhy = and i32 %i.bhx, -4                     ; 2 uses
  %i.bhz = zext i32 %i.bhy to i64
  %i.bia = add nuw nsw i64 %i.bhz, 4
  %i.bib = mul nsw i64 %i.bia, %i.arm
  %scevgep1788.i = getelementptr i8, ptr %.0834.lcssa19461954.i, i64 %i.bib
  %i.bic = add i32 %.0826.lcssa19481952.i, 4
  %i.bid = add i32 %i.bic, %i.bhy
  br label %.preheader1085.i

.preheader1082.us.i:                              ; preds = %.preheader1082.us.i.preheader, %._crit_edge1426.us.i
  %.18271430.us.i = phi i32 [ %i.bka, %._crit_edge1426.us.i ], [ %.0826.lcssa.i, %.preheader1082.us.i.preheader ]
  %.38331429.us.i = phi ptr [ %.lcssa225, %._crit_edge1426.us.i ], [ %.0830.lcssa.i, %.preheader1082.us.i.preheader ] ; 9 uses
  %.18351428.us.i = phi ptr [ %i.bjz, %._crit_edge1426.us.i ], [ %.0834.lcssa.i, %.preheader1082.us.i.preheader ] ; 5 uses
  br i1 %min.iters.check707, label %scalar.ph706.preheader, label %vector.memcheck678

vector.memcheck678:                               ; preds = %.preheader1082.us.i
  %scevgep679 = getelementptr i8, ptr %.38331429.us.i, i64 %i.asg ; 4 uses
  %bound0691 = icmp ult ptr %.38331429.us.i, %scevgep682
  %bound1692 = icmp ult ptr %scevgep680, %scevgep679
  %found.conflict693 = and i1 %bound0691, %bound1692
  %bound0694 = icmp ult ptr %.38331429.us.i, %scevgep685
  %bound1695 = icmp ult ptr %scevgep683, %scevgep679
  %found.conflict696 = and i1 %bound0694, %bound1695
  %conflict.rdx697 = or i1 %found.conflict693, %found.conflict696
  %bound0698 = icmp ult ptr %.38331429.us.i, %scevgep688
  %bound1699 = icmp ult ptr %scevgep686, %scevgep679
  %found.conflict700 = and i1 %bound0698, %bound1699
  %conflict.rdx701 = or i1 %conflict.rdx697, %found.conflict700
  %bound0702 = icmp ult ptr %.38331429.us.i, %scevgep690
  %bound1703 = icmp ult ptr %.0834.lcssa.i, %scevgep679
  %found.conflict704 = and i1 %bound0702, %bound1703
  %conflict.rdx705 = or i1 %conflict.rdx701, %found.conflict704
  br i1 %conflict.rdx705, label %scalar.ph706.preheader, label %vector.ph708

vector.ph708:                                     ; preds = %vector.memcheck678
  %i.bie = getelementptr i8, ptr %.38331429.us.i, i64 %i.ats ; 2 uses
  br label %vector.body710

vector.body710:                                   ; preds = %vector.body710, %vector.ph708
  %index711 = phi i64 [ 0, %vector.ph708 ], [ %index.next718, %vector.body710 ] ; 3 uses
  %i.bif = shl i64 %index711, 4
  %next.gep712 = getelementptr i8, ptr %.38331429.us.i, i64 %i.bif
  %i.big = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %index711 ; 2 uses
  %wide.load713 = load <8 x float>, ptr %i.big, align 4, !tbaa !53, !alias.scope !213
  %i.bih = getelementptr inbounds nuw [4 x i8], ptr %i.big, i64 %i.ari ; 2 uses
  %wide.load714 = load <8 x float>, ptr %i.bih, align 4, !tbaa !53, !alias.scope !216
  %i.bii = getelementptr inbounds nuw [4 x i8], ptr %i.bih, i64 %i.ari ; 2 uses
  %wide.load715 = load <8 x float>, ptr %i.bii, align 4, !tbaa !53, !alias.scope !218
  %i.bij = getelementptr inbounds nuw [4 x i8], ptr %i.bii, i64 %i.ari
  %wide.load716 = load <8 x float>, ptr %i.bij, align 4, !tbaa !53, !alias.scope !220
  %i.bik = shufflevector <8 x float> %wide.load713, <8 x float> %wide.load714, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bil = shufflevector <8 x float> %wide.load715, <8 x float> %wide.load716, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec717 = shufflevector <16 x float> %i.bik, <16 x float> %i.bil, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec717, ptr %next.gep712, align 4, !tbaa !53, !alias.scope !222, !noalias !224
  %index.next718 = add nuw i64 %index711, 8       ; 2 uses
  %i.bim = icmp eq i64 %index.next718, %n.vec709
  br i1 %i.bim, label %middle.block719, label %vector.body710, !llvm.loop !225

middle.block719:                                  ; preds = %vector.body710
  br i1 %cmp.n720, label %._crit_edge1426.us.i, label %scalar.ph706.preheader

scalar.ph706.preheader:                           ; preds = %vector.memcheck678, %.preheader1082.us.i, %middle.block719
  %indvars.iv1790.i.ph = phi i64 [ 0, %vector.memcheck678 ], [ 0, %.preheader1082.us.i ], [ %n.vec709, %middle.block719 ] ; 4 uses
  %.41424.us.i.ph = phi ptr [ %.38331429.us.i, %vector.memcheck678 ], [ %.38331429.us.i, %.preheader1082.us.i ], [ %i.bie, %middle.block719 ] ; 6 uses
  br i1 %lcmp.mod892.not, label %scalar.ph706.prol.loopexit, label %scalar.ph706.prol

scalar.ph706.prol:                                ; preds = %scalar.ph706.preheader
  %i.bin = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %indvars.iv1790.i.ph ; 2 uses
  %i.bio = load float, ptr %i.bin, align 4, !tbaa !53
  store float %i.bio, ptr %.41424.us.i.ph, align 4, !tbaa !53
  %i.bip = getelementptr inbounds nuw [4 x i8], ptr %i.bin, i64 %i.ari ; 2 uses
  %i.biq = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 4
  %i.bir = load float, ptr %i.bip, align 4, !tbaa !53
  store float %i.bir, ptr %i.biq, align 4, !tbaa !53
  %i.bis = getelementptr inbounds nuw [4 x i8], ptr %i.bip, i64 %i.ari ; 2 uses
  %i.bit = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 8
  %i.biu = load float, ptr %i.bis, align 4, !tbaa !53
  store float %i.biu, ptr %i.bit, align 4, !tbaa !53
  %i.biv = getelementptr inbounds nuw [4 x i8], ptr %i.bis, i64 %i.ari
  %i.biw = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 12
  %i.bix = load float, ptr %i.biv, align 4, !tbaa !53
  store float %i.bix, ptr %i.biw, align 4, !tbaa !53
  %i.biy = getelementptr inbounds nuw i8, ptr %.41424.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1791.i.prol = or disjoint i64 %indvars.iv1790.i.ph, 1
  br label %scalar.ph706.prol.loopexit

scalar.ph706.prol.loopexit:                       ; preds = %scalar.ph706.prol, %scalar.ph706.preheader
  %.lcssa820.unr = phi ptr [ poison, %scalar.ph706.preheader ], [ %i.biy, %scalar.ph706.prol ]
  %indvars.iv1790.i.unr = phi i64 [ %indvars.iv1790.i.ph, %scalar.ph706.preheader ], [ %indvars.iv.next1791.i.prol, %scalar.ph706.prol ]
  %.41424.us.i.unr = phi ptr [ %.41424.us.i.ph, %scalar.ph706.preheader ], [ %i.biy, %scalar.ph706.prol ]
  %i.biz = icmp eq i64 %indvars.iv1790.i.ph, %i.att
  br i1 %i.biz, label %._crit_edge1426.us.i, label %scalar.ph706

scalar.ph706:                                     ; preds = %scalar.ph706.prol.loopexit, %scalar.ph706
  %indvars.iv1790.i = phi i64 [ %indvars.iv.next1791.i.1, %scalar.ph706 ], [ %indvars.iv1790.i.unr, %scalar.ph706.prol.loopexit ] ; 3 uses
  %.41424.us.i = phi ptr [ %i.bjy, %scalar.ph706 ], [ %.41424.us.i.unr, %scalar.ph706.prol.loopexit ] ; 9 uses
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %indvars.iv1790.i ; 2 uses
  %i.bjb = load float, ptr %i.bja, align 4, !tbaa !53
  store float %i.bjb, ptr %.41424.us.i, align 4, !tbaa !53
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %i.ari ; 2 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 4
  %i.bje = load float, ptr %i.bjc, align 4, !tbaa !53
  store float %i.bje, ptr %i.bjd, align 4, !tbaa !53
  %i.bjf = getelementptr inbounds nuw [4 x i8], ptr %i.bjc, i64 %i.ari ; 2 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 8
  %i.bjh = load float, ptr %i.bjf, align 4, !tbaa !53
  store float %i.bjh, ptr %i.bjg, align 4, !tbaa !53
  %i.bji = getelementptr inbounds nuw [4 x i8], ptr %i.bjf, i64 %i.ari
  %i.bjj = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 12
  %i.bjk = load float, ptr %i.bji, align 4, !tbaa !53
  store float %i.bjk, ptr %i.bjj, align 4, !tbaa !53
  %i.bjl = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 16
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %indvars.iv1790.i
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjm, i64 4 ; 2 uses
  %i.bjo = load float, ptr %i.bjn, align 4, !tbaa !53
  store float %i.bjo, ptr %i.bjl, align 4, !tbaa !53
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.bjn, i64 %i.ari ; 2 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 20
  %i.bjr = load float, ptr %i.bjp, align 4, !tbaa !53
  store float %i.bjr, ptr %i.bjq, align 4, !tbaa !53
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %i.bjp, i64 %i.ari ; 2 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 24
  %i.bju = load float, ptr %i.bjs, align 4, !tbaa !53
  store float %i.bju, ptr %i.bjt, align 4, !tbaa !53
  %i.bjv = getelementptr inbounds nuw [4 x i8], ptr %i.bjs, i64 %i.ari
  %i.bjw = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 28
  %i.bjx = load float, ptr %i.bjv, align 4, !tbaa !53
  store float %i.bjx, ptr %i.bjw, align 4, !tbaa !53
  %i.bjy = getelementptr inbounds nuw i8, ptr %.41424.us.i, i64 32 ; 2 uses
  %indvars.iv.next1791.i.1 = add nuw nsw i64 %indvars.iv1790.i, 2 ; 2 uses
  %exitcond1794.not.i.1 = icmp eq i64 %indvars.iv.next1791.i.1, %wide.trip.count1786.i
  br i1 %exitcond1794.not.i.1, label %._crit_edge1426.us.i, label %scalar.ph706, !llvm.loop !226

._crit_edge1426.us.i:                             ; preds = %scalar.ph706.prol.loopexit, %scalar.ph706, %middle.block719
  %.lcssa225 = phi ptr [ %i.bie, %middle.block719 ], [ %.lcssa820.unr, %scalar.ph706.prol.loopexit ], [ %i.bjy, %scalar.ph706 ] ; 2 uses
  %i.bjz = getelementptr inbounds nuw [4 x i8], ptr %.18351428.us.i, i64 %i.arm ; 2 uses
  %i.bka = add nuw nsw i32 %.18271430.us.i, 4     ; 3 uses
  %i.bkb = or disjoint i32 %i.bka, 3
  %i.bkc = icmp slt i32 %i.bkb, %i.n
  br i1 %i.bkc, label %.preheader1082.us.i, label %.preheader1085.i, !llvm.loop !227

.preheader1085.i:                                 ; preds = %._crit_edge1426.us.i, %.preheader1082.preheader.i, %.preheader1086.thread.i, %.preheader1086.i
  %.1835.lcssa.i = phi ptr [ %.0834.lcssa.i, %.preheader1086.i ], [ %scevgep1781.i, %.preheader1086.thread.i ], [ %scevgep1788.i, %.preheader1082.preheader.i ], [ %i.bjz, %._crit_edge1426.us.i ] ; 6 uses
  %.3833.lcssa.i = phi ptr [ %.0830.lcssa.i, %.preheader1086.i ], [ %i.bev, %.preheader1086.thread.i ], [ %.0830.lcssa19471953.i, %.preheader1082.preheader.i ], [ %.lcssa225, %._crit_edge1426.us.i ] ; 2 uses
  %.1827.lcssa.i = phi i32 [ %.0826.lcssa.i, %.preheader1086.i ], [ %i.arx, %.preheader1086.thread.i ], [ %i.bid, %.preheader1082.preheader.i ], [ %i.bka, %._crit_edge1426.us.i ] ; 5 uses
  %i.bkd = or disjoint i32 %.1827.lcssa.i, 1
  %i.bke = icmp slt i32 %i.bkd, %i.n
  br i1 %i.bke, label %.preheader1081.lr.ph.i, label %.preheader1084.i

.preheader1081.lr.ph.i:                           ; preds = %.preheader1085.i
  br i1 %i.arh, label %.preheader1081.us.i.preheader, label %._crit_edge1459.split.i

.preheader1081.us.i.preheader:                    ; preds = %.preheader1081.lr.ph.i
  %scevgep646 = getelementptr i8, ptr %.1835.lcssa.i, i64 %i.asd
  %i.bkf = getelementptr i8, ptr %.1835.lcssa.i, i64 %i.asd
  %scevgep647 = getelementptr i8, ptr %i.bkf, i64 %i.ase
  %i.bkg = add i32 %.1827.lcssa.i, 3
  %smax648 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %i.bkg)
  %i.bkh = add i32 %smax648, -2
  %i.bki = sub i32 %i.bkh, %.1827.lcssa.i
  %i.bkj = lshr i32 %i.bki, 1
  %i.bkk = zext nneg i32 %i.bkj to i64
  %i.bkl = mul i64 %i.asf, %i.bkk                 ; 2 uses
  %scevgep649 = getelementptr i8, ptr %scevgep647, i64 %i.bkl
  %scevgep650 = getelementptr i8, ptr %.1835.lcssa.i, i64 %i.ase
  %scevgep651 = getelementptr i8, ptr %scevgep650, i64 %i.bkl
  br label %.preheader1081.us.i

.preheader1081.us.i:                              ; preds = %.preheader1081.us.i.preheader, %._crit_edge1442.us.i
  %.28281446.us.i = phi i32 [ %i.bme, %._crit_edge1442.us.i ], [ %.1827.lcssa.i, %.preheader1081.us.i.preheader ]
  %.61445.us.i = phi ptr [ %.lcssa228, %._crit_edge1442.us.i ], [ %.3833.lcssa.i, %.preheader1081.us.i.preheader ] ; 8 uses
  %.28361444.us.i = phi ptr [ %i.bmd, %._crit_edge1442.us.i ], [ %.1835.lcssa.i, %.preheader1081.us.i.preheader ] ; 7 uses
  br i1 %min.iters.check660, label %scalar.ph659.preheader, label %vector.memcheck644

vector.memcheck644:                               ; preds = %.preheader1081.us.i
  %scevgep645 = getelementptr i8, ptr %.61445.us.i, i64 %i.asc ; 2 uses
  %bound0652 = icmp ult ptr %.61445.us.i, %scevgep649
  %bound1653 = icmp ult ptr %scevgep646, %scevgep645
  %found.conflict654 = and i1 %bound0652, %bound1653
  %bound0655 = icmp ult ptr %.61445.us.i, %scevgep651
  %bound1656 = icmp ult ptr %.1835.lcssa.i, %scevgep645
  %found.conflict657 = and i1 %bound0655, %bound1656
  %conflict.rdx658 = or i1 %found.conflict654, %found.conflict657
  br i1 %conflict.rdx658, label %scalar.ph659.preheader, label %vector.ph661

vector.ph661:                                     ; preds = %vector.memcheck644
  %i.bkm = getelementptr i8, ptr %.61445.us.i, i64 %i.atu ; 2 uses
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph661
  %index664 = phi i64 [ 0, %vector.ph661 ], [ %index.next673, %vector.body663 ] ; 3 uses
  %i.bkn = shl i64 %index664, 3                   ; 2 uses
  %next.gep665 = getelementptr i8, ptr %.61445.us.i, i64 %i.bkn
  %i.bko = getelementptr i8, ptr %.61445.us.i, i64 %i.bkn
  %next.gep666 = getelementptr i8, ptr %i.bko, i64 16
  %i.bkp = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %index664 ; 3 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 8
  %wide.load667 = load <2 x float>, ptr %i.bkp, align 4, !tbaa !53, !alias.scope !228
  %wide.load668 = load <2 x float>, ptr %i.bkq, align 4, !tbaa !53, !alias.scope !228
  %i.bkr = getelementptr inbounds nuw [4 x i8], ptr %i.bkp, i64 %i.ari ; 2 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkr, i64 8
  %wide.load669 = load <2 x float>, ptr %i.bkr, align 4, !tbaa !53, !alias.scope !231
  %wide.load670 = load <2 x float>, ptr %i.bks, align 4, !tbaa !53, !alias.scope !231
  %interleaved.vec671 = shufflevector <2 x float> %wide.load667, <2 x float> %wide.load669, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec671, ptr %next.gep665, align 4, !tbaa !53, !alias.scope !233, !noalias !235
  %interleaved.vec672 = shufflevector <2 x float> %wide.load668, <2 x float> %wide.load670, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec672, ptr %next.gep666, align 4, !tbaa !53, !alias.scope !233, !noalias !235
  %index.next673 = add nuw i64 %index664, 4       ; 2 uses
  %i.bkt = icmp eq i64 %index.next673, %n.vec662
  br i1 %i.bkt, label %middle.block674, label %vector.body663, !llvm.loop !236

middle.block674:                                  ; preds = %vector.body663
  br i1 %cmp.n675, label %._crit_edge1442.us.i, label %scalar.ph659.preheader

scalar.ph659.preheader:                           ; preds = %vector.memcheck644, %.preheader1081.us.i, %middle.block674
  %indvars.iv1797.i.ph = phi i64 [ 0, %vector.memcheck644 ], [ 0, %.preheader1081.us.i ], [ %n.vec662, %middle.block674 ] ; 3 uses
  %.71440.us.i.ph = phi ptr [ %.61445.us.i, %vector.memcheck644 ], [ %.61445.us.i, %.preheader1081.us.i ], [ %i.bkm, %middle.block674 ] ; 2 uses
  br i1 %lcmp.mod895.not, label %scalar.ph659.prol.loopexit, label %scalar.ph659.prol

scalar.ph659.prol:                                ; preds = %scalar.ph659.preheader, %scalar.ph659.prol
  %indvars.iv1797.i.prol = phi i64 [ %indvars.iv.next1798.i.prol, %scalar.ph659.prol ], [ %indvars.iv1797.i.ph, %scalar.ph659.preheader ] ; 2 uses
  %.71440.us.i.prol = phi ptr [ %i.bkz, %scalar.ph659.prol ], [ %.71440.us.i.ph, %scalar.ph659.preheader ] ; 3 uses
  %prol.iter896 = phi i64 [ %prol.iter896.next, %scalar.ph659.prol ], [ 0, %scalar.ph659.preheader ]
  %i.bku = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %indvars.iv1797.i.prol ; 2 uses
  %i.bkv = load float, ptr %i.bku, align 4, !tbaa !53
  store float %i.bkv, ptr %.71440.us.i.prol, align 4, !tbaa !53
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.bku, i64 %i.ari
  %i.bkx = getelementptr inbounds nuw i8, ptr %.71440.us.i.prol, i64 4
  %i.bky = load float, ptr %i.bkw, align 4, !tbaa !53
  store float %i.bky, ptr %i.bkx, align 4, !tbaa !53
  %i.bkz = getelementptr inbounds nuw i8, ptr %.71440.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next1798.i.prol = add nuw nsw i64 %indvars.iv1797.i.prol, 1 ; 2 uses
  %prol.iter896.next = add i64 %prol.iter896, 1   ; 2 uses
  %prol.iter896.cmp.not = icmp eq i64 %prol.iter896.next, %xtraiter894
  br i1 %prol.iter896.cmp.not, label %scalar.ph659.prol.loopexit, label %scalar.ph659.prol, !llvm.loop !237

scalar.ph659.prol.loopexit:                       ; preds = %scalar.ph659.prol, %scalar.ph659.preheader
  %.lcssa823.unr = phi ptr [ poison, %scalar.ph659.preheader ], [ %i.bkz, %scalar.ph659.prol ]
  %indvars.iv1797.i.unr = phi i64 [ %indvars.iv1797.i.ph, %scalar.ph659.preheader ], [ %indvars.iv.next1798.i.prol, %scalar.ph659.prol ]
  %.71440.us.i.unr = phi ptr [ %.71440.us.i.ph, %scalar.ph659.preheader ], [ %i.bkz, %scalar.ph659.prol ]
  %i.bla = sub nsw i64 %indvars.iv1797.i.ph, %wide.trip.count1786.i
  %i.blb = icmp ugt i64 %i.bla, -4
  br i1 %i.blb, label %._crit_edge1442.us.i, label %scalar.ph659

scalar.ph659:                                     ; preds = %scalar.ph659.prol.loopexit, %scalar.ph659
  %indvars.iv1797.i = phi i64 [ %indvars.iv.next1798.i.3, %scalar.ph659 ], [ %indvars.iv1797.i.unr, %scalar.ph659.prol.loopexit ] ; 5 uses
  %.71440.us.i = phi ptr [ %i.bmc, %scalar.ph659 ], [ %.71440.us.i.unr, %scalar.ph659.prol.loopexit ] ; 9 uses
  %i.blc = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %indvars.iv1797.i ; 2 uses
  %i.bld = load float, ptr %i.blc, align 4, !tbaa !53
  store float %i.bld, ptr %.71440.us.i, align 4, !tbaa !53
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr %i.blc, i64 %i.ari
  %i.blf = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 4
  %i.blg = load float, ptr %i.ble, align 4, !tbaa !53
  store float %i.blg, ptr %i.blf, align 4, !tbaa !53
  %i.blh = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 8
  %i.bli = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %indvars.iv1797.i
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bli, i64 4 ; 2 uses
  %i.blk = load float, ptr %i.blj, align 4, !tbaa !53
  store float %i.blk, ptr %i.blh, align 4, !tbaa !53
  %i.bll = getelementptr inbounds nuw [4 x i8], ptr %i.blj, i64 %i.ari
  %i.blm = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 12
  %i.bln = load float, ptr %i.bll, align 4, !tbaa !53
  store float %i.bln, ptr %i.blm, align 4, !tbaa !53
  %i.blo = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 16
  %i.blp = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %indvars.iv1797.i
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blp, i64 8 ; 2 uses
  %i.blr = load float, ptr %i.blq, align 4, !tbaa !53
  store float %i.blr, ptr %i.blo, align 4, !tbaa !53
  %i.bls = getelementptr inbounds nuw [4 x i8], ptr %i.blq, i64 %i.ari
  %i.blt = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 20
  %i.blu = load float, ptr %i.bls, align 4, !tbaa !53
  store float %i.blu, ptr %i.blt, align 4, !tbaa !53
  %i.blv = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 24
  %i.blw = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %indvars.iv1797.i
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blw, i64 12 ; 2 uses
  %i.bly = load float, ptr %i.blx, align 4, !tbaa !53
  store float %i.bly, ptr %i.blv, align 4, !tbaa !53
  %i.blz = getelementptr inbounds nuw [4 x i8], ptr %i.blx, i64 %i.ari
  %i.bma = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 28
  %i.bmb = load float, ptr %i.blz, align 4, !tbaa !53
  store float %i.bmb, ptr %i.bma, align 4, !tbaa !53
  %i.bmc = getelementptr inbounds nuw i8, ptr %.71440.us.i, i64 32 ; 2 uses
  %indvars.iv.next1798.i.3 = add nuw nsw i64 %indvars.iv1797.i, 4 ; 2 uses
  %exitcond1801.not.i.3 = icmp eq i64 %indvars.iv.next1798.i.3, %wide.trip.count1786.i
  br i1 %exitcond1801.not.i.3, label %._crit_edge1442.us.i, label %scalar.ph659, !llvm.loop !238

._crit_edge1442.us.i:                             ; preds = %scalar.ph659.prol.loopexit, %scalar.ph659, %middle.block674
  %.lcssa228 = phi ptr [ %i.bkm, %middle.block674 ], [ %.lcssa823.unr, %scalar.ph659.prol.loopexit ], [ %i.bmc, %scalar.ph659 ] ; 2 uses
  %i.bmd = getelementptr inbounds nuw [4 x i8], ptr %.28361444.us.i, i64 %i.aro ; 2 uses
  %i.bme = add nuw nsw i32 %.28281446.us.i, 2     ; 3 uses
  %i.bmf = or disjoint i32 %i.bme, 1
  %i.bmg = icmp slt i32 %i.bmf, %i.n
  br i1 %i.bmg, label %.preheader1081.us.i, label %.preheader1084.i, !llvm.loop !239

.preheader1084.i:                                 ; preds = %._crit_edge1442.us.i, %.preheader1085.i
  %.2836.lcssa.i = phi ptr [ %.1835.lcssa.i, %.preheader1085.i ], [ %i.bmd, %._crit_edge1442.us.i ] ; 12 uses
  %.6.lcssa.i = phi ptr [ %.3833.lcssa.i, %.preheader1085.i ], [ %.lcssa228, %._crit_edge1442.us.i ]
  %.2828.lcssa.i = phi i32 [ %.1827.lcssa.i, %.preheader1085.i ], [ %i.bme, %._crit_edge1442.us.i ] ; 2 uses
  %i.bmh = icmp sge i32 %.2828.lcssa.i, %i.n
  %brmerge1473.i = or i1 %i.arp, %i.bmh
  br i1 %brmerge1473.i, label %._crit_edge1459.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader1084.i
  %.2836.lcssa.i618 = ptrtoaddr ptr %.2836.lcssa.i to i64
  br label %iter.check

iter.check:                                       ; preds = %.preheader.i.preheader, %._crit_edge1455.i
  %.38291458.i = phi i32 [ %i.bnc, %._crit_edge1455.i ], [ %.2828.lcssa.i, %.preheader.i.preheader ]
  %.91457.i = phi ptr [ %.lcssa231, %._crit_edge1455.i ], [ %.6.lcssa.i, %.preheader.i.preheader ] ; 6 uses
  %.91457.i619 = ptrtoaddr ptr %.91457.i to i64
  %i.bmi = sub i64 %.2836.lcssa.i618, %.91457.i619
  %diff.check = icmp ugt i64 %i.bmi, -128
  %or.cond = select i1 %min.iters.check621, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check622, label %vec.epilog.ph, label %vector.ph623

vector.ph623:                                     ; preds = %vector.main.loop.iter.check
  %i.bmj = getelementptr i8, ptr %.91457.i, i64 %i.atw ; 2 uses
  br label %vector.body625

vector.body625:                                   ; preds = %vector.body625, %vector.ph623
  %index626 = phi i64 [ 0, %vector.ph623 ], [ %index.next632, %vector.body625 ] ; 3 uses
  %i.bmk = shl i64 %index626, 2
  %next.gep627 = getelementptr i8, ptr %.91457.i, i64 %i.bmk ; 4 uses
  %i.bml = getelementptr inbounds nuw [4 x i8], ptr %.2836.lcssa.i, i64 %index626 ; 4 uses
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 32
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bml, i64 64
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bml, i64 96
  %wide.load628 = load <8 x float>, ptr %i.bml, align 4, !tbaa !53
  %wide.load629 = load <8 x float>, ptr %i.bmm, align 4, !tbaa !53
  %wide.load630 = load <8 x float>, ptr %i.bmn, align 4, !tbaa !53
  %wide.load631 = load <8 x float>, ptr %i.bmo, align 4, !tbaa !53
  %i.bmp = getelementptr i8, ptr %next.gep627, i64 32
  %i.bmq = getelementptr i8, ptr %next.gep627, i64 64
  %i.bmr = getelementptr i8, ptr %next.gep627, i64 96
  store <8 x float> %wide.load628, ptr %next.gep627, align 4, !tbaa !53
  store <8 x float> %wide.load629, ptr %i.bmp, align 4, !tbaa !53
  store <8 x float> %wide.load630, ptr %i.bmq, align 4, !tbaa !53
  store <8 x float> %wide.load631, ptr %i.bmr, align 4, !tbaa !53
  %index.next632 = add nuw i64 %index626, 32      ; 2 uses
  %i.bms = icmp eq i64 %index.next632, %n.vec624
  br i1 %i.bms, label %middle.block633, label %vector.body625, !llvm.loop !240

middle.block633:                                  ; preds = %vector.body625
  br i1 %cmp.n634, label %._crit_edge1455.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block633
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !241

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec624, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bmt = getelementptr i8, ptr %.91457.i, i64 %i.atx ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index637 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next640, %vec.epilog.vector.body ] ; 3 uses
  %i.bmu = shl i64 %index637, 2
  %next.gep638 = getelementptr i8, ptr %.91457.i, i64 %i.bmu
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %.2836.lcssa.i, i64 %index637
  %wide.load639 = load <8 x float>, ptr %i.bmv, align 4, !tbaa !53
  store <8 x float> %wide.load639, ptr %next.gep638, align 4, !tbaa !53
  %index.next640 = add nuw i64 %index637, 8       ; 2 uses
  %i.bmw = icmp eq i64 %index.next640, %n.vec636
  br i1 %i.bmw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !242

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n641, label %._crit_edge1455.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1802.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec624, %vec.epilog.iter.check ], [ %n.vec636, %vec.epilog.middle.block ] ; 3 uses
  %.101453.i.ph = phi ptr [ %.91457.i, %iter.check ], [ %i.bmj, %vec.epilog.iter.check ], [ %i.bmt, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod898.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv1802.i.prol = phi i64 [ %indvars.iv.next1803.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv1802.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.101453.i.prol = phi ptr [ %i.bmz, %vec.epilog.scalar.ph.prol ], [ %.101453.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter899 = phi i64 [ %prol.iter899.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bmx = getelementptr inbounds nuw [4 x i8], ptr %.2836.lcssa.i, i64 %indvars.iv1802.i.prol
  %i.bmy = load float, ptr %i.bmx, align 4, !tbaa !53
  store float %i.bmy, ptr %.101453.i.prol, align 4, !tbaa !53
  %i.bmz = getelementptr inbounds nuw i8, ptr %.101453.i.prol, i64 4 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn21Convolution1D_x86_avx21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.yy = insertelement <16 x i32> %i.yx, i32 %i.yi, i64 9
  %i.yz = insertelement <16 x i32> %i.yy, i32 %i.yj, i64 10
  %i.za = insertelement <16 x i32> %i.yz, i32 %i.yk, i64 11
  %i.zb = insertelement <16 x i32> %i.za, i32 %i.yl, i64 12
  %i.zc = insertelement <16 x i32> %i.zb, i32 %i.ym, i64 13
  %i.zd = insertelement <16 x i32> %i.zc, i32 %i.yn, i64 14
  %i.ze = insertelement <16 x i32> %i.zd, i32 %i.yo, i64 15
  %i.zf = lshr <16 x i32> %i.ze, splat (i32 16)
  %i.zg = trunc nuw <16 x i32> %i.zf to <16 x i16>
  store <16 x i16> %i.zg, ptr %.78941207.us.i, align 2, !tbaa !331
  %i.zh = getelementptr inbounds nuw i8, ptr %.78941207.us.i, i64 32 ; 3 uses
  %indvars.iv.next1673.i = add nuw nsw i64 %indvars.iv1672.i, 1 ; 2 uses
  %exitcond1676.not.i = icmp eq i64 %indvars.iv.next1673.i, %wide.trip.count.i
  br i1 %exitcond1676.not.i, label %._crit_edge.us1228.i, label %bb.ah, !llvm.loop !337

._crit_edge.us1228.i:                             ; preds = %bb.ah
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %.28391217.us.i, i64 %i.fz ; 2 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %.28421216.us.i, i64 %i.fz ; 2 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %.28501215.us.i, i64 %i.fz ; 2 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %.28531214.us.i, i64 %i.fz ; 2 uses
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %.28571213.us.i, i64 %i.fz ; 2 uses
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %.28601212.us.i, i64 %i.fz ; 2 uses
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %.28831211.us.i, i64 %i.fz ; 2 uses
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %.28861210.us.i, i64 %i.fz ; 2 uses
  %i.zq = add nuw nsw i32 %.29001208.us.i, 2      ; 3 uses
  %i.zr = or disjoint i32 %i.zq, 1
  %i.zs = icmp slt i32 %i.zr, %i.h
  br i1 %i.zs, label %.preheader1105.us.i, label %.preheader1108.i, !llvm.loop !338

.preheader1108.i:                                 ; preds = %._crit_edge.us1228.i, %.preheader1109.i
  %.2900.lcssa.i = phi i32 [ %.1899.lcssa.i, %.preheader1109.i ], [ %i.zq, %._crit_edge.us1228.i ] ; 2 uses
  %.6893.lcssa.i = phi ptr [ %.3890.lcssa.i, %.preheader1109.i ], [ %i.zh, %._crit_edge.us1228.i ]
  %.2886.lcssa.i = phi ptr [ %.1885.lcssa.i, %.preheader1109.i ], [ %i.zp, %._crit_edge.us1228.i ] ; 2 uses
  %.2883.lcssa.i = phi ptr [ %.1882.lcssa.i, %.preheader1109.i ], [ %i.zo, %._crit_edge.us1228.i ] ; 2 uses
  %.2860.lcssa.i = phi ptr [ %.1859.lcssa.i, %.preheader1109.i ], [ %i.zn, %._crit_edge.us1228.i ] ; 2 uses
  %.2857.lcssa.i = phi ptr [ %.1856.lcssa.i, %.preheader1109.i ], [ %i.zm, %._crit_edge.us1228.i ] ; 2 uses
  %.2853.lcssa.i = phi ptr [ %.1852.lcssa.i, %.preheader1109.i ], [ %i.zl, %._crit_edge.us1228.i ] ; 2 uses
  %.2850.lcssa.i = phi ptr [ %.1849.lcssa.i, %.preheader1109.i ], [ %i.zk, %._crit_edge.us1228.i ] ; 2 uses
  %.2842.lcssa.i = phi ptr [ %.1841.lcssa.i, %.preheader1109.i ], [ %i.zj, %._crit_edge.us1228.i ] ; 2 uses
  %.2839.lcssa.i = phi ptr [ %.1838.lcssa.i, %.preheader1109.i ], [ %i.zi, %._crit_edge.us1228.i ] ; 2 uses
  %i.zt = icmp sge i32 %.2900.lcssa.i, %i.h
  %brmerge.i = or i1 %i.ga, %i.zt
  br i1 %brmerge.i, label %._crit_edge1244.split.i, label %.preheader1104.i

.preheader1104.i:                                 ; preds = %.preheader1108.i, %._crit_edge.i
  %.98961243.i = phi ptr [ %.lcssa288, %._crit_edge.i ], [ %.6893.lcssa.i, %.preheader1108.i ] ; 3 uses
  %.39011242.i = phi i32 [ %i.aav, %._crit_edge.i ], [ %.2900.lcssa.i, %.preheader1108.i ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader1104.i
  %i.zu = getelementptr i8, ptr %.98961243.i, i64 %i.gt ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.zv = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.98961243.i, i64 %i.zv
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %.2839.lcssa.i, i64 %index
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %.2842.lcssa.i, i64 %index
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %.2850.lcssa.i, i64 %index
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %.2853.lcssa.i, i64 %index
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %.2857.lcssa.i, i64 %index
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %.2860.lcssa.i, i64 %index
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %.2883.lcssa.i, i64 %index
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %.2886.lcssa.i, i64 %index
  %wide.load = load <4 x i32>, ptr %i.zw, align 4, !tbaa !53
  %i.aae = lshr <4 x i32> %wide.load, splat (i32 16)
  %wide.load289 = load <4 x i32>, ptr %i.zx, align 4, !tbaa !53
  %i.aaf = lshr <4 x i32> %wide.load289, splat (i32 16)
  %wide.load290 = load <4 x i32>, ptr %i.zy, align 4, !tbaa !53
  %i.aag = lshr <4 x i32> %wide.load290, splat (i32 16)
  %wide.load291 = load <4 x i32>, ptr %i.zz, align 4, !tbaa !53
  %i.aah = lshr <4 x i32> %wide.load291, splat (i32 16)
  %wide.load292 = load <4 x i32>, ptr %i.aaa, align 4, !tbaa !53
  %i.aai = lshr <4 x i32> %wide.load292, splat (i32 16)
  %wide.load293 = load <4 x i32>, ptr %i.aab, align 4, !tbaa !53
  %i.aaj = lshr <4 x i32> %wide.load293, splat (i32 16)
  %wide.load294 = load <4 x i32>, ptr %i.aac, align 4, !tbaa !53
  %i.aak = lshr <4 x i32> %wide.load294, splat (i32 16)
  %wide.load295 = load <4 x i32>, ptr %i.aad, align 4, !tbaa !53
  %i.aal = lshr <4 x i32> %wide.load295, splat (i32 16)
  %i.aam = shufflevector <4 x i32> %i.aae, <4 x i32> %i.aaf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aan = shufflevector <4 x i32> %i.aag, <4 x i32> %i.aah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aao = shufflevector <4 x i32> %i.aai, <4 x i32> %i.aaj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aap = shufflevector <4 x i32> %i.aak, <4 x i32> %i.aal, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aaq = shufflevector <8 x i32> %i.aam, <8 x i32> %i.aan, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aar = trunc nuw <16 x i32> %i.aaq to <16 x i16>
  %i.aas = shufflevector <8 x i32> %i.aao, <8 x i32> %i.aap, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aat = trunc nuw <16 x i32> %i.aas to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.aar, <16 x i16> %i.aat, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !331
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aau = icmp eq i64 %index.next, %n.vec
  br i1 %i.aau, label %middle.block, label %vector.body, !llvm.loop !339

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader1104.i, %middle.block
  %indvars.iv1677.i.ph = phi i64 [ 0, %.preheader1104.i ], [ %n.vec, %middle.block ]
  %.108971241.i.ph = phi ptr [ %.98961243.i, %.preheader1104.i ], [ %i.zu, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa288 = phi ptr [ %i.zu, %middle.block ], [ %i.acj, %scalar.ph ]
  %i.aav = add nuw nsw i32 %.39011242.i, 1        ; 2 uses
  %exitcond1682.not.i = icmp eq i32 %i.aav, %i.h
  br i1 %exitcond1682.not.i, label %._crit_edge1244.split.i, label %.preheader1104.i, !llvm.loop !340

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1677.i = phi i64 [ %indvars.iv.next1678.i, %scalar.ph ], [ %indvars.iv1677.i.ph, %scalar.ph.preheader ] ; 9 uses
  %.108971241.i = phi ptr [ %i.acj, %scalar.ph ], [ %.108971241.i.ph, %scalar.ph.preheader ] ; 9 uses
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %.2839.lcssa.i, i64 %indvars.iv1677.i
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %.2842.lcssa.i, i64 %indvars.iv1677.i
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %.2850.lcssa.i, i64 %indvars.iv1677.i
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %.2853.lcssa.i, i64 %indvars.iv1677.i
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %.2857.lcssa.i, i64 %indvars.iv1677.i
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %.2860.lcssa.i, i64 %indvars.iv1677.i
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %.2883.lcssa.i, i64 %indvars.iv1677.i
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %.2886.lcssa.i, i64 %indvars.iv1677.i
  %i.abe = load i32, ptr %i.aaw, align 4, !tbaa !53
  %i.abf = lshr i32 %i.abe, 16
  %i.abg = trunc nuw i32 %i.abf to i16
  store i16 %i.abg, ptr %.108971241.i, align 2, !tbaa !331
  %i.abh = load i32, ptr %i.aax, align 4, !tbaa !53
  %i.abi = lshr i32 %i.abh, 16
  %i.abj = trunc nuw i32 %i.abi to i16
  %i.abk = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 2
  store i16 %i.abj, ptr %i.abk, align 2, !tbaa !331
  %i.abl = load i32, ptr %i.aay, align 4, !tbaa !53
  %i.abm = lshr i32 %i.abl, 16
  %i.abn = trunc nuw i32 %i.abm to i16
  %i.abo = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 4
  store i16 %i.abn, ptr %i.abo, align 2, !tbaa !331
  %i.abp = load i32, ptr %i.aaz, align 4, !tbaa !53
  %i.abq = lshr i32 %i.abp, 16
  %i.abr = trunc nuw i32 %i.abq to i16
  %i.abs = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 6
  store i16 %i.abr, ptr %i.abs, align 2, !tbaa !331
  %i.abt = load i32, ptr %i.aba, align 4, !tbaa !53
  %i.abu = lshr i32 %i.abt, 16
  %i.abv = trunc nuw i32 %i.abu to i16
  %i.abw = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 8
  store i16 %i.abv, ptr %i.abw, align 2, !tbaa !331
  %i.abx = load i32, ptr %i.abb, align 4, !tbaa !53
  %i.aby = lshr i32 %i.abx, 16
  %i.abz = trunc nuw i32 %i.aby to i16
  %i.aca = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 10
  store i16 %i.abz, ptr %i.aca, align 2, !tbaa !331
  %i.acb = load i32, ptr %i.abc, align 4, !tbaa !53
  %i.acc = lshr i32 %i.acb, 16
  %i.acd = trunc nuw i32 %i.acc to i16
  %i.ace = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 12
  store i16 %i.acd, ptr %i.ace, align 2, !tbaa !331
  %i.acf = load i32, ptr %i.abd, align 4, !tbaa !53
  %i.acg = lshr i32 %i.acf, 16
  %i.ach = trunc nuw i32 %i.acg to i16
  %i.aci = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 14
  store i16 %i.ach, ptr %i.aci, align 2, !tbaa !331
  %i.acj = getelementptr inbounds nuw i8, ptr %.108971241.i, i64 16 ; 2 uses
  %indvars.iv.next1678.i = add nuw nsw i64 %indvars.iv1677.i, 1 ; 2 uses
  %exitcond1681.not.i = icmp eq i64 %indvars.iv.next1678.i, %wide.trip.count.i
  br i1 %exitcond1681.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !341

._crit_edge1244.split.i:                          ; preds = %._crit_edge.i, %.preheader1108.i, %.preheader1105.lr.ph.i
  %indvars.iv.next1684.i = add nuw nsw i64 %indvars.iv1683.i, 8 ; 3 uses
  %i.ack = or disjoint i64 %indvars.iv.next1684.i, 7
  %i.acl = icmp samesign ult i64 %i.ack, %i.gq
  %indvars.iv.next.i = add i32 %indvars.iv.i, %i.gg
  %indvars.iv.next1621.i = add i32 %indvars.iv1620.i, %i.gg
  %indvars.iv.next1625.i = add i32 %indvars.iv1624.i, %i.gg
  %indvars.iv.next1629.i = add i32 %indvars.iv1628.i, %i.gg
  %indvars.iv.next1633.i = add i32 %indvars.iv1632.i, %i.gg
  %indvars.iv.next1637.i = add i32 %indvars.iv1636.i, %i.gg
  %indvars.iv.next1641.i = add i32 %indvars.iv1640.i, %i.gg
  %indvars.iv.next1645.i = add i32 %indvars.iv1644.i, %i.gg
  br i1 %i.acl, label %_ZN4ncnn3MatD2Ev.exit1005.i, label %.preheader1103.loopexit.i, !llvm.loop !342

.preheader1095.loopexit.i:                        ; preds = %._crit_edge1337.split.i
  %i.acm = trunc nuw nsw i64 %indvars.iv.next1737.i to i32
  br label %.preheader1095.i

.preheader1095.i:                                 ; preds = %.preheader1095.loopexit.i, %.preheader1103.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader1103.i ], [ %i.acm, %.preheader1095.loopexit.i ] ; 4 uses
  %i.acn = or disjoint i32 %.1.lcssa.i, 1         ; 3 uses
  %i.aco = icmp slt i32 %i.acn, %i.g
  br i1 %i.aco, label %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i, label %.preheader1087.i

_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i:                ; preds = %.preheader1095.i
  %i.acp = load ptr, ptr %i.i, align 8, !tbaa !18 ; 3 uses
  %i.acq = mul i32 %i.h, %i.d                     ; 5 uses
  %i.acr = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !343
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.act = load i64, ptr %i.acs, align 8, !tbaa !20, !noalias !343
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.acv = load i64, ptr %i.acu, align 8, !tbaa !49, !noalias !343
  %factor.op.mul1403.i = mul i64 %i.acv, %i.act
  %i.acw = icmp sgt i32 %i.h, 7
  %i.acx = icmp sgt i32 %i.d, 0                   ; 3 uses
  %i.acy = sext i32 %i.d to i64                   ; 10 uses
  %i.acz = shl i32 %i.d, 1
  %2 = sext i32 %i.acz to i64                     ; 8 uses
  %i.ada = mul nsw i32 %i.d, 3
  %3 = sext i32 %i.ada to i64                     ; 6 uses
  %i.adb = shl i32 %i.d, 2
  %4 = sext i32 %i.adb to i64                     ; 5 uses
  %i.adc = mul nsw i32 %i.d, 5
  %5 = sext i32 %i.adc to i64                     ; 2 uses
  %i.add = mul nsw i32 %i.d, 6
  %6 = sext i32 %i.add to i64                     ; 2 uses
  %i.ade = mul nsw i32 %i.d, 7
  %7 = sext i32 %i.ade to i64                     ; 2 uses
  %i.adf = shl i32 %i.d, 3
  %i.adg = sext i32 %i.adf to i64                 ; 3 uses
  %i.adh = icmp slt i32 %i.d, 1
  %i.adi = add i32 %i.h, -8                       ; 2 uses
  %i.adj = lshr i32 %i.adi, 1
  %i.adk = and i32 %i.adj, 2147483644
  %narrow1838.i = add nuw i32 %i.adk, 4
  %i.adl = zext i32 %narrow1838.i to i64
  %i.adm = mul nsw i64 %i.adl, %i.adg
  %scevgep1741.i = getelementptr i8, ptr %i.acp, i64 %i.adm ; 2 uses
  %i.adn = mul i32 %i.acq, %.1.lcssa.i
  %i.ado = shl i32 %i.acq, 1                      ; 2 uses
  %i.adp = mul i32 %i.acn, %i.acq
  %i.adq = and i32 %i.adi, -8
  %i.adr = add i32 %i.adq, 8                      ; 4 uses
  %i.ads = add i32 %i.h, -4
  %i.adt = zext nneg i32 %.1.lcssa.i to i64
  %i.adu = sext i32 %i.g to i64
  %i.adv = or disjoint i32 %i.adr, 3
  %i.adw = icmp slt i32 %i.adv, %i.h
  %wide.trip.count1752.i = zext i32 %i.d to i64   ; 10 uses
  %min.iters.check368 = icmp ult i32 %i.d, 4
  %n.vec370 = and i64 %wide.trip.count1752.i, 2147483644 ; 4 uses
  %i.adx = shl nuw nsw i64 %n.vec370, 4
  %cmp.n385 = icmp eq i64 %n.vec370, %wide.trip.count1752.i
  %min.iters.check351 = icmp ult i32 %i.d, 4
  %n.vec353 = and i64 %wide.trip.count1752.i, 2147483644 ; 4 uses
  %i.ady = shl nuw nsw i64 %n.vec353, 3
  %cmp.n364 = icmp eq i64 %n.vec353, %wide.trip.count1752.i
  %min.iters.check336 = icmp ult i32 %i.d, 4
  %n.vec338 = and i64 %wide.trip.count1752.i, 2147483644 ; 4 uses
  %i.adz = shl nuw nsw i64 %n.vec338, 2
  %cmp.n347 = icmp eq i64 %n.vec338, %wide.trip.count1752.i
  br label %_ZN4ncnn3MatD2Ev.exit1003.i

_ZN4ncnn3MatD2Ev.exit1004.i:                      ; preds = %._crit_edge1337.split.i, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i
  %indvars.iv1736.i = phi i64 [ %i.id, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1737.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1734.i = phi i32 [ %i.ie, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1735.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1699.i = phi i32 [ %i.hz, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1700.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1695.i = phi i32 [ %i.hy, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1696.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1691.i = phi i32 [ %i.hw, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1692.i, %._crit_edge1337.split.i ] ; 2 uses
  %indvars.iv1687.i = phi i32 [ %i.ht, %_ZN4ncnn3MatD2Ev.exit1004.lr.ph.i ], [ %indvars.iv.next1688.i, %._crit_edge1337.split.i ] ; 2 uses
  %i.aea = sext i32 %indvars.iv1687.i to i64
  %i.aeb = shl nsw i64 %i.aea, 2
  %scevgep1689.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aeb ; 2 uses
  %i.aec = sext i32 %indvars.iv1691.i to i64
  %i.aed = shl nsw i64 %i.aec, 2
  %scevgep1693.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aed ; 2 uses
  %i.aee = sext i32 %indvars.iv1695.i to i64
  %i.aef = shl nsw i64 %i.aee, 2
  %scevgep1697.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aef ; 2 uses
  %i.aeg = sext i32 %indvars.iv1699.i to i64
  %i.aeh = shl nsw i64 %i.aeg, 2
  %scevgep1701.i = getelementptr i8, ptr %scevgep1686.i, i64 %i.aeh ; 2 uses
  %i.aei = trunc nuw i64 %indvars.iv1736.i to i32 ; 5 uses
  %i.aej = mul i32 %i.gy, %i.aei
  %i.aek = sext i32 %i.aej to i64
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.aek ; 2 uses
  %i.aem = add i32 %i.aei, 1
  %i.aen = mul i32 %i.aem, %i.gy
  %i.aeo = sext i32 %i.aen to i64
  %i.aep = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.aeo ; 2 uses
  %i.aeq = add i32 %i.aei, 2
  %i.aer = mul i32 %i.aeq, %i.gy
  %i.aes = sext i32 %i.aer to i64
  %i.aet = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.aes ; 2 uses
  %i.aeu = mul i32 %indvars.iv1734.i, %i.gy
  %i.aev = sext i32 %i.aeu to i64
  %i.aew = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.aev ; 2 uses
  %i.aex = lshr i32 %i.aei, 3
  %i.aey = lshr i32 %i.aei, 2
  %i.aez = and i32 %i.aey, 1
  %i.afa = add nuw nsw i32 %i.aez, %i.aex
  %i.afb = zext nneg i32 %i.afa to i64
  %.reass1341.i = mul i64 %factor.op.mul1340.i, %i.afb
  %i.afc = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.reass1341.i ; 4 uses
  br i1 %i.he, label %.preheader1099.lr.ph.i, label %.preheader1102.i

.preheader1099.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1004.i
  br i1 %i.hf, label %.preheader1099.us.i, label %.preheader1102.thread.i

.preheader1099.us.i:                              ; preds = %.preheader1099.lr.ph.i, %._crit_edge1255.us.i
  %.09211262.us.i = phi i32 [ %i.all, %._crit_edge1255.us.i ], [ 0, %.preheader1099.lr.ph.i ]
  %.09251261.us.i = phi ptr [ %i.alg, %._crit_edge1255.us.i ], [ %i.afc, %.preheader1099.lr.ph.i ]
  %.09361260.us.i = phi ptr [ %i.alk, %._crit_edge1255.us.i ], [ %i.aew, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09391259.us.i = phi ptr [ %i.alj, %._crit_edge1255.us.i ], [ %i.aet, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09421258.us.i = phi ptr [ %i.ali, %._crit_edge1255.us.i ], [ %i.aep, %.preheader1099.lr.ph.i ] ; 2 uses
  %.09451257.us.i = phi ptr [ %i.alh, %._crit_edge1255.us.i ], [ %i.ael, %.preheader1099.lr.ph.i ] ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.preheader1099.us.i
  %indvars.iv1703.i = phi i64 [ 0, %.preheader1099.us.i ], [ %indvars.iv.next1704.i, %bb.ai ] ; 5 uses
  %.19261253.us.i = phi ptr [ %.09251261.us.i, %.preheader1099.us.i ], [ %i.alg, %bb.ai ] ; 33 uses
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.09451257.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %.09421258.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %.09391259.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %.09361260.us.i, i64 %indvars.iv1703.i ; 2 uses
  %i.afh = load i32, ptr %i.afd, align 4, !tbaa !53
  %i.afi = lshr i32 %i.afh, 16
  %i.afj = trunc nuw i32 %i.afi to i16
  store i16 %i.afj, ptr %.19261253.us.i, align 2, !tbaa !331
  %i.afk = load i32, ptr %i.afe, align 4, !tbaa !53
  %i.afl = lshr i32 %i.afk, 16
  %i.afm = trunc nuw i32 %i.afl to i16
  %i.afn = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 2
  store i16 %i.afm, ptr %i.afn, align 2, !tbaa !331
  %i.afo = load i32, ptr %i.aff, align 4, !tbaa !53
  %i.afp = lshr i32 %i.afo, 16
  %i.afq = trunc nuw i32 %i.afp to i16
  %i.afr = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 4
  store i16 %i.afq, ptr %i.afr, align 2, !tbaa !331
  %i.afs = load i32, ptr %i.afg, align 4, !tbaa !53
  %i.aft = lshr i32 %i.afs, 16
  %i.afu = trunc nuw i32 %i.aft to i16
  %i.afv = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 6
  store i16 %i.afu, ptr %i.afv, align 2, !tbaa !331
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %i.hg ; 2 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %i.hg ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %i.hg ; 2 uses
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.afg, i64 %i.hg ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 8
  %i.agb = load i32, ptr %i.afw, align 4, !tbaa !53
  %i.agc = lshr i32 %i.agb, 16
  %i.agd = trunc nuw i32 %i.agc to i16
  store i16 %i.agd, ptr %i.aga, align 2, !tbaa !331
  %i.age = load i32, ptr %i.afx, align 4, !tbaa !53
  %i.agf = lshr i32 %i.age, 16
  %i.agg = trunc nuw i32 %i.agf to i16
  %i.agh = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 10
  store i16 %i.agg, ptr %i.agh, align 2, !tbaa !331
  %i.agi = load i32, ptr %i.afy, align 4, !tbaa !53
  %i.agj = lshr i32 %i.agi, 16
  %i.agk = trunc nuw i32 %i.agj to i16
  %i.agl = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 12
  store i16 %i.agk, ptr %i.agl, align 2, !tbaa !331
  %i.agm = load i32, ptr %i.afz, align 4, !tbaa !53
  %i.agn = lshr i32 %i.agm, 16
  %i.ago = trunc nuw i32 %i.agn to i16
  %i.agp = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 14
  store i16 %i.ago, ptr %i.agp, align 2, !tbaa !331
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %i.hg ; 2 uses
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %i.hg ; 2 uses
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %i.hg ; 2 uses
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.afz, i64 %i.hg ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 16
  %i.agv = load i32, ptr %i.agq, align 4, !tbaa !53
  %i.agw = lshr i32 %i.agv, 16
  %i.agx = trunc nuw i32 %i.agw to i16
  store i16 %i.agx, ptr %i.agu, align 2, !tbaa !331
  %i.agy = load i32, ptr %i.agr, align 4, !tbaa !53
  %i.agz = lshr i32 %i.agy, 16
  %i.aha = trunc nuw i32 %i.agz to i16
  %i.ahb = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 18
  store i16 %i.aha, ptr %i.ahb, align 2, !tbaa !331
  %i.ahc = load i32, ptr %i.ags, align 4, !tbaa !53
  %i.ahd = lshr i32 %i.ahc, 16
  %i.ahe = trunc nuw i32 %i.ahd to i16
  %i.ahf = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 20
  store i16 %i.ahe, ptr %i.ahf, align 2, !tbaa !331
  %i.ahg = load i32, ptr %i.agt, align 4, !tbaa !53
  %i.ahh = lshr i32 %i.ahg, 16
  %i.ahi = trunc nuw i32 %i.ahh to i16
  %i.ahj = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 22
  store i16 %i.ahi, ptr %i.ahj, align 2, !tbaa !331
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %i.hg ; 2 uses
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.agr, i64 %i.hg ; 2 uses
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %i.hg ; 2 uses
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %i.hg ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 24
  %i.ahp = load i32, ptr %i.ahk, align 4, !tbaa !53
  %i.ahq = lshr i32 %i.ahp, 16
  %i.ahr = trunc nuw i32 %i.ahq to i16
  store i16 %i.ahr, ptr %i.aho, align 2, !tbaa !331
  %i.ahs = load i32, ptr %i.ahl, align 4, !tbaa !53
  %i.aht = lshr i32 %i.ahs, 16
  %i.ahu = trunc nuw i32 %i.aht to i16
  %i.ahv = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 26
  store i16 %i.ahu, ptr %i.ahv, align 2, !tbaa !331
  %i.ahw = load i32, ptr %i.ahm, align 4, !tbaa !53
  %i.ahx = lshr i32 %i.ahw, 16
  %i.ahy = trunc nuw i32 %i.ahx to i16
  %i.ahz = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 28
  store i16 %i.ahy, ptr %i.ahz, align 2, !tbaa !331
  %i.aia = load i32, ptr %i.ahn, align 4, !tbaa !53
  %i.aib = lshr i32 %i.aia, 16
  %i.aic = trunc nuw i32 %i.aib to i16
  %i.aid = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 30
  store i16 %i.aic, ptr %i.aid, align 2, !tbaa !331
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahk, i64 %i.hg ; 2 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %i.hg ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %i.hg ; 2 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.hg ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 32
  %i.aij = load i32, ptr %i.aie, align 4, !tbaa !53
  %i.aik = lshr i32 %i.aij, 16
  %i.ail = trunc nuw i32 %i.aik to i16
  store i16 %i.ail, ptr %i.aii, align 2, !tbaa !331
  %i.aim = load i32, ptr %i.aif, align 4, !tbaa !53
  %i.ain = lshr i32 %i.aim, 16
  %i.aio = trunc nuw i32 %i.ain to i16
  %i.aip = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 34
  store i16 %i.aio, ptr %i.aip, align 2, !tbaa !331
  %i.aiq = load i32, ptr %i.aig, align 4, !tbaa !53
  %i.air = lshr i32 %i.aiq, 16
  %i.ais = trunc nuw i32 %i.air to i16
  %i.ait = getelementptr inbounds nuw i8, ptr %.19261253.us.i, i64 36
  store i16 %i.ais, ptr %i.ait, align 2, !tbaa !331
  %i.aiu = load i32, ptr %i.aih, align 4, !tbaa !53
  %i.aiv = lshr i32 %i.aiu, 16
end_hunk_2
begin_hunk_3_@_ZN4ncnn21Convolution1D_x86_avx21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.ata = trunc nuw i32 %i.asz to i16
  store i16 %i.ata, ptr %.109351331.i, align 2, !tbaa !331
  %i.atb = load i32, ptr %i.asv, align 4, !tbaa !53
  %i.atc = lshr i32 %i.atb, 16
  %i.atd = trunc nuw i32 %i.atc to i16
  %i.ate = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 2
  store i16 %i.atd, ptr %i.ate, align 2, !tbaa !331
  %i.atf = load i32, ptr %i.asw, align 4, !tbaa !53
  %i.atg = lshr i32 %i.atf, 16
  %i.ath = trunc nuw i32 %i.atg to i16
  %i.ati = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 4
  store i16 %i.ath, ptr %i.ati, align 2, !tbaa !331
  %i.atj = load i32, ptr %i.asx, align 4, !tbaa !53
  %i.atk = lshr i32 %i.atj, 16
  %i.atl = trunc nuw i32 %i.atk to i16
  %i.atm = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 6
  store i16 %i.atl, ptr %i.atm, align 2, !tbaa !331
  %i.atn = getelementptr inbounds nuw i8, ptr %.109351331.i, i64 8 ; 2 uses
  %indvars.iv.next1729.i = add nuw nsw i64 %indvars.iv1728.i, 1 ; 2 uses
  %exitcond1732.not.i = icmp eq i64 %indvars.iv.next1729.i, %wide.trip.count1706.i
  br i1 %exitcond1732.not.i, label %._crit_edge1333.i, label %scalar.ph297, !llvm.loop !355

._crit_edge1337.split.i:                          ; preds = %._crit_edge1333.i, %.preheader1100.i, %.preheader1097.lr.ph.i
  %indvars.iv.next1737.i = add nuw nsw i64 %indvars.iv1736.i, 4 ; 3 uses
  %i.ato = icmp slt i64 %indvars.iv.next1737.i, %invariant.op.i
  %indvars.iv.next1688.i = add i32 %indvars.iv1687.i, %i.hu
  %indvars.iv.next1692.i = add i32 %indvars.iv1691.i, %i.hu
  %indvars.iv.next1696.i = add i32 %indvars.iv1695.i, %i.hu
  %indvars.iv.next1700.i = add i32 %indvars.iv1699.i, %i.hu
  %indvars.iv.next1735.i = add i32 %indvars.iv1734.i, 4
  br i1 %i.ato, label %_ZN4ncnn3MatD2Ev.exit1004.i, label %.preheader1095.loopexit.i, !llvm.loop !356

.preheader1087.loopexit.i:                        ; preds = %._crit_edge1400.split.i
  %i.atp = trunc nsw i64 %indvars.iv.next1776.i to i32
  br label %.preheader1087.i

.preheader1087.i:                                 ; preds = %.preheader1087.loopexit.i, %.preheader1095.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1095.i ], [ %i.atp, %.preheader1087.loopexit.i ] ; 3 uses
  %i.atq = icmp slt i32 %.2.lcssa.i, %i.g
  br i1 %i.atq, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1087.i
  %i.atr = load ptr, ptr %i.i, align 8, !tbaa !18 ; 2 uses
  %i.ats = mul i32 %i.h, %i.d                     ; 3 uses
  %i.att = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !357
  %i.atu = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.atv = load i64, ptr %i.atu, align 8, !tbaa !20, !noalias !357
  %i.atw = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.atx = load i64, ptr %i.atw, align 8, !tbaa !49, !noalias !357
  %factor.op.mul1462.i = mul i64 %i.atx, %i.atv
  %i.aty = icmp sgt i32 %i.h, 7
  %i.atz = icmp sgt i32 %i.d, 0                   ; 3 uses
  %i.aua = sext i32 %i.d to i64                   ; 22 uses
  %i.aub = shl i32 %i.d, 3
  %i.auc = sext i32 %i.aub to i64                 ; 2 uses
  %i.aud = shl i32 %i.d, 2
  %i.aue = sext i32 %i.aud to i64                 ; 2 uses
  %i.auf = shl i32 %i.d, 1
  %i.aug = sext i32 %i.auf to i64
  %i.auh = icmp slt i32 %i.d, 1
  %i.aui = add i32 %i.h, -8                       ; 2 uses
  %i.auj = lshr i32 %i.aui, 1
  %i.auk = and i32 %i.auj, 2147483644
  %narrow1839.i = add nuw i32 %i.auk, 4
  %i.aul = zext i32 %narrow1839.i to i64
  %i.aum = mul nsw i64 %i.aul, %i.auc
  %scevgep1778.i = getelementptr i8, ptr %i.atr, i64 %i.aum
  %i.aun = mul i32 %i.ats, %.2.lcssa.i
  %i.auo = and i32 %i.aui, -8
  %i.aup = add i32 %i.auo, 8                      ; 4 uses
  %i.auq = add i32 %i.h, -4
  %i.aur = sext i32 %.2.lcssa.i to i64
  %wide.trip.count1811.i = sext i32 %i.g to i64
  %i.aus = or disjoint i32 %i.aup, 3
  %i.aut = icmp slt i32 %i.aus, %i.h
  %wide.trip.count1786.i = zext i32 %i.d to i64   ; 15 uses
  %min.iters.check449 = icmp ult i32 %i.d, 4
  %n.vec451 = and i64 %wide.trip.count1786.i, 2147483644 ; 4 uses
  %i.auu = shl nuw nsw i64 %n.vec451, 4
  %cmp.n466 = icmp eq i64 %n.vec451, %wide.trip.count1786.i
  %min.iters.check432 = icmp ult i32 %i.d, 4
  %n.vec434 = and i64 %wide.trip.count1786.i, 2147483644 ; 4 uses
  %i.auv = shl nuw nsw i64 %n.vec434, 3
  %cmp.n445 = icmp eq i64 %n.vec434, %wide.trip.count1786.i
  %min.iters.check413 = icmp ult i32 %i.d, 8
  %n.vec415 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.auw = shl nuw nsw i64 %n.vec415, 2
  %cmp.n428 = icmp eq i64 %n.vec415, %wide.trip.count1786.i
  %min.iters.check389 = icmp ult i32 %i.d, 4
  %min.iters.check390 = icmp ult i32 %i.d, 32
  %i.aux = and i64 %wide.trip.count1786.i, 28
  %n.vec392 = and i64 %wide.trip.count1786.i, 2147483616 ; 5 uses
  %i.auy = shl nuw nsw i64 %n.vec392, 1
  %cmp.n402 = icmp eq i64 %n.vec392, %wide.trip.count1786.i
  %min.epilog.iters.check = icmp eq i64 %i.aux, 0
  %n.vec404 = and i64 %wide.trip.count1786.i, 2147483644 ; 4 uses
  %i.auz = shl nuw nsw i64 %n.vec404, 1
  %cmp.n409 = icmp eq i64 %n.vec404, %wide.trip.count1786.i
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1003.i:                      ; preds = %._crit_edge1400.split.i, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i
  %indvars.iv1775.i = phi i64 [ %i.adt, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1776.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1746.i = phi i32 [ %i.adp, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1747.i, %._crit_edge1400.split.i ] ; 2 uses
  %indvars.iv1742.i = phi i32 [ %i.adn, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %indvars.iv.next1743.i, %._crit_edge1400.split.i ] ; 2 uses
  %i.ava = phi i32 [ %i.acn, %_ZN4ncnn3MatD2Ev.exit1003.lr.ph.i ], [ %i.bdn, %._crit_edge1400.split.i ]
  %i.avb = sext i32 %indvars.iv1742.i to i64
  %i.avc = shl nsw i64 %i.avb, 2
  %scevgep1744.i = getelementptr i8, ptr %scevgep1741.i, i64 %i.avc ; 2 uses
  %i.avd = sext i32 %indvars.iv1746.i to i64
  %i.ave = shl nsw i64 %i.avd, 2
  %scevgep1748.i = getelementptr i8, ptr %scevgep1741.i, i64 %i.ave ; 2 uses
  %i.avf = trunc i64 %indvars.iv1775.i to i32     ; 4 uses
  %i.avg = mul i32 %i.acq, %i.avf
  %i.avh = sext i32 %i.avg to i64
  %i.avi = getelementptr inbounds [4 x i8], ptr %i.acp, i64 %i.avh ; 2 uses
  %i.avj = mul i32 %i.ava, %i.acq
  %i.avk = sext i32 %i.avj to i64
  %i.avl = getelementptr inbounds [4 x i8], ptr %i.acp, i64 %i.avk ; 2 uses
  %i.avm = lshr i32 %i.avf, 3
  %i.avn = lshr i32 %i.avf, 2
  %i.avo = and i32 %i.avn, 1
  %i.avp = add nuw nsw i32 %i.avo, %i.avm
  %i.avq = lshr i32 %i.avf, 1
  %i.avr = and i32 %i.avq, 1
  %i.avs = add nuw nsw i32 %i.avp, %i.avr
  %i.avt = zext nneg i32 %i.avs to i64
  %.reass1404.i = mul i64 %factor.op.mul1403.i, %i.avt
  %i.avu = getelementptr inbounds nuw i8, ptr %i.acr, i64 %.reass1404.i ; 4 uses
  br i1 %i.acw, label %.preheader1091.lr.ph.i, label %.preheader1094.i

.preheader1091.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1003.i
  br i1 %i.acx, label %.preheader1091.us.i, label %.preheader1094.thread.i

.preheader1091.us.i:                              ; preds = %.preheader1091.lr.ph.i, %._crit_edge1344.us.i
  %.08621349.us.i = phi i32 [ %i.axw, %._crit_edge1344.us.i ], [ 0, %.preheader1091.lr.ph.i ]
  %.08661348.us.i = phi ptr [ %i.axt, %._crit_edge1344.us.i ], [ %i.avu, %.preheader1091.lr.ph.i ]
  %.08751347.us.i = phi ptr [ %i.axv, %._crit_edge1344.us.i ], [ %i.avl, %.preheader1091.lr.ph.i ] ; 2 uses
  %.08781346.us.i = phi ptr [ %i.axu, %._crit_edge1344.us.i ], [ %i.avi, %.preheader1091.lr.ph.i ] ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.preheader1091.us.i
  %indvars.iv1749.i = phi i64 [ 0, %.preheader1091.us.i ], [ %indvars.iv.next1750.i, %bb.ak ] ; 3 uses
  %.18671342.us.i = phi ptr [ %.08661348.us.i, %.preheader1091.us.i ], [ %i.axt, %bb.ak ] ; 2 uses
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %indvars.iv1749.i ; 8 uses
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %indvars.iv1749.i ; 8 uses
  %i.avx = load i32, ptr %i.avv, align 4, !tbaa !53
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.avv, i64 %i.acy
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !53
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %i.avv, i64 %2
  %i.awb = load i32, ptr %i.awa, align 4, !tbaa !53
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %i.avv, i64 %3
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !53
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.avv, i64 %4
  %i.awf = load i32, ptr %i.awe, align 4, !tbaa !53
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.avv, i64 %5
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !53
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.avv, i64 %6
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !53
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.avv, i64 %7
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !53
  %i.awm = load i32, ptr %i.avw, align 4, !tbaa !53
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %i.avw, i64 %i.acy
  %i.awo = load i32, ptr %i.awn, align 4, !tbaa !53
  %i.awp = getelementptr inbounds nuw [4 x i8], ptr %i.avw, i64 %2
  %i.awq = load i32, ptr %i.awp, align 4, !tbaa !53
  %i.awr = getelementptr inbounds nuw [4 x i8], ptr %i.avw, i64 %3
  %i.aws = load i32, ptr %i.awr, align 4, !tbaa !53
  %i.awt = getelementptr inbounds nuw [4 x i8], ptr %i.avw, i64 %4
  %i.awu = load i32, ptr %i.awt, align 4, !tbaa !53
  %i.awv = getelementptr inbounds nuw [4 x i8], ptr %i.avw, i64 %5
  %i.aww = load i32, ptr %i.awv, align 4, !tbaa !53
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %i.avw, i64 %6
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !53
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %i.avw, i64 %7
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !53
  %i.axb = insertelement <16 x i32> poison, i32 %i.avx, i64 0
  %i.axc = insertelement <16 x i32> %i.axb, i32 %i.avz, i64 1
  %i.axd = insertelement <16 x i32> %i.axc, i32 %i.awb, i64 2
  %i.axe = insertelement <16 x i32> %i.axd, i32 %i.awd, i64 3
  %i.axf = insertelement <16 x i32> %i.axe, i32 %i.awf, i64 4
  %i.axg = insertelement <16 x i32> %i.axf, i32 %i.awh, i64 5
  %i.axh = insertelement <16 x i32> %i.axg, i32 %i.awj, i64 6
  %i.axi = insertelement <16 x i32> %i.axh, i32 %i.awl, i64 7
  %i.axj = insertelement <16 x i32> %i.axi, i32 %i.awm, i64 8
  %i.axk = insertelement <16 x i32> %i.axj, i32 %i.awo, i64 9
  %i.axl = insertelement <16 x i32> %i.axk, i32 %i.awq, i64 10
  %i.axm = insertelement <16 x i32> %i.axl, i32 %i.aws, i64 11
  %i.axn = insertelement <16 x i32> %i.axm, i32 %i.awu, i64 12
  %i.axo = insertelement <16 x i32> %i.axn, i32 %i.aww, i64 13
  %i.axp = insertelement <16 x i32> %i.axo, i32 %i.awy, i64 14
  %i.axq = insertelement <16 x i32> %i.axp, i32 %i.axa, i64 15
  %i.axr = lshr <16 x i32> %i.axq, splat (i32 16)
  %i.axs = trunc nuw <16 x i32> %i.axr to <16 x i16>
  store <16 x i16> %i.axs, ptr %.18671342.us.i, align 2, !tbaa !331
  %i.axt = getelementptr inbounds nuw i8, ptr %.18671342.us.i, i64 32 ; 3 uses
  %indvars.iv.next1750.i = add nuw nsw i64 %indvars.iv1749.i, 1 ; 2 uses
  %exitcond1753.not.i = icmp eq i64 %indvars.iv.next1750.i, %wide.trip.count1752.i
  br i1 %exitcond1753.not.i, label %._crit_edge1344.us.i, label %bb.ak, !llvm.loop !360

._crit_edge1344.us.i:                             ; preds = %bb.ak
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %.08781346.us.i, i64 %i.adg ; 2 uses
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %.08751347.us.i, i64 %i.adg ; 2 uses
  %i.axw = add nuw nsw i32 %.08621349.us.i, 8     ; 2 uses
  %i.axx = or disjoint i32 %i.axw, 7
  %i.axy = icmp slt i32 %i.axx, %i.h
  br i1 %i.axy, label %.preheader1091.us.i, label %.preheader1094.i, !llvm.loop !361

.preheader1094.i:                                 ; preds = %._crit_edge1344.us.i, %_ZN4ncnn3MatD2Ev.exit1003.i
  %.0878.lcssa.i = phi ptr [ %i.avi, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.axu, %._crit_edge1344.us.i ] ; 3 uses
  %.0875.lcssa.i = phi ptr [ %i.avl, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.axv, %._crit_edge1344.us.i ] ; 3 uses
  %.0866.lcssa.i = phi ptr [ %i.avu, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.axt, %._crit_edge1344.us.i ] ; 3 uses
  %.0862.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1003.i ], [ %i.adr, %._crit_edge1344.us.i ] ; 4 uses
  %i.axz = or disjoint i32 %.0862.lcssa.i, 3
  %i.aya = icmp slt i32 %i.axz, %i.h
  br i1 %i.aya, label %.preheader1090.lr.ph.i, label %.preheader1093.i

.preheader1094.thread.i:                          ; preds = %.preheader1091.lr.ph.i
  br i1 %i.adw, label %.preheader1090.preheader.i, label %.preheader1093.i

.preheader1090.lr.ph.i:                           ; preds = %.preheader1094.i
  br i1 %i.acx, label %.preheader1090.us.i, label %.preheader1090.preheader.i

.preheader1090.preheader.i:                       ; preds = %.preheader1090.lr.ph.i, %.preheader1094.thread.i
  %.0878.lcssa19261937.i = phi ptr [ %.0878.lcssa.i, %.preheader1090.lr.ph.i ], [ %scevgep1744.i, %.preheader1094.thread.i ]
  %.0875.lcssa19271936.i = phi ptr [ %.0875.lcssa.i, %.preheader1090.lr.ph.i ], [ %scevgep1748.i, %.preheader1094.thread.i ]
  %.0866.lcssa19281935.i = phi ptr [ %.0866.lcssa.i, %.preheader1090.lr.ph.i ], [ %i.avu, %.preheader1094.thread.i ]
  %.0862.lcssa19291934.i = phi i32 [ %.0862.lcssa.i, %.preheader1090.lr.ph.i ], [ %i.adr, %.preheader1094.thread.i ] ; 2 uses
  %i.ayb = sub i32 %i.ads, %.0862.lcssa19291934.i
  %i.ayc = and i32 %i.ayb, -4                     ; 2 uses
  %i.ayd = zext i32 %i.ayc to i64
  %i.aye = add nuw nsw i64 %i.ayd, 4
  %i.ayf = mul nsw i64 %i.aye, %4                 ; 2 uses
  %scevgep1754.i = getelementptr i8, ptr %.0878.lcssa19261937.i, i64 %i.ayf
  %scevgep1755.i = getelementptr i8, ptr %.0875.lcssa19271936.i, i64 %i.ayf
  %i.ayg = add i32 %.0862.lcssa19291934.i, 4
  %i.ayh = add i32 %i.ayg, %i.ayc
  br label %.preheader1093.i

.preheader1090.us.i:                              ; preds = %.preheader1090.lr.ph.i, %._crit_edge1360.us.i
  %.18631365.us.i = phi i32 [ %i.baz, %._crit_edge1360.us.i ], [ %.0862.lcssa.i, %.preheader1090.lr.ph.i ]
  %.28681364.us.i = phi ptr [ %.lcssa232, %._crit_edge1360.us.i ], [ %.0866.lcssa.i, %.preheader1090.lr.ph.i ] ; 3 uses
  %.18761363.us.i = phi ptr [ %i.bay, %._crit_edge1360.us.i ], [ %.0875.lcssa.i, %.preheader1090.lr.ph.i ] ; 3 uses
  %.18791362.us.i = phi ptr [ %i.bax, %._crit_edge1360.us.i ], [ %.0878.lcssa.i, %.preheader1090.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check368, label %scalar.ph367.preheader, label %vector.ph369

vector.ph369:                                     ; preds = %.preheader1090.us.i
  %i.ayi = getelementptr i8, ptr %.28681364.us.i, i64 %i.adx ; 2 uses
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph369
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next383, %vector.body371 ] ; 4 uses
  %i.ayj = shl i64 %index372, 4
  %next.gep373 = getelementptr i8, ptr %.28681364.us.i, i64 %i.ayj
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %index372 ; 4 uses
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %index372 ; 4 uses
  %wide.load374 = load <4 x i32>, ptr %i.ayk, align 4, !tbaa !53
  %i.aym = lshr <4 x i32> %wide.load374, splat (i32 16)
  %i.ayn = getelementptr inbounds nuw [4 x i8], ptr %i.ayk, i64 %i.acy
  %wide.load375 = load <4 x i32>, ptr %i.ayn, align 4, !tbaa !53
  %i.ayo = lshr <4 x i32> %wide.load375, splat (i32 16)
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %i.ayk, i64 %2
  %wide.load376 = load <4 x i32>, ptr %i.ayp, align 4, !tbaa !53
  %i.ayq = lshr <4 x i32> %wide.load376, splat (i32 16)
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %i.ayk, i64 %3
  %wide.load377 = load <4 x i32>, ptr %i.ayr, align 4, !tbaa !53
  %i.ays = lshr <4 x i32> %wide.load377, splat (i32 16)
  %wide.load378 = load <4 x i32>, ptr %i.ayl, align 4, !tbaa !53
  %i.ayt = lshr <4 x i32> %wide.load378, splat (i32 16)
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %i.ayl, i64 %i.acy
  %wide.load379 = load <4 x i32>, ptr %i.ayu, align 4, !tbaa !53
  %i.ayv = lshr <4 x i32> %wide.load379, splat (i32 16)
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.ayl, i64 %2
  %wide.load380 = load <4 x i32>, ptr %i.ayw, align 4, !tbaa !53
  %i.ayx = lshr <4 x i32> %wide.load380, splat (i32 16)
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.ayl, i64 %3
  %wide.load381 = load <4 x i32>, ptr %i.ayy, align 4, !tbaa !53
  %i.ayz = lshr <4 x i32> %wide.load381, splat (i32 16)
  %i.aza = shufflevector <4 x i32> %i.aym, <4 x i32> %i.ayo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.azb = shufflevector <4 x i32> %i.ayq, <4 x i32> %i.ays, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.azc = shufflevector <4 x i32> %i.ayt, <4 x i32> %i.ayv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.azd = shufflevector <4 x i32> %i.ayx, <4 x i32> %i.ayz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aze = shufflevector <8 x i32> %i.aza, <8 x i32> %i.azb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azf = trunc nuw <16 x i32> %i.aze to <16 x i16>
  %i.azg = shufflevector <8 x i32> %i.azc, <8 x i32> %i.azd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azh = trunc nuw <16 x i32> %i.azg to <16 x i16>
  %interleaved.vec382 = shufflevector <16 x i16> %i.azf, <16 x i16> %i.azh, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec382, ptr %next.gep373, align 2, !tbaa !331
  %index.next383 = add nuw i64 %index372, 4       ; 2 uses
  %i.azi = icmp eq i64 %index.next383, %n.vec370
  br i1 %i.azi, label %middle.block384, label %vector.body371, !llvm.loop !362

middle.block384:                                  ; preds = %vector.body371
  br i1 %cmp.n385, label %._crit_edge1360.us.i, label %scalar.ph367.preheader

scalar.ph367.preheader:                           ; preds = %.preheader1090.us.i, %middle.block384
  %indvars.iv1756.i.ph = phi i64 [ 0, %.preheader1090.us.i ], [ %n.vec370, %middle.block384 ]
  %.38691358.us.i.ph = phi ptr [ %.28681364.us.i, %.preheader1090.us.i ], [ %i.ayi, %middle.block384 ]
  br label %scalar.ph367

scalar.ph367:                                     ; preds = %scalar.ph367.preheader, %scalar.ph367
  %indvars.iv1756.i = phi i64 [ %indvars.iv.next1757.i, %scalar.ph367 ], [ %indvars.iv1756.i.ph, %scalar.ph367.preheader ] ; 3 uses
  %.38691358.us.i = phi ptr [ %i.baw, %scalar.ph367 ], [ %.38691358.us.i.ph, %scalar.ph367.preheader ] ; 9 uses
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %indvars.iv1756.i ; 4 uses
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %indvars.iv1756.i ; 4 uses
  %i.azl = load i32, ptr %i.azj, align 4, !tbaa !53
  %i.azm = lshr i32 %i.azl, 16
  %i.azn = trunc nuw i32 %i.azm to i16
  store i16 %i.azn, ptr %.38691358.us.i, align 2, !tbaa !331
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %i.azj, i64 %i.acy
  %i.azp = load i32, ptr %i.azo, align 4, !tbaa !53
  %i.azq = lshr i32 %i.azp, 16
  %i.azr = trunc nuw i32 %i.azq to i16
  %i.azs = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 2
  store i16 %i.azr, ptr %i.azs, align 2, !tbaa !331
  %i.azt = getelementptr inbounds nuw [4 x i8], ptr %i.azj, i64 %2
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !53
  %i.azv = lshr i32 %i.azu, 16
  %i.azw = trunc nuw i32 %i.azv to i16
  %i.azx = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 4
  store i16 %i.azw, ptr %i.azx, align 2, !tbaa !331
  %i.azy = getelementptr inbounds nuw [4 x i8], ptr %i.azj, i64 %3
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !53
  %i.baa = lshr i32 %i.azz, 16
  %i.bab = trunc nuw i32 %i.baa to i16
  %i.bac = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 6
  store i16 %i.bab, ptr %i.bac, align 2, !tbaa !331
  %i.bad = load i32, ptr %i.azk, align 4, !tbaa !53
  %i.bae = lshr i32 %i.bad, 16
  %i.baf = trunc nuw i32 %i.bae to i16
  %i.bag = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 8
  store i16 %i.baf, ptr %i.bag, align 2, !tbaa !331
  %i.bah = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %i.acy
  %i.bai = load i32, ptr %i.bah, align 4, !tbaa !53
  %i.baj = lshr i32 %i.bai, 16
  %i.bak = trunc nuw i32 %i.baj to i16
  %i.bal = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 10
  store i16 %i.bak, ptr %i.bal, align 2, !tbaa !331
  %i.bam = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %2
  %i.ban = load i32, ptr %i.bam, align 4, !tbaa !53
  %i.bao = lshr i32 %i.ban, 16
  %i.bap = trunc nuw i32 %i.bao to i16
  %i.baq = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 12
  store i16 %i.bap, ptr %i.baq, align 2, !tbaa !331
  %i.bar = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %3
  %i.bas = load i32, ptr %i.bar, align 4, !tbaa !53
  %i.bat = lshr i32 %i.bas, 16
  %i.bau = trunc nuw i32 %i.bat to i16
  %i.bav = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 14
  store i16 %i.bau, ptr %i.bav, align 2, !tbaa !331
  %i.baw = getelementptr inbounds nuw i8, ptr %.38691358.us.i, i64 16 ; 2 uses
  %indvars.iv.next1757.i = add nuw nsw i64 %indvars.iv1756.i, 1 ; 2 uses
  %exitcond1760.not.i = icmp eq i64 %indvars.iv.next1757.i, %wide.trip.count1752.i
  br i1 %exitcond1760.not.i, label %._crit_edge1360.us.i, label %scalar.ph367, !llvm.loop !363

._crit_edge1360.us.i:                             ; preds = %scalar.ph367, %middle.block384
  %.lcssa232 = phi ptr [ %i.ayi, %middle.block384 ], [ %i.baw, %scalar.ph367 ] ; 2 uses
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %.18791362.us.i, i64 %4 ; 2 uses
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %.18761363.us.i, i64 %4 ; 2 uses
  %i.baz = add nuw nsw i32 %.18631365.us.i, 4     ; 3 uses
  %i.bba = or disjoint i32 %i.baz, 3
  %i.bbb = icmp slt i32 %i.bba, %i.h
  br i1 %i.bbb, label %.preheader1090.us.i, label %.preheader1093.i, !llvm.loop !364

.preheader1093.i:                                 ; preds = %._crit_edge1360.us.i, %.preheader1090.preheader.i, %.preheader1094.thread.i, %.preheader1094.i
  %.1879.lcssa.i = phi ptr [ %.0878.lcssa.i, %.preheader1094.i ], [ %scevgep1744.i, %.preheader1094.thread.i ], [ %scevgep1754.i, %.preheader1090.preheader.i ], [ %i.bax, %._crit_edge1360.us.i ] ; 2 uses
  %.1876.lcssa.i = phi ptr [ %.0875.lcssa.i, %.preheader1094.i ], [ %scevgep1748.i, %.preheader1094.thread.i ], [ %scevgep1755.i, %.preheader1090.preheader.i ], [ %i.bay, %._crit_edge1360.us.i ] ; 2 uses
  %.2868.lcssa.i = phi ptr [ %.0866.lcssa.i, %.preheader1094.i ], [ %i.avu, %.preheader1094.thread.i ], [ %.0866.lcssa19281935.i, %.preheader1090.preheader.i ], [ %.lcssa232, %._crit_edge1360.us.i ] ; 2 uses
  %.1863.lcssa.i = phi i32 [ %.0862.lcssa.i, %.preheader1094.i ], [ %i.adr, %.preheader1094.thread.i ], [ %i.ayh, %.preheader1090.preheader.i ], [ %i.baz, %._crit_edge1360.us.i ] ; 3 uses
  %i.bbc = or disjoint i32 %.1863.lcssa.i, 1
  %i.bbd = icmp slt i32 %i.bbc, %i.h
  br i1 %i.bbd, label %.preheader1089.lr.ph.i, label %.preheader1092.i

.preheader1089.lr.ph.i:                           ; preds = %.preheader1093.i
  br i1 %i.acx, label %.preheader1089.us.i, label %._crit_edge1400.split.i

.preheader1089.us.i:                              ; preds = %.preheader1089.lr.ph.i, %._crit_edge1380.us.i
  %.28641385.us.i = phi i32 [ %i.bco, %._crit_edge1380.us.i ], [ %.1863.lcssa.i, %.preheader1089.lr.ph.i ]
  %.48701384.us.i = phi ptr [ %.lcssa236, %._crit_edge1380.us.i ], [ %.2868.lcssa.i, %.preheader1089.lr.ph.i ] ; 3 uses
  %.28771383.us.i = phi ptr [ %i.bcn, %._crit_edge1380.us.i ], [ %.1876.lcssa.i, %.preheader1089.lr.ph.i ] ; 3 uses
  %.28801382.us.i = phi ptr [ %i.bcm, %._crit_edge1380.us.i ], [ %.1879.lcssa.i, %.preheader1089.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check351, label %scalar.ph350.preheader, label %vector.ph352

vector.ph352:                                     ; preds = %.preheader1089.us.i
  %i.bbe = getelementptr i8, ptr %.48701384.us.i, i64 %i.ady ; 2 uses
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next362, %vector.body354 ] ; 4 uses
  %i.bbf = shl i64 %index355, 3
  %next.gep356 = getelementptr i8, ptr %.48701384.us.i, i64 %i.bbf
  %i.bbg = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %index355 ; 2 uses
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %index355 ; 2 uses
  %wide.load357 = load <4 x i32>, ptr %i.bbg, align 4, !tbaa !53
  %i.bbi = lshr <4 x i32> %wide.load357, splat (i32 16)
  %wide.load358 = load <4 x i32>, ptr %i.bbh, align 4, !tbaa !53
  %i.bbj = lshr <4 x i32> %wide.load358, splat (i32 16)
  %i.bbk = getelementptr inbounds nuw [4 x i8], ptr %i.bbg, i64 %i.acy
  %i.bbl = getelementptr inbounds nuw [4 x i8], ptr %i.bbh, i64 %i.acy
  %wide.load359 = load <4 x i32>, ptr %i.bbk, align 4, !tbaa !53
  %i.bbm = lshr <4 x i32> %wide.load359, splat (i32 16)
  %wide.load360 = load <4 x i32>, ptr %i.bbl, align 4, !tbaa !53
  %i.bbn = lshr <4 x i32> %wide.load360, splat (i32 16)
  %i.bbo = shufflevector <4 x i32> %i.bbi, <4 x i32> %i.bbj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bbp = shufflevector <4 x i32> %i.bbm, <4 x i32> %i.bbn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bbq = shufflevector <8 x i32> %i.bbo, <8 x i32> %i.bbp, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec361 = trunc nuw <16 x i32> %i.bbq to <16 x i16>
  store <16 x i16> %interleaved.vec361, ptr %next.gep356, align 2, !tbaa !331
  %index.next362 = add nuw i64 %index355, 4       ; 2 uses
  %i.bbr = icmp eq i64 %index.next362, %n.vec353
  br i1 %i.bbr, label %middle.block363, label %vector.body354, !llvm.loop !365

middle.block363:                                  ; preds = %vector.body354
  br i1 %cmp.n364, label %._crit_edge1380.us.i, label %scalar.ph350.preheader

scalar.ph350.preheader:                           ; preds = %.preheader1089.us.i, %middle.block363
  %indvars.iv1764.i.ph = phi i64 [ 0, %.preheader1089.us.i ], [ %n.vec353, %middle.block363 ]
  %.58711378.us.i.ph = phi ptr [ %.48701384.us.i, %.preheader1089.us.i ], [ %i.bbe, %middle.block363 ]
  br label %scalar.ph350

scalar.ph350:                                     ; preds = %scalar.ph350.preheader, %scalar.ph350
  %indvars.iv1764.i = phi i64 [ %indvars.iv.next1765.i, %scalar.ph350 ], [ %indvars.iv1764.i.ph, %scalar.ph350.preheader ] ; 3 uses
  %.58711378.us.i = phi ptr [ %i.bcl, %scalar.ph350 ], [ %.58711378.us.i.ph, %scalar.ph350.preheader ] ; 5 uses
  %i.bbs = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %indvars.iv1764.i ; 2 uses
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %indvars.iv1764.i ; 2 uses
  %i.bbu = load i32, ptr %i.bbs, align 4, !tbaa !53
  %i.bbv = lshr i32 %i.bbu, 16
  %i.bbw = trunc nuw i32 %i.bbv to i16
  store i16 %i.bbw, ptr %.58711378.us.i, align 2, !tbaa !331
  %i.bbx = load i32, ptr %i.bbt, align 4, !tbaa !53
  %i.bby = lshr i32 %i.bbx, 16
  %i.bbz = trunc nuw i32 %i.bby to i16
  %i.bca = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 2
  store i16 %i.bbz, ptr %i.bca, align 2, !tbaa !331
  %i.bcb = getelementptr inbounds nuw [4 x i8], ptr %i.bbs, i64 %i.acy
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %i.bbt, i64 %i.acy
  %i.bcd = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 4
  %i.bce = load i32, ptr %i.bcb, align 4, !tbaa !53
  %i.bcf = lshr i32 %i.bce, 16
  %i.bcg = trunc nuw i32 %i.bcf to i16
  store i16 %i.bcg, ptr %i.bcd, align 2, !tbaa !331
  %i.bch = load i32, ptr %i.bcc, align 4, !tbaa !53
  %i.bci = lshr i32 %i.bch, 16
  %i.bcj = trunc nuw i32 %i.bci to i16
  %i.bck = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 6
  store i16 %i.bcj, ptr %i.bck, align 2, !tbaa !331
  %i.bcl = getelementptr inbounds nuw i8, ptr %.58711378.us.i, i64 8 ; 2 uses
  %indvars.iv.next1765.i = add nuw nsw i64 %indvars.iv1764.i, 1 ; 2 uses
  %exitcond1768.not.i = icmp eq i64 %indvars.iv.next1765.i, %wide.trip.count1752.i
  br i1 %exitcond1768.not.i, label %._crit_edge1380.us.i, label %scalar.ph350, !llvm.loop !366

._crit_edge1380.us.i:                             ; preds = %scalar.ph350, %middle.block363
  %.lcssa236 = phi ptr [ %i.bbe, %middle.block363 ], [ %i.bcl, %scalar.ph350 ] ; 2 uses
  %i.bcm = getelementptr inbounds nuw [4 x i8], ptr %.28801382.us.i, i64 %2 ; 2 uses
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %.28771383.us.i, i64 %2 ; 2 uses
  %i.bco = add nuw nsw i32 %.28641385.us.i, 2     ; 3 uses
  %i.bcp = or disjoint i32 %i.bco, 1
  %i.bcq = icmp slt i32 %i.bcp, %i.h
  br i1 %i.bcq, label %.preheader1089.us.i, label %.preheader1092.i, !llvm.loop !367

.preheader1092.i:                                 ; preds = %._crit_edge1380.us.i, %.preheader1093.i
  %.2880.lcssa.i = phi ptr [ %.1879.lcssa.i, %.preheader1093.i ], [ %i.bcm, %._crit_edge1380.us.i ] ; 2 uses
  %.2877.lcssa.i = phi ptr [ %.1876.lcssa.i, %.preheader1093.i ], [ %i.bcn, %._crit_edge1380.us.i ] ; 2 uses
  %.4870.lcssa.i = phi ptr [ %.2868.lcssa.i, %.preheader1093.i ], [ %.lcssa236, %._crit_edge1380.us.i ]
  %.2864.lcssa.i = phi i32 [ %.1863.lcssa.i, %.preheader1093.i ], [ %i.bco, %._crit_edge1380.us.i ] ; 2 uses
  %i.bcr = icmp sge i32 %.2864.lcssa.i, %i.h
  %brmerge1470.i = or i1 %i.adh, %i.bcr
  br i1 %brmerge1470.i, label %._crit_edge1400.split.i, label %.preheader1088.i

.preheader1088.i:                                 ; preds = %.preheader1092.i, %._crit_edge1396.i
  %.38651399.i = phi i32 [ %i.bda, %._crit_edge1396.i ], [ %.2864.lcssa.i, %.preheader1092.i ]
  %.78731398.i = phi ptr [ %.lcssa240, %._crit_edge1396.i ], [ %.4870.lcssa.i, %.preheader1092.i ] ; 3 uses
  br i1 %min.iters.check336, label %scalar.ph335.preheader, label %vector.ph337

vector.ph337:                                     ; preds = %.preheader1088.i
  %i.bcs = getelementptr i8, ptr %.78731398.i, i64 %i.adz ; 2 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph337
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next345, %vector.body339 ] ; 4 uses
  %i.bct = shl i64 %index340, 2
  %next.gep341 = getelementptr i8, ptr %.78731398.i, i64 %i.bct
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %.2880.lcssa.i, i64 %index340
  %i.bcv = getelementptr inbounds nuw [4 x i8], ptr %.2877.lcssa.i, i64 %index340
  %wide.load342 = load <4 x i32>, ptr %i.bcu, align 4, !tbaa !53
  %i.bcw = lshr <4 x i32> %wide.load342, splat (i32 16)
  %wide.load343 = load <4 x i32>, ptr %i.bcv, align 4, !tbaa !53
  %i.bcx = lshr <4 x i32> %wide.load343, splat (i32 16)
  %i.bcy = shufflevector <4 x i32> %i.bcw, <4 x i32> %i.bcx, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec344 = trunc nuw <8 x i32> %i.bcy to <8 x i16>
  store <8 x i16> %interleaved.vec344, ptr %next.gep341, align 2, !tbaa !331
  %index.next345 = add nuw i64 %index340, 4       ; 2 uses
  %i.bcz = icmp eq i64 %index.next345, %n.vec338
  br i1 %i.bcz, label %middle.block346, label %vector.body339, !llvm.loop !368

middle.block346:                                  ; preds = %vector.body339
  br i1 %cmp.n347, label %._crit_edge1396.i, label %scalar.ph335.preheader

scalar.ph335.preheader:                           ; preds = %.preheader1088.i, %middle.block346
  %indvars.iv1769.i.ph = phi i64 [ 0, %.preheader1088.i ], [ %n.vec338, %middle.block346 ]
  %.88741394.i.ph = phi ptr [ %.78731398.i, %.preheader1088.i ], [ %i.bcs, %middle.block346 ]
  br label %scalar.ph335

._crit_edge1396.i:                                ; preds = %scalar.ph335, %middle.block346
  %.lcssa240 = phi ptr [ %i.bcs, %middle.block346 ], [ %i.bdk, %scalar.ph335 ]
  %i.bda = add nuw nsw i32 %.38651399.i, 1        ; 2 uses
  %exitcond1774.not.i = icmp eq i32 %i.bda, %i.h
  br i1 %exitcond1774.not.i, label %._crit_edge1400.split.i, label %.preheader1088.i, !llvm.loop !369

scalar.ph335:                                     ; preds = %scalar.ph335.preheader, %scalar.ph335
  %indvars.iv1769.i = phi i64 [ %indvars.iv.next1770.i, %scalar.ph335 ], [ %indvars.iv1769.i.ph, %scalar.ph335.preheader ] ; 3 uses
  %.88741394.i = phi ptr [ %i.bdk, %scalar.ph335 ], [ %.88741394.i.ph, %scalar.ph335.preheader ] ; 3 uses
  %i.bdb = getelementptr inbounds nuw [4 x i8], ptr %.2880.lcssa.i, i64 %indvars.iv1769.i
  %i.bdc = getelementptr inbounds nuw [4 x i8], ptr %.2877.lcssa.i, i64 %indvars.iv1769.i
  %i.bdd = load i32, ptr %i.bdb, align 4, !tbaa !53
  %i.bde = lshr i32 %i.bdd, 16
  %i.bdf = trunc nuw i32 %i.bde to i16
  store i16 %i.bdf, ptr %.88741394.i, align 2, !tbaa !331
  %i.bdg = load i32, ptr %i.bdc, align 4, !tbaa !53
  %i.bdh = lshr i32 %i.bdg, 16
  %i.bdi = trunc nuw i32 %i.bdh to i16
  %i.bdj = getelementptr inbounds nuw i8, ptr %.88741394.i, i64 2
  store i16 %i.bdi, ptr %i.bdj, align 2, !tbaa !331
  %i.bdk = getelementptr inbounds nuw i8, ptr %.88741394.i, i64 4 ; 2 uses
  %indvars.iv.next1770.i = add nuw nsw i64 %indvars.iv1769.i, 1 ; 2 uses
  %exitcond1773.not.i = icmp eq i64 %indvars.iv.next1770.i, %wide.trip.count1752.i
  br i1 %exitcond1773.not.i, label %._crit_edge1396.i, label %scalar.ph335, !llvm.loop !370

._crit_edge1400.split.i:                          ; preds = %._crit_edge1396.i, %.preheader1092.i, %.preheader1089.lr.ph.i
  %indvars.iv.next1776.i = add nuw nsw i64 %indvars.iv1775.i, 2 ; 3 uses
  %i.bdl = or disjoint i64 %indvars.iv.next1776.i, 1 ; 2 uses
  %i.bdm = icmp slt i64 %i.bdl, %i.adu
  %indvars.iv.next1743.i = add i32 %indvars.iv1742.i, %i.ado
  %indvars.iv.next1747.i = add i32 %indvars.iv1746.i, %i.ado
  %i.bdn = trunc nsw i64 %i.bdl to i32
  br i1 %i.bdm, label %_ZN4ncnn3MatD2Ev.exit1003.i, label %.preheader1087.loopexit.i, !llvm.loop !371

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge1459.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %indvars.iv1808.i = phi i64 [ %i.aur, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next1809.i, %._crit_edge1459.split.i ] ; 2 uses
  %indvars.iv1779.i = phi i32 [ %i.aun, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next1780.i, %._crit_edge1459.split.i ] ; 2 uses
  %i.bdo = sext i32 %indvars.iv1779.i to i64
  %i.bdp = shl nsw i64 %i.bdo, 2
  %scevgep1781.i = getelementptr i8, ptr %scevgep1778.i, i64 %i.bdp ; 2 uses
  %i.bdq = trunc nsw i64 %indvars.iv1808.i to i32 ; 5 uses
  %i.bdr = mul i32 %i.ats, %i.bdq
  %i.bds = sext i32 %i.bdr to i64
  %i.bdt = getelementptr inbounds [4 x i8], ptr %i.atr, i64 %i.bds ; 2 uses
  %i.bdu = lshr i32 %i.bdq, 3
  %i.bdv = lshr i32 %i.bdq, 2
  %i.bdw = and i32 %i.bdv, 1
  %i.bdx = lshr i32 %i.bdq, 1
  %i.bdy = and i32 %i.bdx, 1
  %i.bdz = and i32 %i.bdq, 1
  %i.bea = add nuw nsw i32 %i.bdz, %i.bdu
  %i.beb = add nuw nsw i32 %i.bea, %i.bdw
  %i.bec = add nuw nsw i32 %i.beb, %i.bdy
  %i.bed = zext nneg i32 %i.bec to i64
  %.reass1463.i = mul i64 %factor.op.mul1462.i, %i.bed
  %i.bee = getelementptr inbounds nuw i8, ptr %i.att, i64 %.reass1463.i ; 4 uses
  br i1 %i.aty, label %.preheader1083.lr.ph.i, label %.preheader1086.i

.preheader1083.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.atz, label %.preheader1083.us.i, label %.preheader1086.thread.i

.preheader1083.us.i:                              ; preds = %.preheader1083.lr.ph.i, %._crit_edge1410.us.i
  %.08261414.us.i = phi i32 [ %i.bgv, %._crit_edge1410.us.i ], [ 0, %.preheader1083.lr.ph.i ]
  %.08301413.us.i = phi ptr [ %.lcssa, %._crit_edge1410.us.i ], [ %i.bee, %.preheader1083.lr.ph.i ] ; 3 uses
  %.08341412.us.i = phi ptr [ %i.bgu, %._crit_edge1410.us.i ], [ %i.bdt, %.preheader1083.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check449, label %scalar.ph448.preheader, label %vector.ph450

vector.ph450:                                     ; preds = %.preheader1083.us.i
  %i.bef = getelementptr i8, ptr %.08301413.us.i, i64 %i.auu ; 2 uses
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph450
  %index453 = phi i64 [ 0, %vector.ph450 ], [ %index.next464, %vector.body452 ] ; 3 uses
  %i.beg = shl i64 %index453, 4
  %next.gep454 = getelementptr i8, ptr %.08301413.us.i, i64 %i.beg
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %.08341412.us.i, i64 %index453 ; 2 uses
  %wide.load455 = load <4 x i32>, ptr %i.beh, align 4, !tbaa !53
  %i.bei = lshr <4 x i32> %wide.load455, splat (i32 16)
  %i.bej = getelementptr inbounds nuw [4 x i8], ptr %i.beh, i64 %i.aua ; 2 uses
  %wide.load456 = load <4 x i32>, ptr %i.bej, align 4, !tbaa !53
  %i.bek = lshr <4 x i32> %wide.load456, splat (i32 16)
  %i.bel = getelementptr inbounds nuw [4 x i8], ptr %i.bej, i64 %i.aua ; 2 uses
  %wide.load457 = load <4 x i32>, ptr %i.bel, align 4, !tbaa !53
  %i.bem = lshr <4 x i32> %wide.load457, splat (i32 16)
  %i.ben = getelementptr inbounds nuw [4 x i8], ptr %i.bel, i64 %i.aua ; 2 uses
  %wide.load458 = load <4 x i32>, ptr %i.ben, align 4, !tbaa !53
  %i.beo = lshr <4 x i32> %wide.load458, splat (i32 16)
  %i.bep = getelementptr inbounds nuw [4 x i8], ptr %i.ben, i64 %i.aua ; 2 uses
  %wide.load459 = load <4 x i32>, ptr %i.bep, align 4, !tbaa !53
  %i.beq = lshr <4 x i32> %wide.load459, splat (i32 16)
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %i.bep, i64 %i.aua ; 2 uses
  %wide.load460 = load <4 x i32>, ptr %i.ber, align 4, !tbaa !53
  %i.bes = lshr <4 x i32> %wide.load460, splat (i32 16)
  %i.bet = getelementptr inbounds nuw [4 x i8], ptr %i.ber, i64 %i.aua ; 2 uses
  %wide.load461 = load <4 x i32>, ptr %i.bet, align 4, !tbaa !53
  %i.beu = lshr <4 x i32> %wide.load461, splat (i32 16)
  %i.bev = getelementptr inbounds nuw [4 x i8], ptr %i.bet, i64 %i.aua
  %wide.load462 = load <4 x i32>, ptr %i.bev, align 4, !tbaa !53
  %i.bew = lshr <4 x i32> %wide.load462, splat (i32 16)
  %i.bex = shufflevector <4 x i32> %i.bei, <4 x i32> %i.bek, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bey = shufflevector <4 x i32> %i.bem, <4 x i32> %i.beo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bez = shufflevector <4 x i32> %i.beq, <4 x i32> %i.bes, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bfa = shufflevector <4 x i32> %i.beu, <4 x i32> %i.bew, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bfb = shufflevector <8 x i32> %i.bex, <8 x i32> %i.bey, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bfc = trunc nuw <16 x i32> %i.bfb to <16 x i16>
  %i.bfd = shufflevector <8 x i32> %i.bez, <8 x i32> %i.bfa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bfe = trunc nuw <16 x i32> %i.bfd to <16 x i16>
  %interleaved.vec463 = shufflevector <16 x i16> %i.bfc, <16 x i16> %i.bfe, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec463, ptr %next.gep454, align 2, !tbaa !331
  %index.next464 = add nuw i64 %index453, 4       ; 2 uses
  %i.bff = icmp eq i64 %index.next464, %n.vec451
  br i1 %i.bff, label %middle.block465, label %vector.body452, !llvm.loop !372

middle.block465:                                  ; preds = %vector.body452
  br i1 %cmp.n466, label %._crit_edge1410.us.i, label %scalar.ph448.preheader

scalar.ph448.preheader:                           ; preds = %.preheader1083.us.i, %middle.block465
  %indvars.iv1783.i.ph = phi i64 [ 0, %.preheader1083.us.i ], [ %n.vec451, %middle.block465 ]
  %.18311408.us.i.ph = phi ptr [ %.08301413.us.i, %.preheader1083.us.i ], [ %i.bef, %middle.block465 ]
  br label %scalar.ph448

scalar.ph448:                                     ; preds = %scalar.ph448.preheader, %scalar.ph448
  %indvars.iv1783.i = phi i64 [ %indvars.iv.next1784.i, %scalar.ph448 ], [ %indvars.iv1783.i.ph, %scalar.ph448.preheader ] ; 2 uses
  %.18311408.us.i = phi ptr [ %i.bgt, %scalar.ph448 ], [ %.18311408.us.i.ph, %scalar.ph448.preheader ] ; 9 uses
  %i.bfg = getelementptr inbounds nuw [4 x i8], ptr %.08341412.us.i, i64 %indvars.iv1783.i ; 2 uses
  %i.bfh = load i32, ptr %i.bfg, align 4, !tbaa !53
  %i.bfi = lshr i32 %i.bfh, 16
  %i.bfj = trunc nuw i32 %i.bfi to i16
  store i16 %i.bfj, ptr %.18311408.us.i, align 2, !tbaa !331
  %i.bfk = getelementptr inbounds nuw [4 x i8], ptr %i.bfg, i64 %i.aua ; 2 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 2
  %i.bfm = load i32, ptr %i.bfk, align 4, !tbaa !53
  %i.bfn = lshr i32 %i.bfm, 16
  %i.bfo = trunc nuw i32 %i.bfn to i16
  store i16 %i.bfo, ptr %i.bfl, align 2, !tbaa !331
  %i.bfp = getelementptr inbounds nuw [4 x i8], ptr %i.bfk, i64 %i.aua ; 2 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 4
  %i.bfr = load i32, ptr %i.bfp, align 4, !tbaa !53
  %i.bfs = lshr i32 %i.bfr, 16
  %i.bft = trunc nuw i32 %i.bfs to i16
  store i16 %i.bft, ptr %i.bfq, align 2, !tbaa !331
  %i.bfu = getelementptr inbounds nuw [4 x i8], ptr %i.bfp, i64 %i.aua ; 2 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 6
  %i.bfw = load i32, ptr %i.bfu, align 4, !tbaa !53
  %i.bfx = lshr i32 %i.bfw, 16
  %i.bfy = trunc nuw i32 %i.bfx to i16
  store i16 %i.bfy, ptr %i.bfv, align 2, !tbaa !331
  %i.bfz = getelementptr inbounds nuw [4 x i8], ptr %i.bfu, i64 %i.aua ; 2 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %.18311408.us.i, i64 8
  %i.bgb = load i32, ptr %i.bfz, align 4, !tbaa !53
  %i.bgc = lshr i32 %i.bgb, 16
  %i.bgd = trunc nuw i32 %i.bgc to i16
end_hunk_3
