Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestBinPacker?download=true
inline.NumInlined: 2273
inline.NumDeleted: 502
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN12_GLOBAL__N_122AllocateCTestResourcesINS_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS8_ESaISt4pairIKS8_SA_EEERKSt6vectorIS8_SaIS8_EEmRSK_IP26cmCTestBinPackerAllocationSaISQ_EE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %i.s = phi ptr [ %i.d, %.lr.ph ], [ %i.fm, %.critedge ]
  %.041200 = phi i64 [ 0, %.lr.ph ], [ %i.fu, %.critedge ] ; 12 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %.041200
  %i.u = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t) ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !79
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !80
  %i.y = sub i32 %i.v, %i.x
  %i.z = load ptr, ptr %3, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %2
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !41
  %.not = icmp ult i32 %i.y, %i.ad
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr %1, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %.041200
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.ai = load ptr, ptr %3, align 8, !tbaa !76
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %.not48 = icmp ult i64 %i.e, %i.am
  br i1 %.not48, label %bb.d, label %.critedge50

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i32 0, ptr %i.g, align 8, !tbaa !81
  store ptr null, ptr %i.h, align 8, !tbaa !82
  store ptr %i.g, ptr %i.i, align 8, !tbaa !69
  store ptr %i.g, ptr %i.j, align 8, !tbaa !83
  store i64 0, ptr %i.k, align 8, !tbaa !61
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !82  ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %6, ptr %5, align 8, !tbaa !85
  %i.ao = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24cmCTestResourceAllocator8ResourceEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %i.an, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.aq, %.noexc.i.i ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !86 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24cmCTestResourceAllocator8ResourceEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !3

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24cmCTestResourceAllocator8ResourceEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.i, align 8, !tbaa !87
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24cmCTestResourceAllocator8ResourceEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.ao, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24cmCTestResourceAllocator8ResourceEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.as, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !88 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.g, label %bb.f, !llvm.loop !4

bb.g:                                             ; preds = %bb.f
  store ptr %.0.i.i7.i.i.i.i, ptr %i.j, align 8, !tbaa !87
  %i.at = load i64, ptr %i.m, align 8, !tbaa !61
  store i64 %i.at, ptr %i.k, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !87
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit: ; preds = %bb.d, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !65  ; 3 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !64    ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i, label %.noexc52, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.az = icmp ugt i64 %i.ay, 9223372036854775776
  br i1 %i.az, label %.noexc.i.i51, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !56

.noexc.i.i51:                                     ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i51
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #22
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc52_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc52_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !70
  %.pre242.a = load ptr, ptr %i.b, align 8, !tbaa !70
  br label %.noexc52

.noexc52:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc52_crit_edge, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
  %i.bb = phi ptr [ %i.au, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit ], [ %.pre242.a, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc52_crit_edge ]
  %i.bc = phi ptr [ %i.av, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc52_crit_edge ]
  %.pr.i = phi ptr [ null, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit ], [ %i.ba, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc52_crit_edge ] ; 14 uses
  store ptr %.pr.i, ptr %7, align 8, !tbaa !64
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr.i, i64 %i.ay
  store ptr %i.bd, ptr %i.o, align 8, !tbaa !68
  %i.be = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.bc, ptr %i.bb, ptr noundef %.pr.i)
          to label %bb.k unwind label %bb.i       ; 4 uses

bb.i:                                             ; preds = %.noexc52
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.ay) #25
  br label %.body

bb.k:                                             ; preds = %.noexc52
  store ptr %i.be, ptr %i.n, align 8, !tbaa !65
  %i.bg = load ptr, ptr %3, align 8, !tbaa !76
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %2
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !41
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %.pr.i, i64 %.041200 ; 3 uses
  %i.bm = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !80
  %i.bp = add i32 %i.bo, %i.bk
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %i.p, ptr %4, align 8, !tbaa !66
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !43 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !42 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.bs, ptr %i.a, align 8, !tbaa !75
  %i.bt = icmp ugt i64 %i.bs, 15
  br i1 %i.bt, label %.noexc.i.i53, label %._crit_edge.i.i.i

.noexc.i.i53:                                     ; preds = %bb.l
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc54 unwind label %bb.u   ; 2 uses

