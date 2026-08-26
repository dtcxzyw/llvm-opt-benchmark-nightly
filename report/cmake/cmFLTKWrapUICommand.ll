Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmFLTKWrapUICommand?download=true
inline.NumInlined: 661
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
          to label %bb.h unwind label %bb.r       ; 2 uses

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.bk, ptr %13, align 8, !tbaa !14
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !19 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  store i64 %i.bn, ptr %i.h, align 8, !tbaa !17
  %i.bo = icmp ugt i64 %i.bn, 15
  br i1 %i.bo, label %.noexc.i124, label %._crit_edge.i.i123

.noexc.i124:                                      ; preds = %bb.h
  %i.bp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc125 unwind label %bb.r  ; 2 uses

.noexc125:                                        ; preds = %.noexc.i124
  store ptr %i.bp, ptr %13, align 8, !tbaa !19
  %i.bq = load i64, ptr %i.h, align 8, !tbaa !17
  store i64 %i.bq, ptr %i.bk, align 8, !tbaa !21
  br label %._crit_edge.i.i123

._crit_edge.i.i123:                               ; preds = %.noexc125, %bb.h
  %i.br = phi ptr [ %i.bp, %.noexc125 ], [ %i.bk, %bb.h ] ; 2 uses
  switch i64 %i.bn, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i123
  %i.bs = load i8, ptr %i.bl, align 1, !tbaa !21
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !21
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i123
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bl, i64 %i.bn, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i123
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
  %.sroa.0376.0667 = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 2 uses
  %.not394668 = icmp eq ptr %.sroa.0376.0667, %i.cn
  br i1 %.not394668, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  %i.co = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 3 uses
  store ptr %i.co, ptr %34, align 8, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store i64 0, ptr %i.cp, align 8, !tbaa !22
  store i8 0, ptr %i.co, align 8, !tbaa !21
  br label %._crit_edge679

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
  %.sroa.4.0..sroa_idx.i.i146 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.sroa.4.0..sroa_idx.i.i148 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i3.i149 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.4.0..sroa_idx.i11.i150 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.4.0..sroa_idx.i19.i151 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i167 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4.0..sroa_idx.i9.i168 = getelementptr inbounds nuw i8, ptr %4, i64 32
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
  %i.ej = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
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
  %.not680 = icmp eq ptr %.sroa.15.1.a, %.sroa.0381.1
  br i1 %.not680, label %._crit_edge679, label %.split.peel

.split.peel:                                      ; preds = %._crit_edge
  %i.fb = ptrtoint ptr %.sroa.15.1.a to i64
  %i.fc = sub i64 %i.fb, %i.ey                    ; 2 uses
  %i.fd = ashr exact i64 %i.fc, 3
  %.pre781 = load ptr, ptr %.sroa.0381.1, align 8, !tbaa !40
  %i.fe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN12cmSourceFile15ResolveFullPathEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(376) %.pre781, ptr noundef null, ptr noundef null)
          to label %bb.o unwind label %.loopexit.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split.peel
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !22 ; 2 uses
  %i.fh = load i64, ptr %i.fa, align 8, !tbaa !22
  %i.fi = sub i64 4611686018427387903, %i.fh
  %i.fj = icmp ult i64 %i.fi, %i.fg
  br i1 %i.fj, label %.loopexit771.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.o
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !19
  %i.fl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef %i.fk, i64 noundef %i.fg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %exitcond.peel.not = icmp eq i64 %i.fc, 8
  br i1 %exitcond.peel.not, label %._crit_edge679, label %.lr.ph678.peel.next

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.q:                                             ; preds = %.noexc118
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ax
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.q
  %i.fq = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.p
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.p ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %i.fn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.eb

bb.r:                                             ; preds = %.noexc.i124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
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
  %.sroa.0376.0673 = phi ptr [ %.sroa.0376.0667, %.lr.ph ], [ %.sroa.0376.0, %bb.cx ] ; 5 uses
  %.sroa.0381.0672 = phi ptr [ null, %.lr.ph ], [ %.sroa.0381.1, %bb.cx ] ; 9 uses
  %.sroa.11.0671 = phi ptr [ %i.cm, %.lr.ph ], [ %.sroa.0376.0673, %bb.cx ]
  %.sroa.15.0670 = phi ptr [ null, %.lr.ph ], [ %.sroa.11.1, %bb.cx ] ; 7 uses
  %.pn393669 = phi ptr [ null, %.lr.ph ], [ %.sroa.15.1.a, %bb.cx ] ; 4 uses
  %i.fu = invoke noundef ptr @_ZNK10cmMakefile9GetSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE24cmSourceFileLocationKind(ptr noundef nonnull align 8 dereferenceable(2952) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0376.0673, i32 noundef 0)
          to label %bb.u unwind label %bb.by      ; 2 uses

bb.u:                                             ; preds = %bb.t
  %.not83.not = icmp eq ptr %i.fu, null
  br i1 %.not83.not, label %.critedge109.thread, label %._crit_edge.i.i135

._crit_edge.i.i135:                               ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store ptr %i.cq, ptr %15, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cq, ptr noundef nonnull align 1 dereferenceable(12) @.str.3, i64 12, i1 false)
  store i64 12, ptr %i.cr, align 8, !tbaa !22
  store i8 0, ptr %i.ex, align 4, !tbaa !21
  %i.fv = invoke noundef zeroext i1 @_ZNK12cmSourceFile17GetPropertyAsBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(376) %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.critedge unwind label %bb.bz

.critedge:                                        ; preds = %._crit_edge.i.i135
  %i.fw = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.cq
  br i1 %i.fx, label %.critedge109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %.critedge
  %i.fy = load i64, ptr %i.cq, align 8, !tbaa !21
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #20
  br label %.critedge109

.critedge109:                                     ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br i1 %i.fv, label %bb.cx, label %.critedge109.thread

.critedge109.thread:                              ; preds = %bb.u, %.critedge109
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  invoke void @_ZN5cmsys11SystemTools27GetFilenameWithoutExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0376.0673)
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
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %bb.w
  %i.ge = load i64, ptr %i.cz, align 8, !tbaa !21
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !59
  %i.gg = load ptr, ptr %16, align 8, !tbaa !19, !noalias !59
  %i.gh = load i64, ptr %i.da, align 8, !tbaa !22, !noalias !59
  store i64 %i.gh, ptr %7, align 8, !tbaa !17, !alias.scope !62, !noalias !59
  store ptr %i.gg, ptr %.sroa.4.0..sroa_idx.i.i146, align 8, !tbaa !48, !alias.scope !62, !noalias !59
  store ptr null, ptr %i.db, align 8, !tbaa !49, !alias.scope !62, !noalias !59
  store i64 2, ptr %i.dc, align 8, !tbaa !17, !alias.scope !65, !noalias !59
  store ptr @.str.4, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !48, !alias.scope !65, !noalias !59
  store ptr null, ptr %i.dd, align 8, !tbaa !49, !alias.scope !65, !noalias !59
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull %7, i64 2)
          to label %bb.x unwind label %bb.cc

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !68
  %i.gi = load ptr, ptr %11, align 8, !tbaa !19, !noalias !68
  %i.gj = load i64, ptr %i.au, align 8, !tbaa !22, !noalias !68
  store i64 %i.gj, ptr %5, align 8, !tbaa !17, !alias.scope !71, !noalias !68
  store ptr %i.gi, ptr %.sroa.4.0..sroa_idx.i.i148, align 8, !tbaa !48, !alias.scope !71, !noalias !68
  store ptr null, ptr %i.de, align 8, !tbaa !49, !alias.scope !71, !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !68
  store i64 0, ptr %6, align 8, !noalias !68
  store i8 47, ptr %i.dh, align 8, !tbaa !21, !noalias !68
  store i64 1, ptr %i.dg, align 8, !tbaa !17, !noalias !68
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i3.i149, align 8, !tbaa !48, !noalias !68
  store i64 1, ptr %i.df, align 8, !tbaa !17, !alias.scope !74, !noalias !68
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i11.i150, align 8, !tbaa !48, !alias.scope !74, !noalias !68
  store ptr null, ptr %i.di, align 8, !tbaa !49, !alias.scope !74, !noalias !68
  %i.gk = load ptr, ptr %.sroa.0376.0673, align 8, !tbaa !19, !noalias !68
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.11.0671, i64 40
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !22, !noalias !68
  store i64 %i.gm, ptr %i.dj, align 8, !tbaa !17, !alias.scope !77, !noalias !68
  store ptr %i.gk, ptr %.sroa.4.0..sroa_idx.i19.i151, align 8, !tbaa !48, !alias.scope !77, !noalias !68
  store ptr null, ptr %i.dk, align 8, !tbaa !49, !alias.scope !77, !noalias !68
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull %5, i64 3)
          to label %bb.y unwind label %bb.cd

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit159 unwind label %bb.ce

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit159: ; preds = %bb.y
  %i.gn = load ptr, ptr %i.dl, align 8, !tbaa !9  ; 8 uses
  %i.go = load ptr, ptr %i.dm, align 8, !tbaa !38
  %.not.i160 = icmp eq ptr %i.gn, %i.go
  br i1 %.not.i160, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit159
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 3 uses
  store ptr %i.gp, ptr %i.gn, align 8, !tbaa !14
  %i.gq = load ptr, ptr %i.bd, align 8, !tbaa !19 ; 2 uses
  %i.gr = load i64, ptr %i.dn, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  store i64 %i.gr, ptr %i.g, align 8, !tbaa !17
  %i.gs = icmp ugt i64 %i.gr, 15
  br i1 %i.gs, label %.noexc.i.i163, label %._crit_edge.i.i.i161

