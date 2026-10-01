Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/vector_copy?download=true
inline.NumInlined: 765
inline.NumDeleted: 419
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmmm:.peel.begin
  %.0271493.lcssa650 = phi ptr [ %0, %.peel.begin ], [ %.0271493, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.eh = getelementptr inbounds nuw i8, ptr %.0271493.lcssa650, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %bb.be unwind label %bb.bi

bb.be:                                            ; preds = %.loopexit667
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %12, ptr noundef nonnull %13, i64 noundef 2048)
          to label %bb.bf unwind label %bb.bj

bb.bf:                                            ; preds = %bb.be
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #17
  %i.ei = getelementptr inbounds nuw i8, ptr %.0271493.lcssa650, i64 72
  %i.ej = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !50 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !56
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !56
  invoke void @_ZN6duckdb16VectorOperations16GenerateSequenceERNS_6VectorEmRKNS_15SelectionVectorEll(ptr noundef nonnull align 8 dereferenceable(104) %12, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %.0269494.lcssa658, i64 noundef %i.em, i64 noundef %i.eo)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.ep = sub i64 %3, %4
  invoke void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmmm(ptr noundef nonnull align 8 dereferenceable(104) %12, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %.0269494.lcssa658, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %i.ep)
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
  %.0271493.lcssa651 = phi ptr [ %0, %.peel.begin ], [ %.0271493, %bb.aa ]
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
  %.0275 = phi i1 [ false, %bb.bn ], [ true, %bb.bm ] ; 2 uses
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ex = load ptr, ptr %14, align 8, !tbaa !60   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bo
  call void @_ZdlPv(ptr noundef %i.ex) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br i1 %.0275, label %bb.bp, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br i1 %.0275, label %bb.bp, label %.body

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn358431 = phi { ptr, i32 } [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.eu) #17
  br label %.body

bb.bq:                                            ; preds = %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i369, %bb.ax, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.aa, !llvm.loop !91

.loopexit607:                                     ; preds = %.peel.begin, %.peel.begin, %bb.aa, %bb.aa, %.loopexit668
  %.0271493657 = phi ptr [ %.0271493.lcssa651, %.loopexit668 ], [ %0, %.peel.begin ], [ %0, %.peel.begin ], [ %.0271493, %bb.aa ], [ %.0271493, %bb.aa ] ; 29 uses
  %.1270.ph = phi ptr [ %i.et, %.loopexit668 ], [ %2, %.peel.begin ], [ %2, %.peel.begin ], [ %9, %bb.aa ], [ %9, %bb.aa ] ; 22 uses
  %i.fa = icmp eq i64 %6, 0
  br i1 %i.fa, label %bb.fk, label %bb.br

bb.br:                                            ; preds = %.loopexit607
  %i.fb = load i8, ptr %1, align 8, !tbaa !34     ; 3 uses
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
  %.0265 = phi i64 [ 0, %bb.bs ], [ %5, %bb.br ]  ; 27 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.fg = load i8, ptr %.0271493657, align 8, !tbaa !34
  switch i8 %i.fg, label %bb.cb [
    i8 2, label %bb.bw
    i8 0, label %bb.ca
    i8 1, label %bb.ch
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.fh = getelementptr inbounds nuw i8, ptr %.0271493657, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !62 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i, label %.lr.ph.split.us, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bw
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !56
  %i.fk = trunc i64 %i.fj to i1
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 64
  br i1 %i.fk, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre559 = load ptr, ptr %i.ff, align 8, !tbaa !62
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %bb.bw, %.lr.ph
  %i.fm = load ptr, ptr %i.ff, align 8, !tbaa !62 ; 4 uses
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
  %.0274495.us = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader.new ], [ %i.gd, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us ] ; 3 uses
  %niter = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader.new ], [ %niter.next.1, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us ]
  %i.fo = add i64 %.0274495.us, %.0265            ; 2 uses
  %i.fp = lshr i64 %i.fo, 6
  %i.fq = and i64 %i.fo, 63
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fp ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !56
  %i.fu = or i64 %i.ft, %i.fr
  store i64 %i.fu, ptr %i.fs, align 8, !tbaa !56
  %i.fv = or disjoint i64 %.0274495.us, 1
  %i.fw = add i64 %i.fv, %.0265                   ; 2 uses
  %i.fx = lshr i64 %i.fw, 6
  %i.fy = and i64 %i.fw, 63
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fx ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !56
  %i.gc = or i64 %i.gb, %i.fz
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !56
  %i.gd = add nuw i64 %.0274495.us, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit467.loopexit.unr-lcssa, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us, !llvm.loop !92

bb.bx:                                            ; preds = %.noexc379, %bb.cl, %bb.bu, %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.thread, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.cj
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i
  %i.gf = phi ptr [ %i.gi, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i ], [ %.pre559, %.lr.ph.split.preheader ] ; 2 uses
  %.0274495 = phi i64 [ %i.gq, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i ], [ 0, %.lr.ph.split.preheader ] ; 2 uses
  %i.gg = add i64 %.0274495, %.0265               ; 2 uses
  %.not.i.i375 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i375, label %bb.by, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.by:                                            ; preds = %.lr.ph.split
  %i.gh = load i64, ptr %i.fl, align 8, !tbaa !63
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, i64 noundef %i.gh)
          to label %.noexc376 unwind label %bb.bz

