Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ResourcesManager?download=true
inline.NumInlined: 5055
inline.NumDeleted: 1845
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZN4LIEF2PElsERSoRKNS0_16ResourcesManagerE:bb.a
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !92
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bb, i64 noundef %i.bc) #25 ; 0 uses
  %i.be = load ptr, ptr %19, align 8, !tbaa !104  ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ao
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.bg = load i64, ptr %i.ao, align 8, !tbaa !93
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @_ZNK4LIEF2PE16ResourcesManager8manifestB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.bi = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !92 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !986
  %i.bl = load ptr, ptr %20, align 8, !tbaa !104, !noalias !986
  store ptr %i.bl, ptr %15, align 16, !tbaa !93, !noalias !986
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.bj, ptr %i.bm, align 8, !tbaa !93, !noalias !986
  call void @llvm.experimental.noalias.scope.decl(metadata !987)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !987
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.bp, align 8, !noalias !987
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.bo, align 8, !tbaa !207, !noalias !987
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.bq, ptr %10, align 8, !tbaa !208, !noalias !987
  store i64 500, ptr %i.bn, align 8, !tbaa !209, !noalias !987
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !987
  store ptr @.str.48, ptr %5, align 8, !tbaa !177, !noalias !987
  %.sroa.2.0..sroa_idx.i16.i93 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 13, ptr %.sroa.2.0..sroa_idx.i16.i93, align 8, !tbaa !103, !noalias !987
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.br, align 8, !tbaa !212, !noalias !987
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %10, ptr %i.bs, align 8, !tbaa !214, !noalias !987
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 13, ptr %i.bt, align 8, !tbaa !216, !noalias !987
  %.sroa.2.0..sroa_idx.i17.i94 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %15, ptr %.sroa.2.0..sroa_idx.i17.i94, align 8, !tbaa !93, !noalias !987
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr null, ptr %i.bu, align 8, !tbaa !217, !noalias !987
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.48, i64 13, ptr noundef nonnull align 8 dereferenceable(56) %5), !noalias !987
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !987
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !218, !noalias !989 ; 6 uses
  %i.bw = icmp ult i64 %i.bv, 4611686018427387903
  call void @llvm.assume(i1 %i.bw)
  %i.bx = load ptr, ptr %10, align 8, !tbaa !208, !noalias !989 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.by, ptr %21, align 8, !tbaa !90, !alias.scope !989
  %i.bz = icmp eq ptr %i.bx, null
  %i.ca = icmp ne i64 %i.bv, 0
  %or.cond.i.i.i32 = and i1 %i.ca, %i.bz
  br i1 %or.cond.i.i.i32, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.176) #26
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25, !noalias !989
  store i64 %i.bv, ptr %i.e, align 8, !tbaa !103, !noalias !989
  %i.cb = icmp samesign ugt i64 %i.bv, 15
  br i1 %i.cb, label %bb.o, label %._crit_edge.i.i.i.i33

bb.o:                                             ; preds = %bb.n
  %i.cc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #25 ; 2 uses
  store ptr %i.cc, ptr %21, align 8, !tbaa !104, !alias.scope !989
  %i.cd = load i64, ptr %i.e, align 8, !tbaa !103, !noalias !989
  store i64 %i.cd, ptr %i.by, align 8, !tbaa !93, !alias.scope !989
  br label %._crit_edge.i.i.i.i33

._crit_edge.i.i.i.i33:                            ; preds = %bb.o, %bb.n
  %i.ce = phi ptr [ %i.cc, %bb.o ], [ %i.by, %bb.n ] ; 2 uses
  switch i64 %i.bv, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i33
  %i.cf = load i8, ptr %i.bx, align 1, !tbaa !93
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !93
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34

bb.q:                                             ; preds = %._crit_edge.i.i.i.i33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 1 %i.bx, i64 %i.bv, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34: ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i33
  %i.cg = load i64, ptr %i.e, align 8, !tbaa !103, !noalias !989 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !92, !alias.scope !989
  %i.ci = load ptr, ptr %21, align 8, !tbaa !104, !alias.scope !989
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25, !noalias !989
  %i.ck = load ptr, ptr %10, align 8, !tbaa !208, !noalias !987 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.ck, %i.bq
  br i1 %.not.i.i.i35, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit36, label %bb.r

