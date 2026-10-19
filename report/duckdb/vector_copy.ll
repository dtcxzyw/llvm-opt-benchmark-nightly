Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/vector_copy?download=true
inline.NumInlined: 765
inline.NumDeleted: 419
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmmm:.peel.begin
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %.body

.loopexit700:                                     ; preds = %bb.aa, %.peel.begin
  %.0269503.lcssa692 = phi ptr [ %2, %.peel.begin ], [ %9, %bb.aa ] ; 2 uses
  %.0271502.lcssa685 = phi ptr [ %0, %.peel.begin ], [ %.0271502, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.eg = getelementptr inbounds nuw i8, ptr %.0271502.lcssa685, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %.loopexit700
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %12, ptr noundef nonnull %13, i64 noundef 2048)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #17
  %i.eh = getelementptr inbounds nuw i8, ptr %.0271502.lcssa685, i64 72
  %i.ei = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eh)
          to label %bb.be unwind label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !50 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !56
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !56
  invoke void @_ZN6duckdb16VectorOperations16GenerateSequenceERNS_6VectorEmRKNS_15SelectionVectorEll(ptr noundef nonnull align 8 dereferenceable(104) %12, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %.0269503.lcssa692, i64 noundef %i.el, i64 noundef %i.en)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.eo = sub i64 %3, %4
  invoke void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmmm(ptr noundef nonnull align 8 dereferenceable(104) %12, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %.0269503.lcssa692, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %i.eo)
          to label %_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm.exit unwind label %bb.bi, !inline_history !57

_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm.exit: ; preds = %bb.bf
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.er

bb.bg:                                            ; preds = %.loopexit700
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bc
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #17
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bf, %bb.bd, %bb.be
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %12) #17
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.pn352 = phi { ptr, i32 } [ %i.er, %bb.bi ], [ %i.eq, %bb.bh ], [ %i.ep, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %.body

.loopexit701:                                     ; preds = %bb.aa, %.peel.begin
  %.0271502.lcssa686 = phi ptr [ %0, %.peel.begin ], [ %.0271502, %bb.aa ]
  %i.es = invoke noundef ptr @_ZN6duckdb14ConstantVector19ZeroSelectionVectorEmRNS_15SelectionVectorE(i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.loopexit699:                                     ; preds = %bb.aa, %.peel.begin
  %i.et = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bk unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bk:                                            ; preds = %.loopexit699
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.ey unwind label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.loopexit699
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.0275 = phi i1 [ false, %bb.bl ], [ true, %bb.bk ] ; 2 uses
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ew = load ptr, ptr %14, align 8, !tbaa !60   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bm
  call void @_ZdlPv(ptr noundef %i.ew) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br i1 %.0275, label %bb.bn, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br i1 %.0275, label %bb.bn, label %.body

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn358431 = phi { ptr, i32 } [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.et) #17
  br label %.body

bb.bo:                                            ; preds = %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i369, %bb.aw, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.aa, !llvm.loop !91

.loopexit:                                        ; preds = %.peel.begin, %.peel.begin, %bb.aa, %bb.aa, %.loopexit701
  %.0271502691 = phi ptr [ %.0271502.lcssa686, %.loopexit701 ], [ %0, %.peel.begin ], [ %0, %.peel.begin ], [ %.0271502, %bb.aa ], [ %.0271502, %bb.aa ] ; 29 uses
  %.1270.ph = phi ptr [ %i.es, %.loopexit701 ], [ %2, %.peel.begin ], [ %2, %.peel.begin ], [ %9, %bb.aa ], [ %9, %bb.aa ] ; 22 uses
  %i.ez = icmp eq i64 %6, 0
  br i1 %i.ez, label %bb.er, label %bb.bp

bb.bp:                                            ; preds = %.loopexit
  %i.fa = load i8, ptr %1, align 8, !tbaa !34     ; 3 uses
  %i.fb = icmp eq i64 %6, 1
  %i.fc = icmp eq i8 %i.fa, 2                     ; 2 uses
  %or.cond = and i1 %i.fb, %i.fc
  br i1 %or.cond, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 0)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0265 = phi i64 [ 0, %bb.bq ], [ %5, %bb.bp ]  ; 27 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.bs:                                            ; preds = %bb.br
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.fe = load i8, ptr %.0271502691, align 8, !tbaa !34
  switch i8 %i.fe, label %bb.bw [
    i8 2, label %bb.bt
    i8 0, label %bb.bv
    i8 1, label %bb.cc
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.ff = getelementptr inbounds nuw i8, ptr %.0271502691, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !62 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i, label %.lr.ph.split.us, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bt
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !56
  %i.fi = trunc i64 %i.fh to i1
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 64
  br i1 %i.fi, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre574 = load ptr, ptr %i.fd, align 8, !tbaa !62
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %bb.bt, %.lr.ph
  %i.fk = load ptr, ptr %i.fd, align 8, !tbaa !62 ; 4 uses
  %.not.i.i375.us = icmp eq ptr %i.fk, null
  br i1 %.not.i.i375.us, label %.loopexit474, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader

_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader: ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %6, 1
  %i.fl = icmp eq i64 %6, 1
  br i1 %i.fl, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.epil.preheader, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader.new

_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader.new: ; preds = %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader
  %unroll_iter = and i64 %6, -2
  br label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us

_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us: ; preds = %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader.new
  %.0274504.us = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader.new ], [ %i.gb, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us ] ; 3 uses
  %niter = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader.new ], [ %niter.next.1, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us ]
  %i.fm = add i64 %.0274504.us, %.0265            ; 2 uses
  %i.fn = lshr i64 %i.fm, 6
  %i.fo = and i64 %i.fm, 63
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fn ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !56
  %i.fs = or i64 %i.fr, %i.fp
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !56
  %i.ft = or disjoint i64 %.0274504.us, 1
  %i.fu = add i64 %i.ft, %.0265                   ; 2 uses
  %i.fv = lshr i64 %i.fu, 6
  %i.fw = and i64 %i.fu, 63
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fv ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !56
  %i.ga = or i64 %i.fz, %i.fx
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !56
  %i.gb = add nuw i64 %.0274504.us, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit474.loopexit.unr-lcssa, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us, !llvm.loop !92

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i
  %i.gc = phi ptr [ %i.gf, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i ], [ %.pre574, %.lr.ph.split.preheader ] ; 2 uses
  %.0274504 = phi i64 [ %i.gn, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i ], [ 0, %.lr.ph.split.preheader ] ; 2 uses
  %i.gd = add i64 %.0274504, %.0265               ; 2 uses
  %.not.i.i375 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i375, label %bb.bu, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

