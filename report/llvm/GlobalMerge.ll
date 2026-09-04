Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GlobalMerge?download=true
inline.NumInlined: 2515
inline.NumDeleted: 1389
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS4_14GlobalVariableEEERNS4_6ModuleEbjE13UsedGlobalSetSt6vectorISC_SaISC_EEEESD_NS0_5__ops15_Iter_comp_iterIZNKS3_7doMergeES9_SB_bjE3$_1EEEvT_SM_T0_T1_":bb.a

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i140:          ; preds = %bb.cl, %bb.ck, %bb.ci, %bb.ch
  %.026.i141 = phi i64 [ 0, %bb.ch ], [ 0, %bb.ci ], [ %i.mg, %bb.ck ], [ 1, %bb.cl ] ; 4 uses
  %i.mp = load i32, ptr %i.jk, align 8, !tbaa !52
  %i.mq = zext i32 %i.mp to i64                   ; 2 uses
  %.not.i.i.i142 = icmp samesign eq i64 %.026.i141, %i.mq
  br i1 %.not.i.i.i142, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i145, label %bb.cm

bb.cm:                                            ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i140
  %i.mr = load ptr, ptr %.031.i, align 8, !tbaa !34
  %.idx39.i143 = shl nuw nsw i64 %.026.i141, 3
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %.idx39.i143
  %i.mt = load ptr, ptr %.sroa.0.029.i, align 8, !tbaa !34
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %.026.i141
  %i.mv = sub nsw i64 %i.mq, %.026.i141
  %gepdiff.i144 = shl nsw i64 %i.mv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mu, ptr align 8 %i.ms, i64 %gepdiff.i144, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i145

_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i145: ; preds = %bb.cm, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i140
  store i32 %i.jl, ptr %i.me, align 8, !tbaa !52
  br label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit146.sink.split

_ZN4llvm15SmallVectorImplImEaSEOS1_.exit146.sink.split: ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i145, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i135, %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i133
  store i32 0, ptr %i.jk, align 8, !tbaa !52
  br label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit146

_ZN4llvm15SmallVectorImplImEaSEOS1_.exit146:      ; preds = %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit146.sink.split, %bb.by
  %i.mw = getelementptr inbounds nuw i8, ptr %.031.i, i64 80
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit146, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit161
  %.01630.pn.i = phi ptr [ %.01630.i, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit161 ], [ %.031.i, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit146 ]
  %.sink.in.i54 = phi ptr [ %i.jh, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit161 ], [ %i.kj, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit146 ]
  %.117.i = phi ptr [ %i.lr, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit161 ], [ %.01630.i, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit146 ] ; 4 uses
  %.1.i = phi ptr [ %.031.i, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit161 ], [ %i.mw, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit146 ] ; 4 uses
  %.sink.i55 = load i32, ptr %.sink.in.i54, align 8, !tbaa !163
  %.sink38.in.i = getelementptr inbounds nuw i8, ptr %.01630.pn.i, i64 64
  %.sink38.i = load i32, ptr %.sink38.in.i, align 8, !tbaa !161
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i, i64 64
  store i32 %.sink38.i, ptr %i.mx, align 8, !tbaa !161
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i, i64 72
  store i32 %.sink.i55, ptr %i.my, align 8, !tbaa !163
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i, i64 80 ; 5 uses
  %i.na = icmp ne ptr %.1.i, %i.ig
  %i.nb = icmp ne ptr %.117.i, %i.ih
  %i.nc = select i1 %i.na, i1 %i.nb, i1 false
  br i1 %i.nc, label %.lr.ph.i38, label %._crit_edge.i, !llvm.loop !9

._crit_edge.i:                                    ; preds = %bb.cn
  %i.nd = ptrtoint ptr %i.ig to i64
  %i.ne = ptrtoint ptr %.1.i to i64
  %i.nf = sub i64 %i.nd, %i.ne                    ; 2 uses
  %i.ng = icmp sgt i64 %i.nf, 0
  br i1 %i.ng, label %.lr.ph.preheader.i.i.i.i.i.i33, label %_ZSt4moveIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit.i

.lr.ph.preheader.i.i.i.i.i.i33:                   ; preds = %._crit_edge.i
  %i.nh = udiv exact i64 %i.nf, 80
  br label %.lr.ph.i.i.i.i.i.i34

