Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/linked_hash_map_test?download=true
inline.NumInlined: 57403
inline.NumDeleted: 11627
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 207
begin_hunk_0_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISE_SaISE_EEEENS0_5__ops16_Iter_equals_valIKSE_EEET_SO_SO_T0_St26random_access_iterator_tag:bb.a
_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit19.thread: ; preds = %bb.g, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit17.thread, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit19
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 120
  %i.au = load i64, ptr %i.at, align 8, !tbaa !930
  %i.av = icmp eq i64 %i.au, %i.g
  br i1 %i.av, label %bb.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit21.thread

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit19.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 128
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 136
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !158 ; 3 uses
  %i.az = load i64, ptr %i.i, align 8, !tbaa !158
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.j, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit21.thread

bb.j:                                             ; preds = %bb.i
  %i.bb = icmp eq i64 %i.ay, 0
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit103, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit21

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit21: ; preds = %bb.j
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !154
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !154
  %bcmp.i.i.i20 = tail call i32 @bcmp(ptr %i.bd, ptr %i.bc, i64 %i.ay)
  %i.be = icmp eq i32 %bcmp.i.i.i20, 0
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit97, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit21.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit21.thread: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit19.thread, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit21
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 160
  %i.bg = add nsw i64 %.075, -1
  %i.bh = icmp sgt i64 %.075, 1
  br i1 %i.bh, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !6589

._crit_edge.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit21.thread
  %.pre85 = ptrtoint ptr %scevgep to i64
  %.pre86 = sub i64 %i.a, %.pre85
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi87 = phi i64 [ %.pre86, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.037.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 8 uses
  %i.bi = sdiv exact i64 %.pre-phi87, 40
  switch i64 %i.bi, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46 [
    i64 3, label %bb.k
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge83
  ]

._crit_edge._crit_edge83:                         ; preds = %._crit_edge
  %.pre84 = load i64, ptr %2, align 8, !tbaa !930
  br label %bb.q

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load i64, ptr %2, align 8, !tbaa !930
  br label %bb.n

bb.k:                                             ; preds = %._crit_edge
  %i.bj = load i64, ptr %.sroa.037.0.lcssa, align 8, !tbaa !930
  %i.bk = load i64, ptr %2, align 8, !tbaa !930   ; 2 uses
  %i.bl = icmp eq i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.l, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit23.thread

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !158 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !158
  %i.bs = icmp eq i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.m, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit23.thread

bb.m:                                             ; preds = %bb.l
  %i.bt = icmp eq i64 %i.bp, 0
  br i1 %i.bt, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit23

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit23: ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !154
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !154
  %bcmp.i.i.i22 = tail call i32 @bcmp(ptr %i.bv, ptr %i.bu, i64 %i.bp)
  %i.bw = icmp eq i32 %bcmp.i.i.i22, 0
  br i1 %i.bw, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit23.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit23.thread: ; preds = %bb.l, %bb.k, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit23
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 40
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit23.thread
  %i.by = phi i64 [ %i.bk, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit23.thread ], [ %.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.037.1 = phi ptr [ %i.bx, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit23.thread ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge ] ; 6 uses
  %i.bz = load i64, ptr %.sroa.037.1, align 8, !tbaa !930
  %i.ca = icmp eq i64 %i.bz, %i.by
  br i1 %i.ca, label %bb.o, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit25.thread

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !158 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !158
  %i.ch = icmp eq i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.p, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit25.thread

bb.p:                                             ; preds = %bb.o
  %i.ci = icmp eq i64 %i.ce, 0
  br i1 %i.ci, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit25

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit25: ; preds = %bb.p
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !154
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !154
  %bcmp.i.i.i24 = tail call i32 @bcmp(ptr %i.ck, ptr %i.cj, i64 %i.ce)
  %i.cl = icmp eq i32 %bcmp.i.i.i24, 0
  br i1 %i.cl, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit25.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit25.thread: ; preds = %bb.o, %bb.n, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit25
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 40
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge._crit_edge83, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit25.thread
  %i.cn = phi i64 [ %i.by, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit25.thread ], [ %.pre84, %._crit_edge._crit_edge83 ]
  %.sroa.037.2 = phi ptr [ %i.cm, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit25.thread ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge83 ] ; 5 uses
  %i.co = load i64, ptr %.sroa.037.2, align 8, !tbaa !930
  %i.cp = icmp eq i64 %i.co, %i.cn
  br i1 %i.cp, label %bb.r, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit27.thread

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.037.2, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.037.2, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !158 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !158
  %i.cw = icmp eq i64 %i.ct, %i.cv
  br i1 %i.cw, label %bb.s, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit27.thread

bb.s:                                             ; preds = %bb.r
  %i.cx = icmp eq i64 %i.ct, 0
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit27

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit27: ; preds = %bb.s
  %i.cy = load ptr, ptr %i.cr, align 8, !tbaa !154
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !154
  %bcmp.i.i.i26 = tail call i32 @bcmp(ptr %i.cz, ptr %i.cy, i64 %i.ct)
  %i.da = icmp eq i32 %bcmp.i.i.i26, 0
  br i1 %i.da, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit27.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit27.thread: ; preds = %bb.r, %bb.q, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit27
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit17
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit95: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit19
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 80
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit97: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit21
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 120
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit99: ; preds = %bb.f
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit101: ; preds = %bb.h
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 80
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit103: ; preds = %bb.j
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 120
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46: ; preds = %bb.d, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit95, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit97, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit99, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit101, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit103, %bb.s, %bb.p, %bb.m, %._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit27.thread, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit27, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit25, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit23
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.037.1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit25 ], [ %1, %._crit_edge ], [ %.sroa.037.1, %bb.p ], [ %.sroa.037.0.lcssa, %bb.m ], [ %.sroa.037.2, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit27 ], [ %.sroa.037.2, %bb.s ], [ %.sroa.037.0.lcssa, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit23 ], [ %1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit27.thread ], [ %i.dc, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit95 ], [ %i.dg, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit103 ], [ %i.df, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit101 ], [ %i.dd, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit97 ], [ %i.db, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit ], [ %i.de, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit99 ], [ %.sroa.037.074, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclINS_17__normal_iteratorIPSE_St6vectorISE_SaISE_EEEEEEbT_.exit ], [ %.sroa.037.074, %bb.d ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE17_M_realloc_insertIJRKSC_EEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !913  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !912    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #39
  unreachable

_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 230584300921369395)
  %i.m = select i1 %i.k, i64 230584300921369395, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = mul nuw nsw i64 %i.m, 40                 ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #42 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 4 uses
  %i.s = load i64, ptr %2, align 8, !tbaa !930
  store i64 %i.s, ptr %i.r, align 8, !tbaa !930
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !155
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !154  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !158  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.y, ptr %i.a, align 8, !tbaa !156
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE12_M_check_lenEmPKc.exit
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !154
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !156
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !157
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE12_M_check_lenEmPKc.exit
  %i.ac = phi ptr [ %i.aa, %.noexc ], [ %i.v, %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.y, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !157
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !157
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !156 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !158
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !154
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6596)
  call void @llvm.experimental.noalias.scope.decl(metadata !6597)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !tbaa !930, !alias.scope !6597, !noalias !6596
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !tbaa !930, !alias.scope !6596, !noalias !6597
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !155, !alias.scope !6596, !noalias !6597
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !154, !alias.scope !6597, !noalias !6596 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !158, !alias.scope !6597, !noalias !6596 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !6598
  br label %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !154, !alias.scope !6596, !noalias !6597
  %i.at = load i64, ptr %i.an, align 8, !tbaa !157, !alias.scope !6597, !noalias !6596
  store i64 %i.at, ptr %i.al, align 8, !tbaa !157, !alias.scope !6596, !noalias !6597
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !158, !alias.scope !6597, !noalias !6596
  br label %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.au = phi i64 [ %i.aq, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !158, !alias.scope !6596, !noalias !6597
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !154, !alias.scope !6597, !noalias !6596
  store i64 0, ptr %i.av, align 8, !tbaa !158, !alias.scope !6597, !noalias !6596
  store i8 0, ptr %i.an, align 8, !tbaa !157, !alias.scope !6597, !noalias !6596
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit, label %.lr.ph.i.i.i, !llvm.loop !95

_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.ay, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bq, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.az, %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bp, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6599)
  call void @llvm.experimental.noalias.scope.decl(metadata !6600)
  %i.ba = load i64, ptr %.0911.i.i.i29, align 8, !tbaa !930, !alias.scope !6600, !noalias !6599
  store i64 %i.ba, ptr %.012.i.i.i28, align 8, !tbaa !930, !alias.scope !6599, !noalias !6600
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24 ; 3 uses
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !155, !alias.scope !6599, !noalias !6600
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !154, !alias.scope !6600, !noalias !6599 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24 ; 5 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !158, !alias.scope !6600, !noalias !6599 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bk, i1 false), !alias.scope !6601
  br label %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !154, !alias.scope !6599, !noalias !6600
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !157, !alias.scope !6600, !noalias !6599
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !157, !alias.scope !6599, !noalias !6600
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !158, !alias.scope !6600, !noalias !6599
  br label %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.bm = phi i64 [ %i.bi, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !158, !alias.scope !6599, !noalias !6600
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !154, !alias.scope !6600, !noalias !6599
  store i64 0, ptr %i.bn, align 8, !tbaa !158, !alias.scope !6600, !noalias !6599
  store i8 0, ptr %i.bf, align 8, !tbaa !157, !alias.scope !6600, !noalias !6599
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bp, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !95

_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit36: ; preds = %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.az, %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit ], [ %i.bq, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE13_M_deallocateEPSC_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit36
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !914
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bu) #40
  br label %_ZNSt12_Vector_baseISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE13_M_deallocateEPSC_m.exit