bb.bu:                                            ; preds = %.lr.ph.split
  %i.ge = load i64, ptr %i.fj, align 8, !tbaa !63
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fd, i64 noundef %i.ge)
          to label %.noexc376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc376:                                        ; preds = %bb.bu
  %.pre.i.i = load ptr, ptr %i.fd, align 8, !tbaa !62
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i: ; preds = %.noexc376, %.lr.ph.split
  %i.gf = phi ptr [ %.pre.i.i, %.noexc376 ], [ %i.gc, %.lr.ph.split ] ; 2 uses
  %i.gg = lshr i64 %i.gd, 6
  %i.gh = and i64 %i.gd, 63
  %i.gi = shl nuw i64 1, %i.gh
  %i.gj = xor i64 %i.gi, -1
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gg ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !56
  %i.gm = and i64 %i.gl, %i.gj
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !56
  %i.gn = add nuw i64 %.0274504, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gn, %6
  br i1 %exitcond.not, label %.loopexit474, label %.lr.ph.split, !llvm.loop !92

bb.bv:                                            ; preds = %bb.bs
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bs
  %i.go = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.bx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.go, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  invoke void @__cxa_throw(ptr nonnull %i.go, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.cb unwind label %bb.bz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.bw
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.ca

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.0.i = phi i1 [ false, %bb.by ], [ true, %bb.bx ] ; 2 uses
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gr = load ptr, ptr %7, align 8, !tbaa !60    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bz
  call void @_ZdlPv(ptr noundef %i.gr) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br i1 %.0.i, label %bb.ca, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br i1 %.0.i, label %bb.ca, label %.body

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn13.i = phi { ptr, i32 } [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.go) #17
  br label %.body

bb.cb:                                            ; preds = %bb.by
  unreachable

bb.cc:                                            ; preds = %bb.bs, %bb.bv
  %.08.i = getelementptr inbounds nuw i8, ptr %.0271502691, i64 40
  invoke void @_ZN6duckdb12ValidityMask7CopySelERKS0_RKNS_15SelectionVectorEmmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %.08.i, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %.loopexit474 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.loopexit474.loopexit.unr-lcssa:                  ; preds = %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit474, label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.epil.preheader

_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.epil.preheader: ; preds = %.loopexit474.loopexit.unr-lcssa, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader
  %.0274504.us.epil.init = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.preheader ], [ %i.gb, %.loopexit474.loopexit.unr-lcssa ]
  %lcmp.mod713 = trunc i64 %6 to i1
  call void @llvm.assume(i1 %lcmp.mod713)
  %i.gu = add i64 %.0274504.us.epil.init, %.0265  ; 2 uses
  %i.gv = lshr i64 %i.gu, 6
  %i.gw = and i64 %i.gu, 63
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.gv ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !56
  %i.ha = or i64 %i.gz, %i.gx
  store i64 %i.ha, ptr %i.gy, align 8, !tbaa !56
  br label %.loopexit474

.loopexit474:                                     ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit.us.epil.preheader, %.loopexit474.loopexit.unr-lcssa, %.lr.ph.split.us, %bb.cc
  %i.hb = load i8, ptr %.0271502691, align 8, !tbaa !34
  %i.hc = icmp eq i8 %i.hb, 1
  br i1 %i.hc, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.loopexit474
  invoke void @_ZN6duckdb10FSSTVector16DecompressVectorERKNS_6VectorERS1_mmmPKNS_15SelectionVectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6, ptr noundef %.1270.ph)
          to label %bb.er unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ce:                                            ; preds = %.loopexit474
  %i.hd = getelementptr inbounds nuw i8, ptr %.0271502691, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %.0271502691, i64 9 ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !64
  switch i8 %i.hf, label %bb.ek [
    i8 1, label %bb.cf
    i8 3, label %bb.cf
    i8 5, label %bb.cj
    i8 7, label %bb.ck
    i8 9, label %bb.cl
    i8 2, label %bb.cm
    i8 4, label %bb.cn
    i8 6, label %bb.co
    i8 8, label %bb.cp
    i8 -52, label %bb.cq
    i8 -53, label %bb.cr
    i8 11, label %bb.cs
    i8 12, label %bb.ct
    i8 21, label %bb.cu
    i8 -56, label %bb.cv
    i8 24, label %bb.da
    i8 29, label %bb.dh
    i8 23, label %bb.dp
  ]

