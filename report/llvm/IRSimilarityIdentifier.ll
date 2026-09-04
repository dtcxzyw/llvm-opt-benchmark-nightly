Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IRSimilarityIdentifier?download=true
inline.NumInlined: 6177
inline.NumDeleted: 3080
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm10SuffixTree17RepeatedSubstringESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_T1_":bb.a
  br i1 %.not32.i119, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i122, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ip = load ptr, ptr %i.gg, align 8, !tbaa !45 ; 2 uses
  %.not37.i120 = icmp eq i32 %i.ih, 1
  br i1 %.not37.i120, label %bb.cl, label %bb.ck, !prof !95

bb.ck:                                            ; preds = %bb.cj
  %.idx36.i121 = shl nuw nsw i64 %i.ii, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ip, ptr align 4 %i.hs, i64 %.idx36.i121, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i122

bb.cl:                                            ; preds = %bb.cj
  %i.iq = load i32, ptr %i.hs, align 4, !tbaa !122
  store i32 %i.iq, ptr %i.ip, align 4, !tbaa !122
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i122

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i122:          ; preds = %bb.cl, %bb.ck, %bb.ci, %bb.ch
  %.026.i123 = phi i64 [ 0, %bb.ch ], [ 0, %bb.ci ], [ %i.ii, %bb.ck ], [ 1, %bb.cl ] ; 4 uses
  %i.ir = load i32, ptr %i.id, align 8, !tbaa !76
  %i.is = zext i32 %i.ir to i64                   ; 2 uses
  %.not.i.i.i124 = icmp samesign eq i64 %.026.i123, %i.is
  br i1 %.not.i.i.i124, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i127, label %bb.cm

bb.cm:                                            ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i122
  %i.it = load ptr, ptr %i.hq, align 8, !tbaa !45
  %.idx39.i125 = shl nuw nsw i64 %.026.i123, 2
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %.idx39.i125
  %i.iv = load ptr, ptr %i.gg, align 8, !tbaa !45
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.026.i123
  %i.ix = sub nsw i64 %i.is, %.026.i123
  %gepdiff.i126 = shl nsw i64 %i.ix, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iw, ptr align 4 %i.iu, i64 %gepdiff.i126, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i127

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i127: ; preds = %bb.cm, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i122
  store i32 %i.ie, ptr %i.ig, align 8, !tbaa !76
  store i32 0, ptr %i.id, align 8, !tbaa !76
  br label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit128

_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit128:      ; preds = %bb.by, %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i115, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i117, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i127
  %i.iy = getelementptr inbounds nuw i8, ptr %.030.i37, i64 72
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit128, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit143
  %.117.i = phi ptr [ %i.hp, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit143 ], [ %.01629.i, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit128 ] ; 4 uses
  %.1.i = phi ptr [ %.030.i37, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit143 ], [ %i.iy, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit128 ] ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 72 ; 5 uses
  %i.ja = icmp ne ptr %.1.i, %i.gd
  %i.jb = icmp ne ptr %.117.i, %i.ge
  %i.jc = select i1 %i.ja, i1 %i.jb, i1 false
  br i1 %i.jc, label %.lr.ph.i36, label %._crit_edge.i, !llvm.loop !22

._crit_edge.i:                                    ; preds = %bb.cn
  %i.jd = ptrtoint ptr %i.gd to i64
  %i.je = ptrtoint ptr %.1.i to i64
  %i.jf = sub i64 %i.jd, %i.je                    ; 2 uses
  %i.jg = icmp sgt i64 %i.jf, 0
  br i1 %i.jg, label %.lr.ph.preheader.i.i.i.i.i.i31, label %_ZSt4moveIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i

