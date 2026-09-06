Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sx_function?download=true
inline.NumInlined: 11328
inline.NumDeleted: 2796
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN6casadi10SXFunction4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598
  %i.or = load ptr, ptr %22, align 8, !tbaa !161  ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ot = icmp eq ptr %i.or, %i.os
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600.thread: ; preds = %bb.bt
  %i.ou = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ov = load ptr, ptr %22, align 8, !tbaa !161  ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ox = icmp eq ptr %i.ov, %i.ow
  br i1 %i.ox, label %.sink.split2597, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600.thread
  %i.oy = load i64, ptr %i.ow, align 8, !tbaa !162
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oz) #29
  br label %.sink.split2597

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600
  %i.pa = load i64, ptr %i.os, align 8, !tbaa !162
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.pb) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br i1 %.5230, label %bb.ch, label %_ZNSt6vectorISt4pairIiPN6casadi6SXNodeEESaIS4_EED2Ev.exit1043

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br i1 %.5230, label %bb.ch, label %_ZNSt6vectorISt4pairIiPN6casadi6SXNodeEESaIS4_EED2Ev.exit1043

.sink.split2597:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601.thread
  %.pn390.pn.pn.pn.pn.pn.pn1228.ph = phi { ptr, i32 } [ %i.ou, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601.thread ], [ %i.ng, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603.thread ], [ %i.ou, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.ch

bb.ch:                                            ; preds = %.sink.split2597, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603
  %.pn390.pn.pn.pn.pn.pn.pn1228 = phi { ptr, i32 } [ %.pn390.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601 ], [ %.pn390.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603 ], [ %.pn390.pn.pn.pn.pn.pn.pn1228.ph, %.sink.split2597 ]
  call void @__cxa_free_exception(ptr %i.nf) #28
  br label %_ZNSt6vectorISt4pairIiPN6casadi6SXNodeEESaIS4_EED2Ev.exit1043

._crit_edge1699.loopexit.unr-lcssa:               ; preds = %bb.co
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1699, label %.lr.ph1698.epil.preheader

.lr.ph1698.epil.preheader:                        ; preds = %._crit_edge1699.loopexit.unr-lcssa, %.lr.ph1698.preheader
  %.02241697.epil.init = phi i64 [ 0, %.lr.ph1698.preheader ], [ %i.qp, %._crit_edge1699.loopexit.unr-lcssa ]
  %lcmp.mod2916 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2916)
  br label %.lr.ph1698.epil

.lr.ph1698.epil:                                  ; preds = %bb.cj, %.lr.ph1698.epil.preheader
  %.02241697.epil = phi i64 [ %i.pg, %bb.cj ], [ %.02241697.epil.init, %.lr.ph1698.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.cj ], [ 0, %.lr.ph1698.epil.preheader ]
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %.pre1966, i64 %.02241697.epil
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !322 ; 2 uses
  %.not518.epil = icmp eq ptr %i.pd, null
  br i1 %.not518.epil, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph1698.epil
  %i.pe = trunc i64 %.02241697.epil to i32
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store i32 %i.pe, ptr %i.pf, align 8, !tbaa !336
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.lr.ph1698.epil
  %i.pg = add nuw nsw i64 %.02241697.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1699, label %.lr.ph1698.epil, !llvm.loop !674

._crit_edge1699:                                  ; preds = %._crit_edge1699.loopexit.unr-lcssa, %bb.cj, %.preheader1413.thread, %.preheader1413
  %i.ph = phi ptr [ %i.il, %.preheader1413.thread ], [ %i.ig, %.preheader1413 ], [ %i.ig, %bb.cj ], [ %i.ig, %._crit_edge1699.loopexit.unr-lcssa ] ; 9 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !168 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 5 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !169 ; 2 uses
  %.not.i.i604 = icmp eq ptr %i.pl, %i.pj
  br i1 %.not.i.i604, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge1699, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.pm, %.lr.ph.i.i.i.i ], [ %i.pj, %._crit_edge1699 ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #28
  %i.pm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i605 = icmp eq ptr %i.pm, %i.pl
  br i1 %.not.i.i.i.i605, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.pj, ptr %i.pk, align 8, !tbaa !169
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE5clearEv.exit

_ZNSt6vectorIN6casadi6SXElemESaIS1_EE5clearEv.exit: ; preds = %._crit_edge1699, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !168 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 5 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !169 ; 2 uses
  %.not.i.i606 = icmp eq ptr %i.pq, %i.po
  br i1 %.not.i.i606, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE5clearEv.exit611, label %.lr.ph.i.i.i.i607

.lr.ph.i.i.i.i607:                                ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE5clearEv.exit, %.lr.ph.i.i.i.i607
  %.05.i.i.i.i608 = phi ptr [ %i.pr, %.lr.ph.i.i.i.i607 ], [ %i.po, %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE5clearEv.exit ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i608) #28
  %i.pr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i608, i64 8 ; 2 uses
  %.not.i.i.i.i609 = icmp eq ptr %i.pr, %i.pq
  br i1 %.not.i.i.i.i609, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i610, label %.lr.ph.i.i.i.i607, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i610: ; preds = %.lr.ph.i.i.i.i607
  store ptr %i.po, ptr %i.pp, align 8, !tbaa !169
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE5clearEv.exit611

_ZNSt6vectorIN6casadi6SXElemESaIS1_EE5clearEv.exit611: ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i610
  %i.ps = load ptr, ptr %18, align 8, !tbaa !330  ; 3 uses
  %i.pt = load ptr, ptr %i.ph, align 8, !tbaa !330
  %.not13721700 = icmp eq ptr %i.ps, %i.pt
  br i1 %.not13721700, label %._crit_edge1703, label %.lr.ph1702

.lr.ph1702:                                       ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE5clearEv.exit611
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 1456
  br label %bb.cp

.lr.ph1698:                                       ; preds = %bb.co, %.lr.ph1698.preheader.new
  %.02241697 = phi i64 [ 0, %.lr.ph1698.preheader.new ], [ %i.qp, %bb.co ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph1698.preheader.new ], [ %niter.next.3, %bb.co ]
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %.pre1966, i64 %.02241697
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !322 ; 2 uses
  %.not518 = icmp eq ptr %i.px, null
  br i1 %.not518, label %.lr.ph1698.1, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph1698
  %i.py = trunc i64 %.02241697 to i32
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store i32 %i.py, ptr %i.pz, align 8, !tbaa !336
  br label %.lr.ph1698.1

.lr.ph1698.1:                                     ; preds = %.lr.ph1698, %bb.ck
  %i.qa = or disjoint i64 %.02241697, 1           ; 2 uses
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %.pre1966, i64 %i.qa
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !322 ; 2 uses
  %.not518.1 = icmp eq ptr %i.qc, null
  br i1 %.not518.1, label %.lr.ph1698.2, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph1698.1
  %i.qd = trunc i64 %i.qa to i32
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i32 %i.qd, ptr %i.qe, align 8, !tbaa !336
  br label %.lr.ph1698.2

.lr.ph1698.2:                                     ; preds = %bb.cl, %.lr.ph1698.1
  %i.qf = or disjoint i64 %.02241697, 2           ; 2 uses
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %.pre1966, i64 %i.qf
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !322 ; 2 uses
  %.not518.2 = icmp eq ptr %i.qh, null
  br i1 %.not518.2, label %.lr.ph1698.3, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph1698.2
  %i.qi = trunc i64 %i.qf to i32
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  store i32 %i.qi, ptr %i.qj, align 8, !tbaa !336
  br label %.lr.ph1698.3

.lr.ph1698.3:                                     ; preds = %bb.cm, %.lr.ph1698.2
  %i.qk = or disjoint i64 %.02241697, 3           ; 2 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %.pre1966, i64 %i.qk
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !322 ; 2 uses
  %.not518.3 = icmp eq ptr %i.qm, null
  br i1 %.not518.3, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph1698.3
  %i.qn = trunc i64 %i.qk to i32
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store i32 %i.qn, ptr %i.qo, align 8, !tbaa !336
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.lr.ph1698.3
  %i.qp = add nuw nsw i64 %.02241697, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1699.loopexit.unr-lcssa, label %.lr.ph1698, !llvm.loop !675

._crit_edge1703:                                  ; preds = %bb.dl, %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE5clearEv.exit611
  %i.qq = phi ptr [ %i.ps, %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE5clearEv.exit611 ], [ %i.rx, %bb.dl ]
  %i.qr = load ptr, ptr %i.ht, align 8, !tbaa !159 ; 2 uses
  %i.qs = load ptr, ptr %i.hr, align 8, !tbaa !160 ; 3 uses
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = sub i64 %i.qt, %i.qu
  %.not398 = icmp ugt i64 %i.qv, 85899345880
  br i1 %.not398, label %bb.dm, label %.preheader1412

.preheader1412:                                   ; preds = %._crit_edge1703
  %.not1767 = icmp eq ptr %i.qr, %i.qs
  br i1 %.not1767, label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3nnzEv.exit._crit_edge, label %.lr.ph1705

bb.cp:                                            ; preds = %.lr.ph1702, %bb.dl
  %.sroa.01186.01701 = phi ptr [ %i.ps, %.lr.ph1702 ], [ %i.rx, %bb.dl ] ; 2 uses
  %i.qw = load ptr, ptr %.sroa.01186.01701, align 8, !tbaa !322 ; 9 uses
  %.not512 = icmp eq ptr %i.qw, null
  br i1 %.not512, label %bb.dl, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !67
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %i.qz = load ptr, ptr %i.qy, align 8
  %i.ra = invoke noundef zeroext i1 %i.qz(ptr noundef nonnull align 8 dereferenceable(16) %i.qw)
          to label %bb.cr unwind label %bb.cw

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.ra, label %bb.cs, label %bb.da

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  invoke void @_ZN6casadi6SXElem6createEPNS_6SXNodeE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %29, ptr noundef nonnull %i.qw)
          to label %bb.ct unwind label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.rb = load ptr, ptr %i.pk, align 8, !tbaa !169 ; 3 uses
  %i.rc = load ptr, ptr %i.pv, align 8, !tbaa !170
  %.not.i.i612 = icmp eq ptr %i.rb, %i.rc
  br i1 %.not.i.i612, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN6casadi6SXElemC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.rb, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %.noexc613 unwind label %bb.cy

.noexc613:                                        ; preds = %bb.cu
  %i.rd = load ptr, ptr %i.pk, align 8, !tbaa !169
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store ptr %i.re, ptr %i.pk, align 8, !tbaa !169
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE9push_backEOS1_.exit

bb.cv:                                            ; preds = %bb.ct
  invoke void @_ZNSt6vectorIN6casadi6SXElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.pi, ptr %i.rb, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE9push_backEOS1_.exit unwind label %bb.cy

_ZNSt6vectorIN6casadi6SXElemESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc613, %bb.cv
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %bb.dl

bb.cw:                                            ; preds = %bb.dc, %bb.da, %bb.cq
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIiPN6casadi6SXNodeEESaIS4_EED2Ev.exit1043

bb.cx:                                            ; preds = %bb.cs
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cv, %bb.cu
  %i.rh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #28
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.pn515 = phi { ptr, i32 } [ %i.rh, %bb.cy ], [ %i.rg, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %_ZNSt6vectorISt4pairIiPN6casadi6SXNodeEESaIS4_EED2Ev.exit1043

bb.da:                                            ; preds = %bb.cr
  %i.ri = load ptr, ptr %i.qw, align 8, !tbaa !67
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 32
  %i.rk = load ptr, ptr %i.rj, align 8
  %i.rl = invoke noundef zeroext i1 %i.rk(ptr noundef nonnull align 8 dereferenceable(16) %i.qw)
          to label %bb.db unwind label %bb.cw

bb.db:                                            ; preds = %bb.da
  br i1 %i.rl, label %bb.dl, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.rm = load ptr, ptr %i.qw, align 8, !tbaa !67
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 160
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = invoke noundef i64 %i.ro(ptr noundef nonnull align 8 dereferenceable(16) %i.qw)
          to label %bb.dd unwind label %bb.cw

bb.dd:                                            ; preds = %bb.dc
  %i.rq = icmp sgt i64 %i.rp, -1
  br i1 %i.rq, label %bb.de, label %bb.dl

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  invoke void @_ZN6casadi6SXElem6createEPNS_6SXNodeE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %30, ptr noundef nonnull %i.qw)
          to label %bb.df unwind label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.rr = load ptr, ptr %i.pp, align 8, !tbaa !169 ; 3 uses
  %i.rs = load ptr, ptr %i.pu, align 8, !tbaa !170
  %.not.i.i615 = icmp eq ptr %i.rr, %i.rs
  br i1 %.not.i.i615, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN6casadi6SXElemC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.rr, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %.noexc616 unwind label %bb.dj

.noexc616:                                        ; preds = %bb.dg
  %i.rt = load ptr, ptr %i.pp, align 8, !tbaa !169
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  store ptr %i.ru, ptr %i.pp, align 8, !tbaa !169
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE9push_backEOS1_.exit618

bb.dh:                                            ; preds = %bb.df
  invoke void @_ZNSt6vectorIN6casadi6SXElemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.pn, ptr %i.rr, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE9push_backEOS1_.exit618 unwind label %bb.dj

_ZNSt6vectorIN6casadi6SXElemESaIS1_EE9push_backEOS1_.exit618: ; preds = %.noexc616, %bb.dh
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %bb.dl

bb.di:                                            ; preds = %bb.de
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh, %bb.dg
  %i.rw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #28
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.pn513 = phi { ptr, i32 } [ %i.rw, %bb.dj ], [ %i.rv, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %_ZNSt6vectorISt4pairIiPN6casadi6SXNodeEESaIS4_EED2Ev.exit1043

bb.dl:                                            ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6casadi6SXElemESaIS1_EE9push_backEOS1_.exit618, %bb.dd, %bb.db, %bb.cp
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.01186.01701, i64 8 ; 3 uses
  %i.ry = load ptr, ptr %i.ph, align 8, !tbaa !330
  %.not1372 = icmp eq ptr %i.rx, %i.ry
  br i1 %.not1372, label %._crit_edge1703, label %bb.cp, !llvm.loop !676

bb.dm:                                            ; preds = %._crit_edge1703
  %i.rz = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.90, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.dn unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639.thread

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.do unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636.thread

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.6)
          to label %bb.dp unwind label %bb.dv

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.89, ptr noundef nonnull align 1 dereferenceable(1) %39)
          to label %bb.dq unwind label %bb.dw

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr noundef nonnull @.str.91, ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %bb.dr unwind label %bb.dx

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false), !alias.scope !726
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %bb.ds unwind label %bb.dy

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.dt unwind label %bb.dz

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.rz, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.du unwind label %bb.ea