bb.r:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34
  call void @free(ptr noundef %i.ck) #25
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit36

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit36: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i34, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !987
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !986
  %i.cl = load ptr, ptr %21, align 8, !tbaa !104
  %i.cm = load i64, ptr %i.ch, align 8, !tbaa !92
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cl, i64 noundef %i.cm) #25 ; 0 uses
  %i.co = load ptr, ptr %21, align 8, !tbaa !104  ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.by
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit36
  %i.cq = load i64, ptr %i.by, align 8, !tbaa !93
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.k
  %i.cs = load ptr, ptr %20, align 8, !tbaa !104  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.s
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !93
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  call void @_ZNK4LIEF2PE16ResourcesManager7versionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.88") align 8 %22, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.cx = load ptr, ptr %22, align 8, !tbaa !990  ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !990 ; 2 uses
  %.not181 = icmp eq ptr %i.cx, %i.cz
  br i1 %.not181, label %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46
  %.pre = load ptr, ptr %22, align 8, !tbaa !270  ; 3 uses
  %.pre212 = load ptr, ptr %i.cy, align 8, !tbaa !129 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre212
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.da = load ptr, ptr %.05.i.i.i, align 8, !tbaa !113
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %.05.i.i.i) #25, !inline_history !948
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 264 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.dd, %.pre212
  br i1 %.not.i.i.i43, label %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !949

_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %22, align 8, !tbaa !270
  br label %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i

_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exitthread-pre-split.i, %._crit_edge
  %i.de = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4LIEF2PE15ResourceVersionESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !130
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #28
  br label %_ZNSt6vectorIN4LIEF2PE15ResourceVersionESaIS2_EED2Ev.exit

_ZNSt6vectorIN4LIEF2PE15ResourceVersionESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4LIEF2PE15ResourceVersionEEvT_S4_.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @_ZNK4LIEF2PE16ResourcesManager5iconsEv(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::ref_iterator.150") align 8 %23, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.dk = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !184
  %i.dm = load ptr, ptr %23, align 8, !tbaa !183  ; 3 uses
  %.not192 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not192, label %._crit_edge184, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph: ; preds = %_ZNSt6vectorIN4LIEF2PE15ResourceVersionESaIS2_EED2Ev.exit
  %32 = ptrtoint ptr %i.dm to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %.sroa.2.0..sroa_idx.i16.i95 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.2.0..sroa_idx.i17.i96 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dz = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46
  %.sroa.0157.0182 = phi ptr [ %i.el, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46 ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 2 uses
  %i.ec = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF2PElsERSoRKNS0_15ResourceVersionE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.0157.0182) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !93
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !113
  %i.ee = getelementptr i8, ptr %i.ed, i64 -24
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds i8, ptr %i.ec, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !981
  %.not.i44 = icmp eq i64 %i.ei, 0
  br i1 %.not.i44, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.ej = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull %i.d, i64 noundef 1) #25 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46

