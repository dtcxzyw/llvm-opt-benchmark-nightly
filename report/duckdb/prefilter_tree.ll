Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/prefilter_tree?download=true
inline.NumInlined: 1486
inline.NumDeleted: 584
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_:bb.a
  %i.fy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 8
  store i32 %i.fx, ptr %i.fy, align 8, !tbaa !94
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 16
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !87
  store i64 %i.gb, ptr %i.ga, align 8, !tbaa !93
  %i.gc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23, i64 24
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !15
  %i.ge = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 24
  store i32 %i.gd, ptr %i.ge, align 8, !tbaa !94
  %i.gf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 32
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !87
  store i64 %i.gh, ptr %i.gg, align 8, !tbaa !93
  %i.gi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23, i64 40
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !15
  %i.gk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 40
  store i32 %i.gj, ptr %i.gk, align 8, !tbaa !94
  %i.gl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23, i64 48
  %i.gm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 48
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !87
  store i64 %i.gn, ptr %i.gm, align 8, !tbaa !93
  %i.go = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23, i64 56
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !15
  %i.gq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 56
  store i32 %i.gp, ptr %i.gq, align 8, !tbaa !94
  %i.gr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23, i64 64
  %i.gs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 64
  %i.gt = add nsw i64 %.012.i.i.i.i.i11.i21, -4
  %i.gu = icmp sgt i64 %.012.i.i.i.i.i11.i21, 4
  br i1 %i.gu, label %.lr.ph.i.i.i.i.i10.i20, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit44, !llvm.loop !4

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit44: ; preds = %.lr.ph.i.i.i.i.i10.i20.prol.loopexit, %.lr.ph.i.i.i.i.i10.i20, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt17__merge_sort_loopIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not66 = icmp slt i64 %i.e, %i.a
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %3, 4                       ; 2 uses
  %.idx57 = shl nsw i64 %3, 5                     ; 2 uses
  %.not58 = icmp eq i64 %.idx, %.idx57
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit
  %.sroa.018.068 = phi ptr [ %2, %.lr.ph ], [ %i.df, %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 2 uses
  %.067 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.067, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.067, i64 %.idx57 ; 4 uses
  br i1 %.not58, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.031.i = phi ptr [ %.1.i, %bb.d ], [ %.067, %bb.b ] ; 5 uses
  %.01630.i = phi ptr [ %.117.i, %bb.d ], [ %i.f, %bb.b ] ; 5 uses
  %.sroa.0.028.i = phi ptr [ %i.w, %bb.d ], [ %.sroa.018.068, %bb.b ] ; 5 uses
  %i.h = load i64, ptr %.01630.i, align 8, !tbaa !93 ; 3 uses
  %i.i = load i64, ptr %.031.i, align 8, !tbaa !93 ; 3 uses
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i, label %bb.c

.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i: ; preds = %.lr.ph.i
  %.phi.trans.insert36.i = getelementptr inbounds nuw i8, ptr %.01630.i, i64 8
  %.pre37.i = load i32, ptr %.phi.trans.insert36.i, align 8, !tbaa !15
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = icmp ult i64 %i.i, %i.h
  br i1 %i.k, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i: ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.031.i, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.01630.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.031.i, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !94   ; 2 uses
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i, %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i
  %i.q = phi i32 [ %.pre37.i, %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i ], [ %i.m, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i ]
  store i64 %i.h, ptr %.sroa.0.028.i, align 8, !tbaa !93
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %.01630.i, i64 16
  br label %bb.d

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i
  %i.t = phi i32 [ %.pre.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i ], [ %i.o, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i ]
  store i64 %i.i, ptr %.sroa.0.028.i, align 8, !tbaa !93
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8
  store i32 %i.t, ptr %i.u, align 8, !tbaa !94
  %i.v = getelementptr inbounds nuw i8, ptr %.031.i, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i
  %.117.i = phi ptr [ %i.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i ], [ %.01630.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i ] ; 3 uses
  %.1.i = phi ptr [ %.031.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i ], [ %i.v, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 16 ; 2 uses
  %i.x = icmp ne ptr %.1.i, %i.f
  %i.y = icmp ne ptr %.117.i, %i.g
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !232

._crit_edge.i:                                    ; preds = %bb.d, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.018.068, %bb.b ], [ %i.w, %bb.d ] ; 5 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %bb.d ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.067, %bb.b ], [ %.1.i, %bb.d ] ; 3 uses
  %i.aa = ptrtoint ptr %i.f to i64
  %i.ab = ptrtoint ptr %.0.lcssa.i to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 4                 ; 5 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.i.prol = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.prol ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.af = load i64, ptr %.0910.i.i.i.i.i.i.prol, align 8, !tbaa !87
  store i64 %i.af, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !93
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 8
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.al = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !233

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa111.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.am = icmp ult i64 %i.ad, 4
  br i1 %i.am, label %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.an = load i64, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !87
  store i64 %i.an, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !93
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !94
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !87
  store i64 %i.at, ptr %i.as, align 8, !tbaa !93
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !94
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !87
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !93
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !94
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !87
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !93
  %i.bg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !94
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bl = add nsw i64 %.012.i.i.i.i.i.i, -4
  %i.bm = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, !llvm.loop !4