_ZNSt12_Vector_baseISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE13_M_deallocateEPSC_m.exit: ; preds = %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !912
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !913
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !914
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.by) #37 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bw

bb.l:                                             ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #36
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SE_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SG_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.e = load i64, ptr %i.c, align 8, !tbaa !157
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #40
  br label %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i

_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SG_.exit, label %.lr.ph.i, !llvm.loop !90

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SG_.exit: ; preds = %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE17_M_realloc_insertIJSC_EEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !913  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !912    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #39
  unreachable

_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #42 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !930
  store i64 %i.r, ptr %i.q, align 8, !tbaa !930
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !155
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !154  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !158  ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZNSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOSB_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE12_M_check_lenEmPKc.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !154
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !157
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !157
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !158
  br label %_ZNSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOSB_.exit

_ZNSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOSB_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = phi i64 [ %i.z, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !158
  store ptr %i.w, ptr %i.t, align 8, !tbaa !154
  store i64 0, ptr %i.ae, align 8, !tbaa !158
  store i8 0, ptr %i.w, align 8, !tbaa !157
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOSB_.exit, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOSB_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOSB_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6609)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !tbaa !930, !alias.scope !6609, !noalias !6608
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !930, !alias.scope !6608, !noalias !6609
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !155, !alias.scope !6608, !noalias !6609
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !154, !alias.scope !6609, !noalias !6608 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !158, !alias.scope !6609, !noalias !6608 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !6610
  br label %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !154, !alias.scope !6608, !noalias !6609
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !157, !alias.scope !6609, !noalias !6608
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !157, !alias.scope !6608, !noalias !6609
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !158, !alias.scope !6609, !noalias !6608
  br label %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.as = phi i64 [ %i.ao, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.as, ptr %i.au, align 8, !tbaa !158, !alias.scope !6608, !noalias !6609
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !154, !alias.scope !6609, !noalias !6608
  store i64 0, ptr %i.at, align 8, !tbaa !158, !alias.scope !6609, !noalias !6608
  store i8 0, ptr %i.al, align 8, !tbaa !157, !alias.scope !6609, !noalias !6608
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit, label %.lr.ph.i.i.i, !llvm.loop !95

_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOSB_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOSB_.exit ], [ %i.aw, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ax, %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6612)
  %i.ay = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !930, !alias.scope !6612, !noalias !6611
  store i64 %i.ay, ptr %.012.i.i.i18, align 8, !tbaa !930, !alias.scope !6611, !noalias !6612
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 3 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !155, !alias.scope !6611, !noalias !6612
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !154, !alias.scope !6612, !noalias !6611 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !158, !alias.scope !6612, !noalias !6611 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false), !alias.scope !6613
  br label %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !154, !alias.scope !6611, !noalias !6612
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !157, !alias.scope !6612, !noalias !6611
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !157, !alias.scope !6611, !noalias !6612
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !158, !alias.scope !6612, !noalias !6611
  br label %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bk = phi i64 [ %i.bg, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !158, !alias.scope !6611, !noalias !6612
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !154, !alias.scope !6612, !noalias !6611
  store i64 0, ptr %i.bl, align 8, !tbaa !158, !alias.scope !6612, !noalias !6611
  store i8 0, ptr %i.bd, align 8, !tbaa !157, !alias.scope !6612, !noalias !6611
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bn, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !95

_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit26: ; preds = %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ax, %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit ], [ %i.bo, %_ZSt19__relocate_object_aISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESC_SaISC_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE13_M_deallocateEPSC_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit26
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !914
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bs) #40
  br label %_ZNSt12_Vector_baseISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE13_M_deallocateEPSC_m.exit

_ZNSt12_Vector_baseISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE13_M_deallocateEPSC_m.exit: ; preds = %_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISC_EE11_S_relocateEPSC_SF_SF_RSD_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !912
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !913
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !914
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEJNS0_15linked_hash_mapIS6_SD_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISE_EEE7WrappedISI_EENSN_ISJ_EESL_EE12lazy_emplaceIS6_ZNSM_14InsertInternalIRKSE_EES5_ISF_bEOT_EUlRKSW_E_EENSQ_8iteratorESZ_OT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.1784", align 8 ; 5 uses
  %4 = alloca %"struct.std::pair.1780", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6620)
  %i.a = load i64, ptr %0, align 8, !noalias !6620 ; 3 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6622)
  %.not.i.i.i.i = icmp ult i64 %i.a, 131072
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = or disjoint i64 %i.a, 131072
  store i64 %i.d, ptr %0, align 8, !noalias !6623
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEJNS0_15linked_hash_mapIS6_SD_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISE_EEE7WrappedISI_EENSN_ISJ_EESL_EE28find_or_prepare_insert_smallIS6_EES5_INSQ_8iteratorEbERKT_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !271, !noalias !6623
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !717, !noalias !6623
  %i.i = load i64, ptr %1, align 8, !tbaa !717, !noalias !6623
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEJNS0_15linked_hash_mapIS6_SD_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISE_EEE7WrappedISI_EENSN_ISJ_EESL_EE28find_or_prepare_insert_smallIS6_EES5_INSQ_8iteratorEbERKT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37, !noalias !6623
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %3, align 8, !tbaa !945, !noalias !6623
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.l, align 8, !tbaa !609, !noalias !6623
end_hunk_0
begin_hunk_1_@_ZN7testing8internal16ContainerPrinter10PrintValueISt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISF_EEvEEvRKT_PSo:bb.a
bb.i:                                             ; preds = %bb.g
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 32) ; 0 uses
  br label %bb.j

.thread35:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.252, i64 noundef 4) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN7testing8internal7PrintToIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKSt4pairIT_T0_EPSo(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.029.041, ptr noundef nonnull %1)
  %i.ai = add i64 %.01542, 1                      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.029.041, i64 40 ; 2 uses
  %.not38 = icmp eq ptr %i.aj, %i.p
  br i1 %.not38, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %._crit_edge.thread, label %bb.k

