Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FileIndexRecord?download=true
inline.NumInlined: 677
inline.NumDeleted: 276
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5clang5index14DeclOccurrenceESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNKS3_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_T1_":bb.a
  br label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i122

bb.ci:                                            ; preds = %bb.cg
  %.not32.i119 = icmp eq i32 %i.hz, 0
  br i1 %.not32.i119, label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i122, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ig = load ptr, ptr %i.ga, align 8, !tbaa !34 ; 2 uses
  %.not37.i120 = icmp eq i32 %i.hz, 1
  br i1 %.not37.i120, label %bb.cl, label %bb.ck, !prof !32

bb.ck:                                            ; preds = %bb.cj
  %.idx36.i121 = shl nuw nsw i64 %i.ia, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ig, ptr align 8 %i.hk, i64 %.idx36.i121, i1 false)
  br label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i122

bb.cl:                                            ; preds = %bb.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i64 16, i1 false), !tbaa.struct !64
  br label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i122

_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i122: ; preds = %bb.cl, %bb.ck, %bb.ci, %bb.ch
  %.026.i123 = phi i64 [ 0, %bb.ch ], [ 0, %bb.ci ], [ %i.ia, %bb.ck ], [ 1, %bb.cl ] ; 4 uses
  %i.ih = load i32, ptr %i.hv, align 8, !tbaa !57
  %i.ii = zext i32 %i.ih to i64                   ; 2 uses
  %.not.i.i.i124 = icmp samesign eq i64 %.026.i123, %i.ii
  br i1 %.not.i.i.i124, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5index14SymbolRelationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i127, label %bb.cm

bb.cm:                                            ; preds = %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i122
  %i.ij = load ptr, ptr %i.hi, align 8, !tbaa !34
  %.idx39.i125 = shl nuw nsw i64 %.026.i123, 4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.idx39.i125
  %i.il = load ptr, ptr %i.ga, align 8, !tbaa !34
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.il, i64 %.026.i123
  %i.in = sub nsw i64 %i.ii, %.026.i123
  %gepdiff.i126 = shl nsw i64 %i.in, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.im, ptr align 8 %i.ik, i64 %gepdiff.i126, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5index14SymbolRelationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i127

_ZN4llvm23SmallVectorTemplateBaseIN5clang5index14SymbolRelationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i127: ; preds = %bb.cm, %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i122
  store i32 %i.hw, ptr %i.hy, align 8, !tbaa !57
  store i32 0, ptr %i.hv, align 8, !tbaa !57
  br label %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit128

_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit128: ; preds = %bb.by, %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEE12assignRemoteEOS4_.exit.i115, %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit.i117, %_ZN4llvm23SmallVectorTemplateBaseIN5clang5index14SymbolRelationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i127
  %i.io = getelementptr inbounds nuw i8, ptr %.030.i37, i64 88
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit128, %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit143
  %.117.i = phi ptr [ %i.hh, %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit143 ], [ %.01629.i, %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit128 ] ; 4 uses
  %.1.i = phi ptr [ %.030.i37, %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit143 ], [ %i.io, %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit128 ] ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 88 ; 5 uses
  %i.iq = icmp ne ptr %.1.i, %i.fv
  %i.ir = icmp ne ptr %.117.i, %i.fw
  %i.is = select i1 %i.iq, i1 %i.ir, i1 false
  br i1 %i.is, label %.lr.ph.i36, label %._crit_edge.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %bb.cn
  %i.it = ptrtoint ptr %i.fv to i64
  %i.iu = ptrtoint ptr %.1.i to i64
  %i.iv = sub i64 %i.it, %i.iu                    ; 2 uses
  %i.iw = icmp sgt i64 %i.iv, 0
  br i1 %i.iw, label %.lr.ph.preheader.i.i.i.i.i.i31, label %_ZSt4moveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i