bb.cf:                                            ; preds = %bb.ce, %bb.ce
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691)
          to label %.noexc379 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc379:                                        ; preds = %bb.cf
  %i.hg = getelementptr inbounds nuw i8, ptr %.0271502691, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !65 ; 3 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc380 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc380:                                        ; preds = %.noexc379
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !65
  %i.hk = getelementptr i8, ptr %i.hj, i64 %.0265 ; 3 uses
  %xtraiter714 = and i64 %6, 1
  %i.hl = icmp eq i64 %6, 1
  br i1 %i.hl, label %.epil.preheader, label %.noexc380.new

.noexc380.new:                                    ; preds = %.noexc380
  %unroll_iter717 = and i64 %6, -2
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1, %.noexc380.new
  %.012.i = phi i64 [ 0, %.noexc380.new ], [ %i.if, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1 ] ; 4 uses
  %niter718 = phi i64 [ 0, %.noexc380.new ], [ %niter718.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1 ]
  %i.hm = add i64 %.012.i, %4                     ; 2 uses
  %i.hn = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i.i378 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i378, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hm
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !8
  %i.hq = zext i32 %i.hp to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.ch, %bb.cg
  %i.hr = phi i64 [ %i.hq, %bb.ch ], [ %i.hm, %bb.cg ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !39
  %i.hu = getelementptr i8, ptr %i.hk, i64 %.012.i
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !39
  %i.hv = or disjoint i64 %.012.i, 1              ; 2 uses
  %i.hw = add i64 %i.hv, %4                       ; 2 uses
  %i.hx = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i.i378.1 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i378.1, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1, label %bb.ci

bb.ci:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.hw
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !8
  %i.ia = zext i32 %i.hz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1: ; preds = %bb.ci, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.ib = phi i64 [ %i.ia, %bb.ci ], [ %i.hw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !39
  %i.ie = getelementptr i8, ptr %i.hk, i64 %i.hv
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !39
  %i.if = add nuw i64 %.012.i, 2                  ; 2 uses
  %niter718.next.1 = add i64 %niter718, 2         ; 2 uses
  %niter718.ncmp.1 = icmp eq i64 %niter718.next.1, %unroll_iter717
  br i1 %niter718.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.loopexit.unr-lcssa, label %bb.cg, !llvm.loop !93

bb.cj:                                            ; preds = %bb.ce
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIsEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ck:                                            ; preds = %bb.ce
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIiEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ce
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIlEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.cm:                                            ; preds = %bb.ce
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIhEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.cn:                                            ; preds = %bb.ce
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyItEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.co:                                            ; preds = %bb.ce
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIjEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.cp:                                            ; preds = %bb.ce
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyImEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.cq:                                            ; preds = %bb.ce
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyINS_9hugeint_tEEEvRKNS_6VectorERKNS_15SelectionVectorERS3_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.cr:                                            ; preds = %bb.ce
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyINS_10uhugeint_tEEEvRKNS_6VectorERKNS_15SelectionVectorERS3_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.cs:                                            ; preds = %bb.ce
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIfEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ct:                                            ; preds = %bb.ce
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIdEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.cu:                                            ; preds = %bb.ce
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_113TemplatedCopyINS_10interval_tEEEvRKNS_6VectorERKNS_15SelectionVectorERS3_mmm(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691, ptr noundef nonnull align 8 dereferenceable(24) %.1270.ph, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.cv:                                            ; preds = %bb.ce
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.cw:                                            ; preds = %bb.cv
  %i.ig = getelementptr inbounds nuw i8, ptr %.0271502691, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !65
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.lr.ph532.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.lr.ph532.preheader:                              ; preds = %bb.cw
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !65
  %umax571 = call i64 @llvm.umax.i64(i64 %6, i64 1)
  br label %.lr.ph532

.lr.ph532:                                        ; preds = %.lr.ph532.preheader, %bb.cz
  %.0273531 = phi i64 [ %i.jd, %bb.cz ], [ 0, %.lr.ph532.preheader ] ; 3 uses
  %i.ik = add i64 %.0273531, %4                   ; 2 uses
  %i.il = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i = icmp eq ptr %i.il, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph532
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.ik
  %i.in = load i32, ptr %i.im, align 4, !tbaa !8
  %i.io = zext i32 %i.in to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.cx, %.lr.ph532
  %i.ip = phi i64 [ %i.io, %bb.cx ], [ %i.ik, %.lr.ph532 ]
  %i.iq = add i64 %.0273531, %.0265               ; 3 uses
  %i.ir = load ptr, ptr %i.fd, align 8, !tbaa !62 ; 2 uses
  %.not.i383 = icmp eq ptr %i.ir, null
  br i1 %.not.i383, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.is = lshr i64 %i.iq, 6
  %i.it = and i64 %i.iq, 63
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.is
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !56
  %i.iw = shl nuw i64 1, %i.it
  %i.ix = and i64 %i.iv, %i.iw
  %.not460 = icmp eq i64 %i.ix, 0
  br i1 %.not460, label %bb.cz, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.ih, i64 %i.ip ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.iy, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !39
  %i.iz = invoke { i64, ptr } @_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorENS_8string_tE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

bb.cy:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.ja = extractvalue { i64, ptr } %i.iz, 0
  %i.jb = extractvalue { i64, ptr } %i.iz, 1
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.ij, i64 %i.iq ; 2 uses
  store i64 %i.ja, ptr %i.jc, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store ptr %i.jb, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !39
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.jd = add nuw i64 %.0273531, 1                ; 2 uses
  %exitcond572.not = icmp eq i64 %i.jd, %umax571
  br i1 %exitcond572.not, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit, label %.lr.ph532, !llvm.loop !94

bb.da:                                            ; preds = %bb.ce
  %i.je = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 4 uses

bb.db:                                            ; preds = %bb.da
  %i.jf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.preheader:                                       ; preds = %bb.db
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !68
  %i.ji = load ptr, ptr %i.je, align 8, !tbaa !69
  %.not535 = icmp eq ptr %i.jh, %i.ji
  br i1 %.not535, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit, label %.lr.ph530

.lr.ph530:                                        ; preds = %.preheader, %bb.dg
  %.0268529 = phi i64 [ %i.jn, %bb.dg ], [ 0, %.preheader ] ; 3 uses
  %i.jj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.je, i64 noundef %.0268529)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.dc:                                            ; preds = %.lr.ph530
  %i.jk = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jj)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  %i.jl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jf, i64 noundef %.0268529)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.de:                                            ; preds = %bb.dd
  %i.jm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jl)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.df:                                            ; preds = %bb.de
  invoke void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmmm(ptr noundef nonnull align 8 dereferenceable(104) %i.jk, ptr noundef nonnull align 8 dereferenceable(104) %i.jm, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %4, i64 noundef %.0265, i64 noundef %6)
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.dg:                                            ; preds = %bb.df
  %i.jn = add nuw i64 %.0268529, 1                ; 2 uses
  %i.jo = load ptr, ptr %i.jg, align 8, !tbaa !68
  %i.jp = load ptr, ptr %i.je, align 8, !tbaa !69
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = ashr exact i64 %i.js, 3
  %i.ju = icmp ult i64 %i.jn, %i.jt
  br i1 %i.ju, label %.lr.ph530, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit, !llvm.loop !95

