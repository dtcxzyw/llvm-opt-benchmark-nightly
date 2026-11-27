Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_ts?download=true
inline.NumInlined: 5490
inline.NumDeleted: 688
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11flatbuffers2ts11TsGenerator9AddImportINS_7EnumDefEEENS_12_GLOBAL__N_116ImportDefinitionERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessISC_ESaISt4pairIKSC_S5_EEERKNS_10DefinitionERKT_:bb.a
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !32, !noalias !850
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !850
  invoke void %i.ar(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(400) %i.c, ptr noundef nonnull align 8 dereferenceable(312) %4)
          to label %_ZN11flatbuffers2ts11TsGenerator11GetTypeNameB5cxx11ERKNS_7EnumDefEbb.exit134 unwind label %bb.p, !inline_history !1

_ZN11flatbuffers2ts11TsGenerator11GetTypeNameB5cxx11ERKNS_7EnumDefEbb.exit134: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11flatbuffers12_GLOBAL__N_116ImportDefinitionESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread
  %.val130 = load ptr, ptr %8, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.val131 = load i64, ptr %i.as, align 8
  %.val131.fr = freeze i64 %.val131               ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val.i = load ptr, ptr %i.at, align 8, !tbaa !156 ; 3 uses
  %.not4.not.i = icmp eq ptr %.val.i, %i.v
  br i1 %.not4.not.i, label %.loopexit451, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN11flatbuffers2ts11TsGenerator11GetTypeNameB5cxx11ERKNS_7EnumDefEbb.exit134
  %i.au = icmp eq i64 %.val131.fr, 0
  br i1 %i.au, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i.us
  %.sroa.01.05.i.us = phi ptr [ %i.ay, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i.us ], [ %.val.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.us, i64 72
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !155
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.split.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i.us: ; preds = %.lr.ph.i.us
  %i.ay = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.05.i.us) #28 ; 2 uses
  %.not.not.i.us = icmp eq ptr %i.ay, %i.v
  br i1 %.not.not.i.us, label %.loopexit451, label %.lr.ph.i.us, !llvm.loop !10

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i
  %.sroa.01.05.i = phi ptr [ %i.bf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i ], [ %.val.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !155
  %i.bb = icmp eq i64 %i.ba, %.val131.fr
  br i1 %i.bb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35
  %bcmp.i.i = call i32 @bcmp(ptr %i.bd, ptr readonly %.val130, i64 %.val131.fr)
  %i.be = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.be, label %.split.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph.i
  %i.bf = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.05.i) #28 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bf, %i.v
  br i1 %.not.not.i, label %.loopexit451, label %.lr.ph.i, !llvm.loop !10

.loopexit451:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i.us, %_ZN11flatbuffers2ts11TsGenerator11GetTypeNameB5cxx11ERKNS_7EnumDefEbb.exit134
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.g

.split.us:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.pre = load ptr, ptr %7, align 8, !tbaa !35
  %.pre483 = load i64, ptr %i.t, align 8, !tbaa !155
  br label %bb.g

bb.g:                                             ; preds = %.loopexit451, %.split.us
  %i.bi = phi i64 [ %.pre483, %.split.us ], [ %.val131.fr, %.loopexit451 ] ; 4 uses
  %i.bj = phi ptr [ %.pre, %.split.us ], [ %.val130, %.loopexit451 ] ; 2 uses
  %i.bk = phi ptr [ %i.bh, %.split.us ], [ %i.bg, %.loopexit451 ] ; 7 uses
  %.not.lcssa.i428431 = phi i1 [ true, %.split.us ], [ false, %.loopexit451 ] ; 2 uses
  store ptr %i.bk, ptr %9, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.bi, ptr %i.b, align 8, !tbaa !168
  %i.bl = icmp ugt i64 %i.bi, 15
  br i1 %i.bl, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.bm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.q     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bm, ptr %9, align 8, !tbaa !35
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !168
  store i64 %i.bn, ptr %i.bk, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.g
  %i.bo = phi ptr [ %i.bm, %.noexc ], [ %i.bk, %bb.g ] ; 2 uses
  switch i64 %i.bi, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !30
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !30
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bj, i64 %i.bi, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !168 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !155
  %i.bs = load ptr, ptr %9, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  br i1 %.not.lcssa.i428431, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !236, !noalias !851
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !851
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !32, !noalias !851
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !851
  invoke void %i.bx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(400) %i.c, ptr noundef nonnull align 8 dereferenceable(312) %4)
          to label %.noexc140 unwind label %bb.r, !noalias !851, !inline_history !802