.noexc54:                                         ; preds = %.noexc.i.i53
  store ptr %i.bu, ptr %4, align 8, !tbaa !43
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !75
  store i64 %i.bv, ptr %i.p, align 8, !tbaa !67
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc54, %bb.l
  %i.bw = phi ptr [ %i.bu, %.noexc54 ], [ %i.p, %bb.l ] ; 2 uses
  switch i64 %i.bs, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.bx = load i8, ptr %i.bq, align 1, !tbaa !67
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bq, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i
  %i.by = load i64, ptr %i.a, align 8, !tbaa !75  ; 2 uses
  store i64 %i.by, ptr %i.q, align 8, !tbaa !42
  %i.bz = load ptr, ptr %4, align 8, !tbaa !43
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.cb = ptrtoint ptr %i.be to i64
  %i.cc = ptrtoint ptr %.pr.i to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 5
  %i.cf = add nsw i64 %i.ce, -1                   ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %.041200, i64 %i.cf) ; 3 uses
  %i.cg = icmp ult i64 %.041200, %i.cf
  br i1 %i.cg, label %.lr.ph352, label %.critedge.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %bb.t
  %exitcond.not = icmp eq i64 %i.ch, %umax
  br i1 %exitcond.not, label %.critedge.i, label %.lr.ph352

.lr.ph352:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %.0.i351 = phi i64 [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i ], [ %.041200, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 3 uses
  %i.ch = add i64 %.0.i351, 1                     ; 3 uses
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %.pr.i, i64 %i.ch ; 3 uses
  %i.cj = load ptr, ptr %i.h, align 8, !tbaa !82  ; 3 uses
  %.not10.i.i.i.i95 = icmp eq ptr %i.cj, null
  br i1 %.not10.i.i.i.i95, label %.critedge.i115.invoke, label %.lr.ph.i.i.i.i96

.lr.ph.i.i.i.i96:                                 ; preds = %.lr.ph352
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !42 ; 4 uses
  %i.cm = load ptr, ptr %i.ci, align 8            ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i102, %.lr.ph.i.i.i.i96
  %.012.i.i.i.i97 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i96 ], [ %.1.i.i.i.i107, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i102 ] ; 8 uses
  %.0811.i.i.i.i98 = phi ptr [ %i.g, %.lr.ph.i.i.i.i96 ], [ %.19.i.i.i.i104, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i102 ] ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i97, i64 40
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !42 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i99 = call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.co) ; 2 uses
  %i.cp = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i99, 0
  br i1 %i.cp, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i120, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i100

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i100: ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i97, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !43
  %i.cs = call i32 @memcmp(ptr noundef %i.cr, ptr noundef %i.cm, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i99) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i101 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i.i.i.i.i101, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i120, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i102

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i120: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i100, %bb.o
  %i.ct = sub i64 %i.co, %i.cl
  %spec.select7.i.i.i.i.i.i.i.i121 = call i64 @llvm.smax.i64(i64 %i.ct, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i122 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i121, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i123 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i122 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i102

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i102: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i120, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i100
  %.0.i.i.i.i.i.i.i103 = phi i32 [ %i.cs, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i100 ], [ %.0.i6.i.i.i.i.i.i.i123, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i120 ]
  %i.cu = icmp slt i32 %.0.i.i.i.i.i.i.i103, 0    ; 6 uses
  %.19.i.i.i.i104 = select i1 %i.cu, ptr %.0811.i.i.i.i98, ptr %.012.i.i.i.i97 ; 2 uses
  %.1.in.v.i.i.i.i105 = select i1 %i.cu, i64 24, i64 16
  %.1.in.i.i.i.i106 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i97, i64 %.1.in.v.i.i.i.i105
  %.1.i.i.i.i107 = load ptr, ptr %.1.in.i.i.i.i106, align 8, !tbaa !87 ; 2 uses
  %.not.i.i.i.i108 = icmp eq ptr %.1.i.i.i.i107, null
  br i1 %.not.i.i.i.i108, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i109, label %bb.o, !llvm.loop !5

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i109: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i102
  %i.cv = icmp eq ptr %.19.i.i.i.i104, %i.g
  br i1 %i.cv, label %.critedge.i115.invoke, label %bb.p

bb.p:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i109
  %.19.i.i.i.i104.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cu, ptr %.0811.i.i.i.i98, ptr %.012.i.i.i.i97
  %.19.i.i.i.i104.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i104.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.cw = load i64, ptr %.19.i.i.i.i104.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !42 ; 2 uses
  %.sroa.speculated.i.i.i.i110 = call i64 @llvm.umin.i64(i64 %i.cw, i64 %i.cl) ; 2 uses
  %i.cx = icmp eq i64 %.sroa.speculated.i.i.i.i110, 0
  br i1 %i.cx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i116, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i111

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i111: ; preds = %bb.p
  %.19.i.i.i.i104.sroa.sel134.v.sroa.sel.v.sroa.sel.v = select i1 %i.cu, ptr %.0811.i.i.i.i98, ptr %.012.i.i.i.i97
  %.19.i.i.i.i104.sroa.sel134.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i104.sroa.sel134.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cy = load ptr, ptr %.19.i.i.i.i104.sroa.sel134.v.sroa.sel.v.sroa.sel, align 8, !tbaa !43
  %i.cz = call i32 @memcmp(ptr noundef %i.cm, ptr noundef %i.cy, i64 noundef %.sroa.speculated.i.i.i.i110) #21 ; 2 uses
  %.not.i.i.i3.i112 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i3.i112, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i116, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i113

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i116: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i111, %bb.p
  %i.da = sub i64 %i.cl, %i.cw
  %spec.select7.i.i.i.i.i117 = call i64 @llvm.smax.i64(i64 %i.da, i64 -2147483648)
  %.08.i.i.i.i.i118 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i117, i64 2147483647)
  %.0.i6.i.i.i.i119 = trunc nsw i64 %.08.i.i.i.i.i118 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i113

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i113: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i116, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i111
  %.0.i.i.i.i114 = phi i32 [ %i.cz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i111 ], [ %.0.i6.i.i.i.i119, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i116 ]
  %i.db = icmp slt i32 %.0.i.i.i.i114, 0
  br i1 %i.db, label %.critedge.i115.invoke, label %.lr.ph.i.i.i.i65

