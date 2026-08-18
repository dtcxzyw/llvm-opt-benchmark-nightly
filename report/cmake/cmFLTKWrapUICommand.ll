inline.NumInlined: 661
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
          to label %bb.h unwind label %bb.r       ; 2 uses

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.bk, ptr %13, align 8, !tbaa !14
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !19 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  store i64 %i.bn, ptr %i.h, align 8, !tbaa !17
  %i.bo = icmp ugt i64 %i.bn, 15
  br i1 %i.bo, label %.noexc.i125, label %._crit_edge.i.i124

.noexc.i125:                                      ; preds = %bb.h
  %i.bp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc126 unwind label %bb.r  ; 2 uses

.noexc126:                                        ; preds = %.noexc.i125
  store ptr %i.bp, ptr %13, align 8, !tbaa !19
  %i.bq = load i64, ptr %i.h, align 8, !tbaa !17
  store i64 %i.bq, ptr %i.bk, align 8, !tbaa !21
  br label %._crit_edge.i.i124

._crit_edge.i.i124:                               ; preds = %.noexc126, %bb.h
  %i.br = phi ptr [ %i.bp, %.noexc126 ], [ %i.bk, %bb.h ] ; 2 uses
  switch i64 %i.bn, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i124
  %i.bs = load i8, ptr %i.bl, align 1, !tbaa !21
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !21
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i124
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bl, i64 %i.bn, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i124
  %i.bt = load i64, ptr %i.h, align 8, !tbaa !17  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !22
  %i.bv = load ptr, ptr %13, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store i8 0, ptr %i.bw, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 16
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.s

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %bb.k
  invoke void @_ZN10cmMakefile21AddIncludeDirectoriesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEb(ptr noundef nonnull align 8 dereferenceable(2952) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.bz = load ptr, ptr %14, align 8, !tbaa !13   ; 3 uses
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !9  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bz, %bb.l ] ; 3 uses
  %i.cb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !21
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cg, %i.ca
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !36

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !13
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.l
  %i.ch = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bz, %bb.l ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i1.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !38
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cl) #20
  br label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.cm = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.cn = load ptr, ptr %i.l, align 8, !tbaa !39  ; 2 uses
  %.sroa.0376.0666 = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 2 uses
  %.not393667 = icmp eq ptr %.sroa.0376.0666, %i.cn
  br i1 %.not393667, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  %i.co = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 3 uses
  store ptr %i.co, ptr %34, align 8, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store i64 0, ptr %i.cp, align 8, !tbaa !22
  store i8 0, ptr %i.co, align 8, !tbaa !21
  br label %._crit_edge678

.lr.ph:                                           ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.gep20.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i147 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.sroa.4.0..sroa_idx.i.i149 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i3.i150 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.4.0..sroa_idx.i11.i151 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.4.0..sroa_idx.i19.i152 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i168 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4.0..sroa_idx.i9.i169 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.dw = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.dz = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.eb = getelementptr inbounds nuw i8, ptr %23, i64 80
  %i.ec = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.ee = getelementptr inbounds nuw i8, ptr %23, i64 96
  %i.ef = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %23, i64 104
  %i.eh = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  %i.en = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %15, i64 28
  br label %bb.t

._crit_edge:                                      ; preds = %bb.cx
  %i.ey = ptrtoint ptr %.sroa.0381.1 to i64       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  %i.ez = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 8 uses
  store ptr %i.ez, ptr %34, align 8, !tbaa !14
  %i.fa = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 7 uses
  store i64 0, ptr %i.fa, align 8, !tbaa !22
  store i8 0, ptr %i.ez, align 8, !tbaa !21
  %.not679 = icmp eq ptr %.sroa.11.1, %.sroa.0381.1
  br i1 %.not679, label %._crit_edge678, label %.split.peel

.split.peel:                                      ; preds = %._crit_edge
  %i.fb = ptrtoint ptr %.sroa.11.1 to i64
  %i.fc = sub i64 %i.fb, %i.ey                    ; 2 uses
  %i.fd = ashr exact i64 %i.fc, 3
  %.pre776 = load ptr, ptr %.sroa.0381.1, align 8, !tbaa !40
  %i.fe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN12cmSourceFile15ResolveFullPathEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(376) %.pre776, ptr noundef null, ptr noundef null)
          to label %bb.o unwind label %.loopexit.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split.peel
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !22 ; 2 uses
  %i.fh = load i64, ptr %i.fa, align 8, !tbaa !22
  %i.fi = sub i64 4611686018427387903, %i.fh
  %i.fj = icmp ult i64 %i.fi, %i.fg
  br i1 %i.fj, label %.loopexit770.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.o
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !19
  %i.fl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef %i.fk, i64 noundef %i.fg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %exitcond.peel.not = icmp eq i64 %i.fc, 8
  br i1 %exitcond.peel.not, label %._crit_edge678, label %.lr.ph677.peel.next

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

bb.q:                                             ; preds = %.noexc119
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ax
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.q
  %i.fq = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %bb.p
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.p ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %i.fn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.eb

bb.r:                                             ; preds = %.noexc.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

bb.s:                                             ; preds = %bb.k, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit365

bb.t:                                             ; preds = %.lr.ph, %bb.cx
  %.sroa.0376.0672 = phi ptr [ %.sroa.0376.0666, %.lr.ph ], [ %.sroa.0376.0, %bb.cx ] ; 5 uses
  %.sroa.0381.0671 = phi ptr [ null, %.lr.ph ], [ %.sroa.0381.1, %bb.cx ] ; 9 uses
  %.sroa.11.0670 = phi ptr [ null, %.lr.ph ], [ %.sroa.11.1, %bb.cx ] ; 7 uses
  %.sroa.15.0669 = phi ptr [ null, %.lr.ph ], [ %.sroa.15.1.a, %bb.cx ] ; 34 uses
  %.pn392668 = phi ptr [ %i.cm, %.lr.ph ], [ %.sroa.0376.0672, %bb.cx ]
  %i.fu = invoke noundef ptr @_ZNK10cmMakefile9GetSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE24cmSourceFileLocationKind(ptr noundef nonnull align 8 dereferenceable(2952) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0376.0672, i32 noundef 0)
          to label %bb.u unwind label %bb.by      ; 2 uses

bb.u:                                             ; preds = %bb.t
  %.not83.not = icmp eq ptr %i.fu, null
  br i1 %.not83.not, label %.critedge109.thread, label %._crit_edge.i.i136

._crit_edge.i.i136:                               ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store ptr %i.cq, ptr %15, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cq, ptr noundef nonnull align 1 dereferenceable(12) @.str.3, i64 12, i1 false)
  store i64 12, ptr %i.cr, align 8, !tbaa !22
  store i8 0, ptr %i.ex, align 4, !tbaa !21
  %i.fv = invoke noundef zeroext i1 @_ZNK12cmSourceFile17GetPropertyAsBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(376) %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.critedge unwind label %bb.bz

.critedge:                                        ; preds = %._crit_edge.i.i136
  %i.fw = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.cq
  br i1 %i.fx, label %.critedge109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %.critedge
  %i.fy = load i64, ptr %i.cq, align 8, !tbaa !21
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #20
  br label %.critedge109

.critedge109:                                     ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br i1 %i.fv, label %bb.cx, label %.critedge109.thread

.critedge109.thread:                              ; preds = %bb.u, %.critedge109
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  invoke void @_ZN5cmsys11SystemTools27GetFilenameWithoutExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0376.0672)
          to label %bb.v unwind label %bb.ca

