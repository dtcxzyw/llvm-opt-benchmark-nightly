inline.NumInlined: 765
inline.NumDeleted: 419
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmmm:.peel.begin
.loopexit.split-lp674:                            ; preds = %bb.b, %.noexc362.peel
  %lpad.loopexit.split-lp676 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit678:                                     ; preds = %bb.ae
  %lpad.loopexit680 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp679:                            ; preds = %bb.c
  %lpad.loopexit.split-lp681 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit683:                                     ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEaSEOS2_.exit.i
  %lpad.loopexit685 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp684:                            ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEaSEOS2_.exit.i.peel
  %lpad.loopexit.split-lp686 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp684, %.loopexit683
  %lpad.phi687 = phi { ptr, i32 } [ %lpad.loopexit685, %.loopexit683 ], [ %lpad.loopexit.split-lp686, %.loopexit.split-lp684 ]
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #17
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #17
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit678, %.loopexit.split-lp679, %bb.bc
  %.pn354 = phi { ptr, i32 } [ %lpad.phi687, %bb.bc ], [ %lpad.loopexit680, %.loopexit678 ], [ %lpad.loopexit.split-lp681, %.loopexit.split-lp679 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %.body

.loopexit667:                                     ; preds = %bb.aa, %.peel.begin
  %.0261494.lcssa658 = phi ptr [ %2, %.peel.begin ], [ %9, %bb.aa ] ; 2 uses
  %.0263493.lcssa650 = phi ptr [ %0, %.peel.begin ], [ %.0263493, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.eh = getelementptr inbounds nuw i8, ptr %.0263493.lcssa650, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %bb.be unwind label %bb.bi

bb.be:                                            ; preds = %.loopexit667
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %12, ptr noundef nonnull %13, i64 noundef 2048)
          to label %bb.bf unwind label %bb.bj

bb.bf:                                            ; preds = %bb.be
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #17
  %i.ei = getelementptr inbounds nuw i8, ptr %.0263493.lcssa650, i64 72
  %i.ej = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !46 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !56
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !56
  invoke void @_ZN6duckdb16VectorOperations16GenerateSequenceERNS_6VectorEmRKNS_15SelectionVectorEll(ptr noundef nonnull align 8 dereferenceable(104) %12, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %.0261494.lcssa658, i64 noundef %i.em, i64 noundef %i.eo)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.ep = sub i64 %3, %4
  invoke void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmmm(ptr noundef nonnull align 8 dereferenceable(104) %12, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %.0261494.lcssa658, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %i.ep)
          to label %_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm.exit unwind label %bb.bk, !inline_history !57

_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm.exit: ; preds = %bb.bh
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.fk

bb.bi:                                            ; preds = %.loopexit667
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bj:                                            ; preds = %bb.be
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #17
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bh, %bb.bf, %bb.bg
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %12) #17
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.pn352 = phi { ptr, i32 } [ %i.es, %bb.bk ], [ %i.er, %bb.bj ], [ %i.eq, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %.body

.loopexit668:                                     ; preds = %bb.aa, %.peel.begin
  %.0263493.lcssa651 = phi ptr [ %0, %.peel.begin ], [ %.0263493, %bb.aa ]
  %i.et = invoke noundef ptr @_ZN6duckdb14ConstantVector19ZeroSelectionVectorEmRNS_15SelectionVectorE(i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %.loopexit607 unwind label %bb.ab

.loopexit666:                                     ; preds = %bb.aa, %.peel.begin
  %i.eu = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bm unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bm:                                            ; preds = %.loopexit666
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  invoke void @__cxa_throw(ptr nonnull %i.eu, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.fr unwind label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.loopexit666
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.0308 = phi i1 [ false, %bb.bn ], [ true, %bb.bm ] ; 2 uses
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ex = load ptr, ptr %14, align 8, !tbaa !58   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bo
  call void @_ZdlPv(ptr noundef %i.ex) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br i1 %.0308, label %bb.bp, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br i1 %.0308, label %bb.bp, label %.body

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn358431 = phi { ptr, i32 } [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.eu) #17
  br label %.body

bb.bq:                                            ; preds = %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i369, %bb.ax, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.aa, !llvm.loop !61

.loopexit607:                                     ; preds = %.peel.begin, %.peel.begin, %bb.aa, %bb.aa, %.loopexit668
  %.0263493657 = phi ptr [ %.0263493.lcssa651, %.loopexit668 ], [ %0, %.peel.begin ], [ %0, %.peel.begin ], [ %.0263493, %bb.aa ], [ %.0263493, %bb.aa ] ; 29 uses
  %.1262.ph = phi ptr [ %i.et, %.loopexit668 ], [ %2, %.peel.begin ], [ %2, %.peel.begin ], [ %9, %bb.aa ], [ %9, %bb.aa ] ; 22 uses
  %i.fa = icmp eq i64 %6, 0
  br i1 %i.fa, label %bb.fk, label %bb.br

bb.br:                                            ; preds = %.loopexit607
  %i.fb = load i8, ptr %1, align 8, !tbaa !7      ; 3 uses
  %i.fc = icmp eq i64 %6, 1
  %i.fd = icmp eq i8 %i.fb, 2                     ; 2 uses
  %or.cond = and i1 %i.fc, %i.fd
  br i1 %or.cond, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 0)
          to label %bb.bu unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bu:                                            ; preds = %bb.bs, %bb.br
  %.0260 = phi i64 [ 0, %bb.bs ], [ %5, %bb.br ]  ; 27 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.fg = load i8, ptr %.0263493657, align 8, !tbaa !7
  switch i8 %i.fg, label %bb.cb [
    i8 2, label %bb.bw
    i8 0, label %bb.ca
    i8 1, label %bb.ch
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.fh = getelementptr inbounds nuw i8, ptr %.0263493657, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i, label %.lr.ph.split.us, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bw
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !56
  %i.fk = trunc i64 %i.fj to i1
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 64
  br i1 %i.fk, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %umax = call i64 @llvm.umax.i64(i64 %6, i64 1)
  %.pre559 = load ptr, ptr %i.ff, align 8, !tbaa !64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %bb.bw, %.lr.ph
  %i.fm = load ptr, ptr %i.ff, align 8, !tbaa !64 ; 4 uses
  %.not.i.i375.us = icmp eq ptr %i.fm, null
  br i1 %.not.i.i375.us, label %.loopexit467, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader

_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader: ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %6, 1
  %i.fn = icmp eq i64 %6, 1
  br i1 %i.fn, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.epil.preheader, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader.new

_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader.new: ; preds = %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader
  %unroll_iter = and i64 %6, -2
  br label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us

_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us: ; preds = %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader.new
  %.0310495.us = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader.new ], [ %i.gd, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us ] ; 3 uses
  %niter = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader.new ], [ %niter.next.1, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us ]
  %i.fo = add i64 %.0310495.us, %.0260            ; 2 uses
  %i.fp = lshr i64 %i.fo, 6
  %i.fq = and i64 %i.fo, 63
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fp ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !56
  %i.fu = or i64 %i.ft, %i.fr
  store i64 %i.fu, ptr %i.fs, align 8, !tbaa !56
  %i.fv = or disjoint i64 %.0310495.us, 1
  %i.fw = add i64 %i.fv, %.0260                   ; 2 uses
  %i.fx = lshr i64 %i.fw, 6
  %i.fy = and i64 %i.fw, 63
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fx ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !56
  %i.gc = or i64 %i.gb, %i.fz
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !56
  %i.gd = add nuw i64 %.0310495.us, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit467.loopexit.unr-lcssa, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us, !llvm.loop !65

bb.bx:                                            ; preds = %.noexc379, %bb.cl, %bb.bu, %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.thread, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.cj
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i
  %i.gf = phi ptr [ %i.gi, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i ], [ %.pre559, %.lr.ph.split.preheader ] ; 2 uses
  %.0310495 = phi i64 [ %i.gq, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i ], [ 0, %.lr.ph.split.preheader ] ; 2 uses
  %i.gg = add i64 %.0310495, %.0260               ; 2 uses
  %.not.i.i375 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i375, label %bb.by, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.by:                                            ; preds = %.lr.ph.split
  %i.gh = load i64, ptr %i.fl, align 8, !tbaa !66
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, i64 noundef %i.gh)
          to label %.noexc376 unwind label %bb.bz