.noexc376:                                        ; preds = %bb.by
  %.pre.i.i = load ptr, ptr %i.ff, align 8, !tbaa !62
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
  %i.gq = add nuw i64 %.0274495, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gq, %6
  br i1 %exitcond.not, label %.loopexit467, label %.lr.ph.split, !llvm.loop !92

bb.bz:                                            ; preds = %bb.by
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ca:                                            ; preds = %bb.bv
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657)
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
  %i.gv = load ptr, ptr %7, align 8, !tbaa !60    ; 2 uses
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
  %.08.i = getelementptr inbounds nuw i8, ptr %.0271493657, i64 40
  invoke void @_ZN6duckdb12ValidityMask7CopySelERKS0_RKNS_15SelectionVectorEmmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %.08.i, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %.loopexit467 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ca, %bb.ch
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit467.loopexit.unr-lcssa:                  ; preds = %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit467, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.epil.preheader

_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.epil.preheader: ; preds = %.loopexit467.loopexit.unr-lcssa, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader
  %.0274495.us.epil.init = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader ], [ %i.gd, %.loopexit467.loopexit.unr-lcssa ]
  %lcmp.mod688 = trunc i64 %6 to i1
  call void @llvm.assume(i1 %lcmp.mod688)
  %i.gz = add i64 %.0274495.us.epil.init, %.0265  ; 2 uses
  %i.ha = lshr i64 %i.gz, 6
  %i.hb = and i64 %i.gz, 63
  %i.hc = shl nuw i64 1, %i.hb
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.ha ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !56
  %i.hf = or i64 %i.he, %i.hc
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !56
  br label %.loopexit467

.loopexit467:                                     ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.epil.preheader, %.loopexit467.loopexit.unr-lcssa, %.lr.ph.split.us, %bb.ch
  %i.hg = load i8, ptr %.0271493657, align 8, !tbaa !34
  %i.hh = icmp eq i8 %i.hg, 1
  br i1 %i.hh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.loopexit467
  invoke void @_ZN6duckdb10FSSTVector16DecompressVectorERKNS_6VectorERS1_mmmPKNS_15SelectionVectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6, ptr noundef %.1270.ph)
          to label %bb.fk unwind label %bb.bx

bb.ck:                                            ; preds = %.loopexit467
  %i.hi = getelementptr inbounds nuw i8, ptr %.0271493657, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.0271493657, i64 9 ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !64
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
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657)
          to label %.noexc379 unwind label %bb.bx

.noexc379:                                        ; preds = %bb.cl
  %i.hl = getelementptr inbounds nuw i8, ptr %.0271493657, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !65 ; 3 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc380 unwind label %bb.bx

.noexc380:                                        ; preds = %.noexc379
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !65
  %i.hp = getelementptr i8, ptr %i.ho, i64 %.0265 ; 3 uses
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
  %i.hs = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i.i378 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i378, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hr
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !8
  %i.hv = zext i32 %i.hu to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.cn, %bb.cm
  %i.hw = phi i64 [ %i.hv, %bb.cn ], [ %i.hr, %bb.cm ]
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !39
  %i.hz = getelementptr i8, ptr %i.hp, i64 %.012.i
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !39
  %i.ia = or disjoint i64 %.012.i, 1              ; 2 uses
  %i.ib = add i64 %i.ia, %4                       ; 2 uses
  %i.ic = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i.i378.1 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i378.1, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1, label %bb.co

bb.co:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.ib
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !8
  %i.if = zext i32 %i.ie to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1: ; preds = %bb.co, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.ig = phi i64 [ %i.if, %bb.co ], [ %i.ib, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !39
  %i.ij = getelementptr i8, ptr %i.hp, i64 %i.ia
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !39
  %i.ik = add nuw i64 %.012.i, 2                  ; 2 uses
  %niter693.next.1 = add i64 %niter693, 2         ; 2 uses
  %niter693.ncmp.1 = icmp eq i64 %niter693.next.1, %unroll_iter692
  br i1 %niter693.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.loopexit.unr-lcssa, label %bb.cm, !llvm.loop !93

bb.cp:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIsEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %bb.bx

bb.cq:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIiEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %bb.bx

bb.cr:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIlEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %bb.bx

bb.cs:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIhEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %bb.bx

bb.ct:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyItEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %bb.bx

bb.cu:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIjEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %bb.bx

bb.cv:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyImEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %bb.bx

bb.cw:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyINS_9hugeint_tEEEvRKNS_6VectorERKNS_15SelectionVectorERS3_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %bb.bx

bb.cx:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyINS_10uhugeint_tEEEvRKNS_6VectorERKNS_15SelectionVectorERS3_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %bb.bx

bb.cy:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIfEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %bb.bx

bb.cz:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIdEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %bb.bx

bb.da:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyINS_10interval_tEEEvRKNS_6VectorERKNS_15SelectionVectorERS3_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %bb.bx

bb.db:                                            ; preds = %bb.ck
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657)
          to label %bb.dc unwind label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.il = getelementptr inbounds nuw i8, ptr %.0271493657, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !65
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.lr.ph523.preheader unwind label %bb.de

