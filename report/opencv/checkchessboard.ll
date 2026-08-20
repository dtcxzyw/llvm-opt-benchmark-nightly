inline.NumInlined: 479
inline.NumDeleted: 212
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cvL10checkQuadsERSt6vectorISt4pairIfiESaIS2_EERKNS_5Size_IiEE:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 4
  store i32 %i.bh, ptr %i.bq, align 4, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i
  %.sroa.010.023.i.add.i = add nuw nsw i64 %.sroa.010.023.i.idx.i, 8 ; 2 uses
  %.not.i.i46 = icmp eq i64 %.sroa.010.023.i.add.i, 128
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i46, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_.exit.i, label %bb.c, !llvm.loop !77

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_.exit.i: ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.br, %i.i
  br i1 %.not7.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i
  %.sroa.0.08.i.i = phi ptr [ %i.cd, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i ], [ %i.br, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_.exit.i ] ; 6 uses
  %i.bs = load float, ptr %.sroa.0.08.i.i, align 4 ; 3 uses
  %.sroa.0.08.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 4
  %i.bt = load i32, ptr %.sroa.0.08.i.i.sroa_idx, align 4
  %.sroa.0.07.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i, i64 -8 ; 2 uses
  %i.bu = load float, ptr %.sroa.0.07.i.i.i, align 4, !tbaa !67 ; 2 uses
  %i.bv = fcmp olt float %i.bs, %i.bu
  br i1 %i.bv, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i10.i, %.lr.ph.i.i14.i
  %i.bw = phi float [ %i.ca, %.lr.ph.i.i14.i ], [ %i.bu, %.lr.ph.i10.i ]
  %.sroa.0.09.i.i15.i = phi ptr [ %.sroa.0.0.i.i17.i, %.lr.ph.i.i14.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i10.i ] ; 3 uses
  %.sroa.04.08.i.i16.i = phi ptr [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ], [ %.sroa.0.08.i.i, %.lr.ph.i10.i ] ; 3 uses
  store float %i.bw, ptr %.sroa.04.08.i.i16.i, align 4, !tbaa !67
  %i.bx = getelementptr inbounds i8, ptr %.sroa.04.08.i.i16.i, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !71
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i16.i, i64 4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !72
  %.sroa.0.0.i.i17.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i15.i, i64 -8 ; 2 uses
  %i.ca = load float, ptr %.sroa.0.0.i.i17.i, align 4, !tbaa !67 ; 2 uses
  %i.cb = fcmp olt float %i.bs, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i, !llvm.loop !76

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i10.i
  %.sroa.04.0.lcssa.i.i12.i = phi ptr [ %.sroa.0.08.i.i, %.lr.ph.i10.i ], [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ] ; 2 uses
  store float %i.bs, ptr %.sroa.04.0.lcssa.i.i12.i, align 4, !tbaa !67
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i12.i, i64 4
  store i32 %i.bt, ptr %i.cc, align 4, !tbaa !72
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 8 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.cd, %i.i
  br i1 %.not.i13.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, label %.lr.ph.i10.i, !llvm.loop !78

.preheader.i18.i:                                 ; preds = %bb.b
  %.sroa.010.020.i19.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.not21.i20.i = icmp eq ptr %.sroa.010.020.i19.i, %i.i
  br i1 %.not21.i20.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.preheader.i18.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i21.i
  %.sroa.010.023.i22.i = phi ptr [ %.sroa.010.020.i19.i, %.lr.ph.i21.i ], [ %.sroa.010.0.i26.i, %bb.i ] ; 9 uses
  %.pn22.i23.i = phi ptr [ %i.g, %.lr.ph.i21.i ], [ %.sroa.010.023.i22.i, %bb.i ] ; 4 uses
  %i.cf = load float, ptr %.sroa.010.023.i22.i, align 4, !tbaa !67 ; 5 uses
  %i.cg = load float, ptr %i.g, align 4, !tbaa !67
  %i.ch = fcmp olt float %i.cf, %i.cg
  br i1 %i.ch, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa_idx.i32.i = getelementptr inbounds nuw i8, ptr %.pn22.i23.i, i64 12
  %i.ci = load i32, ptr %.sroa_idx.i32.i, align 4
  %i.cj = ptrtoint ptr %.sroa.010.023.i22.i to i64
  %i.ck = sub i64 %i.cj, %i.k
  %i.cl = ashr exact i64 %i.ck, 3                 ; 5 uses
  %i.cm = icmp sgt i64 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.preheader.i34.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i33.i