bb.v:                                             ; preds = %.lr.ph
  %i.ek = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, i8 noundef signext 10) #25 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit46: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0157.0182, i64 264 ; 2 uses
  %.not = icmp eq ptr %i.el, %i.cz
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge184:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt6vectorIN4LIEF2PE15ResourceVersionESaIS2_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  call void @_ZNK4LIEF2PE16ResourcesManager7dialogsEv(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::ref_iterator.230") align 8 %26, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.em = load ptr, ptr %26, align 8, !tbaa !991, !nonnull !126, !align !271 ; 8 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 4 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !228
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !227
  %.not193 = icmp eq ptr %i.eo, %i.ep
  br i1 %.not193, label %._crit_edge186, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph: ; preds = %._crit_edge184
  %i.eq = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 6 uses
  %.sroa.2.0..sroa_idx.i16.i97 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %.sroa.2.0..sroa_idx.i17.i98 = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 15 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  %.promoted = load ptr, ptr %i.eq, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.ff = load ptr, ptr %i.em, align 8, !tbaa !231
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !230
  call void @_ZN4LIEF9to_stringINS_2PE14ResourceDialogEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(144) %i.fg)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !992
  store i64 0, ptr %13, align 16, !tbaa !93, !noalias !992
  %i.fh = load ptr, ptr %28, align 8, !tbaa !104, !noalias !992
  %i.fi = load i64, ptr %i.es, align 8, !tbaa !92, !noalias !992
  store ptr %i.fh, ptr %i.er, align 16, !tbaa !93, !noalias !992
  store i64 %i.fi, ptr %i.et, align 8, !tbaa !93, !noalias !992
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !993
  store i64 0, ptr %i.ew, align 8, !noalias !993
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ev, align 8, !tbaa !207, !noalias !993
  store ptr %i.ex, ptr %8, align 8, !tbaa !208, !noalias !993
  store i64 500, ptr %i.eu, align 8, !tbaa !209, !noalias !993
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !993
  store ptr @.str.50, ptr %3, align 8, !tbaa !177, !noalias !993
  store i64 19, ptr %.sroa.2.0..sroa_idx.i16.i97, align 8, !tbaa !103, !noalias !993
  store i32 0, ptr %i.ey, align 8, !tbaa !212, !noalias !993
  store ptr %8, ptr %i.ez, align 8, !tbaa !214, !noalias !993
  store i64 212, ptr %i.fa, align 8, !tbaa !216, !noalias !993
  store ptr %13, ptr %.sroa.2.0..sroa_idx.i17.i98, align 8, !tbaa !93, !noalias !993
  store ptr null, ptr %i.fb, align 8, !tbaa !217, !noalias !993
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.50, i64 19, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !993
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !993
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  %i.fj = load i64, ptr %i.ew, align 8, !tbaa !218, !noalias !995 ; 6 uses
  %i.fk = icmp ult i64 %i.fj, 4611686018427387903
  call void @llvm.assume(i1 %i.fk)
  %i.fl = load ptr, ptr %8, align 8, !tbaa !208, !noalias !995 ; 3 uses
  store ptr %i.fc, ptr %27, align 8, !tbaa !90, !alias.scope !995
  %i.fm = icmp eq ptr %i.fl, null
  %i.fn = icmp ne i64 %i.fj, 0
  %or.cond.i.i.i64.peel = and i1 %i.fn, %i.fm
  br i1 %or.cond.i.i.i64.peel, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !995
  store i64 %i.fj, ptr %i.b, align 8, !tbaa !103, !noalias !995
  %i.fo = icmp samesign ugt i64 %i.fj, 15
  br i1 %i.fo, label %bb.x, label %._crit_edge.i.i.i.i65.peel

bb.x:                                             ; preds = %bb.w
  %i.fp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #25 ; 2 uses
  store ptr %i.fp, ptr %27, align 8, !tbaa !104, !alias.scope !995
  %i.fq = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !995
  store i64 %i.fq, ptr %i.fc, align 8, !tbaa !93, !alias.scope !995
  br label %._crit_edge.i.i.i.i65.peel

._crit_edge.i.i.i.i65.peel:                       ; preds = %bb.x, %bb.w
  %i.fr = phi ptr [ %i.fp, %bb.x ], [ %i.fc, %bb.w ] ; 2 uses
  switch i64 %i.fj, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i65.peel
  %i.fs = load i8, ptr %i.fl, align 1, !tbaa !93
  store i8 %i.fs, ptr %i.fr, align 1, !tbaa !93
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel

bb.z:                                             ; preds = %._crit_edge.i.i.i.i65.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fr, ptr align 1 %i.fl, i64 %i.fj, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel: ; preds = %bb.z, %bb.y, %._crit_edge.i.i.i.i65.peel
  %i.ft = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !995 ; 2 uses
  store i64 %i.ft, ptr %i.fd, align 8, !tbaa !92, !alias.scope !995
  %i.fu = load ptr, ptr %27, align 8, !tbaa !104, !alias.scope !995
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  store i8 0, ptr %i.fv, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !995
  %i.fw = load ptr, ptr %8, align 8, !tbaa !208, !noalias !993 ; 2 uses
  %.not.i.i.i67.peel = icmp eq ptr %i.fw, %i.ex
  br i1 %.not.i.i.i67.peel, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel, label %bb.aa