.lr.ph.preheader.i.i.i.i.i.i31:                   ; preds = %._crit_edge.i
  %i.ix = udiv exact i64 %i.iv, 88
  br label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit113, %.lr.ph.preheader.i.i.i.i.i.i31
  %.012.i.i.i.i.i.i33 = phi i64 [ %i.kh, %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit113 ], [ %i.ix, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 2 uses
  %.0811.i.i.i.i.i.i34 = phi ptr [ %i.kg, %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit113 ], [ %i.ip, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 9 uses
  %.0910.i.i.i.i.i.i35 = phi ptr [ %i.kf, %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit113 ], [ %.1.i, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0811.i.i.i.i.i.i34, ptr noundef nonnull align 8 dereferenceable(88) %.0910.i.i.i.i.i.i35, i64 24, i1 false)
  %i.iy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 24 ; 6 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 24 ; 4 uses
  %i.ja = icmp eq ptr %.0811.i.i.i.i.i.i34, %.0910.i.i.i.i.i.i35
  br i1 %i.ja, label %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit113, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i.i.i.i.i32
  %i.jb = load ptr, ptr %i.iz, align 8, !tbaa !34 ; 6 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 40 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.je = load ptr, ptr %i.iy, align 8, !tbaa !34 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 40
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEE12assignRemoteEOS4_.exit.i100, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @free(ptr noundef %i.je) #12
  %.pre.i99 = load ptr, ptr %i.iz, align 8, !tbaa !34
  br label %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEE12assignRemoteEOS4_.exit.i100

_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEE12assignRemoteEOS4_.exit.i100: ; preds = %bb.cq, %bb.cp
  %i.jh = phi ptr [ %i.jb, %bb.cp ], [ %.pre.i99, %bb.cq ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 32
  store ptr %i.jh, ptr %i.iy, align 8, !tbaa !34
  %i.jj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 32 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 36
  %i.jl = load <2 x i32>, ptr %i.jj, align 8, !tbaa !38
  store <2 x i32> %i.jl, ptr %i.ji, align 8, !tbaa !38
  store ptr %i.jc, ptr %i.iz, align 8, !tbaa !34
  store i32 0, ptr %i.jk, align 4, !tbaa !58
  store i32 0, ptr %i.jj, align 8, !tbaa !57
  br label %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit113

bb.cr:                                            ; preds = %bb.co
  %i.jm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 32 ; 4 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !57 ; 6 uses
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 32 ; 4 uses
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !57 ; 4 uses
  %i.jr = zext i32 %i.jq to i64                   ; 2 uses
  %.not.i101 = icmp ult i32 %i.jq, %i.jn
  br i1 %.not.i101, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.js = load ptr, ptr %i.iy, align 8, !tbaa !34 ; 2 uses
  switch i32 %i.jn, label %bb.ct [
    i32 0, label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit.i102
    i32 1, label %bb.cu
  ], !prof !63

bb.ct:                                            ; preds = %bb.cs
  %.idx.i103 = shl nuw nsw i64 %i.jo, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.js, ptr align 8 %i.jb, i64 %.idx.i103, i1 false)
  br label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit.i102

bb.cu:                                            ; preds = %bb.cs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.js, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i64 16, i1 false), !tbaa.struct !64
  br label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit.i102

_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit.i102: ; preds = %bb.cu, %bb.ct, %bb.cs
  store i32 %i.jn, ptr %i.jp, align 8, !tbaa !57
  store i32 0, ptr %i.jm, align 8, !tbaa !57
  br label %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit113

bb.cv:                                            ; preds = %bb.cr
  %i.jt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 36
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !58
  %i.jv = icmp ult i32 %i.ju, %i.jn
  br i1 %i.jv, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.jp, align 8, !tbaa !57
  %i.jw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 40
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.iy, ptr noundef nonnull %i.jw, i64 noundef %i.jo, i64 noundef 16) #12
  br label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i107

bb.cx:                                            ; preds = %bb.cv
  %.not32.i104 = icmp eq i32 %i.jq, 0
  br i1 %.not32.i104, label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i107, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.jx = load ptr, ptr %i.iy, align 8, !tbaa !34 ; 2 uses
  %.not37.i105 = icmp eq i32 %i.jq, 1
  br i1 %.not37.i105, label %bb.da, label %bb.cz, !prof !32