.lr.ph.i.i.i.i.i.preheader.i34.i:                 ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %.pn22.i23.i, i64 16 ; 2 uses
  %xtraiter = and i64 %i.cl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i35.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i35.i.prol

.lr.ph.i.i.i.i.i.i35.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i34.i, %.lr.ph.i.i.i.i.i.i35.i.prol
  %.010.i.i.i.i.i.i36.i.prol = phi i64 [ %i.cu, %.lr.ph.i.i.i.i.i.i35.i.prol ], [ %i.cl, %.lr.ph.i.i.i.i.i.preheader.i34.i ]
  %.069.i.i.i.i.i.i37.i.prol = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i35.i.prol ], [ %i.cn, %.lr.ph.i.i.i.i.i.preheader.i34.i ] ; 2 uses
  %.078.i.i.i.i.i.i38.i.prol = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i35.i.prol ], [ %.sroa.010.023.i22.i, %.lr.ph.i.i.i.i.i.preheader.i34.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i35.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i34.i ]
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38.i.prol, i64 -8 ; 3 uses
  %i.cp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37.i.prol, i64 -8 ; 3 uses
  %i.cq = load float, ptr %i.co, align 4, !tbaa !70
  store float %i.cq, ptr %i.cp, align 4, !tbaa !67
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38.i.prol, i64 -4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !71
  %i.ct = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37.i.prol, i64 -4
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !72
  %i.cu = add nsw i64 %.010.i.i.i.i.i.i36.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i35.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i35.i.prol, !llvm.loop !79

.lr.ph.i.i.i.i.i.i35.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i35.i.prol, %.lr.ph.i.i.i.i.i.preheader.i34.i
  %.010.i.i.i.i.i.i36.i.unr = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i.preheader.i34.i ], [ %i.cu, %.lr.ph.i.i.i.i.i.i35.i.prol ]
  %.069.i.i.i.i.i.i37.i.unr = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.preheader.i34.i ], [ %i.cp, %.lr.ph.i.i.i.i.i.i35.i.prol ]
  %.078.i.i.i.i.i.i38.i.unr = phi ptr [ %.sroa.010.023.i22.i, %.lr.ph.i.i.i.i.i.preheader.i34.i ], [ %i.co, %.lr.ph.i.i.i.i.i.i35.i.prol ]
  %i.cv = icmp ult i64 %i.cl, 4
  br i1 %i.cv, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i33.i, label %.lr.ph.i.i.i.i.i.i35.i

.lr.ph.i.i.i.i.i.i35.i:                           ; preds = %.lr.ph.i.i.i.i.i.i35.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i35.i
  %.010.i.i.i.i.i.i36.i = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i.i35.i ], [ %.010.i.i.i.i.i.i36.i.unr, %.lr.ph.i.i.i.i.i.i35.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i37.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i35.i ], [ %.069.i.i.i.i.i.i37.i.unr, %.lr.ph.i.i.i.i.i.i35.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i38.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i35.i ], [ %.078.i.i.i.i.i.i38.i.unr, %.lr.ph.i.i.i.i.i.i35.i.prol.loopexit ] ; 8 uses
  %i.cw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38.i, i64 -8
  %i.cx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37.i, i64 -8
  %i.cy = load float, ptr %i.cw, align 4, !tbaa !70
  store float %i.cy, ptr %i.cx, align 4, !tbaa !67
  %i.cz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38.i, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !71
  %i.db = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37.i, i64 -4
  store i32 %i.da, ptr %i.db, align 4, !tbaa !72
  %i.dc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38.i, i64 -16
  %i.dd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37.i, i64 -16
  %i.de = load float, ptr %i.dc, align 4, !tbaa !70
  store float %i.de, ptr %i.dd, align 4, !tbaa !67
  %i.df = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38.i, i64 -12
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !71
  %i.dh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37.i, i64 -12
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !72
  %i.di = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38.i, i64 -24
  %i.dj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37.i, i64 -24
  %i.dk = load float, ptr %i.di, align 4, !tbaa !70
  store float %i.dk, ptr %i.dj, align 4, !tbaa !67
  %i.dl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38.i, i64 -20
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !71
  %i.dn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37.i, i64 -20
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !72
  %i.do = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38.i, i64 -32 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37.i, i64 -32 ; 2 uses
  %i.dq = load float, ptr %i.do, align 4, !tbaa !70
  store float %i.dq, ptr %i.dp, align 4, !tbaa !67
  %i.dr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38.i, i64 -28
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !71
  %i.dt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37.i, i64 -28
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !72
  %i.du = add nsw i64 %.010.i.i.i.i.i.i36.i, -4
  %i.dv = icmp sgt i64 %.010.i.i.i.i.i.i36.i, 4
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i.i35.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i33.i, !llvm.loop !75

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i33.i: ; preds = %.lr.ph.i.i.i.i.i.i35.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i35.i, %bb.g
  store float %i.cf, ptr %i.g, align 4, !tbaa !67
  store i32 %i.ci, ptr %i.ce, align 4, !tbaa !72
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %.sroa.010.023.i22.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i22.i, i64 4
  %i.dw = load i32, ptr %.sroa.010.023.i22.i.sroa_idx, align 4
  %i.dx = load float, ptr %.pn22.i23.i, align 4, !tbaa !67 ; 2 uses
  %i.dy = fcmp olt float %i.cf, %i.dx
  br i1 %i.dy, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i