bb.du:                                            ; preds = %bb.dt
  invoke void @__cxa_throw(ptr nonnull %i.rz, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #30
          to label %bb.rd unwind label %bb.ea

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639.thread: ; preds = %bb.dm
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split2598

bb.dv:                                            ; preds = %bb.do
end_hunk_0
begin_hunk_1_@_ZN6casadi10SXFunction4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.bdf, i64 noundef %i.bdi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit872

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit872: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit869, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i870
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #28
  br label %bb.lw

bb.lt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit856
  %i.bdj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit878

bb.lu:                                            ; preds = %.noexc859
  %i.bdk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875

bb.lv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit864, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit862, %bb.ls
  %i.bdl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bdm = load ptr, ptr %80, align 8, !tbaa !161 ; 2 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.bdo = icmp eq ptr %i.bdm, %i.bdn
  br i1 %i.bdo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i873

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i873: ; preds = %bb.lv
  %i.bdp = load i64, ptr %i.bdn, align 8, !tbaa !162
  %i.bdq = add i64 %i.bdp, 1
  call void @_ZdlPvm(ptr noundef %i.bdm, i64 noundef %i.bdq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875: ; preds = %bb.lv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i873, %bb.lu
  %.pn408 = phi { ptr, i32 } [ %i.bdk, %bb.lu ], [ %i.bdl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i873 ], [ %i.bdl, %bb.lv ] ; 2 uses
  %i.bdr = load ptr, ptr %81, align 8, !tbaa !161 ; 2 uses
  %i.bds = icmp eq ptr %i.bdr, %i.bcp
  br i1 %i.bds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit878, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i876

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i876: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875
  %i.bdt = load i64, ptr %i.bcp, align 8, !tbaa !162
  %i.bdu = add i64 %i.bdt, 1
  call void @_ZdlPvm(ptr noundef %i.bdr, i64 noundef %i.bdu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit878

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit878: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i876, %bb.lt
  %.pn408.pn = phi { ptr, i32 } [ %i.bdj, %bb.lt ], [ %.pn408, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i876 ], [ %.pn408, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #28
  br label %bb.qw

bb.lw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit829, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit872, %._crit_edge1751
  %i.bdv = load i64, ptr %i.ant, align 8, !tbaa !188
  invoke void @_ZN6casadi16FunctionInternal7alloc_wEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.bdv, i1 noundef zeroext false)
          to label %bb.lx unwind label %bb.le

bb.lx:                                            ; preds = %bb.lw
  %i.bdw = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.bdx = load i64, ptr %i.bdw, align 8, !tbaa !730
  invoke void @_ZN6casadi16FunctionInternal9alloc_argEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.bdx, i1 noundef zeroext true)
          to label %bb.ly unwind label %bb.le

bb.ly:                                            ; preds = %bb.lx
  %i.bdy = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.bdz = load i64, ptr %i.bdy, align 8, !tbaa !731
  invoke void @_ZN6casadi16FunctionInternal9alloc_resEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.bdz, i1 noundef zeroext true)
          to label %bb.lz unwind label %bb.le

bb.lz:                                            ; preds = %bb.ly
  %i.bea = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.beb = load i64, ptr %i.bea, align 8, !tbaa !732
  invoke void @_ZN6casadi16FunctionInternal8alloc_iwEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.beb, i1 noundef zeroext true)
          to label %bb.ma unwind label %bb.le

bb.ma:                                            ; preds = %bb.lz
  %i.bec = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.bed = load i64, ptr %i.bec, align 8, !tbaa !287
  %i.bee = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.bef = load i64, ptr %i.bee, align 8, !tbaa !189
  %i.beg = add i64 %i.bef, %i.bed
  %i.beh = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.bei = load i64, ptr %i.beh, align 8, !tbaa !190
  %i.bej = add i64 %i.beg, %i.bei
  invoke void @_ZN6casadi16FunctionInternal7alloc_wEmb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %i.bej, i1 noundef zeroext true)
          to label %.preheader1384 unwind label %bb.le

.preheader1384:                                   ; preds = %bb.ma
  %i.bek = load ptr, ptr %i.ph, align 8, !tbaa !313 ; 2 uses
  %i.bel = load ptr, ptr %18, align 8, !tbaa !314 ; 7 uses
  %.not1768 = icmp eq ptr %i.bek, %i.bel
  br i1 %.not1768, label %.preheader1383, label %.lr.ph1754.preheader

.lr.ph1754.preheader:                             ; preds = %.preheader1384
  %i.bem = ptrtoint ptr %i.bek to i64
  %i.ben = ptrtoint ptr %i.bel to i64
  %i.beo = sub i64 %i.bem, %i.ben
  %i.bep = ashr exact i64 %i.beo, 3               ; 3 uses
  %xtraiter2923 = and i64 %i.bep, 3               ; 3 uses
  %i.beq = icmp ult i64 %i.bep, 4
  br i1 %i.beq, label %.lr.ph1754.epil.preheader, label %.lr.ph1754.preheader.new

.lr.ph1754.preheader.new:                         ; preds = %.lr.ph1754.preheader
  %unroll_iter2927 = and i64 %i.bep, -4
  br label %.lr.ph1754

.preheader1383.loopexit.unr-lcssa:                ; preds = %bb.mh
  %lcmp.mod2925.not = icmp eq i64 %xtraiter2923, 0
  br i1 %lcmp.mod2925.not, label %.preheader1383, label %.lr.ph1754.epil.preheader

.lr.ph1754.epil.preheader:                        ; preds = %.preheader1383.loopexit.unr-lcssa, %.lr.ph1754.preheader
  %.01701753.epil.init = phi i64 [ 0, %.lr.ph1754.preheader ], [ %i.bfk, %.preheader1383.loopexit.unr-lcssa ]
  %lcmp.mod2926 = icmp ne i64 %xtraiter2923, 0
  call void @llvm.assume(i1 %lcmp.mod2926)
  br label %.lr.ph1754.epil

.lr.ph1754.epil:                                  ; preds = %bb.mc, %.lr.ph1754.epil.preheader
  %.01701753.epil = phi i64 [ %i.beu, %bb.mc ], [ %.01701753.epil.init, %.lr.ph1754.epil.preheader ] ; 2 uses
  %epil.iter2924 = phi i64 [ %epil.iter2924.next, %bb.mc ], [ 0, %.lr.ph1754.epil.preheader ]
  %i.ber = getelementptr inbounds nuw [8 x i8], ptr %i.bel, i64 %.01701753.epil
  %i.bes = load ptr, ptr %i.ber, align 8, !tbaa !322 ; 2 uses
  %.not466.epil = icmp eq ptr %i.bes, null
  br i1 %.not466.epil, label %bb.mc, label %bb.mb

bb.mb:                                            ; preds = %.lr.ph1754.epil
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bes, i64 8
  store i32 0, ptr %i.bet, align 8, !tbaa !336
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %.lr.ph1754.epil
  %i.beu = add nuw nsw i64 %.01701753.epil, 1
  %epil.iter2924.next = add i64 %epil.iter2924, 1 ; 2 uses
  %epil.iter2924.cmp.not = icmp eq i64 %epil.iter2924.next, %xtraiter2923
  br i1 %epil.iter2924.cmp.not, label %.preheader1383, label %.lr.ph1754.epil, !llvm.loop !706

.preheader1383:                                   ; preds = %.preheader1383.loopexit.unr-lcssa, %bb.mc, %.preheader1384
  %.not13761755 = icmp eq ptr %.sroa.01173.0.lcssa, %.sroa.101178.0.lcssa ; 2 uses
  br i1 %.not13761755, label %._crit_edge1758, label %.lr.ph1757

.lr.ph1754:                                       ; preds = %bb.mh, %.lr.ph1754.preheader.new
  %.01701753 = phi i64 [ 0, %.lr.ph1754.preheader.new ], [ %i.bfk, %bb.mh ] ; 5 uses
  %niter2928 = phi i64 [ 0, %.lr.ph1754.preheader.new ], [ %niter2928.next.3, %bb.mh ]
  %i.bev = getelementptr inbounds nuw [8 x i8], ptr %i.bel, i64 %.01701753
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !322 ; 2 uses
  %.not466 = icmp eq ptr %i.bew, null
  br i1 %.not466, label %.lr.ph1754.1, label %bb.md

bb.md:                                            ; preds = %.lr.ph1754
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bew, i64 8
  store i32 0, ptr %i.bex, align 8, !tbaa !336
  br label %.lr.ph1754.1

.lr.ph1754.1:                                     ; preds = %.lr.ph1754, %bb.md
  %i.bey = getelementptr inbounds nuw [8 x i8], ptr %i.bel, i64 %.01701753
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bey, i64 8
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !322 ; 2 uses
  %.not466.1 = icmp eq ptr %i.bfa, null
  br i1 %.not466.1, label %.lr.ph1754.2, label %bb.me

bb.me:                                            ; preds = %.lr.ph1754.1
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 8
  store i32 0, ptr %i.bfb, align 8, !tbaa !336
  br label %.lr.ph1754.2

.lr.ph1754.2:                                     ; preds = %bb.me, %.lr.ph1754.1
  %i.bfc = getelementptr inbounds nuw [8 x i8], ptr %i.bel, i64 %.01701753
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 16
  %i.bfe = load ptr, ptr %i.bfd, align 8, !tbaa !322 ; 2 uses
  %.not466.2 = icmp eq ptr %i.bfe, null
  br i1 %.not466.2, label %.lr.ph1754.3, label %bb.mf

bb.mf:                                            ; preds = %.lr.ph1754.2
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 8
  store i32 0, ptr %i.bff, align 8, !tbaa !336
  br label %.lr.ph1754.3

.lr.ph1754.3:                                     ; preds = %bb.mf, %.lr.ph1754.2
  %i.bfg = getelementptr inbounds nuw [8 x i8], ptr %i.bel, i64 %.01701753
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 24
  %i.bfi = load ptr, ptr %i.bfh, align 8, !tbaa !322 ; 2 uses
  %.not466.3 = icmp eq ptr %i.bfi, null
  br i1 %.not466.3, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %.lr.ph1754.3
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfi, i64 8
  store i32 0, ptr %i.bfj, align 8, !tbaa !336
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %.lr.ph1754.3
  %i.bfk = add nuw nsw i64 %.01701753, 4          ; 2 uses
  %niter2928.next.3 = add i64 %niter2928, 4       ; 2 uses
  %niter2928.ncmp.3 = icmp eq i64 %niter2928.next.3, %unroll_iter2927
  br i1 %niter2928.ncmp.3, label %.preheader1383.loopexit.unr-lcssa, label %.lr.ph1754, !llvm.loop !707

._crit_edge1758:                                  ; preds = %.lr.ph1757, %.preheader1383
  %i.bfl = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 3 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.bfn = load ptr, ptr %i.bfm, align 8, !tbaa !159 ; 2 uses
  %i.bfo = load ptr, ptr %i.bfl, align 8, !tbaa !160 ; 3 uses
  %i.bfp = ptrtoint ptr %i.bfn to i64
  %i.bfq = ptrtoint ptr %i.bfo to i64
  %i.bfr = sub i64 %i.bfp, %i.bfq
  %.not420 = icmp ugt i64 %i.bfr, 85899345880
  br i1 %.not420, label %bb.mi, label %.preheader

.preheader:                                       ; preds = %._crit_edge1758
  %.not1769 = icmp eq ptr %i.bfn, %i.bfo
  br i1 %.not1769, label %._crit_edge1761, label %.lr.ph1760

.lr.ph1757:                                       ; preds = %.preheader1383, %.lr.ph1757
  %.sroa.01084.01756 = phi ptr [ %i.bfx, %.lr.ph1757 ], [ %.sroa.01173.0.lcssa, %.preheader1383 ] ; 3 uses
  %i.bfs = load i32, ptr %.sroa.01084.01756, align 8, !tbaa !746
  %i.bft = add nsw i32 %i.bfs, 1
  %i.bfu = getelementptr inbounds nuw i8, ptr %.sroa.01084.01756, i64 8
  %i.bfv = load ptr, ptr %i.bfu, align 8, !tbaa !747
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 8
  store i32 %i.bft, ptr %i.bfw, align 8, !tbaa !336
  %i.bfx = getelementptr inbounds nuw i8, ptr %.sroa.01084.01756, i64 16 ; 2 uses
  %.not1376 = icmp eq ptr %i.bfx, %.sroa.101178.0.lcssa
  br i1 %.not1376, label %._crit_edge1758, label %.lr.ph1757, !llvm.loop !708

bb.mi:                                            ; preds = %._crit_edge1758
  %i.bfy = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %85, ptr noundef nonnull @.str.104, ptr noundef nonnull align 1 dereferenceable(1) %86)
          to label %bb.mj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit899.thread

bb.mj:                                            ; preds = %bb.mi
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %84, ptr noundef nonnull align 8 dereferenceable(32) %85)
          to label %bb.mk unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit896.thread

bb.mk:                                            ; preds = %bb.mj
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %83, ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull @.str.6)
          to label %bb.ml unwind label %bb.mr

bb.ml:                                            ; preds = %bb.mk
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull @.str.89, ptr noundef nonnull align 1 dereferenceable(1) %90)
          to label %bb.mm unwind label %bb.ms

bb.mm:                                            ; preds = %bb.ml
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %88, ptr noundef nonnull @.str.105, ptr noundef nonnull align 8 dereferenceable(32) %89)
          to label %bb.mn unwind label %bb.mt

bb.mn:                                            ; preds = %bb.mm
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %91, i8 0, i64 24, i1 false), !alias.scope !748
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %87, ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull align 8 dereferenceable(24) %91)
          to label %bb.mo unwind label %bb.mu

bb.mo:                                            ; preds = %bb.mn
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %82, ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull align 8 dereferenceable(32) %87)
          to label %bb.mp unwind label %bb.mv