.noexc.i.i163:                                    ; preds = %bb.z
  %i.gt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.gn, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc164 unwind label %bb.ce ; 2 uses

.noexc164:                                        ; preds = %.noexc.i.i163
  store ptr %i.gt, ptr %i.gn, align 8, !tbaa !19
  %i.gu = load i64, ptr %i.g, align 8, !tbaa !17
  store i64 %i.gu, ptr %i.gp, align 8, !tbaa !21
  br label %._crit_edge.i.i.i161

._crit_edge.i.i.i161:                             ; preds = %.noexc164, %bb.z
  %i.gv = phi ptr [ %i.gt, %.noexc164 ], [ %i.gp, %bb.z ] ; 2 uses
  switch i64 %i.gr, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i162
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i161
  %i.gw = load i8, ptr %i.gq, align 1, !tbaa !21
  store i8 %i.gw, ptr %i.gv, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i162

bb.ab:                                            ; preds = %._crit_edge.i.i.i161
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr align 1 %i.gq, i64 %i.gr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i162: ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i.i161
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
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit166

bb.ac:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit159
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit166 unwind label %bb.ce

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i162, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !80
  %i.hd = load ptr, ptr %16, align 8, !tbaa !19, !noalias !80
  %i.he = load i64, ptr %i.da, align 8, !tbaa !22, !noalias !80
  store i64 %i.he, ptr %4, align 8, !tbaa !17, !alias.scope !83, !noalias !80
  store ptr %i.hd, ptr %.sroa.4.0..sroa_idx.i.i167, align 8, !tbaa !48, !alias.scope !83, !noalias !80
  store ptr null, ptr %i.do, align 8, !tbaa !49, !alias.scope !83, !noalias !80
  store i64 4, ptr %i.dp, align 8, !tbaa !17, !alias.scope !86, !noalias !80
  store ptr @.str.5, ptr %.sroa.4.0..sroa_idx.i9.i168, align 8, !tbaa !48, !alias.scope !86, !noalias !80
  store ptr null, ptr %i.dq, align 8, !tbaa !49, !alias.scope !86, !noalias !80
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr nonnull %4, i64 2)
          to label %bb.ad unwind label %bb.cf

bb.ad:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit166
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
  br i1 %.not.i.i.i.i, label %.noexc181, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ht = icmp ugt i64 %i.hs, 9223372036854775776
  br i1 %i.ht, label %.noexc.i.i179.invoke, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !93

.noexc.i.i179.invoke:                             ; preds = %bb.am, %bb.ag
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #21
          to label %.noexc.i.i179.cont unwind label %.loopexit.split-lp397

.noexc.i.i179.cont:                               ; preds = %.noexc.i.i179.invoke
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ag
  %i.hu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #22
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc181_crit_edge unwind label %.loopexit396

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc181_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %20, align 8, !tbaa !39
  %.pre775 = load ptr, ptr %i.dl, align 8, !tbaa !39
  br label %.noexc181

.noexc181:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc181_crit_edge, %bb.af
  %i.hv = phi ptr [ %i.ho, %bb.af ], [ %.pre775, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc181_crit_edge ]
  %i.hw = phi ptr [ %i.hp, %bb.af ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc181_crit_edge ]
  %i.hx = phi ptr [ null, %bb.af ], [ %i.hu, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc181_crit_edge ] ; 4 uses
  store ptr %i.hx, ptr %25, align 8, !tbaa !13
  store ptr %i.hx, ptr %i.eh, align 8, !tbaa !9
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hs
  store ptr %i.hy, ptr %i.ei, align 8, !tbaa !38
  %i.hz = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.hw, ptr %i.hv, ptr noundef %i.hx)
          to label %bb.aj unwind label %bb.ah

bb.ah:                                            ; preds = %.noexc181
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ib = load ptr, ptr %25, align 8, !tbaa !13   ; 3 uses
  %.not.i.i.i178 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i178, label %.body, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ic = load ptr, ptr %i.ei, align 8, !tbaa !38
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ib to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef %i.if) #20
  br label %.body

bb.aj:                                            ; preds = %.noexc181
  store ptr %i.hz, ptr %i.eh, align 8, !tbaa !9
  invoke void @_ZN15cmCustomCommand10SetDependsESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(352) %i.hn, ptr noundef nonnull align 8 %25)
          to label %bb.ak unwind label %bb.ci

bb.ak:                                            ; preds = %bb.aj
  %i.ig = load ptr, ptr %25, align 8, !tbaa !13   ; 3 uses
  %i.ih = load ptr, ptr %i.eh, align 8, !tbaa !9  ; 2 uses
  %.not4.i.i.i182 = icmp eq ptr %i.ig, %i.ih
  br i1 %.not4.i.i.i182, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i190, label %.lr.ph.i.i.i183

.lr.ph.i.i.i183:                                  ; preds = %bb.ak, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i186
  %.05.i.i.i184 = phi ptr [ %i.in, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i186 ], [ %i.ig, %bb.ak ] ; 3 uses
  %i.ii = load ptr, ptr %.05.i.i.i184, align 8, !tbaa !19 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.05.i.i.i184, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i185: ; preds = %.lr.ph.i.i.i183
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !21
end_hunk_0
begin_hunk_1_@_Z19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
    i64 1, label %bb.bc
    i64 0, label %bb.be
  ]

bb.bc:                                            ; preds = %._crit_edge.i.i218
  %i.lp = load i8, ptr %i.lj, align 1, !tbaa !21
  store i8 %i.lp, ptr %i.lo, align 1, !tbaa !21
  br label %bb.be

bb.bd:                                            ; preds = %._crit_edge.i.i218
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lo, ptr align 1 %i.lj, i64 %i.lk, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %._crit_edge.i.i218
  %i.lq = load i64, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  store i64 %i.lq, ptr %i.eq, align 8, !tbaa !22
  %i.lr = load ptr, ptr %31, align 8, !tbaa !19
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lq
  store i8 0, ptr %i.ls, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  invoke void @_ZN15cmCustomCommand10SetOutputsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(352) %i.kl, ptr noundef nonnull align 8 %31)
          to label %bb.bf unwind label %bb.cq

