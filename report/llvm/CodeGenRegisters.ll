Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeGenRegisters?download=true
inline.NumInlined: 12915
inline.NumDeleted: 5836
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 23
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm20CodeGenRegisterClassENS3_9BitVectorEESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNKS4_30getMatchingSubClassWithSubRegsERNS3_14CodeGenRegBankEPKNS3_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_T1_":bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ja, ptr align 8 %i.id, i64 %.idx36.i122, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i123

bb.cl:                                            ; preds = %bb.cj
  %i.jb = load i64, ptr %i.id, align 8, !tbaa !155
  store i64 %i.jb, ptr %i.ja, align 8, !tbaa !155
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i123

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i123:          ; preds = %bb.cl, %bb.ck, %bb.ci, %bb.ch
  %.026.i124 = phi i64 [ 0, %bb.ch ], [ 0, %bb.ci ], [ %i.it, %bb.ck ], [ 1, %bb.cl ] ; 4 uses
  %i.jc = load i32, ptr %i.io, align 8, !tbaa !167
  %i.jd = zext i32 %i.jc to i64                   ; 2 uses
  %.not.i.i.i125 = icmp samesign eq i64 %.026.i124, %i.jd
  br i1 %.not.i.i.i125, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i128, label %bb.cm

bb.cm:                                            ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i123
  %i.je = load ptr, ptr %i.ib, align 8, !tbaa !166
  %.idx39.i126 = shl nuw nsw i64 %.026.i124, 3
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %.idx39.i126
  %i.jg = load ptr, ptr %i.gp, align 8, !tbaa !166
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %.026.i124
  %i.ji = sub nsw i64 %i.jd, %.026.i124
  %gepdiff.i127 = shl nsw i64 %i.ji, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jh, ptr align 8 %i.jf, i64 %gepdiff.i127, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i128

_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i128: ; preds = %bb.cm, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i123
  store i32 %i.ip, ptr %i.ir, align 8, !tbaa !167
  store i32 0, ptr %i.io, align 8, !tbaa !167
  br label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit129

_ZN4llvm15SmallVectorImplImEaSEOS1_.exit129:      ; preds = %bb.by, %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i116, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i118, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i128
  %i.jj = getelementptr inbounds nuw i8, ptr %.031.i, i64 80
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit129, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit144
  %.01630.pn.i = phi ptr [ %.01630.i, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit144 ], [ %.031.i, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit129 ]
  %.117.i = phi ptr [ %i.hz, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit144 ], [ %.01630.i, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit129 ] ; 4 uses
  %.1.i = phi ptr [ %.031.i, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit144 ], [ %i.jj, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit129 ] ; 4 uses
  %.sink.in.i37 = getelementptr inbounds nuw i8, ptr %.01630.pn.i, i64 72
  %.sink.i38 = load i32, ptr %.sink.in.i37, align 8, !tbaa !425
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.025.029.i, i64 72
  store i32 %.sink.i38, ptr %i.jk, align 8, !tbaa !425
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.025.029.i, i64 80 ; 5 uses
  %i.jm = icmp ne ptr %.1.i, %i.gm
  %i.jn = icmp ne ptr %.117.i, %i.gn
  %i.jo = select i1 %i.jm, i1 %i.jn, i1 false
  br i1 %i.jo, label %.lr.ph.i35, label %._crit_edge.i, !llvm.loop !47

._crit_edge.i:                                    ; preds = %bb.cn
  %i.jp = ptrtoint ptr %i.gm to i64
  %i.jq = ptrtoint ptr %.1.i to i64
  %i.jr = sub i64 %i.jp, %i.jq                    ; 2 uses
  %i.js = icmp sgt i64 %i.jr, 0
  br i1 %i.js, label %.lr.ph.preheader.i.i.i.i.i.i30, label %_ZSt4moveIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i