.lr.ph.i.i.i.i.i.i34:                             ; preds = %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit131, %.lr.ph.preheader.i.i.i.i.i.i33
  %.012.i.i.i.i.i.i35 = phi i64 [ %i.ox, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit131 ], [ %i.nh, %.lr.ph.preheader.i.i.i.i.i.i33 ] ; 2 uses
  %.0811.i.i.i.i.i.i36 = phi ptr [ %i.ow, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit131 ], [ %i.mz, %.lr.ph.preheader.i.i.i.i.i.i33 ] ; 15 uses
  %.0910.i.i.i.i.i.i37 = phi ptr [ %i.ov, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit131 ], [ %.1.i, %.lr.ph.preheader.i.i.i.i.i.i33 ] ; 12 uses
  %i.ni = icmp eq ptr %.0811.i.i.i.i.i.i36, %.0910.i.i.i.i.i.i37
  br i1 %i.ni, label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit131, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i.i.i.i.i34
  %i.nj = load ptr, ptr %.0910.i.i.i.i.i.i37, align 8, !tbaa !34 ; 6 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 16 ; 2 uses
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nm = load ptr, ptr %.0811.i.i.i.i.i.i36, align 8, !tbaa !34 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 16
  %i.no = icmp eq ptr %i.nm, %i.nn
  br i1 %i.no, label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i118, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @free(ptr noundef %i.nm) #19
  %.pre.i117 = load ptr, ptr %.0910.i.i.i.i.i.i37, align 8, !tbaa !34
  br label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i118

_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i118: ; preds = %bb.cq, %bb.cp
  %i.np = phi ptr [ %i.nj, %bb.cp ], [ %.pre.i117, %bb.cq ]
  %i.nq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 8
  store ptr %i.np, ptr %.0811.i.i.i.i.i.i36, align 8, !tbaa !34
  %i.nr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 8 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 12
  %i.nt = load <2 x i32>, ptr %i.nr, align 8, !tbaa !97
  store <2 x i32> %i.nt, ptr %i.nq, align 8, !tbaa !97
  store ptr %i.nk, ptr %.0910.i.i.i.i.i.i37, align 8, !tbaa !34
  store i32 0, ptr %i.ns, align 4, !tbaa !53
  store i32 0, ptr %i.nr, align 8, !tbaa !52
  br label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit131

bb.cr:                                            ; preds = %bb.co
  %i.nu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 8 ; 4 uses
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !52 ; 6 uses
  %i.nw = zext i32 %i.nv to i64                   ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 8 ; 4 uses
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !52 ; 4 uses
  %i.nz = zext i32 %i.ny to i64                   ; 2 uses
  %.not.i119 = icmp ult i32 %i.ny, %i.nv
  br i1 %.not.i119, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.oa = load ptr, ptr %.0811.i.i.i.i.i.i36, align 8, !tbaa !34 ; 2 uses
  switch i32 %i.nv, label %bb.ct [
    i32 0, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i120
    i32 1, label %bb.cu
  ], !prof !188

bb.ct:                                            ; preds = %bb.cs
  %.idx.i121 = shl nuw nsw i64 %i.nw, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.oa, ptr align 8 %i.nj, i64 %.idx.i121, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i120

bb.cu:                                            ; preds = %bb.cs
  %i.ob = load i64, ptr %i.nj, align 8, !tbaa !107
  store i64 %i.ob, ptr %i.oa, align 8, !tbaa !107
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i120

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i120:            ; preds = %bb.cu, %bb.ct, %bb.cs
  store i32 %i.nv, ptr %i.nx, align 8, !tbaa !52
  store i32 0, ptr %i.nu, align 8, !tbaa !52
  br label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit131

bb.cv:                                            ; preds = %bb.cr
  %i.oc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 12
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !53
  %i.oe = icmp ult i32 %i.od, %i.nv
  br i1 %i.oe, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.nx, align 8, !tbaa !52
  %i.of = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(76) %.0811.i.i.i.i.i.i36, ptr noundef nonnull %i.of, i64 noundef %i.nw, i64 noundef 8) #19
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i125