.noexc140:                                        ; preds = %bb.k
  invoke void @_ZNK11flatbuffers8IdlNamer16NamespacedStringEPKNS_9NamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(400) %i.c, ptr noundef %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc140
  %i.by = load ptr, ptr %5, align 8, !tbaa !35, !noalias !851 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNK11flatbuffers8IdlNamer14NamespacedTypeB5cxx11ERKNS_10DefinitionE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i138: ; preds = %bb.l
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !30, !noalias !851
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #24
  br label %_ZNK11flatbuffers8IdlNamer14NamespacedTypeB5cxx11ERKNS_10DefinitionE.exit.i

bb.m:                                             ; preds = %.noexc140
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load ptr, ptr %5, align 8, !tbaa !35, !noalias !851 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i135: ; preds = %bb.m
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !30, !noalias !851
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i136: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !851
  br label %.body

_ZNK11flatbuffers8IdlNamer14NamespacedTypeB5cxx11ERKNS_10DefinitionE.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !851
  br label %_ZN11flatbuffers2ts11TsGenerator11GetTypeNameB5cxx11ERKNS_7EnumDefEbb.exit142

bb.n:                                             ; preds = %bb.j
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !32, !noalias !852
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 128
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !852
  invoke void %i.cl(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(400) %i.c, ptr noundef nonnull align 8 dereferenceable(312) %4)
          to label %_ZN11flatbuffers2ts11TsGenerator11GetTypeNameB5cxx11ERKNS_7EnumDefEbb.exit142 unwind label %bb.r, !inline_history !1

_ZN11flatbuffers2ts11TsGenerator11GetTypeNameB5cxx11ERKNS_7EnumDefEbb.exit142: ; preds = %_ZNK11flatbuffers8IdlNamer14NamespacedTypeB5cxx11ERKNS_10DefinitionE.exit.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZN11flatbuffers2ts11TsGenerator19GenSymbolExpressionERKNS_7EnumDefEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_SC_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 dereferenceable(312) %4, i1 noundef zeroext %.not.lcssa.i428431, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %_ZN11flatbuffers2ts11TsGenerator11GetTypeNameB5cxx11ERKNS_7EnumDefEbb.exit142
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.cm, ptr %12, align 8, !tbaa !29
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i64 0, ptr %i.cn, align 8, !tbaa !155
  store i8 0, ptr %i.cm, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.co = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.co, ptr %13, align 8, !tbaa !29
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  store i64 0, ptr %i.cp, align 8, !tbaa !155
  store i8 0, ptr %i.co, align 8, !tbaa !30
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !236 ; 5 uses
  %.not = icmp eq ptr %i.cr, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i165.invoke, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !190
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !191
  %.not466 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not466, label %._crit_edge.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %.preheader
  %i.cv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 18
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 14 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 18
  store ptr %i.cy, ptr %14, align 8, !tbaa !29
  store i16 11822, ptr %i.cy, align 8
  store i64 2, ptr %i.cz, align 8, !tbaa !155
  store i8 0, ptr %i.da, align 2, !tbaa !30
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull %i.cy, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.thread ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.dc = load ptr, ptr %14, align 8, !tbaa !35   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cy
  br i1 %i.dd, label %.critedge119.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.de = load i64, ptr %i.cy, align 8, !tbaa !30
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #24
  br label %.critedge119.peel

