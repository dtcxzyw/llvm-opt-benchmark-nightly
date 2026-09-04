Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LineTable?download=true
inline.NumInlined: 1085
inline.NumDeleted: 477
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZSt12__move_mergeIPN12lldb_private9LineTable8SequenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterINS1_23LessThanBinaryPredicateEEEET0_T_SF_SF_SF_SE_T1_:bb.a

.split:                                           ; preds = %.lr.ph
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %bb.i, label %bb.k

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 6 uses
  %i.k = lshr i32 %i.j, 31                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i32, ptr %i.l, align 8              ; 6 uses
  %i.n = lshr i32 %i.m, 31                        ; 2 uses
  %.not55.i.i.i = icmp eq i32 %i.k, %i.n
  br i1 %.not55.i.i.i, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12lldb_private9LineTable23LessThanBinaryPredicateEEclIPNS3_8SequenceES8_EEbT_T0_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = and i32 %i.m, 134217727                  ; 2 uses
  %i.p = and i32 %i.j, 134217727                  ; 2 uses
  %.not56.i.i.i = icmp eq i32 %i.o, %i.p
  br i1 %.not56.i.i.i, label %bb.d, label %.split38

.split38:                                         ; preds = %bb.c
  %i.q = icmp samesign ult i32 %i.o, %i.p
  br i1 %i.q, label %bb.i, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.s = load i16, ptr %i.r, align 4, !tbaa !33   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.u = load i16, ptr %i.t, align 4, !tbaa !33   ; 2 uses
  %.not57.i.i.i = icmp eq i16 %i.s, %i.u
  br i1 %.not57.i.i.i, label %bb.e, label %.split37

.split37:                                         ; preds = %bb.d
  %i.v = icmp ult i16 %i.s, %i.u
  br i1 %i.v, label %bb.i, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.w = lshr i32 %i.m, 27
  %i.x = and i32 %i.w, 1                          ; 2 uses
  %i.y = lshr i32 %i.j, 27
  %i.z = and i32 %i.y, 1                          ; 2 uses
  %.not58.i.i.i = icmp eq i32 %i.x, %i.z
  br i1 %.not58.i.i.i, label %bb.f, label %.split36

.split36:                                         ; preds = %bb.e
  %i.aa = icmp samesign ult i32 %i.x, %i.z
  br i1 %i.aa, label %bb.i, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ab = lshr i32 %i.m, 28
  %i.ac = and i32 %i.ab, 1                        ; 2 uses
  %i.ad = lshr i32 %i.j, 28
  %i.ae = and i32 %i.ad, 1                        ; 2 uses
  %.not59.i.i.i = icmp eq i32 %i.ac, %i.ae
  br i1 %.not59.i.i.i, label %bb.g, label %.split35

.split35:                                         ; preds = %bb.f
  %i.af = icmp samesign ult i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ag = lshr i32 %i.j, 29
  %i.ah = and i32 %i.ag, 1                        ; 2 uses
  %i.ai = lshr i32 %i.m, 29
  %i.aj = and i32 %i.ai, 1                        ; 2 uses
  %.not60.i.i.i = icmp eq i32 %i.ah, %i.aj
  br i1 %.not60.i.i.i, label %bb.h, label %.split34

.split34:                                         ; preds = %bb.g
  %i.ak = icmp samesign ult i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = lshr i32 %i.m, 30
  %i.am = and i32 %i.al, 1                        ; 2 uses
  %i.an = lshr i32 %i.j, 30
  %i.ao = and i32 %i.an, 1                        ; 2 uses
  %.not61.i.i.i = icmp eq i32 %i.am, %i.ao
  br i1 %.not61.i.i.i, label %.split32, label %.split33

.split33:                                         ; preds = %bb.h
  %i.ap = icmp samesign ult i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.k

.split32:                                         ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.at = load i16, ptr %i.as, align 2, !tbaa !34
  %i.au = icmp ult i16 %i.ar, %i.at
  br i1 %i.au, label %bb.i, label %bb.k

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12lldb_private9LineTable23LessThanBinaryPredicateEEclIPNS3_8SequenceES8_EEbT_T0_.exit: ; preds = %bb.b
  %i.av = icmp samesign ult i32 %i.k, %i.n
  br i1 %i.av, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.split38, %.split37, %.split36, %.split35, %.split34, %.split33, %.split32, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12lldb_private9LineTable23LessThanBinaryPredicateEEclIPNS3_8SequenceES8_EEbT_T0_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.01642, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.029.040, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.029.040, i64 16
  %i.az = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !26, !noalias !258
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01642, i8 0, i64 24, i1 false)
  %i.ba = load ptr, ptr %.sroa.029.040, align 8, !tbaa !27 ; 3 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !28
  store ptr %i.d, ptr %.sroa.029.040, align 8, !tbaa !27
  store <2 x ptr> %i.az, ptr %i.ax, align 8, !tbaa !26
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.be) #17
  br label %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit

