Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexPQ?download=true
inline.NumInlined: 1198
inline.NumDeleted: 557
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5faiss12_GLOBAL__N_115SemiSortedArrayIfE4growEi:bb.a
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_T0_T1_(ptr %i.ds, ptr %i.du, i64 noundef %i.ec, ptr readonly %i.dm)
  %i.ed = icmp sgt i64 %i.dy, 64
  %scevgep.i.i.i = getelementptr i8, ptr %i.ds, i64 4 ; 3 uses
  br i1 %i.ed, label %.lr.ph.i.i.i.i, label %bb.v

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %.sroa.0.020.i.idx.i.i.i = phi i64 [ %.sroa.0.020.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 4, %bb.q ] ; 4 uses
  %.pn19.i.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ %i.ds, %bb.q ] ; 3 uses
  %.sroa.0.020.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.sroa.0.020.i.idx.i.i.i ; 4 uses
  %i.ee = load i32, ptr %.sroa.0.020.i.ptr.i.i.i, align 4, !tbaa !61 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = load i32, ptr %i.ds, align 4, !tbaa !61 ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.ef
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !100 ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.eh
  %i.el = load float, ptr %i.ek, align 4, !tbaa !100
  %i.em = fcmp olt float %i.ej, %i.el
  br i1 %i.em, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.en = icmp samesign ugt i64 %.sroa.0.020.i.idx.i.i.i, 4
  br i1 %i.en, label %bb.s, label %bb.t, !prof !384

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %i.ds, i64 %.sroa.0.020.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 4
  store i32 %i.eg, ptr %i.eo, align 4, !tbaa !61
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ep = load i32, ptr %.pn19.i.i.i.i, align 4, !tbaa !61 ; 2 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.eq
  %i.es = load float, ptr %i.er, align 4, !tbaa !100
  %i.et = fcmp olt float %i.ej, %i.es
  br i1 %i.et, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u, %.lr.ph.i.i.i.i.i
  %i.eu = phi i32 [ %i.ev, %.lr.ph.i.i.i.i.i ], [ %i.ep, %bb.u ]
  %.sroa.0.011.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn19.i.i.i.i, %bb.u ] ; 3 uses
  %.sroa.06.010.i.i.i.i.i = phi ptr [ %.sroa.0.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.020.i.ptr.i.i.i, %bb.u ]
  store i32 %i.eu, ptr %.sroa.06.010.i.i.i.i.i, align 4, !tbaa !61
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ev = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 4, !tbaa !61 ; 2 uses
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !100
  %i.ez = fcmp olt float %i.ej, %i.ey
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, !llvm.loop !381

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.u, %bb.t, %bb.s
  %.sink.i.i.i.i = phi ptr [ %i.ds, %bb.t ], [ %i.ds, %bb.s ], [ %.sroa.0.020.i.ptr.i.i.i, %bb.u ], [ %.sroa.0.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  store i32 %i.ee, ptr %.sink.i.i.i.i, align 4, !tbaa !61
  %.sroa.0.020.i.add.i.i.i = add nuw nsw i64 %.sroa.0.020.i.idx.i.i.i, 4 ; 2 uses
  %i.fa = icmp eq i64 %.sroa.0.020.i.add.i.i.i, 64
  br i1 %i.fa, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_T0_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !382

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_T0_.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ds, i64 64 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.du
  br i1 %i.fc, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN5faiss12_GLOBAL__N_17ArgSortIfEEEvT_SB_T0_.exit, label %.lr.ph.i10.i.i.i

.lr.ph.i10.i.i.i:                                 ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_T0_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_.exit.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.fs, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_.exit.i.i.i.i ], [ %i.fb, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_T0_.exit.i.i.i ] ; 5 uses
  %i.fd = load i32, ptr %.sroa.0.07.i.i.i.i, align 4, !tbaa !61 ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.fe
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !100 ; 2 uses
  %.sroa.0.09.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -4 ; 2 uses
  %i.fh = load i32, ptr %.sroa.0.09.i.i.i.i.i, align 4, !tbaa !61 ; 2 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !100
  %i.fl = fcmp olt float %i.fg, %i.fk
  br i1 %i.fl, label %.lr.ph.i.i11.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_.exit.i.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %.lr.ph.i10.i.i.i, %.lr.ph.i.i11.i.i.i
  %i.fm = phi i32 [ %i.fn, %.lr.ph.i.i11.i.i.i ], [ %i.fh, %.lr.ph.i10.i.i.i ]
  %.sroa.0.011.i.i12.i.i.i = phi ptr [ %.sroa.0.0.i.i14.i.i.i, %.lr.ph.i.i11.i.i.i ], [ %.sroa.0.09.i.i.i.i.i, %.lr.ph.i10.i.i.i ] ; 3 uses
  %.sroa.06.010.i.i13.i.i.i = phi ptr [ %.sroa.0.011.i.i12.i.i.i, %.lr.ph.i.i11.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i10.i.i.i ]
  store i32 %i.fm, ptr %.sroa.06.010.i.i13.i.i.i, align 4, !tbaa !61
  %.sroa.0.0.i.i14.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i12.i.i.i, i64 -4 ; 2 uses
  %i.fn = load i32, ptr %.sroa.0.0.i.i14.i.i.i, align 4, !tbaa !61 ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.fo
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !100
  %i.fr = fcmp olt float %i.fg, %i.fq
  br i1 %i.fr, label %.lr.ph.i.i11.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_.exit.i.i.i.i, !llvm.loop !381

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i11.i.i.i, %.lr.ph.i10.i.i.i
  %.sroa.06.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i10.i.i.i ], [ %.sroa.0.011.i.i12.i.i.i, %.lr.ph.i.i11.i.i.i ]
  store i32 %i.fd, ptr %.sroa.06.0.lcssa.i.i.i.i.i, align 4, !tbaa !61
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 4 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.du
  br i1 %i.ft, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN5faiss12_GLOBAL__N_17ArgSortIfEEEvT_SB_T0_.exit, label %.lr.ph.i10.i.i.i, !llvm.loop !383