.lr.ph.preheader.i.i.i.i.i.i30:                   ; preds = %._crit_edge.i
  %i.jt = udiv exact i64 %i.jr, 80
  br label %.lr.ph.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i31:                             ; preds = %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit114, %.lr.ph.preheader.i.i.i.i.i.i30
  %.012.i.i.i.i.i.i32 = phi i64 [ %i.lj, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit114 ], [ %i.jt, %.lr.ph.preheader.i.i.i.i.i.i30 ] ; 2 uses
  %.0811.i.i.i.i.i.i33 = phi ptr [ %i.li, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit114 ], [ %i.jl, %.lr.ph.preheader.i.i.i.i.i.i30 ] ; 10 uses
  %.0910.i.i.i.i.i.i34 = phi ptr [ %i.lh, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit114 ], [ %.1.i, %.lr.ph.preheader.i.i.i.i.i.i30 ] ; 9 uses
  %i.ju = load ptr, ptr %.0910.i.i.i.i.i.i34, align 8, !tbaa !506
  store ptr %i.ju, ptr %.0811.i.i.i.i.i.i33, align 8, !tbaa !528
  %i.jv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i34, i64 8 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i33, i64 8 ; 6 uses
  %i.jx = icmp eq ptr %.0811.i.i.i.i.i.i33, %.0910.i.i.i.i.i.i34
  br i1 %i.jx, label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit114, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i.i.i.i.i31
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !166 ; 6 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i34, i64 24 ; 2 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kb = load ptr, ptr %i.jw, align 8, !tbaa !166 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i33, i64 24
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i101, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @free(ptr noundef %i.kb) #23
  %.pre.i100 = load ptr, ptr %i.jv, align 8, !tbaa !166
  br label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i101

_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i101: ; preds = %bb.cq, %bb.cp
  %i.ke = phi ptr [ %i.jy, %bb.cp ], [ %.pre.i100, %bb.cq ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i33, i64 16
  store ptr %i.ke, ptr %i.jw, align 8, !tbaa !166
  %i.kg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i34, i64 16 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i34, i64 20
  %i.ki = load <2 x i32>, ptr %i.kg, align 8, !tbaa !185
  store <2 x i32> %i.ki, ptr %i.kf, align 8, !tbaa !185
  store ptr %i.jz, ptr %i.jv, align 8, !tbaa !166
  store i32 0, ptr %i.kh, align 4, !tbaa !168
  store i32 0, ptr %i.kg, align 8, !tbaa !167
  br label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit114

bb.cr:                                            ; preds = %bb.co
  %i.kj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i34, i64 16 ; 4 uses
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !167 ; 6 uses
  %i.kl = zext i32 %i.kk to i64                   ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i33, i64 16 ; 4 uses
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !167 ; 4 uses
  %i.ko = zext i32 %i.kn to i64                   ; 2 uses
  %.not.i102 = icmp ult i32 %i.kn, %i.kk
  br i1 %.not.i102, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kp = load ptr, ptr %i.jw, align 8, !tbaa !166 ; 2 uses
  switch i32 %i.kk, label %bb.ct [
    i32 0, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i103
    i32 1, label %bb.cu
  ], !prof !627

bb.ct:                                            ; preds = %bb.cs
  %.idx.i104 = shl nuw nsw i64 %i.kl, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kp, ptr align 8 %i.jy, i64 %.idx.i104, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i103

bb.cu:                                            ; preds = %bb.cs
  %i.kq = load i64, ptr %i.jy, align 8, !tbaa !155
  store i64 %i.kq, ptr %i.kp, align 8, !tbaa !155
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i103

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i103:            ; preds = %bb.cu, %bb.ct, %bb.cs
  store i32 %i.kk, ptr %i.km, align 8, !tbaa !167
  store i32 0, ptr %i.kj, align 8, !tbaa !167
  br label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit114

bb.cv:                                            ; preds = %bb.cr
  %i.kr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i33, i64 20
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !168
  %i.kt = icmp ult i32 %i.ks, %i.kk
  br i1 %i.kt, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.km, align 8, !tbaa !167
  %i.ku = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i33, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.jw, ptr noundef nonnull %i.ku, i64 noundef %i.kl, i64 noundef 8) #23
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i108