bb.aa:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel
  call void @free(ptr noundef %i.fw) #25
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel: ; preds = %bb.aa, %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !993
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !992
  %i.fx = load ptr, ptr %27, align 8, !tbaa !104
  %i.fy = load i64, ptr %i.fd, align 8, !tbaa !92
  %i.fz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.fx, i64 noundef %i.fy) #25 ; 0 uses
  %i.ga = load ptr, ptr %27, align 8, !tbaa !104  ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.fc
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel
  %i.gc = load i64, ptr %i.fc, align 8, !tbaa !93
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel
  %i.ge = load ptr, ptr %28, align 8, !tbaa !104  ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.fe
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel
  %i.gg = load i64, ptr %i.fe, align 8, !tbaa !93
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %i.gi = load ptr, ptr %i.en, align 8, !tbaa !228
  %i.gj = load ptr, ptr %i.em, align 8, !tbaa !227
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = icmp ugt i64 %i.gm, 8
  br i1 %i.gn, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.peel.next, label %._crit_edge186

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.peel.next: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.go = load ptr, ptr %i.em, align 8, !tbaa !231 ; 3 uses
  %i.gp = ptrtoint ptr %.promoted to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !230
  %i.gu = getelementptr inbounds i8, ptr %i.go, i64 %i.gr
  call void @_ZN4LIEF9to_stringINS_2PE14ResourceDialogEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(144) %i.gt)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !992
  store i64 1, ptr %13, align 16, !tbaa !93, !noalias !992
  %i.gv = load ptr, ptr %28, align 8, !tbaa !104, !noalias !992
  %i.gw = load i64, ptr %i.es, align 8, !tbaa !92, !noalias !992
  store ptr %i.gv, ptr %i.er, align 16, !tbaa !93, !noalias !992
  store i64 %i.gw, ptr %i.et, align 8, !tbaa !93, !noalias !992
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !996
  store i64 0, ptr %i.ew, align 8, !noalias !996
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ev, align 8, !tbaa !207, !noalias !996
  store ptr %i.ex, ptr %8, align 8, !tbaa !208, !noalias !996
  store i64 500, ptr %i.eu, align 8, !tbaa !209, !noalias !996
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !996
  store ptr @.str.50, ptr %3, align 8, !tbaa !177, !noalias !996
  store i64 19, ptr %.sroa.2.0..sroa_idx.i16.i97, align 8, !tbaa !103, !noalias !996
  store i32 0, ptr %i.ey, align 8, !tbaa !212, !noalias !996
  store ptr %8, ptr %i.ez, align 8, !tbaa !214, !noalias !996
  store i64 212, ptr %i.fa, align 8, !tbaa !216, !noalias !996
  store ptr %13, ptr %.sroa.2.0..sroa_idx.i17.i98, align 8, !tbaa !93, !noalias !996
  store ptr null, ptr %i.fb, align 8, !tbaa !217, !noalias !996
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.50, i64 19, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !996
  call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.gx = load i64, ptr %i.ew, align 8, !tbaa !218, !noalias !998 ; 6 uses
  %i.gy = icmp ult i64 %i.gx, 4611686018427387903
  call void @llvm.assume(i1 %i.gy)
  %i.gz = load ptr, ptr %8, align 8, !tbaa !208, !noalias !998 ; 3 uses
  store ptr %i.fc, ptr %27, align 8, !tbaa !90, !alias.scope !998
  %i.ha = icmp eq ptr %i.gz, null
  %i.hb = icmp ne i64 %i.gx, 0
  %or.cond.i.i.i64.peel200 = and i1 %i.hb, %i.ha
  br i1 %or.cond.i.i.i64.peel200, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !998
  store i64 %i.gx, ptr %i.b, align 8, !tbaa !103, !noalias !998
  %i.hc = icmp samesign ugt i64 %i.gx, 15
  br i1 %i.hc, label %bb.ac, label %._crit_edge.i.i.i.i65.peel201

bb.ac:                                            ; preds = %bb.ab
  %i.hd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #25 ; 2 uses
  store ptr %i.hd, ptr %27, align 8, !tbaa !104, !alias.scope !998
  %i.he = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !998
  store i64 %i.he, ptr %i.fc, align 8, !tbaa !93, !alias.scope !998
  br label %._crit_edge.i.i.i.i65.peel201