.critedge119.peel:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.dg = load ptr, ptr %i.cs, align 8, !tbaa !190 ; 2 uses
  %i.dh = load ptr, ptr %i.cr, align 8, !tbaa !191 ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = icmp ugt i64 %i.dk, 32
  br i1 %i.dl, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge119, %.critedge119.peel
  %.lcssa474 = phi ptr [ %i.dg, %.critedge119.peel ], [ %i.eq, %.critedge119 ]
  %.lcssa473 = phi ptr [ %i.dh, %.critedge119.peel ], [ %i.er, %.critedge119 ]
  %i.dm = icmp eq ptr %.lcssa474, %.lcssa473
  br i1 %i.dm, label %._crit_edge.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.p:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11flatbuffers12_GLOBAL__N_116ImportDefinitionESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412

bb.q:                                             ; preds = %.noexc.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit409

bb.r:                                             ; preds = %bb.n, %bb.k
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %_ZN11flatbuffers2ts11TsGenerator11GetTypeNameB5cxx11ERKNS_7EnumDefEbb.exit142
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

.peel.next:                                       ; preds = %.critedge119.peel, %.critedge119
  %.082464 = phi i64 [ %i.ep, %.critedge119 ], [ 1, %.critedge119.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store ptr %i.cv, ptr %15, align 8, !tbaa !29
  store i16 11822, ptr %i.cv, align 8
  store i64 2, ptr %i.cw, align 8, !tbaa !155
  store i8 0, ptr %i.cx, align 2, !tbaa !30
  call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.dr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext 47)
          to label %.noexc150 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread, !noalias !853 ; 6 uses

.noexc150:                                        ; preds = %.peel.next
  store ptr %i.cy, ptr %14, align 8, !tbaa !29, !alias.scope !853
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !35 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 5 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.t:                                             ; preds = %.noexc150
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !155 ; 3 uses
  %i.dx = icmp ult i64 %i.dw, 16
  call void @llvm.assume(i1 %i.dx)
  %i.dy = add nuw nsw i64 %i.dw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cy, ptr noundef nonnull align 8 dereferenceable(1) %i.dt, i64 %i.dy, i1 false)
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc150
  store ptr %i.ds, ptr %14, align 8, !tbaa !35, !alias.scope !853
  %i.dz = load i64, ptr %i.dt, align 8, !tbaa !30
  store i64 %i.dz, ptr %i.cy, align 8, !tbaa !30, !alias.scope !853
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !155
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.t
  %i.ea = phi i64 [ %i.dw, %bb.t ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i64 %i.ea, ptr %i.cz, align 8, !tbaa !155, !alias.scope !853
  store ptr %i.dt, ptr %i.dr, align 8, !tbaa !35
  store i64 0, ptr %i.eb, align 8, !tbaa !155
  store i8 0, ptr %i.dt, align 8, !tbaa !30
  %.pre484 = load i64, ptr %i.cz, align 8, !tbaa !155 ; 2 uses
  %i.ec = load i64, ptr %i.cp, align 8, !tbaa !155
  %i.ed = sub i64 4611686018427387903, %i.ec
  %i.ee = icmp ult i64 %i.ed, %.pre484
  br i1 %i.ee, label %.loopexit479, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit479:                                     ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.noexc151 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc151:                                        ; preds = %.loopexit479
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.u
  %i.ef = load ptr, ptr %14, align 8, !tbaa !35
  %i.eg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.ef, i64 noundef %.pre484)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.eh = load ptr, ptr %14, align 8, !tbaa !35   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.cy
  br i1 %i.ei, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ej = load i64, ptr %i.cy, align 8, !tbaa !30
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #24
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  %i.el = load ptr, ptr %15, align 8, !tbaa !35   ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.cv
  br i1 %i.em, label %.critedge119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %.critedge
  %i.en = load i64, ptr %i.cv, align 8, !tbaa !30
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #24
  br label %.critedge119

