Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BalancedPartitioning?download=true
inline.NumInlined: 2180
inline.NumDeleted: 1018
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 43
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm14BPFunctionNodeESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZNKS2_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_T1_":bb.a
  %.not37.i121 = icmp eq i32 %i.jf, 1
  br i1 %.not37.i121, label %bb.cl, label %bb.ck, !prof !95

bb.ck:                                            ; preds = %bb.cj
  %.idx36.i122 = shl nuw nsw i64 %i.jg, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.jn, ptr align 4 %i.iq, i64 %.idx36.i122, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i123

bb.cl:                                            ; preds = %bb.cj
  %i.jo = load i32, ptr %i.iq, align 4, !tbaa !91
  store i32 %i.jo, ptr %i.jn, align 4, !tbaa !91
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i123

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i123:          ; preds = %bb.cl, %bb.ck, %bb.ci, %bb.ch
  %.026.i124 = phi i64 [ 0, %bb.ch ], [ 0, %bb.ci ], [ %i.jg, %bb.ck ], [ 1, %bb.cl ] ; 4 uses
  %i.jp = load i32, ptr %i.jb, align 8, !tbaa !32
  %i.jq = zext i32 %i.jp to i64                   ; 2 uses
  %.not.i.i.i125 = icmp samesign eq i64 %.026.i124, %i.jq
  br i1 %.not.i.i.i125, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i128, label %bb.cm

bb.cm:                                            ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i123
  %i.jr = load ptr, ptr %i.io, align 8, !tbaa !31
  %.idx39.i126 = shl nuw nsw i64 %.026.i124, 2
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %.idx39.i126
  %i.jt = load ptr, ptr %i.hb, align 8, !tbaa !31
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %.026.i124
  %i.jv = sub nsw i64 %i.jq, %.026.i124
  %gepdiff.i127 = shl nsw i64 %i.jv, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ju, ptr align 4 %i.js, i64 %gepdiff.i127, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i128

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i128: ; preds = %bb.cm, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i123
  store i32 %i.jc, ptr %i.je, align 8, !tbaa !32
  store i32 0, ptr %i.jb, align 8, !tbaa !32
  br label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit129

_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit129:      ; preds = %bb.by, %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i116, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i118, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i64 16, i1 false)
  %i.jw = getelementptr inbounds nuw i8, ptr %.032.i, i64 56
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit129, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit144
  %.117.i = phi ptr [ %i.im, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit144 ], [ %.01631.i, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit129 ] ; 4 uses
  %.1.i = phi ptr [ %.032.i, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit144 ], [ %i.jw, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit129 ] ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 56 ; 5 uses
  %i.jy = icmp ne ptr %.1.i, %i.gr
  %i.jz = icmp ne ptr %.117.i, %i.gs
  %i.ka = select i1 %i.jy, i1 %i.jz, i1 false
  br i1 %i.ka, label %.lr.ph.i36, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.cn
  %i.kb = ptrtoint ptr %i.gr to i64
  %i.kc = ptrtoint ptr %.1.i to i64
  %i.kd = sub i64 %i.kb, %i.kc                    ; 2 uses
  %i.ke = icmp sgt i64 %i.kd, 0
  br i1 %i.ke, label %.lr.ph.preheader.i.i.i.i.i.i31, label %_ZSt4moveIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i

.lr.ph.preheader.i.i.i.i.i.i31:                   ; preds = %._crit_edge.i
  %i.kf = udiv exact i64 %i.kd, 56
  br label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit114, %.lr.ph.preheader.i.i.i.i.i.i31
  %.012.i.i.i.i.i.i33 = phi i64 [ %i.lu, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit114 ], [ %i.kf, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 2 uses
  %.0811.i.i.i.i.i.i34 = phi ptr [ %i.lt, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit114 ], [ %i.jx, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 10 uses
  %.0910.i.i.i.i.i.i35 = phi ptr [ %i.ls, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit114 ], [ %.1.i, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 9 uses
  %i.kg = load i64, ptr %.0910.i.i.i.i.i.i35, align 8, !tbaa !104
  store i64 %i.kg, ptr %.0811.i.i.i.i.i.i34, align 8, !tbaa !104
  %i.kh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 8 ; 6 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 8 ; 4 uses
  %i.kj = icmp eq ptr %.0811.i.i.i.i.i.i34, %.0910.i.i.i.i.i.i35
  br i1 %i.kj, label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit114, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i.i.i.i.i32
  %i.kk = load ptr, ptr %i.ki, align 8, !tbaa !31 ; 6 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 24 ; 2 uses
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kn = load ptr, ptr %i.kh, align 8, !tbaa !31 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 24
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i101, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @free(ptr noundef %i.kn) #25
  %.pre.i100 = load ptr, ptr %i.ki, align 8, !tbaa !31
  br label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i101

_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i101: ; preds = %bb.cq, %bb.cp
  %i.kq = phi ptr [ %i.kk, %bb.cp ], [ %.pre.i100, %bb.cq ]
  %i.kr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 16
  store ptr %i.kq, ptr %i.kh, align 8, !tbaa !31
  %i.ks = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 16 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 20
  %i.ku = load <2 x i32>, ptr %i.ks, align 8, !tbaa !91
  store <2 x i32> %i.ku, ptr %i.kr, align 8, !tbaa !91
  store ptr %i.kl, ptr %i.ki, align 8, !tbaa !31
  store i32 0, ptr %i.kt, align 4, !tbaa !105
  store i32 0, ptr %i.ks, align 8, !tbaa !32
  br label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit114

bb.cr:                                            ; preds = %bb.co
  %i.kv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 16 ; 4 uses
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !32 ; 6 uses
  %i.kx = zext i32 %i.kw to i64                   ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 16 ; 4 uses
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !32 ; 4 uses
  %i.la = zext i32 %i.kz to i64                   ; 2 uses
  %.not.i102 = icmp ult i32 %i.kz, %i.kw
  br i1 %.not.i102, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lb = load ptr, ptr %i.kh, align 8, !tbaa !31 ; 2 uses
  switch i32 %i.kw, label %bb.ct [
    i32 0, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i103
    i32 1, label %bb.cu
  ], !prof !126

bb.ct:                                            ; preds = %bb.cs
  %.idx.i104 = shl nuw nsw i64 %i.kx, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.lb, ptr align 4 %i.kk, i64 %.idx.i104, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i103

bb.cu:                                            ; preds = %bb.cs
  %i.lc = load i32, ptr %i.kk, align 4, !tbaa !91
  store i32 %i.lc, ptr %i.lb, align 4, !tbaa !91
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i103

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i103:            ; preds = %bb.cu, %bb.ct, %bb.cs
  store i32 %i.kw, ptr %i.ky, align 8, !tbaa !32
  store i32 0, ptr %i.kv, align 8, !tbaa !32
  br label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit114

bb.cv:                                            ; preds = %bb.cr
  %i.ld = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 20
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !105
  %i.lf = icmp ult i32 %i.le, %i.kw
  br i1 %i.lf, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.ky, align 8, !tbaa !32
  %i.lg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.kh, ptr noundef nonnull %i.lg, i64 noundef %i.kx, i64 noundef 4) #25
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i108

bb.cx:                                            ; preds = %bb.cv
  %.not32.i105 = icmp eq i32 %i.kz, 0
  br i1 %.not32.i105, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i108, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lh = load ptr, ptr %i.kh, align 8, !tbaa !31 ; 2 uses
  %.not37.i106 = icmp eq i32 %i.kz, 1
  br i1 %.not37.i106, label %bb.da, label %bb.cz, !prof !95

bb.cz:                                            ; preds = %bb.cy
  %.idx36.i107 = shl nuw nsw i64 %i.la, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.lh, ptr align 4 %i.kk, i64 %.idx36.i107, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i108

bb.da:                                            ; preds = %bb.cy
  %i.li = load i32, ptr %i.kk, align 4, !tbaa !91
  store i32 %i.li, ptr %i.lh, align 4, !tbaa !91
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i108

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i108:          ; preds = %bb.da, %bb.cz, %bb.cx, %bb.cw
  %.026.i109 = phi i64 [ 0, %bb.cw ], [ 0, %bb.cx ], [ %i.la, %bb.cz ], [ 1, %bb.da ] ; 4 uses
  %i.lj = load i32, ptr %i.kv, align 8, !tbaa !32
  %i.lk = zext i32 %i.lj to i64                   ; 2 uses
  %.not.i.i.i110 = icmp samesign eq i64 %.026.i109, %i.lk
  br i1 %.not.i.i.i110, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i113, label %bb.db

bb.db:                                            ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i108
  %i.ll = load ptr, ptr %i.ki, align 8, !tbaa !31
  %.idx39.i111 = shl nuw nsw i64 %.026.i109, 2
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.idx39.i111
  %i.ln = load ptr, ptr %i.kh, align 8, !tbaa !31
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %.026.i109
  %i.lp = sub nsw i64 %i.lk, %.026.i109
  %gepdiff.i112 = shl nsw i64 %i.lp, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lo, ptr align 4 %i.lm, i64 %gepdiff.i112, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i113

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i113: ; preds = %bb.db, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i108
  store i32 %i.kw, ptr %i.ky, align 8, !tbaa !32
  store i32 0, ptr %i.kv, align 8, !tbaa !32
  br label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit114

_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit114:      ; preds = %.lr.ph.i.i.i.i.i.i32, %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i101, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i103, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i113
  %i.lq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 40
  %i.lr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lq, ptr noundef nonnull align 8 dereferenceable(16) %i.lr, i64 16, i1 false)
  %i.ls = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 56
  %i.lt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 56 ; 2 uses
  %i.lu = add nsw i64 %.012.i.i.i.i.i.i33, -1
  %i.lv = icmp samesign ugt i64 %.012.i.i.i.i.i.i33, 1
  br i1 %i.lv, label %.lr.ph.i.i.i.i.i.i32, label %_ZSt4moveIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, !llvm.loop !9

_ZSt4moveIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i: ; preds = %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit114, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %i.jx, %._crit_edge.i ], [ %i.lt, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit114 ]
  %i.lw = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64 ; 2 uses
  %i.lx = ptrtoint ptr %i.jx to i64
  %i.ly = sub i64 %i.lw, %i.lx
  %i.lz = getelementptr inbounds i8, ptr %i.jx, i64 %i.ly ; 3 uses
  %i.ma = ptrtoint ptr %i.gs to i64               ; 2 uses
  %i.mb = ptrtoint ptr %.117.i to i64
  %i.mc = sub i64 %i.ma, %i.mb                    ; 2 uses
  %i.md = icmp sgt i64 %i.mc, 0
  br i1 %i.md, label %.lr.ph.preheader.i.i.i.i.i21.i, label %"_ZSt12__move_mergeIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEET0_T_SG_SG_SG_SF_T1_.exit"