bb.v:                                             ; preds = %bb.q
  %i.fu = icmp eq ptr %scevgep.i.i.i, %i.du
  br i1 %i.fu, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN5faiss12_GLOBAL__N_17ArgSortIfEEEvT_SB_T0_.exit, label %.lr.ph.i17.i.i.i

.lr.ph.i17.i.i.i:                                 ; preds = %bb.v, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i20.i.i.i
  %.sroa.0.020.i18.i.i.i = phi ptr [ %.sroa.0.0.i22.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i20.i.i.i ], [ %scevgep.i.i.i, %bb.v ] ; 6 uses
  %.pn19.i19.i.i.i = phi ptr [ %.sroa.0.020.i18.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i20.i.i.i ], [ %i.ds, %bb.v ] ; 4 uses
  %i.fv = load i32, ptr %.sroa.0.020.i18.i.i.i, align 4, !tbaa !61 ; 2 uses
  %i.fw = sext i32 %i.fv to i64
  %i.fx = load i32, ptr %i.ds, align 4, !tbaa !61 ; 2 uses
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.fw
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !100 ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.fy
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !100
  %i.gd = fcmp olt float %i.ga, %i.gc
  br i1 %i.gd, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %.lr.ph.i17.i.i.i
  %i.ge = ptrtoint ptr %.sroa.0.020.i18.i.i.i to i64
  %i.gf = sub i64 %i.ge, %i.dx                    ; 3 uses
  %i.gg = ashr exact i64 %i.gf, 2                 ; 2 uses
  %i.gh = icmp sgt i64 %i.gg, 1
  br i1 %i.gh, label %bb.x, label %bb.y, !prof !384

bb.x:                                             ; preds = %bb.w
  %i.gi = getelementptr inbounds nuw i8, ptr %.pn19.i19.i.i.i, i64 8
  %i.gj = sub nsw i64 0, %i.gg
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.gj
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gk, ptr noundef nonnull align 4 dereferenceable(1) %i.ds, i64 %i.gf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i20.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.gl = icmp eq i64 %i.gf, 4
  br i1 %i.gl, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i20.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.gm = getelementptr inbounds nuw i8, ptr %.pn19.i19.i.i.i, i64 4
  store i32 %i.fx, ptr %i.gm, align 4, !tbaa !61
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i20.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i17.i.i.i
  %i.gn = load i32, ptr %.pn19.i19.i.i.i, align 4, !tbaa !61 ; 2 uses
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.go
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !100
  %i.gr = fcmp olt float %i.ga, %i.gq
  br i1 %i.gr, label %.lr.ph.i.i23.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i20.i.i.i