_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %.lcssa111.unr.a, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bk, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 2 uses
  %i.bo = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.bp ; 4 uses
  %i.br = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.bs = ptrtoint ptr %.016.lcssa.i to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 4                 ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %xtraiter116 = and i64 %i.bu, 3                 ; 2 uses
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol

.lr.ph.i.i.i.i.i19.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i19.i.preheader, %.lr.ph.i.i.i.i.i19.i.prol
  %.012.i.i.i.i.i20.i.prol = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %.0811.i.i.i.i.i21.i.prol = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.bq, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.prol = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i19.i.prol ], [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 3 uses
  %prol.iter118 = phi i64 [ %prol.iter118.next, %.lr.ph.i.i.i.i.i19.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %i.bw = load i64, ptr %.0910.i.i.i.i.i22.i.prol, align 8, !tbaa !87
  store i64 %i.bw, ptr %.0811.i.i.i.i.i21.i.prol, align 8, !tbaa !93
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 8
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !94
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 16 ; 3 uses
  %i.cc = add nsw i64 %.012.i.i.i.i.i20.i.prol, -1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol, !llvm.loop !234

.lr.ph.i.i.i.i.i19.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i19.i.prol, %.lr.ph.i.i.i.i.i19.i.preheader
  %.012.i.i.i.i.i20.i.unr = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.cc, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0811.i.i.i.i.i21.i.unr = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.cb, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0910.i.i.i.i.i22.i.unr = phi ptr [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.lcssa112.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.cb, %.lr.ph.i.i.i.i.i19.i.prol ]
  %i.cd = icmp ult i64 %i.bu, 4
  br i1 %i.cd, label %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit, label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i19.i ], [ %.012.i.i.i.i.i20.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i19.i ], [ %.0811.i.i.i.i.i21.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i19.i ], [ %.0910.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %i.ce = load i64, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !87
  store i64 %i.ce, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !93
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !94
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !87
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !93
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 24
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 24
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !94
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !87
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !93
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !94
  %i.cu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 48
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !87
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !93
  %i.cx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 56
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !15
  %i.cz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 56
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !94
  %i.da = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64 ; 2 uses
  %i.dc = add nsw i64 %.012.i.i.i.i.i20.i, -4
  %i.dd = icmp sgt i64 %.012.i.i.i.i.i20.i, 4
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit, !llvm.loop !4

_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i, %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.bq, %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ], [ %.lcssa112.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.db, %.lr.ph.i.i.i.i.i19.i ]
  %4 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.de = sub i64 %4, %i.bn
  %i.df = getelementptr inbounds i8, ptr %i.bq, i64 %i.de ; 2 uses
  %i.dg = sub i64 %i.b, %i.br
  %i.dh = ashr exact i64 %i.dg, 4                 ; 2 uses
  %.not = icmp slt i64 %i.dh, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !235

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 3 uses
  %.sroa.018.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.df, %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 2 uses
  %.lcssa64 = phi i64 [ %i.e, %bb.a ], [ %i.dh, %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa64) ; 2 uses
  %.idx59 = shl nsw i64 %.sroa.speculated, 4
  %i.di = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx59 ; 5 uses
  %i.dj = icmp ne i64 %.sroa.speculated, 0
  %i.dk = icmp ne ptr %i.di, %1
  %i.dl = and i1 %i.dj, %i.dk
  br i1 %i.dl, label %.lr.ph.i37, label %._crit_edge.i21

.lr.ph.i37:                                       ; preds = %._crit_edge, %bb.f
  %.031.i38 = phi ptr [ %.1.i44, %bb.f ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %.01630.i39 = phi ptr [ %.117.i43, %bb.f ], [ %i.di, %._crit_edge ] ; 5 uses
  %.sroa.0.028.i40 = phi ptr [ %i.eb, %bb.f ], [ %.sroa.018.0.lcssa, %._crit_edge ] ; 5 uses
  %i.dm = load i64, ptr %.01630.i39, align 8, !tbaa !93 ; 3 uses
  %i.dn = load i64, ptr %.031.i38, align 8, !tbaa !93 ; 3 uses
  %i.do = icmp ult i64 %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i49, label %bb.e

.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i49: ; preds = %.lr.ph.i37
  %.phi.trans.insert36.i50 = getelementptr inbounds nuw i8, ptr %.01630.i39, i64 8
  %.pre37.i51 = load i32, ptr %.phi.trans.insert36.i50, align 8, !tbaa !15
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i45

bb.e:                                             ; preds = %.lr.ph.i37
  %i.dp = icmp ult i64 %i.dn, %i.dm
  br i1 %i.dp, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i46, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i41

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i46: ; preds = %bb.e
  %.phi.trans.insert.i47 = getelementptr inbounds nuw i8, ptr %.031.i38, i64 8
  %.pre.i48 = load i32, ptr %.phi.trans.insert.i47, align 8, !tbaa !15
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i42

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i41: ; preds = %bb.e
  %i.dq = getelementptr inbounds nuw i8, ptr %.01630.i39, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !94 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.031.i38, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !94 ; 2 uses
  %i.du = icmp slt i32 %i.dr, %i.dt
  br i1 %i.du, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i45, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i42

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i45: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i41, %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i49
  %i.dv = phi i32 [ %.pre37.i51, %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i49 ], [ %i.dr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i41 ]
  store i64 %i.dm, ptr %.sroa.0.028.i40, align 8, !tbaa !93
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i40, i64 8
  store i32 %i.dv, ptr %i.dw, align 8, !tbaa !94
  %i.dx = getelementptr inbounds nuw i8, ptr %.01630.i39, i64 16
  br label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i42: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i41, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i46
  %i.dy = phi i32 [ %.pre.i48, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i46 ], [ %i.dt, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i41 ]
  store i64 %i.dn, ptr %.sroa.0.028.i40, align 8, !tbaa !93
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i40, i64 8
  store i32 %i.dy, ptr %i.dz, align 8, !tbaa !94
  %i.ea = getelementptr inbounds nuw i8, ptr %.031.i38, i64 16
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i42, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i45
  %.117.i43 = phi ptr [ %i.dx, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i45 ], [ %.01630.i39, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i42 ] ; 3 uses
  %.1.i44 = phi ptr [ %.031.i38, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i45 ], [ %i.ea, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i42 ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i40, i64 16 ; 2 uses
  %i.ec = icmp ne ptr %.1.i44, %i.di
  %i.ed = icmp ne ptr %.117.i43, %1
  %i.ee = select i1 %i.ec, i1 %i.ed, i1 false
  br i1 %i.ee, label %.lr.ph.i37, label %._crit_edge.i21, !llvm.loop !232

._crit_edge.i21:                                  ; preds = %bb.f, %._crit_edge
  %.sroa.0.0.lcssa.i22 = phi ptr [ %.sroa.018.0.lcssa, %._crit_edge ], [ %i.eb, %bb.f ] ; 5 uses
  %.016.lcssa.i23 = phi ptr [ %i.di, %._crit_edge ], [ %.117.i43, %bb.f ] ; 3 uses
  %.0.lcssa.i24 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i44, %bb.f ] ; 3 uses
  %i.ef = ptrtoint ptr %i.di to i64
  %i.eg = ptrtoint ptr %.0.lcssa.i24 to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 4                 ; 5 uses
  %i.ej = icmp sgt i64 %i.ei, 0
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i33.preheader, label %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i25

.lr.ph.i.i.i.i.i.i33.preheader:                   ; preds = %._crit_edge.i21
  %xtraiter119 = and i64 %i.ei, 3                 ; 2 uses
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %.lr.ph.i.i.i.i.i.i33.prol.loopexit, label %.lr.ph.i.i.i.i.i.i33.prol

.lr.ph.i.i.i.i.i.i33.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i33.preheader, %.lr.ph.i.i.i.i.i.i33.prol
  %.012.i.i.i.i.i.i34.prol = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i.i33.prol ], [ %i.ei, %.lr.ph.i.i.i.i.i.i33.preheader ]
  %.0811.i.i.i.i.i.i35.prol = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i33.prol ], [ %.sroa.0.0.lcssa.i22, %.lr.ph.i.i.i.i.i.i33.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i36.prol = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i33.prol ], [ %.0.lcssa.i24, %.lr.ph.i.i.i.i.i.i33.preheader ] ; 3 uses
  %prol.iter121 = phi i64 [ %prol.iter121.next, %.lr.ph.i.i.i.i.i.i33.prol ], [ 0, %.lr.ph.i.i.i.i.i.i33.preheader ]
  %i.ek = load i64, ptr %.0910.i.i.i.i.i.i36.prol, align 8, !tbaa !87
  store i64 %i.ek, ptr %.0811.i.i.i.i.i.i35.prol, align 8, !tbaa !93
  %i.el = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36.prol, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35.prol, i64 8
  store i32 %i.em, ptr %i.en, align 8, !tbaa !94
  %i.eo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36.prol, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35.prol, i64 16 ; 3 uses
  %i.eq = add nsw i64 %.012.i.i.i.i.i.i34.prol, -1 ; 2 uses
  %prol.iter121.next = add i64 %prol.iter121, 1   ; 2 uses
  %prol.iter121.cmp.not = icmp eq i64 %prol.iter121.next, %xtraiter119
  br i1 %prol.iter121.cmp.not, label %.lr.ph.i.i.i.i.i.i33.prol.loopexit, label %.lr.ph.i.i.i.i.i.i33.prol, !llvm.loop !236