.lr.ph.i.i28.i:                                   ; preds = %bb.h, %.lr.ph.i.i28.i
  %i.dz = phi float [ %i.ed, %.lr.ph.i.i28.i ], [ %i.dx, %bb.h ]
  %.sroa.0.09.i.i29.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i28.i ], [ %.pn22.i23.i, %bb.h ] ; 3 uses
  %.sroa.04.08.i.i30.i = phi ptr [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ], [ %.sroa.010.023.i22.i, %bb.h ] ; 3 uses
  store float %i.dz, ptr %.sroa.04.08.i.i30.i, align 4, !tbaa !67
  %i.ea = getelementptr inbounds i8, ptr %.sroa.04.08.i.i30.i, i64 -4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !71
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i30.i, i64 4
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !72
  %.sroa.0.0.i.i31.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i29.i, i64 -8 ; 2 uses
  %i.ed = load float, ptr %.sroa.0.0.i.i31.i, align 4, !tbaa !67 ; 2 uses
  %i.ee = fcmp olt float %i.cf, %i.ed
  br i1 %i.ee, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i, !llvm.loop !76

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i: ; preds = %.lr.ph.i.i28.i, %bb.h
  %.sroa.04.0.lcssa.i.i25.i = phi ptr [ %.sroa.010.023.i22.i, %bb.h ], [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ] ; 2 uses
  store float %i.cf, ptr %.sroa.04.0.lcssa.i.i25.i, align 4, !tbaa !67
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i25.i, i64 4
  store i32 %i.dw, ptr %i.ef, align 4, !tbaa !72
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i33.i
  %.sroa.010.0.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i22.i, i64 8 ; 2 uses
  %.not.i27.i = icmp eq ptr %.sroa.010.0.i26.i, %i.i
  br i1 %.not.i27.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, label %bb.f, !llvm.loop !77

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i, %.preheader.i18.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_.exit.i, %bb.a
  %i.eg = load ptr, ptr %i.h, align 8, !tbaa !80  ; 3 uses
  %i.eh = load ptr, ptr %0, align 8, !tbaa !43    ; 3 uses
  %.not74.not = icmp eq ptr %i.eg, %i.eh
  br i1 %.not74.not, label %.critedge, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 3
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.thread
  %i.em = phi ptr [ %i.hm, %.thread ], [ %i.eh, %.lr.ph77.preheader ] ; 8 uses
  %i.en = phi ptr [ %i.hn, %.thread ], [ %i.eg, %.lr.ph77.preheader ]
  %i.eo = phi i64 [ %i.hr, %.thread ], [ %i.el, %.lr.ph77.preheader ] ; 3 uses
  %.03775 = phi i64 [ %i.ep, %.thread ], [ 0, %.lr.ph77.preheader ] ; 8 uses
  %i.ep = add nuw i64 %.03775, 1                  ; 5 uses
  %i.eq = icmp ult i64 %i.ep, %i.eo
  br i1 %i.eq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph77
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.03775
  %i.es = load float, ptr %i.er, align 4, !tbaa !67
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.k
  %.03471 = phi i64 [ %i.ep, %.lr.ph ], [ %i.ex, %bb.k ] ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.03471
  %i.eu = load float, ptr %i.et, align 4, !tbaa !67
  %i.ev = fdiv float %i.eu, %i.es
  %i.ew = fcmp ogt float %i.ev, 1.400000e+00
  br i1 %i.ew, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ex = add i64 %.03471, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ex, %i.eo
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.k, %bb.j, %.lr.ph77
  %.034.lcssa = phi i64 [ %i.ep, %.lr.ph77 ], [ %.03471, %bb.j ], [ %i.eo, %bb.k ] ; 5 uses
  %i.ey = add i64 %.034.lcssa, 1
  %i.ez = add i64 %.03775, %i.f
  %i.fa = icmp ugt i64 %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i, label %.thread

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i:        ; preds = %._crit_edge
  %i.fb = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20 ; 10 uses
  store i64 0, ptr %i.fb, align 4
  %.not10.i = icmp eq i64 %.03775, %.034.lcssa
  br i1 %.not10.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i
  %2 = sub i64 %.034.lcssa, %.03775
  %xtraiter107 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod108.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.011.i.prol = phi i64 [ %i.fj, %.lr.ph.i.prol ], [ %.03775, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter109 = phi i64 [ %prol.iter109.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.011.i.prol
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !72
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !71
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !71
  %i.fj = add i64 %.011.i.prol, 1                 ; 2 uses
  %prol.iter109.next = add i64 %prol.iter109, 1   ; 2 uses
  %prol.iter109.cmp.not = icmp eq i64 %prol.iter109.next, %xtraiter107
  br i1 %prol.iter109.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !82

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.011.i.unr = phi i64 [ %.03775, %.lr.ph.i.preheader ], [ %i.fj, %.lr.ph.i.prol ]
  %i.fk = sub i64 %.03775, %.034.lcssa
  %i.fl = icmp ugt i64 %i.fk, -4
  br i1 %i.fl, label %.loopexit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.011.i = phi i64 [ %i.go, %.lr.ph.i ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.011.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !72
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fp ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !71
  %i.fs = add nsw i32 %i.fr, 1
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !71
  %i.ft = getelementptr [8 x i8], ptr %i.em, i64 %.011.i
  %i.fu = getelementptr i8, ptr %i.ft, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !72
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !71
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !71
  %i.ga = getelementptr [8 x i8], ptr %i.em, i64 %.011.i
  %i.gb = getelementptr i8, ptr %i.ga, i64 20
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !72
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.gd ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !71
  %i.gg = add nsw i32 %i.gf, 1
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !71
  %i.gh = getelementptr [8 x i8], ptr %i.em, i64 %.011.i
  %i.gi = getelementptr i8, ptr %i.gh, i64 28
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !72
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.gk ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !71
  %i.gn = add nsw i32 %i.gm, 1
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !71
  %i.go = add i64 %.011.i, 4                      ; 2 uses
  %.not.i.3 = icmp eq i64 %i.go, %.034.lcssa
  br i1 %.not.i.3, label %.loopexit.loopexit, label %.lr.ph.i, !llvm.loop !83

.loopexit.loopexit:                               ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load i32, ptr %i.fb, align 4, !tbaa !71
  %3 = sitofp i32 %.pre to double
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i
  %4 = phi double [ %3, %.loopexit.loopexit ], [ 0.000000e+00, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i ]
  %i.gp = load <2 x i32>, ptr %1, align 4, !tbaa !71
  %i.gq = sitofp <2 x i32> %i.gp to <2 x double>
  %i.gr = fmul nnan <2 x double> %i.gq, splat (double 5.000000e-01) ; 3 uses
  %i.gs = extractelement <2 x double> %i.gr, i64 0
  %i.gt = tail call nnan ninf double @llvm.ceil.f64(double %i.gs)
  %i.gu = extractelement <2 x double> %i.gr, i64 1
  %i.gv = tail call nnan ninf double @llvm.ceil.f64(double %i.gu)
  %i.gw = fmul nnan double %i.gt, %i.gv
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gy = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gx)
  %i.gz = sitofp i32 %i.gy to double
  %i.ha = fmul nnan double %i.gz, 7.500000e-01
  %i.hb = fcmp ogt double %i.ha, %4
  br i1 %i.hb, label %.thread66, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.hc = tail call nnan ninf <2 x double> @llvm.floor.v2f64(<2 x double> %i.gr) ; 2 uses
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.he = fmul nnan <2 x double> %i.hc, %i.hd
  %i.hf = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.he)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !71
  %i.hi = sitofp i32 %i.hh to double
  %i.hj = sitofp i32 %i.hf to double
  %i.hk = fmul nnan double %i.hj, 7.500000e-01
  %i.hl = fcmp ogt double %i.hk, %i.hi
  br i1 %i.hl, label %.thread66, label %bb.m

.thread66:                                        ; preds = %bb.l, %.loopexit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef 8) #19
  %.pre80.a = load ptr, ptr %i.h, align 8, !tbaa !80
  %.pre81 = load ptr, ptr %0, align 8, !tbaa !43
  br label %.thread

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef 8) #19
  br label %.critedge