bb.v:                                             ; preds = %.critedge109.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !42
  %i.ga = load ptr, ptr %13, align 8, !tbaa !19, !noalias !42
  %i.gb = load i64, ptr %i.bu, align 8, !tbaa !22, !noalias !42
  store i64 %i.gb, ptr %8, align 8, !tbaa !17, !alias.scope !45, !noalias !42
  store ptr %i.ga, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !48, !alias.scope !45, !noalias !42
  store ptr null, ptr %i.cs, align 8, !tbaa !49, !alias.scope !45, !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19, !noalias !42
  store i64 0, ptr %9, align 8, !noalias !42
  store i8 47, ptr %i.cv, align 8, !tbaa !21, !noalias !42
  store i64 1, ptr %i.cu, align 8, !tbaa !17, !noalias !42
  store ptr %i.cv, ptr %.sroa.4.0..sroa_idx.i3.i, align 8, !tbaa !48, !noalias !42
  store i64 1, ptr %i.ct, align 8, !tbaa !17, !alias.scope !52, !noalias !42
  store ptr %i.cv, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !48, !alias.scope !52, !noalias !42
  store ptr null, ptr %i.cw, align 8, !tbaa !49, !alias.scope !52, !noalias !42
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %.pn.i.i16.else.val.i = load ptr, ptr %17, align 8, !tbaa !48, !noalias !58
  %.pn2.i.i18.else.val.i = load i64, ptr %.sroa.gep20.i, align 8, !tbaa !17, !noalias !58
  store i64 %.pn2.i.i18.else.val.i, ptr %i.cx, align 8, !tbaa !17, !alias.scope !55, !noalias !42
  store ptr %.pn.i.i16.else.val.i, ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !tbaa !48, !alias.scope !55, !noalias !42
  store ptr %17, ptr %i.cy, align 8, !tbaa !49, !alias.scope !55, !noalias !42
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull %8, i64 3)
          to label %bb.w unwind label %bb.cb

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !42
  %i.gc = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.cz
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.w
  %i.ge = load i64, ptr %i.cz, align 8, !tbaa !21
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !59
  %i.gg = load ptr, ptr %16, align 8, !tbaa !19, !noalias !59
  %i.gh = load i64, ptr %i.da, align 8, !tbaa !22, !noalias !59
  store i64 %i.gh, ptr %7, align 8, !tbaa !17, !alias.scope !62, !noalias !59
  store ptr %i.gg, ptr %.sroa.4.0..sroa_idx.i.i147, align 8, !tbaa !48, !alias.scope !62, !noalias !59
  store ptr null, ptr %i.db, align 8, !tbaa !49, !alias.scope !62, !noalias !59
  store i64 2, ptr %i.dc, align 8, !tbaa !17, !alias.scope !65, !noalias !59
  store ptr @.str.4, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !48, !alias.scope !65, !noalias !59
  store ptr null, ptr %i.dd, align 8, !tbaa !49, !alias.scope !65, !noalias !59
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull %7, i64 2)
          to label %bb.x unwind label %bb.cc

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !68
  %i.gi = load ptr, ptr %11, align 8, !tbaa !19, !noalias !68
  %i.gj = load i64, ptr %i.au, align 8, !tbaa !22, !noalias !68
  store i64 %i.gj, ptr %5, align 8, !tbaa !17, !alias.scope !71, !noalias !68
  store ptr %i.gi, ptr %.sroa.4.0..sroa_idx.i.i149, align 8, !tbaa !48, !alias.scope !71, !noalias !68
  store ptr null, ptr %i.de, align 8, !tbaa !49, !alias.scope !71, !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !68
  store i64 0, ptr %6, align 8, !noalias !68
  store i8 47, ptr %i.dh, align 8, !tbaa !21, !noalias !68
  store i64 1, ptr %i.dg, align 8, !tbaa !17, !noalias !68
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i3.i150, align 8, !tbaa !48, !noalias !68
  store i64 1, ptr %i.df, align 8, !tbaa !17, !alias.scope !74, !noalias !68
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i11.i151, align 8, !tbaa !48, !alias.scope !74, !noalias !68
  store ptr null, ptr %i.di, align 8, !tbaa !49, !alias.scope !74, !noalias !68
  %i.gk = load ptr, ptr %.sroa.0376.0672, align 8, !tbaa !19, !noalias !68
  %i.gl = getelementptr inbounds nuw i8, ptr %.pn392668, i64 40
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !22, !noalias !68
  store i64 %i.gm, ptr %i.dj, align 8, !tbaa !17, !alias.scope !77, !noalias !68
  store ptr %i.gk, ptr %.sroa.4.0..sroa_idx.i19.i152, align 8, !tbaa !48, !alias.scope !77, !noalias !68
  store ptr null, ptr %i.dk, align 8, !tbaa !49, !alias.scope !77, !noalias !68
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull %5, i64 3)
          to label %bb.y unwind label %bb.cd

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit160 unwind label %bb.ce

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit160: ; preds = %bb.y
  %i.gn = load ptr, ptr %i.dl, align 8, !tbaa !9  ; 8 uses
  %i.go = load ptr, ptr %i.dm, align 8, !tbaa !38
  %.not.i161 = icmp eq ptr %i.gn, %i.go
  br i1 %.not.i161, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit160
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 3 uses
  store ptr %i.gp, ptr %i.gn, align 8, !tbaa !14
  %i.gq = load ptr, ptr %i.bd, align 8, !tbaa !19 ; 2 uses
  %i.gr = load i64, ptr %i.dn, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  store i64 %i.gr, ptr %i.g, align 8, !tbaa !17
  %i.gs = icmp ugt i64 %i.gr, 15
  br i1 %i.gs, label %.noexc.i.i164, label %._crit_edge.i.i.i162

.noexc.i.i164:                                    ; preds = %bb.z
  %i.gt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.gn, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc165 unwind label %bb.ce ; 2 uses

.noexc165:                                        ; preds = %.noexc.i.i164
  store ptr %i.gt, ptr %i.gn, align 8, !tbaa !19
  %i.gu = load i64, ptr %i.g, align 8, !tbaa !17
  store i64 %i.gu, ptr %i.gp, align 8, !tbaa !21
  br label %._crit_edge.i.i.i162

._crit_edge.i.i.i162:                             ; preds = %.noexc165, %bb.z
  %i.gv = phi ptr [ %i.gt, %.noexc165 ], [ %i.gp, %bb.z ] ; 2 uses
  switch i64 %i.gr, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i163
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i162
  %i.gw = load i8, ptr %i.gq, align 1, !tbaa !21
  store i8 %i.gw, ptr %i.gv, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i163

bb.ab:                                            ; preds = %._crit_edge.i.i.i162
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr align 1 %i.gq, i64 %i.gr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i163: ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i.i162
  %i.gx = load i64, ptr %i.g, align 8, !tbaa !17  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !22
  %i.gz = load ptr, ptr %i.gn, align 8, !tbaa !19
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gx
  store i8 0, ptr %i.ha, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %i.hb = load ptr, ptr %i.dl, align 8, !tbaa !9
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  store ptr %i.hc, ptr %i.dl, align 8, !tbaa !9
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit167

bb.ac:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit160
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit167 unwind label %bb.ce

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i163, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !80
  %i.hd = load ptr, ptr %16, align 8, !tbaa !19, !noalias !80
  %i.he = load i64, ptr %i.da, align 8, !tbaa !22, !noalias !80
  store i64 %i.he, ptr %4, align 8, !tbaa !17, !alias.scope !83, !noalias !80
  store ptr %i.hd, ptr %.sroa.4.0..sroa_idx.i.i168, align 8, !tbaa !48, !alias.scope !83, !noalias !80
  store ptr null, ptr %i.do, align 8, !tbaa !49, !alias.scope !83, !noalias !80
  store i64 4, ptr %i.dp, align 8, !tbaa !17, !alias.scope !86, !noalias !80
  store ptr @.str.5, ptr %.sroa.4.0..sroa_idx.i9.i169, align 8, !tbaa !48, !alias.scope !86, !noalias !80
  store ptr null, ptr %i.dq, align 8, !tbaa !49, !alias.scope !86, !noalias !80
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr nonnull %4, i64 2)
          to label %bb.ad unwind label %bb.cf

bb.ad:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit167
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !80
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.hf = load ptr, ptr %i.bd, align 8, !tbaa !19
  %i.hg = load i64, ptr %i.dn, align 8, !tbaa !22
  store i64 %i.hg, ptr %23, align 8
  store ptr %i.hf, ptr %i.dr, align 8
  store i64 2, ptr %i.ds, align 8, !tbaa !89
  store ptr @.str.6, ptr %i.dt, align 8, !tbaa !90
  store i64 2, ptr %i.du, align 8, !tbaa !89
  store ptr @.str.7, ptr %i.dv, align 8, !tbaa !90
  %i.hh = load ptr, ptr %18, align 8, !tbaa !19
  %i.hi = load i64, ptr %i.dx, align 8, !tbaa !22
  store i64 %i.hi, ptr %i.dw, align 8
  store ptr %i.hh, ptr %i.dy, align 8
  store i64 2, ptr %i.dz, align 8, !tbaa !89
  store ptr @.str.8, ptr %i.ea, align 8, !tbaa !90
  %i.hj = load ptr, ptr %21, align 8, !tbaa !19
  %i.hk = load i64, ptr %i.ec, align 8, !tbaa !22
  store i64 %i.hk, ptr %i.eb, align 8
  store ptr %i.hj, ptr %i.ed, align 8
  %i.hl = load ptr, ptr %19, align 8, !tbaa !19
  %i.hm = load i64, ptr %i.ef, align 8, !tbaa !22
  store i64 %i.hm, ptr %i.ee, align 8
  store ptr %i.hl, ptr %i.eg, align 8
  invoke void @_Z23cmMakeSingleCommandLineSt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%class.cmCustomCommandLines) align 8 %22, ptr nonnull %23, i64 7)
          to label %bb.ae unwind label %bb.cg

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  invoke void @_ZSt11make_uniqueI15cmCustomCommandJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.167") align 8 %24)
          to label %bb.af unwind label %bb.ch

bb.af:                                            ; preds = %bb.ae
  %i.hn = load ptr, ptr %24, align 8, !tbaa !91
  %i.ho = load ptr, ptr %i.dl, align 8, !tbaa !9  ; 3 uses
  %i.hp = load ptr, ptr %20, align 8, !tbaa !13   ; 3 uses
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ho, %i.hp
  br i1 %.not.i.i.i.i, label %.noexc182, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ht = icmp ugt i64 %i.hs, 9223372036854775776
  br i1 %i.ht, label %.noexc.i.i180.invoke, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !93

.noexc.i.i180.invoke:                             ; preds = %bb.am, %bb.ag
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #21
          to label %.noexc.i.i180.cont unwind label %.loopexit.split-lp396

.noexc.i.i180.cont:                               ; preds = %.noexc.i.i180.invoke
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ag
  %i.hu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #22
          to label %.noexc182 unwind label %.loopexit395