bb.bf:                                            ; preds = %bb.be
  %i.lt = load ptr, ptr %31, align 8, !tbaa !19   ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.ep
  br i1 %i.lu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %bb.bf
  %i.lv = load i64, ptr %i.ep, align 8, !tbaa !21
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  store i64 %i.kr, ptr %32, align 8, !tbaa !91
  store ptr null, ptr %27, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %33, i8 0, i64 32, i1 false)
  invoke void @_ZN10cmMakefile24AddCustomCommandToOutputESt10unique_ptrI15cmCustomCommandSt14default_deleteIS1_EERKSt8functionIFvP12cmSourceFileEEb(ptr noundef nonnull align 8 dereferenceable(2952) %i.ai, ptr noundef nonnull align 8 %32, ptr noundef nonnull align 8 dereferenceable(32) %33, i1 noundef zeroext false)
          to label %bb.bg unwind label %bb.cr

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.lx = load ptr, ptr %i.er, align 8, !tbaa !104 ; 2 uses
  %.not.i225 = icmp eq ptr %i.lx, null
  br i1 %.not.i225, label %_ZNSt14_Function_baseD2Ev.exit226, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ly = invoke noundef zeroext i1 %i.lx(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %33, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit226 unwind label %bb.bi ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  call void @__clang_call_terminate(ptr %i.ma) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit226:                ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  %i.mb = load ptr, ptr %32, align 8, !tbaa !91   ; 3 uses
  %.not.i227 = icmp eq ptr %i.mb, null
  br i1 %.not.i227, label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit229, label %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i228

_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i228: ; preds = %_ZNSt14_Function_baseD2Ev.exit226
  call void @_ZN15cmCustomCommandD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %i.mb) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.mb, i64 noundef 352) #20
  br label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit229

_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit229: ; preds = %_ZNSt14_Function_baseD2Ev.exit226, %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i228
  %i.mc = invoke noundef ptr @_ZNK10cmMakefile9GetSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE24cmSourceFileLocationKind(ptr noundef nonnull align 8 dereferenceable(2952) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 0)
          to label %bb.bj unwind label %.loopexit401 ; 6 uses

bb.bj:                                            ; preds = %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit229
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 280 ; 6 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !9  ; 8 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 288 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.me, %i.mg
  br i1 %.not.i.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 3 uses
  store ptr %i.mh, ptr %i.me, align 8, !tbaa !14
  %i.mi = load ptr, ptr %18, align 8, !tbaa !19   ; 2 uses
  %i.mj = load i64, ptr %i.dx, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 %i.mj, ptr %i.d, align 8, !tbaa !17
  %i.mk = icmp ugt i64 %i.mj, 15
  br i1 %i.mk, label %.noexc.i.i.i230, label %._crit_edge.i.i.i.i

.noexc.i.i.i230:                                  ; preds = %bb.bk
  %i.ml = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.me, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc231 unwind label %.loopexit401 ; 2 uses

.noexc231:                                        ; preds = %.noexc.i.i.i230
  store ptr %i.ml, ptr %i.me, align 8, !tbaa !19
  %i.mm = load i64, ptr %i.d, align 8, !tbaa !17
  store i64 %i.mm, ptr %i.mh, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc231, %bb.bk
  %i.mn = phi ptr [ %i.ml, %.noexc231 ], [ %i.mh, %bb.bk ] ; 2 uses
  switch i64 %i.mj, label %bb.bm [
    i64 1, label %bb.bl
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.bl:                                            ; preds = %._crit_edge.i.i.i.i
  %i.mo = load i8, ptr %i.mi, align 1, !tbaa !21
  store i8 %i.mo, ptr %i.mn, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.bm:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mn, ptr align 1 %i.mi, i64 %i.mj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.bm, %bb.bl, %._crit_edge.i.i.i.i
  %i.mp = load i64, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store i64 %i.mp, ptr %i.mq, align 8, !tbaa !22
  %i.mr = load ptr, ptr %i.me, align 8, !tbaa !19
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mp
  store i8 0, ptr %i.ms, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.mt = load ptr, ptr %i.md, align 8, !tbaa !9
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 32 ; 2 uses
  store ptr %i.mu, ptr %i.md, align 8, !tbaa !9
  br label %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.bn:                                            ; preds = %bb.bj
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mc, i64 272
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.mv, ptr %i.me, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %._ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge unwind label %.loopexit401

._ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge: ; preds = %bb.bn
  %.pre778 = load ptr, ptr %i.md, align 8, !tbaa !9
  br label %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.mw = phi ptr [ %.pre778, %._ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit_crit_edge ], [ %i.mu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i ] ; 8 uses
  %i.mx = load ptr, ptr %i.mf, align 8, !tbaa !38
  %.not.i.i233 = icmp eq ptr %i.mw, %i.mx
  br i1 %.not.i.i233, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 16 ; 3 uses
  store ptr %i.my, ptr %i.mw, align 8, !tbaa !14
  %i.mz = load ptr, ptr %19, align 8, !tbaa !19   ; 2 uses
  %i.na = load i64, ptr %i.ef, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.na, ptr %i.c, align 8, !tbaa !17
  %i.nb = icmp ugt i64 %i.na, 15
  br i1 %i.nb, label %.noexc.i.i.i236, label %._crit_edge.i.i.i.i234

.noexc.i.i.i236:                                  ; preds = %bb.bo
  %i.nc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.mw, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc237 unwind label %.loopexit401 ; 2 uses

.noexc237:                                        ; preds = %.noexc.i.i.i236
  store ptr %i.nc, ptr %i.mw, align 8, !tbaa !19
  %i.nd = load i64, ptr %i.c, align 8, !tbaa !17
  store i64 %i.nd, ptr %i.my, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i234

._crit_edge.i.i.i.i234:                           ; preds = %.noexc237, %bb.bo
  %i.ne = phi ptr [ %i.nc, %.noexc237 ], [ %i.my, %bb.bo ] ; 2 uses
  switch i64 %i.na, label %bb.bq [
    i64 1, label %bb.bp
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i235
  ]

bb.bp:                                            ; preds = %._crit_edge.i.i.i.i234
  %i.nf = load i8, ptr %i.mz, align 1, !tbaa !21
  store i8 %i.nf, ptr %i.ne, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i235

bb.bq:                                            ; preds = %._crit_edge.i.i.i.i234
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ne, ptr align 1 %i.mz, i64 %i.na, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i235: ; preds = %bb.bq, %bb.bp, %._crit_edge.i.i.i.i234
  %i.ng = load i64, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store i64 %i.ng, ptr %i.nh, align 8, !tbaa !22
  %i.ni = load ptr, ptr %i.mw, align 8, !tbaa !19
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.ng
  store i8 0, ptr %i.nj, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.nk = load ptr, ptr %i.md, align 8, !tbaa !9
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  store ptr %i.nl, ptr %i.md, align 8, !tbaa !9
  br label %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit239

bb.br:                                            ; preds = %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mc, i64 272
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.nm, ptr %i.mw, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit239 unwind label %.loopexit401

_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i235, %bb.br
  %.not.i240 = icmp eq ptr %.pn393669, %.sroa.15.0670
  br i1 %.not.i240, label %bb.bs, label %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread

_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread: ; preds = %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit239
  store ptr %i.mc, ptr %.pn393669, align 8, !tbaa !40
  %.sroa.11.2943 = getelementptr inbounds nuw i8, ptr %.pn393669, i64 8
  br label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit246

bb.bs:                                            ; preds = %_ZN12cmSourceFile9AddDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit239
  %i.nn = ptrtoint ptr %.sroa.15.0670 to i64
  %i.no = ptrtoint ptr %.sroa.0381.0672 to i64
  %i.np = sub i64 %i.nn, %i.no                    ; 6 uses
  %i.nq = icmp eq i64 %i.np, 9223372036854775800
  br i1 %i.nq, label %bb.bt, label %_ZNKSt6vectorIP12cmSourceFileSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
          to label %.noexc242 unwind label %.loopexit.split-lp402

.noexc242:                                        ; preds = %bb.bt
  unreachable

_ZNKSt6vectorIP12cmSourceFileSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bs
  %i.nr = ashr exact i64 %i.np, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.nr, i64 1)
  %i.ns = add nsw i64 %.sroa.speculated.i.i.i, %i.nr ; 2 uses
  %i.nt = icmp ult i64 %i.ns, %i.nr
  %i.nu = call i64 @llvm.umin.i64(i64 %i.ns, i64 1152921504606846975)
  %i.nv = select i1 %i.nt, i64 1152921504606846975, i64 %i.nu ; 4 uses
  %.not.i.i.i241 = icmp ne i64 %i.nv, 0
  call void @llvm.assume(i1 %.not.i.i.i241)
  %i.nw = shl nuw nsw i64 %i.nv, 3
  %i.nx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nw) #22
          to label %.noexc243 unwind label %.loopexit401 ; 7 uses