.lr.ph.i.i.i.i.i.i33.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i33.prol, %.lr.ph.i.i.i.i.i.i33.preheader
  %.012.i.i.i.i.i.i34.unr = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i.i33.preheader ], [ %i.eq, %.lr.ph.i.i.i.i.i.i33.prol ]
  %.0811.i.i.i.i.i.i35.unr = phi ptr [ %.sroa.0.0.lcssa.i22, %.lr.ph.i.i.i.i.i.i33.preheader ], [ %i.ep, %.lr.ph.i.i.i.i.i.i33.prol ]
  %.0910.i.i.i.i.i.i36.unr = phi ptr [ %.0.lcssa.i24, %.lr.ph.i.i.i.i.i.i33.preheader ], [ %i.eo, %.lr.ph.i.i.i.i.i.i33.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i33.preheader ], [ %i.ep, %.lr.ph.i.i.i.i.i.i33.prol ]
  %i.er = icmp ult i64 %i.ei, 4
  br i1 %i.er, label %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i25, label %.lr.ph.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i33:                             ; preds = %.lr.ph.i.i.i.i.i.i33.prol.loopexit, %.lr.ph.i.i.i.i.i.i33
  %.012.i.i.i.i.i.i34 = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i.i33 ], [ %.012.i.i.i.i.i.i34.unr, %.lr.ph.i.i.i.i.i.i33.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i35 = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i33 ], [ %.0811.i.i.i.i.i.i35.unr, %.lr.ph.i.i.i.i.i.i33.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i36 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i33 ], [ %.0910.i.i.i.i.i.i36.unr, %.lr.ph.i.i.i.i.i.i33.prol.loopexit ] ; 9 uses
  %i.es = load i64, ptr %.0910.i.i.i.i.i.i36, align 8, !tbaa !87
  store i64 %i.es, ptr %.0811.i.i.i.i.i.i35, align 8, !tbaa !93
  %i.et = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 8
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !15
  %i.ev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 8
  store i32 %i.eu, ptr %i.ev, align 8, !tbaa !94
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 16
  %i.ey = load i64, ptr %i.ew, align 8, !tbaa !87
  store i64 %i.ey, ptr %i.ex, align 8, !tbaa !93
  %i.ez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !15
  %i.fb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 24
  store i32 %i.fa, ptr %i.fb, align 8, !tbaa !94
  %i.fc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 32
  %i.fd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 32
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !87
  store i64 %i.fe, ptr %i.fd, align 8, !tbaa !93
  %i.ff = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 40
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !15
  %i.fh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 40
  store i32 %i.fg, ptr %i.fh, align 8, !tbaa !94
  %i.fi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 48
  %i.fj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 48
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !87
  store i64 %i.fk, ptr %i.fj, align 8, !tbaa !93
  %i.fl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 56
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !15
  %i.fn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 56
  store i32 %i.fm, ptr %i.fn, align 8, !tbaa !94
  %i.fo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 64
  %i.fp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 64 ; 2 uses
  %i.fq = add nsw i64 %.012.i.i.i.i.i.i34, -4
  %i.fr = icmp sgt i64 %.012.i.i.i.i.i.i34, 4
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i.i33, label %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i25, !llvm.loop !4

