Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ConstantHoisting?download=true
inline.NumInlined: 3366
inline.NumDeleted: 1744
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm10consthoist17ConstantCandidateESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_20ConstantHoistingPass17findBaseConstantsEPNS2_14GlobalVariableEE3$_0EEEvT_SH_T0_T1_":bb.a
bb.ci:                                            ; preds = %bb.cg
  %.not32.i121 = icmp eq i32 %i.iu, 0
  br i1 %.not32.i121, label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i124, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jb = load ptr, ptr %.sroa.0.028.i, align 8, !tbaa !45 ; 2 uses
  %.not37.i122 = icmp eq i32 %i.iu, 1
  br i1 %.not37.i122, label %bb.cl, label %bb.ck, !prof !168

bb.ck:                                            ; preds = %bb.cj
  %.idx36.i123 = shl nuw nsw i64 %i.iv, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jb, ptr align 8 %i.if, i64 %.idx36.i123, i1 false)
  br label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i124

bb.cl:                                            ; preds = %bb.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jb, ptr noundef nonnull align 8 dereferenceable(12) %i.if, i64 12, i1 false), !tbaa.struct !266
  br label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i124

_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i124: ; preds = %bb.cl, %bb.ck, %bb.ci, %bb.ch
  %.026.i125 = phi i64 [ 0, %bb.ch ], [ 0, %bb.ci ], [ %i.iv, %bb.ck ], [ 1, %bb.cl ] ; 4 uses
  %i.jc = load i32, ptr %i.iq, align 8, !tbaa !59
  %i.jd = zext i32 %i.jc to i64                   ; 2 uses
  %.not.i.i.i126 = icmp samesign eq i64 %.026.i125, %i.jd
  br i1 %.not.i.i.i126, label %_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist12ConstantUserELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i129, label %bb.cm

bb.cm:                                            ; preds = %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i124
  %i.je = load ptr, ptr %.031.i, align 8, !tbaa !45
  %.idx39.i127 = shl nuw nsw i64 %.026.i125, 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %.idx39.i127
  %i.jg = load ptr, ptr %.sroa.0.028.i, align 8, !tbaa !45
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.026.i125
  %i.ji = sub nsw i64 %i.jd, %.026.i125
  %gepdiff.i128 = shl nsw i64 %i.ji, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jh, ptr align 8 %i.jf, i64 %gepdiff.i128, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist12ConstantUserELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i129

_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist12ConstantUserELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i129: ; preds = %bb.cm, %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i124
  store i32 %i.ir, ptr %i.it, align 8, !tbaa !59
  store i32 0, ptr %i.iq, align 8, !tbaa !59
  br label %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit130

_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit130: ; preds = %bb.by, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEE12assignRemoteEOS3_.exit.i117, %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit.i119, %_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist12ConstantUserELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i129
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.jj, ptr noundef nonnull align 8 dereferenceable(20) %i.gj, i64 20, i1 false)
  %i.jk = getelementptr inbounds nuw i8, ptr %.031.i, i64 168
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit130, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit145
  %.117.i = phi ptr [ %i.id, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit145 ], [ %.01630.i, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit130 ] ; 4 uses
  %.1.i = phi ptr [ %.031.i, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit145 ], [ %i.jk, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit130 ] ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 168 ; 5 uses
  %i.jm = icmp ne ptr %.1.i, %i.gg
  %i.jn = icmp ne ptr %.117.i, %i.gh
  %i.jo = select i1 %i.jm, i1 %i.jn, i1 false
  br i1 %i.jo, label %.lr.ph.i36, label %._crit_edge.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %bb.cn
  %i.jp = ptrtoint ptr %i.gg to i64
  %i.jq = ptrtoint ptr %.1.i to i64
  %i.jr = sub i64 %i.jp, %i.jq                    ; 2 uses
  %i.js = icmp sgt i64 %i.jr, 0
  br i1 %i.js, label %.lr.ph.preheader.i.i.i.i.i.i31, label %_ZSt4moveIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i