.lr.ph.i.i23.i.i.i:                               ; preds = %bb.aa, %.lr.ph.i.i23.i.i.i
  %i.gs = phi i32 [ %i.gt, %.lr.ph.i.i23.i.i.i ], [ %i.gn, %bb.aa ]
  %.sroa.0.011.i.i24.i.i.i = phi ptr [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i23.i.i.i ], [ %.pn19.i19.i.i.i, %bb.aa ] ; 3 uses
  %.sroa.06.010.i.i25.i.i.i = phi ptr [ %.sroa.0.011.i.i24.i.i.i, %.lr.ph.i.i23.i.i.i ], [ %.sroa.0.020.i18.i.i.i, %bb.aa ]
  store i32 %i.gs, ptr %.sroa.06.010.i.i25.i.i.i, align 4, !tbaa !61
  %.sroa.0.0.i.i26.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i24.i.i.i, i64 -4 ; 2 uses
  %i.gt = load i32, ptr %.sroa.0.0.i.i26.i.i.i, align 4, !tbaa !61 ; 2 uses
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.gu
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !100
  %i.gx = fcmp olt float %i.ga, %i.gw
  br i1 %i.gx, label %.lr.ph.i.i23.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i20.i.i.i, !llvm.loop !381

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i20.i.i.i: ; preds = %.lr.ph.i.i23.i.i.i, %bb.aa, %bb.z, %bb.y, %bb.x
  %.sink.i21.i.i.i = phi ptr [ %i.ds, %bb.z ], [ %i.ds, %bb.x ], [ %i.ds, %bb.y ], [ %.sroa.0.020.i18.i.i.i, %bb.aa ], [ %.sroa.0.011.i.i24.i.i.i, %.lr.ph.i.i23.i.i.i ]
  store i32 %i.fv, ptr %.sink.i21.i.i.i, align 4, !tbaa !61
  %.sroa.0.0.i22.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i18.i.i.i, i64 4 ; 2 uses
  %i.gy = icmp eq ptr %.sroa.0.0.i22.i.i.i, %i.du
  br i1 %i.gy, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN5faiss12_GLOBAL__N_17ArgSortIfEEEvT_SB_T0_.exit, label %.lr.ph.i17.i.i.i, !llvm.loop !382

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN5faiss12_GLOBAL__N_17ArgSortIfEEEvT_SB_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i20.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_.exit.i.i.i.i, %bb.p, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_T0_.exit.i.i.i, %bb.v
  %i.gz = load i32, ptr %i.a, align 8, !tbaa !148
  store i32 %i.gz, ptr %i.dp, align 8, !tbaa !149
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN5faiss12_GLOBAL__N_17ArgSortIfEEEvT_SB_T0_.exit, %_ZN5faiss12_GLOBAL__N_112partial_sortINS_4CMaxIfiEEEEviiPKNT_1TEPNS4_2TIE.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #27 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph59

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEET_SE_SE_T0_.exit
  %i.h = icmp eq i64 %i.ej, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph59, !llvm.loop !385

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.fy, %bb.b ] ; 2 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i26.lcssa, 2           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i26.lcssa, 4
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_SF_T1_T2_.exit.us.i.i.i
  %.09.us.i.i.i = phi i64 [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_SF_T1_T2_.exit.us.i.i.i ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.09.us.i.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !61   ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_SF_T1_T2_.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.038.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.038.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.y
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !61
  %i.ab = sext i32 %i.aa to i64
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !61
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ab
  %i.af = load float, ptr %i.ae, align 4, !tbaa !100
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ad
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !100
  %i.ai = fcmp olt float %i.af, %i.ah
  %spec.select.i.us.i.i.i = select i1 %i.ai, i64 %i.y, i64 %i.w ; 4 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !61
  %i.al = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.038.i.us.i.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !61
  %i.am = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.am, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !386

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.an = sext i32 %i.t to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !61 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !100
  %i.av = fcmp olt float %i.au, %i.ap
  br i1 %i.av, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_SF_T1_T2_.exit.us.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  store i32 %i.ar, ptr %i.aw, align 4, !tbaa !61
  %i.ax = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.ax, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_SF_T1_T2_.exit.us.i.i.i, !llvm.loop !387

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_SF_T1_T2_.exit.us.i.i.i: ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  store i32 %i.t, ptr %i.ay, align 4, !tbaa !61
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.az = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_RT0_.exit.i.i, label %.split.us.i.i.i, !llvm.loop !388

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_SF_T1_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.ck, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_SF_T1_T2_.exit.i.i.i ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.09.i.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !61 ; 2 uses
  %i.bc = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.bc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.bd = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.be = add i64 %i.bd, 2                        ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.be
  %i.bg = or disjoint i64 %i.bd, 1                ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.bg
  %i.bi = load i32, ptr %i.bf, align 4, !tbaa !61
  %i.bj = sext i32 %i.bi to i64
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !61
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bj
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !100
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bl
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !100
  %i.bq = fcmp olt float %i.bn, %i.bp
  %spec.select.i.i.i.i = select i1 %i.bq, i64 %i.bg, i64 %i.be ; 4 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !61
  %i.bt = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.038.i.i.i.i
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !61
  %i.bu = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bu, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !386

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bv = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bw = load i32, ptr %i.q, align 4, !tbaa !61
  store i32 %i.bw, ptr %i.r, align 4, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bx = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_SF_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.by = sext i32 %i.bb to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !100
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !61 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !100
  %i.cg = fcmp olt float %i.cf, %i.ca
  br i1 %i.cg, label %bb.h, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_SF_T1_T2_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  store i32 %i.cc, ptr %i.ch, align 4, !tbaa !61
  %i.ci = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.ci, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_SF_T1_T2_.exit.i.i.i, !llvm.loop !387

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_SF_T1_T2_.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.bb, ptr %i.cj, align 4, !tbaa !61
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.ck = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_RT0_.exit.i.i, label %.split.i.i.i, !llvm.loop !388

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_SF_T1_T2_.exit.us.i.i.i, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_T0_SF_T1_T2_.exit.i.i.i
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_RT0_.exit.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.cl, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_RT0_.exit.i.i ], [ %storemerge24.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_RT0_.exit.i.i ]
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -4 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !61 ; 2 uses
  %i.cn = load i32, ptr %.fr27, align 4, !tbaa !61
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !61
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.co, %i.a                     ; 3 uses
  %i.cq = ashr exact i64 %i.cp, 2                 ; 3 uses
  %i.cr = add nsw i64 %i.cq, -1
  %i.cs = lshr i64 %i.cr, 1
  %i.ct = icmp sgt i64 %i.cq, 2
  br i1 %i.ct, label %.lr.ph.i.i.i17.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i17.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i17.i
  %.038.i.i.i18.i = phi i64 [ %spec.select.i.i.i19.i, %.lr.ph.i.i.i17.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.cu = shl i64 %.038.i.i.i18.i, 1              ; 2 uses
  %i.cv = add i64 %i.cu, 2                        ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.cv
  %i.cx = or disjoint i64 %i.cu, 1                ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.cx
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !61
  %i.da = sext i32 %i.cz to i64
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !61
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.da
  %i.de = load float, ptr %i.dd, align 4, !tbaa !100
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dc
  %i.dg = load float, ptr %i.df, align 4, !tbaa !100
  %i.dh = fcmp olt float %i.de, %i.dg
  %spec.select.i.i.i19.i = select i1 %i.dh, i64 %i.cx, i64 %i.cv ; 4 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %spec.select.i.i.i19.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !61
  %i.dk = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.038.i.i.i18.i
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !61
  %i.dl = icmp slt i64 %spec.select.i.i.i19.i, %i.cs
  br i1 %i.dl, label %.lr.ph.i.i.i17.i, label %._crit_edge.i.i.i10.i, !llvm.loop !386

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i17.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i19.i, %.lr.ph.i.i.i17.i ] ; 5 uses
  %i.dm = and i64 %i.cp, 4
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.do = add nsw i64 %i.cq, -2
  %i.dp = ashr exact i64 %i.do, 1
  %i.dq = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.dp
  br i1 %i.dq, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.dr = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.ds = or disjoint i64 %i.dr, 1                ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !61
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i11.i
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !61
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_RT0_.exit.i.i, label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.ds, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dw = sext i32 %i.cm to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !100
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i14.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i15.i = add nsw i64 %.010.i.i.i.i14.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i15.i, 1 ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0911.i.i78.i.i.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !61 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !100
  %i.ee = fcmp olt float %i.ed, %i.dy
  br i1 %i.ee, label %bb.l, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_RT0_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.ef = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.010.i.i.i.i14.i
  store i32 %i.ea, ptr %i.ef, align 4, !tbaa !61
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_RT0_.exit.i.i, label %bb.k, !llvm.loop !387

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_RT0_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i16.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i14.i, %bb.k ], [ 0, %bb.l ]
  %i.eg = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i16.i
  store i32 %i.cm, ptr %i.eg, align 4, !tbaa !61
  %i.eh = icmp sgt i64 %i.cp, 4
  br i1 %i.eh, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_T0_.exit, !llvm.loop !389