bb.cx:                                            ; preds = %bb.cv
  %.not32.i122 = icmp eq i32 %i.ny, 0
  br i1 %.not32.i122, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i125, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.og = load ptr, ptr %.0811.i.i.i.i.i.i36, align 8, !tbaa !34 ; 2 uses
  %.not37.i123 = icmp eq i32 %i.ny, 1
  br i1 %.not37.i123, label %bb.da, label %bb.cz, !prof !177

bb.cz:                                            ; preds = %bb.cy
  %.idx36.i124 = shl nuw nsw i64 %i.nz, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.og, ptr align 8 %i.nj, i64 %.idx36.i124, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i125

bb.da:                                            ; preds = %bb.cy
  %i.oh = load i64, ptr %i.nj, align 8, !tbaa !107
  store i64 %i.oh, ptr %i.og, align 8, !tbaa !107
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i125

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i125:          ; preds = %bb.da, %bb.cz, %bb.cx, %bb.cw
  %.026.i126 = phi i64 [ 0, %bb.cw ], [ 0, %bb.cx ], [ %i.nz, %bb.cz ], [ 1, %bb.da ] ; 4 uses
  %i.oi = load i32, ptr %i.nu, align 8, !tbaa !52
  %i.oj = zext i32 %i.oi to i64                   ; 2 uses
  %.not.i.i.i127 = icmp samesign eq i64 %.026.i126, %i.oj
  br i1 %.not.i.i.i127, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i130, label %bb.db

bb.db:                                            ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i125
  %i.ok = load ptr, ptr %.0910.i.i.i.i.i.i37, align 8, !tbaa !34
  %.idx39.i128 = shl nuw nsw i64 %.026.i126, 3
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %.idx39.i128
  %i.om = load ptr, ptr %.0811.i.i.i.i.i.i36, align 8, !tbaa !34
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %.026.i126
  %i.oo = sub nsw i64 %i.oj, %.026.i126
  %gepdiff.i129 = shl nsw i64 %i.oo, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.on, ptr align 8 %i.ol, i64 %gepdiff.i129, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i130

_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i130: ; preds = %bb.db, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i125
  store i32 %i.nv, ptr %i.nx, align 8, !tbaa !52
  store i32 0, ptr %i.nu, align 8, !tbaa !52
  br label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit131

_ZN4llvm15SmallVectorImplImEaSEOS1_.exit131:      ; preds = %.lr.ph.i.i.i.i.i.i34, %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i118, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i120, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i130
  %i.op = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 64
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !161
  %i.or = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 64
  store i32 %i.oq, ptr %i.or, align 8, !tbaa !161
  %i.os = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 72
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !163
  %i.ou = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 72
  store i32 %i.ot, ptr %i.ou, align 8, !tbaa !163
  %i.ov = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 80
  %i.ow = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 80 ; 2 uses
  %i.ox = add nsw i64 %.012.i.i.i.i.i.i35, -1
  %i.oy = icmp samesign ugt i64 %.012.i.i.i.i.i.i35, 1
  br i1 %i.oy, label %.lr.ph.i.i.i.i.i.i34, label %_ZSt4moveIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit.i, !llvm.loop !8

_ZSt4moveIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit.i: ; preds = %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit131, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i32 = phi ptr [ %i.mz, %._crit_edge.i ], [ %i.ow, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit131 ]
  %i.oz = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i32 to i64 ; 3 uses
  %i.pa = ptrtoint ptr %i.mz to i64
  %i.pb = sub i64 %i.oz, %i.pa
  %i.pc = getelementptr inbounds i8, ptr %i.mz, i64 %i.pb ; 2 uses
  %i.pd = ptrtoint ptr %i.ih to i64               ; 2 uses
  %i.pe = ptrtoint ptr %.117.i to i64
  %i.pf = sub i64 %i.pd, %i.pe                    ; 2 uses
  %i.pg = icmp sgt i64 %i.pf, 0
  br i1 %i.pg, label %.lr.ph.preheader.i.i.i.i.i20.i, label %"_ZSt12__move_mergeIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEENSC_5__ops15_Iter_comp_iterIZNKS1_7doMergeES7_S9_bjE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit"

.lr.ph.preheader.i.i.i.i.i20.i:                   ; preds = %_ZSt4moveIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit.i
  %i.ph = udiv exact i64 %i.pf, 80
  br label %.lr.ph.i.i.i.i.i21.i