.lr.ph523.preheader:                              ; preds = %bb.dc
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !65
  %umax556 = call i64 @llvm.umax.i64(i64 %6, i64 1)
  br label %.lr.ph523

bb.dd:                                            ; preds = %bb.db
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.de:                                            ; preds = %bb.dc
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph523:                                        ; preds = %.lr.ph523.preheader, %bb.di
  %.0273522 = phi i64 [ %i.jl, %bb.di ], [ 0, %.lr.ph523.preheader ] ; 3 uses
  %i.ir = add i64 %.0273522, %4                   ; 2 uses
  %i.is = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i = icmp eq ptr %i.is, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.df

bb.df:                                            ; preds = %.lr.ph523
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.ir
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !8
  %i.iv = zext i32 %i.iu to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.df, %.lr.ph523
  %i.iw = phi i64 [ %i.iv, %bb.df ], [ %i.ir, %.lr.ph523 ]
  %i.ix = add i64 %.0273522, %.0265               ; 3 uses
  %i.iy = load ptr, ptr %i.ff, align 8, !tbaa !62 ; 2 uses
  %.not.i383 = icmp eq ptr %i.iy, null
  br i1 %.not.i383, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.iz = lshr i64 %i.ix, 6
  %i.ja = and i64 %i.ix, 63
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.iz
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !56
  %i.jd = shl nuw i64 1, %i.ja
  %i.je = and i64 %i.jc, %i.jd
  %.not460 = icmp eq i64 %i.je, 0
  br i1 %.not460, label %bb.di, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.im, i64 %i.iw ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.jf, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !39
  %i.jg = invoke { i64, ptr } @_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorENS_8string_tE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
          to label %bb.dg unwind label %bb.dh     ; 2 uses

bb.dg:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.jh = extractvalue { i64, ptr } %i.jg, 0
  %i.ji = extractvalue { i64, ptr } %i.jg, 1
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %i.ix ; 2 uses
  store i64 %i.jh, ptr %i.jj, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr %i.ji, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !39
  br label %bb.di

bb.dh:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.di:                                            ; preds = %bb.dg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.jl = add nuw i64 %.0273522, 1                ; 2 uses
  %exitcond557.not = icmp eq i64 %i.jl, %umax556
  br i1 %exitcond557.not, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit, label %.lr.ph523, !llvm.loop !94

bb.dj:                                            ; preds = %bb.ck
  %i.jm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657)
          to label %bb.dk unwind label %bb.dl     ; 4 uses

bb.dk:                                            ; preds = %bb.dj
  %i.jn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.preheader unwind label %bb.dm

.preheader:                                       ; preds = %bb.dk
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !68
  %i.jq = load ptr, ptr %i.jm, align 8, !tbaa !69
  %.not526 = icmp eq ptr %i.jp, %i.jq
  br i1 %.not526, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit, label %.lr.ph521

bb.dl:                                            ; preds = %bb.dj
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dm:                                            ; preds = %bb.dk
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph521:                                        ; preds = %.preheader, %bb.dr
  %.0268520 = phi i64 [ %i.jx, %bb.dr ], [ 0, %.preheader ] ; 3 uses
  %i.jt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jm, i64 noundef %.0268520)
          to label %bb.dn unwind label %bb.ds

bb.dn:                                            ; preds = %.lr.ph521
  %i.ju = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jt)
          to label %bb.do unwind label %bb.ds

bb.do:                                            ; preds = %bb.dn
  %i.jv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jn, i64 noundef %.0268520)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.jw = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jv)
          to label %bb.dq unwind label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmmm(ptr noundef nonnull align 8 dereferenceable(104) %i.ju, ptr noundef nonnull align 8 dereferenceable(104) %i.jw, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %bb.dr unwind label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.jx = add nuw i64 %.0268520, 1                ; 2 uses
  %i.jy = load ptr, ptr %i.jo, align 8, !tbaa !68
  %i.jz = load ptr, ptr %i.jm, align 8, !tbaa !69
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = ashr exact i64 %i.kc, 3
  %i.ke = icmp ult i64 %i.jx, %i.kd
  br i1 %i.ke, label %.lr.ph521, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit, !llvm.loop !95

bb.ds:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dn, %.lr.ph521
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dt:                                            ; preds = %bb.ck
  %i.kg = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb11ArrayVector8GetEntryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657)
          to label %bb.du unwind label %bb.dy

bb.du:                                            ; preds = %bb.dt
  %i.kh = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.dv unwind label %bb.dz

bb.dv:                                            ; preds = %bb.du
  %i.ki = invoke noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.hi)
          to label %bb.dw unwind label %bb.ea     ; 10 uses

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.kj = mul i64 %i.ki, %3                       ; 3 uses
  invoke void @_ZN6duckdb15SelectionVectorC2Em(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %i.kj)
          to label %.lr.ph518 unwind label %bb.eb

