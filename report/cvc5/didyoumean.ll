Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/didyoumean?download=true
inline.NumInlined: 823
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4cvc58internal10DidYouMean8getMatchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0130.0173)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread137: ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %i.bq = icmp eq i64 %spec.select.i.i, 0
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread137
  %i.br = load ptr, ptr %2, align 8, !tbaa !19
  %i.bs = load ptr, ptr %.sroa.0130.0173, align 8, !tbaa !19
  %bcmp = call i32 @bcmp(ptr %i.bs, ptr %i.br, i64 %spec.select.i.i)
  %.not.i55 = icmp ne i32 %bcmp, 0
  %.not.not = icmp ugt i64 %i.at, %i.as
  %or.cond145 = or i1 %.not.not, %.not.i55
  br i1 %or.cond145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread, label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread137
  %.not.not.old = icmp ugt i64 %i.at, %i.as
  br i1 %.not.not.old, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.thread, label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false)
  %i.bt = add nuw i64 %i.as, 1
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false)
  %i.bu = add i64 %i.as, 1                        ; 2 uses
  %.not.i56 = icmp eq i64 %i.bu, 0
  br i1 %.not.i56, label %_ZNSt6vectorImSaImEE6resizeEm.exit.2.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.thread
  %i.bv = phi i64 [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread.thread ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ] ; 8 uses
  %i.bw = icmp ugt i64 %i.bv, 1152921504606846975
  br i1 %i.bw, label %bb.l, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i114

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
          to label %.noexc122 unwind label %.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.l
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i114: ; preds = %bb.k
  %i.bx = shl nuw nsw i64 %i.bv, 3
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #22
          to label %.noexc123 unwind label %.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i114
  store i64 0, ptr %i.by, align 8, !tbaa !24
  %i.bz = icmp eq i64 %i.as, 0
  br i1 %i.bz, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i97, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i116

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i116: ; preds = %.noexc123
  %i.ca = getelementptr i8, ptr %i.by, i64 8
  %.idx.i.i.i.i.i31.i117 = shl nuw nsw i64 %i.as, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ca, i8 0, i64 %.idx.i.i.i.i.i31.i117, i1 false), !tbaa !24
  br label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i97

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i97: ; preds = %.noexc123, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i116
  store ptr %i.by, ptr %3, align 8, !tbaa !28
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bv ; 3 uses
  store ptr %i.cb, ptr %i.ah, align 8, !tbaa !47
  store ptr %i.cb, ptr %i.ai, align 8, !tbaa !29
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.bv, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #22
          to label %.noexc106 unwind label %.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc106:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i97
  store i64 0, ptr %i.ce, align 8, !tbaa !24
  %i.cf = icmp eq i64 %i.as, 0
  br i1 %i.cf, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i99

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i99: ; preds = %.noexc106
  %i.cg = getelementptr i8, ptr %i.ce, i64 8
  %.idx.i.i.i.i.i31.i100 = shl nuw nsw i64 %i.as, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cg, i8 0, i64 %.idx.i.i.i.i.i31.i100, i1 false), !tbaa !24
  br label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i99, %.noexc106
  store ptr %i.ce, ptr %.088.ptr118.1.phi.trans.insert.i, align 8, !tbaa !28
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bv ; 3 uses
  store ptr %i.ch, ptr %.phi.trans.insert.i, align 8, !tbaa !47
  store ptr %i.ch, ptr %i.aj, align 8, !tbaa !29
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.bv, 3
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #22
          to label %.noexc90 unwind label %.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc90:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.ck, align 8, !tbaa !24
  %i.cl = icmp eq i64 %i.as, 0
  br i1 %i.cl, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc90
  %i.cm = getelementptr i8, ptr %i.ck, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.as, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cm, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !24
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc90
  store ptr %i.ck, ptr %.088.ptr118.2.i, align 8, !tbaa !28
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.bv ; 3 uses
  store ptr %i.cn, ptr %i.ak, align 8, !tbaa !47
  store ptr %i.cn, ptr %i.al, align 8, !tbaa !29
  %i.co = ptrtoint ptr %i.cn to i64
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.2.i