.lr.ph.preheader.i.i.i.i.i.i31:                   ; preds = %._crit_edge.i
  %i.jt = udiv exact i64 %i.jr, 168
  br label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit115, %.lr.ph.preheader.i.i.i.i.i.i31
  %.012.i.i.i.i.i.i33 = phi i64 [ %i.ld, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit115 ], [ %i.jt, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 2 uses
  %.0811.i.i.i.i.i.i34 = phi ptr [ %i.lc, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit115 ], [ %i.jl, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 14 uses
  %.0910.i.i.i.i.i.i35 = phi ptr [ %i.lb, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit115 ], [ %.1.i, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 11 uses
  %i.ju = icmp eq ptr %.0811.i.i.i.i.i.i34, %.0910.i.i.i.i.i.i35
  br i1 %i.ju, label %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit115, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i.i.i.i.i32
  %i.jv = load ptr, ptr %.0910.i.i.i.i.i.i35, align 8, !tbaa !45 ; 6 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 16 ; 2 uses
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jy = load ptr, ptr %.0811.i.i.i.i.i.i34, align 8, !tbaa !45 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 16
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEE12assignRemoteEOS3_.exit.i102, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @free(ptr noundef %i.jy) #21
  %.pre.i101 = load ptr, ptr %.0910.i.i.i.i.i.i35, align 8, !tbaa !45
  br label %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEE12assignRemoteEOS3_.exit.i102

_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEE12assignRemoteEOS3_.exit.i102: ; preds = %bb.cq, %bb.cp
  %i.kb = phi ptr [ %i.jv, %bb.cp ], [ %.pre.i101, %bb.cq ]
  %i.kc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 8
  store ptr %i.kb, ptr %.0811.i.i.i.i.i.i34, align 8, !tbaa !45
  %i.kd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 8 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 12
  %i.kf = load <2 x i32>, ptr %i.kd, align 8, !tbaa !161
  store <2 x i32> %i.kf, ptr %i.kc, align 8, !tbaa !161
  store ptr %i.jw, ptr %.0910.i.i.i.i.i.i35, align 8, !tbaa !45
  store i32 0, ptr %i.ke, align 4, !tbaa !60
  store i32 0, ptr %i.kd, align 8, !tbaa !59
  br label %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit115

bb.cr:                                            ; preds = %bb.co
  %i.kg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 8 ; 4 uses
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !59 ; 6 uses
  %i.ki = zext i32 %i.kh to i64                   ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 8 ; 4 uses
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !59 ; 4 uses
  %i.kl = zext i32 %i.kk to i64                   ; 2 uses
  %.not.i103 = icmp ult i32 %i.kk, %i.kh
  br i1 %.not.i103, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.km = load ptr, ptr %.0811.i.i.i.i.i.i34, align 8, !tbaa !45 ; 2 uses
  switch i32 %i.kh, label %bb.ct [
    i32 0, label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit.i104
    i32 1, label %bb.cu
  ], !prof !281

bb.ct:                                            ; preds = %bb.cs
  %.idx.i105 = shl nuw nsw i64 %i.ki, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.km, ptr align 8 %i.jv, i64 %.idx.i105, i1 false)
  br label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit.i104

bb.cu:                                            ; preds = %bb.cs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.km, ptr noundef nonnull align 8 dereferenceable(12) %i.jv, i64 12, i1 false), !tbaa.struct !266
  br label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit.i104

_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit.i104: ; preds = %bb.cu, %bb.ct, %bb.cs
  store i32 %i.kh, ptr %i.kj, align 8, !tbaa !59
  store i32 0, ptr %i.kg, align 8, !tbaa !59
  br label %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit115

bb.cv:                                            ; preds = %bb.cr
  %i.kn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 12
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !60
  %i.kp = icmp ult i32 %i.ko, %i.kh
  br i1 %i.kp, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.kj, align 8, !tbaa !59
  %i.kq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(164) %.0811.i.i.i.i.i.i34, ptr noundef nonnull %i.kq, i64 noundef %i.ki, i64 noundef 16) #21
  br label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i109

bb.cx:                                            ; preds = %bb.cv
  %.not32.i106 = icmp eq i32 %i.kk, 0
  br i1 %.not32.i106, label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i109, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kr = load ptr, ptr %.0811.i.i.i.i.i.i34, align 8, !tbaa !45 ; 2 uses
  %.not37.i107 = icmp eq i32 %i.kk, 1
  br i1 %.not37.i107, label %bb.da, label %bb.cz, !prof !168