.thread:                                          ; preds = %._crit_edge, %.thread66
  %i.hm = phi ptr [ %i.em, %._crit_edge ], [ %.pre81, %.thread66 ] ; 2 uses
  %i.hn = phi ptr [ %i.en, %._crit_edge ], [ %.pre80.a, %.thread66 ] ; 2 uses
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = ashr exact i64 %i.hq, 3                 ; 2 uses
  %.not = icmp ult i64 %i.ep, %i.hr
  br i1 %.not, label %.lr.ph77, label %.critedge, !llvm.loop !84

.critedge:                                        ; preds = %.thread, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, %bb.m
  %.not70 = phi i1 [ true, %bb.m ], [ false, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit ], [ false, %.thread ]
  ret i1 %.not70
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2cv21checkChessboardBinaryERKNS_3MatERKNS_5Size_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %15 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %16 = alloca %"class.std::vector", align 8      ; 15 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !15
  %i.b = and i32 %i.a, 4095
  %or.cond42 = icmp eq i32 %i.b, 0
  br i1 %or.cond42, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv21checkChessboardBinaryERKNS_3MatERKNS_5Size_IiEE, ptr noundef nonnull @.str.1, i32 noundef 186) #18
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !27
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.y

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(208) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN2cvL9fillQuadsERNS_3MatES1_ddRSt6vectorISt4pairIfiESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5, double noundef 1.280000e+02, double noundef 1.280000e+02, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.i unwind label %.loopexit.split-lp54

