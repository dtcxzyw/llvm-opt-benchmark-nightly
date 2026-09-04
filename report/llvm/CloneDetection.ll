Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CloneDetection?download=true
inline.NumInlined: 1874
inline.NumDeleted: 884
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5clang12StmtSequenceEESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_T1_T2_:bb.a
  %.0910.i.i.i.i.i.i31.unr = phi ptr [ %.sroa.019.0.lcssa.i19, %.lr.ph.i.i.i.i.i.i28.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.i.i28.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i28.preheader ], [ %i.cq, %.lr.ph.i.i.i.i.i.i28.prol ]
  %i.cs = icmp eq i64 %i.ci, 32
  br i1 %i.cs, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5clang12StmtSequenceEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21, label %.lr.ph.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i28:                             ; preds = %.lr.ph.i.i.i.i.i.i28.prol.loopexit, %.lr.ph.i.i.i.i.i.i28
  %.012.i.i.i.i.i.i29 = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i28 ], [ %.012.i.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i.i28.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i30 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i28 ], [ %.0811.i.i.i.i.i.i30.unr, %.lr.ph.i.i.i.i.i.i28.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i.i31 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i28 ], [ %.0910.i.i.i.i.i.i31.unr, %.lr.ph.i.i.i.i.i.i28.prol.loopexit ] ; 5 uses
  %i.ct = load i64, ptr %.0910.i.i.i.i.i.i31, align 8, !tbaa !454
  store i64 %i.ct, ptr %.0811.i.i.i.i.i.i30, align 8, !tbaa !450
  %i.cu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !tbaa.struct !443
  %i.cw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 32
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !454
  store i64 %i.cy, ptr %i.cx, align 8, !tbaa !450
  %i.cz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false), !tbaa.struct !443
  %i.db = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 64 ; 2 uses
  %i.dd = add nsw i64 %.012.i.i.i.i.i.i29, -2
  %i.de = icmp sgt i64 %.012.i.i.i.i.i.i29, 2
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i28, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5clang12StmtSequenceEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21, !llvm.loop !5

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5clang12StmtSequenceEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21: ; preds = %.lr.ph.i.i.i.i.i.i28.prol.loopexit, %.lr.ph.i.i.i.i.i.i28, %.critedge.i17
  %.08.lcssa.i.i.i.i.i.i22 = phi ptr [ %.0.lcssa.i20, %.critedge.i17 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i28.prol.loopexit ], [ %i.dc, %.lr.ph.i.i.i.i.i.i28 ] ; 4 uses
  %i.df = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.dg = sub i64 %i.b, %i.df                     ; 3 uses
  %i.dh = ashr exact i64 %i.dg, 5                 ; 3 uses
  %i.di = icmp sgt i64 %i.dh, 0
  br i1 %i.di, label %.lr.ph.i.i.i.i.i10.i24.preheader, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5clang12StmtSequenceEESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit39

.lr.ph.i.i.i.i.i10.i24.preheader:                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5clang12StmtSequenceEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21
  %i.dj = and i64 %i.dg, 32
  %lcmp.mod111.not = icmp eq i64 %i.dj, 0
  br i1 %lcmp.mod111.not, label %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i24.prol

.lr.ph.i.i.i.i.i10.i24.prol:                      ; preds = %.lr.ph.i.i.i.i.i10.i24.preheader
  %i.dk = load i64, ptr %.sroa.015.0.lcssa.i18, align 8, !tbaa !454
  store i64 %i.dk, ptr %.08.lcssa.i.i.i.i.i.i22, align 8, !tbaa !450
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.015.0.lcssa.i18, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i.i22, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false), !tbaa.struct !443
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.015.0.lcssa.i18, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i.i22, i64 32
  %i.dp = add nsw i64 %i.dh, -1
  br label %.lr.ph.i.i.i.i.i10.i24.prol.loopexit

