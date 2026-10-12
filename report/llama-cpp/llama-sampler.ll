Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-sampler?download=true
inline.NumInlined: 6714
inline.NumDeleted: 2633
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZL41llama_sampler_penalties_backend_set_inputP13llama_sampler:bb.a
  %.sroa.0.010.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn19.i.i.i.i, %bb.l ] ; 3 uses
  %.sroa.04.09.i.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i, %bb.l ] ; 3 uses
  store i32 %.val2.i11.i.i.i.i.i, ptr %.sroa.04.09.i.i.i.i.i, align 4, !tbaa !627
  %i.cp = getelementptr inbounds i8, ptr %.sroa.04.09.i.i.i.i.i, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !84
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i.i, i64 4
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !628
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i, i64 -8 ; 2 uses
  %.val2.i.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.cs = icmp sgt i32 %.val2.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i.i
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !1243

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.l
  %.sroa.04.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %bb.l ], [ %.sroa.0.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  store i64 %i.bc, ptr %.sroa.04.0.lcssa.i.i.i.i.i, align 4
  %.val1.i.pre.i.i.i.i = load i32, ptr %.sroa.082.3, align 4, !tbaa !627
  br label %bb.m

bb.m:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i
  %.val1.i24.i.i.i.i = phi i32 [ %i.cn, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i ], [ %.val1.i.pre.i.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i.i.i.i" ]
  %.sroa.08.020.i.add.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i67 = icmp eq i64 %.sroa.08.020.i.add.i.i.i, 128
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i67, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_.exit.i.i.i", label %bb.k, !llvm.loop !1244

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_.exit.i.i.i": ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.082.3, i64 128 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ct, %.sroa.13.2
  br i1 %.not6.i.i.i.i, label %.lr.ph143, label %.lr.ph.i12.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i15.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.da, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i15.i.i.i" ], [ %i.ct, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_.exit.i.i.i" ] ; 6 uses
  %i.cu = load i64, ptr %.sroa.0.07.i.i.i.i, align 4 ; 2 uses
  %.sroa.03.0.extract.trunc.i.i13.i.i.i = trunc i64 %i.cu to i32 ; 2 uses
  %.sroa.0.07.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -8 ; 2 uses
  %.val2.i8.i.i14.i.i.i = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.cv = icmp sgt i32 %.val2.i8.i.i14.i.i.i, %.sroa.03.0.extract.trunc.i.i13.i.i.i
  br i1 %i.cv, label %.lr.ph.i.i18.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i15.i.i.i"

.lr.ph.i.i18.i.i.i:                               ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i.i18.i.i.i
  %.val2.i11.i.i19.i.i.i = phi i32 [ %.val2.i.i.i23.i.i.i, %.lr.ph.i.i18.i.i.i ], [ %.val2.i8.i.i14.i.i.i, %.lr.ph.i12.i.i.i ]
  %.sroa.0.010.i.i20.i.i.i = phi ptr [ %.sroa.0.0.i.i22.i.i.i, %.lr.ph.i.i18.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 3 uses
  %.sroa.04.09.i.i21.i.i.i = phi ptr [ %.sroa.0.010.i.i20.i.i.i, %.lr.ph.i.i18.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 3 uses
  store i32 %.val2.i11.i.i19.i.i.i, ptr %.sroa.04.09.i.i21.i.i.i, align 4, !tbaa !627
  %i.cw = getelementptr inbounds i8, ptr %.sroa.04.09.i.i21.i.i.i, i64 -4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !84
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i21.i.i.i, i64 4
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !628
  %.sroa.0.0.i.i22.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i20.i.i.i, i64 -8 ; 2 uses
  %.val2.i.i.i23.i.i.i = load i32, ptr %.sroa.0.0.i.i22.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.cz = icmp sgt i32 %.val2.i.i.i23.i.i.i, %.sroa.03.0.extract.trunc.i.i13.i.i.i
  br i1 %i.cz, label %.lr.ph.i.i18.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i15.i.i.i", !llvm.loop !1243

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i15.i.i.i": ; preds = %.lr.ph.i.i18.i.i.i, %.lr.ph.i12.i.i.i
  %.sroa.04.0.lcssa.i.i16.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ], [ %.sroa.0.010.i.i20.i.i.i, %.lr.ph.i.i18.i.i.i ]
  store i64 %i.cu, ptr %.sroa.04.0.lcssa.i.i16.i.i.i, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.07.i.i.i.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i17.i.i.i, label %.lr.ph143, label %.lr.ph.i12.i.i.i, !llvm.loop !1245

.preheader.i24.i.i.i:                             ; preds = %bb.j
  %.not18.i26.i.i.i = icmp eq ptr %.sroa.082.3, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not18.i26.i.i.i, label %.lr.ph143, label %.lr.ph.i27.i.i.i

.lr.ph.i27.i.i.i:                                 ; preds = %.preheader.i24.i.i.i
  %.val1.i.pre22.i28.i.i.i = load i32, ptr %.sroa.082.3, align 4, !tbaa !627
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph.i27.i.i.i
  %.val1.i.i29.i.i.i = phi i32 [ %.val1.i.pre22.i28.i.i.i, %.lr.ph.i27.i.i.i ], [ %.val1.i24.i38.i.i.i, %bb.q ]
  %.pn19.i31.i.i.i = phi ptr [ %.sroa.082.3, %.lr.ph.i27.i.i.i ], [ %.sroa.08.020.i30.i.i.i, %bb.q ] ; 4 uses
  %.sroa.08.020.i30.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i31.i.i.i, i64 8 ; 9 uses
  %.val.i.i32.i.i.i = load i32, ptr %.sroa.08.020.i30.i.i.i, align 4, !tbaa !627
  %i.db = icmp slt i32 %.val.i.i32.i.i.i, %.val1.i.i29.i.i.i
  %i.dc = load i64, ptr %.sroa.08.020.i30.i.i.i, align 4 ; 4 uses
  br i1 %i.db, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = ptrtoint ptr %.sroa.08.020.i30.i.i.i to i64
  %i.de = sub i64 %i.dd, %i.au
  %i.df = ashr exact i64 %i.de, 3                 ; 5 uses
  %i.dg = icmp sgt i64 %i.df, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i

.lr.ph.i.i.i.i.i.preheader.i48.i.i.i:             ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn19.i31.i.i.i, i64 16 ; 2 uses
  %xtraiter = and i64 %i.df, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i49.i.i.i.prol

.lr.ph.i.i.i.i.i.i49.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol
  %.010.i.i.i.i.i.i50.i.i.i.prol = phi i64 [ %i.do, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ], [ %i.df, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ]
  %.069.i.i.i.i.i.i51.i.i.i.prol = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ], [ %i.dh, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i52.i.i.i.prol = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ], [ %.sroa.08.020.i30.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ]
  %i.di = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i.prol, i64 -8 ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i.prol, i64 -8 ; 3 uses
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !84
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !627
  %i.dl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i.prol, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !84
  %i.dn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i.prol, i64 -4
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !628
  %i.do = add nsw i64 %.010.i.i.i.i.i.i50.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i49.i.i.i.prol, !llvm.loop !1246

.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i
  %.010.i.i.i.i.i.i50.i.i.i.unr = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ], [ %i.do, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ]
  %.069.i.i.i.i.i.i51.i.i.i.unr = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ]
  %.078.i.i.i.i.i.i52.i.i.i.unr = phi ptr [ %.sroa.08.020.i30.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ], [ %i.di, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ]
  %i.dp = icmp ult i64 %i.df, 4
  br i1 %i.dp, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i, label %.lr.ph.i.i.i.i.i.i49.i.i.i