_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i25: ; preds = %.lr.ph.i.i.i.i.i.i33.prol.loopexit, %.lr.ph.i.i.i.i.i.i33, %._crit_edge.i21
  %.08.lcssa.i.i.i.i.i.i26 = phi ptr [ %.sroa.0.0.lcssa.i22, %._crit_edge.i21 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i33.prol.loopexit ], [ %i.fp, %.lr.ph.i.i.i.i.i.i33 ]
  %i.fs = ptrtoint ptr %.016.lcssa.i23 to i64
  %i.ft = sub i64 %i.b, %i.fs
  %i.fu = ashr exact i64 %i.ft, 4                 ; 5 uses
  %i.fv = icmp sgt i64 %i.fu, 0
  br i1 %i.fv, label %.lr.ph.i.i.i.i.i19.i28.preheader, label %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit52

.lr.ph.i.i.i.i.i19.i28.preheader:                 ; preds = %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i25
  %i.fw = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i26 to i64
  %i.fx = ptrtoint ptr %.sroa.0.0.lcssa.i22 to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i22, i64 %i.fy ; 2 uses
  %xtraiter122 = and i64 %i.fu, 3                 ; 2 uses
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.lr.ph.i.i.i.i.i19.i28.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i28.prol

.lr.ph.i.i.i.i.i19.i28.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i28.preheader, %.lr.ph.i.i.i.i.i19.i28.prol
  %.012.i.i.i.i.i20.i29.prol = phi i64 [ %i.gg, %.lr.ph.i.i.i.i.i19.i28.prol ], [ %i.fu, %.lr.ph.i.i.i.i.i19.i28.preheader ]
  %.0811.i.i.i.i.i21.i30.prol = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i19.i28.prol ], [ %i.fz, %.lr.ph.i.i.i.i.i19.i28.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i31.prol = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i19.i28.prol ], [ %.016.lcssa.i23, %.lr.ph.i.i.i.i.i19.i28.preheader ] ; 3 uses
  %prol.iter124 = phi i64 [ %prol.iter124.next, %.lr.ph.i.i.i.i.i19.i28.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i28.preheader ]
  %i.ga = load i64, ptr %.0910.i.i.i.i.i22.i31.prol, align 8, !tbaa !87
  store i64 %i.ga, ptr %.0811.i.i.i.i.i21.i30.prol, align 8, !tbaa !93
  %i.gb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i31.prol, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !15
  %i.gd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i30.prol, i64 8
  store i32 %i.gc, ptr %i.gd, align 8, !tbaa !94
  %i.ge = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i31.prol, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i30.prol, i64 16 ; 2 uses
  %i.gg = add nsw i64 %.012.i.i.i.i.i20.i29.prol, -1 ; 2 uses
  %prol.iter124.next = add i64 %prol.iter124, 1   ; 2 uses
  %prol.iter124.cmp.not = icmp eq i64 %prol.iter124.next, %xtraiter122
  br i1 %prol.iter124.cmp.not, label %.lr.ph.i.i.i.i.i19.i28.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i28.prol, !llvm.loop !237