.lr.ph.i.i.i.i.i10.i24.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i10.i24.prol, %.lr.ph.i.i.i.i.i10.i24.preheader
  %.012.i.i.i.i.i11.i25.unr = phi i64 [ %i.dh, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.dp, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %.0811.i.i.i.i.i12.i26.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i22, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.do, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %.0910.i.i.i.i.i13.i27.unr = phi ptr [ %.sroa.015.0.lcssa.i18, %.lr.ph.i.i.i.i.i10.i24.preheader ], [ %i.dn, %.lr.ph.i.i.i.i.i10.i24.prol ]
  %i.dq = icmp eq i64 %i.dg, 32
  br i1 %i.dq, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5clang12StmtSequenceEESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit39, label %.lr.ph.i.i.i.i.i10.i24

.lr.ph.i.i.i.i.i10.i24:                           ; preds = %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24
  %.012.i.i.i.i.i11.i25 = phi i64 [ %i.eb, %.lr.ph.i.i.i.i.i10.i24 ], [ %.012.i.i.i.i.i11.i25.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i26 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i10.i24 ], [ %.0811.i.i.i.i.i12.i26.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i13.i27 = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i10.i24 ], [ %.0910.i.i.i.i.i13.i27.unr, %.lr.ph.i.i.i.i.i10.i24.prol.loopexit ] ; 5 uses
  %i.dr = load i64, ptr %.0910.i.i.i.i.i13.i27, align 8, !tbaa !454
  store i64 %i.dr, ptr %.0811.i.i.i.i.i12.i26, align 8, !tbaa !450
  %i.ds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 24, i1 false), !tbaa.struct !443
  %i.du = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 32
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !454
  store i64 %i.dw, ptr %i.dv, align 8, !tbaa !450
  %i.dx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false), !tbaa.struct !443
  %i.dz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i27, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i26, i64 64
  %i.eb = add nsw i64 %.012.i.i.i.i.i11.i25, -2
  %i.ec = icmp sgt i64 %.012.i.i.i.i.i11.i25, 2
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5clang12StmtSequenceEESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit39, !llvm.loop !5

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5clang12StmtSequenceEESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit39: ; preds = %.lr.ph.i.i.i.i.i10.i24.prol.loopexit, %.lr.ph.i.i.i.i.i10.i24, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5clang12StmtSequenceEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 5                   ; 2 uses
  %.not61 = icmp slt i64 %i.e, %i.a
  br i1 %.not61, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %3, 5                       ; 2 uses
  %.idx52 = shl nsw i64 %3, 6                     ; 2 uses
  %.not53 = icmp eq i64 %.idx, %.idx52
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit
  %.sroa.022.063 = phi ptr [ %2, %.lr.ph ], [ %i.bw, %_ZSt12__move_mergeIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 2 uses
  %.062 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.062, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.062, i64 %.idx52 ; 4 uses
  br i1 %.not53, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.029.i = phi ptr [ %.1.i, %bb.e ], [ %.062, %bb.b ] ; 4 uses
  %.01628.i = phi ptr [ %.117.i, %bb.e ], [ %i.f, %bb.b ] ; 4 uses
  %.sroa.0.027.i = phi ptr [ %i.p, %bb.e ], [ %.sroa.022.063, %bb.b ] ; 4 uses
  %i.h = load i64, ptr %.01628.i, align 8, !tbaa !454 ; 2 uses
  %i.i = load i64, ptr %.029.i, align 8, !tbaa !454 ; 2 uses
  %i.j = icmp ult i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 8 ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store i64 %i.h, ptr %.sroa.0.027.i, align 8, !tbaa !450
  %i.l = getelementptr inbounds nuw i8, ptr %.01628.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !443
  %i.m = getelementptr inbounds nuw i8, ptr %.01628.i, i64 32
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i64 %i.i, ptr %.sroa.0.027.i, align 8, !tbaa !450
  %i.n = getelementptr inbounds nuw i8, ptr %.029.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !443
  %i.o = getelementptr inbounds nuw i8, ptr %.029.i, i64 32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.117.i = phi ptr [ %i.m, %bb.c ], [ %.01628.i, %bb.d ] ; 3 uses
  %.1.i = phi ptr [ %.029.i, %bb.c ], [ %i.o, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 32 ; 2 uses
  %i.q = icmp ne ptr %.1.i, %i.f
  %i.r = icmp ne ptr %.117.i, %i.g
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !644

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.063, %bb.b ], [ %i.p, %bb.e ] ; 7 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %bb.e ] ; 5 uses
  %.0.lcssa.i = phi ptr [ %.062, %bb.b ], [ %.1.i, %bb.e ] ; 5 uses
  %i.t = ptrtoint ptr %i.f to i64
  %i.u = ptrtoint ptr %.0.lcssa.i to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 5                   ; 3 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %i.y = and i64 %i.v, 32
  %lcmp.mod.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.z = load i64, ptr %.0.lcssa.i, align 8, !tbaa !454
  store i64 %i.z, ptr %.sroa.0.0.lcssa.i, align 8, !tbaa !450
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !tbaa.struct !443
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 32 ; 2 uses
  %i.ae = add nsw i64 %i.w, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa102.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.af = icmp eq i64 %i.v, 32
  br i1 %i.af, label %_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ag = load i64, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !454
  store i64 %i.ag, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !450
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !443
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !454
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !450
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !tbaa.struct !443
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.aq = add nsw i64 %.012.i.i.i.i.i.i, -2
  %i.ar = icmp sgt i64 %.012.i.i.i.i.i.i, 2
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i, !llvm.loop !5