.lr.ph518:                                        ; preds = %bb.dw
  %i.kk = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i387 = icmp eq ptr %i.kk, null
  %.not525 = icmp eq i64 %i.ki, 0
  %i.kl = mul i64 %i.ki, %4                       ; 3 uses
  %i.km = load ptr, ptr %16, align 8
  %i.kn = getelementptr [4 x i8], ptr %i.km, i64 %i.kl
  br i1 %.not525, label %._crit_edge519, label %.lr.ph518.split.us.preheader

.lr.ph518.split.us.preheader:                     ; preds = %.lr.ph518
  %umax554 = call i64 @llvm.umax.i64(i64 %6, i64 1)
  %min.iters.check = icmp ult i64 %i.ki, 8
  %n.vec = and i64 %i.ki, -8                      ; 3 uses
  %cmp.n = icmp eq i64 %i.ki, %n.vec
  br label %.lr.ph518.split.us

.lr.ph518.split.us:                               ; preds = %.lr.ph518.split.us.preheader, %._crit_edge516.us
  %.0267517.us = phi i64 [ %i.lg, %._crit_edge516.us ], [ 0, %.lr.ph518.split.us.preheader ] ; 3 uses
  %i.ko = add i64 %.0267517.us, %4                ; 2 uses
  br i1 %.not.i387, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit388.us, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph518.split.us
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !8
  %i.kr = zext i32 %i.kq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit388.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit388.us: ; preds = %bb.dx, %.lr.ph518.split.us
  %i.ks = phi i64 [ %i.kr, %bb.dx ], [ %i.ko, %.lr.ph518.split.us ]
  %i.kt = mul i64 %.0267517.us, %i.ki
  %i.ku = mul i64 %i.ks, %i.ki                    ; 2 uses
  %i.kv = getelementptr [4 x i8], ptr %i.kn, i64 %i.kt ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit388.us
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ku, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i64> splat (i64 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.kw = add <4 x i64> %vec.ind, %broadcast.splat
  %.reass = add <4 x i64> %vec.ind, %invariant.op
  %i.kx = trunc <4 x i64> %i.kw to <4 x i32>
  %i.ky = trunc <4 x i64> %.reass to <4 x i32>
  %i.kz = getelementptr [4 x i8], ptr %i.kv, i64 %index ; 2 uses
  %i.la = getelementptr i8, ptr %i.kz, i64 16
  store <4 x i32> %i.kx, ptr %i.kz, align 4, !tbaa !8
  store <4 x i32> %i.ky, ptr %i.la, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.lb = icmp eq i64 %index.next, %n.vec
  br i1 %i.lb, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge516.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit388.us, %middle.block
  %.0266514.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit388.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0266514.us = phi i64 [ %i.lf, %scalar.ph ], [ %.0266514.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.lc = add i64 %.0266514.us, %i.ku
  %i.ld = trunc i64 %i.lc to i32
  %i.le = getelementptr [4 x i8], ptr %i.kv, i64 %.0266514.us
  store i32 %i.ld, ptr %i.le, align 4, !tbaa !8
  %i.lf = add nuw i64 %.0266514.us, 1             ; 2 uses
  %exitcond553.not = icmp eq i64 %i.lf, %i.ki
  br i1 %exitcond553.not, label %._crit_edge516.us, label %scalar.ph, !llvm.loop !97

._crit_edge516.us:                                ; preds = %scalar.ph, %middle.block
  %i.lg = add nuw i64 %.0267517.us, 1             ; 2 uses
  %exitcond555.not = icmp eq i64 %i.lg, %umax554
  br i1 %exitcond555.not, label %._crit_edge519, label %.lr.ph518.split.us, !llvm.loop !98

._crit_edge519:                                   ; preds = %._crit_edge516.us, %.lr.ph518
  %i.lh = mul i64 %i.ki, %.0265
  %i.li = sub i64 %i.kj, %i.kl
  invoke void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmmm(ptr noundef nonnull align 8 dereferenceable(104) %i.kg, ptr noundef nonnull align 8 dereferenceable(104) %i.kh, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %i.kj, i64 noundef %i.kl, i64 noundef %i.lh, i64 noundef %i.li)
          to label %_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm.exit386 unwind label %bb.ec, !inline_history !57

bb.dy:                                            ; preds = %bb.dt
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dz:                                            ; preds = %bb.du
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ea:                                            ; preds = %bb.dv
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.eb:                                            ; preds = %bb.dw
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm.exit386: ; preds = %._crit_edge519
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit

bb.ec:                                            ; preds = %._crit_edge519
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #17
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.pn330.pn.pn = phi { ptr, i32 } [ %i.ln, %bb.ec ], [ %i.lm, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %.body

bb.ee:                                            ; preds = %bb.ck
  %i.lo = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657)
          to label %bb.ef unwind label %bb.ej     ; 2 uses

bb.ef:                                            ; preds = %bb.ee
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271493657)
          to label %bb.eg unwind label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  %i.lp = getelementptr inbounds nuw i8, ptr %.0271493657, i64 32
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !65 ; 3 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.eh unwind label %bb.el

bb.eh:                                            ; preds = %bb.eg
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !65 ; 2 uses
  br i1 %i.fd, label %bb.ei, label %.lr.ph507.preheader

.lr.ph507.preheader:                              ; preds = %bb.eh
  %umax549 = call i64 @llvm.umax.i64(i64 %6, i64 1)
  br label %.lr.ph507

bb.ei:                                            ; preds = %bb.eh
  %i.lt = load ptr, ptr %i.ff, align 8, !tbaa !62 ; 2 uses
  %.not.i391 = icmp eq ptr %i.lt, null
  br i1 %.not.i391, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393: ; preds = %bb.ei
  %i.lu = lshr i64 %.0265, 6
  %i.lv = and i64 %.0265, 63
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.lu
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !56
  %i.ly = shl nuw i64 1, %i.lv
  %i.lz = and i64 %i.lx, %i.ly
  %.not459 = icmp eq i64 %i.lz, 0
  br i1 %.not459, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393.thread

bb.ej:                                            ; preds = %bb.ee
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ek:                                            ; preds = %bb.ef
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.el:                                            ; preds = %bb.eg
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393.thread: ; preds = %bb.ei, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393
  %i.md = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i394 = icmp eq ptr %i.md, null
  br i1 %.not.i394, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit395, label %bb.em

bb.em:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393.thread
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !8
  %i.mg = zext i32 %i.mf to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit395

_ZNK6duckdb15SelectionVector9get_indexEm.exit395: ; preds = %bb.em, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393.thread
  %i.mh = phi i64 [ %i.mg, %bb.em ], [ %4, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393.thread ]
  %i.mi = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %i.mh ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 2 uses
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !105
  %i.ml = load i64, ptr %i.mi, align 8, !tbaa !106
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef 0)
          to label %bb.en unwind label %bb.ep