bb.dh:                                            ; preds = %bb.ce
  %i.jv = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb11ArrayVector8GetEntryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.di:                                            ; preds = %bb.dh
  %i.jw = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.dj:                                            ; preds = %bb.di
  %i.jx = invoke noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.hd)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 10 uses

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.jy = mul i64 %i.jx, %3                       ; 3 uses
  invoke void @_ZN6duckdb15SelectionVectorC2Em(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %i.jy)
          to label %.lr.ph527 unwind label %bb.dm

.lr.ph527:                                        ; preds = %bb.dk
  %i.jz = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i387 = icmp eq ptr %i.jz, null
  %.not534 = icmp eq i64 %i.jx, 0
  %i.ka = mul i64 %i.jx, %4                       ; 3 uses
  %i.kb = load ptr, ptr %16, align 8
  %i.kc = getelementptr [4 x i8], ptr %i.kb, i64 %i.ka
  br i1 %.not534, label %._crit_edge528, label %.lr.ph527.split.us.preheader

.lr.ph527.split.us.preheader:                     ; preds = %.lr.ph527
  %umax569 = call i64 @llvm.umax.i64(i64 %6, i64 1)
  %min.iters.check = icmp ult i64 %i.jx, 8
  %n.vec = and i64 %i.jx, -8                      ; 3 uses
  %cmp.n = icmp eq i64 %i.jx, %n.vec
  br label %.lr.ph527.split.us