bb.cz:                                            ; preds = %bb.cy
  %.idx36.i106 = shl nuw nsw i64 %i.jr, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jx, ptr align 8 %i.jb, i64 %.idx36.i106, i1 false)
  br label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i107

bb.da:                                            ; preds = %bb.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jx, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i64 16, i1 false), !tbaa.struct !64
  br label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i107

_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i107: ; preds = %bb.da, %bb.cz, %bb.cx, %bb.cw
  %.026.i108 = phi i64 [ 0, %bb.cw ], [ 0, %bb.cx ], [ %i.jr, %bb.cz ], [ 1, %bb.da ] ; 4 uses
  %i.jy = load i32, ptr %i.jm, align 8, !tbaa !57
  %i.jz = zext i32 %i.jy to i64                   ; 2 uses
  %.not.i.i.i109 = icmp samesign eq i64 %.026.i108, %i.jz
  br i1 %.not.i.i.i109, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5index14SymbolRelationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i112, label %bb.db

bb.db:                                            ; preds = %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i107
  %i.ka = load ptr, ptr %i.iz, align 8, !tbaa !34
  %.idx39.i110 = shl nuw nsw i64 %.026.i108, 4
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %.idx39.i110
  %i.kc = load ptr, ptr %i.iy, align 8, !tbaa !34
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %.026.i108
  %i.ke = sub nsw i64 %i.jz, %.026.i108
  %gepdiff.i111 = shl nsw i64 %i.ke, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kd, ptr align 8 %i.kb, i64 %gepdiff.i111, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5index14SymbolRelationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i112

_ZN4llvm23SmallVectorTemplateBaseIN5clang5index14SymbolRelationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i112: ; preds = %bb.db, %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i107
  store i32 %i.jn, ptr %i.jp, align 8, !tbaa !57
  store i32 0, ptr %i.jm, align 8, !tbaa !57
  br label %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit113

_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit113: ; preds = %.lr.ph.i.i.i.i.i.i32, %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEE12assignRemoteEOS4_.exit.i100, %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit.i102, %_ZN4llvm23SmallVectorTemplateBaseIN5clang5index14SymbolRelationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i112
  %i.kf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 88
  %i.kg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 88 ; 2 uses
  %i.kh = add nsw i64 %.012.i.i.i.i.i.i33, -1
  %i.ki = icmp samesign ugt i64 %.012.i.i.i.i.i.i33, 1
  br i1 %i.ki, label %.lr.ph.i.i.i.i.i.i32, label %_ZSt4moveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i, !llvm.loop !2

_ZSt4moveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i: ; preds = %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit113, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %i.ip, %._crit_edge.i ], [ %i.kg, %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit113 ]
  %i.kj = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64 ; 3 uses
  %i.kk = ptrtoint ptr %i.ip to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = getelementptr inbounds i8, ptr %i.ip, i64 %i.kl ; 2 uses
  %i.kn = ptrtoint ptr %i.fw to i64               ; 2 uses
  %i.ko = ptrtoint ptr %.117.i to i64
  %i.kp = sub i64 %i.kn, %i.ko                    ; 2 uses
  %i.kq = icmp sgt i64 %i.kp, 0
  br i1 %i.kq, label %.lr.ph.preheader.i.i.i.i.i19.i, label %"_ZSt12__move_mergeIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEET0_T_SG_SG_SG_SF_T1_.exit"

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i
  %i.kr = udiv exact i64 %i.kp, 88
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit98, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.mb, %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit98 ], [ %i.kr, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.ma, %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit98 ], [ %i.km, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 9 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.lz, %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit98 ], [ %.117.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0811.i.i.i.i.i22.i, ptr noundef nonnull align 8 dereferenceable(88) %.0910.i.i.i.i.i23.i, i64 24, i1 false)
  %i.ks = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 24 ; 6 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 24 ; 4 uses
  %i.ku = icmp eq ptr %.0811.i.i.i.i.i22.i, %.0910.i.i.i.i.i23.i
  br i1 %i.ku, label %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit98, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i.i20.i
  %i.kv = load ptr, ptr %i.kt, align 8, !tbaa !34 ; 6 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 40 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ky = load ptr, ptr %i.ks, align 8, !tbaa !34 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 40
  %i.la = icmp eq ptr %i.ky, %i.kz
  br i1 %i.la, label %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEE12assignRemoteEOS4_.exit.i85, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @free(ptr noundef %i.ky) #12
  %.pre.i84 = load ptr, ptr %i.kt, align 8, !tbaa !34
  br label %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEE12assignRemoteEOS4_.exit.i85