.lr.ph.i.i.i.i.i19.i28.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i28.prol, %.lr.ph.i.i.i.i.i19.i28.preheader
  %.012.i.i.i.i.i20.i29.unr = phi i64 [ %i.fu, %.lr.ph.i.i.i.i.i19.i28.preheader ], [ %i.gg, %.lr.ph.i.i.i.i.i19.i28.prol ]
  %.0811.i.i.i.i.i21.i30.unr = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i19.i28.preheader ], [ %i.gf, %.lr.ph.i.i.i.i.i19.i28.prol ]
  %.0910.i.i.i.i.i22.i31.unr = phi ptr [ %.016.lcssa.i23, %.lr.ph.i.i.i.i.i19.i28.preheader ], [ %i.ge, %.lr.ph.i.i.i.i.i19.i28.prol ]
  %i.gh = icmp ult i64 %i.fu, 4
  br i1 %i.gh, label %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit52, label %.lr.ph.i.i.i.i.i19.i28

.lr.ph.i.i.i.i.i19.i28:                           ; preds = %.lr.ph.i.i.i.i.i19.i28.prol.loopexit, %.lr.ph.i.i.i.i.i19.i28
  %.012.i.i.i.i.i20.i29 = phi i64 [ %i.hg, %.lr.ph.i.i.i.i.i19.i28 ], [ %.012.i.i.i.i.i20.i29.unr, %.lr.ph.i.i.i.i.i19.i28.prol.loopexit ] ; 2 uses
end_hunk_0