.lr.ph527.split.us:                               ; preds = %.lr.ph527.split.us.preheader, %._crit_edge525.us
  %.0267526.us = phi i64 [ %i.kv, %._crit_edge525.us ], [ 0, %.lr.ph527.split.us.preheader ] ; 3 uses
  %i.kd = add i64 %.0267526.us, %4                ; 2 uses
  br i1 %.not.i387, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit388.us, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph527.split.us
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !8
  %i.kg = zext i32 %i.kf to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit388.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit388.us: ; preds = %bb.dl, %.lr.ph527.split.us
  %i.kh = phi i64 [ %i.kg, %bb.dl ], [ %i.kd, %.lr.ph527.split.us ]
  %i.ki = mul i64 %.0267526.us, %i.jx
  %i.kj = mul i64 %i.kh, %i.jx                    ; 2 uses
  %i.kk = getelementptr [4 x i8], ptr %i.kc, i64 %i.ki ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit388.us
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.kj, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i64> splat (i64 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.kl = add <4 x i64> %vec.ind, %broadcast.splat
  %.reass = add <4 x i64> %vec.ind, %invariant.op
  %i.km = trunc <4 x i64> %i.kl to <4 x i32>
  %i.kn = trunc <4 x i64> %.reass to <4 x i32>
  %i.ko = getelementptr [4 x i8], ptr %i.kk, i64 %index ; 2 uses
  %i.kp = getelementptr i8, ptr %i.ko, i64 16
  store <4 x i32> %i.km, ptr %i.ko, align 4, !tbaa !8
  store <4 x i32> %i.kn, ptr %i.kp, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.kq = icmp eq i64 %index.next, %n.vec
  br i1 %i.kq, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge525.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit388.us, %middle.block
  %.0266523.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit388.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0266523.us = phi i64 [ %i.ku, %scalar.ph ], [ %.0266523.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kr = add i64 %.0266523.us, %i.kj
  %i.ks = trunc i64 %i.kr to i32
  %i.kt = getelementptr [4 x i8], ptr %i.kk, i64 %.0266523.us
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !8
  %i.ku = add nuw i64 %.0266523.us, 1             ; 2 uses
  %exitcond568.not = icmp eq i64 %i.ku, %i.jx
  br i1 %exitcond568.not, label %._crit_edge525.us, label %scalar.ph, !llvm.loop !97

._crit_edge525.us:                                ; preds = %scalar.ph, %middle.block
  %i.kv = add nuw i64 %.0267526.us, 1             ; 2 uses
  %exitcond570.not = icmp eq i64 %i.kv, %umax569
  br i1 %exitcond570.not, label %._crit_edge528, label %.lr.ph527.split.us, !llvm.loop !98

._crit_edge528:                                   ; preds = %._crit_edge525.us, %.lr.ph527
  %i.kw = mul i64 %i.jx, %.0265
  %i.kx = sub i64 %i.jy, %i.ka
  invoke void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmmm(ptr noundef nonnull align 8 dereferenceable(104) %i.jv, ptr noundef nonnull align 8 dereferenceable(104) %i.jw, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %i.jy, i64 noundef %i.ka, i64 noundef %i.kw, i64 noundef %i.kx)
          to label %_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm.exit386 unwind label %bb.dn, !inline_history !57

bb.dm:                                            ; preds = %bb.dk
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dn:                                            ; preds = %._crit_edge528
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #17
  br label %bb.do

_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm.exit386: ; preds = %._crit_edge528
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.pn330.pn.pn = phi { ptr, i32 } [ %i.kz, %bb.dn ], [ %i.ky, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %.body

bb.dp:                                            ; preds = %bb.ce
  %i.la = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691)
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.0271502691)
          to label %bb.dr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.dr:                                            ; preds = %bb.dq
  %i.lb = getelementptr inbounds nuw i8, ptr %.0271502691, i64 32
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !65 ; 3 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.ds unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ds:                                            ; preds = %bb.dr
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !65 ; 2 uses
  br i1 %i.fc, label %bb.dt, label %.lr.ph516.preheader

.lr.ph516.preheader:                              ; preds = %bb.ds
  %umax564 = call i64 @llvm.umax.i64(i64 %6, i64 1)
  br label %.lr.ph516

bb.dt:                                            ; preds = %bb.ds
  %i.lf = load ptr, ptr %i.fd, align 8, !tbaa !62 ; 2 uses
  %.not.i391 = icmp eq ptr %i.lf, null
  br i1 %.not.i391, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393: ; preds = %bb.dt
  %i.lg = lshr i64 %.0265, 6
  %i.lh = and i64 %.0265, 63
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lg
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !56
  %i.lk = shl nuw i64 1, %i.lh
  %i.ll = and i64 %i.lj, %i.lk
  %.not459 = icmp eq i64 %i.ll, 0
  br i1 %.not459, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393.thread: ; preds = %bb.dt, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393
  %i.lm = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i394 = icmp eq ptr %i.lm, null
  br i1 %.not.i394, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit395, label %bb.du

bb.du:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393.thread
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %4
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !8
  %i.lp = zext i32 %i.lo to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit395

_ZNK6duckdb15SelectionVector9get_indexEm.exit395: ; preds = %bb.du, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393.thread
  %i.lq = phi i64 [ %i.lp, %bb.du ], [ %4, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393.thread ]
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %i.lq ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8 ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !105
  %i.lu = load i64, ptr %i.lr, align 8, !tbaa !106
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef 0)
          to label %bb.dv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.dv:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit395
  %i.lv = add i64 %i.lu, %i.lt
  %i.lw = load i64, ptr %i.lr, align 8, !tbaa !106
  invoke void @_ZN6duckdb10ListVector6AppendERNS_6VectorERKS1_mm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %i.la, i64 noundef %i.lv, i64 noundef %i.lw)
          to label %bb.dw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.dw:                                            ; preds = %bb.dv
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %.0265 ; 2 uses
  %i.ly = load i64, ptr %i.ls, align 8, !tbaa !105
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store i64 %i.ly, ptr %i.lz, align 8, !tbaa !105
  store i64 0, ptr %i.lx, align 8, !tbaa !106
  br label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.bu, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.df, %bb.de, %bb.dd, %bb.dc, %.lr.ph530, %.loopexit701, %bb.dr, %bb.dq, %bb.cw, %bb.cv, %.noexc379, %bb.cf, %bb.bv, %bb.br, %bb.dj, %bb.di, %bb.dh, %bb.db, %bb.da, %bb.cd, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.thread, %bb.cc, %bb.bq, %bb.dp, %bb.dv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit395, %.noexc362, %bb.ac, %.noexc, %bb.ab, %bb.a, %.noexc.peel, %bb.b, %.noexc362.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph516:                                        ; preds = %.lr.ph516.preheader, %.loopexit468
  %.0264515 = phi i64 [ %i.nn, %.loopexit468 ], [ 0, %.lr.ph516.preheader ] ; 3 uses
  %.sroa.14.0514 = phi ptr [ %.sroa.14.2, %.loopexit468 ], [ null, %.lr.ph516.preheader ] ; 3 uses
  %.sroa.10.0513 = phi ptr [ %.sroa.10.2, %.loopexit468 ], [ null, %.lr.ph516.preheader ] ; 3 uses
  %.sroa.0.0512 = phi ptr [ %.sroa.0.2, %.loopexit468 ], [ null, %.lr.ph516.preheader ] ; 3 uses
  %i.ma = load ptr, ptr %i.fd, align 8, !tbaa !62 ; 2 uses
  %.not.i396 = icmp eq ptr %i.ma, null
  br i1 %.not.i396, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398: ; preds = %.lr.ph516
  %i.mb = add i64 %.0264515, %.0265               ; 2 uses
  %i.mc = lshr i64 %i.mb, 6
  %i.md = and i64 %i.mb, 63
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.mc
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !56
  %i.mg = shl nuw i64 1, %i.md
  %i.mh = and i64 %i.mf, %i.mg
  %.not458 = icmp eq i64 %i.mh, 0
  br i1 %.not458, label %.loopexit468, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398.thread: ; preds = %.lr.ph516, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398
  %i.mi = add i64 %.0264515, %4                   ; 2 uses
  %i.mj = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i399 = icmp eq ptr %i.mj, null
  br i1 %.not.i399, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit400, label %bb.dx