.lr.ph.preheader.i.i.i.i.i.i31:                   ; preds = %._crit_edge.i
  %i.jh = udiv exact i64 %i.jf, 72
  br label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit113, %.lr.ph.preheader.i.i.i.i.i.i31
  %.012.i.i.i.i.i.i33 = phi i64 [ %i.ku, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit113 ], [ %i.jh, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 2 uses
  %.0811.i.i.i.i.i.i34 = phi ptr [ %i.kt, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit113 ], [ %i.iz, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 9 uses
  %.0910.i.i.i.i.i.i35 = phi ptr [ %i.ks, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit113 ], [ %.1.i, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 8 uses
  %i.ji = load i32, ptr %.0910.i.i.i.i.i.i35, align 8, !tbaa !290
  store i32 %i.ji, ptr %.0811.i.i.i.i.i.i34, align 8, !tbaa !290
  %i.jj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 8 ; 6 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 8 ; 4 uses
  %i.jl = icmp eq ptr %.0811.i.i.i.i.i.i34, %.0910.i.i.i.i.i.i35
  br i1 %i.jl, label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit113, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i.i.i.i.i32
  %i.jm = load ptr, ptr %i.jk, align 8, !tbaa !45 ; 6 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 24 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jp = load ptr, ptr %i.jj, align 8, !tbaa !45 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 24
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i100, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @free(ptr noundef %i.jp) #26
  %.pre.i99 = load ptr, ptr %i.jk, align 8, !tbaa !45
  br label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i100

_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i100: ; preds = %bb.cq, %bb.cp
  %i.js = phi ptr [ %i.jm, %bb.cp ], [ %.pre.i99, %bb.cq ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 16
  store ptr %i.js, ptr %i.jj, align 8, !tbaa !45
  %i.ju = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 16 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 20
  %i.jw = load <2 x i32>, ptr %i.ju, align 8, !tbaa !122
  store <2 x i32> %i.jw, ptr %i.jt, align 8, !tbaa !122
  store ptr %i.jn, ptr %i.jk, align 8, !tbaa !45
  store i32 0, ptr %i.jv, align 4, !tbaa !77
  store i32 0, ptr %i.ju, align 8, !tbaa !76
  br label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit113

bb.cr:                                            ; preds = %bb.co
  %i.jx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 16 ; 4 uses
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !76 ; 6 uses
  %i.jz = zext i32 %i.jy to i64                   ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 16 ; 4 uses
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !76 ; 4 uses
  %i.kc = zext i32 %i.kb to i64                   ; 2 uses
  %.not.i101 = icmp ult i32 %i.kb, %i.jy
  br i1 %.not.i101, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kd = load ptr, ptr %i.jj, align 8, !tbaa !45 ; 2 uses
  switch i32 %i.jy, label %bb.ct [
    i32 0, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i102
    i32 1, label %bb.cu
  ], !prof !364

bb.ct:                                            ; preds = %bb.cs
  %.idx.i103 = shl nuw nsw i64 %i.jz, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.kd, ptr align 4 %i.jm, i64 %.idx.i103, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i102

bb.cu:                                            ; preds = %bb.cs
  %i.ke = load i32, ptr %i.jm, align 4, !tbaa !122
  store i32 %i.ke, ptr %i.kd, align 4, !tbaa !122
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i102

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i102:            ; preds = %bb.cu, %bb.ct, %bb.cs
  store i32 %i.jy, ptr %i.ka, align 8, !tbaa !76
  store i32 0, ptr %i.jx, align 8, !tbaa !76
  br label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit113

bb.cv:                                            ; preds = %bb.cr
  %i.kf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 20
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !77
  %i.kh = icmp ult i32 %i.kg, %i.jy
  br i1 %i.kh, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.ka, align 8, !tbaa !76
  %i.ki = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.jj, ptr noundef nonnull %i.ki, i64 noundef %i.jz, i64 noundef 4) #26
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i107

bb.cx:                                            ; preds = %bb.cv
  %.not32.i104 = icmp eq i32 %i.kb, 0
  br i1 %.not32.i104, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i107, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kj = load ptr, ptr %i.jj, align 8, !tbaa !45 ; 2 uses
  %.not37.i105 = icmp eq i32 %i.kb, 1
  br i1 %.not37.i105, label %bb.da, label %bb.cz, !prof !95

bb.cz:                                            ; preds = %bb.cy
  %.idx36.i106 = shl nuw nsw i64 %i.kc, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.kj, ptr align 4 %i.jm, i64 %.idx36.i106, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i107

bb.da:                                            ; preds = %bb.cy
  %i.kk = load i32, ptr %i.jm, align 4, !tbaa !122
  store i32 %i.kk, ptr %i.kj, align 4, !tbaa !122
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i107

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i107:          ; preds = %bb.da, %bb.cz, %bb.cx, %bb.cw
  %.026.i108 = phi i64 [ 0, %bb.cw ], [ 0, %bb.cx ], [ %i.kc, %bb.cz ], [ 1, %bb.da ] ; 4 uses
  %i.kl = load i32, ptr %i.jx, align 8, !tbaa !76
  %i.km = zext i32 %i.kl to i64                   ; 2 uses
  %.not.i.i.i109 = icmp samesign eq i64 %.026.i108, %i.km
  br i1 %.not.i.i.i109, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i112, label %bb.db

bb.db:                                            ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i107
  %i.kn = load ptr, ptr %i.jk, align 8, !tbaa !45
  %.idx39.i110 = shl nuw nsw i64 %.026.i108, 2
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %.idx39.i110
  %i.kp = load ptr, ptr %i.jj, align 8, !tbaa !45
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %.026.i108
  %i.kr = sub nsw i64 %i.km, %.026.i108
  %gepdiff.i111 = shl nsw i64 %i.kr, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kq, ptr align 4 %i.ko, i64 %gepdiff.i111, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i112

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i112: ; preds = %bb.db, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i107
  store i32 %i.jy, ptr %i.ka, align 8, !tbaa !76
  store i32 0, ptr %i.jx, align 8, !tbaa !76
  br label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit113

_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit113:      ; preds = %.lr.ph.i.i.i.i.i.i32, %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i100, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i102, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i112
  %i.ks = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 72
  %i.kt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 72 ; 2 uses
  %i.ku = add nsw i64 %.012.i.i.i.i.i.i33, -1
  %i.kv = icmp samesign ugt i64 %.012.i.i.i.i.i.i33, 1
  br i1 %i.kv, label %.lr.ph.i.i.i.i.i.i32, label %_ZSt4moveIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i, !llvm.loop !21

_ZSt4moveIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i: ; preds = %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit113, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %i.iz, %._crit_edge.i ], [ %i.kt, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit113 ]
  %i.kw = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64 ; 2 uses
  %i.kx = ptrtoint ptr %i.iz to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = getelementptr inbounds i8, ptr %i.iz, i64 %i.ky ; 3 uses
  %i.la = ptrtoint ptr %i.ge to i64               ; 2 uses
  %i.lb = ptrtoint ptr %.117.i to i64
  %i.lc = sub i64 %i.la, %i.lb                    ; 2 uses
  %i.ld = icmp sgt i64 %i.lc, 0
  br i1 %i.ld, label %.lr.ph.preheader.i.i.i.i.i19.i, label %"_ZSt12__move_mergeIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEET0_T_SP_SP_SP_SO_T1_.exit"

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i
  %i.le = udiv exact i64 %i.lc, 72
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit98, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.mr, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit98 ], [ %i.le, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.mq, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit98 ], [ %i.kz, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 9 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.mp, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit98 ], [ %.117.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 8 uses
  %i.lf = load i32, ptr %.0910.i.i.i.i.i23.i, align 8, !tbaa !290
  store i32 %i.lf, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !290
  %i.lg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 8 ; 6 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 8 ; 4 uses
  %i.li = icmp eq ptr %.0811.i.i.i.i.i22.i, %.0910.i.i.i.i.i23.i
  br i1 %i.li, label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit98, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i.i20.i
  %i.lj = load ptr, ptr %i.lh, align 8, !tbaa !45 ; 6 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 24 ; 2 uses
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.lm = load ptr, ptr %i.lg, align 8, !tbaa !45 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 24
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i85, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @free(ptr noundef %i.lm) #26
  %.pre.i84 = load ptr, ptr %i.lh, align 8, !tbaa !45
  br label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i85

_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i85: ; preds = %bb.de, %bb.dd
  %i.lp = phi ptr [ %i.lj, %bb.dd ], [ %.pre.i84, %bb.de ]
  %i.lq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 16
  store ptr %i.lp, ptr %i.lg, align 8, !tbaa !45
  %i.lr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 16 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 20
  %i.lt = load <2 x i32>, ptr %i.lr, align 8, !tbaa !122
  store <2 x i32> %i.lt, ptr %i.lq, align 8, !tbaa !122
  store ptr %i.lk, ptr %i.lh, align 8, !tbaa !45
  store i32 0, ptr %i.ls, align 4, !tbaa !77
  store i32 0, ptr %i.lr, align 8, !tbaa !76
  br label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit98

bb.df:                                            ; preds = %bb.dc
  %i.lu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 16 ; 4 uses
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !76 ; 6 uses
  %i.lw = zext i32 %i.lv to i64                   ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 16 ; 4 uses
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !76 ; 4 uses
  %i.lz = zext i32 %i.ly to i64                   ; 2 uses
  %.not.i86 = icmp ult i32 %i.ly, %i.lv
  br i1 %.not.i86, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ma = load ptr, ptr %i.lg, align 8, !tbaa !45 ; 2 uses
  switch i32 %i.lv, label %bb.dh [
    i32 0, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i87
    i32 1, label %bb.di
  ], !prof !364

bb.dh:                                            ; preds = %bb.dg
  %.idx.i88 = shl nuw nsw i64 %i.lw, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ma, ptr align 4 %i.lj, i64 %.idx.i88, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i87

bb.di:                                            ; preds = %bb.dg
  %i.mb = load i32, ptr %i.lj, align 4, !tbaa !122
  store i32 %i.mb, ptr %i.ma, align 4, !tbaa !122
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i87

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i87:             ; preds = %bb.di, %bb.dh, %bb.dg
  store i32 %i.lv, ptr %i.lx, align 8, !tbaa !76
  store i32 0, ptr %i.lu, align 8, !tbaa !76
  br label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit98

bb.dj:                                            ; preds = %bb.df
  %i.mc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 20
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !77
  %i.me = icmp ult i32 %i.md, %i.lv
  br i1 %i.me, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.lx, align 8, !tbaa !76
  %i.mf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.lg, ptr noundef nonnull %i.mf, i64 noundef %i.lw, i64 noundef 4) #26
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i92

bb.dl:                                            ; preds = %bb.dj
  %.not32.i89 = icmp eq i32 %i.ly, 0
  br i1 %.not32.i89, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i92, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mg = load ptr, ptr %i.lg, align 8, !tbaa !45 ; 2 uses
  %.not37.i90 = icmp eq i32 %i.ly, 1
  br i1 %.not37.i90, label %bb.do, label %bb.dn, !prof !95

bb.dn:                                            ; preds = %bb.dm
  %.idx36.i91 = shl nuw nsw i64 %i.lz, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.mg, ptr align 4 %i.lj, i64 %.idx36.i91, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i92

bb.do:                                            ; preds = %bb.dm
  %i.mh = load i32, ptr %i.lj, align 4, !tbaa !122
  store i32 %i.mh, ptr %i.mg, align 4, !tbaa !122
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i92

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i92:           ; preds = %bb.do, %bb.dn, %bb.dl, %bb.dk
  %.026.i93 = phi i64 [ 0, %bb.dk ], [ 0, %bb.dl ], [ %i.lz, %bb.dn ], [ 1, %bb.do ] ; 4 uses
  %i.mi = load i32, ptr %i.lu, align 8, !tbaa !76
  %i.mj = zext i32 %i.mi to i64                   ; 2 uses
  %.not.i.i.i94 = icmp samesign eq i64 %.026.i93, %i.mj
  br i1 %.not.i.i.i94, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i97, label %bb.dp

bb.dp:                                            ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i92
  %i.mk = load ptr, ptr %i.lh, align 8, !tbaa !45
  %.idx39.i95 = shl nuw nsw i64 %.026.i93, 2
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.idx39.i95
  %i.mm = load ptr, ptr %i.lg, align 8, !tbaa !45
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %.026.i93
  %i.mo = sub nsw i64 %i.mj, %.026.i93
  %gepdiff.i96 = shl nsw i64 %i.mo, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mn, ptr align 4 %i.ml, i64 %gepdiff.i96, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i97

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i97: ; preds = %bb.dp, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i92
  store i32 %i.lv, ptr %i.lx, align 8, !tbaa !76
  store i32 0, ptr %i.lu, align 8, !tbaa !76
  br label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit98

_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit98:       ; preds = %.lr.ph.i.i.i.i.i20.i, %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i85, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i87, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i97
  %i.mp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 72
  %i.mq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 72 ; 2 uses
  %i.mr = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.ms = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.ms, label %.lr.ph.i.i.i.i.i20.i, label %"_ZSt12__move_mergeIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEET0_T_SP_SP_SP_SO_T1_.exit", !llvm.loop !21

"_ZSt12__move_mergeIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEET0_T_SP_SP_SP_SO_T1_.exit": ; preds = %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit98, %_ZSt4moveIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.kz, %_ZSt4moveIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i ], [ %i.mq, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit98 ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.mt = sub i64 %3, %i.kw
  %i.mu = getelementptr inbounds i8, ptr %i.kz, i64 %i.mt ; 2 uses
  %i.mv = sub i64 %i.l, %i.la
  %i.mw = sdiv exact i64 %i.mv, 72                ; 2 uses
  %.not.i23 = icmp slt i64 %i.mw, %i.gc
  br i1 %.not.i23, label %"_ZSt17__merge_sort_loopIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_T1_T2_.exit", label %.lr.ph.i22, !llvm.loop !1693

"_ZSt17__merge_sort_loopIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEET0_T_SP_SP_SP_SO_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm10SuffixTree17RepeatedSubstringESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_T1_T2_.exit"
  %.0.lcssa.i24 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm10SuffixTree17RepeatedSubstringESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_T1_T2_.exit" ], [ %i.ge, %"_ZSt12__move_mergeIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEET0_T_SP_SP_SP_SO_T1_.exit" ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm10SuffixTree17RepeatedSubstringESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_T1_T2_.exit" ], [ %i.mu, %"_ZSt12__move_mergeIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEET0_T_SP_SP_SP_SO_T1_.exit" ]
  %.lcssa.i25 = phi i64 [ %i.m, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm10SuffixTree17RepeatedSubstringESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_T1_T2_.exit" ], [ %i.mw, %"_ZSt12__move_mergeIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEET0_T_SP_SP_SP_SO_T1_.exit" ]
  %.sroa.speculated.i26 = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %.lcssa.i25)
  %i.mx = getelementptr inbounds [72 x i8], ptr %.0.lcssa.i24, i64 %.sroa.speculated.i26 ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEET0_T_SP_SP_SP_SO_T1_"(ptr noundef %.0.lcssa.i24, ptr noundef %i.mx, ptr noundef %i.mx, ptr noundef nonnull %i.e, ptr %.sroa.022.0.lcssa.i)
  %i.my = icmp slt i64 %i.gc, %i.d
  br i1 %i.my, label %bb.b, label %._crit_edge, !llvm.loop !1694

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm10SuffixTree17RepeatedSubstringESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_T1_.exit.thread", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm10SuffixTree17RepeatedSubstringESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN4llvm10SuffixTree17RepeatedSubstringESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_SO_T0_SP_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #3 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_SP_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.f = load i32, ptr %.0910.i.i.i.i.i, align 8, !tbaa !290
  store i32 %i.f, ptr %.0811.i.i.i.i.i, align 8, !tbaa !290
  %i.g = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.h) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72 ; 3 uses
  %i.l = add nsw i64 %.012.i.i.i.i.i, -1
  %i.m = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !21

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.026.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.sroa.0.025.i = phi ptr [ %i.v, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.sroa.016.024.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.not19.i = icmp eq ptr %.sroa.016.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.0.val.i = load i32, ptr %.026.i, align 8, !tbaa !290 ; 2 uses
  %.val.i.i = load i32, ptr %.sroa.016.024.i, align 8, !tbaa !290 ; 2 uses
  %i.n = icmp ugt i32 %.val.i.i, %.0.val.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 8 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %.val.i.i, ptr %.sroa.0.025.i, align 8, !tbaa !290
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 8
  %i.q = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.p) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 72
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 %.0.val.i, ptr %.sroa.0.025.i, align 8, !tbaa !290
  %i.s = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.s) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.026.i, i64 72
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.016.1.i = phi ptr [ %i.r, %bb.d ], [ %.sroa.016.024.i, %bb.e ]
  %.1.i = phi ptr [ %.026.i, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 72
  %.not.i = icmp eq ptr %.1.i, %i.k
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_SP_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !1695

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.w = ptrtoint ptr %i.k to i64
  %i.x = ptrtoint ptr %.026.i to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_SP_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.aa = udiv exact i64 %i.y, 72
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.025.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.026.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ab = load i32, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !290
  store i32 %i.ab, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !290
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.ad) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 72
  %i.ah = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ai = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_SP_T1_T2_.exit", !llvm.loop !21