bb.cx:                                            ; preds = %bb.cv
  %.not32.i105 = icmp eq i32 %i.kn, 0
  br i1 %.not32.i105, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i108, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kv = load ptr, ptr %i.jw, align 8, !tbaa !166 ; 2 uses
  %.not37.i106 = icmp eq i32 %i.kn, 1
  br i1 %.not37.i106, label %bb.da, label %bb.cz, !prof !465

bb.cz:                                            ; preds = %bb.cy
  %.idx36.i107 = shl nuw nsw i64 %i.ko, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kv, ptr align 8 %i.jy, i64 %.idx36.i107, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i108

bb.da:                                            ; preds = %bb.cy
  %i.kw = load i64, ptr %i.jy, align 8, !tbaa !155
  store i64 %i.kw, ptr %i.kv, align 8, !tbaa !155
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i108

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i108:          ; preds = %bb.da, %bb.cz, %bb.cx, %bb.cw
  %.026.i109 = phi i64 [ 0, %bb.cw ], [ 0, %bb.cx ], [ %i.ko, %bb.cz ], [ 1, %bb.da ] ; 4 uses
  %i.kx = load i32, ptr %i.kj, align 8, !tbaa !167
  %i.ky = zext i32 %i.kx to i64                   ; 2 uses
  %.not.i.i.i110 = icmp samesign eq i64 %.026.i109, %i.ky
  br i1 %.not.i.i.i110, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i113, label %bb.db

bb.db:                                            ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i108
  %i.kz = load ptr, ptr %i.jv, align 8, !tbaa !166
  %.idx39.i111 = shl nuw nsw i64 %.026.i109, 3
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 %.idx39.i111
  %i.lb = load ptr, ptr %i.jw, align 8, !tbaa !166
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %.026.i109
  %i.ld = sub nsw i64 %i.ky, %.026.i109
  %gepdiff.i112 = shl nsw i64 %i.ld, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lc, ptr align 8 %i.la, i64 %gepdiff.i112, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i113

_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i113: ; preds = %bb.db, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i108
  store i32 %i.kk, ptr %i.km, align 8, !tbaa !167
  store i32 0, ptr %i.kj, align 8, !tbaa !167
  br label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit114

_ZN4llvm15SmallVectorImplImEaSEOS1_.exit114:      ; preds = %.lr.ph.i.i.i.i.i.i31, %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i101, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i103, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i113
  %i.le = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i34, i64 72
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !425
  %i.lg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i33, i64 72
  store i32 %i.lf, ptr %i.lg, align 8, !tbaa !425
  %i.lh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i34, i64 80
  %i.li = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i33, i64 80 ; 2 uses
  %i.lj = add nsw i64 %.012.i.i.i.i.i.i32, -1
  %i.lk = icmp samesign ugt i64 %.012.i.i.i.i.i.i32, 1
  br i1 %i.lk, label %.lr.ph.i.i.i.i.i.i31, label %_ZSt4moveIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, !llvm.loop !46