_ZNSt6vectorImSaImEE6resizeEm.exit.2.i:           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i
  %i.cp = phi ptr [ %i.ce, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ] ; 3 uses
  %i.cq = phi i64 [ %i.ci, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ]
  %i.cr = phi i64 [ %i.bv, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ] ; 5 uses
  %i.cs = phi i64 [ %i.cc, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ]
  %i.ct = phi ptr [ %i.by, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ] ; 5 uses
  %i.cu = phi i64 [ %i.co, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ]
  %i.cv = phi ptr [ %i.ck, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i ], [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ] ; 3 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 1) ; 2 uses
  %min.iters.check = icmp ult i64 %i.cr, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.2.i
  %n.vec = and i64 %umax.i, 1152921504606846972   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <2 x i64> %vec.ind, ptr %i.cw, align 8, !tbaa !24
  store <2 x i64> %step.add, ptr %i.cx, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.2.i, %middle.block
  %.087119.i.ph = phi i64 [ 0, %_ZNSt6vectorImSaImEE6resizeEm.exit.2.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit.split-lp151.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i114, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i97, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %bb.l
  %lpad.loopexit.split-lp304 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayISt6vectorImSaImEELm3EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body

.preheader.i:                                     ; preds = %scalar.ph, %middle.block
  %.not92122.i = icmp eq i64 %i.at, 0
  br i1 %.not92122.i, label %._crit_edge.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %.preheader.i
  %.not93120.i = icmp eq i64 %i.as, 0
  br i1 %.not93120.i, label %.loopexit.us.preheader.i, label %.lr.ph124.split.i

.loopexit.us.preheader.i:                         ; preds = %.lr.ph124.i
  %i.cz = add i64 %i.at, 1                        ; 2 uses
  %umax130.i = call i64 @llvm.umax.i64(i64 %i.cz, i64 2)
  %i.da = add i64 %umax130.i, -1                  ; 3 uses
  %xtraiter = and i64 %i.da, 1
  %i.db = icmp ult i64 %i.cz, 3
  br i1 %i.db, label %.loopexit.us.i.epil.preheader, label %.loopexit.us.preheader.i.new

.loopexit.us.preheader.i.new:                     ; preds = %.loopexit.us.preheader.i
  %unroll_iter = and i64 %i.da, -2
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.loopexit.us.i, %.loopexit.us.preheader.i.new
  %.086123.us.i = phi i64 [ 1, %.loopexit.us.preheader.i.new ], [ %i.di, %.loopexit.us.i ] ; 4 uses
  %niter = phi i64 [ 0, %.loopexit.us.preheader.i.new ], [ %niter.next.1, %.loopexit.us.i ]
  %i.dc = urem i64 %.086123.us.i, 3
  %i.dd = add nuw i64 %.086123.us.i, 1            ; 2 uses
  %i.de = shl i64 %.086123.us.i, 1
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.dc
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !28
  store i64 %i.de, ptr %i.dg, align 8, !tbaa !24
  %i.dh = urem i64 %i.dd, 3
  %i.di = add nuw i64 %.086123.us.i, 2            ; 2 uses
  %i.dj = shl i64 %i.dd, 1
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.dh
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !28
  store i64 %i.dj, ptr %i.dl, align 8, !tbaa !24
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.loopexit.us.i, !llvm.loop !41

.lr.ph124.split.i:                                ; preds = %.lr.ph124.i
  %i.dm = load ptr, ptr %2, align 8, !tbaa !19
  %i.dn = load ptr, ptr %.sroa.0130.0173, align 8, !tbaa !19 ; 4 uses
  %umax126.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 2) ; 2 uses
  %exitcond127.peel.i = icmp samesign ult i64 %i.cr, 3
  br label %.lr.ph.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.087119.i = phi i64 [ %i.dp, %scalar.ph ], [ %.087119.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.087119.i
  store i64 %.087119.i, ptr %i.do, align 8, !tbaa !24
  %i.dp = add nuw i64 %.087119.i, 1               ; 2 uses
  %exitcond.i = icmp eq i64 %i.dp, %umax.i
  br i1 %exitcond.i, label %.preheader.i, label %scalar.ph, !llvm.loop !42

..loopexit_crit_edge.i:                           ; preds = %bb.aa, %bb.x, %bb.r
  %exitcond129.i = icmp eq i64 %.086123.i, %i.at
  br i1 %exitcond129.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !41

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.loopexit.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.loopexit.us.i.epil.preheader

.loopexit.us.i.epil.preheader:                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.loopexit.us.preheader.i
  %.086123.us.i.epil.init = phi i64 [ 1, %.loopexit.us.preheader.i ], [ %i.di, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod316 = trunc i64 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod316)
  %i.dq = urem i64 %.086123.us.i.epil.init, 3
  %i.dr = shl i64 %.086123.us.i.epil.init, 1
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.dq
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !28
  store i64 %i.dr, ptr %i.dt, align 8, !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.i, %.loopexit.us.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  %i.du = urem i64 %i.at, 3
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !28
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.as
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !24
  %.not.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %i.dz = ptrtoint ptr %i.cv to i64
  %i.ea = sub i64 %i.cu, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.ea) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.m, %._crit_edge.i
  %.not.i.i.i.1.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.1.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.1.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %i.eb = ptrtoint ptr %i.cp to i64
  %i.ec = sub i64 %i.cq, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.ec) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit.1.i.i