.lr.ph.preheader.i.i.i.i.i21.i:                   ; preds = %_ZSt4moveIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %i.me = udiv exact i64 %i.mc, 56
  br label %.lr.ph.i.i.i.i.i22.i

.lr.ph.i.i.i.i.i22.i:                             ; preds = %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit99, %.lr.ph.preheader.i.i.i.i.i21.i
  %.012.i.i.i.i.i23.i = phi i64 [ %i.nt, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit99 ], [ %i.me, %.lr.ph.preheader.i.i.i.i.i21.i ] ; 2 uses
  %.0811.i.i.i.i.i24.i = phi ptr [ %i.ns, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit99 ], [ %i.lz, %.lr.ph.preheader.i.i.i.i.i21.i ] ; 10 uses
  %.0910.i.i.i.i.i25.i = phi ptr [ %i.nr, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit99 ], [ %.117.i, %.lr.ph.preheader.i.i.i.i.i21.i ] ; 9 uses
  %i.mf = load i64, ptr %.0910.i.i.i.i.i25.i, align 8, !tbaa !104
  store i64 %i.mf, ptr %.0811.i.i.i.i.i24.i, align 8, !tbaa !104
  %i.mg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 8 ; 6 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 8 ; 4 uses
  %i.mi = icmp eq ptr %.0811.i.i.i.i.i24.i, %.0910.i.i.i.i.i25.i
  br i1 %i.mi, label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit99, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i.i22.i
  %i.mj = load ptr, ptr %i.mh, align 8, !tbaa !31 ; 6 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 24 ; 2 uses
  %i.ml = icmp eq ptr %i.mj, %i.mk
  br i1 %i.ml, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mm = load ptr, ptr %i.mg, align 8, !tbaa !31 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 24
  %i.mo = icmp eq ptr %i.mm, %i.mn
  br i1 %i.mo, label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i86, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @free(ptr noundef %i.mm) #25
  %.pre.i85 = load ptr, ptr %i.mh, align 8, !tbaa !31
  br label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i86

_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i86: ; preds = %bb.de, %bb.dd
  %i.mp = phi ptr [ %i.mj, %bb.dd ], [ %.pre.i85, %bb.de ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 16
  store ptr %i.mp, ptr %i.mg, align 8, !tbaa !31
  %i.mr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 16 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 20
  %i.mt = load <2 x i32>, ptr %i.mr, align 8, !tbaa !91
  store <2 x i32> %i.mt, ptr %i.mq, align 8, !tbaa !91
  store ptr %i.mk, ptr %i.mh, align 8, !tbaa !31
  store i32 0, ptr %i.ms, align 4, !tbaa !105
  store i32 0, ptr %i.mr, align 8, !tbaa !32
  br label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit99

bb.df:                                            ; preds = %bb.dc
  %i.mu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 16 ; 4 uses
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !32 ; 6 uses
  %i.mw = zext i32 %i.mv to i64                   ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 16 ; 4 uses
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !32 ; 4 uses
  %i.mz = zext i32 %i.my to i64                   ; 2 uses
  %.not.i87 = icmp ult i32 %i.my, %i.mv
  br i1 %.not.i87, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.na = load ptr, ptr %i.mg, align 8, !tbaa !31 ; 2 uses
  switch i32 %i.mv, label %bb.dh [
    i32 0, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i88
    i32 1, label %bb.di
  ], !prof !126

bb.dh:                                            ; preds = %bb.dg
  %.idx.i89 = shl nuw nsw i64 %i.mw, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.na, ptr align 4 %i.mj, i64 %.idx.i89, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i88

bb.di:                                            ; preds = %bb.dg
  %i.nb = load i32, ptr %i.mj, align 4, !tbaa !91
  store i32 %i.nb, ptr %i.na, align 4, !tbaa !91
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i88

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i88:             ; preds = %bb.di, %bb.dh, %bb.dg
  store i32 %i.mv, ptr %i.mx, align 8, !tbaa !32
  store i32 0, ptr %i.mu, align 8, !tbaa !32
  br label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit99

bb.dj:                                            ; preds = %bb.df
  %i.nc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 20
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !105
  %i.ne = icmp ult i32 %i.nd, %i.mv
  br i1 %i.ne, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.mx, align 8, !tbaa !32
  %i.nf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.mg, ptr noundef nonnull %i.nf, i64 noundef %i.mw, i64 noundef 4) #25
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i93

bb.dl:                                            ; preds = %bb.dj
  %.not32.i90 = icmp eq i32 %i.my, 0
  br i1 %.not32.i90, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i93, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ng = load ptr, ptr %i.mg, align 8, !tbaa !31 ; 2 uses
  %.not37.i91 = icmp eq i32 %i.my, 1
  br i1 %.not37.i91, label %bb.do, label %bb.dn, !prof !95

bb.dn:                                            ; preds = %bb.dm
  %.idx36.i92 = shl nuw nsw i64 %i.mz, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ng, ptr align 4 %i.mj, i64 %.idx36.i92, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i93