_ZSt4moveIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i: ; preds = %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit114, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i29 = phi ptr [ %i.jl, %._crit_edge.i ], [ %i.li, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit114 ]
  %i.ll = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i29 to i64 ; 2 uses
  %i.lm = ptrtoint ptr %i.jl to i64
  %i.ln = sub i64 %i.ll, %i.lm
  %i.lo = getelementptr inbounds i8, ptr %i.jl, i64 %i.ln ; 3 uses
  %i.lp = ptrtoint ptr %i.gn to i64               ; 2 uses
  %i.lq = ptrtoint ptr %.117.i to i64
  %i.lr = sub i64 %i.lp, %i.lq                    ; 2 uses
  %i.ls = icmp sgt i64 %i.lr, 0
  br i1 %i.ls, label %.lr.ph.preheader.i.i.i.i.i19.i, label %"_ZSt12__move_mergeIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit"

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i
  %i.lt = udiv exact i64 %i.lr, 80
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit99, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.nj, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit99 ], [ %i.lt, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.ni, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit99 ], [ %i.lo, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 10 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.nh, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit99 ], [ %.117.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 9 uses
  %i.lu = load ptr, ptr %.0910.i.i.i.i.i23.i, align 8, !tbaa !506
  store ptr %i.lu, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !528
  %i.lv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 8 ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 8 ; 6 uses
  %i.lx = icmp eq ptr %.0811.i.i.i.i.i22.i, %.0910.i.i.i.i.i23.i
  br i1 %i.lx, label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit99, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i.i20.i
  %i.ly = load ptr, ptr %i.lv, align 8, !tbaa !166 ; 6 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 24 ; 2 uses
  %i.ma = icmp eq ptr %i.ly, %i.lz
  br i1 %i.ma, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mb = load ptr, ptr %i.lw, align 8, !tbaa !166 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 24
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i86, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @free(ptr noundef %i.mb) #23
  %.pre.i85 = load ptr, ptr %i.lv, align 8, !tbaa !166
  br label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i86

_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i86: ; preds = %bb.de, %bb.dd
  %i.me = phi ptr [ %i.ly, %bb.dd ], [ %.pre.i85, %bb.de ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 16
  store ptr %i.me, ptr %i.lw, align 8, !tbaa !166
  %i.mg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 16 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 20
  %i.mi = load <2 x i32>, ptr %i.mg, align 8, !tbaa !185
  store <2 x i32> %i.mi, ptr %i.mf, align 8, !tbaa !185
  store ptr %i.lz, ptr %i.lv, align 8, !tbaa !166
  store i32 0, ptr %i.mh, align 4, !tbaa !168
  store i32 0, ptr %i.mg, align 8, !tbaa !167
  br label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit99

bb.df:                                            ; preds = %bb.dc
  %i.mj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 16 ; 4 uses
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !167 ; 6 uses
  %i.ml = zext i32 %i.mk to i64                   ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 16 ; 4 uses
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !167 ; 4 uses
  %i.mo = zext i32 %i.mn to i64                   ; 2 uses
  %.not.i87 = icmp ult i32 %i.mn, %i.mk
  br i1 %.not.i87, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mp = load ptr, ptr %i.lw, align 8, !tbaa !166 ; 2 uses
  switch i32 %i.mk, label %bb.dh [
    i32 0, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i88
    i32 1, label %bb.di
  ], !prof !627

bb.dh:                                            ; preds = %bb.dg
  %.idx.i89 = shl nuw nsw i64 %i.ml, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.mp, ptr align 8 %i.ly, i64 %.idx.i89, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i88

bb.di:                                            ; preds = %bb.dg
  %i.mq = load i64, ptr %i.ly, align 8, !tbaa !155
  store i64 %i.mq, ptr %i.mp, align 8, !tbaa !155
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i88

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i88:             ; preds = %bb.di, %bb.dh, %bb.dg
  store i32 %i.mk, ptr %i.mm, align 8, !tbaa !167
  store i32 0, ptr %i.mj, align 8, !tbaa !167
  br label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit99

bb.dj:                                            ; preds = %bb.df
  %i.mr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 20
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !168
  %i.mt = icmp ult i32 %i.ms, %i.mk
  br i1 %i.mt, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.mm, align 8, !tbaa !167
  %i.mu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.lw, ptr noundef nonnull %i.mu, i64 noundef %i.ml, i64 noundef 8) #23
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i93

bb.dl:                                            ; preds = %bb.dj
  %.not32.i90 = icmp eq i32 %i.mn, 0
  br i1 %.not32.i90, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i93, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mv = load ptr, ptr %i.lw, align 8, !tbaa !166 ; 2 uses
  %.not37.i91 = icmp eq i32 %i.mn, 1
  br i1 %.not37.i91, label %bb.do, label %bb.dn, !prof !465

bb.dn:                                            ; preds = %bb.dm
  %.idx36.i92 = shl nuw nsw i64 %i.mo, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.mv, ptr align 8 %i.ly, i64 %.idx36.i92, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i93

bb.do:                                            ; preds = %bb.dm
  %i.mw = load i64, ptr %i.ly, align 8, !tbaa !155
  store i64 %i.mw, ptr %i.mv, align 8, !tbaa !155
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i93

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i93:           ; preds = %bb.do, %bb.dn, %bb.dl, %bb.dk
  %.026.i94 = phi i64 [ 0, %bb.dk ], [ 0, %bb.dl ], [ %i.mo, %bb.dn ], [ 1, %bb.do ] ; 4 uses
  %i.mx = load i32, ptr %i.mj, align 8, !tbaa !167
  %i.my = zext i32 %i.mx to i64                   ; 2 uses
  %.not.i.i.i95 = icmp samesign eq i64 %.026.i94, %i.my
  br i1 %.not.i.i.i95, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i98, label %bb.dp

bb.dp:                                            ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i93
  %i.mz = load ptr, ptr %i.lv, align 8, !tbaa !166
  %.idx39.i96 = shl nuw nsw i64 %.026.i94, 3
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %.idx39.i96
  %i.nb = load ptr, ptr %i.lw, align 8, !tbaa !166
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %.026.i94
  %i.nd = sub nsw i64 %i.my, %.026.i94
  %gepdiff.i97 = shl nsw i64 %i.nd, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nc, ptr align 8 %i.na, i64 %gepdiff.i97, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i98

_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i98: ; preds = %bb.dp, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i93
  store i32 %i.mk, ptr %i.mm, align 8, !tbaa !167
  store i32 0, ptr %i.mj, align 8, !tbaa !167
  br label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit99

_ZN4llvm15SmallVectorImplImEaSEOS1_.exit99:       ; preds = %.lr.ph.i.i.i.i.i20.i, %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i86, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i88, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i98
  %i.ne = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 72
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !425
  %i.ng = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 72
  store i32 %i.nf, ptr %i.ng, align 8, !tbaa !425
  %i.nh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 80
  %i.ni = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 80 ; 2 uses
  %i.nj = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.nk = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.nk, label %.lr.ph.i.i.i.i.i20.i, label %"_ZSt12__move_mergeIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit", !llvm.loop !46

"_ZSt12__move_mergeIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit": ; preds = %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit99, %_ZSt4moveIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.lo, %_ZSt4moveIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ], [ %i.ni, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit99 ]
  %4 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.nl = sub i64 %4, %i.ll
  %i.nm = getelementptr inbounds i8, ptr %i.lo, i64 %i.nl ; 2 uses
  %i.nn = sub i64 %i.l, %i.lp
  %i.no = sdiv exact i64 %i.nn, 80                ; 2 uses
  %.not.i21 = icmp slt i64 %i.no, %i.gl
  br i1 %.not.i21, label %"_ZSt17__merge_sort_loopIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_T1_T2_.exit", label %.lr.ph.i20, !llvm.loop !1905