_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %.lcssa102.unr.a, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.ap, %.lr.ph.i.i.i.i.i.i ]
  %i.as = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.at = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.au ; 5 uses
  %i.aw = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.ax = ptrtoint ptr %.016.lcssa.i to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = ashr exact i64 %i.ay, 5                 ; 3 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt12__move_mergeIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i
  %i.bb = and i64 %i.ay, 32
  %lcmp.mod108.not = icmp eq i64 %i.bb, 0
  br i1 %lcmp.mod108.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol

.lr.ph.i.i.i.i.i19.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i19.i.preheader
  %i.bc = load i64, ptr %.016.lcssa.i, align 8, !tbaa !454
  store i64 %i.bc, ptr %i.av, align 8, !tbaa !450
  %i.bd = getelementptr inbounds nuw i8, ptr %.016.lcssa.i, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !tbaa.struct !443
  %i.bf = getelementptr inbounds nuw i8, ptr %.016.lcssa.i, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %i.bh = add nsw i64 %i.az, -1
  br label %.lr.ph.i.i.i.i.i19.i.prol.loopexit

.lr.ph.i.i.i.i.i19.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i19.i.prol, %.lr.ph.i.i.i.i.i19.i.preheader
  %.012.i.i.i.i.i20.i.unr = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bh, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0811.i.i.i.i.i21.i.unr = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bg, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0910.i.i.i.i.i22.i.unr = phi ptr [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bf, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.lcssa103.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bg, %.lr.ph.i.i.i.i.i19.i.prol ]
  %i.bi = icmp eq i64 %i.ay, 32
  br i1 %i.bi, label %_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit23.loopexit.i, label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i19.i ], [ %.012.i.i.i.i.i20.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i19.i ], [ %.0811.i.i.i.i.i21.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i19.i ], [ %.0910.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 5 uses
  %i.bj = load i64, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !454
  store i64 %i.bj, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !450
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !tbaa.struct !443
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !454
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !450
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !tbaa.struct !443
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64 ; 2 uses
  %i.bt = add nsw i64 %.012.i.i.i.i.i20.i, -2
  %i.bu = icmp sgt i64 %.012.i.i.i.i.i20.i, 2
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit23.loopexit.i, !llvm.loop !5

_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit23.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i19.i, %.lr.ph.i.i.i.i.i19.i.prol.loopexit
  %.lcssa103 = phi ptr [ %.lcssa103.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.bs, %.lr.ph.i.i.i.i.i19.i ]
  %4 = ptrtoint ptr %.lcssa103 to i64
  br label %_ZSt12__move_mergeIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit

_ZSt12__move_mergeIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit: ; preds = %_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i, %_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit23.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.as, %_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i ], [ %4, %_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit23.loopexit.i ]
  %i.bv = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.as
  %i.bw = getelementptr inbounds i8, ptr %i.av, i64 %i.bv ; 2 uses
  %i.bx = sub i64 %i.b, %i.aw
  %i.by = ashr exact i64 %i.bx, 5                 ; 2 uses
  %.not = icmp slt i64 %i.by, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !645

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.bw, %_ZSt12__move_mergeIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 2 uses
  %.lcssa59 = phi i64 [ %i.e, %bb.a ], [ %i.by, %_ZSt12__move_mergeIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa59) ; 2 uses
  %.idx54 = shl nsw i64 %.sroa.speculated, 5
  %i.bz = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx54 ; 5 uses
  %i.ca = icmp ne i64 %.sroa.speculated, 0
  %i.cb = icmp ne ptr %i.bz, %1
  %i.cc = and i1 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph.i41, label %._crit_edge.i25