.critedge119:                                     ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.ep = add nuw i64 %.082464, 1                 ; 2 uses
  %i.eq = load ptr, ptr %i.cs, align 8, !tbaa !190 ; 2 uses
  %i.er = load ptr, ptr %i.cr, align 8, !tbaa !191 ; 2 uses
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ashr exact i64 %i.eu, 5
  %i.ew = icmp ult i64 %i.ep, %i.ev
  br i1 %i.ew, label %.peel.next, label %._crit_edge, !llvm.loop !815

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread: ; preds = %.peel.next
  %lpad.loopexit476 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %.loopexit479
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = load ptr, ptr %14, align 8, !tbaa !35   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.cy
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

.loopexit.thread:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %lpad.loopexit.split-lp481 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ez = load ptr, ptr %14, align 8, !tbaa !35   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.cy
  br i1 %i.fa, label %.critedge124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.thread: ; preds = %.loopexit.thread
  %i.fb = load i64, ptr %i.cy, align 8, !tbaa !30
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #24
  br label %.critedge124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fd = load i64, ptr %i.cy, align 8, !tbaa !30
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fe) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread
  %.pn103439 = phi { ptr, i32 } [ %lpad.loopexit476, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread ], [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ff = load ptr, ptr %15, align 8, !tbaa !35   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.cv
  br i1 %i.fg, label %.critedge121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %i.fh = load i64, ptr %i.cv, align 8, !tbaa !30
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #24
  br label %.critedge121

.critedge121:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.critedge124

.critedge124:                                     ; preds = %.loopexit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.thread, %.critedge121
  %.pn103438443447 = phi { ptr, i32 } [ %.pn103439, %.critedge121 ], [ %lpad.loopexit.split-lp481, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.thread ], [ %lpad.loopexit.split-lp481, %.loopexit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.cr

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.fj = load i64, ptr %i.cp, align 8, !tbaa !155
  %i.fk = icmp eq i64 %i.fj, 4611686018427387903
  br i1 %i.fk, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i165.invoke

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i165.invoke, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i197
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i165.invoke: ; preds = %._crit_edge.thread, %bb.o
  %i.fm = phi ptr [ @.str.87, %bb.o ], [ @.str.88, %._crit_edge.thread ]
  %i.fn = phi i64 [ 2, %bb.o ], [ 1, %._crit_edge.thread ]
  %i.fo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull %i.fm, i64 noundef %i.fn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.v ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i165.invoke, %._crit_edge
end_hunk_0
begin_hunk_1_@_ZN11flatbuffers2ts11TsGenerator9AddImportINS_9StructDefEEENS_12_GLOBAL__N_116ImportDefinitionERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessISC_ESaISt4pairIKSC_S5_EEERKNS_10DefinitionERKT_:bb.a

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ab, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ad = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ad, ptr %.083.i.i.i, ptr %.04.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.ad, i64 24, i64 16
  %.1.in.i.i.i = getelementptr i8, ptr %.04.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11flatbuffers12_GLOBAL__N_116ImportDefinitionEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11flatbuffers12_GLOBAL__N_116ImportDefinitionEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ae = icmp eq ptr %.19.i.i.i, %i.v
  br i1 %i.ae, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11flatbuffers12_GLOBAL__N_116ImportDefinitionESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11flatbuffers12_GLOBAL__N_116ImportDefinitionEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !155 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %.val126) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ah, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ak = call i32 @memcmp(ptr noundef readonly %.val, ptr noundef %i.aj, i64 noundef %.sroa.speculated.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11flatbuffers12_GLOBAL__N_116ImportDefinitionESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.al = sub i64 %.val126, %i.ag
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.al, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11flatbuffers12_GLOBAL__N_116ImportDefinitionESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11flatbuffers12_GLOBAL__N_116ImportDefinitionESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ak, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.am = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.am, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11flatbuffers12_GLOBAL__N_116ImportDefinitionESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11flatbuffers12_GLOBAL__N_116ImportDefinitionESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  invoke fastcc void @_ZN11flatbuffers12_GLOBAL__N_116ImportDefinitionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.an)
          to label %bb.cp unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11flatbuffers12_GLOBAL__N_116ImportDefinitionESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11flatbuffers12_GLOBAL__N_116ImportDefinitionEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZN11flatbuffers2ts11TsGenerator11GetTypeNameB5cxx11ERKNS_9StructDefEbb.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11flatbuffers12_GLOBAL__N_116ImportDefinitionESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !32, !noalias !987
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !987
  invoke void %i.ar(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(400) %i.c, ptr noundef nonnull align 8 dereferenceable(336) %4)
          to label %_ZN11flatbuffers2ts11TsGenerator11GetTypeNameB5cxx11ERKNS_9StructDefEbb.exit134 unwind label %bb.m, !inline_history !2

_ZN11flatbuffers2ts11TsGenerator11GetTypeNameB5cxx11ERKNS_9StructDefEbb.exit134: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11flatbuffers12_GLOBAL__N_116ImportDefinitionESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread
  %.val130 = load ptr, ptr %7, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val131 = load i64, ptr %i.as, align 8
  %.val131.fr = freeze i64 %.val131               ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val.i = load ptr, ptr %i.at, align 8, !tbaa !156 ; 3 uses
  %.not4.not.i = icmp eq ptr %.val.i, %i.v
  br i1 %.not4.not.i, label %.loopexit439, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN11flatbuffers2ts11TsGenerator11GetTypeNameB5cxx11ERKNS_9StructDefEbb.exit134
  %i.au = icmp eq i64 %.val131.fr, 0
  br i1 %i.au, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i.us
  %.sroa.01.05.i.us = phi ptr [ %i.ay, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i.us ], [ %.val.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.us, i64 72
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !155
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.split.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i.us: ; preds = %.lr.ph.i.us
  %i.ay = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.05.i.us) #28 ; 2 uses
  %.not.not.i.us = icmp eq ptr %i.ay, %i.v
  br i1 %.not.not.i.us, label %.loopexit439, label %.lr.ph.i.us, !llvm.loop !10

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i
  %.sroa.01.05.i = phi ptr [ %i.bf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i ], [ %.val.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !155
  %i.bb = icmp eq i64 %i.ba, %.val131.fr
  br i1 %i.bb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35
  %bcmp.i.i = call i32 @bcmp(ptr %i.bd, ptr readonly %.val130, i64 %.val131.fr)
  %i.be = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.be, label %.split.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph.i
  %i.bf = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.05.i) #28 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bf, %i.v
  br i1 %.not.not.i, label %.loopexit439, label %.lr.ph.i, !llvm.loop !10

.loopexit439:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread2.i.us, %_ZN11flatbuffers2ts11TsGenerator11GetTypeNameB5cxx11ERKNS_9StructDefEbb.exit134
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.g

.split.us:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.pre = load ptr, ptr %6, align 8, !tbaa !35
  %.pre471 = load i64, ptr %i.t, align 8, !tbaa !155
  br label %bb.g

bb.g:                                             ; preds = %.loopexit439, %.split.us
  %i.bi = phi i64 [ %.pre471, %.split.us ], [ %.val131.fr, %.loopexit439 ] ; 4 uses
  %i.bj = phi ptr [ %.pre, %.split.us ], [ %.val130, %.loopexit439 ] ; 2 uses
  %i.bk = phi ptr [ %i.bh, %.split.us ], [ %i.bg, %.loopexit439 ] ; 7 uses
  %.not.lcssa.i416419 = phi i1 [ true, %.split.us ], [ false, %.loopexit439 ] ; 2 uses
  store ptr %i.bk, ptr %8, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.bi, ptr %i.b, align 8, !tbaa !168
  %i.bl = icmp ugt i64 %i.bi, 15
  br i1 %i.bl, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.bm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bm, ptr %8, align 8, !tbaa !35
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !168
  store i64 %i.bn, ptr %i.bk, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.g
  %i.bo = phi ptr [ %i.bm, %.noexc ], [ %i.bk, %bb.g ] ; 2 uses
  switch i64 %i.bi, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !30
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !30
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bj, i64 %i.bi, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !168 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !155
  %i.bs = load ptr, ptr %8, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN11flatbuffers2ts11TsGenerator11GetTypeNameB5cxx11ERKNS_9StructDefEbb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 dereferenceable(336) %4, i1 noundef zeroext true, i1 noundef zeroext %.not.lcssa.i416419)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN11flatbuffers2ts11TsGenerator19GenSymbolExpressionERKNS_9StructDefEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_SC_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 dereferenceable(336) %4, i1 noundef zeroext %.not.lcssa.i416419, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.bu, ptr %11, align 8, !tbaa !29
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.bv, align 8, !tbaa !155
  store i8 0, ptr %i.bu, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.bw, ptr %12, align 8, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !155
  store i8 0, ptr %i.bw, align 8, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !236 ; 5 uses
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i157.invoke, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !190
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !191
  %.not454 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not454, label %._crit_edge.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 18
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 14 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 18
  store ptr %i.cg, ptr %13, align 8, !tbaa !29
  store i16 11822, ptr %i.cg, align 8
  store i64 2, ptr %i.ch, align 8, !tbaa !155
  store i8 0, ptr %i.ci, align 2, !tbaa !30
  %i.cj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %i.cg, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.thread ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.ck = load ptr, ptr %13, align 8, !tbaa !35   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.cg
  br i1 %i.cl, label %.critedge119.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.cm = load i64, ptr %i.cg, align 8, !tbaa !30
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #24
  br label %.critedge119.peel