bb.cz:                                            ; preds = %bb.cy
  %.idx36.i108 = shl nuw nsw i64 %i.kl, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kr, ptr align 8 %i.jv, i64 %.idx36.i108, i1 false)
  br label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i109

bb.da:                                            ; preds = %bb.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kr, ptr noundef nonnull align 8 dereferenceable(12) %i.jv, i64 12, i1 false), !tbaa.struct !266
  br label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i109

_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i109: ; preds = %bb.da, %bb.cz, %bb.cx, %bb.cw
  %.026.i110 = phi i64 [ 0, %bb.cw ], [ 0, %bb.cx ], [ %i.kl, %bb.cz ], [ 1, %bb.da ] ; 4 uses
  %i.ks = load i32, ptr %i.kg, align 8, !tbaa !59
  %i.kt = zext i32 %i.ks to i64                   ; 2 uses
  %.not.i.i.i111 = icmp samesign eq i64 %.026.i110, %i.kt
  br i1 %.not.i.i.i111, label %_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist12ConstantUserELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i114, label %bb.db

bb.db:                                            ; preds = %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i109
  %i.ku = load ptr, ptr %.0910.i.i.i.i.i.i35, align 8, !tbaa !45
  %.idx39.i112 = shl nuw nsw i64 %.026.i110, 4
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.idx39.i112
  %i.kw = load ptr, ptr %.0811.i.i.i.i.i.i34, align 8, !tbaa !45
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.kw, i64 %.026.i110
  %i.ky = sub nsw i64 %i.kt, %.026.i110
  %gepdiff.i113 = shl nsw i64 %i.ky, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kx, ptr align 8 %i.kv, i64 %gepdiff.i113, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist12ConstantUserELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i114

_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist12ConstantUserELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i114: ; preds = %bb.db, %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i109
  store i32 %i.kh, ptr %i.kj, align 8, !tbaa !59
  store i32 0, ptr %i.kg, align 8, !tbaa !59
  br label %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit115

_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit115: ; preds = %.lr.ph.i.i.i.i.i.i32, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEE12assignRemoteEOS3_.exit.i102, %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit.i104, %_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist12ConstantUserELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i114
  %i.kz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 144
  %i.la = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.kz, ptr noundef nonnull align 8 dereferenceable(20) %i.la, i64 20, i1 false)
  %i.lb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 168
  %i.lc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 168 ; 2 uses
  %i.ld = add nsw i64 %.012.i.i.i.i.i.i33, -1
  %i.le = icmp samesign ugt i64 %.012.i.i.i.i.i.i33, 1
  br i1 %i.le, label %.lr.ph.i.i.i.i.i.i32, label %_ZSt4moveIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i, !llvm.loop !18