.lr.ph.i.i.i.i.i21.i:                             ; preds = %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit116, %.lr.ph.preheader.i.i.i.i.i20.i
  %.012.i.i.i.i.i22.i = phi i64 [ %i.qx, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit116 ], [ %i.ph, %.lr.ph.preheader.i.i.i.i.i20.i ] ; 2 uses
  %.0811.i.i.i.i.i23.i = phi ptr [ %i.qw, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit116 ], [ %i.pc, %.lr.ph.preheader.i.i.i.i.i20.i ] ; 15 uses
  %.0910.i.i.i.i.i24.i = phi ptr [ %i.qv, %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit116 ], [ %.117.i, %.lr.ph.preheader.i.i.i.i.i20.i ] ; 12 uses
  %i.pi = icmp eq ptr %.0811.i.i.i.i.i23.i, %.0910.i.i.i.i.i24.i
  br i1 %i.pi, label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit116, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i.i21.i
  %i.pj = load ptr, ptr %.0910.i.i.i.i.i24.i, align 8, !tbaa !34 ; 6 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 16 ; 2 uses
  %i.pl = icmp eq ptr %i.pj, %i.pk
  br i1 %i.pl, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.pm = load ptr, ptr %.0811.i.i.i.i.i23.i, align 8, !tbaa !34 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 16
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i103, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @free(ptr noundef %i.pm) #19
  %.pre.i102 = load ptr, ptr %.0910.i.i.i.i.i24.i, align 8, !tbaa !34
  br label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i103

_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i103: ; preds = %bb.de, %bb.dd
  %i.pp = phi ptr [ %i.pj, %bb.dd ], [ %.pre.i102, %bb.de ]
  %i.pq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 8
  store ptr %i.pp, ptr %.0811.i.i.i.i.i23.i, align 8, !tbaa !34
  %i.pr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 8 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 12
  %i.pt = load <2 x i32>, ptr %i.pr, align 8, !tbaa !97
  store <2 x i32> %i.pt, ptr %i.pq, align 8, !tbaa !97
  store ptr %i.pk, ptr %.0910.i.i.i.i.i24.i, align 8, !tbaa !34
  store i32 0, ptr %i.ps, align 4, !tbaa !53
  store i32 0, ptr %i.pr, align 8, !tbaa !52
  br label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit116

bb.df:                                            ; preds = %bb.dc
  %i.pu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 8 ; 4 uses
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !52 ; 6 uses
  %i.pw = zext i32 %i.pv to i64                   ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 8 ; 4 uses
  %i.py = load i32, ptr %i.px, align 8, !tbaa !52 ; 4 uses
  %i.pz = zext i32 %i.py to i64                   ; 2 uses
  %.not.i104 = icmp ult i32 %i.py, %i.pv
  br i1 %.not.i104, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.qa = load ptr, ptr %.0811.i.i.i.i.i23.i, align 8, !tbaa !34 ; 2 uses
  switch i32 %i.pv, label %bb.dh [
    i32 0, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i105
    i32 1, label %bb.di
  ], !prof !188

bb.dh:                                            ; preds = %bb.dg
  %.idx.i106 = shl nuw nsw i64 %i.pw, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.qa, ptr align 8 %i.pj, i64 %.idx.i106, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i105

bb.di:                                            ; preds = %bb.dg
  %i.qb = load i64, ptr %i.pj, align 8, !tbaa !107
  store i64 %i.qb, ptr %i.qa, align 8, !tbaa !107
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i105

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i105:            ; preds = %bb.di, %bb.dh, %bb.dg
  store i32 %i.pv, ptr %i.px, align 8, !tbaa !52
  store i32 0, ptr %i.pu, align 8, !tbaa !52
  br label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit116

bb.dj:                                            ; preds = %bb.df
  %i.qc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 12
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !53
  %i.qe = icmp ult i32 %i.qd, %i.pv
  br i1 %i.qe, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.px, align 8, !tbaa !52
  %i.qf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(76) %.0811.i.i.i.i.i23.i, ptr noundef nonnull %i.qf, i64 noundef %i.pw, i64 noundef 8) #19
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i110