_ZNSt6vectorImSaImEED2Ev.exit.1.i.i:              ; preds = %bb.n, %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %.not.i.i.i.2.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.2.i.i, label %bb.ab, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.1.i.i
  %i.ed = ptrtoint ptr %i.ct to i64
  %i.ee = sub i64 %i.cs, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.ee) #23
  br label %bb.ab

.lr.ph.i:                                         ; preds = %..loopexit_crit_edge.i, %.lr.ph124.split.i
  %.086123.i = phi i64 [ 1, %.lr.ph124.split.i ], [ %i.ei, %..loopexit_crit_edge.i ] ; 7 uses
  %i.ef = urem i64 %.086123.i, 3
  %i.eg = add i64 %.086123.i, 2
  %i.eh = urem i64 %i.eg, 3
  %i.ei = add nuw i64 %.086123.i, 1               ; 2 uses
  %i.ej = urem i64 %i.ei, 3
  %i.ek = shl i64 %.086123.i, 1                   ; 2 uses
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.ef
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !28 ; 4 uses
  store i64 %i.ek, ptr %i.em, align 8, !tbaa !24
  %i.en = getelementptr i8, ptr %i.dm, i64 %.086123.i ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 -1     ; 4 uses
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.eh
  %i.eq = icmp ugt i64 %.086123.i, 1
  %i.er = getelementptr i8, ptr %i.en, i64 -2
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.ej
  %i.et = load ptr, ptr %i.ep, align 8, !tbaa !28 ; 9 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 3 uses
  store i64 100000000, ptr %i.eu, align 8, !tbaa !24
  %i.ev = load i8, ptr %i.eo, align 1, !tbaa !25  ; 2 uses
  %i.ew = load i8, ptr %i.dn, align 1, !tbaa !25  ; 2 uses
  %i.ex = icmp eq i8 %i.ev, %i.ew
  br i1 %i.ex, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.ey = sext i8 %i.ev to i32
  %i.ez = call i32 @tolower(i32 noundef %i.ey) #24
  %i.fa = sext i8 %i.ew to i32
  %i.fb = call i32 @tolower(i32 noundef %i.fa) #24
  %i.fc = icmp eq i32 %i.ez, %i.fb
  %i.fd = load i64, ptr %i.et, align 8, !tbaa !24 ; 2 uses
  %i.fe = add i64 %i.fd, 2
  %spec.select.i = select i1 %i.fc, i64 %i.fd, i64 %i.fe
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.i
  %i.ff = load i64, ptr %i.et, align 8, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink.i = phi i64 [ %spec.select.i, %bb.p ], [ %i.ff, %bb.q ]
  %i.fg = or disjoint i64 %i.ek, 1
  %.sroa.speculated109.peel.i = call i64 @llvm.umin.i64(i64 %.sink.i, i64 %i.fg)
  %.sroa.speculated101.peel.i = call i64 @llvm.umin.i64(i64 %.sroa.speculated109.peel.i, i64 100000000) ; 2 uses
  store i64 %.sroa.speculated101.peel.i, ptr %i.eu, align 8, !tbaa !24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !24
  %i.fj = add i64 %i.fi, 2
  %.sroa.speculated.peel.i = call i64 @llvm.umin.i64(i64 %i.fj, i64 %.sroa.speculated101.peel.i) ; 3 uses
  store i64 %.sroa.speculated.peel.i, ptr %i.eu, align 8, !tbaa !24
  br i1 %exitcond127.peel.i, label %..loopexit_crit_edge.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.r
  br i1 %i.eq, label %.peel.next.i.us, label %.peel.next.i