_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit: ; preds = %bb.i, %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.01642, i64 24
  br label %bb.m

bb.k:                                             ; preds = %.split38, %.split37, %.split36, %.split35, %.split34, %.split33, %.split32, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12lldb_private9LineTable23LessThanBinaryPredicateEEclIPNS3_8SequenceES8_EEbT_T0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.043, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.029.040, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.029.040, i64 16
  %i.bj = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !26, !noalias !259
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.043, i8 0, i64 24, i1 false)
  %i.bk = load ptr, ptr %.sroa.029.040, align 8, !tbaa !27 ; 3 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !28
  store ptr %i.e, ptr %.sroa.029.040, align 8, !tbaa !27
  store <2 x ptr> %i.bj, ptr %i.bh, align 8, !tbaa !26
  %.not.i.i.i.i.i.i18 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i18, label %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit19, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #17
  br label %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit19

_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit19: ; preds = %bb.k, %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.043, i64 24
  br label %bb.m

bb.m:                                             ; preds = %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit19, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit
  %.117 = phi ptr [ %i.bf, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit ], [ %.01642, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit19 ] ; 3 uses
  %.1 = phi ptr [ %.043, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit ], [ %i.bp, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit19 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.029.040, i64 24 ; 2 uses
  %i.br = icmp ne ptr %.1, %1
  %i.bs = icmp ne ptr %.117, %3
  %i.bt = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %i.bt, label %.lr.ph, label %._crit_edge, !llvm.loop !249

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %.sroa.029.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.bq, %bb.m ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.m ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.m ] ; 2 uses
  %i.bu = ptrtoint ptr %1 to i64
  %i.bv = ptrtoint ptr %.0.lcssa to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPN12lldb_private9LineTable8SequenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.by = udiv exact i64 %i.bw, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ck, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i ], [ %i.by, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cj, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.029.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ci, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !28, !noalias !260
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.cc = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !26, !noalias !260
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.cd = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !27 ; 3 uses
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !28
  store <2 x ptr> %i.cc, ptr %.0811.i.i.i.i.i, align 8, !tbaa !26
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cf, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ch) #17
  br label %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i

_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 2 uses
  %i.ck = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cl = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN12lldb_private9LineTable8SequenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit, !llvm.loop !6

_ZSt4moveIPN12lldb_private9LineTable8SequenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit: ; preds = %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.029.0.lcssa, %._crit_edge ], [ %i.cj, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i ]
  %i.cm = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.cn = ptrtoint ptr %.sroa.029.0.lcssa to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %.sroa.029.0.lcssa, i64 %i.co ; 2 uses
  %i.cq = ptrtoint ptr %3 to i64
  %i.cr = ptrtoint ptr %.016.lcssa to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.preheader.i.i.i.i.i21, label %_ZSt4moveIPN12lldb_private9LineTable8SequenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit28

.lr.ph.preheader.i.i.i.i.i21:                     ; preds = %_ZSt4moveIPN12lldb_private9LineTable8SequenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit
  %i.cu = udiv exact i64 %i.cs, 24
  br label %.lr.ph.i.i.i.i.i22

.lr.ph.i.i.i.i.i22:                               ; preds = %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i21
  %.012.i.i.i.i.i23 = phi i64 [ %i.dg, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i27 ], [ %i.cu, %.lr.ph.preheader.i.i.i.i.i21 ] ; 2 uses
  %.0811.i.i.i.i.i24 = phi ptr [ %i.df, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i27 ], [ %i.cp, %.lr.ph.preheader.i.i.i.i.i21 ] ; 4 uses
  %.0910.i.i.i.i.i25 = phi ptr [ %i.de, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i27 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i21 ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !28, !noalias !261
  %i.cx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 16 ; 2 uses
  %i.cy = load <2 x ptr>, ptr %.0910.i.i.i.i.i25, align 8, !tbaa !26, !noalias !261
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i25, i8 0, i64 24, i1 false)
  %i.cz = load ptr, ptr %.0811.i.i.i.i.i24, align 8, !tbaa !27 ; 3 uses
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !28
  store <2 x ptr> %i.cy, ptr %.0811.i.i.i.i.i24, align 8, !tbaa !26
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !28
  %.not.i.i.i.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i26, label %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i27, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i22
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #17
  br label %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i27