_ZSt4moveIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i: ; preds = %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit115, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %i.jl, %._crit_edge.i ], [ %i.lc, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit115 ]
  %i.lf = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64 ; 2 uses
  %i.lg = ptrtoint ptr %i.jl to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = getelementptr inbounds i8, ptr %i.jl, i64 %i.lh ; 3 uses
  %i.lj = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.lk = ptrtoint ptr %.117.i to i64
  %i.ll = sub i64 %i.lj, %i.lk                    ; 2 uses
  %i.lm = icmp sgt i64 %i.ll, 0
  br i1 %i.lm, label %.lr.ph.preheader.i.i.i.i.i19.i, label %"_ZSt12__move_mergeIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit"

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i
  %i.ln = udiv exact i64 %i.ll, 168
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit100, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.mx, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit100 ], [ %i.ln, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.mw, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit100 ], [ %i.li, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 14 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.mv, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit100 ], [ %.117.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 11 uses
  %i.lo = icmp eq ptr %.0811.i.i.i.i.i22.i, %.0910.i.i.i.i.i23.i
  br i1 %i.lo, label %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit100, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i.i20.i
  %i.lp = load ptr, ptr %.0910.i.i.i.i.i23.i, align 8, !tbaa !45 ; 6 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 16 ; 2 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ls = load ptr, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !45 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 16
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEE12assignRemoteEOS3_.exit.i87, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @free(ptr noundef %i.ls) #21
  %.pre.i86 = load ptr, ptr %.0910.i.i.i.i.i23.i, align 8, !tbaa !45
  br label %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEE12assignRemoteEOS3_.exit.i87

_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEE12assignRemoteEOS3_.exit.i87: ; preds = %bb.de, %bb.dd
  %i.lv = phi ptr [ %i.lp, %bb.dd ], [ %.pre.i86, %bb.de ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 8
  store ptr %i.lv, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !45
  %i.lx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 8 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 12
  %i.lz = load <2 x i32>, ptr %i.lx, align 8, !tbaa !161
  store <2 x i32> %i.lz, ptr %i.lw, align 8, !tbaa !161
  store ptr %i.lq, ptr %.0910.i.i.i.i.i23.i, align 8, !tbaa !45
  store i32 0, ptr %i.ly, align 4, !tbaa !60
  store i32 0, ptr %i.lx, align 8, !tbaa !59
  br label %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit100

bb.df:                                            ; preds = %bb.dc
  %i.ma = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 8 ; 4 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !59 ; 6 uses
  %i.mc = zext i32 %i.mb to i64                   ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 8 ; 4 uses
  %i.me = load i32, ptr %i.md, align 8, !tbaa !59 ; 4 uses
  %i.mf = zext i32 %i.me to i64                   ; 2 uses
  %.not.i88 = icmp ult i32 %i.me, %i.mb
  br i1 %.not.i88, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mg = load ptr, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !45 ; 2 uses
  switch i32 %i.mb, label %bb.dh [
    i32 0, label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit.i89
    i32 1, label %bb.di
  ], !prof !281

bb.dh:                                            ; preds = %bb.dg
  %.idx.i90 = shl nuw nsw i64 %i.mc, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.mg, ptr align 8 %i.lp, i64 %.idx.i90, i1 false)
  br label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit.i89

bb.di:                                            ; preds = %bb.dg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.mg, ptr noundef nonnull align 8 dereferenceable(12) %i.lp, i64 12, i1 false), !tbaa.struct !266
  br label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit.i89

_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit.i89: ; preds = %bb.di, %bb.dh, %bb.dg
  store i32 %i.mb, ptr %i.md, align 8, !tbaa !59
  store i32 0, ptr %i.ma, align 8, !tbaa !59
  br label %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit100

bb.dj:                                            ; preds = %bb.df
  %i.mh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 12
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !60
  %i.mj = icmp ult i32 %i.mi, %i.mb
  br i1 %i.mj, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.md, align 8, !tbaa !59
  %i.mk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(164) %.0811.i.i.i.i.i22.i, ptr noundef nonnull %i.mk, i64 noundef %i.mc, i64 noundef 16) #21
  br label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i94

bb.dl:                                            ; preds = %bb.dj
  %.not32.i91 = icmp eq i32 %i.me, 0
  br i1 %.not32.i91, label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i94, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ml = load ptr, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !45 ; 2 uses
  %.not37.i92 = icmp eq i32 %i.me, 1
  br i1 %.not37.i92, label %bb.do, label %bb.dn, !prof !168

bb.dn:                                            ; preds = %bb.dm
  %.idx36.i93 = shl nuw nsw i64 %i.mf, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ml, ptr align 8 %i.lp, i64 %.idx36.i93, i1 false)
  br label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i94

bb.do:                                            ; preds = %bb.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ml, ptr noundef nonnull align 8 dereferenceable(12) %i.lp, i64 12, i1 false), !tbaa.struct !266
  br label %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i94

_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i94: ; preds = %bb.do, %bb.dn, %bb.dl, %bb.dk
  %.026.i95 = phi i64 [ 0, %bb.dk ], [ 0, %bb.dl ], [ %i.mf, %bb.dn ], [ 1, %bb.do ] ; 4 uses
  %i.mm = load i32, ptr %i.ma, align 8, !tbaa !59
  %i.mn = zext i32 %i.mm to i64                   ; 2 uses
  %.not.i.i.i96 = icmp samesign eq i64 %.026.i95, %i.mn
  br i1 %.not.i.i.i96, label %_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist12ConstantUserELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i99, label %bb.dp