bb.mp:                                            ; preds = %bb.mo
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bfy, ptr noundef nonnull align 8 dereferenceable(32) %82)
          to label %bb.mq unwind label %bb.mw

bb.mq:                                            ; preds = %bb.mp
  invoke void @__cxa_throw(ptr nonnull %i.bfy, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #30
          to label %bb.rd unwind label %bb.mw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit899.thread: ; preds = %bb.mi
  %i.bfz = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split2602

bb.mr:                                            ; preds = %bb.mk
  %i.bga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit893

bb.ms:                                            ; preds = %bb.ml
  %i.bgb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890

bb.mt:                                            ; preds = %bb.mm
  %i.bgc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887

bb.mu:                                            ; preds = %bb.mn
  %i.bgd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884

bb.mv:                                            ; preds = %bb.mo
  %i.bge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit881

bb.mw:                                            ; preds = %bb.mq, %bb.mp
  %.0162 = phi i1 [ false, %bb.mq ], [ true, %bb.mp ] ; 2 uses
  %i.bgf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bgg = load ptr, ptr %82, align 8, !tbaa !161 ; 2 uses
  %i.bgh = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 2 uses
  %i.bgi = icmp eq ptr %i.bgg, %i.bgh
  br i1 %i.bgi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit881, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i879

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i879: ; preds = %bb.mw
  %i.bgj = load i64, ptr %i.bgh, align 8, !tbaa !162
  %i.bgk = add i64 %i.bgj, 1
  call void @_ZdlPvm(ptr noundef %i.bgg, i64 noundef %i.bgk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit881

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit881: ; preds = %bb.mw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i879, %bb.mv
  %.pn421 = phi { ptr, i32 } [ %i.bge, %bb.mv ], [ %i.bgf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i879 ], [ %i.bgf, %bb.mw ] ; 2 uses
  %.1163 = phi i1 [ true, %bb.mv ], [ %.0162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i879 ], [ %.0162, %bb.mw ] ; 2 uses
  %i.bgl = load ptr, ptr %87, align 8, !tbaa !161 ; 2 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 2 uses
  %i.bgn = icmp eq ptr %i.bgl, %i.bgm
  br i1 %i.bgn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i882

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i882: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit881
  %i.bgo = load i64, ptr %i.bgm, align 8, !tbaa !162
  %i.bgp = add i64 %i.bgo, 1
  call void @_ZdlPvm(ptr noundef %i.bgl, i64 noundef %i.bgp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit881, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i882, %bb.mu
  %.pn421.pn = phi { ptr, i32 } [ %i.bgd, %bb.mu ], [ %.pn421, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i882 ], [ %.pn421, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit881 ] ; 2 uses
  %.2164 = phi i1 [ true, %bb.mu ], [ %.1163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i882 ], [ %.1163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit881 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %91) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #28
  %i.bgq = load ptr, ptr %88, align 8, !tbaa !161 ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %88, i64 16 ; 2 uses
  %i.bgs = icmp eq ptr %i.bgq, %i.bgr
  br i1 %i.bgs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i885

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i885: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884
  %i.bgt = load i64, ptr %i.bgr, align 8, !tbaa !162
  %i.bgu = add i64 %i.bgt, 1
  call void @_ZdlPvm(ptr noundef %i.bgq, i64 noundef %i.bgu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i885, %bb.mt
  %.pn421.pn.pn = phi { ptr, i32 } [ %i.bgc, %bb.mt ], [ %.pn421.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i885 ], [ %.pn421.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884 ] ; 2 uses
  %.3165 = phi i1 [ true, %bb.mt ], [ %.2164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i885 ], [ %.2164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884 ] ; 2 uses
  %i.bgv = load ptr, ptr %89, align 8, !tbaa !161 ; 2 uses
  %i.bgw = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 2 uses
  %i.bgx = icmp eq ptr %i.bgv, %i.bgw
  br i1 %i.bgx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887
  %i.bgy = load i64, ptr %i.bgw, align 8, !tbaa !162
  %i.bgz = add i64 %i.bgy, 1
  call void @_ZdlPvm(ptr noundef %i.bgv, i64 noundef %i.bgz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888, %bb.ms
  %.pn421.pn.pn.pn = phi { ptr, i32 } [ %i.bgb, %bb.ms ], [ %.pn421.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888 ], [ %.pn421.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887 ] ; 2 uses
  %.4166 = phi i1 [ true, %bb.ms ], [ %.3165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888 ], [ %.3165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #28
  %i.bha = load ptr, ptr %83, align 8, !tbaa !161 ; 2 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 2 uses
  %i.bhc = icmp eq ptr %i.bha, %i.bhb
  br i1 %i.bhc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit893, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i891

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i891: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890
  %i.bhd = load i64, ptr %i.bhb, align 8, !tbaa !162
  %i.bhe = add i64 %i.bhd, 1
  call void @_ZdlPvm(ptr noundef %i.bha, i64 noundef %i.bhe) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit893

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit893: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i891, %bb.mr
  %.pn421.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bga, %bb.mr ], [ %.pn421.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i891 ], [ %.pn421.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890 ] ; 4 uses
  %.5167 = phi i1 [ true, %bb.mr ], [ %.4166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i891 ], [ %.4166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890 ] ; 2 uses
  %i.bhf = load ptr, ptr %84, align 8, !tbaa !161 ; 2 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 2 uses
  %i.bhh = icmp eq ptr %i.bhf, %i.bhg
  br i1 %i.bhh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit896, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i894

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i894: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit893
  %i.bhi = load i64, ptr %i.bhg, align 8, !tbaa !162
  %i.bhj = add i64 %i.bhi, 1
  call void @_ZdlPvm(ptr noundef %i.bhf, i64 noundef %i.bhj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit896

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit896: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit893, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i894
  %i.bhk = load ptr, ptr %85, align 8, !tbaa !161 ; 2 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 2 uses
  %i.bhm = icmp eq ptr %i.bhk, %i.bhl
  br i1 %i.bhm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit899, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i897

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit896.thread: ; preds = %bb.mj
  %i.bhn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bho = load ptr, ptr %85, align 8, !tbaa !161 ; 2 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 2 uses
  %i.bhq = icmp eq ptr %i.bho, %i.bhp
  br i1 %i.bhq, label %.sink.split2602, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i897.thread
end_hunk_1
begin_hunk_2_@_ZNK6casadi10SXFunction7eval_mxERKSt6vectorINS_2MXESaIS2_EERS4_bb:bb.a
  %i.gq = sdiv exact i64 %i.gp, 40                ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !349 ; 3 uses
  %i.gt = load ptr, ptr %2, align 8, !tbaa !350   ; 2 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = ashr exact i64 %i.gw, 3                 ; 3 uses
  %i.gy = icmp ugt i64 %i.gq, %i.gx
  br i1 %i.gy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gz = sub nuw nsw i64 %i.gq, %i.gx
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.gz)
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit

bb.aw:                                            ; preds = %bb.au
  %i.ha = icmp ult i64 %i.gq, %i.gx
  br i1 %i.ha, label %bb.ax, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit

bb.ax:                                            ; preds = %bb.aw
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gq ; 3 uses
  %.not.i.i = icmp eq ptr %i.gs, %i.hb
  br i1 %.not.i.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ax, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.hc, %.lr.ph.i.i.i.i ], [ %i.hb, %bb.ax ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #28
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hc, %i.gs
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.hb, ptr %i.gr, align 8, !tbaa !349
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit:  ; preds = %bb.av, %bb.aw, %bb.ax, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #28
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !288
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !289
  %i.hh = add i64 %i.hg, %i.he
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #28
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %79, i64 noundef %i.hh, ptr noundef nonnull align 1 dereferenceable(1) %80)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #28
  %i.hi = load i8, ptr %i.g, align 8, !tbaa !173, !range !174, !noundef !175
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.az, label %bb.bi

bb.az:                                            ; preds = %bb.ay
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv()
          to label %bb.ba unwind label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi14message_prefixERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.hk)
          to label %bb.bb unwind label %bb.be     ; 4 uses

bb.bb:                                            ; preds = %bb.ba
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef nonnull @.str, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit370 unwind label %bb.be ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit370: ; preds = %bb.bb
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef nonnull @.str.130, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit372 unwind label %bb.be ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit372: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit370
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef nonnull @.str.2, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374 unwind label %bb.be ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit372
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #28
  %i.hp = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 6 uses
  store ptr %i.hp, ptr %82, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 62, ptr %i.b, align 8, !tbaa !178
  %i.hq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc377 unwind label %bb.bf ; 3 uses

.noexc377:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374
  store ptr %i.hq, ptr %82, align 8, !tbaa !161
  %i.hr = load i64, ptr %i.b, align 8, !tbaa !178 ; 3 uses
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(62) %i.hq, ptr noundef nonnull align 1 dereferenceable(62) @.str.131, i64 62, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %82, i64 8
  store i64 %i.hr, ptr %i.hs, align 8, !tbaa !176
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hr
  store i8 0, ptr %i.ht, align 1, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %81, ptr noundef nonnull align 8 dereferenceable(32) %82)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %.noexc377
  %i.hu = load ptr, ptr %81, align 8, !tbaa !161
  %i.hv = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !176
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef %i.hu, i64 noundef %i.hw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit380 unwind label %bb.bh ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit380: ; preds = %bb.bc
  %i.hy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hx, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit382 unwind label %bb.bh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit382: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit380
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hx)
          to label %_ZNSolsEPFRSoS_E.exit384 unwind label %bb.bh ; 0 uses

_ZNSolsEPFRSoS_E.exit384:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit382
  %i.ia = load ptr, ptr %81, align 8, !tbaa !161  ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385: ; preds = %_ZNSolsEPFRSoS_E.exit384
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !162
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387: ; preds = %_ZNSolsEPFRSoS_E.exit384, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385
  %i.if = load ptr, ptr %82, align 8, !tbaa !161  ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.hp
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387
  %i.ih = load i64, ptr %i.hp, align 8, !tbaa !162
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28
  br label %bb.bi

bb.bd:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE6resizeEm.exit
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #28
  br label %bb.jt

bb.be:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit372, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit370, %bb.bb, %bb.ba, %bb.az
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.bf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit374
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396

bb.bg:                                            ; preds = %.noexc377
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

bb.bh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit382, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit380, %bb.bc
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.io = load ptr, ptr %81, align 8, !tbaa !161  ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391: ; preds = %bb.bh
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !162
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391, %bb.bg
  %.pn258 = phi { ptr, i32 } [ %i.im, %bb.bg ], [ %i.in, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391 ], [ %i.in, %bb.bh ] ; 2 uses
  %i.it = load ptr, ptr %82, align 8, !tbaa !161  ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.hp
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393
  %i.iv = load i64, ptr %i.hp, align 8, !tbaa !162
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394, %bb.bf
  %.pn258.pn = phi { ptr, i32 } [ %i.il, %bb.bf ], [ %.pn258, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394 ], [ %.pn258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28
  br label %bb.js

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #28
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 3 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !159 ; 2 uses
  %i.ja = load ptr, ptr %i.ix, align 8, !tbaa !160 ; 2 uses
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = sub i64 %i.jb, %i.jc                    ; 2 uses
  %i.je = sdiv exact i64 %i.jd, 40                ; 2 uses
  %106 = icmp slt i64 %i.jd, 0
  br i1 %106, label %bb.bj, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.228) #30
          to label %.noexc398 unwind label %bb.bm

.noexc398:                                        ; preds = %bb.bj
  unreachable

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.bi
  %.not.i.i.i.i397 = icmp eq ptr %i.iz, %i.ja
  br i1 %.not.i.i.i.i397, label %.thread, label %.lr.ph.preheader.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.jf = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %83, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %83, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.jh = mul nuw nsw i64 %i.je, 24               ; 3 uses
  %i.ji = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jh) #33
          to label %bb.bk unwind label %bb.bm     ; 5 uses

bb.bk:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ji, ptr %83, align 8, !tbaa !353
  %i.jj = getelementptr inbounds nuw [24 x i8], ptr %i.ji, i64 %i.je
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ji, i8 0, i64 %i.jh, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ji, i64 %i.jh
  %.pre = load ptr, ptr %i.iy, align 8, !tbaa !159
  %.pre857 = load ptr, ptr %i.ix, align 8, !tbaa !160
  %i.jk = icmp eq ptr %.pre, %.pre857
  %i.jl = getelementptr inbounds nuw i8, ptr %83, i64 8 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 3 uses
  store ptr %i.jj, ptr %i.jm, align 8, !tbaa !354
  store ptr %scevgep.i.i.i.i.i, ptr %i.jl, align 8, !tbaa !355
  br i1 %i.jk, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bk
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %84, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %85, i64 8 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %88, i64 8 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %88, i64 16
  %i.js = getelementptr inbounds nuw i8, ptr %85, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %84, i64 16
  br label %bb.bn

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit431, %.thread, %bb.bk
  %i.ju = phi ptr [ %i.jg, %.thread ], [ %i.jm, %bb.bk ], [ %i.jm, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit431 ]
  %i.jv = phi ptr [ %i.jf, %.thread ], [ %i.jl, %bb.bk ], [ %i.jl, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit431 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #28
  %i.jw = load ptr, ptr %i.gk, align 8, !tbaa !159 ; 2 uses
  %i.jx = load ptr, ptr %i.gj, align 8, !tbaa !160 ; 2 uses
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz                    ; 2 uses
  %i.kb = sdiv exact i64 %i.ka, 40                ; 2 uses
  %107 = icmp slt i64 %i.ka, 0
  br i1 %107, label %bb.bl, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i400

bb.bl:                                            ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.228) #30
          to label %.noexc407 unwind label %bb.cn

.noexc407:                                        ; preds = %bb.bl
  unreachable

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i400: ; preds = %._crit_edge
  %.not.i.i.i.i401 = icmp eq ptr %i.jw, %i.jx
  br i1 %.not.i.i.i.i401, label %.thread1019, label %.lr.ph.preheader.i.i.i.i.i402

.thread1019:                                      ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i400
  %i.kc = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %90, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %90, i8 0, i64 24, i1 false)
  br label %._crit_edge804

.lr.ph.preheader.i.i.i.i.i402:                    ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i400
  %i.ke = mul nuw nsw i64 %i.kb, 24               ; 3 uses
  %i.kf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ke) #33
          to label %bb.cm unwind label %bb.cn     ; 7 uses

bb.bm:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.bj
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.jr