bb.k:                                             ; preds = %.thread35, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !157
  %i.al = load ptr, ptr %1, align 8, !tbaa !169
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !270
  %.not.i23 = icmp eq i64 %i.aq, 0
  br i1 %.not.i23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25

bb.m:                                             ; preds = %bb.k
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 125, ptr %i.a, align 1, !tbaa !157
  %i.at = load ptr, ptr %1, align 8, !tbaa !169
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !270
  %.not.i26 = icmp eq i64 %i.ay, 0
  br i1 %.not.i26, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28

bb.o:                                             ; preds = %._crit_edge.thread
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 125) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit28: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 230584300921369395
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.212) #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !928
  %i.d = load ptr, ptr %0, align 8, !tbaa !926
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !927
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 40
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #42 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !926    ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !927  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ah, %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_M_allocateEm.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ag, %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_M_allocateEm.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6707)
  %i.r = load i64, ptr %.0911.i.i.i, align 8, !tbaa !943, !alias.scope !6707, !noalias !6706
  store i64 %i.r, ptr %.012.i.i.i, align 8, !tbaa !943, !alias.scope !6706, !noalias !6707
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !155, !alias.scope !6706, !noalias !6707
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !154, !alias.scope !6707, !noalias !6706 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !158, !alias.scope !6707, !noalias !6706 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false), !alias.scope !6708
  br label %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.v, ptr %i.s, align 8, !tbaa !154, !alias.scope !6706, !noalias !6707
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !157, !alias.scope !6707, !noalias !6706
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !157, !alias.scope !6706, !noalias !6707
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !158, !alias.scope !6707, !noalias !6706
  br label %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.ad = phi i64 [ %i.z, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !158, !alias.scope !6706, !noalias !6707
  store ptr %i.w, ptr %i.t, align 8, !tbaa !154, !alias.scope !6707, !noalias !6706
  store i64 0, ptr %i.ae, align 8, !tbaa !158, !alias.scope !6707, !noalias !6706
  store i8 0, ptr %i.w, align 8, !tbaa !157, !alias.scope !6707, !noalias !6706
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i = icmp eq ptr %i.ag, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !98

_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !926
  br label %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit

_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit: ; preds = %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exitthread-pre-split, %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_M_allocateEm.exit
  %i.ai = phi ptr [ %.pr, %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.ai, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE13_M_deallocateEPSB_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !928
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #40
  br label %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE13_M_deallocateEPSB_m.exit

_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE13_M_deallocateEPSB_m.exit: ; preds = %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !926
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.an, ptr %i.j, align 8, !tbaa !927
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %1
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !928
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE13_M_deallocateEPSB_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE17_M_realloc_insertIJRKS4_RKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !927  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !926    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #39
  unreachable

_ZNKSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 230584300921369395)
  %i.m = select i1 %i.k, i64 230584300921369395, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = mul nuw nsw i64 %i.m, 40                 ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #42 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 4 uses
  %i.s = load i64, ptr %2, align 8, !tbaa !717
  store i64 %i.s, ptr %i.r, align 8, !tbaa !943
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !155
  %i.v = load ptr, ptr %3, align 8, !tbaa !154    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !158  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.x, ptr %i.a, align 8, !tbaa !156
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE12_M_check_lenEmPKc.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.z, ptr %i.t, align 8, !tbaa !154
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !156
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !157
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE12_M_check_lenEmPKc.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZNKSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.x, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !157
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !157
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !156 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !158
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !154
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6715)
  call void @llvm.experimental.noalias.scope.decl(metadata !6716)
  %i.ah = load i64, ptr %.0911.i.i.i, align 8, !tbaa !943, !alias.scope !6716, !noalias !6715
  store i64 %i.ah, ptr %.012.i.i.i, align 8, !tbaa !943, !alias.scope !6715, !noalias !6716
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !155, !alias.scope !6715, !noalias !6716
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !154, !alias.scope !6716, !noalias !6715 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !158, !alias.scope !6716, !noalias !6715 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false), !alias.scope !6717
  br label %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !154, !alias.scope !6715, !noalias !6716
  %i.as = load i64, ptr %i.am, align 8, !tbaa !157, !alias.scope !6716, !noalias !6715
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !157, !alias.scope !6715, !noalias !6716
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !158, !alias.scope !6716, !noalias !6715
  br label %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.at = phi i64 [ %i.ap, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.at, ptr %i.av, align 8, !tbaa !158, !alias.scope !6715, !noalias !6716
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !154, !alias.scope !6716, !noalias !6715
  store i64 0, ptr %i.au, align 8, !tbaa !158, !alias.scope !6716, !noalias !6715
  store i8 0, ptr %i.am, align 8, !tbaa !157, !alias.scope !6716, !noalias !6715
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i, !llvm.loop !98

_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.ax, %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit37, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i34
  %.012.i.i.i29 = phi ptr [ %i.bp, %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %i.ay, %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit ] ; 5 uses
  %.0911.i.i.i30 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %1, %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6718)
  call void @llvm.experimental.noalias.scope.decl(metadata !6719)
  %i.az = load i64, ptr %.0911.i.i.i30, align 8, !tbaa !943, !alias.scope !6719, !noalias !6718
  store i64 %i.az, ptr %.012.i.i.i29, align 8, !tbaa !943, !alias.scope !6718, !noalias !6719
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !155, !alias.scope !6718, !noalias !6719
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !154, !alias.scope !6719, !noalias !6718 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

bb.g:                                             ; preds = %.lr.ph.i.i.i28
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !158, !alias.scope !6719, !noalias !6718 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false), !alias.scope !6720
  br label %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i28
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !154, !alias.scope !6718, !noalias !6719
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !157, !alias.scope !6719, !noalias !6718
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !157, !alias.scope !6718, !noalias !6719
  %.phi.trans.insert.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %.pre.i.i.i.i33 = load i64, ptr %.phi.trans.insert.i.i.i.i32, align 8, !tbaa !158, !alias.scope !6719, !noalias !6718
  br label %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i34