bb.dx:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398.thread
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mi
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !8
  %i.mm = zext i32 %i.ml to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit400

_ZNK6duckdb15SelectionVector9get_indexEm.exit400: ; preds = %bb.dx, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398.thread
  %i.mn = phi i64 [ %i.mm, %bb.dx ], [ %i.mi, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398.thread ]
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %i.mn ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !105 ; 2 uses
  %.not533 = icmp eq i64 %i.mq, 0
  br i1 %.not533, label %.loopexit468, label %.lr.ph509

.lr.ph509:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit400, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit
  %i.mr = phi i64 [ %i.nk, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ], [ %i.mq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ]
  %.0263508 = phi i64 [ %i.nl, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ] ; 2 uses
  %.sroa.14.1507 = phi ptr [ %.sroa.14.3, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ], [ %.sroa.14.0514, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ] ; 3 uses
  %.sroa.10.1506 = phi ptr [ %.sroa.10.3, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ], [ %.sroa.10.0513, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ] ; 3 uses
  %.sroa.0.1505 = phi ptr [ %.sroa.0.4, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ], [ %.sroa.0.0512, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ] ; 6 uses
  %i.ms = load i64, ptr %i.mo, align 8, !tbaa !106
  %i.mt = add i64 %i.ms, %.0263508                ; 2 uses
  %.not.i401 = icmp eq ptr %.sroa.10.1506, %.sroa.14.1507
  br i1 %.not.i401, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph509
  %i.mu = trunc i64 %i.mt to i32
  store i32 %i.mu, ptr %.sroa.10.1506, align 4, !tbaa !8
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit

bb.dz:                                            ; preds = %.lr.ph509
  %i.mv = ptrtoint ptr %.sroa.14.1507 to i64
  %i.mw = ptrtoint ptr %.sroa.0.1505 to i64
  %i.mx = sub i64 %i.mv, %i.mw                    ; 5 uses
  %i.my = icmp eq i64 %i.mx, 9223372036854775804
  br i1 %i.my, label %bb.ea, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.ea:                                            ; preds = %bb.dz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
          to label %.noexc403 unwind label %.loopexit.split-lp470.loopexit.split-lp

.noexc403:                                        ; preds = %bb.ea
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dz
  %i.mz = ashr exact i64 %i.mx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.mz, i64 1)
  %i.na = add nsw i64 %.sroa.speculated.i.i.i, %i.mz ; 2 uses
  %i.nb = icmp ult i64 %i.na, %i.mz
  %i.nc = call i64 @llvm.umin.i64(i64 %i.na, i64 2305843009213693951)
  %i.nd = select i1 %i.nb, i64 2305843009213693951, i64 %i.nc ; 3 uses
  %.not.i.i.i402 = icmp ne i64 %i.nd, 0
  call void @llvm.assume(i1 %.not.i.i.i402)
  %i.ne = shl nuw nsw i64 %i.nd, 2
  %i.nf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ne) #20
          to label %.noexc404 unwind label %.loopexit.split-lp470.loopexit.split-lp ; 4 uses

.noexc404:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ng = getelementptr inbounds i8, ptr %i.nf, i64 %i.mx ; 2 uses
  %i.nh = trunc i64 %i.mt to i32
  store i32 %i.nh, ptr %i.ng, align 4, !tbaa !8
  %i.ni = icmp sgt i64 %i.mx, 0
  br i1 %i.ni, label %bb.eb, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.eb:                                            ; preds = %.noexc404
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nf, ptr align 4 %.sroa.0.1505, i64 %i.mx, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.eb, %.noexc404
  %.not.i17.i.i = icmp eq ptr %.sroa.0.1505, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.ec

bb.ec:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.1505) #19
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.ec, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.nd
  %.pre575 = load i64, ptr %i.mp, align 8, !tbaa !105
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit

_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.dy
  %i.nk = phi i64 [ %.pre575, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.mr, %bb.dy ] ; 2 uses
  %.sroa.0.4 = phi ptr [ %i.nf, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0.1505, %bb.dy ] ; 2 uses
  %.pn = phi ptr [ %i.ng, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.10.1506, %bb.dy ]
  %.sroa.14.3 = phi ptr [ %i.nj, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.14.1507, %bb.dy ] ; 2 uses
  %.sroa.10.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.nl = add nuw i64 %.0263508, 1                ; 2 uses
  %i.nm = icmp ult i64 %i.nl, %i.nk
  br i1 %i.nm, label %.lr.ph509, label %.loopexit468, !llvm.loop !99

.loopexit.split-lp470.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %bb.ea
  %lpad.loopexit.split-lp674 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