.peel.next.i.us:                                  ; preds = %.peel.next.i.preheader, %bb.x
  %i.fk = phi i64 [ %.sroa.speculated.i58.us, %bb.x ], [ %.sroa.speculated.peel.i, %.peel.next.i.preheader ]
  %.0121.i.us = phi i64 [ %i.gr, %bb.x ], [ 2, %.peel.next.i.preheader ] ; 5 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.0121.i.us ; 5 uses
  store i64 100000000, ptr %i.fl, align 8, !tbaa !24
  %i.fm = load i8, ptr %i.eo, align 1, !tbaa !25  ; 2 uses
  %i.fn = add i64 %.0121.i.us, -1                 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.fn ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !25  ; 2 uses
  %i.fq = icmp eq i8 %i.fm, %i.fp
  br i1 %i.fq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.peel.next.i.us
  %i.fr = sext i8 %i.fm to i32
  %i.fs = call i32 @tolower(i32 noundef %i.fr) #24
  %i.ft = sext i8 %i.fp to i32
  %i.fu = call i32 @tolower(i32 noundef %i.ft) #24
  %i.fv = icmp eq i32 %i.fs, %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.fn
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !24 ; 2 uses
  %i.fy = add i64 %i.fx, 2
  %spec.select156.i.us = select i1 %i.fv, i64 %i.fx, i64 %i.fy
  br label %bb.u