_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %bb.g
  %i.bl = phi i64 [ %i.bh, %bb.g ], [ %.pre.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !158, !alias.scope !6718, !noalias !6719
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !154, !alias.scope !6719, !noalias !6718
  store i64 0, ptr %i.bm, align 8, !tbaa !158, !alias.scope !6719, !noalias !6718
  store i8 0, ptr %i.be, align 8, !tbaa !157, !alias.scope !6719, !noalias !6718
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 40 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bo, %i.c
  br i1 %.not.i.i.i35, label %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit37, label %.lr.ph.i.i.i28, !llvm.loop !98

_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit37: ; preds = %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i34, %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit
  %.0.lcssa.i.i.i36 = phi ptr [ %i.ay, %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit ], [ %i.bp, %_ZSt19__relocate_object_aISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i34 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.d, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE13_M_deallocateEPSB_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit37
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !928
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bt) #40
  br label %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE13_M_deallocateEPSB_m.exit

_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE13_M_deallocateEPSB_m.exit: ; preds = %_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal4EnumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit37, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !926
  store ptr %.0.lcssa.i.i.i36, ptr %i.b, align 8, !tbaa !927
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !928
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  %i.by = call ptr @__cxa_begin_catch(ptr %i.bx) #37 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bv

bb.l:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #36
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

end_hunk_1
begin_hunk_2_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESt6vectorIS8_SaIS8_EEEENS0_5__ops16_Iter_equals_valIKS8_EEET_SI_SI_T0_St26random_access_iterator_tag:bb.a
_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit19.thread: ; preds = %bb.g, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit17.thread, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit19
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 144
  %i.au = load i32, ptr %i.at, align 8, !tbaa !1043
  %i.av = icmp eq i32 %i.au, %i.g
  br i1 %i.av, label %bb.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit19.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 160
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 168
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !158 ; 3 uses
  %i.az = load i64, ptr %i.i, align 8, !tbaa !158
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.j, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread

bb.j:                                             ; preds = %bb.i
  %i.bb = icmp eq i64 %i.ay, 0
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit103, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit21

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit21: ; preds = %bb.j
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !154
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !154
  %bcmp.i.i.i.i20 = tail call i32 @bcmp(ptr %i.bd, ptr %i.bc, i64 %i.ay)
  %i.be = icmp eq i32 %bcmp.i.i.i.i20, 0
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit97, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit19.thread, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit21
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 192
  %i.bg = add nsw i64 %.075, -1
  %i.bh = icmp sgt i64 %.075, 1
  br i1 %i.bh, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !7001

._crit_edge.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread
  %.pre85 = ptrtoint ptr %scevgep to i64
  %.pre86 = sub i64 %i.a, %.pre85
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi87 = phi i64 [ %.pre86, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.037.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 8 uses
  %i.bi = sdiv exact i64 %.pre-phi87, 48
  switch i64 %i.bi, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46 [
    i64 3, label %bb.k
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge83
  ]

._crit_edge._crit_edge83:                         ; preds = %._crit_edge
  %.pre84 = load i32, ptr %2, align 8, !tbaa !1043
  br label %bb.q

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %2, align 8, !tbaa !1043
  br label %bb.n

bb.k:                                             ; preds = %._crit_edge
  %i.bj = load i32, ptr %.sroa.037.0.lcssa, align 8, !tbaa !1043
  %i.bk = load i32, ptr %2, align 8, !tbaa !1043  ; 2 uses
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.l, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !158 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !158
  %i.bs = icmp eq i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.m, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread

bb.m:                                             ; preds = %bb.l
  %i.bt = icmp eq i64 %i.bp, 0
  br i1 %i.bt, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23: ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !154
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !154
  %bcmp.i.i.i.i22 = tail call i32 @bcmp(ptr %i.bv, ptr %i.bu, i64 %i.bp)
  %i.bw = icmp eq i32 %bcmp.i.i.i.i22, 0
  br i1 %i.bw, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread: ; preds = %bb.l, %bb.k, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 48
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread
  %i.by = phi i32 [ %i.bk, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread ], [ %.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.037.1 = phi ptr [ %i.bx, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge ] ; 6 uses
  %i.bz = load i32, ptr %.sroa.037.1, align 8, !tbaa !1043
  %i.ca = icmp eq i32 %i.bz, %i.by
  br i1 %i.ca, label %bb.o, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !158 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !158
  %i.ch = icmp eq i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.p, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread

bb.p:                                             ; preds = %bb.o
  %i.ci = icmp eq i64 %i.ce, 0
  br i1 %i.ci, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit25

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit25: ; preds = %bb.p
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !154
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !154
  %bcmp.i.i.i.i24 = tail call i32 @bcmp(ptr %i.ck, ptr %i.cj, i64 %i.ce)
  %i.cl = icmp eq i32 %bcmp.i.i.i.i24, 0
  br i1 %i.cl, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread: ; preds = %bb.o, %bb.n, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit25
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 48
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge._crit_edge83, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread
  %i.cn = phi i32 [ %i.by, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread ], [ %.pre84, %._crit_edge._crit_edge83 ]
  %.sroa.037.2 = phi ptr [ %i.cm, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge83 ] ; 5 uses
  %i.co = load i32, ptr %.sroa.037.2, align 8, !tbaa !1043
  %i.cp = icmp eq i32 %i.co, %i.cn
  br i1 %i.cp, label %bb.r, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.037.2, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.037.2, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !158 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !158
  %i.cw = icmp eq i64 %i.ct, %i.cv
  br i1 %i.cw, label %bb.s, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread

bb.s:                                             ; preds = %bb.r
  %i.cx = icmp eq i64 %i.ct, 0
  br i1 %i.cx, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27: ; preds = %bb.s
  %i.cy = load ptr, ptr %i.cr, align 8, !tbaa !154
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !154
  %bcmp.i.i.i.i26 = tail call i32 @bcmp(ptr %i.cz, ptr %i.cy, i64 %i.ct)
  %i.da = icmp eq i32 %bcmp.i.i.i.i26, 0
  br i1 %i.da, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread: ; preds = %bb.r, %bb.q, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit17
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 48
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit95: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit19
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 96
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit97: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit21
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 144
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit99: ; preds = %bb.f
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 48
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit101: ; preds = %bb.h
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 96
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit103: ; preds = %bb.j
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 144
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46: ; preds = %bb.d, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit95, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit97, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit99, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit101, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit103, %bb.s, %bb.p, %bb.m, %._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit25, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.037.1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit25 ], [ %1, %._crit_edge ], [ %.sroa.037.1, %bb.p ], [ %.sroa.037.0.lcssa, %bb.m ], [ %.sroa.037.2, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27 ], [ %.sroa.037.2, %bb.s ], [ %.sroa.037.0.lcssa, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23 ], [ %1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread ], [ %i.dc, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit95 ], [ %i.dg, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit103 ], [ %i.df, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit101 ], [ %i.dd, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit97 ], [ %i.db, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit ], [ %i.de, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread46.loopexit.split.loop.exit99 ], [ %.sroa.037.074, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit ], [ %.sroa.037.074, %bb.d ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1025 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1024   ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #39
  unreachable

_ZNKSt6vectorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 192153584101141162)
  %i.m = select i1 %i.k, i64 192153584101141162, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = mul nuw nsw i64 %i.m, 48                 ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #42 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 5 uses
  %i.s = load i32, ptr %2, align 8, !tbaa !1043
  store i32 %i.s, ptr %i.r, align 8, !tbaa !1043
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.t, align 8, !tbaa !169
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 5 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !155
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !154  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !158  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.z, ptr %i.a, align 8, !tbaa !156
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE12_M_check_lenEmPKc.exit
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !154
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !156
  store i64 %i.ac, ptr %i.w, align 8, !tbaa !157
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %_ZNKSt6vectorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE12_M_check_lenEmPKc.exit
  %i.ad = phi ptr [ %i.ab, %.noexc ], [ %i.w, %_ZNKSt6vectorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.z, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !157
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !157
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.x, i64 %i.z, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !156 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !158
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !154
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.aj = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEPS6_ET0_T_SB_SA_(ptr noundef %i.d, ptr noundef %1, ptr noundef nonnull %i.q)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEPS6_ET0_T_SB_SA_(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull %i.ak)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit30 unwind label %bb.h

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit30: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit30, %_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.at, %_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i ], [ %i.d, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit30 ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.am, align 8, !tbaa !169
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !154 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !157
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #40, !inline_history !748
  br label %_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S8_.exit, label %.lr.ph.i.i, !llvm.loop !107

_ZSt8_DestroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S8_.exit: ; preds = %_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit30
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.d, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S8_.exit
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1026
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.ax) #40
  br label %_ZNSt12_Vector_baseISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S8_.exit, %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !1024
  store ptr %i.al, ptr %i.b, align 8, !tbaa !1025
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !1026
  ret void

bb.g:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.ba = call ptr @__cxa_begin_catch(ptr %i.az) #37 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.t, align 8, !tbaa !169
  %i.bb = load ptr, ptr %i.u, align 8, !tbaa !154 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.w
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.bd = load i64, ptr %i.w, align 8, !tbaa !157
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #40, !inline_history !748
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit, %.noexc.i.i.i
  %.0.ph = phi ptr [ %i.q, %.noexc.i.i.i ], [ %i.ak, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.bg = call ptr @__cxa_begin_catch(ptr %i.bf) #37 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S8_(ptr noundef nonnull %i.q, ptr noundef nonnull %.0.ph)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bh

bb.k:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #36
  unreachable

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEPS6_ET0_T_SB_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.t, %bb.d ], [ %2, %bb.a ]  ; 7 uses
  %.01215 = phi ptr [ %i.s, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %i.b = load i32, ptr %.01215, align 8, !tbaa !1043
  store i32 %i.b, ptr %.016, align 8, !tbaa !1043
  %i.c = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.c, align 8, !tbaa !169
  %i.d = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01215, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !155
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !154  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01215, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !158  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.i, ptr %i.a, align 8, !tbaa !156
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %.lr.ph
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.k, ptr %i.d, align 8, !tbaa !154
  %i.l = load i64, ptr %i.a, align 8, !tbaa !156
  store i64 %i.l, ptr %i.f, align 8, !tbaa !157
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %.lr.ph
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.f, %.lr.ph ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !157
  store i8 %i.n, ptr %i.m, align 1, !tbaa !157
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !158
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.s = getelementptr inbounds nuw i8, ptr %.01215, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.016, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.s, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7002

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = call ptr @__cxa_begin_catch(ptr %i.v) #37 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S8_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #39
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.t, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.x

bb.i:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #36
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEEvT_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.h, %_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.a, align 8, !tbaa !169
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.f = load i64, ptr %i.d, align 8, !tbaa !157
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #40, !inline_history !748
  br label %_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i

_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEEvT_SA_.exit, label %.lr.ph.i, !llvm.loop !107

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEEvT_SA_.exit: ; preds = %_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1025 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1024   ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #39
  unreachable

_ZNKSt6vectorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 192153584101141162)
  %i.m = select i1 %i.k, i64 192153584101141162, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = mul nuw nsw i64 %i.m, 48                 ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #42 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 5 uses
  %i.s = load i32, ptr %2, align 8, !tbaa !1043
  store i32 %i.s, ptr %i.r, align 8, !tbaa !1043
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.t, align 8, !tbaa !169
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 5 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !155
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !154  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !158  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.z, ptr %i.a, align 8, !tbaa !156
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE12_M_check_lenEmPKc.exit
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !154
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !156
  store i64 %i.ac, ptr %i.w, align 8, !tbaa !157
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %_ZNKSt6vectorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE12_M_check_lenEmPKc.exit
  %i.ad = phi ptr [ %i.ab, %.noexc ], [ %i.w, %_ZNKSt6vectorISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.z, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !157
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !157
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.x, i64 %i.z, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !156 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !158
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !154
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.aj = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEPS6_ET0_T_SB_SA_(ptr noundef %i.d, ptr noundef %1, ptr noundef nonnull %i.q)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEPS6_ET0_T_SB_SA_(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull %i.ak)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit30 unwind label %bb.h

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit30: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit30, %_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.at, %_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i ], [ %i.d, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit30 ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.am, align 8, !tbaa !169
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !154 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !157
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #40, !inline_history !748
  br label %_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S8_.exit, label %.lr.ph.i.i, !llvm.loop !107

_ZSt8_DestroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S8_.exit: ; preds = %_ZSt8_DestroyISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit30
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.d, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S8_.exit
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1026
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.ax) #40
  br label %_ZNSt12_Vector_baseISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S8_.exit, %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !1024
  store ptr %i.al, ptr %i.b, align 8, !tbaa !1025
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !1026
  ret void

bb.g:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.ba = call ptr @__cxa_begin_catch(ptr %i.az) #37 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.t, align 8, !tbaa !169
  %i.bb = load ptr, ptr %i.u, align 8, !tbaa !154 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.w
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.bd = load i64, ptr %i.w, align 8, !tbaa !157
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #40, !inline_history !748
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit, %.noexc.i.i.i
  %.0.ph = phi ptr [ %i.q, %.noexc.i.i.i ], [ %i.ak, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEES7_SaIS6_EET0_T_SA_S9_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.bg = call ptr @__cxa_begin_catch(ptr %i.bf) #37 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S8_(ptr noundef nonnull %i.q, ptr noundef nonnull %.0.ph)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bh

bb.k:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #36
  unreachable

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiNS1_17NonStandardLayoutEEEEEJNS0_15linked_hash_mapIiS7_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE12lazy_emplaceIiZNSG_14InsertInternalIRKS8_EES5_IS9_bEOT_EUlRKSQ_E_EENSK_8iteratorEST_OT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.1933", align 8 ; 5 uses
  %4 = alloca %"struct.std::pair.1929", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7009)
  %i.a = load i64, ptr %0, align 8, !noalias !7009 ; 3 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7011)
  %.not.i.i.i.i = icmp ult i64 %i.a, 131072
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = or disjoint i64 %i.a, 131072
  store i64 %i.d, ptr %0, align 8, !noalias !7012
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiNS1_17NonStandardLayoutEEEEEJNS0_15linked_hash_mapIiS7_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE28find_or_prepare_insert_smallIiEES5_INSK_8iteratorEbERKT_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !271, !noalias !7012
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !264, !noalias !7012
  %i.i = load i32, ptr %1, align 4, !tbaa !264, !noalias !7012
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiNS1_17NonStandardLayoutEEEEEJNS0_15linked_hash_mapIiS7_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE28find_or_prepare_insert_smallIiEES5_INSK_8iteratorEbERKT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37, !noalias !7012
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %3, align 8, !tbaa !1058, !noalias !7012
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.l, align 8, !tbaa !279, !noalias !7012
  %i.m = call noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKiNS1_17NonStandardLayoutEEEEEJNS0_15linked_hash_mapIiS7_NS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_15linked_hash_mapIiNS3_17NonStandardLayoutENS3_19StatefulTestingHashENS3_20StatefulTestingEqualENS3_5AllocISt4pairIKiS6_EEEE7WrappedIS7_EEiLb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false), !noalias !7012 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !7012
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !157, !noalias !7012, !nonnull !149, !noundef !149
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !157, !noalias !7012
end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE20_M_allocate_and_copyIPKS5_EEPS5_mT_SC_:bb.a
_ZNSt12_Vector_baseISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 4 uses
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEPS5_ET0_T_SA_S9_(ptr noundef %2, ptr noundef %3, ptr noundef %i.e)
          to label %_ZSt22__uninitialized_copy_aIPKSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit unwind label %bb.f ; 0 uses