.loopexit468:                                     ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398
  %.sroa.0.2 = phi ptr [ %.sroa.0.0512, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398 ], [ %.sroa.0.0512, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ], [ %.sroa.0.4, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ] ; 6 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0513, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398 ], [ %.sroa.10.0513, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ], [ %.sroa.10.3, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ] ; 2 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.0514, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit398 ], [ %.sroa.14.0514, %_ZNK6duckdb15SelectionVector9get_indexEm.exit400 ], [ %.sroa.14.3, %_ZNSt6vectorIjSaIjEE12emplace_backIJmEEEvDpOT_.exit ]
  %i.nn = add nuw i64 %.0264515, 1                ; 2 uses
  %exitcond565.not = icmp eq i64 %i.nn, %umax564
  br i1 %exitcond565.not, label %._crit_edge, label %.lr.ph516, !llvm.loop !100

._crit_edge:                                      ; preds = %.loopexit468
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.no = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.no, i8 0, i64 16, i1 false)
  store ptr %.sroa.0.2, ptr %17, align 8, !tbaa !55
  %i.np = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.ed unwind label %bb.eh

bb.ed:                                            ; preds = %._crit_edge
  %i.nq = ptrtoint ptr %.sroa.10.2 to i64
  %i.nr = ptrtoint ptr %.sroa.0.2 to i64
  %i.ns = sub i64 %i.nq, %i.nr
  %i.nt = ashr exact i64 %i.ns, 2
  invoke void @_ZN6duckdb10ListVector6AppendERNS_6VectorERKS1_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %i.la, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %i.nt, i64 noundef 0)
          to label %.lr.ph521 unwind label %bb.eh

.lr.ph521:                                        ; preds = %bb.ed
  %i.nu = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i406 = icmp eq ptr %i.nu, null
  %i.nv = load ptr, ptr %i.fd, align 8, !tbaa !62 ; 2 uses
  %.not.i408 = icmp eq ptr %i.nv, null
  %umax566 = call i64 @llvm.umax.i64(i64 %6, i64 1)
  br label %bb.ef

._crit_edge522:                                   ; preds = %bb.ei
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %.not.i.i.i405 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i405, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit, label %bb.ee

bb.ee:                                            ; preds = %._crit_edge522
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.2) #19
  br label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit

bb.ef:                                            ; preds = %.lr.ph521, %bb.ei
  %.0260520 = phi i64 [ 0, %.lr.ph521 ], [ %i.op, %bb.ei ] ; 3 uses
  %.0261519 = phi i64 [ %i.np, %.lr.ph521 ], [ %.1262, %bb.ei ] ; 3 uses
  %i.nw = add i64 %.0260520, %4                   ; 2 uses
  br i1 %.not.i406, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit407, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !8
  %i.nz = zext i32 %i.ny to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit407

_ZNK6duckdb15SelectionVector9get_indexEm.exit407: ; preds = %bb.eg, %bb.ef
  %i.oa = phi i64 [ %i.nz, %bb.eg ], [ %i.nw, %bb.ef ]
  %i.ob = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %i.oa
  %i.oc = add i64 %.0260520, %.0265               ; 3 uses
  %i.od = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %i.oc ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !105 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  store i64 %i.of, ptr %i.og, align 8, !tbaa !105
  store i64 %.0261519, ptr %i.od, align 8, !tbaa !106
  br i1 %.not.i408, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit407
  %i.oh = lshr i64 %i.oc, 6
  %i.oi = and i64 %i.oc, 63
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.oh
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !56
  %i.ol = shl nuw i64 1, %i.oi
  %i.om = and i64 %i.ok, %i.ol
  %.not457 = icmp eq i64 %i.om, 0
  br i1 %.not457, label %bb.ei, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit407, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410
  %i.on = add i64 %i.of, %.0261519
  br label %bb.ei

bb.eh:                                            ; preds = %._crit_edge, %bb.ed
  %i.oo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.ej

bb.ei:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410
  %.1262 = phi i64 [ %i.on, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410.thread ], [ %.0261519, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit410 ]
  %i.op = add nuw i64 %.0260520, 1                ; 2 uses
  %exitcond567.not = icmp eq i64 %i.op, %umax566
  br i1 %exitcond567.not, label %._crit_edge522, label %bb.ef, !llvm.loop !101

bb.ej:                                            ; preds = %.loopexit.split-lp470.loopexit.split-lp, %bb.eh
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %bb.eh ], [ %.sroa.0.1505, %.loopexit.split-lp470.loopexit.split-lp ] ; 2 uses
  %.pn321.pn.pn = phi { ptr, i32 } [ %i.oo, %bb.eh ], [ %lpad.loopexit.split-lp674, %.loopexit.split-lp470.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i411 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i.i411, label %.body, label %.thread

.thread:                                          ; preds = %bb.ej
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.3) #19
  br label %.body

bb.ek:                                            ; preds = %bb.ce
  %i.oq = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.el unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.thread

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.or = load i8, ptr %i.he, align 1, !tbaa !64
  invoke void @_ZN6duckdb14TypeIdToStringB5cxx11ENS_12PhysicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, i8 noundef zeroext %i.or)
          to label %bb.em unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.thread

bb.em:                                            ; preds = %bb.el
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.oq, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.en unwind label %bb.eo