_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEE12assignRemoteEOS4_.exit.i85: ; preds = %bb.de, %bb.dd
  %i.lb = phi ptr [ %i.kv, %bb.dd ], [ %.pre.i84, %bb.de ]
  %i.lc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 32
  store ptr %i.lb, ptr %i.ks, align 8, !tbaa !34
  %i.ld = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 32 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 36
  %i.lf = load <2 x i32>, ptr %i.ld, align 8, !tbaa !38
  store <2 x i32> %i.lf, ptr %i.lc, align 8, !tbaa !38
  store ptr %i.kw, ptr %i.kt, align 8, !tbaa !34
  store i32 0, ptr %i.le, align 4, !tbaa !58
  store i32 0, ptr %i.ld, align 8, !tbaa !57
  br label %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit98

bb.df:                                            ; preds = %bb.dc
  %i.lg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 32 ; 4 uses
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !57 ; 6 uses
  %i.li = zext i32 %i.lh to i64                   ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 32 ; 4 uses
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !57 ; 4 uses
  %i.ll = zext i32 %i.lk to i64                   ; 2 uses
  %.not.i86 = icmp ult i32 %i.lk, %i.lh
  br i1 %.not.i86, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.lm = load ptr, ptr %i.ks, align 8, !tbaa !34 ; 2 uses
  switch i32 %i.lh, label %bb.dh [
    i32 0, label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit.i87
    i32 1, label %bb.di
  ], !prof !63

bb.dh:                                            ; preds = %bb.dg
  %.idx.i88 = shl nuw nsw i64 %i.li, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.lm, ptr align 8 %i.kv, i64 %.idx.i88, i1 false)
  br label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit.i87

bb.di:                                            ; preds = %bb.dg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lm, ptr noundef nonnull align 8 dereferenceable(16) %i.kv, i64 16, i1 false), !tbaa.struct !64
  br label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit.i87

_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit.i87: ; preds = %bb.di, %bb.dh, %bb.dg
  store i32 %i.lh, ptr %i.lj, align 8, !tbaa !57
  store i32 0, ptr %i.lg, align 8, !tbaa !57
  br label %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit98

bb.dj:                                            ; preds = %bb.df
  %i.ln = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 36
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !58
  %i.lp = icmp ult i32 %i.lo, %i.lh
  br i1 %i.lp, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.lj, align 8, !tbaa !57
  %i.lq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 40
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.ks, ptr noundef nonnull %i.lq, i64 noundef %i.li, i64 noundef 16) #12
  br label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i92

bb.dl:                                            ; preds = %bb.dj
  %.not32.i89 = icmp eq i32 %i.lk, 0
  br i1 %.not32.i89, label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i92, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.lr = load ptr, ptr %i.ks, align 8, !tbaa !34 ; 2 uses
  %.not37.i90 = icmp eq i32 %i.lk, 1
  br i1 %.not37.i90, label %bb.do, label %bb.dn, !prof !32

bb.dn:                                            ; preds = %bb.dm
  %.idx36.i91 = shl nuw nsw i64 %i.ll, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.lr, ptr align 8 %i.kv, i64 %.idx36.i91, i1 false)
  br label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i92