_ZSt22__uninitialized_copy_aIPKSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE11_M_allocateEm.exit
  ret ptr %i.e

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE11_M_allocateEm.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #37 ; 0 uses
  %.not.i10 = icmp eq ptr %i.e, null
  br i1 %.not.i10, label %_ZNSt12_Vector_baseISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = mul nuw nsw i64 %1, 48
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #40
  br label %_ZNSt12_Vector_baseISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #39
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE13_M_deallocateEPS5_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #36
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE13_M_deallocateEPS5_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEPS5_ET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.t, %bb.d ], [ %2, %bb.a ]  ; 7 uses
  %.01215 = phi ptr [ %i.s, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %i.b = load i32, ptr %.01215, align 8, !tbaa !1056
  store i32 %i.b, ptr %.016, align 8, !tbaa !1056
  %i.c = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.c, align 8, !tbaa !169
  %i.d = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01215, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !155
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !154  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01215, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !158  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.i, ptr %i.a, align 8, !tbaa !156
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %.lr.ph
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.k, ptr %i.d, align 8, !tbaa !154
  %i.l = load i64, ptr %i.a, align 8, !tbaa !156
  store i64 %i.l, ptr %i.f, align 8, !tbaa !157
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %.lr.ph
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.f, %.lr.ph ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !157
  store i8 %i.n, ptr %i.m, align 1, !tbaa !157
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !158
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.s = getelementptr inbounds nuw i8, ptr %.01215, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.016, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.s, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7074

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = call ptr @__cxa_begin_catch(ptr %i.v) #37 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #39
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.t, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.x

bb.i:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #36
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.h, %_ZSt8_DestroyISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.a, align 8, !tbaa !169
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZSt8_DestroyISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.f = load i64, ptr %i.d, align 8, !tbaa !157
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #40, !inline_history !748
  br label %_ZSt8_DestroyISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i

_ZSt8_DestroyISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !109

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE17_M_realloc_insertIJRKiRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1039 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1038   ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #39
  unreachable

_ZNKSt6vectorISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 192153584101141162)
  %i.m = select i1 %i.k, i64 192153584101141162, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = mul nuw nsw i64 %i.m, 48                 ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #42 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 5 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !264
  store i32 %i.s, ptr %i.r, align 8, !tbaa !1056
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.t, align 8, !tbaa !169
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 5 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !155
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !154  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !158  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.z, ptr %i.a, align 8, !tbaa !156
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !154
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !156
  store i64 %i.ac, ptr %i.w, align 8, !tbaa !157
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %_ZNKSt6vectorISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.ad = phi ptr [ %i.ab, %.noexc ], [ %i.w, %_ZNKSt6vectorISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.z, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !157
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !157
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.x, i64 %i.z, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !156 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !158
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !154
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.aj = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEPS5_ET0_T_SA_S9_(ptr noundef %i.d, ptr noundef %1, ptr noundef nonnull %i.q)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEES6_SaIS5_EET0_T_S9_S8_RT1_.exit unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEPS5_ET0_T_SA_S9_(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull %i.ak)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEES6_SaIS5_EET0_T_S9_S8_RT1_.exit31 unwind label %bb.h

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEES6_SaIS5_EET0_T_S9_S8_RT1_.exit31: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEES6_SaIS5_EET0_T_S9_S8_RT1_.exit31, %_ZSt8_DestroyISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.at, %_ZSt8_DestroyISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i ], [ %i.d, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEES6_SaIS5_EET0_T_S9_S8_RT1_.exit31 ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.am, align 8, !tbaa !169
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !154 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt8_DestroyISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !157
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #40, !inline_history !748
  br label %_ZSt8_DestroyISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !109

_ZSt8_DestroyIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEES6_SaIS5_EET0_T_S9_S8_RT1_.exit31
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i32 = icmp eq ptr %i.d, null
  br i1 %.not.i32, label %_ZNSt12_Vector_baseISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S7_.exit
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1040
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.ax) #40
  br label %_ZNSt12_Vector_baseISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S7_.exit, %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !1038
  store ptr %i.al, ptr %i.b, align 8, !tbaa !1039
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !1040
  ret void