bb.dp:                                            ; preds = %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i94
  %i.mo = load ptr, ptr %.0910.i.i.i.i.i23.i, align 8, !tbaa !45
  %.idx39.i97 = shl nuw nsw i64 %.026.i95, 4
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.idx39.i97
  %i.mq = load ptr, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !45
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %i.mq, i64 %.026.i95
  %i.ms = sub nsw i64 %i.mn, %.026.i95
  %gepdiff.i98 = shl nsw i64 %i.ms, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mr, ptr align 8 %i.mp, i64 %gepdiff.i98, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist12ConstantUserELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i99

_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist12ConstantUserELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i99: ; preds = %bb.dp, %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit34.i94
  store i32 %i.mb, ptr %i.md, align 8, !tbaa !59
  store i32 0, ptr %i.ma, align 8, !tbaa !59
  br label %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit100

_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit100: ; preds = %.lr.ph.i.i.i.i.i20.i, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEE12assignRemoteEOS3_.exit.i87, %_ZSt4moveIPN4llvm10consthoist12ConstantUserES3_ET0_T_S5_S4_.exit.i89, %_ZN4llvm23SmallVectorTemplateBaseINS_10consthoist12ConstantUserELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i99
  %i.mt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 144
  %i.mu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.mt, ptr noundef nonnull align 8 dereferenceable(20) %i.mu, i64 20, i1 false)
  %i.mv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 168
  %i.mw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 168 ; 2 uses
  %i.mx = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.my = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.my, label %.lr.ph.i.i.i.i.i20.i, label %"_ZSt12__move_mergeIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit", !llvm.loop !18