bb.do:                                            ; preds = %bb.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lr, ptr noundef nonnull align 8 dereferenceable(16) %i.kv, i64 16, i1 false), !tbaa.struct !64
  br label %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i92

_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i92: ; preds = %bb.do, %bb.dn, %bb.dl, %bb.dk
  %.026.i93 = phi i64 [ 0, %bb.dk ], [ 0, %bb.dl ], [ %i.ll, %bb.dn ], [ 1, %bb.do ] ; 4 uses
  %i.ls = load i32, ptr %i.lg, align 8, !tbaa !57
  %i.lt = zext i32 %i.ls to i64                   ; 2 uses
  %.not.i.i.i94 = icmp samesign eq i64 %.026.i93, %i.lt
  br i1 %.not.i.i.i94, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5index14SymbolRelationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i97, label %bb.dp

bb.dp:                                            ; preds = %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i92
  %i.lu = load ptr, ptr %i.kt, align 8, !tbaa !34
  %.idx39.i95 = shl nuw nsw i64 %.026.i93, 4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %.idx39.i95
  %i.lw = load ptr, ptr %i.ks, align 8, !tbaa !34
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.lw, i64 %.026.i93
  %i.ly = sub nsw i64 %i.lt, %.026.i93
  %gepdiff.i96 = shl nsw i64 %i.ly, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lx, ptr align 8 %i.lv, i64 %gepdiff.i96, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5index14SymbolRelationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i97

_ZN4llvm23SmallVectorTemplateBaseIN5clang5index14SymbolRelationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i97: ; preds = %bb.dp, %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit34.i92
  store i32 %i.lh, ptr %i.lj, align 8, !tbaa !57
  store i32 0, ptr %i.lg, align 8, !tbaa !57
  br label %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit98

_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit98: ; preds = %.lr.ph.i.i.i.i.i20.i, %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEE12assignRemoteEOS4_.exit.i85, %_ZSt4moveIPN5clang5index14SymbolRelationES3_ET0_T_S5_S4_.exit.i87, %_ZN4llvm23SmallVectorTemplateBaseIN5clang5index14SymbolRelationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i97
  %i.lz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 88
  %i.ma = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 88 ; 2 uses
  %i.mb = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.mc = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.mc, label %.lr.ph.i.i.i.i.i20.i, label %_ZSt4moveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i, !llvm.loop !2

_ZSt4moveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i: ; preds = %_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_.exit98
  %3 = ptrtoint ptr %i.ma to i64
  br label %"_ZSt12__move_mergeIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEET0_T_SG_SG_SG_SF_T1_.exit"

"_ZSt12__move_mergeIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEET0_T_SG_SG_SG_SF_T1_.exit": ; preds = %_ZSt4moveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i, %_ZSt4moveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.kj, %_ZSt4moveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i ], [ %3, %_ZSt4moveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i ]
  %i.md = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.kj
  %i.me = getelementptr inbounds i8, ptr %i.km, i64 %i.md ; 2 uses
  %i.mf = sub i64 %i.l, %i.kn
  %i.mg = sdiv exact i64 %i.mf, 88                ; 2 uses
  %.not.i23 = icmp slt i64 %i.mg, %i.fu
  br i1 %.not.i23, label %"_ZSt17__merge_sort_loopIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_T1_T2_.exit", label %.lr.ph.i22, !llvm.loop !91