.critedge.i115.invoke:                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i78, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i82, %.lr.ph352, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i109, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i113
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.2) #24
          to label %.critedge.i115.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge.i115.cont:                              ; preds = %.critedge.i115.invoke
  unreachable

.lr.ph.i.i.i.i65:                                 ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i113
  %.19.i.i.i.i104.sroa.sel137.v.sroa.sel.v.sroa.sel.v = select i1 %i.cu, ptr %.0811.i.i.i.i98, ptr %.012.i.i.i.i97
  %.19.i.i.i.i104.sroa.sel137.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i104.sroa.sel137.v.sroa.sel.v.sroa.sel.v, i64 64
  %i.dc = load i32, ptr %.19.i.i.i.i104.sroa.sel137.v.sroa.sel.v.sroa.sel, align 4, !tbaa !79
  %.19.i.i.i.i104.sroa.sel137.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cu, ptr %.0811.i.i.i.i98, ptr %.012.i.i.i.i97
  %.19.i.i.i.i104.sroa.sel137.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i104.sroa.sel137.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 68
  %i.dd = load i32, ptr %.19.i.i.i.i104.sroa.sel137.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !80
  %i.de = load i64, ptr %i.q, align 8, !tbaa !42  ; 4 uses
  %i.df = load ptr, ptr %4, align 8               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i71, %.lr.ph.i.i.i.i65
  %.012.i.i.i.i66 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i65 ], [ %.1.i.i.i.i76, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i71 ] ; 8 uses
  %.0811.i.i.i.i67 = phi ptr [ %i.g, %.lr.ph.i.i.i.i65 ], [ %.19.i.i.i.i73, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i71 ] ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i66, i64 40
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !42 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i68 = call i64 @llvm.umin.i64(i64 %i.de, i64 %i.dh) ; 2 uses
  %i.di = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i68, 0
  br i1 %i.di, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i89, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i69

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i69: ; preds = %bb.q
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i66, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !43
  %i.dl = call i32 @memcmp(ptr noundef %i.dk, ptr noundef %i.df, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i68) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i70 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i.i.i.i.i.i70, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i89, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i71

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i89: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i69, %bb.q
  %i.dm = sub i64 %i.dh, %i.de
  %spec.select7.i.i.i.i.i.i.i.i90 = call i64 @llvm.smax.i64(i64 %i.dm, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i91 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i90, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i92 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i91 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i71

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i71: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i89, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i69
  %.0.i.i.i.i.i.i.i72 = phi i32 [ %i.dl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i69 ], [ %.0.i6.i.i.i.i.i.i.i92, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i89 ]
  %i.dn = icmp slt i32 %.0.i.i.i.i.i.i.i72, 0     ; 6 uses
  %.19.i.i.i.i73 = select i1 %i.dn, ptr %.0811.i.i.i.i67, ptr %.012.i.i.i.i66 ; 2 uses
  %.1.in.v.i.i.i.i74 = select i1 %i.dn, i64 24, i64 16
  %.1.in.i.i.i.i75 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i66, i64 %.1.in.v.i.i.i.i74
  %.1.i.i.i.i76 = load ptr, ptr %.1.in.i.i.i.i75, align 8, !tbaa !87 ; 2 uses
  %.not.i.i.i.i77 = icmp eq ptr %.1.i.i.i.i76, null
  br i1 %.not.i.i.i.i77, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i78, label %bb.q, !llvm.loop !5

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i78: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i71
  %i.do = icmp eq ptr %.19.i.i.i.i73, %i.g
  br i1 %i.do, label %.critedge.i115.invoke, label %bb.r

bb.r:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i78
  %.19.i.i.i.i73.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dn, ptr %.0811.i.i.i.i67, ptr %.012.i.i.i.i66
  %.19.i.i.i.i73.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i73.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.dp = load i64, ptr %.19.i.i.i.i73.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !42 ; 2 uses
  %.sroa.speculated.i.i.i.i79 = call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.de) ; 2 uses
  %i.dq = icmp eq i64 %.sroa.speculated.i.i.i.i79, 0
  br i1 %i.dq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i85, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i80

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i80: ; preds = %bb.r
  %.19.i.i.i.i73.sroa.sel128.v.sroa.sel.v.sroa.sel.v = select i1 %i.dn, ptr %.0811.i.i.i.i67, ptr %.012.i.i.i.i66
  %.19.i.i.i.i73.sroa.sel128.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i73.sroa.sel128.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.dr = load ptr, ptr %.19.i.i.i.i73.sroa.sel128.v.sroa.sel.v.sroa.sel, align 8, !tbaa !43
  %i.ds = call i32 @memcmp(ptr noundef %i.df, ptr noundef %i.dr, i64 noundef %.sroa.speculated.i.i.i.i79) #21 ; 2 uses
  %.not.i.i.i3.i81 = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i.i3.i81, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i85, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i82

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i85: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i80, %bb.r
  %i.dt = sub i64 %i.de, %i.dp
  %spec.select7.i.i.i.i.i86 = call i64 @llvm.smax.i64(i64 %i.dt, i64 -2147483648)
  %.08.i.i.i.i.i87 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i86, i64 2147483647)
  %.0.i6.i.i.i.i88 = trunc nsw i64 %.08.i.i.i.i.i87 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i82

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i82: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i85, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i80
  %.0.i.i.i.i83 = phi i32 [ %i.ds, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i80 ], [ %.0.i6.i.i.i.i88, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i85 ]
  %i.du = icmp slt i32 %.0.i.i.i.i83, 0
  br i1 %i.du, label %.critedge.i115.invoke, label %bb.s