.noexc376:                                        ; preds = %bb.by
  %.pre.i.i = load ptr, ptr %i.ff, align 8, !tbaa !64
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %.noexc376, %.lr.ph.split
  %i.gi = phi ptr [ %.pre.i.i, %.noexc376 ], [ %i.gf, %.lr.ph.split ] ; 2 uses
  %i.gj = lshr i64 %i.gg, 6
  %i.gk = and i64 %i.gg, 63
  %i.gl = shl nuw i64 1, %i.gk
  %i.gm = xor i64 %i.gl, -1
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gj ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !56
  %i.gp = and i64 %i.go, %i.gm
  store i64 %i.gp, ptr %i.gn, align 8, !tbaa !56
  %i.gq = add nuw i64 %.0310495, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gq, %umax
  br i1 %exitcond.not, label %.loopexit467, label %.lr.ph.split, !llvm.loop !65

bb.bz:                                            ; preds = %bb.by
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ca:                                            ; preds = %bb.bv
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0263493657)
          to label %bb.ch unwind label %bb.ci

bb.cb:                                            ; preds = %bb.bv
  %i.gs = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.cc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  invoke void @__cxa_throw(ptr nonnull %i.gs, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.cg unwind label %bb.ce

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.cb
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.0.i = phi i1 [ false, %bb.cd ], [ true, %bb.cc ] ; 2 uses
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gv = load ptr, ptr %7, align 8, !tbaa !58    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ce
  call void @_ZdlPv(ptr noundef %i.gv) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br i1 %.0.i, label %bb.cf, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br i1 %.0.i, label %bb.cf, label %.body

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn13.i = phi { ptr, i32 } [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.gs) #17
  br label %.body

bb.cg:                                            ; preds = %bb.cd
  unreachable

bb.ch:                                            ; preds = %bb.bv, %bb.ca
  %.08.i = getelementptr inbounds nuw i8, ptr %.0263493657, i64 40
  invoke void @_ZN6duckdb12ValidityMask7CopySelERKS0_RKNS_15SelectionVectorEmmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %.08.i, ptr noundef nonnull align 8 dereferenceable(24) %.1262.ph, i64 noundef %4, i64 noundef %.0260, i64 noundef %6)
          to label %.loopexit467 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ca, %bb.ch
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit467.loopexit.unr-lcssa:                  ; preds = %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit467, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.epil.preheader