bb.en:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit395
  %i.mm = add i64 %i.ml, %i.mk
  %i.mn = load i64, ptr %i.mi, align 8, !tbaa !106
  invoke void @_ZN6duckdb10ListVector6AppendERNS_6VectorERKS1_mm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %i.lo, i64 noundef %i.mm, i64 noundef %i.mn)
          to label %bb.eo unwind label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %i.ls, i64 %.0265 ; 2 uses
  %i.mp = load i64, ptr %i.mj, align 8, !tbaa !105
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store i64 %i.mp, ptr %i.mq, align 8, !tbaa !105
  store i64 0, ptr %i.mo, align 8, !tbaa !106
  br label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.thread

bb.ep:                                            ; preds = %bb.en, %_ZNK6duckdb15SelectionVector9get_indexEm.exit395
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph507:                                        ; preds = %.lr.ph507.preheader, %.loopexit
  %.0264506 = phi i64 [ %i.of, %.loopexit ], [ 0, %.lr.ph507.preheader ] ; 3 uses
  %.sroa.14.0505 = phi ptr [ %.sroa.14.2, %.loopexit ], [ null, %.lr.ph507.preheader ] ; 3 uses
  %.sroa.10.0504 = phi ptr [ %.sroa.10.2, %.loopexit ], [ null, %.lr.ph507.preheader ] ; 3 uses
  %.sroa.0.0503 = phi ptr [ %.sroa.0.2, %.loopexit ], [ null, %.lr.ph507.preheader ] ; 3 uses
  %i.ms = load ptr, ptr %i.ff, align 8, !tbaa !62 ; 2 uses
  %.not.i396 = icmp eq ptr %i.ms, null
  br i1 %.not.i396, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398: ; preds = %.lr.ph507
  %i.mt = add i64 %.0264506, %.0265               ; 2 uses
  %i.mu = lshr i64 %i.mt, 6
  %i.mv = and i64 %i.mt, 63
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.mu
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !56
  %i.my = shl nuw i64 1, %i.mv
  %i.mz = and i64 %i.mx, %i.my
  %.not458 = icmp eq i64 %i.mz, 0
  br i1 %.not458, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398.thread: ; preds = %.lr.ph507, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398
  %i.na = add i64 %.0264506, %4                   ; 2 uses
  %i.nb = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i399 = icmp eq ptr %i.nb, null
  br i1 %.not.i399, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit400, label %bb.eq

bb.eq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398.thread
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.na
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !8
  %i.ne = zext i32 %i.nd to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit400

_ZNK6duckdb15SelectionVector9get_indexEm.exit400: ; preds = %bb.eq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398.thread
  %i.nf = phi i64 [ %i.ne, %bb.eq ], [ %i.na, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398.thread ]
  %i.ng = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %i.nf ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8 ; 2 uses
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !105 ; 2 uses
  %.not524 = icmp eq i64 %i.ni, 0
  br i1 %.not524, label %.loopexit, label %.lr.ph500

.lr.ph500:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit400, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit
  %i.nj = phi i64 [ %i.oc, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ], [ %i.ni, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ]
  %.0263499 = phi i64 [ %i.od, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ] ; 2 uses
  %.sroa.14.1498 = phi ptr [ %.sroa.14.3, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ], [ %.sroa.14.0505, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ] ; 3 uses
  %.sroa.10.1497 = phi ptr [ %.sroa.10.3, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ], [ %.sroa.10.0504, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ] ; 3 uses
  %.sroa.0.1496 = phi ptr [ %.sroa.0.4, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ], [ %.sroa.0.0503, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ] ; 7 uses
  %i.nk = load i64, ptr %i.ng, align 8, !tbaa !106
  %i.nl = add i64 %i.nk, %.0263499                ; 2 uses
  %.not.i401 = icmp eq ptr %.sroa.10.1497, %.sroa.14.1498
  br i1 %.not.i401, label %bb.es, label %bb.er