.noexc243:                                        ; preds = %_ZNKSt6vectorIP12cmSourceFileSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 %i.np ; 3 uses
  store ptr %i.mc, ptr %i.ny, align 8, !tbaa !40
  %i.nz = icmp sgt i64 %i.np, 0
  br i1 %i.nz, label %bb.bu, label %_ZNSt6vectorIP12cmSourceFileSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.bu:                                            ; preds = %.noexc243
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nx, ptr align 8 %.sroa.0381.0672, i64 %i.np, i1 false)
  br label %_ZNSt6vectorIP12cmSourceFileSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP12cmSourceFileSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.bu, %.noexc243
  %.not.i17.i.i = icmp eq ptr %.sroa.0381.0672, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread948, label %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread948: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.nv
  %.sroa.11.2950 = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  br label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit246

_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0381.0672, i64 noundef %i.np) #20
  %.pre779.pre = load ptr, ptr %27, align 8, !tbaa !91 ; 3 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.nv ; 2 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 2 uses
  %.not.i244 = icmp eq ptr %.pre779.pre, null
  br i1 %.not.i244, label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit246, label %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i245

_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i245: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit
  call void @_ZN15cmCustomCommandD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %.pre779.pre) #19
  call void @_ZdlPvm(ptr noundef nonnull %.pre779.pre, i64 noundef 352) #20
  br label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit246

_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit246: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread948, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit, %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i245
  %.sroa.11.2947 = phi ptr [ %.sroa.11.2943, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread ], [ %.sroa.11.2, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.11.2, %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i245 ], [ %.sroa.11.2950, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread948 ]
  %.sroa.0381.2946 = phi ptr [ %.sroa.0381.0672, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread ], [ %i.nx, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit ], [ %i.nx, %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i245 ], [ %i.nx, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread948 ]
  %.sroa.15.2945 = phi ptr [ %.sroa.15.0670, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread ], [ %i.ob, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit ], [ %i.ob, %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i245 ], [ %i.oa, %_ZNSt6vectorIP12cmSourceFileSaIS1_EE9push_backERKS1_.exit.thread948 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  %i.oc = load ptr, ptr %24, align 8, !tbaa !91   ; 3 uses
  %.not.i247 = icmp eq ptr %i.oc, null
  br i1 %.not.i247, label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit249, label %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i248

_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i248: ; preds = %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit246
  call void @_ZN15cmCustomCommandD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %i.oc) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.oc, i64 noundef 352) #20
  br label %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit249

_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit249: ; preds = %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit246, %_ZNKSt14default_deleteI15cmCustomCommandEclEPS0_.exit.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  %i.od = load ptr, ptr %22, align 8, !tbaa !97   ; 3 uses
  %i.oe = load ptr, ptr %i.ej, align 8, !tbaa !94 ; 2 uses
  %.not4.i.i.i250 = icmp eq ptr %i.od, %i.oe
  br i1 %.not4.i.i.i250, label %_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exit.i267, label %.lr.ph.i.i.i251

.lr.ph.i.i.i251:                                  ; preds = %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit249, %_ZSt8_DestroyI19cmCustomCommandLineEvPT_.exit.i.i.i263
  %.05.i.i.i252 = phi ptr [ %i.ou, %_ZSt8_DestroyI19cmCustomCommandLineEvPT_.exit.i.i.i263 ], [ %i.od, %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit249 ] ; 5 uses
  %i.of = load ptr, ptr %.05.i.i.i252, align 8, !tbaa !13 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.05.i.i.i252, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !9  ; 2 uses
  %.not4.i.i.i.i.i.i.i253 = icmp eq ptr %i.of, %i.oh
  br i1 %.not4.i.i.i.i.i.i.i253, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i261, label %.lr.ph.i.i.i.i.i.i.i254

.lr.ph.i.i.i.i.i.i.i254:                          ; preds = %.lr.ph.i.i.i251, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i257
  %.05.i.i.i.i.i.i.i255 = phi ptr [ %i.on, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i257 ], [ %i.of, %.lr.ph.i.i.i251 ] ; 3 uses
  %i.oi = load ptr, ptr %.05.i.i.i.i.i.i.i255, align 8, !tbaa !19 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i255, i64 16 ; 2 uses
  %i.ok = icmp eq ptr %i.oi, %i.oj
  br i1 %i.ok, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i256: ; preds = %.lr.ph.i.i.i.i.i.i.i254
  %i.ol = load i64, ptr %i.oj, align 8, !tbaa !21
  %i.om = add i64 %i.ol, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.om) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i257

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i257: ; preds = %.lr.ph.i.i.i.i.i.i.i254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i256
  %i.on = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i255, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i258 = icmp eq ptr %i.on, %i.oh
  br i1 %.not.i.i.i.i.i.i.i258, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i259, label %.lr.ph.i.i.i.i.i.i.i254, !llvm.loop !36

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i259: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i257
  %.pr.i.i.i.i.i260 = load ptr, ptr %.05.i.i.i252, align 8, !tbaa !13
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i261

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i261: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i259, %.lr.ph.i.i.i251
  %i.oo = phi ptr [ %.pr.i.i.i.i.i260, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i259 ], [ %i.of, %.lr.ph.i.i.i251 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i262 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i1.i.i.i.i.i262, label %_ZSt8_DestroyI19cmCustomCommandLineEvPT_.exit.i.i.i263, label %bb.bv

bb.bv:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i261
  %i.op = getelementptr inbounds nuw i8, ptr %.05.i.i.i252, i64 16
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !38
  %i.or = ptrtoint ptr %i.oq to i64
  %i.os = ptrtoint ptr %i.oo to i64
  %i.ot = sub i64 %i.or, %i.os
  call void @_ZdlPvm(ptr noundef nonnull %i.oo, i64 noundef %i.ot) #20
  br label %_ZSt8_DestroyI19cmCustomCommandLineEvPT_.exit.i.i.i263

_ZSt8_DestroyI19cmCustomCommandLineEvPT_.exit.i.i.i263: ; preds = %bb.bv, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i261
  %i.ou = getelementptr inbounds nuw i8, ptr %.05.i.i.i252, i64 24 ; 2 uses
  %.not.i.i.i264 = icmp eq ptr %i.ou, %i.oe
  br i1 %.not.i.i.i264, label %_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i265, label %.lr.ph.i.i.i251, !llvm.loop !100

_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i265: ; preds = %_ZSt8_DestroyI19cmCustomCommandLineEvPT_.exit.i.i.i263
  %.pr.i266 = load ptr, ptr %22, align 8, !tbaa !97
  br label %_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exit.i267

_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exit.i267: ; preds = %_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i265, %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit249
  %i.ov = phi ptr [ %.pr.i266, %_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i265 ], [ %i.od, %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit249 ] ; 3 uses
  %.not.i.i1.i268 = icmp eq ptr %i.ov, null
  br i1 %.not.i.i1.i268, label %_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev.exit270, label %bb.bw

bb.bw:                                            ; preds = %_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exit.i267
  %i.ow = load ptr, ptr %i.es, align 8, !tbaa !99
  %i.ox = ptrtoint ptr %i.ow to i64
  %i.oy = ptrtoint ptr %i.ov to i64
  %i.oz = sub i64 %i.ox, %i.oy
  call void @_ZdlPvm(ptr noundef nonnull %i.ov, i64 noundef %i.oz) #20
  br label %_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev.exit270

_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev.exit270: ; preds = %_ZSt8_DestroyIP19cmCustomCommandLineS0_EvT_S2_RSaIT0_E.exit.i267, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  %i.pa = load ptr, ptr %21, align 8, !tbaa !19   ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.et
  br i1 %i.pb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271: ; preds = %_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev.exit270
  %i.pc = load i64, ptr %i.et, align 8, !tbaa !21
  %i.pd = add i64 %i.pc, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273: ; preds = %_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev.exit270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.pe = load ptr, ptr %20, align 8, !tbaa !13   ; 3 uses
  %i.pf = load ptr, ptr %i.dl, align 8, !tbaa !9  ; 2 uses
  %.not4.i.i.i274 = icmp eq ptr %i.pe, %i.pf
  br i1 %.not4.i.i.i274, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i282, label %.lr.ph.i.i.i275

.lr.ph.i.i.i275:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i278
  %.05.i.i.i276 = phi ptr [ %i.pl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i278 ], [ %i.pe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273 ] ; 3 uses
  %i.pg = load ptr, ptr %.05.i.i.i276, align 8, !tbaa !19 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.05.i.i.i276, i64 16 ; 2 uses
  %i.pi = icmp eq ptr %i.pg, %i.ph
  br i1 %i.pi, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i277: ; preds = %.lr.ph.i.i.i275
  %i.pj = load i64, ptr %i.ph, align 8, !tbaa !21
  %i.pk = add i64 %i.pj, 1
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pk) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i278

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i278: ; preds = %.lr.ph.i.i.i275, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i277
  %i.pl = getelementptr inbounds nuw i8, ptr %.05.i.i.i276, i64 32 ; 2 uses
  %.not.i.i.i279 = icmp eq ptr %i.pl, %i.pf
  br i1 %.not.i.i.i279, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i280, label %.lr.ph.i.i.i275, !llvm.loop !36

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i280: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i278
  %.pr.i281 = load ptr, ptr %20, align 8, !tbaa !13
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i282

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i282: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i280, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273
  %i.pm = phi ptr [ %.pr.i281, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i280 ], [ %i.pe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273 ] ; 3 uses
  %.not.i.i1.i283 = icmp eq ptr %i.pm, null
  br i1 %.not.i.i1.i283, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit286, label %bb.bx