bb.g:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.ba = call ptr @__cxa_begin_catch(ptr %i.az) #37 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.t, align 8, !tbaa !169
  %i.bb = load ptr, ptr %i.u, align 8, !tbaa !154 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.w
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.bd = load i64, ptr %i.w, align 8, !tbaa !157
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #40, !inline_history !748
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %.noexc.i.i.i
  %.0.ph = phi ptr [ %i.q, %.noexc.i.i.i ], [ %i.ak, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.bg = call ptr @__cxa_begin_catch(ptr %i.bf) #37 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIiN4absl12lts_2026052618container_internal17NonStandardLayoutEEEvT_S7_(ptr noundef nonnull %i.q, ptr noundef nonnull %.0.ph)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bh

bb.k:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #36
  unreachable

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_33InputIteratorBucketHashEqualAllocINS3_15linked_hash_mapINS4_17NonStandardLayoutEiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKS8_iEEEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.439, i32 noundef 512)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.442, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.443, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !169
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !178
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.444, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

end_hunk_3
begin_hunk_4_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESt6vectorIS8_SaIS8_EEEENS0_5__ops16_Iter_equals_valIKS8_EEET_SI_SI_T0_St26random_access_iterator_tag:bb.a
_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23: ; preds = %bb.e, %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i20
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.049.068, i64 136
  %i.at = load i32, ptr %i.as, align 8, !tbaa !1098
  %i.au = load i32, ptr %i.j, align 8, !tbaa !1098
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.av, label %.loopexit.split.loop.exit61, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit19.thread, %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i20, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.049.068, i64 152
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.049.068, i64 160
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !158
  %i.az = icmp eq i64 %i.ay, %i.i
  br i1 %i.az, label %bb.f, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread
  br i1 %i.o, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i24

_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i24: ; preds = %bb.f
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !154
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !154
  %bcmp.i.i.i.i25 = tail call i32 @bcmp(ptr %i.bb, ptr %i.ba, i64 %i.i)
  %i.bc = icmp eq i32 %bcmp.i.i.i.i25, 0
  br i1 %i.bc, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27: ; preds = %bb.f, %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i24
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.049.068, i64 184
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1098
  %i.bf = load i32, ptr %i.j, align 8, !tbaa !1098
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %.loopexit.split.loop.exit63, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread, %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i24, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.049.068, i64 192
  %i.bi = add nsw i64 %.069, -1
  %i.bj = icmp sgt i64 %.069, 1
  br i1 %i.bj, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !7156

._crit_edge.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread
  %.pre77 = ptrtoint ptr %scevgep to i64
  %.pre78 = sub i64 %i.a, %.pre77
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi79 = phi i64 [ %.pre78, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.049.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 7 uses
  %i.bk = sdiv exact i64 %.pre-phi79, 48
  switch i64 %i.bk, label %.loopexit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge74
  ]

._crit_edge._crit_edge74:                         ; preds = %._crit_edge
  %.phi.trans.insert75 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre76 = load i64, ptr %.phi.trans.insert75, align 8, !tbaa !158
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !158
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.049.0.lcssa, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.049.0.lcssa, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !158 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !158 ; 2 uses
  %i.br = icmp eq i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.h, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit31.thread

bb.h:                                             ; preds = %bb.g
  %i.bs = icmp eq i64 %i.bo, 0
  br i1 %i.bs, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit31, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i28

_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i28: ; preds = %bb.h
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !154
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !154
  %bcmp.i.i.i.i29 = tail call i32 @bcmp(ptr %i.bu, ptr %i.bt, i64 %i.bo)
  %i.bv = icmp eq i32 %bcmp.i.i.i.i29, 0
  br i1 %i.bv, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit31, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit31.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit31: ; preds = %bb.h, %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i28
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.049.0.lcssa, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !1098
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !1098
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %.loopexit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit31.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit31.thread: ; preds = %bb.g, %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i28, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit31
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.049.0.lcssa, i64 48
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit31.thread
  %i.cc = phi i64 [ %i.bq, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit31.thread ], [ %.pre, %._crit_edge._crit_edge ] ; 4 uses
  %.sroa.049.1 = phi ptr [ %i.cb, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit31.thread ], [ %.sroa.049.0.lcssa, %._crit_edge._crit_edge ] ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.049.1, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.049.1, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !158
  %i.ch = icmp eq i64 %i.cg, %i.cc
  br i1 %i.ch, label %bb.j, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit35.thread

bb.j:                                             ; preds = %bb.i
  %i.ci = icmp eq i64 %i.cc, 0
  br i1 %i.ci, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit35, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i32