bb.er:                                            ; preds = %.lr.ph500
  %i.nm = trunc i64 %i.nl to i32
  store i32 %i.nm, ptr %.sroa.10.1497, align 4, !tbaa !8
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit

bb.es:                                            ; preds = %.lr.ph500
  %i.nn = ptrtoint ptr %.sroa.14.1498 to i64
  %i.no = ptrtoint ptr %.sroa.0.1496 to i64
  %i.np = sub i64 %i.nn, %i.no                    ; 5 uses
  %i.nq = icmp eq i64 %i.np, 9223372036854775804
  br i1 %i.nq, label %bb.et, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.et:                                            ; preds = %bb.es
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
          to label %.noexc403 unwind label %.loopexit.split-lp

.noexc403:                                        ; preds = %bb.et
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.es
  %i.nr = ashr exact i64 %i.np, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.nr, i64 1)
  %i.ns = add nsw i64 %.sroa.speculated.i.i.i, %i.nr ; 2 uses
  %i.nt = icmp ult i64 %i.ns, %i.nr
  %i.nu = call i64 @llvm.umin.i64(i64 %i.ns, i64 2305843009213693951)
  %i.nv = select i1 %i.nt, i64 2305843009213693951, i64 %i.nu ; 3 uses
  %.not.i.i.i402 = icmp ne i64 %i.nv, 0
  call void @llvm.assume(i1 %.not.i.i.i402)
  %i.nw = shl nuw nsw i64 %i.nv, 2
  %i.nx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nw) #20
          to label %.noexc404 unwind label %.loopexit465 ; 4 uses

.noexc404:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 %i.np ; 2 uses
  %i.nz = trunc i64 %i.nl to i32
  store i32 %i.nz, ptr %i.ny, align 4, !tbaa !8
  %i.oa = icmp sgt i64 %i.np, 0
  br i1 %i.oa, label %bb.eu, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.eu:                                            ; preds = %.noexc404
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nx, ptr align 4 %.sroa.0.1496, i64 %i.np, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.eu, %.noexc404
  %.not.i17.i.i = icmp eq ptr %.sroa.0.1496, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.1496) #19
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.ev, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.nv
  %.pre560 = load i64, ptr %i.nh, align 8, !tbaa !105
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit

_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.er
  %i.oc = phi i64 [ %.pre560, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.nj, %bb.er ] ; 2 uses
  %.sroa.0.4 = phi ptr [ %i.nx, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0.1496, %bb.er ] ; 2 uses
  %.pn = phi ptr [ %i.ny, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.10.1497, %bb.er ]
  %.sroa.14.3 = phi ptr [ %i.ob, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.14.1498, %bb.er ] ; 2 uses
  %.sroa.10.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.od = add nuw i64 %.0263499, 1                ; 2 uses
  %i.oe = icmp ult i64 %i.od, %i.oc
  br i1 %i.oe, label %.lr.ph500, label %.loopexit, !llvm.loop !99

.loopexit465:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

.loopexit.split-lp:                               ; preds = %bb.et
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

.loopexit:                                        ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398
  %.sroa.0.2 = phi ptr [ %.sroa.0.0503, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398 ], [ %.sroa.0.0503, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ], [ %.sroa.0.4, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ] ; 6 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0504, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398 ], [ %.sroa.10.0504, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ], [ %.sroa.10.3, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ] ; 2 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.0505, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398 ], [ %.sroa.14.0505, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ], [ %.sroa.14.3, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ]
  %i.of = add nuw i64 %.0264506, 1                ; 2 uses
  %exitcond550.not = icmp eq i64 %i.of, %umax549
  br i1 %exitcond550.not, label %._crit_edge, label %.lr.ph507, !llvm.loop !100

._crit_edge:                                      ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.og = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.og, i8 0, i64 16, i1 false)
  store ptr %.sroa.0.2, ptr %17, align 8, !tbaa !55
  %i.oh = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.ew unwind label %bb.ey

bb.ew:                                            ; preds = %._crit_edge
  %i.oi = ptrtoint ptr %.sroa.10.2 to i64
  %i.oj = ptrtoint ptr %.sroa.0.2 to i64
  %i.ok = sub i64 %i.oi, %i.oj
  %i.ol = ashr exact i64 %i.ok, 2
  invoke void @_ZN6duckdb10ListVector6AppendERNS_6VectorERKS1_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %i.lo, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %i.ol, i64 noundef 0)
          to label %.lr.ph512 unwind label %bb.ey

.lr.ph512:                                        ; preds = %bb.ew
  %i.om = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i406 = icmp eq ptr %i.om, null
  %i.on = load ptr, ptr %i.ff, align 8, !tbaa !62 ; 2 uses
  %.not.i408 = icmp eq ptr %i.on, null
  %umax551 = call i64 @llvm.umax.i64(i64 %6, i64 1)
  br label %bb.ez

._crit_edge513:                                   ; preds = %bb.fb
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %.not.i.i.i405 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i405, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit, label %bb.ex