bb.bx:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i282
  %i.pn = load ptr, ptr %i.dm, align 8, !tbaa !38
  %i.po = ptrtoint ptr %i.pn to i64
  %i.pp = ptrtoint ptr %i.pm to i64
  %i.pq = sub i64 %i.po, %i.pp
  call void @_ZdlPvm(ptr noundef nonnull %i.pm, i64 noundef %i.pq) #20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit286

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit286: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i282, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
end_hunk_1
begin_hunk_2_@_Z19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.pz = load ptr, ptr %16, align 8, !tbaa !19   ; 2 uses
  %i.qa = icmp eq ptr %i.pz, %i.ew
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292
  %i.qb = load i64, ptr %i.ew, align 8, !tbaa !21
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.cx

bb.by:                                            ; preds = %bb.t
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.bz:                                            ; preds = %._crit_edge.i.i135
  %i.qe = landingpad { ptr, i32 }
          cleanup
  %i.qf = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.qg = icmp eq ptr %i.qf, %i.cq
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296: ; preds = %bb.bz
  %i.qh = load i64, ptr %i.cq, align 8, !tbaa !21
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.dz

bb.ca:                                            ; preds = %.critedge109.thread
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

bb.cb:                                            ; preds = %bb.v
  %i.qk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ql = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.qm = icmp eq ptr %i.ql, %i.cz
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299: ; preds = %bb.cb
  %i.qn = load i64, ptr %i.cz, align 8, !tbaa !21
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qo) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299, %bb.ca
  %.pn86 = phi { ptr, i32 } [ %i.qj, %bb.ca ], [ %i.qk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299 ], [ %i.qk, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

bb.cd:                                            ; preds = %bb.x
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

bb.ce:                                            ; preds = %bb.ac, %.noexc.i.i163, %bb.y
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cf:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit166
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

bb.cg:                                            ; preds = %bb.ad
  %i.qt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.cv

bb.ch:                                            ; preds = %bb.ae
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit396:                                     ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt15__new_allocatorI19cmCustomCommandLineE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit398 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp397:                            ; preds = %.noexc.i.i179.invoke
  %lpad.loopexit.split-lp399 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ci:                                            ; preds = %bb.aj
  %i.qv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #19
  br label %.body

bb.cj:                                            ; preds = %bb.ap
  %i.qw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #19
  br label %.body

bb.ck:                                            ; preds = %_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev.exit
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %.body207

bb.cl:                                            ; preds = %.noexc.i219, %.noexc.i210
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

bb.cm:                                            ; preds = %bb.ax
  %i.qz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ra = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.em
  br i1 %i.rb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302: ; preds = %bb.cm
  %i.rc = load i64, ptr %i.em, align 8, !tbaa !21
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.rd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.re = landingpad { ptr, i32 }
          cleanup
  %i.rf = load ptr, ptr %i.eo, align 8, !tbaa !104 ; 2 uses
  %.not.i305 = icmp eq ptr %i.rf, null
  br i1 %.not.i305, label %_ZNSt14_Function_baseD2Ev.exit306, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rg = invoke noundef zeroext i1 %i.rf(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %30, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit306 unwind label %bb.cp ; 0 uses

bb.cp:                                            ; preds = %bb.co
  %i.rh = landingpad { ptr, i32 }
          catch ptr null
  %i.ri = extractvalue { ptr, i32 } %i.rh, 0
  call void @__clang_call_terminate(ptr %i.ri) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit306:                ; preds = %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

bb.cq:                                            ; preds = %bb.be
  %i.rj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rk = load ptr, ptr %31, align 8, !tbaa !19   ; 2 uses
  %i.rl = icmp eq ptr %i.rk, %i.ep
  br i1 %i.rl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307: ; preds = %bb.cq
  %i.rm = load i64, ptr %i.ep, align 8, !tbaa !21
  %i.rn = add i64 %i.rm, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.rn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.ro = landingpad { ptr, i32 }
          cleanup
  %i.rp = load ptr, ptr %i.er, align 8, !tbaa !104 ; 2 uses
  %.not.i310 = icmp eq ptr %i.rp, null
  br i1 %.not.i310, label %_ZNSt14_Function_baseD2Ev.exit311, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.rq = invoke noundef zeroext i1 %i.rp(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %33, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit311 unwind label %bb.ct ; 0 uses

bb.ct:                                            ; preds = %bb.cs
  %i.rr = landingpad { ptr, i32 }
          catch ptr null
  %i.rs = extractvalue { ptr, i32 } %i.rr, 0
  call void @__clang_call_terminate(ptr %i.rs) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit311:                ; preds = %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

.loopexit401:                                     ; preds = %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit229, %.noexc.i.i.i230, %bb.bn, %.noexc.i.i.i236, %bb.br, %_ZNKSt6vectorIP12cmSourceFileSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit403 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

.loopexit.split-lp402:                            ; preds = %bb.bt
  %lpad.loopexit.split-lp404 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304: ; preds = %bb.cq, %bb.cm, %.loopexit401, %.loopexit.split-lp402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302, %_ZNSt14_Function_baseD2Ev.exit311, %_ZNSt14_Function_baseD2Ev.exit306, %bb.cl
  %.pn88 = phi { ptr, i32 } [ %i.rj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307 ], [ %i.ro, %_ZNSt14_Function_baseD2Ev.exit311 ], [ %i.qz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302 ], [ %i.qy, %bb.cl ], [ %i.re, %_ZNSt14_Function_baseD2Ev.exit306 ], [ %lpad.loopexit.split-lp404, %.loopexit.split-lp402 ], [ %i.qz, %bb.cm ], [ %lpad.loopexit403, %.loopexit401 ], [ %i.rj, %bb.cq ]
  call void @_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #19
  br label %.body207

.body207:                                         ; preds = %bb.ck, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304 ], [ %i.qx, %bb.ck ], [ %i.km, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %.body

.body:                                            ; preds = %.loopexit396, %.loopexit.split-lp397, %bb.ai, %bb.ah, %bb.an, %bb.ao, %.body207, %bb.cj, %bb.ci
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn, %.body207 ], [ %i.qw, %bb.cj ], [ %i.qv, %bb.ci ], [ %i.ia, %bb.ah ], [ %i.ia, %bb.ai ], [ %i.jh, %bb.an ], [ %i.jh, %bb.ao ], [ %lpad.loopexit398, %.loopexit396 ], [ %lpad.loopexit.split-lp399, %.loopexit.split-lp397 ]
  call void @_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #19
  br label %bb.cu

bb.cu:                                            ; preds = %.body, %bb.ch
  %.pn88.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn, %.body ], [ %i.qu, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @_ZNSt6vectorI19cmCustomCommandLineSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #19
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cg
  %.pn88.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn, %bb.cu ], [ %i.qt, %bb.cg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  %i.rt = load ptr, ptr %21, align 8, !tbaa !19   ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.et
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %bb.cv
  %i.rv = load i64, ptr %i.et, align 8, !tbaa !21
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312, %bb.cf
  %.pn88.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qs, %bb.cf ], [ %.pn88.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312 ], [ %.pn88.pn.pn.pn.pn, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %bb.ce
  %.pn88.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %i.qr, %bb.ce ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.rx = load ptr, ptr %19, align 8, !tbaa !19   ; 2 uses
  %i.ry = icmp eq ptr %i.rx, %i.eu
  br i1 %i.ry, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315: ; preds = %bb.cw
  %i.rz = load i64, ptr %i.eu, align 8, !tbaa !21
  %i.sa = add i64 %i.rz, 1
  call void @_ZdlPvm(ptr noundef %i.rx, i64 noundef %i.sa) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315, %bb.cd
  %.pn88.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qq, %bb.cd ], [ %.pn88.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315 ], [ %.pn88.pn.pn.pn.pn.pn.pn, %bb.cw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.sb = load ptr, ptr %18, align 8, !tbaa !19   ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %i.ev
  br i1 %i.sc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317
  %i.sd = load i64, ptr %i.ev, align 8, !tbaa !21
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.se) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318, %bb.cc
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qp, %bb.cc ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.sf = load ptr, ptr %16, align 8, !tbaa !19   ; 2 uses
  %i.sg = icmp eq ptr %i.sf, %i.ew
  br i1 %i.sg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
  %i.sh = load i64, ptr %i.ew, align 8, !tbaa !21
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.si) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.dz

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, %.critedge109
  %.sroa.15.1.a = phi ptr [ %.sroa.11.2947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ], [ %.pn393669, %.critedge109 ] ; 3 uses
  %.sroa.11.1 = phi ptr [ %.sroa.15.2945, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ], [ %.sroa.15.0670, %.critedge109 ] ; 7 uses
  %.sroa.0381.1 = phi ptr [ %.sroa.0381.2946, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ], [ %.sroa.0381.0672, %.critedge109 ] ; 11 uses
  %.sroa.0376.0 = getelementptr inbounds nuw i8, ptr %.sroa.0376.0673, i64 32 ; 2 uses
  %.not394 = icmp eq ptr %.sroa.0376.0, %i.cn
  br i1 %.not394, label %._crit_edge, label %bb.t