bb.do:                                            ; preds = %bb.dm
  %i.nh = load i32, ptr %i.mj, align 4, !tbaa !91
  store i32 %i.nh, ptr %i.ng, align 4, !tbaa !91
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i93

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i93:           ; preds = %bb.do, %bb.dn, %bb.dl, %bb.dk
  %.026.i94 = phi i64 [ 0, %bb.dk ], [ 0, %bb.dl ], [ %i.mz, %bb.dn ], [ 1, %bb.do ] ; 4 uses
  %i.ni = load i32, ptr %i.mu, align 8, !tbaa !32
  %i.nj = zext i32 %i.ni to i64                   ; 2 uses
  %.not.i.i.i95 = icmp samesign eq i64 %.026.i94, %i.nj
  br i1 %.not.i.i.i95, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i98, label %bb.dp

bb.dp:                                            ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i93
  %i.nk = load ptr, ptr %i.mh, align 8, !tbaa !31
  %.idx39.i96 = shl nuw nsw i64 %.026.i94, 2
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %.idx39.i96
  %i.nm = load ptr, ptr %i.mg, align 8, !tbaa !31
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %.026.i94
  %i.no = sub nsw i64 %i.nj, %.026.i94
  %gepdiff.i97 = shl nsw i64 %i.no, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nn, ptr align 4 %i.nl, i64 %gepdiff.i97, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i98

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i98: ; preds = %bb.dp, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i93
  store i32 %i.mv, ptr %i.mx, align 8, !tbaa !32
  store i32 0, ptr %i.mu, align 8, !tbaa !32
  br label %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit99

_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit99:       ; preds = %.lr.ph.i.i.i.i.i22.i, %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i86, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i88, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i98
  %i.np = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 40
  %i.nq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.np, ptr noundef nonnull align 8 dereferenceable(16) %i.nq, i64 16, i1 false)
  %i.nr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 56
  %i.ns = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 56 ; 2 uses
  %i.nt = add nsw i64 %.012.i.i.i.i.i23.i, -1
  %i.nu = icmp samesign ugt i64 %.012.i.i.i.i.i23.i, 1
  br i1 %i.nu, label %.lr.ph.i.i.i.i.i22.i, label %"_ZSt12__move_mergeIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEET0_T_SG_SG_SG_SF_T1_.exit", !llvm.loop !9

"_ZSt12__move_mergeIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEET0_T_SG_SG_SG_SF_T1_.exit": ; preds = %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit99, %_ZSt4moveIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %.08.lcssa.i.i.i.i.i20.i = phi ptr [ %i.lz, %_ZSt4moveIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ], [ %i.ns, %_ZN4llvm15SmallVectorImplIjEaSEOS1_.exit99 ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i20.i to i64
  %i.nv = sub i64 %3, %i.lw
  %i.nw = getelementptr inbounds i8, ptr %i.lz, i64 %i.nv ; 2 uses
  %i.nx = sub i64 %i.l, %i.ma
  %i.ny = sdiv exact i64 %i.nx, 56                ; 2 uses
  %.not.i23 = icmp slt i64 %i.ny, %i.gq
  br i1 %.not.i23, label %"_ZSt17__merge_sort_loopIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_T1_T2_.exit", label %.lr.ph.i22, !llvm.loop !447

"_ZSt17__merge_sort_loopIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEET0_T_SG_SG_SG_SF_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm14BPFunctionNodeESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNKS2_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_T1_T2_.exit"
  %.0.lcssa.i24 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm14BPFunctionNodeESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNKS2_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_T1_T2_.exit" ], [ %i.gs, %"_ZSt12__move_mergeIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEET0_T_SG_SG_SG_SF_T1_.exit" ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm14BPFunctionNodeESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNKS2_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_T1_T2_.exit" ], [ %i.nw, %"_ZSt12__move_mergeIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEET0_T_SG_SG_SG_SF_T1_.exit" ]
  %.lcssa.i25 = phi i64 [ %i.m, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm14BPFunctionNodeESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZNKS2_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_T1_T2_.exit" ], [ %i.ny, %"_ZSt12__move_mergeIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEET0_T_SG_SG_SG_SF_T1_.exit" ]
  %.sroa.speculated.i26 = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %.lcssa.i25)
  %i.nz = getelementptr inbounds [56 x i8], ptr %.0.lcssa.i24, i64 %.sroa.speculated.i26 ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEET0_T_SG_SG_SG_SF_T1_"(ptr noundef %.0.lcssa.i24, ptr noundef %i.nz, ptr noundef %i.nz, ptr noundef nonnull %i.e, ptr %.sroa.022.0.lcssa.i)
  %i.oa = icmp slt i64 %i.gq, %i.d
  br i1 %i.oa, label %bb.b, label %._crit_edge, !llvm.loop !448

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm14BPFunctionNodeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_T1_.exit.thread", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm14BPFunctionNodeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN4llvm14BPFunctionNodeESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNKS2_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_SF_T0_SG_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_SG_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.f = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !104
  store i64 %i.f, ptr %.0811.i.i.i.i.i, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56 ; 3 uses
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !9

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.027.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 8 uses
  %.sroa.0.026.i = phi ptr [ %i.ah, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.sroa.017.025.i = phi ptr [ %.sroa.017.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %.not20.i = icmp eq ptr %.sroa.017.025.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr i8, ptr %.027.i, i64 40    ; 2 uses
  %.0.val.i = load i32, ptr %i.p, align 4
  %i.q = getelementptr i8, ptr %.027.i, i64 44
  %.0.val13.i = load i8, ptr %i.q, align 4, !tbaa !103, !range !55, !noundef !56
  %i.r = getelementptr i8, ptr %.sroa.017.025.i, i64 40 ; 2 uses
  %.val.i.i = load i32, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %.sroa.017.025.i, i64 44
  %.val2.i.i = load i8, ptr %i.s, align 4
  %i.t = trunc nuw i8 %.0.val13.i to i1
  %i.u = trunc nuw i8 %.val2.i.i to i1
  %i.v = icmp ult i32 %.val.i.i, %.0.val.i
  %not..i.i.i = xor i1 %i.u, true
  %spec.select.i.i.i = select i1 %not..i.i.i, i1 true, i1 %i.v
  %i.w = select i1 %i.t, i1 %spec.select.i.i.i, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i, i64 40 ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %.sroa.017.025.i, align 8, !tbaa !104
  store i64 %i.z, ptr %.sroa.0.026.i, align 8, !tbaa !104
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.017.025.i, i64 8
  %i.ab = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.aa) ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.017.025.i, i64 56
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ad = load i64, ptr %.027.i, align 8, !tbaa !104
  store i64 %i.ad, ptr %.sroa.0.026.i, align 8, !tbaa !104
  %i.ae = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  %i.af = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.ae) ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.027.i, i64 56
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.017.1.i = phi ptr [ %i.ac, %bb.d ], [ %.sroa.017.025.i, %bb.e ]
  %.1.i = phi ptr [ %.027.i, %bb.d ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i, i64 56
  %.not.i = icmp eq ptr %.1.i, %i.m
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_SG_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !449

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ai = ptrtoint ptr %i.m to i64
  %i.aj = ptrtoint ptr %.027.i to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_SG_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.am = udiv exact i64 %i.ak, 56
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.026.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %.027.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.an = load i64, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !104
  store i64 %i.an, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !104
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.aq = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ap) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  %i.av = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.aw = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_SG_T1_T2_.exit", !llvm.loop !9

bb.g:                                             ; preds = %bb.a
  %i.ax = ptrtoint ptr %2 to i64
  %i.ay = ptrtoint ptr %1 to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.preheader.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm14BPFunctionNodeESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit29

