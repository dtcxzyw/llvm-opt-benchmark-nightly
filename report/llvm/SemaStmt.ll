Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaStmt?download=true
inline.NumInlined: 9372
inline.NumDeleted: 4766
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_less_iterEET0_T_SH_SH_SH_SG_T1_:bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1374
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14, i64 16
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !1356
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14, i64 24 ; 2 uses
  %i.cq = add nsw i64 %.012.i.i.i.i.i13, -1
  %i.cr = icmp sgt i64 %.012.i.i.i.i.i13, 1
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i12, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit17, !llvm.loop !5

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit17: ; preds = %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i16, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit
  %.08.lcssa.i.i.i.i.i10 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit ], [ %i.cp, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i16 ]
  ret ptr %.08.lcssa.i.i.i.i.i10
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZSt12__move_mergeIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_less_iterEET0_T_SH_SH_SH_SG_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %.034 = phi ptr [ %.1, %bb.k ], [ %0, %bb.a ]   ; 11 uses
  %.01633 = phi ptr [ %.117, %bb.k ], [ %2, %bb.a ] ; 11 uses
  %.sroa.0.031 = phi ptr [ %i.aw, %bb.k ], [ %4, %bb.a ] ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01633, i64 12 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !848, !range !746, !noundef !743
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.01633, ptr noundef nonnull align 8 dereferenceable(24) %.034) #26
  br label %_ZNK4llvm6APSIntltERKS0_.exit.i.i

bb.c:                                             ; preds = %.lr.ph
  %i.h = tail call noundef i32 @_ZNK4llvm5APInt13compareSignedERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.01633, ptr noundef nonnull align 8 dereferenceable(24) %.034) #26
  br label %_ZNK4llvm6APSIntltERKS0_.exit.i.i

_ZNK4llvm6APSIntltERKS0_.exit.i.i:                ; preds = %bb.c, %bb.b
  %.in.i.i.i = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp slt i32 %.in.i.i.i, 0
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESA_EEbT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm6APSIntltERKS0_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.034, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !848, !range !746, !noundef !743
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.034, ptr noundef nonnull align 8 dereferenceable(24) %.01633) #26
  br label %_ZNK4llvm6APSIntltERKS0_.exit7.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @_ZNK4llvm5APInt13compareSignedERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.034, ptr noundef nonnull align 8 dereferenceable(24) %.01633) #26
  br label %_ZNK4llvm6APSIntltERKS0_.exit7.i.i

_ZNK4llvm6APSIntltERKS0_.exit7.i.i:               ; preds = %bb.f, %bb.e
  %.in.i6.i.i = phi i32 [ %i.m, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp slt i32 %.in.i6.i.i, 0
  br i1 %i.o, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESA_EEbT_T0_.exit.thread29, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESA_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESA_EEbT_T0_.exit: ; preds = %_ZNK4llvm6APSIntltERKS0_.exit7.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.01633, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1356
  %i.r = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1356
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESA_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESA_EEbT_T0_.exit.thread29

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESA_EEbT_T0_.exit.thread: ; preds = %_ZNK4llvm6APSIntltERKS0_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESA_EEbT_T0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !846
  %i.w = icmp ult i32 %i.v, 65
  br i1 %i.w, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESA_EEbT_T0_.exit.thread
  %i.x = load ptr, ptr %.sroa.0.031, align 8, !tbaa !750 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #28
  br label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit

_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESA_EEbT_T0_.exit.thread, %bb.g, %bb.h
  %i.z = load i64, ptr %.01633, align 8
  store i64 %i.z, ptr %.sroa.0.031, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.01633, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !846
  store i32 %i.ab, ptr %i.u, align 8, !tbaa !846
  store i32 0, ptr %i.aa, align 8, !tbaa !846
  %i.ac = load i8, ptr %i.d, align 4, !tbaa !848, !range !746, !noundef !743
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 12
  store i8 %i.ac, ptr %i.ad, align 4, !tbaa !848
  %i.ae = getelementptr inbounds nuw i8, ptr %.01633, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1374
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !1356
  %i.ah = getelementptr inbounds nuw i8, ptr %.01633, i64 24
  br label %bb.k

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESA_EEbT_T0_.exit.thread29: ; preds = %_ZNK4llvm6APSIntltERKS0_.exit7.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESA_EEbT_T0_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !846
  %i.ak = icmp ult i32 %i.aj, 65
  br i1 %i.ak, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit18, label %bb.i

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESA_EEbT_T0_.exit.thread29
  %i.al = load ptr, ptr %.sroa.0.031, align 8, !tbaa !750 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit18, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.al) #28
  br label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit18