._crit_edge679:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %._crit_edge.thread, %._crit_edge
  %i.sj = phi ptr [ %i.cp, %._crit_edge.thread ], [ %i.fa, %._crit_edge ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ]
  %i.sk = phi ptr [ %i.co, %._crit_edge.thread ], [ %i.ez, %._crit_edge ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ] ; 3 uses
  %i.sl = phi i64 [ 0, %._crit_edge.thread ], [ %i.ey, %._crit_edge ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ]
  %.sroa.0381.0.lcssa932 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.0381.1, %._crit_edge ], [ %.sroa.0381.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel ], [ %.sroa.0381.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ] ; 3 uses
  %.sroa.15.0.lcssa924 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.11.1, %._crit_edge ], [ %.sroa.11.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel ], [ %.sroa.11.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.sm = load ptr, ptr %i.bi, align 8, !tbaa !19, !noalias !106
  %i.sn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !22, !noalias !106 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 7 uses
  store ptr %i.sp, ptr %35, align 8, !tbaa !14, !alias.scope !109
  %i.sq = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  store i64 0, ptr %i.sq, align 8, !tbaa !22, !alias.scope !109
  store i8 0, ptr %i.sp, align 8, !tbaa !21, !alias.scope !109
  %i.sr = add i64 %i.so, 13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 noundef %i.sr)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %._crit_edge679
  %i.ss = load i64, ptr %i.sq, align 8, !tbaa !22, !alias.scope !109
  %i.st = sub i64 4611686018427387903, %i.ss
  %i.su = icmp ult i64 %i.st, %i.so
  br i1 %i.su, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.cy
  %i.sv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef %i.sm, i64 noundef %i.so)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.cz ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.sw = load i64, ptr %i.sq, align 8, !tbaa !22, !alias.scope !109
  %i.sx = add i64 %i.sw, -4611686018427387891
  %i.sy = icmp ult i64 %i.sx, 13
  br i1 %i.sy, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.cy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.cont.i.i unwind label %bb.cz

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.sz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @.str.10, i64 noundef 13)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.cz ; 0 uses

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %._crit_edge679
  %i.ta = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tb = load ptr, ptr %35, align 8, !tbaa !19, !alias.scope !109 ; 2 uses
  %i.tc = icmp eq ptr %i.tb, %i.sp
  br i1 %i.tc, label %.body324, label %.body324.sink.split

.lr.ph678.peel.next:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %.044676 = phi i64 [ %i.tq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel ] ; 2 uses
  %i.td = load i64, ptr %i.fa, align 8, !tbaa !22
  %i.te = icmp eq i64 %i.td, 4611686018427387903
  br i1 %i.te, label %.loopexit771.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.loopexit771.invoke:                              ; preds = %.lr.ph678.peel.next, %bb.da, %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.loopexit771.cont unwind label %.loopexit.split-lp

.loopexit771.cont:                                ; preds = %.loopexit771.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.lr.ph678.peel.next
  %i.tf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.9, i64 noundef 1)
          to label %.split unwind label %.loopexit.loopexit ; 0 uses

.loopexit.loopexit:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %.split
  %lpad.loopexit772 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %.split.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %lpad.loopexit.split-lp773 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit771.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.split:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0381.1, i64 %.044676
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !40
  %i.ti = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN12cmSourceFile15ResolveFullPathEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(376) %i.th, ptr noundef null, ptr noundef null)
          to label %bb.da unwind label %.loopexit.loopexit ; 2 uses

bb.da:                                            ; preds = %.split
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !22 ; 2 uses
  %i.tl = load i64, ptr %i.fa, align 8, !tbaa !22
  %i.tm = sub i64 4611686018427387903, %i.tl
  %i.tn = icmp ult i64 %i.tm, %i.tk
  br i1 %i.tn, label %.loopexit771.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.da
  %i.to = load ptr, ptr %i.ti, align 8, !tbaa !19
  %i.tp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef %i.to, i64 noundef %i.tk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.tq = add nuw i64 %.044676, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.tq, %i.fd
  br i1 %exitcond.not, label %._crit_edge679, label %.lr.ph678.peel.next, !llvm.loop !112

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.tr = load ptr, ptr %34, align 8, !tbaa !19
  %i.ts = load i64, ptr %i.sj, align 8, !tbaa !22
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %35, i64 %i.ts, ptr %i.tr)
          to label %bb.db unwind label %bb.dv

bb.db:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  %i.tt = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  store ptr %i.tt, ptr %36, align 8, !tbaa !14
  %i.tu = load ptr, ptr %i.bi, align 8, !tbaa !19 ; 2 uses
  %i.tv = load i64, ptr %i.sn, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.tv, ptr %i.b, align 8, !tbaa !17
  %i.tw = icmp ugt i64 %i.tv, 15
  br i1 %i.tw, label %.noexc.i333, label %._crit_edge.i.i332

.noexc.i333:                                      ; preds = %bb.db
  %i.tx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc334 unwind label %bb.dw ; 2 uses