bb.g:                                             ; preds = %bb.a
  %i.aj = ptrtoint ptr %2 to i64
  %i.ak = ptrtoint ptr %1 to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm10SuffixTree17RepeatedSubstringESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29

.lr.ph.preheader.i.i.i.i.i24:                     ; preds = %bb.g
  %i.an = udiv exact i64 %i.al, 72
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.preheader.i.i.i.i.i24
  %.012.i.i.i.i.i26 = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i25 ], [ %i.an, %.lr.ph.preheader.i.i.i.i.i24 ] ; 2 uses
  %.0811.i.i.i.i.i27 = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i25 ], [ %5, %.lr.ph.preheader.i.i.i.i.i24 ] ; 3 uses
  %.0910.i.i.i.i.i28 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i25 ], [ %1, %.lr.ph.preheader.i.i.i.i.i24 ] ; 3 uses
  %i.ao = load i32, ptr %.0910.i.i.i.i.i28, align 8, !tbaa !290
  store i32 %i.ao, ptr %.0811.i.i.i.i.i27, align 8, !tbaa !290
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 8
  %i.ar = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.aq) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 72 ; 2 uses
  %i.au = add nsw i64 %.012.i.i.i.i.i26, -1
  %i.av = icmp samesign ugt i64 %.012.i.i.i.i.i26, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i25, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm10SuffixTree17RepeatedSubstringESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29, !llvm.loop !21

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm10SuffixTree17RepeatedSubstringESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29: ; preds = %.lr.ph.i.i.i.i.i25, %bb.g
  %.08.lcssa.i.i.i.i.i23 = phi ptr [ %5, %bb.g ], [ %i.at, %.lr.ph.i.i.i.i.i25 ] ; 4 uses
  %i.aw = icmp eq ptr %0, %1
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm10SuffixTree17RepeatedSubstringESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29
  %i.ax = ptrtoint ptr %.08.lcssa.i.i.i.i.i23 to i64
  %i.ay = ptrtoint ptr %5 to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.preheader.i.i.i.i.i.i32, label %"_ZSt21__move_merge_adaptiveIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_SP_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i32:                   ; preds = %bb.h
  %i.bb = udiv exact i64 %i.az, 72
  br label %.lr.ph.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i33:                             ; preds = %.lr.ph.i.i.i.i.i.i33, %.lr.ph.preheader.i.i.i.i.i.i32
  %.010.i.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i.i33 ], [ %i.bb, %.lr.ph.preheader.i.i.i.i.i.i32 ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i33 ], [ %2, %.lr.ph.preheader.i.i.i.i.i.i32 ] ; 2 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i33 ], [ %.08.lcssa.i.i.i.i.i23, %.lr.ph.preheader.i.i.i.i.i.i32 ] ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -72 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -72 ; 2 uses
  %i.be = load i32, ptr %i.bc, align 8, !tbaa !290
  store i32 %i.be, ptr %i.bd, align 8, !tbaa !290
  %i.bf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64
  %i.bg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64
  %i.bh = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull align 8 dereferenceable(64) %i.bg) ; 0 uses
  %i.bi = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.bj = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i33, label %"_ZSt21__move_merge_adaptiveIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_SP_T1_T2_.exit", !llvm.loop !23

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm10SuffixTree17RepeatedSubstringESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29
  %i.bk = icmp eq ptr %5, %.08.lcssa.i.i.i.i.i23
  br i1 %i.bk, label %"_ZSt21__move_merge_adaptiveIPN4llvm10SuffixTree17RepeatedSubstringEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_12IRSimilarity22IRSimilarityIdentifier14findCandidatesERS6_IPNSC_17IRInstructionDataESaISF_EERS6_IjSaIjEEE3$_0EEEvT_SO_T0_SP_T1_T2_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i23, i64 -72
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.j
  %.sroa.028.0.i.ph.pn = phi ptr [ %1, %bb.j ], [ %.sroa.028.0.i.ph, %bb.l ] ; 2 uses
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.j ], [ %i.bn, %bb.l ]
  %.0.i.ph = phi ptr [ %i.bl, %bb.j ], [ %.0.i, %bb.l ]
  %.sroa.028.0.i.ph = getelementptr inbounds i8, ptr %.sroa.028.0.i.ph.pn, i64 -72 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.outer, %bb.o
  %.sroa.0.0.i = phi ptr [ %i.bn, %bb.o ], [ %.sroa.0.0.i.ph, %.outer ] ; 2 uses
  %.0.i = phi ptr [ %i.cj, %bb.o ], [ %.0.i.ph, %.outer ] ; 6 uses
  %.0.val.i30 = load i32, ptr %.0.i, align 8, !tbaa !290 ; 2 uses
  %.val2.i.i = load i32, ptr %.sroa.028.0.i.ph, align 8, !tbaa !290 ; 2 uses
  %i.bm = icmp ugt i32 %.0.val.i30, %.val2.i.i
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -72 ; 5 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -64 ; 2 uses
  br i1 %i.bm, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  store i32 %.val2.i.i, ptr %i.bn, align 8, !tbaa !290
  %i.bp = getelementptr inbounds i8, ptr %.sroa.028.0.i.ph.pn, i64 -64
  %i.bq = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.bo, ptr noundef nonnull align 8 dereferenceable(64) %i.bp) ; 0 uses
  %i.br = icmp eq ptr %0, %.sroa.028.0.i.ph
end_hunk_0