.critedge119.peel:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.co = load ptr, ptr %i.ca, align 8, !tbaa !190 ; 2 uses
  %i.cp = load ptr, ptr %i.bz, align 8, !tbaa !191 ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = icmp ugt i64 %i.cs, 32
  br i1 %i.ct, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge119, %.critedge119.peel
  %.lcssa462 = phi ptr [ %i.co, %.critedge119.peel ], [ %i.dy, %.critedge119 ]
  %.lcssa461 = phi ptr [ %i.cp, %.critedge119.peel ], [ %i.dz, %.critedge119 ]
  %i.cu = icmp eq ptr %.lcssa462, %.lcssa461
  br i1 %i.cu, label %._crit_edge.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.m:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11flatbuffers12_GLOBAL__N_116ImportDefinitionESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

bb.n:                                             ; preds = %.noexc.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397

bb.o:                                             ; preds = %bb.j
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

bb.p:                                             ; preds = %bb.k
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

.peel.next:                                       ; preds = %.critedge119.peel, %.critedge119
  %.082452 = phi i64 [ %i.dx, %.critedge119 ], [ 1, %.critedge119.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store ptr %i.cd, ptr %14, align 8, !tbaa !29
  store i16 11822, ptr %i.cd, align 8
  store i64 2, ptr %i.ce, align 8, !tbaa !155
  store i8 0, ptr %i.cf, align 2, !tbaa !30
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.cz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext 47)
          to label %.noexc142 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.thread, !noalias !988 ; 6 uses