_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i27: ; preds = %bb.o, %.lr.ph.i.i.i.i.i22
  %i.de = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 24 ; 2 uses
  %i.dg = add nsw i64 %.012.i.i.i.i.i23, -1
  %i.dh = icmp sgt i64 %.012.i.i.i.i.i23, 1
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i22, label %_ZSt4moveIPN12lldb_private9LineTable8SequenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit28.loopexit, !llvm.loop !6

_ZSt4moveIPN12lldb_private9LineTable8SequenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit28.loopexit: ; preds = %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i27
  %6 = ptrtoint ptr %i.df to i64
  br label %_ZSt4moveIPN12lldb_private9LineTable8SequenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit28

_ZSt4moveIPN12lldb_private9LineTable8SequenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit28: ; preds = %_ZSt4moveIPN12lldb_private9LineTable8SequenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit28.loopexit, %_ZSt4moveIPN12lldb_private9LineTable8SequenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit
  %.08.lcssa.i.i.i.i.i20 = phi i64 [ %i.cm, %_ZSt4moveIPN12lldb_private9LineTable8SequenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ], [ %6, %_ZSt4moveIPN12lldb_private9LineTable8SequenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit28.loopexit ]
  %i.di = sub i64 %.08.lcssa.i.i.i.i.i20, %i.cm
  %i.dj = getelementptr inbounds i8, ptr %i.cp, i64 %i.di
  ret ptr %i.dj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt21__move_merge_adaptiveIPN12lldb_private9LineTable8SequenceEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterINS1_23LessThanBinaryPredicateEEEEvT_SE_T0_SF_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %.not33 = icmp eq ptr %0, %1
  br i1 %.not33, label %.critedge12, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %.037 = phi ptr [ %.1, %bb.n ], [ %0, %bb.a ]   ; 7 uses
  %.sroa.019.036 = phi ptr [ %.sroa.019.1, %bb.n ], [ %2, %bb.a ] ; 6 uses
  %.sroa.015.034 = phi ptr [ %i.bn, %bb.n ], [ %4, %bb.a ] ; 10 uses
  %.not29 = icmp eq ptr %.sroa.019.036, %3
  br i1 %.not29, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.a = load ptr, ptr %.sroa.019.036, align 8, !tbaa !26 ; 5 uses
  %i.b = load ptr, ptr %.037, align 8, !tbaa !26  ; 5 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.c, %i.d
  br i1 %.not.i.i.i, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %bb.j, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = lshr i32 %i.g, 31                        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 6 uses
  %i.k = lshr i32 %i.j, 31                        ; 2 uses
  %.not55.i.i.i = icmp eq i32 %i.h, %i.k
  br i1 %.not55.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12lldb_private9LineTable23LessThanBinaryPredicateEEclINS_17__normal_iteratorIPNS3_8SequenceESt6vectorIS8_SaIS8_EEEES9_EEbT_T0_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = and i32 %i.j, 134217727                  ; 2 uses
  %i.m = and i32 %i.g, 134217727                  ; 2 uses
  %.not56.i.i.i = icmp eq i32 %i.l, %i.m
  br i1 %.not56.i.i.i, label %bb.e, label %.split28

.split28:                                         ; preds = %bb.d
  %i.n = icmp samesign ult i32 %i.l, %i.m
  br i1 %i.n, label %bb.j, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.p = load i16, ptr %i.o, align 4, !tbaa !33   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.r = load i16, ptr %i.q, align 4, !tbaa !33   ; 2 uses
  %.not57.i.i.i = icmp eq i16 %i.p, %i.r
  br i1 %.not57.i.i.i, label %bb.f, label %.split27

.split27:                                         ; preds = %bb.e
  %i.s = icmp ult i16 %i.p, %i.r
  br i1 %i.s, label %bb.j, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.t = lshr i32 %i.j, 27
  %i.u = and i32 %i.t, 1                          ; 2 uses
  %i.v = lshr i32 %i.g, 27
  %i.w = and i32 %i.v, 1                          ; 2 uses
  %.not58.i.i.i = icmp eq i32 %i.u, %i.w
  br i1 %.not58.i.i.i, label %bb.g, label %.split26

.split26:                                         ; preds = %bb.f
  %i.x = icmp samesign ult i32 %i.u, %i.w
  br i1 %i.x, label %bb.j, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.y = lshr i32 %i.j, 28
  %i.z = and i32 %i.y, 1                          ; 2 uses
  %i.aa = lshr i32 %i.g, 28
  %i.ab = and i32 %i.aa, 1                        ; 2 uses
  %.not59.i.i.i = icmp eq i32 %i.z, %i.ab
  br i1 %.not59.i.i.i, label %bb.h, label %.split25