.lr.ph.i.i.i.i.i.i49.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i49.i.i.i
  %.010.i.i.i.i.i.i50.i.i.i = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.i49.i.i.i ], [ %.010.i.i.i.i.i.i50.i.i.i.unr, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i51.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i49.i.i.i ], [ %.069.i.i.i.i.i.i51.i.i.i.unr, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i52.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i49.i.i.i ], [ %.078.i.i.i.i.i.i52.i.i.i.unr, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit ] ; 8 uses
  %i.dq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -8
  %i.dr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -8
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !84
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !627
  %i.dt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !84
  %i.dv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -4
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !628
  %i.dw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -16
  %i.dx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -16
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !84
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !627
  %i.dz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !84
  %i.eb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -12
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !628
  %i.ec = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -24
  %i.ed = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -24
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !84
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !627
  %i.ef = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -20
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !84
  %i.eh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -20
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !628
  %i.ei = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -32 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -32 ; 2 uses
  %i.ek = load i32, ptr %i.ei, align 4, !tbaa !84
  store i32 %i.ek, ptr %i.ej, align 4, !tbaa !627
  %i.el = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !84
  %i.en = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -28
  store i32 %i.em, ptr %i.en, align 4, !tbaa !628
  %i.eo = add nsw i64 %.010.i.i.i.i.i.i50.i.i.i, -4
  %i.ep = icmp sgt i64 %.010.i.i.i.i.i.i50.i.i.i, 4
  br i1 %i.ep, label %.lr.ph.i.i.i.i.i.i49.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i, !llvm.loop !1242

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i49.i.i.i, %bb.o
  store i64 %i.dc, ptr %.sroa.082.3, align 4
  %i.eq = trunc i64 %i.dc to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %.sroa.03.0.extract.trunc.i.i33.i.i.i = trunc i64 %i.dc to i32 ; 2 uses
  %.val2.i8.i.i34.i.i.i = load i32, ptr %.pn19.i31.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.er = icmp sgt i32 %.val2.i8.i.i34.i.i.i, %.sroa.03.0.extract.trunc.i.i33.i.i.i
  br i1 %i.er, label %.lr.ph.i.i41.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i35.i.i.i"