_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit18: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESA_EEbT_T0_.exit.thread29, %bb.i, %bb.j
  %i.an = load i64, ptr %.034, align 8
  store i64 %i.an, ptr %.sroa.0.031, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.034, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !846
  store i32 %i.ap, ptr %i.ai, align 8, !tbaa !846
  store i32 0, ptr %i.ao, align 8, !tbaa !846
  %i.aq = load i8, ptr %i.j, align 4, !tbaa !848, !range !746, !noundef !743
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 12
  store i8 %i.aq, ptr %i.ar, align 4, !tbaa !848
  %i.as = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1374
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1356
  %i.av = getelementptr inbounds nuw i8, ptr %.034, i64 24
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit18, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit
  %.117 = phi ptr [ %i.ah, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit ], [ %.01633, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit18 ] ; 3 uses
  %.1 = phi ptr [ %.034, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit ], [ %i.av, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit18 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 24 ; 2 uses
  %i.ax = icmp ne ptr %.1, %1
  %i.ay = icmp ne ptr %.117, %3
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !2325

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.aw, %bb.k ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.k ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.k ] ; 2 uses
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = ptrtoint ptr %.0.lcssa to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.be = udiv exact i64 %i.bc, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bv, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i ], [ %i.be, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bu, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bt, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !846
  %i.bh = icmp ult i32 %i.bg, 65
  br i1 %i.bh, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bi = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !750 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdaPv(ptr noundef nonnull %i.bi) #28
  br label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i

_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l, %.lr.ph.i.i.i.i.i
  %i.bk = load i64, ptr %.0910.i.i.i.i.i, align 8
  store i64 %i.bk, ptr %.0811.i.i.i.i.i, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !846
  store i32 %i.bm, ptr %i.bf, align 8, !tbaa !846
  store i32 0, ptr %i.bl, align 8, !tbaa !846
  %i.bn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 12
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !848, !range !746, !noundef !743
  %i.bp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 12
  store i8 %i.bo, ptr %i.bp, align 4, !tbaa !848
  %i.bq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1374
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !1356
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 2 uses
  %i.bv = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bw = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit, !llvm.loop !5

_ZSt4moveIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit: ; preds = %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.bu, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i ]
  %i.bx = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.by = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.bz ; 3 uses
  %i.cb = ptrtoint ptr %3 to i64
  %i.cc = ptrtoint ptr %.016.lcssa to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.preheader.i.i.i.i.i20, label %_ZSt4moveIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit26

.lr.ph.preheader.i.i.i.i.i20:                     ; preds = %_ZSt4moveIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit
  %i.cf = udiv exact i64 %i.cd, 24
  br label %.lr.ph.i.i.i.i.i21

.lr.ph.i.i.i.i.i21:                               ; preds = %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i25, %.lr.ph.preheader.i.i.i.i.i20
  %.012.i.i.i.i.i22 = phi i64 [ %i.cw, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i25 ], [ %i.cf, %.lr.ph.preheader.i.i.i.i.i20 ] ; 2 uses
  %.0811.i.i.i.i.i23 = phi ptr [ %i.cv, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i25 ], [ %i.ca, %.lr.ph.preheader.i.i.i.i.i20 ] ; 6 uses
  %.0910.i.i.i.i.i24 = phi ptr [ %i.cu, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i25 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i20 ] ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !846
  %i.ci = icmp ult i32 %i.ch, 65
  br i1 %i.ci, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i25, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i21
  %i.cj = load ptr, ptr %.0811.i.i.i.i.i23, align 8, !tbaa !750 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i25, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdaPv(ptr noundef nonnull %i.cj) #28
  br label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i25