bb.dl:                                            ; preds = %bb.dj
  %.not32.i107 = icmp eq i32 %i.py, 0
  br i1 %.not32.i107, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i110, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.qg = load ptr, ptr %.0811.i.i.i.i.i23.i, align 8, !tbaa !34 ; 2 uses
  %.not37.i108 = icmp eq i32 %i.py, 1
  br i1 %.not37.i108, label %bb.do, label %bb.dn, !prof !177

bb.dn:                                            ; preds = %bb.dm
  %.idx36.i109 = shl nuw nsw i64 %i.pz, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.qg, ptr align 8 %i.pj, i64 %.idx36.i109, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i110

bb.do:                                            ; preds = %bb.dm
  %i.qh = load i64, ptr %i.pj, align 8, !tbaa !107
  store i64 %i.qh, ptr %i.qg, align 8, !tbaa !107
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i110

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i110:          ; preds = %bb.do, %bb.dn, %bb.dl, %bb.dk
  %.026.i111 = phi i64 [ 0, %bb.dk ], [ 0, %bb.dl ], [ %i.pz, %bb.dn ], [ 1, %bb.do ] ; 4 uses
  %i.qi = load i32, ptr %i.pu, align 8, !tbaa !52
  %i.qj = zext i32 %i.qi to i64                   ; 2 uses
  %.not.i.i.i112 = icmp samesign eq i64 %.026.i111, %i.qj
  br i1 %.not.i.i.i112, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i115, label %bb.dp

bb.dp:                                            ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i110
  %i.qk = load ptr, ptr %.0910.i.i.i.i.i24.i, align 8, !tbaa !34
  %.idx39.i113 = shl nuw nsw i64 %.026.i111, 3
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.idx39.i113
  %i.qm = load ptr, ptr %.0811.i.i.i.i.i23.i, align 8, !tbaa !34
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %.026.i111
  %i.qo = sub nsw i64 %i.qj, %.026.i111
  %gepdiff.i114 = shl nsw i64 %i.qo, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qn, ptr align 8 %i.ql, i64 %gepdiff.i114, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i115

_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i115: ; preds = %bb.dp, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34.i110
  store i32 %i.pv, ptr %i.px, align 8, !tbaa !52
  store i32 0, ptr %i.pu, align 8, !tbaa !52
  br label %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit116

_ZN4llvm15SmallVectorImplImEaSEOS1_.exit116:      ; preds = %.lr.ph.i.i.i.i.i21.i, %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit.i103, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i105, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit.i115
  %i.qp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 64
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !161
  %i.qr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 64
  store i32 %i.qq, ptr %i.qr, align 8, !tbaa !161
  %i.qs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 72
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !163
  %i.qu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 72
  store i32 %i.qt, ptr %i.qu, align 8, !tbaa !163
  %i.qv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 80
  %i.qw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 80 ; 2 uses
  %i.qx = add nsw i64 %.012.i.i.i.i.i22.i, -1
  %i.qy = icmp samesign ugt i64 %.012.i.i.i.i.i22.i, 1
  br i1 %i.qy, label %.lr.ph.i.i.i.i.i21.i, label %_ZSt4moveIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit25.loopexit.i, !llvm.loop !8

_ZSt4moveIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit25.loopexit.i: ; preds = %_ZN4llvm15SmallVectorImplImEaSEOS1_.exit116
  %3 = ptrtoint ptr %i.qw to i64
  br label %"_ZSt12__move_mergeIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEENSC_5__ops15_Iter_comp_iterIZNKS1_7doMergeES7_S9_bjE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit"

"_ZSt12__move_mergeIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEENSC_5__ops15_Iter_comp_iterIZNKS1_7doMergeES7_S9_bjE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit": ; preds = %_ZSt4moveIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit.i, %_ZSt4moveIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit25.loopexit.i
  %.08.lcssa.i.i.i.i.i19.i = phi i64 [ %i.oz, %_ZSt4moveIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit.i ], [ %3, %_ZSt4moveIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEEET0_T_SJ_SI_.exit25.loopexit.i ]
  %i.qz = sub i64 %.08.lcssa.i.i.i.i.i19.i, %i.oz
  %i.ra = getelementptr inbounds i8, ptr %i.pc, i64 %i.qz ; 2 uses
  %i.rb = sub i64 %i.l, %i.pd
  %i.rc = sdiv exact i64 %i.rb, 80                ; 2 uses
  %.not.i24 = icmp slt i64 %i.rc, %i.if
  br i1 %.not.i24, label %"_ZSt17__merge_sort_loopIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEElNSC_5__ops15_Iter_comp_iterIZNKS1_7doMergeES7_S9_bjE3$_1EEEvT_SM_T0_T1_T2_.exit", label %.lr.ph.i23, !llvm.loop !606