bb.i:                                             ; preds = %bb.h
  %i.ac = invoke fastcc noundef zeroext i1 @_ZN2cvL10checkQuadsERSt6vectorISt4pairIfiESaIS2_EERKNS_5Size_IiEE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %bb.j unwind label %.loopexit.split-lp54

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %16, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i.peel = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.peel, label %_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit.peel, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #19
  br label %_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit.peel

_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit.peel:   ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br i1 %i.ac, label %bb.v, label %.peel.next

bb.l:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.peel.next:                                       ; preds = %_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit.peel, %_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit
  %.046 = phi i32 [ %i.ap, %_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit ], [ 1, %_ZNSt6vectorISt4pairIfiESaIS1_EED2Ev.exit.peel ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i32 0, ptr %i.j, align 8, !tbaa !28
  store i32 0, ptr %i.k, align 4, !tbaa !29
  store i32 16842752, ptr %6, align 8, !tbaa !30
  store ptr %4, ptr %i.l, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store i64 0, ptr %i.n, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !30
  store ptr %4, ptr %i.m, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #17
  store i32 0, ptr %i.o, align 8, !tbaa !28
  store i32 0, ptr %i.p, align 4, !tbaa !29
  store i32 16842752, ptr %8, align 8, !tbaa !30
  store ptr %9, ptr %i.q, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %10, align 16, !tbaa !31, !alias.scope !85
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %i.r, align 16, !tbaa !31, !alias.scope !85
  invoke void @_ZN2cv5erodeERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_6Point_IiEEiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 -1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.peel.next
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store i32 0, ptr %i.s, align 8, !tbaa !28
  store i32 0, ptr %i.t, align 4, !tbaa !29
  store i32 16842752, ptr %11, align 8, !tbaa !30
  store ptr %5, ptr %i.u, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store i64 0, ptr %i.w, align 8
end_hunk_0