bb.s:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i82
  %.19.i.i.i.i73.sroa.sel131.v.sroa.sel.v.sroa.sel.v = select i1 %i.dn, ptr %.0811.i.i.i.i67, ptr %.012.i.i.i.i66
  %.19.i.i.i.i73.sroa.sel131.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i73.sroa.sel131.v.sroa.sel.v.sroa.sel.v, i64 64
  %i.dv = sub i32 %i.dc, %i.dd
  %i.dw = load i32, ptr %.19.i.i.i.i73.sroa.sel131.v.sroa.sel.v.sroa.sel, align 4, !tbaa !79
  %.19.i.i.i.i73.sroa.sel131.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dn, ptr %.0811.i.i.i.i67, ptr %.012.i.i.i.i66
  %.19.i.i.i.i73.sroa.sel131.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i73.sroa.sel131.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 68
  %i.dx = load i32, ptr %.19.i.i.i.i73.sroa.sel131.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !80
  %i.dy = sub i32 %i.dw, %i.dx
  %i.dz = icmp ugt i32 %i.dv, %i.dy
  br i1 %i.dz, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %.pr.i, i64 %.0.i351
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %i.ci)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %.critedge.i, %.critedge.i115.invoke
  %lpad.loopexit.split-lp360 = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.p
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ed = load i64, ptr %i.p, align 8, !tbaa !67
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body55