bb.en:                                            ; preds = %bb.em
  invoke void @__cxa_throw(ptr nonnull %i.oq, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.ey unwind label %bb.eo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.thread: ; preds = %bb.ek
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.0 = phi i1 [ false, %bb.en ], [ true, %bb.em ] ; 2 uses
  %i.ot = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ou = load ptr, ptr %20, align 8, !tbaa !60   ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ow = icmp eq ptr %i.ou, %i.ov
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413: ; preds = %bb.eo
  call void @_ZdlPv(ptr noundef %i.ou) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  %i.ox = load ptr, ptr %18, align 8, !tbaa !60   ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.oz = icmp eq ptr %i.ox, %i.oy
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.thread: ; preds = %bb.el
  %i.pa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  %i.pb = load ptr, ptr %18, align 8, !tbaa !60   ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.pd = icmp eq ptr %i.pb, %i.pc
  br i1 %i.pd, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.thread
  call void @_ZdlPv(ptr noundef %i.pb) #19
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  call void @_ZdlPv(ptr noundef %i.ox) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br i1 %.0, label %bb.ep, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br i1 %.0, label %bb.ep, label %.body

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416.thread
  %.pn345.pn444.ph = phi { ptr, i32 } [ %i.pa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416.thread ], [ %i.os, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.thread ], [ %i.pa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.ep

bb.ep:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418
  %.pn345.pn444 = phi { ptr, i32 } [ %i.ot, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416 ], [ %i.ot, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418 ], [ %.pn345.pn444.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.oq) #17
  br label %.body

_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.loopexit.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.1
  %lcmp.mod715.not = icmp eq i64 %xtraiter714, 0
  br i1 %lcmp.mod715.not, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.loopexit.unr-lcssa, %.noexc380
  %.012.i.epil.init = phi i64 [ 0, %.noexc380 ], [ %i.if, %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod716 = trunc i64 %6 to i1
  call void @llvm.assume(i1 %lcmp.mod716)
  %i.pe = add i64 %.012.i.epil.init, %4           ; 2 uses
  %i.pf = load ptr, ptr %.1270.ph, align 8, !tbaa !55 ; 2 uses
  %.not.i.i378.epil = icmp eq ptr %i.pf, null
  br i1 %.not.i.i378.epil, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil, label %bb.eq

bb.eq:                                            ; preds = %.epil.preheader
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.pe
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !8
  %i.pi = zext i32 %i.ph to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil: ; preds = %bb.eq, %.epil.preheader
  %i.pj = phi i64 [ %i.pi, %bb.eq ], [ %i.pe, %.epil.preheader ]
  %i.pk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !39
  %i.pm = getelementptr i8, ptr %i.hk, i64 %.012.i.epil.init
  store i8 %i.pl, ptr %i.pm, align 1, !tbaa !39
  br label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit

_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit: ; preds = %bb.dg, %bb.cz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil, %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.loopexit.unr-lcssa, %.preheader, %bb.ee, %._crit_edge522, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm.exit386
  %.not = icmp eq i8 %i.fa, 0
  br i1 %.not, label %bb.er, label %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.thread

_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.thread: ; preds = %bb.dw, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit393, %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext %i.fa)
          to label %bb.er unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.er:                                            ; preds = %bb.cd, %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit.thread, %_ZN6duckdb12_GLOBAL__N_113TemplatedCopyIaEEvRKNS_6VectorERKNS_15SelectionVectorERS2_mmm.exit, %.loopexit, %_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm.exit
  %i.pn = load ptr, ptr %i.d, align 8, !tbaa !38  ; 8 uses
  %.not.i.i.i.i419 = icmp eq ptr %i.pn, null
  br i1 %.not.i.i.i.i419, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8 ; 4 uses
  %i.pp = load atomic i64, ptr %i.po acquire, align 8 ; 2 uses
  %i.pq = icmp eq i64 %i.pp, 4294967297
  %i.pr = trunc i64 %i.pp to i32                  ; 2 uses
  br i1 %i.pq, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i32 0, ptr %i.po, align 8, !tbaa !43
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  store i32 0, ptr %i.ps, align 4, !tbaa !44
  %i.pt = load ptr, ptr %i.pn, align 8, !tbaa !46
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8
  call void %i.pv(ptr noundef nonnull align 8 dereferenceable(16) %i.pn) #17, !inline_history !102
  %i.pw = load ptr, ptr %i.pn, align 8, !tbaa !46
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  %i.py = load ptr, ptr %i.px, align 8
  call void %i.py(ptr noundef nonnull align 8 dereferenceable(16) %i.pn) #17, !inline_history !102
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.eu:                                            ; preds = %bb.es
  %i.pz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i.i420 = icmp eq i8 %i.pz, 0
  br i1 %.not.i.i.i.i.i420, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.qa = add nsw i32 %i.pr, -1
  store i32 %i.qa, ptr %i.po, align 8, !tbaa !8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ew:                                            ; preds = %bb.eu
  %i.qb = atomicrmw volatile add ptr %i.po, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ew, %bb.ev
  %.0.i.i.i.i.i.i = phi i32 [ %i.pr, %bb.ev ], [ %i.qb, %bb.ew ]
  %i.qc = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.qc, label %bb.ex, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !41

bb.ex:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pn) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.er, %bb.et, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416, %.thread, %bb.ej, %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, %bb.ep, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bn, %bb.bj
  %.pn358.pn = phi { ptr, i32 } [ %.pn358431, %bb.bn ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn352, %bb.bj ], [ %i.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn330.pn.pn, %bb.do ], [ %.pn354, %bb.bb ], [ %.pn345.pn444, %bb.ep ], [ %i.ot, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418 ], [ %i.ot, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416 ], [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn13.i, %bb.ca ], [ %.pn321.pn.pn, %bb.ej ], [ %.pn321.pn.pn, %.thread ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  resume { ptr, i32 } %.pn358.pn

bb.ey:                                            ; preds = %bb.en, %bb.bl
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZNK6duckdb15SelectionVector5SliceERKS0_m(ptr dead_on_unwind writable sret(%"class.duckdb::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