._crit_edge.i.i.i.i65.peel201:                    ; preds = %bb.ac, %bb.ab
  %i.hf = phi ptr [ %i.hd, %bb.ac ], [ %i.fc, %bb.ab ] ; 2 uses
  switch i64 %i.gx, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i65.peel201
  %i.hg = load i8, ptr %i.gz, align 1, !tbaa !93
  store i8 %i.hg, ptr %i.hf, align 1, !tbaa !93
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i65.peel201
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hf, ptr align 1 %i.gz, i64 %i.gx, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202: ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i.i65.peel201
  %i.hh = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !998 ; 2 uses
  store i64 %i.hh, ptr %i.fd, align 8, !tbaa !92, !alias.scope !998
  %i.hi = load ptr, ptr %27, align 8, !tbaa !104, !alias.scope !998
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hh
  store i8 0, ptr %i.hj, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !998
  %i.hk = load ptr, ptr %8, align 8, !tbaa !208, !noalias !996 ; 2 uses
  %.not.i.i.i67.peel203 = icmp eq ptr %i.hk, %i.ex
  br i1 %.not.i.i.i67.peel203, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel204, label %bb.af

bb.af:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202
  call void @free(ptr noundef %i.hk) #25
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel204

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel204: ; preds = %bb.af, %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66.peel202
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !992
  %i.hl = load ptr, ptr %27, align 8, !tbaa !104
  %i.hm = load i64, ptr %i.fd, align 8, !tbaa !92
  %i.hn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.hl, i64 noundef %i.hm) #25 ; 0 uses
  %i.ho = load ptr, ptr %27, align 8, !tbaa !104  ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.fc
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel205: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel204
  %i.hq = load i64, ptr %i.fc, align 8, !tbaa !93
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel207: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68.peel204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel205
  %i.hs = load ptr, ptr %28, align 8, !tbaa !104  ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.fe
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel207
  %i.hu = load i64, ptr %i.fe, align 8, !tbaa !93
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel208
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %i.hw = load ptr, ptr %i.en, align 8, !tbaa !228
  %i.hx = load ptr, ptr %i.em, align 8, !tbaa !227
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = icmp ugt i64 %i.ia, 16
  br i1 %i.ib, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %._crit_edge186

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %33 = phi i64 [ %32, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph ], [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  %34 = phi ptr [ %i.dm, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ] ; 2 uses
  %storemerge183 = phi i64 [ 0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph ], [ %i.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %.sroa.02.0.copyload.i = load ptr, ptr %i.dn, align 8, !tbaa !179
  %i.ic = ptrtoint ptr %.sroa.02.0.copyload.i to i64
  %i.id = sub i64 %i.ic, %33
  %i.ie = getelementptr inbounds [56 x i8], ptr %34, i64 %storemerge183
  %i.if = getelementptr inbounds i8, ptr %34, i64 %i.id
  store ptr %i.if, ptr %i.dn, align 8, !tbaa !999
  call void @_ZN4LIEF9to_stringINS_2PE12ResourceIconEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(56) %i.ie)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !1000
  store i64 %storemerge183, ptr %12, align 16, !tbaa !93, !noalias !1000
  %i.ig = load ptr, ptr %25, align 8, !tbaa !104, !noalias !1000
  %i.ih = load i64, ptr %i.dp, align 8, !tbaa !92, !noalias !1000
  store ptr %i.ig, ptr %i.do, align 16, !tbaa !93, !noalias !1000
  store i64 %i.ih, ptr %i.dq, align 8, !tbaa !93, !noalias !1000
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !1001
  store i64 0, ptr %i.dt, align 8, !noalias !1001
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ds, align 8, !tbaa !207, !noalias !1001
  store ptr %i.du, ptr %9, align 8, !tbaa !208, !noalias !1001
  store i64 500, ptr %i.dr, align 8, !tbaa !209, !noalias !1001
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1001
  store ptr @.str.49, ptr %4, align 8, !tbaa !177, !noalias !1001
  store i64 17, ptr %.sroa.2.0..sroa_idx.i16.i95, align 8, !tbaa !103, !noalias !1001
  store i32 0, ptr %i.dv, align 8, !tbaa !212, !noalias !1001
  store ptr %9, ptr %i.dw, align 8, !tbaa !214, !noalias !1001
  store i64 212, ptr %i.dx, align 8, !tbaa !216, !noalias !1001
  store ptr %12, ptr %.sroa.2.0..sroa_idx.i17.i96, align 8, !tbaa !93, !noalias !1001
  store ptr null, ptr %i.dy, align 8, !tbaa !217, !noalias !1001
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.49, i64 17, ptr noundef nonnull align 8 dereferenceable(56) %4), !noalias !1001
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1001
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.ii = load i64, ptr %i.dt, align 8, !tbaa !218, !noalias !1003 ; 6 uses
  %i.ij = icmp ult i64 %i.ii, 4611686018427387903
  call void @llvm.assume(i1 %i.ij)
  %i.ik = load ptr, ptr %9, align 8, !tbaa !208, !noalias !1003 ; 3 uses
  store ptr %i.dz, ptr %24, align 8, !tbaa !90, !alias.scope !1003
  %i.il = icmp eq ptr %i.ik, null
  %i.im = icmp ne i64 %i.ii, 0
  %or.cond.i.i.i47 = and i1 %i.im, %i.il
  br i1 %or.cond.i.i.i47, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.176) #26
  unreachable