.noexc182:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.af
  %i.hv = phi ptr [ null, %bb.af ], [ %i.hu, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.hv, ptr %25, align 8, !tbaa !13
  store ptr %i.hv, ptr %i.eh, align 8, !tbaa !9
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hs
  store ptr %i.hw, ptr %i.ei, align 8, !tbaa !38
  %i.hx = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.hp, ptr %i.ho, ptr noundef %i.hv)
          to label %bb.aj unwind label %bb.ah

bb.ah:                                            ; preds = %.noexc182
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hz = load ptr, ptr %25, align 8, !tbaa !13   ; 3 uses
  %.not.i.i.i179 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i179, label %.body, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ia = load ptr, ptr %i.ei, align 8, !tbaa !38
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hz to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.id) #20
  br label %.body

bb.aj:                                            ; preds = %.noexc182
  store ptr %i.hx, ptr %i.eh, align 8, !tbaa !9
  invoke void @_ZN15cmCustomCommand10SetDependsESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(352) %i.hn, ptr noundef nonnull align 8 %25)
          to label %bb.ak unwind label %bb.ci

bb.ak:                                            ; preds = %bb.aj
  %i.ie = load ptr, ptr %25, align 8, !tbaa !13   ; 3 uses
  %i.if = load ptr, ptr %i.eh, align 8, !tbaa !9  ; 2 uses
  %.not4.i.i.i183 = icmp eq ptr %i.ie, %i.if
  br i1 %.not4.i.i.i183, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i191, label %.lr.ph.i.i.i184

.lr.ph.i.i.i184:                                  ; preds = %bb.ak, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i187
  %.05.i.i.i185 = phi ptr [ %i.il, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i187 ], [ %i.ie, %bb.ak ] ; 3 uses
  %i.ig = load ptr, ptr %.05.i.i.i185, align 8, !tbaa !19 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.05.i.i.i185, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i186: ; preds = %.lr.ph.i.i.i184
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !21
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i187

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i187: ; preds = %.lr.ph.i.i.i184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i186
  %i.il = getelementptr inbounds nuw i8, ptr %.05.i.i.i185, i64 32 ; 2 uses
  %.not.i.i.i188 = icmp eq ptr %i.il, %i.if
end_hunk_0
begin_hunk_1_@_Z19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
    i64 1, label %bb.bc
    i64 0, label %bb.be
  ]

bb.bc:                                            ; preds = %._crit_edge.i.i219
  %i.ll = load i8, ptr %i.lf, align 1, !tbaa !21
  store i8 %i.ll, ptr %i.lk, align 1, !tbaa !21
  br label %bb.be

bb.bd:                                            ; preds = %._crit_edge.i.i219
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lk, ptr align 1 %i.lf, i64 %i.lg, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %._crit_edge.i.i219
  %i.lm = load i64, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  store i64 %i.lm, ptr %i.eq, align 8, !tbaa !22
  %i.ln = load ptr, ptr %31, align 8, !tbaa !19
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lm
  store i8 0, ptr %i.lo, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  invoke void @_ZN15cmCustomCommand10SetOutputsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(352) %i.kh, ptr noundef nonnull align 8 %31)
          to label %bb.bf unwind label %bb.cq

bb.bf:                                            ; preds = %bb.be
  %i.lp = load ptr, ptr %31, align 8, !tbaa !19   ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.ep
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %bb.bf
  %i.lr = load i64, ptr %i.ep, align 8, !tbaa !21
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
  store i64 %i.kn, ptr %32, align 8, !tbaa !91
  store ptr null, ptr %27, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %33, i8 0, i64 32, i1 false)
  invoke void @_ZN10cmMakefile24AddCustomCommandToOutputESt10unique_ptrI15cmCustomCommandSt14default_deleteIS1_EERKSt8functionIFvP12cmSourceFileEEb(ptr noundef nonnull align 8 dereferenceable(2952) %i.ai, ptr noundef nonnull align 8 %32, ptr noundef nonnull align 8 dereferenceable(32) %33, i1 noundef zeroext false)
          to label %bb.bg unwind label %bb.cr

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %i.lt = load ptr, ptr %i.er, align 8, !tbaa !103 ; 2 uses
  %.not.i226 = icmp eq ptr %i.lt, null
  br i1 %.not.i226, label %_ZNSt14_Function_baseD2Ev.exit227, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lu = invoke noundef zeroext i1 %i.lt(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %33, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit227 unwind label %bb.bi ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.lv = landingpad { ptr, i32 }
          catch ptr null
  %i.lw = extractvalue { ptr, i32 } %i.lv, 0
  call void @__clang_call_terminate(ptr %i.lw) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit227:                ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  %i.lx = load ptr, ptr %32, align 8, !tbaa !91   ; 3 uses
  %.not.i228 = icmp eq ptr %i.lx, null
  br i1 %.not.i228, label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit230, label %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i229

_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i229: ; preds = %_ZNSt14_Function_baseD2Ev.exit227
  call void @_ZN15cmCustomCommandD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %i.lx) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef 352) #20
  br label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit230

_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit230: ; preds = %_ZNSt14_Function_baseD2Ev.exit227, %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i229
  %i.ly = invoke noundef ptr @_ZNK10cmMakefile9GetSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE24cmSourceFileLocationKind(ptr noundef nonnull align 8 dereferenceable(2952) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 0)
          to label %bb.bj unwind label %.loopexit400 ; 6 uses

bb.bj:                                            ; preds = %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit230
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 280 ; 6 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !9  ; 8 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 288 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.ma, %i.mc
  br i1 %.not.i.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 16 ; 3 uses
  store ptr %i.md, ptr %i.ma, align 8, !tbaa !14
  %i.me = load ptr, ptr %18, align 8, !tbaa !19   ; 2 uses
  %i.mf = load i64, ptr %i.dx, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 %i.mf, ptr %i.d, align 8, !tbaa !17
  %i.mg = icmp ugt i64 %i.mf, 15
  br i1 %i.mg, label %.noexc.i.i.i231, label %._crit_edge.i.i.i.i

.noexc.i.i.i231:                                  ; preds = %bb.bk
  %i.mh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ma, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc232 unwind label %.loopexit400 ; 2 uses

.noexc232:                                        ; preds = %.noexc.i.i.i231
  store ptr %i.mh, ptr %i.ma, align 8, !tbaa !19
  %i.mi = load i64, ptr %i.d, align 8, !tbaa !17
  store i64 %i.mi, ptr %i.md, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc232, %bb.bk
  %i.mj = phi ptr [ %i.mh, %.noexc232 ], [ %i.md, %bb.bk ] ; 2 uses
  switch i64 %i.mf, label %bb.bm [
    i64 1, label %bb.bl
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.bl:                                            ; preds = %._crit_edge.i.i.i.i
  %i.mk = load i8, ptr %i.me, align 1, !tbaa !21
  store i8 %i.mk, ptr %i.mj, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.bm:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mj, ptr align 1 %i.me, i64 %i.mf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.bm, %bb.bl, %._crit_edge.i.i.i.i
  %i.ml = load i64, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i64 %i.ml, ptr %i.mm, align 8, !tbaa !22
  %i.mn = load ptr, ptr %i.ma, align 8, !tbaa !19
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.ml
  store i8 0, ptr %i.mo, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.mp = load ptr, ptr %i.lz, align 8, !tbaa !9
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 32 ; 2 uses
  store ptr %i.mq, ptr %i.lz, align 8, !tbaa !9
  br label %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.bn:                                            ; preds = %bb.bj
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ly, i64 272
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.mr, ptr %i.ma, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %._ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge unwind label %.loopexit400

._ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge: ; preds = %bb.bn
  %.pre = load ptr, ptr %i.lz, align 8, !tbaa !9
  br label %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.ms = phi ptr [ %.pre, %._ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge ], [ %i.mq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i ] ; 8 uses
  %i.mt = load ptr, ptr %i.mb, align 8, !tbaa !38
  %.not.i.i234 = icmp eq ptr %i.ms, %i.mt
  br i1 %.not.i.i234, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 3 uses
  store ptr %i.mu, ptr %i.ms, align 8, !tbaa !14
  %i.mv = load ptr, ptr %19, align 8, !tbaa !19   ; 2 uses
  %i.mw = load i64, ptr %i.ef, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.mw, ptr %i.c, align 8, !tbaa !17
  %i.mx = icmp ugt i64 %i.mw, 15
  br i1 %i.mx, label %.noexc.i.i.i237, label %._crit_edge.i.i.i.i235

.noexc.i.i.i237:                                  ; preds = %bb.bo
  %i.my = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ms, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc238 unwind label %.loopexit400 ; 2 uses

.noexc238:                                        ; preds = %.noexc.i.i.i237
  store ptr %i.my, ptr %i.ms, align 8, !tbaa !19
  %i.mz = load i64, ptr %i.c, align 8, !tbaa !17
  store i64 %i.mz, ptr %i.mu, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i235

._crit_edge.i.i.i.i235:                           ; preds = %.noexc238, %bb.bo
  %i.na = phi ptr [ %i.my, %.noexc238 ], [ %i.mu, %bb.bo ] ; 2 uses
  switch i64 %i.mw, label %bb.bq [
    i64 1, label %bb.bp
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i236
  ]

bb.bp:                                            ; preds = %._crit_edge.i.i.i.i235
  %i.nb = load i8, ptr %i.mv, align 1, !tbaa !21
  store i8 %i.nb, ptr %i.na, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i236

bb.bq:                                            ; preds = %._crit_edge.i.i.i.i235
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.na, ptr align 1 %i.mv, i64 %i.mw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i236: ; preds = %bb.bq, %bb.bp, %._crit_edge.i.i.i.i235
  %i.nc = load i64, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store i64 %i.nc, ptr %i.nd, align 8, !tbaa !22
  %i.ne = load ptr, ptr %i.ms, align 8, !tbaa !19
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.nc
  store i8 0, ptr %i.nf, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ng = load ptr, ptr %i.lz, align 8, !tbaa !9
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  store ptr %i.nh, ptr %i.lz, align 8, !tbaa !9
  br label %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit240

bb.br:                                            ; preds = %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ly, i64 272
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ni, ptr %i.ms, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit240 unwind label %.loopexit400

_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i236, %bb.br
  %.not.i241 = icmp eq ptr %.sroa.11.0670, %.sroa.15.0669
  br i1 %.not.i241, label %bb.bs, label %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread

_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread: ; preds = %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit240
  store ptr %i.ly, ptr %.sroa.11.0670, align 8, !tbaa !40
  %.sroa.11.2934 = getelementptr inbounds nuw i8, ptr %.sroa.11.0670, i64 8
  br label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit247

bb.bs:                                            ; preds = %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit240
  %i.nj = ptrtoint ptr %.sroa.11.0670 to i64
  %i.nk = ptrtoint ptr %.sroa.0381.0671 to i64
  %i.nl = sub i64 %i.nj, %i.nk                    ; 6 uses
  %i.nm = icmp eq i64 %i.nl, 9223372036854775800
  br i1 %i.nm, label %bb.bt, label %_ZNKSt6vectorIP12cmSourceFileSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
          to label %.noexc243 unwind label %.loopexit.split-lp401

.noexc243:                                        ; preds = %bb.bt
  unreachable

_ZNKSt6vectorIP12cmSourceFileSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bs
  %i.nn = ashr exact i64 %i.nl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.nn, i64 1)
  %i.no = add nsw i64 %.sroa.speculated.i.i.i, %i.nn ; 2 uses
  %i.np = icmp ult i64 %i.no, %i.nn
  %i.nq = call i64 @llvm.umin.i64(i64 %i.no, i64 1152921504606846975)
  %i.nr = select i1 %i.np, i64 1152921504606846975, i64 %i.nq ; 4 uses
  %.not.i.i.i242 = icmp ne i64 %i.nr, 0
  call void @llvm.assume(i1 %.not.i.i.i242)
  %i.ns = shl nuw nsw i64 %i.nr, 3
  %i.nt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ns) #22
          to label %.noexc244 unwind label %.loopexit400 ; 7 uses