bb.bn:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit431
  %.0183800 = phi i64 [ 0, %.lr.ph ], [ %i.mg, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit431 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #28
  %i.kh = load ptr, ptr %1, align 8, !tbaa !350
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.0183800
  invoke void @_ZNK6casadi2MX12get_nonzerosEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.198") align 8 %84, ptr noundef nonnull align 8 dereferenceable(8) %i.ki)
          to label %bb.bo unwind label %bb.cb

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #28
  %i.kj = load ptr, ptr %i.jn, align 8, !tbaa !356
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %.0183800
  %i.kl = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kk)
          to label %bb.bp unwind label %bb.cc

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #28
  invoke void @_ZN6casadi2MXC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %86, double noundef 0.000000e+00)
          to label %bb.bq unwind label %bb.cd

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #28
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EEC2EmRKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(24) %85, i64 noundef %i.kl, ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull align 1 dereferenceable(1) %87)
          to label %bb.br unwind label %bb.ce

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #28
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %86) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #28
  %i.km = load ptr, ptr %1, align 8, !tbaa !350
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %.0183800
  %i.ko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kn)
          to label %.noexc410 unwind label %bb.cg

.noexc410:                                        ; preds = %bb.br
  %i.kp = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ko)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit unwind label %bb.cg

_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit: ; preds = %.noexc410
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #28
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %88, i64 noundef %i.kp, ptr noundef nonnull align 1 dereferenceable(1) %89)
          to label %bb.bs unwind label %bb.ch

bb.bs:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #28
  %i.kq = load ptr, ptr %84, align 8, !tbaa !357  ; 2 uses
  %i.kr = load ptr, ptr %i.jo, align 8, !tbaa !357
  %i.ks = icmp eq ptr %i.kq, %i.kr
  %spec.select.i = select i1 %i.ks, ptr null, ptr %i.kq
  %i.kt = load ptr, ptr %1, align 8, !tbaa !350
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %.0183800
  %i.kv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ku)
          to label %bb.bt unwind label %bb.ci

bb.bt:                                            ; preds = %bb.bs
  %i.kw = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kv)
          to label %bb.bu unwind label %bb.ci

bb.bu:                                            ; preds = %bb.bt
  %i.kx = load ptr, ptr %85, align 8, !tbaa !357  ; 2 uses
  %i.ky = load ptr, ptr %i.jp, align 8, !tbaa !357
  %i.kz = load ptr, ptr %i.jn, align 8, !tbaa !356
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %.0183800
  %i.lb = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.la)
          to label %bb.bv unwind label %bb.ci

bb.bv:                                            ; preds = %bb.bu
  %i.lc = icmp eq ptr %i.kx, %i.ky
  %spec.select.i412 = select i1 %i.lc, ptr null, ptr %i.kx
  %i.ld = load ptr, ptr %88, align 8, !tbaa !357  ; 2 uses
  %i.le = load ptr, ptr %i.jq, align 8, !tbaa !357
  %i.lf = icmp eq ptr %i.ld, %i.le
  %spec.select.i413 = select i1 %i.lf, ptr null, ptr %i.ld
  invoke void @_ZN6casadi14casadi_projectINS_2MXEEEvPKT_PKxPS2_S6_S7_(ptr noundef %spec.select.i, ptr noundef %i.kw, ptr noundef %spec.select.i412, ptr noundef %i.lb, ptr noundef %spec.select.i413)
          to label %bb.bw unwind label %bb.ci

bb.bw:                                            ; preds = %bb.bv
  %i.lg = getelementptr inbounds nuw [24 x i8], ptr %i.ji, i64 %.0183800
  %i.lh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6casadi2MXESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.lg, ptr noundef nonnull align 8 dereferenceable(24) %85)
          to label %bb.bx unwind label %bb.ci     ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  %i.li = load ptr, ptr %88, align 8, !tbaa !350  ; 3 uses
  %i.lj = load ptr, ptr %i.jq, align 8, !tbaa !349 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.li, %i.lj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bx, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.lk, %.lr.ph.i.i.i ], [ %i.li, %bb.bx ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #28
  %i.lk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.lk, %i.lj
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %88, align 8, !tbaa !350
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.bx
  %i.ll = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.li, %bb.bx ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ll, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.lm = load ptr, ptr %i.jr, align 8, !tbaa !358
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %i.ll to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %i.ll, i64 noundef %i.lp) #29
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #28
  %i.lq = load ptr, ptr %85, align 8, !tbaa !350  ; 3 uses
  %i.lr = load ptr, ptr %i.jp, align 8, !tbaa !349 ; 2 uses
  %.not4.i.i.i414 = icmp eq ptr %i.lq, %i.lr
  br i1 %.not4.i.i.i414, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i420, label %.lr.ph.i.i.i415

.lr.ph.i.i.i415:                                  ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, %.lr.ph.i.i.i415
  %.05.i.i.i416 = phi ptr [ %i.ls, %.lr.ph.i.i.i415 ], [ %i.lq, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i416) #28
  %i.ls = getelementptr inbounds nuw i8, ptr %.05.i.i.i416, i64 8 ; 2 uses
  %.not.i.i.i417 = icmp eq ptr %i.ls, %i.lr
  br i1 %.not.i.i.i417, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i418, label %.lr.ph.i.i.i415, !llvm.loop !11

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i418: ; preds = %.lr.ph.i.i.i415
  %.pr.i419 = load ptr, ptr %85, align 8, !tbaa !350
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i420

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i420: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i418, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  %i.lt = phi ptr [ %.pr.i419, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i418 ], [ %i.lq, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i421 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i1.i421, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit422, label %bb.bz

bb.bz:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i420
  %i.lu = load ptr, ptr %i.js, align 8, !tbaa !358
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.lt to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.lx) #29
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit422

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit422:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i420, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #28
  %i.ly = load ptr, ptr %84, align 8, !tbaa !350  ; 3 uses
  %i.lz = load ptr, ptr %i.jo, align 8, !tbaa !349 ; 2 uses
  %.not4.i.i.i423 = icmp eq ptr %i.ly, %i.lz
  br i1 %.not4.i.i.i423, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i429, label %.lr.ph.i.i.i424

.lr.ph.i.i.i424:                                  ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit422, %.lr.ph.i.i.i424
  %.05.i.i.i425 = phi ptr [ %i.ma, %.lr.ph.i.i.i424 ], [ %i.ly, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit422 ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i425) #28
  %i.ma = getelementptr inbounds nuw i8, ptr %.05.i.i.i425, i64 8 ; 2 uses
  %.not.i.i.i426 = icmp eq ptr %i.ma, %i.lz
  br i1 %.not.i.i.i426, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i427, label %.lr.ph.i.i.i424, !llvm.loop !11

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i427: ; preds = %.lr.ph.i.i.i424
  %.pr.i428 = load ptr, ptr %84, align 8, !tbaa !350
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i429

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i429: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i427, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit422
  %i.mb = phi ptr [ %.pr.i428, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i427 ], [ %i.ly, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit422 ] ; 3 uses
  %.not.i.i1.i430 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i1.i430, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit431, label %bb.ca

bb.ca:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i429
  %i.mc = load ptr, ptr %i.jt, align 8, !tbaa !358
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %i.mb to i64
  %i.mf = sub i64 %i.md, %i.me
end_hunk_2
begin_hunk_3_@_ZNK6casadi10SXFunction10ad_forwardERKSt6vectorIS1_INS_6MatrixINS_6SXElemEEESaIS4_EESaIS6_EERS8_:bb.a
  %i.bof = phi ptr [ %.pr.i1007, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1006 ], [ %i.bob, %bb.wd ] ; 3 uses
  %.not.i.i1.i1009 = icmp eq ptr %i.bof, null
  br i1 %.not.i.i1.i1009, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit1010, label %bb.we

bb.we:                                            ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i1008
  %i.bog = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.boh = load ptr, ptr %i.bog, align 8, !tbaa !170
  %i.boi = ptrtoint ptr %i.boh to i64
  %i.boj = ptrtoint ptr %i.bof to i64
  %i.bok = sub i64 %i.boi, %i.boj
  call void @_ZdlPvm(ptr noundef nonnull %i.bof, i64 noundef %i.bok) #29
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit1010

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit1010: ; preds = %bb.we, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i1008, %bb.qd
  %.pn563.pn.pn.pn = phi { ptr, i32 } [ %i.aum, %bb.qd ], [ %.pn563.pn.pn, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i1008 ], [ %.pn563.pn.pn, %bb.we ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #28
  br label %.body716

.body716:                                         ; preds = %bb.cx, %bb.cy, %bb.de, %bb.dk, %bb.dq, %bb.dw, %bb.ec, %bb.ei, %bb.ex, %bb.fd, %bb.fj, %bb.fw, %bb.gt, %bb.gz, %bb.hf, %bb.hl, %bb.hr, %bb.hx, %bb.id, %bb.ij, %bb.ip, %bb.iv, %bb.jb, %bb.jh, %bb.jn, %bb.jt, %bb.la, %bb.lt, %bb.lz, %bb.mf, %bb.ni, %bb.no, %bb.nu, %bb.oa, %bb.og, %bb.om, %bb.os, %bb.oy, %bb.pe, %bb.px, %bb.eq, %bb.er, %bb.fp, %bb.fq, %bb.gc, %bb.gd, %bb.gm, %bb.gn, %bb.kb, %bb.kd, %bb.kl, %bb.kn, %bb.kt, %bb.ku, %bb.ll, %bb.ln, %bb.mn, %bb.mo, %bb.mu, %bb.mv, %bb.nb, %bb.nc, %bb.pk, %bb.pl, %bb.ps, %bb.pt, %bb.pv, %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit1010, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702, %bb.cm
  %.pn568.pn = phi { ptr, i32 } [ %i.pi, %bb.cm ], [ %.pn563.pn.pn.pn, %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit1010 ], [ %.pn502.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702 ], [ %i.qt, %bb.cy ], [ %i.qs, %bb.cx ], [ %i.ri, %bb.de ], [ %i.rx, %bb.dk ], [ %i.sm, %bb.dq ], [ %i.sy, %bb.dw ], [ %i.tn, %bb.ec ], [ %i.uc, %bb.ei ], [ %i.atj, %bb.px ], [ %i.vf, %bb.ex ], [ %i.vr, %bb.fd ], [ %i.wf, %bb.fj ], [ %.pn.i.i, %bb.eq ], [ %i.xk, %bb.fw ], [ %i.ws, %bb.fp ], [ %i.xx, %bb.gc ], [ %i.zf, %bb.gt ], [ %i.zt, %bb.gz ], [ %i.aah, %bb.hf ], [ %i.aav, %bb.hl ], [ %i.abk, %bb.hr ], [ %i.abz, %bb.hx ], [ %i.aco, %bb.id ], [ %i.add, %bb.ij ], [ %i.ads, %bb.ip ], [ %i.aeh, %bb.iv ], [ %i.aew, %bb.jb ], [ %i.afl, %bb.jh ], [ %i.aga, %bb.jn ], [ %i.agp, %bb.jt ], [ %.pn.i.i731, %bb.gm ], [ %.pn.i, %bb.kb ], [ %.pn.i768, %bb.kl ], [ %i.ajc, %bb.la ], [ %i.aik, %bb.kt ], [ %i.aki, %bb.lt ], [ %i.aku, %bb.lz ], [ %i.alg, %bb.mf ], [ %.pn7.i, %bb.ll ], [ %.pn.i.i786, %bb.mn ], [ %i.amk, %bb.mu ], [ %i.anr, %bb.ni ], [ %i.aof, %bb.no ], [ %i.aot, %bb.nu ], [ %i.aph, %bb.oa ], [ %i.apt, %bb.og ], [ %i.aqh, %bb.om ], [ %i.aqw, %bb.os ], [ %i.arl, %bb.oy ], [ %i.arz, %bb.pe ], [ %i.ana, %bb.nb ], [ %i.asm, %bb.pk ], [ %i.ut, %bb.er ], [ %i.wv, %bb.fq ], [ %i.ya, %bb.gd ], [ %i.yr, %bb.gn ], [ %i.ahg, %bb.kd ], [ %i.ahx, %bb.kn ], [ %i.ain, %bb.ku ], [ %i.aju, %bb.ln ], [ %i.alx, %bb.mo ], [ %i.amn, %bb.mv ], [ %i.and, %bb.nc ], [ %i.asp, %bb.pl ], [ %i.atg, %bb.pv ], [ %i.atf, %bb.pt ], [ %i.ate, %bb.ps ] ; 2 uses
  %.not4.i.i.i1011 = icmp eq ptr %i.mj, %i.mk
  br i1 %.not4.i.i.i1011, label %_ZSt8_DestroyIPN6casadi10SXFunction6TapeElINS0_6SXElemEEES4_EvT_S6_RSaIT0_E.exit.i1017, label %.lr.ph.i.i.i1012

.lr.ph.i.i.i1012:                                 ; preds = %.body716, %.lr.ph.i.i.i1012
  %.05.i.i.i1013 = phi ptr [ %i.bom, %.lr.ph.i.i.i1012 ], [ %i.mj, %.body716 ] ; 3 uses
  %i.bol = getelementptr inbounds nuw i8, ptr %.05.i.i.i1013, i64 8
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bol) #28
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %.05.i.i.i1013) #28
  %i.bom = getelementptr inbounds nuw i8, ptr %.05.i.i.i1013, i64 16 ; 2 uses
  %.not.i.i.i1014 = icmp eq ptr %i.bom, %i.mk
  br i1 %.not.i.i.i1014, label %_ZSt8_DestroyIPN6casadi10SXFunction6TapeElINS0_6SXElemEEES4_EvT_S6_RSaIT0_E.exit.i1017, label %.lr.ph.i.i.i1012, !llvm.loop !16

_ZSt8_DestroyIPN6casadi10SXFunction6TapeElINS0_6SXElemEEES4_EvT_S6_RSaIT0_E.exit.i1017: ; preds = %.lr.ph.i.i.i1012, %.body716
  %.not.i.i1.i1018 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i1.i1018, label %.body, label %bb.wf

bb.wf:                                            ; preds = %_ZSt8_DestroyIPN6casadi10SXFunction6TapeElINS0_6SXElemEEES4_EvT_S6_RSaIT0_E.exit.i1017
  %.idx1289 = shl nuw nsw i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.mj, i64 noundef %.idx1289) #29
  br label %.body