"_ZSt12__move_mergeIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit": ; preds = %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit100, %_ZSt4moveIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.li, %_ZSt4moveIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i ], [ %i.mw, %_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_.exit100 ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.mz = sub i64 %3, %i.lf
  %i.na = getelementptr inbounds i8, ptr %i.li, i64 %i.mz ; 2 uses
  %i.nb = sub i64 %i.l, %i.lj
  %i.nc = sdiv exact i64 %i.nb, 168               ; 2 uses
  %.not.i23 = icmp slt i64 %i.nc, %i.gf
  br i1 %.not.i23, label %"_ZSt17__merge_sort_loopIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEEvT_SH_T0_T1_T2_.exit", label %.lr.ph.i22, !llvm.loop !660

"_ZSt17__merge_sort_loopIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEEvT_SH_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm10consthoist17ConstantCandidateESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_20ConstantHoistingPass17findBaseConstantsEPNS2_14GlobalVariableEE3$_0EEEvT_SH_T0_T1_T2_.exit"
  %.0.lcssa.i24 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm10consthoist17ConstantCandidateESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_20ConstantHoistingPass17findBaseConstantsEPNS2_14GlobalVariableEE3$_0EEEvT_SH_T0_T1_T2_.exit" ], [ %i.gh, %"_ZSt12__move_mergeIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit" ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm10consthoist17ConstantCandidateESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_20ConstantHoistingPass17findBaseConstantsEPNS2_14GlobalVariableEE3$_0EEEvT_SH_T0_T1_T2_.exit" ], [ %i.na, %"_ZSt12__move_mergeIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit" ]
  %.lcssa.i25 = phi i64 [ %i.m, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm10consthoist17ConstantCandidateESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_20ConstantHoistingPass17findBaseConstantsEPNS2_14GlobalVariableEE3$_0EEEvT_SH_T0_T1_T2_.exit" ], [ %i.nc, %"_ZSt12__move_mergeIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEET0_T_SI_SI_SI_SH_T1_.exit" ]
  %.sroa.speculated.i26 = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %.lcssa.i25)
  %i.nd = getelementptr inbounds [168 x i8], ptr %.0.lcssa.i24, i64 %.sroa.speculated.i26 ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEET0_T_SI_SI_SI_SH_T1_"(ptr noundef %.0.lcssa.i24, ptr noundef %i.nd, ptr noundef %i.nd, ptr noundef nonnull %i.e, ptr %.sroa.022.0.lcssa.i)
  %i.ne = icmp slt i64 %i.gf, %i.d
  br i1 %i.ne, label %bb.b, label %._crit_edge, !llvm.loop !661

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEEvT_SH_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm10consthoist17ConstantCandidateESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_20ConstantHoistingPass17findBaseConstantsEPNS2_14GlobalVariableEE3$_0EEEvT_SH_T0_T1_.exit.thread", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm10consthoist17ConstantCandidateESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_20ConstantHoistingPass17findBaseConstantsEPNS2_14GlobalVariableEE3$_0EEEvT_SH_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN4llvm10consthoist17ConstantCandidateESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_20ConstantHoistingPass17findBaseConstantsEPNS2_14GlobalVariableEE3$_0EEEvT_SH_SH_T0_SI_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #3 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEEvT_SH_T0_SI_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 168
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(164) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.0910.i.i.i.i.i) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.g, ptr noundef nonnull align 8 dereferenceable(20) %i.h, i64 20, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 168
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 168 ; 3 uses
  %i.k = add nsw i64 %.012.i.i.i.i.i, -1
  %i.l = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.l, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !18

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.027.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.sroa.0.025.i = phi ptr [ %i.ah, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.sroa.016.024.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.not19.i = icmp eq ptr %.sroa.016.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr i8, ptr %.027.i, i64 144   ; 2 uses
  %.0.val.i = load ptr, ptr %i.m, align 8, !tbaa !198 ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.016.024.i, i64 144 ; 2 uses
  %.val.i.i = load ptr, ptr %i.n, align 8, !tbaa !198 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !177
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !177
  %.not.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm20ConstantHoistingPass17findBaseConstantsEPNS2_14GlobalVariableEE3$_0EclINS_17__normal_iteratorIPNS2_10consthoist17ConstantCandidateESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit.i", label %.split.i

.split.i:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !208
  %i.w = icmp ult i32 %i.t, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm20ConstantHoistingPass17findBaseConstantsEPNS2_14GlobalVariableEE3$_0EclINS_17__normal_iteratorIPNS2_10consthoist17ConstantCandidateESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit.i": ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 24
  %i.z = tail call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(12) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.y) #24
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm20ConstantHoistingPass17findBaseConstantsEPNS2_14GlobalVariableEE3$_0EclINS_17__normal_iteratorIPNS2_10consthoist17ConstantCandidateESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit.i", %.split.i
  %i.ab = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(164) %.sroa.0.025.i, ptr noundef nonnull align 8 dereferenceable(164) %.sroa.016.024.i) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, ptr noundef nonnull align 8 dereferenceable(20) %i.n, i64 20, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 168
  br label %bb.f

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm20ConstantHoistingPass17findBaseConstantsEPNS2_14GlobalVariableEE3$_0EclINS_17__normal_iteratorIPNS2_10consthoist17ConstantCandidateESt6vectorISB_SaISB_EEEESC_EEbT_T0_.exit.i", %.split.i
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(164) %.sroa.0.025.i, ptr noundef nonnull align 8 dereferenceable(164) %.027.i) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.af, ptr noundef nonnull align 8 dereferenceable(20) %i.m, i64 20, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.027.i, i64 168
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.016.1.i = phi ptr [ %i.ad, %bb.d ], [ %.sroa.016.024.i, %bb.e ]
  %.1.i = phi ptr [ %.027.i, %bb.d ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 168
  %.not.i = icmp eq ptr %.1.i, %i.j
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEEvT_SH_T0_SI_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !662

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ai = ptrtoint ptr %i.j to i64
  %i.aj = ptrtoint ptr %.027.i to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEEvT_SH_T0_SI_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.am = udiv exact i64 %i.ak, 168
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.025.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.027.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.an = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(164) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.0910.i.i.i.i.i.i) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 144
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ao, ptr noundef nonnull align 8 dereferenceable(20) %i.ap, i64 20, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 168
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 168
  %i.as = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.at = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEEvT_SH_T0_SI_T1_T2_.exit", !llvm.loop !18

bb.g:                                             ; preds = %bb.a
  %i.au = ptrtoint ptr %2 to i64
  %i.av = ptrtoint ptr %1 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.preheader.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm10consthoist17ConstantCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29