_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.epil.preheader: ; preds = %.loopexit467.loopexit.unr-lcssa, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader
  %.0310495.us.epil.init = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader ], [ %i.gd, %.loopexit467.loopexit.unr-lcssa ]
  %lcmp.mod688 = trunc i64 %6 to i1
  call void @llvm.assume(i1 %lcmp.mod688)
  %i.gz = add i64 %.0310495.us.epil.init, %.0260  ; 2 uses
  %i.ha = lshr i64 %i.gz, 6
  %i.hb = and i64 %i.gz, 63
  %i.hc = shl nuw i64 1, %i.hb
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.ha ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !56
  %i.hf = or i64 %i.he, %i.hc
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !56
  br label %.loopexit467

.loopexit467:                                     ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.epil.preheader, %.loopexit467.loopexit.unr-lcssa, %.lr.ph.split.us, %bb.ch
  %i.hg = load i8, ptr %.0263493657, align 8, !tbaa !7
  %i.hh = icmp eq i8 %i.hg, 1
  br i1 %i.hh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.loopexit467
  invoke void @_ZN6duckdb10FSSTVector16DecompressVectorERKNS_6VectorERS1_mmmPKNS_15SelectionVectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0263493657, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0260, i64 noundef %6, ptr noundef %.1262.ph)
          to label %bb.fk unwind label %bb.bx