bb.ah:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !1003
  store i64 %i.ii, ptr %i.c, align 8, !tbaa !103, !noalias !1003
  %i.in = icmp samesign ugt i64 %i.ii, 15
  br i1 %i.in, label %bb.ai, label %._crit_edge.i.i.i.i48

bb.ai:                                            ; preds = %bb.ah
  %i.io = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #25 ; 2 uses
  store ptr %i.io, ptr %24, align 8, !tbaa !104, !alias.scope !1003
  %i.ip = load i64, ptr %i.c, align 8, !tbaa !103, !noalias !1003
  store i64 %i.ip, ptr %i.dz, align 8, !tbaa !93, !alias.scope !1003
  br label %._crit_edge.i.i.i.i48

._crit_edge.i.i.i.i48:                            ; preds = %bb.ai, %bb.ah
  %i.iq = phi ptr [ %i.io, %bb.ai ], [ %i.dz, %bb.ah ] ; 2 uses
  switch i64 %i.ii, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i48
  %i.ir = load i8, ptr %i.ik, align 1, !tbaa !93
  store i8 %i.ir, ptr %i.iq, align 1, !tbaa !93
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iq, ptr align 1 %i.ik, i64 %i.ii, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49: ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i.i48
  %i.is = load i64, ptr %i.c, align 8, !tbaa !103, !noalias !1003 ; 2 uses
  store i64 %i.is, ptr %i.ea, align 8, !tbaa !92, !alias.scope !1003
  %i.it = load ptr, ptr %24, align 8, !tbaa !104, !alias.scope !1003
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.is
  store i8 0, ptr %i.iu, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !1003
  %i.iv = load ptr, ptr %9, align 8, !tbaa !208, !noalias !1001 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.iv, %i.du
  br i1 %.not.i.i.i50, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit51, label %bb.al

bb.al:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49
  call void @free(ptr noundef %i.iv) #25
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit51

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit51: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i49, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !1001
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !1000
  %i.iw = load ptr, ptr %24, align 8, !tbaa !104
  %i.ix = load i64, ptr %i.ea, align 8, !tbaa !92
  %i.iy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.iw, i64 noundef %i.ix) #25 ; 0 uses
  %i.iz = load ptr, ptr %24, align 8, !tbaa !104  ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.dz
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit51
  %i.jb = load i64, ptr %i.dz, align 8, !tbaa !93
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  %i.jd = load ptr, ptr %25, align 8, !tbaa !104  ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.eb
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.jf = load i64, ptr %i.eb, align 8, !tbaa !93
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  %i.jh = add nuw i64 %storemerge183, 1           ; 2 uses
  %i.ji = load ptr, ptr %i.dk, align 8, !tbaa !184
  %i.jj = load ptr, ptr %23, align 8, !tbaa !183  ; 2 uses
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64               ; 2 uses
  %i.jm = sub i64 %i.jk, %i.jl
  %i.jn = sdiv exact i64 %i.jm, 56
  %i.jo = icmp ult i64 %i.jh, %i.jn
  br i1 %i.jo, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE12ResourceIconESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %._crit_edge184, !llvm.loop !966