"_ZSt17__merge_sort_loopIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEET0_T_SG_SG_SG_SF_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5clang5index14DeclOccurrenceESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNKS3_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_T1_T2_.exit"
  %.0.lcssa.i24 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5clang5index14DeclOccurrenceESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNKS3_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_T1_T2_.exit" ], [ %i.fw, %"_ZSt12__move_mergeIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEET0_T_SG_SG_SG_SF_T1_.exit" ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5clang5index14DeclOccurrenceESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNKS3_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_T1_T2_.exit" ], [ %i.me, %"_ZSt12__move_mergeIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEET0_T_SG_SG_SG_SF_T1_.exit" ]
  %.lcssa.i25 = phi i64 [ %i.m, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5clang5index14DeclOccurrenceESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNKS3_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_T1_T2_.exit" ], [ %i.mg, %"_ZSt12__move_mergeIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEET0_T_SG_SG_SG_SF_T1_.exit" ]
  %.sroa.speculated.i26 = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %.lcssa.i25)
  %i.mh = getelementptr inbounds [88 x i8], ptr %.0.lcssa.i24, i64 %.sroa.speculated.i26 ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEET0_T_SG_SG_SG_SF_T1_"(ptr noundef %.0.lcssa.i24, ptr noundef %i.mh, ptr noundef %i.mh, ptr noundef nonnull %i.e, ptr %.sroa.022.0.lcssa.i)
  %i.mi = icmp slt i64 %i.fu, %i.d
  br i1 %i.mi, label %bb.b, label %._crit_edge, !llvm.loop !92

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5clang5index14DeclOccurrenceESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_T1_.exit.thread", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5clang5index14DeclOccurrenceESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5clang5index14DeclOccurrenceESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNKS3_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_SF_T0_SG_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_SG_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 88
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.0910.i.i.i.i.i, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 88 ; 3 uses
  %i.k = add nsw i64 %.012.i.i.i.i.i, -1
  %i.l = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.l, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.026.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %.sroa.0.025.i = phi ptr [ %i.w, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.sroa.016.024.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.not19.i = icmp eq ptr %.sroa.016.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr i8, ptr %.026.i, i64 4
  %.0.val.i = load i32, ptr %i.m, align 4, !tbaa !55
  %i.n = getelementptr i8, ptr %.sroa.016.024.i, i64 4
  %.val.i.i = load i32, ptr %i.n, align 4, !tbaa !55
  %i.o = icmp ult i32 %.val.i.i, %.0.val.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 24 ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.025.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.016.024.i, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 24
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 88
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.025.i, ptr noundef nonnull align 8 dereferenceable(88) %.026.i, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.026.i, i64 24
  %i.u = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %i.t) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.026.i, i64 88
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.016.1.i = phi ptr [ %i.s, %bb.d ], [ %.sroa.016.024.i, %bb.e ]
  %.1.i = phi ptr [ %.026.i, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 88
  %.not.i = icmp eq ptr %.1.i, %i.j
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_SG_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !93

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.x = ptrtoint ptr %i.j to i64
  %i.y = ptrtoint ptr %.026.i to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_SG_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.ab = udiv exact i64 %i.z, 88
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.025.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.026.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.0910.i.i.i.i.i.i, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.ad) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 88
  %i.ah = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ai = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_SG_T1_T2_.exit", !llvm.loop !2

bb.g:                                             ; preds = %bb.a
  %i.aj = ptrtoint ptr %2 to i64
  %i.ak = ptrtoint ptr %1 to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5clang5index14DeclOccurrenceESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29