.lr.ph.i.i41.i.i.i:                               ; preds = %bb.p, %.lr.ph.i.i41.i.i.i
  %.val2.i11.i.i42.i.i.i = phi i32 [ %.val2.i.i.i46.i.i.i, %.lr.ph.i.i41.i.i.i ], [ %.val2.i8.i.i34.i.i.i, %bb.p ]
  %.sroa.0.010.i.i43.i.i.i = phi ptr [ %.sroa.0.0.i.i45.i.i.i, %.lr.ph.i.i41.i.i.i ], [ %.pn19.i31.i.i.i, %bb.p ] ; 3 uses
  %.sroa.04.09.i.i44.i.i.i = phi ptr [ %.sroa.0.010.i.i43.i.i.i, %.lr.ph.i.i41.i.i.i ], [ %.sroa.08.020.i30.i.i.i, %bb.p ] ; 3 uses
  store i32 %.val2.i11.i.i42.i.i.i, ptr %.sroa.04.09.i.i44.i.i.i, align 4, !tbaa !627
  %i.es = getelementptr inbounds i8, ptr %.sroa.04.09.i.i44.i.i.i, i64 -4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !84
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i44.i.i.i, i64 4
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !628
  %.sroa.0.0.i.i45.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i43.i.i.i, i64 -8 ; 2 uses
  %.val2.i.i.i46.i.i.i = load i32, ptr %.sroa.0.0.i.i45.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.ev = icmp sgt i32 %.val2.i.i.i46.i.i.i, %.sroa.03.0.extract.trunc.i.i33.i.i.i
  br i1 %i.ev, label %.lr.ph.i.i41.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i35.i.i.i", !llvm.loop !1243

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i35.i.i.i": ; preds = %.lr.ph.i.i41.i.i.i, %bb.p
  %.sroa.04.0.lcssa.i.i36.i.i.i = phi ptr [ %.sroa.08.020.i30.i.i.i, %bb.p ], [ %.sroa.0.010.i.i43.i.i.i, %.lr.ph.i.i41.i.i.i ]
  store i64 %i.dc, ptr %.sroa.04.0.lcssa.i.i36.i.i.i, align 4
  %.val1.i.pre.i37.i.i.i = load i32, ptr %.sroa.082.3, align 4, !tbaa !627
  br label %bb.q