bb.t:                                             ; preds = %.peel.next.i.us
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.fn
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink155.i.us = phi i64 [ %i.ga, %bb.t ], [ %spec.select156.i.us, %bb.s ]
  %.sroa.speculated113.i.us = call i64 @llvm.umin.i64(i64 %.sink155.i.us, i64 100000000) ; 4 uses
  store i64 %.sroa.speculated113.i.us, ptr %i.fl, align 8, !tbaa !24
  %i.gb = load i8, ptr %i.eo, align 1, !tbaa !25
  %i.gc = add i64 %.0121.i.us, -2                 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !25
  %i.gf = icmp eq i8 %i.gb, %i.ge
  br i1 %i.gf, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.gg = load i8, ptr %i.er, align 1, !tbaa !25
  %i.gh = load i8, ptr %i.fo, align 1, !tbaa !25
  %i.gi = icmp eq i8 %i.gg, %i.gh
  br i1 %i.gi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gj = load ptr, ptr %i.es, align 8, !tbaa !28
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gc
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !24
  %.sroa.speculated105.i.us = call i64 @llvm.umin.i64(i64 %i.gl, i64 %.sroa.speculated113.i.us) ; 2 uses
  store i64 %.sroa.speculated105.i.us, ptr %i.fl, align 8, !tbaa !24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.gm = phi i64 [ %.sroa.speculated105.i.us, %bb.w ], [ %.sroa.speculated113.i.us, %bb.v ], [ %.sroa.speculated113.i.us, %bb.u ]
  %i.gn = add nuw nsw i64 %i.fk, 1
  %.sroa.speculated101.i.us = call i64 @llvm.umin.i64(i64 %i.gn, i64 %i.gm) ; 2 uses
  store i64 %.sroa.speculated101.i.us, ptr %i.fl, align 8, !tbaa !24
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.0121.i.us
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !24
  %i.gq = add i64 %i.gp, 2
  %.sroa.speculated.i58.us = call i64 @llvm.umin.i64(i64 %i.gq, i64 %.sroa.speculated101.i.us) ; 2 uses
  store i64 %.sroa.speculated.i58.us, ptr %i.fl, align 8, !tbaa !24
  %i.gr = add nuw i64 %.0121.i.us, 1              ; 2 uses
  %exitcond127.i.us = icmp eq i64 %i.gr, %umax126.i
  br i1 %exitcond127.i.us, label %..loopexit_crit_edge.i, label %.peel.next.i.us, !llvm.loop !43

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %bb.aa
  %i.gs = phi i64 [ %.sroa.speculated.i58, %bb.aa ], [ %.sroa.speculated.peel.i, %.peel.next.i.preheader ]
  %.0121.i = phi i64 [ %i.hn, %bb.aa ], [ 2, %.peel.next.i.preheader ] ; 4 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.0121.i ; 3 uses
  store i64 100000000, ptr %i.gt, align 8, !tbaa !24
  %i.gu = load i8, ptr %i.eo, align 1, !tbaa !25  ; 2 uses
  %i.gv = add i64 %.0121.i, -1                    ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !25  ; 2 uses
  %i.gy = icmp eq i8 %i.gu, %i.gx
  br i1 %i.gy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.peel.next.i
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.gv
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !24
  br label %bb.aa

bb.z:                                             ; preds = %.peel.next.i
  %i.hb = sext i8 %i.gu to i32
  %i.hc = call i32 @tolower(i32 noundef %i.hb) #24
  %i.hd = sext i8 %i.gx to i32
  %i.he = call i32 @tolower(i32 noundef %i.hd) #24
  %i.hf = icmp eq i32 %i.hc, %i.he
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.gv
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !24 ; 2 uses
  %i.hi = add i64 %i.hh, 2
  %spec.select156.i = select i1 %i.hf, i64 %i.hh, i64 %i.hi
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink155.i = phi i64 [ %i.ha, %bb.y ], [ %spec.select156.i, %bb.z ]
  %i.hj = add nsw i64 %i.gs, 1
  %.sroa.speculated113.i = call i64 @llvm.umin.i64(i64 %.sink155.i, i64 %i.hj)
  %.sroa.speculated101.i = call i64 @llvm.umin.i64(i64 %.sroa.speculated113.i, i64 100000000) ; 2 uses
  store i64 %.sroa.speculated101.i, ptr %i.gt, align 8, !tbaa !24
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.0121.i
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !24
  %i.hm = add i64 %i.hl, 2
  %.sroa.speculated.i58 = call i64 @llvm.umin.i64(i64 %i.hm, i64 %.sroa.speculated101.i) ; 2 uses
  store i64 %.sroa.speculated.i58, ptr %i.gt, align 8, !tbaa !24
  %i.hn = add nuw i64 %.0121.i, 1                 ; 2 uses
  %exitcond127.i = icmp eq i64 %i.hn, %umax126.i
  br i1 %exitcond127.i, label %..loopexit_crit_edge.i, label %.peel.next.i, !llvm.loop !43