bb.ex:                                            ; preds = %._crit_edge513
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.2) #19
  br label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit

bb.ey:                                            ; preds = %bb.ew, %._crit_edge
  %i.oo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.fc

bb.ez:                                            ; preds = %.lr.ph512, %bb.fb
  %.0260511 = phi i64 [ 0, %.lr.ph512 ], [ %i.ph, %bb.fb ] ; 3 uses
  %.0261510 = phi i64 [ %i.oh, %.lr.ph512 ], [ %.1262, %bb.fb ] ; 3 uses
  %i.op = add i64 %.0260511, %4                   ; 2 uses
  br i1 %.not.i406, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit407, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !8
  %i.os = zext i32 %i.or to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit407

_ZNK6duckdb15SelectionVector9get_indexEm.exit407: ; preds = %bb.fa, %bb.ez
  %i.ot = phi i64 [ %i.os, %bb.fa ], [ %i.op, %bb.ez ]
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %i.ot
  %i.ov = add i64 %.0260511, %.0265               ; 3 uses
  %i.ow = getelementptr inbounds nuw [16 x i8], ptr %i.ls, i64 %i.ov ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !105 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store i64 %i.oy, ptr %i.oz, align 8, !tbaa !105
  store i64 %.0261510, ptr %i.ow, align 8, !tbaa !106
  br i1 %.not.i408, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit407
  %i.pa = lshr i64 %i.ov, 6
  %i.pb = and i64 %i.ov, 63
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.pa
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !56
  %i.pe = shl nuw i64 1, %i.pb
  %i.pf = and i64 %i.pd, %i.pe
  %.not457 = icmp eq i64 %i.pf, 0
  br i1 %.not457, label %bb.fb, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit407, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410
  %i.pg = add i64 %i.oy, %.0261510
  br label %bb.fb

bb.fb:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410
  %.1262 = phi i64 [ %i.pg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410.thread ], [ %.0261510, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410 ]
  %i.ph = add nuw i64 %.0260511, 1                ; 2 uses
  %exitcond552.not = icmp eq i64 %i.ph, %umax551
  br i1 %exitcond552.not, label %._crit_edge513, label %bb.ez, !llvm.loop !101

bb.fc:                                            ; preds = %.loopexit465, %.loopexit.split-lp, %bb.ey
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %bb.ey ], [ %.sroa.0.1496, %.loopexit465 ], [ %.sroa.0.1496, %.loopexit.split-lp ] ; 2 uses
  %.pn321.pn.pn = phi { ptr, i32 } [ %i.oo, %bb.ey ], [ %lpad.loopexit, %.loopexit465 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i411 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i.i411, label %.body, label %.thread

.thread:                                          ; preds = %bb.fc
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.3) #19
  br label %.body