.body:                                            ; preds = %bb.bx, %bb.by, %bb.cl, %_ZSt8_DestroyIPN6casadi10SXFunction6TapeElINS0_6SXElemEEES4_EvT_S6_RSaIT0_E.exit.i1017, %bb.wf, %bb.bt, %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit646, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i644, %bb.an, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit625, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i623, %bb.cf
  %.pn572.pn.pn.pn = phi { ptr, i32 } [ %.pn484.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i623 ], [ %i.nu, %bb.cf ], [ %.pn494.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i644 ], [ %i.gc, %bb.an ], [ %.pn484.pn.pn.pn.pn.pn.pn1201, %bb.ag ], [ %.pn484.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit625 ], [ %.pn572.pn, %bb.bt ], [ %.pn494.pn.pn.pn.pn.pn.pn1213, %bb.be ], [ %.pn494.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit646 ], [ %i.ml, %bb.bx ], [ %i.ph, %bb.cl ], [ %i.ml, %bb.by ], [ %.pn568.pn, %_ZSt8_DestroyIPN6casadi10SXFunction6TapeElINS0_6SXElemEEES4_EvT_S6_RSaIT0_E.exit.i1017 ], [ %.pn568.pn, %bb.wf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %common.resume

bb.wg:                                            ; preds = %bb.uw, %bb.tw, %bb.su, %bb.ru, %bb.ax, %bb.z
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6casadi16FunctionInternal12matching_argINS_6MatrixINS_6SXElemEEEEEbRKSt6vectorIT_SaIS6_EERx(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK6casadi16FunctionInternal9check_argINS_6MatrixINS_6SXElemEEEEEvRKSt6vectorIT_SaIS6_EERx(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !186
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit26._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.01660 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.k ] ; 19 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.h = load ptr, ptr %1, align 8, !tbaa !160    ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 40                  ; 2 uses
  %.not.i.i = icmp ult i64 %.01660, %i.l
  br i1 %.not.i.i, label %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.224, i64 noundef %.01660, i64 noundef %i.l) #30
  unreachable

_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.01660
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m)
  %i.o = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !359
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !356  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %.01660, %i.u
  br i1 %.not.i.i.i.i, label %_ZNK6casadi16FunctionInternal8size1_inEx.exit, label %bb.d

bb.d:                                             ; preds = %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.224, i64 noundef %.01660, i64 noundef %i.u) #30
  unreachable

_ZNK6casadi16FunctionInternal8size1_inEx.exit:    ; preds = %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.01660
  %i.w = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %.not = icmp eq i64 %i.o, %i.w
  br i1 %.not, label %bb.e, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit26._crit_edge

bb.e:                                             ; preds = %_ZNK6casadi16FunctionInternal8size1_inEx.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.y = load ptr, ptr %1, align 8, !tbaa !160    ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 40                ; 2 uses
  %.not.i.i20 = icmp ult i64 %.01660, %i.ac
  br i1 %.not.i.i20, label %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.224, i64 noundef %.01660, i64 noundef %i.ac) #30
  unreachable

_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit21: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.y, i64 %.01660
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ad)
  %i.af = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !359
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !356 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3                 ; 2 uses
  %.not.i.i.i.i22 = icmp ult i64 %.01660, %i.al
  br i1 %.not.i.i.i.i22, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit21
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.224, i64 noundef %.01660, i64 noundef %i.al) #30
  unreachable

_ZNK6casadi16FunctionInternal8size2_inEx.exit:    ; preds = %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit21
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.01660
  %i.an = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %.not18 = icmp eq i64 %i.af, %i.an
  br i1 %.not18, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNK6casadi16FunctionInternal8size2_inEx.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.ap = load ptr, ptr %1, align 8, !tbaa !160   ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 40                ; 2 uses
  %.not.i.i23 = icmp ult i64 %.01660, %i.at
  br i1 %.not.i.i23, label %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit24, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.224, i64 noundef %.01660, i64 noundef %i.at) #30
  unreachable

_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit24: ; preds = %bb.h
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %.01660
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %i.au)
  %i.aw = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !359
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !356 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %.not.i.i.i.i25 = icmp ult i64 %.01660, %i.bc
  br i1 %.not.i.i.i.i25, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit26, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit24
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.224, i64 noundef %.01660, i64 noundef %i.bc) #30
  unreachable

_ZNK6casadi16FunctionInternal8size2_inEx.exit26:  ; preds = %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit24
  %i.bd = load i64, ptr %2, align 8, !tbaa !291
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.01660
  %i.bf = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
  %i.bg = mul nsw i64 %i.bf, %i.bd
  %.not19 = icmp eq i64 %i.aw, %i.bg
  br i1 %.not19, label %bb.k, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit26._crit_edge

bb.k:                                             ; preds = %_ZNK6casadi16FunctionInternal8size2_inEx.exit, %_ZNK6casadi16FunctionInternal8size2_inEx.exit26
  %i.bh = add nuw nsw i64 %.01660, 1              ; 2 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !186
  %.not63 = icmp ult i64 %i.bh, %i.bi
  br i1 %.not63, label %bb.b, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit26._crit_edge, !llvm.loop !879

_ZNK6casadi16FunctionInternal8size2_inEx.exit26._crit_edge: ; preds = %bb.k, %_ZNK6casadi16FunctionInternal8size1_inEx.exit, %_ZNK6casadi16FunctionInternal8size2_inEx.exit26, %bb.a
  %.lcssa47 = phi i1 [ true, %bb.a ], [ false, %_ZNK6casadi16FunctionInternal8size2_inEx.exit26 ], [ false, %_ZNK6casadi16FunctionInternal8size1_inEx.exit ], [ true, %bb.k ]
  ret i1 %.lcssa47
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi16FunctionInternal13replace_fseedINS_6MatrixINS_6SXElemEEEEESt6vectorIS5_IT_SaIS6_EESaIS8_EERKSA_x(ptr dead_on_unwind noalias writable sret(%"class.std::vector.214") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.31", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !362  ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !363    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.228) #30
  unreachable

_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph

.thread:                                          ; preds = %_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !363
  %i.i = getelementptr i8, ptr %i.h, i64 %i.f     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.f, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.k, align 8, !tbaa !365
  store ptr %i.i, ptr %i.j, align 8, !tbaa !362
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit
  %i.n = phi ptr [ %i.h, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit ]
  %.014 = phi i64 [ 0, %.lr.ph ], [ %i.an, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.o = load ptr, ptr %2, align 8, !tbaa !363
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.014
  invoke void @_ZNK6casadi16FunctionInternal11replace_argINS_6MatrixINS_6SXElemEEEEESt6vectorIT_SaIS6_EERKS8_x(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.31") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.014
  call void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE14_M_move_assignEOS5_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  %i.r = load ptr, ptr %4, align 8, !tbaa !160    ; 3 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !159  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i ], [ %i.r, %bb.c ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !168  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !169  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i) #28
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !168
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.y = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !170
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #29
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #31
  unreachable

_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %i.s
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !160
  br label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.c
  %i.ai = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !309
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #29
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.an = add nuw nsw i64 %.014, 1                ; 2 uses
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !362
  %i.ap = load ptr, ptr %0, align 8, !tbaa !363   ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 24
  %i.au = icmp ult i64 %i.an, %i.at
  br i1 %i.au, label %bb.b, label %._crit_edge, !llvm.loop !880

bb.g:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  resume { ptr, i32 } %i.av

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit, %.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !363    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !362  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i) #28
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !15

_ZSt8_DestroyIPSt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !363
  br label %_ZSt8_DestroyIPSt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EES6_EvT_S8_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !365
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #29
  br label %_ZNSt12_Vector_baseISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !362  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !363    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEE8allocateEmPKv.exit.i.i.i, !prof !331

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt15__new_allocatorISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !363
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !362
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !365
  %i.m = load ptr, ptr %1, align 8, !tbaa !364    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !364  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIN6casadi6MatrixINS3_6SXElemEEESaIS6_EES2_IS8_SaIS8_EEEEPS8_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIN6casadi6MatrixINS3_6SXElemEEESaIS6_EES2_IS8_SaIS8_EEEEPS8_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !881

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #28 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEEvT_S8_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i) #28
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEEvT_S8_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

_ZSt8_DestroyIPSt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEEvT_S8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #30
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEEvT_S8_.exit.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #31
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEEvT_S8_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIN6casadi6MatrixINS3_6SXElemEEESaIS6_EES2_IS8_SaIS8_EEEEPS8_S8_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !362
  ret void

.body:                                            ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !363    ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EESaIS6_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !365
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #29
  br label %_ZNSt12_Vector_baseISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN6casadi6MatrixINS1_6SXElemEEESaIS4_EESaIS6_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.u
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN6casadi6MatrixINS_6SXElemEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !160    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 40                  ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !168  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !169  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i ] ; 2 uses
  tail call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i) #28
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !168
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.q = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !170
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #29
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.e, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !159
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE15_M_erase_at_endEPS3_.exit: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi15BinaryOperationILx4EE3derINS_6SXElemEEEvRKT_S6_S6_PS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %5 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %6 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %7 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN6casadi6SXElemC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef 1.000000e+00)
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %4, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN6casadidvERKNS_6SXElemES2_.exit unwind label %bb.d

_ZN6casadidvERKNS_6SXElemES2_.exit:               ; preds = %bb.a
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %_ZN6casadidvERKNS_6SXElemES2_.exit
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #28
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #28
end_hunk_3
begin_hunk_4_@_ZNK6casadi10SXFunction10ad_reverseERKSt6vectorIS1_INS_6MatrixINS_6SXElemEEESaIS4_EESaIS6_EERS8_:bb.a
  %i.bqe = ptrtoint ptr %i.bqd to i64
  %i.bqf = ptrtoint ptr %i.bqb to i64
  %i.bqg = sub i64 %i.bqe, %i.bqf
  call void @_ZdlPvm(ptr noundef nonnull %i.bqb, i64 noundef %i.bqg) #29
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit1049

_ZNSt6vectorIN6casadi10SXFunction6TapeElINS0_6SXElemEEESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EED2Ev.exit, %bb.qi, %_ZSt8_DestroyIPN6casadi10SXFunction6TapeElINS0_6SXElemEEES4_EvT_S6_RSaIT0_E.exit.i, %_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EED2Ev.exit672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.xb

bb.xb:                                            ; preds = %_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE6resizeEm.exit, %_ZNSt6vectorIN6casadi10SXFunction6TapeElINS0_6SXElemEEESaIS4_EED2Ev.exit
  ret void

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit1049: ; preds = %bb.xa, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i1047, %bb.ql
  %.pn571.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn512, %bb.ql ], [ %.pn571.pn.pn, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i1047 ], [ %.pn571.pn.pn, %bb.xa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #28
  br label %.body730

.body730:                                         ; preds = %bb.cw, %bb.cx, %bb.dd, %bb.dj, %bb.dp, %bb.dv, %bb.eb, %bb.eh, %bb.ew, %bb.fc, %bb.fi, %bb.fv, %bb.gs, %bb.gy, %bb.he, %bb.hk, %bb.hq, %bb.hw, %bb.ic, %bb.ii, %bb.io, %bb.iu, %bb.ja, %bb.jg, %bb.jm, %bb.js, %bb.kz, %bb.ls, %bb.ly, %bb.me, %bb.nh, %bb.nn, %bb.nt, %bb.nz, %bb.of, %bb.ol, %bb.or, %bb.ox, %bb.pd, %bb.pw, %bb.ep, %bb.eq, %bb.fo, %bb.fp, %bb.gb, %bb.gc, %bb.gl, %bb.gm, %bb.ka, %bb.kc, %bb.kk, %bb.km, %bb.ks, %bb.kt, %bb.lk, %bb.lm, %bb.mm, %bb.mn, %bb.mt, %bb.mu, %bb.na, %bb.nb, %bb.pj, %bb.pk, %bb.pr, %bb.ps, %bb.pu, %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit1049, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit716, %bb.cl
  %.pn577.pn = phi { ptr, i32 } [ %.pn506.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit716 ], [ %.pn571.pn.pn.pn.pn, %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit1049 ], [ %.pn509.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865 ], [ %i.pl, %bb.cl ], [ %i.qw, %bb.cx ], [ %i.qv, %bb.cw ], [ %i.rl, %bb.dd ], [ %i.sa, %bb.dj ], [ %i.sp, %bb.dp ], [ %i.tb, %bb.dv ], [ %i.tq, %bb.eb ], [ %i.uf, %bb.eh ], [ %i.atm, %bb.pw ], [ %i.vi, %bb.ew ], [ %i.vu, %bb.fc ], [ %i.wi, %bb.fi ], [ %.pn.i.i, %bb.ep ], [ %i.xn, %bb.fv ], [ %i.wv, %bb.fo ], [ %i.ya, %bb.gb ], [ %i.zi, %bb.gs ], [ %i.zw, %bb.gy ], [ %i.aak, %bb.he ], [ %i.aay, %bb.hk ], [ %i.abn, %bb.hq ], [ %i.acc, %bb.hw ], [ %i.acr, %bb.ic ], [ %i.adg, %bb.ii ], [ %i.adv, %bb.io ], [ %i.aek, %bb.iu ], [ %i.aez, %bb.ja ], [ %i.afo, %bb.jg ], [ %i.agd, %bb.jm ], [ %i.ags, %bb.js ], [ %.pn.i.i745, %bb.gl ], [ %.pn.i, %bb.ka ], [ %.pn.i782, %bb.kk ], [ %i.ajf, %bb.kz ], [ %i.ain, %bb.ks ], [ %i.akl, %bb.ls ], [ %i.akx, %bb.ly ], [ %i.alj, %bb.me ], [ %.pn7.i, %bb.lk ], [ %.pn.i.i800, %bb.mm ], [ %i.amn, %bb.mt ], [ %i.anu, %bb.nh ], [ %i.aoi, %bb.nn ], [ %i.aow, %bb.nt ], [ %i.apk, %bb.nz ], [ %i.apw, %bb.of ], [ %i.aqk, %bb.ol ], [ %i.aqz, %bb.or ], [ %i.aro, %bb.ox ], [ %i.asc, %bb.pd ], [ %i.and, %bb.na ], [ %i.asp, %bb.pj ], [ %i.uw, %bb.eq ], [ %i.wy, %bb.fp ], [ %i.yd, %bb.gc ], [ %i.yu, %bb.gm ], [ %i.ahj, %bb.kc ], [ %i.aia, %bb.km ], [ %i.aiq, %bb.kt ], [ %i.ajx, %bb.lm ], [ %i.ama, %bb.mn ], [ %i.amq, %bb.mu ], [ %i.ang, %bb.nb ], [ %i.ass, %bb.pk ], [ %i.atj, %bb.pu ], [ %i.ati, %bb.ps ], [ %i.ath, %bb.pr ] ; 2 uses
  %.not4.i.i.i1050 = icmp eq ptr %i.lx, %i.ly
  br i1 %.not4.i.i.i1050, label %_ZSt8_DestroyIPN6casadi10SXFunction6TapeElINS0_6SXElemEEES4_EvT_S6_RSaIT0_E.exit.i1056, label %.lr.ph.i.i.i1051

.lr.ph.i.i.i1051:                                 ; preds = %.body730, %.lr.ph.i.i.i1051
  %.05.i.i.i1052 = phi ptr [ %i.bqi, %.lr.ph.i.i.i1051 ], [ %i.lx, %.body730 ] ; 3 uses
  %i.bqh = getelementptr inbounds nuw i8, ptr %.05.i.i.i1052, i64 8
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bqh) #28
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %.05.i.i.i1052) #28
  %i.bqi = getelementptr inbounds nuw i8, ptr %.05.i.i.i1052, i64 16 ; 2 uses
  %.not.i.i.i1053 = icmp eq ptr %i.bqi, %i.ly
  br i1 %.not.i.i.i1053, label %_ZSt8_DestroyIPN6casadi10SXFunction6TapeElINS0_6SXElemEEES4_EvT_S6_RSaIT0_E.exit.i1056, label %.lr.ph.i.i.i1051, !llvm.loop !16