.noexc334:                                        ; preds = %.noexc.i333
  store ptr %i.tx, ptr %36, align 8, !tbaa !19
  %i.ty = load i64, ptr %i.b, align 8, !tbaa !17
  store i64 %i.ty, ptr %i.tt, align 8, !tbaa !21
  br label %._crit_edge.i.i332

._crit_edge.i.i332:                               ; preds = %.noexc334, %bb.db
  %i.tz = phi ptr [ %i.tx, %.noexc334 ], [ %i.tt, %bb.db ] ; 2 uses
  switch i64 %i.tv, label %bb.dd [
    i64 1, label %bb.dc
    i64 0, label %bb.de
  ]

bb.dc:                                            ; preds = %._crit_edge.i.i332
  %i.ua = load i8, ptr %i.tu, align 1, !tbaa !21
  store i8 %i.ua, ptr %i.tz, align 1, !tbaa !21
  br label %bb.de

bb.dd:                                            ; preds = %._crit_edge.i.i332
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tz, ptr align 1 %i.tu, i64 %i.tv, i1 false)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %._crit_edge.i.i332
  %i.ub = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store i64 %i.ub, ptr %i.uc, align 8, !tbaa !22
  %i.ud = load ptr, ptr %36, align 8, !tbaa !19
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.ub
  store i8 0, ptr %i.ue, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.uf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.ug = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %.noexc339 unwind label %bb.dx ; 8 uses

.noexc339:                                        ; preds = %bb.de
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 16 ; 3 uses
  store ptr %i.uh, ptr %i.ug, align 8, !tbaa !14
  %i.ui = load ptr, ptr %36, align 8, !tbaa !19   ; 2 uses
  %i.uj = load i64, ptr %i.uc, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.uj, ptr %i.a, align 8, !tbaa !17
  %i.uk = icmp ugt i64 %i.uj, 15
  br i1 %i.uk, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %.noexc339
  %i.ul = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ug, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i unwind label %.body.i.i ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i.i.i.i
  store ptr %i.ul, ptr %i.ug, align 8, !tbaa !19
  %i.um = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.um, ptr %i.uh, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i.i.i, %.noexc339
  %i.un = phi ptr [ %i.ul, %.noexc.i.i.i.i ], [ %i.uh, %.noexc339 ] ; 2 uses
  switch i64 %i.uj, label %bb.dg [
    i64 1, label %bb.df
    i64 0, label %_ZN10cmMakefile15GeneratorActionC2EOSt8functionIFvR16cmLocalGeneratorRK19cmListFileBacktraceEENS_19GeneratorActionWhenE.exit.i
  ]

bb.df:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.uo = load i8, ptr %i.ui, align 1, !tbaa !21
  store i8 %i.uo, ptr %i.un, align 1, !tbaa !21
  br label %_ZN10cmMakefile15GeneratorActionC2EOSt8functionIFvR16cmLocalGeneratorRK19cmListFileBacktraceEENS_19GeneratorActionWhenE.exit.i

bb.dg:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.un, ptr align 1 %i.ui, i64 %i.uj, i1 false)
  br label %_ZN10cmMakefile15GeneratorActionC2EOSt8functionIFvR16cmLocalGeneratorRK19cmListFileBacktraceEENS_19GeneratorActionWhenE.exit.i

.body.i.i:                                        ; preds = %.noexc.i.i.i.i.i.i
  %i.up = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_Z19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !104 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.ve, null
  br i1 %.not.i1.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i4.i, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit.i.i
  %i.vf = invoke noundef zeroext i1 %i.ve(ptr noundef nonnull align 8 dereferenceable(32) %i.va, ptr noundef nonnull align 8 dereferenceable(32) %i.va, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i4.i unwind label %bb.dl ; 0 uses

bb.dl:                                            ; preds = %bb.dk
  %i.vg = landingpad { ptr, i32 }
          catch ptr null
  %i.vh = extractvalue { ptr, i32 } %i.vg, 0
  call void @__clang_call_terminate(ptr %i.vh) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i4.i:              ; preds = %bb.dk, %_ZNSt10unique_ptrI15cmCustomCommandSt14default_deleteIS0_EED2Ev.exit.i.i
  %i.vi = load ptr, ptr %i.uz, align 8, !tbaa !104 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.vi, null
  br i1 %.not.i2.i.i, label %_ZN10cmMakefile15GeneratorActionD2Ev.exit.i, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i4.i
  %i.vj = invoke noundef zeroext i1 %i.vi(ptr noundef nonnull align 8 dereferenceable(32) %i.ux, ptr noundef nonnull align 8 dereferenceable(32) %i.ux, i32 noundef 3)
          to label %_ZN10cmMakefile15GeneratorActionD2Ev.exit.i unwind label %bb.dn ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  %i.vk = landingpad { ptr, i32 }
          catch ptr null
  %i.vl = extractvalue { ptr, i32 } %i.vk, 0
  call void @__clang_call_terminate(ptr %i.vl) #23
  unreachable

_ZN10cmMakefile15GeneratorActionD2Ev.exit.i:      ; preds = %bb.dm, %_ZNSt14_Function_baseD2Ev.exit.i4.i
  %i.vm = load ptr, ptr %i.uf, align 8, !tbaa !104 ; 2 uses
  %.not.i.i337 = icmp eq ptr %i.vm, null
  br i1 %.not.i.i337, label %bb.dt, label %bb.do

bb.do:                                            ; preds = %_ZN10cmMakefile15GeneratorActionD2Ev.exit.i
  %i.vn = invoke noundef zeroext i1 %i.vm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.dt unwind label %bb.dp     ; 0 uses

bb.dp:                                            ; preds = %bb.do
  %i.vo = landingpad { ptr, i32 }
          catch ptr null
  %i.vp = extractvalue { ptr, i32 } %i.vo, 0
  call void @__clang_call_terminate(ptr %i.vp) #23
  unreachable

bb.dq:                                            ; preds = %_ZN10cmMakefile15GeneratorActionC2EOSt8functionIFvR16cmLocalGeneratorRK19cmListFileBacktraceEENS_19GeneratorActionWhenE.exit.i
  %i.vq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10cmMakefile15GeneratorActionD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %2) #19
  %i.vr = load ptr, ptr %i.uf, align 8, !tbaa !104 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.vr, null
  br i1 %.not.i5.i, label %_ZNSt14_Function_baseD2Ev.exit6.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.vs = invoke noundef zeroext i1 %i.vr(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6.i unwind label %bb.ds ; 0 uses

bb.ds:                                            ; preds = %bb.dr
  %i.vt = landingpad { ptr, i32 }
          catch ptr null
  %i.vu = extractvalue { ptr, i32 } %i.vt, 0
  call void @__clang_call_terminate(ptr %i.vu) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit6.i:                ; preds = %bb.dr, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.body340

bb.dt:                                            ; preds = %bb.do, %_ZN10cmMakefile15GeneratorActionD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.vv = load ptr, ptr %36, align 8, !tbaa !19   ; 2 uses
  %i.vw = icmp eq ptr %i.vv, %i.tt
  br i1 %i.vw, label %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.dt
  %i.vx = load i64, ptr %i.tt, align 8, !tbaa !21
  %i.vy = add i64 %i.vx, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vy) #20
  br label %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit"