"_ZSt17__merge_sort_loopIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm20CodeGenRegisterClassENS3_9BitVectorEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS4_30getMatchingSubClassWithSubRegsERNS3_14CodeGenRegBankEPKNS3_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.0.lcssa.i22 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm20CodeGenRegisterClassENS3_9BitVectorEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS4_30getMatchingSubClassWithSubRegsERNS3_14CodeGenRegBankEPKNS3_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gn, %"_ZSt12__move_mergeIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit" ] ; 2 uses
  %.sroa.021.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm20CodeGenRegisterClassENS3_9BitVectorEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS4_30getMatchingSubClassWithSubRegsERNS3_14CodeGenRegBankEPKNS3_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.nm, %"_ZSt12__move_mergeIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit" ]
  %.lcssa.i23 = phi i64 [ %i.m, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm20CodeGenRegisterClassENS3_9BitVectorEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNKS4_30getMatchingSubClassWithSubRegsERNS3_14CodeGenRegBankEPKNS3_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.no, %"_ZSt12__move_mergeIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit" ]
  %.sroa.speculated.i24 = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %.lcssa.i23)
  %i.np = getelementptr inbounds [80 x i8], ptr %.0.lcssa.i22, i64 %.sroa.speculated.i24 ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEET0_T_SN_SN_SN_SM_T1_"(ptr noundef %.0.lcssa.i22, ptr noundef %i.np, ptr noundef %i.np, ptr noundef nonnull %i.e, ptr %.sroa.021.0.lcssa.i, ptr readonly %3)
  %i.nq = icmp slt i64 %i.gl, %i.d
  br i1 %i.nq, label %bb.b, label %._crit_edge, !llvm.loop !1906

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm20CodeGenRegisterClassENS3_9BitVectorEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNKS4_30getMatchingSubClassWithSubRegsERNS3_14CodeGenRegBankEPKNS3_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_T1_.exit.thread", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm20CodeGenRegisterClassENS3_9BitVectorEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNKS4_30getMatchingSubClassWithSubRegsERNS3_14CodeGenRegBankEPKNS3_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm20CodeGenRegisterClassENS3_9BitVectorEESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNKS4_30getMatchingSubClassWithSubRegsERNS3_14CodeGenRegBankEPKNS3_18CodeGenSubRegIndexEE3$_1EEEvT_SM_SM_T0_SN_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_SN_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.f = udiv exact i64 %i.d, 80
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.g = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !506
  store ptr %i.g, ptr %.0811.i.i.i.i.i, align 8, !tbaa !528
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.i, ptr noundef nonnull align 8 dereferenceable(68) %i.h) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !425
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72
  store i32 %i.l, ptr %i.m, align 8, !tbaa !425
  %i.n = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 80 ; 3 uses
  %i.p = add nsw i64 %.012.i.i.i.i.i, -1
  %i.q = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.q, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !46

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.027.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 8 uses
  %.sroa.017.026.i = phi ptr [ %.sroa.017.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %.sroa.013.025.i = phi ptr [ %i.ac, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.not20.i = icmp eq ptr %.sroa.017.026.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.0.val.i = load ptr, ptr %.027.i, align 8, !tbaa !528
  %.val.val.i = load ptr, ptr %i.a, align 8, !tbaa !515
  %.val2.i.i = load ptr, ptr %.sroa.017.026.i, align 8, !tbaa !528
  %i.r = tail call fastcc noundef zeroext i1 @"_ZZNK4llvm20CodeGenRegisterClass30getMatchingSubClassWithSubRegsERNS_14CodeGenRegBankEPKNS_18CodeGenSubRegIndexEENK3$_0clEPKS0_S8_"(ptr readnone %.val.val.i, ptr noundef readonly %.val2.i.i, ptr noundef readonly %.0.val.i)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 8 ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %.sroa.017.026.i, align 8, !tbaa !506
  store ptr %i.t, ptr %.sroa.013.025.i, align 8, !tbaa !528
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.017.026.i, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.s, ptr noundef nonnull align 8 dereferenceable(68) %i.u) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.017.026.i, i64 80
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %.027.i, align 8, !tbaa !506
  store ptr %i.x, ptr %.sroa.013.025.i, align 8, !tbaa !528
  %i.y = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  %i.z = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.s, ptr noundef nonnull align 8 dereferenceable(68) %i.y) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.027.i, i64 80
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.017.026.pn.i = phi ptr [ %.sroa.017.026.i, %bb.d ], [ %.027.i, %bb.e ]
  %.sroa.017.1.i = phi ptr [ %i.w, %bb.d ], [ %.sroa.017.026.i, %bb.e ]
  %.1.i = phi ptr [ %.027.i, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.sroa.017.026.pn.i, i64 72
  %.sink.i = load i32, ptr %.sink.in.i, align 8, !tbaa !425
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 72
  store i32 %.sink.i, ptr %i.ab, align 8, !tbaa !425
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 80
  %.not.i = icmp eq ptr %.1.i, %i.o
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_SN_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !1907

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ad = ptrtoint ptr %i.o to i64
  %i.ae = ptrtoint ptr %.027.i to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.preheader.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_SN_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.ah = udiv exact i64 %i.af, 80
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %i.ah, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.013.025.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.027.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.ai = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !506
  store ptr %i.ai, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !528
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.al = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.ak, ptr noundef nonnull align 8 dereferenceable(68) %i.aj) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 72
  %i.an = load i32, ptr %i.am, align 8, !tbaa !425
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 72
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !425
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 80
  %i.ar = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.as = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_SN_T1_T2_.exit", !llvm.loop !46