.noexc244:                                        ; preds = %_ZNKSt6vectorIP12cmSourceFileSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.nu = getelementptr inbounds i8, ptr %i.nt, i64 %i.nl ; 3 uses
  store ptr %i.ly, ptr %i.nu, align 8, !tbaa !40
  %i.nv = icmp sgt i64 %i.nl, 0
  br i1 %i.nv, label %bb.bu, label %_ZNSt6vectorIP12cmSourceFileSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.bu:                                            ; preds = %.noexc244
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nt, ptr align 8 %.sroa.0381.0671, i64 %i.nl, i1 false)
  br label %_ZNSt6vectorIP12cmSourceFileSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP12cmSourceFileSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.bu, %.noexc244
  %.not.i17.i.i = icmp eq ptr %.sroa.0381.0671, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread939, label %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread939: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.nr
  %.sroa.11.2941 = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  br label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit247

_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0381.0671, i64 noundef %i.nl) #20
  %.pre774.pre = load ptr, ptr %27, align 8, !tbaa !91 ; 3 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.nr ; 2 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %i.nu, i64 8 ; 2 uses
  %.not.i245 = icmp eq ptr %.pre774.pre, null
  br i1 %.not.i245, label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit247, label %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i246

_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i246: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit
  call void @_ZN15cmCustomCommandD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %.pre774.pre) #19
  call void @_ZdlPvm(ptr noundef nonnull %.pre774.pre, i64 noundef 352) #20
  br label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit247

_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit247: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread939, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit, %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i246
  %.sroa.11.2938 = phi ptr [ %.sroa.11.2934, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread ], [ %.sroa.11.2, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.11.2, %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i246 ], [ %.sroa.11.2941, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread939 ]
  %.sroa.0381.2937 = phi ptr [ %.sroa.0381.0671, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread ], [ %i.nt, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit ], [ %i.nt, %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i246 ], [ %i.nt, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread939 ]
  %.sroa.15.2936 = phi ptr [ %.sroa.15.0669, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread ], [ %i.nx, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit ], [ %i.nx, %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i246 ], [ %i.nw, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread939 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  %i.ny = load ptr, ptr %24, align 8, !tbaa !91   ; 3 uses
  %.not.i248 = icmp eq ptr %i.ny, null
  br i1 %.not.i248, label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit250, label %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i249

_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i249: ; preds = %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit247
  call void @_ZN15cmCustomCommandD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %i.ny) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.ny, i64 noundef 352) #20
  br label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit250

_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit250: ; preds = %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit247, %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  %i.nz = load ptr, ptr %22, align 8, !tbaa !97   ; 3 uses
  %i.oa = load ptr, ptr %i.ej, align 8, !tbaa !94 ; 2 uses
  %.not4.i.i.i251 = icmp eq ptr %i.nz, %i.oa
  br i1 %.not4.i.i.i251, label %_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exit.i268, label %.lr.ph.i.i.i252

.lr.ph.i.i.i252:                                  ; preds = %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit250, %_ZSt8_DestroyI19cmCustomCommandLineEvPT_.exit.i.i.i264
  %.05.i.i.i253 = phi ptr [ %i.oq, %_ZSt8_DestroyI19cmCustomCommandLineEvPT_.exit.i.i.i264 ], [ %i.nz, %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit250 ] ; 5 uses
  %i.ob = load ptr, ptr %.05.i.i.i253, align 8, !tbaa !13 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.05.i.i.i253, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !9  ; 2 uses
  %.not4.i.i.i.i.i.i.i254 = icmp eq ptr %i.ob, %i.od
  br i1 %.not4.i.i.i.i.i.i.i254, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i262, label %.lr.ph.i.i.i.i.i.i.i255

.lr.ph.i.i.i.i.i.i.i255:                          ; preds = %.lr.ph.i.i.i252, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i258
  %.05.i.i.i.i.i.i.i256 = phi ptr [ %i.oj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i258 ], [ %i.ob, %.lr.ph.i.i.i252 ] ; 3 uses
  %i.oe = load ptr, ptr %.05.i.i.i.i.i.i.i256, align 8, !tbaa !19 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i256, i64 16 ; 2 uses
  %i.og = icmp eq ptr %i.oe, %i.of
  br i1 %i.og, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i257: ; preds = %.lr.ph.i.i.i.i.i.i.i255
  %i.oh = load i64, ptr %i.of, align 8, !tbaa !21
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.oe, i64 noundef %i.oi) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i258

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i258: ; preds = %.lr.ph.i.i.i.i.i.i.i255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i257
  %i.oj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i256, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i259 = icmp eq ptr %i.oj, %i.od
  br i1 %.not.i.i.i.i.i.i.i259, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i260, label %.lr.ph.i.i.i.i.i.i.i255, !llvm.loop !36

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i260: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i258
  %.pr.i.i.i.i.i261 = load ptr, ptr %.05.i.i.i253, align 8, !tbaa !13
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i262

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i262: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i260, %.lr.ph.i.i.i252
  %i.ok = phi ptr [ %.pr.i.i.i.i.i261, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i260 ], [ %i.ob, %.lr.ph.i.i.i252 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i263 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i1.i.i.i.i.i263, label %_ZSt8_DestroyI19cmCustomCommandLineEvPT_.exit.i.i.i264, label %bb.bv

bb.bv:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i262
  %i.ol = getelementptr inbounds nuw i8, ptr %.05.i.i.i253, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !38
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = ptrtoint ptr %i.ok to i64
  %i.op = sub i64 %i.on, %i.oo
  call void @_ZdlPvm(ptr noundef nonnull %i.ok, i64 noundef %i.op) #20
  br label %_ZSt8_DestroyI19cmCustomCommandLineEvPT_.exit.i.i.i264

_ZSt8_DestroyI19cmCustomCommandLineEvPT_.exit.i.i.i264: ; preds = %bb.bv, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i262
  %i.oq = getelementptr inbounds nuw i8, ptr %.05.i.i.i253, i64 24 ; 2 uses
  %.not.i.i.i265 = icmp eq ptr %i.oq, %i.oa
  br i1 %.not.i.i.i265, label %_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i266, label %.lr.ph.i.i.i252, !llvm.loop !99

_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i266: ; preds = %_ZSt8_DestroyI19cmCustomCommandLineEvPT_.exit.i.i.i264
  %.pr.i267 = load ptr, ptr %22, align 8, !tbaa !97
  br label %_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exit.i268

_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exit.i268: ; preds = %_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i266, %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit250
  %i.or = phi ptr [ %.pr.i267, %_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i266 ], [ %i.nz, %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit250 ] ; 3 uses
  %.not.i.i1.i269 = icmp eq ptr %i.or, null
  br i1 %.not.i.i1.i269, label %_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev.exit271, label %bb.bw

bb.bw:                                            ; preds = %_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exit.i268
  %i.os = load ptr, ptr %i.es, align 8, !tbaa !98
  %i.ot = ptrtoint ptr %i.os to i64
  %i.ou = ptrtoint ptr %i.or to i64
  %i.ov = sub i64 %i.ot, %i.ou
  call void @_ZdlPvm(ptr noundef nonnull %i.or, i64 noundef %i.ov) #20
  br label %_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev.exit271

_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev.exit271: ; preds = %_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exit.i268, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  %i.ow = load ptr, ptr %21, align 8, !tbaa !19   ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.et
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev.exit271
  %i.oy = load i64, ptr %i.et, align 8, !tbaa !21
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev.exit271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.pa = load ptr, ptr %20, align 8, !tbaa !13   ; 3 uses
  %i.pb = load ptr, ptr %i.dl, align 8, !tbaa !9  ; 2 uses
  %.not4.i.i.i275 = icmp eq ptr %i.pa, %i.pb
  br i1 %.not4.i.i.i275, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i283, label %.lr.ph.i.i.i276

.lr.ph.i.i.i276:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i279
  %.05.i.i.i277 = phi ptr [ %i.ph, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i279 ], [ %i.pa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ] ; 3 uses
  %i.pc = load ptr, ptr %.05.i.i.i277, align 8, !tbaa !19 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.05.i.i.i277, i64 16 ; 2 uses
  %i.pe = icmp eq ptr %i.pc, %i.pd
  br i1 %i.pe, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i278: ; preds = %.lr.ph.i.i.i276
  %i.pf = load i64, ptr %i.pd, align 8, !tbaa !21
  %i.pg = add i64 %i.pf, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pg) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i279

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i279: ; preds = %.lr.ph.i.i.i276, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i278
  %i.ph = getelementptr inbounds nuw i8, ptr %.05.i.i.i277, i64 32 ; 2 uses
  %.not.i.i.i280 = icmp eq ptr %i.ph, %i.pb
  br i1 %.not.i.i.i280, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i281, label %.lr.ph.i.i.i276, !llvm.loop !36

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i281: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i279
  %.pr.i282 = load ptr, ptr %20, align 8, !tbaa !13
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i283

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i283: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %i.pi = phi ptr [ %.pr.i282, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i281 ], [ %i.pa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ] ; 3 uses
  %.not.i.i1.i284 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i1.i284, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit287, label %bb.bx