bb.ck:                                            ; preds = %.loopexit467
  %i.hi = getelementptr inbounds nuw i8, ptr %.0263493657, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.0263493657, i64 9 ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !67
  switch i8 %i.hk, label %bb.fd [
    i8 1, label %bb.cl
    i8 3, label %bb.cl
    i8 5, label %bb.cp
    i8 7, label %bb.cq
    i8 9, label %bb.cr
    i8 2, label %bb.cs
    i8 4, label %bb.ct
    i8 6, label %bb.cu
    i8 8, label %bb.cv
    i8 -52, label %bb.cw
    i8 -53, label %bb.cx
    i8 11, label %bb.cy
    i8 12, label %bb.cz
    i8 21, label %bb.da
    i8 -56, label %bb.db
    i8 24, label %bb.dj
    i8 29, label %bb.dt
    i8 23, label %bb.ee
  ]

bb.cl:                                            ; preds = %bb.ck, %bb.ck
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0263493657)
          to label %.noexc379 unwind label %bb.bx

.noexc379:                                        ; preds = %bb.cl
  %i.hl = getelementptr inbounds nuw i8, ptr %.0263493657, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !68 ; 3 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc380 unwind label %bb.bx

.noexc380:                                        ; preds = %.noexc379
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !68
  %i.hp = getelementptr i8, ptr %i.ho, i64 %.0260 ; 3 uses
  %xtraiter689 = and i64 %6, 1
  %i.hq = icmp eq i64 %6, 1
  br i1 %i.hq, label %.epil.preheader, label %.noexc380.new

.noexc380.new:                                    ; preds = %.noexc380
  %unroll_iter692 = and i64 %6, -2
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1, %.noexc380.new
  %.012.i = phi i64 [ 0, %.noexc380.new ], [ %i.ik, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1 ] ; 4 uses
  %niter693 = phi i64 [ 0, %.noexc380.new ], [ %niter693.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1 ]
  %i.hr = add i64 %.012.i, %4                     ; 2 uses
  %i.hs = load ptr, ptr %.1262.ph, align 8, !tbaa !50 ; 2 uses
  %.not.i.i378 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i378, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hr
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !3
  %i.hv = zext i32 %i.hu to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.cn, %bb.cm
  %i.hw = phi i64 [ %i.hv, %bb.cn ], [ %i.hr, %bb.cm ]
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !37
  %i.hz = getelementptr i8, ptr %i.hp, i64 %.012.i
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !37
  %i.ia = or disjoint i64 %.012.i, 1              ; 2 uses
  %i.ib = add i64 %i.ia, %4                       ; 2 uses
  %i.ic = load ptr, ptr %.1262.ph, align 8, !tbaa !50 ; 2 uses
  %.not.i.i378.1 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i378.1, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1, label %bb.co

bb.co:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.ib
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3
  %i.if = zext i32 %i.ie to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1: ; preds = %bb.co, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.ig = phi i64 [ %i.if, %bb.co ], [ %i.ib, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !37
  %i.ij = getelementptr i8, ptr %i.hp, i64 %i.ia
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !37
  %i.ik = add nuw i64 %.012.i, 2                  ; 2 uses
  %niter693.next.1 = add i64 %niter693, 2         ; 2 uses
  %niter693.ncmp.1 = icmp eq i64 %niter693.next.1, %unroll_iter692
  br i1 %niter693.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.loopexit.unr-lcssa, label %bb.cm, !llvm.loop !69

bb.cp:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIsEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0263493657, ptr noundef nonnull align 8 dereferenceable(24) %.1262.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0260, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %bb.bx

bb.cq:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIiEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0263493657, ptr noundef nonnull align 8 dereferenceable(24) %.1262.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0260, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %bb.bx

bb.cr:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIlEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0263493657, ptr noundef nonnull align 8 dereferenceable(24) %.1262.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0260, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %bb.bx

end_hunk_0