_ZSt8_DestroyIPN6casadi10SXFunction6TapeElINS0_6SXElemEEES4_EvT_S6_RSaIT0_E.exit.i1056: ; preds = %.lr.ph.i.i.i1051, %.body730
  %.not.i.i1.i1057 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i1.i1057, label %.body, label %bb.xc

bb.xc:                                            ; preds = %_ZSt8_DestroyIPN6casadi10SXFunction6TapeElINS0_6SXElemEEES4_EvT_S6_RSaIT0_E.exit.i1056
  %.idx1315 = shl nuw nsw i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef %.idx1315) #29
  br label %.body

.body:                                            ; preds = %bb.bw, %bb.bx, %bb.ck, %_ZSt8_DestroyIPN6casadi10SXFunction6TapeElINS0_6SXElemEEES4_EvT_S6_RSaIT0_E.exit.i1056, %bb.xc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656, %bb.an, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635, %bb.bu, %bb.ce, %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658
  %.pn581.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn581.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658 ], [ %.pn502.pn.pn, %bb.bu ], [ %i.ni, %bb.ce ], [ %.pn581.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656 ], [ %.pn581.pn.pn.pn.pn.pn.pn1241, %bb.be ], [ %i.gf, %bb.an ], [ %.pn492.pn.pn.pn.pn.pn.pn1229, %bb.ag ], [ %.pn492.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637 ], [ %.pn492.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i635 ], [ %i.lz, %bb.bw ], [ %i.pk, %bb.ck ], [ %i.lz, %bb.bx ], [ %.pn577.pn, %_ZSt8_DestroyIPN6casadi10SXFunction6TapeElINS0_6SXElemEEES4_EvT_S6_RSaIT0_E.exit.i1056 ], [ %.pn577.pn, %bb.xc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %common.resume

bb.xd:                                            ; preds = %bb.vn, %bb.ud, %bb.tb, %bb.sb, %bb.ax, %bb.z
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6casadi16FunctionInternal12matching_resINS_6MatrixINS_6SXElemEEEEEbRKSt6vectorIT_SaIS6_EERx(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK6casadi16FunctionInternal9check_resINS_6MatrixINS_6SXElemEEEEEvRKSt6vectorIT_SaIS6_EERx(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !187
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit26._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.01660 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.k ] ; 19 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.h = load ptr, ptr %1, align 8, !tbaa !160    ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 40                  ; 2 uses
  %.not.i.i = icmp ult i64 %.01660, %i.l
  br i1 %.not.i.i, label %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.224, i64 noundef %.01660, i64 noundef %i.l) #30
  unreachable

_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.01660
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m)
  %i.o = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !359
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !356  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %.01660, %i.u
  br i1 %.not.i.i.i.i, label %_ZNK6casadi16FunctionInternal9size1_outEx.exit, label %bb.d

bb.d:                                             ; preds = %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.224, i64 noundef %.01660, i64 noundef %i.u) #30
  unreachable

_ZNK6casadi16FunctionInternal9size1_outEx.exit:   ; preds = %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.01660
  %i.w = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %.not = icmp eq i64 %i.o, %i.w
  br i1 %.not, label %bb.e, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit26._crit_edge

bb.e:                                             ; preds = %_ZNK6casadi16FunctionInternal9size1_outEx.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.y = load ptr, ptr %1, align 8, !tbaa !160    ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 40                ; 2 uses
  %.not.i.i20 = icmp ult i64 %.01660, %i.ac
  br i1 %.not.i.i20, label %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.224, i64 noundef %.01660, i64 noundef %i.ac) #30
  unreachable

_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit21: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.y, i64 %.01660
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ad)
  %i.af = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !359
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !356 ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3                 ; 2 uses
  %.not.i.i.i.i22 = icmp ult i64 %.01660, %i.al
  br i1 %.not.i.i.i.i22, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit21
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.224, i64 noundef %.01660, i64 noundef %i.al) #30
  unreachable

_ZNK6casadi16FunctionInternal9size2_outEx.exit:   ; preds = %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit21
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.01660
  %i.an = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %.not18 = icmp eq i64 %i.af, %i.an
  br i1 %.not18, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNK6casadi16FunctionInternal9size2_outEx.exit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.ap = load ptr, ptr %1, align 8, !tbaa !160   ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 40                ; 2 uses
  %.not.i.i23 = icmp ult i64 %.01660, %i.at
  br i1 %.not.i.i23, label %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit24, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.224, i64 noundef %.01660, i64 noundef %i.at) #30
  unreachable

_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit24: ; preds = %bb.h
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %.01660
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %i.au)
  %i.aw = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !359
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !356 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %.not.i.i.i.i25 = icmp ult i64 %.01660, %i.bc
  br i1 %.not.i.i.i.i25, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit26, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit24
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.224, i64 noundef %.01660, i64 noundef %i.bc) #30
  unreachable

_ZNK6casadi16FunctionInternal9size2_outEx.exit26: ; preds = %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit24
  %i.bd = load i64, ptr %2, align 8, !tbaa !291
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.01660
  %i.bf = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
  %i.bg = mul nsw i64 %i.bf, %i.bd
  %.not19 = icmp eq i64 %i.aw, %i.bg
  br i1 %.not19, label %bb.k, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit26._crit_edge

bb.k:                                             ; preds = %_ZNK6casadi16FunctionInternal9size2_outEx.exit, %_ZNK6casadi16FunctionInternal9size2_outEx.exit26
  %i.bh = add nuw nsw i64 %.01660, 1              ; 2 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !187
  %.not63 = icmp ult i64 %i.bh, %i.bi
  br i1 %.not63, label %bb.b, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit26._crit_edge, !llvm.loop !933