_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i32: ; preds = %bb.j
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !154
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !154
  %bcmp.i.i.i.i33 = tail call i32 @bcmp(ptr %i.ck, ptr %i.cj, i64 %i.cc)
  %i.cl = icmp eq i32 %bcmp.i.i.i.i33, 0
  br i1 %i.cl, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit35, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit35.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit35: ; preds = %bb.j, %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i32
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.049.1, i64 40
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !1098
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !1098
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %.loopexit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit35.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit35.thread: ; preds = %bb.i, %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i32, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit35
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.049.1, i64 48
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge74, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit35.thread
  %i.cs = phi i64 [ %i.cc, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit35.thread ], [ %.pre76, %._crit_edge._crit_edge74 ] ; 3 uses
  %.sroa.049.2 = phi ptr [ %i.cr, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit35.thread ], [ %.sroa.049.0.lcssa, %._crit_edge._crit_edge74 ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.049.2, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.049.2, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !158
  %i.cx = icmp eq i64 %i.cw, %i.cs
  br i1 %i.cx, label %bb.l, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit39.thread

bb.l:                                             ; preds = %bb.k
  %i.cy = icmp eq i64 %i.cs, 0
  br i1 %i.cy, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit39, label %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i36

_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i36: ; preds = %bb.l
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !154
  %i.da = load ptr, ptr %i.ct, align 8, !tbaa !154
  %bcmp.i.i.i.i37 = tail call i32 @bcmp(ptr %i.da, ptr %i.cz, i64 %i.cs)
  %i.db = icmp eq i32 %bcmp.i.i.i.i37, 0
  br i1 %i.db, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit39, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit39.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit39: ; preds = %bb.l, %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i36
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.049.2, i64 40
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !1098
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.df = load i32, ptr %i.de, align 8, !tbaa !1098
  %i.dg = icmp eq i32 %i.dd, %i.df
  br i1 %i.dg, label %.loopexit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit39.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit39.thread: ; preds = %bb.k, %_ZN4absl12lts_2026052618container_internaleqERKNS1_17NonStandardLayoutES4_.exit.i.i36, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit39
  br label %.loopexit

.loopexit.split.loop.exit59:                      ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit19
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.049.068, i64 48
  br label %.loopexit

.loopexit.split.loop.exit61:                      ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit23
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.049.068, i64 96
  br label %.loopexit

.loopexit.split.loop.exit63:                      ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.049.068, i64 144
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit, %.loopexit.split.loop.exit59, %.loopexit.split.loop.exit61, %.loopexit.split.loop.exit63, %._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit39.thread, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit39, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit35, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit31
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.049.1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit35 ], [ %1, %._crit_edge ], [ %.sroa.049.0.lcssa, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit31 ], [ %1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit39.thread ], [ %.sroa.049.2, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit39 ], [ %i.di, %.loopexit.split.loop.exit61 ], [ %i.dh, %.loopexit.split.loop.exit59 ], [ %i.dj, %.loopexit.split.loop.exit63 ], [ %.sroa.049.068, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(44) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1081 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1080   ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #39
  unreachable

_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 192153584101141162)
  %i.m = select i1 %i.k, i64 192153584101141162, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = mul nuw nsw i64 %i.m, 48                 ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #42 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.r, align 8, !tbaa !169
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 5 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !155
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !154  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !158  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.x, ptr %i.a, align 8, !tbaa !156
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE12_M_check_lenEmPKc.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.z, ptr %i.s, align 8, !tbaa !154
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !156
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !157
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE12_M_check_lenEmPKc.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.x, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !157
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !157
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !156 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !158
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !154
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1098
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !1098
  %i.ak = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEPS6_ET0_T_SB_SA_(ptr noundef %i.d, ptr noundef %1, ptr noundef nonnull %i.q)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.am = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEPS6_ET0_T_SB_SA_(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull %i.al)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit30 unwind label %bb.h

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit30: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit30, %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.at, %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i ], [ %i.d, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit30 ] ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %.05.i.i, align 8, !tbaa !169
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !154 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !157
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #40, !inline_history !748
  br label %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S8_.exit, label %.lr.ph.i.i, !llvm.loop !114

_ZSt8_DestroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S8_.exit: ; preds = %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit30
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.d, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S8_.exit
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1082
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.ax) #40
  br label %_ZNSt12_Vector_baseISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S8_.exit, %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !1080
  store ptr %i.am, ptr %i.b, align 8, !tbaa !1081
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !1082
  ret void

bb.g:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.ba = call ptr @__cxa_begin_catch(ptr %i.az) #37 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.r, align 8, !tbaa !169
  %i.bb = load ptr, ptr %i.s, align 8, !tbaa !154 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.u
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.bd = load i64, ptr %i.u, align 8, !tbaa !157
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #40, !inline_history !748
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit, %.noexc.i.i.i
  %.0.ph = phi ptr [ %i.q, %.noexc.i.i.i ], [ %i.al, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.bg = call ptr @__cxa_begin_catch(ptr %i.bf) #37 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S8_(ptr noundef nonnull %i.q, ptr noundef nonnull %.0.ph)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bh

bb.k:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #36
  unreachable

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEPS6_ET0_T_SB_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.u, %bb.d ], [ %2, %bb.a ]  ; 7 uses
  %.01215 = phi ptr [ %i.t, %bb.d ], [ %0, %bb.a ] ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %.016, align 8, !tbaa !169
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.016, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !155
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01215, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !158  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.g, ptr %i.a, align 8, !tbaa !156
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %.lr.ph
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.i, ptr %i.b, align 8, !tbaa !154
  %i.j = load i64, ptr %i.a, align 8, !tbaa !156
  store i64 %i.j, ptr %i.d, align 8, !tbaa !157
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %.lr.ph
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %.lr.ph ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !157
  store i8 %i.l, ptr %i.k, align 1, !tbaa !157
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.016, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !158
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !154
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.q = getelementptr inbounds nuw i8, ptr %.016, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %.01215, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1098
  store i32 %i.s, ptr %i.q, align 8, !tbaa !1098
  %i.t = getelementptr inbounds nuw i8, ptr %.01215, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.016, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.t, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7157

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #37 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S8_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #39
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #36
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEEvT_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %.05.i, align 8, !tbaa !169
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.e = load i64, ptr %i.c, align 8, !tbaa !157
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #40, !inline_history !748
  br label %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i

_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEEvT_SA_.exit, label %.lr.ph.i, !llvm.loop !114

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEEvT_SA_.exit: ; preds = %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(44) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1081 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1080   ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #39
  unreachable

_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 192153584101141162)
  %i.m = select i1 %i.k, i64 192153584101141162, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = mul nuw nsw i64 %i.m, 48                 ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #42 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.r, align 8, !tbaa !169
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 5 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !155
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !154  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !158  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.x, ptr %i.a, align 8, !tbaa !156
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE12_M_check_lenEmPKc.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.z, ptr %i.s, align 8, !tbaa !154
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !156
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !157
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE12_M_check_lenEmPKc.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZNKSt6vectorISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.x, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !157
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !157
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !156 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !158
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !154
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1098
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !1098
  %i.ak = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEPS6_ET0_T_SB_SA_(ptr noundef %i.d, ptr noundef %1, ptr noundef nonnull %i.q)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.am = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEPS6_ET0_T_SB_SA_(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull %i.al)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit30 unwind label %bb.h

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit30: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit30, %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.at, %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i ], [ %i.d, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit30 ] ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %.05.i.i, align 8, !tbaa !169
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !154 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !157
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #40, !inline_history !748
  br label %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S8_.exit, label %.lr.ph.i.i, !llvm.loop !114

_ZSt8_DestroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S8_.exit: ; preds = %_ZSt8_DestroyISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit30
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.d, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S8_.exit
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1082
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.ax) #40
  br label %_ZNSt12_Vector_baseISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S8_.exit, %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !1080
  store ptr %i.am, ptr %i.b, align 8, !tbaa !1081
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !1082
  ret void

bb.g:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.ba = call ptr @__cxa_begin_catch(ptr %i.az) #37 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.r, align 8, !tbaa !169
  %i.bb = load ptr, ptr %i.s, align 8, !tbaa !154 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.u
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.bd = load i64, ptr %i.u, align 8, !tbaa !157
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #40, !inline_history !748
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit, %.noexc.i.i.i
  %.0.ph = phi ptr [ %i.q, %.noexc.i.i.i ], [ %i.al, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiES7_SaIS6_EET0_T_SA_S9_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.bg = call ptr @__cxa_begin_catch(ptr %i.bf) #37 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIKN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S8_(ptr noundef nonnull %i.q, ptr noundef nonnull %.0.ph)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bh

bb.k:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #36
  unreachable

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_17NonStandardLayoutEiEEEEJNS0_15linked_hash_mapIS6_iNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE12lazy_emplaceIS6_ZNSG_14InsertInternalIRKS8_EES5_IS9_bEOT_EUlRKSQ_E_EENSK_8iteratorEST_OT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.2006", align 8 ; 5 uses
  %4 = alloca %"struct.std::pair.2002", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7164)
  %i.a = load i64, ptr %0, align 8, !noalias !7164 ; 3 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7166)
  %.not.i.i.i.i = icmp ult i64 %i.a, 131072
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = or disjoint i64 %i.a, 131072
  store i64 %i.d, ptr %0, align 8, !noalias !7167
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_17NonStandardLayoutEiEEEEJNS0_15linked_hash_mapIS6_iNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE28find_or_prepare_insert_smallIS6_EES5_INSK_8iteratorEbERKT_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !271, !noalias !7167 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !158, !noalias !7167 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !158, !noalias !7167
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_17NonStandardLayoutEiEEEEvE5applyINS1_12EqualElementIS6_NS0_15linked_hash_mapIS6_iNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISG_EEEEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSP_DpOSQ_.exit.thread15.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_17NonStandardLayoutEiEEEEJNS0_15linked_hash_mapIS6_iNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISC_EENSH_ISD_EESF_EE28find_or_prepare_insert_smallIS6_EES5_INSK_8iteratorEbERKT_.exit.i, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_17NonStandardLayoutEiEEEEvE5applyINS1_12EqualElementIS6_NS0_15linked_hash_mapIS6_iNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISG_EEEEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSP_DpOSQ_.exit.i.i.i