.lr.ph.preheader.i.i.i.i.i24:                     ; preds = %bb.g
  %i.bb = udiv exact i64 %i.az, 56
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.preheader.i.i.i.i.i24
  %.012.i.i.i.i.i26 = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i25 ], [ %i.bb, %.lr.ph.preheader.i.i.i.i.i24 ] ; 2 uses
  %.0811.i.i.i.i.i27 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i25 ], [ %5, %.lr.ph.preheader.i.i.i.i.i24 ] ; 4 uses
  %.0910.i.i.i.i.i28 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i25 ], [ %1, %.lr.ph.preheader.i.i.i.i.i24 ] ; 4 uses
  %i.bc = load i64, ptr %.0910.i.i.i.i.i28, align 8, !tbaa !104
  store i64 %i.bc, ptr %.0811.i.i.i.i.i27, align 8, !tbaa !104
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 8
  %i.bf = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.be) ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 56 ; 2 uses
  %i.bk = add nsw i64 %.012.i.i.i.i.i26, -1
  %i.bl = icmp samesign ugt i64 %.012.i.i.i.i.i26, 1
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i25, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm14BPFunctionNodeESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit29, !llvm.loop !9

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm14BPFunctionNodeESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit29: ; preds = %.lr.ph.i.i.i.i.i25, %bb.g
  %.08.lcssa.i.i.i.i.i23 = phi ptr [ %5, %bb.g ], [ %i.bj, %.lr.ph.i.i.i.i.i25 ] ; 4 uses
  %i.bm = icmp eq ptr %0, %1
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm14BPFunctionNodeESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit29
  %i.bn = ptrtoint ptr %.08.lcssa.i.i.i.i.i23 to i64
  %i.bo = ptrtoint ptr %5 to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.preheader.i.i.i.i.i.i34, label %"_ZSt21__move_merge_adaptiveIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_SG_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i34:                   ; preds = %bb.h
  %i.br = udiv exact i64 %i.bp, 56
  br label %.lr.ph.i.i.i.i.i.i35

.lr.ph.i.i.i.i.i.i35:                             ; preds = %.lr.ph.i.i.i.i.i.i35, %.lr.ph.preheader.i.i.i.i.i.i34
  %.010.i.i.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i.i35 ], [ %i.br, %.lr.ph.preheader.i.i.i.i.i.i34 ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i35 ], [ %2, %.lr.ph.preheader.i.i.i.i.i.i34 ] ; 3 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i35 ], [ %.08.lcssa.i.i.i.i.i23, %.lr.ph.preheader.i.i.i.i.i.i34 ] ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56 ; 2 uses
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !104
  store i64 %i.bu, ptr %i.bt, align 8, !tbaa !104
  %i.bv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.bw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.bx = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.bw) ; 0 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.bz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false)
  %i.ca = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.cb = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.i35, label %"_ZSt21__move_merge_adaptiveIPN4llvm14BPFunctionNodeEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZNKS0_20BalancedPartitioning3runERS7_E3$_1EEEvT_SF_T0_SG_T1_T2_.exit", !llvm.loop !11

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm14BPFunctionNodeESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit29
  %i.cc = icmp eq ptr %5, %.08.lcssa.i.i.i.i.i23