.critedge.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %.0.i.lcssa = phi i64 [ %umax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %umax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i ], [ %.0.i351, %bb.s ]
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %.pr.i, i64 %.0.i.lcssa
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit17.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit17.i: ; preds = %.critedge.i
  %i.eg = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.p
  br i1 %i.eh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit17.i
  %i.ei = load i64, ptr %i.p, align 8, !tbaa !67
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit17.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ek = invoke fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_122AllocateCTestResourcesINS_28RoundRobinAllocationStrategyEEEbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS8_ESaISt4pairIKS8_SA_EEERKSt6vectorIS8_SaIS8_EEmRSK_IP26cmCTestBinPackerAllocationSaISQ_EE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.v unwind label %bb.u

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i51
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %.noexc.i.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i, %bb.k
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body55

.body55:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.u
  %eh.lpad-body56 = phi { ptr, i32 } [ %i.el, %bb.u ], [ %lpad.loopexit.split-lp360, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #21
  br label %.body

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.er, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pr.i, %bb.v ] ; 3 uses
  %i.em = load ptr, ptr %.05.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !67
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.er, %i.be
  br i1 %.not.i.i.i57, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread: ; preds = %bb.v, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.ay) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.es = load ptr, ptr %i.h, align 8, !tbaa !82
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24cmCTestResourceAllocator8ResourceEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.es)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #27
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %i.ek, label %.critedge50, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit._crit_edge

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit._crit_edge: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %.pre243 = load ptr, ptr %3, align 8, !tbaa !76
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre243, i64 %2
  %.pre244 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !52
  br label %bb.x

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.i, %.body55
  %.pn = phi { ptr, i32 } [ %eh.lpad-body56, %.body55 ], [ %i.bf, %bb.i ], [ %i.bf, %bb.j ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn

bb.x:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit._crit_edge, %bb.b
  %i.ev = phi ptr [ %.pre244, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit._crit_edge ], [ %i.ab, %bb.b ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store i64 0, ptr %i.ex, align 8, !tbaa !42
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !43
  store i8 0, ptr %i.ey, align 1, !tbaa !67
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.fa = load ptr, ptr %1, align 8, !tbaa !64    ; 2 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = ashr exact i64 %i.fd, 5                 ; 2 uses
  %.not.i.i59 = icmp ult i64 %.041200, %i.fe
  br i1 %.not.i.i59, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, i64 noundef %.041200, i64 noundef %i.fe) #24
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit: ; preds = %bb.x
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.fa, i64 %.041200
  %i.fg = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ff) ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !79
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !80
  %i.fk = sub i32 %i.fh, %i.fj
  %i.fl = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.fm = load ptr, ptr %1, align 8, !tbaa !64    ; 3 uses
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = ashr exact i64 %i.fp, 5                 ; 2 uses
  %i.fr = add nuw i64 %.041200, 1
  %umax.a = call i64 @llvm.umax.i64(i64 %i.fq, i64 %i.fr)
  %i.fs = add i64 %umax.a, -1                     ; 2 uses
  %exitcond.not354 = icmp eq i64 %.041200, %i.fs
  br i1 %exitcond.not354, label %.critedge50, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61.preheader

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61.preheader: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit
  %i.ft = load ptr, ptr %i.l, align 8, !tbaa !82  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ft, null
  br label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61

bb.z:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_.exit
  %exitcond.not.a = icmp eq i64 %i.fu, %i.fs
  br i1 %exitcond.not.a, label %.critedge50, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61, !llvm.loop !121

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61.preheader, %bb.z
  %.in = phi i64 [ %i.fu, %bb.z ], [ %.041200, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61.preheader ]
  %i.fu = add nuw i64 %.in, 1                     ; 5 uses
  br i1 %.not10.i.i.i.i, label %.critedge.i63, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit61
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !42 ; 4 uses
  %i.fy = load ptr, ptr %i.fv, align 8            ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ft, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !42 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.fx, i64 %i.ga) ; 2 uses
  %i.gb = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.gb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !43
  %i.ge = call i32 @memcmp(ptr noundef %i.gd, ptr noundef %i.fy, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ge, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.aa
  %i.gf = sub i64 %i.ga, %i.fx
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.gf, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ge, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.gg = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.gg, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.gg, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !87 ; 2 uses
  %.not.i.i.i.i62 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i62, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i, label %bb.aa, !llvm.loop !5

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.gh = icmp eq ptr %.19.i.i.i.i, %i.r
  br i1 %i.gh, label %.critedge.i63, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24cmCTestResourceAllocator8ResourceESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !42 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gj, i64 %i.fx) ; 2 uses
  %i.gk = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.gk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.ab
end_hunk_0