_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i25: ; preds = %bb.o, %bb.n, %.lr.ph.i.i.i.i.i21
  %i.cl = load i64, ptr %.0910.i.i.i.i.i24, align 8
  store i64 %i.cl, ptr %.0811.i.i.i.i.i23, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 8 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !846
  store i32 %i.cn, ptr %i.cg, align 8, !tbaa !846
  store i32 0, ptr %i.cm, align 8, !tbaa !846
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 12
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !848, !range !746, !noundef !743
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 12
  store i8 %i.cp, ptr %i.cq, align 4, !tbaa !848
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1374
  %i.ct = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !1356
  %i.cu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 24 ; 2 uses
  %i.cw = add nsw i64 %.012.i.i.i.i.i22, -1
  %i.cx = icmp sgt i64 %.012.i.i.i.i.i22, 1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i21, label %_ZSt4moveIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit26, !llvm.loop !5

_ZSt4moveIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit26: ; preds = %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i25, %_ZSt4moveIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit
  %.08.lcssa.i.i.i.i.i19 = phi ptr [ %i.ca, %_ZSt4moveIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit ], [ %i.cv, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i25 ]
  %5 = ptrtoint ptr %.08.lcssa.i.i.i.i.i19 to i64
  %i.cy = sub i64 %5, %i.bx
  %i.cz = getelementptr inbounds i8, ptr %i.ca, i64 %i.cy
  ret ptr %i.cz
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt21__move_merge_adaptiveIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_less_iterEEvT_SG_T0_SH_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %.not25 = icmp eq ptr %0, %1
  br i1 %.not25, label %.critedge12, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.029 = phi ptr [ %.1, %bb.l ], [ %0, %bb.a ]   ; 13 uses
  %.sroa.0.027 = phi ptr [ %i.at, %bb.l ], [ %4, %bb.a ] ; 12 uses
  %.sroa.017.026 = phi ptr [ %.sroa.017.1, %bb.l ], [ %2, %bb.a ] ; 12 uses
  %.not21 = icmp eq ptr %.sroa.017.026, %3
  br i1 %.not21, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 12 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !848, !range !746, !noundef !743
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017.026, ptr noundef nonnull align 8 dereferenceable(24) %.029) #26
  br label %_ZNK4llvm6APSIntltERKS0_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noundef i32 @_ZNK4llvm5APInt13compareSignedERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017.026, ptr noundef nonnull align 8 dereferenceable(24) %.029) #26
  br label %_ZNK4llvm6APSIntltERKS0_.exit.i.i

_ZNK4llvm6APSIntltERKS0_.exit.i.i:                ; preds = %bb.d, %bb.c
  %.in.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  %i.f = icmp slt i32 %.in.i.i.i, 0
  br i1 %i.f, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorISA_SaISA_EEEESB_EEbT_T0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm6APSIntltERKS0_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.029, i64 12 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !848, !range !746, !noundef !743
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.029, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017.026) #26
  br label %_ZNK4llvm6APSIntltERKS0_.exit7.i.i

bb.g:                                             ; preds = %bb.e
  %i.k = tail call noundef i32 @_ZNK4llvm5APInt13compareSignedERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.029, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017.026) #26
  br label %_ZNK4llvm6APSIntltERKS0_.exit7.i.i

_ZNK4llvm6APSIntltERKS0_.exit7.i.i:               ; preds = %bb.g, %bb.f
  %.in.i6.i.i = phi i32 [ %i.j, %bb.f ], [ %i.k, %bb.g ]
  %i.l = icmp slt i32 %.in.i6.i.i, 0
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorISA_SaISA_EEEESB_EEbT_T0_.exit.thread20, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorISA_SaISA_EEEESB_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorISA_SaISA_EEEESB_EEbT_T0_.exit: ; preds = %_ZNK4llvm6APSIntltERKS0_.exit7.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1356
  %i.o = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1356
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorISA_SaISA_EEEESB_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorISA_SaISA_EEEESB_EEbT_T0_.exit.thread20

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorISA_SaISA_EEEESB_EEbT_T0_.exit.thread: ; preds = %_ZNK4llvm6APSIntltERKS0_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorISA_SaISA_EEEESB_EEbT_T0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !846
  %i.t = icmp ult i32 %i.s, 65
  br i1 %i.t, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorISA_SaISA_EEEESB_EEbT_T0_.exit.thread
  %i.u = load ptr, ptr %.sroa.0.027, align 8, !tbaa !750 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #28
  br label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit

_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorISA_SaISA_EEEESB_EEbT_T0_.exit.thread, %bb.h, %bb.i
  %i.w = load i64, ptr %.sroa.017.026, align 8
  store i64 %i.w, ptr %.sroa.0.027, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !846
  store i32 %i.y, ptr %i.r, align 8, !tbaa !846
  store i32 0, ptr %i.x, align 8, !tbaa !846
  %i.z = load i8, ptr %i.a, align 4, !tbaa !848, !range !746, !noundef !743
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 12
  store i8 %i.z, ptr %i.aa, align 4, !tbaa !848
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1374
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !1356
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 24
  br label %bb.l

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorISA_SaISA_EEEESB_EEbT_T0_.exit.thread20: ; preds = %_ZNK4llvm6APSIntltERKS0_.exit7.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorISA_SaISA_EEEESB_EEbT_T0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !846
  %i.ah = icmp ult i32 %i.ag, 65
  br i1 %i.ah, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit13, label %bb.j

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorISA_SaISA_EEEESB_EEbT_T0_.exit.thread20
  %i.ai = load ptr, ptr %.sroa.0.027, align 8, !tbaa !750 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit13, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.ai) #28
  br label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit13

_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit13: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorISA_SaISA_EEEESB_EEbT_T0_.exit.thread20, %bb.j, %bb.k
  %i.ak = load i64, ptr %.029, align 8
  store i64 %i.ak, ptr %.sroa.0.027, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.029, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !846
  store i32 %i.am, ptr %i.af, align 8, !tbaa !846
  store i32 0, ptr %i.al, align 8, !tbaa !846
  %i.an = load i8, ptr %i.g, align 4, !tbaa !848, !range !746, !noundef !743
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 12
  store i8 %i.an, ptr %i.ao, align 4, !tbaa !848
  %i.ap = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1374
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !1356
  %i.as = getelementptr inbounds nuw i8, ptr %.029, i64 24
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit13, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit
  %.sroa.017.1 = phi ptr [ %i.ae, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit ], [ %.sroa.017.026, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit13 ]
  %.1 = phi ptr [ %.029, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit ], [ %i.as, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit13 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 24
  %.not = icmp eq ptr %.1, %1
  br i1 %.not, label %.critedge12, label %.lr.ph, !llvm.loop !2326

.critedge:                                        ; preds = %.lr.ph
  %i.au = ptrtoint ptr %1 to i64
  %i.av = ptrtoint ptr %.029 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.preheader.i.i.i.i.i, label %.critedge12

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.critedge
  %i.ay = udiv exact i64 %i.aw, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bp, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i ], [ %i.ay, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bo, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i ], [ %.sroa.0.027, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bn, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i ], [ %.029, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !846
  %i.bb = icmp ult i32 %i.ba, 65
  br i1 %i.bb, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bc = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !750 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.bc) #28
  br label %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i

_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m, %.lr.ph.i.i.i.i.i
  %i.be = load i64, ptr %.0910.i.i.i.i.i, align 8
  store i64 %i.be, ptr %.0811.i.i.i.i.i, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !846
  store i32 %i.bg, ptr %i.az, align 8, !tbaa !846
  store i32 0, ptr %i.bf, align 8, !tbaa !846
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 12
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !848, !range !746, !noundef !743
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 12
  store i8 %i.bi, ptr %i.bj, align 4, !tbaa !848
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1374
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !1356
  %i.bn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.bp = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bq = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i, label %.critedge12, !llvm.loop !5

.critedge12:                                      ; preds = %bb.l, %_ZNSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEaSEOS5_.exit.i.i.i.i.i, %bb.a, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_less_iterEEvT_SG_T0_SH_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIN4llvm6APSIntEPN5clang8CaseStmtEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit
end_hunk_0