"_ZSt17__merge_sort_loopIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEElNSC_5__ops15_Iter_comp_iterIZNKS1_7doMergeES7_S9_bjE3$_1EEEvT_SM_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEENSC_5__ops15_Iter_comp_iterIZNKS1_7doMergeES7_S9_bjE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS4_14GlobalVariableEEERNS4_6ModuleEbjE13UsedGlobalSetSt6vectorISC_SaISC_EEEESD_lNS0_5__ops15_Iter_comp_iterIZNKS3_7doMergeES9_SB_bjE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.0.lcssa.i25 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS4_14GlobalVariableEEERNS4_6ModuleEbjE13UsedGlobalSetSt6vectorISC_SaISC_EEEESD_lNS0_5__ops15_Iter_comp_iterIZNKS3_7doMergeES9_SB_bjE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.ih, %"_ZSt12__move_mergeIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEENSC_5__ops15_Iter_comp_iterIZNKS1_7doMergeES7_S9_bjE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit" ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS4_14GlobalVariableEEERNS4_6ModuleEbjE13UsedGlobalSetSt6vectorISC_SaISC_EEEESD_lNS0_5__ops15_Iter_comp_iterIZNKS3_7doMergeES9_SB_bjE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.ra, %"_ZSt12__move_mergeIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEENSC_5__ops15_Iter_comp_iterIZNKS1_7doMergeES7_S9_bjE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit" ]
  %.lcssa.i26 = phi i64 [ %i.m, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS4_14GlobalVariableEEERNS4_6ModuleEbjE13UsedGlobalSetSt6vectorISC_SaISC_EEEESD_lNS0_5__ops15_Iter_comp_iterIZNKS3_7doMergeES9_SB_bjE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.rc, %"_ZSt12__move_mergeIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEENSC_5__ops15_Iter_comp_iterIZNKS1_7doMergeES7_S9_bjE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit" ]
  %.sroa.speculated.i27 = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 230584300921369393) %i.n, i64 %.lcssa.i26)
  %i.rd = getelementptr inbounds [80 x i8], ptr %.0.lcssa.i25, i64 %.sroa.speculated.i27 ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEENSC_5__ops15_Iter_comp_iterIZNKS1_7doMergeES7_S9_bjE3$_1EEET0_T_SN_SN_SN_SM_T1_"(ptr noundef %.0.lcssa.i25, ptr noundef %i.rd, ptr noundef %i.rd, ptr noundef nonnull %i.e, ptr %.sroa.022.0.lcssa.i)
  %i.re = icmp slt i64 %i.if, %i.d
  br i1 %i.re, label %bb.b, label %._crit_edge, !llvm.loop !607

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEElNSC_5__ops15_Iter_comp_iterIZNKS1_7doMergeES7_S9_bjE3$_1EEEvT_SM_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS4_14GlobalVariableEEERNS4_6ModuleEbjE13UsedGlobalSetSt6vectorISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_7doMergeES9_SB_bjE3$_1EEEvT_SM_T0_T1_.exit.thread", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS4_14GlobalVariableEEERNS4_6ModuleEbjE13UsedGlobalSetSt6vectorISC_SaISC_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_7doMergeES9_SB_bjE3$_1EEEvT_SM_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS4_14GlobalVariableEEERNS4_6ModuleEbjE13UsedGlobalSetSt6vectorISC_SaISC_EEEElSD_NS0_5__ops15_Iter_comp_iterIZNKS3_7doMergeES9_SB_bjE3$_1EEEvT_SM_SM_T0_SN_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #3 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS2_14GlobalVariableEEERNS2_6ModuleEbjE13UsedGlobalSetN9__gnu_cxx17__normal_iteratorISB_St6vectorISA_SaISA_EEEESH_NSC_5__ops15_Iter_comp_iterIZNKS1_7doMergeES7_S9_bjE3$_1EEEvT_SM_T0_SN_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 80
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(76) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(76) %.0910.i.i.i.i.i) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !161
  %i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  store i32 %i.h, ptr %i.i, align 8, !tbaa !161
  %i.j = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !163
  %i.l = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72
  store i32 %i.k, ptr %i.l, align 8, !tbaa !163
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 80 ; 3 uses
  %i.o = add nsw i64 %.012.i.i.i.i.i, -1
  %i.p = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.027.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 9 uses
  %.sroa.0.026.i = phi ptr [ %i.cb, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.sroa.018.025.i = phi ptr [ %.sroa.018.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 8 uses
  %.not19.i = icmp eq ptr %.sroa.018.025.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %.sroa.018.025.i, align 8, !tbaa !34 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !52   ; 2 uses
  %i.t = zext i32 %i.s to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.t, 3         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i.i
  %.not10.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not10.i.i.i.i, label %_ZNK4llvm9BitVector5countEv.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.v = add nsw i64 %.idx.i.i.i.i, -8            ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check116 = icmp ult i64 %i.v, 24
  br i1 %min.iters.check116, label %.lr.ph.i.i.i.i.preheader187, label %vector.ph117

vector.ph117:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec118 = and i64 %i.x, 4611686018427387900   ; 3 uses
  %i.y = shl i64 %n.vec118, 3
  %i.z = getelementptr i8, ptr %i.q, i64 %i.y
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next126, %vector.body119 ] ; 2 uses
  %vec.phi121 = phi <2 x i32> [ zeroinitializer, %vector.ph117 ], [ %i.ag, %vector.body119 ]
  %vec.phi122 = phi <2 x i32> [ zeroinitializer, %vector.ph117 ], [ %i.ah, %vector.body119 ]
  %i.aa = shl i64 %index120, 3
  %next.gep123 = getelementptr i8, ptr %i.q, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep123, i64 16
  %wide.load124 = load <2 x i64>, ptr %next.gep123, align 8, !tbaa !107
  %wide.load125 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !107
  %i.ac = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load124)
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load125)
  %i.ae = trunc nuw nsw <2 x i64> %i.ac to <2 x i32>
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = add <2 x i32> %vec.phi121, %i.ae        ; 2 uses
  %i.ah = add <2 x i32> %vec.phi122, %i.af        ; 2 uses
  %index.next126 = add nuw i64 %index120, 4       ; 2 uses
  %i.ai = icmp eq i64 %index.next126, %n.vec118
  br i1 %i.ai, label %middle.block127, label %vector.body119, !llvm.loop !608