bb.bx:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i283
  %i.pj = load ptr, ptr %i.dm, align 8, !tbaa !38
  %i.pk = ptrtoint ptr %i.pj to i64
  %i.pl = ptrtoint ptr %i.pi to i64
  %i.pm = sub i64 %i.pk, %i.pl
  call void @_ZdlPvm(ptr noundef nonnull %i.pi, i64 noundef %i.pm) #20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit287

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit287: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i283, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
end_hunk_1
begin_hunk_2_@_Z19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.pu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.pv = load ptr, ptr %16, align 8, !tbaa !19   ; 2 uses
  %i.pw = icmp eq ptr %i.pv, %i.ew
  br i1 %i.pw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293
  %i.px = load i64, ptr %i.ew, align 8, !tbaa !21
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.cx

bb.by:                                            ; preds = %bb.t
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.bz:                                            ; preds = %._crit_edge.i.i136
  %i.qa = landingpad { ptr, i32 }
          cleanup
  %i.qb = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.qc = icmp eq ptr %i.qb, %i.cq
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %bb.bz
  %i.qd = load i64, ptr %i.cq, align 8, !tbaa !21
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qe) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.dz

bb.ca:                                            ; preds = %.critedge109.thread
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

bb.cb:                                            ; preds = %bb.v
  %i.qg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qh = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.qi = icmp eq ptr %i.qh, %i.cz
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %bb.cb
  %i.qj = load i64, ptr %i.cz, align 8, !tbaa !21
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qh, i64 noundef %i.qk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300, %bb.ca
  %.pn86 = phi { ptr, i32 } [ %i.qf, %bb.ca ], [ %i.qg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300 ], [ %i.qg, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

bb.cd:                                            ; preds = %bb.x
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

bb.ce:                                            ; preds = %bb.ac, %.noexc.i.i164, %bb.y
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cf:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit167
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

bb.cg:                                            ; preds = %bb.ad
  %i.qp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.cv

bb.ch:                                            ; preds = %bb.ae
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit395:                                     ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt15__new_allocatorI19cmCustomCommandLineE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit397 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp396:                            ; preds = %.noexc.i.i180.invoke
  %lpad.loopexit.split-lp398 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ci:                                            ; preds = %bb.aj
  %i.qr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #19
  br label %.body

bb.cj:                                            ; preds = %bb.ap
  %i.qs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #19
  br label %.body

bb.ck:                                            ; preds = %_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev.exit
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %.body208

bb.cl:                                            ; preds = %.noexc.i220, %.noexc.i211
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

bb.cm:                                            ; preds = %bb.ax
  %i.qv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qw = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.qx = icmp eq ptr %i.qw, %i.em
  br i1 %i.qx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %bb.cm
  %i.qy = load i64, ptr %i.em, align 8, !tbaa !21
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.qz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %i.ra = landingpad { ptr, i32 }
          cleanup
  %i.rb = load ptr, ptr %i.eo, align 8, !tbaa !103 ; 2 uses
  %.not.i306 = icmp eq ptr %i.rb, null
  br i1 %.not.i306, label %_ZNSt14_Function_baseD2Ev.exit307, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rc = invoke noundef zeroext i1 %i.rb(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %30, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit307 unwind label %bb.cp ; 0 uses

bb.cp:                                            ; preds = %bb.co
  %i.rd = landingpad { ptr, i32 }
          catch ptr null
  %i.re = extractvalue { ptr, i32 } %i.rd, 0
  call void @__clang_call_terminate(ptr %i.re) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit307:                ; preds = %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

bb.cq:                                            ; preds = %bb.be
  %i.rf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rg = load ptr, ptr %31, align 8, !tbaa !19   ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.ep
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %bb.cq
  %i.ri = load i64, ptr %i.ep, align 8, !tbaa !21
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rg, i64 noundef %i.rj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %i.rk = landingpad { ptr, i32 }
          cleanup
  %i.rl = load ptr, ptr %i.er, align 8, !tbaa !103 ; 2 uses
  %.not.i311 = icmp eq ptr %i.rl, null
  br i1 %.not.i311, label %_ZNSt14_Function_baseD2Ev.exit312, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.rm = invoke noundef zeroext i1 %i.rl(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %33, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit312 unwind label %bb.ct ; 0 uses

bb.ct:                                            ; preds = %bb.cs
  %i.rn = landingpad { ptr, i32 }
          catch ptr null
  %i.ro = extractvalue { ptr, i32 } %i.rn, 0
  call void @__clang_call_terminate(ptr %i.ro) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit312:                ; preds = %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

.loopexit400:                                     ; preds = %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit230, %.noexc.i.i.i231, %bb.bn, %.noexc.i.i.i237, %bb.br, %_ZNKSt6vectorIP12cmSourceFileSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.15.0669.lcssa714 = phi ptr [ %.sroa.15.0669, %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit230 ], [ %.sroa.15.0669, %.noexc.i.i.i231 ], [ %.sroa.15.0669, %bb.bn ], [ %.sroa.15.0669, %.noexc.i.i.i237 ], [ %.sroa.15.0669, %bb.br ], [ %.sroa.11.0670, %_ZNKSt6vectorIP12cmSourceFileSaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit402 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

.loopexit.split-lp401:                            ; preds = %bb.bt
  %lpad.loopexit.split-lp403 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %bb.cq, %bb.cm, %.loopexit400, %.loopexit.split-lp401, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303, %_ZNSt14_Function_baseD2Ev.exit312, %_ZNSt14_Function_baseD2Ev.exit307, %bb.cl
  %.sroa.15.0669727 = phi ptr [ %.sroa.15.0669, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308 ], [ %.sroa.15.0669, %_ZNSt14_Function_baseD2Ev.exit312 ], [ %.sroa.15.0669, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303 ], [ %.sroa.15.0669, %bb.cl ], [ %.sroa.15.0669, %_ZNSt14_Function_baseD2Ev.exit307 ], [ %.sroa.11.0670, %.loopexit.split-lp401 ], [ %.sroa.15.0669, %bb.cm ], [ %.sroa.15.0669.lcssa714, %.loopexit400 ], [ %.sroa.15.0669, %bb.cq ]
  %.pn88 = phi { ptr, i32 } [ %i.rf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308 ], [ %i.rk, %_ZNSt14_Function_baseD2Ev.exit312 ], [ %i.qv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303 ], [ %i.qu, %bb.cl ], [ %i.ra, %_ZNSt14_Function_baseD2Ev.exit307 ], [ %lpad.loopexit.split-lp403, %.loopexit.split-lp401 ], [ %i.qv, %bb.cm ], [ %lpad.loopexit402, %.loopexit400 ], [ %i.rf, %bb.cq ]
  call void @_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #19
  br label %.body208

.body208:                                         ; preds = %bb.ck, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305
  %.sroa.15.0669726 = phi ptr [ %.sroa.15.0669727, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ], [ %.sroa.15.0669, %bb.ck ], [ %.sroa.15.0669, %bb.at ]
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ], [ %i.qt, %bb.ck ], [ %i.ki, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %.body

.body:                                            ; preds = %.loopexit395, %.loopexit.split-lp396, %bb.ai, %bb.ah, %bb.an, %bb.ao, %.body208, %bb.cj, %bb.ci
  %.sroa.15.0669724 = phi ptr [ %.sroa.15.0669726, %.body208 ], [ %.sroa.15.0669, %bb.cj ], [ %.sroa.15.0669, %bb.ci ], [ %.sroa.15.0669, %bb.ah ], [ %.sroa.15.0669, %bb.ai ], [ %.sroa.15.0669, %bb.an ], [ %.sroa.15.0669, %bb.ao ], [ %.sroa.15.0669, %.loopexit395 ], [ %.sroa.15.0669, %.loopexit.split-lp396 ]
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn, %.body208 ], [ %i.qs, %bb.cj ], [ %i.qr, %bb.ci ], [ %i.hy, %bb.ah ], [ %i.hy, %bb.ai ], [ %i.jd, %bb.an ], [ %i.jd, %bb.ao ], [ %lpad.loopexit397, %.loopexit395 ], [ %lpad.loopexit.split-lp398, %.loopexit.split-lp396 ]
  call void @_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #19
  br label %bb.cu

bb.cu:                                            ; preds = %.body, %bb.ch
  %.sroa.15.0669723 = phi ptr [ %.sroa.15.0669724, %.body ], [ %.sroa.15.0669, %bb.ch ]
  %.pn88.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn, %.body ], [ %i.qq, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #19
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cg
  %.sroa.15.0669722 = phi ptr [ %.sroa.15.0669723, %bb.cu ], [ %.sroa.15.0669, %bb.cg ] ; 2 uses
  %.pn88.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn, %bb.cu ], [ %i.qp, %bb.cg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  %i.rp = load ptr, ptr %21, align 8, !tbaa !19   ; 2 uses
  %i.rq = icmp eq ptr %i.rp, %i.et
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %bb.cv
  %i.rr = load i64, ptr %i.et, align 8, !tbaa !21
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.rp, i64 noundef %i.rs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313, %bb.cf
  %.sroa.15.0669721 = phi ptr [ %.sroa.15.0669, %bb.cf ], [ %.sroa.15.0669722, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313 ], [ %.sroa.15.0669722, %bb.cv ]
  %.pn88.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qo, %bb.cf ], [ %.pn88.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313 ], [ %.pn88.pn.pn.pn.pn, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, %bb.ce
  %.sroa.15.0669720 = phi ptr [ %.sroa.15.0669721, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315 ], [ %.sroa.15.0669, %bb.ce ] ; 2 uses
  %.pn88.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315 ], [ %i.qn, %bb.ce ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.rt = load ptr, ptr %19, align 8, !tbaa !19   ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.eu
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %bb.cw
  %i.rv = load i64, ptr %i.eu, align 8, !tbaa !21
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316, %bb.cd
  %.sroa.15.0669719 = phi ptr [ %.sroa.15.0669, %bb.cd ], [ %.sroa.15.0669720, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316 ], [ %.sroa.15.0669720, %bb.cw ] ; 2 uses
  %.pn88.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qm, %bb.cd ], [ %.pn88.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316 ], [ %.pn88.pn.pn.pn.pn.pn.pn, %bb.cw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.rx = load ptr, ptr %18, align 8, !tbaa !19   ; 2 uses
  %i.ry = icmp eq ptr %i.rx, %i.ev
  br i1 %i.ry, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
  %i.rz = load i64, ptr %i.ev, align 8, !tbaa !21
  %i.sa = add i64 %i.rz, 1
  call void @_ZdlPvm(ptr noundef %i.rx, i64 noundef %i.sa) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319, %bb.cc
  %.sroa.15.0669718 = phi ptr [ %.sroa.15.0669, %bb.cc ], [ %.sroa.15.0669719, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319 ], [ %.sroa.15.0669719, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ] ; 2 uses
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ql, %bb.cc ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.sb = load ptr, ptr %16, align 8, !tbaa !19   ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %i.ew
  br i1 %i.sc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321
  %i.sd = load i64, ptr %i.ew, align 8, !tbaa !21
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.se) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
  %.sroa.15.0669717 = phi ptr [ %.sroa.15.0669, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %.sroa.15.0669718, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322 ], [ %.sroa.15.0669718, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321 ]
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.dz

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %.critedge109
  %.sroa.15.1.a = phi ptr [ %.sroa.15.2936, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296 ], [ %.sroa.15.0669, %.critedge109 ] ; 7 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.2938, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296 ], [ %.sroa.11.0670, %.critedge109 ] ; 3 uses
  %.sroa.0381.1 = phi ptr [ %.sroa.0381.2937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296 ], [ %.sroa.0381.0671, %.critedge109 ] ; 11 uses
  %.sroa.0376.0 = getelementptr inbounds nuw i8, ptr %.sroa.0376.0672, i64 32 ; 2 uses
  %.not393 = icmp eq ptr %.sroa.0376.0, %i.cn
  br i1 %.not393, label %._crit_edge, label %bb.t

._crit_edge678:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %._crit_edge.thread, %._crit_edge
  %i.sf = phi ptr [ %i.cp, %._crit_edge.thread ], [ %i.fa, %._crit_edge ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ]
  %i.sg = phi ptr [ %i.co, %._crit_edge.thread ], [ %i.ez, %._crit_edge ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ] ; 3 uses
  %i.sh = phi i64 [ 0, %._crit_edge.thread ], [ %i.ey, %._crit_edge ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ]
  %.sroa.0381.0.lcssa923 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.0381.1, %._crit_edge ], [ %.sroa.0381.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel ], [ %.sroa.0381.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ] ; 3 uses
  %.sroa.15.0.lcssa915 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.15.1.a, %._crit_edge ], [ %.sroa.15.1.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel ], [ %.sroa.15.1.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.si = load ptr, ptr %i.bi, align 8, !tbaa !19, !noalias !105
  %i.sj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !22, !noalias !105 ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 7 uses
  store ptr %i.sl, ptr %35, align 8, !tbaa !14, !alias.scope !108
  %i.sm = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  store i64 0, ptr %i.sm, align 8, !tbaa !22, !alias.scope !108
  store i8 0, ptr %i.sl, align 8, !tbaa !21, !alias.scope !108
  %i.sn = add i64 %i.sk, 13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 noundef %i.sn)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %._crit_edge678
  %i.so = load i64, ptr %i.sm, align 8, !tbaa !22, !alias.scope !108
  %i.sp = sub i64 4611686018427387903, %i.so
  %i.sq = icmp ult i64 %i.sp, %i.sk
  br i1 %i.sq, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.cy
  %i.sr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef %i.si, i64 noundef %i.sk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.cz ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ss = load i64, ptr %i.sm, align 8, !tbaa !22, !alias.scope !108
  %i.st = add i64 %i.ss, -4611686018427387891
  %i.su = icmp ult i64 %i.st, 13
  br i1 %i.su, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.cy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.cont.i.i unwind label %bb.cz

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.sv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @.str.10, i64 noundef 13)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.cz ; 0 uses

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %._crit_edge678
  %i.sw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sx = load ptr, ptr %35, align 8, !tbaa !19, !alias.scope !108 ; 2 uses
  %i.sy = icmp eq ptr %i.sx, %i.sl
  br i1 %i.sy, label %.body325, label %.body325.sink.split