_ZNK6casadi16FunctionInternal9size2_outEx.exit26._crit_edge: ; preds = %bb.k, %_ZNK6casadi16FunctionInternal9size1_outEx.exit, %_ZNK6casadi16FunctionInternal9size2_outEx.exit26, %bb.a
  %.lcssa47 = phi i1 [ true, %bb.a ], [ false, %_ZNK6casadi16FunctionInternal9size2_outEx.exit26 ], [ false, %_ZNK6casadi16FunctionInternal9size1_outEx.exit ], [ true, %bb.k ]
  ret i1 %.lcssa47
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi16FunctionInternal13replace_aseedINS_6MatrixINS_6SXElemEEEEESt6vectorIS5_IT_SaIS6_EESaIS8_EERKSA_x(ptr dead_on_unwind noalias writable sret(%"class.std::vector.214") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.31", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !362  ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !363    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.228) #30
  unreachable

_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph

.thread:                                          ; preds = %_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !363
  %i.i = getelementptr i8, ptr %i.h, i64 %i.f     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.f, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.k, align 8, !tbaa !365
  store ptr %i.i, ptr %i.j, align 8, !tbaa !362
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit
  %i.n = phi ptr [ %i.h, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit ]
  %.014 = phi i64 [ 0, %.lr.ph ], [ %i.an, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.o = load ptr, ptr %2, align 8, !tbaa !363
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.014
  invoke void @_ZNK6casadi16FunctionInternal11replace_resINS_6MatrixINS_6SXElemEEEEESt6vectorIT_SaIS6_EERKS8_x(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.31") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1312) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.014
  call void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE14_M_move_assignEOS5_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  %i.r = load ptr, ptr %4, align 8, !tbaa !160    ; 3 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !159  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i ], [ %i.r, %bb.c ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !168  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !169  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i) #28
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !168
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.y = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !170
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #29
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #31
  unreachable

_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %i.s
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !160
  br label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.c
  %i.ai = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !309
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #29
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.an = add nuw nsw i64 %.014, 1                ; 2 uses
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !362
  %i.ap = load ptr, ptr %0, align 8, !tbaa !363   ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 24
  %i.au = icmp ult i64 %i.an, %i.at
  br i1 %i.au, label %bb.b, label %._crit_edge, !llvm.loop !934

bb.g:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  resume { ptr, i32 } %i.av

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit, %.thread
  ret void
}

declare void @_ZNK6casadi8Function7reverseEx(ptr dead_on_unwind writable sret(%"class.casadi::Function") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi10SXFunction10sp_forwardEPPKyPPyPxS4_Pv(ptr noundef nonnull align 8 dereferenceable(1611) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef double %i.c(ptr noundef nonnull align 8 dereferenceable(1312) %0)
  %i.e = fcmp oeq double %i.d, 1.000000e+00
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef double %i.h(ptr noundef nonnull align 8 dereferenceable(1312) %0)
  %i.j = fcmp oeq double %i.i, -1.000000e+00
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call noundef i32 @_ZNK6casadi16FunctionInternal10sp_forwardEPPKyPPyPxS4_Pv(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !180  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !180  ; 2 uses
  %.not4142 = icmp eq ptr %i.m, %i.o
  br i1 %.not4142, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.m
  %.sroa.038.043 = phi ptr [ %i.bn, %bb.m ], [ %i.m, %bb.d ] ; 13 uses
  %i.p = load i32, ptr %.sroa.038.043, align 8, !tbaa !182
  switch i32 %i.p, label %bb.l [
    i32 44, label %bb.e
    i32 47, label %bb.e
    i32 45, label %bb.f
    i32 46, label %bb.i
    i32 48, label %bb.k
  ]

bb.e:                                             ; preds = %.lr.ph, %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.038.043, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !183
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %4, i64 %i.s
  store i64 0, ptr %i.t, align 8, !tbaa !291
  br label %bb.m

bb.f:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.038.043, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !162
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %1, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !368  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.038.043, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !162
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ac
end_hunk_4
begin_hunk_5_@_ZNK6casadi10SXFunction8call_revIyEEvRKNS_12ScalarAtomicEPPT_S7_PxS6_:bb.a
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bu ; 2 uses
  %i.bw = or disjoint i64 %.033.i, 2              ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bw
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !368
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !61
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.ca ; 2 uses
  %i.cc = or disjoint i64 %.033.i, 3              ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cc
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !368
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cc
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !61
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cg ; 2 uses
  %i.ci = add nuw nsw i64 %.033.i, 4              ; 2 uses
  %niter70.next.3 = add nuw nsw i64 %niter70, 4   ; 2 uses
  %niter70.ncmp.3 = icmp eq i64 %niter70.next.3, %unroll_iter69
  br i1 %niter70.ncmp.3, label %_ZNK6casadi10SXFunction10call_setupIyyEEvRKNS0_13ExtendedAlgElEPPPT0_PPPT_PPxSB_SB_SB_.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !950

_ZNK6casadi10SXFunction10call_setupIyyEEvRKNS0_13ExtendedAlgElEPPPT0_PPPT_PPxSB_SB_SB_.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod67.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod67.not, label %_ZNK6casadi10SXFunction10call_setupIyyEEvRKNS0_13ExtendedAlgElEPPPT0_PPPT_PPxSB_SB_SB_.exit, label %.epil.preheader64

.epil.preheader64:                                ; preds = %_ZNK6casadi10SXFunction10call_setupIyyEEvRKNS0_13ExtendedAlgElEPPPT0_PPPT_PPxSB_SB_SB_.exit.loopexit.unr-lcssa, %.lr.ph35.i
  %.033.i.epil.init = phi i64 [ 0, %.lr.ph35.i ], [ %i.ci, %_ZNK6casadi10SXFunction10call_setupIyyEEvRKNS0_13ExtendedAlgElEPPPT0_PPPT_PPxSB_SB_SB_.exit.loopexit.unr-lcssa ]
  %.132.i.epil.init = phi ptr [ %i.r, %.lr.ph35.i ], [ %i.ch, %_ZNK6casadi10SXFunction10call_setupIyyEEvRKNS0_13ExtendedAlgElEPPPT0_PPPT_PPxSB_SB_SB_.exit.loopexit.unr-lcssa ]
  %lcmp.mod68 = icmp ne i64 %xtraiter65, 0
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader64
  %.033.i.epil = phi i64 [ %.033.i.epil.init, %.epil.preheader64 ], [ %i.co, %bb.e ] ; 3 uses
  %.132.i.epil = phi ptr [ %.132.i.epil.init, %.epil.preheader64 ], [ %i.cn, %bb.e ] ; 2 uses
  %epil.iter66 = phi i64 [ 0, %.epil.preheader64 ], [ %epil.iter66.next, %bb.e ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.033.i.epil
  store ptr %.132.i.epil, ptr %i.cj, align 8, !tbaa !368
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.033.i.epil
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !61
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %.132.i.epil, i64 %i.cm
  %i.co = add nuw nsw i64 %.033.i.epil, 1
  %epil.iter66.next = add i64 %epil.iter66, 1     ; 2 uses
  %epil.iter66.cmp.not = icmp eq i64 %epil.iter66.next, %xtraiter65
  br i1 %epil.iter66.cmp.not, label %_ZNK6casadi10SXFunction10call_setupIyyEEvRKNS0_13ExtendedAlgElEPPPT0_PPPT_PPxSB_SB_SB_.exit, label %bb.e, !llvm.loop !951

_ZNK6casadi10SXFunction10call_setupIyyEEvRKNS0_13ExtendedAlgElEPPPT0_PPPT_PPxSB_SB_SB_.exit: ; preds = %_ZNK6casadi10SXFunction10call_setupIyyEEvRKNS0_13ExtendedAlgElEPPPT0_PPPT_PPxSB_SB_SB_.exit.loopexit.unr-lcssa, %bb.e, %._crit_edge.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !57 ; 2 uses
  %i.cr = icmp slt i64 %i.cq, 1
  br i1 %i.cr, label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK6casadi10SXFunction10call_setupIyyEEvRKNS0_13ExtendedAlgElEPPPT0_PPPT_PPxSB_SB_SB_.exit
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %.idx.i.i, i1 false), !tbaa !291
  br label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit

_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i, %_ZNK6casadi10SXFunction10call_setupIyyEEvRKNS0_13ExtendedAlgElEPPPT0_PPPT_PPxSB_SB_SB_.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 4 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !58
  %i.cu = icmp sgt i64 %i.ct, 0
  br i1 %i.cu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !60
  br label %bb.f

._crit_edge:                                      ; preds = %bb.h, %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit
  %i.cx = tail call noundef i32 @_ZNK6casadi8Function3revEPPyS2_PxS1_i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.i, ptr noundef %i.l, ptr noundef %4, ptr noundef %i.u, i32 noundef 0) ; 0 uses
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !58 ; 2 uses
  %i.cz = icmp sgt i64 %i.cy, 0
  br i1 %i.cz, label %.lr.ph51, label %.preheader

.lr.ph51:                                         ; preds = %._crit_edge
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !60
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %.03348 = phi i64 [ 0, %.lr.ph ], [ %i.dk, %bb.h ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.03348
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !61 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, -1
  br i1 %i.de, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.df = zext nneg i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !291
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.di = phi i64 [ %i.dh, %bb.g ], [ 0, %bb.f ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.03348
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !291
  %i.dk = add nuw nsw i64 %.03348, 1              ; 2 uses
  %i.dl = load i64, ptr %i.cs, align 8, !tbaa !58
  %i.dm = icmp slt i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.f, label %._crit_edge, !llvm.loop !952

.preheader:                                       ; preds = %bb.k, %._crit_edge
  %i.dn = load i64, ptr %i.cp, align 8, !tbaa !57
  %i.do = icmp sgt i64 %i.dn, 0
  br i1 %i.do, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %.preheader
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !60
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph51, %bb.k
  %i.dr = phi i64 [ %i.cy, %.lr.ph51 ], [ %i.dx, %bb.k ]
  %.03249 = phi i64 [ 0, %.lr.ph51 ], [ %i.dy, %bb.k ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.03249
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !61 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, -1
  br i1 %i.du, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dv = zext nneg i32 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.dv
  store i64 0, ptr %i.dw, align 8, !tbaa !291
  %.pre = load i64, ptr %i.cs, align 8, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.dx = phi i64 [ %i.dr, %bb.i ], [ %.pre, %bb.j ] ; 2 uses
  %i.dy = add nuw nsw i64 %.03249, 1              ; 2 uses
  %i.dz = icmp slt i64 %i.dy, %i.dx
  br i1 %i.dz, label %bb.i, label %.preheader, !llvm.loop !953

._crit_edge54:                                    ; preds = %bb.l, %.preheader
  ret void

bb.l:                                             ; preds = %.lr.ph53, %bb.l
  %.052 = phi i64 [ 0, %.lr.ph53 ], [ %i.ei, %bb.l ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.052
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !291
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.052
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !61
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ee ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !291
  %i.eh = or i64 %i.eg, %i.eb
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !291
  %i.ei = add nuw nsw i64 %.052, 1                ; 2 uses
  %i.ej = load i64, ptr %i.cp, align 8, !tbaa !57
  %i.ek = icmp slt i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.l, label %._crit_edge54, !llvm.loop !954
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10SXFunction5sx_inEx(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1611) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1312
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1320
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40                  ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.h
  br i1 %.not.i.i, label %_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.224, i64 noundef %2, i64 noundef %i.h) #30
  unreachable

_ZNKSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %2
  tail call void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i)
  ret void
}

declare void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10SXFunction5sx_inEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector.31") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1611) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1312
  tail call void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !160    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN6casadi6MatrixINS0_6SXElemEEEE8allocateEmPKv.exit.i.i.i, !prof !331

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt15__new_allocatorIN6casadi6MatrixINS0_6SXElemEEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN6casadi6MatrixINS0_6SXElemEEEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN6casadi6MatrixINS0_6SXElemEEEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !160
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !159
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !309
  %i.m = load ptr, ptr %1, align 8, !tbaa !310    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !310  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6casadi6MatrixINS2_6SXElemEEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6casadi6MatrixINS2_6SXElemEEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !955

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #30
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6casadi6MatrixINS2_6SXElemEEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !159
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !160    ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !309
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #29
  br label %_ZNSt12_Vector_baseIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6casadi10SXFunction4is_aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(1611) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !176  ; 2 uses
  %i.c = icmp eq i64 %i.b, 10
  br i1 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  br i1 %2, label %bb.b, label %_ZNK6casadi9XFunctionINS_10SXFunctionENS_6MatrixINS_6SXElemEEENS_6SXNodeEE4is_aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !161    ; 2 uses
  %i.e = load i64, ptr %i.d, align 1
  %i.f = xor i64 %i.e, 7598807797345966163
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = load i16, ptr %i.g, align 1
  %i.i = zext i16 %i.h to i64
  %i.j = xor i64 %i.i, 28271
  %i.k = or i64 %i.f, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0                      ; 2 uses
  %.not6 = xor i1 %2, true
  %brmerge7 = or i1 %i.n, %.not6
  br i1 %brmerge7, label %_ZNK6casadi9XFunctionINS_10SXFunctionENS_6MatrixINS_6SXElemEEENS_6SXNodeEE4is_aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.thread

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.o = icmp eq i64 %i.b, 9
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.b
  %i.p = load ptr, ptr %1, align 8, !tbaa !161    ; 2 uses
  %i.q = load i64, ptr %i.p, align 1
  %i.r = xor i64 %i.q, 8028075781168391800
  %i.s = getelementptr i8, ptr %i.p, i64 8
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = xor i64 %i.u, 110
  %i.w = or i64 %i.r, %i.v
  %i.x = icmp ne i64 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZNK6casadi9XFunctionINS_10SXFunctionENS_6MatrixINS_6SXElemEEENS_6SXNodeEE4is_aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.aa = tail call noundef zeroext i1 @_ZNK6casadi16FunctionInternal4is_aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext true)
  br label %_ZNK6casadi9XFunctionINS_10SXFunctionENS_6MatrixINS_6SXElemEEENS_6SXNodeEE4is_aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

_ZNK6casadi9XFunctionINS_10SXFunctionENS_6MatrixINS_6SXElemEEENS_6SXNodeEE4is_aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.aa, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.thread ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ %i.n, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  ret i1 %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6casadi9XFunctionINS_10SXFunctionENS_6MatrixINS_6SXElemEEENS_6SXNodeEE4is_aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !176
  %i.c = icmp eq i64 %i.b, 9
  br i1 %i.c, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !161    ; 2 uses
  %i.e = load i64, ptr %i.d, align 1
  %i.f = xor i64 %i.e, 8028075781168391800
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i64
  %i.j = xor i64 %i.i, 110
  %i.k = or i64 %i.f, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i1 [ false, %bb.a ], [ %i.n, %bb.b ] ; 2 uses
  %.not = xor i1 %2, true
  %brmerge = or i1 %i.o, %.not
  br i1 %brmerge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.p = tail call noundef zeroext i1 @_ZNK6casadi16FunctionInternal4is_aERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext true)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.c
  %i.q = phi i1 [ %i.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.p, %bb.c ]
  ret i1 %i.q
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10SXFunction16export_code_bodyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSoRKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SB_EEE(ptr noundef nonnull align 8 dereferenceable(1611) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::vector.17", align 8   ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 26 uses
  %14 = alloca %"class.casadi::Function", align 8 ; 11 uses
  %15 = alloca %"class.std::vector.163", align 8  ; 21 uses
  %16 = alloca %"class.std::vector.163", align 8  ; 26 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_5
begin_hunk_6_@_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE6jtimesERKS3_S6_S6_bRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessISD_ESaISt4pairIKSD_SE_EEE:bb.a
  %i.kc = load ptr, ptr %41, align 8, !tbaa !161  ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %.sink.split1002.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417.thread
  %i.kf = load i64, ptr %i.kd, align 8, !tbaa !162
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kg) #29
  br label %.sink.split1002.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417
  %i.kh = load i64, ptr %i.jz, align 8, !tbaa !162
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.ki) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br i1 %.10187, label %bb.cl, label %bb.ge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br i1 %.10187, label %bb.cl, label %bb.ge

.sink.split1002.a:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418.thread
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn743.ph = phi { ptr, i32 } [ %i.kb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418.thread ], [ %i.hj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420.thread ], [ %i.kb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.cl

bb.cl:                                            ; preds = %.sink.split1002.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn743 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn743.ph, %.sink.split1002.a ]
  call void @__cxa_free_exception(ptr %i.hg) #28
  br label %bb.ge

bb.cm:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit286, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit289, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit295
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc421 unwind label %bb.co

.noexc421:                                        ; preds = %bb.cm
  %i.kk = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.kj)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit423 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit423: ; preds = %.noexc421
  %i.kl = icmp sgt i64 %i.kk, 0
  br i1 %i.kl, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit423
  %i.km = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %.noexc424 unwind label %bb.co

.noexc424:                                        ; preds = %bb.cn
  %i.kn = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.km)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit426 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit426: ; preds = %.noexc424
  %i.ko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc427 unwind label %bb.co

.noexc427:                                        ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit426
  %i.kp = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ko)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit429 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit429: ; preds = %.noexc427
  %i.kq = sdiv i64 %i.kn, %i.kp
  br label %bb.cr

bb.co:                                            ; preds = %.noexc453, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size1Ev.exit446, %.noexc450, %bb.cw, %.noexc447, %bb.cv, %.noexc444, %bb.cu, %.noexc441, %bb.cs, %.noexc439, %bb.cr, %.noexc436, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit435, %.noexc433, %bb.cq, %.noexc430, %bb.cp, %.noexc427, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit426, %.noexc424, %bb.cn, %.noexc421, %bb.cm, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit452
  %i.kr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ge

bb.cp:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit378, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit372, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit369
  %i.ks = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %.noexc430 unwind label %bb.co

.noexc430:                                        ; preds = %bb.cp
  %i.kt = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ks)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit432 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit432: ; preds = %.noexc430
  %i.ku = icmp sgt i64 %i.kt, 0
  br i1 %i.ku, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit432
  %i.kv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %.noexc433 unwind label %bb.co

.noexc433:                                        ; preds = %bb.cq
  %i.kw = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.kv)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit435 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit435: ; preds = %.noexc433
  %i.kx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %.noexc436 unwind label %bb.co

.noexc436:                                        ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit435
  %i.ky = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.kx)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit438 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit438: ; preds = %.noexc436
  %i.kz = sdiv i64 %i.kw, %i.ky
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit432, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit438, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit423, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit429
  %.0190 = phi i64 [ %i.kq, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit429 ], [ 1, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit423 ], [ %i.kz, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit438 ], [ 1, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit432 ]
  %i.la = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %.noexc439 unwind label %bb.co

.noexc439:                                        ; preds = %bb.cr
  %i.lb = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.la, i1 noundef zeroext false)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit: ; preds = %.noexc439
  br i1 %i.lb, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit
  %i.lc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc441 unwind label %bb.co

.noexc441:                                        ; preds = %bb.cs
  %i.ld = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %i.lc, i1 noundef zeroext false)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit443 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit443: ; preds = %.noexc441
  br i1 %i.ld, label %bb.ct, label %.invoke

bb.ct:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit443, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit
  br i1 %4, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %.noexc444 unwind label %bb.co

.noexc444:                                        ; preds = %bb.cu
  %i.lf = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.le)
          to label %bb.cw unwind label %bb.co

bb.cv:                                            ; preds = %bb.ct
  %i.lg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc447 unwind label %bb.co

.noexc447:                                        ; preds = %bb.cv
  %i.lh = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.lg)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size1Ev.exit446 unwind label %bb.co

bb.cw:                                            ; preds = %.noexc444
  %i.li = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %.noexc450 unwind label %bb.co

.noexc450:                                        ; preds = %bb.cw
  %i.lj = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.li)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit452 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size1Ev.exit446: ; preds = %.noexc447
  %i.lk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc453 unwind label %bb.co

.noexc453:                                        ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size1Ev.exit446
  %i.ll = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.lk)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit452 unwind label %bb.co

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit452: ; preds = %.noexc453, %.noexc450
  %i.lm = phi i64 [ %i.lf, %.noexc450 ], [ %i.lh, %.noexc453 ]
  %.pn239 = phi i64 [ %i.lj, %.noexc450 ], [ %i.ll, %.noexc453 ]
  %i.ln = mul nsw i64 %.pn239, %.0190
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1Exx(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.lm, i64 noundef %i.ln)
          to label %bb.gd unwind label %bb.co

.invoke:                                          ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE8is_emptyEb.exit443
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #28
  %. = select i1 %4, ptr %1, ptr %2
  %i.lo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %.)
          to label %.noexc459.invoke unwind label %bb.cz