.lr.ph59:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2458 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02557 = phi i64 [ %i.ej, %bb.b ], [ %2, %.lr.ph ]
  %i.ei = phi i64 [ %i.fz, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ej = add nsw i64 %.02557, -1                 ; 3 uses
  %i.ek = lshr i64 %i.ei, 1
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.ek ; 3 uses
  %i.em = getelementptr inbounds i8, ptr %storemerge2458, i64 -4 ; 3 uses
  %i.en = load i32, ptr %i.f, align 4, !tbaa !61  ; 3 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = load i32, ptr %i.el, align 4, !tbaa !61 ; 3 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eo
  %i.es = load float, ptr %i.er, align 4, !tbaa !100 ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eq
  %i.eu = load float, ptr %i.et, align 4, !tbaa !100 ; 3 uses
  %i.ev = fcmp olt float %i.es, %i.eu
  %i.ew = load i32, ptr %i.em, align 4, !tbaa !61 ; 3 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !100 ; 4 uses
  br i1 %i.ev, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph59
  %i.fa = fcmp olt float %i.eu, %i.ez
  br i1 %i.fa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fb = load i32, ptr %.fr27, align 4, !tbaa !61
  store i32 %i.ep, ptr %.fr27, align 4, !tbaa !61
  store i32 %i.fb, ptr %i.el, align 4, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.fc = fcmp olt float %i.es, %i.ez
  %i.fd = load i32, ptr %.fr27, align 4, !tbaa !61 ; 2 uses
  br i1 %i.fc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.ew, ptr %.fr27, align 4, !tbaa !61
  store i32 %i.fd, ptr %i.em, align 4, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.en, ptr %.fr27, align 4, !tbaa !61
  store i32 %i.fd, ptr %i.f, align 4, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.r:                                             ; preds = %.lr.ph59
  %i.fe = fcmp olt float %i.es, %i.ez
  br i1 %i.fe, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ff = load i32, ptr %.fr27, align 4, !tbaa !61
  store i32 %i.en, ptr %.fr27, align 4, !tbaa !61
  store i32 %i.ff, ptr %i.f, align 4, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.t:                                             ; preds = %bb.r
  %i.fg = fcmp olt float %i.eu, %i.ez
  %i.fh = load i32, ptr %.fr27, align 4, !tbaa !61 ; 2 uses
  br i1 %i.fg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.ew, ptr %.fr27, align 4, !tbaa !61
  store i32 %i.fh, ptr %i.em, align 4, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_SE_T0_.exit.i.preheader

bb.v:                                             ; preds = %bb.t
  store i32 %i.ep, ptr %.fr27, align 4, !tbaa !61
  store i32 %i.fh, ptr %i.el, align 4, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_SE_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_SE_T0_.exit.i.preheader: ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_SE_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_SE_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_SE_T0_.exit.i.preheader, %bb.y
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.y ], [ %storemerge2458, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_SE_T0_.exit.i.preheader ]
  %.sroa.014.0.i.i = phi ptr [ %i.fr, %bb.y ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_SE_T0_.exit.i.preheader ]
  %i.fi = load i32, ptr %.fr27, align 4, !tbaa !61
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fj
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !100 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_SE_T0_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_SE_T0_.exit.i ], [ %i.fr, %bb.w ] ; 8 uses
  %i.fm = load i32, ptr %.sroa.014.1.i.i, align 4, !tbaa !61 ; 2 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fn
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !100
  %i.fq = fcmp olt float %i.fp, %i.fl
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 4 ; 2 uses
  br i1 %i.fq, label %bb.w, label %.preheader.i.i, !llvm.loop !390

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.w ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -4 ; 5 uses
  %i.fs = load i32, ptr %.sroa.011.1.i.i, align 4, !tbaa !61 ; 2 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !100
  %i.fw = fcmp olt float %i.fl, %i.fv
  br i1 %i.fw, label %.preheader.i.i, label %bb.x, !llvm.loop !391

