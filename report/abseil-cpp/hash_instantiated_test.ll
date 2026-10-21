Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/hash_instantiated_test?download=true
inline.NumInlined: 29463
inline.NumDeleted: 10401
loop-unroll.NumCompletelyUnrolled: 582
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 594
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE18insert_hint_uniqueIiJRKSt4pairIiS9_EEEESD_INS1_14btree_iteratorINS1_10btree_nodeISA_EERSD_IKiS9_EPSL_EEbESO_RKT_DpOT0_:bb.a
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !200
  %.not17.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not17.i.i.i, label %bb.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EppEv.exit

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !200 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !200
  %i.bq = icmp eq i8 %i.bn, %i.bp
  br i1 %i.bq, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !9784

.thread.i.i:                                      ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.bs = add i32 %3, 1
  %i.bt = and i32 %i.bs, 255
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bu
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.bv, %.thread.i.i ], [ %i.by, %bb.j ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !942 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !200
  %.not.i.i.i.i = icmp eq i8 %i.bx, 0
  %i.by = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EppEv.exit, !llvm.loop !9785

.critedge.loopexit23.i.i.i:                       ; preds = %bb.i
  %i.bz = zext i8 %i.bn to i32
  br label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EppEv.exit

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.j, %.critedge.loopexit23.i.i.i, %bb.h
  %.sroa.073.0 = phi ptr [ %.116.i.i.i, %bb.j ], [ %2, %bb.h ], [ %i.bj, %.critedge.loopexit23.i.i.i ], [ %2, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.13.0 = phi i32 [ 0, %bb.j ], [ %i.be, %bb.h ], [ %i.bz, %.critedge.loopexit23.i.i.i ], [ %i.be, %.lr.ph.i.i.i ] ; 3 uses
  %i.ca = icmp eq ptr %.sroa.073.0, %i.e
  %i.cb = icmp eq i32 %.sroa.13.0, %i.h
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %.critedge4, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EppEv.exit
  %i.cd = sext i32 %.sroa.13.0 to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.073.0, i64 16
  %i.cf = getelementptr inbounds nuw [40 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !232
  %i.ch = icmp slt i32 %i.o, %i.cg
  br i1 %i.ch, label %.critedge4, label %bb.l

.critedge4:                                       ; preds = %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EppEv.exit, %bb.k
  %i.ci = tail call { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJRKSt4pairIiS9_EEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSD_IKiS9_EPSL_EESO_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %.sroa.073.0, i32 %.sroa.13.0, ptr noundef nonnull align 8 dereferenceable(40) %5) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ci, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ci, 1
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE13insert_uniqueIiJRKSt4pairIiS9_EEEESD_INS1_14btree_iteratorINS1_10btree_nodeISA_EERSD_IKiS9_EPSL_EEbERKT_DpOT0_.exit

.thread:                                          ; preds = %bb.a
  %i.cj = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35, !noalias !9789 ; 5 uses
  store ptr %i.cj, ptr %i.cj, align 8, !tbaa !942, !noalias !9789
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.ck, align 8, !tbaa !200, !noalias !9789
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !942, !noalias !9789
  store ptr %i.cj, ptr %1, align 8, !tbaa !942, !noalias !9789
  %.pre = load i32, ptr %4, align 4, !noalias !9789
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit.i, %.thread
  %i.cm = phi i32 [ %.pre, %.thread ], [ %i.ay, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit.i ], [ %i.o, %bb.k ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.sroa.0.0.in.i.i = phi ptr [ %1, %bb.l ], [ %i.cz, %bb.o ]
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !tbaa !942, !noalias !9789 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !200, !noalias !9789 ; 2 uses
  %i.cp = zext i8 %i.co to i64                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %.not.i.i.i.i55 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i55, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %bb.n
  %.07.i.i.i.i.i = phi i64 [ %i.cu, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [40 x i8], ptr %i.cq, i64 %.07.i.i.i.i.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !232, !noalias !9789
  %i.ct = icmp slt i32 %i.cs, %i.cm
  br i1 %i.ct, label %bb.n, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cu = add nuw nsw i64 %.07.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.cu, %i.cp
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9788

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i, %bb.m
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.cp, %bb.n ], [ %.07.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !200, !noalias !9789
  %.not.i.i56 = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i56, label %bb.o, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSJ_EELb0EEERKT_.exit.i

bb.o:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 256
  %i.cy = and i64 %.0.lcssa.i.i.i.i.i, 255
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cy
  br label %bb.m

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSJ_EELb0EEERKT_.exit.i: ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i
  %i.da = trunc i64 %.0.lcssa.i.i.i.i.i to i32    ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSJ_EELb0EEERKT_.exit.i
  %.sroa.7.0.i.i = phi i32 [ %i.da, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSJ_EELb0EEERKT_.exit.i ], [ %i.dh, %bb.q ] ; 3 uses
  %.sroa.0.0.i16.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSJ_EELb0EEERKT_.exit.i ], [ %i.di, %bb.q ] ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 10
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !200, !noalias !9789
  %i.dd = zext i8 %i.dc to i32
  %i.de = icmp eq i32 %.sroa.7.0.i.i, %i.dd
  br i1 %i.de, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 8
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !200, !noalias !9789
  %i.dh = zext i8 %i.dg to i32
  %i.di = load ptr, ptr %.sroa.0.0.i16.i, align 8, !tbaa !942, !noalias !9789 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 11
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !200, !noalias !9789
  %.not.i19.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i19.i, label %bb.p, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSI_EEEET_SM_.exit.thread.i, !llvm.loop !147

bb.r:                                             ; preds = %bb.p
  %i.dl = sext i32 %.sroa.7.0.i.i to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 16
  %i.dn = getelementptr inbounds nuw [40 x i8], ptr %i.dm, i64 %i.dl
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !232, !noalias !9789
  %i.dp = icmp slt i32 %i.cm, %i.do
  br i1 %i.dp, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSI_EEEET_SM_.exit.thread.i, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE13insert_uniqueIiJRKSt4pairIiS9_EEEESD_INS1_14btree_iteratorINS1_10btree_nodeISA_EERSD_IKiS9_EPSL_EEbERKT_DpOT0_.exit

_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSI_EEEET_SM_.exit.thread.i: ; preds = %bb.q, %bb.r
  %i.dq = tail call { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJRKSt4pairIiS9_EEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSD_IKiS9_EPSL_EESO_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %.sroa.0.0.i.i, i32 %i.da, ptr noundef nonnull align 8 dereferenceable(40) %5), !noalias !9789 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.dq, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.dq, 1
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE13insert_uniqueIiJRKSt4pairIiS9_EEEESD_INS1_14btree_iteratorINS1_10btree_nodeISA_EERSD_IKiS9_EPSL_EEbERKT_DpOT0_.exit

_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE13insert_uniqueIiJRKSt4pairIiS9_EEEESD_INS1_14btree_iteratorINS1_10btree_nodeISA_EERSD_IKiS9_EPSL_EEbERKT_DpOT0_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSI_EEEET_SM_.exit.thread.i, %bb.r, %bb.f, %.critedge4, %.critedge2
  %.sroa.0.0.i16.lcssa.sink.i.sink = phi ptr [ %2, %bb.f ], [ %.fca.0.extract11, %.critedge2 ], [ %.fca.0.extract, %.critedge4 ], [ %.fca.0.extract.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSI_EEEET_SM_.exit.thread.i ], [ %.sroa.0.0.i16.i, %bb.r ]
  %.sroa.7.0.i.lcssa.sink.i.sink = phi i32 [ %3, %bb.f ], [ %.fca.1.extract12, %.critedge2 ], [ %.fca.1.extract, %.critedge4 ], [ %.fca.1.extract.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSI_EEEET_SM_.exit.thread.i ], [ %.sroa.7.0.i.i, %bb.r ]
  %.sink.i.sink = phi i8 [ 0, %bb.f ], [ 1, %.critedge2 ], [ 1, %.critedge4 ], [ 1, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSI_EEEET_SM_.exit.thread.i ], [ 0, %bb.r ]
  store ptr %.sroa.0.0.i16.lcssa.sink.i.sink, ptr %0, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.0.i.lcssa.sink.i.sink, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i.sink, ptr %i.dr, align 8, !tbaa !9791
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJRKSt4pairIiS9_EEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSD_IKiS9_EPSL_EESO_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.2281", align 8 ; 7 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !200   ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre12.a = load i8, ptr %.phi.trans.insert11, align 1, !tbaa !200
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !942 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !200   ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !200
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !942 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !200   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit, !llvm.loop !146

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !200   ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !952
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit ], [ %.pre12.a, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 3 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 6
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 6) ; 2 uses
  %narrow = mul nuw i8 %i.ab, 40
  %i.ac = zext i8 %narrow to i64
  %i.ad = add nuw nsw i64 %i.ac, 16
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #35 ; 11 uses
  store ptr %i.ae, ptr %i.ae, align 8, !tbaa !942
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i8 0, ptr %i.af, align 8, !tbaa !200
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  store i8 0, ptr %i.ag, align 1, !tbaa !200
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 11
  store i8 %i.ab, ptr %i.ah, align 1, !tbaa !200
  store ptr %i.ae, ptr %4, align 8, !tbaa !953
  %i.ai = load i8, ptr %i.x, align 1, !tbaa !200  ; 2 uses
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.aj, 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJRKSt4pairIiS9_EEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSD_IKiS9_EPSL_EESO_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  br label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.015.i.i.i = phi ptr [ %i.bd, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i.i.i ], [ %i.am, %.lr.ph.preheader.i.i.i ] ; 5 uses
  %.01214.i.i.i = phi ptr [ %i.bc, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i.i.i ], [ %i.ak, %.lr.ph.preheader.i.i.i ] ; 7 uses
  %i.an = load i32, ptr %.01214.i.i.i, align 8, !tbaa !891
  store i32 %i.an, ptr %.015.i.i.i, align 8, !tbaa !891
  %i.ao = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 24 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !198
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !197 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 24 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i4
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !201 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i4
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !197
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !200
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !200
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !201
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i.i.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.e
  %i.az = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.av, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !201
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !197
  store i64 0, ptr %i.ba, align 8, !tbaa !201
  store i8 0, ptr %i.as, align 8, !tbaa !200
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 40
  %.not.i.i.i5 = icmp eq ptr %i.bc, %i.al
  br i1 %.not.i.i.i5, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE10transfer_nEmmmPSB_PSaISt4pairIKiS9_EE.exit.loopexit.i.i, label %.lr.ph.i.i.i4, !llvm.loop !148

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE10transfer_nEmmmPSB_PSaISt4pairIKiS9_EE.exit.loopexit.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i.i.i
  %.pre.i.i = load i8, ptr %i.x, align 1, !tbaa !200
  br label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJRKSt4pairIiS9_EEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSD_IKiS9_EPSL_EESO_DpOT_ENKUlhE_clEh.exit

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJRKSt4pairIiS9_EEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSD_IKiS9_EPSL_EESO_DpOT_ENKUlhE_clEh.exit: ; preds = %bb.d, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE10transfer_nEmmmPSB_PSaISt4pairIKiS9_EE.exit.loopexit.i.i
  %i.be = phi i8 [ %.pre.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE10transfer_nEmmmPSB_PSaISt4pairIKiS9_EE.exit.loopexit.i.i ], [ 0, %bb.d ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  store i8 %i.be, ptr %i.bf, align 2, !tbaa !200
  store i8 0, ptr %i.x, align 1, !tbaa !200
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16clear_and_deleteEPSB_PSaISt4pairIKiS9_EE(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !942
  store ptr %i.ae, ptr %0, align 8, !tbaa !942
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSH_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %4)
  %.pre13.a = load ptr, ptr %4, align 8, !tbaa !953
  br label %bb.g

bb.g:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJRKSt4pairIiS9_EEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSD_IKiS9_EPSL_EESO_DpOT_ENKUlhE_clEh.exit, %bb.f, %bb.b
  %5 = phi ptr [ %i.ae, %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJRKSt4pairIiS9_EEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSD_IKiS9_EPSL_EESO_DpOT_ENKUlhE_clEh.exit ], [ %.pre13.a, %bb.f ], [ %i.v, %bb.b ]
  %6 = load i32, ptr %i.a, align 8, !tbaa !952
  %i.bg = trunc i32 %6 to i8
  call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE13emplace_valueIJRKSt4pairIiS9_EEEEvhPSaISD_IKiS9_EEDpOT_(ptr noundef nonnull align 1 dereferenceable(1) %5, i8 noundef zeroext %i.bg, ptr noundef nonnull %i.w, ptr noundef nonnull align 8 dereferenceable(40) %3)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !941
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !941
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSH_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.2281", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !942    ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !942  ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !940
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !200   ; 5 uses
  %.not112 = icmp eq i8 %i.f, 0
  br i1 %.not112, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !942  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !200   ; 3 uses
  %i.n = icmp ult i8 %i.m, 6
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 6, %i.m
  %i.o = load i32, ptr %i.a, align 8, !tbaa !232  ; 2 uses
  %i.p = and i32 %i.o, 254
  %i.q = icmp samesign ult i32 %i.p, 6
  %i.r = zext i1 %i.q to i8
  %i.s = lshr i8 %narrow, %i.r
  %.sroa.speculated99 = tail call i8 @llvm.umax.i8(i8 %i.s, i8 1) ; 3 uses
  %i.t = and i32 %i.o, 255
  %i.u = zext nneg i8 %.sroa.speculated99 to i32  ; 2 uses
  %.not84 = icmp samesign uge i32 %i.t, %i.u
  %narrow113.a = add nuw nsw i8 %.sroa.speculated99, %i.m
  %i.v = icmp samesign ult i8 %narrow113.a, 6
  %or.cond = select i1 %.not84, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE23rebalance_right_to_leftEhPSB_PSaISt4pairIKiS9_EE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext %.sroa.speculated99, ptr noundef nonnull %i.b, ptr noundef nonnull %i.w)
  %i.x = load i32, ptr %i.a, align 8, !tbaa !232
  %i.y = and i32 %i.x, 255
  %i.z = sub nsw i32 %i.y, %i.u                   ; 3 uses
  store i32 %i.z, ptr %i.a, align 8, !tbaa !232
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ab = load i8, ptr %i.l, align 1, !tbaa !200
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.z, 1
  %i.ae = add nsw i32 %i.ad, %i.ac
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !200 ; 2 uses
  %i.ah = icmp ult i8 %i.f, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw i8 %i.f, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.ak = zext i8 %i.ai to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !942 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !200 ; 3 uses
  %i.ap = icmp ult i8 %i.ao, 6
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %narrow114 = sub nuw nsw i8 6, %i.ao
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !232 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i8
  %i.at = lshr i8 %narrow114, %i.as
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.at, i8 1) ; 3 uses
  %i.au = and i32 %i.aq, 255
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !200
  %i.ax = zext i8 %i.aw to i32
  %i.ay = zext nneg i8 %.sroa.speculated to i32
  %i.az = sub nsw i32 %i.ax, %i.ay
  %.not85 = icmp sle i32 %i.au, %i.az
  %narrow115 = add nuw nsw i8 %.sroa.speculated, %i.ao
  %i.ba = icmp samesign ult i8 %narrow115, 6
  %or.cond111 = select i1 %.not85, i1 true, i1 %i.ba
  br i1 %or.cond111, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE23rebalance_left_to_rightEhPSB_PSaISt4pairIKiS9_EE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.am, ptr noundef nonnull %i.bb)
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !232 ; 2 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !942
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 10
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !200
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = icmp sgt i32 %i.bc, %i.bg
  br i1 %i.bh, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bi = xor i32 %i.bg, -1
  %i.bj = add nsw i32 %i.bc, %i.bi
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bk = icmp eq i8 %i.ag, 6
  br i1 %i.bk, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bl = zext i8 %i.f to i32
  store ptr %i.c, ptr %2, align 8, !tbaa !953
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !952
  call void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSH_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2)
  %i.bn = load ptr, ptr %1, align 8, !tbaa !942   ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !942
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bp = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #35 ; 6 uses
  store ptr %i.c, ptr %i.bp, align 8, !tbaa !942
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 0, ptr %i.bq, align 8
  %i.br = load ptr, ptr %1, align 8, !tbaa !942   ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 256
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !942
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i8 0, ptr %i.bt, align 1, !tbaa !200
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !942
  store ptr %i.bp, ptr %0, align 8, !tbaa !942
  %.pre = load ptr, ptr %1, align 8, !tbaa !942
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bu = phi ptr [ %i.bn, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 2 uses
  %.083 = phi ptr [ %i.bo, %bb.m ], [ %i.c, %bb.l ], [ %i.bp, %bb.n ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !200
  %.not116 = icmp eq i8 %i.bw, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !200
  %i.bz = add i8 %i.by, 1                         ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #35 ; 9 uses
  store ptr %.083, ptr %i.cb, align 8, !tbaa !942
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i8 %i.bz, ptr %i.cc, align 8, !tbaa !200
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 9
  store i8 0, ptr %i.cd, align 1, !tbaa !200
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 10
  store i8 0, ptr %i.ce, align 2, !tbaa !200
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 11
  store i8 6, ptr %i.cf, align 1, !tbaa !200
  %i.cg = load ptr, ptr %1, align 8, !tbaa !942
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !232
  call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE5splitEiPSB_PSaISt4pairIKiS9_EE(ptr noundef nonnull align 1 dereferenceable(1) %i.cg, i32 noundef %i.ch, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.ca)
  %i.ci = load ptr, ptr %i.ca, align 8, !tbaa !942
  %i.cj = load ptr, ptr %1, align 8, !tbaa !942
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !942
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.cl = call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #35 ; 7 uses
  store ptr %.083, ptr %i.cl, align 8, !tbaa !942
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i8 %i.bz, ptr %i.cm, align 8, !tbaa !200
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 9
  store i8 0, ptr %i.cn, align 1, !tbaa !200
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 10
  store i8 0, ptr %i.co, align 2, !tbaa !200
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 11
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE28copy_or_move_values_in_orderIKSB_EEvRT_:bb.a

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !942 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 10
  %i.at = load i8, ptr %i.as, align 1, !tbaa !200
  %i.au = zext i8 %i.at to i32
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE12insert_multiIPKNS1_13map_slot_typeIiS9_EEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSM_EEOT_.exit

_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE12insert_multiIPKNS1_13map_slot_typeIiS9_EEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSM_EEOT_.exit: ; preds = %bb.h, %bb.j
  %.sroa.012.0.i.i = phi ptr [ %i.ar, %bb.j ], [ %.sroa.0.0.i.i.i.i, %bb.h ]
  %.pn21.i.i = phi i32 [ %i.au, %bb.j ], [ %.sroa.7.0.i.i.i.i, %bb.h ]
  %i.av = call { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJPKNS1_13map_slot_typeIiS9_EEEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSM_EESP_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %.sroa.012.0.i.i, i32 %.pn21.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !200
  %.not.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE12insert_multiIPKNS1_13map_slot_typeIiS9_EEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSM_EEOT_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !200
  %i.ba = icmp eq i8 %i.az, 1
  br i1 %i.ba, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.l
  %.01521.i.i.i = phi ptr [ %i.bb, %bb.l ], [ %i.d, %bb.k ] ; 2 uses
  %i.bb = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !942 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 11
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !200
  %.not17.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not17.i.i.i, label %bb.l, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !200 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !200
  %i.bi = icmp eq i8 %i.bf, %i.bh
  br i1 %i.bi, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !150

.thread.i.i:                                      ; preds = %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE12insert_multiIPKNS1_13map_slot_typeIiS9_EEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSM_EEOT_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.bj, %.thread.i.i ], [ %i.bm, %bb.m ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !942 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !200
  %.not.i.i.i.i25 = icmp eq i8 %i.bl, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i25, label %bb.m, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit, !llvm.loop !151

.critedge.loopexit23.i.i.i:                       ; preds = %bb.l
  %i.bn = zext i8 %i.bf to i32
  br label %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit

_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.m, %.critedge.loopexit23.i.i.i, %bb.k
  %.sroa.052.1 = phi ptr [ %.116.i.i.i, %bb.m ], [ %i.d, %bb.k ], [ %i.bb, %.critedge.loopexit23.i.i.i ], [ %i.d, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.11.1 = phi i32 [ 0, %bb.m ], [ 1, %bb.k ], [ %i.bn, %.critedge.loopexit23.i.i.i ], [ 1, %.lr.ph.i.i.i ] ; 2 uses
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !942 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !200
  %i.br = zext i8 %i.bq to i32
  %i.bs = icmp ne ptr %.sroa.052.1, %i.bo
  %i.bt = icmp ne i32 %.sroa.11.1, %i.br
  %.not3.i72 = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %.not3.i72, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit48
  %.sroa.11.074 = phi i32 [ %.sroa.11.1, %.lr.ph ], [ %.sroa.11.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit48 ] ; 3 uses
  %.sroa.052.073 = phi ptr [ %.sroa.052.1, %.lr.ph ], [ %.sroa.052.2, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit48 ] ; 7 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !942 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 10
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !200
  %i.by = zext i8 %i.bx to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.bz = sext i32 %.sroa.11.074 to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.052.073, i64 16
  %i.cb = getelementptr inbounds nuw [40 x i8], ptr %i.ca, i64 %i.bz
  store ptr %i.cb, ptr %i.b, align 8, !tbaa !955
  %i.cc = call { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJPKNS1_13map_slot_typeIiS9_EEEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSM_EESP_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bv, i32 %i.by, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.052.073, i64 11
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !200
  %.not.i.i33 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i33, label %.thread.i.i44, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = add nsw i32 %.sroa.11.074, 1            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.052.073, i64 10
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !200
  %i.ci = zext i8 %i.ch to i32
  %i.cj = icmp eq i32 %i.cf, %i.ci
  br i1 %i.cj, label %.lr.ph.i.i.i40, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit48

.lr.ph.i.i.i40:                                   ; preds = %bb.o, %bb.p
  %.01521.i.i.i41 = phi ptr [ %i.ck, %bb.p ], [ %.sroa.052.073, %bb.o ] ; 2 uses
  %i.ck = load ptr, ptr %.01521.i.i.i41, align 8, !tbaa !942 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 11
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !200
  %.not17.i.i.i42 = icmp eq i8 %i.cm, 0
  br i1 %.not17.i.i.i42, label %bb.p, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit48

bb.p:                                             ; preds = %.lr.ph.i.i.i40
  %i.cn = getelementptr inbounds nuw i8, ptr %.01521.i.i.i41, i64 8
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !200 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 10
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !200
  %i.cr = icmp eq i8 %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i.i40, label %.critedge.loopexit23.i.i.i43, !llvm.loop !150

.thread.i.i44:                                    ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.052.073, i64 256
  %i.ct = add i32 %.sroa.11.074, 1
  %i.cu = and i32 %i.ct, 255
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cv
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.thread.i.i44
  %.116.in.i.i.i45 = phi ptr [ %i.cw, %.thread.i.i44 ], [ %i.cz, %bb.q ]
  %.116.i.i.i46 = load ptr, ptr %.116.in.i.i.i45, align 8, !tbaa !942 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.116.i.i.i46, i64 11
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !200
  %.not.i.i.i.i47 = icmp eq i8 %i.cy, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %.116.i.i.i46, i64 256
  br i1 %.not.i.i.i.i47, label %bb.q, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit48, !llvm.loop !151

.critedge.loopexit23.i.i.i43:                     ; preds = %bb.p
  %i.da = zext i8 %i.co to i32
  br label %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit48

_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit48: ; preds = %.lr.ph.i.i.i40, %bb.q, %.critedge.loopexit23.i.i.i43, %bb.o
  %.sroa.052.2 = phi ptr [ %.116.i.i.i46, %bb.q ], [ %.sroa.052.073, %bb.o ], [ %i.ck, %.critedge.loopexit23.i.i.i43 ], [ %.sroa.052.073, %.lr.ph.i.i.i40 ] ; 2 uses
  %.sroa.11.2 = phi i32 [ 0, %bb.q ], [ %i.cf, %bb.o ], [ %i.da, %.critedge.loopexit23.i.i.i43 ], [ %i.cf, %.lr.ph.i.i.i40 ] ; 2 uses
  %i.db = load ptr, ptr %i.e, align 8, !tbaa !942 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 10
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !200
  %i.de = zext i8 %i.dd to i32
  %i.df = icmp ne ptr %.sroa.052.2, %i.db
  %i.dg = icmp ne i32 %.sroa.11.2, %i.de
  %.not3.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %.not3.i, label %bb.n, label %.loopexit, !llvm.loop !9807

.loopexit:                                        ; preds = %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit48, %_ZN4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERKSt4pairIKiSA_EPSH_EppEv.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJPKNS1_13map_slot_typeIiS9_EEEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSM_EESP_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.2281", align 8 ; 7 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !200   ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre12.a = load i8, ptr %.phi.trans.insert11, align 1, !tbaa !200
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !942 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !200   ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !200
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !942 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !200   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit, !llvm.loop !146

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !200   ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !952
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit ], [ %.pre12.a, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEERSt4pairIKiSA_EPSF_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 3 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 6
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 6) ; 2 uses
  %narrow = mul nuw i8 %i.ab, 40
  %i.ac = zext i8 %narrow to i64
  %i.ad = add nuw nsw i64 %i.ac, 16
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #35 ; 11 uses
  store ptr %i.ae, ptr %i.ae, align 8, !tbaa !942
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i8 0, ptr %i.af, align 8, !tbaa !200
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  store i8 0, ptr %i.ag, align 1, !tbaa !200
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 11
  store i8 %i.ab, ptr %i.ah, align 1, !tbaa !200
  store ptr %i.ae, ptr %4, align 8, !tbaa !953
  %i.ai = load i8, ptr %i.x, align 1, !tbaa !200  ; 2 uses
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.aj, 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJPKNS1_13map_slot_typeIiS9_EEEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSM_EESP_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  br label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.015.i.i.i = phi ptr [ %i.bd, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i.i.i ], [ %i.am, %.lr.ph.preheader.i.i.i ] ; 5 uses
  %.01214.i.i.i = phi ptr [ %i.bc, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i.i.i ], [ %i.ak, %.lr.ph.preheader.i.i.i ] ; 7 uses
  %i.an = load i32, ptr %.01214.i.i.i, align 8, !tbaa !891
  store i32 %i.an, ptr %.015.i.i.i, align 8, !tbaa !891
  %i.ao = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 24 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !198
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !197 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 24 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i4
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !201 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i4
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !197
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !200
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !200
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !201
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i.i.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.e
  %i.az = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.av, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !201
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !197
  store i64 0, ptr %i.ba, align 8, !tbaa !201
  store i8 0, ptr %i.as, align 8, !tbaa !200
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 40
  %.not.i.i.i5 = icmp eq ptr %i.bc, %i.al
  br i1 %.not.i.i.i5, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE10transfer_nEmmmPSB_PSaISt4pairIKiS9_EE.exit.loopexit.i.i, label %.lr.ph.i.i.i4, !llvm.loop !148

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE10transfer_nEmmmPSB_PSaISt4pairIKiS9_EE.exit.loopexit.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i.i.i
  %.pre.i.i = load i8, ptr %i.x, align 1, !tbaa !200
  br label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJPKNS1_13map_slot_typeIiS9_EEEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSM_EESP_DpOT_ENKUlhE_clEh.exit

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJPKNS1_13map_slot_typeIiS9_EEEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSM_EESP_DpOT_ENKUlhE_clEh.exit: ; preds = %bb.d, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE10transfer_nEmmmPSB_PSaISt4pairIKiS9_EE.exit.loopexit.i.i
  %i.be = phi i8 [ %.pre.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE10transfer_nEmmmPSB_PSaISt4pairIKiS9_EE.exit.loopexit.i.i ], [ 0, %bb.d ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  store i8 %i.be, ptr %i.bf, align 2, !tbaa !200
  store i8 0, ptr %i.x, align 1, !tbaa !200
  tail call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16clear_and_deleteEPSB_PSaISt4pairIKiS9_EE(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !942
  store ptr %i.ae, ptr %0, align 8, !tbaa !942
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSH_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %4)
  %.pre13.a = load ptr, ptr %4, align 8, !tbaa !953
  br label %bb.g

bb.g:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJPKNS1_13map_slot_typeIiS9_EEEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSM_EESP_DpOT_ENKUlhE_clEh.exit, %bb.f, %bb.b
  %5 = phi ptr [ %i.ae, %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16internal_emplaceIJPKNS1_13map_slot_typeIiS9_EEEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERSt4pairIKiS9_EPSM_EESP_DpOT_ENKUlhE_clEh.exit ], [ %.pre13.a, %bb.f ], [ %i.v, %bb.b ]
  %6 = load i32, ptr %i.a, align 8, !tbaa !952
  %i.bg = trunc i32 %6 to i8
  call void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE13emplace_valueIJPKNS1_13map_slot_typeIiS9_EEEEEvhPSaISt4pairIKiS9_EEDpOT_(ptr noundef nonnull align 1 dereferenceable(1) %5, i8 noundef zeroext %i.bg, ptr noundef nonnull %i.w, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !941
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !941
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE13emplace_valueIJPKNS1_13map_slot_typeIiS9_EEEEEvhPSaISt4pairIKiS9_EEDpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = zext i8 %1 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !200   ; 2 uses
  %i.e = icmp ult i8 %1, %i.d
  %i.f = zext i8 %1 to i64                        ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE19transfer_n_backwardEmmmPSB_PSaISt4pairIKiS9_EE.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr [40 x i8], ptr %i.g, i64 %i.f ; 3 uses
  %narrow = sub nuw i8 %i.d, %1
  %i.i = zext i8 %narrow to i64                   ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.i, 40
  %i.j = getelementptr i8, ptr %i.h, i64 40
  %i.k = getelementptr [40 x i8], ptr %i.j, i64 %i.i
  %i.l = getelementptr i8, ptr %i.h, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i, %.lr.ph.preheader.i
  %.017.i = phi ptr [ %i.m, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i ], [ %i.k, %.lr.ph.preheader.i ] ; 4 uses
  %.01416.i = phi ptr [ %i.n, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i ], [ %i.l, %.lr.ph.preheader.i ] ; 5 uses
  %i.m = getelementptr inbounds i8, ptr %.017.i, i64 -40 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i, i64 -40 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !891
  store i32 %i.o, ptr %i.m, align 8, !tbaa !891
  %i.p = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.017.i, i64 -16 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !198
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !197  ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.01416.i, i64 -16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !201  ; 2 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  store ptr %i.s, ptr %i.p, align 8, !tbaa !197
  %i.z = load i64, ptr %i.t, align 8, !tbaa !200
  store i64 %i.z, ptr %i.r, align 8, !tbaa !200
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.aa = getelementptr inbounds i8, ptr %.01416.i, i64 -24 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !201
  %i.ac = getelementptr inbounds i8, ptr %.017.i, i64 -24
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !201
  store ptr %i.t, ptr %i.q, align 8, !tbaa !197
  store i64 0, ptr %i.aa, align 8, !tbaa !201
  store i8 0, ptr %i.t, align 8, !tbaa !200
  %.not.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE19transfer_n_backwardEmmmPSB_PSaISt4pairIKiS9_EE.exit, label %.lr.ph.i, !llvm.loop !149

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE19transfer_n_backwardEmmmPSB_PSaISt4pairIKiS9_EE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE8transferEPNS1_13map_slot_typeIiS9_EESE_PSaISt4pairIKiS9_EE.exit.i, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.f ; 4 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !955   ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !815
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !815
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !198
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !197 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !201 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.am, ptr %i.a, align 8, !tbaa !199
  %i.an = icmp ugt i64 %i.am, 15
  br i1 %i.an, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE19transfer_n_backwardEmmmPSB_PSaISt4pairIKiS9_EE.exit
  %i.ao = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ao, ptr %i.ah, align 8, !tbaa !197
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !199
  store i64 %i.ap, ptr %i.aj, align 8, !tbaa !200
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE19transfer_n_backwardEmmmPSB_PSaISt4pairIKiS9_EE.exit
  %i.aq = phi ptr [ %i.ao, %.noexc.i.i.i.i.i ], [ %i.aj, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE19transfer_n_backwardEmmmPSB_PSaISt4pairIKiS9_EE.exit ] ; 2 uses
  switch i64 %i.am, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE10value_initIJPKNS1_13map_slot_typeIiS9_EEEEEvhPSaISt4pairIKiS9_EEDpOT_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ar = load i8, ptr %i.ak, align 1, !tbaa !200
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !200
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE10value_initIJPKNS1_13map_slot_typeIiS9_EEEEEvhPSaISt4pairIKiS9_EEDpOT_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.ak, i64 %i.am, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE10value_initIJPKNS1_13map_slot_typeIiS9_EEEEEvhPSaISt4pairIKiS9_EEDpOT_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE10value_initIJPKNS1_13map_slot_typeIiS9_EEEEEvhPSaISt4pairIKiS9_EEDpOT_.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.c, %bb.d
  %i.as = load i64, ptr %i.a, align 8, !tbaa !199 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.as, ptr %i.at, align 8, !tbaa !201
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !197
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.aw = load i8, ptr %i.c, align 1, !tbaa !200
  %i.ax = add i8 %i.aw, 1                         ; 3 uses
  store i8 %i.ax, ptr %i.c, align 1, !tbaa !200
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !200
  %.not.i18 = icmp eq i8 %i.az, 0
  br i1 %.not.i18, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE10value_initIJPKNS1_13map_slot_typeIiS9_EEEEEvhPSaISt4pairIKiS9_EEDpOT_.exit
  %i.ba = zext i8 %i.ax to i32
  %i.bb = add nuw nsw i32 %i.b, 1                 ; 2 uses
  %i.bc = icmp samesign ult i32 %i.bb, %i.ba
  br i1 %i.bc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.be = trunc nuw i32 %i.bb to i8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.019 = phi i8 [ %i.ax, %.lr.ph ], [ %i.bf, %bb.f ] ; 3 uses
  %i.bf = add i8 %.019, -1                        ; 3 uses
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !942 ; 2 uses
  %i.bj = zext i8 %.019 to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bj
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !942
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i8 %.019, ptr %i.bl, align 1, !tbaa !200
  %i.bm = icmp ugt i8 %i.bf, %i.be
  br i1 %i.bm, label %bb.f, label %.loopexit, !llvm.loop !9808

.loopexit:                                        ; preds = %bb.f, %bb.e, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE10value_initIJPKNS1_13map_slot_typeIiS9_EEEEEvhPSaISt4pairIKiS9_EEDpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKNS0_9btree_mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSB_EEEEEESaISL_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 13 uses
  %3 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 13 uses
  %4 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 13 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"struct.absl::lts_20260526::hash_internal::PrintVisitor", align 8 ; 4 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"struct.absl::lts_20260526::hash_internal::PrintVisitor", align 8 ; 4 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::Message", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 8 uses
  %18 = alloca %"class.testing::Message", align 8 ; 8 uses
  %19 = alloca %"class.testing::Message", align 8 ; 8 uses
  %20 = alloca %"struct.absl::lts_20260526::hash_internal::PrintVisitor", align 8 ; 4 uses
  %21 = alloca %"class.testing::Message", align 8 ; 8 uses
  %22 = alloca %"class.testing::Message", align 8 ; 8 uses
  %23 = alloca %"class.testing::Message", align 8 ; 8 uses
  %24 = alloca %"class.testing::Message", align 8 ; 8 uses
  %25 = alloca %"struct.absl::lts_20260526::hash_internal::PrintVisitor", align 8 ; 4 uses
  %26 = alloca %"class.testing::Message", align 8 ; 8 uses
  %27 = alloca %"class.testing::Message", align 8 ; 8 uses
  %28 = alloca %"class.testing::Message", align 8 ; 8 uses
  %29 = alloca %"class.testing::Message", align 8 ; 8 uses
  %30 = alloca %"class.testing::Message", align 8 ; 8 uses
  %31 = alloca %"struct.absl::lts_20260526::hash_internal::PrintVisitor", align 8 ; 4 uses
  %32 = alloca %"class.testing::Message", align 8 ; 8 uses
  %33 = alloca %"class.testing::Message", align 8 ; 8 uses
  %34 = alloca %"struct.absl::lts_20260526::hash_internal::PrintVisitor", align 8 ; 4 uses
  %35 = alloca %"class.testing::Message", align 8 ; 8 uses
  %36 = alloca %"struct.absl::lts_20260526::hash_internal::ExpandVisitor", align 1 ; 3 uses
  %37 = alloca %"class.testing::Message", align 8 ; 8 uses
end_hunk_1