bb.q:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i35.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i
  %.val1.i24.i38.i.i.i = phi i32 [ %i.eq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i47.i.i.i ], [ %.val1.i.pre.i37.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i35.i.i.i" ]
  %.not.i40.i.i.i = icmp eq ptr %.sroa.08.020.i30.i.i.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i40.i.i.i, label %.lr.ph143, label %bb.n, !llvm.loop !1244

.lr.ph143:                                        ; preds = %bb.q, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i15.i.i.i", %.preheader.i24.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_.exit.i.i.i", %._crit_edge138
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !199 ; 7 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !199 ; 7 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv, 27
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph143
  %i.fa = shl i64 %indvars.iv, 2
  %i.fb = add nuw i64 %i.fa, 4                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ex, i64 %i.fb ; 2 uses
  %scevgep243 = getelementptr i8, ptr %i.ez, i64 %i.fb ; 2 uses
  %i.fc = shl i64 %indvars.iv, 3
  %i.fd = getelementptr i8, ptr %.sroa.082.3, i64 %i.fc
  %scevgep244 = getelementptr i8, ptr %i.fd, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %i.ex, %scevgep243
  %bound1 = icmp ult ptr %i.ez, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0245 = icmp ult ptr %i.ex, %scevgep244
  %bound1246 = icmp ult ptr %.sroa.082.3, %scevgep
  %found.conflict247 = and i1 %bound0245, %bound1246
  %conflict.rdx = or i1 %found.conflict, %found.conflict247
  %bound0248 = icmp ult ptr %i.ez, %scevgep244
  %bound1249 = icmp ult ptr %.sroa.082.3, %scevgep243
  %found.conflict250 = and i1 %bound0248, %bound1249
  %conflict.rdx251 = or i1 %conflict.rdx, %found.conflict250
  br i1 %conflict.rdx251, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv.next, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.082.3, i64 %index
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.082.3, i64 %index
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %wide.vec = load <8 x i32>, ptr %i.fe, align 4, !tbaa !84, !alias.scope !1260 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec252 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec253 = load <8 x i32>, ptr %i.fg, align 4, !tbaa !84, !alias.scope !1260 ; 2 uses
  %strided.vec254 = shufflevector <8 x i32> %wide.vec253, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec255 = shufflevector <8 x i32> %wide.vec253, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <4 x i32> %strided.vec, ptr %i.fh, align 4, !tbaa !84, !alias.scope !1261, !noalias !1262
  store <4 x i32> %strided.vec254, ptr %i.fi, align 4, !tbaa !84, !alias.scope !1261, !noalias !1262
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %index ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store <4 x i32> %strided.vec252, ptr %i.fj, align 4, !tbaa !84, !alias.scope !1263, !noalias !1260
  store <4 x i32> %strided.vec255, ptr %i.fk, align 4, !tbaa !84, !alias.scope !1263, !noalias !1260
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !1251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv.next, %n.vec
  br i1 %cmp.n, label %._crit_edge144, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph143, %middle.block
  %indvars.iv173.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph143 ], [ %n.vec, %middle.block ] ; 6 uses
  %i.fm = and i64 %indvars.iv, 1
  %lcmp.mod270.not.not = icmp eq i64 %i.fm, 0
  br i1 %lcmp.mod270.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.082.3, i64 %indvars.iv173.ph ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !627
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv173.ph
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !84
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !628
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv173.ph
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !84
  %indvars.iv.next174.prol = or disjoint i64 %indvars.iv173.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv173.unr = phi i64 [ %indvars.iv173.ph, %scalar.ph.preheader ], [ %indvars.iv.next174.prol, %scalar.ph.prol ]
  %i.ft = icmp eq i64 %indvars.iv, %indvars.iv173.ph
  br i1 %i.ft, label %._crit_edge144, label %scalar.ph

bb.r:                                             ; preds = %._crit_edge, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit
  %indvars.iv170 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next171, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit ] ; 4 uses
  %.sroa.19.0135 = phi ptr [ %i.af, %._crit_edge ], [ %.sroa.19.3, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit ] ; 7 uses
  %.sroa.13.0134 = phi ptr [ %i.ae, %._crit_edge ], [ %.sroa.13.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit ] ; 4 uses
  %.sroa.082.0133 = phi ptr [ %i.ae, %._crit_edge ], [ %.sroa.082.3, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit ] ; 8 uses
  %i.fu = load ptr, ptr %i.ag, align 8, !tbaa !199
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv170 ; 2 uses
  %i.fw = load ptr, ptr %i.ah, align 8, !tbaa !199
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv170 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.13.0134, %.sroa.19.0135
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fy = load i32, ptr %i.fv, align 4, !tbaa !84
  store i32 %i.fy, ptr %.sroa.13.0134, align 4, !tbaa !627
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.13.0134, i64 4
  %i.ga = load i32, ptr %i.fx, align 4, !tbaa !84
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !628
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit

bb.t:                                             ; preds = %bb.r
  %i.gb = ptrtoint ptr %.sroa.19.0135 to i64
  %i.gc = ptrtoint ptr %.sroa.082.0133 to i64
  %i.gd = sub i64 %i.gb, %i.gc                    ; 4 uses
  %i.ge = icmp eq i64 %i.gd, 9223372036854775800
  br i1 %i.ge, label %bb.u, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #38
          to label %.noexc69 unwind label %.loopexit.split-lp