bb.x:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.y, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEET_SE_SE_T0_.exit

bb.y:                                             ; preds = %bb.x
  store i32 %i.fs, ptr %.sroa.014.1.i.i, align 4, !tbaa !61
  store i32 %i.fm, ptr %.sroa.011.1.i.i, align 4, !tbaa !61
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_SE_T0_.exit.i, !llvm.loop !392

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEET_SE_SE_T0_.exit: ; preds = %bb.x
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2458, i64 noundef %i.ej, ptr nonnull %3)
  %i.fx = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.fy = sub i64 %i.fx, %i.a                     ; 2 uses
  %i.fz = ashr exact i64 %i.fy, 2                 ; 2 uses
  %i.ga = icmp sgt i64 %i.fz, 16
  br i1 %i.ga, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_T0_.exit, !llvm.loop !385

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEET_SE_SE_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5faiss12_GLOBAL__N_17ArgSortIfEEEEEvT_SE_SE_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #28

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss20MultiIndexQuantizer2C2EimmPPNS_5IndexE(ptr noundef nonnull align 8 dereferenceable(289) initializes((0, 12), (16, 26), (28, 36)) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.b, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  store i8 1, ptr %i.e, align 1, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.f, align 4, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 0.000000e+00, ptr %i.g, align 8, !tbaa !137
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5faiss19MultiIndexQuantizerE, i64 16), ptr %0, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN5faiss16ProductQuantizerC1Emmm(ptr noundef nonnull align 8 dereferenceable(224) %i.h, i64 noundef %i.a, i64 noundef %2, i64 noundef %3)
          to label %_ZN5faiss19MultiIndexQuantizerC2Eimm.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt6vectorIPN5faiss5IndexESaIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %.pn.pn, %_ZNSt6vectorIPN5faiss5IndexESaIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5faiss5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(264) %0) #22
  br label %common.resume