bb.ab:                                            ; preds = %bb.o, %_ZNSt6vectorImSaImEED2Ev.exit.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ho = add i64 %i.dy, 1
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit
  %.0 = phi i64 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit ], [ %i.ho, %bb.ab ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  store i64 %.0, ptr %5, align 8, !tbaa !31, !alias.scope !51
  store ptr %i.an, ptr %i.am, align 8, !tbaa !23, !alias.scope !51
  %i.hp = load ptr, ptr %.sroa.0130.0173, align 8, !tbaa !19, !noalias !51 ; 2 uses
  %i.hq = load i64, ptr %i.ar, align 8, !tbaa !18, !noalias !51 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !51
  store i64 %i.hq, ptr %i.b, align 8, !tbaa !24, !noalias !51
  %i.hr = icmp ugt i64 %i.hq, 15
  br i1 %i.hr, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.ac
  %i.hs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc59 unwind label %bb.aj  ; 2 uses

.noexc59:                                         ; preds = %.noexc.i.i.i
  store ptr %i.hs, ptr %i.am, align 8, !tbaa !19, !alias.scope !51
  %i.ht = load i64, ptr %i.b, align 8, !tbaa !24, !noalias !51
  store i64 %i.ht, ptr %i.an, align 8, !tbaa !25, !alias.scope !51
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc59, %bb.ac
  %i.hu = phi ptr [ %i.hs, %.noexc59 ], [ %i.an, %bb.ac ] ; 2 uses
  switch i64 %i.hq, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hv = load i8, ptr %i.hp, align 1, !tbaa !25
  store i8 %i.hv, ptr %i.hu, align 1, !tbaa !25
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hu, ptr align 1 %i.hp, i64 %i.hq, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i.i
  %i.hw = load i64, ptr %i.b, align 8, !tbaa !24, !noalias !51 ; 2 uses
  store i64 %i.hw, ptr %i.ao, align 8, !tbaa !18, !alias.scope !51
  %i.hx = load ptr, ptr %i.am, align 8, !tbaa !19, !alias.scope !51
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hw
  store i8 0, ptr %i.hy, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !51
  %i.hz = load ptr, ptr %i.ap, align 8, !tbaa !34 ; 7 uses
  %i.ia = load ptr, ptr %i.aq, align 8, !tbaa !35
  %.not.i60 = icmp eq ptr %i.hz, %i.ia
  br i1 %.not.i60, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ib = load i64, ptr %5, align 8, !tbaa !31
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !31
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 24 ; 3 uses
  store ptr %i.id, ptr %i.ic, align 8, !tbaa !23
  %i.ie = load ptr, ptr %i.am, align 8, !tbaa !19 ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.an
  br i1 %i.if, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ig = load i64, ptr %i.ao, align 8, !tbaa !18 ; 3 uses
  %i.ih = icmp ult i64 %i.ig, 16
  call void @llvm.assume(i1 %i.ih)
  %i.ii = add nuw nsw i64 %i.ig, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.id, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.ii, i1 false)
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ag
  store ptr %i.ie, ptr %i.ic, align 8, !tbaa !19
  %i.ij = load i64, ptr %i.an, align 8, !tbaa !25
  store i64 %i.ij, ptr %i.id, align 8, !tbaa !25
  %.pre = load i64, ptr %i.ao, align 8, !tbaa !18
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit.thread

_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit.thread: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ik = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ig, %bb.ah ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store i64 %i.ik, ptr %i.il, align 8, !tbaa !18
  store ptr %i.an, ptr %i.am, align 8, !tbaa !19
  store i64 0, ptr %i.ao, align 8, !tbaa !18
  %i.im = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  store ptr %i.im, ptr %i.ap, align 8, !tbaa !34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit

bb.ai:                                            ; preds = %bb.af
  invoke void @_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.hz, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit unwind label %bb.ak