._crit_edge186:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210, %._crit_edge184
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  call void @_ZNK4LIEF2PE16ResourcesManager12string_tableEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.233") align 8 %29, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.jp = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !241 ; 3 uses
  %i.jr = load ptr, ptr %29, align 8, !tbaa !1004 ; 6 uses
  %i.js = ptrtoint ptr %i.jr to i64               ; 2 uses
  %.not194 = icmp eq ptr %i.jq, %i.jr
  br i1 %.not194, label %_ZSt8_DestroyIPN4LIEF2PE16ResourcesManager14string_entry_tEEvT_S5_.exit.i, label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit108.lr.ph

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit108.lr.ph: ; preds = %._crit_edge186
  %i.jt = ptrtoint ptr %i.jq to i64
  %i.ju = sub i64 %i.jt, %i.js
  %i.jv = sdiv exact i64 %i.ju, 40
  %i.jw = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jx = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.jz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ka = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.kb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %.sroa.2.0..sroa_idx.i16.i103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.2.0..sroa_idx.i17.i104 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.kh = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit108

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.kk = phi ptr [ %i.kr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210 ]
  %storemerge27185 = phi i64 [ %i.lt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel210 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.kl = load ptr, ptr %i.em, align 8, !tbaa !231 ; 3 uses
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %storemerge27185
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !230
  %i.kr = getelementptr inbounds i8, ptr %i.kl, i64 %i.ko
  call void @_ZN4LIEF9to_stringINS_2PE14ResourceDialogEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(144) %i.kq)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !992
  store i64 %storemerge27185, ptr %13, align 16, !tbaa !93, !noalias !992
  %i.ks = load ptr, ptr %28, align 8, !tbaa !104, !noalias !992
  %i.kt = load i64, ptr %i.es, align 8, !tbaa !92, !noalias !992
  store ptr %i.ks, ptr %i.er, align 16, !tbaa !93, !noalias !992
  store i64 %i.kt, ptr %i.et, align 8, !tbaa !93, !noalias !992
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !1005
  store i64 0, ptr %i.ew, align 8, !noalias !1005
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ev, align 8, !tbaa !207, !noalias !1005
  store ptr %i.ex, ptr %8, align 8, !tbaa !208, !noalias !1005
  store i64 500, ptr %i.eu, align 8, !tbaa !209, !noalias !1005
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !1005
  store ptr @.str.50, ptr %3, align 8, !tbaa !177, !noalias !1005
  store i64 19, ptr %.sroa.2.0..sroa_idx.i16.i97, align 8, !tbaa !103, !noalias !1005
  store i32 0, ptr %i.ey, align 8, !tbaa !212, !noalias !1005
  store ptr %8, ptr %i.ez, align 8, !tbaa !214, !noalias !1005
  store i64 212, ptr %i.fa, align 8, !tbaa !216, !noalias !1005
  store ptr %13, ptr %.sroa.2.0..sroa_idx.i17.i98, align 8, !tbaa !93, !noalias !1005
  store ptr null, ptr %i.fb, align 8, !tbaa !217, !noalias !1005
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.50, i64 19, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1005
  call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  %i.ku = load i64, ptr %i.ew, align 8, !tbaa !218, !noalias !1007 ; 6 uses
  %i.kv = icmp ult i64 %i.ku, 4611686018427387903
  call void @llvm.assume(i1 %i.kv)
  %i.kw = load ptr, ptr %8, align 8, !tbaa !208, !noalias !1007 ; 3 uses
  store ptr %i.fc, ptr %27, align 8, !tbaa !90, !alias.scope !1007
  %i.kx = icmp eq ptr %i.kw, null
  %i.ky = icmp ne i64 %i.ku, 0
  %or.cond.i.i.i64 = and i1 %i.ky, %i.kx
  br i1 %or.cond.i.i.i64, label %.loopexit, label %bb.am

.loopexit:                                        ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.peel.next, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.lr.ph
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.176) #26
  unreachable

bb.am:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !1007
  store i64 %i.ku, ptr %i.b, align 8, !tbaa !103, !noalias !1007
  %i.kz = icmp samesign ugt i64 %i.ku, 15
  br i1 %i.kz, label %bb.an, label %._crit_edge.i.i.i.i65

bb.an:                                            ; preds = %bb.am
  %i.la = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #25 ; 2 uses
  store ptr %i.la, ptr %27, align 8, !tbaa !104, !alias.scope !1007
  %i.lb = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !1007
  store i64 %i.lb, ptr %i.fc, align 8, !tbaa !93, !alias.scope !1007
  br label %._crit_edge.i.i.i.i65