.noexc142:                                        ; preds = %.peel.next
  store ptr %i.cg, ptr %13, align 8, !tbaa !29, !alias.scope !988
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !35 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 5 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.q:                                             ; preds = %.noexc142
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !155 ; 3 uses
  %i.df = icmp ult i64 %i.de, 16
  call void @llvm.assume(i1 %i.df)
  %i.dg = add nuw nsw i64 %i.de, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.db, i64 %i.dg, i1 false)
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc142
  store ptr %i.da, ptr %13, align 8, !tbaa !35, !alias.scope !988
  %i.dh = load i64, ptr %i.db, align 8, !tbaa !30
  store i64 %i.dh, ptr %i.cg, align 8, !tbaa !30, !alias.scope !988
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !155
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %i.di = phi i64 [ %i.de, %bb.q ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %i.di, ptr %i.ch, align 8, !tbaa !155, !alias.scope !988
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !35
  store i64 0, ptr %i.dj, align 8, !tbaa !155
  store i8 0, ptr %i.db, align 8, !tbaa !30
  %.pre472 = load i64, ptr %i.ch, align 8, !tbaa !155 ; 2 uses
  %i.dk = load i64, ptr %i.bx, align 8, !tbaa !155
  %i.dl = sub i64 4611686018427387903, %i.dk
  %i.dm = icmp ult i64 %i.dl, %.pre472
  br i1 %i.dm, label %.loopexit467, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit467:                                     ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #26
          to label %.noexc143 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc143:                                        ; preds = %.loopexit467
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.r
  %i.dn = load ptr, ptr %13, align 8, !tbaa !35
  %i.do = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.dn, i64 noundef %.pre472)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.dp = load ptr, ptr %13, align 8, !tbaa !35   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.cg
  br i1 %i.dq, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.dr = load i64, ptr %i.cg, align 8, !tbaa !30
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #24
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  %i.dt = load ptr, ptr %14, align 8, !tbaa !35   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.cd
  br i1 %i.du, label %.critedge119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %.critedge
  %i.dv = load i64, ptr %i.cd, align 8, !tbaa !30
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #24
  br label %.critedge119