_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt14_List_iteratorISt4pairIKNS1_17NonStandardLayoutEiEEEEvE5applyINS1_12EqualElementIS6_NS0_15linked_hash_mapIS6_iNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocIS8_EEE7WrappedISG_EEEEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSP_DpOSQ_.exit.i.i.i: ; preds = %bb.e
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !154, !noalias !7167
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !154, !noalias !7167
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j), !noalias !7167
  %i.q = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
end_hunk_4
begin_hunk_5_@_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE20_M_allocate_and_copyIPKS5_EEPS5_mT_SC_:bb.a
_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 4 uses
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEPS5_ET0_T_SA_S9_(ptr noundef %2, ptr noundef %3, ptr noundef %i.e)
          to label %_ZSt22__uninitialized_copy_aIPKSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit unwind label %bb.f ; 0 uses

_ZSt22__uninitialized_copy_aIPKSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEPS5_S5_ET0_T_SA_S9_RSaIT1_E.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE11_M_allocateEm.exit
  ret ptr %i.e

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE11_M_allocateEm.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #37 ; 0 uses
  %.not.i10 = icmp eq ptr %i.e, null
  br i1 %.not.i10, label %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = mul nuw nsw i64 %1, 48
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #40
  br label %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #39
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE13_M_deallocateEPS5_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #36
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE13_M_deallocateEPS5_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEPS5_ET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.u, %bb.d ], [ %2, %bb.a ]  ; 7 uses
  %.01215 = phi ptr [ %i.t, %bb.d ], [ %0, %bb.a ] ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %.016, align 8, !tbaa !169
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.016, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !155
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01215, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !158  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.g, ptr %i.a, align 8, !tbaa !156
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %.lr.ph
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.i, ptr %i.b, align 8, !tbaa !154
  %i.j = load i64, ptr %i.a, align 8, !tbaa !156
  store i64 %i.j, ptr %i.d, align 8, !tbaa !157
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %.lr.ph
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %.lr.ph ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !157
  store i8 %i.l, ptr %i.k, align 1, !tbaa !157
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.016, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !158
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !154
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.q = getelementptr inbounds nuw i8, ptr %.016, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %.01215, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1111
  store i32 %i.s, ptr %i.q, align 8, !tbaa !1111
  %i.t = getelementptr inbounds nuw i8, ptr %.01215, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.016, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.t, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7232

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #37 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #39
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #36
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %.05.i, align 8, !tbaa !169
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZSt8_DestroyISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.e = load i64, ptr %i.c, align 8, !tbaa !157
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #40, !inline_history !748
  br label %_ZSt8_DestroyISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i

_ZSt8_DestroyISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !116

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE17_M_realloc_insertIJRKS4_RKiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1095 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1094   ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.231) #39
  unreachable

_ZNKSt6vectorISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 192153584101141162)
  %i.m = select i1 %i.k, i64 192153584101141162, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = mul nuw nsw i64 %i.m, 48                 ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #42 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.r, align 8, !tbaa !169
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 5 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !155
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !154  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !158  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.x, ptr %i.a, align 8, !tbaa !156
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.z, ptr %i.s, align 8, !tbaa !154
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !156
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !157
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %_ZNKSt6vectorISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE12_M_check_lenEmPKc.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZNKSt6vectorISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.x, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !157
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !157
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !156 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !158
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !154
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ai = load i32, ptr %3, align 4, !tbaa !264
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !1111
  %i.aj = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEPS5_ET0_T_SA_S9_(ptr noundef %i.d, ptr noundef %1, ptr noundef nonnull %i.q)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiES6_SaIS5_EET0_T_S9_S8_RT1_.exit unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEPS5_ET0_T_SA_S9_(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull %i.ak)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiES6_SaIS5_EET0_T_S9_S8_RT1_.exit31 unwind label %bb.h

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiES6_SaIS5_EET0_T_S9_S8_RT1_.exit31: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiES6_SaIS5_EET0_T_S9_S8_RT1_.exit31, %_ZSt8_DestroyISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.as, %_ZSt8_DestroyISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i ], [ %i.d, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiES6_SaIS5_EET0_T_S9_S8_RT1_.exit31 ] ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %.05.i.i, align 8, !tbaa !169
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !154 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZSt8_DestroyISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !157
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #40, !inline_history !748
  br label %_ZSt8_DestroyISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !116

_ZSt8_DestroyIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S7_.exit: ; preds = %_ZSt8_DestroyISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiES6_SaIS5_EET0_T_S9_S8_RT1_.exit31
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i32 = icmp eq ptr %i.d, null
  br i1 %.not.i32, label %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S7_.exit
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1096
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.aw) #40
  br label %_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S7_.exit, %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !1094
  store ptr %i.al, ptr %i.b, align 8, !tbaa !1095
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !1096
  ret void

bb.g:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.az = call ptr @__cxa_begin_catch(ptr %i.ay) #37 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal17NonStandardLayoutE, i64 16), ptr %i.r, align 8, !tbaa !169
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !154 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.u
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.bc = load i64, ptr %i.u, align 8, !tbaa !157
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #40, !inline_history !748
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %.noexc.i.i.i
  %.0.ph = phi ptr [ %i.q, %.noexc.i.i.i ], [ %i.ak, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.bf = call ptr @__cxa_begin_catch(ptr %i.be) #37 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIN4absl12lts_2026052618container_internal17NonStandardLayoutEiEEvT_S7_(ptr noundef nonnull %i.q, ptr noundef nonnull %.0.ph)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bg

bb.k:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #36
  unreachable

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal21TypeParameterizedTestIN4absl12lts_2026052618container_internal15ConstructorTestENS0_11TemplateSelINS4_28gtest_suite_ConstructorTest_24InputIteratorBucketAllocEEENS0_5TypesINS3_15linked_hash_mapIiiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEJNSB_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSC_SD_NSE_ISF_IKSP_iEEEEENSB_INS4_4EnumESP_SC_SD_NSE_ISF_IKSU_SP_EEEEENSB_INS4_9EnumClassEiSC_SD_NSE_ISF_IKSZ_iEEEEENSB_IiNS4_17NonStandardLayoutESC_SD_NSE_ISF_ISG_S14_EEEEENSB_IS14_iSC_SD_NSE_ISF_IKS14_iEEEEEEEEE8RegisterEPKcNS0_12CodeLocationES1F_S1F_iRKSt6vectorISP_SaISP_EE(ptr noundef %0, ptr noundef align 8 %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %15 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.c, ptr %10, align 8, !tbaa !155
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.437) #39
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 %i.e, ptr %i.b, align 8, !tbaa !156
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc33 unwind label %bb.af  ; 2 uses

.noexc33:                                         ; preds = %.noexc.i
  store ptr %i.g, ptr %10, align 8, !tbaa !154
  %i.h = load i64, ptr %i.b, align 8, !tbaa !156
  store i64 %i.h, ptr %i.c, align 8, !tbaa !157
end_hunk_5