middle.block127:                                  ; preds = %vector.body119
  %bin.rdx128 = add <2 x i32> %i.ah, %i.ag
  %i.aj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx128) ; 2 uses
  %cmp.n129 = icmp eq i64 %i.x, %n.vec118
  br i1 %cmp.n129, label %_ZNK4llvm9BitVector5countEv.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader187

.lr.ph.i.i.i.i.preheader187:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block127
  %.012.i.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.aj, %middle.block127 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block127 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader187, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi i32 [ %i.an, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader187 ]
  %.0911.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader187 ] ; 2 uses
  %i.ak = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !107
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ak)
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = add i32 %.012.i.i.i.i, %i.am            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.u
  br i1 %.not.i.i.i.i, label %_ZNK4llvm9BitVector5countEv.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !609

_ZNK4llvm9BitVector5countEv.exit.i.i.i:           ; preds = %.lr.ph.i.i.i.i, %middle.block127, %bb.c
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %bb.c ], [ %i.aj, %middle.block127 ], [ %i.an, %.lr.ph.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i, i64 72 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !163
  %i.ar = load ptr, ptr %.027.i, align 8, !tbaa !34 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !52 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %.idx.i4.i.i.i = shl nuw nsw i64 %i.au, 3       ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i4.i.i.i
  %.not10.i5.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not10.i5.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS4_14GlobalVariableEEERNS4_6ModuleEbjE3$_1EclINS_17__normal_iteratorIPZNKS3_7doMergeES9_SB_bjE13UsedGlobalSetSt6vectorISG_SaISG_EEEESH_EEbT_T0_.exit.i", label %.lr.ph.i6.i.i.i.preheader

.lr.ph.i6.i.i.i.preheader:                        ; preds = %_ZNK4llvm9BitVector5countEv.exit.i.i.i
  %i.aw = add nsw i64 %.idx.i4.i.i.i, -8          ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 24
  br i1 %min.iters.check, label %.lr.ph.i6.i.i.i.preheader186, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i6.i.i.i.preheader
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 3 uses
  %i.az = shl i64 %n.vec, 3
  %i.ba = getelementptr i8, ptr %i.ar, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi113 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.bb = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !107
  %wide.load114 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !107
  %i.bd = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.be = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load114)
  %i.bf = trunc nuw nsw <2 x i64> %i.bd to <2 x i32>
  %i.bg = trunc nuw nsw <2 x i64> %i.be to <2 x i32>
  %i.bh = add <2 x i32> %vec.phi, %i.bf           ; 2 uses
  %i.bi = add <2 x i32> %vec.phi113, %i.bg        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !610

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS4_14GlobalVariableEEERNS4_6ModuleEbjE3$_1EclINS_17__normal_iteratorIPZNKS3_7doMergeES9_SB_bjE13UsedGlobalSetSt6vectorISG_SaISG_EEEESH_EEbT_T0_.exit.i", label %.lr.ph.i6.i.i.i.preheader186