_ZN5faiss19MultiIndexQuantizerC2Eimm.exit:        ; preds = %bb.a
  store i8 0, ptr %i.e, align 1, !tbaa !44
  %i.j = load i8, ptr %i.d, align 8, !tbaa !28, !range !29, !noundef !30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %i.j, ptr %i.k, align 8, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5faiss20MultiIndexQuantizer2E, i64 16), ptr %0, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %.not = icmp eq i64 %2, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.l, i8 0, i64 25, i1 false)
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %_ZN5faiss19MultiIndexQuantizerC2Eimm.exit
  invoke void @_ZNSt6vectorIPN5faiss5IndexESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %2)
          to label %.lr.ph unwind label %bb.d

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i64, ptr %i.m, align 8, !tbaa !66
  br label %bb.e

._crit_edge:                                      ; preds = %bb.n, %_ZN5faiss19MultiIndexQuantizerC2Eimm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 0, ptr %i.o, align 8, !tbaa !157
  ret void

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.e:                                             ; preds = %.lr.ph, %bb.n
  %.023 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.n ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.023
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !109  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !62
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i64 %i.n, %i.u
  br i1 %i.v, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.w, ptr %5, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !56
  store i8 0, ptr %i.w, align 8, !tbaa !54
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #22 ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = zext nneg i32 %i.y to i64               ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ab)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %5, align 8, !tbaa !53
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !56
  %i.ae = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #22 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.aa)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h, %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.h, %bb.f
  %i.ag = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss20MultiIndexQuantizer2C2EimmPPNS_5IndexE, ptr noundef nonnull @.str.13, i32 noundef 908)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #32
          to label %bb.q unwind label %bb.i

bb.l:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.ah, %bb.l ]
  %i.ai = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.w
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ak = load i64, ptr %i.w, align 8, !tbaa !54
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !107
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.023
  store ptr %i.r, ptr %i.an, align 8, !tbaa !109
  %i.ao = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !393

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %bb.d ]
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN5faiss5IndexESaIS2_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !108
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #31
  br label %_ZNSt6vectorIPN5faiss5IndexESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5faiss5IndexESaIS2_EED2Ev.exit:    ; preds = %bb.o, %bb.p
  call void @_ZN5faiss19MultiIndexQuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #22
  br label %common.resume

bb.q:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPN5faiss5IndexESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !109
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
end_hunk_0