bb.fd:                                            ; preds = %bb.ck
  %i.pi = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.fe unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.thread

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.pj = load i8, ptr %i.hj, align 1, !tbaa !64
  invoke void @_ZN6duckdb14TypeIdToStringB5cxx11ENS_12PhysicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, i8 noundef zeroext %i.pj)
          to label %bb.ff unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.thread

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.pi, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.fg unwind label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  invoke void @__cxa_throw(ptr nonnull %i.pi, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.fr unwind label %bb.fh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.thread: ; preds = %bb.fd
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.0 = phi i1 [ false, %bb.fg ], [ true, %bb.ff ] ; 2 uses
  %i.pl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pm = load ptr, ptr %20, align 8, !tbaa !60   ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413: ; preds = %bb.fh
  call void @_ZdlPv(ptr noundef %i.pm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  %i.pp = load ptr, ptr %18, align 8, !tbaa !60   ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.pr = icmp eq ptr %i.pp, %i.pq
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.thread: ; preds = %bb.fe
  %i.ps = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  %i.pt = load ptr, ptr %18, align 8, !tbaa !60   ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.pv = icmp eq ptr %i.pt, %i.pu
  br i1 %i.pv, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.thread
  call void @_ZdlPv(ptr noundef %i.pt) #19
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  call void @_ZdlPv(ptr noundef %i.pp) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br i1 %.0, label %bb.fi, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br i1 %.0, label %bb.fi, label %.body

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416.thread
  %.pn345.pn444.ph = phi { ptr, i32 } [ %i.ps, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416.thread ], [ %i.pk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.thread ], [ %i.ps, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.fi

bb.fi:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418
  %.pn345.pn444 = phi { ptr, i32 } [ %i.pl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416 ], [ %i.pl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418 ], [ %.pn345.pn444.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.pi) #17
  br label %.body

_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.loopexit.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1
  %lcmp.mod690.not = icmp eq i64 %xtraiter689, 0
  br i1 %lcmp.mod690.not, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.loopexit.unr-lcssa, %.noexc380
  %.012.i.epil.init = phi i64 [ 0, %.noexc380 ], [ %i.ik, %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod691 = trunc i64 %6 to i1
  call void @llvm.assume(i1 %lcmp.mod691)
  %i.pw = add i64 %.012.i.epil.init, %4           ; 2 uses
  %i.px = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i.i378.epil = icmp eq ptr %i.px, null
  br i1 %.not.i.i378.epil, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil, label %bb.fj

bb.fj:                                            ; preds = %.epil.preheader
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %i.pw
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !8
  %i.qa = zext i32 %i.pz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil: ; preds = %bb.fj, %.epil.preheader
  %i.qb = phi i64 [ %i.qa, %bb.fj ], [ %i.pw, %.epil.preheader ]
  %i.qc = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.qb
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !39
  %i.qe = getelementptr i8, ptr %i.hp, i64 %.012.i.epil.init
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !39
  br label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit

_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit: ; preds = %bb.dr, %bb.di, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil, %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.loopexit.unr-lcssa, %.preheader, %bb.ex, %._crit_edge513, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm.exit386
  %.not = icmp eq i8 %i.fb, 0
  br i1 %.not, label %bb.fk, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.thread

_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.thread: ; preds = %bb.eo, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393, %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext %i.fb)
          to label %bb.fk unwind label %bb.bx

bb.fk:                                            ; preds = %bb.cj, %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.thread, %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit, %.loopexit607, %_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm.exit
  %i.qf = load ptr, ptr %i.d, align 8, !tbaa !38  ; 8 uses
  %.not.i.i.i.i419 = icmp eq ptr %i.qf, null
  br i1 %.not.i.i.i.i419, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8 ; 4 uses
  %i.qh = load atomic i64, ptr %i.qg acquire, align 8 ; 2 uses
  %i.qi = icmp eq i64 %i.qh, 4294967297
  %i.qj = trunc i64 %i.qh to i32                  ; 2 uses
  br i1 %i.qi, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  store i32 0, ptr %i.qg, align 8, !tbaa !43
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qf, i64 12
  store i32 0, ptr %i.qk, align 4, !tbaa !44
  %i.ql = load ptr, ptr %i.qf, align 8, !tbaa !46
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qn = load ptr, ptr %i.qm, align 8
  call void %i.qn(ptr noundef nonnull align 8 dereferenceable(16) %i.qf) #17, !inline_history !102
  %i.qo = load ptr, ptr %i.qf, align 8, !tbaa !46
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  %i.qq = load ptr, ptr %i.qp, align 8
  call void %i.qq(ptr noundef nonnull align 8 dereferenceable(16) %i.qf) #17, !inline_history !102
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.fn:                                            ; preds = %bb.fl
  %i.qr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i.i420 = icmp eq i8 %i.qr, 0
  br i1 %.not.i.i.i.i.i420, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.qs = add nsw i32 %i.qj, -1
  store i32 %i.qs, ptr %i.qg, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.fp:                                            ; preds = %bb.fn
  %i.qt = atomicrmw volatile add ptr %i.qg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.fp, %bb.fo
  %.0.i.i.i.i.i.i = phi i32 [ %i.qj, %bb.fo ], [ %i.qt, %bb.fp ]
  %i.qu = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.qu, label %bb.fq, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !41

bb.fq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qf) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.fk, %bb.fm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret void

.body:                                            ; preds = %.loopexit673.a, %.loopexit.split-lp674.a, %.loopexit669, %.loopexit.split-lp670, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416, %.thread, %bb.fc, %bb.ci, %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bt, %bb.ej, %bb.el, %bb.ep, %bb.ek, %bb.dy, %bb.ea, %bb.ed, %bb.dz, %bb.dl, %bb.ds, %bb.dm, %bb.dd, %bb.dh, %bb.de, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, %bb.fi, %bb.bx, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bp, %bb.bl, %bb.ab
  %.pn358.pn = phi { ptr, i32 } [ %.pn358431, %bb.bp ], [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.loopexit.split-lp672, %.loopexit.split-lp670 ], [ %.pn352, %bb.bl ], [ %i.bt, %bb.ab ], [ %i.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn354, %bb.bd ], [ %i.fe, %bb.bt ], [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ge, %bb.bx ], [ %.pn345.pn444, %bb.fi ], [ %i.pl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418 ], [ %i.pl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416 ], [ %.pn321.pn.pn, %bb.fc ], [ %i.js, %bb.dm ], [ %i.ll, %bb.ea ], [ %i.gr, %bb.bz ], [ %i.ip, %bb.dd ], [ %i.iq, %bb.de ], [ %.pn321.pn.pn, %.thread ], [ %i.jk, %bb.dh ], [ %i.jr, %bb.dl ], [ %i.kf, %bb.ds ], [ %i.lj, %bb.dy ], [ %i.lk, %bb.dz ], [ %.pn330.pn.pn, %bb.ed ], [ %i.ma, %bb.ej ], [ %i.mb, %bb.ek ], [ %i.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.mc, %bb.el ], [ %i.mr, %bb.ep ], [ %.pn13.i, %bb.cf ], [ %i.gy, %bb.ci ], [ %lpad.loopexit671, %.loopexit669 ], [ %lpad.loopexit675.a, %.loopexit673.a ], [ %lpad.loopexit.split-lp676.a, %.loopexit.split-lp674.a ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  resume { ptr, i32 } %.pn358.pn

bb.fr:                                            ; preds = %bb.fg, %bb.bn
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZNK6duckdb15SelectionVector5SliceERKS0_m(ptr dead_on_unwind writable sret(%"class.duckdb::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