.lr.ph.preheader.i.i.i.i.i24:                     ; preds = %bb.g
  %i.an = udiv exact i64 %i.al, 88
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.preheader.i.i.i.i.i24
  %.012.i.i.i.i.i26 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i25 ], [ %i.an, %.lr.ph.preheader.i.i.i.i.i24 ] ; 2 uses
  %.0811.i.i.i.i.i27 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i25 ], [ %5, %.lr.ph.preheader.i.i.i.i.i24 ] ; 3 uses
  %.0910.i.i.i.i.i28 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i25 ], [ %1, %.lr.ph.preheader.i.i.i.i.i24 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0811.i.i.i.i.i27, ptr noundef nonnull align 8 dereferenceable(88) %.0910.i.i.i.i.i28, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 24
  %i.aq = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %i.ap) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 88 ; 2 uses
  %i.at = add nsw i64 %.012.i.i.i.i.i26, -1
  %i.au = icmp samesign ugt i64 %.012.i.i.i.i.i26, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i25, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5clang5index14DeclOccurrenceESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29, !llvm.loop !2

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5clang5index14DeclOccurrenceESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29: ; preds = %.lr.ph.i.i.i.i.i25, %bb.g
  %.08.lcssa.i.i.i.i.i23 = phi ptr [ %5, %bb.g ], [ %i.as, %.lr.ph.i.i.i.i.i25 ] ; 4 uses
  %i.av = icmp eq ptr %0, %1
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5clang5index14DeclOccurrenceESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29
  %i.aw = ptrtoint ptr %.08.lcssa.i.i.i.i.i23 to i64
  %i.ax = ptrtoint ptr %5 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph.preheader.i.i.i.i.i.i32, label %"_ZSt21__move_merge_adaptiveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_SG_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i32:                   ; preds = %bb.h
  %i.ba = udiv exact i64 %i.ay, 88
  br label %.lr.ph.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i33:                             ; preds = %.lr.ph.i.i.i.i.i.i33, %.lr.ph.preheader.i.i.i.i.i.i32
  %.010.i.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i33 ], [ %i.ba, %.lr.ph.preheader.i.i.i.i.i.i32 ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i33 ], [ %2, %.lr.ph.preheader.i.i.i.i.i.i32 ] ; 2 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i33 ], [ %.08.lcssa.i.i.i.i.i23, %.lr.ph.preheader.i.i.i.i.i.i32 ] ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -88 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -88 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(88) %i.bb, i64 24, i1 false)
  %i.bd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64
  %i.bf = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef nonnull align 8 dereferenceable(64) %i.be) ; 0 uses
  %i.bg = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.bh = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i33, label %"_ZSt21__move_merge_adaptiveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_SG_T1_T2_.exit", !llvm.loop !4

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5clang5index14DeclOccurrenceESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit29
  %i.bi = icmp eq ptr %5, %.08.lcssa.i.i.i.i.i23
  br i1 %i.bi, label %"_ZSt21__move_merge_adaptiveIPN5clang5index14DeclOccurrenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNKS1_15FileIndexRecord32getDeclOccurrencesSortedByOffsetEvE3$_0EEEvT_SF_T0_SG_T1_T2_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i23, i64 -88
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.j
  %.sroa.028.0.i.ph.pn = phi ptr [ %1, %bb.j ], [ %.sroa.028.0.i.ph, %bb.l ] ; 3 uses
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.j ], [ %i.bn, %bb.l ]
  %.0.i.ph = phi ptr [ %i.bj, %bb.j ], [ %.0.i, %bb.l ]
  %.sroa.028.0.i.ph = getelementptr inbounds i8, ptr %.sroa.028.0.i.ph.pn, i64 -88 ; 3 uses
  %i.bk = getelementptr i8, ptr %.sroa.028.0.i.ph.pn, i64 -84
  br label %bb.k

bb.k:                                             ; preds = %.outer, %bb.o
  %.sroa.0.0.i = phi ptr [ %i.bn, %bb.o ], [ %.sroa.0.0.i.ph, %.outer ] ; 2 uses
  %.0.i = phi ptr [ %i.ci, %bb.o ], [ %.0.i.ph, %.outer ] ; 7 uses
  %i.bl = getelementptr i8, ptr %.0.i, i64 4
  %.0.val.i30 = load i32, ptr %i.bl, align 4, !tbaa !55
  %.val2.i.i = load i32, ptr %i.bk, align 4, !tbaa !55
  %i.bm = icmp ult i32 %.0.val.i30, %.val2.i.i
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -88 ; 5 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -64 ; 2 uses
  br i1 %i.bm, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bn, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.028.0.i.ph, i64 24, i1 false)
  %i.bp = getelementptr inbounds i8, ptr %.sroa.028.0.i.ph.pn, i64 -64
  %i.bq = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang5index14SymbolRelationEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(64) %i.bo, ptr noundef nonnull align 8 dereferenceable(64) %i.bp) ; 0 uses
  %i.br = icmp eq ptr %0, %.sroa.028.0.i.ph
end_hunk_0