.noexc69:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.gf = ashr exact i64 %i.gd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gf, i64 1)
  %i.gg = add nsw i64 %.sroa.speculated.i.i.i, %i.gf ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.gf
  %i.gi = tail call i64 @llvm.umin.i64(i64 %i.gg, i64 1152921504606846975)
  %i.gj = select i1 %i.gh, i64 1152921504606846975, i64 %i.gi ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gk = shl nuw nsw i64 %i.gj, 3
  %i.gl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #37
          to label %.noexc70 unwind label %.loopexit112 ; 5 uses

.noexc70:                                         ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gd ; 2 uses
  %i.gn = load i32, ptr %i.fv, align 4, !tbaa !84
  store i32 %i.gn, ptr %i.gm, align 4, !tbaa !627
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.gp = load i32, ptr %i.fx, align 4, !tbaa !84
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !628
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.082.0133, %.sroa.19.0135
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i68

.lr.ph.i.i.i.i.i68:                               ; preds = %.noexc70, %.lr.ph.i.i.i.i.i68
  %.012.i.i.i.i.i = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i68 ], [ %i.gl, %.noexc70 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i.i.i.i68 ], [ %.sroa.082.0133, %.noexc70 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  %i.gq = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !1265, !noalias !1264
  store i64 %i.gq, ptr %.012.i.i.i.i.i, align 4, !alias.scope !1264, !noalias !1265
  %i.gr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gr, %.sroa.19.0135
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i68, !llvm.loop !1255

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i68, %.noexc70
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gl, %.noexc70 ], [ %i.gs, %.lr.ph.i.i.i.i.i68 ]
  %.not.i34.i.i = icmp eq ptr %.sroa.082.0133, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.082.0133, i64 noundef %i.gd) #39
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gj
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.s
  %.sroa.082.3 = phi ptr [ %i.gl, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.082.0133, %bb.s ] ; 26 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.13.0134, %bb.s ] ; 4 uses
  %.sroa.19.3 = phi ptr [ %i.gt, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.19.0135, %bb.s ] ; 4 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 5 uses
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1
  %exitcond.not = icmp eq i64 %indvars.iv170, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge138, label %bb.r, !llvm.loop !1256

.loopexit112:                                     ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

._crit_edge144:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f
  %.061.lcssa194201208218 = phi i32 [ 0, %bb.f ], [ %i.ac, %middle.block ], [ %i.ac, %scalar.ph ], [ %i.ac, %scalar.ph.prol.loopexit ] ; 2 uses
  %.sroa.082.0.lcssa210217 = phi ptr [ null, %bb.f ], [ %.sroa.082.3, %middle.block ], [ %.sroa.082.3, %scalar.ph ], [ %.sroa.082.3, %scalar.ph.prol.loopexit ] ; 4 uses
  %.sroa.19.0.lcssa211216 = phi ptr [ null, %bb.f ], [ %.sroa.19.3, %middle.block ], [ %.sroa.19.3, %scalar.ph ], [ %.sroa.19.3, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.gu = load i32, ptr %i.g, align 8, !tbaa !623 ; 2 uses
  %i.gv = icmp slt i32 %.061.lcssa194201208218, %i.gu
  br i1 %i.gv, label %.preheader109, label %.._crit_edge152_crit_edge

.preheader109:                                    ; preds = %._crit_edge144
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !622
  %.not.not.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not.not.i.i, label %.preheader.us, label %.preheader109.split

.preheader.us:                                    ; preds = %.preheader109, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit.loopexit.us
  %.098.us = phi i32 [ %i.hb, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit.loopexit.us ], [ 0, %.preheader109 ] ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %.preheader.us, %bb.x
  %.sroa.06.0.in.i.i.us = phi ptr [ %.sroa.06.0.i.i.us, %bb.x ], [ %i.z, %.preheader.us ]
  %.sroa.06.0.i.i.us = load ptr, ptr %.sroa.06.0.in.i.i.us, align 8, !tbaa !214 ; 3 uses
  %.not.i.i73.us = icmp eq ptr %.sroa.06.0.i.i.us, null
  br i1 %.not.i.i73.us, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us, i64 8
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !84
  %i.ha = icmp eq i32 %.098.us, %i.gz
  br i1 %i.ha, label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit.loopexit.us, label %bb.w, !llvm.loop !40

end_hunk_0