bb.g:                                             ; preds = %bb.a
  %i.at = ptrtoint ptr %2 to i64
  %i.au = ptrtoint ptr %1 to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.preheader.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm20CodeGenRegisterClassENS3_9BitVectorEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit28

.lr.ph.preheader.i.i.i.i.i23:                     ; preds = %bb.g
  %i.ax = udiv exact i64 %i.av, 80
  br label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %.lr.ph.i.i.i.i.i24, %.lr.ph.preheader.i.i.i.i.i23
  %.012.i.i.i.i.i25 = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i24 ], [ %i.ax, %.lr.ph.preheader.i.i.i.i.i23 ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i24 ], [ %5, %.lr.ph.preheader.i.i.i.i.i23 ] ; 4 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i24 ], [ %1, %.lr.ph.preheader.i.i.i.i.i23 ] ; 4 uses
  %i.ay = load ptr, ptr %.0910.i.i.i.i.i27, align 8, !tbaa !506
  store ptr %i.ay, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !528
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 8
  %i.bb = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.ba, ptr noundef nonnull align 8 dereferenceable(68) %i.az) ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !425
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 72
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !425
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 80 ; 2 uses
  %i.bh = add nsw i64 %.012.i.i.i.i.i25, -1
  %i.bi = icmp samesign ugt i64 %.012.i.i.i.i.i25, 1
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm20CodeGenRegisterClassENS3_9BitVectorEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit28, !llvm.loop !46

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm20CodeGenRegisterClassENS3_9BitVectorEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit28: ; preds = %.lr.ph.i.i.i.i.i24, %bb.g
  %.08.lcssa.i.i.i.i.i22 = phi ptr [ %5, %bb.g ], [ %i.bg, %.lr.ph.i.i.i.i.i24 ] ; 4 uses
  %i.bj = icmp eq ptr %0, %1
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm20CodeGenRegisterClassENS3_9BitVectorEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit28
  %i.bk = ptrtoint ptr %.08.lcssa.i.i.i.i.i22 to i64
  %i.bl = ptrtoint ptr %5 to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i.i32, label %"_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_SN_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i32:                   ; preds = %bb.h
  %i.bo = udiv exact i64 %i.bm, 80
  br label %.lr.ph.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i33:                             ; preds = %.lr.ph.i.i.i.i.i.i33, %.lr.ph.preheader.i.i.i.i.i.i32
  %.010.i.i.i.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i.i.i.i33 ], [ %i.bo, %.lr.ph.preheader.i.i.i.i.i.i32 ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i33 ], [ %2, %.lr.ph.preheader.i.i.i.i.i.i32 ] ; 3 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i33 ], [ %.08.lcssa.i.i.i.i.i22, %.lr.ph.preheader.i.i.i.i.i.i32 ] ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -80 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -80 ; 2 uses
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !506
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !528
  %i.bs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -72
  %i.bt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -72
  %i.bu = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.bt, ptr noundef nonnull align 8 dereferenceable(68) %i.bs) ; 0 uses
  %i.bv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !425
  %i.bx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !425
  %i.by = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.bz = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i33, label %"_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_SN_T1_T2_.exit", !llvm.loop !48

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm20CodeGenRegisterClassENS3_9BitVectorEESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit28
  %i.ca = icmp eq ptr %5, %.08.lcssa.i.i.i.i.i22
  br i1 %i.ca, label %"_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm20CodeGenRegisterClassENS1_9BitVectorEEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNKS2_30getMatchingSubClassWithSubRegsERNS1_14CodeGenRegBankEPKNS1_18CodeGenSubRegIndexEE3$_1EEEvT_SM_T0_SN_T1_T2_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_0