.lr.ph.preheader.i.i.i.i.i24:                     ; preds = %bb.g
  %i.ay = udiv exact i64 %i.aw, 168
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.preheader.i.i.i.i.i24
  %.012.i.i.i.i.i26 = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i25 ], [ %i.ay, %.lr.ph.preheader.i.i.i.i.i24 ] ; 2 uses
  %.0811.i.i.i.i.i27 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i25 ], [ %5, %.lr.ph.preheader.i.i.i.i.i24 ] ; 3 uses
  %.0910.i.i.i.i.i28 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i25 ], [ %1, %.lr.ph.preheader.i.i.i.i.i24 ] ; 3 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(164) %.0811.i.i.i.i.i27, ptr noundef nonnull align 8 dereferenceable(164) %.0910.i.i.i.i.i28) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 144
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ba, ptr noundef nonnull align 8 dereferenceable(20) %i.bb, i64 20, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 168
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 168 ; 2 uses
  %i.be = add nsw i64 %.012.i.i.i.i.i26, -1
  %i.bf = icmp samesign ugt i64 %.012.i.i.i.i.i26, 1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i25, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm10consthoist17ConstantCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29, !llvm.loop !18

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm10consthoist17ConstantCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29: ; preds = %.lr.ph.i.i.i.i.i25, %bb.g
  %.08.lcssa.i.i.i.i.i23 = phi ptr [ %5, %bb.g ], [ %i.bd, %.lr.ph.i.i.i.i.i25 ] ; 4 uses
  %i.bg = icmp eq ptr %0, %1
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm10consthoist17ConstantCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29
  %i.bh = ptrtoint ptr %.08.lcssa.i.i.i.i.i23 to i64
  %i.bi = ptrtoint ptr %5 to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.preheader.i.i.i.i.i.i34, label %"_ZSt21__move_merge_adaptiveIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEEvT_SH_T0_SI_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i34:                   ; preds = %bb.h
  %i.bl = udiv exact i64 %i.bj, 168
  br label %.lr.ph.i.i.i.i.i.i35

.lr.ph.i.i.i.i.i.i35:                             ; preds = %.lr.ph.i.i.i.i.i.i35, %.lr.ph.preheader.i.i.i.i.i.i34
  %.010.i.i.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i.i35 ], [ %i.bl, %.lr.ph.preheader.i.i.i.i.i.i34 ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i35 ], [ %2, %.lr.ph.preheader.i.i.i.i.i.i34 ] ; 2 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i35 ], [ %.08.lcssa.i.i.i.i.i23, %.lr.ph.preheader.i.i.i.i.i.i34 ] ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -168 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -168 ; 2 uses
  %i.bo = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_10consthoist12ConstantUserEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(164) %i.bn, ptr noundef nonnull align 8 dereferenceable(164) %i.bm) ; 0 uses
  %i.bp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  %i.bq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bp, ptr noundef nonnull align 8 dereferenceable(20) %i.bq, i64 20, i1 false)
  %i.br = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.bs = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i.i35, label %"_ZSt21__move_merge_adaptiveIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEEvT_SH_T0_SI_T1_T2_.exit", !llvm.loop !20

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm10consthoist17ConstantCandidateESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29
  %i.bt = icmp eq ptr %5, %.08.lcssa.i.i.i.i.i23
  br i1 %i.bt, label %"_ZSt21__move_merge_adaptiveIPN4llvm10consthoist17ConstantCandidateEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_20ConstantHoistingPass17findBaseConstantsEPNS0_14GlobalVariableEE3$_0EEEvT_SH_T0_SI_T1_T2_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i23, i64 -168
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.j
  %.sroa.028.0.i.ph.pn = phi ptr [ %1, %bb.j ], [ %.sroa.028.0.i.ph, %bb.l ] ; 3 uses
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.j ], [ %i.cl, %bb.l ]
  %.0.i.ph = phi ptr [ %i.bu, %bb.j ], [ %.0.i, %bb.l ]
  %.sroa.028.0.i.ph = getelementptr inbounds i8, ptr %.sroa.028.0.i.ph.pn, i64 -168 ; 3 uses
  %i.bv = getelementptr i8, ptr %.sroa.028.0.i.ph.pn, i64 -24
end_hunk_0