._crit_edge.i.i.i.i65:                            ; preds = %bb.an, %bb.am
  %i.lc = phi ptr [ %i.la, %bb.an ], [ %i.fc, %bb.am ] ; 2 uses
  switch i64 %i.ku, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i65
  %i.ld = load i8, ptr %i.kw, align 1, !tbaa !93
  store i8 %i.ld, ptr %i.lc, align 1, !tbaa !93
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i65
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lc, ptr align 1 %i.kw, i64 %i.ku, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66: ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i.i.i65
  %i.le = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !1007 ; 2 uses
  store i64 %i.le, ptr %i.fd, align 8, !tbaa !92, !alias.scope !1007
  %i.lf = load ptr, ptr %27, align 8, !tbaa !104, !alias.scope !1007
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.le
  store i8 0, ptr %i.lg, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !1007
  %i.lh = load ptr, ptr %8, align 8, !tbaa !208, !noalias !1005 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.lh, %i.ex
  br i1 %.not.i.i.i67, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68, label %bb.aq

bb.aq:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66
  call void @free(ptr noundef %i.lh) #25
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i66, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !992
  %i.li = load ptr, ptr %27, align 8, !tbaa !104
  %i.lj = load i64, ptr %i.fd, align 8, !tbaa !92
  %i.lk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.li, i64 noundef %i.lj) #25 ; 0 uses
  %i.ll = load ptr, ptr %27, align 8, !tbaa !104  ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.fc
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68
  %i.ln = load i64, ptr %i.fc, align 8, !tbaa !93
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  %i.lp = load ptr, ptr %28, align 8, !tbaa !104  ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.fe
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.lr = load i64, ptr %i.fe, align 8, !tbaa !93
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %i.lt = add nuw i64 %storemerge27185, 1         ; 2 uses
  %i.lu = load ptr, ptr %i.en, align 8, !tbaa !228
  %i.lv = load ptr, ptr %i.em, align 8, !tbaa !227
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = sub i64 %i.lw, %i.lx
  %i.lz = ashr exact i64 %i.ly, 3
  %i.ma = icmp ult i64 %i.lt, %i.lz
  br i1 %i.ma, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %._crit_edge186, !llvm.loop !971

.lr.ph.i.i.i76:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZSt8_DestroyIN4LIEF2PE16ResourcesManager14string_entry_tEEvPT_.exit.i.i.i
  %.05.i.i.i77 = phi ptr [ %i.mh, %_ZSt8_DestroyIN4LIEF2PE16ResourcesManager14string_entry_tEEvPT_.exit.i.i.i ], [ %i.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ] ; 3 uses
  %i.mb = load ptr, ptr %.05.i.i.i77, align 8, !tbaa !61 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.05.i.i.i77, i64 16 ; 2 uses
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %_ZSt8_DestroyIN4LIEF2PE16ResourcesManager14string_entry_tEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i76
  %i.me = load i64, ptr %i.mc, align 8, !tbaa !93
  %i.mf = shl i64 %i.me, 1
  %i.mg = add i64 %i.mf, 2
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.mg) #28
  br label %_ZSt8_DestroyIN4LIEF2PE16ResourcesManager14string_entry_tEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4LIEF2PE16ResourcesManager14string_entry_tEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i76, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.mh = getelementptr inbounds nuw i8, ptr %.05.i.i.i77, i64 40 ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.mh, %i.jq
  br i1 %.not.i.i.i78, label %_ZSt8_DestroyIPN4LIEF2PE16ResourcesManager14string_entry_tEEvT_S5_.exit.i, label %.lr.ph.i.i.i76, !llvm.loop !972

_ZSt8_DestroyIPN4LIEF2PE16ResourcesManager14string_entry_tEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIN4LIEF2PE16ResourcesManager14string_entry_tEEvPT_.exit.i.i.i, %._crit_edge186
  %.not.i.i1.i80 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i1.i80, label %_ZNSt6vectorIN4LIEF2PE16ResourcesManager14string_entry_tESaIS3_EED2Ev.exit, label %_ZSt8_DestroyIPN4LIEF2PE16ResourcesManager14string_entry_tEEvT_S5_.exit.i.thread

_ZSt8_DestroyIPN4LIEF2PE16ResourcesManager14string_entry_tEEvT_S5_.exit.i.thread: ; preds = %_ZSt8_DestroyIPN4LIEF2PE16ResourcesManager14string_entry_tEEvT_S5_.exit.i
  %i.mi = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !240
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = sub i64 %i.mk, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.ml) #28
end_hunk_0