.lr.ph.i41:                                       ; preds = %._crit_edge, %bb.h
  %.029.i42 = phi ptr [ %.1.i46, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %.01628.i43 = phi ptr [ %.117.i45, %bb.h ], [ %i.bz, %._crit_edge ] ; 4 uses
  %.sroa.0.027.i44 = phi ptr [ %i.cl, %bb.h ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 4 uses
  %i.cd = load i64, ptr %.01628.i43, align 8, !tbaa !454 ; 2 uses
  %i.ce = load i64, ptr %.029.i42, align 8, !tbaa !454 ; 2 uses
  %i.cf = icmp ult i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 8 ; 2 uses
  br i1 %i.cf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i41
  store i64 %i.cd, ptr %.sroa.0.027.i44, align 8, !tbaa !450
  %i.ch = getelementptr inbounds nuw i8, ptr %.01628.i43, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false), !tbaa.struct !443
  %i.ci = getelementptr inbounds nuw i8, ptr %.01628.i43, i64 32
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i41
  store i64 %i.ce, ptr %.sroa.0.027.i44, align 8, !tbaa !450
  %i.cj = getelementptr inbounds nuw i8, ptr %.029.i42, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false), !tbaa.struct !443
  %i.ck = getelementptr inbounds nuw i8, ptr %.029.i42, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.117.i45 = phi ptr [ %i.ci, %bb.f ], [ %.01628.i43, %bb.g ] ; 3 uses
  %.1.i46 = phi ptr [ %.029.i42, %bb.f ], [ %i.ck, %bb.g ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44, i64 32 ; 2 uses
  %i.cm = icmp ne ptr %.1.i46, %i.bz
  %i.cn = icmp ne ptr %.117.i45, %1
  %i.co = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %i.co, label %.lr.ph.i41, label %._crit_edge.i25, !llvm.loop !644

._crit_edge.i25:                                  ; preds = %bb.h, %._crit_edge
  %.sroa.0.0.lcssa.i26 = phi ptr [ %.sroa.022.0.lcssa, %._crit_edge ], [ %i.cl, %bb.h ] ; 7 uses
  %.016.lcssa.i27 = phi ptr [ %i.bz, %._crit_edge ], [ %.117.i45, %bb.h ] ; 5 uses
  %.0.lcssa.i28 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i46, %bb.h ] ; 5 uses
  %i.cp = ptrtoint ptr %i.bz to i64
  %i.cq = ptrtoint ptr %.0.lcssa.i28 to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 3 uses
  %i.cs = ashr exact i64 %i.cr, 5                 ; 3 uses
  %i.ct = icmp sgt i64 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i37.preheader, label %_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29

.lr.ph.i.i.i.i.i.i37.preheader:                   ; preds = %._crit_edge.i25
  %i.cu = and i64 %i.cr, 32
  %lcmp.mod110.not = icmp eq i64 %i.cu, 0
  br i1 %lcmp.mod110.not, label %.lr.ph.i.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i.i37.prol

.lr.ph.i.i.i.i.i.i37.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i37.preheader
  %i.cv = load i64, ptr %.0.lcssa.i28, align 8, !tbaa !454
  store i64 %i.cv, ptr %.sroa.0.0.lcssa.i26, align 8, !tbaa !450
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i28, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i26, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false), !tbaa.struct !443
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i28, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i26, i64 32 ; 2 uses
  %i.da = add nsw i64 %i.cs, -1
  br label %.lr.ph.i.i.i.i.i.i37.prol.loopexit

.lr.ph.i.i.i.i.i.i37.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i.i37.preheader
  %.012.i.i.i.i.i.i38.unr = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.da, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.0811.i.i.i.i.i.i39.unr = phi ptr [ %.sroa.0.0.lcssa.i26, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.cz, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.0910.i.i.i.i.i.i40.unr = phi ptr [ %.0.lcssa.i28, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.i37.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i37.preheader ], [ %i.cz, %.lr.ph.i.i.i.i.i.i37.prol ]
  %i.db = icmp eq i64 %i.cr, 32
  br i1 %i.db, label %_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29, label %.lr.ph.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i37:                             ; preds = %.lr.ph.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i38 = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i.i37 ], [ %.012.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i39 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i37 ], [ %.0811.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i.i40 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i37 ], [ %.0910.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ] ; 5 uses
  %i.dc = load i64, ptr %.0910.i.i.i.i.i.i40, align 8, !tbaa !454
  store i64 %i.dc, ptr %.0811.i.i.i.i.i.i39, align 8, !tbaa !450
  %i.dd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !tbaa.struct !443
  %i.df = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 32
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !454
  store i64 %i.dh, ptr %i.dg, align 8, !tbaa !450
  %i.di = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 24, i1 false), !tbaa.struct !443
  %i.dk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i40, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i39, i64 64 ; 2 uses
  %i.dm = add nsw i64 %.012.i.i.i.i.i.i38, -2
  %i.dn = icmp sgt i64 %.012.i.i.i.i.i.i38, 2
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i37, label %_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29, !llvm.loop !5

_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29: ; preds = %.lr.ph.i.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i.i37, %._crit_edge.i25
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i26, %._crit_edge.i25 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i37.prol.loopexit ], [ %i.dl, %.lr.ph.i.i.i.i.i.i37 ]
  %i.do = ptrtoint ptr %.016.lcssa.i27 to i64
  %i.dp = sub i64 %i.b, %i.do                     ; 3 uses
  %i.dq = ashr exact i64 %i.dp, 5                 ; 3 uses
  %i.dr = icmp sgt i64 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i19.i32.preheader, label %_ZSt12__move_mergeIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit47