"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit": ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  %i.vz = load ptr, ptr %35, align 8, !tbaa !19   ; 2 uses
  %i.wa = icmp eq ptr %i.vz, %i.sp
  br i1 %i.wa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit"
  %i.wb = load i64, ptr %i.sp, align 8, !tbaa !21
  %i.wc = add i64 %i.wb, 1
  call void @_ZdlPvm(ptr noundef %i.vz, i64 noundef %i.wc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344: ; preds = %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  %i.wd = load ptr, ptr %34, align 8, !tbaa !19   ; 2 uses
  %i.we = icmp eq ptr %i.wd, %i.sk
  br i1 %i.we, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344
  %i.wf = load i64, ptr %i.sk, align 8, !tbaa !21
  %i.wg = add i64 %i.wf, 1
  call void @_ZdlPvm(ptr noundef %i.wd, i64 noundef %i.wg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  %.not.i.i.i348 = icmp eq ptr %.sroa.0381.0.lcssa932, null
  br i1 %.not.i.i.i348, label %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit, label %bb.du

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347
  %i.wh = ptrtoint ptr %.sroa.15.0.lcssa924 to i64
  %i.wi = sub i64 %i.wh, %i.sl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0381.0.lcssa932, i64 noundef %i.wi) #20
  br label %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit

_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, %bb.du
  %i.wj = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.wk = icmp eq ptr %i.wj, %i.bk
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit
  %i.wl = load i64, ptr %i.bk, align 8, !tbaa !21
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wj, i64 noundef %i.wm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.wn = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.wo = icmp eq ptr %i.wn, %i.ak
  br i1 %i.wo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351
  %i.wp = load i64, ptr %i.ak, align 8, !tbaa !21
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ec

bb.dv:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dw:                                            ; preds = %.noexc.i333
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit357"

bb.dx:                                            ; preds = %bb.de
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %.body340

.body340:                                         ; preds = %.body.i.i, %bb.dh, %_ZNSt14_Function_baseD2Ev.exit6.i, %bb.dx
  %eh.lpad-body341 = phi { ptr, i32 } [ %i.wt, %bb.dx ], [ %i.vq, %_ZNSt14_Function_baseD2Ev.exit6.i ], [ %i.up, %bb.dh ], [ %i.up, %.body.i.i ] ; 2 uses
  %i.wu = load ptr, ptr %36, align 8, !tbaa !19   ; 2 uses
  %i.wv = icmp eq ptr %i.wu, %i.tt
  br i1 %i.wv, label %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit357", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355: ; preds = %.body340
  %i.ww = load i64, ptr %i.tt, align 8, !tbaa !21
  %i.wx = add i64 %i.ww, 1
  call void @_ZdlPvm(ptr noundef %i.wu, i64 noundef %i.wx) #20
  br label %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit357"

"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit357": ; preds = %.body340, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355, %bb.dw
  %.pn77 = phi { ptr, i32 } [ %i.ws, %bb.dw ], [ %eh.lpad-body341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355 ], [ %eh.lpad-body341, %.body340 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br label %bb.dy

bb.dy:                                            ; preds = %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit357", %bb.dv
  %.pn77.pn = phi { ptr, i32 } [ %.pn77, %"_ZZ19cmFLTKWrapUICommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusEN3$_0D2Ev.exit357" ], [ %i.wr, %bb.dv ] ; 2 uses
  %i.wy = load ptr, ptr %35, align 8, !tbaa !19   ; 2 uses
  %i.wz = icmp eq ptr %i.wy, %i.sp
  br i1 %i.wz, label %.body324, label %.body324.sink.split

.body324.sink.split:                              ; preds = %bb.dy, %bb.cz
  %.sink = phi ptr [ %i.tb, %bb.cz ], [ %i.wy, %bb.dy ]
  %.pn77.pn.pn.ph = phi { ptr, i32 } [ %i.ta, %bb.cz ], [ %.pn77.pn, %bb.dy ]
  %i.xa = load i64, ptr %i.sp, align 8, !tbaa !21
  %i.xb = add i64 %i.xa, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.xb) #20
  br label %.body324

.body324:                                         ; preds = %.body324.sink.split, %bb.dy, %bb.cz
  %.pn77.pn.pn = phi { ptr, i32 } [ %i.ta, %bb.cz ], [ %.pn77.pn, %bb.dy ], [ %.pn77.pn.pn.ph, %.body324.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp, %.body324
  %i.xc = phi ptr [ %i.sk, %.body324 ], [ %i.ez, %.loopexit.split-lp ], [ %i.ez, %.loopexit.loopexit ], [ %i.ez, %.loopexit.loopexit.split-lp ] ; 2 uses
  %.sroa.0381.0.lcssa933 = phi ptr [ %.sroa.0381.0.lcssa932, %.body324 ], [ %.sroa.0381.1, %.loopexit.split-lp ], [ %.sroa.0381.1, %.loopexit.loopexit ], [ %.sroa.0381.1, %.loopexit.loopexit.split-lp ]
  %.sroa.15.0.lcssa925 = phi ptr [ %.sroa.15.0.lcssa924, %.body324 ], [ %.sroa.11.1, %.loopexit.split-lp ], [ %.sroa.11.1, %.loopexit.loopexit ], [ %.sroa.11.1, %.loopexit.loopexit.split-lp ]
  %.pn81 = phi { ptr, i32 } [ %.pn77.pn.pn, %.body324 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit772, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp773, %.loopexit.loopexit.split-lp ]
  %i.xd = load ptr, ptr %34, align 8, !tbaa !19   ; 2 uses
  %i.xe = icmp eq ptr %i.xd, %i.xc
  br i1 %i.xe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %.loopexit
  %i.xf = load i64, ptr %i.xc, align 8, !tbaa !21
  %i.xg = add i64 %i.xf, 1
  call void @_ZdlPvm(ptr noundef %i.xd, i64 noundef %i.xg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  br label %bb.dz

bb.dz:                                            ; preds = %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %.sroa.15.0512 = phi ptr [ %.sroa.15.0.lcssa925, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ %.sroa.15.0670, %bb.by ], [ %.sroa.15.0670, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323 ], [ %.sroa.15.0670, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298 ]
  %.sroa.0381.0435 = phi ptr [ %.sroa.0381.0.lcssa933, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ %.sroa.0381.0672, %bb.by ], [ %.sroa.0381.0672, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323 ], [ %.sroa.0381.0672, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298 ] ; 3 uses
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ %i.qd, %bb.by ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323 ], [ %i.qe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298 ] ; 2 uses
  %.not.i.i.i364 = icmp eq ptr %.sroa.0381.0435, null
  br i1 %.not.i.i.i364, label %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit365, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.xh = ptrtoint ptr %.sroa.15.0512 to i64
  %i.xi = ptrtoint ptr %.sroa.0381.0435 to i64
  %i.xj = sub i64 %i.xh, %i.xi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0381.0435, i64 noundef %i.xj) #20
  br label %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit365

_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit365: ; preds = %bb.ea, %bb.dz, %bb.s
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ft, %bb.s ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dz ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ea ] ; 2 uses
  %i.xk = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.xl = icmp eq ptr %i.xk, %i.bk
  br i1 %i.xl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit365
  %i.xm = load i64, ptr %i.bk, align 8, !tbaa !21
  %i.xn = add i64 %i.xm, 1
  call void @_ZdlPvm(ptr noundef %i.xk, i64 noundef %i.xn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368: ; preds = %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit365, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366, %bb.r
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fs, %bb.r ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIP12cmSourceFileSaIS1_EED2Ev.exit365 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.eb

bb.eb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ]
  %i.xo = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.xp = icmp eq ptr %i.xo, %i.ak
  br i1 %i.xp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369: ; preds = %bb.eb
  %i.xq = load i64, ptr %i.ak, align 8, !tbaa !21
  %i.xr = add i64 %i.xq, 1
  call void @_ZdlPvm(ptr noundef %i.xo, i64 noundef %i.xr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ed

bb.ec:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 %i.r

bb.ed:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %.pn105.pn = phi { ptr, i32 } [ %.pn105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %.pn88.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371 ]
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
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.z, align 8, !tbaa !128
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 332
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 340
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.aa, i8 0, i64 6, i1 false)
  store i32 2, ptr %i.ab, align 4, !tbaa !129
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i32 2, ptr %i.ac, align 8, !tbaa !149
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 348
  store i32 2, ptr %i.ad, align 4, !tbaa !150
  store ptr %i.a, ptr %0, align 8, !tbaa !91
  ret void
}

declare void @_ZN15cmCustomCommand10SetDependsESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(352), ptr noundef align 8) local_unnamed_addr #0

declare void @_ZN15cmCustomCommand15SetCommandLinesE20cmCustomCommandLines(ptr noundef nonnull align 8 dereferenceable(352), ptr noundef align 8) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
end_hunk_3