_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit: ; preds = %bb.ai
  %.pre204 = load ptr, ptr %i.am, align 8, !tbaa !19 ; 2 uses
  %i.in = icmp eq ptr %.pre204, %i.an
  br i1 %i.in, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit
  %i.io = load i64, ptr %i.an, align 8, !tbaa !25
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %.pre204, i64 noundef %i.ip) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit, %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0130.0173, i64 32 ; 2 uses
  %.not143 = icmp eq ptr %i.iq, %i.ae
  br i1 %.not143, label %.critedge52, label %bb.e

bb.aj:                                            ; preds = %.noexc.i.i.i
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit66

bb.ak:                                            ; preds = %bb.ai
  %i.is = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.it = load ptr, ptr %i.am, align 8, !tbaa !19 ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.an
  br i1 %i.iu, label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.ak
  %i.iv = load i64, ptr %i.an, align 8, !tbaa !25
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #23
  br label %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit66

_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit66: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.ir, %bb.aj ], [ %i.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64 ], [ %i.is, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.body

.critedge52:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit
  %.pre205 = load ptr, ptr %4, align 8, !tbaa !52 ; 6 uses
  %.pre206 = load ptr, ptr %i.ap, align 8, !tbaa !52 ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.not.i.i67 = icmp eq ptr %.pre205, %.pre206
  br i1 %.not.i.i67, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, label %bb.al

bb.al:                                            ; preds = %.critedge52
  %i.iy = ptrtoint ptr %.pre206 to i64
  %i.iz = ptrtoint ptr %.pre205 to i64
  %i.ja = sub i64 %i.iy, %i.iz                    ; 2 uses
  %i.jb = sdiv exact i64 %i.ja, 40
  %i.jc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jb, i1 true)
  %i.jd = shl nuw nsw i64 %i.jc, 1
  %i.je = xor i64 %i.jd, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_less_iterEEvT_SH_T0_T1_(ptr %.pre205, ptr %.pre206, i64 noundef %i.je)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc72:                                         ; preds = %bb.al
  %i.jf = icmp sgt i64 %i.ja, 640
  br i1 %i.jf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.noexc72
  %i.jg = getelementptr inbounds nuw i8, ptr %.pre205, i64 640 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_T0_(ptr %.pre205, ptr nonnull %i.jg)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %bb.am
  %.not4.i.i.i.i68 = icmp eq ptr %i.jg, %.pre206
  br i1 %.not4.i.i.i.i68, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, label %.lr.ph.i.i.i.i69

.lr.ph.i.i.i.i69:                                 ; preds = %.noexc73, %.noexc74
  %.sroa.0.05.i.i.i.i70 = phi ptr [ %i.jh, %.noexc74 ], [ %i.jg, %.noexc73 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.05.i.i.i.i70)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc74:                                         ; preds = %.lr.ph.i.i.i.i69
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i70, i64 40 ; 2 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.jh, %.pre206
  br i1 %.not.i.i.i.i71, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit, label %.lr.ph.i.i.i.i69, !llvm.loop !46

bb.an:                                            ; preds = %.noexc72
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_T0_(ptr %.pre205, ptr %.pre206)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit: ; preds = %.noexc74, %.critedge52.thread, %.noexc73, %.critedge52, %bb.an
  %i.ji = phi ptr [ %i.af, %.critedge52.thread ], [ %i.ix, %bb.an ], [ %i.ix, %.noexc73 ], [ %i.ix, %.critedge52 ], [ %i.ix, %.noexc74 ]
  %i.jj = load ptr, ptr %4, align 8, !tbaa !52    ; 3 uses
  %i.jk = load ptr, ptr %i.ji, align 8, !tbaa !52 ; 2 uses
  %.not144174 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not144174, label %.critedge, label %.lr.ph176

.lr.ph176:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEEvT_SF_.exit
end_hunk_0