.split25:                                         ; preds = %bb.g
  %i.ac = icmp samesign ult i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.j, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ad = lshr i32 %i.g, 29
  %i.ae = and i32 %i.ad, 1                        ; 2 uses
  %i.af = lshr i32 %i.j, 29
  %i.ag = and i32 %i.af, 1                        ; 2 uses
  %.not60.i.i.i = icmp eq i32 %i.ae, %i.ag
  br i1 %.not60.i.i.i, label %bb.i, label %.split24

.split24:                                         ; preds = %bb.h
  %i.ah = icmp samesign ult i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.j, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ai = lshr i32 %i.j, 30
  %i.aj = and i32 %i.ai, 1                        ; 2 uses
  %i.ak = lshr i32 %i.g, 30
  %i.al = and i32 %i.ak, 1                        ; 2 uses
  %.not61.i.i.i = icmp eq i32 %i.aj, %i.al
  br i1 %.not61.i.i.i, label %.split22, label %.split23

.split23:                                         ; preds = %bb.i
  %i.am = icmp samesign ult i32 %i.aj, %i.al
  br i1 %i.am, label %bb.j, label %bb.l

.split22:                                         ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !34
  %i.ar = icmp ult i16 %i.ao, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12lldb_private9LineTable23LessThanBinaryPredicateEEclINS_17__normal_iteratorIPNS3_8SequenceESt6vectorIS8_SaIS8_EEEES9_EEbT_T0_.exit: ; preds = %bb.c
  %i.as = icmp samesign ult i32 %i.h, %i.k
  br i1 %i.as, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.split28, %.split27, %.split26, %.split25, %.split24, %.split23, %.split22, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12lldb_private9LineTable23LessThanBinaryPredicateEEclINS_17__normal_iteratorIPNS3_8SequenceESt6vectorIS8_SaIS8_EEEES9_EEbT_T0_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.019.036, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.015.034, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.015.034, i64 16
  %i.aw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !26, !noalias !275
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.036, i8 0, i64 24, i1 false)
  %i.ax = load ptr, ptr %.sroa.015.034, align 8, !tbaa !27 ; 3 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !28
  store ptr %i.a, ptr %.sroa.015.034, align 8, !tbaa !27
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !26
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #17
  br label %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit

_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit: ; preds = %bb.j, %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.019.036, i64 24
  br label %bb.n

bb.l:                                             ; preds = %.split28, %.split27, %.split26, %.split25, %.split24, %.split23, %.split22, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12lldb_private9LineTable23LessThanBinaryPredicateEEclINS_17__normal_iteratorIPNS3_8SequenceESt6vectorIS8_SaIS8_EEEES9_EEbT_T0_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.037, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.015.034, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.015.034, i64 16
  %i.bg = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !26, !noalias !276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.037, i8 0, i64 24, i1 false)
  %i.bh = load ptr, ptr %.sroa.015.034, align 8, !tbaa !27 ; 3 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !28
  store ptr %i.b, ptr %.sroa.015.034, align 8, !tbaa !27
  store <2 x ptr> %i.bg, ptr %i.be, align 8, !tbaa !26
  %.not.i.i.i.i.i.i13 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i13, label %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #17
  br label %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit14

_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit14: ; preds = %bb.l, %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %.037, i64 24
  br label %bb.n

bb.n:                                             ; preds = %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit14, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit
  %.sroa.019.1 = phi ptr [ %i.bc, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit ], [ %.sroa.019.036, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit14 ]
  %.1 = phi ptr [ %.037, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit ], [ %i.bm, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit14 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.015.034, i64 24
  %.not = icmp eq ptr %.1, %1
  br i1 %.not, label %.critedge12, label %.lr.ph, !llvm.loop !270

.critedge:                                        ; preds = %.lr.ph
  %i.bo = ptrtoint ptr %1 to i64
  %i.bp = ptrtoint ptr %.037 to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.i.i.i.i.i, label %.critedge12

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.critedge
  %i.bs = udiv exact i64 %i.bq, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ce, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i ], [ %i.bs, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cd, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.015.034, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cc, %_ZN12lldb_private9LineTable8SequenceaSEOS1_.exit.i.i.i.i.i ], [ %.037, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !28, !noalias !277
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.bw = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !26, !noalias !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.bx = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !27 ; 3 uses
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !28
  store <2 x ptr> %i.bw, ptr %.0811.i.i.i.i.i, align 8, !tbaa !26
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !28
end_hunk_0