end_hunk_0
begin_hunk_1_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIfPN4llvm14BPFunctionNodeEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNKS3_20BalancedPartitioning12runIterationENS3_14iterator_rangeINS1_IS5_S8_IS4_SaIS4_EEEEEEjjRNS3_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEEvT_ST_T0_T1_":bb.a
.lr.ph.i.i.i.i.i10.i24.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i10.i24.i.preheader, %.lr.ph.i.i.i.i.i10.i24.i.prol
  %.012.i.i.i.i.i11.i25.i.prol = phi i64 [ %i.rn, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %i.rf, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %.0811.i.i.i.i.i12.i26.i.prol = phi ptr [ %i.rm, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i27.i.prol = phi ptr [ %i.rl, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ] ; 3 uses
  %prol.iter176 = phi i64 [ %prol.iter176.next, %.lr.ph.i.i.i.i.i10.i24.i.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i24.i.preheader ]
  %i.rh = load float, ptr %.0910.i.i.i.i.i13.i27.i.prol, align 4, !tbaa !64
  store float %i.rh, ptr %.0811.i.i.i.i.i12.i26.i.prol, align 8, !tbaa !123
  %i.ri = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !122
  %i.rk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 8
  store ptr %i.rj, ptr %i.rk, align 8, !tbaa !121
  %i.rl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i.prol, i64 16 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i.prol, i64 16 ; 2 uses
  %i.rn = add nsw i64 %.012.i.i.i.i.i11.i25.i.prol, -1 ; 2 uses
  %prol.iter176.next = add i64 %prol.iter176, 1   ; 2 uses
  %prol.iter176.cmp.not = icmp eq i64 %prol.iter176.next, %xtraiter174
  br i1 %prol.iter176.cmp.not, label %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.i.prol, !llvm.loop !514

.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol, %.lr.ph.i.i.i.i.i10.i24.i.preheader
  %.012.i.i.i.i.i11.i25.i.unr = phi i64 [ %i.rf, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.rn, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0811.i.i.i.i.i12.i26.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.rm, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %.0910.i.i.i.i.i13.i27.i.unr = phi ptr [ %.sroa.015.0.lcssa.i18.i, %.lr.ph.i.i.i.i.i10.i24.i.preheader ], [ %i.rl, %.lr.ph.i.i.i.i.i10.i24.i.prol ]
  %i.ro = icmp ult i64 %i.rf, 4
  br i1 %i.ro, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIfPN4llvm14BPFunctionNodeEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNKS3_20BalancedPartitioning12runIterationENS3_14iterator_rangeINS1_IS5_S8_IS4_SaIS4_EEEEEEjjRNS3_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEEvT_ST_T0_T1_T2_.exit", label %.lr.ph.i.i.i.i.i10.i24.i

.lr.ph.i.i.i.i.i10.i24.i:                         ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i11.i25.i = phi i64 [ %i.sn, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.012.i.i.i.i.i11.i25.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26.i = phi ptr [ %i.sm, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0811.i.i.i.i.i12.i26.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i27.i = phi ptr [ %i.sl, %.lr.ph.i.i.i.i.i10.i24.i ], [ %.0910.i.i.i.i.i13.i27.i.unr, %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit ] ; 9 uses
  %i.rp = load float, ptr %.0910.i.i.i.i.i13.i27.i, align 4, !tbaa !64
  store float %i.rp, ptr %.0811.i.i.i.i.i12.i26.i, align 8, !tbaa !123
  %i.rq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !122
  %i.rs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 8
  store ptr %i.rr, ptr %i.rs, align 8, !tbaa !121
  %i.rt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 16
  %i.ru = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 16
  %i.rv = load float, ptr %i.rt, align 8, !tbaa !64
  store float %i.rv, ptr %i.ru, align 8, !tbaa !123
  %i.rw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 24
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !122
  %i.ry = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 24
  store ptr %i.rx, ptr %i.ry, align 8, !tbaa !121
  %i.rz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 32
  %i.sa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 32
  %i.sb = load float, ptr %i.rz, align 8, !tbaa !64
  store float %i.sb, ptr %i.sa, align 8, !tbaa !123
  %i.sc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 40
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !122
  %i.se = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 40
  store ptr %i.sd, ptr %i.se, align 8, !tbaa !121
  %i.sf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 48
  %i.sg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 48
  %i.sh = load float, ptr %i.sf, align 8, !tbaa !64
  store float %i.sh, ptr %i.sg, align 8, !tbaa !123
  %i.si = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 56
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !122
  %i.sk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 56
  store ptr %i.sj, ptr %i.sk, align 8, !tbaa !121
  %i.sl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27.i, i64 64
  %i.sm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26.i, i64 64
  %i.sn = add nsw i64 %.012.i.i.i.i.i11.i25.i, -4
  %i.so = icmp sgt i64 %.012.i.i.i.i.i11.i25.i, 4
  br i1 %i.so, label %.lr.ph.i.i.i.i.i10.i24.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIfPN4llvm14BPFunctionNodeEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNKS3_20BalancedPartitioning12runIterationENS3_14iterator_rangeINS1_IS5_S8_IS4_SaIS4_EEEEEEjjRNS3_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEEvT_ST_T0_T1_T2_.exit", !llvm.loop !17

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIfPN4llvm14BPFunctionNodeEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNKS3_20BalancedPartitioning12runIterationENS3_14iterator_rangeINS1_IS5_S8_IS4_SaIS4_EEEEEEjjRNS3_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEEvT_ST_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i10.i24.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIfPN4llvm14BPFunctionNodeEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.sp = shl nsw i64 %.058, 2                    ; 4 uses
  %.not67.i = icmp slt i64 %i.d, %i.sp
  br i1 %.not67.i, label %._crit_edge.i34, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIfPN4llvm14BPFunctionNodeEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNKS3_20BalancedPartitioning12runIterationENS3_14iterator_rangeINS1_IS5_S8_IS4_SaIS4_EEEEEEjjRNS3_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEEvT_ST_T0_T1_T2_.exit"
  %.idx.i27 = shl nsw i64 %.058, 5                ; 2 uses
  %.idx58.i = shl nsw i64 %.058, 6                ; 2 uses
  %.not59.i = icmp eq i64 %.idx.i27, %.idx58.i
  br label %bb.ac

bb.ac:                                            ; preds = %"_ZSt12__move_mergeIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNKS1_20BalancedPartitioning12runIterationENS1_14iterator_rangeINS7_IS3_S8_IS2_SaIS2_EEEEEEjjRNS1_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEET0_T_SU_SU_SU_ST_T1_.exit.i", %.lr.ph.i26
  %.sroa.022.069.i = phi ptr [ %0, %.lr.ph.i26 ], [ %i.wf, %"_ZSt12__move_mergeIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNKS1_20BalancedPartitioning12runIterationENS1_14iterator_rangeINS7_IS3_S8_IS2_SaIS2_EEEEEEjjRNS1_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEET0_T_SU_SU_SU_ST_T1_.exit.i" ] ; 2 uses
  %.068.i = phi ptr [ %2, %.lr.ph.i26 ], [ %i.sr, %"_ZSt12__move_mergeIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNKS1_20BalancedPartitioning12runIterationENS1_14iterator_rangeINS7_IS3_S8_IS2_SaIS2_EEEEEEjjRNS1_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEET0_T_SU_SU_SU_ST_T1_.exit.i" ] ; 4 uses
  %i.sq = getelementptr inbounds i8, ptr %.068.i, i64 %.idx.i27 ; 4 uses
  %i.sr = getelementptr inbounds i8, ptr %.068.i, i64 %.idx58.i ; 4 uses
  br i1 %.not59.i, label %._crit_edge.i.i, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %bb.ac, %bb.af
  %.029.i.i = phi ptr [ %.1.i.i, %bb.af ], [ %.068.i, %bb.ac ] ; 4 uses
  %.01628.i.i = phi ptr [ %.117.i.i, %bb.af ], [ %i.sq, %bb.ac ] ; 4 uses
  %.sroa.0.027.i.i = phi ptr [ %i.sw, %bb.af ], [ %.sroa.022.069.i, %bb.ac ] ; 3 uses
  %.016.val.i.i = load float, ptr %.01628.i.i, align 8, !tbaa !123 ; 2 uses
  %.0.val.i.i = load float, ptr %.029.i.i, align 8, !tbaa !123 ; 2 uses
  %i.ss = fcmp ogt float %.016.val.i.i, %.0.val.i.i
  br i1 %i.ss, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i28
  %i.st = getelementptr inbounds nuw i8, ptr %.01628.i.i, i64 16
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i.i28
  %i.su = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.val.sink.i.i = phi float [ %.016.val.i.i, %bb.ad ], [ %.0.val.i.i, %bb.ae ]
  %.01628.pn.i.i = phi ptr [ %.01628.i.i, %bb.ad ], [ %.029.i.i, %bb.ae ]
  %.117.i.i = phi ptr [ %i.st, %bb.ad ], [ %.01628.i.i, %bb.ae ] ; 3 uses
  %.1.i.i = phi ptr [ %.029.i.i, %bb.ad ], [ %i.su, %bb.ae ] ; 3 uses
  %.sink.in.i.i29 = getelementptr inbounds nuw i8, ptr %.01628.pn.i.i, i64 8
  %.sink.i.i30 = load ptr, ptr %.sink.in.i.i29, align 8, !tbaa !122
  store float %.0.val.sink.i.i, ptr %.sroa.0.027.i.i, align 8, !tbaa !123
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 8
  store ptr %.sink.i.i30, ptr %i.sv, align 8, !tbaa !121
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 16 ; 2 uses
  %i.sx = icmp ne ptr %.1.i.i, %i.sq
  %i.sy = icmp ne ptr %.117.i.i, %i.sr
  %i.sz = select i1 %i.sx, i1 %i.sy, i1 false
  br i1 %i.sz, label %.lr.ph.i.i28, label %._crit_edge.i.i, !llvm.loop !515

._crit_edge.i.i:                                  ; preds = %bb.af, %bb.ac
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.022.069.i, %bb.ac ], [ %i.sw, %bb.af ] ; 5 uses
  %.016.lcssa.i.i = phi ptr [ %i.sq, %bb.ac ], [ %.117.i.i, %bb.af ] ; 3 uses
  %.0.lcssa.i.i31 = phi ptr [ %.068.i, %bb.ac ], [ %.1.i.i, %bb.af ] ; 3 uses
  %i.ta = ptrtoint ptr %i.sq to i64
  %i.tb = ptrtoint ptr %.0.lcssa.i.i31 to i64
  %i.tc = sub i64 %i.ta, %i.tb
  %i.td = ashr exact i64 %i.tc, 4                 ; 5 uses
  %i.te = icmp sgt i64 %i.td, 0
  br i1 %i.te, label %.lr.ph.i.i.i.i.i.i.i37.preheader, label %_ZSt4moveIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %._crit_edge.i.i
  %xtraiter177 = and i64 %i.td, 3                 ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i37.prol

.lr.ph.i.i.i.i.i.i.i37.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i37.prol
  %.012.i.i.i.i.i.i.i38.prol = phi i64 [ %i.tl, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ %i.td, %.lr.ph.i.i.i.i.i.i.i37.preheader ]
  %.0811.i.i.i.i.i.i.i39.prol = phi ptr [ %i.tk, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i37.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i40.prol = phi ptr [ %i.tj, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ %.0.lcssa.i.i31, %.lr.ph.i.i.i.i.i.i.i37.preheader ] ; 3 uses
  %prol.iter179 = phi i64 [ %prol.iter179.next, %.lr.ph.i.i.i.i.i.i.i37.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i37.preheader ]
  %i.tf = load float, ptr %.0910.i.i.i.i.i.i.i40.prol, align 4, !tbaa !64
  store float %i.tf, ptr %.0811.i.i.i.i.i.i.i39.prol, align 8, !tbaa !123
  %i.tg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40.prol, i64 8
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !122
  %i.ti = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39.prol, i64 8
  store ptr %i.th, ptr %i.ti, align 8, !tbaa !121
  %i.tj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40.prol, i64 16 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39.prol, i64 16 ; 3 uses
  %i.tl = add nsw i64 %.012.i.i.i.i.i.i.i38.prol, -1 ; 2 uses
  %prol.iter179.next = add i64 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i37.prol, !llvm.loop !516

.lr.ph.i.i.i.i.i.i.i37.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i.i37.preheader
  %.012.i.i.i.i.i.i.i38.unr = phi i64 [ %i.td, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.tl, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %.0811.i.i.i.i.i.i.i39.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.tk, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %.0910.i.i.i.i.i.i.i40.unr = phi ptr [ %.0.lcssa.i.i31, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.tj, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %.lcssa138.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i37.preheader ], [ %i.tk, %.lr.ph.i.i.i.i.i.i.i37.prol ]
  %i.tm = icmp ult i64 %i.td, 4
  br i1 %i.tm, label %_ZSt4moveIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i.i37:                           ; preds = %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i.i38 = phi i64 [ %i.ul, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.012.i.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i39 = phi ptr [ %i.uk, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.0811.i.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i40 = phi ptr [ %i.uj, %.lr.ph.i.i.i.i.i.i.i37 ], [ %.0910.i.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ] ; 9 uses
  %i.tn = load float, ptr %.0910.i.i.i.i.i.i.i40, align 4, !tbaa !64
  store float %i.tn, ptr %.0811.i.i.i.i.i.i.i39, align 8, !tbaa !123
  %i.to = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 8
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !122
  %i.tq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 8
  store ptr %i.tp, ptr %i.tq, align 8, !tbaa !121
  %i.tr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 16
  %i.ts = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 16
  %i.tt = load float, ptr %i.tr, align 8, !tbaa !64
  store float %i.tt, ptr %i.ts, align 8, !tbaa !123
  %i.tu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !122
  %i.tw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 24
  store ptr %i.tv, ptr %i.tw, align 8, !tbaa !121
  %i.tx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 32
  %i.ty = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 32
  %i.tz = load float, ptr %i.tx, align 8, !tbaa !64
  store float %i.tz, ptr %i.ty, align 8, !tbaa !123
  %i.ua = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 40
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !122
  %i.uc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 40
  store ptr %i.ub, ptr %i.uc, align 8, !tbaa !121
  %i.ud = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 48
  %i.ue = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 48
  %i.uf = load float, ptr %i.ud, align 8, !tbaa !64
  store float %i.uf, ptr %i.ue, align 8, !tbaa !123
  %i.ug = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 56
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !122
  %i.ui = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 56
  store ptr %i.uh, ptr %i.ui, align 8, !tbaa !121
  %i.uj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i40, i64 64
  %i.uk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i39, i64 64 ; 2 uses
  %i.ul = add nsw i64 %.012.i.i.i.i.i.i.i38, -4
  %i.um = icmp sgt i64 %.012.i.i.i.i.i.i.i38, 4
  br i1 %i.um, label %.lr.ph.i.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i, !llvm.loop !17

_ZSt4moveIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i37, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i32 = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa138.unr, %.lr.ph.i.i.i.i.i.i.i37.prol.loopexit ], [ %i.uk, %.lr.ph.i.i.i.i.i.i.i37 ]
  %i.un = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i32 to i64 ; 2 uses
  %i.uo = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64
  %i.up = sub i64 %i.un, %i.uo
  %i.uq = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.up ; 4 uses
  %i.ur = ptrtoint ptr %i.sr to i64               ; 2 uses
  %i.us = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.ut = sub i64 %i.ur, %i.us
  %i.uu = ashr exact i64 %i.ut, 4                 ; 5 uses
  %i.uv = icmp sgt i64 %i.uu, 0
  br i1 %i.uv, label %.lr.ph.i.i.i.i.i19.i.i.preheader, label %"_ZSt12__move_mergeIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNKS1_20BalancedPartitioning12runIterationENS1_14iterator_rangeINS7_IS3_S8_IS2_SaIS2_EEEEEEjjRNS1_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEET0_T_SU_SU_SU_ST_T1_.exit.i"

.lr.ph.i.i.i.i.i19.i.i.preheader:                 ; preds = %_ZSt4moveIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %xtraiter180 = and i64 %i.uu, 3                 ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i.prol

.lr.ph.i.i.i.i.i19.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i.i.preheader, %.lr.ph.i.i.i.i.i19.i.i.prol
  %.012.i.i.i.i.i20.i.i.prol = phi i64 [ %i.vc, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %i.uu, %.lr.ph.i.i.i.i.i19.i.i.preheader ]
  %.0811.i.i.i.i.i21.i.i.prol = phi ptr [ %i.vb, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %i.uq, %.lr.ph.i.i.i.i.i19.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i.prol = phi ptr [ %i.va, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i.preheader ] ; 3 uses
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i.preheader ]
  %i.uw = load float, ptr %.0910.i.i.i.i.i22.i.i.prol, align 4, !tbaa !64
  store float %i.uw, ptr %.0811.i.i.i.i.i21.i.i.prol, align 8, !tbaa !123
  %i.ux = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 8
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !122
  %i.uz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 8
  store ptr %i.uy, ptr %i.uz, align 8, !tbaa !121
  %i.va = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 16 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 16 ; 3 uses
  %i.vc = add nsw i64 %.012.i.i.i.i.i20.i.i.prol, -1 ; 2 uses
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i.prol, !llvm.loop !517

.lr.ph.i.i.i.i.i19.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol, %.lr.ph.i.i.i.i.i19.i.i.preheader
  %.012.i.i.i.i.i20.i.i.unr = phi i64 [ %i.uu, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.vc, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.0811.i.i.i.i.i21.i.i.unr = phi ptr [ %i.uq, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.vb, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.0910.i.i.i.i.i22.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.va, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.lcssa139.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.vb, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %i.vd = icmp ult i64 %i.uu, 4
  br i1 %i.vd, label %"_ZSt12__move_mergeIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNKS1_20BalancedPartitioning12runIterationENS1_14iterator_rangeINS7_IS3_S8_IS2_SaIS2_EEEEEEjjRNS1_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEET0_T_SU_SU_SU_ST_T1_.exit.i", label %.lr.ph.i.i.i.i.i19.i.i

.lr.ph.i.i.i.i.i19.i.i:                           ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i20.i.i = phi i64 [ %i.wc, %.lr.ph.i.i.i.i.i19.i.i ], [ %.012.i.i.i.i.i20.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i = phi ptr [ %i.wb, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0811.i.i.i.i.i21.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i = phi ptr [ %i.wa, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0910.i.i.i.i.i22.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 9 uses
  %i.ve = load float, ptr %.0910.i.i.i.i.i22.i.i, align 4, !tbaa !64
  store float %i.ve, ptr %.0811.i.i.i.i.i21.i.i, align 8, !tbaa !123
  %i.vf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 8
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !122
  %i.vh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 8
  store ptr %i.vg, ptr %i.vh, align 8, !tbaa !121
  %i.vi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 16
  %i.vj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 16
  %i.vk = load float, ptr %i.vi, align 8, !tbaa !64
  store float %i.vk, ptr %i.vj, align 8, !tbaa !123
  %i.vl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 24
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !122
  %i.vn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 24
  store ptr %i.vm, ptr %i.vn, align 8, !tbaa !121
  %i.vo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 32
  %i.vp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 32
  %i.vq = load float, ptr %i.vo, align 8, !tbaa !64
  store float %i.vq, ptr %i.vp, align 8, !tbaa !123
  %i.vr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 40
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !122
  %i.vt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 40
  store ptr %i.vs, ptr %i.vt, align 8, !tbaa !121
  %i.vu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 48
  %i.vv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 48
  %i.vw = load float, ptr %i.vu, align 8, !tbaa !64
  store float %i.vw, ptr %i.vv, align 8, !tbaa !123
  %i.vx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 56
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !122
  %i.vz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 56
  store ptr %i.vy, ptr %i.vz, align 8, !tbaa !121
  %i.wa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 64
  %i.wb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 64 ; 2 uses
  %i.wc = add nsw i64 %.012.i.i.i.i.i20.i.i, -4
  %i.wd = icmp sgt i64 %.012.i.i.i.i.i20.i.i, 4
  br i1 %i.wd, label %.lr.ph.i.i.i.i.i19.i.i, label %"_ZSt12__move_mergeIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNKS1_20BalancedPartitioning12runIterationENS1_14iterator_rangeINS7_IS3_S8_IS2_SaIS2_EEEEEEjjRNS1_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEET0_T_SU_SU_SU_ST_T1_.exit.i", !llvm.loop !17

"_ZSt12__move_mergeIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNKS1_20BalancedPartitioning12runIterationENS1_14iterator_rangeINS7_IS3_S8_IS2_SaIS2_EEEEEEjjRNS1_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEET0_T_SU_SU_SU_ST_T1_.exit.i": ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i, %_ZSt4moveIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi ptr [ %i.uq, %_ZSt4moveIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i ], [ %.lcssa139.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ], [ %i.wb, %.lr.ph.i.i.i.i.i19.i.i ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i.i to i64
  %i.we = sub i64 %3, %i.un
  %i.wf = getelementptr inbounds i8, ptr %i.uq, i64 %i.we ; 2 uses
  %i.wg = sub i64 %i.lt, %i.ur
  %i.wh = ashr exact i64 %i.wg, 4                 ; 2 uses
  %.not.i33 = icmp slt i64 %i.wh, %i.sp
  br i1 %.not.i33, label %._crit_edge.i34, label %bb.ac, !llvm.loop !518

._crit_edge.i34:                                  ; preds = %"_ZSt12__move_mergeIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNKS1_20BalancedPartitioning12runIterationENS1_14iterator_rangeINS7_IS3_S8_IS2_SaIS2_EEEEEEjjRNS1_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEET0_T_SU_SU_SU_ST_T1_.exit.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIfPN4llvm14BPFunctionNodeEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNKS3_20BalancedPartitioning12runIterationENS3_14iterator_rangeINS1_IS5_S8_IS4_SaIS4_EEEEEEjjRNS3_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEEvT_ST_T0_T1_T2_.exit"
  %.0.lcssa.i35 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIfPN4llvm14BPFunctionNodeEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNKS3_20BalancedPartitioning12runIterationENS3_14iterator_rangeINS1_IS5_S8_IS4_SaIS4_EEEEEEjjRNS3_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEEvT_ST_T0_T1_T2_.exit" ], [ %i.sr, %"_ZSt12__move_mergeIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNKS1_20BalancedPartitioning12runIterationENS1_14iterator_rangeINS7_IS3_S8_IS2_SaIS2_EEEEEEjjRNS1_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEET0_T_SU_SU_SU_ST_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIfPN4llvm14BPFunctionNodeEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNKS3_20BalancedPartitioning12runIterationENS3_14iterator_rangeINS1_IS5_S8_IS4_SaIS4_EEEEEEjjRNS3_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEEvT_ST_T0_T1_T2_.exit" ], [ %i.wf, %"_ZSt12__move_mergeIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNKS1_20BalancedPartitioning12runIterationENS1_14iterator_rangeINS7_IS3_S8_IS2_SaIS2_EEEEEEjjRNS1_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEET0_T_SU_SU_SU_ST_T1_.exit.i" ] ; 2 uses
  %.lcssa65.i = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIfPN4llvm14BPFunctionNodeEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNKS3_20BalancedPartitioning12runIterationENS3_14iterator_rangeINS1_IS5_S8_IS4_SaIS4_EEEEEEjjRNS3_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEEvT_ST_T0_T1_T2_.exit" ], [ %i.wh, %"_ZSt12__move_mergeIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNKS1_20BalancedPartitioning12runIterationENS1_14iterator_rangeINS7_IS3_S8_IS2_SaIS2_EEEEEEjjRNS1_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEET0_T_SU_SU_SU_ST_T1_.exit.i" ]
  %.sroa.speculated.i36 = tail call i64 @llvm.smin.i64(i64 %i.lu, i64 %.lcssa65.i) ; 2 uses
  %.idx60.i = shl nsw i64 %.sroa.speculated.i36, 4
  %i.wi = getelementptr inbounds i8, ptr %.0.lcssa.i35, i64 %.idx60.i ; 5 uses
  %i.wj = icmp ne i64 %.sroa.speculated.i36, 0
  %i.wk = icmp ne ptr %i.wi, %i.e
  %i.wl = and i1 %i.wj, %i.wk
  br i1 %i.wl, label %.lr.ph.i41.i, label %._crit_edge.i25.i

.lr.ph.i41.i:                                     ; preds = %._crit_edge.i34, %bb.ai
  %.029.i42.i = phi ptr [ %.1.i50.i, %bb.ai ], [ %.0.lcssa.i35, %._crit_edge.i34 ] ; 4 uses
  %.01628.i43.i = phi ptr [ %.117.i49.i, %bb.ai ], [ %i.wi, %._crit_edge.i34 ] ; 4 uses
  %.sroa.0.027.i44.i = phi ptr [ %i.wq, %bb.ai ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i34 ] ; 3 uses
  %.016.val.i45.i = load float, ptr %.01628.i43.i, align 8, !tbaa !123 ; 2 uses
  %.0.val.i46.i = load float, ptr %.029.i42.i, align 8, !tbaa !123 ; 2 uses
  %i.wm = fcmp ogt float %.016.val.i45.i, %.0.val.i46.i
  br i1 %i.wm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i41.i
  %i.wn = getelementptr inbounds nuw i8, ptr %.01628.i43.i, i64 16
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i41.i
  %i.wo = getelementptr inbounds nuw i8, ptr %.029.i42.i, i64 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.val.sink.i47.i = phi float [ %.016.val.i45.i, %bb.ag ], [ %.0.val.i46.i, %bb.ah ]
  %.01628.pn.i48.i = phi ptr [ %.01628.i43.i, %bb.ag ], [ %.029.i42.i, %bb.ah ]
  %.117.i49.i = phi ptr [ %i.wn, %bb.ag ], [ %.01628.i43.i, %bb.ah ] ; 3 uses
  %.1.i50.i = phi ptr [ %.029.i42.i, %bb.ag ], [ %i.wo, %bb.ah ] ; 3 uses
  %.sink.in.i51.i = getelementptr inbounds nuw i8, ptr %.01628.pn.i48.i, i64 8
  %.sink.i52.i = load ptr, ptr %.sink.in.i51.i, align 8, !tbaa !122
  store float %.0.val.sink.i47.i, ptr %.sroa.0.027.i44.i, align 8, !tbaa !123
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 8
  store ptr %.sink.i52.i, ptr %i.wp, align 8, !tbaa !121
  %i.wq = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 16 ; 2 uses
  %i.wr = icmp ne ptr %.1.i50.i, %i.wi
  %i.ws = icmp ne ptr %.117.i49.i, %i.e
  %i.wt = select i1 %i.wr, i1 %i.ws, i1 false
  br i1 %i.wt, label %.lr.ph.i41.i, label %._crit_edge.i25.i, !llvm.loop !515

._crit_edge.i25.i:                                ; preds = %bb.ai, %._crit_edge.i34
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i34 ], [ %i.wq, %bb.ai ] ; 5 uses
  %.016.lcssa.i27.i = phi ptr [ %i.wi, %._crit_edge.i34 ], [ %.117.i49.i, %bb.ai ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i35, %._crit_edge.i34 ], [ %.1.i50.i, %bb.ai ] ; 3 uses
  %i.wu = ptrtoint ptr %i.wi to i64
  %i.wv = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.ww = sub i64 %i.wu, %i.wv
  %i.wx = ashr exact i64 %i.ww, 4                 ; 5 uses
  %i.wy = icmp sgt i64 %i.wx, 0
  br i1 %i.wy, label %.lr.ph.i.i.i.i.i.i37.i.preheader, label %_ZSt4moveIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i

.lr.ph.i.i.i.i.i.i37.i.preheader:                 ; preds = %._crit_edge.i25.i
  %xtraiter183 = and i64 %i.wx, 3                 ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol

.lr.ph.i.i.i.i.i.i37.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i37.i.preheader, %.lr.ph.i.i.i.i.i.i37.i.prol
  %.012.i.i.i.i.i.i38.i.prol = phi i64 [ %i.xf, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %i.wx, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %.0811.i.i.i.i.i.i39.i.prol = phi ptr [ %i.xe, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i40.i.prol = phi ptr [ %i.xd, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ] ; 3 uses
  %prol.iter185 = phi i64 [ %prol.iter185.next, %.lr.ph.i.i.i.i.i.i37.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i37.i.preheader ]
  %i.wz = load float, ptr %.0910.i.i.i.i.i.i40.i.prol, align 4, !tbaa !64
  store float %i.wz, ptr %.0811.i.i.i.i.i.i39.i.prol, align 8, !tbaa !123
  %i.xa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 8
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !122
  %i.xc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 8
  store ptr %i.xb, ptr %i.xc, align 8, !tbaa !121
  %i.xd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i.prol, i64 16 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i.prol, i64 16 ; 3 uses
  %i.xf = add nsw i64 %.012.i.i.i.i.i.i38.i.prol, -1 ; 2 uses
  %prol.iter185.next = add i64 %prol.iter185, 1   ; 2 uses
  %prol.iter185.cmp.not = icmp eq i64 %prol.iter185.next, %xtraiter183
  br i1 %prol.iter185.cmp.not, label %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.i.prol, !llvm.loop !519

.lr.ph.i.i.i.i.i.i37.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol, %.lr.ph.i.i.i.i.i.i37.i.preheader
  %.012.i.i.i.i.i.i38.i.unr = phi i64 [ %i.wx, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xf, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0811.i.i.i.i.i.i39.i.unr = phi ptr [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xe, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.0910.i.i.i.i.i.i40.i.unr = phi ptr [ %.0.lcssa.i28.i, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xd, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %.lcssa144.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.i.preheader ], [ %i.xe, %.lr.ph.i.i.i.i.i.i37.i.prol ]
  %i.xg = icmp ult i64 %i.wx, 4
  br i1 %i.xg, label %_ZSt4moveIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i, label %.lr.ph.i.i.i.i.i.i37.i

.lr.ph.i.i.i.i.i.i37.i:                           ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i
  %.012.i.i.i.i.i.i38.i = phi i64 [ %i.yf, %.lr.ph.i.i.i.i.i.i37.i ], [ %.012.i.i.i.i.i.i38.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39.i = phi ptr [ %i.ye, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0811.i.i.i.i.i.i39.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i40.i = phi ptr [ %i.yd, %.lr.ph.i.i.i.i.i.i37.i ], [ %.0910.i.i.i.i.i.i40.i.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ] ; 9 uses
  %i.xh = load float, ptr %.0910.i.i.i.i.i.i40.i, align 4, !tbaa !64
  store float %i.xh, ptr %.0811.i.i.i.i.i.i39.i, align 8, !tbaa !123
  %i.xi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 8
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !122
  %i.xk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 8
  store ptr %i.xj, ptr %i.xk, align 8, !tbaa !121
  %i.xl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 16
  %i.xm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 16
  %i.xn = load float, ptr %i.xl, align 8, !tbaa !64
  store float %i.xn, ptr %i.xm, align 8, !tbaa !123
  %i.xo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 24
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !122
  %i.xq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 24
  store ptr %i.xp, ptr %i.xq, align 8, !tbaa !121
  %i.xr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 32
  %i.xs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 32
  %i.xt = load float, ptr %i.xr, align 8, !tbaa !64
  store float %i.xt, ptr %i.xs, align 8, !tbaa !123
  %i.xu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 40
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !122
  %i.xw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 40
  store ptr %i.xv, ptr %i.xw, align 8, !tbaa !121
  %i.xx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 48
  %i.xy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 48
  %i.xz = load float, ptr %i.xx, align 8, !tbaa !64
  store float %i.xz, ptr %i.xy, align 8, !tbaa !123
  %i.ya = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 56
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !122
  %i.yc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 56
  store ptr %i.yb, ptr %i.yc, align 8, !tbaa !121
  %i.yd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40.i, i64 64
  %i.ye = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39.i, i64 64 ; 2 uses
  %i.yf = add nsw i64 %.012.i.i.i.i.i.i38.i, -4
  %i.yg = icmp sgt i64 %.012.i.i.i.i.i.i38.i, 4
  br i1 %i.yg, label %.lr.ph.i.i.i.i.i.i37.i, label %_ZSt4moveIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i, !llvm.loop !17

_ZSt4moveIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i37.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %.lcssa144.unr, %.lr.ph.i.i.i.i.i.i37.i.prol.loopexit ], [ %i.ye, %.lr.ph.i.i.i.i.i.i37.i ]
  %i.yh = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.yi = sub i64 %i.lt, %i.yh
  %i.yj = ashr exact i64 %i.yi, 4                 ; 5 uses
  %i.yk = icmp sgt i64 %i.yj, 0
  br i1 %i.yk, label %.lr.ph.i.i.i.i.i19.i32.preheader.i, label %"_ZSt17__merge_sort_loopIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNKS1_20BalancedPartitioning12runIterationENS1_14iterator_rangeINS7_IS3_S8_IS2_SaIS2_EEEEEEjjRNS1_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEEvT_ST_T0_T1_T2_.exit"

.lr.ph.i.i.i.i.i19.i32.preheader.i:               ; preds = %_ZSt4moveIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i
  %i.yl = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.ym = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.yn = sub i64 %i.yl, %i.ym
  %i.yo = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.yn ; 2 uses
  %xtraiter186 = and i64 %i.yj, 3                 ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol

.lr.ph.i.i.i.i.i19.i32.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader.i, %.lr.ph.i.i.i.i.i19.i32.i.prol
  %.012.i.i.i.i.i20.i33.i.prol = phi i64 [ %i.yv, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.yj, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %.0811.i.i.i.i.i21.i34.i.prol = phi ptr [ %i.yu, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %i.yo, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %.0910.i.i.i.i.i22.i35.i.prol = phi ptr [ %i.yt, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ] ; 3 uses
  %prol.iter188 = phi i64 [ %prol.iter188.next, %.lr.ph.i.i.i.i.i19.i32.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i32.preheader.i ]
  %i.yp = load float, ptr %.0910.i.i.i.i.i22.i35.i.prol, align 4, !tbaa !64
  store float %i.yp, ptr %.0811.i.i.i.i.i21.i34.i.prol, align 8, !tbaa !123
  %i.yq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !122
  %i.ys = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 8
  store ptr %i.yr, ptr %i.ys, align 8, !tbaa !121
  %i.yt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i.prol, i64 16 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i.prol, i64 16 ; 2 uses
  %i.yv = add nsw i64 %.012.i.i.i.i.i20.i33.i.prol, -1 ; 2 uses
  %prol.iter188.next = add i64 %prol.iter188, 1   ; 2 uses
  %prol.iter188.cmp.not = icmp eq i64 %prol.iter188.next, %xtraiter186
  br i1 %prol.iter188.cmp.not, label %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.i.prol, !llvm.loop !520

.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol, %.lr.ph.i.i.i.i.i19.i32.preheader.i
  %.012.i.i.i.i.i20.i33.i.unr = phi i64 [ %i.yj, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.yv, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0811.i.i.i.i.i21.i34.i.unr = phi ptr [ %i.yo, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.yu, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %.0910.i.i.i.i.i22.i35.i.unr = phi ptr [ %.016.lcssa.i27.i, %.lr.ph.i.i.i.i.i19.i32.preheader.i ], [ %i.yt, %.lr.ph.i.i.i.i.i19.i32.i.prol ]
  %i.yw = icmp ult i64 %i.yj, 4
  br i1 %i.yw, label %"_ZSt17__merge_sort_loopIPSt4pairIfPN4llvm14BPFunctionNodeEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNKS1_20BalancedPartitioning12runIterationENS1_14iterator_rangeINS7_IS3_S8_IS2_SaIS2_EEEEEEjjRNS1_11SmallVectorINSE_16UtilitySignatureELj4EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEE3$_1EEEvT_ST_T0_T1_T2_.exit", label %.lr.ph.i.i.i.i.i19.i32.i

.lr.ph.i.i.i.i.i19.i32.i:                         ; preds = %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i20.i33.i = phi i64 [ %i.zv, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.012.i.i.i.i.i20.i33.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34.i = phi ptr [ %i.zu, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0811.i.i.i.i.i21.i34.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i35.i = phi ptr [ %i.zt, %.lr.ph.i.i.i.i.i19.i32.i ], [ %.0910.i.i.i.i.i22.i35.i.unr, %.lr.ph.i.i.i.i.i19.i32.i.prol.loopexit ] ; 9 uses
  %i.yx = load float, ptr %.0910.i.i.i.i.i22.i35.i, align 4, !tbaa !64
  store float %i.yx, ptr %.0811.i.i.i.i.i21.i34.i, align 8, !tbaa !123
  %i.yy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 8
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !122
  %i.za = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 8
  store ptr %i.yz, ptr %i.za, align 8, !tbaa !121
  %i.zb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 16
  %i.zc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 16
  %i.zd = load float, ptr %i.zb, align 8, !tbaa !64
  store float %i.zd, ptr %i.zc, align 8, !tbaa !123
  %i.ze = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 24
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !122
  %i.zg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 24
  store ptr %i.zf, ptr %i.zg, align 8, !tbaa !121
  %i.zh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 32
  %i.zi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 32
  %i.zj = load float, ptr %i.zh, align 8, !tbaa !64
  store float %i.zj, ptr %i.zi, align 8, !tbaa !123
  %i.zk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35.i, i64 40
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !122
  %i.zm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34.i, i64 40
end_hunk_1