.critedge119:                                     ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.dx = add nuw i64 %.082452, 1                 ; 2 uses
  %i.dy = load ptr, ptr %i.ca, align 8, !tbaa !190 ; 2 uses
  %i.dz = load ptr, ptr %i.bz, align 8, !tbaa !191 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 5
  %i.ee = icmp ult i64 %i.dx, %i.ed
  br i1 %i.ee, label %.peel.next, label %._crit_edge, !llvm.loop !952

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.thread: ; preds = %.peel.next
  %lpad.loopexit464 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %.loopexit467
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load ptr, ptr %13, align 8, !tbaa !35   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.cg
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

.loopexit.thread:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %lpad.loopexit.split-lp469 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %13, align 8, !tbaa !35   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.cg
  br i1 %i.ei, label %.critedge124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.thread: ; preds = %.loopexit.thread
  %i.ej = load i64, ptr %i.cg, align 8, !tbaa !30
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #24
  br label %.critedge124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.el = load i64, ptr %i.cg, align 8, !tbaa !30
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.em) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.thread
  %.pn103427 = phi { ptr, i32 } [ %lpad.loopexit464, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.thread ], [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.en = load ptr, ptr %14, align 8, !tbaa !35   ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.cd
  br i1 %i.eo, label %.critedge121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.ep = load i64, ptr %i.cd, align 8, !tbaa !30
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #24
  br label %.critedge121

.critedge121:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.critedge124

.critedge124:                                     ; preds = %.loopexit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.thread, %.critedge121
  %.pn103426431435 = phi { ptr, i32 } [ %.pn103427, %.critedge121 ], [ %lpad.loopexit.split-lp469, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.thread ], [ %lpad.loopexit.split-lp469, %.loopexit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.co

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.er = load i64, ptr %i.bx, align 8, !tbaa !155
  %i.es = icmp eq i64 %i.er, 4611686018427387903
  br i1 %i.es, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i157.invoke

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i157.invoke, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i189
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i157.invoke: ; preds = %._crit_edge.thread, %bb.l
  %i.eu = phi ptr [ @.str.87, %bb.l ], [ @.str.88, %._crit_edge.thread ]
  %i.ev = phi i64 [ 2, %bb.l ], [ 1, %._crit_edge.thread ]
  %i.ew = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %i.eu, i64 noundef %i.ev)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.s ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i157.invoke, %._crit_edge
end_hunk_1