.lr.ph677.peel.next:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %.044675 = phi i64 [ %i.tm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel ] ; 2 uses
  %i.sz = load i64, ptr %i.fa, align 8, !tbaa !22
  %i.ta = icmp eq i64 %i.sz, 4611686018427387903
  br i1 %i.ta, label %.loopexit770.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.loopexit770.invoke:                              ; preds = %.lr.ph677.peel.next, %bb.da, %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.loopexit770.cont unwind label %.loopexit.split-lp

.loopexit770.cont:                                ; preds = %.loopexit770.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.lr.ph677.peel.next
  %i.tb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.9, i64 noundef 1)
          to label %.split unwind label %.loopexit.loopexit ; 0 uses

.loopexit.loopexit:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %.split
  %lpad.loopexit771 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %.split.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %lpad.loopexit.split-lp772 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit770.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.split:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0381.1, i64 %.044675
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !40
  %i.te = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN12cmSourceFile15ResolveFullPathEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(376) %i.td, ptr noundef null, ptr noundef null)
          to label %bb.da unwind label %.loopexit.loopexit ; 2 uses

bb.da:                                            ; preds = %.split
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !22 ; 2 uses
  %i.th = load i64, ptr %i.fa, align 8, !tbaa !22
  %i.ti = sub i64 4611686018427387903, %i.th
  %i.tj = icmp ult i64 %i.ti, %i.tg
  br i1 %i.tj, label %.loopexit770.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.da
  %i.tk = load ptr, ptr %i.te, align 8, !tbaa !19
  %i.tl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef %i.tk, i64 noundef %i.tg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.tm = add nuw i64 %.044675, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.tm, %i.fd
  br i1 %exitcond.not, label %._crit_edge678, label %.lr.ph677.peel.next, !llvm.loop !111

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.tn = load ptr, ptr %34, align 8, !tbaa !19
  %i.to = load i64, ptr %i.sf, align 8, !tbaa !22
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %35, i64 %i.to, ptr %i.tn)
          to label %bb.db unwind label %bb.dv

