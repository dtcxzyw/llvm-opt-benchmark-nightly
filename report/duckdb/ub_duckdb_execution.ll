inline.NumInlined: 8268
inline.NumDeleted: 4059
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN6duckdb25GroupedAggregateHashTable22TryAddDictionaryGroupsERNS_9DataChunkES2_RKNS_6vectorImLb0ESaImEEE:bb.a
bb.i:                                             ; preds = %bb.h
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !365
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.i
  %i.ak = load ptr, ptr %.0.i, align 8, !tbaa !54
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !54
  %bcmp.i.i = call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.ag)
  %.not111 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not111, label %bb.p, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2888 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !417
  %i.ao = icmp ugt i64 %i.j, %i.an
  br i1 %i.ao, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ap = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #38, !noalias !418 ; 3 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 51)
          to label %bb.k unwind label %bb.l, !noalias !418

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %i.ap, ptr noundef nonnull %4, i64 noundef %i.j)
          to label %_ZN6duckdb9make_uniqINS_6VectorEJRKNS_13LogicalTypeIdERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.m, !noalias !418

bb.l:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40, !noalias !418
  br label %bb.n

common.resume:                                    ; preds = %bb.ag, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.n ], [ %.pn93, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %i.aq, %bb.l ]
  call void @_ZdlPv(ptr noundef nonnull %i.ap) #39, !noalias !418
  br label %common.resume

_ZN6duckdb9make_uniqINS_6VectorEJRKNS_13LogicalTypeIdERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.k
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40, !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2872 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !318 ; 3 uses
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !318
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_6VectorEJRKNS_13LogicalTypeIdERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.at) #40
  call void @_ZdlPv(ptr noundef nonnull %i.at) #39
  br label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_6VectorEJRKNS_13LogicalTypeIdERmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.au = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #38, !noalias !421 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.au, i8 0, i64 %i.j, i1 false), !noalias !421
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2880 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !317 ; 2 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !317
  %.not.i.i.i.i.i96 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i96, label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.aw) #39
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_bEclIbEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit
  store i64 %i.j, ptr %i.am, align 8, !tbaa !417
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !317
  call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.j, i1 false)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %.0.i)
  br label %bb.v

bb.p:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2888 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !417
  %i.bb = icmp ugt i64 %i.j, %i.ba
  br i1 %i.bb, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bc = call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS9_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.aj unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.q
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %.086 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bf = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.bf) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br i1 %.086, label %bb.u, label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br i1 %.086, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn109 = phi { ptr, i32 } [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bc) #40
  br label %bb.ag

bb.v:                                             ; preds = %bb.p, %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2848 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !409 ; 9 uses
  %.not122 = icmp eq i64 %i.bk, 0
  br i1 %.not122, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2744
  br label %bb.ac

.lr.ph:                                           ; preds = %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %i.bn = load ptr, ptr %i.ad, align 8, !tbaa !424 ; 4 uses
  %.not.i98 = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !424 ; 6 uses
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !317 ; 6 uses
  br i1 %.not.i98, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %i.bk, 1
  %i.bq = icmp eq i64 %i.bk, 1
  br i1 %i.bq, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %i.bk, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter158 = and i64 %i.bk, 1
  %i.br = icmp eq i64 %i.bk, 1
  br i1 %i.br, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter162 = and i64 %i.bk, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.088113.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.cg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %.089112.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.ch, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 4 uses
  %niter163 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter163.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ]
  %i.bs = trunc i64 %.089112.us to i32
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.088113.us
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.089112.us ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !425, !range !66, !noundef !69
  %i.bw = xor i8 %i.bv, 1
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = add i64 %.088113.us, %i.bx              ; 2 uses
  store i8 1, ptr %i.bu, align 1, !tbaa !425
  %i.bz = or disjoint i64 %.089112.us, 1          ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.by
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bz ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !425, !range !66, !noundef !69
  %i.ce = xor i8 %i.cd, 1
  %i.cf = zext nneg i8 %i.ce to i64
  %i.cg = add i64 %i.by, %i.cf                    ; 3 uses
  store i8 1, ptr %i.cc, align 1, !tbaa !425
  %i.ch = add nuw i64 %.089112.us, 2              ; 2 uses
  %niter163.next.1 = add nuw i64 %niter163, 2     ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !426

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.088113.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.cg, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.089112.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.ch, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod161 = trunc i64 %i.bk to i1
  call void @llvm.assume(i1 %lcmp.mod161)
  %i.ci = trunc i64 %.089112.us.epil.init to i32
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.088113.us.epil.init
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.089112.us.epil.init ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !425, !range !66, !noundef !69
  %i.cm = xor i8 %i.cl, 1
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = add i64 %.088113.us.epil.init, %i.cn
  store i8 1, ptr %i.ck, align 1, !tbaa !425
  br label %._crit_edge

._crit_edge.loopexit154.unr-lcssa:                ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit154.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.088113.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.dr, %._crit_edge.loopexit154.unr-lcssa ] ; 2 uses
  %.089112.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.ds, %._crit_edge.loopexit154.unr-lcssa ]
  %lcmp.mod157 = trunc i64 %i.bk to i1
  call void @llvm.assume(i1 %lcmp.mod157)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.089112.epil.init
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3  ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.088113.epil.init
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cr ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !425, !range !66, !noundef !69
  %i.cv = xor i8 %i.cu, 1
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = add i64 %.088113.epil.init, %i.cw
  store i8 1, ptr %i.ct, align 1, !tbaa !425
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit154.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa
  %.088.lcssa = phi i64 [ %i.co, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %i.cg, %._crit_edge.loopexit.unr-lcssa ], [ %i.dr, %._crit_edge.loopexit154.unr-lcssa ], [ %i.cx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 2744 ; 3 uses
  %.not92 = icmp eq i64 %.088.lcssa, 0
  br i1 %.not92, label %bb.ac, label %bb.w

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.088113 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.dr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %.089112 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.ds, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.089112
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3  ; 2 uses
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.088113
  store i32 %i.da, ptr %i.dc, align 4, !tbaa !3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.db ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !425, !range !66, !noundef !69
  %i.df = xor i8 %i.de, 1
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = add i64 %.088113, %i.dg                 ; 2 uses
  store i8 1, ptr %i.dd, align 1, !tbaa !425
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.089112
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3  ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dh
  store i32 %i.dk, ptr %i.dm, align 4, !tbaa !3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.dl ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !425, !range !66, !noundef !69
  %i.dp = xor i8 %i.do, 1
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = add i64 %i.dh, %i.dq                    ; 3 uses
  store i8 1, ptr %i.dn, align 1, !tbaa !425
  %i.ds = add nuw i64 %.089112, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit154.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !426

bb.w:                                             ; preds = %._crit_edge
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2568 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !410
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !411
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @_ZNK6duckdb9DataChunk8GetTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.33") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %1)
  invoke void @_ZN6duckdb9DataChunk15InitializeEmptyERKNS_6vectorINS_11LogicalTypeELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dy = load ptr, ptr %9, align 8, !tbaa !81    ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !82 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dy, %i.ea
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i ], [ %i.dy, %bb.y ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #40
  %i.eb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.eb, %i.ea
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !83

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !81
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.y
  %i.ec = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.dy, %bb.y ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ec) #39
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %bb.ag

bb.ab:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %bb.w
  %i.ee = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 noundef 0)
  call void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.ee, ptr noundef nonnull align 8 dereferenceable(104) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 noundef %.088.lcssa)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i64 %.088.lcssa, ptr %i.ef, align 8, !tbaa !409
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 2640 ; 2 uses
  call void @_ZN6duckdb9DataChunk4HashERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %i.dt, ptr noundef nonnull align 8 dereferenceable(104) %i.eg)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.ei = call noundef i64 @_ZN6duckdb25GroupedAggregateHashTable26FindOrCreateGroupsInternalERNS_9DataChunkERNS_6VectorES4_RNS_15SelectionVectorE(ptr noundef nonnull align 8 dereferenceable(2912) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.dt, ptr noundef nonnull align 8 dereferenceable(104) %i.eg, ptr noundef nonnull align 8 dereferenceable(104) %i.cy, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.eh)
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.thread, %bb.ab, %._crit_edge
  %.not92146 = phi i1 [ false, %bb.ab ], [ true, %._crit_edge ], [ true, %._crit_edge.thread ]
  %i.ej = phi ptr [ %i.cy, %bb.ab ], [ %i.cy, %._crit_edge ], [ %i.bl, %._crit_edge.thread ]
  %.088.lcssa145 = phi i64 [ %.088.lcssa, %bb.ab ], [ 0, %._crit_edge ], [ 0, %._crit_edge.thread ]
  %.090 = phi i64 [ %i.ei, %bb.ab ], [ 0, %._crit_edge ], [ 0, %._crit_edge.thread ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.el = call noundef ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !282
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !282
  %i.eq = icmp eq ptr %i.en, %i.ep
  br i1 %i.eq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %.090)
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ej)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !427
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %i.eu = call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.et) ; 2 uses
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.eu)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !427 ; 3 uses
  br i1 %.not92146, label %._crit_edge117, label %.lr.ph116

._crit_edge117:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit100, %bb.ae
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2360
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ex)
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2392
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !427 ; 2 uses
  %i.fa = load i64, ptr %i.bj, align 8, !tbaa !409
  %.not124 = icmp eq i64 %i.fa, 0
  br i1 %.not124, label %._crit_edge121, label %.lr.ph120

.lr.ph120:                                        ; preds = %._crit_edge117
  %i.fb = load ptr, ptr %i.ad, align 8, !tbaa !424 ; 2 uses
  %.not.i101 = icmp eq ptr %i.fb, null
  br i1 %.not.i101, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit102

_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us: ; preds = %.lr.ph120, %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us
  %.0118.us = phi i64 [ %i.ff, %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us ], [ 0, %.lr.ph120 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.0118.us
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !39
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.0118.us
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !39
  %i.ff = add nuw i64 %.0118.us, 1                ; 2 uses
  %i.fg = load i64, ptr %i.bj, align 8, !tbaa !409
  %i.fh = icmp ult i64 %i.ff, %i.fg
  br i1 %i.fh, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us, label %._crit_edge121, !llvm.loop !428

.lr.ph116:                                        ; preds = %bb.ae, %_ZNK6duckdb15SelectionVector9get_indexEm.exit100
  %.085114 = phi i64 [ %i.fx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit100 ], [ 0, %bb.ae ] ; 4 uses
  %i.fi = load ptr, ptr %i.bi, align 8, !tbaa !424 ; 2 uses
  %.not.i99 = icmp eq ptr %i.fi, null
  br i1 %.not.i99, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit100, label %bb.af

bb.af:                                            ; preds = %.lr.ph116
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.085114
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fl = zext i32 %i.fk to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit100

_ZNK6duckdb15SelectionVector9get_indexEm.exit100: ; preds = %.lr.ph116, %bb.af
  %i.fm = phi i64 [ %i.fl, %bb.af ], [ %.085114, %.lr.ph116 ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.085114
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !39
  %i.fp = call noundef ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !414
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !415
  %i.fu = add i64 %i.fr, %i.fo
  %i.fv = add i64 %i.fu, %i.ft
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.fm
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !39
  %i.fx = add nuw i64 %.085114, 1                 ; 2 uses
  %exitcond129.not = icmp eq i64 %i.fx, %.088.lcssa145
  br i1 %exitcond129.not, label %._crit_edge117, label %.lr.ph116, !llvm.loop !429

._crit_edge121:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit102, %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us, %._crit_edge117
  call void @_ZN6duckdb25GroupedAggregateHashTable16UpdateAggregatesERNS_9DataChunkERKNS_6vectorImLb0ESaImEEE(ptr noundef nonnull align 8 dereferenceable(2912) %0, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %.090)
  br label %bb.ah

_ZNK6duckdb15SelectionVector9get_indexEm.exit102: ; preds = %.lr.ph120, %_ZNK6duckdb15SelectionVector9get_indexEm.exit102
  %.0118 = phi i64 [ %i.ge, %_ZNK6duckdb15SelectionVector9get_indexEm.exit102 ], [ 0, %.lr.ph120 ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.0118
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ga
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !39
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.0118
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !39
  %i.ge = add nuw i64 %.0118, 1                   ; 2 uses
  %i.gf = load i64, ptr %i.bj, align 8, !tbaa !409
  %i.gg = icmp ult i64 %i.ge, %i.gf
  br i1 %i.gg, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit102, label %._crit_edge121, !llvm.loop !428

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.u, %bb.aa
  %.pn93 = phi { ptr, i32 } [ %i.ed, %bb.aa ], [ %.pn109, %bb.u ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %common.resume

bb.ah:                                            ; preds = %bb.ad, %._crit_edge121, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.pre = load i64, ptr %5, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit, %bb.ah
  %i.gh = phi i64 [ %.pre, %bb.ah ], [ -1, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret i64 %i.gh

bb.aj:                                            ; preds = %bb.s
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !410
  %i.e = load ptr, ptr %0, align 8, !tbaa !411    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
end_hunk_0
begin_hunk_1_@_ZN6duckdb25GroupedAggregateHashTable26FindOrCreateGroupsInternalERNS_9DataChunkERNS_6VectorES4_RNS_15SelectionVectorE:bb.a
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"struct.duckdb::SelectionVector", align 8 ; 13 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %10 = alloca %"class.duckdb::optional_ptr.373", align 8 ; 7 uses
  %11 = alloca %"class.duckdb::optional_ptr.374", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator.2", align 1 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !409  ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !345
  %i.j = add i64 %i.i, %i.g                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !346  ; 3 uses
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = uitofp i64 %i.l to double
  %i.o = fdiv double %i.n, 1.500000e+00
  %i.p = fptoui double %i.o to i64
  %i.q = icmp ugt i64 %i.j, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = shl i64 %i.l, 1
  tail call void @_ZN6duckdb25GroupedAggregateHashTable6ResizeEm(ptr noundef nonnull align 8 dereferenceable(2912) %0, i64 noundef %i.r)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2464 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !410
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !411
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z)
  tail call void @_ZN6duckdb9DataChunk15InitializeEmptyERKNS_6vectorINS_11LogicalTypeELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !410
  %i.ad = load ptr, ptr %1, align 8, !tbaa !411
  %.not268 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not268, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %.lcssa235 = phi i64 [ 0, %bb.f ], [ %i.at, %.lr.ph ]
  %i.ae = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %.lcssa235)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.ae, ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.af = load i64, ptr %i.f, align 8, !tbaa !409
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2488
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !409
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  tail call void @_ZN6duckdb19TupleDataCollection15ToUnifiedFormatERNS_19TupleDataChunkStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(488) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.u)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !380, !range !66, !noundef !69
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.g, label %bb.h

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.0108236 = phi i64 [ %i.an, %.lr.ph ], [ 0, %bb.f ] ; 3 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %.0108236)
  %i.am = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.0108236)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.al, ptr noundef nonnull align 8 dereferenceable(104) %i.am)
  %i.an = add nuw i64 %.0108236, 1                ; 2 uses
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !410
  %i.ap = load ptr, ptr %1, align 8, !tbaa !411
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 104               ; 2 uses
  %i.au = icmp ult i64 %i.an, %i.at
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !443

bb.g:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.aw = load i64, ptr %i.f, align 8, !tbaa !409
  tail call void @_ZN6duckdb11HyperLogLog6UpdateERNS_6VectorES2_m(ptr noundef nonnull align 1 dereferenceable(64) %i.av, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.aw)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  tail call void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.g)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !427
  tail call void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.g)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !427 ; 11 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !379, !range !66, !noundef !69
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bf = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
  %i.bg = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  tail call void @_ZN6duckdb20PartitionedTupleData13AppendUnifiedERNS_31PartitionedTupleDataAppendStateERNS_9DataChunkERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(152) %i.bf, ptr noundef nonnull align 8 dereferenceable(784) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef %i.g)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = tail call noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.bk = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  tail call void @_ZN6duckdb13RowOperations16InitializeStatesERNS_15TupleDataLayoutERNS_6VectorERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(217) %i.bi, ptr noundef nonnull align 8 dereferenceable(104) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 noundef %i.g)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bj)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !427 ; 5 uses
  %.not271 = icmp eq i64 %i.g, 0
  br i1 %.not271, label %._crit_edge267, label %.lr.ph266

.lr.ph266:                                        ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !424 ; 5 uses
  %xtraiter439 = and i64 %i.g, 3                  ; 3 uses
  %i.bp = icmp ult i64 %i.g, 4
  br i1 %i.bp, label %.epil.preheader438, label %.lr.ph266.new

.lr.ph266.new:                                    ; preds = %.lr.ph266
  %unroll_iter442 = and i64 %i.g, -4
  br label %bb.k

._crit_edge267.loopexit.unr-lcssa:                ; preds = %bb.k
  %lcmp.mod440.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod440.not, label %._crit_edge267, label %.epil.preheader438

.epil.preheader438:                               ; preds = %._crit_edge267.loopexit.unr-lcssa, %.lr.ph266
  %.0109264.epil.init = phi i64 [ 0, %.lr.ph266 ], [ %i.da, %._crit_edge267.loopexit.unr-lcssa ]
  %lcmp.mod441 = icmp ne i64 %xtraiter439, 0
  tail call void @llvm.assume(i1 %lcmp.mod441)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader438
  %.0109264.epil = phi i64 [ %.0109264.epil.init, %.epil.preheader438 ], [ %i.bw, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader438 ], [ %epil.iter.next, %bb.j ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.0109264.epil
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !382
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.0109264.epil
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !382
  %i.bw = add nuw i64 %.0109264.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter439
  br i1 %epil.iter.cmp.not, label %._crit_edge267, label %bb.j, !llvm.loop !444

._crit_edge267:                                   ; preds = %._crit_edge267.loopexit.unr-lcssa, %bb.j, %bb.i
  %i.bx = load i64, ptr %i.h, align 8, !tbaa !345
  %i.by = add i64 %i.bx, %i.g
  store i64 %i.by, ptr %i.h, align 8, !tbaa !345
  br label %bb.ci

bb.k:                                             ; preds = %bb.k, %.lr.ph266.new
  %.0109264 = phi i64 [ 0, %.lr.ph266.new ], [ %i.da, %bb.k ] ; 6 uses
  %niter443 = phi i64 [ 0, %.lr.ph266.new ], [ %niter443.next.3, %bb.k ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.0109264
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !382
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.0109264
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !382
  %i.cf = or disjoint i64 %.0109264, 1            ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !382
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cf
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !382
  %i.cm = or disjoint i64 %.0109264, 2            ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !382
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cm
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !382
  %i.ct = or disjoint i64 %.0109264, 3            ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !382
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ct
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !382
  %i.da = add nuw i64 %.0109264, 4                ; 2 uses
  %niter443.next.3 = add nuw i64 %niter443, 4     ; 2 uses
  %niter443.ncmp.3 = icmp eq i64 %niter443.next.3, %unroll_iter442
  br i1 %niter443.ncmp.3, label %._crit_edge267.loopexit.unr-lcssa, label %bb.k, !llvm.loop !446

bb.l:                                             ; preds = %bb.h
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2080
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.db)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 2112
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !427 ; 10 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 2184
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !427 ; 4 uses
  %.not269 = icmp eq i64 %i.g, 0
  br i1 %.not269, label %._crit_edge241.thread, label %.lr.ph240

._crit_edge241.thread:                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %.critedge

.lr.ph240:                                        ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !351
  br label %bb.m

.lr.ph258:                                        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 2312 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 2336 ; 3 uses
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph240, %bb.m
  %.0111238 = phi i64 [ 0, %.lr.ph240 ], [ %i.eg, %bb.m ]
  %.0113237 = phi i64 [ 0, %.lr.ph240 ], [ %i.ek, %bb.m ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.0113237 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.0113237
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !39
  %i.ea = load i64, ptr %i.dh, align 8, !tbaa !352
  %i.eb = and i64 %i.ea, %i.dz                    ; 2 uses
  store i64 %i.eb, ptr %i.dy, align 8, !tbaa !39
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !383
  %i.ee = icmp ne i64 %i.ed, 0
  %i.ef = zext i1 %i.ee to i64
  %i.eg = add i64 %.0111238, %i.ef                ; 2 uses
  %i.eh = load i64, ptr %i.dx, align 8, !tbaa !39
  %i.ei = or i64 %i.eh, 281474976710655
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.0113237
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !39
  %i.ek = add nuw i64 %.0113237, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %i.g
  br i1 %exitcond.not, label %.lr.ph258, label %bb.m, !llvm.loop !447

bb.n:                                             ; preds = %.lr.ph258, %._crit_edge249
  %.0106256 = phi ptr [ %i.s, %.lr.ph258 ], [ %i.dw, %._crit_edge249 ]
  %.1112255 = phi i64 [ %i.eg, %.lr.ph258 ], [ 0, %._crit_edge249 ]
  %.0114254 = phi i64 [ 0, %.lr.ph258 ], [ %i.hu, %._crit_edge249 ] ; 3 uses
  %.0116253 = phi i64 [ %i.g, %.lr.ph258 ], [ %i.mz, %._crit_edge249 ] ; 2 uses
  %.0117252 = phi i64 [ 0, %.lr.ph258 ], [ %i.ml, %._crit_edge249 ] ; 4 uses
  %i.el = load i64, ptr %i.k, align 8, !tbaa !346
  %i.em = icmp ult i64 %.0117252, %i.el
  br i1 %i.em, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  store i64 0, ptr %i.e, align 8, !tbaa !39
  %i.en = load ptr, ptr %4, align 8, !tbaa !424
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %.0114254 ; 3 uses
  store ptr null, ptr %i.dk, align 8, !tbaa !448
  %i.ep = load ptr, ptr %i.dl, align 8, !tbaa !271 ; 8 uses
  store ptr null, ptr %i.dl, align 8, !tbaa !271
  %.not.i.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 4 uses
  %i.er = load atomic i64, ptr %i.eq acquire, align 8 ; 2 uses
  %i.es = icmp eq i64 %i.er, 4294967297
  %i.et = trunc i64 %i.er to i32                  ; 2 uses
  br i1 %i.es, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.eq, align 8, !tbaa !264
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 0, ptr %i.eu, align 4, !tbaa !269
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !41
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #40, !inline_history !449
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !41
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #40, !inline_history !449
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.fb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fb, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fc = add nsw i32 %i.et, -1
  store i32 %i.fc, ptr %i.eq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.fd = atomicrmw volatile add ptr %i.eq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.et, %bb.s ], [ %i.fd, %bb.t ]
  %i.fe = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.fe, label %bb.u, label %bb.v, !prof !58

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #40
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.q, %bb.o
  store ptr %i.eo, ptr %7, align 8, !tbaa !424
  %i.ff = load ptr, ptr %.0106256, align 8, !tbaa !424 ; 2 uses
  %.not193 = icmp eq ptr %i.ff, null
  %i.fg = load ptr, ptr %i.dm, align 8, !tbaa !351 ; 5 uses
  %i.fh = load i64, ptr %i.k, align 8, !tbaa !346 ; 5 uses
  %i.fi = load i64, ptr %i.dn, align 8, !tbaa !352 ; 2 uses
  %.val148 = load ptr, ptr %i.do, align 8         ; 2 uses
  %.not.i149 = icmp eq i64 %i.fh, 0               ; 2 uses
  br i1 %.not193, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i149, label %.split21.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.w, %bb.x
  %.03117.us.i = phi i64 [ %i.fr, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.03117.us.i
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3  ; 2 uses
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !39 ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.fl ; 2 uses
  %i.fp = lshr i64 %i.fn, 59
  %i.fq = or i64 %i.fp, 1
  %.promoted.us.i = load i64, ptr %i.fo, align 8, !tbaa !39
  br label %bb.y

bb.x:                                             ; preds = %.thread.us.i
  %i.fr = add nuw i64 %.03117.us.i, 1             ; 2 uses
  %exitcond27.not.i = icmp eq i64 %i.fr, %.0116253
  br i1 %exitcond27.not.i, label %_ZN6duckdbL34GroupedAggregateHashTableInnerLoopILb1EEEvPNS_10ht_entry_tEmmPKmPmPKNS_15SelectionVectorEmRS6_S9_RmSA_.exit, label %.lr.ph.us.i, !llvm.loop !450

bb.y:                                             ; preds = %bb.aa, %.lr.ph.us.i
  %i.fs = phi i64 [ %.promoted.us.i, %.lr.ph.us.i ], [ %i.fy, %bb.aa ] ; 3 uses
  %.03216.us.i = phi i64 [ 0, %.lr.ph.us.i ], [ %i.fz, %bb.aa ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !383 ; 2 uses
  %.not.us.i = icmp eq i64 %i.fu, 0
  br i1 %.not.us.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fv = or i64 %i.fu, 281474976710655
  %i.fw = icmp eq i64 %i.fv, %i.fn
  br i1 %i.fw, label %.thread.us.i, label %bb.aa, !prof !55

bb.aa:                                            ; preds = %bb.z
  %i.fx = add i64 %i.fs, %i.fq
  %i.fy = and i64 %i.fx, %i.fi                    ; 2 uses
  store i64 %i.fy, ptr %i.fo, align 8, !tbaa !39
  %i.fz = add nuw i64 %.03216.us.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fz, %i.fh
  br i1 %exitcond.not.i, label %.split21.us.i, label %bb.y, !llvm.loop !451

bb.ab:                                            ; preds = %bb.y
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fs
  store i64 %i.fn, ptr %i.ga, align 8, !tbaa !383
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.z, %bb.ab
  %.sink.i = phi ptr [ %i.c, %bb.ab ], [ %i.d, %bb.z ] ; 2 uses
  %.0.val.sink.i = phi ptr [ %i.eo, %bb.ab ], [ %.val148, %bb.z ]
  %i.gb = load i64, ptr %.sink.i, align 8, !tbaa !39 ; 2 uses
  %i.gc = add i64 %i.gb, 1
  store i64 %i.gc, ptr %.sink.i, align 8, !tbaa !39
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.0.val.sink.i, i64 %i.gb
end_hunk_1
begin_hunk_2_@_ZN6duckdb25GroupedAggregateHashTable26FindOrCreateGroupsInternalERNS_9DataChunkERNS_6VectorES4_RNS_15SelectionVectorE:bb.a
  %i.il = load ptr, ptr %11, align 8, !tbaa !457
  %i.im = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.bg unwind label %bb.az

bb.bg:                                            ; preds = %bb.bf
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 336
  invoke void @_ZN6duckdb13RowOperations16InitializeStatesERNS_15TupleDataLayoutERNS_6VectorERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(217) %i.ik, ptr noundef nonnull align 8 dereferenceable(104) %i.in, ptr noundef nonnull align 8 dereferenceable(24) %i.im, i64 noundef %.0..0..0.180)
          to label %bb.bh unwind label %bb.az

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZNK6duckdb12optional_ptrINS_31PartitionedTupleDataAppendStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %i.io = load ptr, ptr %11, align 8, !tbaa !457  ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 336
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ip)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 368
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !427 ; 3 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_31PartitionedTupleDataAppendStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.is = load ptr, ptr %11, align 8, !tbaa !457
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 128
  %i.iu = load ptr, ptr %7, align 8, !tbaa !424   ; 3 uses
  %i.iv = load ptr, ptr %i.it, align 8, !tbaa !424 ; 3 uses
  %i.iw = load ptr, ptr %i.dm, align 8, !tbaa !351 ; 4 uses
  %xtraiter = and i64 %.0..0..0.180, 1
  %i.ix = icmp eq i64 %.0..0..0.180, 1
  br i1 %i.ix, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.bk
  %unroll_iter = and i64 %.0..0..0.180, -2
  br label %bb.bo

.unr-lcssa:                                       ; preds = %bb.bo
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.bl, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.bk
  %.0115244.epil.init = phi i64 [ 0, %bb.bk ], [ %i.kx, %.unr-lcssa ]
  %lcmp.mod429 = trunc i64 %.0..0..0.180 to i1
  call void @llvm.assume(i1 %lcmp.mod429)
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.0115244.epil.init
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !3
  %i.ja = zext i32 %i.iz to i64                   ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !3
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.jd
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ja
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !39
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.jg ; 2 uses
  %i.ji = load ptr, ptr %i.je, align 8, !tbaa !382 ; 2 uses
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = or i64 %i.jj, -281474976710656
  %i.jl = load i64, ptr %i.jh, align 8, !tbaa !383
  %i.jm = and i64 %i.jk, %i.jl
  store i64 %i.jm, ptr %i.jh, align 8, !tbaa !383
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ja
  store ptr %i.ji, ptr %i.jn, align 8, !tbaa !382
  br label %bb.bl

bb.bl:                                            ; preds = %.unr-lcssa, %.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bi, %bb.bh
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bj
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bo, %.new
  %.0115244 = phi i64 [ 0, %.new ], [ %i.kx, %bb.bo ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.bo ]
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.0115244
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !3
  %i.js = zext i32 %i.jr to i64                   ; 3 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !3
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.jv
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.js
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !39
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.jy ; 2 uses
  %i.ka = load ptr, ptr %i.jw, align 8, !tbaa !382 ; 2 uses
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = or i64 %i.kb, -281474976710656
  %i.kd = load i64, ptr %i.jz, align 8, !tbaa !383
  %i.ke = and i64 %i.kc, %i.kd
  store i64 %i.ke, ptr %i.jz, align 8, !tbaa !383
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.js
  store ptr %i.ka, ptr %i.kf, align 8, !tbaa !382
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.0115244
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3
  %i.kj = zext i32 %i.ki to i64                   ; 3 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !3
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.km
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.kj
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !39
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.kp ; 2 uses
  %i.kr = load ptr, ptr %i.kn, align 8, !tbaa !382 ; 2 uses
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = or i64 %i.ks, -281474976710656
  %i.ku = load i64, ptr %i.kq, align 8, !tbaa !383
  %i.kv = and i64 %i.kt, %i.ku
  store i64 %i.kv, ptr %i.kq, align 8, !tbaa !383
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.kj
  store ptr %i.kr, ptr %i.kw, align 8, !tbaa !382
  %i.kx = add nuw i64 %.0115244, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.bo, !llvm.loop !461

bb.bp:                                            ; preds = %bb.bm, %bb.bn, %bb.az
  %.pn137.pn.pn = phi { ptr, i32 } [ %i.ih, %bb.az ], [ %i.jo, %bb.bm ], [ %i.jp, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %.body

bb.bq:                                            ; preds = %bb.bl, %bb.aw
  %i.ky = phi ptr [ %i.iw, %bb.bl ], [ %i.fg, %bb.aw ] ; 3 uses
  %.not136 = icmp eq i64 %.0..0..0., 0
  br i1 %.not136, label %bb.bt, label %.preheader

.preheader:                                       ; preds = %bb.bq
  %i.kz = load ptr, ptr %i.do, align 8, !tbaa !424 ; 3 uses
  %xtraiter432 = and i64 %.0..0..0., 1
  %i.la = icmp eq i64 %.0..0..0., 1
  br i1 %i.la, label %.epil.preheader431, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter436 = and i64 %.0..0..0., -2
  br label %bb.bs

.unr-lcssa430:                                    ; preds = %bb.bs
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod433.not, label %bb.br, label %.epil.preheader431

.epil.preheader431:                               ; preds = %.unr-lcssa430, %.preheader
  %.0110245.epil.init = phi i64 [ 0, %.preheader ], [ %i.mh, %.unr-lcssa430 ]
  %lcmp.mod435 = trunc i64 %.0..0..0. to i1
  call void @llvm.assume(i1 %lcmp.mod435)
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %.0110245.epil.init
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !3
  %i.ld = zext i32 %i.lc to i64                   ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ld
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !39
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.lf
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !383
  %i.li = and i64 %i.lh, 281474976710655
  %i.lj = inttoptr i64 %i.li to ptr
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ld
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !382
  br label %bb.br

bb.br:                                            ; preds = %.unr-lcssa430, %.epil.preheader431
  %i.ll = invoke noundef i64 @_ZN6duckdb10RowMatcher5MatchERNS_9DataChunkERKNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS4_EEERNS_15SelectionVectorEmRNS_6VectorEPS9_Rm(ptr noundef nonnull align 8 dereferenceable(80) %i.dv, ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 noundef %.0..0..0., ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull %i.dw, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.bt unwind label %bb.ag     ; 0 uses

bb.bs:                                            ; preds = %bb.bs, %.preheader.new
  %.0110245 = phi i64 [ 0, %.preheader.new ], [ %i.mh, %bb.bs ] ; 3 uses
  %niter437 = phi i64 [ 0, %.preheader.new ], [ %niter437.next.1, %bb.bs ]
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %.0110245
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !3
  %i.lo = zext i32 %i.ln to i64                   ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.lo
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !39
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.lq
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !383
  %i.lt = and i64 %i.ls, 281474976710655
  %i.lu = inttoptr i64 %i.lt to ptr
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.lo
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !382
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %.0110245
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !3
  %i.lz = zext i32 %i.ly to i64                   ; 2 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.lz
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !39
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.mb
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !383
  %i.me = and i64 %i.md, 281474976710655
  %i.mf = inttoptr i64 %i.me to ptr
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.lz
  store ptr %i.mf, ptr %i.mg, align 8, !tbaa !382
  %i.mh = add nuw i64 %.0110245, 2                ; 2 uses
  %niter437.next.1 = add nuw i64 %niter437, 2     ; 2 uses
  %niter437.ncmp.1 = icmp eq i64 %niter437.next.1, %unroll_iter436
  br i1 %niter437.ncmp.1, label %.unr-lcssa430, label %bb.bs, !llvm.loop !462

bb.bt:                                            ; preds = %bb.br, %bb.bq
  %i.mi = load i64, ptr %i.e, align 8, !tbaa !39
  %.not270 = icmp eq i64 %i.mi, 0
  br i1 %.not270, label %._crit_edge249.thread, label %.lr.ph248

._crit_edge249.thread:                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.mj = add i64 %.0117252, 1
  br label %.critedge

.lr.ph248:                                        ; preds = %bb.bt
  %i.mk = load ptr, ptr %i.dw, align 8, !tbaa !424
  br label %bb.bu

._crit_edge249:                                   ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ml = add i64 %.0117252, 1                    ; 2 uses
  %.not = icmp eq i64 %i.mz, 0
  br i1 %.not, label %.critedge, label %bb.n, !llvm.loop !463

bb.bu:                                            ; preds = %.lr.ph248, %bb.bu
  %.0107246 = phi i64 [ 0, %.lr.ph248 ], [ %i.my, %bb.bu ] ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %.0107246
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !3
  %i.mo = zext i32 %i.mn to i64                   ; 2 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.mo ; 3 uses
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.mo
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !39
  %i.ms = lshr i64 %i.mr, 59
  %i.mt = or i64 %i.ms, 1
  %i.mu = load i64, ptr %i.mp, align 8, !tbaa !39
  %i.mv = add i64 %i.mt, %i.mu                    ; 2 uses
  store i64 %i.mv, ptr %i.mp, align 8, !tbaa !39
  %i.mw = load i64, ptr %i.dn, align 8, !tbaa !39
  %i.mx = and i64 %i.mw, %i.mv
  store i64 %i.mx, ptr %i.mp, align 8, !tbaa !39
  %i.my = add nuw i64 %.0107246, 1                ; 2 uses
  %i.mz = load i64, ptr %i.e, align 8, !tbaa !39  ; 3 uses
  %i.na = icmp ult i64 %i.my, %i.mz
  br i1 %i.na, label %bb.bu, label %._crit_edge249, !llvm.loop !464

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i159, %bb.ap, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.av, %bb.bp
  %.pn141.pn = phi { ptr, i32 } [ %.pn141189, %bb.av ], [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn137.pn.pn, %bb.bp ], [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn10.i, %bb.ae ], [ %i.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gp, %bb.ag ], [ %.pn10.i155, %bb.ap ], [ %i.hr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i159 ], [ %i.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ch

.critedge:                                        ; preds = %bb.n, %._crit_edge249, %._crit_edge249.thread, %._crit_edge241.thread
  %.0117.lcssa = phi i64 [ 0, %._crit_edge241.thread ], [ %i.mj, %._crit_edge249.thread ], [ %i.ml, %._crit_edge249 ], [ %.0117252, %bb.n ]
  %.0114.lcssa = phi i64 [ 0, %._crit_edge241.thread ], [ %i.hu, %._crit_edge249.thread ], [ %i.hu, %._crit_edge249 ], [ %.0114254, %bb.n ] ; 2 uses
  %i.nb = load i64, ptr %i.k, align 8, !tbaa !346
  %i.nc = icmp eq i64 %.0117.lcssa, %i.nb
  br i1 %i.nc, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %.critedge
  %i.nd = call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.bw unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.thread

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nd, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  invoke void @__cxa_throw(ptr nonnull %i.nd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.cj unwind label %bb.by

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.thread: ; preds = %bb.bv
  %i.ne = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.0 = phi i1 [ false, %bb.bx ], [ true, %bb.bw ] ; 2 uses
  %i.nf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ng = load ptr, ptr %12, align 8, !tbaa !54   ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.by
  call void @_ZdlPv(ptr noundef %i.ng) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br i1 %.0, label %bb.bz, label %bb.ch

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br i1 %.0, label %bb.bz, label %bb.ch

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %.pn192 = phi { ptr, i32 } [ %i.ne, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.thread ], [ %i.nf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %i.nf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ]
  call void @__cxa_free_exception(ptr %i.nd) #40
  br label %bb.ch

bb.ca:                                            ; preds = %.critedge
  %i.nj = load i64, ptr %i.h, align 8, !tbaa !345
  %i.nk = add i64 %i.nj, %.0114.lcssa
  store i64 %i.nk, ptr %i.h, align 8, !tbaa !345
  %i.nl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !271 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 4 uses
  %i.no = load atomic i64, ptr %i.nn acquire, align 8 ; 2 uses
  %i.np = icmp eq i64 %i.no, 4294967297
  %i.nq = trunc i64 %i.no to i32                  ; 2 uses
  br i1 %i.np, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.nn, align 8, !tbaa !264
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 12
  store i32 0, ptr %i.nr, align 4, !tbaa !269
  %i.ns = load ptr, ptr %i.nm, align 8, !tbaa !41
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8
  call void %i.nu(ptr noundef nonnull align 8 dereferenceable(16) %i.nm) #40, !inline_history !319
  %i.nv = load ptr, ptr %i.nm, align 8, !tbaa !41
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(16) %i.nm) #40, !inline_history !319
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.cd:                                            ; preds = %bb.cb
  %i.ny = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i170 = icmp eq i8 %i.ny, 0
  br i1 %.not.i.i.i.i.i170, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.nz = add nsw i32 %i.nq, -1
  store i32 %i.nz, ptr %i.nn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.oa = atomicrmw volatile add ptr %i.nn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i.i.i = phi i32 [ %i.nq, %bb.ce ], [ %i.oa, %bb.cf ]
  %i.ob = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ob, label %bb.cg, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !58

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nm) #40
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.ca, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.ci

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %bb.bz, %.body
  %.pn141.pn.pn = phi { ptr, i32 } [ %.pn141.pn, %.body ], [ %.pn192, %bb.bz ], [ %i.nf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %i.nf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  resume { ptr, i32 } %.pn141.pn.pn

bb.ci:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %._crit_edge267
  %.0105 = phi i64 [ %i.g, %._crit_edge267 ], [ %.0114.lcssa, %_ZN6duckdb15SelectionVectorD2Ev.exit ]
  ret i64 %.0105

bb.cj:                                            ; preds = %bb.bx, %bb.at
  unreachable
}

declare noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv() local_unnamed_addr #1

declare void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare void @_ZN6duckdb19TupleDataCollection15ToUnifiedFormatERNS_19TupleDataChunkStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(488), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN6duckdb11HyperLogLog6UpdateERNS_6VectorES2_m(ptr noundef nonnull align 1 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb20PartitionedTupleData13AppendUnifiedERNS_31PartitionedTupleDataAppendStateERNS_9DataChunkERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(784), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb13RowOperations16InitializeStatesERNS_15TupleDataLayoutERNS_6VectorERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(217), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZN6duckdb10RowMatcher5MatchERNS_9DataChunkERKNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS4_EEERNS_15SelectionVectorEmRNS_6VectorEPS9_Rm(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb25GroupedAggregateHashTable18FindOrCreateGroupsERNS_9DataChunkERNS_6VectorERNS_15SelectionVectorE(ptr noundef nonnull align 8 dereferenceable(2912) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb18ExpressionExecutor13DefaultSelectERKNS_10ExpressionEPNS_15ExpressionStateEPKNS_15SelectionVectorEmPS6_S9_:bb.a
  %i.bh = and i64 %.0193.us8.i.i, 63
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.bg
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !39, !noalias !722
  %i.bk = shl nuw i64 1, %i.bh
  %i.bl = and i64 %i.bj, %i.bk
  %.not2.us.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not2.us.i.i, label %bb.z, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us11.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us9.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0193.us8.i.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !272, !alias.scope !722
  %.not.us12.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.us12.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us11.i.i
  %i.bo = add i64 %.05.us6.i.i, 1
  br label %bb.aa

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us11.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us9.i.i
  %i.bp = add i64 %.0174.us7.i.i, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink67.i.i = phi ptr [ %6, %bb.z ], [ %5, %bb.y ]
  %.0174.us7.sink.i.i = phi i64 [ %.0174.us7.i.i, %bb.z ], [ %.05.us6.i.i, %bb.y ]
  %.118.us13.i.i = phi i64 [ %i.bp, %bb.z ], [ %.0174.us7.i.i, %bb.y ]
  %.1.us14.i.i = phi i64 [ %.05.us6.i.i, %bb.z ], [ %i.bo, %bb.y ] ; 2 uses
  %i.bq = load ptr, ptr %.sink67.i.i, align 8, !tbaa !424, !noalias !722
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.0174.us7.sink.i.i
  store i32 %i.bf, ptr %i.br, align 4, !tbaa !3, !noalias !722
  %i.bs = add nuw i64 %.0193.us8.i.i, 1           ; 2 uses
  %exitcond38.not.i.i = icmp eq i64 %i.bs, %4
  br i1 %exitcond38.not.i.i, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us9.i.i, !llvm.loop !725

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i
  br i1 %.not.i20.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us17.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us17.i.i: ; preds = %.lr.ph.split.split.i.i, %bb.ad
  %.05.us18.i.i = phi i64 [ %.1.us26.i.i, %bb.ad ], [ 0, %.lr.ph.split.split.i.i ] ; 3 uses
  %.0174.us19.i.i = phi i64 [ %.118.us25.i.i, %bb.ad ], [ 0, %.lr.ph.split.split.i.i ] ; 3 uses
  %.0193.us20.i.i = phi i64 [ %i.cj, %bb.ad ], [ 0, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0193.us20.i.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !722
  %i.bv = zext i32 %i.bu to i64                   ; 3 uses
  %i.bw = lshr i64 %i.bv, 6
  %i.bx = and i64 %i.bv, 63
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.bw
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !39, !noalias !722
  %i.ca = shl nuw i64 1, %i.bx
  %i.cb = and i64 %i.ca, %i.bz
  %.not2.us22.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not2.us22.i.i, label %bb.ac, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us17.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bv
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !272, !alias.scope !722
  %.not.us24.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.us24.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i.i
  %i.ce = add i64 %.05.us18.i.i, 1
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us17.i.i
  %i.cf = add i64 %.0174.us19.i.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink71.i.i = phi ptr [ %6, %bb.ac ], [ %5, %bb.ab ]
  %.0174.us19.sink.i.i = phi i64 [ %.0174.us19.i.i, %bb.ac ], [ %.05.us18.i.i, %bb.ab ]
  %.118.us25.i.i = phi i64 [ %i.cf, %bb.ac ], [ %.0174.us19.i.i, %bb.ab ]
  %.1.us26.i.i = phi i64 [ %.05.us18.i.i, %bb.ac ], [ %i.ce, %bb.ab ] ; 2 uses
  %i.cg = trunc i64 %.0193.us20.i.i to i32
  %i.ch = load ptr, ptr %.sink71.i.i, align 8, !tbaa !424, !noalias !722
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.0174.us19.sink.i.i
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !3, !noalias !722
  %i.cj = add nuw i64 %.0193.us20.i.i, 1          ; 2 uses
  %exitcond37.not.i.i = icmp eq i64 %i.cj, %4
  br i1 %exitcond37.not.i.i, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us17.i.i, !llvm.loop !725

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %.lr.ph.split.split.i.i, %bb.ag
  %.05.i.i = phi i64 [ %.1.i.i, %bb.ag ], [ 0, %.lr.ph.split.split.i.i ] ; 3 uses
  %.0174.i.i = phi i64 [ %.118.i.i, %bb.ag ], [ 0, %.lr.ph.split.split.i.i ] ; 3 uses
  %.0193.i.i = phi i64 [ %i.db, %bb.ag ], [ 0, %.lr.ph.split.split.i.i ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0193.i.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3, !noalias !722
  %i.cm = zext i32 %i.cl to i64                   ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.0193.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3, !noalias !722
  %i.cp = lshr i64 %i.cm, 6
  %i.cq = and i64 %i.cm, 63
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.cp
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !39, !noalias !722
  %i.ct = shl nuw i64 1, %i.cq
  %i.cu = and i64 %i.ct, %i.cs
  %.not2.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not2.i.i, label %bb.af, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cm
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !272, !alias.scope !722
  %.not.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i
  %i.cx = add i64 %.05.i.i, 1
  br label %bb.ag

bb.af:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.cy = add i64 %.0174.i.i, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink74.i.i = phi ptr [ %6, %bb.af ], [ %5, %bb.ae ]
  %.0174.sink.i.i = phi i64 [ %.0174.i.i, %bb.af ], [ %.05.i.i, %bb.ae ]
  %.118.i.i = phi i64 [ %i.cy, %bb.af ], [ %.0174.i.i, %bb.ae ]
  %.1.i.i = phi i64 [ %.05.i.i, %bb.af ], [ %i.cx, %bb.ae ] ; 2 uses
  %i.cz = load ptr, ptr %.sink74.i.i, align 8, !tbaa !424, !noalias !722
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.0174.sink.i.i
  store i32 %i.co, ptr %i.da, align 4, !tbaa !3, !noalias !722
  %i.db = add nuw i64 %.0193.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.db, %4
  br i1 %exitcond.not.i.i, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, !llvm.loop !725

bb.ah:                                            ; preds = %.noexc
  %.not35.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %i.i, label %bb.ai, label %bb.bd

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  br i1 %.not35.i.i, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit, label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %bb.ai
  %i.dc = load ptr, ptr %i.j, align 8, !tbaa !424, !noalias !726 ; 9 uses
  %.not.i.i30.i = icmp eq ptr %i.dc, null         ; 2 uses
  %i.dd = load ptr, ptr %.021, align 8, !tbaa !424, !noalias !726 ; 9 uses
  %.not.i15.i.i = icmp eq ptr %i.dd, null         ; 4 uses
  %.not.i17.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i17.i.i, label %.lr.ph.split.us.i43.i, label %.lr.ph.split.i31.i

.lr.ph.split.us.i43.i:                            ; preds = %.lr.ph.i29.i
  br i1 %.not.i.i30.i, label %.lr.ph.split.us.split.us.i.i, label %.lr.ph.split.us.split.i.i

.lr.ph.split.us.split.us.i.i:                     ; preds = %.lr.ph.split.us.i43.i
  br i1 %.not.i15.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.preheader: ; preds = %.lr.ph.split.us.split.us.i.i
  %xtraiter303 = and i64 %4, 1
  %i.de = icmp eq i64 %4, 1
  br i1 %i.de, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.preheader
  %unroll_iter307 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader: ; preds = %.lr.ph.split.us.split.us.i.i
  %xtraiter309 = and i64 %4, 1
  %i.df = icmp eq i64 %4, 1
  br i1 %i.df, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader
  %unroll_iter313 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i: ; preds = %bb.al, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader.new
  %.04.us.us.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader.new ], [ %.1.us.us.us.i.i.1, %bb.al ] ; 3 uses
  %.0143.us.us.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader.new ], [ %i.dt, %bb.al ] ; 4 uses
  %niter314 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader.new ], [ %niter314.next.1, %bb.al ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0143.us.us.us.i.i
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !272, !alias.scope !726
  %.not.us.us.us.i.i = icmp eq i8 %i.dh, 0
  br i1 %.not.us.us.us.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.1, label %bb.aj

bb.aj:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i
  %i.di = add i64 %.04.us.us.us.i.i, 1
  %i.dj = trunc i64 %.0143.us.us.us.i.i to i32
  %i.dk = load ptr, ptr %5, align 8, !tbaa !424, !noalias !726
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.04.us.us.us.i.i
  store i32 %i.dj, ptr %i.dl, align 4, !tbaa !3, !noalias !726
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.1: ; preds = %bb.aj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i
  %.1.us.us.us.i.i = phi i64 [ %i.di, %bb.aj ], [ %.04.us.us.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i ] ; 3 uses
  %i.dm = or disjoint i64 %.0143.us.us.us.i.i, 1  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !272, !alias.scope !726
  %.not.us.us.us.i.i.1 = icmp eq i8 %i.do, 0
  br i1 %.not.us.us.us.i.i.1, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.1
  %i.dp = add i64 %.1.us.us.us.i.i, 1
  %i.dq = trunc i64 %i.dm to i32
  %i.dr = load ptr, ptr %5, align 8, !tbaa !424, !noalias !726
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.1.us.us.us.i.i
  store i32 %i.dq, ptr %i.ds, align 4, !tbaa !3, !noalias !726
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.1
  %.1.us.us.us.i.i.1 = phi i64 [ %i.dp, %bb.ak ], [ %.1.us.us.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.1 ] ; 3 uses
  %i.dt = add nuw i64 %.0143.us.us.us.i.i, 2      ; 2 uses
  %niter314.next.1 = add nuw i64 %niter314, 2     ; 2 uses
  %niter314.ncmp.1 = icmp eq i64 %niter314.next.1, %unroll_iter313
  br i1 %niter314.ncmp.1, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit256.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i, !llvm.loop !729

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i: ; preds = %bb.ao, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.preheader.new
  %.04.us.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.preheader.new ], [ %.1.us.us.i49.i.1, %bb.ao ] ; 3 uses
  %.0143.us.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.preheader.new ], [ %i.ej, %bb.ao ] ; 4 uses
  %niter308 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.preheader.new ], [ %niter308.next.1, %bb.ao ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0143.us.us.i.i
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !272, !alias.scope !726
  %.not.us.us.i48.i = icmp eq i8 %i.dv, 0
  br i1 %.not.us.us.i48.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.1, label %bb.am

bb.am:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.0143.us.us.i.i
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3, !noalias !726
  %i.dy = add i64 %.04.us.us.i.i, 1
  %i.dz = load ptr, ptr %5, align 8, !tbaa !424, !noalias !726
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.04.us.us.i.i
  store i32 %i.dx, ptr %i.ea, align 4, !tbaa !3, !noalias !726
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.1: ; preds = %bb.am, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i
  %.1.us.us.i49.i = phi i64 [ %i.dy, %bb.am ], [ %.04.us.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i ] ; 3 uses
  %i.eb = or disjoint i64 %.0143.us.us.i.i, 1     ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !272, !alias.scope !726
  %.not.us.us.i48.i.1 = icmp eq i8 %i.ed, 0
  br i1 %.not.us.us.i48.i.1, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.1
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.eb
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3, !noalias !726
  %i.eg = add i64 %.1.us.us.i49.i, 1
  %i.eh = load ptr, ptr %5, align 8, !tbaa !424, !noalias !726
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.1.us.us.i49.i
  store i32 %i.ef, ptr %i.ei, align 4, !tbaa !3, !noalias !726
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.1
  %.1.us.us.i49.i.1 = phi i64 [ %i.eg, %bb.an ], [ %.1.us.us.i49.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i.1 ] ; 3 uses
  %i.ej = add nuw i64 %.0143.us.us.i.i, 2         ; 2 uses
  %niter308.next.1 = add nuw i64 %niter308, 2     ; 2 uses
  %niter308.ncmp.1 = icmp eq i64 %niter308.next.1, %unroll_iter307
  br i1 %niter308.ncmp.1, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit257.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i47.i, !llvm.loop !729

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.split.us.i43.i
  br i1 %.not.i15.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.preheader: ; preds = %.lr.ph.split.us.split.i.i
  %xtraiter291 = and i64 %4, 1
  %i.ek = icmp eq i64 %4, 1
  br i1 %i.ek, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.preheader
  %unroll_iter295 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.preheader: ; preds = %.lr.ph.split.us.split.i.i
  %xtraiter297 = and i64 %4, 1
  %i.el = icmp eq i64 %4, 1
  br i1 %i.el, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.preheader
  %unroll_iter301 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i: ; preds = %bb.ar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.preheader.new
  %.04.us.us27.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.preheader.new ], [ %.1.us.us31.i.i.1, %bb.ar ] ; 3 uses
  %.0143.us.us28.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.preheader.new ], [ %i.ff, %bb.ar ] ; 4 uses
  %niter302 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.preheader.new ], [ %niter302.next.1, %bb.ar ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.0143.us.us28.i.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3, !noalias !726
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !272, !alias.scope !726
  %.not.us.us30.i.i = icmp eq i8 %i.eq, 0
  br i1 %.not.us.us30.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.1, label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i
  %i.er = add i64 %.04.us.us27.i.i, 1
  %i.es = trunc i64 %.0143.us.us28.i.i to i32
  %i.et = load ptr, ptr %5, align 8, !tbaa !424, !noalias !726
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.04.us.us27.i.i
  store i32 %i.es, ptr %i.eu, align 4, !tbaa !3, !noalias !726
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.1: ; preds = %bb.ap, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i
  %.1.us.us31.i.i = phi i64 [ %i.er, %bb.ap ], [ %.04.us.us27.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i ] ; 3 uses
  %i.ev = or disjoint i64 %.0143.us.us28.i.i, 1   ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !3, !noalias !726
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !272, !alias.scope !726
  %.not.us.us30.i.i.1 = icmp eq i8 %i.fa, 0
  br i1 %.not.us.us30.i.i.1, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.1
  %i.fb = add i64 %.1.us.us31.i.i, 1
  %i.fc = trunc i64 %i.ev to i32
  %i.fd = load ptr, ptr %5, align 8, !tbaa !424, !noalias !726
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.1.us.us31.i.i
  store i32 %i.fc, ptr %i.fe, align 4, !tbaa !3, !noalias !726
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.1
  %.1.us.us31.i.i.1 = phi i64 [ %i.fb, %bb.aq ], [ %.1.us.us31.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i.1 ] ; 3 uses
  %i.ff = add nuw i64 %.0143.us.us28.i.i, 2       ; 2 uses
  %niter302.next.1 = add nuw i64 %niter302, 2     ; 2 uses
  %niter302.ncmp.1 = icmp eq i64 %niter302.next.1, %unroll_iter301
  br i1 %niter302.ncmp.1, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit258.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i.i, !llvm.loop !729

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i: ; preds = %bb.au, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.preheader.new
  %.04.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.preheader.new ], [ %.1.us.i46.i.1, %bb.au ] ; 3 uses
  %.0143.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.preheader.new ], [ %i.gb, %bb.au ] ; 4 uses
  %niter296 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.preheader.new ], [ %niter296.next.1, %bb.au ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.0143.us.i.i
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3, !noalias !726
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !272, !alias.scope !726
  %.not.us.i45.i = icmp eq i8 %i.fk, 0
  br i1 %.not.us.i45.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.1, label %bb.as

bb.as:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.0143.us.i.i
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3, !noalias !726
  %i.fn = add i64 %.04.us.i.i, 1
  %i.fo = load ptr, ptr %5, align 8, !tbaa !424, !noalias !726
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.04.us.i.i
  store i32 %i.fm, ptr %i.fp, align 4, !tbaa !3, !noalias !726
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.1: ; preds = %bb.as, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i
  %.1.us.i46.i = phi i64 [ %i.fn, %bb.as ], [ %.04.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i ] ; 3 uses
  %i.fq = or disjoint i64 %.0143.us.i.i, 1        ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3, !noalias !726
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !272, !alias.scope !726
  %.not.us.i45.i.1 = icmp eq i8 %i.fv, 0
  br i1 %.not.us.i45.i.1, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.1
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.fq
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3, !noalias !726
  %i.fy = add i64 %.1.us.i46.i, 1
  %i.fz = load ptr, ptr %5, align 8, !tbaa !424, !noalias !726
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.1.us.i46.i
  store i32 %i.fx, ptr %i.ga, align 4, !tbaa !3, !noalias !726
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.1
  %.1.us.i46.i.1 = phi i64 [ %i.fy, %bb.at ], [ %.1.us.i46.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i.1 ] ; 3 uses
  %i.gb = add nuw i64 %.0143.us.i.i, 2            ; 2 uses
  %niter296.next.1 = add nuw i64 %niter296, 2     ; 2 uses
  %niter296.ncmp.1 = icmp eq i64 %niter296.next.1, %unroll_iter295
  br i1 %niter296.ncmp.1, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit259.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i44.i, !llvm.loop !729

.lr.ph.split.i31.i:                               ; preds = %.lr.ph.i29.i
  br i1 %.not.i.i30.i, label %.lr.ph.split.split.us.i40.i, label %.lr.ph.split.split.i32.i

.lr.ph.split.split.us.i40.i:                      ; preds = %.lr.ph.split.i31.i
  br i1 %.not.i15.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.us.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.us.i.i: ; preds = %.lr.ph.split.split.us.i40.i, %bb.aw
  %.04.us5.us.i.i = phi i64 [ %.1.us11.us.i.i, %bb.aw ], [ 0, %.lr.ph.split.split.us.i40.i ] ; 4 uses
  %.0143.us6.us.i.i = phi i64 [ %i.go, %bb.aw ], [ 0, %.lr.ph.split.split.us.i40.i ] ; 5 uses
  %i.gc = lshr i64 %.0143.us6.us.i.i, 6
  %i.gd = and i64 %.0143.us6.us.i.i, 63
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.gc
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !39, !noalias !726
  %i.gg = shl nuw i64 1, %i.gd
  %i.gh = and i64 %i.gg, %i.gf
  %.not2.us.us.i42.i = icmp eq i64 %i.gh, 0
  br i1 %.not2.us.us.i42.i, label %bb.aw, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.us.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0143.us6.us.i.i
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !272, !alias.scope !726
  %.not.us10.us.i.i = icmp eq i8 %i.gj, 0
  br i1 %.not.us10.us.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.us.i.i
  %i.gk = add i64 %.04.us5.us.i.i, 1
  %i.gl = trunc i64 %.0143.us6.us.i.i to i32
  %i.gm = load ptr, ptr %5, align 8, !tbaa !424, !noalias !726
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %.04.us5.us.i.i
  store i32 %i.gl, ptr %i.gn, align 4, !tbaa !3, !noalias !726
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.us.i.i
  %.1.us11.us.i.i = phi i64 [ %i.gk, %bb.av ], [ %.04.us5.us.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.us.i.i ], [ %.04.us5.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.us.i.i ] ; 2 uses
  %i.go = add nuw i64 %.0143.us6.us.i.i, 1        ; 2 uses
  %exitcond45.not.i.i = icmp eq i64 %i.go, %4
  br i1 %exitcond45.not.i.i, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.us.i.i, !llvm.loop !729

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.i.i: ; preds = %.lr.ph.split.split.us.i40.i, %bb.ay
  %.04.us5.i.i = phi i64 [ %.1.us11.i.i, %bb.ay ], [ 0, %.lr.ph.split.split.us.i40.i ] ; 4 uses
  %.0143.us6.i.i = phi i64 [ %i.hc, %bb.ay ], [ 0, %.lr.ph.split.split.us.i40.i ] ; 5 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.0143.us6.i.i
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !3, !noalias !726
  %i.gr = lshr i64 %.0143.us6.i.i, 6
  %i.gs = and i64 %.0143.us6.i.i, 63
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.gr
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !39, !noalias !726
  %i.gv = shl nuw i64 1, %i.gs
  %i.gw = and i64 %i.gu, %i.gv
  %.not2.us.i41.i = icmp eq i64 %i.gw, 0
  br i1 %.not2.us.i41.i, label %bb.ay, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0143.us6.i.i
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !272, !alias.scope !726
  %.not.us10.i.i = icmp eq i8 %i.gy, 0
  br i1 %.not.us10.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.i.i
  %i.gz = add i64 %.04.us5.i.i, 1
  %i.ha = load ptr, ptr %5, align 8, !tbaa !424, !noalias !726
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.04.us5.i.i
  store i32 %i.gq, ptr %i.hb, align 4, !tbaa !3, !noalias !726
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.i.i
  %.1.us11.i.i = phi i64 [ %i.gz, %bb.ax ], [ %.04.us5.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.i.i ], [ %.04.us5.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.i.i ] ; 2 uses
  %i.hc = add nuw i64 %.0143.us6.i.i, 1           ; 2 uses
  %exitcond44.not.i.i = icmp eq i64 %i.hc, %4
  br i1 %exitcond44.not.i.i, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.i.i, !llvm.loop !729

.lr.ph.split.split.i32.i:                         ; preds = %.lr.ph.split.i31.i
  br i1 %.not.i15.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i33.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i: ; preds = %.lr.ph.split.split.i32.i, %bb.ba
  %.04.us15.i.i = phi i64 [ %.1.us21.i.i, %bb.ba ], [ 0, %.lr.ph.split.split.i32.i ] ; 4 uses
  %.0143.us16.i.i = phi i64 [ %i.hs, %bb.ba ], [ 0, %.lr.ph.split.split.i32.i ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.0143.us16.i.i
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3, !noalias !726
  %i.hf = zext i32 %i.he to i64                   ; 3 uses
  %i.hg = lshr i64 %i.hf, 6
  %i.hh = and i64 %i.hf, 63
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.hg
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !39, !noalias !726
  %i.hk = shl nuw i64 1, %i.hh
  %i.hl = and i64 %i.hk, %i.hj
  %.not2.us18.i.i = icmp eq i64 %i.hl, 0
  br i1 %.not2.us18.i.i, label %bb.ba, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us19.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us19.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.hf
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !272, !alias.scope !726
  %.not.us20.i.i = icmp eq i8 %i.hn, 0
  br i1 %.not.us20.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us19.i.i
  %i.ho = add i64 %.04.us15.i.i, 1
  %i.hp = trunc i64 %.0143.us16.i.i to i32
  %i.hq = load ptr, ptr %5, align 8, !tbaa !424, !noalias !726
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %.04.us15.i.i
  store i32 %i.hp, ptr %i.hr, align 4, !tbaa !3, !noalias !726
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us19.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i
  %.1.us21.i.i = phi i64 [ %i.ho, %bb.az ], [ %.04.us15.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us19.i.i ], [ %.04.us15.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i ] ; 2 uses
  %i.hs = add nuw i64 %.0143.us16.i.i, 1          ; 2 uses
  %exitcond43.not.i.i = icmp eq i64 %i.hs, %4
  br i1 %exitcond43.not.i.i, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i, !llvm.loop !729

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i33.i: ; preds = %.lr.ph.split.split.i32.i, %bb.bc
  %.04.i.i = phi i64 [ %.1.i37.i, %bb.bc ], [ 0, %.lr.ph.split.split.i32.i ] ; 4 uses
  %.0143.i.i = phi i64 [ %i.ij, %bb.bc ], [ 0, %.lr.ph.split.split.i32.i ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.0143.i.i
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !3, !noalias !726
  %i.hv = zext i32 %i.hu to i64                   ; 3 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.0143.i.i
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !3, !noalias !726
  %i.hy = lshr i64 %i.hv, 6
  %i.hz = and i64 %i.hv, 63
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.hy
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !39, !noalias !726
  %i.ic = shl nuw i64 1, %i.hz
  %i.id = and i64 %i.ic, %i.ib
  %.not2.i34.i = icmp eq i64 %i.id, 0
  br i1 %.not2.i34.i, label %bb.bc, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i35.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i35.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i33.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.hv
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !272, !alias.scope !726
  %.not.i36.i = icmp eq i8 %i.if, 0
  br i1 %.not.i36.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i35.i
  %i.ig = add i64 %.04.i.i, 1
  %i.ih = load ptr, ptr %5, align 8, !tbaa !424, !noalias !726
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.04.i.i
  store i32 %i.hx, ptr %i.ii, align 4, !tbaa !3, !noalias !726
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i35.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i33.i
  %.1.i37.i = phi i64 [ %i.ig, %bb.bb ], [ %.04.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i35.i ], [ %.04.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i33.i ] ; 2 uses
  %i.ij = add nuw i64 %.0143.i.i, 1               ; 2 uses
  %exitcond.not.i38.i = icmp eq i64 %i.ij, %4
  br i1 %exitcond.not.i38.i, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i33.i, !llvm.loop !729

bb.bd:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  br i1 %.not35.i.i, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i, label %.lr.ph.i51.i

.lr.ph.i51.i:                                     ; preds = %bb.bd
  %i.ik = load ptr, ptr %i.j, align 8, !tbaa !424, !noalias !730 ; 9 uses
  %.not.i.i52.i = icmp eq ptr %i.ik, null         ; 2 uses
  %i.il = load ptr, ptr %.021, align 8, !tbaa !424, !noalias !730 ; 9 uses
  %.not.i17.i53.i = icmp eq ptr %i.il, null       ; 4 uses
  %.not.i19.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i19.i.i, label %.lr.ph.split.us.i86.i, label %.lr.ph.split.i54.i

.lr.ph.split.us.i86.i:                            ; preds = %.lr.ph.i51.i
  br i1 %.not.i.i52.i, label %.lr.ph.split.us.split.us.i98.i, label %.lr.ph.split.us.split.i87.i

.lr.ph.split.us.split.us.i98.i:                   ; preds = %.lr.ph.split.us.i86.i
  br i1 %.not.i17.i53.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.preheader: ; preds = %.lr.ph.split.us.split.us.i98.i
  %xtraiter279 = and i64 %4, 1
  %i.im = icmp eq i64 %4, 1
  br i1 %i.im, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.preheader
  %unroll_iter283 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.preheader: ; preds = %.lr.ph.split.us.split.us.i98.i
  %xtraiter285 = and i64 %4, 1
  %i.in = icmp eq i64 %4, 1
  br i1 %i.in, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.preheader
  %unroll_iter289 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i: ; preds = %bb.bg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.preheader.new
  %.04.us.us.us.i105.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.preheader.new ], [ %.1.us.us.us.i107.i.1, %bb.bg ] ; 3 uses
  %.0153.us.us.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.preheader.new ], [ %i.jb, %bb.bg ] ; 4 uses
  %niter290 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.preheader.new ], [ %niter290.next.1, %bb.bg ]
  %i.io = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0153.us.us.us.i.i
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !272, !alias.scope !730
  %.not.us.us.us.i106.i = icmp eq i8 %i.ip, 0
  br i1 %.not.us.us.us.i106.i, label %bb.be, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.1

bb.be:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i
  %i.iq = add i64 %.04.us.us.us.i105.i, 1
  %i.ir = trunc i64 %.0153.us.us.us.i.i to i32
  %i.is = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %.04.us.us.us.i105.i
  store i32 %i.ir, ptr %i.it, align 4, !tbaa !3, !noalias !730
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.1: ; preds = %bb.be, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i
  %.1.us.us.us.i107.i = phi i64 [ %.04.us.us.us.i105.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i ], [ %i.iq, %bb.be ] ; 3 uses
  %i.iu = or disjoint i64 %.0153.us.us.us.i.i, 1  ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !272, !alias.scope !730
  %.not.us.us.us.i106.i.1 = icmp eq i8 %i.iw, 0
  br i1 %.not.us.us.us.i106.i.1, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.1
  %i.ix = add i64 %.1.us.us.us.i107.i, 1
  %i.iy = trunc i64 %i.iu to i32
  %i.iz = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.1.us.us.us.i107.i
  store i32 %i.iy, ptr %i.ja, align 4, !tbaa !3, !noalias !730
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.1
  %.1.us.us.us.i107.i.1 = phi i64 [ %.1.us.us.us.i107.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.1 ], [ %i.ix, %bb.bf ] ; 3 uses
  %i.jb = add nuw i64 %.0153.us.us.us.i.i, 2      ; 2 uses
  %niter290.next.1 = add nuw i64 %niter290, 2     ; 2 uses
  %niter290.ncmp.1 = icmp eq i64 %niter290.next.1, %unroll_iter289
  br i1 %niter290.ncmp.1, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i, !llvm.loop !733

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i: ; preds = %bb.bj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.preheader.new
  %.04.us.us.i100.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.preheader.new ], [ %.1.us.us.i102.i.1, %bb.bj ] ; 3 uses
  %.0153.us.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.preheader.new ], [ %i.jr, %bb.bj ] ; 4 uses
  %niter284 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.preheader.new ], [ %niter284.next.1, %bb.bj ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0153.us.us.i.i
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !272, !alias.scope !730
  %.not.us.us.i101.i = icmp eq i8 %i.jd, 0
  br i1 %.not.us.us.i101.i, label %bb.bh, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.1

bb.bh:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %.0153.us.us.i.i
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !3, !noalias !730
  %i.jg = add i64 %.04.us.us.i100.i, 1
  %i.jh = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.04.us.us.i100.i
  store i32 %i.jf, ptr %i.ji, align 4, !tbaa !3, !noalias !730
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.1: ; preds = %bb.bh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i
  %.1.us.us.i102.i = phi i64 [ %.04.us.us.i100.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i ], [ %i.jg, %bb.bh ] ; 3 uses
  %i.jj = or disjoint i64 %.0153.us.us.i.i, 1     ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !272, !alias.scope !730
  %.not.us.us.i101.i.1 = icmp eq i8 %i.jl, 0
  br i1 %.not.us.us.i101.i.1, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.1
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.jj
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !3, !noalias !730
  %i.jo = add i64 %.1.us.us.i102.i, 1
  %i.jp = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.1.us.us.i102.i
  store i32 %i.jn, ptr %i.jq, align 4, !tbaa !3, !noalias !730
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.1
  %.1.us.us.i102.i.1 = phi i64 [ %.1.us.us.i102.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.1 ], [ %i.jo, %bb.bi ] ; 3 uses
  %i.jr = add nuw i64 %.0153.us.us.i.i, 2         ; 2 uses
  %niter284.next.1 = add nuw i64 %niter284, 2     ; 2 uses
  %niter284.ncmp.1 = icmp eq i64 %niter284.next.1, %unroll_iter283
  br i1 %niter284.ncmp.1, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit264.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i, !llvm.loop !733

.lr.ph.split.us.split.i87.i:                      ; preds = %.lr.ph.split.us.i86.i
  br i1 %.not.i17.i53.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.preheader: ; preds = %.lr.ph.split.us.split.i87.i
  %xtraiter = and i64 %4, 1
  %i.js = icmp eq i64 %4, 1
  br i1 %i.js, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.preheader
  %unroll_iter = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.preheader: ; preds = %.lr.ph.split.us.split.i87.i
  %xtraiter273 = and i64 %4, 1
  %i.jt = icmp eq i64 %4, 1
  br i1 %i.jt, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.preheader
  %unroll_iter277 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i: ; preds = %bb.bm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.preheader.new
  %.04.us.us27.i94.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.preheader.new ], [ %.1.us.us31.i96.i.1, %bb.bm ] ; 3 uses
  %.0153.us.us28.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.preheader.new ], [ %i.kn, %bb.bm ] ; 4 uses
  %niter278 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.preheader.new ], [ %niter278.next.1, %bb.bm ]
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %.0153.us.us28.i.i
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !3, !noalias !730
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !272, !alias.scope !730
  %.not.us.us30.i95.i = icmp eq i8 %i.jy, 0
  br i1 %.not.us.us30.i95.i, label %bb.bk, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.1

bb.bk:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i
  %i.jz = add i64 %.04.us.us27.i94.i, 1
  %i.ka = trunc i64 %.0153.us.us28.i.i to i32
  %i.kb = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %.04.us.us27.i94.i
  store i32 %i.ka, ptr %i.kc, align 4, !tbaa !3, !noalias !730
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.1: ; preds = %bb.bk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i
  %.1.us.us31.i96.i = phi i64 [ %.04.us.us27.i94.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i ], [ %i.jz, %bb.bk ] ; 3 uses
  %i.kd = or disjoint i64 %.0153.us.us28.i.i, 1   ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !3, !noalias !730
  %i.kg = zext i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !272, !alias.scope !730
  %.not.us.us30.i95.i.1 = icmp eq i8 %i.ki, 0
  br i1 %.not.us.us30.i95.i.1, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.1
  %i.kj = add i64 %.1.us.us31.i96.i, 1
  %i.kk = trunc i64 %i.kd to i32
  %i.kl = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %.1.us.us31.i96.i
  store i32 %i.kk, ptr %i.km, align 4, !tbaa !3, !noalias !730
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.1
  %.1.us.us31.i96.i.1 = phi i64 [ %.1.us.us31.i96.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.1 ], [ %i.kj, %bb.bl ] ; 3 uses
  %i.kn = add nuw i64 %.0153.us.us28.i.i, 2       ; 2 uses
  %niter278.next.1 = add nuw i64 %niter278, 2     ; 2 uses
  %niter278.ncmp.1 = icmp eq i64 %niter278.next.1, %unroll_iter277
  br i1 %niter278.ncmp.1, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit265.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i, !llvm.loop !733

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i: ; preds = %bb.bp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.preheader.new
  %.04.us.i89.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.preheader.new ], [ %.1.us.i91.i.1, %bb.bp ] ; 3 uses
  %.0153.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.preheader.new ], [ %i.lj, %bb.bp ] ; 4 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.preheader.new ], [ %niter.next.1, %bb.bp ]
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %.0153.us.i.i
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !3, !noalias !730
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !272, !alias.scope !730
  %.not.us.i90.i = icmp eq i8 %i.ks, 0
  br i1 %.not.us.i90.i, label %bb.bn, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.1

bb.bn:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %.0153.us.i.i
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !3, !noalias !730
  %i.kv = add i64 %.04.us.i89.i, 1
  %i.kw = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %.04.us.i89.i
  store i32 %i.ku, ptr %i.kx, align 4, !tbaa !3, !noalias !730
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.1: ; preds = %bb.bn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i
  %.1.us.i91.i = phi i64 [ %.04.us.i89.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i ], [ %i.kv, %bb.bn ] ; 3 uses
  %i.ky = or disjoint i64 %.0153.us.i.i, 1        ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !3, !noalias !730
  %i.lb = zext i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !272, !alias.scope !730
  %.not.us.i90.i.1 = icmp eq i8 %i.ld, 0
  br i1 %.not.us.i90.i.1, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.1
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.ky
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !3, !noalias !730
  %i.lg = add i64 %.1.us.i91.i, 1
  %i.lh = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %.1.us.i91.i
  store i32 %i.lf, ptr %i.li, align 4, !tbaa !3, !noalias !730
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.1
  %.1.us.i91.i.1 = phi i64 [ %.1.us.i91.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.1 ], [ %i.lg, %bb.bo ] ; 3 uses
  %i.lj = add nuw i64 %.0153.us.i.i, 2            ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit266.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i, !llvm.loop !733

.lr.ph.split.i54.i:                               ; preds = %.lr.ph.i51.i
  br i1 %.not.i.i52.i, label %.lr.ph.split.split.us.i71.i, label %.lr.ph.split.split.i55.i

.lr.ph.split.split.us.i71.i:                      ; preds = %.lr.ph.split.i54.i
  br i1 %.not.i17.i53.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.us.i79.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.i72.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.us.i79.i: ; preds = %.lr.ph.split.split.us.i71.i, %bb.br
  %.04.us5.us.i80.i = phi i64 [ %.1.us11.us.i84.i, %bb.br ], [ 0, %.lr.ph.split.split.us.i71.i ] ; 3 uses
  %.0153.us6.us.i.i = phi i64 [ %i.lw, %bb.br ], [ 0, %.lr.ph.split.split.us.i71.i ] ; 5 uses
  %i.lk = lshr i64 %.0153.us6.us.i.i, 6
  %i.ll = and i64 %.0153.us6.us.i.i, 63
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.lk
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !39, !noalias !730
  %i.lo = shl nuw i64 1, %i.ll
  %i.lp = and i64 %i.lo, %i.ln
  %.not2.us.us.i81.i = icmp eq i64 %i.lp, 0
  br i1 %.not2.us.us.i81.i, label %bb.bq, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.us.i82.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.us.i82.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.us.i79.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0153.us6.us.i.i
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !272, !alias.scope !730
  %.not.us10.us.i83.i = icmp eq i8 %i.lr, 0
  br i1 %.not.us10.us.i83.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.us.i82.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.us.i79.i
  %i.ls = add i64 %.04.us5.us.i80.i, 1
  %i.lt = trunc i64 %.0153.us6.us.i.i to i32
  %i.lu = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %.04.us5.us.i80.i
  store i32 %i.lt, ptr %i.lv, align 4, !tbaa !3, !noalias !730
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.us.i82.i
  %.1.us11.us.i84.i = phi i64 [ %.04.us5.us.i80.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.us.i82.i ], [ %i.ls, %bb.bq ] ; 2 uses
  %i.lw = add nuw i64 %.0153.us6.us.i.i, 1        ; 2 uses
  %exitcond45.not.i85.i = icmp eq i64 %i.lw, %4
  br i1 %exitcond45.not.i85.i, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.us.i79.i, !llvm.loop !733

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.i72.i: ; preds = %.lr.ph.split.split.us.i71.i, %bb.bt
  %.04.us5.i73.i = phi i64 [ %.1.us11.i77.i, %bb.bt ], [ 0, %.lr.ph.split.split.us.i71.i ] ; 3 uses
  %.0153.us6.i.i = phi i64 [ %i.mk, %bb.bt ], [ 0, %.lr.ph.split.split.us.i71.i ] ; 5 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %.0153.us6.i.i
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !3, !noalias !730
  %i.lz = lshr i64 %.0153.us6.i.i, 6
  %i.ma = and i64 %.0153.us6.i.i, 63
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.lz
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !39, !noalias !730
  %i.md = shl nuw i64 1, %i.ma
  %i.me = and i64 %i.mc, %i.md
  %.not2.us.i74.i = icmp eq i64 %i.me, 0
  br i1 %.not2.us.i74.i, label %bb.bs, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.i75.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.i75.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.i72.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0153.us6.i.i
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !272, !alias.scope !730
  %.not.us10.i76.i = icmp eq i8 %i.mg, 0
  br i1 %.not.us10.i76.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.i75.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.i72.i
  %i.mh = add i64 %.04.us5.i73.i, 1
  %i.mi = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %.04.us5.i73.i
  store i32 %i.ly, ptr %i.mj, align 4, !tbaa !3, !noalias !730
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.i75.i
  %.1.us11.i77.i = phi i64 [ %.04.us5.i73.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us9.i75.i ], [ %i.mh, %bb.bs ] ; 2 uses
  %i.mk = add nuw i64 %.0153.us6.i.i, 1           ; 2 uses
  %exitcond44.not.i78.i = icmp eq i64 %i.mk, %4
  br i1 %exitcond44.not.i78.i, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us7.i72.i, !llvm.loop !733

.lr.ph.split.split.i55.i:                         ; preds = %.lr.ph.split.i54.i
  br i1 %.not.i17.i53.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i64.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i56.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i64.i: ; preds = %.lr.ph.split.split.i55.i, %bb.bv
  %.04.us15.i65.i = phi i64 [ %.1.us21.i69.i, %bb.bv ], [ 0, %.lr.ph.split.split.i55.i ] ; 3 uses
  %.0153.us16.i.i = phi i64 [ %i.na, %bb.bv ], [ 0, %.lr.ph.split.split.i55.i ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %.0153.us16.i.i
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !3, !noalias !730
  %i.mn = zext i32 %i.mm to i64                   ; 3 uses
  %i.mo = lshr i64 %i.mn, 6
  %i.mp = and i64 %i.mn, 63
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.mo
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !39, !noalias !730
  %i.ms = shl nuw i64 1, %i.mp
  %i.mt = and i64 %i.ms, %i.mr
  %.not2.us18.i66.i = icmp eq i64 %i.mt, 0
  br i1 %.not2.us18.i66.i, label %bb.bu, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us19.i67.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us19.i67.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i64.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.mn
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !272, !alias.scope !730
  %.not.us20.i68.i = icmp eq i8 %i.mv, 0
  br i1 %.not.us20.i68.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us19.i67.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i64.i
  %i.mw = add i64 %.04.us15.i65.i, 1
  %i.mx = trunc i64 %.0153.us16.i.i to i32
  %i.my = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %.04.us15.i65.i
  store i32 %i.mx, ptr %i.mz, align 4, !tbaa !3, !noalias !730
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us19.i67.i
  %.1.us21.i69.i = phi i64 [ %.04.us15.i65.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us19.i67.i ], [ %i.mw, %bb.bu ] ; 2 uses
  %i.na = add nuw i64 %.0153.us16.i.i, 1          ; 2 uses
  %exitcond43.not.i70.i = icmp eq i64 %i.na, %4
  br i1 %exitcond43.not.i70.i, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i64.i, !llvm.loop !733

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i56.i: ; preds = %.lr.ph.split.split.i55.i, %bb.bx
  %.04.i57.i = phi i64 [ %.1.i61.i, %bb.bx ], [ 0, %.lr.ph.split.split.i55.i ] ; 3 uses
  %.0153.i.i = phi i64 [ %i.nr, %bb.bx ], [ 0, %.lr.ph.split.split.i55.i ] ; 3 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %.0153.i.i
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !3, !noalias !730
  %i.nd = zext i32 %i.nc to i64                   ; 3 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %.0153.i.i
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !3, !noalias !730
  %i.ng = lshr i64 %i.nd, 6
  %i.nh = and i64 %i.nd, 63
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ng
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !39, !noalias !730
  %i.nk = shl nuw i64 1, %i.nh
  %i.nl = and i64 %i.nk, %i.nj
  %.not2.i58.i = icmp eq i64 %i.nl, 0
  br i1 %.not2.i58.i, label %bb.bw, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i59.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i59.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i56.i
  %i.nm = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.nd
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !272, !alias.scope !730
  %.not.i60.i = icmp eq i8 %i.nn, 0
  br i1 %.not.i60.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i59.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i56.i
  %i.no = add i64 %.04.i57.i, 1
  %i.np = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %.04.i57.i
  store i32 %i.nf, ptr %i.nq, align 4, !tbaa !3, !noalias !730
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i59.i
  %.1.i61.i = phi i64 [ %.04.i57.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i59.i ], [ %i.no, %bb.bw ] ; 2 uses
  %i.nr = add nuw i64 %.0153.i.i, 1               ; 2 uses
  %exitcond.not.i62.i = icmp eq i64 %i.nr, %4
  br i1 %exitcond.not.i62.i, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i56.i, !llvm.loop !733

_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit.unr-lcssa: ; preds = %bb.bg
  %lcmp.mod286.not = icmp eq i64 %xtraiter285, 0
  br i1 %lcmp.mod286.not, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.epil.preheader: ; preds = %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.preheader
  %.04.us.us.us.i105.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.preheader ], [ %.1.us.us.us.i107.i.1, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %.0153.us.us.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.preheader ], [ %i.jb, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod288 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod288)
  %i.ns = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0153.us.us.us.i.i.epil.init
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !272, !alias.scope !730
  %.not.us.us.us.i106.i.epil = icmp eq i8 %i.nt, 0
  br i1 %.not.us.us.us.i106.i.epil, label %bb.by, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

bb.by:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.epil.preheader
  %i.nu = add i64 %.04.us.us.us.i105.i.epil.init, 1
  %i.nv = trunc i64 %.0153.us.us.us.i.i.epil.init to i32
  %i.nw = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %.04.us.us.us.i105.i.epil.init
  store i32 %i.nv, ptr %i.nx, align 4, !tbaa !3, !noalias !730
  br label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit264.unr-lcssa: ; preds = %bb.bj
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.epil.preheader: ; preds = %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit264.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.preheader
  %.04.us.us.i100.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.preheader ], [ %.1.us.us.i102.i.1, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit264.unr-lcssa ] ; 3 uses
  %.0153.us.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.preheader ], [ %i.jr, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit264.unr-lcssa ] ; 2 uses
  %lcmp.mod282 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod282)
  %i.ny = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0153.us.us.i.i.epil.init
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !272, !alias.scope !730
  %.not.us.us.i101.i.epil = icmp eq i8 %i.nz, 0
  br i1 %.not.us.us.i101.i.epil, label %bb.bz, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

bb.bz:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.epil.preheader
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %.0153.us.us.i.i.epil.init
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !3, !noalias !730
  %i.oc = add i64 %.04.us.us.i100.i.epil.init, 1
  %i.od = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %.04.us.us.i100.i.epil.init
  store i32 %i.ob, ptr %i.oe, align 4, !tbaa !3, !noalias !730
  br label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit265.unr-lcssa: ; preds = %bb.bm
  %lcmp.mod274.not = icmp eq i64 %xtraiter273, 0
  br i1 %lcmp.mod274.not, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.epil.preheader: ; preds = %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit265.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.preheader
  %.04.us.us27.i94.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.preheader ], [ %.1.us.us31.i96.i.1, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit265.unr-lcssa ] ; 3 uses
  %.0153.us.us28.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.preheader ], [ %i.kn, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit265.unr-lcssa ] ; 2 uses
  %lcmp.mod276 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod276)
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %.0153.us.us28.i.i.epil.init
  %i.og = load i32, ptr %i.of, align 4, !tbaa !3, !noalias !730
  %i.oh = zext i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !272, !alias.scope !730
  %.not.us.us30.i95.i.epil = icmp eq i8 %i.oj, 0
  br i1 %.not.us.us30.i95.i.epil, label %bb.ca, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

bb.ca:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.epil.preheader
  %i.ok = add i64 %.04.us.us27.i94.i.epil.init, 1
  %i.ol = trunc i64 %.0153.us.us28.i.i.epil.init to i32
  %i.om = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %.04.us.us27.i94.i.epil.init
  store i32 %i.ol, ptr %i.on, align 4, !tbaa !3, !noalias !730
  br label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit266.unr-lcssa: ; preds = %bb.bp
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.epil.preheader: ; preds = %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit266.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.preheader
  %.04.us.i89.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.preheader ], [ %.1.us.i91.i.1, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit266.unr-lcssa ] ; 3 uses
  %.0153.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.preheader ], [ %i.lj, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit266.unr-lcssa ] ; 2 uses
  %lcmp.mod272 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod272)
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %.0153.us.i.i.epil.init
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !3, !noalias !730
  %i.oq = zext i32 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !272, !alias.scope !730
  %.not.us.i90.i.epil = icmp eq i8 %i.os, 0
  br i1 %.not.us.i90.i.epil, label %bb.cb, label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

bb.cb:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.epil.preheader
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %.0153.us.i.i.epil.init
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !3, !noalias !730
  %i.ov = add i64 %.04.us.i89.i.epil.init, 1
  %i.ow = load ptr, ptr %6, align 8, !tbaa !424, !noalias !730
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %.04.us.i89.i.epil.init
  store i32 %i.ou, ptr %i.ox, align 4, !tbaa !3, !noalias !730
  br label %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i: ; preds = %bb.bx, %bb.bv, %bb.bt, %bb.br, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit266.unr-lcssa, %bb.cb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.epil.preheader, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit265.unr-lcssa, %bb.ca, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.epil.preheader, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit264.unr-lcssa, %bb.bz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.epil.preheader, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit.unr-lcssa, %bb.by, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.epil.preheader, %bb.bd
  %.0.lcssa.i63.i = phi i64 [ 0, %bb.bd ], [ %.1.us11.us.i84.i, %bb.br ], [ %i.ok, %bb.ca ], [ %i.oc, %bb.bz ], [ %i.ov, %bb.cb ], [ %.1.us21.i69.i, %bb.bv ], [ %.1.us11.i77.i, %bb.bt ], [ %i.nu, %bb.by ], [ %.1.us.us.us.i107.i.1, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit.unr-lcssa ], [ %.04.us.us.us.i105.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i104.i.epil.preheader ], [ %.1.us.us.i102.i.1, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit264.unr-lcssa ], [ %.04.us.us.i100.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i99.i.epil.preheader ], [ %.1.us.us31.i96.i.1, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit265.unr-lcssa ], [ %.04.us.us27.i94.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us26.i93.i.epil.preheader ], [ %.1.us.i91.i.1, %_ZN6duckdbL17DefaultSelectLoopILb0ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit266.unr-lcssa ], [ %.04.us.i89.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.i.epil.preheader ], [ %.1.i61.i, %bb.bx ]
  %i.oy = sub i64 %4, %.0.lcssa.i63.i
  br label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit

bb.cc:                                            ; preds = %bb.k
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %.noexc45 unwind label %bb.j

.noexc45:                                         ; preds = %bb.cc
  %i.oz = icmp ne ptr %6, null
  %or.cond.i26 = and i1 %i.i, %i.oz
  %i.pa = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !721 ; 36 uses
  br i1 %or.cond.i26, label %bb.cd, label %bb.cy

bb.cd:                                            ; preds = %.noexc45
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %bb.cd
  %i.pc = load ptr, ptr %i.j, align 8, !tbaa !424, !noalias !734 ; 7 uses
  %.not.i.i.i30 = icmp eq ptr %i.pc, null
  %i.pd = load ptr, ptr %.021, align 8, !tbaa !424, !noalias !734 ; 7 uses
  %.not.i18.i.i = icmp eq ptr %i.pd, null         ; 2 uses
  br i1 %.not.i.i.i30, label %.lr.ph.split.us.i.i37, label %.lr.ph.split.i.i31

.lr.ph.split.us.i.i37:                            ; preds = %.lr.ph.i.i29
  br i1 %.not.i18.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.preheader: ; preds = %.lr.ph.split.us.i.i37
  %xtraiter375 = and i64 %4, 1
  %i.pe = icmp eq i64 %4, 1
  br i1 %i.pe, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.preheader
  %unroll_iter379 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.preheader: ; preds = %.lr.ph.split.us.i.i37
  %xtraiter381 = and i64 %4, 1
  %i.pf = icmp eq i64 %4, 1
  br i1 %i.pf, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.preheader
  %unroll_iter385 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41: ; preds = %bb.ci, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.preheader.new
  %.03.us.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.preheader.new ], [ %.1.us.us.i.i44.1, %bb.ci ] ; 3 uses
  %.0152.us.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.preheader.new ], [ %.116.us.us.i.i.1, %bb.ci ] ; 3 uses
  %.0171.us.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.preheader.new ], [ %i.pv, %bb.ci ] ; 4 uses
  %niter386 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.preheader.new ], [ %niter386.next.1, %bb.ci ]
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.0171.us.us.i.i
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !272, !alias.scope !734
  %.not.us.us.i.i42 = icmp eq i8 %i.ph, 0
  %i.pi = trunc i64 %.0171.us.us.i.i to i32
  br i1 %.not.us.us.i.i42, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41
  %i.pj = add i64 %.03.us.us.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.1

bb.cf:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41
  %i.pk = add i64 %.0152.us.us.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.1: ; preds = %bb.cf, %bb.ce
  %.sink.i.i43 = phi ptr [ %6, %bb.cf ], [ %5, %bb.ce ]
  %.0152.us.us.sink.i.i = phi i64 [ %.0152.us.us.i.i, %bb.cf ], [ %.03.us.us.i.i, %bb.ce ]
  %.116.us.us.i.i = phi i64 [ %i.pk, %bb.cf ], [ %.0152.us.us.i.i, %bb.ce ] ; 3 uses
  %.1.us.us.i.i44 = phi i64 [ %.03.us.us.i.i, %bb.cf ], [ %i.pj, %bb.ce ] ; 3 uses
  %i.pl = load ptr, ptr %.sink.i.i43, align 8, !tbaa !424, !noalias !734
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %.0152.us.us.sink.i.i
  store i32 %i.pi, ptr %i.pm, align 4, !tbaa !3, !noalias !734
  %i.pn = or disjoint i64 %.0171.us.us.i.i, 1     ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !272, !alias.scope !734
  %.not.us.us.i.i42.1 = icmp eq i8 %i.pp, 0
  %i.pq = trunc i64 %i.pn to i32
  br i1 %.not.us.us.i.i42.1, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.1
  %i.pr = add i64 %.1.us.us.i.i44, 1
  br label %bb.ci

bb.ch:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.1
  %i.ps = add i64 %.116.us.us.i.i, 1
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.sink.i.i43.1 = phi ptr [ %6, %bb.ch ], [ %5, %bb.cg ]
  %.0152.us.us.sink.i.i.1 = phi i64 [ %.116.us.us.i.i, %bb.ch ], [ %.1.us.us.i.i44, %bb.cg ]
  %.116.us.us.i.i.1 = phi i64 [ %i.ps, %bb.ch ], [ %.116.us.us.i.i, %bb.cg ] ; 2 uses
  %.1.us.us.i.i44.1 = phi i64 [ %.1.us.us.i.i44, %bb.ch ], [ %i.pr, %bb.cg ] ; 3 uses
  %i.pt = load ptr, ptr %.sink.i.i43.1, align 8, !tbaa !424, !noalias !734
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %.0152.us.us.sink.i.i.1
  store i32 %i.pq, ptr %i.pu, align 4, !tbaa !3, !noalias !734
  %i.pv = add nuw i64 %.0171.us.us.i.i, 2         ; 2 uses
  %niter386.next.1 = add nuw i64 %niter386, 2     ; 2 uses
  %niter386.ncmp.1 = icmp eq i64 %niter386.next.1, %unroll_iter385
  br i1 %niter386.ncmp.1, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41, !llvm.loop !737

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38: ; preds = %bb.cn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.preheader.new
  %.03.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.preheader.new ], [ %.1.us.i.i40.1, %bb.cn ] ; 3 uses
  %.0152.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.preheader.new ], [ %.116.us.i.i.1, %bb.cn ] ; 3 uses
  %.0171.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.preheader.new ], [ %i.qn, %bb.cn ] ; 4 uses
  %niter380 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.preheader.new ], [ %niter380.next.1, %bb.cn ]
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %.0171.us.i.i
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !3, !noalias !734
  %i.py = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.0171.us.i.i
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !272, !alias.scope !734
  %.not.us.i.i39 = icmp eq i8 %i.pz, 0
  br i1 %.not.us.i.i39, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38
  %i.qa = add i64 %.03.us.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.1

bb.ck:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38
  %i.qb = add i64 %.0152.us.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.1: ; preds = %bb.ck, %bb.cj
  %.sink35.i.i = phi ptr [ %6, %bb.ck ], [ %5, %bb.cj ]
  %.0152.us.sink.i.i = phi i64 [ %.0152.us.i.i, %bb.ck ], [ %.03.us.i.i, %bb.cj ]
  %.116.us.i.i = phi i64 [ %i.qb, %bb.ck ], [ %.0152.us.i.i, %bb.cj ] ; 3 uses
  %.1.us.i.i40 = phi i64 [ %.03.us.i.i, %bb.ck ], [ %i.qa, %bb.cj ] ; 3 uses
  %i.qc = load ptr, ptr %.sink35.i.i, align 8, !tbaa !424, !noalias !734
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %.0152.us.sink.i.i
  store i32 %i.px, ptr %i.qd, align 4, !tbaa !3, !noalias !734
  %i.qe = or disjoint i64 %.0171.us.i.i, 1        ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !3, !noalias !734
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.qe
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !272, !alias.scope !734
  %.not.us.i.i39.1 = icmp eq i8 %i.qi, 0
  br i1 %.not.us.i.i39.1, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.1
  %i.qj = add i64 %.1.us.i.i40, 1
  br label %bb.cn

bb.cm:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.1
  %i.qk = add i64 %.116.us.i.i, 1
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.sink35.i.i.1 = phi ptr [ %6, %bb.cm ], [ %5, %bb.cl ]
  %.0152.us.sink.i.i.1 = phi i64 [ %.116.us.i.i, %bb.cm ], [ %.1.us.i.i40, %bb.cl ]
  %.116.us.i.i.1 = phi i64 [ %i.qk, %bb.cm ], [ %.116.us.i.i, %bb.cl ] ; 2 uses
  %.1.us.i.i40.1 = phi i64 [ %.1.us.i.i40, %bb.cm ], [ %i.qj, %bb.cl ] ; 3 uses
  %i.ql = load ptr, ptr %.sink35.i.i.1, align 8, !tbaa !424, !noalias !734
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %.0152.us.sink.i.i.1
  store i32 %i.qg, ptr %i.qm, align 4, !tbaa !3, !noalias !734
  %i.qn = add nuw i64 %.0171.us.i.i, 2            ; 2 uses
  %niter380.next.1 = add nuw i64 %niter380, 2     ; 2 uses
  %niter380.ncmp.1 = icmp eq i64 %niter380.next.1, %unroll_iter379
  br i1 %niter380.ncmp.1, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit240.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38, !llvm.loop !737

.lr.ph.split.i.i31:                               ; preds = %.lr.ph.i.i29
  br i1 %.not.i18.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.preheader: ; preds = %.lr.ph.split.i.i31
  %xtraiter363 = and i64 %4, 1
  %i.qo = icmp eq i64 %4, 1
  br i1 %i.qo, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.preheader
  %unroll_iter367 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.preheader: ; preds = %.lr.ph.split.i.i31
  %xtraiter369 = and i64 %4, 1
  %i.qp = icmp eq i64 %4, 1
  br i1 %i.qp, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.preheader
  %unroll_iter373 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i: ; preds = %bb.cs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.preheader.new
  %.03.us5.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.preheader.new ], [ %.1.us11.i.i36.1, %bb.cs ] ; 3 uses
  %.0152.us6.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.preheader.new ], [ %.116.us10.i.i.1, %bb.cs ] ; 3 uses
  %.0171.us7.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.preheader.new ], [ %i.rl, %bb.cs ] ; 4 uses
  %niter374 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.preheader.new ], [ %niter374.next.1, %bb.cs ]
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %.0171.us7.i.i
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !3, !noalias !734
  %i.qs = zext i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !272, !alias.scope !734
  %.not.us9.i.i = icmp eq i8 %i.qu, 0
  %i.qv = trunc i64 %.0171.us7.i.i to i32
  br i1 %.not.us9.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i
  %i.qw = add i64 %.03.us5.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.1

bb.cp:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i
  %i.qx = add i64 %.0152.us6.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.1: ; preds = %bb.cp, %bb.co
  %.sink38.i.i = phi ptr [ %6, %bb.cp ], [ %5, %bb.co ]
  %.0152.us6.sink.i.i = phi i64 [ %.0152.us6.i.i, %bb.cp ], [ %.03.us5.i.i, %bb.co ]
  %.116.us10.i.i = phi i64 [ %i.qx, %bb.cp ], [ %.0152.us6.i.i, %bb.co ] ; 3 uses
  %.1.us11.i.i36 = phi i64 [ %.03.us5.i.i, %bb.cp ], [ %i.qw, %bb.co ] ; 3 uses
  %i.qy = load ptr, ptr %.sink38.i.i, align 8, !tbaa !424, !noalias !734
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %.0152.us6.sink.i.i
  store i32 %i.qv, ptr %i.qz, align 4, !tbaa !3, !noalias !734
  %i.ra = or disjoint i64 %.0171.us7.i.i, 1       ; 2 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !3, !noalias !734
  %i.rd = zext i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.rd
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !272, !alias.scope !734
  %.not.us9.i.i.1 = icmp eq i8 %i.rf, 0
  %i.rg = trunc i64 %i.ra to i32
  br i1 %.not.us9.i.i.1, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.1
  %i.rh = add i64 %.1.us11.i.i36, 1
  br label %bb.cs

bb.cr:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.1
  %i.ri = add i64 %.116.us10.i.i, 1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.sink38.i.i.1 = phi ptr [ %6, %bb.cr ], [ %5, %bb.cq ]
  %.0152.us6.sink.i.i.1 = phi i64 [ %.116.us10.i.i, %bb.cr ], [ %.1.us11.i.i36, %bb.cq ]
  %.116.us10.i.i.1 = phi i64 [ %i.ri, %bb.cr ], [ %.116.us10.i.i, %bb.cq ] ; 2 uses
  %.1.us11.i.i36.1 = phi i64 [ %.1.us11.i.i36, %bb.cr ], [ %i.rh, %bb.cq ] ; 3 uses
  %i.rj = load ptr, ptr %.sink38.i.i.1, align 8, !tbaa !424, !noalias !734
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %.0152.us6.sink.i.i.1
  store i32 %i.rg, ptr %i.rk, align 4, !tbaa !3, !noalias !734
  %i.rl = add nuw i64 %.0171.us7.i.i, 2           ; 2 uses
  %niter374.next.1 = add nuw i64 %niter374, 2     ; 2 uses
  %niter374.ncmp.1 = icmp eq i64 %niter374.next.1, %unroll_iter373
  br i1 %niter374.ncmp.1, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit241.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i, !llvm.loop !737

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32: ; preds = %bb.cx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.preheader.new
  %.03.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.preheader.new ], [ %.1.i.i34.1, %bb.cx ] ; 3 uses
  %.0152.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.preheader.new ], [ %.116.i.i.1, %bb.cx ] ; 3 uses
  %.0171.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.preheader.new ], [ %i.sj, %bb.cx ] ; 4 uses
  %niter368 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.preheader.new ], [ %niter368.next.1, %bb.cx ]
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %.0171.i.i
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !3, !noalias !734
  %i.ro = zext i32 %i.rn to i64
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %.0171.i.i
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !3, !noalias !734
  %i.rr = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.ro
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !272, !alias.scope !734
  %.not.i.i33 = icmp eq i8 %i.rs, 0
  br i1 %.not.i.i33, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32
  %i.rt = add i64 %.03.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.1

bb.cu:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32
  %i.ru = add i64 %.0152.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.1: ; preds = %bb.cu, %bb.ct
  %.sink41.i.i = phi ptr [ %6, %bb.cu ], [ %5, %bb.ct ]
  %.0152.sink.i.i = phi i64 [ %.0152.i.i, %bb.cu ], [ %.03.i.i, %bb.ct ]
  %.116.i.i = phi i64 [ %i.ru, %bb.cu ], [ %.0152.i.i, %bb.ct ] ; 3 uses
  %.1.i.i34 = phi i64 [ %.03.i.i, %bb.cu ], [ %i.rt, %bb.ct ] ; 3 uses
  %i.rv = load ptr, ptr %.sink41.i.i, align 8, !tbaa !424, !noalias !734
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %.0152.sink.i.i
  store i32 %i.rq, ptr %i.rw, align 4, !tbaa !3, !noalias !734
  %i.rx = or disjoint i64 %.0171.i.i, 1           ; 2 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %i.rx
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !3, !noalias !734
  %i.sa = zext i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.rx
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !3, !noalias !734
  %i.sd = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.sa
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !272, !alias.scope !734
  %.not.i.i33.1 = icmp eq i8 %i.se, 0
  br i1 %.not.i.i33.1, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.1
  %i.sf = add i64 %.1.i.i34, 1
  br label %bb.cx

bb.cw:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.1
  %i.sg = add i64 %.116.i.i, 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.sink41.i.i.1 = phi ptr [ %6, %bb.cw ], [ %5, %bb.cv ]
  %.0152.sink.i.i.1 = phi i64 [ %.116.i.i, %bb.cw ], [ %.1.i.i34, %bb.cv ]
  %.116.i.i.1 = phi i64 [ %i.sg, %bb.cw ], [ %.116.i.i, %bb.cv ] ; 2 uses
  %.1.i.i34.1 = phi i64 [ %.1.i.i34, %bb.cw ], [ %i.sf, %bb.cv ] ; 3 uses
  %i.sh = load ptr, ptr %.sink41.i.i.1, align 8, !tbaa !424, !noalias !734
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %.0152.sink.i.i.1
  store i32 %i.sc, ptr %i.si, align 4, !tbaa !3, !noalias !734
  %i.sj = add nuw i64 %.0171.i.i, 2               ; 2 uses
  %niter368.next.1 = add nuw i64 %niter368, 2     ; 2 uses
  %niter368.ncmp.1 = icmp eq i64 %niter368.next.1, %unroll_iter367
  br i1 %niter368.ncmp.1, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit242.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32, !llvm.loop !737

bb.cy:                                            ; preds = %.noexc45
  %.not12.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %i.i, label %bb.cz, label %bb.dm

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  br i1 %.not12.i.i, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit, label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %bb.cz
  %i.sk = load ptr, ptr %i.j, align 8, !tbaa !424, !noalias !738 ; 7 uses
  %.not.i.i28.i = icmp eq ptr %i.sk, null
  %i.sl = load ptr, ptr %.021, align 8, !tbaa !424, !noalias !738 ; 7 uses
  %.not.i13.i.i = icmp eq ptr %i.sl, null         ; 2 uses
  br i1 %.not.i.i28.i, label %.lr.ph.split.us.i35.i, label %.lr.ph.split.i29.i

.lr.ph.split.us.i35.i:                            ; preds = %.lr.ph.i27.i
  br i1 %.not.i13.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.preheader: ; preds = %.lr.ph.split.us.i35.i
  %xtraiter351 = and i64 %4, 1
  %i.sm = icmp eq i64 %4, 1
  br i1 %i.sm, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.preheader
  %unroll_iter355 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.preheader: ; preds = %.lr.ph.split.us.i35.i
  %xtraiter357 = and i64 %4, 1
  %i.sn = icmp eq i64 %4, 1
  br i1 %i.sn, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.preheader
  %unroll_iter361 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i: ; preds = %bb.dc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.preheader.new
  %.02.us.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.preheader.new ], [ %.1.us.us.i41.i.1, %bb.dc ] ; 3 uses
  %.0121.us.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.preheader.new ], [ %i.tb, %bb.dc ] ; 4 uses
  %niter362 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.preheader.new ], [ %niter362.next.1, %bb.dc ]
  %i.so = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.0121.us.us.i.i
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !272, !alias.scope !738
  %.not.us.us.i40.i = icmp eq i8 %i.sp, 0
  br i1 %.not.us.us.i40.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.1, label %bb.da

bb.da:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i
  %i.sq = add i64 %.02.us.us.i.i, 1
  %i.sr = trunc i64 %.0121.us.us.i.i to i32
  %i.ss = load ptr, ptr %5, align 8, !tbaa !424, !noalias !738
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %.02.us.us.i.i
  store i32 %i.sr, ptr %i.st, align 4, !tbaa !3, !noalias !738
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.1: ; preds = %bb.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i
  %.1.us.us.i41.i = phi i64 [ %i.sq, %bb.da ], [ %.02.us.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i ] ; 3 uses
  %i.su = or disjoint i64 %.0121.us.us.i.i, 1     ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !272, !alias.scope !738
  %.not.us.us.i40.i.1 = icmp eq i8 %i.sw, 0
  br i1 %.not.us.us.i40.i.1, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.1
  %i.sx = add i64 %.1.us.us.i41.i, 1
  %i.sy = trunc i64 %i.su to i32
  %i.sz = load ptr, ptr %5, align 8, !tbaa !424, !noalias !738
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %.1.us.us.i41.i
  store i32 %i.sy, ptr %i.ta, align 4, !tbaa !3, !noalias !738
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.1
  %.1.us.us.i41.i.1 = phi i64 [ %i.sx, %bb.db ], [ %.1.us.us.i41.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i.1 ] ; 3 uses
  %i.tb = add nuw i64 %.0121.us.us.i.i, 2         ; 2 uses
  %niter362.next.1 = add nuw i64 %niter362, 2     ; 2 uses
  %niter362.ncmp.1 = icmp eq i64 %niter362.next.1, %unroll_iter361
  br i1 %niter362.ncmp.1, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit243.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i39.i, !llvm.loop !741

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i: ; preds = %bb.df, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.preheader.new
  %.02.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.preheader.new ], [ %.1.us.i38.i.1, %bb.df ] ; 3 uses
  %.0121.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.preheader.new ], [ %i.tr, %bb.df ] ; 4 uses
  %niter356 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.preheader.new ], [ %niter356.next.1, %bb.df ]
  %i.tc = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.0121.us.i.i
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !272, !alias.scope !738
  %.not.us.i37.i = icmp eq i8 %i.td, 0
  br i1 %.not.us.i37.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.1, label %bb.dd

bb.dd:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %.0121.us.i.i
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !3, !noalias !738
  %i.tg = add i64 %.02.us.i.i, 1
  %i.th = load ptr, ptr %5, align 8, !tbaa !424, !noalias !738
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %.02.us.i.i
  store i32 %i.tf, ptr %i.ti, align 4, !tbaa !3, !noalias !738
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.1: ; preds = %bb.dd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i
  %.1.us.i38.i = phi i64 [ %i.tg, %bb.dd ], [ %.02.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i ] ; 3 uses
  %i.tj = or disjoint i64 %.0121.us.i.i, 1        ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !272, !alias.scope !738
  %.not.us.i37.i.1 = icmp eq i8 %i.tl, 0
  br i1 %.not.us.i37.i.1, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.1
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.tj
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !3, !noalias !738
  %i.to = add i64 %.1.us.i38.i, 1
  %i.tp = load ptr, ptr %5, align 8, !tbaa !424, !noalias !738
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %.1.us.i38.i
  store i32 %i.tn, ptr %i.tq, align 4, !tbaa !3, !noalias !738
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.1
  %.1.us.i38.i.1 = phi i64 [ %i.to, %bb.de ], [ %.1.us.i38.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i.1 ] ; 3 uses
  %i.tr = add nuw i64 %.0121.us.i.i, 2            ; 2 uses
  %niter356.next.1 = add nuw i64 %niter356, 2     ; 2 uses
  %niter356.ncmp.1 = icmp eq i64 %niter356.next.1, %unroll_iter355
  br i1 %niter356.ncmp.1, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit244.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i36.i, !llvm.loop !741

.lr.ph.split.i29.i:                               ; preds = %.lr.ph.i27.i
  br i1 %.not.i13.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.preheader: ; preds = %.lr.ph.split.i29.i
  %xtraiter339 = and i64 %4, 1
  %i.ts = icmp eq i64 %4, 1
  br i1 %i.ts, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.preheader
  %unroll_iter343 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.preheader: ; preds = %.lr.ph.split.i29.i
  %xtraiter345 = and i64 %4, 1
  %i.tt = icmp eq i64 %4, 1
  br i1 %i.tt, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.preheader
  %unroll_iter349 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i: ; preds = %bb.di, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.preheader.new
  %.02.us4.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.preheader.new ], [ %.1.us8.i.i.1, %bb.di ] ; 3 uses
  %.0121.us5.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.preheader.new ], [ %i.un, %bb.di ] ; 4 uses
  %niter350 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.preheader.new ], [ %niter350.next.1, %bb.di ]
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %.0121.us5.i.i
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !3, !noalias !738
  %i.tw = zext i32 %i.tv to i64
  %i.tx = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.tw
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !272, !alias.scope !738
  %.not.us7.i.i = icmp eq i8 %i.ty, 0
  br i1 %.not.us7.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.1, label %bb.dg

bb.dg:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i
  %i.tz = add i64 %.02.us4.i.i, 1
  %i.ua = trunc i64 %.0121.us5.i.i to i32
  %i.ub = load ptr, ptr %5, align 8, !tbaa !424, !noalias !738
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %.02.us4.i.i
  store i32 %i.ua, ptr %i.uc, align 4, !tbaa !3, !noalias !738
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.1: ; preds = %bb.dg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i
  %.1.us8.i.i = phi i64 [ %i.tz, %bb.dg ], [ %.02.us4.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i ] ; 3 uses
  %i.ud = or disjoint i64 %.0121.us5.i.i, 1       ; 2 uses
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.ud
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !3, !noalias !738
  %i.ug = zext i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.ug
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !272, !alias.scope !738
  %.not.us7.i.i.1 = icmp eq i8 %i.ui, 0
  br i1 %.not.us7.i.i.1, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.1
  %i.uj = add i64 %.1.us8.i.i, 1
  %i.uk = trunc i64 %i.ud to i32
  %i.ul = load ptr, ptr %5, align 8, !tbaa !424, !noalias !738
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %.1.us8.i.i
  store i32 %i.uk, ptr %i.um, align 4, !tbaa !3, !noalias !738
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.1
  %.1.us8.i.i.1 = phi i64 [ %i.uj, %bb.dh ], [ %.1.us8.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i.1 ] ; 3 uses
  %i.un = add nuw i64 %.0121.us5.i.i, 2           ; 2 uses
  %niter350.next.1 = add nuw i64 %niter350, 2     ; 2 uses
  %niter350.ncmp.1 = icmp eq i64 %niter350.next.1, %unroll_iter349
  br i1 %niter350.ncmp.1, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit245.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i.i, !llvm.loop !741

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i: ; preds = %bb.dl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.preheader.new
  %.02.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.preheader.new ], [ %.1.i32.i.1, %bb.dl ] ; 3 uses
  %.0121.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.preheader.new ], [ %i.vj, %bb.dl ] ; 4 uses
  %niter344 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.preheader.new ], [ %niter344.next.1, %bb.dl ]
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %.0121.i.i
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !3, !noalias !738
  %i.uq = zext i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.uq
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !272, !alias.scope !738
  %.not.i31.i = icmp eq i8 %i.us, 0
  br i1 %.not.i31.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.1, label %bb.dj

bb.dj:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %.0121.i.i
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !3, !noalias !738
  %i.uv = add i64 %.02.i.i, 1
  %i.uw = load ptr, ptr %5, align 8, !tbaa !424, !noalias !738
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %.02.i.i
  store i32 %i.uu, ptr %i.ux, align 4, !tbaa !3, !noalias !738
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.1: ; preds = %bb.dj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i
  %.1.i32.i = phi i64 [ %i.uv, %bb.dj ], [ %.02.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i ] ; 3 uses
  %i.uy = or disjoint i64 %.0121.i.i, 1           ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.uy
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !3, !noalias !738
  %i.vb = zext i32 %i.va to i64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.vb
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !272, !alias.scope !738
  %.not.i31.i.1 = icmp eq i8 %i.vd, 0
  br i1 %.not.i31.i.1, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.1
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.uy
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !3, !noalias !738
  %i.vg = add i64 %.1.i32.i, 1
  %i.vh = load ptr, ptr %5, align 8, !tbaa !424, !noalias !738
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %.1.i32.i
  store i32 %i.vf, ptr %i.vi, align 4, !tbaa !3, !noalias !738
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.1
  %.1.i32.i.1 = phi i64 [ %i.vg, %bb.dk ], [ %.1.i32.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i.1 ] ; 3 uses
  %i.vj = add nuw i64 %.0121.i.i, 2               ; 2 uses
  %niter344.next.1 = add nuw i64 %niter344, 2     ; 2 uses
  %niter344.ncmp.1 = icmp eq i64 %niter344.next.1, %unroll_iter343
  br i1 %niter344.ncmp.1, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit246.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i30.i, !llvm.loop !741

bb.dm:                                            ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  br i1 %.not12.i.i, label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i, label %.lr.ph.i43.i

.lr.ph.i43.i:                                     ; preds = %bb.dm
  %i.vk = load ptr, ptr %i.j, align 8, !tbaa !424, !noalias !742 ; 7 uses
  %.not.i.i44.i = icmp eq ptr %i.vk, null
  %i.vl = load ptr, ptr %.021, align 8, !tbaa !424, !noalias !742 ; 7 uses
  %.not.i15.i.i27 = icmp eq ptr %i.vl, null       ; 2 uses
  br i1 %.not.i.i44.i, label %.lr.ph.split.us.i57.i, label %.lr.ph.split.i45.i

.lr.ph.split.us.i57.i:                            ; preds = %.lr.ph.i43.i
  br i1 %.not.i15.i.i27, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.preheader: ; preds = %.lr.ph.split.us.i57.i
  %xtraiter327 = and i64 %4, 1
  %i.vm = icmp eq i64 %4, 1
  br i1 %i.vm, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.preheader
  %unroll_iter331 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.preheader: ; preds = %.lr.ph.split.us.i57.i
  %xtraiter333 = and i64 %4, 1
  %i.vn = icmp eq i64 %4, 1
  br i1 %i.vn, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.preheader
  %unroll_iter337 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i: ; preds = %bb.dp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.preheader.new
  %.02.us.us.i64.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.preheader.new ], [ %.1.us.us.i66.i.1, %bb.dp ] ; 3 uses
  %.0131.us.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.preheader.new ], [ %i.wb, %bb.dp ] ; 4 uses
  %niter338 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.preheader.new ], [ %niter338.next.1, %bb.dp ]
  %i.vo = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.0131.us.us.i.i
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !272, !alias.scope !742
  %.not.us.us.i65.i = icmp eq i8 %i.vp, 0
  br i1 %.not.us.us.i65.i, label %bb.dn, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.1

bb.dn:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i
  %i.vq = add i64 %.02.us.us.i64.i, 1
  %i.vr = trunc i64 %.0131.us.us.i.i to i32
  %i.vs = load ptr, ptr %6, align 8, !tbaa !424, !noalias !742
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %.02.us.us.i64.i
  store i32 %i.vr, ptr %i.vt, align 4, !tbaa !3, !noalias !742
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.1: ; preds = %bb.dn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i
  %.1.us.us.i66.i = phi i64 [ %.02.us.us.i64.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i ], [ %i.vq, %bb.dn ] ; 3 uses
  %i.vu = or disjoint i64 %.0131.us.us.i.i, 1     ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.vu
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !272, !alias.scope !742
  %.not.us.us.i65.i.1 = icmp eq i8 %i.vw, 0
  br i1 %.not.us.us.i65.i.1, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.1
  %i.vx = add i64 %.1.us.us.i66.i, 1
  %i.vy = trunc i64 %i.vu to i32
  %i.vz = load ptr, ptr %6, align 8, !tbaa !424, !noalias !742
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %.1.us.us.i66.i
  store i32 %i.vy, ptr %i.wa, align 4, !tbaa !3, !noalias !742
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.1
  %.1.us.us.i66.i.1 = phi i64 [ %.1.us.us.i66.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.1 ], [ %i.vx, %bb.do ] ; 3 uses
  %i.wb = add nuw i64 %.0131.us.us.i.i, 2         ; 2 uses
  %niter338.next.1 = add nuw i64 %niter338, 2     ; 2 uses
  %niter338.ncmp.1 = icmp eq i64 %niter338.next.1, %unroll_iter337
  br i1 %niter338.ncmp.1, label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i, !llvm.loop !745

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i: ; preds = %bb.ds, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.preheader.new
  %.02.us.i59.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.preheader.new ], [ %.1.us.i61.i.1, %bb.ds ] ; 3 uses
  %.0131.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.preheader.new ], [ %i.wr, %bb.ds ] ; 4 uses
  %niter332 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.preheader.new ], [ %niter332.next.1, %bb.ds ]
  %i.wc = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.0131.us.i.i
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !272, !alias.scope !742
  %.not.us.i60.i = icmp eq i8 %i.wd, 0
  br i1 %.not.us.i60.i, label %bb.dq, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.1

bb.dq:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %.0131.us.i.i
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !3, !noalias !742
  %i.wg = add i64 %.02.us.i59.i, 1
  %i.wh = load ptr, ptr %6, align 8, !tbaa !424, !noalias !742
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %.02.us.i59.i
  store i32 %i.wf, ptr %i.wi, align 4, !tbaa !3, !noalias !742
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.1: ; preds = %bb.dq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i
  %.1.us.i61.i = phi i64 [ %.02.us.i59.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i ], [ %i.wg, %bb.dq ] ; 3 uses
  %i.wj = or disjoint i64 %.0131.us.i.i, 1        ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.wj
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !272, !alias.scope !742
  %.not.us.i60.i.1 = icmp eq i8 %i.wl, 0
  br i1 %.not.us.i60.i.1, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.1
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %i.wj
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !3, !noalias !742
  %i.wo = add i64 %.1.us.i61.i, 1
  %i.wp = load ptr, ptr %6, align 8, !tbaa !424, !noalias !742
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %.1.us.i61.i
  store i32 %i.wn, ptr %i.wq, align 4, !tbaa !3, !noalias !742
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.1
  %.1.us.i61.i.1 = phi i64 [ %.1.us.i61.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.1 ], [ %i.wo, %bb.dr ] ; 3 uses
  %i.wr = add nuw i64 %.0131.us.i.i, 2            ; 2 uses
  %niter332.next.1 = add nuw i64 %niter332, 2     ; 2 uses
  %niter332.ncmp.1 = icmp eq i64 %niter332.next.1, %unroll_iter331
  br i1 %niter332.ncmp.1, label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit247.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i, !llvm.loop !745

.lr.ph.split.i45.i:                               ; preds = %.lr.ph.i43.i
  br i1 %.not.i15.i.i27, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.preheader: ; preds = %.lr.ph.split.i45.i
  %xtraiter315 = and i64 %4, 1
  %i.ws = icmp eq i64 %4, 1
  br i1 %i.ws, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.preheader
  %unroll_iter319 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.preheader: ; preds = %.lr.ph.split.i45.i
  %xtraiter321 = and i64 %4, 1
  %i.wt = icmp eq i64 %4, 1
  br i1 %i.wt, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.preheader
  %unroll_iter325 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i: ; preds = %bb.dv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.preheader.new
  %.02.us4.i53.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.preheader.new ], [ %.1.us8.i55.i.1, %bb.dv ] ; 3 uses
  %.0131.us5.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.preheader.new ], [ %i.xn, %bb.dv ] ; 4 uses
  %niter326 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.preheader.new ], [ %niter326.next.1, %bb.dv ]
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %.0131.us5.i.i
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !3, !noalias !742
  %i.ww = zext i32 %i.wv to i64
  %i.wx = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !272, !alias.scope !742
  %.not.us7.i54.i = icmp eq i8 %i.wy, 0
  br i1 %.not.us7.i54.i, label %bb.dt, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.1

bb.dt:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i
  %i.wz = add i64 %.02.us4.i53.i, 1
  %i.xa = trunc i64 %.0131.us5.i.i to i32
  %i.xb = load ptr, ptr %6, align 8, !tbaa !424, !noalias !742
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %.02.us4.i53.i
  store i32 %i.xa, ptr %i.xc, align 4, !tbaa !3, !noalias !742
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.1: ; preds = %bb.dt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i
  %.1.us8.i55.i = phi i64 [ %.02.us4.i53.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i ], [ %i.wz, %bb.dt ] ; 3 uses
  %i.xd = or disjoint i64 %.0131.us5.i.i, 1       ; 2 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %i.xd
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !3, !noalias !742
  %i.xg = zext i32 %i.xf to i64
  %i.xh = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.xg
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !272, !alias.scope !742
  %.not.us7.i54.i.1 = icmp eq i8 %i.xi, 0
  br i1 %.not.us7.i54.i.1, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.1
  %i.xj = add i64 %.1.us8.i55.i, 1
  %i.xk = trunc i64 %i.xd to i32
  %i.xl = load ptr, ptr %6, align 8, !tbaa !424, !noalias !742
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %.1.us8.i55.i
  store i32 %i.xk, ptr %i.xm, align 4, !tbaa !3, !noalias !742
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.1
  %.1.us8.i55.i.1 = phi i64 [ %.1.us8.i55.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.1 ], [ %i.xj, %bb.du ] ; 3 uses
  %i.xn = add nuw i64 %.0131.us5.i.i, 2           ; 2 uses
  %niter326.next.1 = add nuw i64 %niter326, 2     ; 2 uses
  %niter326.ncmp.1 = icmp eq i64 %niter326.next.1, %unroll_iter325
  br i1 %niter326.ncmp.1, label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit248.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i, !llvm.loop !745

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i: ; preds = %bb.dy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.preheader.new
  %.02.i47.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.preheader.new ], [ %.1.i49.i.1, %bb.dy ] ; 3 uses
  %.0131.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.preheader.new ], [ %i.yj, %bb.dy ] ; 4 uses
  %niter320 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.preheader.new ], [ %niter320.next.1, %bb.dy ]
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %.0131.i.i
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !3, !noalias !742
  %i.xq = zext i32 %i.xp to i64
  %i.xr = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.xq
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !272, !alias.scope !742
  %.not.i48.i = icmp eq i8 %i.xs, 0
  br i1 %.not.i48.i, label %bb.dw, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.1

bb.dw:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %.0131.i.i
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !3, !noalias !742
  %i.xv = add i64 %.02.i47.i, 1
  %i.xw = load ptr, ptr %6, align 8, !tbaa !424, !noalias !742
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %.02.i47.i
  store i32 %i.xu, ptr %i.xx, align 4, !tbaa !3, !noalias !742
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.1: ; preds = %bb.dw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i
  %.1.i49.i = phi i64 [ %.02.i47.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i ], [ %i.xv, %bb.dw ] ; 3 uses
  %i.xy = or disjoint i64 %.0131.i.i, 1           ; 2 uses
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %i.xy
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !3, !noalias !742
  %i.yb = zext i32 %i.ya to i64
  %i.yc = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.yb
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !272, !alias.scope !742
  %.not.i48.i.1 = icmp eq i8 %i.yd, 0
  br i1 %.not.i48.i.1, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.1
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %i.xy
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !3, !noalias !742
  %i.yg = add i64 %.1.i49.i, 1
  %i.yh = load ptr, ptr %6, align 8, !tbaa !424, !noalias !742
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %.1.i49.i
  store i32 %i.yf, ptr %i.yi, align 4, !tbaa !3, !noalias !742
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.1
  %.1.i49.i.1 = phi i64 [ %.1.i49.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.1 ], [ %i.yg, %bb.dx ] ; 3 uses
  %i.yj = add nuw i64 %.0131.i.i, 2               ; 2 uses
  %niter320.next.1 = add nuw i64 %niter320, 2     ; 2 uses
  %niter320.ncmp.1 = icmp eq i64 %niter320.next.1, %unroll_iter319
  br i1 %niter320.ncmp.1, label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit249.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i, !llvm.loop !745

_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit.unr-lcssa: ; preds = %bb.dp
  %lcmp.mod334.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod334.not, label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.epil.preheader: ; preds = %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.preheader
  %.02.us.us.i64.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.preheader ], [ %.1.us.us.i66.i.1, %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %.0131.us.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.preheader ], [ %i.wb, %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod336 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod336)
  %i.yk = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.0131.us.us.i.i.epil.init
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !272, !alias.scope !742
  %.not.us.us.i65.i.epil = icmp eq i8 %i.yl, 0
  br i1 %.not.us.us.i65.i.epil, label %bb.dz, label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

bb.dz:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.epil.preheader
  %i.ym = add i64 %.02.us.us.i64.i.epil.init, 1
  %i.yn = trunc i64 %.0131.us.us.i.i.epil.init to i32
  %i.yo = load ptr, ptr %6, align 8, !tbaa !424, !noalias !742
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %.02.us.us.i64.i.epil.init
  store i32 %i.yn, ptr %i.yp, align 4, !tbaa !3, !noalias !742
  br label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit247.unr-lcssa: ; preds = %bb.ds
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  br i1 %lcmp.mod328.not, label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.epil.preheader: ; preds = %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit247.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.preheader
  %.02.us.i59.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.preheader ], [ %.1.us.i61.i.1, %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit247.unr-lcssa ] ; 3 uses
  %.0131.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.preheader ], [ %i.wr, %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit247.unr-lcssa ] ; 2 uses
  %lcmp.mod330 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod330)
  %i.yq = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.0131.us.i.i.epil.init
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !272, !alias.scope !742
  %.not.us.i60.i.epil = icmp eq i8 %i.yr, 0
  br i1 %.not.us.i60.i.epil, label %bb.ea, label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

bb.ea:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.epil.preheader
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %.0131.us.i.i.epil.init
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !3, !noalias !742
  %i.yu = add i64 %.02.us.i59.i.epil.init, 1
  %i.yv = load ptr, ptr %6, align 8, !tbaa !424, !noalias !742
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %.02.us.i59.i.epil.init
  store i32 %i.yt, ptr %i.yw, align 4, !tbaa !3, !noalias !742
  br label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit248.unr-lcssa: ; preds = %bb.dv
  %lcmp.mod322.not = icmp eq i64 %xtraiter321, 0
  br i1 %lcmp.mod322.not, label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.epil.preheader: ; preds = %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit248.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.preheader
  %.02.us4.i53.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.preheader ], [ %.1.us8.i55.i.1, %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit248.unr-lcssa ] ; 3 uses
  %.0131.us5.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.preheader ], [ %i.xn, %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit248.unr-lcssa ] ; 2 uses
  %lcmp.mod324 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod324)
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %.0131.us5.i.i.epil.init
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !3, !noalias !742
  %i.yz = zext i32 %i.yy to i64
  %i.za = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.yz
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !272, !alias.scope !742
  %.not.us7.i54.i.epil = icmp eq i8 %i.zb, 0
  br i1 %.not.us7.i54.i.epil, label %bb.eb, label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

bb.eb:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.epil.preheader
  %i.zc = add i64 %.02.us4.i53.i.epil.init, 1
  %i.zd = trunc i64 %.0131.us5.i.i.epil.init to i32
  %i.ze = load ptr, ptr %6, align 8, !tbaa !424, !noalias !742
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %.02.us4.i53.i.epil.init
  store i32 %i.zd, ptr %i.zf, align 4, !tbaa !3, !noalias !742
  br label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit249.unr-lcssa: ; preds = %bb.dy
  %lcmp.mod316.not = icmp eq i64 %xtraiter315, 0
  br i1 %lcmp.mod316.not, label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.epil.preheader: ; preds = %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit249.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.preheader
  %.02.i47.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.preheader ], [ %.1.i49.i.1, %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit249.unr-lcssa ] ; 3 uses
  %.0131.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.preheader ], [ %i.yj, %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit249.unr-lcssa ] ; 2 uses
  %lcmp.mod318 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod318)
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %.0131.i.i.epil.init
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !3, !noalias !742
  %i.zi = zext i32 %i.zh to i64
  %i.zj = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.zi
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !272, !alias.scope !742
  %.not.i48.i.epil = icmp eq i8 %i.zk, 0
  br i1 %.not.i48.i.epil, label %bb.ec, label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

bb.ec:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.epil.preheader
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %.0131.i.i.epil.init
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !3, !noalias !742
  %i.zn = add i64 %.02.i47.i.epil.init, 1
  %i.zo = load ptr, ptr %6, align 8, !tbaa !424, !noalias !742
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %.02.i47.i.epil.init
  store i32 %i.zm, ptr %i.zp, align 4, !tbaa !3, !noalias !742
  br label %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i

_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i: ; preds = %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit249.unr-lcssa, %bb.ec, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.epil.preheader, %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit248.unr-lcssa, %bb.eb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.epil.preheader, %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit247.unr-lcssa, %bb.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.epil.preheader, %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit.unr-lcssa, %bb.dz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.epil.preheader, %bb.dm
  %.0.lcssa.i51.i = phi i64 [ 0, %bb.dm ], [ %i.zc, %bb.eb ], [ %i.yu, %bb.ea ], [ %i.ym, %bb.dz ], [ %.1.us.us.i66.i.1, %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit.unr-lcssa ], [ %.02.us.us.i64.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i63.i.epil.preheader ], [ %.1.us.i61.i.1, %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit247.unr-lcssa ], [ %.02.us.i59.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i58.i.epil.preheader ], [ %.1.us8.i55.i.1, %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit248.unr-lcssa ], [ %.02.us4.i53.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us3.i52.i.epil.preheader ], [ %.1.i49.i.1, %_ZN6duckdbL17DefaultSelectLoopILb1ELb0ELb1EEEmPKNS_15SelectionVectorEPKhRNS_12ValidityMaskES3_mPS1_S8_.exit.i.loopexit249.unr-lcssa ], [ %.02.i47.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46.i.epil.preheader ], [ %i.zn, %bb.ec ]
  %i.zq = sub i64 %4, %.0.lcssa.i51.i
  br label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit

_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit.unr-lcssa: ; preds = %bb.ci
  %lcmp.mod382.not = icmp eq i64 %xtraiter381, 0
  br i1 %lcmp.mod382.not, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.epil.preheader: ; preds = %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.preheader
  %.03.us.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.preheader ], [ %.1.us.us.i.i44.1, %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit.unr-lcssa ] ; 3 uses
  %.0152.us.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.preheader ], [ %.116.us.us.i.i.1, %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit.unr-lcssa ]
  %.0171.us.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i41.preheader ], [ %i.pv, %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod384 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod384)
  %i.zr = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.0171.us.us.i.i.epil.init
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !272, !alias.scope !734
  %.not.us.us.i.i42.epil = icmp eq i8 %i.zs, 0    ; 3 uses
  %i.zt = trunc i64 %.0171.us.us.i.i.epil.init to i32
  %i.zu = add i64 %.03.us.us.i.i.epil.init, 1
  %.sink.i.i43.epil = select i1 %.not.us.us.i.i42.epil, ptr %6, ptr %5
  %.0152.us.us.sink.i.i.epil = select i1 %.not.us.us.i.i42.epil, i64 %.0152.us.us.i.i.epil.init, i64 %.03.us.us.i.i.epil.init
  %.1.us.us.i.i44.epil = select i1 %.not.us.us.i.i42.epil, i64 %.03.us.us.i.i.epil.init, i64 %i.zu
  %i.zv = load ptr, ptr %.sink.i.i43.epil, align 8, !tbaa !424, !noalias !734
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %.0152.us.us.sink.i.i.epil
  store i32 %i.zt, ptr %i.zw, align 4, !tbaa !3, !noalias !734
  br label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit

_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit240.unr-lcssa: ; preds = %bb.cn
  %lcmp.mod376.not = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod376.not, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.epil.preheader: ; preds = %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit240.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.preheader
  %.03.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.preheader ], [ %.1.us.i.i40.1, %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit240.unr-lcssa ] ; 3 uses
  %.0152.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.preheader ], [ %.116.us.i.i.1, %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit240.unr-lcssa ]
  %.0171.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i38.preheader ], [ %i.qn, %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit240.unr-lcssa ] ; 2 uses
  %lcmp.mod378 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod378)
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %.0171.us.i.i.epil.init
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !3, !noalias !734
  %i.zz = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.0171.us.i.i.epil.init
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !272, !alias.scope !734
  %.not.us.i.i39.epil = icmp eq i8 %i.aaa, 0      ; 3 uses
  %i.aab = add i64 %.03.us.i.i.epil.init, 1
  %.sink35.i.i.epil = select i1 %.not.us.i.i39.epil, ptr %6, ptr %5
  %.0152.us.sink.i.i.epil = select i1 %.not.us.i.i39.epil, i64 %.0152.us.i.i.epil.init, i64 %.03.us.i.i.epil.init
  %.1.us.i.i40.epil = select i1 %.not.us.i.i39.epil, i64 %.03.us.i.i.epil.init, i64 %i.aab
  %i.aac = load ptr, ptr %.sink35.i.i.epil, align 8, !tbaa !424, !noalias !734
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %.0152.us.sink.i.i.epil
  store i32 %i.zy, ptr %i.aad, align 4, !tbaa !3, !noalias !734
  br label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit

_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit241.unr-lcssa: ; preds = %bb.cs
  %lcmp.mod370.not = icmp eq i64 %xtraiter369, 0
  br i1 %lcmp.mod370.not, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.epil.preheader: ; preds = %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit241.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.preheader
  %.03.us5.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.preheader ], [ %.1.us11.i.i36.1, %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit241.unr-lcssa ] ; 3 uses
  %.0152.us6.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.preheader ], [ %.116.us10.i.i.1, %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit241.unr-lcssa ]
  %.0171.us7.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us4.i.i.preheader ], [ %i.rl, %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit241.unr-lcssa ] ; 2 uses
  %lcmp.mod372 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod372)
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %.0171.us7.i.i.epil.init
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !3, !noalias !734
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.aag
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !272, !alias.scope !734
  %.not.us9.i.i.epil = icmp eq i8 %i.aai, 0       ; 3 uses
  %i.aaj = trunc i64 %.0171.us7.i.i.epil.init to i32
  %i.aak = add i64 %.03.us5.i.i.epil.init, 1
  %.sink38.i.i.epil = select i1 %.not.us9.i.i.epil, ptr %6, ptr %5
  %.0152.us6.sink.i.i.epil = select i1 %.not.us9.i.i.epil, i64 %.0152.us6.i.i.epil.init, i64 %.03.us5.i.i.epil.init
  %.1.us11.i.i36.epil = select i1 %.not.us9.i.i.epil, i64 %.03.us5.i.i.epil.init, i64 %i.aak
  %i.aal = load ptr, ptr %.sink38.i.i.epil, align 8, !tbaa !424, !noalias !734
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %.0152.us6.sink.i.i.epil
  store i32 %i.aaj, ptr %i.aam, align 4, !tbaa !3, !noalias !734
  br label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit

_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit242.unr-lcssa: ; preds = %bb.cx
  %lcmp.mod364.not = icmp eq i64 %xtraiter363, 0
  br i1 %lcmp.mod364.not, label %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.epil.preheader: ; preds = %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit242.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.preheader
  %.03.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.preheader ], [ %.1.i.i34.1, %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit242.unr-lcssa ] ; 3 uses
  %.0152.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.preheader ], [ %.116.i.i.1, %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit242.unr-lcssa ]
  %.0171.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i32.preheader ], [ %i.sj, %_ZN6duckdbL19DefaultSelectSwitchILb0EEEmRNS_19UnifiedVectorFormatEPKNS_15SelectionVectorEmPS3_S6_.exit.loopexit242.unr-lcssa ] ; 2 uses
  %lcmp.mod366 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod366)
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %.0171.i.i.epil.init
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !3, !noalias !734
  %i.aap = zext i32 %i.aao to i64
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %.0171.i.i.epil.init
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !3, !noalias !734
  %i.aas = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.aap
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !272, !alias.scope !734
  %.not.i.i33.epil = icmp eq i8 %i.aat, 0         ; 3 uses
  %i.aau = add i64 %.03.i.i.epil.init, 1
  %.sink41.i.i.epil = select i1 %.not.i.i33.epil, ptr %6, ptr %5
  %.0152.sink.i.i.epil = select i1 %.not.i.i33.epil, i64 %.0152.i.i.epil.init, i64 %.03.i.i.epil.init
  %.1.i.i34.epil = select i1 %.not.i.i33.epil, i64 %.03.i.i.epil.init, i64 %i.aau
  %i.aav = load ptr, ptr %.sink41.i.i.epil, align 8, !tbaa !424, !noalias !734
end_hunk_3
begin_hunk_4_@_ZN6duckdb13JoinHashTable5BuildERNS_31PartitionedTupleDataAppendStateERNS_9DataChunkES4_:bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #40, !inline_history !319
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.bm:                                            ; preds = %bb.bk
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ej = add nsw i32 %i.ea, -1
  store i32 %i.ej, ptr %i.dx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.ek = atomicrmw volatile add ptr %i.dx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i.i.i = phi i32 [ %i.ea, %bb.bn ], [ %i.ek, %bb.bo ]
  %i.el = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.el, label %bb.bp, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !58

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #40
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.bj, %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.bq

bb.bq:                                            ; preds = %bb.a, %_ZN6duckdb15SelectionVectorD2Ev.exit
  ret void

.body:                                            ; preds = %bb.au, %bb.ba
  %.pn70 = phi { ptr, i32 } [ %i.dm, %bb.ba ], [ %i.de, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.br

bb.br:                                            ; preds = %.body, %bb.az
  %.pn70.pn = phi { ptr, i32 } [ %.pn70, %.body ], [ %i.dl, %bb.az ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %6) #40
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.ay, %bb.ax
  %.pn70.pn.pn = phi { ptr, i32 } [ %.pn70.pn, %bb.br ], [ %i.dk, %bb.ay ], [ %i.dj, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.bt

bb.bt:                                            ; preds = %bb.af, %bb.ag, %bb.bs, %bb.ab, %bb.aa
  %.pn76 = phi { ptr, i32 } [ %i.bv, %bb.ab ], [ %i.bu, %bb.aa ], [ %i.ck, %bb.ag ], [ %.pn70.pn.pn, %bb.bs ], [ %i.cj, %bb.af ]
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.x
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %bb.bt ], [ %.pn, %bb.x ]
  resume { ptr, i32 } %.pn76.pn
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb13JoinHashTable11PrepareKeysERNS_9DataChunkERNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS4_EEERPKNS_15SelectionVectorERS8_b(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  store ptr %i.a, ptr %3, align 8, !tbaa !913
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !409  ; 3 uses
  br i1 %5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.e = load i8, ptr %i.d, align 8, !tbaa !841
  %i.f = tail call noundef zeroext i1 @_ZN6duckdb19PropagatesBuildSideENS_8JoinTypeE(i8 noundef zeroext %i.e)
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !410
  %i.i = load ptr, ptr %1, align 8, !tbaa !411
  %.not34 = icmp eq ptr %i.h, %i.i
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 896
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.m
  %.01933 = phi i64 [ 0, %.lr.ph ], [ %i.eq, %bb.m ] ; 3 uses
  %.02032 = phi i64 [ %i.c, %.lr.ph ], [ %.2, %bb.m ] ; 17 uses
  %i.n = load i8, ptr %i.j, align 8, !tbaa !841
  %i.o = icmp eq i8 %i.n, 7
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !73
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = tail call { ptr, i64 } @_ZN6duckdb6vectorIbLb1ESaIbEE3getILb1EEESt14_Bit_referencem(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 noundef %.01933) ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  %i.v = load i64, ptr %i.t, align 8, !tbaa !39
  %i.w = and i64 %i.u, %i.v
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.x = tail call noundef nonnull align 8 dereferenceable(152) ptr @_ZN6duckdb6vectorINS_21TupleDataVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.01933) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !717  ; 10 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %3, align 8, !tbaa !913
  %.val22 = load ptr, ptr %i.aa, align 8          ; 5 uses
  %.val23 = load ptr, ptr %4, align 8             ; 10 uses
  %.not34.i = icmp eq i64 %.02032, 0
  br i1 %.not34.i, label %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.val = load ptr, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %.val, align 8, !tbaa !424 ; 5 uses
  %.not.i13.i = icmp eq ptr %i.ac, null           ; 2 uses
  %.not.i.i = icmp eq ptr %.val22, null
  br i1 %.not.i.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  br i1 %.not.i13.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.preheader: ; preds = %.lr.ph.split.split.us.i
  %xtraiter60 = and i64 %.02032, 1
  %i.ad = icmp eq i64 %.02032, 1
  br i1 %i.ad, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.preheader
  %unroll_iter64 = and i64 %.02032, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.preheader: ; preds = %.lr.ph.split.split.us.i
  %xtraiter66 = and i64 %.02032, 1
  %i.ae = icmp eq i64 %.02032, 1
  br i1 %i.ae, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.preheader
  %unroll_iter70 = and i64 %.02032, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i: ; preds = %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.preheader.new
  %.07.us8.us.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.preheader.new ], [ %.1.us13.us.i.1, %bb.i ] ; 3 uses
  %.0126.us9.us.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.preheader.new ], [ %i.av, %bb.i ] ; 5 uses
  %niter71 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.preheader.new ], [ %niter71.next.1, %bb.i ]
  %i.af = lshr i64 %.0126.us9.us.i, 6
  %i.ag = and i64 %.0126.us9.us.i, 62
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.af
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !39 ; 2 uses
  %i.aj = shl nuw nsw i64 1, %i.ag
  %i.ak = and i64 %i.aj, %i.ai
  %.not.us.us.i = icmp eq i64 %i.ak, 0
  br i1 %.not.us.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.us.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i
  %i.al = add i64 %.07.us8.us.i, 1
  %i.am = trunc i64 %.0126.us9.us.i to i32
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %.07.us8.us.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i
  %.1.us13.us.i = phi i64 [ %i.al, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.us.i ], [ %.07.us8.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i ] ; 3 uses
  %i.ao = or disjoint i64 %.0126.us9.us.i, 1      ; 2 uses
  %i.ap = and i64 %i.ao, 63
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = and i64 %i.aq, %i.ai
  %.not.us.us.i.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.us.us.i.1, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.us.i.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.us.i.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.1
  %i.as = add i64 %.1.us13.us.i, 1
  %i.at = trunc i64 %i.ao to i32
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %.1.us13.us.i
  store i32 %i.at, ptr %i.au, align 4, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.us.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.1
  %.1.us13.us.i.1 = phi i64 [ %i.as, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.us.i.1 ], [ %.1.us13.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.1 ] ; 3 uses
  %i.av = add nuw i64 %.0126.us9.us.i, 2          ; 2 uses
  %niter71.next.1 = add nuw i64 %niter71, 2       ; 2 uses
  %niter71.ncmp.1 = icmp eq i64 %niter71.next.1, %unroll_iter70
  br i1 %niter71.ncmp.1, label %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i, !llvm.loop !914

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i: ; preds = %bb.j, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.preheader.new
  %.07.us8.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.preheader.new ], [ %.1.us13.i.1, %bb.j ] ; 3 uses
  %.0126.us9.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.preheader.new ], [ %i.bv, %bb.j ] ; 4 uses
  %niter65 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.preheader.new ], [ %niter65.next.1, %bb.j ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.0126.us9.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 6
  %i.ba = and i64 %i.ay, 63
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.az
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !39
  %i.bd = shl nuw i64 1, %i.ba
  %i.be = and i64 %i.bd, %i.bc
  %.not.us.i = icmp eq i64 %i.be, 0
  br i1 %.not.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i
  %i.bf = add i64 %.07.us8.i, 1
  %i.bg = trunc i64 %.0126.us9.i to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %.07.us8.i
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i
  %.1.us13.i = phi i64 [ %i.bf, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.i ], [ %.07.us8.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i ] ; 3 uses
  %i.bi = or disjoint i64 %.0126.us9.i, 1         ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = lshr i64 %i.bl, 6
  %i.bn = and i64 %i.bl, 63
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bm
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !39
  %i.bq = shl nuw i64 1, %i.bn
  %i.br = and i64 %i.bq, %i.bp
  %.not.us.i.1 = icmp eq i64 %i.br, 0
  br i1 %.not.us.i.1, label %bb.j, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.i.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.i.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.1
  %i.bs = add i64 %.1.us13.i, 1
  %i.bt = trunc i64 %i.bi to i32
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %.1.us13.i
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.1
  %.1.us13.i.1 = phi i64 [ %i.bs, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.i.1 ], [ %.1.us13.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.1 ] ; 3 uses
  %i.bv = add nuw i64 %.0126.us9.i, 2             ; 2 uses
  %niter65.next.1 = add nuw i64 %niter65, 2       ; 2 uses
  %niter65.ncmp.1 = icmp eq i64 %niter65.next.1, %unroll_iter64
  br i1 %niter65.ncmp.1, label %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit55.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i, !llvm.loop !914

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  br i1 %.not.i13.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.preheader: ; preds = %.lr.ph.split.split.i
  %xtraiter = and i64 %.02032, 1
  %i.bw = icmp eq i64 %.02032, 1
  br i1 %i.bw, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.preheader
  %unroll_iter = and i64 %.02032, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i: ; preds = %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.preheader.new
  %.07.us17.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.preheader.new ], [ %.1.us22.i.1, %bb.k ] ; 3 uses
  %.0126.us18.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.preheader.new ], [ %i.cu, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.preheader.new ], [ %niter.next.1, %bb.k ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.val22, i64 %.0126.us18.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3  ; 2 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = lshr i64 %i.bz, 6
  %i.cb = and i64 %i.bz, 63
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ca
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !39
  %i.ce = shl nuw i64 1, %i.cb
  %i.cf = and i64 %i.ce, %i.cd
  %.not.us20.i = icmp eq i64 %i.cf, 0
  br i1 %.not.us20.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i
  %i.cg = add i64 %.07.us17.i, 1
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %.07.us17.i
  store i32 %i.by, ptr %i.ch, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i
  %.1.us22.i = phi i64 [ %i.cg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i ], [ %.07.us17.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.val22, i64 %.0126.us18.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3  ; 2 uses
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = lshr i64 %i.cl, 6
  %i.cn = and i64 %i.cl, 63
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.cm
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !39
  %i.cq = shl nuw i64 1, %i.cn
  %i.cr = and i64 %i.cq, %i.cp
  %.not.us20.i.1 = icmp eq i64 %i.cr, 0
  br i1 %.not.us20.i.1, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.1
  %i.cs = add i64 %.1.us22.i, 1
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %.1.us22.i
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.1
  %.1.us22.i.1 = phi i64 [ %i.cs, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.1 ], [ %.1.us22.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.1 ] ; 3 uses
  %i.cu = add nuw i64 %.0126.us18.i, 2            ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit56.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i, !llvm.loop !914

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %.lr.ph.split.split.i, %bb.l
  %.07.i = phi i64 [ %.1.i, %bb.l ], [ 0, %.lr.ph.split.split.i ] ; 3 uses
  %.0126.i = phi i64 [ %i.dj, %bb.l ], [ 0, %.lr.ph.split.split.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val22, i64 %.0126.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3  ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 6
  %i.dc = and i64 %i.da, 63
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.db
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !39
  %i.df = shl nuw i64 1, %i.dc
  %i.dg = and i64 %i.df, %i.de
  %.not.i24 = icmp eq i64 %i.dg, 0
  br i1 %.not.i24, label %bb.l, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.dh = add i64 %.07.i, 1
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %.07.i
  store i32 %i.cw, ptr %i.di, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1.i = phi i64 [ %i.dh, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ], [ %.07.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 2 uses
  %i.dj = add nuw i64 %.0126.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dj, %.02032
  br i1 %exitcond.not.i, label %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, !llvm.loop !914

_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod67.not, label %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.epil.preheader: ; preds = %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.preheader
  %.07.us8.us.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.preheader ], [ %.1.us13.us.i.1, %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit.unr-lcssa ] ; 3 uses
  %.0126.us9.us.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.preheader ], [ %i.av, %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod69 = trunc i64 %.02032 to i1
  tail call void @llvm.assume(i1 %lcmp.mod69)
  %i.dk = lshr i64 %.0126.us9.us.i.epil.init, 6
  %i.dl = and i64 %.0126.us9.us.i.epil.init, 63
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.dk
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !39
  %i.do = shl nuw i64 1, %i.dl
  %i.dp = and i64 %i.do, %i.dn
  %.not.us.us.i.epil = icmp eq i64 %i.dp, 0
  br i1 %.not.us.us.i.epil, label %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.us.i.epil

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.us.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.epil.preheader
  %i.dq = add i64 %.07.us8.us.i.epil.init, 1
  %i.dr = trunc i64 %.0126.us9.us.i.epil.init to i32
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %.07.us8.us.i.epil.init
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !3
  br label %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit

_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit55.unr-lcssa: ; preds = %bb.j
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.epil.preheader: ; preds = %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit55.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.preheader
  %.07.us8.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.preheader ], [ %.1.us13.i.1, %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit55.unr-lcssa ] ; 3 uses
  %.0126.us9.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.preheader ], [ %i.bv, %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit55.unr-lcssa ] ; 2 uses
  %lcmp.mod63 = trunc i64 %.02032 to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.0126.us9.i.epil.init
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = lshr i64 %i.dv, 6
  %i.dx = and i64 %i.dv, 63
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.dw
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !39
  %i.ea = shl nuw i64 1, %i.dx
  %i.eb = and i64 %i.ea, %i.dz
  %.not.us.i.epil = icmp eq i64 %i.eb, 0
  br i1 %.not.us.i.epil, label %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.i.epil

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.epil.preheader
  %i.ec = add i64 %.07.us8.i.epil.init, 1
  %i.ed = trunc i64 %.0126.us9.i.epil.init to i32
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %.07.us8.i.epil.init
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !3
  br label %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit

_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit56.unr-lcssa: ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.epil.preheader: ; preds = %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit56.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.preheader
  %.07.us17.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.preheader ], [ %.1.us22.i.1, %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit56.unr-lcssa ] ; 3 uses
  %.0126.us18.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.preheader ], [ %i.cu, %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit56.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %.02032 to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.val22, i64 %.0126.us18.i.epil.init
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3  ; 2 uses
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = lshr i64 %i.eh, 6
  %i.ej = and i64 %i.eh, 63
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ei
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !39
  %i.em = shl nuw i64 1, %i.ej
  %i.en = and i64 %i.em, %i.el
  %.not.us20.i.epil = icmp eq i64 %i.en, 0
  br i1 %.not.us20.i.epil, label %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.epil

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.epil.preheader
  %i.eo = add i64 %.07.us17.i.epil.init, 1
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %.07.us17.i.epil.init
  store i32 %i.eg, ptr %i.ep, align 4, !tbaa !3
  br label %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit

_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit: ; preds = %bb.l, %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit56.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.epil.preheader, %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit55.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.epil.preheader, %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.us.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.epil.preheader, %bb.h
  %.0.lcssa.i = phi i64 [ 0, %bb.h ], [ %.07.us8.us.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.us.i.epil.preheader ], [ %.07.us8.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us10.i.epil.preheader ], [ %.07.us17.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us16.i.epil.preheader ], [ %.1.us13.us.i.1, %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit.unr-lcssa ], [ %i.dq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.us.i.epil ], [ %.1.us13.i.1, %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit55.unr-lcssa ], [ %i.ec, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us12.i.epil ], [ %.1.us22.i.1, %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit.loopexit56.unr-lcssa ], [ %i.eo, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.epil ], [ %.1.i, %bb.l ]
  store ptr %4, ptr %3, align 8, !tbaa !913
  br label %bb.m

bb.m:                                             ; preds = %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit, %bb.g, %bb.f, %bb.e
  %.2 = phi i64 [ %.02032, %bb.f ], [ %.02032, %bb.e ], [ %.0.lcssa.i, %_ZN6duckdbL16FilterNullValuesERNS_19UnifiedVectorFormatERKNS_15SelectionVectorEmRS2_.exit ], [ %.02032, %bb.g ] ; 2 uses
  %i.eq = add nuw i64 %.01933, 1                  ; 2 uses
  %i.er = load ptr, ptr %i.g, align 8, !tbaa !410
  %i.es = load ptr, ptr %1, align 8, !tbaa !411
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = sdiv exact i64 %i.ev, 104
  %i.ex = icmp ult i64 %i.eq, %i.ew
  br i1 %i.ex, label %bb.d, label %.loopexit, !llvm.loop !915

.loopexit:                                        ; preds = %bb.m, %bb.c, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.c, %bb.c ], [ %.2, %bb.m ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(152) ptr @_ZN6duckdb6vectorINS_21TupleDataVectorFormatELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !916    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !916  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6duckdb6vectorINS_21TupleDataVectorFormatELb1ESaIS1_EE3getILb1EEERS1_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #40
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb6vectorINS_21TupleDataVectorFormatELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %i.a to i64
end_hunk_4
begin_hunk_5_@_ZN6duckdb13JoinHashTable12InsertHashesERNS_6VectorEmRNS_19TupleDataChunkStateERNS0_11InsertStateEb:bb.a
  %i.ay = ptrtoaddr ptr %i.ax to i64
  %i.az = ptrtoaddr ptr %i.aw to i64
  %i.ba = sub i64 %i.az, %i.ay
  %diff.check255 = icmp ugt i64 %i.ba, -32
  %or.cond = select i1 %min.iters.check241, i1 true, i1 %diff.check255
  br i1 %or.cond, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309, label %vector.ph258

vector.ph258:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader
  %n.vec260 = and i64 %.0142.us.i, -8             ; 3 uses
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph258
  %index262 = phi i64 [ 0, %vector.ph258 ], [ %index.next265, %vector.body261 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index262 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load263 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !3
  %wide.load264 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index262 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x i32> %wide.load263, ptr %i.bd, align 4, !tbaa !3
  store <4 x i32> %wide.load264, ptr %i.be, align 4, !tbaa !3
  %index.next265 = add nuw i64 %index262, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next265, %n.vec260
  br i1 %i.bf, label %middle.block266, label %vector.body261, !llvm.loop !918

middle.block266:                                  ; preds = %vector.body261
  %cmp.n267 = icmp eq i64 %.0142.us.i, %n.vec260
  br i1 %cmp.n267, label %._crit_edge.split.us.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader, %middle.block266
  %.094130.us.us147.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader ], [ %n.vec260, %middle.block266 ] ; 3 uses
  %xtraiter363 = and i64 %.0142.us.i, 3           ; 2 uses
  %lcmp.mod364.not = icmp eq i64 %xtraiter363, 0
  br i1 %lcmp.mod364.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol
  %.094130.us.us147.i.prol = phi i64 [ %i.bi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol ], [ %.094130.us.us147.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309 ] ; 3 uses
  %prol.iter365 = phi i64 [ %prol.iter365.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309 ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.094130.us.us147.i.prol
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = add nuw i64 %.094130.us.us147.i.prol, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.094130.us.us147.i.prol
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !3
  %prol.iter365.next = add i64 %prol.iter365, 1   ; 2 uses
  %prol.iter365.cmp.not = icmp eq i64 %prol.iter365.next, %xtraiter363
  br i1 %prol.iter365.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol, !llvm.loop !919

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309
  %.094130.us.us147.i.unr = phi i64 [ %.094130.us.us147.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309 ], [ %i.bi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol ]
  %i.bk = sub i64 %.094130.us.us147.i.ph, %.0142.us.i
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %._crit_edge.split.us.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader: ; preds = %.lr.ph.us.i
  br i1 %min.iters.check241, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader308, label %vector.ph242

vector.ph242:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader
  %n.vec244 = and i64 %.0142.us.i, -8             ; 3 uses
  br label %vector.body245

vector.body245:                                   ; preds = %vector.body245, %vector.ph242
  %index246 = phi i64 [ 0, %vector.ph242 ], [ %index.next249, %vector.body245 ] ; 2 uses
  %vec.ind247 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph242 ], [ %vec.ind.next250, %vector.body245 ] ; 3 uses
  %step.add248 = add <4 x i32> %vec.ind247, splat (i32 4)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index246 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x i32> %vec.ind247, ptr %i.bm, align 4, !tbaa !3
  store <4 x i32> %step.add248, ptr %i.bn, align 4, !tbaa !3
  %index.next249 = add nuw i64 %index246, 8       ; 2 uses
  %vec.ind.next250 = add <4 x i32> %vec.ind247, splat (i32 8)
  %i.bo = icmp eq i64 %index.next249, %n.vec244
  br i1 %i.bo, label %middle.block251, label %vector.body245, !llvm.loop !920

middle.block251:                                  ; preds = %vector.body245
  %cmp.n252 = icmp eq i64 %.0142.us.i, %n.vec244
  br i1 %cmp.n252, label %._crit_edge.split.us.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader308

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader308: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader, %middle.block251
  %.094130.us.us.us.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader ], [ %n.vec244, %middle.block251 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i
  %.094130.us.us147.i = phi i64 [ %i.cd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i ], [ %.094130.us.us147.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol.loopexit ] ; 6 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.094130.us.us147.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = add nuw i64 %.094130.us.us147.i, 1      ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.094130.us.us147.i
  store i32 %i.bq, ptr %i.bs, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.br
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = add nuw i64 %.094130.us.us147.i, 2      ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.br
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !3
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = add nuw i64 %.094130.us.us147.i, 3      ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bv
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !3
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bz
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = add nuw i64 %.094130.us.us147.i, 4      ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bz
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !3
  %exitcond176.not.i.3 = icmp eq i64 %i.cd, %.0142.us.i
  br i1 %exitcond176.not.i.3, label %._crit_edge.split.us.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i, !llvm.loop !921

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader308, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i
  %.094130.us.us.us.i = phi i64 [ %i.cf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i ], [ %.094130.us.us.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader308 ] ; 3 uses
  %i.cf = add nuw i64 %.094130.us.us.us.i, 1      ; 2 uses
  %i.cg = trunc i64 %.094130.us.us.us.i to i32
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.094130.us.us.us.i
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !3
  %exitcond177.not.i = icmp eq i64 %i.cf, %.0142.us.i
  br i1 %exitcond177.not.i, label %._crit_edge.split.us.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i, !llvm.loop !922

.lr.ph143.split.i:                                ; preds = %.lr.ph143.i, %._crit_edge.split.i
  %.0142.i = phi i64 [ %.1.i, %._crit_edge.split.i ], [ %2, %.lr.ph143.i ] ; 10 uses
  %.088141.i = phi ptr [ %.189.i, %._crit_edge.split.i ], [ %i.x, %.lr.ph143.i ] ; 2 uses
  %.092139.i = phi i64 [ %i.fi, %._crit_edge.split.i ], [ 0, %.lr.ph143.i ] ; 4 uses
  %i.ci = invoke noundef zeroext i1 @_ZNK6duckdb6vectorIbLb1ESaIbEE3getILb1EEEbm(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 noundef %.092139.i)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc19:                                         ; preds = %.lr.ph143.split.i
  br i1 %i.ci, label %._crit_edge.split.i, label %bb.g

bb.g:                                             ; preds = %.noexc19
  %i.cj = lshr i64 %.092139.i, 3                  ; 6 uses
  %.not164.i = icmp eq i64 %.0142.i, 0
  br i1 %.not164.i, label %._crit_edge.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ck = load ptr, ptr %.088141.i, align 8, !tbaa !424 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ck, null
  %i.cl = trunc i64 %.092139.i to i32
  %i.cm = and i32 %i.cl, 7
  %i.cn = shl nuw nsw i32 1, %i.cm                ; 6 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader: ; preds = %.lr.ph.i
  %xtraiter351 = and i64 %.0142.i, 1
  %i.co = icmp eq i64 %.0142.i, 1
  br i1 %i.co, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader
  %unroll_iter355 = and i64 %.0142.i, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader: ; preds = %.lr.ph.i
  %xtraiter357 = and i64 %.0142.i, 1
  %i.cp = icmp eq i64 %.0142.i, 1
  br i1 %i.cp, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader
  %unroll_iter361 = and i64 %.0142.i, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i: ; preds = %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader.new
  %.094130.us131.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader.new ], [ %.195.us135.i.1, %bb.h ] ; 3 uses
  %.096129.us132.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader.new ], [ %i.dl, %bb.h ] ; 4 uses
  %niter362 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader.new ], [ %niter362.next.1, %bb.h ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.096129.us132.i
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !382
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cj
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !272
  %i.cu = zext i8 %i.ct to i32
  %i.cv = and i32 %i.cn, %i.cu
  %.not123.us.i = icmp eq i32 %i.cv, 0
  br i1 %.not123.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.1, label %.critedge.thread.us134.i

.critedge.thread.us134.i:                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i
  %i.cw = add i64 %.094130.us131.i, 1
  %i.cx = trunc i64 %.096129.us132.i to i32
  %i.cy = load ptr, ptr %i.ak, align 8, !tbaa !424
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.094130.us131.i
  store i32 %i.cx, ptr %i.cz, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.1: ; preds = %.critedge.thread.us134.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i
  %.195.us135.i = phi i64 [ %i.cw, %.critedge.thread.us134.i ], [ %.094130.us131.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i ] ; 3 uses
  %i.da = or disjoint i64 %.096129.us132.i, 1     ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !382
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cj
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !272
  %i.df = zext i8 %i.de to i32
  %i.dg = and i32 %i.cn, %i.df
  %.not123.us.i.1 = icmp eq i32 %i.dg, 0
  br i1 %.not123.us.i.1, label %bb.h, label %.critedge.thread.us134.i.1

.critedge.thread.us134.i.1:                       ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.1
  %i.dh = add i64 %.195.us135.i, 1
  %i.di = trunc i64 %i.da to i32
  %i.dj = load ptr, ptr %i.ak, align 8, !tbaa !424
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.195.us135.i
  store i32 %i.di, ptr %i.dk, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %.critedge.thread.us134.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.1
  %.195.us135.i.1 = phi i64 [ %i.dh, %.critedge.thread.us134.i.1 ], [ %.195.us135.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.1 ] ; 3 uses
  %i.dl = add nuw i64 %.096129.us132.i, 2         ; 2 uses
  %niter362.next.1 = add nuw i64 %niter362, 2     ; 2 uses
  %niter362.ncmp.1 = icmp eq i64 %niter362.next.1, %unroll_iter361
  br i1 %niter362.ncmp.1, label %._crit_edge.split.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i, !llvm.loop !923

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader.new
  %.094130.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader.new ], [ %.195.i.1, %bb.i ] ; 3 uses
  %.096129.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader.new ], [ %i.el, %bb.i ] ; 3 uses
  %niter356 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader.new ], [ %niter356.next.1, %bb.i ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.096129.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3  ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !382
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.cj
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !272
  %i.dt = zext i8 %i.ds to i32
  %i.du = and i32 %i.cn, %i.dt
  %.not123.i = icmp eq i32 %i.du, 0
  br i1 %.not123.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.dv = add i64 %.094130.i, 1
  %i.dw = load ptr, ptr %i.ak, align 8, !tbaa !424
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.094130.i
  store i32 %i.dn, ptr %i.dx, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1: ; preds = %.critedge.thread.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.195.i = phi i64 [ %i.dv, %.critedge.thread.i ], [ %.094130.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.096129.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3  ; 2 uses
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !382
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.cj
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !272
  %i.eg = zext i8 %i.ef to i32
  %i.eh = and i32 %i.cn, %i.eg
  %.not123.i.1 = icmp eq i32 %i.eh, 0
  br i1 %.not123.i.1, label %bb.i, label %.critedge.thread.i.1

.critedge.thread.i.1:                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1
  %i.ei = add i64 %.195.i, 1
  %i.ej = load ptr, ptr %i.ak, align 8, !tbaa !424
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.195.i
  store i32 %i.ea, ptr %i.ek, align 4, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %.critedge.thread.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1
  %.195.i.1 = phi i64 [ %i.ei, %.critedge.thread.i.1 ], [ %.195.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1 ] ; 3 uses
  %i.el = add nuw i64 %.096129.i, 2               ; 2 uses
  %niter356.next.1 = add nuw i64 %niter356, 2     ; 2 uses
  %niter356.ncmp.1 = icmp eq i64 %niter356.next.1, %unroll_iter355
  br i1 %niter356.ncmp.1, label %._crit_edge.split.i.loopexit311.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, !llvm.loop !923

._crit_edge.split.i.loopexit.unr-lcssa:           ; preds = %bb.h
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %._crit_edge.split.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.epil.preheader: ; preds = %._crit_edge.split.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader
  %.094130.us131.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader ], [ %.195.us135.i.1, %._crit_edge.split.i.loopexit.unr-lcssa ] ; 3 uses
  %.096129.us132.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader ], [ %i.dl, %._crit_edge.split.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod360 = trunc i64 %.0142.i to i1
  call void @llvm.assume(i1 %lcmp.mod360)
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.096129.us132.i.epil.init
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !382
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.cj
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !272
  %i.eq = zext i8 %i.ep to i32
  %i.er = and i32 %i.cn, %i.eq
  %.not123.us.i.epil = icmp eq i32 %i.er, 0
  br i1 %.not123.us.i.epil, label %._crit_edge.split.i, label %.critedge.thread.us134.i.epil

.critedge.thread.us134.i.epil:                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.epil.preheader
  %i.es = add i64 %.094130.us131.i.epil.init, 1
  %i.et = trunc i64 %.096129.us132.i.epil.init to i32
  %i.eu = load ptr, ptr %i.ak, align 8, !tbaa !424
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.094130.us131.i.epil.init
  store i32 %i.et, ptr %i.ev, align 4, !tbaa !3
  br label %._crit_edge.split.i

._crit_edge.split.i.loopexit311.unr-lcssa:        ; preds = %bb.i
  %lcmp.mod352.not = icmp eq i64 %xtraiter351, 0
  br i1 %lcmp.mod352.not, label %._crit_edge.split.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil.preheader: ; preds = %._crit_edge.split.i.loopexit311.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader
  %.094130.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader ], [ %.195.i.1, %._crit_edge.split.i.loopexit311.unr-lcssa ] ; 3 uses
  %.096129.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader ], [ %i.el, %._crit_edge.split.i.loopexit311.unr-lcssa ]
  %lcmp.mod354 = trunc i64 %.0142.i to i1
  call void @llvm.assume(i1 %lcmp.mod354)
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.096129.i.epil.init
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !3  ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !382
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.cj
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !272
  %i.fd = zext i8 %i.fc to i32
  %i.fe = and i32 %i.cn, %i.fd
  %.not123.i.epil = icmp eq i32 %i.fe, 0
  br i1 %.not123.i.epil, label %._crit_edge.split.i, label %.critedge.thread.i.epil

.critedge.thread.i.epil:                          ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil.preheader
  %i.ff = add i64 %.094130.i.epil.init, 1
  %i.fg = load ptr, ptr %i.ak, align 8, !tbaa !424
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.094130.i.epil.init
  store i32 %i.ex, ptr %i.fh, align 4, !tbaa !3
  br label %._crit_edge.split.i

._crit_edge.split.i:                              ; preds = %._crit_edge.split.i.loopexit311.unr-lcssa, %.critedge.thread.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil.preheader, %._crit_edge.split.i.loopexit.unr-lcssa, %.critedge.thread.us134.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.epil.preheader, %bb.g, %.noexc19
  %.189.i = phi ptr [ %.088141.i, %.noexc19 ], [ %i.ak, %bb.g ], [ %i.ak, %._crit_edge.split.i.loopexit.unr-lcssa ], [ %i.ak, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.epil.preheader ], [ %i.ak, %.critedge.thread.us134.i.epil ], [ %i.ak, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil.preheader ], [ %i.ak, %.critedge.thread.i.epil ], [ %i.ak, %._crit_edge.split.i.loopexit311.unr-lcssa ] ; 2 uses
  %.1.i = phi i64 [ %.0142.i, %.noexc19 ], [ 0, %bb.g ], [ %.094130.us131.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.epil.preheader ], [ %.195.us135.i.1, %._crit_edge.split.i.loopexit.unr-lcssa ], [ %i.es, %.critedge.thread.us134.i.epil ], [ %.195.i.1, %._crit_edge.split.i.loopexit311.unr-lcssa ], [ %i.ff, %.critedge.thread.i.epil ], [ %.094130.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil.preheader ] ; 2 uses
  %i.fi = add nuw i64 %.092139.i, 1               ; 2 uses
  %i.fj = load ptr, ptr %i.ae, align 8, !tbaa !854, !nonnull !69, !align !336 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !855
  %i.fm = load ptr, ptr %i.fj, align 8, !tbaa !856
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = sdiv exact i64 %i.fp, 24
  %i.fr = icmp ult i64 %i.fi, %i.fq
  br i1 %i.fr, label %.lr.ph143.split.i, label %.loopexit.i, !llvm.loop !917

.loopexit.i:                                      ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %.preheader127.i, %.noexc17
  %.290.i = phi ptr [ %i.x, %.noexc17 ], [ %i.x, %.preheader127.i ], [ %.189.us.i, %._crit_edge.split.us.us.i ], [ %.189.i, %._crit_edge.split.i ]
  %.2.i = phi i64 [ %2, %.noexc17 ], [ %2, %.preheader127.i ], [ %.1.us.i, %._crit_edge.split.us.us.i ], [ %.1.i, %._crit_edge.split.i ] ; 2 uses
  %i.fs = load i64, ptr %i.m, align 8, !tbaa !844
  %i.ft = or i64 %i.fs, -281474976710656          ; 12 uses
  %.not158.i = icmp eq i64 %.2.i, 0
  br i1 %.not158.i, label %_ZN6duckdbL16InsertHashesLoopILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_6VectorES6_RKmRNS_13JoinHashTable11InsertStateERKNS_19TupleDataCollectionERS9_.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.loopexit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 304 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 328
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 376 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 768
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 481
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  %broadcast.splatinsert274 = insertelement <2 x i64> poison, i64 %i.ft, i64 0
  %broadcast.splat275 = shufflevector <2 x i64> %broadcast.splatinsert274, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, %.preheader.lr.ph.i
  %.3160.i = phi i64 [ %.2.i, %.preheader.lr.ph.i ], [ %.pr.i, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i ]
  %.391159.i = phi ptr [ %.290.i, %.preheader.lr.ph.i ], [ %i.gg, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i ]
  br label %bb.k

bb.j:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 0, ptr %i.b, align 8, !tbaa !39
  %.not104.i = icmp eq i64 %.2102.i, 0
  br i1 %.not104.i, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.thread.i, label %bb.q

_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.thread.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %_ZN6duckdbL16InsertHashesLoopILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_6VectorES6_RKmRNS_13JoinHashTable11InsertStateERKNS_19TupleDataCollectionERS9_.exit

bb.k:                                             ; preds = %bb.p, %.preheader.i
  %.099157.i = phi i64 [ 0, %.preheader.i ], [ %i.hu, %bb.p ] ; 3 uses
  %.0100156.i = phi i64 [ 0, %.preheader.i ], [ %.2102.i, %bb.p ] ; 5 uses
  %i.gh = load ptr, ptr %.391159.i, align 8, !tbaa !424 ; 2 uses
  %.not.i108.i = icmp eq ptr %i.gh, null
  br i1 %.not.i108.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit109.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %.099157.i
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gk = zext i32 %i.gj to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit109.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit109.i: ; preds = %bb.l, %bb.k
  %i.gl = phi i64 [ %i.gk, %bb.l ], [ %.099157.i, %bb.k ] ; 5 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.gl ; 2 uses
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !39 ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.go
  %i.gq = load atomic i64, ptr %i.gp monotonic, align 8 ; 2 uses
  %.not122154.i = icmp eq i64 %i.gq, 0
  br i1 %.not122154.i, label %._crit_edge.i, label %.lr.ph155.i

.lr.ph155.i:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit109.i, %bb.m
  %i.gr = phi i64 [ %i.gz, %bb.m ], [ %i.gq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit109.i ] ; 2 uses
  %i.gs = phi i64 [ %i.gx, %bb.m ], [ %i.go, %_ZNK6duckdb15SelectionVector9get_indexEm.exit109.i ]
  %i.gt = or i64 %i.gr, 281474976710655
  %i.gu = load i64, ptr %i.gn, align 8, !tbaa !39
  %i.gv = icmp eq i64 %i.gt, %i.gu
  br i1 %i.gv, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph155.i
  %i.gw = add i64 %i.gs, 1
  %i.gx = and i64 %i.gw, %i.ft                    ; 4 uses
  store i64 %i.gx, ptr %i.gm, align 8, !tbaa !39
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.gx
  %i.gz = load atomic i64, ptr %i.gy monotonic, align 8 ; 2 uses
  %.not122.i = icmp eq i64 %i.gz, 0
  br i1 %.not122.i, label %._crit_edge.i, label %.lr.ph155.i

._crit_edge.i:                                    ; preds = %bb.m, %_ZNK6duckdb15SelectionVector9get_indexEm.exit109.i
  %i.ha = phi i64 [ %i.go, %_ZNK6duckdb15SelectionVector9get_indexEm.exit109.i ], [ %i.gx, %bb.m ]
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ha
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.gl
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !382 ; 2 uses
  %.val106.i = load i64, ptr %i.gn, align 8, !tbaa !39
  %.val107.i = load i64, ptr %i.fv, align 8, !tbaa !39
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = and i64 %.val106.i, -281474976710656
  %i.hg = or i64 %i.hf, %i.he
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.val107.i
  store i64 0, ptr %i.hh, align 1
  %i.hi = cmpxchg ptr %i.hb, i64 0, i64 %i.hg acquire monotonic, align 8
  %i.hj = extractvalue { i64, i1 } %i.hi, 0
  %i.hk = and i64 %i.hj, 281474976710655          ; 2 uses
  %.not105.i = icmp eq i64 %i.hk, 0
  br i1 %.not105.i, label %bb.p, label %bb.n, !prof !55

bb.n:                                             ; preds = %._crit_edge.i
  %i.hl = trunc i64 %i.gl to i32
  %i.hm = load ptr, ptr %i.fu, align 8, !tbaa !424
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %.0100156.i
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !3
  br label %.sink.split.i

bb.o:                                             ; preds = %.lr.ph155.i
  %i.ho = trunc i64 %i.gl to i32
  %i.hp = load ptr, ptr %i.fu, align 8, !tbaa !424
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %.0100156.i
  store i32 %i.ho, ptr %i.hq, align 4, !tbaa !3
  %i.hr = and i64 %i.gr, 281474976710655
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.in.i = phi i64 [ %i.hk, %bb.n ], [ %i.hr, %bb.o ]
  %.sink.i = inttoptr i64 %.sink.in.i to ptr
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0100156.i
  store ptr %.sink.i, ptr %i.hs, align 8, !tbaa !382
  %i.ht = add i64 %.0100156.i, 1
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i, %._crit_edge.i
  %.2102.i = phi i64 [ %.0100156.i, %._crit_edge.i ], [ %i.ht, %.sink.split.i ] ; 9 uses
  %i.hu = add nuw i64 %.099157.i, 1               ; 2 uses
  %exitcond178.not.i = icmp eq i64 %i.hu, %.3160.i
  br i1 %exitcond178.not.i, label %bb.j, label %bb.k, !llvm.loop !924

end_hunk_5
begin_hunk_6_@_ZN6duckdb13JoinHashTable12InsertHashesERNS_6VectorEmRNS_19TupleDataChunkStateERNS0_11InsertStateEb:bb.a
  %index.next296 = add nuw i64 %index293, 8       ; 2 uses
  %vec.ind.next297 = add <4 x i32> %vec.ind294, splat (i32 8)
  %i.hz = icmp eq i64 %index.next296, %n.vec291
  br i1 %i.hz, label %middle.block298, label %vector.body292, !llvm.loop !925

middle.block298:                                  ; preds = %vector.body292
  %cmp.n299 = icmp eq i64 %.2102.i, %n.vec291
  br i1 %cmp.n299, label %_ZN6duckdbL20PerformKeyComparisonERNS_13JoinHashTable11InsertStateERS0_RKNS_19TupleDataCollectionERNS_6VectorEmRmS9_.exit.i, label %scalar.ph287.preheader

scalar.ph287.preheader:                           ; preds = %.noexc24, %middle.block298
  %.029.i.i.ph = phi i64 [ 0, %.noexc24 ], [ %n.vec291, %middle.block298 ]
  br label %scalar.ph287

scalar.ph287:                                     ; preds = %scalar.ph287.preheader, %scalar.ph287
  %.029.i.i = phi i64 [ %i.ic, %scalar.ph287 ], [ %.029.i.i.ph, %scalar.ph287.preheader ] ; 3 uses
  %i.ia = trunc i64 %.029.i.i to i32
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %.029.i.i
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !3
  %i.ic = add nuw i64 %.029.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ic, %.2102.i
  br i1 %exitcond.not.i.i, label %_ZN6duckdbL20PerformKeyComparisonERNS_13JoinHashTable11InsertStateERS0_RKNS_19TupleDataCollectionERNS_6VectorEmRmS9_.exit.i, label %scalar.ph287, !llvm.loop !926

_ZN6duckdbL20PerformKeyComparisonERNS_13JoinHashTable11InsertStateERS0_RKNS_19TupleDataCollectionERNS_6VectorEmRmS9_.exit.i: ; preds = %scalar.ph287, %middle.block298
  %i.id = invoke noundef i64 @_ZN6duckdb10RowMatcher5MatchERNS_9DataChunkERKNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS4_EEERNS_15SelectionVectorEmRNS_6VectorEPS9_Rm(ptr noundef nonnull align 8 dereferenceable(80) %i.gc, ptr noundef nonnull align 8 dereferenceable(72) %i.fw, ptr noundef nonnull align 8 dereferenceable(24) %i.fy, ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i64 noundef range(i64 1, 0) %.2102.i, ptr noundef nonnull align 8 dereferenceable(104) %i.s, ptr noundef nonnull %i.gd, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc25 unwind label %.loopexit ; 2 uses

.noexc25:                                         ; preds = %_ZN6duckdbL20PerformKeyComparisonERNS_13JoinHashTable11InsertStateERS0_RKNS_19TupleDataCollectionERNS_6VectorEmRmS9_.exit.i
  %i.ie = load i64, ptr %i.b, align 8, !tbaa !39  ; 17 uses
  %.not.i110.i = icmp eq i64 %i.id, 0
  br i1 %.not.i110.i, label %.loopexit.i.i, label %bb.r

bb.r:                                             ; preds = %.noexc25
  store i8 1, ptr %i.ge, align 1, !tbaa !869
  %i.if = load i8, ptr %i.gf, align 1, !tbaa !846, !range !66, !noundef !69
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %_ZN6duckdbL16InsertRowToEntryILb1ELb0EEEPhRSt6atomicINS_10ht_entry_tEERKS1_RKmS9_.exit.i.i
  %.041.i.i = phi i64 [ %i.jo, %_ZN6duckdbL16InsertRowToEntryILb1ELb0EEEPhRSt6atomicINS_10ht_entry_tEERKS1_RKmS9_.exit.i.i ], [ 0, %bb.r ] ; 3 uses
  %i.ih = load ptr, ptr %i.gb, align 8, !tbaa !424 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.041.i.i
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3
  %i.ik = zext i32 %i.ij to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.s, %.lr.ph.i.i
  %i.il = phi i64 [ %i.ik, %bb.s ], [ %.041.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.im = load ptr, ptr %i.fu, align 8, !tbaa !424 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.im, null
  br i1 %.not.i33.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.il
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3
  %i.ip = zext i32 %i.io to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i: ; preds = %bb.t, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.iq = phi i64 [ %i.ip, %bb.t ], [ %i.il, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i ] ; 3 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.iq
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !39
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.is ; 3 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.iq
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !382 ; 3 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.iq
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !39
  %i.iy = ptrtoint ptr %i.iv to i64
  %i.iz = and i64 %i.ix, -281474976710656
  %i.ja = or i64 %i.iz, %i.iy                     ; 2 uses
  %i.jb = load atomic i64, ptr %i.it monotonic, align 8 ; 2 uses
  %i.jc = and i64 %i.jb, 281474976710655
  %i.jd = load i64, ptr %i.fv, align 8, !tbaa !39
  %i.je = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.jd
  store i64 %i.jc, ptr %i.je, align 1
  %i.jf = cmpxchg weak ptr %i.it, i64 %i.jb, i64 %i.ja release monotonic, align 8 ; 2 uses
  %i.jg = extractvalue { i64, i1 } %i.jf, 1
  br i1 %i.jg, label %_ZN6duckdbL16InsertRowToEntryILb1ELb0EEEPhRSt6atomicINS_10ht_entry_tEERKS1_RKmS9_.exit.i.i, label %_ZNSt6atomicIN6duckdb10ht_entry_tEE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i.i

_ZNSt6atomicIN6duckdb10ht_entry_tEE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i, %_ZNSt6atomicIN6duckdb10ht_entry_tEE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i.i
  %i.jh = phi { i64, i1 } [ %i.jm, %_ZNSt6atomicIN6duckdb10ht_entry_tEE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i.i ], [ %i.jf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i ]
  %i.ji = extractvalue { i64, i1 } %i.jh, 0       ; 2 uses
  %i.jj = and i64 %i.ji, 281474976710655
  %i.jk = load i64, ptr %i.fv, align 8, !tbaa !39
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.jk
  store i64 %i.jj, ptr %i.jl, align 1
  %i.jm = cmpxchg weak ptr %i.it, i64 %i.ji, i64 %i.ja release monotonic, align 8 ; 2 uses
  %i.jn = extractvalue { i64, i1 } %i.jm, 1
  br i1 %i.jn, label %_ZN6duckdbL16InsertRowToEntryILb1ELb0EEEPhRSt6atomicINS_10ht_entry_tEERKS1_RKmS9_.exit.i.i, label %_ZNSt6atomicIN6duckdb10ht_entry_tEE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i.i, !llvm.loop !927

_ZN6duckdbL16InsertRowToEntryILb1ELb0EEEPhRSt6atomicINS_10ht_entry_tEERKS1_RKmS9_.exit.i.i: ; preds = %_ZNSt6atomicIN6duckdb10ht_entry_tEE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i
  %i.jo = add nuw i64 %.041.i.i, 1                ; 2 uses
  %exitcond.not.i111.i = icmp eq i64 %i.jo, %i.id
  br i1 %exitcond.not.i111.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !928

.loopexit.i.i:                                    ; preds = %_ZN6duckdbL16InsertRowToEntryILb1ELb0EEEPhRSt6atomicINS_10ht_entry_tEERKS1_RKmS9_.exit.i.i, %bb.r, %.noexc25
  %.not47.i.i = icmp eq i64 %i.ie, 0
  br i1 %.not47.i.i, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, label %.lr.ph43.i.i

.lr.ph43.i.i:                                     ; preds = %.loopexit.i.i
  %i.jp = load ptr, ptr %i.gd, align 8, !tbaa !424 ; 7 uses
  %.not.i35.i.i = icmp eq ptr %i.jp, null
  %i.jq = load ptr, ptr %i.fu, align 8, !tbaa !424 ; 7 uses
  %.not.i37.i.i = icmp eq ptr %i.jq, null         ; 2 uses
  %i.jr = load ptr, ptr %i.gg, align 8, !tbaa !424 ; 11 uses
  br i1 %.not.i35.i.i, label %.lr.ph43.split.us.i.i, label %.lr.ph43.split.i.i

.lr.ph43.split.us.i.i:                            ; preds = %.lr.ph43.i.i
  br i1 %.not.i37.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.preheader: ; preds = %.lr.ph43.split.us.i.i
  %xtraiter376 = and i64 %i.ie, 1
  %i.js = icmp eq i64 %i.ie, 1
  br i1 %i.js, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.preheader
  %unroll_iter379 = and i64 %i.ie, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i.preheader: ; preds = %.lr.ph43.split.us.i.i
  %min.iters.check270 = icmp ult i64 %i.ie, 4
  br i1 %min.iters.check270, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i.preheader302, label %vector.ph271

vector.ph271:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i.preheader
  %n.vec273 = and i64 %i.ie, -4                   ; 3 uses
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph271
  %index277 = phi i64 [ 0, %vector.ph271 ], [ %index.next282, %vector.body276 ] ; 3 uses
  %vec.ind278 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph271 ], [ %vec.ind.next283, %vector.body276 ] ; 3 uses
  %step.add279 = add <2 x i32> %vec.ind278, splat (i32 2)
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index277 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16 ; 2 uses
  %wide.load280 = load <2 x i64>, ptr %i.jt, align 8, !tbaa !39
  %wide.load281 = load <2 x i64>, ptr %i.ju, align 8, !tbaa !39
  %i.jv = add <2 x i64> %wide.load280, splat (i64 1)
  %i.jw = add <2 x i64> %wide.load281, splat (i64 1)
  %i.jx = and <2 x i64> %i.jv, %broadcast.splat275
  %i.jy = and <2 x i64> %i.jw, %broadcast.splat275
  store <2 x i64> %i.jx, ptr %i.jt, align 8, !tbaa !39
  store <2 x i64> %i.jy, ptr %i.ju, align 8, !tbaa !39
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %index277 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store <2 x i32> %vec.ind278, ptr %i.jz, align 4, !tbaa !3
  store <2 x i32> %step.add279, ptr %i.ka, align 4, !tbaa !3
  %index.next282 = add nuw i64 %index277, 4       ; 2 uses
  %vec.ind.next283 = add <2 x i32> %vec.ind278, splat (i32 4)
  %i.kb = icmp eq i64 %index.next282, %n.vec273
  br i1 %i.kb, label %middle.block284, label %vector.body276, !llvm.loop !929

middle.block284:                                  ; preds = %vector.body276
  %cmp.n285 = icmp eq i64 %i.ie, %n.vec273
  br i1 %cmp.n285, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i.preheader302

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i.preheader302: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i.preheader, %middle.block284
  %.03242.us.us.i.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i.preheader ], [ %n.vec273, %middle.block284 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i.preheader302, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i
  %.03242.us.us.i.i = phi i64 [ %i.ki, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i ], [ %.03242.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i.preheader302 ] ; 4 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.03242.us.us.i.i ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !39
  %i.ke = add i64 %i.kd, 1
  %i.kf = and i64 %i.ke, %i.ft
  store i64 %i.kf, ptr %i.kc, align 8, !tbaa !39
  %i.kg = trunc i64 %.03242.us.us.i.i to i32
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.03242.us.us.i.i
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !3
  %i.ki = add nuw i64 %.03242.us.us.i.i, 1        ; 2 uses
  %exitcond54.not.i.i = icmp eq i64 %i.ki, %i.ie
  br i1 %exitcond54.not.i.i, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i, !llvm.loop !930

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.preheader.new
  %.03242.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.preheader.new ], [ %i.la, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i ] ; 4 uses
  %niter380 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.preheader.new ], [ %niter380.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i ]
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %.03242.us.i.i
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !3  ; 2 uses
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.kl ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !39
  %i.ko = add i64 %i.kn, 1
  %i.kp = and i64 %i.ko, %i.ft
  store i64 %i.kp, ptr %i.km, align 8, !tbaa !39
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.03242.us.i.i
  store i32 %i.kk, ptr %i.kq, align 4, !tbaa !3
  %i.kr = or disjoint i64 %.03242.us.i.i, 1       ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !3  ; 2 uses
  %i.ku = zext i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ku ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !39
  %i.kx = add i64 %i.kw, 1
  %i.ky = and i64 %i.kx, %i.ft
  store i64 %i.ky, ptr %i.kv, align 8, !tbaa !39
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.kr
  store i32 %i.kt, ptr %i.kz, align 4, !tbaa !3
  %i.la = add nuw i64 %.03242.us.i.i, 2           ; 2 uses
  %niter380.next.1 = add nuw i64 %niter380, 2     ; 2 uses
  %niter380.ncmp.1 = icmp eq i64 %niter380.next.1, %unroll_iter379
  br i1 %niter380.ncmp.1, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit303.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i, !llvm.loop !931

.lr.ph43.split.i.i:                               ; preds = %.lr.ph43.i.i
  br i1 %.not.i37.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.preheader: ; preds = %.lr.ph43.split.i.i
  %xtraiter366 = and i64 %i.ie, 1
  %i.lb = icmp eq i64 %i.ie, 1
  br i1 %i.lb, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.preheader
  %unroll_iter369 = and i64 %i.ie, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.preheader: ; preds = %.lr.ph43.split.i.i
  %xtraiter371 = and i64 %i.ie, 1
  %i.lc = icmp eq i64 %i.ie, 1
  br i1 %i.lc, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.preheader
  %unroll_iter374 = and i64 %i.ie, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.preheader.new
  %.03242.us45.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.preheader.new ], [ %i.lu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i ] ; 4 uses
  %niter375 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.preheader.new ], [ %niter375.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i ]
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.03242.us45.i.i
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !3  ; 2 uses
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.lf ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !39
  %i.li = add i64 %i.lh, 1
  %i.lj = and i64 %i.li, %i.ft
  store i64 %i.lj, ptr %i.lg, align 8, !tbaa !39
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.03242.us45.i.i
  store i32 %i.le, ptr %i.lk, align 4, !tbaa !3
  %i.ll = or disjoint i64 %.03242.us45.i.i, 1     ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !3  ; 2 uses
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.lo ; 2 uses
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !39
  %i.lr = add i64 %i.lq, 1
  %i.ls = and i64 %i.lr, %i.ft
  store i64 %i.ls, ptr %i.lp, align 8, !tbaa !39
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.ll
  store i32 %i.ln, ptr %i.lt, align 4, !tbaa !3
  %i.lu = add nuw i64 %.03242.us45.i.i, 2         ; 2 uses
  %niter375.next.1 = add nuw i64 %niter375, 2     ; 2 uses
  %niter375.ncmp.1 = icmp eq i64 %niter375.next.1, %unroll_iter374
  br i1 %niter375.ncmp.1, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit304.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i, !llvm.loop !931

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.preheader.new
  %.03242.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.preheader.new ], [ %i.ms, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i ] ; 4 uses
  %niter370 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.preheader.new ], [ %niter370.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i ]
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.03242.i.i
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !3
  %i.lx = zext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !3  ; 2 uses
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ma ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !39
  %i.md = add i64 %i.mc, 1
  %i.me = and i64 %i.md, %i.ft
  store i64 %i.me, ptr %i.mb, align 8, !tbaa !39
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.03242.i.i
  store i32 %i.lz, ptr %i.mf, align 4, !tbaa !3
  %i.mg = or disjoint i64 %.03242.i.i, 1          ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !3
  %i.mj = zext i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !3  ; 2 uses
  %i.mm = zext i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.mm ; 2 uses
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !39
  %i.mp = add i64 %i.mo, 1
  %i.mq = and i64 %i.mp, %i.ft
  store i64 %i.mq, ptr %i.mn, align 8, !tbaa !39
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.mg
  store i32 %i.ml, ptr %i.mr, align 4, !tbaa !3
  %i.ms = add nuw i64 %.03242.i.i, 2              ; 2 uses
  %niter370.next.1 = add nuw i64 %niter370, 2     ; 2 uses
  %niter370.ncmp.1 = icmp eq i64 %niter370.next.1, %unroll_iter369
  br i1 %niter370.ncmp.1, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit305.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i, !llvm.loop !931

_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit303.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.epil.preheader: ; preds = %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit303.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.preheader
  %.03242.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.preheader ], [ %i.la, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit303.unr-lcssa ] ; 2 uses
  %lcmp.mod378 = trunc i64 %i.ie to i1
  call void @llvm.assume(i1 %lcmp.mod378)
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %.03242.us.i.i.epil.init
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !3  ; 2 uses
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.mv ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !39
  %i.my = add i64 %i.mx, 1
  %i.mz = and i64 %i.my, %i.ft
  store i64 %i.mz, ptr %i.mw, align 8, !tbaa !39
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.03242.us.i.i.epil.init
  store i32 %i.mu, ptr %i.na, align 4, !tbaa !3
  br label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i

_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit304.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod372.not, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.epil.preheader: ; preds = %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit304.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.preheader
  %.03242.us45.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.preheader ], [ %i.lu, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit304.unr-lcssa ] ; 2 uses
  %lcmp.mod373 = trunc i64 %i.ie to i1
  call void @llvm.assume(i1 %lcmp.mod373)
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.03242.us45.i.i.epil.init
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !3  ; 2 uses
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.nd ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !39
  %i.ng = add i64 %i.nf, 1
  %i.nh = and i64 %i.ng, %i.ft
  store i64 %i.nh, ptr %i.ne, align 8, !tbaa !39
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.03242.us45.i.i.epil.init
  store i32 %i.nc, ptr %i.ni, align 4, !tbaa !3
  br label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i

_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit305.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i
  %lcmp.mod367.not = icmp eq i64 %xtraiter366, 0
  br i1 %lcmp.mod367.not, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.epil.preheader: ; preds = %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit305.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.preheader
  %.03242.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.preheader ], [ %i.ms, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit305.unr-lcssa ] ; 2 uses
  %lcmp.mod368 = trunc i64 %i.ie to i1
  call void @llvm.assume(i1 %lcmp.mod368)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.03242.i.i.epil.init
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !3
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !3  ; 2 uses
  %i.no = zext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.no ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !39
  %i.nr = add i64 %i.nq, 1
  %i.ns = and i64 %i.nr, %i.ft
  store i64 %i.ns, ptr %i.np, align 8, !tbaa !39
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.03242.i.i.epil.init
  store i32 %i.nn, ptr %i.nt, align 4, !tbaa !3
  br label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i

_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.epil.preheader, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit305.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.epil.preheader, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit304.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.epil.preheader, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit303.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i, %middle.block284, %.loopexit.i.i
  %.pr.i = load i64, ptr %i.b, align 8, !tbaa !39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %.not.i = icmp eq i64 %.pr.i, 0
  br i1 %.not.i, label %_ZN6duckdbL16InsertHashesLoopILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_6VectorES6_RKmRNS_13JoinHashTable11InsertStateERKNS_19TupleDataCollectionERS9_.exit, label %.preheader.i, !llvm.loop !932

.loopexit:                                        ; preds = %bb.q, %.noexc20, %.noexc21, %.noexc22, %.noexc23, %_ZN6duckdbL20PerformKeyComparisonERNS_13JoinHashTable11InsertStateERS0_RKNS_19TupleDataCollectionERNS_6VectorEmRmS9_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph143.split.us.i
  %lpad.loopexit82 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph143.split.i
  %lpad.loopexit86 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZN6duckdbL20PerformKeyComparisonERNS_13JoinHashTable11InsertStateERS0_RKNS_19TupleDataCollectionERNS_6VectorEmRmS9_.exit.i33, %.noexc75, %.noexc74, %.noexc73, %.noexc72, %bb.ag
  %lpad.loopexit92 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph130.split.us.i
  %lpad.loopexit97 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph130.split.i
  %lpad.loopexit100 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc68, %.noexc67, %.noexc66, %.noexc65, %.noexc64, %.noexc63, %.noexc62, %bb.v, %.noexc16, %.noexc15, %.noexc14, %.noexc13, %.noexc12, %.noexc11, %.noexc, %bb.e, %bb.u, %bb.d
  %lpad.loopexit.split-lp101 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit82, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit86, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit92, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit97, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit100, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %lpad.phi

bb.u:                                             ; preds = %bb.c
  %i.nu = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  invoke fastcc void @_ZN6duckdbL27ApplyBitmaskAndGetSaltBuildERNS_6VectorES1_RKmS3_(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(864) %4, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.nv)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %bb.v
  %i.nw = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb19TupleDataCollection9GetLayoutEv(ptr noundef nonnull align 8 dereferenceable(192) %i.nu)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %.noexc62
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %.noexc63
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !427 ; 13 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(864) %4)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc65:                                         ; preds = %.noexc64
  %i.nz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !427 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ob)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc66:                                         ; preds = %.noexc65
  %i.oc = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !427
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %6)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc67:                                         ; preds = %.noexc66
  %i.oe = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !427 ; 8 uses
  %i.og = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc68:                                         ; preds = %.noexc67
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nw, i64 216
  %i.oi = load i8, ptr %i.oh, align 8, !tbaa !287
  %.fr150.i = freeze i8 %i.oi
  %i.oj = icmp eq i8 %.fr150.i, 1
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ol = load i8, ptr %i.ok, align 8, !tbaa !841
  %i.om = invoke noundef zeroext i1 @_ZN6duckdb19PropagatesBuildSideENS_8JoinTypeE(i8 noundef zeroext %i.ol)
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %.noexc68
  br i1 %i.om, label %.preheader114.i, label %.loopexit.i26

.preheader114.i:                                  ; preds = %.noexc69
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !854, !nonnull !69, !align !336 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !855
  %i.or = load ptr, ptr %i.oo, align 8, !tbaa !856
  %.not149.i = icmp eq ptr %i.oq, %i.or
  br i1 %.not149.i, label %.loopexit.i26, label %.lr.ph130.i

.lr.ph130.i:                                      ; preds = %.preheader114.i
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 20 uses
  br i1 %i.oj, label %.lr.ph130.split.us.i, label %.lr.ph130.split.i

.lr.ph130.split.us.i:                             ; preds = %.lr.ph130.i, %._crit_edge.split.us.us.i59
  %.0129.us.i = phi i64 [ %.1.us.i60, %._crit_edge.split.us.us.i59 ], [ %2, %.lr.ph130.i ] ; 16 uses
  %.080128.us.i = phi ptr [ %.181.us.i, %._crit_edge.split.us.us.i59 ], [ %i.og, %.lr.ph130.i ] ; 2 uses
  %.084126.us.i = phi i64 [ %i.ov, %._crit_edge.split.us.us.i59 ], [ 0, %.lr.ph130.i ] ; 2 uses
  %i.ou = invoke noundef zeroext i1 @_ZNK6duckdb6vectorIbLb1ESaIbEE3getILb1EEEbm(ptr noundef nonnull align 8 dereferenceable(40) %i.os, i64 noundef %.084126.us.i)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc70:                                         ; preds = %.lr.ph130.split.us.i
  br i1 %i.ou, label %._crit_edge.split.us.us.i59, label %bb.w

bb.w:                                             ; preds = %.noexc70
  %.not152.i = icmp eq i64 %.0129.us.i, 0
  br i1 %.not152.i, label %._crit_edge.split.us.us.i59, label %.lr.ph.us.i57

._crit_edge.split.us.us.i59:                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61, %middle.block207, %middle.block, %bb.w, %.noexc70
  %.181.us.i = phi ptr [ %.080128.us.i, %.noexc70 ], [ %i.ot, %bb.w ], [ %i.ot, %middle.block ], [ %i.ot, %middle.block207 ], [ %i.ot, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61 ], [ %i.ot, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i ], [ %i.ot, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit ] ; 2 uses
  %.1.us.i60 = phi i64 [ %.0129.us.i, %.noexc70 ], [ 0, %bb.w ], [ %.0129.us.i, %middle.block ], [ %.0129.us.i, %middle.block207 ], [ %.0129.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61 ], [ %.0129.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i ], [ %.0129.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit ] ; 2 uses
  %i.ov = add nuw i64 %.084126.us.i, 1            ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6duckdb13JoinHashTable12InsertHashesERNS_6VectorEmRNS_19TupleDataChunkStateERNS0_11InsertStateEb:bb.a
  %i.ph = ptrtoaddr ptr %i.pg to i64
  %i.pi = ptrtoaddr ptr %i.pf to i64
  %i.pj = sub i64 %i.pi, %i.ph
  %diff.check = icmp ugt i64 %i.pj, -32
  %or.cond301 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond301, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322, label %vector.ph200

vector.ph200:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader
  %n.vec202 = and i64 %.0129.us.i, -8             ; 3 uses
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph200
  %index204 = phi i64 [ 0, %vector.ph200 ], [ %index.next206, %vector.body203 ] ; 3 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %index204 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %wide.load = load <4 x i32>, ptr %i.pk, align 4, !tbaa !3
  %wide.load205 = load <4 x i32>, ptr %i.pl, align 4, !tbaa !3
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %index204 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  store <4 x i32> %wide.load, ptr %i.pm, align 4, !tbaa !3
  store <4 x i32> %wide.load205, ptr %i.pn, align 4, !tbaa !3
  %index.next206 = add nuw i64 %index204, 8       ; 2 uses
  %i.po = icmp eq i64 %index.next206, %n.vec202
  br i1 %i.po, label %middle.block207, label %vector.body203, !llvm.loop !934

middle.block207:                                  ; preds = %vector.body203
  %cmp.n208 = icmp eq i64 %.0129.us.i, %n.vec202
  br i1 %cmp.n208, label %._crit_edge.split.us.us.i59, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader, %middle.block207
  %.086117.us.us134.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader ], [ %n.vec202, %middle.block207 ] ; 3 uses
  %xtraiter334 = and i64 %.0129.us.i, 3           ; 2 uses
  %lcmp.mod335.not = icmp eq i64 %xtraiter334, 0
  br i1 %lcmp.mod335.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol
  %.086117.us.us134.i.prol = phi i64 [ %i.pr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol ], [ %.086117.us.us134.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322 ]
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %.086117.us.us134.i.prol
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !3
  %i.pr = add nuw i64 %.086117.us.us134.i.prol, 1 ; 2 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %.086117.us.us134.i.prol
  store i32 %i.pq, ptr %i.ps, align 4, !tbaa !3
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter334
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol, !llvm.loop !935

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322
  %.086117.us.us134.i.unr = phi i64 [ %.086117.us.us134.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322 ], [ %i.pr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol ]
  %i.pt = sub i64 %.086117.us.us134.i.ph, %.0129.us.i
  %i.pu = icmp ugt i64 %i.pt, -4
  br i1 %i.pu, label %._crit_edge.split.us.us.i59, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader: ; preds = %.lr.ph.us.i57
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader321, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader
  %n.vec = and i64 %.0129.us.i, -8                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %index ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  store <4 x i32> %vec.ind, ptr %i.pv, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.pw, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.px = icmp eq i64 %index.next, %n.vec
  br i1 %i.px, label %middle.block, label %vector.body, !llvm.loop !936

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0129.us.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.us.us.i59, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader321

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader321: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader, %middle.block
  %.086117.us.us.us.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i
  %.086117.us.us134.i = phi i64 [ %i.qm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i ], [ %.086117.us.us134.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit ] ; 6 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %.086117.us.us134.i
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !3
  %i.qa = add nuw i64 %.086117.us.us134.i, 1      ; 2 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %.086117.us.us134.i
  store i32 %i.pz, ptr %i.qb, align 4, !tbaa !3
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.qa
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !3
  %i.qe = add nuw i64 %.086117.us.us134.i, 2      ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.qa
  store i32 %i.qd, ptr %i.qf, align 4, !tbaa !3
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.qe
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !3
  %i.qi = add nuw i64 %.086117.us.us134.i, 3      ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.qe
  store i32 %i.qh, ptr %i.qj, align 4, !tbaa !3
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.qi
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !3
  %i.qm = add nuw i64 %.086117.us.us134.i, 4      ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.qi
  store i32 %i.ql, ptr %i.qn, align 4, !tbaa !3
  %exitcond163.not.i.3 = icmp eq i64 %i.qm, %.0129.us.i
  br i1 %exitcond163.not.i.3, label %._crit_edge.split.us.us.i59, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i, !llvm.loop !937

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader321, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61
  %.086117.us.us.us.i = phi i64 [ %i.qo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61 ], [ %.086117.us.us.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader321 ] ; 3 uses
  %i.qo = add nuw i64 %.086117.us.us.us.i, 1      ; 2 uses
  %i.qp = trunc i64 %.086117.us.us.us.i to i32
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %.086117.us.us.us.i
  store i32 %i.qp, ptr %i.qq, align 4, !tbaa !3
  %exitcond164.not.i = icmp eq i64 %i.qo, %.0129.us.i
  br i1 %exitcond164.not.i, label %._crit_edge.split.us.us.i59, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61, !llvm.loop !938

.lr.ph130.split.i:                                ; preds = %.lr.ph130.i, %._crit_edge.split.i55
  %.0129.i = phi i64 [ %.1.i56, %._crit_edge.split.i55 ], [ %2, %.lr.ph130.i ] ; 10 uses
  %.080128.i = phi ptr [ %.181.i, %._crit_edge.split.i55 ], [ %i.og, %.lr.ph130.i ] ; 2 uses
  %.084126.i = phi i64 [ %i.tr, %._crit_edge.split.i55 ], [ 0, %.lr.ph130.i ] ; 4 uses
  %i.qr = invoke noundef zeroext i1 @_ZNK6duckdb6vectorIbLb1ESaIbEE3getILb1EEEbm(ptr noundef nonnull align 8 dereferenceable(40) %i.os, i64 noundef %.084126.i)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc71:                                         ; preds = %.lr.ph130.split.i
  br i1 %i.qr, label %._crit_edge.split.i55, label %bb.x

bb.x:                                             ; preds = %.noexc71
  %i.qs = lshr i64 %.084126.i, 3                  ; 6 uses
  %.not151.i = icmp eq i64 %.0129.i, 0
  br i1 %.not151.i, label %._crit_edge.split.i55, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.x
  %i.qt = load ptr, ptr %.080128.i, align 8, !tbaa !424 ; 4 uses
  %.not.i.i51 = icmp eq ptr %i.qt, null
  %i.qu = trunc i64 %.084126.i to i32
  %i.qv = and i32 %i.qu, 7
  %i.qw = shl nuw nsw i32 1, %i.qv                ; 6 uses
  br i1 %.not.i.i51, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader: ; preds = %.lr.ph.i50
  %xtraiter = and i64 %.0129.i, 1
  %i.qx = icmp eq i64 %.0129.i, 1
  br i1 %i.qx, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader
  %unroll_iter = and i64 %.0129.i, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader: ; preds = %.lr.ph.i50
  %xtraiter328 = and i64 %.0129.i, 1
  %i.qy = icmp eq i64 %.0129.i, 1
  br i1 %i.qy, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader
  %unroll_iter332 = and i64 %.0129.i, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i: ; preds = %bb.y, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader.new
  %.086117.us118.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader.new ], [ %.187.us122.i.1, %bb.y ] ; 3 uses
  %.088116.us119.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader.new ], [ %i.ru, %bb.y ] ; 4 uses
  %niter333 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader.new ], [ %niter333.next.1, %bb.y ]
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %.088116.us119.i
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !382
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.qs
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !272
  %i.rd = zext i8 %i.rc to i32
  %i.re = and i32 %i.qw, %i.rd
  %.not110.us.i = icmp eq i32 %i.re, 0
  br i1 %.not110.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.1, label %.critedge.thread.us121.i

.critedge.thread.us121.i:                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i
  %i.rf = add i64 %.086117.us118.i, 1
  %i.rg = trunc i64 %.088116.us119.i to i32
  %i.rh = load ptr, ptr %i.ot, align 8, !tbaa !424
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %.086117.us118.i
  store i32 %i.rg, ptr %i.ri, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.1: ; preds = %.critedge.thread.us121.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i
  %.187.us122.i = phi i64 [ %i.rf, %.critedge.thread.us121.i ], [ %.086117.us118.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i ] ; 3 uses
  %i.rj = or disjoint i64 %.088116.us119.i, 1     ; 2 uses
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.rj
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !382
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.qs
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !272
  %i.ro = zext i8 %i.rn to i32
  %i.rp = and i32 %i.qw, %i.ro
  %.not110.us.i.1 = icmp eq i32 %i.rp, 0
  br i1 %.not110.us.i.1, label %bb.y, label %.critedge.thread.us121.i.1

.critedge.thread.us121.i.1:                       ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.1
  %i.rq = add i64 %.187.us122.i, 1
  %i.rr = trunc i64 %i.rj to i32
  %i.rs = load ptr, ptr %i.ot, align 8, !tbaa !424
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %.187.us122.i
  store i32 %i.rr, ptr %i.rt, align 4, !tbaa !3
  br label %bb.y

bb.y:                                             ; preds = %.critedge.thread.us121.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.1
  %.187.us122.i.1 = phi i64 [ %i.rq, %.critedge.thread.us121.i.1 ], [ %.187.us122.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.1 ] ; 3 uses
  %i.ru = add nuw i64 %.088116.us119.i, 2         ; 2 uses
  %niter333.next.1 = add nuw i64 %niter333, 2     ; 2 uses
  %niter333.ncmp.1 = icmp eq i64 %niter333.next.1, %unroll_iter332
  br i1 %niter333.ncmp.1, label %._crit_edge.split.i55.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i, !llvm.loop !939

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52: ; preds = %bb.z, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader.new
  %.086117.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader.new ], [ %.187.i.1, %bb.z ] ; 3 uses
  %.088116.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader.new ], [ %i.su, %bb.z ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader.new ], [ %niter.next.1, %bb.z ]
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %.088116.i
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !3  ; 2 uses
  %i.rx = zext i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.rx
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !382
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.qs
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !272
  %i.sc = zext i8 %i.sb to i32
  %i.sd = and i32 %i.qw, %i.sc
  %.not110.i = icmp eq i32 %i.sd, 0
  br i1 %.not110.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.1, label %.critedge.thread.i53

.critedge.thread.i53:                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52
  %i.se = add i64 %.086117.i, 1
  %i.sf = load ptr, ptr %i.ot, align 8, !tbaa !424
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %.086117.i
  store i32 %i.rw, ptr %i.sg, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.1: ; preds = %.critedge.thread.i53, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52
  %.187.i = phi i64 [ %i.se, %.critedge.thread.i53 ], [ %.086117.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52 ] ; 3 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %.088116.i
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !3  ; 2 uses
  %i.sk = zext i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.sk
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !382
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.qs
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !272
  %i.sp = zext i8 %i.so to i32
  %i.sq = and i32 %i.qw, %i.sp
  %.not110.i.1 = icmp eq i32 %i.sq, 0
  br i1 %.not110.i.1, label %bb.z, label %.critedge.thread.i53.1

.critedge.thread.i53.1:                           ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.1
  %i.sr = add i64 %.187.i, 1
  %i.ss = load ptr, ptr %i.ot, align 8, !tbaa !424
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %.187.i
  store i32 %i.sj, ptr %i.st, align 4, !tbaa !3
  br label %bb.z

bb.z:                                             ; preds = %.critedge.thread.i53.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.1
  %.187.i.1 = phi i64 [ %i.sr, %.critedge.thread.i53.1 ], [ %.187.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.1 ] ; 3 uses
  %i.su = add nuw i64 %.088116.i, 2               ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.i55.loopexit324.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52, !llvm.loop !939

._crit_edge.split.i55.loopexit.unr-lcssa:         ; preds = %bb.y
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  br i1 %lcmp.mod329.not, label %._crit_edge.split.i55, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.epil.preheader: ; preds = %._crit_edge.split.i55.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader
  %.086117.us118.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader ], [ %.187.us122.i.1, %._crit_edge.split.i55.loopexit.unr-lcssa ] ; 3 uses
  %.088116.us119.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader ], [ %i.ru, %._crit_edge.split.i55.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod331 = trunc i64 %.0129.i to i1
  call void @llvm.assume(i1 %lcmp.mod331)
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %.088116.us119.i.epil.init
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !382
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.qs
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !272
  %i.sz = zext i8 %i.sy to i32
  %i.ta = and i32 %i.qw, %i.sz
  %.not110.us.i.epil = icmp eq i32 %i.ta, 0
  br i1 %.not110.us.i.epil, label %._crit_edge.split.i55, label %.critedge.thread.us121.i.epil

.critedge.thread.us121.i.epil:                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.epil.preheader
  %i.tb = add i64 %.086117.us118.i.epil.init, 1
  %i.tc = trunc i64 %.088116.us119.i.epil.init to i32
  %i.td = load ptr, ptr %i.ot, align 8, !tbaa !424
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %.086117.us118.i.epil.init
  store i32 %i.tc, ptr %i.te, align 4, !tbaa !3
  br label %._crit_edge.split.i55

._crit_edge.split.i55.loopexit324.unr-lcssa:      ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split.i55, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.epil.preheader: ; preds = %._crit_edge.split.i55.loopexit324.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader
  %.086117.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader ], [ %.187.i.1, %._crit_edge.split.i55.loopexit324.unr-lcssa ] ; 3 uses
  %.088116.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader ], [ %i.su, %._crit_edge.split.i55.loopexit324.unr-lcssa ]
  %lcmp.mod327 = trunc i64 %.0129.i to i1
  call void @llvm.assume(i1 %lcmp.mod327)
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %.088116.i.epil.init
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !3  ; 2 uses
  %i.th = zext i32 %i.tg to i64
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.th
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !382
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.qs
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !272
  %i.tm = zext i8 %i.tl to i32
  %i.tn = and i32 %i.qw, %i.tm
  %.not110.i.epil = icmp eq i32 %i.tn, 0
  br i1 %.not110.i.epil, label %._crit_edge.split.i55, label %.critedge.thread.i53.epil

.critedge.thread.i53.epil:                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.epil.preheader
  %i.to = add i64 %.086117.i.epil.init, 1
  %i.tp = load ptr, ptr %i.ot, align 8, !tbaa !424
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %.086117.i.epil.init
  store i32 %i.tg, ptr %i.tq, align 4, !tbaa !3
  br label %._crit_edge.split.i55

._crit_edge.split.i55:                            ; preds = %._crit_edge.split.i55.loopexit324.unr-lcssa, %.critedge.thread.i53.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.epil.preheader, %._crit_edge.split.i55.loopexit.unr-lcssa, %.critedge.thread.us121.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.epil.preheader, %bb.x, %.noexc71
  %.181.i = phi ptr [ %.080128.i, %.noexc71 ], [ %i.ot, %bb.x ], [ %i.ot, %._crit_edge.split.i55.loopexit.unr-lcssa ], [ %i.ot, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.epil.preheader ], [ %i.ot, %.critedge.thread.us121.i.epil ], [ %i.ot, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.epil.preheader ], [ %i.ot, %.critedge.thread.i53.epil ], [ %i.ot, %._crit_edge.split.i55.loopexit324.unr-lcssa ] ; 2 uses
  %.1.i56 = phi i64 [ %.0129.i, %.noexc71 ], [ 0, %bb.x ], [ %.086117.us118.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.epil.preheader ], [ %.187.us122.i.1, %._crit_edge.split.i55.loopexit.unr-lcssa ], [ %i.tb, %.critedge.thread.us121.i.epil ], [ %.187.i.1, %._crit_edge.split.i55.loopexit324.unr-lcssa ], [ %i.to, %.critedge.thread.i53.epil ], [ %.086117.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.epil.preheader ] ; 2 uses
  %i.tr = add nuw i64 %.084126.i, 1               ; 2 uses
  %i.ts = load ptr, ptr %i.on, align 8, !tbaa !854, !nonnull !69, !align !336 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !855
  %i.tv = load ptr, ptr %i.ts, align 8, !tbaa !856
  %i.tw = ptrtoint ptr %i.tu to i64
  %i.tx = ptrtoint ptr %i.tv to i64
  %i.ty = sub i64 %i.tw, %i.tx
  %i.tz = sdiv exact i64 %i.ty, 24
  %i.ua = icmp ult i64 %i.tr, %i.tz
  br i1 %i.ua, label %.lr.ph130.split.i, label %.loopexit.i26, !llvm.loop !933

.loopexit.i26:                                    ; preds = %._crit_edge.split.i55, %._crit_edge.split.us.us.i59, %.preheader114.i, %.noexc69
  %.282.i = phi ptr [ %i.og, %.noexc69 ], [ %i.og, %.preheader114.i ], [ %.181.us.i, %._crit_edge.split.us.us.i59 ], [ %.181.i, %._crit_edge.split.i55 ]
  %.2.i27 = phi i64 [ %2, %.noexc69 ], [ %2, %.preheader114.i ], [ %.1.us.i60, %._crit_edge.split.us.us.i59 ], [ %.1.i56, %._crit_edge.split.i55 ] ; 2 uses
  %i.ub = load i64, ptr %i.nv, align 8, !tbaa !844
  %i.uc = or i64 %i.ub, -281474976710656          ; 12 uses
  %.not145.i = icmp eq i64 %.2.i27, 0
  br i1 %.not145.i, label %_ZN6duckdbL16InsertHashesLoopILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_6VectorES6_RKmRNS_13JoinHashTable11InsertStateERKNS_19TupleDataCollectionERS9_.exit, label %.preheader.lr.ph.i28

.preheader.lr.ph.i28:                             ; preds = %.loopexit.i26
  %i.ud = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %4, i64 304 ; 4 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %4, i64 328
  %i.uh = getelementptr inbounds nuw i8, ptr %4, i64 376 ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %4, i64 768
  %i.uk = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 3 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.um = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 481
  %i.up = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.uc, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader.i29

.preheader.i29:                                   ; preds = %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, %.preheader.lr.ph.i28
  %.3147.i = phi i64 [ %.2.i27, %.preheader.lr.ph.i28 ], [ %.pr.i38, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i ]
  %.383146.i = phi ptr [ %.282.i, %.preheader.lr.ph.i28 ], [ %i.up, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i ]
  br label %bb.ab

bb.aa:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %.not94.i = icmp eq i64 %.193.i, 0
  br i1 %.not94.i, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.thread.i, label %bb.ag

_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.thread.i: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %_ZN6duckdbL16InsertHashesLoopILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_6VectorES6_RKmRNS_13JoinHashTable11InsertStateERKNS_19TupleDataCollectionERS9_.exit

bb.ab:                                            ; preds = %bb.af, %.preheader.i29
  %.091144.i = phi i64 [ 0, %.preheader.i29 ], [ %i.wc, %bb.af ] ; 3 uses
  %.092143.i = phi i64 [ 0, %.preheader.i29 ], [ %.193.i, %bb.af ] ; 4 uses
  %i.uq = load ptr, ptr %.383146.i, align 8, !tbaa !424 ; 2 uses
  %.not.i95.i = icmp eq ptr %i.uq, null
  br i1 %.not.i95.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit96.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %.091144.i
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !3
  %i.ut = zext i32 %i.us to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit96.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit96.i: ; preds = %bb.ac, %bb.ab
  %i.uu = phi i64 [ %i.ut, %bb.ac ], [ %.091144.i, %bb.ab ] ; 4 uses
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.uu ; 2 uses
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.uu ; 2 uses
  %i.ux = load i64, ptr %i.uv, align 8, !tbaa !39 ; 3 uses
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ux
  %i.uz = load atomic i64, ptr %i.uy monotonic, align 8 ; 2 uses
  %.not109141.i = icmp eq i64 %i.uz, 0
  br i1 %.not109141.i, label %._crit_edge.i30, label %.lr.ph142.i

.lr.ph142.i:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit96.i, %bb.ad
  %i.va = phi i64 [ %i.vi, %bb.ad ], [ %i.uz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit96.i ] ; 2 uses
  %i.vb = phi i64 [ %i.vg, %bb.ad ], [ %i.ux, %_ZNK6duckdb15SelectionVector9get_indexEm.exit96.i ]
  %i.vc = or i64 %i.va, 281474976710655
  %i.vd = load i64, ptr %i.uw, align 8, !tbaa !39
  %i.ve = icmp eq i64 %i.vc, %i.vd
  br i1 %i.ve, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph142.i
  %i.vf = add i64 %i.vb, 1
  %i.vg = and i64 %i.vf, %i.uc                    ; 4 uses
  store i64 %i.vg, ptr %i.uv, align 8, !tbaa !39
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.vg
  %i.vi = load atomic i64, ptr %i.vh monotonic, align 8 ; 2 uses
  %.not109.i = icmp eq i64 %i.vi, 0
  br i1 %.not109.i, label %._crit_edge.i30, label %.lr.ph142.i

._crit_edge.i30:                                  ; preds = %bb.ad, %_ZNK6duckdb15SelectionVector9get_indexEm.exit96.i
  %i.vj = phi i64 [ %i.ux, %_ZNK6duckdb15SelectionVector9get_indexEm.exit96.i ], [ %i.vg, %bb.ad ]
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.vj ; 2 uses
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.uu
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !382 ; 2 uses
  %i.vn = ptrtoint ptr %i.vm to i64
  %i.vo = load i64, ptr %i.uw, align 8, !tbaa !39
  %i.vp = and i64 %i.vo, -281474976710656
  %i.vq = or i64 %i.vp, %i.vn
  %i.vr = load atomic i64, ptr %i.vk monotonic, align 8
  %i.vs = and i64 %i.vr, 281474976710655
  %i.vt = load i64, ptr %i.ue, align 8, !tbaa !39
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vm, i64 %i.vt
  store i64 %i.vs, ptr %i.vu, align 1
  store atomic i64 %i.vq, ptr %i.vk seq_cst, align 8
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph142.i
  %i.vv = trunc i64 %i.uu to i32
  %i.vw = load ptr, ptr %i.ud, align 8, !tbaa !424
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %.092143.i
  store i32 %i.vv, ptr %i.vx, align 4, !tbaa !3
  %i.vy = and i64 %i.va, 281474976710655
  %i.vz = inttoptr i64 %i.vy to ptr
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %.092143.i
  store ptr %i.vz, ptr %i.wa, align 8, !tbaa !382
  %i.wb = add i64 %.092143.i, 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge.i30
  %.193.i = phi i64 [ %i.wb, %bb.ae ], [ %.092143.i, %._crit_edge.i30 ] ; 9 uses
  %i.wc = add nuw i64 %.091144.i, 1               ; 2 uses
  %exitcond165.not.i = icmp eq i64 %i.wc, %.3147.i
  br i1 %exitcond165.not.i, label %bb.aa, label %bb.ab, !llvm.loop !940

bb.ag:                                            ; preds = %bb.aa
  invoke void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.uf)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc72:                                         ; preds = %bb.ag
  store i64 %.193.i, ptr %i.ug, align 8, !tbaa !409
  invoke void @_ZN6duckdb19TupleDataCollection22ResetCachedCastVectorsERNS_19TupleDataChunkStateERKNS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(488) %i.uh, ptr noundef nonnull align 8 dereferenceable(24) %i.ui)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc73:                                         ; preds = %.noexc72
  %i.wd = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
end_hunk_7
begin_hunk_8_@_ZN6duckdb13JoinHashTable12InsertHashesERNS_6VectorEmRNS_19TupleDataChunkStateERNS0_11InsertStateEb:bb.a
  %min.iters.check227 = icmp ult i64 %.193.i, 8
  br i1 %min.iters.check227, label %scalar.ph226.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %.noexc76
  %n.vec230 = and i64 %.193.i, -8                 ; 3 uses
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph228
  %index232 = phi i64 [ 0, %vector.ph228 ], [ %index.next235, %vector.body231 ] ; 2 uses
  %vec.ind233 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph228 ], [ %vec.ind.next236, %vector.body231 ] ; 3 uses
  %step.add234 = add <4 x i32> %vec.ind233, splat (i32 4)
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %index232 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  store <4 x i32> %vec.ind233, ptr %i.wf, align 4, !tbaa !3
  store <4 x i32> %step.add234, ptr %i.wg, align 4, !tbaa !3
  %index.next235 = add nuw i64 %index232, 8       ; 2 uses
  %vec.ind.next236 = add <4 x i32> %vec.ind233, splat (i32 8)
  %i.wh = icmp eq i64 %index.next235, %n.vec230
  br i1 %i.wh, label %middle.block237, label %vector.body231, !llvm.loop !941

middle.block237:                                  ; preds = %vector.body231
  %cmp.n238 = icmp eq i64 %.193.i, %n.vec230
  br i1 %cmp.n238, label %_ZN6duckdbL20PerformKeyComparisonERNS_13JoinHashTable11InsertStateERS0_RKNS_19TupleDataCollectionERNS_6VectorEmRmS9_.exit.i33, label %scalar.ph226.preheader

scalar.ph226.preheader:                           ; preds = %.noexc76, %middle.block237
  %.029.i.i31.ph = phi i64 [ 0, %.noexc76 ], [ %n.vec230, %middle.block237 ]
  br label %scalar.ph226

scalar.ph226:                                     ; preds = %scalar.ph226.preheader, %scalar.ph226
  %.029.i.i31 = phi i64 [ %i.wk, %scalar.ph226 ], [ %.029.i.i31.ph, %scalar.ph226.preheader ] ; 3 uses
  %i.wi = trunc i64 %.029.i.i31 to i32
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %.029.i.i31
  store i32 %i.wi, ptr %i.wj, align 4, !tbaa !3
  %i.wk = add nuw i64 %.029.i.i31, 1              ; 2 uses
  %exitcond.not.i.i32 = icmp eq i64 %i.wk, %.193.i
  br i1 %exitcond.not.i.i32, label %_ZN6duckdbL20PerformKeyComparisonERNS_13JoinHashTable11InsertStateERS0_RKNS_19TupleDataCollectionERNS_6VectorEmRmS9_.exit.i33, label %scalar.ph226, !llvm.loop !942

_ZN6duckdbL20PerformKeyComparisonERNS_13JoinHashTable11InsertStateERS0_RKNS_19TupleDataCollectionERNS_6VectorEmRmS9_.exit.i33: ; preds = %scalar.ph226, %middle.block237
  %i.wl = invoke noundef i64 @_ZN6duckdb10RowMatcher5MatchERNS_9DataChunkERKNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS4_EEERNS_15SelectionVectorEmRNS_6VectorEPS9_Rm(ptr noundef nonnull align 8 dereferenceable(80) %i.ul, ptr noundef nonnull align 8 dereferenceable(72) %i.uf, ptr noundef nonnull align 8 dereferenceable(24) %i.uh, ptr noundef nonnull align 8 dereferenceable(24) %i.uk, i64 noundef range(i64 1, 0) %.193.i, ptr noundef nonnull align 8 dereferenceable(104) %i.ob, ptr noundef nonnull %i.um, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc77:                                         ; preds = %_ZN6duckdbL20PerformKeyComparisonERNS_13JoinHashTable11InsertStateERS0_RKNS_19TupleDataCollectionERNS_6VectorEmRmS9_.exit.i33
  %i.wm = load i64, ptr %i.a, align 8, !tbaa !39  ; 17 uses
  %.not.i97.i = icmp eq i64 %i.wl, 0
  br i1 %.not.i97.i, label %.loopexit.i.i34, label %bb.ah

bb.ah:                                            ; preds = %.noexc77
  store i8 1, ptr %i.un, align 1, !tbaa !869
  %i.wn = load i8, ptr %i.uo, align 1, !tbaa !846, !range !66, !noundef !69
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.wo, label %.lr.ph.i.i45, label %.loopexit.i.i34

.lr.ph.i.i45:                                     ; preds = %bb.ah, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i49
  %.040.i.i = phi i64 [ %i.xn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i49 ], [ 0, %bb.ah ] ; 3 uses
  %i.wp = load ptr, ptr %i.uk, align 8, !tbaa !424 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.wp, null
  br i1 %.not.i.i.i46, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i47, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i45
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %.040.i.i
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !3
  %i.ws = zext i32 %i.wr to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i47

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i47: ; preds = %bb.ai, %.lr.ph.i.i45
  %i.wt = phi i64 [ %i.ws, %bb.ai ], [ %.040.i.i, %.lr.ph.i.i45 ] ; 2 uses
  %i.wu = load ptr, ptr %i.ud, align 8, !tbaa !424 ; 2 uses
  %.not.i33.i.i48 = icmp eq ptr %i.wu, null
  br i1 %.not.i33.i.i48, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i49, label %bb.aj

bb.aj:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i47
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %i.wt
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !3
  %i.wx = zext i32 %i.ww to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i49

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i49: ; preds = %bb.aj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i47
  %i.wy = phi i64 [ %i.wx, %bb.aj ], [ %i.wt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i47 ] ; 3 uses
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.wy
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !39
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.xa ; 2 uses
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.wy
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !382 ; 2 uses
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.wy
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !39
  %i.xg = ptrtoint ptr %i.xd to i64
  %i.xh = and i64 %i.xf, -281474976710656
  %i.xi = or i64 %i.xh, %i.xg
  %i.xj = load atomic i64, ptr %i.xb monotonic, align 8
  %i.xk = and i64 %i.xj, 281474976710655
  %i.xl = load i64, ptr %i.ue, align 8, !tbaa !39
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xl
  store i64 %i.xk, ptr %i.xm, align 1
  store atomic i64 %i.xi, ptr %i.xb seq_cst, align 8
  %i.xn = add nuw i64 %.040.i.i, 1                ; 2 uses
  %exitcond.not.i98.i = icmp eq i64 %i.xn, %i.wl
  br i1 %exitcond.not.i98.i, label %.loopexit.i.i34, label %.lr.ph.i.i45, !llvm.loop !943

.loopexit.i.i34:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i49, %bb.ah, %.noexc77
  %.not46.i.i = icmp eq i64 %i.wm, 0
  br i1 %.not46.i.i, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, label %.lr.ph42.i.i

.lr.ph42.i.i:                                     ; preds = %.loopexit.i.i34
  %i.xo = load ptr, ptr %i.um, align 8, !tbaa !424 ; 7 uses
  %.not.i35.i.i35 = icmp eq ptr %i.xo, null
  %i.xp = load ptr, ptr %i.ud, align 8, !tbaa !424 ; 7 uses
  %.not.i37.i.i36 = icmp eq ptr %i.xp, null       ; 2 uses
  %i.xq = load ptr, ptr %i.up, align 8, !tbaa !424 ; 11 uses
  br i1 %.not.i35.i.i35, label %.lr.ph42.split.us.i.i, label %.lr.ph42.split.i.i

.lr.ph42.split.us.i.i:                            ; preds = %.lr.ph42.i.i
  br i1 %.not.i37.i.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41.preheader: ; preds = %.lr.ph42.split.us.i.i
  %xtraiter346 = and i64 %i.wm, 1
  %i.xr = icmp eq i64 %i.wm, 1
  br i1 %i.xr, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41.preheader
  %unroll_iter349 = and i64 %i.wm, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43.preheader: ; preds = %.lr.ph42.split.us.i.i
  %min.iters.check211 = icmp ult i64 %i.wm, 4
  br i1 %min.iters.check211, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43.preheader313, label %vector.ph212

vector.ph212:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43.preheader
  %n.vec214 = and i64 %i.wm, -4                   ; 3 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph212
  %index216 = phi i64 [ 0, %vector.ph212 ], [ %index.next221, %vector.body215 ] ; 3 uses
  %vec.ind217 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph212 ], [ %vec.ind.next222, %vector.body215 ] ; 3 uses
  %step.add218 = add <2 x i32> %vec.ind217, splat (i32 2)
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %index216 ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16 ; 2 uses
  %wide.load219 = load <2 x i64>, ptr %i.xs, align 8, !tbaa !39
  %wide.load220 = load <2 x i64>, ptr %i.xt, align 8, !tbaa !39
  %i.xu = add <2 x i64> %wide.load219, splat (i64 1)
  %i.xv = add <2 x i64> %wide.load220, splat (i64 1)
  %i.xw = and <2 x i64> %i.xu, %broadcast.splat
  %i.xx = and <2 x i64> %i.xv, %broadcast.splat
  store <2 x i64> %i.xw, ptr %i.xs, align 8, !tbaa !39
  store <2 x i64> %i.xx, ptr %i.xt, align 8, !tbaa !39
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %index216 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  store <2 x i32> %vec.ind217, ptr %i.xy, align 4, !tbaa !3
  store <2 x i32> %step.add218, ptr %i.xz, align 4, !tbaa !3
  %index.next221 = add nuw i64 %index216, 4       ; 2 uses
  %vec.ind.next222 = add <2 x i32> %vec.ind217, splat (i32 4)
  %i.ya = icmp eq i64 %index.next221, %n.vec214
  br i1 %i.ya, label %middle.block223, label %vector.body215, !llvm.loop !944

middle.block223:                                  ; preds = %vector.body215
  %cmp.n224 = icmp eq i64 %i.wm, %n.vec214
  br i1 %cmp.n224, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43.preheader313

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43.preheader313: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43.preheader, %middle.block223
  %.03241.us.us.i.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43.preheader ], [ %n.vec214, %middle.block223 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43.preheader313, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43
  %.03241.us.us.i.i = phi i64 [ %i.yh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43 ], [ %.03241.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43.preheader313 ] ; 4 uses
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %.03241.us.us.i.i ; 2 uses
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !39
  %i.yd = add i64 %i.yc, 1
  %i.ye = and i64 %i.yd, %i.uc
  store i64 %i.ye, ptr %i.yb, align 8, !tbaa !39
  %i.yf = trunc i64 %.03241.us.us.i.i to i32
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %.03241.us.us.i.i
  store i32 %i.yf, ptr %i.yg, align 4, !tbaa !3
  %i.yh = add nuw i64 %.03241.us.us.i.i, 1        ; 2 uses
  %exitcond53.not.i.i44 = icmp eq i64 %i.yh, %i.wm
  br i1 %exitcond53.not.i.i44, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43, !llvm.loop !945

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41.preheader.new
  %.03241.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41.preheader.new ], [ %i.yz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41 ] ; 4 uses
  %niter350 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41.preheader.new ], [ %niter350.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41 ]
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %.03241.us.i.i
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !3  ; 2 uses
  %i.yk = zext i32 %i.yj to i64
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.yk ; 2 uses
  %i.ym = load i64, ptr %i.yl, align 8, !tbaa !39
  %i.yn = add i64 %i.ym, 1
  %i.yo = and i64 %i.yn, %i.uc
  store i64 %i.yo, ptr %i.yl, align 8, !tbaa !39
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %.03241.us.i.i
  store i32 %i.yj, ptr %i.yp, align 4, !tbaa !3
  %i.yq = or disjoint i64 %.03241.us.i.i, 1       ; 2 uses
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %i.yq
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !3  ; 2 uses
  %i.yt = zext i32 %i.ys to i64
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.yt ; 2 uses
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !39
  %i.yw = add i64 %i.yv, 1
  %i.yx = and i64 %i.yw, %i.uc
  store i64 %i.yx, ptr %i.yu, align 8, !tbaa !39
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.yq
  store i32 %i.ys, ptr %i.yy, align 4, !tbaa !3
  %i.yz = add nuw i64 %.03241.us.i.i, 2           ; 2 uses
  %niter350.next.1 = add nuw i64 %niter350, 2     ; 2 uses
  %niter350.ncmp.1 = icmp eq i64 %niter350.next.1, %unroll_iter349
  br i1 %niter350.ncmp.1, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit314.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41, !llvm.loop !946

.lr.ph42.split.i.i:                               ; preds = %.lr.ph42.i.i
  br i1 %.not.i37.i.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37.preheader: ; preds = %.lr.ph42.split.i.i
  %xtraiter336 = and i64 %i.wm, 1
  %i.za = icmp eq i64 %i.wm, 1
  br i1 %i.za, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37.preheader
  %unroll_iter339 = and i64 %i.wm, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i.preheader: ; preds = %.lr.ph42.split.i.i
  %xtraiter341 = and i64 %i.wm, 1
  %i.zb = icmp eq i64 %i.wm, 1
  br i1 %i.zb, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i.preheader
  %unroll_iter344 = and i64 %i.wm, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i.preheader.new
  %.03241.us44.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i.preheader.new ], [ %i.zt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i ] ; 4 uses
  %niter345 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i.preheader.new ], [ %niter345.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i ]
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %.03241.us44.i.i
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !3  ; 2 uses
  %i.ze = zext i32 %i.zd to i64
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.ze ; 2 uses
  %i.zg = load i64, ptr %i.zf, align 8, !tbaa !39
  %i.zh = add i64 %i.zg, 1
  %i.zi = and i64 %i.zh, %i.uc
  store i64 %i.zi, ptr %i.zf, align 8, !tbaa !39
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %.03241.us44.i.i
  store i32 %i.zd, ptr %i.zj, align 4, !tbaa !3
  %i.zk = or disjoint i64 %.03241.us44.i.i, 1     ; 2 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.zk
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !3  ; 2 uses
  %i.zn = zext i32 %i.zm to i64
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.zn ; 2 uses
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !39
  %i.zq = add i64 %i.zp, 1
  %i.zr = and i64 %i.zq, %i.uc
  store i64 %i.zr, ptr %i.zo, align 8, !tbaa !39
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.zk
  store i32 %i.zm, ptr %i.zs, align 4, !tbaa !3
  %i.zt = add nuw i64 %.03241.us44.i.i, 2         ; 2 uses
  %niter345.next.1 = add nuw i64 %niter345, 2     ; 2 uses
  %niter345.ncmp.1 = icmp eq i64 %niter345.next.1, %unroll_iter344
  br i1 %niter345.ncmp.1, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit315.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i, !llvm.loop !946

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37.preheader.new
  %.03241.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37.preheader.new ], [ %i.aar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37 ] ; 4 uses
  %niter340 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37.preheader.new ], [ %niter340.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37 ]
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %.03241.i.i
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !3
  %i.zw = zext i32 %i.zv to i64
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %i.zw
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !3  ; 2 uses
  %i.zz = zext i32 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.zz ; 2 uses
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !39
  %i.aac = add i64 %i.aab, 1
  %i.aad = and i64 %i.aac, %i.uc
  store i64 %i.aad, ptr %i.aaa, align 8, !tbaa !39
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %.03241.i.i
  store i32 %i.zy, ptr %i.aae, align 4, !tbaa !3
  %i.aaf = or disjoint i64 %.03241.i.i, 1         ; 2 uses
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.aaf
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !3
  %i.aai = zext i32 %i.aah to i64
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %i.aai
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !3 ; 2 uses
  %i.aal = zext i32 %i.aak to i64
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.aal ; 2 uses
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !39
  %i.aao = add i64 %i.aan, 1
  %i.aap = and i64 %i.aao, %i.uc
  store i64 %i.aap, ptr %i.aam, align 8, !tbaa !39
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.aaf
  store i32 %i.aak, ptr %i.aaq, align 4, !tbaa !3
  %i.aar = add nuw i64 %.03241.i.i, 2             ; 2 uses
  %niter340.next.1 = add nuw i64 %niter340, 2     ; 2 uses
  %niter340.ncmp.1 = icmp eq i64 %niter340.next.1, %unroll_iter339
  br i1 %niter340.ncmp.1, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit316.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37, !llvm.loop !946

_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit314.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41
  %lcmp.mod347.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod347.not, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41.epil.preheader: ; preds = %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit314.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41.preheader
  %.03241.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41.preheader ], [ %i.yz, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit314.unr-lcssa ] ; 2 uses
  %lcmp.mod348 = trunc i64 %i.wm to i1
  call void @llvm.assume(i1 %lcmp.mod348)
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %.03241.us.i.i.epil.init
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !3 ; 2 uses
  %i.aau = zext i32 %i.aat to i64
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.aau ; 2 uses
  %i.aaw = load i64, ptr %i.aav, align 8, !tbaa !39
  %i.aax = add i64 %i.aaw, 1
  %i.aay = and i64 %i.aax, %i.uc
  store i64 %i.aay, ptr %i.aav, align 8, !tbaa !39
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %.03241.us.i.i.epil.init
  store i32 %i.aat, ptr %i.aaz, align 4, !tbaa !3
  br label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i

_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit315.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i
  %lcmp.mod342.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod342.not, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i.epil.preheader: ; preds = %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit315.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i.preheader
  %.03241.us44.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i.preheader ], [ %i.zt, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit315.unr-lcssa ] ; 2 uses
  %lcmp.mod343 = trunc i64 %i.wm to i1
  call void @llvm.assume(i1 %lcmp.mod343)
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %.03241.us44.i.i.epil.init
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !3 ; 2 uses
  %i.abc = zext i32 %i.abb to i64
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.abc ; 2 uses
  %i.abe = load i64, ptr %i.abd, align 8, !tbaa !39
  %i.abf = add i64 %i.abe, 1
  %i.abg = and i64 %i.abf, %i.uc
  store i64 %i.abg, ptr %i.abd, align 8, !tbaa !39
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %.03241.us44.i.i.epil.init
  store i32 %i.abb, ptr %i.abh, align 4, !tbaa !3
  br label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i

_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit316.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37
  %lcmp.mod337.not = icmp eq i64 %xtraiter336, 0
  br i1 %lcmp.mod337.not, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37.epil.preheader: ; preds = %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit316.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37.preheader
  %.03241.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37.preheader ], [ %i.aar, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit316.unr-lcssa ] ; 2 uses
  %lcmp.mod338 = trunc i64 %i.wm to i1
  call void @llvm.assume(i1 %lcmp.mod338)
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %.03241.i.i.epil.init
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !3
  %i.abk = zext i32 %i.abj to i64
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %i.abk
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !3 ; 2 uses
  %i.abn = zext i32 %i.abm to i64
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.abn ; 2 uses
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !39
  %i.abq = add i64 %i.abp, 1
  %i.abr = and i64 %i.abq, %i.uc
  store i64 %i.abr, ptr %i.abo, align 8, !tbaa !39
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %.03241.i.i.epil.init
  store i32 %i.abm, ptr %i.abs, align 4, !tbaa !3
  br label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i

_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i37.epil.preheader, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit316.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us43.i.i.epil.preheader, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit315.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i41.epil.preheader, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit314.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i43, %middle.block223, %.loopexit.i.i34
  %.pr.i38 = load i64, ptr %i.a, align 8, !tbaa !39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.not.i39 = icmp eq i64 %.pr.i38, 0
  br i1 %.not.i39, label %_ZN6duckdbL16InsertHashesLoopILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_6VectorES6_RKmRNS_13JoinHashTable11InsertStateERKNS_19TupleDataCollectionERS9_.exit, label %.preheader.i29, !llvm.loop !947

_ZN6duckdbL16InsertHashesLoopILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_6VectorES6_RKmRNS_13JoinHashTable11InsertStateERKNS_19TupleDataCollectionERS9_.exit: ; preds = %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb0EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.thread.i, %.loopexit.i26, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.thread.i, %.loopexit.i
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret void
}

declare void @_ZNK6duckdb11BloomFilter12InsertHashesERKNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb6VectorC1ERS0_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable20AllocatePointerTableEv(ptr noundef nonnull align 8 dereferenceable(1088) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %3 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %4 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.duckdb::vector.448", align 8 ; 12 uses
  %9 = alloca [2 x %"struct.std::pair.685"], align 8 ; 29 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 4 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.b)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39
  %i.e = uitofp i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.g = load double, ptr %i.f, align 8, !tbaa !851
  %i.h = fmul double %i.g, %i.e
  %i.i = fptoui double %i.h to i64
  %i.j = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.i) ; 2 uses
  %i.k = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 16384)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !805
  %i.m = icmp ugt i64 %i.j, 281474976710654
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.ba unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.026 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.q) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.026, label %bb.f, label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.026, label %bb.f, label %bb.az

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn38105 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #40
  br label %bb.az

bb.g:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.u = load i8, ptr %i.t, align 8, !tbaa !850, !range !66, !noundef !69
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.x = load ptr, ptr %0, align 8, !tbaa !875, !nonnull !69, !align !336
  %i.y = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.y)
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !39
  tail call void @_ZN6duckdb11BloomFilter10InitializeERNS_13ClientContextEm(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(512) %i.x, i64 noundef %i.aa)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !350
  %.not29 = icmp eq ptr %i.ad, null
  br i1 %.not29, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !948
  %i.ag = lshr i64 %i.af, 3                       ; 2 uses
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !805
  %i.ai = icmp ugt i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !874, !nonnull !69, !align !336 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) ; 2 uses
  %i.ap = load i64, ptr %i.l, align 8, !tbaa !805
  %i.aq = shl i64 %i.ap, 3                        ; 2 uses
  %i.ar = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 noundef %i.aq), !noalias !949
end_hunk_8
begin_hunk_9_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.e = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.e) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb13JoinHashTable22InitializePointerTableEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1088) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_ZSt6fill_nIPN6duckdb10ht_entry_tEmS1_ET_S3_T0_RKT1_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %i.b = sub i64 %2, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !880
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1
  %.idx.i.i = shl nuw nsw i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %.idx.i.i, i1 false), !tbaa !39
  br label %_ZSt6fill_nIPN6duckdb10ht_entry_tEmS1_ET_S3_T0_RKT1_.exit

_ZSt6fill_nIPN6duckdb10ht_entry_tEmS1_ET_S3_T0_RKT1_.exit: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable8FinalizeEmmb(ptr noundef nonnull align 8 dereferenceable(1088) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::Vector", align 8    ; 9 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %6 = alloca %"class.duckdb::TupleDataChunkIterator", align 8 ; 14 uses
  %7 = alloca %"struct.duckdb::JoinHashTable::InsertState", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 31)
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull %5, i64 noundef 2048)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #40
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !427  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.d = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb22TupleDataChunkIteratorC1ERNS_19TupleDataCollectionENS_22TupleDataPinPropertiesEmmb(ptr noundef nonnull align 8 dereferenceable(624) %6, ptr noundef nonnull align 8 dereferenceable(192) %i.d, i8 noundef zeroext 1, i64 noundef %1, i64 noundef %2, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.e = invoke noundef ptr @_ZN6duckdb22TupleDataChunkIterator15GetRowLocationsEv(ptr noundef nonnull align 8 dereferenceable(624) %6)
          to label %bb.f unwind label %bb.k       ; 5 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  invoke void @_ZN6duckdb13JoinHashTable11InsertStateC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(864) %7, ptr noundef nonnull align 8 dereferenceable(1088) %0)
          to label %.preheader31 unwind label %bb.l

.preheader31:                                     ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader31, %bb.p
  %i.g = invoke noundef i64 @_ZNK6duckdb22TupleDataChunkIterator20GetCurrentChunkCountEv(ptr noundef nonnull align 8 dereferenceable(624) %6)
          to label %.preheader unwind label %bb.m ; 5 uses

.preheader:                                       ; preds = %bb.g
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.h = icmp ult i64 %i.g, 4
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01432.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod40)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.01432.epil = phi i64 [ %i.n, %.lr.ph.epil ], [ %.01432.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.01432.epil
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !382
  %i.k = load i64, ptr %i.f, align 8, !tbaa !871
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %.0.copyload.i.epil = load i64, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.01432.epil
  store i64 %.0.copyload.i.epil, ptr %i.m, align 8, !tbaa !39
  %i.n = add nuw i64 %.01432.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !970

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %i.o = invoke noundef nonnull align 8 dereferenceable(488) ptr @_ZN6duckdb22TupleDataChunkIterator13GetChunkStateEv(ptr noundef nonnull align 8 dereferenceable(624) %6)
          to label %bb.n unwind label %bb.t

bb.h:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #40
  br label %bb.aa

bb.i:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.k:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.m:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01432 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.as, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.01432
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !382
  %i.x = load i64, ptr %i.f, align 8, !tbaa !871
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  %.0.copyload.i = load i64, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.01432
  store i64 %.0.copyload.i, ptr %i.z, align 8, !tbaa !39
  %i.aa = or disjoint i64 %.01432, 1              ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !382
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !871
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %.0.copyload.i.1 = load i64, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aa
  store i64 %.0.copyload.i.1, ptr %i.af, align 8, !tbaa !39
  %i.ag = or disjoint i64 %.01432, 2              ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !382
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !871
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %.0.copyload.i.2 = load i64, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ag
  store i64 %.0.copyload.i.2, ptr %i.al, align 8, !tbaa !39
  %i.am = or disjoint i64 %.01432, 3              ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !382
  %i.ap = load i64, ptr %i.f, align 8, !tbaa !871
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %.0.copyload.i.3 = load i64, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.am
  store i64 %.0.copyload.i.3, ptr %i.ar, align 8, !tbaa !39
  %i.as = add nuw i64 %.01432, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !971

bb.n:                                             ; preds = %._crit_edge
  invoke void @_ZN6duckdb13JoinHashTable12InsertHashesERNS_6VectorEmRNS_19TupleDataChunkStateERNS0_11InsertStateEb(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(488) %i.o, ptr noundef nonnull align 8 dereferenceable(864) %7, i1 noundef zeroext %3)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.at = invoke noundef zeroext i1 @_ZN6duckdb22TupleDataChunkIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(624) %6)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  br i1 %i.at, label %bb.g, label %bb.q, !llvm.loop !972

bb.q:                                             ; preds = %bb.p
  call void @_ZN6duckdb13JoinHashTable11InsertStateD2Ev(ptr noundef nonnull align 8 dereferenceable(864) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 104
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.av) #40
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !371 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !374 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.az
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ax, %bb.q ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ba) #40
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.az
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !375

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !371
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.q
  %i.bc = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.ax, %bb.q ] ; 2 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bc) #39
  br label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i

_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i:   ; preds = %bb.r, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !371 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !374 ; 2 uses
  %.not4.i.i.i.i1.i.i.i = icmp eq ptr %i.bd, %i.bf
  br i1 %.not4.i.i.i.i1.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i, label %.lr.ph.i.i.i.i2.i.i.i

.lr.ph.i.i.i.i2.i.i.i:                            ; preds = %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i, %.lr.ph.i.i.i.i2.i.i.i
  %.05.i.i.i.i3.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i2.i.i.i ], [ %i.bd, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3.i.i.i, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bg) #40
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i4.i.i.i = icmp eq ptr %i.bh, %i.bf
  br i1 %.not.i.i.i.i4.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i, label %.lr.ph.i.i.i.i2.i.i.i, !llvm.loop !375

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i: ; preds = %.lr.ph.i.i.i.i2.i.i.i
  %.pr.i.i6.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !371
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i
  %i.bi = phi ptr [ %.pr.i.i6.i.i.i, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i ], [ %i.bd, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i ] ; 2 uses
  %.not.i.i1.i.i8.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i1.i.i8.i.i.i, label %_ZN6duckdb22TupleDataChunkIteratorD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bi) #39
  br label %_ZN6duckdb22TupleDataChunkIteratorD2Ev.exit

_ZN6duckdb22TupleDataChunkIteratorD2Ev.exit:      ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

bb.t:                                             ; preds = %bb.n, %._crit_edge
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.m, %bb.t, %bb.u
  %.pn24 = phi { ptr, i32 } [ %i.bk, %bb.u ], [ %i.bj, %bb.t ], [ %i.u, %bb.m ]
  call void @_ZN6duckdb13JoinHashTable11InsertStateD2Ev(ptr noundef nonnull align 8 dereferenceable(864) %7) #40
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.l
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.v ], [ %i.t, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.k
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %bb.w ], [ %i.s, %bb.k ]
  call void @_ZN6duckdb22TupleDataChunkIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %6) #40
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.j
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %bb.x ], [ %i.r, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.i
  %.pn24.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn.pn, %bb.y ], [ %i.q, %bb.i ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %4) #40
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.h
  %.pn24.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn.pn.pn, %bb.z ], [ %i.p, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn24.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb22TupleDataChunkIteratorC1ERNS_19TupleDataCollectionENS_22TupleDataPinPropertiesEmmb(ptr noundef nonnull align 8 dereferenceable(624), ptr noundef nonnull align 8 dereferenceable(192), i8 noundef zeroext, i64 noundef, i64 noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb13JoinHashTable11InsertStateD2Ev(ptr noundef nonnull align 8 dereferenceable(864) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.a) #40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.b) #40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.c) #40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !271  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !264
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !269
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #40, !inline_history !319
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #40, !inline_history !319
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #40
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !271  ; 8 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i1, label %_ZN6duckdb15SelectionVectorD2Ev.exit5, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.w, align 8, !tbaa !264
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !269
end_hunk_9
begin_hunk_10_@_ZN6duckdb13JoinHashTable13ScanStructure13NextInnerJoinERNS_9DataChunkES3_S3_:bb.a
bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aa, align 8, !tbaa !264
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !269
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #40, !inline_history !990
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #40, !inline_history !990
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit

bb.j:                                             ; preds = %bb.h
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.k ], [ %i.an, %bb.l ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.m, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, !prof !58

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #40
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit

_ZN6duckdb15SelectionVector10InitializeERKS0_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !424
  store ptr %i.ap, ptr %i.e, align 8, !tbaa !424
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !988
  store i64 0, ptr %i.d, align 8, !tbaa !988
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, %bb.c
  %.040 = phi i64 [ %i.r, %bb.c ], [ %i.aq, %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit ] ; 19 uses
  %.not46 = icmp eq i64 %.040, 0
  br i1 %.not46, label %bb.ar, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = add i64 %.040, %.095                    ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 2048
  br i1 %i.as, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !271 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.g, align 8, !tbaa !284
  %.not.i.i.i.i.i.i50 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i50, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i52, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i.i.i51 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i51, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i52

bb.s:                                             ; preds = %bb.q
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i52

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i52: ; preds = %bb.s, %bb.r, %bb.p
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !271 ; 8 uses
  store <2 x ptr> %i.au, ptr %i.h, align 8, !tbaa !284
  %.not.i.i.i.i.i53 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i53, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit57, label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i52
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bb, align 8, !tbaa !264
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !269
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #40, !inline_history !990
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #40, !inline_history !990
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit57

bb.v:                                             ; preds = %bb.t
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i5.i.i54 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i5.i.i54, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i55

bb.x:                                             ; preds = %bb.v
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i55

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i55: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i56 = phi i32 [ %i.be, %bb.w ], [ %i.bo, %bb.x ]
  %i.bp = icmp eq i32 %.0.i.i.i.i.i.i.i56, 1
  br i1 %i.bp, label %bb.y, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit57, !prof !58

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i55
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #40
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit57

_ZN6duckdb15SelectionVector10InitializeERKS0_.exit57: ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i52, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i55, %bb.y
  %i.bq = load ptr, ptr %i.e, align 8, !tbaa !424
  store ptr %i.bq, ptr %i.f, align 8, !tbaa !424
  store i64 %.040, ptr %i.d, align 8, !tbaa !988
  br label %.loopexit83

bb.z:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 464
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !841
  %i.bu = tail call noundef zeroext i1 @_ZN6duckdb19PropagatesBuildSideENS_8JoinTypeE(i8 noundef zeroext %i.bt)
  br i1 %i.bu, label %bb.aa, label %.loopexit82

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !427 ; 3 uses
  %xtraiter = and i64 %.040, 1
  %i.bw = icmp eq i64 %.040, 1
  br i1 %i.bw, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.aa
  %unroll_iter = and i64 %.040, -2
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, %.new
  %.04293 = phi i64 [ 0, %.new ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ]
  %i.bx = load ptr, ptr %i.e, align 8, !tbaa !424 ; 2 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.04293
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.ab, %bb.ac
  %i.cb = phi i64 [ %i.ca, %bb.ac ], [ %.04293, %bb.ab ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !382
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 344
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !870
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cg
  store i8 1, ptr %i.ch, align 1
  %i.ci = or disjoint i64 %.04293, 1              ; 2 uses
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !424 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.cj, null
  br i1 %.not.i.1, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = zext i32 %i.cl to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %bb.ad, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.cn = phi i64 [ %i.cm, %bb.ad ], [ %i.ci, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !382
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 344
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !870
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cs
  store i8 1, ptr %i.ct, align 1
  %i.cu = add nuw i64 %.04293, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit82.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !991

.loopexit82.loopexit.unr-lcssa:                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit82, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit82.loopexit.unr-lcssa, %bb.aa
  %.04293.epil.init = phi i64 [ 0, %bb.aa ], [ %i.cu, %.loopexit82.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod178 = trunc i64 %.040 to i1
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.cv = load ptr, ptr %i.e, align 8, !tbaa !424 ; 2 uses
  %.not.i.epil = icmp eq ptr %i.cv, null
  br i1 %.not.i.epil, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, label %bb.ae

bb.ae:                                            ; preds = %.epil.preheader
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.04293.epil.init
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = zext i32 %i.cx to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil: ; preds = %bb.ae, %.epil.preheader
  %i.cz = phi i64 [ %i.cy, %bb.ae ], [ %.04293.epil.init, %.epil.preheader ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !382
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 344
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !870
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.de
  store i8 1, ptr %i.df, align 1
  br label %.loopexit82

.loopexit82:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %.loopexit82.loopexit.unr-lcssa, %bb.z
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 464
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !841
  %.off = add i8 %i.di, -9
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.ar, label %bb.af

bb.af:                                            ; preds = %.loopexit82
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 321
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !869, !range !66, !noundef !69
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %.lr.ph.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.040, i64 noundef 0)
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 104
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !992, !nonnull !69, !align !336 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !37
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !40
  %.not102 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not102, label %._crit_edge, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.aq

._crit_edge:                                      ; preds = %bb.aq, %bb.ag
  %.lcssa = phi ptr [ %i.dm, %bb.ag ], [ %i.gt, %bb.aq ]
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !979 ; 9 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.lcssa, i64 321
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !869, !range !66, !noundef !69
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.ah, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit

bb.ah:                                            ; preds = %._crit_edge
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
  %i.dx = load ptr, ptr %i.l, align 8, !tbaa !427 ; 6 uses
  %.not17.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not17.i.i, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ah
  %i.dy = load ptr, ptr %i.o, align 8, !tbaa !424 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.dy, null
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 352
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !871 ; 6 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader: ; preds = %.lr.ph.i.i
  %xtraiter193 = and i64 %i.dt, 1
  %i.ec = icmp eq i64 %i.dt, 1
  br i1 %i.ec, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader
  %unroll_iter197 = and i64 %i.dt, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader: ; preds = %.lr.ph.i.i
  %xtraiter199 = and i64 %i.dt, 1
  %i.ed = icmp eq i64 %i.dt, 1
  br i1 %i.ed, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader
  %unroll_iter203 = and i64 %i.dt, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i: ; preds = %bb.ak, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new
  %.016.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new ], [ %.1.us.i.i.1, %bb.ak ] ; 3 uses
  %.01415.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new ], [ %i.er, %bb.ak ] ; 3 uses
  %niter204 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new ], [ %niter204.next.1, %bb.ak ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.01415.us.i.i ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !382
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eb
  %.val.val.us.i.i = load i64, ptr %i.eg, align 1 ; 2 uses
  %i.eh = inttoptr i64 %.val.val.us.i.i to ptr
  store ptr %i.eh, ptr %i.ee, align 8, !tbaa !382
  %.not.us.i.i = icmp eq i64 %.val.val.us.i.i, 0
  br i1 %.not.us.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1, label %bb.ai

bb.ai:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %i.ei = add i64 %.016.us.i.i, 1
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.016.us.i.i
  store i32 poison, ptr %i.ej, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1: ; preds = %bb.ai, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %.1.us.i.i = phi i64 [ %i.ei, %bb.ai ], [ %.016.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.01415.us.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !382
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eb
  %.val.val.us.i.i.1 = load i64, ptr %i.en, align 1 ; 2 uses
  %i.eo = inttoptr i64 %.val.val.us.i.i.1 to ptr
  store ptr %i.eo, ptr %i.el, align 8, !tbaa !382
  %.not.us.i.i.1 = icmp eq i64 %.val.val.us.i.i.1, 0
  br i1 %.not.us.i.i.1, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1
  %i.ep = add i64 %.1.us.i.i, 1
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.1.us.i.i
  store i32 poison, ptr %i.eq, align 4, !tbaa !3
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1
  %.1.us.i.i.1 = phi i64 [ %i.ep, %bb.aj ], [ %.1.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1 ] ; 3 uses
  %i.er = add nuw i64 %.01415.us.i.i, 2           ; 2 uses
  %niter204.next.1 = add nuw i64 %niter204, 2     ; 2 uses
  %niter204.ncmp.1 = icmp eq i64 %niter204.next.1, %unroll_iter203
  br i1 %niter204.ncmp.1, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i, !llvm.loop !993

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.an, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new
  %.016.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new ], [ %.1.i.i.1, %bb.an ] ; 3 uses
  %.01415.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new ], [ %i.fl, %bb.an ] ; 3 uses
  %niter198 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new ], [ %niter198.next.1, %bb.an ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.01415.i.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3  ; 2 uses
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.eu ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !382
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eb
  %.val.val.i.i = load i64, ptr %i.ex, align 1    ; 2 uses
  %i.ey = inttoptr i64 %.val.val.i.i to ptr
  store ptr %i.ey, ptr %i.ev, align 8, !tbaa !382
  %.not.i.i = icmp eq i64 %.val.val.i.i, 0
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1, label %bb.al

bb.al:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.ez = add i64 %.016.i.i, 1
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.016.i.i
  store i32 %i.et, ptr %i.fa, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1: ; preds = %bb.al, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %.1.i.i = phi i64 [ %i.ez, %bb.al ], [ %.016.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.01415.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3  ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.fe ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !382
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.eb
  %.val.val.i.i.1 = load i64, ptr %i.fh, align 1  ; 2 uses
  %i.fi = inttoptr i64 %.val.val.i.i.1 to ptr
  store ptr %i.fi, ptr %i.ff, align 8, !tbaa !382
  %.not.i.i.1 = icmp eq i64 %.val.val.i.i.1, 0
  br i1 %.not.i.i.1, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1
  %i.fj = add i64 %.1.i.i, 1
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.1.i.i
  store i32 %i.fd, ptr %i.fk, align 4, !tbaa !3
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1
  %.1.i.i.1 = phi i64 [ %i.fj, %bb.am ], [ %.1.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1 ] ; 3 uses
  %i.fl = add nuw i64 %.01415.i.i, 2              ; 2 uses
  %niter198.next.1 = add nuw i64 %niter198, 2     ; 2 uses
  %niter198.ncmp.1 = icmp eq i64 %niter198.next.1, %unroll_iter197
  br i1 %niter198.ncmp.1, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit165.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, !llvm.loop !993

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa: ; preds = %bb.ak
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader
  %.016.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader ], [ %.1.us.i.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa ] ; 3 uses
  %.01415.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader ], [ %i.er, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod202 = trunc i64 %i.dt to i1
  tail call void @llvm.assume(i1 %lcmp.mod202)
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.01415.us.i.i.epil.init ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !382
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.eb
  %.val.val.us.i.i.epil = load i64, ptr %i.fo, align 1 ; 2 uses
  %i.fp = inttoptr i64 %.val.val.us.i.i.epil to ptr
  store ptr %i.fp, ptr %i.fm, align 8, !tbaa !382
  %.not.us.i.i.epil = icmp eq i64 %.val.val.us.i.i.epil, 0
  br i1 %.not.us.i.i.epil, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader
  %i.fq = add i64 %.016.us.i.i.epil.init, 1
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.016.us.i.i.epil.init
  store i32 poison, ptr %i.fr, align 4, !tbaa !3
  br label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit165.unr-lcssa: ; preds = %bb.an
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit165.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader
  %.016.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader ], [ %.1.i.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit165.unr-lcssa ] ; 3 uses
  %.01415.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader ], [ %i.fl, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit165.unr-lcssa ]
  %lcmp.mod196 = trunc i64 %i.dt to i1
  tail call void @llvm.assume(i1 %lcmp.mod196)
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.01415.i.i.epil.init
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3  ; 2 uses
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.fu ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !382
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.eb
  %.val.val.i.i.epil = load i64, ptr %i.fx, align 1 ; 2 uses
  %i.fy = inttoptr i64 %.val.val.i.i.epil to ptr
  store ptr %i.fy, ptr %i.fv, align 8, !tbaa !382
  %.not.i.i.epil = icmp eq i64 %.val.val.i.i.epil, 0
  br i1 %.not.i.i.epil, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader
  %i.fz = add i64 %.016.i.i.epil.init, 1
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.016.i.i.epil.init
  store i32 %i.ft, ptr %i.ga, align 4, !tbaa !3
  br label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit165.unr-lcssa, %bb.ap, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa, %bb.ao, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader, %._crit_edge, %bb.ah
  %.0.lcssa.sink.i.i = phi i64 [ 0, %._crit_edge ], [ 0, %bb.ah ], [ %.016.us.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader ], [ %.1.us.i.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa ], [ %i.fq, %bb.ao ], [ %.1.i.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit165.unr-lcssa ], [ %i.fz, %bb.ap ], [ %.016.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader ]
  store i64 %.0.lcssa.sink.i.i, ptr %i.b, align 8, !tbaa !979
  br label %.loopexit

bb.aq:                                            ; preds = %.lr.ph97, %bb.aq
  %.04396 = phi i64 [ 0, %.lr.ph97 ], [ %i.gs, %bb.aq ] ; 3 uses
  %i.gb = load ptr, ptr %i.ds, align 8, !tbaa !410
  %i.gc = load ptr, ptr %2, align 8, !tbaa !411
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = sdiv exact i64 %i.gf, 104
  %i.gh = add i64 %i.gg, %.04396
  %i.gi = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.gh)
  %i.gj = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 104
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !992, !nonnull !69, !align !336
  %i.gm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, i64 noundef %.04396)
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !39
  %i.go = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  %i.gp = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 856
  %i.gr = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gq)
  tail call void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %i.gr, ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.040, i64 noundef %i.gn, ptr noundef nonnull align 8 dereferenceable(104) %i.gi, ptr noundef nonnull align 8 dereferenceable(24) %i.go, i64 0)
  %i.gs = add nuw i64 %.04396, 1                  ; 2 uses
  %i.gt = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 104
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !992, !nonnull !69, !align !336 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !37
  %i.gy = load ptr, ptr %i.gv, align 8, !tbaa !40
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = ashr exact i64 %i.hb, 3
  %i.hd = icmp ult i64 %i.gs, %i.hc
  br i1 %i.hd, label %bb.aq, label %._crit_edge, !llvm.loop !994

.lr.ph.i:                                         ; preds = %bb.af
  %i.he = load ptr, ptr %i.e, align 8, !tbaa !424 ; 8 uses
  %i.hf = ptrtoaddr ptr %i.he to i64
  %.not.i.i59 = icmp eq ptr %i.he, null
  %i.hg = load ptr, ptr %i.m, align 8, !tbaa !424 ; 2 uses
  %i.hh = ptrtoaddr ptr %i.hg to i64
  %i.hi = getelementptr [4 x i8], ptr %i.hg, i64 %.095 ; 8 uses
  %min.iters.check = icmp ult i64 %.040, 8        ; 2 uses
  br i1 %.not.i.i59, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader: ; preds = %.lr.ph.i
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader
  %i.hj = shl i64 %.095, 2
  %i.hk = add i64 %i.hj, %i.hh
  %i.hl = sub i64 %i.hf, %i.hk
  %diff.check = icmp ugt i64 %i.hl, -32
  br i1 %diff.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169, label %vector.ph155

vector.ph155:                                     ; preds = %vector.memcheck
  %n.vec157 = and i64 %.040, -8                   ; 3 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next161, %vector.body158 ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %index159 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %wide.load = load <4 x i32>, ptr %i.hm, align 4, !tbaa !3
  %wide.load160 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !3
  %i.ho = getelementptr [4 x i8], ptr %i.hi, i64 %index159 ; 2 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 16
  store <4 x i32> %wide.load, ptr %i.ho, align 4, !tbaa !3
  store <4 x i32> %wide.load160, ptr %i.hp, align 4, !tbaa !3
  %index.next161 = add nuw i64 %index159, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next161, %n.vec157
  br i1 %i.hq, label %middle.block162, label %vector.body158, !llvm.loop !995

middle.block162:                                  ; preds = %vector.body158
  %cmp.n163 = icmp eq i64 %.040, %n.vec157
  br i1 %cmp.n163, label %_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169: ; preds = %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader, %middle.block162
  %.011.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader ], [ %n.vec157, %middle.block162 ] ; 3 uses
  %xtraiter179 = and i64 %.040, 3                 ; 2 uses
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol
  %.011.i.prol = phi i64 [ %i.hu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ], [ %.011.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169 ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.011.i.prol
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.ht = getelementptr [4 x i8], ptr %i.hi, i64 %.011.i.prol
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !3
  %i.hu = add nuw i64 %.011.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter179
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol, !llvm.loop !996

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169
  %.011.i.unr = phi i64 [ %.011.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169 ], [ %i.hu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ]
  %i.hv = sub i64 %.011.i.ph, %.040
  %i.hw = icmp ugt i64 %i.hv, -4
  br i1 %i.hw, label %_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader: ; preds = %.lr.ph.i
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader168, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader
  %n.vec = and i64 %.040, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.hx = getelementptr [4 x i8], ptr %i.hi, i64 %index ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 16
  store <4 x i32> %vec.ind, ptr %i.hx, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.hy, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.hz = icmp eq i64 %index.next, %n.vec
  br i1 %i.hz, label %middle.block, label %vector.body, !llvm.loop !997

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.040, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader168

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader168: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, %middle.block
  %.011.us.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader168, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i
  %.011.us.i = phi i64 [ %i.ic, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i ], [ %.011.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader168 ] ; 3 uses
  %i.ia = trunc i64 %.011.us.i to i32
  %i.ib = getelementptr [4 x i8], ptr %i.hi, i64 %.011.us.i
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !3
  %i.ic = add nuw i64 %.011.us.i, 1               ; 2 uses
  %exitcond13.not.i = icmp eq i64 %i.ic, %.040
  br i1 %exitcond13.not.i, label %_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, !llvm.loop !998

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.011.i = phi i64 [ %i.is, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %.011.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit ] ; 6 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.011.i
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3
  %i.if = getelementptr [4 x i8], ptr %i.hi, i64 %.011.i
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !3
  %i.ig = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !3
  %i.ij = getelementptr [4 x i8], ptr %i.hi, i64 %i.ig
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !3
  %i.ik = add nuw i64 %.011.i, 2                  ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  %i.in = getelementptr [4 x i8], ptr %i.hi, i64 %i.ik
  store i32 %i.im, ptr %i.in, align 4, !tbaa !3
  %i.io = add nuw i64 %.011.i, 3                  ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !3
  %i.ir = getelementptr [4 x i8], ptr %i.hi, i64 %i.io
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !3
  %i.is = add nuw i64 %.011.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.is, %.040
  br i1 %exitcond.not.i.3, label %_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, !llvm.loop !999

_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, %middle.block162, %middle.block
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.040, i64 noundef 0, i64 noundef %.095)
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit82, %_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit, %bb.n
  %.1 = phi i64 [ %i.ar, %_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit ], [ %.095, %bb.n ], [ %.095, %.loopexit82 ] ; 3 uses
  %i.it = load i64, ptr %i.b, align 8, !tbaa !979 ; 9 uses
  %i.iu = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 321
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !869, !range !66, !noundef !69
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.as, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.thread

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
  %i.iy = load ptr, ptr %i.l, align 8, !tbaa !427 ; 6 uses
  %.not17.i.i61 = icmp eq i64 %i.it, 0
  br i1 %.not17.i.i61, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.thread, label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %bb.as
  %i.iz = load ptr, ptr %i.o, align 8, !tbaa !424 ; 7 uses
  %.not.i.i.i63 = icmp eq ptr %i.iz, null
  %i.ja = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 352
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !871 ; 6 uses
  br i1 %.not.i.i.i63, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader: ; preds = %.lr.ph.i.i62
  %xtraiter181 = and i64 %i.it, 1
  %i.jd = icmp eq i64 %i.it, 1
  br i1 %i.jd, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader
  %unroll_iter185 = and i64 %i.it, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader: ; preds = %.lr.ph.i.i62
  %xtraiter187 = and i64 %i.it, 1
  %i.je = icmp eq i64 %i.it, 1
  br i1 %i.je, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader
  %unroll_iter191 = and i64 %i.it, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71: ; preds = %bb.av, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader.new
  %.016.us.i.i72 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader.new ], [ %.1.us.i.i76.1, %bb.av ] ; 3 uses
  %.01415.us.i.i73 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader.new ], [ %i.js, %bb.av ] ; 3 uses
  %niter192 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader.new ], [ %niter192.next.1, %bb.av ]
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.01415.us.i.i73 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !382
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jc
  %.val.val.us.i.i74 = load i64, ptr %i.jh, align 1 ; 2 uses
  %i.ji = inttoptr i64 %.val.val.us.i.i74 to ptr
  store ptr %i.ji, ptr %i.jf, align 8, !tbaa !382
  %.not.us.i.i75 = icmp eq i64 %.val.val.us.i.i74, 0
  br i1 %.not.us.i.i75, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.1, label %bb.at

bb.at:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71
  %i.jj = add i64 %.016.us.i.i72, 1
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.016.us.i.i72
  store i32 poison, ptr %i.jk, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.1: ; preds = %bb.at, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71
  %.1.us.i.i76 = phi i64 [ %i.jj, %bb.at ], [ %.016.us.i.i72, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71 ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.01415.us.i.i73
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !382
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jc
  %.val.val.us.i.i74.1 = load i64, ptr %i.jo, align 1 ; 2 uses
  %i.jp = inttoptr i64 %.val.val.us.i.i74.1 to ptr
  store ptr %i.jp, ptr %i.jm, align 8, !tbaa !382
  %.not.us.i.i75.1 = icmp eq i64 %.val.val.us.i.i74.1, 0
  br i1 %.not.us.i.i75.1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.1
  %i.jq = add i64 %.1.us.i.i76, 1
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.1.us.i.i76
  store i32 poison, ptr %i.jr, align 4, !tbaa !3
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.1
  %.1.us.i.i76.1 = phi i64 [ %i.jq, %bb.au ], [ %.1.us.i.i76, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.1 ] ; 3 uses
  %i.js = add nuw i64 %.01415.us.i.i73, 2         ; 2 uses
  %niter192.next.1 = add nuw i64 %niter192, 2     ; 2 uses
  %niter192.ncmp.1 = icmp eq i64 %niter192.next.1, %unroll_iter191
  br i1 %niter192.ncmp.1, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71, !llvm.loop !993

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64: ; preds = %bb.ay, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader.new
  %.016.i.i65 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader.new ], [ %.1.i.i69.1, %bb.ay ] ; 3 uses
  %.01415.i.i66 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader.new ], [ %i.km, %bb.ay ] ; 3 uses
  %niter186 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader.new ], [ %niter186.next.1, %bb.ay ]
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.01415.i.i66
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !3  ; 2 uses
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jv ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !382
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jc
  %.val.val.i.i67 = load i64, ptr %i.jy, align 1  ; 2 uses
  %i.jz = inttoptr i64 %.val.val.i.i67 to ptr
  store ptr %i.jz, ptr %i.jw, align 8, !tbaa !382
  %.not.i.i68 = icmp eq i64 %.val.val.i.i67, 0
  br i1 %.not.i.i68, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.1, label %bb.aw

bb.aw:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64
  %i.ka = add i64 %.016.i.i65, 1
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.016.i.i65
  store i32 %i.ju, ptr %i.kb, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.1: ; preds = %bb.aw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64
  %.1.i.i69 = phi i64 [ %i.ka, %bb.aw ], [ %.016.i.i65, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64 ] ; 3 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.01415.i.i66
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !3  ; 2 uses
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.kf ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !382
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.jc
  %.val.val.i.i67.1 = load i64, ptr %i.ki, align 1 ; 2 uses
  %i.kj = inttoptr i64 %.val.val.i.i67.1 to ptr
  store ptr %i.kj, ptr %i.kg, align 8, !tbaa !382
  %.not.i.i68.1 = icmp eq i64 %.val.val.i.i67.1, 0
  br i1 %.not.i.i68.1, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.1
  %i.kk = add i64 %.1.i.i69, 1
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.1.i.i69
  store i32 %i.ke, ptr %i.kl, align 4, !tbaa !3
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.1
  %.1.i.i69.1 = phi i64 [ %i.kk, %bb.ax ], [ %.1.i.i69, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.1 ] ; 3 uses
  %i.km = add nuw i64 %.01415.i.i66, 2            ; 2 uses
  %niter186.next.1 = add nuw i64 %niter186, 2     ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.loopexit167.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64, !llvm.loop !993

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.thread: ; preds = %bb.ar, %bb.as
  store i64 0, ptr %i.b, align 8, !tbaa !979
  br label %.loopexit83

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.loopexit.unr-lcssa: ; preds = %bb.av
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.epil.preheader: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader
  %.016.us.i.i72.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader ], [ %.1.us.i.i76.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.loopexit.unr-lcssa ] ; 3 uses
  %.01415.us.i.i73.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader ], [ %i.js, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.loopexit.unr-lcssa ]
  %lcmp.mod190 = trunc i64 %i.it to i1
  tail call void @llvm.assume(i1 %lcmp.mod190)
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.01415.us.i.i73.epil.init ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !382
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.jc
  %.val.val.us.i.i74.epil = load i64, ptr %i.kp, align 1 ; 2 uses
  %i.kq = inttoptr i64 %.val.val.us.i.i74.epil to ptr
  store ptr %i.kq, ptr %i.kn, align 8, !tbaa !382
  %.not.us.i.i75.epil = icmp eq i64 %.val.val.us.i.i74.epil, 0
  br i1 %.not.us.i.i75.epil, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78, label %bb.az

bb.az:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.epil.preheader
  %i.kr = add i64 %.016.us.i.i72.epil.init, 1
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.016.us.i.i72.epil.init
  store i32 poison, ptr %i.ks, align 4, !tbaa !3
  br label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.loopexit167.unr-lcssa: ; preds = %bb.ay
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.epil.preheader: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.loopexit167.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader
  %.016.i.i65.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader ], [ %.1.i.i69.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.loopexit167.unr-lcssa ] ; 3 uses
  %.01415.i.i66.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader ], [ %i.km, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.loopexit167.unr-lcssa ]
  %lcmp.mod184 = trunc i64 %i.it to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.01415.i.i66.epil.init
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !3  ; 2 uses
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.kv ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !382
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.jc
  %.val.val.i.i67.epil = load i64, ptr %i.ky, align 1 ; 2 uses
  %i.kz = inttoptr i64 %.val.val.i.i67.epil to ptr
  store ptr %i.kz, ptr %i.kw, align 8, !tbaa !382
  %.not.i.i68.epil = icmp eq i64 %.val.val.i.i67.epil, 0
  br i1 %.not.i.i68.epil, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78, label %bb.ba

bb.ba:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.epil.preheader
  %i.la = add i64 %.016.i.i65.epil.init, 1
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.016.i.i65.epil.init
  store i32 %i.ku, ptr %i.lb, align 4, !tbaa !3
  br label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.loopexit167.unr-lcssa, %bb.ba, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.epil.preheader, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.loopexit.unr-lcssa, %bb.az, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.epil.preheader
  %.0.lcssa.sink.i.i60 = phi i64 [ %.016.us.i.i72.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.epil.preheader ], [ %.1.us.i.i76.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.loopexit.unr-lcssa ], [ %i.kr, %bb.az ], [ %.1.i.i69.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.loopexit167.unr-lcssa ], [ %i.la, %bb.ba ], [ %.016.i.i65.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.epil.preheader ] ; 2 uses
  store i64 %.0.lcssa.sink.i.i60, ptr %i.b, align 8, !tbaa !979
  %.not = icmp eq i64 %.0.lcssa.sink.i.i60, 0
  br i1 %.not, label %.loopexit83, label %bb.b, !llvm.loop !1000

.loopexit83:                                      ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.thread, %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit57
  %.089 = phi i64 [ %.095, %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit57 ], [ %.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.thread ], [ %.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78 ] ; 3 uses
  %.not49 = icmp eq i64 %.089, 0
  br i1 %.not49, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %.loopexit83
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.lc, i64 noundef %.089, i64 noundef 0)
  %i.ld = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 104
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !992, !nonnull !69, !align !336 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !37
  %i.li = load ptr, ptr %i.lf, align 8, !tbaa !40
  %.not103 = icmp eq ptr %i.lh, %i.li
  br i1 %.not103, label %.loopexit, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.bb
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph101, %bb.bc
  %.04199 = phi i64 [ 0, %.lr.ph101 ], [ %i.md, %bb.bc ] ; 3 uses
  %i.ll = load ptr, ptr %i.lj, align 8, !tbaa !410
  %i.lm = load ptr, ptr %2, align 8, !tbaa !411
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %i.lq = sdiv exact i64 %i.lp, 104
  %i.lr = add i64 %i.lq, %.04199
  %i.ls = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.lr)
  %i.lt = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 104
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !992, !nonnull !69, !align !336
  %i.lw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i64 noundef %.04199)
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !39
  %i.ly = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 856
  %i.ma = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lz)
  %i.mb = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  %i.mc = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  tail call void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %i.ma, ptr noundef nonnull align 8 dereferenceable(104) %i.lk, ptr noundef nonnull align 8 dereferenceable(24) %i.mb, i64 noundef %.089, i64 noundef %i.lx, ptr noundef nonnull align 8 dereferenceable(104) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %i.mc, i64 0)
  %i.md = add nuw i64 %.04199, 1                  ; 2 uses
  %i.me = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 104
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !992, !nonnull !69, !align !336 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !37
  %i.mj = load ptr, ptr %i.mg, align 8, !tbaa !40
  %i.mk = ptrtoint ptr %i.mi to i64
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = sub i64 %i.mk, %i.ml
  %i.mn = ashr exact i64 %i.mm, 3
  %i.mo = icmp ult i64 %i.md, %i.mn
  br i1 %i.mo, label %bb.bc, label %.loopexit, !llvm.loop !1001

.loopexit:                                        ; preds = %bb.bc, %bb.a, %bb.bb, %.loopexit83, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure12NextSemiJoinERNS_9DataChunkES3_S3_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb13JoinHashTable13ScanStructure14ScanKeyMatchesERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  tail call void @_ZN6duckdb13JoinHashTable13ScanStructure18NextSemiOrAntiJoinILb1EEEvRNS_9DataChunkES4_S4_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.a, align 8, !tbaa !978
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure12NextMarkJoinERNS_9DataChunkES3_S3_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  tail call void @_ZN6duckdb13JoinHashTable13ScanStructure14ScanKeyMatchesERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb13JoinHashTable13ScanStructure23ConstructMarkJoinResultERNS_9DataChunkES3_S3_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3)
  br label %bb.bt

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 496 ; 3 uses
  %i.i = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #40 ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #37
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 592 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !409
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 616 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !409
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 600 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !410
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !411
  %.not128 = icmp eq ptr %i.o, %i.p
  br i1 %.not128, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.r = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_25GroupedAggregateHashTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.j unwind label %bb.e       ; 6 uses

bb.e:                                             ; preds = %.noexc94, %.noexc93, %.noexc, %bb.k, %._crit_edge
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.f:                                             ; preds = %bb.h, %bb.g, %.lr.ph
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.i
  %.079118 = phi i64 [ %i.w, %bb.i ], [ 0, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  %i.u = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.079118)
          to label %bb.g unwind label %bb.f

bb.g:                                             ; preds = %.lr.ph
  %i.v = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.079118)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
end_hunk_10
begin_hunk_11_@_ZN6duckdb13JoinHashTable13ScanStructure23NextRightSemiOrAntiJoinERNS_9DataChunkE:bb.a
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1008

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader76

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader76: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, %middle.block
  %.015.us.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader76, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i
  %.015.us.i = phi i64 [ %i.ag, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i ], [ %.015.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader76 ] ; 3 uses
  %i.ae = trunc i64 %.015.us.i to i32
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.015.us.i
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !3
  %i.ag = add nuw i64 %.015.us.i, 1               ; 2 uses
  %exitcond18.not.i = icmp eq i64 %i.ag, %i.k
  br i1 %exitcond18.not.i, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, !llvm.loop !1009

._crit_edge.i:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, %middle.block72, %middle.block
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !989, !nonnull !69, !align !336 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 320
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !868, !range !66, !noundef !69
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.b, label %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.015.i = phi i64 [ %i.ba, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %.015.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.015.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.015.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  %i.ao = add nuw i64 %.015.i, 1                  ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ao
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !3
  %i.as = add nuw i64 %.015.i, 2                  ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.as
  store i32 %i.au, ptr %i.av, align 4, !tbaa !3
  %i.aw = add nuw i64 %.015.i, 3                  ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aw
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !3
  %i.ba = add nuw i64 %.015.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ba, %i.k
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, !llvm.loop !1010

bb.b:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 304
  %i.bc = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10RowMatcherESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
  %i.bd = load ptr, ptr %0, align 8, !tbaa !1011, !nonnull !69, !align !336
  %i.be = load i64, ptr %i.e, align 8, !tbaa !979
  %i.bf = call noundef i64 @_ZN6duckdb10RowMatcher5MatchERNS_9DataChunkERKNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS4_EEERNS_15SelectionVectorEmRNS_6VectorEPS9_Rm(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.be, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !989
  br label %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit

_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit: ; preds = %._crit_edge.i, %bb.b
  %i.bg = phi ptr [ %.pre.i, %bb.b ], [ %i.ah, %._crit_edge.i ]
  %.012.i = phi i64 [ %i.bf, %bb.b ], [ %i.k, %._crit_edge.i ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 488
  %i.bi = atomicrmw add ptr %i.bh, i64 %.012.i monotonic, align 8 ; 0 uses
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !989, !nonnull !69, !align !336 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 136
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !284
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !284
  %i.bo = icmp eq ptr %i.bl, %i.bn
  %.not42 = icmp eq i64 %.012.i, 0                ; 2 uses
  br i1 %i.bo, label %.preheader30, label %.preheader31

.preheader31:                                     ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit
  br i1 %.not42, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader31
  %xtraiter80 = and i64 %.012.i, 1
  %i.bp = icmp eq i64 %.012.i, 1
  br i1 %i.bp, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.012.i, -2
  br label %.lr.ph

.preheader30:                                     ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit
  br i1 %.not42, label %.loopexit, label %.lr.ph40

.lr.ph40:                                         ; preds = %.preheader30, %.thread
  %i.bq = phi ptr [ %i.ct, %.thread ], [ %i.bj, %.preheader30 ] ; 3 uses
  %.039 = phi i64 [ %i.cu, %.thread ], [ 0, %.preheader30 ] ; 3 uses
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !424 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph40
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.039
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = zext i32 %i.bt to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph40, %bb.c
  %i.bv = phi i64 [ %i.bu, %bb.c ], [ %.039, %.lr.ph40 ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bv ; 5 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !382
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 344
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !870
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz ; 2 uses
  %.0.copyload.i = load i8, ptr %i.ca, align 1
  %i.cb = trunc i8 %.0.copyload.i to i1
  br i1 %i.cb, label %bb.d, label %.preheader

.preheader:                                       ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  store i8 1, ptr %i.ca, align 1
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !382
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !989, !nonnull !69, !align !336 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 352
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !871
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf
  %.val.val35 = load i64, ptr %i.cg, align 1      ; 2 uses
  %.not36 = icmp eq i64 %.val.val35, 0
  br i1 %.not36, label %.thread, label %.lr.ph38

bb.d:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 936
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !382
  store ptr %i.ci, ptr %i.bw, align 8, !tbaa !382
  br label %.thread

.lr.ph38:                                         ; preds = %.preheader, %.lr.ph38
  %i.cj = phi ptr [ %i.cp, %.lr.ph38 ], [ %i.cd, %.preheader ]
  %.val.val37 = phi i64 [ %.val.val, %.lr.ph38 ], [ %.val.val35, %.preheader ]
  %i.ck = inttoptr i64 %.val.val37 to ptr         ; 2 uses
  store ptr %i.ck, ptr %i.bw, align 8, !tbaa !382
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 344
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !870
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cm
  store i8 1, ptr %i.cn, align 1
  %i.co = load ptr, ptr %i.bw, align 8, !tbaa !382
  %i.cp = load ptr, ptr %i.j, align 8, !tbaa !989, !nonnull !69, !align !336 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 352
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !871
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cr
  %.val.val = load i64, ptr %i.cs, align 1        ; 2 uses
  %.not = icmp eq i64 %.val.val, 0
  br i1 %.not, label %.thread, label %.lr.ph38

.thread:                                          ; preds = %.lr.ph38, %.preheader, %bb.d
  %i.ct = phi ptr [ %i.bq, %bb.d ], [ %i.cd, %.preheader ], [ %i.cp, %.lr.ph38 ] ; 2 uses
  %i.cu = add nuw i64 %.039, 1                    ; 2 uses
  %exitcond46.not = icmp eq i64 %i.cu, %.012.i
  br i1 %exitcond46.not, label %.loopexit, label %.lr.ph40, !llvm.loop !1012

.lr.ph:                                           ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit25.1, %.lr.ph.preheader.new
  %.02134 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ds, %_ZNK6duckdb15SelectionVector9get_indexEm.exit25.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit25.1 ]
  %i.cv = load ptr, ptr %i.h, align 8, !tbaa !424 ; 2 uses
  %.not.i24 = icmp eq ptr %i.cv, null
  br i1 %.not.i24, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit25, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.02134
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = zext i32 %i.cx to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit25

_ZNK6duckdb15SelectionVector9get_indexEm.exit25:  ; preds = %.lr.ph, %bb.e
  %i.cz = phi i64 [ %i.cy, %bb.e ], [ %.02134, %.lr.ph ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !382
  %i.dc = load ptr, ptr %i.j, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 344
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !870
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.de
  store i8 1, ptr %i.df, align 1
  %i.dg = or disjoint i64 %.02134, 1              ; 2 uses
  %i.dh = load ptr, ptr %i.h, align 8, !tbaa !424 ; 2 uses
  %.not.i24.1 = icmp eq ptr %i.dh, null
  br i1 %.not.i24.1, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit25.1, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit25
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = zext i32 %i.dj to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit25.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit25.1: ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit25
  %i.dl = phi i64 [ %i.dk, %bb.f ], [ %i.dg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit25 ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !382
  %i.do = load ptr, ptr %i.j, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 344
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !870
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dq
  store i8 1, ptr %i.dr, align 1
  %i.ds = add nuw i64 %.02134, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit44.unr-lcssa, label %.lr.ph, !llvm.loop !1013

.loopexit.loopexit44.unr-lcssa:                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit25.1
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.loopexit.loopexit44, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit44.unr-lcssa, %.lr.ph.preheader
  %.02134.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ds, %.loopexit.loopexit44.unr-lcssa ] ; 2 uses
  %lcmp.mod82 = trunc i64 %.012.i to i1
  call void @llvm.assume(i1 %lcmp.mod82)
  %i.dt = load ptr, ptr %i.h, align 8, !tbaa !424 ; 2 uses
  %.not.i24.epil = icmp eq ptr %i.dt, null
  br i1 %.not.i24.epil, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit25.epil, label %bb.g

bb.g:                                             ; preds = %.lr.ph.epil.preheader
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.02134.epil.init
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = zext i32 %i.dv to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit25.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit25.epil: ; preds = %bb.g, %.lr.ph.epil.preheader
  %i.dx = phi i64 [ %i.dw, %bb.g ], [ %.02134.epil.init, %.lr.ph.epil.preheader ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !382
  %i.ea = load ptr, ptr %i.j, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 344
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !870
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ec
  store i8 1, ptr %i.ed, align 1
  br label %.loopexit.loopexit44

.loopexit.loopexit44:                             ; preds = %.loopexit.loopexit44.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit25.epil
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !989
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %.loopexit.loopexit44, %.preheader31, %.preheader30
  %i.ee = phi ptr [ %.pre, %.loopexit.loopexit44 ], [ %i.bj, %.preheader30 ], [ %i.bj, %.preheader31 ], [ %i.ct, %.thread ]
  %i.ef = load i64, ptr %i.e, align 8, !tbaa !979 ; 9 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 321
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !869, !range !66, !noundef !69
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.h, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.thread

bb.h:                                             ; preds = %.loopexit
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.ej = load ptr, ptr %i.c, align 8, !tbaa !427 ; 6 uses
  %.not17.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not17.i.i, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.ek = load ptr, ptr %i.i, align 8, !tbaa !424 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.ek, null
  %i.el = load ptr, ptr %i.j, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 352
  %i.en = load i64, ptr %i.em, align 8, !tbaa !871 ; 6 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader: ; preds = %.lr.ph.i.i
  %xtraiter83 = and i64 %i.ef, 1
  %i.eo = icmp eq i64 %i.ef, 1
  br i1 %i.eo, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader
  %unroll_iter87 = and i64 %i.ef, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader: ; preds = %.lr.ph.i.i
  %xtraiter89 = and i64 %i.ef, 1
  %i.ep = icmp eq i64 %i.ef, 1
  br i1 %i.ep, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader
  %unroll_iter93 = and i64 %i.ef, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i: ; preds = %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new
  %.016.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new ], [ %.1.us.i.i.1, %bb.k ] ; 3 uses
  %.01415.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new ], [ %i.fd, %bb.k ] ; 3 uses
  %niter94 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new ], [ %niter94.next.1, %bb.k ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.01415.us.i.i ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !382
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.en
  %.val.val.us.i.i = load i64, ptr %i.es, align 1 ; 2 uses
  %i.et = inttoptr i64 %.val.val.us.i.i to ptr
  store ptr %i.et, ptr %i.eq, align 8, !tbaa !382
  %.not.us.i.i = icmp eq i64 %.val.val.us.i.i, 0
  br i1 %.not.us.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %i.eu = add i64 %.016.us.i.i, 1
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.016.us.i.i
  store i32 poison, ptr %i.ev, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1: ; preds = %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %.1.us.i.i = phi i64 [ %i.eu, %bb.i ], [ %.016.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.01415.us.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !382
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.en
  %.val.val.us.i.i.1 = load i64, ptr %i.ez, align 1 ; 2 uses
  %i.fa = inttoptr i64 %.val.val.us.i.i.1 to ptr
  store ptr %i.fa, ptr %i.ex, align 8, !tbaa !382
  %.not.us.i.i.1 = icmp eq i64 %.val.val.us.i.i.1, 0
  br i1 %.not.us.i.i.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1
  %i.fb = add i64 %.1.us.i.i, 1
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.1.us.i.i
  store i32 poison, ptr %i.fc, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1
  %.1.us.i.i.1 = phi i64 [ %i.fb, %bb.j ], [ %.1.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1 ] ; 3 uses
  %i.fd = add nuw i64 %.01415.us.i.i, 2           ; 2 uses
  %niter94.next.1 = add nuw i64 %niter94, 2       ; 2 uses
  %niter94.ncmp.1 = icmp eq i64 %niter94.next.1, %unroll_iter93
  br i1 %niter94.ncmp.1, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i, !llvm.loop !993

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.n, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new
  %.016.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new ], [ %.1.i.i.1, %bb.n ] ; 3 uses
  %.01415.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new ], [ %i.fx, %bb.n ] ; 3 uses
  %niter88 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new ], [ %niter88.next.1, %bb.n ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.01415.i.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3  ; 2 uses
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.fg ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !382
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.en
  %.val.val.i.i = load i64, ptr %i.fj, align 1    ; 2 uses
  %i.fk = inttoptr i64 %.val.val.i.i to ptr
  store ptr %i.fk, ptr %i.fh, align 8, !tbaa !382
  %.not.i.i26 = icmp eq i64 %.val.val.i.i, 0
  br i1 %.not.i.i26, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1, label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.fl = add i64 %.016.i.i, 1
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.016.i.i
  store i32 %i.ff, ptr %i.fm, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1: ; preds = %bb.l, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %.1.i.i = phi i64 [ %i.fl, %bb.l ], [ %.016.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.01415.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3  ; 2 uses
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.fq ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !382
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.en
  %.val.val.i.i.1 = load i64, ptr %i.ft, align 1  ; 2 uses
  %i.fu = inttoptr i64 %.val.val.i.i.1 to ptr
  store ptr %i.fu, ptr %i.fr, align 8, !tbaa !382
  %.not.i.i26.1 = icmp eq i64 %.val.val.i.i.1, 0
  br i1 %.not.i.i26.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1
  %i.fv = add i64 %.1.i.i, 1
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.1.i.i
  store i32 %i.fp, ptr %i.fw, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1
  %.1.i.i.1 = phi i64 [ %i.fv, %bb.m ], [ %.1.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1 ] ; 3 uses
  %i.fx = add nuw i64 %.01415.i.i, 2              ; 2 uses
  %niter88.next.1 = add nuw i64 %niter88, 2       ; 2 uses
  %niter88.ncmp.1 = icmp eq i64 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit75.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, !llvm.loop !993

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.thread: ; preds = %.loopexit, %bb.h
  store i64 0, ptr %i.e, align 8, !tbaa !979
  br label %._crit_edge

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader
  %.016.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader ], [ %.1.us.i.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa ] ; 3 uses
  %.01415.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader ], [ %i.fd, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod92 = trunc i64 %i.ef to i1
  call void @llvm.assume(i1 %lcmp.mod92)
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.01415.us.i.i.epil.init ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !382
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.en
  %.val.val.us.i.i.epil = load i64, ptr %i.ga, align 1 ; 2 uses
  %i.gb = inttoptr i64 %.val.val.us.i.i.epil to ptr
  store ptr %i.gb, ptr %i.fy, align 8, !tbaa !382
  %.not.us.i.i.epil = icmp eq i64 %.val.val.us.i.i.epil, 0
  br i1 %.not.us.i.i.epil, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader
  %i.gc = add i64 %.016.us.i.i.epil.init, 1
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.016.us.i.i.epil.init
  store i32 poison, ptr %i.gd, align 4, !tbaa !3
  br label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit75.unr-lcssa: ; preds = %bb.n
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit75.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader
  %.016.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader ], [ %.1.i.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit75.unr-lcssa ] ; 3 uses
  %.01415.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader ], [ %i.fx, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit75.unr-lcssa ]
  %lcmp.mod86 = trunc i64 %i.ef to i1
  call void @llvm.assume(i1 %lcmp.mod86)
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.01415.i.i.epil.init
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3  ; 2 uses
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.gg ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !382
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.en
  %.val.val.i.i.epil = load i64, ptr %i.gj, align 1 ; 2 uses
  %i.gk = inttoptr i64 %.val.val.i.i.epil to ptr
  store ptr %i.gk, ptr %i.gh, align 8, !tbaa !382
  %.not.i.i26.epil = icmp eq i64 %.val.val.i.i.epil, 0
  br i1 %.not.i.i26.epil, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader
  %i.gl = add i64 %.016.i.i.epil.init, 1
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.016.i.i.epil.init
  store i32 %i.gf, ptr %i.gm, align 4, !tbaa !3
  br label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit75.unr-lcssa, %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa, %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader
  %.0.lcssa.sink.i.i = phi i64 [ %.016.us.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader ], [ %.1.us.i.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa ], [ %i.gc, %bb.o ], [ %.1.i.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit75.unr-lcssa ], [ %i.gl, %bb.p ], [ %.016.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader ] ; 3 uses
  store i64 %.0.lcssa.sink.i.i, ptr %i.e, align 8, !tbaa !979
  %i.gn = icmp eq i64 %.0.lcssa.sink.i.i, 0
  br i1 %i.gn, label %._crit_edge, label %.lr.ph.i, !llvm.loop !1014

._crit_edge:                                      ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.thread, %bb.a
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.go, align 8, !tbaa !978
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure12NextLeftJoinERNS_9DataChunkES3_S3_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  tail call void @_ZN6duckdb13JoinHashTable13ScanStructure13NextInnerJoinERNS_9DataChunkES3_S3_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !409
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader unwind label %bb.c

_ZN6duckdb15SelectionVectorC2Em.exit.preheader:   ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !409  ; 5 uses
  %.not33 = icmp eq i64 %i.f, 0
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !317  ; 3 uses
  %i.i = load ptr, ptr %4, align 8                ; 3 uses
  %xtraiter = and i64 %i.f, 1
  %i.j = icmp eq i64 %i.f, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.f, -2
  br label %bb.e

common.resume:                                    ; preds = %bb.u, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.c ], [ %.pn, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.d) #40
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa, %.lr.ph
  %.030.epil.init = phi i64 [ 0, %.lr.ph ], [ %.1.1, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa ] ; 3 uses
  %.02729.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ae, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod40 = trunc i64 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod40)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.02729.epil.init
  %i.m = load i8, ptr %i.l, align 1, !tbaa !425, !range !66, !noundef !69
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %bb.d

bb.d:                                             ; preds = %.epil.preheader
  %i.o = add i64 %.030.epil.init, 1
  %i.p = trunc i64 %.02729.epil.init to i32
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.030.epil.init
  store i32 %i.p, ptr %i.q, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge:  ; preds = %.epil.preheader, %bb.d, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa
  %.1.lcssa = phi i64 [ %.1.1, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa ], [ %.030.epil.init, %.epil.preheader ], [ %i.o, %bb.d ] ; 2 uses
  %.not = icmp eq i64 %.1.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.h

bb.e:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.1, %.lr.ph.new
  %.030 = phi i64 [ 0, %.lr.ph.new ], [ %.1.1, %_ZN6duckdb15SelectionVectorC2Em.exit.1 ] ; 3 uses
  %.02729 = phi i64 [ 0, %.lr.ph.new ], [ %i.ae, %_ZN6duckdb15SelectionVectorC2Em.exit.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZN6duckdb15SelectionVectorC2Em.exit.1 ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %.02729
  %i.s = load i8, ptr %i.r, align 1, !tbaa !425, !range !66, !noundef !69
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN6duckdb15SelectionVectorC2Em.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add i64 %.030, 1
  %i.v = trunc i64 %.02729 to i32
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.030
  store i32 %i.v, ptr %i.w, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2Em.exit

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.f, %bb.e
  %.1 = phi i64 [ %.030, %bb.e ], [ %i.u, %bb.f ] ; 3 uses
  %i.x = or disjoint i64 %.02729, 1               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !425, !range !66, !noundef !69
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN6duckdb15SelectionVectorC2Em.exit.1, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.ab = add i64 %.1, 1
  %i.ac = trunc i64 %i.x to i32
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.1
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2Em.exit.1

_ZN6duckdb15SelectionVectorC2Em.exit.1:           ; preds = %bb.g, %_ZN6duckdb15SelectionVectorC2Em.exit
  %.1.1 = phi i64 [ %.1, %_ZN6duckdb15SelectionVectorC2Em.exit ], [ %i.ab, %bb.g ] ; 3 uses
  %i.ae = add nuw i64 %.02729, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa, label %bb.e, !llvm.loop !1015

bb.h:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  invoke void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.1.lcssa, i64 noundef 0)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !410
  %i.ah = load ptr, ptr %2, align 8, !tbaa !411
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !410
  %i.an = load ptr, ptr %3, align 8, !tbaa !411
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.ak, %i.aq
  br i1 %i.ar, label %.lr.ph32.preheader, label %.loopexit

.lr.ph32.preheader:                               ; preds = %bb.i
  %i.as = sdiv exact i64 %i.ak, 104
  br label %.lr.ph32

bb.j:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %bb.m
  %.02431 = phi i64 [ %i.av, %bb.m ], [ %i.as, %.lr.ph32.preheader ] ; 2 uses
  %i.au = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.02431)
          to label %bb.k unwind label %bb.n       ; 2 uses

bb.k:                                             ; preds = %.lr.ph32
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, i8 noundef zeroext 2)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %i.au, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = add nuw i64 %.02431, 1                  ; 2 uses
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !410
  %i.ax = load ptr, ptr %3, align 8, !tbaa !411
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 104
  %i.bc = icmp ult i64 %i.av, %i.bb
  br i1 %i.bc, label %.lr.ph32, label %.loopexit, !llvm.loop !1016

bb.n:                                             ; preds = %bb.l, %bb.k, %.lr.ph32
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit:                                        ; preds = %bb.m, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader, %bb.i, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.be, align 8, !tbaa !978
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !271 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bh, align 8, !tbaa !264
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !269
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #40, !inline_history !319
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #40, !inline_history !319
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.r ], [ %i.bu, %bb.s ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.t, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !58

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #40
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %.loopexit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.v

bb.u:                                             ; preds = %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %i.bd, %bb.n ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume

bb.v:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure14NextSingleJoinERNS_9DataChunkES3_S3_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.duckdb::SelectionVector", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader unwind label %bb.b

_ZN6duckdb15SelectionVectorC2Em.exit.preheader:   ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 10 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !979  ; 2 uses
  %.not140 = icmp eq i64 %i.e, 0
  br i1 %.not140, label %.preheader121, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.lr.ph.i

common.resume:                                    ; preds = %bb.bb, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %.pn61.pn.pn, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.c) #40
  br label %common.resume

.preheader121:                                    ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.thread, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %.042.lcssa = phi i64 [ 0, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader ], [ %.143.lcssa, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.thread ], [ %.143.lcssa, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit ] ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !410
  %i.p = load ptr, ptr %2, align 8, !tbaa !411
  %.not155 = icmp eq ptr %i.o, %i.p
  br i1 %.not155, label %.preheader120, label %.lr.ph145

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit
  %i.q = phi i64 [ %i.e, %.lr.ph.i.lr.ph ], [ %.0.lcssa.sink.i, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit ] ; 12 uses
  %.042141 = phi i64 [ 0, %.lr.ph.i.lr.ph ], [ %.143.lcssa, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit ] ; 6 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !424  ; 8 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !424  ; 9 uses
  %min.iters.check215 = icmp ult i64 %i.q, 8      ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader: ; preds = %.lr.ph.i
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = ptrtoaddr ptr %i.r to i64
  %i.v = sub i64 %i.u, %i.t
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond269 = select i1 %min.iters.check215, i1 true, i1 %diff.check
  br i1 %or.cond269, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader280, label %vector.ph230

vector.ph230:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader
  %n.vec232 = and i64 %i.q, -8                    ; 3 uses
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph230
  %index234 = phi i64 [ 0, %vector.ph230 ], [ %index.next236, %vector.body233 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index234 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
end_hunk_11
begin_hunk_12_@_ZN6duckdb13JoinHashTable13ScanStructure14NextSingleJoinERNS_9DataChunkES3_S3_:bb.a
  %i.gq = load ptr, ptr %2, align 8, !tbaa !411
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = sdiv exact i64 %i.gt, 104
  %i.gv = icmp ult i64 %i.go, %i.gu
  br i1 %i.gv, label %.lr.ph145, label %.preheader120, !llvm.loop !1025

._crit_edge151:                                   ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure12GatherResultERNS_6VectorERKNS_15SelectionVectorES6_mm.exit, %.preheader120
  %.lcssa = phi ptr [ %i.gc, %.preheader120 ], [ %i.ig, %_ZN6duckdb13JoinHashTable13ScanStructure12GatherResultERNS_6VectorERKNS_15SelectionVectorES6_mm.exit ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !409
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !409
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.gz, align 8, !tbaa !978
  %i.ha = getelementptr inbounds nuw i8, ptr %.lcssa, i64 480
  %i.hb = load i8, ptr %i.ha, align 8, !tbaa !845, !range !66, !noundef !69
  %i.hc = trunc nuw i8 %i.hb to i1
  %i.hd = icmp ne i64 %.042.lcssa, 0
  %or.cond = select i1 %i.hc, i1 %i.hd, i1 false
  br i1 %or.cond, label %bb.aa, label %bb.au

bb.t:                                             ; preds = %.lr.ph150, %_ZN6duckdb13JoinHashTable13ScanStructure12GatherResultERNS_6VectorERKNS_15SelectionVectorES6_mm.exit
  %.053149 = phi i64 [ 0, %.lr.ph150 ], [ %i.if, %_ZN6duckdb13JoinHashTable13ScanStructure12GatherResultERNS_6VectorERKNS_15SelectionVectorES6_mm.exit ] ; 3 uses
  %i.he = load ptr, ptr %i.n, align 8, !tbaa !410
  %i.hf = load ptr, ptr %2, align 8, !tbaa !411
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = sdiv exact i64 %i.hi, 104
  %i.hk = add i64 %i.hj, %.053149
  %i.hl = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.hk)
          to label %.preheader unwind label %bb.u ; 2 uses

.preheader:                                       ; preds = %bb.t
  %i.hm = load i64, ptr %i.gi, align 8, !tbaa !409 ; 2 uses
  %.not157 = icmp eq i64 %i.hm, 0
  br i1 %.not157, label %._crit_edge148, label %.lr.ph147

._crit_edge148:                                   ; preds = %bb.x, %.preheader
  %i.hn = load ptr, ptr %i.gb, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 104
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !992, !nonnull !69, !align !336
  %i.hq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hp, i64 noundef %.053149)
          to label %bb.y unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.v:                                             ; preds = %bb.w
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph147:                                        ; preds = %.preheader, %bb.x
  %i.ht = phi i64 [ %i.hy, %bb.x ], [ %i.hm, %.preheader ]
  %.046146 = phi i64 [ %i.hz, %bb.x ], [ 0, %.preheader ] ; 3 uses
  %i.hu = load ptr, ptr %i.gj, align 8, !tbaa !317
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.046146
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !425, !range !66, !noundef !69
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph147
  invoke void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %i.hl, i64 noundef %.046146, i1 noundef zeroext true)
          to label %._crit_edge168 unwind label %bb.v

._crit_edge168:                                   ; preds = %bb.w
  %.pre = load i64, ptr %i.gi, align 8, !tbaa !409
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge168, %.lr.ph147
  %i.hy = phi i64 [ %.pre, %._crit_edge168 ], [ %i.ht, %.lr.ph147 ] ; 2 uses
  %i.hz = add nuw i64 %.046146, 1                 ; 2 uses
  %i.ia = icmp ult i64 %i.hz, %i.hy
  br i1 %i.ia, label %.lr.ph147, label %._crit_edge148, !llvm.loop !1026

bb.y:                                             ; preds = %._crit_edge148
  %i.ib = load i64, ptr %i.hq, align 8, !tbaa !39
  %i.ic = load ptr, ptr %i.gb, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 856
  %i.ie = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.id)
          to label %.noexc74 unwind label %bb.z

.noexc74:                                         ; preds = %bb.y
  invoke void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %i.ie, ptr noundef nonnull align 8 dereferenceable(104) %i.gk, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.042.lcssa, i64 noundef %i.ib, ptr noundef nonnull align 8 dereferenceable(104) %i.hl, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 0)
          to label %_ZN6duckdb13JoinHashTable13ScanStructure12GatherResultERNS_6VectorERKNS_15SelectionVectorES6_mm.exit unwind label %bb.z

_ZN6duckdb13JoinHashTable13ScanStructure12GatherResultERNS_6VectorERKNS_15SelectionVectorES6_mm.exit: ; preds = %.noexc74
  %i.if = add nuw i64 %.053149, 1                 ; 2 uses
  %i.ig = load ptr, ptr %i.gb, align 8, !tbaa !989, !nonnull !69, !align !336 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 104
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !992, !nonnull !69, !align !336 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !37
  %i.il = load ptr, ptr %i.ii, align 8, !tbaa !40
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = ashr exact i64 %i.io, 3
  %i.iq = icmp ult i64 %i.if, %i.ip
  br i1 %i.iq, label %bb.t, label %._crit_edge151, !llvm.loop !1027

bb.z:                                             ; preds = %.noexc74, %bb.y, %._crit_edge148
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.aa:                                            ; preds = %._crit_edge151
  %i.is = getelementptr inbounds nuw i8, ptr %.lcssa, i64 321
  %i.it = load i8, ptr %i.is, align 1, !tbaa !869, !range !66, !noundef !69
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.ab, label %.thread

.thread:                                          ; preds = %bb.aa
  store i64 0, ptr %i.d, align 8, !tbaa !979
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %._crit_edge.i103

bb.ab:                                            ; preds = %bb.aa
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.iw)
          to label %.lr.ph.i79 unwind label %bb.ap

.lr.ph.i79:                                       ; preds = %bb.ab
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !427 ; 6 uses
  %i.iz = load ptr, ptr %4, align 8, !tbaa !424   ; 4 uses
  %.not.i.i80 = icmp eq ptr %i.iz, null
  %i.ja = load ptr, ptr %i.gb, align 8, !tbaa !989, !nonnull !69, !align !336 ; 7 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 352
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !871 ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  br i1 %.not.i.i80, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader: ; preds = %.lr.ph.i79
  %xtraiter302 = and i64 %.042.lcssa, 1
  %i.je = icmp eq i64 %.042.lcssa, 1
  br i1 %i.je, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader
  %unroll_iter306 = and i64 %.042.lcssa, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader: ; preds = %.lr.ph.i79
  %xtraiter308 = and i64 %.042.lcssa, 1
  %i.jf = icmp eq i64 %.042.lcssa, 1
  br i1 %i.jf, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader
  %unroll_iter312 = and i64 %.042.lcssa, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88: ; preds = %bb.ae, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader.new
  %.016.us.i89 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader.new ], [ %.1.us.i93.1, %bb.ae ] ; 3 uses
  %.01415.us.i90 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader.new ], [ %i.jx, %bb.ae ] ; 4 uses
  %niter313 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader.new ], [ %niter313.next.1, %bb.ae ]
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.01415.us.i90 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !382
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jc
  %.val.val.us.i91 = load i64, ptr %i.ji, align 1 ; 2 uses
  %i.jj = inttoptr i64 %.val.val.us.i91 to ptr
  store ptr %i.jj, ptr %i.jg, align 8, !tbaa !382
  %.not.us.i92 = icmp eq i64 %.val.val.us.i91, 0
  br i1 %.not.us.i92, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.1, label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88
  %i.jk = add i64 %.016.us.i89, 1
  %i.jl = trunc i64 %.01415.us.i90 to i32
  %i.jm = load ptr, ptr %i.jd, align 8, !tbaa !424
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %.016.us.i89
  store i32 %i.jl, ptr %i.jn, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.1: ; preds = %bb.ac, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88
  %.1.us.i93 = phi i64 [ %i.jk, %bb.ac ], [ %.016.us.i89, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88 ] ; 3 uses
  %i.jo = or disjoint i64 %.01415.us.i90, 1       ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jo ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !382
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jc
  %.val.val.us.i91.1 = load i64, ptr %i.jr, align 1 ; 2 uses
  %i.js = inttoptr i64 %.val.val.us.i91.1 to ptr
  store ptr %i.js, ptr %i.jp, align 8, !tbaa !382
  %.not.us.i92.1 = icmp eq i64 %.val.val.us.i91.1, 0
  br i1 %.not.us.i92.1, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.1
  %i.jt = add i64 %.1.us.i93, 1
  %i.ju = trunc i64 %i.jo to i32
  %i.jv = load ptr, ptr %i.jd, align 8, !tbaa !424
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.1.us.i93
  store i32 %i.ju, ptr %i.jw, align 4, !tbaa !3
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.1
  %.1.us.i93.1 = phi i64 [ %i.jt, %bb.ad ], [ %.1.us.i93, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.1 ] ; 3 uses
  %i.jx = add nuw i64 %.01415.us.i90, 2           ; 2 uses
  %niter313.next.1 = add nuw i64 %niter313, 2     ; 2 uses
  %niter313.ncmp.1 = icmp eq i64 %niter313.next.1, %unroll_iter312
  br i1 %niter313.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88, !llvm.loop !993

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81: ; preds = %bb.ah, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader.new
  %.016.i82 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader.new ], [ %.1.i86.1, %bb.ah ] ; 3 uses
  %.01415.i83 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader.new ], [ %i.kt, %bb.ah ] ; 3 uses
  %niter307 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader.new ], [ %niter307.next.1, %bb.ah ]
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.01415.i83
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !3  ; 2 uses
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.ka ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !382
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.jc
  %.val.val.i84 = load i64, ptr %i.kd, align 1    ; 2 uses
  %i.ke = inttoptr i64 %.val.val.i84 to ptr
  store ptr %i.ke, ptr %i.kb, align 8, !tbaa !382
  %.not.i85 = icmp eq i64 %.val.val.i84, 0
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.1, label %bb.af

bb.af:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81
  %i.kf = add i64 %.016.i82, 1
  %i.kg = load ptr, ptr %i.jd, align 8, !tbaa !424
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %.016.i82
  store i32 %i.jz, ptr %i.kh, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.1: ; preds = %bb.af, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81
  %.1.i86 = phi i64 [ %i.kf, %bb.af ], [ %.016.i82, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81 ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.01415.i83
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !3  ; 2 uses
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.kl ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !382
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.jc
  %.val.val.i84.1 = load i64, ptr %i.ko, align 1  ; 2 uses
  %i.kp = inttoptr i64 %.val.val.i84.1 to ptr
  store ptr %i.kp, ptr %i.km, align 8, !tbaa !382
  %.not.i85.1 = icmp eq i64 %.val.val.i84.1, 0
  br i1 %.not.i85.1, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.1
  %i.kq = add i64 %.1.i86, 1
  %i.kr = load ptr, ptr %i.jd, align 8, !tbaa !424
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %.1.i86
  store i32 %i.kk, ptr %i.ks, align 4, !tbaa !3
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.1
  %.1.i86.1 = phi i64 [ %i.kq, %bb.ag ], [ %.1.i86, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.1 ] ; 3 uses
  %i.kt = add nuw i64 %.01415.i83, 2              ; 2 uses
  %niter307.next.1 = add nuw i64 %niter307, 2     ; 2 uses
  %niter307.ncmp.1 = icmp eq i64 %niter307.next.1, %unroll_iter306
  br i1 %niter307.ncmp.1, label %.loopexit.loopexit274.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81, !llvm.loop !993

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ae
  %lcmp.mod309.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod309.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.epil.preheader: ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader
  %.016.us.i89.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader ], [ %.1.us.i93.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %.01415.us.i90.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader ], [ %i.jx, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod311 = trunc i64 %.042.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod311)
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.01415.us.i90.epil.init ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !382
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.jc
  %.val.val.us.i91.epil = load i64, ptr %i.kw, align 1 ; 2 uses
  %i.kx = inttoptr i64 %.val.val.us.i91.epil to ptr
  store ptr %i.kx, ptr %i.ku, align 8, !tbaa !382
  %.not.us.i92.epil = icmp eq i64 %.val.val.us.i91.epil, 0
  br i1 %.not.us.i92.epil, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.epil.preheader
  %i.ky = add i64 %.016.us.i89.epil.init, 1
  %i.kz = trunc i64 %.01415.us.i90.epil.init to i32
  %i.la = load ptr, ptr %i.jd, align 8, !tbaa !424
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %.016.us.i89.epil.init
  store i32 %i.kz, ptr %i.lb, align 4, !tbaa !3
  br label %.loopexit

.loopexit.loopexit274.unr-lcssa:                  ; preds = %bb.ah
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.epil.preheader: ; preds = %.loopexit.loopexit274.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader
  %.016.i82.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader ], [ %.1.i86.1, %.loopexit.loopexit274.unr-lcssa ] ; 3 uses
  %.01415.i83.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader ], [ %i.kt, %.loopexit.loopexit274.unr-lcssa ]
  %lcmp.mod305 = trunc i64 %.042.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod305)
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.01415.i83.epil.init
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !3  ; 2 uses
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.le ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !382
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.jc
  %.val.val.i84.epil = load i64, ptr %i.lh, align 1 ; 2 uses
  %i.li = inttoptr i64 %.val.val.i84.epil to ptr
  store ptr %i.li, ptr %i.lf, align 8, !tbaa !382
  %.not.i85.epil = icmp eq i64 %.val.val.i84.epil, 0
  br i1 %.not.i85.epil, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.epil.preheader
  %i.lj = add i64 %.016.i82.epil.init, 1
  %i.lk = load ptr, ptr %i.jd, align 8, !tbaa !424
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %.016.i82.epil.init
  store i32 %i.ld, ptr %i.ll, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit274.unr-lcssa, %bb.aj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ai, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.epil.preheader
  %.0.lcssa.sink.i77 = phi i64 [ %.016.us.i89.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.epil.preheader ], [ %.1.us.i93.1, %.loopexit.loopexit.unr-lcssa ], [ %i.ky, %bb.ai ], [ %.1.i86.1, %.loopexit.loopexit274.unr-lcssa ], [ %i.lj, %bb.aj ], [ %.016.i82.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.epil.preheader ] ; 16 uses
  store i64 %.0.lcssa.sink.i77, ptr %i.d, align 8, !tbaa !979
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %.not16.i97 = icmp eq i64 %.0.lcssa.sink.i77, 0
  br i1 %.not16.i97, label %._crit_edge.i103, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %.loopexit
  %i.ln = load ptr, ptr %i.jd, align 8, !tbaa !424 ; 8 uses
  %.not.i.i99 = icmp eq ptr %i.ln, null
  %i.lo = load ptr, ptr %i.lm, align 8, !tbaa !424 ; 9 uses
  %min.iters.check256 = icmp ult i64 %.0.lcssa.sink.i77, 8 ; 2 uses
  br i1 %.not.i.i99, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader: ; preds = %.lr.ph.i98
  %i.lp = ptrtoaddr ptr %i.lo to i64
  %i.lq = ptrtoaddr ptr %i.ln to i64
  %i.lr = sub i64 %i.lq, %i.lp
  %diff.check241 = icmp ugt i64 %i.lr, -32
  %or.cond270 = select i1 %min.iters.check256, i1 true, i1 %diff.check241
  br i1 %or.cond270, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272, label %vector.ph244

vector.ph244:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader
  %n.vec246 = and i64 %.0.lcssa.sink.i77, -8      ; 3 uses
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph244
  %index248 = phi i64 [ 0, %vector.ph244 ], [ %index.next251, %vector.body247 ] ; 3 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %index248 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %wide.load249 = load <4 x i32>, ptr %i.ls, align 4, !tbaa !3
  %wide.load250 = load <4 x i32>, ptr %i.lt, align 4, !tbaa !3
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %index248 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store <4 x i32> %wide.load249, ptr %i.lu, align 4, !tbaa !3
  store <4 x i32> %wide.load250, ptr %i.lv, align 4, !tbaa !3
  %index.next251 = add nuw i64 %index248, 8       ; 2 uses
  %i.lw = icmp eq i64 %index.next251, %n.vec246
  br i1 %i.lw, label %middle.block252, label %vector.body247, !llvm.loop !1028

middle.block252:                                  ; preds = %vector.body247
  %cmp.n253 = icmp eq i64 %.0.lcssa.sink.i77, %n.vec246
  br i1 %cmp.n253, label %._crit_edge.i103, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader, %middle.block252
  %.015.i101.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader ], [ %n.vec246, %middle.block252 ] ; 3 uses
  %xtraiter314 = and i64 %.0.lcssa.sink.i77, 3    ; 2 uses
  %lcmp.mod315.not = icmp eq i64 %xtraiter314, 0
  br i1 %lcmp.mod315.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol
  %.015.i101.prol = phi i64 [ %i.ma, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol ], [ %.015.i101.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272 ] ; 3 uses
  %prol.iter316 = phi i64 [ %prol.iter316.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272 ]
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %.015.i101.prol
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !3
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %.015.i101.prol
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !3
  %i.ma = add nuw i64 %.015.i101.prol, 1          ; 2 uses
  %prol.iter316.next = add i64 %prol.iter316, 1   ; 2 uses
  %prol.iter316.cmp.not = icmp eq i64 %prol.iter316.next, %xtraiter314
  br i1 %prol.iter316.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol, !llvm.loop !1029

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272
  %.015.i101.unr = phi i64 [ %.015.i101.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272 ], [ %i.ma, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol ]
  %i.mb = sub i64 %.015.i101.ph, %.0.lcssa.sink.i77
  %i.mc = icmp ugt i64 %i.mb, -4
  br i1 %i.mc, label %._crit_edge.i103, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader: ; preds = %.lr.ph.i98
  br i1 %min.iters.check256, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader271, label %vector.ph257

vector.ph257:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader
  %n.vec259 = and i64 %.0.lcssa.sink.i77, -8      ; 3 uses
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph257
  %index261 = phi i64 [ 0, %vector.ph257 ], [ %index.next264, %vector.body260 ] ; 2 uses
  %vec.ind262 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph257 ], [ %vec.ind.next265, %vector.body260 ] ; 3 uses
  %step.add263 = add <4 x i32> %vec.ind262, splat (i32 4)
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %index261 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store <4 x i32> %vec.ind262, ptr %i.md, align 4, !tbaa !3
  store <4 x i32> %step.add263, ptr %i.me, align 4, !tbaa !3
  %index.next264 = add nuw i64 %index261, 8       ; 2 uses
  %vec.ind.next265 = add <4 x i32> %vec.ind262, splat (i32 8)
  %i.mf = icmp eq i64 %index.next264, %n.vec259
  br i1 %i.mf, label %middle.block266, label %vector.body260, !llvm.loop !1030

middle.block266:                                  ; preds = %vector.body260
  %cmp.n267 = icmp eq i64 %.0.lcssa.sink.i77, %n.vec259
  br i1 %cmp.n267, label %._crit_edge.i103, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader271

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader271: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader, %middle.block266
  %.015.us.i107.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader ], [ %n.vec259, %middle.block266 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader271, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106
  %.015.us.i107 = phi i64 [ %i.mi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106 ], [ %.015.us.i107.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader271 ] ; 3 uses
  %i.mg = trunc i64 %.015.us.i107 to i32
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %.015.us.i107
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !3
  %i.mi = add nuw i64 %.015.us.i107, 1            ; 2 uses
  %exitcond18.not.i108 = icmp eq i64 %i.mi, %.0.lcssa.sink.i77
  br i1 %exitcond18.not.i108, label %._crit_edge.i103, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106, !llvm.loop !1031

._crit_edge.i103:                                 ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106, %middle.block252, %middle.block266, %.thread, %.loopexit
  %i.mj = phi ptr [ %.lcssa, %.thread ], [ %i.ja, %middle.block266 ], [ %i.ja, %.loopexit ], [ %i.ja, %middle.block252 ], [ %i.ja, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106 ], [ %i.ja, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100 ], [ %i.ja, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit ] ; 3 uses
  %i.mk = phi ptr [ %i.iv, %.thread ], [ %i.lm, %middle.block266 ], [ %i.lm, %.loopexit ], [ %i.lm, %middle.block252 ], [ %i.lm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106 ], [ %i.lm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100 ], [ %i.lm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit ]
  %.0.lcssa.sink.i77114 = phi i64 [ 0, %.thread ], [ %.0.lcssa.sink.i77, %middle.block266 ], [ 0, %.loopexit ], [ %.0.lcssa.sink.i77, %middle.block252 ], [ %.0.lcssa.sink.i77, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106 ], [ %.0.lcssa.sink.i77, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100 ], [ %.0.lcssa.sink.i77, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit ]
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 320
  %i.mm = load i8, ptr %i.ml, align 8, !tbaa !868, !range !66, !noundef !69
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.ak, label %bb.al

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100
  %.015.i101 = phi i64 [ %i.nd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100 ], [ %.015.i101.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit ] ; 6 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %.015.i101
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !3
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %.015.i101
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !3
  %i.mr = add nuw i64 %.015.i101, 1               ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !3
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.mr
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !3
  %i.mv = add nuw i64 %.015.i101, 2               ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !3
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.mv
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !3
  %i.mz = add nuw i64 %.015.i101, 3               ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !3
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.mz
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !3
  %i.nd = add nuw i64 %.015.i101, 4               ; 2 uses
  %exitcond.not.i102.3 = icmp eq i64 %i.nd, %.0.lcssa.sink.i77
  br i1 %exitcond.not.i102.3, label %._crit_edge.i103, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100, !llvm.loop !1032

bb.ak:                                            ; preds = %._crit_edge.i103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mj, i64 304
end_hunk_12
begin_hunk_13_@_ZN6duckdb13JoinHashTable13ScanStructure13ScanInnerJoinERNS_9DataChunkERNS_15SelectionVectorE:bb.a
  br i1 %.not16.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !424  ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  %i.j = load ptr, ptr %2, align 8, !tbaa !424    ; 9 uses
  %min.iters.check = icmp ult i64 %i.h, 8         ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader: ; preds = %.lr.ph.i
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = ptrtoaddr ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond66 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond66, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69, label %vector.ph56

vector.ph56:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader
  %n.vec58 = and i64 %i.h, -8                     ; 3 uses
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph56
  %index60 = phi i64 [ 0, %vector.ph56 ], [ %index.next62, %vector.body59 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index60 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !tbaa !3
  %wide.load61 = load <4 x i32>, ptr %i.o, align 4, !tbaa !3
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index60 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> %wide.load, ptr %i.p, align 4, !tbaa !3
  store <4 x i32> %wide.load61, ptr %i.q, align 4, !tbaa !3
  %index.next62 = add nuw i64 %index60, 8         ; 2 uses
  %i.r = icmp eq i64 %index.next62, %n.vec58
  br i1 %i.r, label %middle.block63, label %vector.body59, !llvm.loop !1038

middle.block63:                                   ; preds = %vector.body59
  %cmp.n64 = icmp eq i64 %i.h, %n.vec58
  br i1 %cmp.n64, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader, %middle.block63
  %.015.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader ], [ %n.vec58, %middle.block63 ] ; 3 uses
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol
  %.015.i.prol = phi i64 [ %i.v, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ], [ %.015.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69 ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.015.i.prol
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.015.i.prol
  store i32 %i.t, ptr %i.u, align 4, !tbaa !3
  %i.v = add nuw i64 %.015.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol, !llvm.loop !1039

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69
  %.015.i.unr = phi i64 [ %.015.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69 ], [ %i.v, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ]
  %i.w = sub i64 %.015.i.ph, %i.h
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader: ; preds = %.lr.ph.i
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader
  %n.vec = and i64 %i.h, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %vec.ind, ptr %i.y, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.z, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !1040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader68

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader68: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, %middle.block
  %.015.us.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader68, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i
  %.015.us.i = phi i64 [ %i.ad, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i ], [ %.015.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader68 ] ; 3 uses
  %i.ab = trunc i64 %.015.us.i to i32
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.015.us.i
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !3
  %i.ad = add nuw i64 %.015.us.i, 1               ; 2 uses
  %exitcond18.not.i = icmp eq i64 %i.ad, %i.h
  br i1 %exitcond18.not.i, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, !llvm.loop !1041

._crit_edge.i:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, %middle.block63, %middle.block, %bb.b
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !989, !nonnull !69, !align !336 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 320
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !868, !range !66, !noundef !69
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.c, label %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.015.i = phi i64 [ %i.ax, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %.015.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.015.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.015.i
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !3
  %i.al = add nuw i64 %.015.i, 1                  ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.al
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !3
  %i.ap = add nuw i64 %.015.i, 2                  ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ap
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !3
  %i.at = add nuw i64 %.015.i, 3                  ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.at
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %i.ax = add nuw i64 %.015.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ax, %i.h
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, !llvm.loop !1042

bb.c:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 304
  %i.az = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10RowMatcherESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1011, !nonnull !69, !align !336
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !979
  %i.bc = call noundef i64 @_ZN6duckdb10RowMatcher5MatchERNS_9DataChunkERKNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS4_EEERNS_15SelectionVectorEmRNS_6VectorEPS9_Rm(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !989
  br label %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit

_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bd = phi ptr [ %.pre.i, %bb.c ], [ %i.ae, %._crit_edge.i ]
  %.012.i = phi i64 [ %i.bc, %bb.c ], [ %i.h, %._crit_edge.i ] ; 11 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 488
  %i.bf = atomicrmw add ptr %i.be, i64 %.012.i monotonic, align 8 ; 0 uses
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !317 ; 7 uses
  %.not22 = icmp ne ptr %i.bg, null
  %i.bh = icmp ne i64 %.012.i, 0
  %or.cond = and i1 %.not22, %i.bh
  br i1 %or.cond, label %.lr.ph, label %.loopexit25

.lr.ph:                                           ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit
  %i.bi = load ptr, ptr %2, align 8, !tbaa !424   ; 6 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter89 = and i64 %.012.i, 3                ; 3 uses
  %i.bj = icmp ult i64 %.012.i, 4
  br i1 %i.bj, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter92 = and i64 %.012.i, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bg, i8 1, i64 %.012.i, i1 false), !tbaa !425
  br label %.thread

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.01328 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.cd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter93 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter93.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.01328
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bm
  store i8 1, ptr %i.bn, align 1, !tbaa !425
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.01328
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.br
  store i8 1, ptr %i.bs, align 1, !tbaa !425
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.01328
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bw
  store i8 1, ptr %i.bx, align 1, !tbaa !425
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.01328
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cb
  store i8 1, ptr %i.cc, align 1, !tbaa !425
  %i.cd = add nuw i64 %.01328, 4                  ; 2 uses
  %niter93.next.3 = add nuw i64 %niter93, 4       ; 2 uses
  %niter93.ncmp.3 = icmp eq i64 %niter93.next.3, %unroll_iter92
  br i1 %niter93.ncmp.3, label %.thread.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1043

.loopexit25:                                      ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit
  %.not = icmp eq i64 %.012.i, 0
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %.loopexit25
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !979 ; 9 uses
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 321
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !869, !range !66, !noundef !69
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.e, label %.thread19

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.cj = load ptr, ptr %i.g, align 8, !tbaa !427 ; 6 uses
  %.not17.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not17.i.i, label %.thread19, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ck = load ptr, ptr %i.d, align 8, !tbaa !424 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.ck, null
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 352
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !871 ; 6 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader: ; preds = %.lr.ph.i.i
  %xtraiter76 = and i64 %i.ce, 1
  %i.co = icmp eq i64 %i.ce, 1
  br i1 %i.co, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader
  %unroll_iter = and i64 %i.ce, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader: ; preds = %.lr.ph.i.i
  %xtraiter80 = and i64 %i.ce, 1
  %i.cp = icmp eq i64 %i.ce, 1
  br i1 %i.cp, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader
  %unroll_iter84 = and i64 %i.ce, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i: ; preds = %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new
  %.016.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new ], [ %.1.us.i.i.1, %bb.h ] ; 3 uses
  %.01415.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new ], [ %i.dd, %bb.h ] ; 3 uses
  %niter85 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new ], [ %niter85.next.1, %bb.h ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.01415.us.i.i ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !382
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cn
  %.val.val.us.i.i = load i64, ptr %i.cs, align 1 ; 2 uses
  %i.ct = inttoptr i64 %.val.val.us.i.i to ptr
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !382
  %.not.us.i.i = icmp eq i64 %.val.val.us.i.i, 0
  br i1 %.not.us.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %i.cu = add i64 %.016.us.i.i, 1
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.016.us.i.i
  store i32 poison, ptr %i.cv, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1: ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %.1.us.i.i = phi i64 [ %i.cu, %bb.f ], [ %.016.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.01415.us.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !382
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cn
  %.val.val.us.i.i.1 = load i64, ptr %i.cz, align 1 ; 2 uses
  %i.da = inttoptr i64 %.val.val.us.i.i.1 to ptr
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !382
  %.not.us.i.i.1 = icmp eq i64 %.val.val.us.i.i.1, 0
  br i1 %.not.us.i.i.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1
  %i.db = add i64 %.1.us.i.i, 1
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.1.us.i.i
  store i32 poison, ptr %i.dc, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1
  %.1.us.i.i.1 = phi i64 [ %i.db, %bb.g ], [ %.1.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1 ] ; 3 uses
  %i.dd = add nuw i64 %.01415.us.i.i, 2           ; 2 uses
  %niter85.next.1 = add nuw i64 %niter85, 2       ; 2 uses
  %niter85.ncmp.1 = icmp eq i64 %niter85.next.1, %unroll_iter84
  br i1 %niter85.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i, !llvm.loop !993

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new
  %.016.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new ], [ %.1.i.i.1, %bb.k ] ; 3 uses
  %.01415.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new ], [ %i.dx, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new ], [ %niter.next.1, %bb.k ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.01415.i.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3  ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dg ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !382
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.cn
  %.val.val.i.i = load i64, ptr %i.dj, align 1    ; 2 uses
  %i.dk = inttoptr i64 %.val.val.i.i to ptr
  store ptr %i.dk, ptr %i.dh, align 8, !tbaa !382
  %.not.i.i15 = icmp eq i64 %.val.val.i.i, 0
  br i1 %.not.i.i15, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.dl = add i64 %.016.i.i, 1
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.016.i.i
  store i32 %i.df, ptr %i.dm, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1: ; preds = %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %.1.i.i = phi i64 [ %i.dl, %bb.i ], [ %.016.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.01415.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3  ; 2 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dq ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !382
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.cn
  %.val.val.i.i.1 = load i64, ptr %i.dt, align 1  ; 2 uses
  %i.du = inttoptr i64 %.val.val.i.i.1 to ptr
  store ptr %i.du, ptr %i.dr, align 8, !tbaa !382
  %.not.i.i15.1 = icmp eq i64 %.val.val.i.i.1, 0
  br i1 %.not.i.i15.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1
  %i.dv = add i64 %.1.i.i, 1
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.1.i.i
  store i32 %i.dp, ptr %i.dw, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1
  %.1.i.i.1 = phi i64 [ %i.dv, %bb.j ], [ %.1.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1 ] ; 3 uses
  %i.dx = add nuw i64 %.01415.i.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit67.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, !llvm.loop !993

.thread19:                                        ; preds = %bb.d, %bb.e
  store i64 0, ptr %i.b, align 8, !tbaa !979
  br label %.thread

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader: ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader
  %.016.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader ], [ %.1.us.i.i.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %.01415.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader ], [ %i.dd, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod83 = trunc i64 %i.ce to i1
  call void @llvm.assume(i1 %lcmp.mod83)
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.01415.us.i.i.epil.init ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !382
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.cn
  %.val.val.us.i.i.epil = load i64, ptr %i.ea, align 1 ; 2 uses
  %i.eb = inttoptr i64 %.val.val.us.i.i.epil to ptr
  store ptr %i.eb, ptr %i.dy, align 8, !tbaa !382
  %.not.us.i.i.epil = icmp eq i64 %.val.val.us.i.i.epil, 0
  br i1 %.not.us.i.i.epil, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader
  %i.ec = add i64 %.016.us.i.i.epil.init, 1
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.016.us.i.i.epil.init
  store i32 poison, ptr %i.ed, align 4, !tbaa !3
  br label %.loopexit

.loopexit.loopexit67.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader: ; preds = %.loopexit.loopexit67.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader
  %.016.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader ], [ %.1.i.i.1, %.loopexit.loopexit67.unr-lcssa ] ; 3 uses
  %.01415.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader ], [ %i.dx, %.loopexit.loopexit67.unr-lcssa ]
  %lcmp.mod79 = trunc i64 %i.ce to i1
  call void @llvm.assume(i1 %lcmp.mod79)
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.01415.i.i.epil.init
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3  ; 2 uses
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.eg ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !382
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.cn
  %.val.val.i.i.epil = load i64, ptr %i.ej, align 1 ; 2 uses
  %i.ek = inttoptr i64 %.val.val.i.i.epil to ptr
  store ptr %i.ek, ptr %i.eh, align 8, !tbaa !382
  %.not.i.i15.epil = icmp eq i64 %.val.val.i.i.epil, 0
  br i1 %.not.i.i15.epil, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader
  %i.el = add i64 %.016.i.i.epil.init, 1
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.016.i.i.epil.init
  store i32 %i.ef, ptr %i.em, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit67.unr-lcssa, %bb.m, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.l, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader
  %.0.lcssa.sink.i.i = phi i64 [ %.016.us.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader ], [ %.1.us.i.i.1, %.loopexit.loopexit.unr-lcssa ], [ %i.ec, %bb.l ], [ %.1.i.i.1, %.loopexit.loopexit67.unr-lcssa ], [ %i.el, %bb.m ], [ %.016.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader ] ; 3 uses
  store i64 %.0.lcssa.sink.i.i, ptr %i.b, align 8, !tbaa !979
  %.not23 = icmp eq i64 %.0.lcssa.sink.i.i, 0
  br i1 %.not23, label %.thread, label %bb.b

.thread.loopexit.unr-lcssa:                       ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.thread, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %.thread.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.01328.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.cd, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod91 = icmp ne i64 %xtraiter89, 0
  call void @llvm.assume(i1 %lcmp.mod91)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %.01328.epil = phi i64 [ %i.er, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ %.01328.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.01328.epil
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ep
  store i8 1, ptr %i.eq, align 1, !tbaa !425
  %i.er = add nuw i64 %.01328.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter89
  br i1 %epil.iter.cmp.not, label %.thread, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, !llvm.loop !1044

.thread:                                          ; preds = %.loopexit25, %.loopexit, %.thread.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, %.thread19
  %.118 = phi i64 [ 0, %.thread19 ], [ %.012.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.012.i, %.thread.loopexit.unr-lcssa ], [ %.012.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ %.012.i, %.loopexit25 ], [ 0, %.loopexit ]
  ret i64 %.118
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv(ptr noundef nonnull align 8 dereferenceable(376) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !979  ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 321
  %i.g = load i8, ptr %i.f, align 1, !tbaa !869, !range !66, !noundef !69
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !427  ; 6 uses
  %.not17.i = icmp eq i64 %i.c, 0
  br i1 %.not17.i, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !424  ; 7 uses
  %.not.i.i = icmp eq ptr %i.l, null
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 352
  %i.o = load i64, ptr %i.n, align 8, !tbaa !871  ; 6 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader: ; preds = %.lr.ph.i
  %xtraiter = and i64 %i.c, 1
  %i.p = icmp eq i64 %i.c, 1
  br i1 %i.p, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader: ; preds = %.lr.ph.i
  %xtraiter11 = and i64 %i.c, 1
  %i.q = icmp eq i64 %i.c, 1
  br i1 %i.q, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader
  %unroll_iter15 = and i64 %i.c, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader.new
  %.016.us.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader.new ], [ %.1.us.i.1, %bb.e ] ; 3 uses
  %.01415.us.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader.new ], [ %i.ae, %bb.e ] ; 3 uses
  %niter16 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader.new ], [ %niter16.next.1, %bb.e ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01415.us.i ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !382
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o
  %.val.val.us.i = load i64, ptr %i.t, align 1    ; 2 uses
  %i.u = inttoptr i64 %.val.val.us.i to ptr
  store ptr %i.u, ptr %i.r, align 8, !tbaa !382
  %.not.us.i = icmp eq i64 %.val.val.us.i, 0
  br i1 %.not.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.1, label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i
  %i.v = add i64 %.016.us.i, 1
  %i.w = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.016.us.i
  store i32 poison, ptr %i.w, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.1: ; preds = %bb.c, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i
  %.1.us.i = phi i64 [ %i.v, %bb.c ], [ %.016.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01415.us.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !382
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.o
  %.val.val.us.i.1 = load i64, ptr %i.aa, align 1 ; 2 uses
  %i.ab = inttoptr i64 %.val.val.us.i.1 to ptr
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !382
  %.not.us.i.1 = icmp eq i64 %.val.val.us.i.1, 0
  br i1 %.not.us.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.1
  %i.ac = add i64 %.1.us.i, 1
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.1.us.i
  store i32 poison, ptr %i.ad, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.1
  %.1.us.i.1 = phi i64 [ %i.ac, %bb.d ], [ %.1.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.1 ] ; 3 uses
  %i.ae = add nuw i64 %.01415.us.i, 2             ; 2 uses
  %niter16.next.1 = add nuw i64 %niter16, 2       ; 2 uses
  %niter16.ncmp.1 = icmp eq i64 %niter16.next.1, %unroll_iter15
  br i1 %niter16.ncmp.1, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, !llvm.loop !993

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader.new
  %.016.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader.new ], [ %.1.i.1, %bb.h ] ; 3 uses
  %.01415.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader.new ], [ %i.ay, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01415.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3  ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !382
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.o
  %.val.val.i = load i64, ptr %i.ak, align 1      ; 2 uses
  %i.al = inttoptr i64 %.val.val.i to ptr
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !382
  %.not.i = icmp eq i64 %.val.val.i, 0
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.am = add i64 %.016.i, 1
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.016.i
  store i32 %i.ag, ptr %i.an, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1: ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1.i = phi i64 [ %i.am, %bb.f ], [ %.016.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01415.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3  ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !382
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.o
  %.val.val.i.1 = load i64, ptr %i.au, align 1    ; 2 uses
  %i.av = inttoptr i64 %.val.val.i.1 to ptr
  store ptr %i.av, ptr %i.as, align 8, !tbaa !382
  %.not.i.1 = icmp eq i64 %.val.val.i.1, 0
  br i1 %.not.i.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1
  %i.aw = add i64 %.1.i, 1
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1.i
  store i32 %i.aq, ptr %i.ax, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1
  %.1.i.1 = phi i64 [ %i.aw, %bb.g ], [ %.1.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1 ] ; 3 uses
  %i.ay = add nuw i64 %.01415.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit8.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, !llvm.loop !993

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod12.not = icmp eq i64 %xtraiter11, 0
  br i1 %lcmp.mod12.not, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil.preheader: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader
  %.016.us.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader ], [ %.1.us.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit.unr-lcssa ] ; 3 uses
  %.01415.us.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader ], [ %i.ae, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod14 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01415.us.i.epil.init ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !382
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.o
  %.val.val.us.i.epil = load i64, ptr %i.bb, align 1 ; 2 uses
  %i.bc = inttoptr i64 %.val.val.us.i.epil to ptr
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !382
  %.not.us.i.epil = icmp eq i64 %.val.val.us.i.epil, 0
  br i1 %.not.us.i.epil, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil.preheader
  %i.bd = add i64 %.016.us.i.epil.init, 1
  %i.be = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.016.us.i.epil.init
  store i32 poison, ptr %i.be, align 4, !tbaa !3
  br label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit8.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil.preheader: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit8.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader
  %.016.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader ], [ %.1.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit8.unr-lcssa ] ; 3 uses
  %.01415.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader ], [ %i.ay, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit8.unr-lcssa ]
  %lcmp.mod10 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01415.i.epil.init
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3  ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bh ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !382
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.o
  %.val.val.i.epil = load i64, ptr %i.bk, align 1 ; 2 uses
  %i.bl = inttoptr i64 %.val.val.i.epil to ptr
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !382
  %.not.i.epil = icmp eq i64 %.val.val.i.epil, 0
  br i1 %.not.i.epil, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil.preheader
  %i.bm = add i64 %.016.i.epil.init, 1
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.016.i.epil.init
  store i32 %i.bg, ptr %i.bn, align 4, !tbaa !3
  br label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit8.unr-lcssa, %bb.j, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil.preheader, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil.preheader, %bb.a, %bb.b
  %.0.lcssa.sink.i = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.016.us.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil.preheader ], [ %.1.us.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit.unr-lcssa ], [ %i.bd, %bb.i ], [ %.1.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit8.unr-lcssa ], [ %i.bm, %bb.j ], [ %.016.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil.preheader ]
  store i64 %.0.lcssa.sink.i, ptr %i.b, align 8, !tbaa !979
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 321
  %i.d = load i8, ptr %i.c, align 1, !tbaa !869, !range !66, !noundef !69
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !427  ; 6 uses
  %.not17 = icmp eq i64 %2, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !424    ; 4 uses
  %.not.i = icmp eq ptr %i.i, null
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 352
  %i.l = load i64, ptr %i.k, align 8, !tbaa !871  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %2, 1
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter28 = and i64 %2, 1
  %i.o = icmp eq i64 %2, 1
  br i1 %i.o, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter32 = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.016.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.1.us.1, %bb.e ] ; 3 uses
  %.01415.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.ag, %bb.e ] ; 4 uses
  %niter33 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter33.next.1, %bb.e ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.01415.us ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !382
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %.val.val.us = load i64, ptr %i.r, align 1      ; 2 uses
  %i.s = inttoptr i64 %.val.val.us to ptr
  store ptr %i.s, ptr %i.p, align 8, !tbaa !382
  %.not.us = icmp eq i64 %.val.val.us, 0
  br i1 %.not.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.t = add i64 %.016.us, 1
  %i.u = trunc i64 %.01415.us to i32
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !424
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.016.us
  store i32 %i.u, ptr %i.w, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.c, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.1.us = phi i64 [ %i.t, %bb.c ], [ %.016.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 3 uses
  %i.x = or disjoint i64 %.01415.us, 1            ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !382
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.l
  %.val.val.us.1 = load i64, ptr %i.aa, align 1   ; 2 uses
  %i.ab = inttoptr i64 %.val.val.us.1 to ptr
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !382
  %.not.us.1 = icmp eq i64 %.val.val.us.1, 0
  br i1 %.not.us.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.ac = add i64 %.1.us, 1
  %i.ad = trunc i64 %i.x to i32
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !424
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.1.us
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.1.us.1 = phi i64 [ %i.ac, %bb.d ], [ %.1.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.ag = add nuw i64 %.01415.us, 2               ; 2 uses
  %niter33.next.1 = add nuw i64 %niter33, 2       ; 2 uses
  %niter33.ncmp.1 = icmp eq i64 %niter33.next.1, %unroll_iter32
  br i1 %niter33.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !993

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.016 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.1.1, %bb.h ] ; 3 uses
  %.01415 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bc, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.01415
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3  ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !382
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.l
  %.val.val = load i64, ptr %i.am, align 1        ; 2 uses
  %i.an = inttoptr i64 %.val.val to ptr
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !382
  %.not = icmp eq i64 %.val.val, 0
  br i1 %.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ao = add i64 %.016, 1
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !424
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.016
  store i32 %i.ai, ptr %i.aq, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %.1 = phi i64 [ %i.ao, %bb.f ], [ %.016, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.01415
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !382
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.l
  %.val.val.1 = load i64, ptr %i.ax, align 1      ; 2 uses
  %i.ay = inttoptr i64 %.val.val.1 to ptr
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !382
  %.not.1 = icmp eq i64 %.val.val.1, 0
  br i1 %.not.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.az = add i64 %.1, 1
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !424
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.1
  store i32 %i.at, ptr %i.bb, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.1.1 = phi i64 [ %i.az, %bb.g ], [ %.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bc = add nuw i64 %.01415, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit25.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !993

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.016.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.1.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.01415.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod31 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.01415.us.epil.init ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !382
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.l
  %.val.val.us.epil = load i64, ptr %i.bf, align 1 ; 2 uses
  %i.bg = inttoptr i64 %.val.val.us.epil to ptr
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !382
  %.not.us.epil = icmp eq i64 %.val.val.us.epil, 0
  br i1 %.not.us.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.bh = add i64 %.016.us.epil.init, 1
  %i.bi = trunc i64 %.01415.us.epil.init to i32
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !424
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.016.us.epil.init
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge.loopexit25.unr-lcssa:                 ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit25.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.016.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.1.1, %._crit_edge.loopexit25.unr-lcssa ] ; 3 uses
  %.01415.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bc, %._crit_edge.loopexit25.unr-lcssa ]
  %lcmp.mod27 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.01415.epil.init
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3  ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bn ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !382
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.l
  %.val.val.epil = load i64, ptr %i.bq, align 1   ; 2 uses
  %i.br = inttoptr i64 %.val.val.epil to ptr
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !382
  %.not.epil = icmp eq i64 %.val.val.epil, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.bs = add i64 %.016.epil.init, 1
  %i.bt = load ptr, ptr %i.m, align 8, !tbaa !424
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.016.epil.init
  store i32 %i.bm, ptr %i.bu, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit25.unr-lcssa, %bb.j, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %bb.b, %bb.a
  %.0.lcssa.sink = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.016.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.1.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.bh, %bb.i ], [ %.1.1, %._crit_edge.loopexit25.unr-lcssa ], [ %i.bs, %bb.j ], [ %.016.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.0.lcssa.sink, ptr %i.bv, align 8, !tbaa !979
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure12GatherResultERNS_6VectorERKNS_15SelectionVectorES6_mm(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  %i.d = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 0)
  ret void
}

declare void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24), i64) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure12GatherResultERNS_6VectorERKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 856
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %i.e, ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure12GatherResultERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  %i.d = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  %i.g = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  tail call void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(376) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load ptr, ptr %2, align 8, !tbaa !424    ; 8 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %.not.i = icmp eq ptr %i.b, null
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = getelementptr [4 x i8], ptr %i.d, i64 %1 ; 8 uses
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %3, 16
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %i.g = shl i64 %1, 2
  %i.h = add i64 %i.g, %i.e
  %i.i = sub i64 %i.c, %i.h
  %diff.check = icmp ugt i64 %i.i, -32
  br i1 %diff.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !3
  %wide.load17 = load <4 x i32>, ptr %i.k, align 4, !tbaa !3
  %i.l = getelementptr [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  store <4 x i32> %wide.load, ptr %i.l, align 4, !tbaa !3
  store <4 x i32> %wide.load17, ptr %i.m, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !1045

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30: ; preds = %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol
  %.011.prol = phi i64 [ %i.r, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol ], [ %.011.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30 ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.011.prol
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = getelementptr [4 x i8], ptr %i.f, i64 %.011.prol
  store i32 %i.p, ptr %i.q, align 4, !tbaa !3
  %i.r = add nuw i64 %.011.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol, !llvm.loop !1046

_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30
  %.011.unr = phi i64 [ %.011.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30 ], [ %i.r, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol ]
  %i.s = sub i64 %.011.ph, %3
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %min.iters.check19 = icmp ult i64 %3, 8
  br i1 %min.iters.check19, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader29, label %vector.ph20

vector.ph20:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %n.vec22 = and i64 %3, -8                       ; 3 uses
  br label %vector.body23

vector.body23:                                    ; preds = %vector.body23, %vector.ph20
  %index24 = phi i64 [ 0, %vector.ph20 ], [ %index.next25, %vector.body23 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph20 ], [ %vec.ind.next, %vector.body23 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.u = getelementptr [4 x i8], ptr %i.f, i64 %index24 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <4 x i32> %vec.ind, ptr %i.u, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.v, align 4, !tbaa !3
  %index.next25 = add nuw i64 %index24, 8         ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.w = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.w, label %middle.block26, label %vector.body23, !llvm.loop !1047

middle.block26:                                   ; preds = %vector.body23
end_hunk_13
begin_hunk_14_@_ZN6duckdb13JoinHashTable13ScanStructure14ScanKeyMatchesERNS_9DataChunkE:bb.a
  %niter63.ncmp.1 = icmp eq i64 %niter63.next.1, %unroll_iter62
  br i1 %niter63.ncmp.1, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit50.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i10, !llvm.loop !993

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.thread: ; preds = %._crit_edge, %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !979
  br label %._crit_edge18

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod66.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod66.not, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i12.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i12.epil.preheader: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i12.preheader
  %.016.us.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i12.preheader ], [ %.1.us.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit.unr-lcssa ] ; 3 uses
  %.01415.us.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i12.preheader ], [ %i.dd, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i64 %i.bz to i1
  call void @llvm.assume(i1 %lcmp.mod68)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.01415.us.i.epil.init ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !382
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.cj
  %.val.val.us.i.epil = load i64, ptr %i.ec, align 1 ; 2 uses
  %i.ed = inttoptr i64 %.val.val.us.i.epil to ptr
  store ptr %i.ed, ptr %i.ea, align 8, !tbaa !382
  %.not.us.i.epil = icmp eq i64 %.val.val.us.i.epil, 0
  br i1 %.not.us.i.epil, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i12.epil.preheader
  %i.ee = add i64 %.016.us.i.epil.init, 1
  %i.ef = trunc i64 %.01415.us.i.epil.init to i32
  %i.eg = load ptr, ptr %i.f, align 8, !tbaa !424
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.016.us.i.epil.init
  store i32 %i.ef, ptr %i.eh, align 4, !tbaa !3
  br label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit50.unr-lcssa: ; preds = %bb.h
  %lcmp.mod59.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod59.not, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i10.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i10.epil.preheader: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit50.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i10.preheader
  %.016.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i10.preheader ], [ %.1.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit50.unr-lcssa ] ; 3 uses
  %.01415.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i10.preheader ], [ %i.dz, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit50.unr-lcssa ]
  %lcmp.mod61 = trunc i64 %i.bz to i1
  call void @llvm.assume(i1 %lcmp.mod61)
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.01415.i.epil.init
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3  ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ek ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !382
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.cj
  %.val.val.i.epil = load i64, ptr %i.en, align 1 ; 2 uses
  %i.eo = inttoptr i64 %.val.val.i.epil to ptr
  store ptr %i.eo, ptr %i.el, align 8, !tbaa !382
  %.not.i.epil = icmp eq i64 %.val.val.i.epil, 0
  br i1 %.not.i.epil, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i10.epil.preheader
  %i.ep = add i64 %.016.i.epil.init, 1
  %i.eq = load ptr, ptr %i.f, align 8, !tbaa !424
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %.016.i.epil.init
  store i32 %i.ej, ptr %i.er, align 4, !tbaa !3
  br label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit50.unr-lcssa, %bb.j, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i10.epil.preheader, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i12.epil.preheader
  %.0.lcssa.sink.i = phi i64 [ %.016.us.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i12.epil.preheader ], [ %.1.us.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit.unr-lcssa ], [ %i.ee, %bb.i ], [ %.1.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.loopexit50.unr-lcssa ], [ %i.ep, %bb.j ], [ %.016.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i10.epil.preheader ] ; 3 uses
  store i64 %.0.lcssa.sink.i, ptr %i.b, align 8, !tbaa !979
  %.not = icmp eq i64 %.0.lcssa.sink.i, 0
  br i1 %.not, label %._crit_edge18, label %.lr.ph.i, !llvm.loop !1056

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.016 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.fl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.016
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.eu
  store i8 1, ptr %i.ev, align 1, !tbaa !425
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.016
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ez
  store i8 1, ptr %i.fa, align 1, !tbaa !425
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.016
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.fe
  store i8 1, ptr %i.ff, align 1, !tbaa !425
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.016
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.fj
  store i8 1, ptr %i.fk, align 1, !tbaa !425
  %i.fl = add nuw i64 %.016, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1057

._crit_edge18:                                    ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13JoinHashTable13ScanStructure18NextSemiOrAntiJoinILb1EEEvRNS_9DataChunkES4_S4_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader unwind label %bb.b

_ZN6duckdb15SelectionVectorC2Em.exit.preheader:   ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !409  ; 5 uses
  %.not18 = icmp eq i64 %i.c, 0
  br i1 %.not18, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317  ; 3 uses
  %i.f = load ptr, ptr %4, align 8                ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %i.g = icmp eq i64 %i.c, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.c, -2
  br label %bb.d

common.resume:                                    ; preds = %bb.h, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.ac, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #40
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa, %.lr.ph
  %.01317.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ab, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa ] ; 2 uses
  %.01416.epil.init = phi i64 [ 0, %.lr.ph ], [ %.1.1, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod24 = trunc i64 %i.c to i1
  call void @llvm.assume(i1 %lcmp.mod24)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01317.epil.init
  %i.j = load i8, ptr %i.i, align 1, !tbaa !425, !range !66, !noundef !69
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge

bb.c:                                             ; preds = %.epil.preheader
  %i.l = add i64 %.01416.epil.init, 1
  %i.m = trunc i64 %.01317.epil.init to i32
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01416.epil.init
  store i32 %i.m, ptr %i.n, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge:  ; preds = %.epil.preheader, %bb.c, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa
  %.1.lcssa = phi i64 [ %.1.1, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa ], [ %i.l, %bb.c ], [ %.01416.epil.init, %.epil.preheader ] ; 2 uses
  %.not = icmp eq i64 %.1.lcssa, 0
  br i1 %.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread, label %bb.g

bb.d:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.1, %.lr.ph.new
  %.01317 = phi i64 [ 0, %.lr.ph.new ], [ %i.ab, %_ZN6duckdb15SelectionVectorC2Em.exit.1 ] ; 4 uses
  %.01416 = phi i64 [ 0, %.lr.ph.new ], [ %.1.1, %_ZN6duckdb15SelectionVectorC2Em.exit.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZN6duckdb15SelectionVectorC2Em.exit.1 ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01317
  %i.p = load i8, ptr %i.o, align 1, !tbaa !425, !range !66, !noundef !69
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %_ZN6duckdb15SelectionVectorC2Em.exit

bb.e:                                             ; preds = %bb.d
  %i.r = add i64 %.01416, 1
  %i.s = trunc i64 %.01317 to i32
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01416
  store i32 %i.s, ptr %i.t, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2Em.exit

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.e, %bb.d
  %.1 = phi i64 [ %i.r, %bb.e ], [ %.01416, %bb.d ] ; 3 uses
  %i.u = or disjoint i64 %.01317, 1               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !425, !range !66, !noundef !69
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %_ZN6duckdb15SelectionVectorC2Em.exit.1

bb.f:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.y = add i64 %.1, 1
  %i.z = trunc i64 %i.u to i32
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.1
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2Em.exit.1

_ZN6duckdb15SelectionVectorC2Em.exit.1:           ; preds = %bb.f, %_ZN6duckdb15SelectionVectorC2Em.exit
  %.1.1 = phi i64 [ %i.y, %bb.f ], [ %.1, %_ZN6duckdb15SelectionVectorC2Em.exit ] ; 3 uses
  %i.ab = add nuw i64 %.01317, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa, label %bb.d, !llvm.loop !1058

bb.g:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  invoke void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.1.lcssa, i64 noundef 0)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !271 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.af, align 8, !tbaa !264
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !269
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #40, !inline_history !319
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #40, !inline_history !319
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.l ], [ %i.as, %bb.m ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !58

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #40
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13JoinHashTable13ScanStructure18NextSemiOrAntiJoinILb0EEEvRNS_9DataChunkES4_S4_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader unwind label %bb.b

_ZN6duckdb15SelectionVectorC2Em.exit.preheader:   ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !409  ; 5 uses
  %.not18 = icmp eq i64 %i.c, 0
  br i1 %.not18, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317  ; 3 uses
  %i.f = load ptr, ptr %4, align 8                ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %i.g = icmp eq i64 %i.c, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.c, -2
  br label %bb.d

common.resume:                                    ; preds = %bb.h, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.ac, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #40
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa, %.lr.ph
  %.01317.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ab, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa ] ; 2 uses
  %.01416.epil.init = phi i64 [ 0, %.lr.ph ], [ %.1.1, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod24 = trunc i64 %i.c to i1
  call void @llvm.assume(i1 %lcmp.mod24)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01317.epil.init
  %i.j = load i8, ptr %i.i, align 1, !tbaa !425, !range !66, !noundef !69
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge

bb.c:                                             ; preds = %.epil.preheader
  %i.l = add i64 %.01416.epil.init, 1
  %i.m = trunc i64 %.01317.epil.init to i32
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01416.epil.init
  store i32 %i.m, ptr %i.n, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge:  ; preds = %.epil.preheader, %bb.c, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa
  %.1.lcssa = phi i64 [ %.1.1, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa ], [ %i.l, %bb.c ], [ %.01416.epil.init, %.epil.preheader ] ; 2 uses
  %.not = icmp eq i64 %.1.lcssa, 0
  br i1 %.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread, label %bb.g

bb.d:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.1, %.lr.ph.new
  %.01317 = phi i64 [ 0, %.lr.ph.new ], [ %i.ab, %_ZN6duckdb15SelectionVectorC2Em.exit.1 ] ; 4 uses
  %.01416 = phi i64 [ 0, %.lr.ph.new ], [ %.1.1, %_ZN6duckdb15SelectionVectorC2Em.exit.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZN6duckdb15SelectionVectorC2Em.exit.1 ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01317
  %i.p = load i8, ptr %i.o, align 1, !tbaa !425, !range !66, !noundef !69
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.e, label %_ZN6duckdb15SelectionVectorC2Em.exit

bb.e:                                             ; preds = %bb.d
  %i.r = add i64 %.01416, 1
  %i.s = trunc i64 %.01317 to i32
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01416
  store i32 %i.s, ptr %i.t, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2Em.exit

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.e, %bb.d
  %.1 = phi i64 [ %i.r, %bb.e ], [ %.01416, %bb.d ] ; 3 uses
  %i.u = or disjoint i64 %.01317, 1               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !425, !range !66, !noundef !69
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.f, label %_ZN6duckdb15SelectionVectorC2Em.exit.1

bb.f:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.y = add i64 %.1, 1
  %i.z = trunc i64 %i.u to i32
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.1
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2Em.exit.1

_ZN6duckdb15SelectionVectorC2Em.exit.1:           ; preds = %bb.f, %_ZN6duckdb15SelectionVectorC2Em.exit
  %.1.1 = phi i64 [ %i.y, %bb.f ], [ %.1, %_ZN6duckdb15SelectionVectorC2Em.exit ] ; 3 uses
  %i.ab = add nuw i64 %.01317, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa, label %bb.d, !llvm.loop !1059

bb.g:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  invoke void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.1.lcssa, i64 noundef 0)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !271 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.af, align 8, !tbaa !264
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !269
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #40, !inline_history !319
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #40, !inline_history !319
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.l ], [ %i.as, %bb.m ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !58

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #40
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure23ConstructMarkJoinResultERNS_9DataChunkES3_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) initializes((24, 32)) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !409
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.b, ptr %i.c, align 8, !tbaa !409
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !410
  %i.f = load ptr, ptr %2, align 8, !tbaa !411
  %.not69 = icmp eq ptr %i.e, %i.f
  br i1 %.not69, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 7 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !427  ; 9 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !410
  %i.n = load ptr, ptr %1, align 8, !tbaa !411
  %.not70 = icmp eq ptr %i.m, %i.n
  br i1 %.not70, label %.preheader55, label %.lr.ph63

.lr.ph63:                                         ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04358 = phi i64 [ %i.w, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.04358)
  %i.v = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.04358)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.u, ptr noundef nonnull align 8 dereferenceable(104) %i.v)
  %i.w = add nuw i64 %.04358, 1                   ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !410
  %i.y = load ptr, ptr %2, align 8, !tbaa !411
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 104
  %i.ad = icmp ult i64 %i.w, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !1060

.preheader55:                                     ; preds = %bb.y, %._crit_edge
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !409 ; 12 uses
  %.not72 = icmp eq i64 %i.ae, 0
  br i1 %.not72, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader55
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !317 ; 8 uses
  %min.iters.check = icmp ult i64 %i.ae, 4
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.j
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check86 = icmp ult i64 %i.ae, 32
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ae, 28
  %n.vec = and i64 %i.ae, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !tbaa !425
  %wide.load87 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !425
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <16 x i8> %wide.load, ptr %i.al, align 1, !tbaa !425
  store <16 x i8> %wide.load87, ptr %i.am, align 1, !tbaa !425
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1061

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge66.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1062

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.ae, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index90
  %wide.load91 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !425
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 %index90
  store <4 x i8> %wide.load91, ptr %i.ap, align 1, !tbaa !425
  %index.next92 = add nuw i64 %index90, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next92, %n.vec89
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1063

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n93 = icmp eq i64 %i.ae, %n.vec89
  br i1 %cmp.n93, label %._crit_edge66.thread, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04264.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec89, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.04264.prol = phi i64 [ %i.au, %vec.epilog.scalar.ph.prol ], [ %.04264.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.04264.prol
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !425, !range !66, !noundef !69
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 %.04264.prol
  store i8 %i.as, ptr %i.at, align 1, !tbaa !425
end_hunk_14
begin_hunk_15_@_ZN6duckdb25PerfectAggregateHashTable8AddChunkERNS_9DataChunkES2_:bb.a
  %i.as = and i64 %i.ar, %i.aq
  %.not.us.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.us.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.036.us.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !272
  %i.av = sext i8 %i.au to i64
  %i.aw = add nsw i64 %i.am, %i.av
  %i.ax = shl i64 %i.aw, %i.z
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.036.us.i.i ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !39
  %i.ba = add i64 %i.ax, %i.az
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i
  %i.bb = add nuw i64 %.036.us.i.i, 1             ; 2 uses
  %exitcond44.not.i.i = icmp eq i64 %i.bb, %i.ac
  br i1 %exitcond44.not.i.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i.i, !llvm.loop !1262

.preheader.i.i:                                   ; preds = %.noexc43.i
  br i1 %.not40.i.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %.lr.ph38.i.i

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i
  %i.bc = load ptr, ptr %3, align 8, !tbaa !718
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !424 ; 4 uses
  %.not.i31.i.i = icmp eq ptr %i.bd, null
  %i.be = sext i8 %i.ah to i64
  %i.bf = sub nsw i64 1, %i.be                    ; 7 uses
  br i1 %.not.i31.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.preheader: ; preds = %.lr.ph38.i.i
  %xtraiter482 = and i64 %i.ac, 1
  %i.bg = icmp eq i64 %i.ac, 1
  br i1 %i.bg, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.preheader
  %unroll_iter485 = and i64 %i.ac, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.preheader: ; preds = %.lr.ph38.i.i
  %min.iters.check = icmp ult i64 %i.ac, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.preheader406, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.preheader
  %i.bh = shl i64 %i.ac, 3
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.bh
  %scevgep249 = getelementptr i8, ptr %i.ag, i64 %i.ac
  %bound0 = icmp ult ptr %i.d, %scevgep249
  %bound1 = icmp ult ptr %i.ag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.preheader406, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert250 = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat251 = shufflevector <2 x i64> %broadcast.splatinsert250, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %wide.load = load <2 x i8>, ptr %i.bi, align 1, !tbaa !272, !alias.scope !1263
  %wide.load252 = load <2 x i8>, ptr %i.bj, align 1, !tbaa !272, !alias.scope !1263
  %i.bk = sext <2 x i8> %wide.load to <2 x i64>
  %i.bl = sext <2 x i8> %wide.load252 to <2 x i64>
  %i.bm = add nsw <2 x i64> %broadcast.splat, %i.bk
  %i.bn = add nsw <2 x i64> %broadcast.splat, %i.bl
  %i.bo = shl <2 x i64> %i.bm, %broadcast.splat251
  %i.bp = shl <2 x i64> %i.bn, %broadcast.splat251
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.load253 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !39, !alias.scope !1266, !noalias !1263
  %wide.load254 = load <2 x i64>, ptr %i.br, align 8, !tbaa !39, !alias.scope !1266, !noalias !1263
  %i.bs = add <2 x i64> %i.bo, %wide.load253
  %i.bt = add <2 x i64> %i.bp, %wide.load254
  store <2 x i64> %i.bs, ptr %i.bq, align 8, !tbaa !39, !alias.scope !1266, !noalias !1263
  store <2 x i64> %i.bt, ptr %i.br, align 8, !tbaa !39, !alias.scope !1266, !noalias !1263
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !1268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.preheader406

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.preheader406: ; preds = %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.preheader, %middle.block
  %.02837.us.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg491 = or disjoint i64 %.02837.us.i.i.ph, 1
  %xtraiter487 = and i64 %i.ac, 1
  %lcmp.mod488.not = icmp eq i64 %xtraiter487, 0
  br i1 %lcmp.mod488.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.preheader406
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.02837.us.i.i.ph
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !272
  %i.bx = sext i8 %i.bw to i64
  %i.by = add nsw i64 %i.bf, %i.bx
  %i.bz = shl i64 %i.by, %i.z
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02837.us.i.i.ph ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !39
  %i.cc = add i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !39
  %i.cd = or disjoint i64 %.02837.us.i.i.ph, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.preheader406
  %.02837.us.i.i.unr = phi i64 [ %.02837.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.preheader406 ], [ %i.cd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.prol ]
  %i.ce = icmp eq i64 %i.ac, %.neg491
  br i1 %i.ce, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i
  %.02837.us.i.i = phi i64 [ %i.cw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i ], [ %.02837.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i.prol.loopexit ] ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.02837.us.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !272
  %i.ch = sext i8 %i.cg to i64
  %i.ci = add nsw i64 %i.bf, %i.ch
  %i.cj = shl i64 %i.ci, %i.z
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02837.us.i.i ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !39
  %i.cm = add i64 %i.cj, %i.cl
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !39
  %i.cn = add nuw i64 %.02837.us.i.i, 1           ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !272
  %i.cq = sext i8 %i.cp to i64
  %i.cr = add nsw i64 %i.bf, %i.cq
  %i.cs = shl i64 %i.cr, %i.z
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cn ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !39
  %i.cv = add i64 %i.cs, %i.cu
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !39
  %i.cw = add nuw i64 %.02837.us.i.i, 2           ; 2 uses
  %exitcond46.not.i.i.1 = icmp eq i64 %i.cw, %i.ac
  br i1 %exitcond46.not.i.i.1, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i.i, !llvm.loop !1269

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %.lr.ph.i.i, %bb.i
  %.036.i.i = phi i64 [ %i.do, %bb.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.036.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = zext i32 %i.cy to i64                   ; 3 uses
  %i.da = lshr i64 %i.cz, 6
  %i.db = and i64 %i.cz, 63
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.da
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !39
  %i.de = shl nuw i64 1, %i.db
  %i.df = and i64 %i.de, %i.dd
  %.not.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.cz
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !272
  %i.di = sext i8 %i.dh to i64
  %i.dj = add nsw i64 %i.am, %i.di
  %i.dk = shl i64 %i.dj, %i.z
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.036.i.i ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !39
  %i.dn = add i64 %i.dk, %i.dm
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i
  %i.do = add nuw i64 %.036.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.do, %i.ac
  br i1 %exitcond.not.i.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i, !llvm.loop !1262

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.preheader.new
  %.02837.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.preheader.new ], [ %i.em, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i ] ; 4 uses
  %niter486 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.preheader.new ], [ %niter486.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.02837.i.i
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !272
  %i.du = sext i8 %i.dt to i64
  %i.dv = add nsw i64 %i.bf, %i.du
  %i.dw = shl i64 %i.dv, %i.z
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02837.i.i ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !39
  %i.dz = add i64 %i.dw, %i.dy
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !39
  %i.ea = or disjoint i64 %.02837.i.i, 1          ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !272
  %i.eg = sext i8 %i.ef to i64
  %i.eh = add nsw i64 %i.bf, %i.eg
  %i.ei = shl i64 %i.eh, %i.z
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ea ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !39
  %i.el = add i64 %i.ei, %i.ek
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !39
  %i.em = add nuw i64 %.02837.i.i, 2              ; 2 uses
  %niter486.next.1 = add nuw i64 %niter486, 2     ; 2 uses
  %niter486.ncmp.1 = icmp eq i64 %niter486.next.1, %unroll_iter485
  br i1 %niter486.ncmp.1, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit407.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i, !llvm.loop !1270

bb.j:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc66.i unwind label %bb.d

.noexc66.i:                                       ; preds = %bb.j
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !721 ; 7 uses
  %i.eo = invoke noundef signext i16 @_ZNK6duckdb5Value14GetValueUnsafeIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.ab)
          to label %.noexc67.i unwind label %bb.d ; 2 uses

.noexc67.i:                                       ; preds = %.noexc66.i
  %i.ep = load ptr, ptr %i.p, align 8, !tbaa !717 ; 3 uses
  %.not.i.i44.i = icmp eq ptr %i.ep, null
  %.not40.i45.i = icmp eq i64 %i.ac, 0            ; 2 uses
  br i1 %.not.i.i44.i, label %.preheader.i57.i, label %.preheader34.i46.i

.preheader34.i46.i:                               ; preds = %.noexc67.i
  br i1 %.not40.i45.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %.lr.ph.i47.i

.lr.ph.i47.i:                                     ; preds = %.preheader34.i46.i
  %i.eq = load ptr, ptr %3, align 8, !tbaa !718
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !424 ; 2 uses
  %.not.i29.i48.i = icmp eq ptr %i.er, null
  %i.es = sext i16 %i.eo to i64
  %i.et = sub nsw i64 1, %i.es                    ; 2 uses
  br i1 %.not.i29.i48.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i53.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i49.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i53.i: ; preds = %.lr.ph.i47.i, %bb.l
  %.036.us.i54.i = phi i64 [ %i.fi, %bb.l ], [ 0, %.lr.ph.i47.i ] ; 5 uses
  %i.eu = lshr i64 %.036.us.i54.i, 6
  %i.ev = and i64 %.036.us.i54.i, 63
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eu
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !39
  %i.ey = shl nuw i64 1, %i.ev
  %i.ez = and i64 %i.ey, %i.ex
  %.not.us.i55.i = icmp eq i64 %i.ez, 0
  br i1 %.not.us.i55.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i53.i
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %.036.us.i54.i
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !1271
  %i.fc = sext i16 %i.fb to i64
  %i.fd = add nsw i64 %i.et, %i.fc
  %i.fe = shl i64 %i.fd, %i.z
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.036.us.i54.i ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !39
  %i.fh = add i64 %i.fe, %i.fg
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !39
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i53.i
  %i.fi = add nuw i64 %.036.us.i54.i, 1           ; 2 uses
  %exitcond44.not.i56.i = icmp eq i64 %i.fi, %i.ac
  br i1 %exitcond44.not.i56.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i53.i, !llvm.loop !1273

.preheader.i57.i:                                 ; preds = %.noexc67.i
  br i1 %.not40.i45.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %.lr.ph38.i58.i

.lr.ph38.i58.i:                                   ; preds = %.preheader.i57.i
  %i.fj = load ptr, ptr %3, align 8, !tbaa !718
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !424 ; 4 uses
  %.not.i31.i59.i = icmp eq ptr %i.fk, null
  %i.fl = sext i16 %i.eo to i64
  %i.fm = sub nsw i64 1, %i.fl                    ; 5 uses
  br i1 %.not.i31.i59.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i63.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i.preheader: ; preds = %.lr.ph38.i58.i
  %xtraiter477 = and i64 %i.ac, 1
  %i.fn = icmp eq i64 %i.ac, 1
  br i1 %i.fn, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i.preheader
  %unroll_iter480 = and i64 %i.ac, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i63.i.preheader: ; preds = %.lr.ph38.i58.i
  %min.iters.check256 = icmp ult i64 %i.ac, 4
  br i1 %min.iters.check256, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i63.i.preheader410, label %vector.ph257

vector.ph257:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i63.i.preheader
  %n.vec259 = and i64 %i.ac, -4                   ; 3 uses
  %broadcast.splatinsert260 = insertelement <2 x i64> poison, i64 %i.fm, i64 0
  %broadcast.splat261 = shufflevector <2 x i64> %broadcast.splatinsert260, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert262 = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat263 = shufflevector <2 x i64> %broadcast.splatinsert262, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph257
  %index265 = phi i64 [ 0, %vector.ph257 ], [ %index.next270, %vector.body264 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %index265 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %wide.load266 = load <2 x i16>, ptr %i.fo, align 2, !tbaa !1271
  %wide.load267 = load <2 x i16>, ptr %i.fp, align 2, !tbaa !1271
  %i.fq = sext <2 x i16> %wide.load266 to <2 x i64>
  %i.fr = sext <2 x i16> %wide.load267 to <2 x i64>
  %i.fs = add nsw <2 x i64> %broadcast.splat261, %i.fq
  %i.ft = add nsw <2 x i64> %broadcast.splat261, %i.fr
  %i.fu = shl <2 x i64> %i.fs, %broadcast.splat263
  %i.fv = shl <2 x i64> %i.ft, %broadcast.splat263
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index265 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %wide.load268 = load <2 x i64>, ptr %i.fw, align 8, !tbaa !39
  %wide.load269 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !39
  %i.fy = add <2 x i64> %i.fu, %wide.load268
  %i.fz = add <2 x i64> %i.fv, %wide.load269
  store <2 x i64> %i.fy, ptr %i.fw, align 8, !tbaa !39
  store <2 x i64> %i.fz, ptr %i.fx, align 8, !tbaa !39
  %index.next270 = add nuw i64 %index265, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next270, %n.vec259
  br i1 %i.ga, label %middle.block271, label %vector.body264, !llvm.loop !1274

middle.block271:                                  ; preds = %vector.body264
  %cmp.n272 = icmp eq i64 %i.ac, %n.vec259
  br i1 %cmp.n272, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i63.i.preheader410

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i63.i.preheader410: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i63.i.preheader, %middle.block271
  %.02837.us.i64.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i63.i.preheader ], [ %n.vec259, %middle.block271 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i63.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i63.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i63.i.preheader410, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i63.i
  %.02837.us.i64.i = phi i64 [ %i.gj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i63.i ], [ %.02837.us.i64.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i63.i.preheader410 ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %.02837.us.i64.i
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !1271
  %i.gd = sext i16 %i.gc to i64
  %i.ge = add nsw i64 %i.fm, %i.gd
  %i.gf = shl i64 %i.ge, %i.z
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02837.us.i64.i ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !39
  %i.gi = add i64 %i.gf, %i.gh
  store i64 %i.gi, ptr %i.gg, align 8, !tbaa !39
  %i.gj = add nuw i64 %.02837.us.i64.i, 1         ; 2 uses
  %exitcond46.not.i65.i = icmp eq i64 %i.gj, %i.ac
  br i1 %exitcond46.not.i65.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i63.i, !llvm.loop !1275

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i49.i: ; preds = %.lr.ph.i47.i, %bb.n
  %.036.i50.i = phi i64 [ %i.hb, %bb.n ], [ 0, %.lr.ph.i47.i ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.036.i50.i
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3
  %i.gm = zext i32 %i.gl to i64                   ; 3 uses
  %i.gn = lshr i64 %i.gm, 6
  %i.go = and i64 %i.gm, 63
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.gn
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !39
  %i.gr = shl nuw i64 1, %i.go
  %i.gs = and i64 %i.gr, %i.gq
  %.not.i51.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i51.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i49.i
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.gm
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !1271
  %i.gv = sext i16 %i.gu to i64
  %i.gw = add nsw i64 %i.et, %i.gv
  %i.gx = shl i64 %i.gw, %i.z
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.036.i50.i ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !39
  %i.ha = add i64 %i.gx, %i.gz
  store i64 %i.ha, ptr %i.gy, align 8, !tbaa !39
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i49.i
  %i.hb = add nuw i64 %.036.i50.i, 1              ; 2 uses
  %exitcond.not.i52.i = icmp eq i64 %i.hb, %i.ac
  br i1 %exitcond.not.i52.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i49.i, !llvm.loop !1273

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i.preheader.new
  %.02837.i61.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i.preheader.new ], [ %i.hz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i ] ; 4 uses
  %niter481 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i.preheader.new ], [ %niter481.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %.02837.i61.i
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.he
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !1271
  %i.hh = sext i16 %i.hg to i64
  %i.hi = add nsw i64 %i.fm, %i.hh
  %i.hj = shl i64 %i.hi, %i.z
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02837.i61.i ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !39
  %i.hm = add i64 %i.hj, %i.hl
  store i64 %i.hm, ptr %i.hk, align 8, !tbaa !39
  %i.hn = or disjoint i64 %.02837.i61.i, 1        ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.hq
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !1271
  %i.ht = sext i16 %i.hs to i64
  %i.hu = add nsw i64 %i.fm, %i.ht
  %i.hv = shl i64 %i.hu, %i.z
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.hn ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !39
  %i.hy = add i64 %i.hv, %i.hx
  store i64 %i.hy, ptr %i.hw, align 8, !tbaa !39
  %i.hz = add nuw i64 %.02837.i61.i, 2            ; 2 uses
  %niter481.next.1 = add nuw i64 %niter481, 2     ; 2 uses
  %niter481.ncmp.1 = icmp eq i64 %niter481.next.1, %unroll_iter480
  br i1 %niter481.ncmp.1, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit412.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i, !llvm.loop !1276

bb.o:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc82.i unwind label %bb.d

.noexc82.i:                                       ; preds = %bb.o
  %i.ia = load ptr, ptr %i.o, align 8, !tbaa !721 ; 7 uses
  %i.ib = invoke noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.ab)
          to label %.noexc83.i unwind label %bb.d ; 2 uses

.noexc83.i:                                       ; preds = %.noexc82.i
  %i.ic = load ptr, ptr %i.p, align 8, !tbaa !717 ; 3 uses
  %.not.i.i68.i = icmp eq ptr %i.ic, null
  %.not39.i.i = icmp eq i64 %i.ac, 0              ; 2 uses
  br i1 %.not.i.i68.i, label %.preheader.i76.i, label %.preheader33.i.i

.preheader33.i.i:                                 ; preds = %.noexc83.i
  br i1 %.not39.i.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %.lr.ph.i69.i

.lr.ph.i69.i:                                     ; preds = %.preheader33.i.i
  %i.id = load ptr, ptr %3, align 8, !tbaa !718
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !424 ; 2 uses
  %.not.i29.i70.i = icmp eq ptr %i.ie, null
  %i.if = sub i32 1, %i.ib                        ; 2 uses
  br i1 %.not.i29.i70.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i74.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i71.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i74.i: ; preds = %.lr.ph.i69.i, %bb.q
  %.035.us.i.i = phi i64 [ %i.iu, %bb.q ], [ 0, %.lr.ph.i69.i ] ; 5 uses
  %i.ig = lshr i64 %.035.us.i.i, 6
  %i.ih = and i64 %.035.us.i.i, 63
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.ig
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !39
  %i.ik = shl nuw i64 1, %i.ih
  %i.il = and i64 %i.ik, %i.ij
  %.not.us.i75.i = icmp eq i64 %i.il, 0
  br i1 %.not.us.i75.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i74.i
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.035.us.i.i
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3
  %i.io = add i32 %i.in, %i.if
  %i.ip = sext i32 %i.io to i64
  %i.iq = shl i64 %i.ip, %i.z
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.035.us.i.i ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !39
  %i.it = add i64 %i.iq, %i.is
  store i64 %i.it, ptr %i.ir, align 8, !tbaa !39
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i74.i
  %i.iu = add nuw i64 %.035.us.i.i, 1             ; 2 uses
  %exitcond43.not.i.i = icmp eq i64 %i.iu, %i.ac
  br i1 %exitcond43.not.i.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i74.i, !llvm.loop !1277

.preheader.i76.i:                                 ; preds = %.noexc83.i
  br i1 %.not39.i.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %.preheader.i76.i
  %i.iv = load ptr, ptr %3, align 8, !tbaa !718
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !424 ; 4 uses
  %.not.i31.i77.i = icmp eq ptr %i.iw, null
  %i.ix = sub i32 1, %i.ib                        ; 5 uses
  br i1 %.not.i31.i77.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i80.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i.preheader: ; preds = %.lr.ph37.i.i
  %xtraiter472 = and i64 %i.ac, 1
  %i.iy = icmp eq i64 %i.ac, 1
  br i1 %i.iy, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i.preheader
  %unroll_iter475 = and i64 %i.ac, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i80.i.preheader: ; preds = %.lr.ph37.i.i
  %min.iters.check275 = icmp ult i64 %i.ac, 4
  br i1 %min.iters.check275, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i80.i.preheader415, label %vector.ph276

vector.ph276:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i80.i.preheader
  %n.vec278 = and i64 %i.ac, -4                   ; 3 uses
  %broadcast.splatinsert279 = insertelement <2 x i32> poison, i32 %i.ix, i64 0
  %broadcast.splat280 = shufflevector <2 x i32> %broadcast.splatinsert279, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert281 = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat282 = shufflevector <2 x i64> %broadcast.splatinsert281, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph276
  %index284 = phi i64 [ 0, %vector.ph276 ], [ %index.next289, %vector.body283 ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %index284 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %wide.load285 = load <2 x i32>, ptr %i.iz, align 4, !tbaa !3
  %wide.load286 = load <2 x i32>, ptr %i.ja, align 4, !tbaa !3
  %i.jb = add <2 x i32> %wide.load285, %broadcast.splat280
  %i.jc = add <2 x i32> %wide.load286, %broadcast.splat280
  %i.jd = sext <2 x i32> %i.jb to <2 x i64>
  %i.je = sext <2 x i32> %i.jc to <2 x i64>
  %i.jf = shl <2 x i64> %i.jd, %broadcast.splat282
  %i.jg = shl <2 x i64> %i.je, %broadcast.splat282
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index284 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16 ; 2 uses
  %wide.load287 = load <2 x i64>, ptr %i.jh, align 8, !tbaa !39
  %wide.load288 = load <2 x i64>, ptr %i.ji, align 8, !tbaa !39
  %i.jj = add <2 x i64> %i.jf, %wide.load287
  %i.jk = add <2 x i64> %i.jg, %wide.load288
  store <2 x i64> %i.jj, ptr %i.jh, align 8, !tbaa !39
  store <2 x i64> %i.jk, ptr %i.ji, align 8, !tbaa !39
  %index.next289 = add nuw i64 %index284, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next289, %n.vec278
  br i1 %i.jl, label %middle.block290, label %vector.body283, !llvm.loop !1278

middle.block290:                                  ; preds = %vector.body283
  %cmp.n291 = icmp eq i64 %i.ac, %n.vec278
  br i1 %cmp.n291, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i80.i.preheader415

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i80.i.preheader415: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i80.i.preheader, %middle.block290
  %.02836.us.i.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i80.i.preheader ], [ %n.vec278, %middle.block290 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i80.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i80.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i80.i.preheader415, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i80.i
  %.02836.us.i.i = phi i64 [ %i.ju, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i80.i ], [ %.02836.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i80.i.preheader415 ] ; 3 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.02836.us.i.i
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !3
  %i.jo = add i32 %i.jn, %i.ix
  %i.jp = sext i32 %i.jo to i64
  %i.jq = shl i64 %i.jp, %i.z
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02836.us.i.i ; 2 uses
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !39
  %i.jt = add i64 %i.jq, %i.js
  store i64 %i.jt, ptr %i.jr, align 8, !tbaa !39
  %i.ju = add nuw i64 %.02836.us.i.i, 1           ; 2 uses
  %exitcond45.not.i81.i = icmp eq i64 %i.ju, %i.ac
  br i1 %exitcond45.not.i81.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i80.i, !llvm.loop !1279

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i71.i: ; preds = %.lr.ph.i69.i, %bb.s
  %.035.i.i = phi i64 [ %i.km, %bb.s ], [ 0, %.lr.ph.i69.i ] ; 3 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %.035.i.i
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !3
  %i.jx = zext i32 %i.jw to i64                   ; 3 uses
  %i.jy = lshr i64 %i.jx, 6
  %i.jz = and i64 %i.jx, 63
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.jy
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !39
  %i.kc = shl nuw i64 1, %i.jz
  %i.kd = and i64 %i.kc, %i.kb
  %.not.i72.i = icmp eq i64 %i.kd, 0
  br i1 %.not.i72.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i71.i
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.jx
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !3
  %i.kg = add i32 %i.kf, %i.if
  %i.kh = sext i32 %i.kg to i64
  %i.ki = shl i64 %i.kh, %i.z
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.035.i.i ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !39
  %i.kl = add i64 %i.ki, %i.kk
  store i64 %i.kl, ptr %i.kj, align 8, !tbaa !39
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i71.i
  %i.km = add nuw i64 %.035.i.i, 1                ; 2 uses
  %exitcond.not.i73.i = icmp eq i64 %i.km, %i.ac
  br i1 %exitcond.not.i73.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i71.i, !llvm.loop !1277

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i.preheader.new
  %.02836.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i.preheader.new ], [ %i.lk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i ] ; 4 uses
  %niter476 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i.preheader.new ], [ %niter476.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %.02836.i.i
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !3
  %i.kp = zext i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !3
  %i.ks = add i32 %i.kr, %i.ix
  %i.kt = sext i32 %i.ks to i64
  %i.ku = shl i64 %i.kt, %i.z
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02836.i.i ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !39
  %i.kx = add i64 %i.ku, %i.kw
  store i64 %i.kx, ptr %i.kv, align 8, !tbaa !39
  %i.ky = or disjoint i64 %.02836.i.i, 1          ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !3
  %i.lb = zext i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !3
  %i.le = add i32 %i.ld, %i.ix
  %i.lf = sext i32 %i.le to i64
  %i.lg = shl i64 %i.lf, %i.z
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ky ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !39
  %i.lj = add i64 %i.lg, %i.li
  store i64 %i.lj, ptr %i.lh, align 8, !tbaa !39
  %i.lk = add nuw i64 %.02836.i.i, 2              ; 2 uses
  %niter476.next.1 = add nuw i64 %niter476, 2     ; 2 uses
  %niter476.ncmp.1 = icmp eq i64 %niter476.next.1, %unroll_iter475
  br i1 %niter476.ncmp.1, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit417.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i, !llvm.loop !1280

bb.t:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIlEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc106.i unwind label %bb.d

.noexc106.i:                                      ; preds = %bb.t
  %i.ll = load ptr, ptr %i.o, align 8, !tbaa !721 ; 11 uses
  %i.lm = invoke noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.ab)
          to label %.noexc107.i unwind label %bb.d ; 2 uses

.noexc107.i:                                      ; preds = %.noexc106.i
  %i.ln = load ptr, ptr %i.p, align 8, !tbaa !717 ; 3 uses
  %.not.i.i84.i = icmp eq ptr %i.ln, null
  %.not39.i85.i = icmp eq i64 %i.ac, 0            ; 2 uses
  br i1 %.not.i.i84.i, label %.preheader.i97.i, label %.preheader33.i86.i

.preheader33.i86.i:                               ; preds = %.noexc107.i
  br i1 %.not39.i85.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %.lr.ph.i87.i

.lr.ph.i87.i:                                     ; preds = %.preheader33.i86.i
  %i.lo = load ptr, ptr %3, align 8, !tbaa !718
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !424 ; 2 uses
  %.not.i29.i88.i = icmp eq ptr %i.lp, null
  %i.lq = sub i64 1, %i.lm                        ; 2 uses
  br i1 %.not.i29.i88.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i93.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i89.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i93.i: ; preds = %.lr.ph.i87.i, %bb.v
  %.035.us.i94.i = phi i64 [ %i.me, %bb.v ], [ 0, %.lr.ph.i87.i ] ; 5 uses
  %i.lr = lshr i64 %.035.us.i94.i, 6
  %i.ls = and i64 %.035.us.i94.i, 63
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.lr
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !39
  %i.lv = shl nuw i64 1, %i.ls
  %i.lw = and i64 %i.lv, %i.lu
  %.not.us.i95.i = icmp eq i64 %i.lw, 0
  br i1 %.not.us.i95.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i93.i
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %.035.us.i94.i
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !39
  %i.lz = add i64 %i.ly, %i.lq
  %i.ma = shl i64 %i.lz, %i.z
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.035.us.i94.i ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !39
  %i.md = add i64 %i.ma, %i.mc
  store i64 %i.md, ptr %i.mb, align 8, !tbaa !39
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i93.i
  %i.me = add nuw i64 %.035.us.i94.i, 1           ; 2 uses
  %exitcond43.not.i96.i = icmp eq i64 %i.me, %i.ac
  br i1 %exitcond43.not.i96.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i93.i, !llvm.loop !1281

.preheader.i97.i:                                 ; preds = %.noexc107.i
  br i1 %.not39.i85.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %.lr.ph37.i98.i

.lr.ph37.i98.i:                                   ; preds = %.preheader.i97.i
  %i.mf = load ptr, ptr %3, align 8, !tbaa !718
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !424 ; 4 uses
  %.not.i31.i99.i = icmp eq ptr %i.mg, null
  %i.mh = sub i64 1, %i.lm                        ; 7 uses
  br i1 %.not.i31.i99.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i.preheader: ; preds = %.lr.ph37.i98.i
  %xtraiter465 = and i64 %i.ac, 1
  %i.mi = icmp eq i64 %i.ac, 1
  br i1 %i.mi, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i.preheader
  %unroll_iter468 = and i64 %i.ac, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.preheader: ; preds = %.lr.ph37.i98.i
  %min.iters.check300 = icmp ult i64 %i.ac, 4
  br i1 %min.iters.check300, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.preheader420, label %vector.memcheck293

vector.memcheck293:                               ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.preheader
  %i.mj = shl i64 %i.ac, 3                        ; 2 uses
  %scevgep294 = getelementptr i8, ptr %i.d, i64 %i.mj
  %scevgep295 = getelementptr i8, ptr %i.ll, i64 %i.mj
  %bound0296 = icmp ult ptr %i.d, %scevgep295
  %bound1297 = icmp ult ptr %i.ll, %scevgep294
  %found.conflict298 = and i1 %bound0296, %bound1297
  br i1 %found.conflict298, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.preheader420, label %vector.ph301

vector.ph301:                                     ; preds = %vector.memcheck293
  %n.vec303 = and i64 %i.ac, -4                   ; 3 uses
  %broadcast.splatinsert304 = insertelement <2 x i64> poison, i64 %i.mh, i64 0
  %broadcast.splat305 = shufflevector <2 x i64> %broadcast.splatinsert304, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert306 = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat307 = shufflevector <2 x i64> %broadcast.splatinsert306, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph301
  %index309 = phi i64 [ 0, %vector.ph301 ], [ %index.next314, %vector.body308 ] ; 3 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %index309 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %wide.load310 = load <2 x i64>, ptr %i.mk, align 8, !tbaa !39, !alias.scope !1282
  %wide.load311 = load <2 x i64>, ptr %i.ml, align 8, !tbaa !39, !alias.scope !1282
  %i.mm = add <2 x i64> %wide.load310, %broadcast.splat305
  %i.mn = add <2 x i64> %wide.load311, %broadcast.splat305
  %i.mo = shl <2 x i64> %i.mm, %broadcast.splat307
  %i.mp = shl <2 x i64> %i.mn, %broadcast.splat307
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index309 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16 ; 2 uses
  %wide.load312 = load <2 x i64>, ptr %i.mq, align 8, !tbaa !39, !alias.scope !1285, !noalias !1282
  %wide.load313 = load <2 x i64>, ptr %i.mr, align 8, !tbaa !39, !alias.scope !1285, !noalias !1282
  %i.ms = add <2 x i64> %i.mo, %wide.load312
  %i.mt = add <2 x i64> %i.mp, %wide.load313
  store <2 x i64> %i.ms, ptr %i.mq, align 8, !tbaa !39, !alias.scope !1285, !noalias !1282
  store <2 x i64> %i.mt, ptr %i.mr, align 8, !tbaa !39, !alias.scope !1285, !noalias !1282
  %index.next314 = add nuw i64 %index309, 4       ; 2 uses
  %i.mu = icmp eq i64 %index.next314, %n.vec303
  br i1 %i.mu, label %middle.block315, label %vector.body308, !llvm.loop !1287

middle.block315:                                  ; preds = %vector.body308
  %cmp.n316 = icmp eq i64 %i.ac, %n.vec303
  br i1 %cmp.n316, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.preheader420

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.preheader420: ; preds = %vector.memcheck293, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.preheader, %middle.block315
  %.02836.us.i104.i.ph = phi i64 [ 0, %vector.memcheck293 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.preheader ], [ %n.vec303, %middle.block315 ] ; 5 uses
  %.neg490 = or disjoint i64 %.02836.us.i104.i.ph, 1
  %xtraiter470 = and i64 %i.ac, 1
  %lcmp.mod471.not = icmp eq i64 %xtraiter470, 0
  br i1 %lcmp.mod471.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.preheader420
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %.02836.us.i104.i.ph
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !39
  %i.mx = add i64 %i.mw, %i.mh
  %i.my = shl i64 %i.mx, %i.z
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02836.us.i104.i.ph ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !39
  %i.nb = add i64 %i.my, %i.na
  store i64 %i.nb, ptr %i.mz, align 8, !tbaa !39
  %i.nc = or disjoint i64 %.02836.us.i104.i.ph, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.preheader420
  %.02836.us.i104.i.unr = phi i64 [ %.02836.us.i104.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.preheader420 ], [ %i.nc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.prol ]
  %i.nd = icmp eq i64 %i.ac, %.neg490
  br i1 %i.nd, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i
  %.02836.us.i104.i = phi i64 [ %i.nt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i ], [ %.02836.us.i104.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i.prol.loopexit ] ; 4 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %.02836.us.i104.i
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !39
  %i.ng = add i64 %i.nf, %i.mh
  %i.nh = shl i64 %i.ng, %i.z
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02836.us.i104.i ; 2 uses
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !39
  %i.nk = add i64 %i.nh, %i.nj
  store i64 %i.nk, ptr %i.ni, align 8, !tbaa !39
  %i.nl = add nuw i64 %.02836.us.i104.i, 1        ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.nl
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !39
  %i.no = add i64 %i.nn, %i.mh
  %i.np = shl i64 %i.no, %i.z
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.nl ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !39
  %i.ns = add i64 %i.np, %i.nr
  store i64 %i.ns, ptr %i.nq, align 8, !tbaa !39
  %i.nt = add nuw i64 %.02836.us.i104.i, 2        ; 2 uses
  %exitcond45.not.i105.i.1 = icmp eq i64 %i.nt, %i.ac
  br i1 %exitcond45.not.i105.i.1, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i103.i, !llvm.loop !1288

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i89.i: ; preds = %.lr.ph.i87.i, %bb.x
  %.035.i90.i = phi i64 [ %i.ok, %bb.x ], [ 0, %.lr.ph.i87.i ] ; 3 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %.035.i90.i
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !3
  %i.nw = zext i32 %i.nv to i64                   ; 3 uses
  %i.nx = lshr i64 %i.nw, 6
  %i.ny = and i64 %i.nw, 63
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.nx
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !39
  %i.ob = shl nuw i64 1, %i.ny
  %i.oc = and i64 %i.ob, %i.oa
  %.not.i91.i = icmp eq i64 %i.oc, 0
  br i1 %.not.i91.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i89.i
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.nw
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !39
  %i.of = add i64 %i.oe, %i.lq
  %i.og = shl i64 %i.of, %i.z
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.035.i90.i ; 2 uses
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !39
  %i.oj = add i64 %i.og, %i.oi
  store i64 %i.oj, ptr %i.oh, align 8, !tbaa !39
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i89.i
  %i.ok = add nuw i64 %.035.i90.i, 1              ; 2 uses
  %exitcond.not.i92.i = icmp eq i64 %i.ok, %i.ac
  br i1 %exitcond.not.i92.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i89.i, !llvm.loop !1281

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i.preheader.new
  %.02836.i101.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i.preheader.new ], [ %i.pg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i ] ; 4 uses
  %niter469 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i.preheader.new ], [ %niter469.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i ]
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %.02836.i101.i
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !3
  %i.on = zext i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.on
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !39
  %i.oq = add i64 %i.op, %i.mh
  %i.or = shl i64 %i.oq, %i.z
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02836.i101.i ; 2 uses
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !39
  %i.ou = add i64 %i.or, %i.ot
  store i64 %i.ou, ptr %i.os, align 8, !tbaa !39
  %i.ov = or disjoint i64 %.02836.i101.i, 1       ; 2 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.ov
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !3
  %i.oy = zext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.oy
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !39
  %i.pb = add i64 %i.pa, %i.mh
  %i.pc = shl i64 %i.pb, %i.z
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ov ; 2 uses
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !39
  %i.pf = add i64 %i.pc, %i.pe
  store i64 %i.pf, ptr %i.pd, align 8, !tbaa !39
  %i.pg = add nuw i64 %.02836.i101.i, 2           ; 2 uses
  %niter469.next.1 = add nuw i64 %niter469, 2     ; 2 uses
  %niter469.ncmp.1 = icmp eq i64 %niter469.next.1, %unroll_iter468
  br i1 %niter469.ncmp.1, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit422.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i, !llvm.loop !1289

bb.y:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc130.i unwind label %bb.d

.noexc130.i:                                      ; preds = %bb.y
  %i.ph = load ptr, ptr %i.o, align 8, !tbaa !721 ; 11 uses
  %i.pi = invoke noundef zeroext i8 @_ZNK6duckdb5Value14GetValueUnsafeIhEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.ab)
          to label %.noexc131.i unwind label %bb.d ; 2 uses

.noexc131.i:                                      ; preds = %.noexc130.i
  %i.pj = load ptr, ptr %i.p, align 8, !tbaa !717 ; 3 uses
  %.not.i.i108.i = icmp eq ptr %i.pj, null
  %.not40.i109.i = icmp eq i64 %i.ac, 0           ; 2 uses
  br i1 %.not.i.i108.i, label %.preheader.i121.i, label %.preheader34.i110.i

.preheader34.i110.i:                              ; preds = %.noexc131.i
  br i1 %.not40.i109.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %.lr.ph.i111.i

.lr.ph.i111.i:                                    ; preds = %.preheader34.i110.i
  %i.pk = load ptr, ptr %3, align 8, !tbaa !718
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !424 ; 2 uses
  %.not.i29.i112.i = icmp eq ptr %i.pl, null
  %i.pm = zext i8 %i.pi to i64
  %i.pn = sub nsw i64 1, %i.pm                    ; 2 uses
  br i1 %.not.i29.i112.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i117.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i113.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i117.i: ; preds = %.lr.ph.i111.i, %bb.aa
  %.036.us.i118.i = phi i64 [ %i.qc, %bb.aa ], [ 0, %.lr.ph.i111.i ] ; 5 uses
  %i.po = lshr i64 %.036.us.i118.i, 6
  %i.pp = and i64 %.036.us.i118.i, 63
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %i.po
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !39
  %i.ps = shl nuw i64 1, %i.pp
  %i.pt = and i64 %i.ps, %i.pr
  %.not.us.i119.i = icmp eq i64 %i.pt, 0
  br i1 %.not.us.i119.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i117.i
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ph, i64 %.036.us.i118.i
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !272
  %i.pw = zext i8 %i.pv to i64
  %i.px = add nsw i64 %i.pn, %i.pw
  %i.py = shl i64 %i.px, %i.z
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.036.us.i118.i ; 2 uses
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !39
  %i.qb = add i64 %i.py, %i.qa
  store i64 %i.qb, ptr %i.pz, align 8, !tbaa !39
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i117.i
  %i.qc = add nuw i64 %.036.us.i118.i, 1          ; 2 uses
  %exitcond44.not.i120.i = icmp eq i64 %i.qc, %i.ac
  br i1 %exitcond44.not.i120.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i117.i, !llvm.loop !1290

.preheader.i121.i:                                ; preds = %.noexc131.i
  br i1 %.not40.i109.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %.lr.ph38.i122.i

.lr.ph38.i122.i:                                  ; preds = %.preheader.i121.i
  %i.qd = load ptr, ptr %3, align 8, !tbaa !718
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !424 ; 4 uses
  %.not.i31.i123.i = icmp eq ptr %i.qe, null
  %i.qf = zext i8 %i.pi to i64
  %i.qg = sub nsw i64 1, %i.qf                    ; 7 uses
  br i1 %.not.i31.i123.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i.preheader: ; preds = %.lr.ph38.i122.i
  %xtraiter458 = and i64 %i.ac, 1
  %i.qh = icmp eq i64 %i.ac, 1
  br i1 %i.qh, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i.preheader
  %unroll_iter461 = and i64 %i.ac, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.preheader: ; preds = %.lr.ph38.i122.i
  %min.iters.check325 = icmp ult i64 %i.ac, 4
  br i1 %min.iters.check325, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.preheader425, label %vector.memcheck318

vector.memcheck318:                               ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.preheader
  %i.qi = shl i64 %i.ac, 3
  %scevgep319 = getelementptr i8, ptr %i.d, i64 %i.qi
  %scevgep320 = getelementptr i8, ptr %i.ph, i64 %i.ac
  %bound0321 = icmp ult ptr %i.d, %scevgep320
  %bound1322 = icmp ult ptr %i.ph, %scevgep319
  %found.conflict323 = and i1 %bound0321, %bound1322
  br i1 %found.conflict323, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.preheader425, label %vector.ph326

vector.ph326:                                     ; preds = %vector.memcheck318
  %n.vec328 = and i64 %i.ac, -4                   ; 3 uses
  %broadcast.splatinsert329 = insertelement <2 x i64> poison, i64 %i.qg, i64 0
  %broadcast.splat330 = shufflevector <2 x i64> %broadcast.splatinsert329, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert331 = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat332 = shufflevector <2 x i64> %broadcast.splatinsert331, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph326
  %index334 = phi i64 [ 0, %vector.ph326 ], [ %index.next339, %vector.body333 ] ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ph, i64 %index334 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 2
  %wide.load335 = load <2 x i8>, ptr %i.qj, align 1, !tbaa !272, !alias.scope !1291
  %wide.load336 = load <2 x i8>, ptr %i.qk, align 1, !tbaa !272, !alias.scope !1291
  %i.ql = zext <2 x i8> %wide.load335 to <2 x i64>
  %i.qm = zext <2 x i8> %wide.load336 to <2 x i64>
  %i.qn = add nsw <2 x i64> %broadcast.splat330, %i.ql
  %i.qo = add nsw <2 x i64> %broadcast.splat330, %i.qm
  %i.qp = shl <2 x i64> %i.qn, %broadcast.splat332
  %i.qq = shl <2 x i64> %i.qo, %broadcast.splat332
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index334 ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16 ; 2 uses
  %wide.load337 = load <2 x i64>, ptr %i.qr, align 8, !tbaa !39, !alias.scope !1294, !noalias !1291
  %wide.load338 = load <2 x i64>, ptr %i.qs, align 8, !tbaa !39, !alias.scope !1294, !noalias !1291
  %i.qt = add <2 x i64> %i.qp, %wide.load337
  %i.qu = add <2 x i64> %i.qq, %wide.load338
  store <2 x i64> %i.qt, ptr %i.qr, align 8, !tbaa !39, !alias.scope !1294, !noalias !1291
  store <2 x i64> %i.qu, ptr %i.qs, align 8, !tbaa !39, !alias.scope !1294, !noalias !1291
  %index.next339 = add nuw i64 %index334, 4       ; 2 uses
  %i.qv = icmp eq i64 %index.next339, %n.vec328
  br i1 %i.qv, label %middle.block340, label %vector.body333, !llvm.loop !1296

middle.block340:                                  ; preds = %vector.body333
  %cmp.n341 = icmp eq i64 %i.ac, %n.vec328
  br i1 %cmp.n341, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.preheader425

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.preheader425: ; preds = %vector.memcheck318, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.preheader, %middle.block340
  %.02837.us.i128.i.ph = phi i64 [ 0, %vector.memcheck318 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.preheader ], [ %n.vec328, %middle.block340 ] ; 5 uses
  %.neg489 = or disjoint i64 %.02837.us.i128.i.ph, 1
  %xtraiter463 = and i64 %i.ac, 1
  %lcmp.mod464.not = icmp eq i64 %xtraiter463, 0
  br i1 %lcmp.mod464.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.preheader425
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ph, i64 %.02837.us.i128.i.ph
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !272
  %i.qy = zext i8 %i.qx to i64
  %i.qz = add nsw i64 %i.qg, %i.qy
  %i.ra = shl i64 %i.qz, %i.z
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02837.us.i128.i.ph ; 2 uses
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !39
  %i.rd = add i64 %i.ra, %i.rc
  store i64 %i.rd, ptr %i.rb, align 8, !tbaa !39
  %i.re = or disjoint i64 %.02837.us.i128.i.ph, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.preheader425
  %.02837.us.i128.i.unr = phi i64 [ %.02837.us.i128.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.preheader425 ], [ %i.re, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.prol ]
  %i.rf = icmp eq i64 %i.ac, %.neg489
  br i1 %i.rf, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i
  %.02837.us.i128.i = phi i64 [ %i.rx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i ], [ %.02837.us.i128.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i.prol.loopexit ] ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ph, i64 %.02837.us.i128.i
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !272
  %i.ri = zext i8 %i.rh to i64
  %i.rj = add nsw i64 %i.qg, %i.ri
  %i.rk = shl i64 %i.rj, %i.z
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02837.us.i128.i ; 2 uses
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !39
  %i.rn = add i64 %i.rk, %i.rm
  store i64 %i.rn, ptr %i.rl, align 8, !tbaa !39
  %i.ro = add nuw i64 %.02837.us.i128.i, 1        ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.ro
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !272
  %i.rr = zext i8 %i.rq to i64
  %i.rs = add nsw i64 %i.qg, %i.rr
  %i.rt = shl i64 %i.rs, %i.z
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ro ; 2 uses
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !39
  %i.rw = add i64 %i.rt, %i.rv
  store i64 %i.rw, ptr %i.ru, align 8, !tbaa !39
  %i.rx = add nuw i64 %.02837.us.i128.i, 2        ; 2 uses
  %exitcond46.not.i129.i.1 = icmp eq i64 %i.rx, %i.ac
  br i1 %exitcond46.not.i129.i.1, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i127.i, !llvm.loop !1297

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i113.i: ; preds = %.lr.ph.i111.i, %bb.ac
  %.036.i114.i = phi i64 [ %i.sp, %bb.ac ], [ 0, %.lr.ph.i111.i ] ; 3 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %.036.i114.i
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !3
  %i.sa = zext i32 %i.rz to i64                   ; 3 uses
  %i.sb = lshr i64 %i.sa, 6
  %i.sc = and i64 %i.sa, 63
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %i.sb
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !39
  %i.sf = shl nuw i64 1, %i.sc
  %i.sg = and i64 %i.sf, %i.se
  %.not.i115.i = icmp eq i64 %i.sg, 0
  br i1 %.not.i115.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i113.i
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.sa
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !272
  %i.sj = zext i8 %i.si to i64
  %i.sk = add nsw i64 %i.pn, %i.sj
  %i.sl = shl i64 %i.sk, %i.z
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.036.i114.i ; 2 uses
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !39
  %i.so = add i64 %i.sl, %i.sn
  store i64 %i.so, ptr %i.sm, align 8, !tbaa !39
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i113.i
  %i.sp = add nuw i64 %.036.i114.i, 1             ; 2 uses
  %exitcond.not.i116.i = icmp eq i64 %i.sp, %i.ac
  br i1 %exitcond.not.i116.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i113.i, !llvm.loop !1290

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i.preheader.new
  %.02837.i125.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i.preheader.new ], [ %i.tn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i ] ; 4 uses
  %niter462 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i.preheader.new ], [ %niter462.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i ]
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %.02837.i125.i
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !3
  %i.ss = zext i32 %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.ss
  %i.su = load i8, ptr %i.st, align 1, !tbaa !272
  %i.sv = zext i8 %i.su to i64
  %i.sw = add nsw i64 %i.qg, %i.sv
  %i.sx = shl i64 %i.sw, %i.z
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02837.i125.i ; 2 uses
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !39
  %i.ta = add i64 %i.sx, %i.sz
  store i64 %i.ta, ptr %i.sy, align 8, !tbaa !39
  %i.tb = or disjoint i64 %.02837.i125.i, 1       ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.tb
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !3
  %i.te = zext i32 %i.td to i64
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.te
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !272
  %i.th = zext i8 %i.tg to i64
  %i.ti = add nsw i64 %i.qg, %i.th
  %i.tj = shl i64 %i.ti, %i.z
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.tb ; 2 uses
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !39
  %i.tm = add i64 %i.tj, %i.tl
  store i64 %i.tm, ptr %i.tk, align 8, !tbaa !39
  %i.tn = add nuw i64 %.02837.i125.i, 2           ; 2 uses
  %niter462.next.1 = add nuw i64 %niter462, 2     ; 2 uses
  %niter462.ncmp.1 = icmp eq i64 %niter462.next.1, %unroll_iter461
  br i1 %niter462.ncmp.1, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit427.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i, !llvm.loop !1298

bb.ad:                                            ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeItEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc154.i unwind label %bb.d

.noexc154.i:                                      ; preds = %bb.ad
  %i.to = load ptr, ptr %i.o, align 8, !tbaa !721 ; 7 uses
  %i.tp = invoke noundef zeroext i16 @_ZNK6duckdb5Value14GetValueUnsafeItEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.ab)
          to label %.noexc155.i unwind label %bb.d ; 2 uses

.noexc155.i:                                      ; preds = %.noexc154.i
  %i.tq = load ptr, ptr %i.p, align 8, !tbaa !717 ; 3 uses
  %.not.i.i132.i = icmp eq ptr %i.tq, null
  %.not40.i133.i = icmp eq i64 %i.ac, 0           ; 2 uses
  br i1 %.not.i.i132.i, label %.preheader.i145.i, label %.preheader34.i134.i

.preheader34.i134.i:                              ; preds = %.noexc155.i
  br i1 %.not40.i133.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %.lr.ph.i135.i

.lr.ph.i135.i:                                    ; preds = %.preheader34.i134.i
  %i.tr = load ptr, ptr %3, align 8, !tbaa !718
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !424 ; 2 uses
  %.not.i29.i136.i = icmp eq ptr %i.ts, null
  %i.tt = zext i16 %i.tp to i64
  %i.tu = sub nsw i64 1, %i.tt                    ; 2 uses
  br i1 %.not.i29.i136.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i141.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i137.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i141.i: ; preds = %.lr.ph.i135.i, %bb.af
  %.036.us.i142.i = phi i64 [ %i.uj, %bb.af ], [ 0, %.lr.ph.i135.i ] ; 5 uses
  %i.tv = lshr i64 %.036.us.i142.i, 6
  %i.tw = and i64 %.036.us.i142.i, 63
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %i.tv
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !39
  %i.tz = shl nuw i64 1, %i.tw
  %i.ua = and i64 %i.tz, %i.ty
  %.not.us.i143.i = icmp eq i64 %i.ua, 0
  br i1 %.not.us.i143.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i141.i
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %i.to, i64 %.036.us.i142.i
  %i.uc = load i16, ptr %i.ub, align 2, !tbaa !1271
  %i.ud = zext i16 %i.uc to i64
  %i.ue = add nsw i64 %i.tu, %i.ud
  %i.uf = shl i64 %i.ue, %i.z
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.036.us.i142.i ; 2 uses
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !39
  %i.ui = add i64 %i.uf, %i.uh
  store i64 %i.ui, ptr %i.ug, align 8, !tbaa !39
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i141.i
  %i.uj = add nuw i64 %.036.us.i142.i, 1          ; 2 uses
  %exitcond44.not.i144.i = icmp eq i64 %i.uj, %i.ac
  br i1 %exitcond44.not.i144.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i141.i, !llvm.loop !1299

.preheader.i145.i:                                ; preds = %.noexc155.i
  br i1 %.not40.i133.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %.lr.ph38.i146.i

.lr.ph38.i146.i:                                  ; preds = %.preheader.i145.i
  %i.uk = load ptr, ptr %3, align 8, !tbaa !718
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !424 ; 4 uses
  %.not.i31.i147.i = icmp eq ptr %i.ul, null
  %i.um = zext i16 %i.tp to i64
  %i.un = sub nsw i64 1, %i.um                    ; 5 uses
  br i1 %.not.i31.i147.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i151.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i.preheader: ; preds = %.lr.ph38.i146.i
  %xtraiter453 = and i64 %i.ac, 1
  %i.uo = icmp eq i64 %i.ac, 1
  br i1 %i.uo, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i.preheader
  %unroll_iter456 = and i64 %i.ac, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i151.i.preheader: ; preds = %.lr.ph38.i146.i
  %min.iters.check344 = icmp ult i64 %i.ac, 4
  br i1 %min.iters.check344, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i151.i.preheader430, label %vector.ph345

vector.ph345:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i151.i.preheader
  %n.vec347 = and i64 %i.ac, -4                   ; 3 uses
  %broadcast.splatinsert348 = insertelement <2 x i64> poison, i64 %i.un, i64 0
  %broadcast.splat349 = shufflevector <2 x i64> %broadcast.splatinsert348, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert350 = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat351 = shufflevector <2 x i64> %broadcast.splatinsert350, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body352

vector.body352:                                   ; preds = %vector.body352, %vector.ph345
  %index353 = phi i64 [ 0, %vector.ph345 ], [ %index.next358, %vector.body352 ] ; 3 uses
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.to, i64 %index353 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 4
  %wide.load354 = load <2 x i16>, ptr %i.up, align 2, !tbaa !1271
  %wide.load355 = load <2 x i16>, ptr %i.uq, align 2, !tbaa !1271
  %i.ur = zext <2 x i16> %wide.load354 to <2 x i64>
  %i.us = zext <2 x i16> %wide.load355 to <2 x i64>
  %i.ut = add nsw <2 x i64> %broadcast.splat349, %i.ur
  %i.uu = add nsw <2 x i64> %broadcast.splat349, %i.us
  %i.uv = shl <2 x i64> %i.ut, %broadcast.splat351
  %i.uw = shl <2 x i64> %i.uu, %broadcast.splat351
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index353 ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16 ; 2 uses
  %wide.load356 = load <2 x i64>, ptr %i.ux, align 8, !tbaa !39
  %wide.load357 = load <2 x i64>, ptr %i.uy, align 8, !tbaa !39
  %i.uz = add <2 x i64> %i.uv, %wide.load356
  %i.va = add <2 x i64> %i.uw, %wide.load357
  store <2 x i64> %i.uz, ptr %i.ux, align 8, !tbaa !39
  store <2 x i64> %i.va, ptr %i.uy, align 8, !tbaa !39
  %index.next358 = add nuw i64 %index353, 4       ; 2 uses
  %i.vb = icmp eq i64 %index.next358, %n.vec347
  br i1 %i.vb, label %middle.block359, label %vector.body352, !llvm.loop !1300

middle.block359:                                  ; preds = %vector.body352
  %cmp.n360 = icmp eq i64 %i.ac, %n.vec347
  br i1 %cmp.n360, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i151.i.preheader430

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i151.i.preheader430: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i151.i.preheader, %middle.block359
  %.02837.us.i152.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i151.i.preheader ], [ %n.vec347, %middle.block359 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i151.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i151.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i151.i.preheader430, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i151.i
  %.02837.us.i152.i = phi i64 [ %i.vk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i151.i ], [ %.02837.us.i152.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i151.i.preheader430 ] ; 3 uses
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %i.to, i64 %.02837.us.i152.i
  %i.vd = load i16, ptr %i.vc, align 2, !tbaa !1271
  %i.ve = zext i16 %i.vd to i64
  %i.vf = add nsw i64 %i.un, %i.ve
  %i.vg = shl i64 %i.vf, %i.z
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02837.us.i152.i ; 2 uses
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !39
  %i.vj = add i64 %i.vg, %i.vi
  store i64 %i.vj, ptr %i.vh, align 8, !tbaa !39
  %i.vk = add nuw i64 %.02837.us.i152.i, 1        ; 2 uses
  %exitcond46.not.i153.i = icmp eq i64 %i.vk, %i.ac
  br i1 %exitcond46.not.i153.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i151.i, !llvm.loop !1301

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i137.i: ; preds = %.lr.ph.i135.i, %bb.ah
  %.036.i138.i = phi i64 [ %i.wc, %bb.ah ], [ 0, %.lr.ph.i135.i ] ; 3 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %.036.i138.i
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !3
  %i.vn = zext i32 %i.vm to i64                   ; 3 uses
  %i.vo = lshr i64 %i.vn, 6
  %i.vp = and i64 %i.vn, 63
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %i.vo
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !39
  %i.vs = shl nuw i64 1, %i.vp
  %i.vt = and i64 %i.vs, %i.vr
  %.not.i139.i = icmp eq i64 %i.vt, 0
  br i1 %.not.i139.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i137.i
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr %i.to, i64 %i.vn
  %i.vv = load i16, ptr %i.vu, align 2, !tbaa !1271
  %i.vw = zext i16 %i.vv to i64
  %i.vx = add nsw i64 %i.tu, %i.vw
  %i.vy = shl i64 %i.vx, %i.z
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.036.i138.i ; 2 uses
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !39
  %i.wb = add i64 %i.vy, %i.wa
  store i64 %i.wb, ptr %i.vz, align 8, !tbaa !39
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i137.i
  %i.wc = add nuw i64 %.036.i138.i, 1             ; 2 uses
  %exitcond.not.i140.i = icmp eq i64 %i.wc, %i.ac
  br i1 %exitcond.not.i140.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i137.i, !llvm.loop !1299

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i.preheader.new
  %.02837.i149.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i.preheader.new ], [ %i.xa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i ] ; 4 uses
  %niter457 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i.preheader.new ], [ %niter457.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i ]
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %.02837.i149.i
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !3
  %i.wf = zext i32 %i.we to i64
  %i.wg = getelementptr inbounds nuw [2 x i8], ptr %i.to, i64 %i.wf
  %i.wh = load i16, ptr %i.wg, align 2, !tbaa !1271
  %i.wi = zext i16 %i.wh to i64
  %i.wj = add nsw i64 %i.un, %i.wi
  %i.wk = shl i64 %i.wj, %i.z
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02837.i149.i ; 2 uses
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !39
  %i.wn = add i64 %i.wk, %i.wm
  store i64 %i.wn, ptr %i.wl, align 8, !tbaa !39
  %i.wo = or disjoint i64 %.02837.i149.i, 1       ; 2 uses
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.wo
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !3
  %i.wr = zext i32 %i.wq to i64
  %i.ws = getelementptr inbounds nuw [2 x i8], ptr %i.to, i64 %i.wr
  %i.wt = load i16, ptr %i.ws, align 2, !tbaa !1271
  %i.wu = zext i16 %i.wt to i64
  %i.wv = add nsw i64 %i.un, %i.wu
  %i.ww = shl i64 %i.wv, %i.z
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.wo ; 2 uses
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !39
  %i.wz = add i64 %i.ww, %i.wy
  store i64 %i.wz, ptr %i.wx, align 8, !tbaa !39
  %i.xa = add nuw i64 %.02837.i149.i, 2           ; 2 uses
  %niter457.next.1 = add nuw i64 %niter457, 2     ; 2 uses
  %niter457.ncmp.1 = icmp eq i64 %niter457.next.1, %unroll_iter456
  br i1 %niter457.ncmp.1, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit432.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i, !llvm.loop !1302

bb.ai:                                            ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIjEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc178.i unwind label %bb.d

.noexc178.i:                                      ; preds = %bb.ai
  %i.xb = load ptr, ptr %i.o, align 8, !tbaa !721 ; 7 uses
  %i.xc = invoke noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIjEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.ab)
          to label %.noexc179.i unwind label %bb.d ; 2 uses

.noexc179.i:                                      ; preds = %.noexc178.i
  %i.xd = load ptr, ptr %i.p, align 8, !tbaa !717 ; 3 uses
  %.not.i.i156.i = icmp eq ptr %i.xd, null
  %.not39.i157.i = icmp eq i64 %i.ac, 0           ; 2 uses
  br i1 %.not.i.i156.i, label %.preheader.i169.i, label %.preheader33.i158.i

.preheader33.i158.i:                              ; preds = %.noexc179.i
  br i1 %.not39.i157.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %.lr.ph.i159.i

.lr.ph.i159.i:                                    ; preds = %.preheader33.i158.i
  %i.xe = load ptr, ptr %3, align 8, !tbaa !718
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !424 ; 2 uses
  %.not.i29.i160.i = icmp eq ptr %i.xf, null
  %i.xg = sub i32 1, %i.xc                        ; 2 uses
  br i1 %.not.i29.i160.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i165.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i161.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i165.i: ; preds = %.lr.ph.i159.i, %bb.ak
  %.035.us.i166.i = phi i64 [ %i.xv, %bb.ak ], [ 0, %.lr.ph.i159.i ] ; 5 uses
  %i.xh = lshr i64 %.035.us.i166.i, 6
  %i.xi = and i64 %.035.us.i166.i, 63
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.xh
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !39
  %i.xl = shl nuw i64 1, %i.xi
  %i.xm = and i64 %i.xl, %i.xk
  %.not.us.i167.i = icmp eq i64 %i.xm, 0
  br i1 %.not.us.i167.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i165.i
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %.035.us.i166.i
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !3
  %i.xp = add i32 %i.xo, %i.xg
  %i.xq = zext i32 %i.xp to i64
  %i.xr = shl i64 %i.xq, %i.z
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.035.us.i166.i ; 2 uses
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !39
  %i.xu = add i64 %i.xr, %i.xt
  store i64 %i.xu, ptr %i.xs, align 8, !tbaa !39
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i165.i
  %i.xv = add nuw i64 %.035.us.i166.i, 1          ; 2 uses
  %exitcond43.not.i168.i = icmp eq i64 %i.xv, %i.ac
  br i1 %exitcond43.not.i168.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i165.i, !llvm.loop !1303

.preheader.i169.i:                                ; preds = %.noexc179.i
  br i1 %.not39.i157.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %.lr.ph37.i170.i

.lr.ph37.i170.i:                                  ; preds = %.preheader.i169.i
  %i.xw = load ptr, ptr %3, align 8, !tbaa !718
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !424 ; 4 uses
  %.not.i31.i171.i = icmp eq ptr %i.xx, null
  %i.xy = sub i32 1, %i.xc                        ; 5 uses
  br i1 %.not.i31.i171.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i175.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i.preheader: ; preds = %.lr.ph37.i170.i
  %xtraiter448 = and i64 %i.ac, 1
  %i.xz = icmp eq i64 %i.ac, 1
  br i1 %i.xz, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i.preheader
  %unroll_iter451 = and i64 %i.ac, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i175.i.preheader: ; preds = %.lr.ph37.i170.i
  %min.iters.check363 = icmp ult i64 %i.ac, 4
  br i1 %min.iters.check363, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i175.i.preheader435, label %vector.ph364

vector.ph364:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i175.i.preheader
  %n.vec366 = and i64 %i.ac, -4                   ; 3 uses
  %broadcast.splatinsert367 = insertelement <2 x i32> poison, i32 %i.xy, i64 0
  %broadcast.splat368 = shufflevector <2 x i32> %broadcast.splatinsert367, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert369 = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat370 = shufflevector <2 x i64> %broadcast.splatinsert369, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph364
  %index372 = phi i64 [ 0, %vector.ph364 ], [ %index.next377, %vector.body371 ] ; 3 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %index372 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %wide.load373 = load <2 x i32>, ptr %i.ya, align 4, !tbaa !3
  %wide.load374 = load <2 x i32>, ptr %i.yb, align 4, !tbaa !3
  %i.yc = add <2 x i32> %wide.load373, %broadcast.splat368
  %i.yd = add <2 x i32> %wide.load374, %broadcast.splat368
  %i.ye = zext <2 x i32> %i.yc to <2 x i64>
  %i.yf = zext <2 x i32> %i.yd to <2 x i64>
  %i.yg = shl <2 x i64> %i.ye, %broadcast.splat370
  %i.yh = shl <2 x i64> %i.yf, %broadcast.splat370
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index372 ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16 ; 2 uses
  %wide.load375 = load <2 x i64>, ptr %i.yi, align 8, !tbaa !39
  %wide.load376 = load <2 x i64>, ptr %i.yj, align 8, !tbaa !39
  %i.yk = add <2 x i64> %i.yg, %wide.load375
  %i.yl = add <2 x i64> %i.yh, %wide.load376
  store <2 x i64> %i.yk, ptr %i.yi, align 8, !tbaa !39
  store <2 x i64> %i.yl, ptr %i.yj, align 8, !tbaa !39
  %index.next377 = add nuw i64 %index372, 4       ; 2 uses
  %i.ym = icmp eq i64 %index.next377, %n.vec366
  br i1 %i.ym, label %middle.block378, label %vector.body371, !llvm.loop !1304

middle.block378:                                  ; preds = %vector.body371
  %cmp.n379 = icmp eq i64 %i.ac, %n.vec366
  br i1 %cmp.n379, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i175.i.preheader435

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i175.i.preheader435: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i175.i.preheader, %middle.block378
  %.02836.us.i176.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i175.i.preheader ], [ %n.vec366, %middle.block378 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i175.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i175.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i175.i.preheader435, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i175.i
  %.02836.us.i176.i = phi i64 [ %i.yv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i175.i ], [ %.02836.us.i176.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i175.i.preheader435 ] ; 3 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %.02836.us.i176.i
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !3
  %i.yp = add i32 %i.yo, %i.xy
  %i.yq = zext i32 %i.yp to i64
  %i.yr = shl i64 %i.yq, %i.z
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02836.us.i176.i ; 2 uses
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !39
  %i.yu = add i64 %i.yr, %i.yt
  store i64 %i.yu, ptr %i.ys, align 8, !tbaa !39
  %i.yv = add nuw i64 %.02836.us.i176.i, 1        ; 2 uses
  %exitcond45.not.i177.i = icmp eq i64 %i.yv, %i.ac
  br i1 %exitcond45.not.i177.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i175.i, !llvm.loop !1305

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i161.i: ; preds = %.lr.ph.i159.i, %bb.am
  %.035.i162.i = phi i64 [ %i.zn, %bb.am ], [ 0, %.lr.ph.i159.i ] ; 3 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %.035.i162.i
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !3
  %i.yy = zext i32 %i.yx to i64                   ; 3 uses
  %i.yz = lshr i64 %i.yy, 6
  %i.za = and i64 %i.yy, 63
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.yz
  %i.zc = load i64, ptr %i.zb, align 8, !tbaa !39
  %i.zd = shl nuw i64 1, %i.za
  %i.ze = and i64 %i.zd, %i.zc
  %.not.i163.i = icmp eq i64 %i.ze, 0
  br i1 %.not.i163.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i161.i
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %i.yy
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !3
  %i.zh = add i32 %i.zg, %i.xg
  %i.zi = zext i32 %i.zh to i64
  %i.zj = shl i64 %i.zi, %i.z
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.035.i162.i ; 2 uses
  %i.zl = load i64, ptr %i.zk, align 8, !tbaa !39
  %i.zm = add i64 %i.zj, %i.zl
  store i64 %i.zm, ptr %i.zk, align 8, !tbaa !39
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i161.i
  %i.zn = add nuw i64 %.035.i162.i, 1             ; 2 uses
  %exitcond.not.i164.i = icmp eq i64 %i.zn, %i.ac
  br i1 %exitcond.not.i164.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i161.i, !llvm.loop !1303

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i.preheader.new
  %.02836.i173.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i.preheader.new ], [ %i.aal, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i ] ; 4 uses
  %niter452 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i.preheader.new ], [ %niter452.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i ]
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %.02836.i173.i
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !3
  %i.zq = zext i32 %i.zp to i64
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %i.zq
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !3
  %i.zt = add i32 %i.zs, %i.xy
  %i.zu = zext i32 %i.zt to i64
  %i.zv = shl i64 %i.zu, %i.z
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02836.i173.i ; 2 uses
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !39
  %i.zy = add i64 %i.zv, %i.zx
  store i64 %i.zy, ptr %i.zw, align 8, !tbaa !39
  %i.zz = or disjoint i64 %.02836.i173.i, 1       ; 2 uses
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %i.zz
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !3
  %i.aac = zext i32 %i.aab to i64
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %i.aac
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !3
  %i.aaf = add i32 %i.aae, %i.xy
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = shl i64 %i.aag, %i.z
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.zz ; 2 uses
  %i.aaj = load i64, ptr %i.aai, align 8, !tbaa !39
  %i.aak = add i64 %i.aah, %i.aaj
  store i64 %i.aak, ptr %i.aai, align 8, !tbaa !39
  %i.aal = add nuw i64 %.02836.i173.i, 2          ; 2 uses
  %niter452.next.1 = add nuw i64 %niter452, 2     ; 2 uses
  %niter452.ncmp.1 = icmp eq i64 %niter452.next.1, %unroll_iter451
  br i1 %niter452.ncmp.1, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit437.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i, !llvm.loop !1306

bb.an:                                            ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc202.i unwind label %bb.d

.noexc202.i:                                      ; preds = %bb.an
  %i.aam = load ptr, ptr %i.o, align 8, !tbaa !721 ; 11 uses
  %i.aan = invoke noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeImEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.ab)
          to label %.noexc203.i unwind label %bb.d ; 2 uses

.noexc203.i:                                      ; preds = %.noexc202.i
  %i.aao = load ptr, ptr %i.p, align 8, !tbaa !717 ; 3 uses
  %.not.i.i180.i = icmp eq ptr %i.aao, null
  %.not39.i181.i = icmp eq i64 %i.ac, 0           ; 2 uses
  br i1 %.not.i.i180.i, label %.preheader.i193.i, label %.preheader33.i182.i

.preheader33.i182.i:                              ; preds = %.noexc203.i
  br i1 %.not39.i181.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %.lr.ph.i183.i

.lr.ph.i183.i:                                    ; preds = %.preheader33.i182.i
  %i.aap = load ptr, ptr %3, align 8, !tbaa !718
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !424 ; 2 uses
  %.not.i29.i184.i = icmp eq ptr %i.aaq, null
  %i.aar = sub i64 1, %i.aan                      ; 2 uses
  br i1 %.not.i29.i184.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i189.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i185.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i189.i: ; preds = %.lr.ph.i183.i, %bb.ap
  %.035.us.i190.i = phi i64 [ %i.abf, %bb.ap ], [ 0, %.lr.ph.i183.i ] ; 5 uses
  %i.aas = lshr i64 %.035.us.i190.i, 6
  %i.aat = and i64 %.035.us.i190.i, 63
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %i.aao, i64 %i.aas
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !39
  %i.aaw = shl nuw i64 1, %i.aat
  %i.aax = and i64 %i.aaw, %i.aav
  %.not.us.i191.i = icmp eq i64 %i.aax, 0
  br i1 %.not.us.i191.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i189.i
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %.035.us.i190.i
  %i.aaz = load i64, ptr %i.aay, align 8, !tbaa !39
  %i.aba = add i64 %i.aaz, %i.aar
  %i.abb = shl i64 %i.aba, %i.z
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.035.us.i190.i ; 2 uses
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !39
  %i.abe = add i64 %i.abb, %i.abd
  store i64 %i.abe, ptr %i.abc, align 8, !tbaa !39
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i189.i
  %i.abf = add nuw i64 %.035.us.i190.i, 1         ; 2 uses
  %exitcond43.not.i192.i = icmp eq i64 %i.abf, %i.ac
  br i1 %exitcond43.not.i192.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.i189.i, !llvm.loop !1307

.preheader.i193.i:                                ; preds = %.noexc203.i
  br i1 %.not39.i181.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %.lr.ph37.i194.i

.lr.ph37.i194.i:                                  ; preds = %.preheader.i193.i
  %i.abg = load ptr, ptr %3, align 8, !tbaa !718
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !424 ; 4 uses
  %.not.i31.i195.i = icmp eq ptr %i.abh, null
  %i.abi = sub i64 1, %i.aan                      ; 7 uses
  br i1 %.not.i31.i195.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i196.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i196.i.preheader: ; preds = %.lr.ph37.i194.i
  %xtraiter = and i64 %i.ac, 1
  %i.abj = icmp eq i64 %i.ac, 1
  br i1 %i.abj, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i196.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i196.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i196.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i196.i.preheader
  %unroll_iter = and i64 %i.ac, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i196.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.preheader: ; preds = %.lr.ph37.i194.i
  %min.iters.check388 = icmp ult i64 %i.ac, 4
  br i1 %min.iters.check388, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.preheader440, label %vector.memcheck381

vector.memcheck381:                               ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.preheader
  %i.abk = shl i64 %i.ac, 3                       ; 2 uses
  %scevgep382 = getelementptr i8, ptr %i.d, i64 %i.abk
  %scevgep383 = getelementptr i8, ptr %i.aam, i64 %i.abk
  %bound0384 = icmp ult ptr %i.d, %scevgep383
  %bound1385 = icmp ult ptr %i.aam, %scevgep382
  %found.conflict386 = and i1 %bound0384, %bound1385
  br i1 %found.conflict386, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.preheader440, label %vector.ph389

vector.ph389:                                     ; preds = %vector.memcheck381
  %n.vec391 = and i64 %i.ac, -4                   ; 3 uses
  %broadcast.splatinsert392 = insertelement <2 x i64> poison, i64 %i.abi, i64 0
  %broadcast.splat393 = shufflevector <2 x i64> %broadcast.splatinsert392, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert394 = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat395 = shufflevector <2 x i64> %broadcast.splatinsert394, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body396

vector.body396:                                   ; preds = %vector.body396, %vector.ph389
  %index397 = phi i64 [ 0, %vector.ph389 ], [ %index.next402, %vector.body396 ] ; 3 uses
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %index397 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 16
  %wide.load398 = load <2 x i64>, ptr %i.abl, align 8, !tbaa !39, !alias.scope !1308
  %wide.load399 = load <2 x i64>, ptr %i.abm, align 8, !tbaa !39, !alias.scope !1308
  %i.abn = add <2 x i64> %wide.load398, %broadcast.splat393
  %i.abo = add <2 x i64> %wide.load399, %broadcast.splat393
  %i.abp = shl <2 x i64> %i.abn, %broadcast.splat395
  %i.abq = shl <2 x i64> %i.abo, %broadcast.splat395
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index397 ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 16 ; 2 uses
  %wide.load400 = load <2 x i64>, ptr %i.abr, align 8, !tbaa !39, !alias.scope !1311, !noalias !1308
  %wide.load401 = load <2 x i64>, ptr %i.abs, align 8, !tbaa !39, !alias.scope !1311, !noalias !1308
  %i.abt = add <2 x i64> %i.abp, %wide.load400
  %i.abu = add <2 x i64> %i.abq, %wide.load401
  store <2 x i64> %i.abt, ptr %i.abr, align 8, !tbaa !39, !alias.scope !1311, !noalias !1308
  store <2 x i64> %i.abu, ptr %i.abs, align 8, !tbaa !39, !alias.scope !1311, !noalias !1308
  %index.next402 = add nuw i64 %index397, 4       ; 2 uses
  %i.abv = icmp eq i64 %index.next402, %n.vec391
  br i1 %i.abv, label %middle.block403, label %vector.body396, !llvm.loop !1313

middle.block403:                                  ; preds = %vector.body396
  %cmp.n404 = icmp eq i64 %i.ac, %n.vec391
  br i1 %cmp.n404, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.preheader440

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.preheader440: ; preds = %vector.memcheck381, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.preheader, %middle.block403
  %.02836.us.i200.i.ph = phi i64 [ 0, %vector.memcheck381 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.preheader ], [ %n.vec391, %middle.block403 ] ; 5 uses
  %.neg = or disjoint i64 %.02836.us.i200.i.ph, 1
  %xtraiter446 = and i64 %i.ac, 1
  %lcmp.mod447.not = icmp eq i64 %xtraiter446, 0
  br i1 %lcmp.mod447.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.preheader440
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %.02836.us.i200.i.ph
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !39
  %i.aby = add i64 %i.abx, %i.abi
  %i.abz = shl i64 %i.aby, %i.z
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02836.us.i200.i.ph ; 2 uses
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !39
  %i.acc = add i64 %i.abz, %i.acb
  store i64 %i.acc, ptr %i.aca, align 8, !tbaa !39
  %i.acd = or disjoint i64 %.02836.us.i200.i.ph, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.preheader440
  %.02836.us.i200.i.unr = phi i64 [ %.02836.us.i200.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.preheader440 ], [ %i.acd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.prol ]
  %i.ace = icmp eq i64 %i.ac, %.neg
  br i1 %i.ace, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i
  %.02836.us.i200.i = phi i64 [ %i.acu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i ], [ %.02836.us.i200.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i.prol.loopexit ] ; 4 uses
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %.02836.us.i200.i
  %i.acg = load i64, ptr %i.acf, align 8, !tbaa !39
  %i.ach = add i64 %i.acg, %i.abi
  %i.aci = shl i64 %i.ach, %i.z
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02836.us.i200.i ; 2 uses
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !39
  %i.acl = add i64 %i.aci, %i.ack
  store i64 %i.acl, ptr %i.acj, align 8, !tbaa !39
  %i.acm = add nuw i64 %.02836.us.i200.i, 1       ; 2 uses
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %i.acm
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !39
  %i.acp = add i64 %i.aco, %i.abi
  %i.acq = shl i64 %i.acp, %i.z
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.acm ; 2 uses
  %i.acs = load i64, ptr %i.acr, align 8, !tbaa !39
  %i.act = add i64 %i.acq, %i.acs
  store i64 %i.act, ptr %i.acr, align 8, !tbaa !39
  %i.acu = add nuw i64 %.02836.us.i200.i, 2       ; 2 uses
  %exitcond45.not.i201.i.1 = icmp eq i64 %i.acu, %i.ac
  br i1 %exitcond45.not.i201.i.1, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.us.i199.i, !llvm.loop !1314

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i185.i: ; preds = %.lr.ph.i183.i, %bb.ar
  %.035.i186.i = phi i64 [ %i.adl, %bb.ar ], [ 0, %.lr.ph.i183.i ] ; 3 uses
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %.035.i186.i
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !3
  %i.acx = zext i32 %i.acw to i64                 ; 3 uses
  %i.acy = lshr i64 %i.acx, 6
  %i.acz = and i64 %i.acx, 63
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.aao, i64 %i.acy
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !39
  %i.adc = shl nuw i64 1, %i.acz
  %i.add = and i64 %i.adc, %i.adb
  %.not.i187.i = icmp eq i64 %i.add, 0
  br i1 %.not.i187.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i185.i
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %i.acx
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !39
  %i.adg = add i64 %i.adf, %i.aar
  %i.adh = shl i64 %i.adg, %i.z
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.035.i186.i ; 2 uses
  %i.adj = load i64, ptr %i.adi, align 8, !tbaa !39
  %i.adk = add i64 %i.adh, %i.adj
  store i64 %i.adk, ptr %i.adi, align 8, !tbaa !39
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i185.i
  %i.adl = add nuw i64 %.035.i186.i, 1            ; 2 uses
  %exitcond.not.i188.i = icmp eq i64 %i.adl, %i.ac
  br i1 %exitcond.not.i188.i, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i185.i, !llvm.loop !1307

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i196.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i196.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i196.i.preheader.new
  %.02836.i197.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i196.i.preheader.new ], [ %i.aeh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i196.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i196.i.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i196.i ]
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.abh, i64 %.02836.i197.i
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !3
  %i.ado = zext i32 %i.adn to i64
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %i.ado
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !39
  %i.adr = add i64 %i.adq, %i.abi
  %i.ads = shl i64 %i.adr, %i.z
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02836.i197.i ; 2 uses
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !39
  %i.adv = add i64 %i.ads, %i.adu
  store i64 %i.adv, ptr %i.adt, align 8, !tbaa !39
  %i.adw = or disjoint i64 %.02836.i197.i, 1      ; 2 uses
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.abh, i64 %i.adw
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !3
  %i.adz = zext i32 %i.ady to i64
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %i.adz
  %i.aeb = load i64, ptr %i.aea, align 8, !tbaa !39
  %i.aec = add i64 %i.aeb, %i.abi
  %i.aed = shl i64 %i.aec, %i.z
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.adw ; 2 uses
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !39
  %i.aeg = add i64 %i.aed, %i.aef
  store i64 %i.aeg, ptr %i.aee, align 8, !tbaa !39
  %i.aeh = add nuw i64 %.02836.i197.i, 2          ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit442.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i196.i, !llvm.loop !1315

bb.as:                                            ; preds = %bb.c
  %i.aei = call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.at unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aei, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @__cxa_throw(ptr nonnull %i.aei, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.bk unwind label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.as
  %i.aej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0.i = phi i1 [ false, %bb.au ], [ true, %bb.at ] ; 2 uses
  %i.aek = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ael = load ptr, ptr %4, align 8, !tbaa !54   ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aen = icmp eq ptr %i.ael, %i.aem
  br i1 %i.aen, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.av
  call void @_ZdlPv(ptr noundef %i.ael) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br i1 %.0.i, label %bb.aw, label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br i1 %.0.i, label %bb.aw, label %bb.bj

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn206.i = phi { ptr, i32 } [ %i.aej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.aek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.aek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.aei) #40
  br label %bb.bj

_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit407.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i
  %lcmp.mod483.not = icmp eq i64 %xtraiter482, 0
  br i1 %lcmp.mod483.not, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.epil.preheader: ; preds = %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit407.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.preheader
  %.02837.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i.i.preheader ], [ %i.em, %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit407.unr-lcssa ] ; 2 uses
  %lcmp.mod484 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod484)
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.02837.i.i.epil.init
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !3
  %i.aeq = zext i32 %i.aep to i64
  %i.aer = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aeq
  %i.aes = load i8, ptr %i.aer, align 1, !tbaa !272
  %i.aet = sext i8 %i.aes to i64
  %i.aeu = add nsw i64 %i.bf, %i.aet
  %i.aev = shl i64 %i.aeu, %i.z
  %i.aew = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02837.i.i.epil.init ; 2 uses
  %i.aex = load i64, ptr %i.aew, align 8, !tbaa !39
  %i.aey = add i64 %i.aev, %i.aex
  store i64 %i.aey, ptr %i.aew, align 8, !tbaa !39
  br label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i

_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit412.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i
  %lcmp.mod478.not = icmp eq i64 %xtraiter477, 0
  br i1 %lcmp.mod478.not, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i.epil.preheader: ; preds = %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit412.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i.preheader
  %.02837.i61.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i60.i.preheader ], [ %i.hz, %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit412.unr-lcssa ] ; 2 uses
  %lcmp.mod479 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod479)
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %.02837.i61.i.epil.init
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !3
  %i.afb = zext i32 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.afb
  %i.afd = load i16, ptr %i.afc, align 2, !tbaa !1271
  %i.afe = sext i16 %i.afd to i64
  %i.aff = add nsw i64 %i.fm, %i.afe
  %i.afg = shl i64 %i.aff, %i.z
  %i.afh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02837.i61.i.epil.init ; 2 uses
  %i.afi = load i64, ptr %i.afh, align 8, !tbaa !39
  %i.afj = add i64 %i.afg, %i.afi
  store i64 %i.afj, ptr %i.afh, align 8, !tbaa !39
  br label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i

_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit417.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i
  %lcmp.mod473.not = icmp eq i64 %xtraiter472, 0
  br i1 %lcmp.mod473.not, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i.epil.preheader: ; preds = %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit417.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i.preheader
  %.02836.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i78.i.preheader ], [ %i.lk, %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit417.unr-lcssa ] ; 2 uses
  %lcmp.mod474 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod474)
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %.02836.i.i.epil.init
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !3
  %i.afm = zext i32 %i.afl to i64
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.afm
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !3
  %i.afp = add i32 %i.afo, %i.ix
  %i.afq = sext i32 %i.afp to i64
  %i.afr = shl i64 %i.afq, %i.z
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02836.i.i.epil.init ; 2 uses
  %i.aft = load i64, ptr %i.afs, align 8, !tbaa !39
  %i.afu = add i64 %i.afr, %i.aft
  store i64 %i.afu, ptr %i.afs, align 8, !tbaa !39
  br label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i

_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit422.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i
  %lcmp.mod466.not = icmp eq i64 %xtraiter465, 0
  br i1 %lcmp.mod466.not, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i.epil.preheader: ; preds = %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit422.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i.preheader
  %.02836.i101.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i100.i.preheader ], [ %i.pg, %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit422.unr-lcssa ] ; 2 uses
  %lcmp.mod467 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod467)
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %.02836.i101.i.epil.init
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !3
  %i.afx = zext i32 %i.afw to i64
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.afx
  %i.afz = load i64, ptr %i.afy, align 8, !tbaa !39
  %i.aga = add i64 %i.afz, %i.mh
  %i.agb = shl i64 %i.aga, %i.z
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02836.i101.i.epil.init ; 2 uses
  %i.agd = load i64, ptr %i.agc, align 8, !tbaa !39
  %i.age = add i64 %i.agb, %i.agd
  store i64 %i.age, ptr %i.agc, align 8, !tbaa !39
  br label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i

_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit427.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i
  %lcmp.mod459.not = icmp eq i64 %xtraiter458, 0
  br i1 %lcmp.mod459.not, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i.epil.preheader: ; preds = %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit427.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i.preheader
  %.02837.i125.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i124.i.preheader ], [ %i.tn, %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit427.unr-lcssa ] ; 2 uses
  %lcmp.mod460 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod460)
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %.02837.i125.i.epil.init
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !3
  %i.agh = zext i32 %i.agg to i64
  %i.agi = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.agh
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !272
  %i.agk = zext i8 %i.agj to i64
  %i.agl = add nsw i64 %i.qg, %i.agk
  %i.agm = shl i64 %i.agl, %i.z
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02837.i125.i.epil.init ; 2 uses
  %i.ago = load i64, ptr %i.agn, align 8, !tbaa !39
  %i.agp = add i64 %i.agm, %i.ago
  store i64 %i.agp, ptr %i.agn, align 8, !tbaa !39
  br label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i

_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit432.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i
  %lcmp.mod454.not = icmp eq i64 %xtraiter453, 0
  br i1 %lcmp.mod454.not, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i.epil.preheader: ; preds = %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit432.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i.preheader
  %.02837.i149.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i148.i.preheader ], [ %i.xa, %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit432.unr-lcssa ] ; 2 uses
  %lcmp.mod455 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod455)
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %.02837.i149.i.epil.init
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !3
  %i.ags = zext i32 %i.agr to i64
  %i.agt = getelementptr inbounds nuw [2 x i8], ptr %i.to, i64 %i.ags
  %i.agu = load i16, ptr %i.agt, align 2, !tbaa !1271
  %i.agv = zext i16 %i.agu to i64
  %i.agw = add nsw i64 %i.un, %i.agv
  %i.agx = shl i64 %i.agw, %i.z
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02837.i149.i.epil.init ; 2 uses
  %i.agz = load i64, ptr %i.agy, align 8, !tbaa !39
  %i.aha = add i64 %i.agx, %i.agz
  store i64 %i.aha, ptr %i.agy, align 8, !tbaa !39
  br label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i

_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit437.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i
  %lcmp.mod449.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i.epil.preheader: ; preds = %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit437.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i.preheader
  %.02836.i173.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit32.i172.i.preheader ], [ %i.aal, %_ZN6duckdbL29ComputeGroupLocationTemplatedIaEEvRNS_19UnifiedVectorFormatERNS_5ValueEPmmm.exit.i.loopexit437.unr-lcssa ] ; 2 uses
  %lcmp.mod450 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod450)
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %.02836.i173.i.epil.init
  %i.ahc = load i32, ptr %i.ahb, align 4, !tbaa !3
  %i.ahd = zext i32 %i.ahc to i64
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %i.ahd
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !3
  %i.ahg = add i32 %i.ahf, %i.xy
  %i.ahh = zext i32 %i.ahg to i64
  %i.ahi = shl i64 %i.ahh, %i.z
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02836.i173.i.epil.init ; 2 uses
  %i.ahk = load i64, ptr %i.ahj, align 8, !tbaa !39
  %i.ahl = add i64 %i.ahi, %i.ahk
end_hunk_15