.noexc459.invoke:                                 ; preds = %.invoke
  %i.lp = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.lo)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit458 unwind label %bb.cz

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit458: ; preds = %.noexc459.invoke
  invoke void @_ZN6casadi17SparsityInterfaceINS_6MatrixINS_6SXElemEEEE9horzsplitERKS3_x(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.31") align 8 %52, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef %i.lp)
          to label %_ZN6casadi9horzsplitERKNS_6MatrixINS_6SXElemEEEx.exit unwind label %bb.cz

_ZN6casadi9horzsplitERKNS_6MatrixINS_6SXElemEEEx.exit: ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit458
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #28
  %i.lq = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 6 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !159 ; 2 uses
  %i.ls = load ptr, ptr %52, align 8, !tbaa !160  ; 2 uses
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu                    ; 2 uses
  %i.lw = sdiv exact i64 %i.lv, 40                ; 2 uses
  %76 = icmp slt i64 %i.lv, 0
  br i1 %76, label %bb.cx, label %_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.cx:                                            ; preds = %_ZN6casadi9horzsplitERKNS_6MatrixINS_6SXElemEEEx.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.228) #30
          to label %.noexc463 unwind label %bb.da

.noexc463:                                        ; preds = %bb.cx
  unreachable

_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %_ZN6casadi9horzsplitERKNS_6MatrixINS_6SXElemEEEx.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.lr, %i.ls
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.preheader.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.lx = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %53, i64 16
  br label %._crit_edge

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IN6casadi6MatrixINS0_6SXElemEEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.lz = mul nuw nsw i64 %i.lw, 24               ; 3 uses
  %i.ma = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lz) #33
          to label %bb.cy unwind label %bb.da     ; 4 uses

bb.cy:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ma, ptr %53, align 8, !tbaa !363
  %i.mb = getelementptr inbounds nuw [24 x i8], ptr %i.ma, i64 %i.lw
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ma, i8 0, i64 %i.lz, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ma, i64 %i.lz
  %.pre = load ptr, ptr %i.lq, align 8, !tbaa !159
  %.pre802 = load ptr, ptr %52, align 8, !tbaa !160 ; 2 uses
  %i.mc = icmp eq ptr %.pre, %.pre802
  %i.md = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 3 uses
  store ptr %i.mb, ptr %i.me, align 8, !tbaa !365
  store ptr %scevgep.i.i.i.i.i, ptr %i.md, align 8, !tbaa !362
  br i1 %i.mc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cy
  %i.mf = getelementptr inbounds nuw i8, ptr %54, i64 40
  %i.mg = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %54, i64 24
  %i.mi = getelementptr inbounds nuw i8, ptr %54, i64 32
  %i.mj = getelementptr inbounds nuw i8, ptr %54, i64 8
  br label %bb.db

._crit_edge:                                      ; preds = %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit, %.thread, %bb.cy
  %i.mk = phi ptr [ %i.ly, %.thread ], [ %i.me, %bb.cy ], [ %i.me, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit ] ; 5 uses
  %i.ml = phi ptr [ %i.lx, %.thread ], [ %i.md, %bb.cy ], [ %i.md, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit ] ; 5 uses
  br i1 %4, label %bb.dg, label %bb.em

bb.cz:                                            ; preds = %.invoke, %.noexc459.invoke, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size2Ev.exit458
  %i.mm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.gc

bb.da:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.cx
  %i.mn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.gb

bb.db:                                            ; preds = %.lr.ph, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit
  %i.mo = phi ptr [ %.pre802, %.lr.ph ], [ %i.ne, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit ]
  %.0191789 = phi i64 [ 0, %.lr.ph ], [ %i.nc, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #28
  %i.mp = getelementptr inbounds nuw [40 x i8], ptr %i.mo, i64 %.0191789
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %54, ptr noundef nonnull align 8 dereferenceable(40) %i.mp)
          to label %bb.dc unwind label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.mq = load ptr, ptr %53, align 8, !tbaa !363
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %i.mq, i64 %.0191789
  invoke void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.mr, ptr noundef nonnull %54, ptr noundef nonnull %i.mf)
          to label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %.loopexit.loopexit

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %bb.dc
  %i.ms = load ptr, ptr %i.mg, align 8, !tbaa !168 ; 3 uses
  %i.mt = load ptr, ptr %i.mh, align 8, !tbaa !169 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ms, %i.mt
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.mu, %.lr.ph.i.i.i.i ], [ %i.ms, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #28
  %i.mu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i466 = icmp eq ptr %i.mu, %i.mt
  br i1 %.not.i.i.i.i466, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.mg, align 8, !tbaa !168
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.mv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ms, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i, label %bb.dd

bb.dd:                                            ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.mw = load ptr, ptr %i.mi, align 8, !tbaa !170
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = ptrtoint ptr %i.mv to i64
  %i.mz = sub i64 %i.mx, %i.my
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.mz) #29
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i: ; preds = %bb.dd, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mj)
          to label %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit unwind label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i
  %i.na = landingpad { ptr, i32 }
          catch ptr null
  %i.nb = extractvalue { ptr, i32 } %i.na, 0
  call void @__clang_call_terminate(ptr %i.nb) #31
  unreachable

_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit:          ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28
  %i.nc = add nuw nsw i64 %.0191789, 1            ; 2 uses
  %i.nd = load ptr, ptr %i.lq, align 8, !tbaa !159
  %i.ne = load ptr, ptr %52, align 8, !tbaa !160  ; 2 uses
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = sub i64 %i.nf, %i.ng
  %i.ni = sdiv exact i64 %i.nh, 40
  %i.nj = icmp ult i64 %i.nc, %i.ni
  br i1 %i.nj, label %bb.db, label %._crit_edge, !llvm.loop !1482

bb.df:                                            ; preds = %bb.db
  %i.nk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.dc
  %i.nl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %54) #28
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.df
  %.pn234 = phi { ptr, i32 } [ %i.nk, %bb.df ], [ %i.nl, %.loopexit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28
  br label %bb.ga

bb.dg:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #28
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.dh unwind label %bb.ej

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  %i.nm = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33
          to label %.noexc668 unwind label %bb.dn ; 5 uses

.noexc668:                                        ; preds = %bb.dh
  store ptr %i.nm, ptr %56, align 8, !tbaa !160
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 40 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  store ptr %i.nn, ptr %i.no, align 8, !tbaa !309
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.nm, ptr noundef nonnull align 8 dereferenceable(40) %57)
          to label %_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.di

_ZSt10_ConstructIN6casadi6MatrixINS0_6SXElemEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc668
  %i.np = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 2 uses
  store ptr %i.nn, ptr %i.np, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #28
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %59, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.dp unwind label %bb.ek

bb.di:                                            ; preds = %.noexc668
  %i.nq = landingpad { ptr, i32 }
          catch ptr null
  %i.nr = extractvalue { ptr, i32 } %i.nq, 0
  %i.ns = call ptr @__cxa_begin_catch(ptr %i.nr) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_(ptr noundef nonnull %i.nm, ptr noundef nonnull %i.nm)
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %bb.di
  invoke void @__cxa_rethrow() #30
          to label %bb.dm unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.nt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  invoke void @__cxa_end_catch()
          to label %.body669 unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nu = landingpad { ptr, i32 }
          catch ptr null
  %i.nv = extractvalue { ptr, i32 } %i.nu, 0
  call void @__clang_call_terminate(ptr %i.nv) #31
end_hunk_6
begin_hunk_7_@_ZN6casadi17SparsityInterfaceINS_6MatrixINS_6SXElemEEEE9horzsplitERKS3_x:bb.a
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.d, %bb.k ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.k ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 2 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !161   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !162
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  %i.an = load ptr, ptr %6, align 8, !tbaa !161   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread: ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %6, align 8, !tbaa !161   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread
  %i.au = load i64, ptr %i.as, align 8, !tbaa !162
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #29
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !162
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ax) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.5, label %bb.q, label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.5, label %bb.q, label %bb.ab

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread
  %.pn.pn.pn.pn.pn.pn.pn57.ph = phi { ptr, i32 } [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %.pn.pn.pn.pn.pn.pn.pn57 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %.pn.pn.pn.pn.pn.pn.pn57.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.ab

bb.r:                                             ; preds = %bb.a
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.az = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @_ZN6casadi5rangeExxxx(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.163") align 8 %13, i64 noundef 0, i64 noundef %i.az, i64 noundef %2, i64 noundef 9223372036854775807)
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !394 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !374
  %.not.i = icmp eq ptr %i.bb, %i.bd
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !291
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !394
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

bb.t:                                             ; preds = %bb.r
  %i.bf = load ptr, ptr %13, align 8, !tbaa !370  ; 4 uses
  %i.bg = ptrtoint ptr %i.bb to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 5 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775800
  br i1 %i.bj, label %bb.u, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.227) #30
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.u
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.bk = ashr exact i64 %i.bi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bl, i64 1152921504606846975)
  %i.bo = select i1 %i.bm, i64 1152921504606846975, i64 %i.bn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #33
          to label %.noexc50 unwind label %bb.z   ; 4 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.bi ; 2 uses
  store i64 %i.az, ptr %i.br, align 8, !tbaa !291
  %i.bs = icmp sgt i64 %i.bi, 0
  br i1 %i.bs, label %bb.v, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

bb.v:                                             ; preds = %.noexc50
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr align 8 %i.bf, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i: ; preds = %bb.v, %.noexc50
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  %i.bu = load ptr, ptr %i.bc, align 8, !tbaa !374
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bw) #29
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  store ptr %i.bq, ptr %13, align 8, !tbaa !370
  store ptr %i.bt, ptr %i.ba, align 8, !tbaa !394
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bx, ptr %i.bc, align 8, !tbaa !374
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

_ZNSt6vectorIxSaIxEE9push_backERKx.exit:          ; preds = %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, %bb.s
  invoke void @_ZN6casadi6MatrixINS_6SXElemEE9horzsplitERKS2_RKSt6vectorIxSaIxEE(ptr dead_on_unwind writable sret(%"class.std::vector.31") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %_ZNSt6vectorIxSaIxEE9push_backERKx.exit
  %i.by = load ptr, ptr %13, align 8, !tbaa !370  ; 3 uses
  %.not.i.i.i51 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = load ptr, ptr %i.bc, align 8, !tbaa !374
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cc) #29
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  ret void

bb.z:                                             ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i, %bb.u, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load ptr, ptr %13, align 8, !tbaa !370  ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIxSaIxEED2Ev.exit53, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = load ptr, ptr %i.bc, align 8, !tbaa !374
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ci) #29
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit53

_ZNSt6vectorIxSaIxEED2Ev.exit53:                  ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.q, %_ZNSt6vectorIxSaIxEED2Ev.exit53
  %.pn30 = phi { ptr, i32 } [ %i.cd, %_ZNSt6vectorIxSaIxEED2Ev.exit53 ], [ %.pn.pn.pn.pn.pn.pn.pn57, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ]
  resume { ptr, i32 } %.pn30

bb.ac:                                            ; preds = %bb.j
  unreachable
}

declare void @_ZN6casadi5rangeExxxx(ptr dead_on_unwind writable sret(%"class.std::vector.163") align 8, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %3 = udiv exact i64 %i.c, 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !309
  %i.f = load ptr, ptr %0, align 8, !tbaa !160    ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %i.k, label %bb.c, label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.228) #30
  unreachable

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit: ; preds = %bb.b
  %i.l = tail call noundef ptr @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %3, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !160    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !159  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i ], [ %i.m, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !168  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !169  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i ] ; 2 uses
  tail call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #28
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !168
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i
  %i.u = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !170
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #29
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i: ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.o
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !160
  br label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exit

_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit
  %i.ae = phi ptr [ %.pr, %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exitthread-pre-split ], [ %i.m, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exit
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !309
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #29
  br label %_ZNSt12_Vector_baseIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEEEvT_S5_.exit, %bb.f
  store ptr %i.l, ptr %0, align 8, !tbaa !160
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.aj, ptr %i.n, align 8, !tbaa !159
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.g:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !159 ; 3 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.h                     ; 4 uses
  %.not = icmp ult i64 %i.an, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKN6casadi6MatrixINS0_6SXElemEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i64 %i.c, 0
  br i1 %i.ao, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.h
  %i.ap = udiv exact i64 %i.c, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i ], [ %i.ap, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.aq = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6casadi6MatrixINS_6SXElemEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0910.i.i.i.i.i) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40 ; 2 uses
  %i.at = add nsw i64 %.012.i.i.i.i.i, -1
  %i.au = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit.loopexit, !llvm.loop !20

_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !159
  br label %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit

_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit: ; preds = %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit.loopexit, %bb.h
  %i.av = phi ptr [ %i.al, %bb.h ], [ %.pre, %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.f, %bb.h ], [ %i.as, %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit.loopexit ] ; 3 uses
  %.not.i16 = icmp eq ptr %i.av, %.08.lcssa.i.i.i.i.i
  br i1 %.not.i16, label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bk, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !168 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !169 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.az
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ax, %.lr.ph.i.i.i ] ; 2 uses
  tail call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i) #28
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.az
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !168
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bb = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.ax, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !170
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #29
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #31
  unreachable

_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, %i.av
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i
  store ptr %.08.lcssa.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !159
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZSt9__advanceIPKN6casadi6MatrixINS0_6SXElemEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.g
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.an ; 2 uses
  %i.bl = icmp sgt i64 %i.an, 0
  br i1 %i.bl, label %.lr.ph.preheader.i.i.i.i.i18, label %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit23

.lr.ph.preheader.i.i.i.i.i18:                     ; preds = %_ZSt9__advanceIPKN6casadi6MatrixINS0_6SXElemEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bm = udiv exact i64 %i.an, 40
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19, %.lr.ph.preheader.i.i.i.i.i18
  %.012.i.i.i.i.i20 = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i19 ], [ %i.bm, %.lr.ph.preheader.i.i.i.i.i18 ] ; 2 uses
  %.0811.i.i.i.i.i21 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i19 ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i18 ] ; 2 uses
  %.0910.i.i.i.i.i22 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i19 ], [ %1, %.lr.ph.preheader.i.i.i.i.i18 ] ; 2 uses
  %i.bn = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6casadi6MatrixINS_6SXElemEEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %.0811.i.i.i.i.i21, ptr noundef nonnull align 8 dereferenceable(40) %.0910.i.i.i.i.i22) ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21, i64 40
  %i.bq = add nsw i64 %.012.i.i.i.i.i20, -1
  %i.br = icmp samesign ugt i64 %.012.i.i.i.i.i20, 1
  br i1 %i.br, label %.lr.ph.i.i.i.i.i19, label %_ZSt4copyIPKN6casadi6MatrixINS0_6SXElemEEEPS3_ET0_T_S8_S7_.exit23.loopexit, !llvm.loop !20
end_hunk_7