.lr.ph.i.i.i.i.i19.i32.preheader:                 ; preds = %_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29
  %i.ds = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64
  %i.dt = ptrtoint ptr %.sroa.0.0.lcssa.i26 to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26, i64 %i.du ; 4 uses
  %i.dw = and i64 %i.dp, 32
  %lcmp.mod112.not = icmp eq i64 %i.dw, 0
  br i1 %lcmp.mod112.not, label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i32.prol

.lr.ph.i.i.i.i.i19.i32.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i32.preheader
  %i.dx = load i64, ptr %.016.lcssa.i27, align 8, !tbaa !454
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !450
  %i.dy = getelementptr inbounds nuw i8, ptr %.016.lcssa.i27, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 24, i1 false), !tbaa.struct !443
  %i.ea = getelementptr inbounds nuw i8, ptr %.016.lcssa.i27, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ec = add nsw i64 %i.dq, -1
  br label %.lr.ph.i.i.i.i.i19.i32.prol.loopexit

.lr.ph.i.i.i.i.i19.i32.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i32.prol, %.lr.ph.i.i.i.i.i19.i32.preheader
  %.012.i.i.i.i.i20.i33.unr = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.ec, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0811.i.i.i.i.i21.i34.unr = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.eb, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %.0910.i.i.i.i.i22.i35.unr = phi ptr [ %.016.lcssa.i27, %.lr.ph.i.i.i.i.i19.i32.preheader ], [ %i.ea, %.lr.ph.i.i.i.i.i19.i32.prol ]
  %i.ed = icmp eq i64 %i.dp, 32
  br i1 %i.ed, label %_ZSt12__move_mergeIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit47, label %.lr.ph.i.i.i.i.i19.i32

.lr.ph.i.i.i.i.i19.i32:                           ; preds = %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32
  %.012.i.i.i.i.i20.i33 = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i19.i32 ], [ %.012.i.i.i.i.i20.i33.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i34 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0811.i.i.i.i.i21.i34.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 5 uses
  %.0910.i.i.i.i.i22.i35 = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i19.i32 ], [ %.0910.i.i.i.i.i22.i35.unr, %.lr.ph.i.i.i.i.i19.i32.prol.loopexit ] ; 5 uses
  %i.ee = load i64, ptr %.0910.i.i.i.i.i22.i35, align 8, !tbaa !454
  store i64 %i.ee, ptr %.0811.i.i.i.i.i21.i34, align 8, !tbaa !450
  %i.ef = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i64 24, i1 false), !tbaa.struct !443
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 32
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !454
  store i64 %i.ej, ptr %i.ei, align 8, !tbaa !450
  %i.ek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i64 24, i1 false), !tbaa.struct !443
  %i.em = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i35, i64 64
  %i.en = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i34, i64 64
  %i.eo = add nsw i64 %.012.i.i.i.i.i20.i33, -2
  %i.ep = icmp sgt i64 %.012.i.i.i.i.i20.i33, 2
  br i1 %i.ep, label %.lr.ph.i.i.i.i.i19.i32, label %_ZSt12__move_mergeIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit47, !llvm.loop !5

_ZSt12__move_mergeIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SH_SH_SH_SG_T1_.exit47: ; preds = %.lr.ph.i.i.i.i.i19.i32.prol.loopexit, %.lr.ph.i.i.i.i.i19.i32, %_ZSt4moveIPSt4pairImN5clang12StmtSequenceEEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImN5clang12StmtSequenceEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SG_SG_T0_SH_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"class.clang::StmtSequence", align 8 ; 4 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond82 = or i1 %i.a, %i.b
  br i1 %or.cond82, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr7987 = phi i64 [ %4, %.lr.ph ], [ %i.av, %tailrecurse ] ; 4 uses
  %.tr7886 = phi i64 [ %3, %.lr.ph ], [ %i.au, %tailrecurse ] ; 4 uses
  %.tr7684 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr83 = phi ptr [ %0, %.lr.ph ], [ %i.at, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr7987, %.tr7886
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %.tr7684, align 8, !tbaa !454 ; 2 uses
  %i.g = load i64, ptr %.tr83, align 8, !tbaa !454 ; 2 uses
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  store i64 %i.f, ptr %.tr83, align 8, !tbaa !454
  store i64 %i.g, ptr %.tr7684, align 8, !tbaa !454
end_hunk_0