.lr.ph.i6.i.i.i.preheader186:                     ; preds = %.lr.ph.i6.i.i.i.preheader, %middle.block
  %.012.i7.i.i.i.ph = phi i32 [ 0, %.lr.ph.i6.i.i.i.preheader ], [ %i.bk, %middle.block ]
  %.0911.i8.i.i.i.ph = phi ptr [ %i.ar, %.lr.ph.i6.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i6.i.i.i

.lr.ph.i6.i.i.i:                                  ; preds = %.lr.ph.i6.i.i.i.preheader186, %.lr.ph.i6.i.i.i
  %.012.i7.i.i.i = phi i32 [ %i.bo, %.lr.ph.i6.i.i.i ], [ %.012.i7.i.i.i.ph, %.lr.ph.i6.i.i.i.preheader186 ]
  %.0911.i8.i.i.i = phi ptr [ %i.bp, %.lr.ph.i6.i.i.i ], [ %.0911.i8.i.i.i.ph, %.lr.ph.i6.i.i.i.preheader186 ] ; 2 uses
  %i.bl = load i64, ptr %.0911.i8.i.i.i, align 8, !tbaa !107
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bl)
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = add i32 %.012.i7.i.i.i, %i.bn           ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i8.i.i.i, i64 8 ; 2 uses
  %.not.i9.i.i.i = icmp eq ptr %i.bp, %i.av
  br i1 %.not.i9.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS4_14GlobalVariableEEERNS4_6ModuleEbjE3$_1EclINS_17__normal_iteratorIPZNKS3_7doMergeES9_SB_bjE13UsedGlobalSetSt6vectorISG_SaISG_EEEESH_EEbT_T0_.exit.i", label %.lr.ph.i6.i.i.i, !llvm.loop !611

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK12_GLOBAL__N_115GlobalMergeImpl7doMergeERN4llvm15SmallVectorImplIPNS4_14GlobalVariableEEERNS4_6ModuleEbjE3$_1EclINS_17__normal_iteratorIPZNKS3_7doMergeES9_SB_bjE13UsedGlobalSetSt6vectorISG_SaISG_EEEESH_EEbT_T0_.exit.i": ; preds = %.lr.ph.i6.i.i.i, %middle.block, %_ZNK4llvm9BitVector5countEv.exit.i.i.i
  %.0.lcssa.i10.i.i.i = phi i32 [ 0, %_ZNK4llvm9BitVector5countEv.exit.i.i.i ], [ %i.bk, %middle.block ], [ %i.bo, %.lr.ph.i6.i.i.i ]
  %i.bq = mul i32 %i.aq, %.0.lcssa.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.027.i, i64 72 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !163
  %i.bt = mul i32 %i.bs, %.0.lcssa.i10.i.i.i
end_hunk_0