bb.db:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  %i.tp = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  store ptr %i.tp, ptr %36, align 8, !tbaa !14
  %i.tq = load ptr, ptr %i.bi, align 8, !tbaa !19 ; 2 uses
  %i.tr = load i64, ptr %i.sj, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.tr, ptr %i.b, align 8, !tbaa !17
  %i.ts = icmp ugt i64 %i.tr, 15
  br i1 %i.ts, label %.noexc.i334, label %._crit_edge.i.i333

.noexc.i334:                                      ; preds = %bb.db
  %i.tt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc335 unwind label %bb.dw ; 2 uses

.noexc335:                                        ; preds = %.noexc.i334
  store ptr %i.tt, ptr %36, align 8, !tbaa !19
  %i.tu = load i64, ptr %i.b, align 8, !tbaa !17
  store i64 %i.tu, ptr %i.tp, align 8, !tbaa !21
  br label %._crit_edge.i.i333

._crit_edge.i.i333:                               ; preds = %.noexc335, %bb.db
  %i.tv = phi ptr [ %i.tt, %.noexc335 ], [ %i.tp, %bb.db ] ; 2 uses
  switch i64 %i.tr, label %bb.dd [
    i64 1, label %bb.dc
    i64 0, label %bb.de
  ]

bb.dc:                                            ; preds = %._crit_edge.i.i333
  %i.tw = load i8, ptr %i.tq, align 1, !tbaa !21
  store i8 %i.tw, ptr %i.tv, align 1, !tbaa !21
  br label %bb.de

bb.dd:                                            ; preds = %._crit_edge.i.i333
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tv, ptr align 1 %i.tq, i64 %i.tr, i1 false)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %._crit_edge.i.i333
  %i.tx = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store i64 %i.tx, ptr %i.ty, align 8, !tbaa !22
  %i.tz = load ptr, ptr %36, align 8, !tbaa !19
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.tx
  store i8 0, ptr %i.ua, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.val = load ptr, ptr %36, align 8              ; 2 uses
  %.val110 = load i64, ptr %i.ty, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ub = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.uc = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %.noexc339 unwind label %bb.dx ; 8 uses

.noexc339:                                        ; preds = %bb.de
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16 ; 3 uses
  store ptr %i.ud, ptr %i.uc, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %.val110, ptr %i.a, align 8, !tbaa !17
  %i.ue = icmp ugt i64 %.val110, 15
  br i1 %i.ue, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %.noexc339
  %i.uf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.uc, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i unwind label %.body.i.i ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i.i.i.i
  store ptr %i.uf, ptr %i.uc, align 8, !tbaa !19
  %i.ug = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.ug, ptr %i.ud, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i.i.i, %.noexc339
  %i.uh = phi ptr [ %i.uf, %.noexc.i.i.i.i ], [ %i.ud, %.noexc339 ] ; 2 uses
  switch i64 %.val110, label %bb.dg [
    i64 1, label %bb.df
    i64 0, label %_ZN10cmMakefile15GeneratorActionC2EOSt8functionIFvR16cmLocalGeneratorRK19cmListFileBacktraceEENS_19GeneratorActionWhenE.exit.i
  ]

bb.df:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ui = load i8, ptr %.val, align 1, !tbaa !21
  store i8 %i.ui, ptr %i.uh, align 1, !tbaa !21
  br label %_ZN10cmMakefile15GeneratorActionC2EOSt8functionIFvR16cmLocalGeneratorRK19cmListFileBacktraceEENS_19GeneratorActionWhenE.exit.i

bb.dg:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uh, ptr readonly align 1 %.val, i64 %.val110, i1 false)
  br label %_ZN10cmMakefile15GeneratorActionC2EOSt8functionIFvR16cmLocalGeneratorRK19cmListFileBacktraceEENS_19GeneratorActionWhenE.exit.i

.body.i.i:                                        ; preds = %.noexc.i.i.i.i.i.i
  %i.uj = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_Z19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !103 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.uy, null
  br i1 %.not.i1.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i4.i, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit.i.i
  %i.uz = invoke noundef zeroext i1 %i.uy(ptr noundef nonnull align 8 dereferenceable(32) %i.uu, ptr noundef nonnull align 8 dereferenceable(32) %i.uu, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i4.i unwind label %bb.dl ; 0 uses

bb.dl:                                            ; preds = %bb.dk
  %i.va = landingpad { ptr, i32 }
          catch ptr null
  %i.vb = extractvalue { ptr, i32 } %i.va, 0
  call void @__clang_call_terminate(ptr %i.vb) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i4.i:              ; preds = %bb.dk, %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit.i.i
  %i.vc = load ptr, ptr %i.ut, align 8, !tbaa !103 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.vc, null
  br i1 %.not.i2.i.i, label %_ZN10cmMakefile15GeneratorActionD2Ev.exit.i, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i4.i
  %i.vd = invoke noundef zeroext i1 %i.vc(ptr noundef nonnull align 8 dereferenceable(32) %i.ur, ptr noundef nonnull align 8 dereferenceable(32) %i.ur, i32 noundef 3)
          to label %_ZN10cmMakefile15GeneratorActionD2Ev.exit.i unwind label %bb.dn ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  %i.ve = landingpad { ptr, i32 }
          catch ptr null
  %i.vf = extractvalue { ptr, i32 } %i.ve, 0
  call void @__clang_call_terminate(ptr %i.vf) #23
  unreachable

_ZN10cmMakefile15GeneratorActionD2Ev.exit.i:      ; preds = %bb.dm, %_ZNSt14_Function_baseD2Ev.exit.i4.i
  %i.vg = load ptr, ptr %i.ub, align 8, !tbaa !103 ; 2 uses
  %.not.i.i337 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i337, label %bb.dt, label %bb.do

bb.do:                                            ; preds = %_ZN10cmMakefile15GeneratorActionD2Ev.exit.i
  %i.vh = invoke noundef zeroext i1 %i.vg(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.dt unwind label %bb.dp     ; 0 uses

bb.dp:                                            ; preds = %bb.do
  %i.vi = landingpad { ptr, i32 }
          catch ptr null
  %i.vj = extractvalue { ptr, i32 } %i.vi, 0
  call void @__clang_call_terminate(ptr %i.vj) #23
  unreachable

bb.dq:                                            ; preds = %_ZN10cmMakefile15GeneratorActionC2EOSt8functionIFvR16cmLocalGeneratorRK19cmListFileBacktraceEENS_19GeneratorActionWhenE.exit.i
  %i.vk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10cmMakefile15GeneratorActionD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %2) #19
  %i.vl = load ptr, ptr %i.ub, align 8, !tbaa !103 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.vl, null
  br i1 %.not.i5.i, label %_ZNSt14_Function_baseD2Ev.exit6.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.vm = invoke noundef zeroext i1 %i.vl(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6.i unwind label %bb.ds ; 0 uses

bb.ds:                                            ; preds = %bb.dr
  %i.vn = landingpad { ptr, i32 }
          catch ptr null
  %i.vo = extractvalue { ptr, i32 } %i.vn, 0
  call void @__clang_call_terminate(ptr %i.vo) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit6.i:                ; preds = %bb.dr, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.body340

bb.dt:                                            ; preds = %bb.do, %_ZN10cmMakefile15GeneratorActionD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.vp = load ptr, ptr %36, align 8, !tbaa !19   ; 2 uses
  %i.vq = icmp eq ptr %i.vp, %i.tp
  br i1 %i.vq, label %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.dt
  %i.vr = load i64, ptr %i.tp, align 8, !tbaa !21
  %i.vs = add i64 %i.vr, 1
  call void @_ZdlPvm(ptr noundef %i.vp, i64 noundef %i.vs) #20
  br label %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit"

"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit": ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  %i.vt = load ptr, ptr %35, align 8, !tbaa !19   ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.sl
  br i1 %i.vu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit"
  %i.vv = load i64, ptr %i.sl, align 8, !tbaa !21
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vt, i64 noundef %i.vw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344: ; preds = %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  %i.vx = load ptr, ptr %34, align 8, !tbaa !19   ; 2 uses
  %i.vy = icmp eq ptr %i.vx, %i.sg
  br i1 %i.vy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344
  %i.vz = load i64, ptr %i.sg, align 8, !tbaa !21
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vx, i64 noundef %i.wa) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  %.not.i.i.i348 = icmp eq ptr %.sroa.0381.0.lcssa923, null
  br i1 %.not.i.i.i348, label %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit, label %bb.du

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347
  %i.wb = ptrtoint ptr %.sroa.15.0.lcssa915 to i64
  %i.wc = sub i64 %i.wb, %i.sh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0381.0.lcssa923, i64 noundef %i.wc) #20
  br label %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit

_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, %bb.du
  %i.wd = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.we = icmp eq ptr %i.wd, %i.bk
  br i1 %i.we, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit
  %i.wf = load i64, ptr %i.bk, align 8, !tbaa !21
  %i.wg = add i64 %i.wf, 1
  call void @_ZdlPvm(ptr noundef %i.wd, i64 noundef %i.wg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.wh = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.wi = icmp eq ptr %i.wh, %i.ak
  br i1 %i.wi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351
  %i.wj = load i64, ptr %i.ak, align 8, !tbaa !21
  %i.wk = add i64 %i.wj, 1
  call void @_ZdlPvm(ptr noundef %i.wh, i64 noundef %i.wk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ec

bb.dv:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dw:                                            ; preds = %.noexc.i334
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit357"

bb.dx:                                            ; preds = %bb.de
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %.body340

.body340:                                         ; preds = %.body.i.i, %bb.dh, %_ZNSt14_Function_baseD2Ev.exit6.i, %bb.dx
  %eh.lpad-body341 = phi { ptr, i32 } [ %i.wn, %bb.dx ], [ %i.vk, %_ZNSt14_Function_baseD2Ev.exit6.i ], [ %i.uj, %bb.dh ], [ %i.uj, %.body.i.i ] ; 2 uses
  %i.wo = load ptr, ptr %36, align 8, !tbaa !19   ; 2 uses
  %i.wp = icmp eq ptr %i.wo, %i.tp
  br i1 %i.wp, label %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit357", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355: ; preds = %.body340
  %i.wq = load i64, ptr %i.tp, align 8, !tbaa !21
  %i.wr = add i64 %i.wq, 1
  call void @_ZdlPvm(ptr noundef %i.wo, i64 noundef %i.wr) #20
  br label %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit357"

"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit357": ; preds = %.body340, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355, %bb.dw
  %.pn77 = phi { ptr, i32 } [ %i.wm, %bb.dw ], [ %eh.lpad-body341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355 ], [ %eh.lpad-body341, %.body340 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br label %bb.dy

bb.dy:                                            ; preds = %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit357", %bb.dv
  %.pn77.pn = phi { ptr, i32 } [ %.pn77, %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit357" ], [ %i.wl, %bb.dv ] ; 2 uses
  %i.ws = load ptr, ptr %35, align 8, !tbaa !19   ; 2 uses
  %i.wt = icmp eq ptr %i.ws, %i.sl
  br i1 %i.wt, label %.body325, label %.body325.sink.split

.body325.sink.split:                              ; preds = %bb.dy, %bb.cz
  %.sink = phi ptr [ %i.sx, %bb.cz ], [ %i.ws, %bb.dy ]
  %.pn77.pn.pn.ph = phi { ptr, i32 } [ %i.sw, %bb.cz ], [ %.pn77.pn, %bb.dy ]
  %i.wu = load i64, ptr %i.sl, align 8, !tbaa !21
  %i.wv = add i64 %i.wu, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.wv) #20
  br label %.body325

.body325:                                         ; preds = %.body325.sink.split, %bb.dy, %bb.cz
  %.pn77.pn.pn = phi { ptr, i32 } [ %i.sw, %bb.cz ], [ %.pn77.pn, %bb.dy ], [ %.pn77.pn.pn.ph, %.body325.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp, %.body325
  %i.ww = phi ptr [ %i.sg, %.body325 ], [ %i.ez, %.loopexit.split-lp ], [ %i.ez, %.loopexit.loopexit ], [ %i.ez, %.loopexit.loopexit.split-lp ] ; 2 uses
  %.sroa.0381.0.lcssa924 = phi ptr [ %.sroa.0381.0.lcssa923, %.body325 ], [ %.sroa.0381.1, %.loopexit.split-lp ], [ %.sroa.0381.1, %.loopexit.loopexit ], [ %.sroa.0381.1, %.loopexit.loopexit.split-lp ]
  %.sroa.15.0.lcssa916 = phi ptr [ %.sroa.15.0.lcssa915, %.body325 ], [ %.sroa.15.1.a, %.loopexit.split-lp ], [ %.sroa.15.1.a, %.loopexit.loopexit ], [ %.sroa.15.1.a, %.loopexit.loopexit.split-lp ]
  %.pn81 = phi { ptr, i32 } [ %.pn77.pn.pn, %.body325 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit771, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp772, %.loopexit.loopexit.split-lp ]
  %i.wx = load ptr, ptr %34, align 8, !tbaa !19   ; 2 uses
  %i.wy = icmp eq ptr %i.wx, %i.ww
  br i1 %i.wy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %.loopexit
  %i.wz = load i64, ptr %i.ww, align 8, !tbaa !21
  %i.xa = add i64 %i.wz, 1
  call void @_ZdlPvm(ptr noundef %i.wx, i64 noundef %i.xa) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  br label %bb.dz

bb.dz:                                            ; preds = %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %.sroa.15.0511 = phi ptr [ %.sroa.15.0.lcssa916, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ %.sroa.15.0669, %bb.by ], [ %.sroa.15.0669717, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ], [ %.sroa.15.0669, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299 ]
  %.sroa.0381.0434 = phi ptr [ %.sroa.0381.0.lcssa924, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ %.sroa.0381.0671, %bb.by ], [ %.sroa.0381.0671, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ], [ %.sroa.0381.0671, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299 ] ; 3 uses
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ %i.pz, %bb.by ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ], [ %i.qa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299 ] ; 2 uses
  %.not.i.i.i364 = icmp eq ptr %.sroa.0381.0434, null
  br i1 %.not.i.i.i364, label %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit365, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.xb = ptrtoint ptr %.sroa.15.0511 to i64
  %i.xc = ptrtoint ptr %.sroa.0381.0434 to i64
  %i.xd = sub i64 %i.xb, %i.xc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0381.0434, i64 noundef %i.xd) #20
  br label %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit365

_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit365: ; preds = %bb.ea, %bb.dz, %bb.s
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ft, %bb.s ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dz ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ea ] ; 2 uses
  %i.xe = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.xf = icmp eq ptr %i.xe, %i.bk
  br i1 %i.xf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit365
  %i.xg = load i64, ptr %i.bk, align 8, !tbaa !21
  %i.xh = add i64 %i.xg, 1
  call void @_ZdlPvm(ptr noundef %i.xe, i64 noundef %i.xh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit365, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366, %bb.r
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fs, %bb.r ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit365 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.eb

bb.eb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ]
  %i.xi = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.xj = icmp eq ptr %i.xi, %i.ak
  br i1 %i.xj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369: ; preds = %bb.eb
  %i.xk = load i64, ptr %i.ak, align 8, !tbaa !21
  %i.xl = add i64 %i.xk, 1
  call void @_ZdlPvm(ptr noundef %i.xi, i64 noundef %i.xl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ed

bb.ec:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 %i.r

bb.ed:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.pn105.pn = phi { ptr, i32 } [ %.pn105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371 ]
  resume { ptr, i32 } %.pn105.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10cmMakefile25GetCurrentSourceDirectoryB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(2952)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10cmMakefile21GetRequiredDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10cmMakefile25GetCurrentBinaryDirectoryB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(2952)) local_unnamed_addr #0

declare void @_ZN10cmMakefile21AddIncludeDirectoriesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEb(ptr noundef nonnull align 8 dereferenceable(2952), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !21
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !36

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !13
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #20
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

declare noundef ptr @_ZNK10cmMakefile9GetSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE24cmSourceFileLocationKind(ptr noundef nonnull align 8 dereferenceable(2952), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK12cmSourceFile17GetPropertyAsBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare void @_ZN5cmsys11SystemTools27GetFilenameWithoutExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare void @_Z23cmMakeSingleCommandLineSt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%class.cmCustomCommandLines) align 8, ptr, i64) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11make_uniqueI15cmCustomCommandJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.167") align 8 %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #22 ; 32 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.a, i8 0, i64 352, i1 false)
  invoke void @_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #19
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #19
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #19
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(352) %i.a) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 352) #20
  resume { ptr, i32 } %i.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 0, ptr %i.j, align 8, !tbaa !22
  store i8 0, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i64 0, ptr %i.m, align 8, !tbaa !22
  store i8 0, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i64 0, ptr %i.p, align 8, !tbaa !22
  store i8 0, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 0, ptr %i.s, align 8, !tbaa !22
  store i8 0, ptr %i.r, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i64 0, ptr %i.v, align 8, !tbaa !22
  store i8 0, ptr %i.u, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 312 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store i64 0, ptr %i.y, align 8, !tbaa !22
  store i8 0, ptr %i.x, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.z, align 8, !tbaa !127
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 332
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 340
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.aa, i8 0, i64 6, i1 false)
  store i32 2, ptr %i.ab, align 4, !tbaa !128
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i32 2, ptr %i.ac, align 8, !tbaa !148
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 348
  store i32 2, ptr %i.ad, align 4, !tbaa !149
  store ptr %i.a, ptr %0, align 8, !tbaa !91
  ret void
}

declare void @_ZN15cmCustomCommand10SetDependsESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(352), ptr noundef align 8) local_unnamed_addr #0

declare void @_ZN15cmCustomCommand15SetCommandLinesE20cmCustomCommandLines(ptr noundef nonnull align 8 dereferenceable(352), ptr noundef align 8) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
end_hunk_3
