Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/layout_check?download=true
inline.NumInlined: 3923
inline.NumDeleted: 1315
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN4LIEF5MachO13LayoutChecker5errorIJjEEEbPKcDpRKT_:bb.a
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aq
  %i.as = shl nuw nsw i32 %.018.lcssa.i.i.i, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !noalias !98
  store i16 %i.av, ptr %i.ar, align 1, !noalias !98
  br label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.aw = trunc nuw nsw i32 %.018.lcssa.i.i.i to i8
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = add i32 %.0.lcssa.i.i.i, -1
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.az
  store i8 %i.ax, ptr %i.ba, align 1, !noalias !98
  br label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit

bb.g:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !98
  store ptr %1, ptr %4, align 8, !noalias !98
  %.sroa.2.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.b, ptr %.sroa.2.0..sroa_idx.i14.i, align 8, !noalias !98
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.bb, align 8, !noalias !98
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %i.bc, align 8, !noalias !98
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 2, ptr %i.bd, align 8, !noalias !98
  %.sroa.2.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %6, ptr %.sroa.2.0..sroa_idx.i15.i, align 8, !noalias !98
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.be, align 8, !noalias !98
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(56) %4), !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !98
  br label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit

_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit: ; preds = %bb.f, %bb.e, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.bf = load i64, ptr %i.f, align 8, !noalias !105 ; 6 uses
  %i.bg = icmp ult i64 %i.bf, 4611686018427387903
  call void @llvm.assume(i1 %i.bg)
  %i.bh = load ptr, ptr %5, align 8, !noalias !105 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.bi, ptr %7, align 8, !alias.scope !105
  %i.bj = icmp eq ptr %i.bh, null
  %i.bk = icmp ne i64 %i.bf, 0
  %or.cond.i.i.i = and i1 %i.bk, %i.bj
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.125) #24
  unreachable

bb.i:                                             ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !105
  store i64 %i.bf, ptr %i.a, align 8, !noalias !105
  %i.bl = icmp samesign ugt i64 %i.bf, 15
  br i1 %i.bl, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.bm, ptr %7, align 8, !alias.scope !105
  %i.bn = load i64, ptr %i.a, align 8, !noalias !105
  store i64 %i.bn, ptr %i.bi, align 8, !alias.scope !105
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %bb.i
  %i.bo = phi ptr [ %i.bm, %bb.j ], [ %i.bi, %bb.i ] ; 2 uses
  switch i64 %i.bf, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bp = load i8, ptr %i.bh, align 1
  store i8 %i.bp, ptr %i.bo, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bh, i64 %i.bf, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i.i
  %i.bq = load i64, ptr %i.a, align 8, !noalias !105 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.bq, ptr %i.br, align 8, !alias.scope !105
  %i.bs = load ptr, ptr %7, align 8, !alias.scope !105
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !105
  %i.bu = load ptr, ptr %5, align 8, !noalias !98 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bu, %i.g
  br i1 %.not.i.i.i, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.bu) #23
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !95
  %i.bv = load ptr, ptr %0, align 8               ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  %i.by = load ptr, ptr %7, align 8               ; 5 uses
  %i.bz = icmp eq ptr %i.by, %i.bi                ; 2 uses
  br i1 %i.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  br i1 %i.bz, label %bb.n, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  br i1 %i.bz, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ca = load i64, ptr %i.br, align 8            ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  switch i64 %i.ca, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.cc = load i8, ptr %i.by, align 1
  store i8 %i.cc, ptr %i.bv, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.by, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.cd = load i64, ptr %i.br, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cd, ptr %i.ce, align 8
  %i.cf = load ptr, ptr %0, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1
  %.pre.i = load ptr, ptr %7, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %0, align 8
  %i.ci = load <2 x i64>, ptr %i.br, align 8
  store <2 x i64> %i.ci, ptr %i.ch, align 8
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cj = load i64, ptr %i.bw, align 8
  store ptr %i.by, ptr %0, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = load <2 x i64>, ptr %i.br, align 8
  store <2 x i64> %i.cl, ptr %i.ck, align 8
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bv, ptr %7, align 8
  store i64 %i.cj, ptr %i.bi, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bi, ptr %7, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %i.cm = phi ptr [ %i.bv, %bb.q ], [ %i.bi, %bb.r ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.br, align 8
  store i8 0, ptr %i.cm, align 1
  %i.cn = load ptr, ptr %7, align 8               ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bi
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cp = load i64, ptr %i.bi, align 8
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker14check_segmentsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq i32 %i.f, -17958194
  %i.h = icmp eq i32 %i.f, -822415874
  %spec.select.i = or i1 %i.g, %i.h               ; 2 uses
  %.neg = select i1 %spec.select.i, i32 -56, i32 -72
  %i.i = select i1 %spec.select.i, i64 68, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !noalias !106 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !noalias !109 ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %.not7487 = icmp eq ptr %i.m, %i.k
  br i1 %.not7487, label %._crit_edge.i.i, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.a, %bb.m
  %.sroa.8.089 = phi i64 [ %i.av, %bb.m ], [ 0, %bb.a ]
  %.sroa.460.088 = phi ptr [ %i.au, %bb.m ], [ %i.k, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.460.088, align 8    ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = add i32 %i.t, %.neg                      ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.x = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  br label %.thread67

bb.c:                                             ; preds = %.lr.ph.a
  %3 = zext nneg i32 %i.u to i64                  ; 2 uses
  %4 = urem i64 %3, %i.i
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 %i.t, ptr %i.a, align 4
  %i.z = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.thread67

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.i, %i.ac
  %.not43 = icmp eq i64 %i.ad, %3
  br i1 %.not43, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 %i.ab, ptr %i.b, align 4
  %i.af = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.thread67

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not44 = icmp eq i64 %i.aj, 0
  br i1 %.not44, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 132
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, 4
  %.not45 = icmp eq i32 %i.an, 0
  br i1 %.not45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.ap = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
  br label %.thread67

bb.k:                                             ; preds = %bb.i, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 124
  %i.ar = load i32, ptr %i.aq, align 4
  %.not46 = icmp ult i32 %i.ar, 8
  br i1 %.not46, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.at = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %i.as)
  br label %.thread67

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.460.088, i64 8
  %i.av = add nuw nsw i64 %.sroa.8.089, 1         ; 2 uses
  %.not74 = icmp eq i64 %i.av, %i.q
  br i1 %.not74, label %._crit_edge.i.i, label %.lr.ph.a

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.aw, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.aw, ptr noundef nonnull align 1 dereferenceable(6) @.str.16, i64 6, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 6, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.ay, align 2
  %i.az = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(488) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1) #23 ; 2 uses
  %i.ba = load ptr, ptr %1, align 8               ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.aw
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.bc = load i64, ptr %i.aw, align 8
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %.not47 = icmp eq ptr %i.az, null
  br i1 %.not47, label %._crit_edge.i.i52, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 124
  %i.bf = load i32, ptr %i.be, align 4
  %.not48 = icmp eq i32 %i.bf, 5
  br i1 %.not48, label %._crit_edge.i.i52, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.17)
  br label %.thread67

._crit_edge.i.i52:                                ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.bi, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bi, ptr noundef nonnull align 1 dereferenceable(10) @.str.18, i64 10, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.bk, align 2
  %i.bl = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(488) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %2) #23 ; 2 uses
  %i.bm = load ptr, ptr %2, align 8               ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.bi
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %._crit_edge.i.i52
  %i.bo = load i64, ptr %i.bi, align 8
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %._crit_edge.i.i52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.not49 = icmp eq ptr %i.bl, null
  br i1 %.not49, label %.thread67, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 124
  %i.br = load i32, ptr %i.bq, align 4
  %.not50 = icmp eq i32 %i.br, 1
  br i1 %.not50, label %.thread67, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.19)
  br label %.thread67

.thread67:                                        ; preds = %bb.q, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.b, %bb.d, %bb.f, %bb.j, %bb.l, %bb.o
  %.5 = phi i1 [ %i.bg, %bb.o ], [ %i.x, %bb.b ], [ %i.at, %bb.l ], [ %i.ap, %bb.j ], [ %i.af, %bb.f ], [ %i.z, %bb.d ], [ %i.bs, %bb.q ], [ true, %bb.p ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.fmt::v11::basic_memory_buffer.713", align 8 ; 11 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.1339", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !112
  %i.c = load ptr, ptr %2, align 8, !noalias !112
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !112
  store ptr %i.c, ptr %5, align 16, !noalias !112
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.e, ptr %i.f, align 8, !noalias !112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !115
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !noalias !115
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.h, align 8, !noalias !115
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.j, ptr %4, align 8, !noalias !115
  store i64 500, ptr %i.g, align 8, !noalias !115
  %i.k = icmp eq i64 %i.b, 2
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = load i16, ptr %1, align 1
  %i.m = icmp ne i16 %i.l, 32123
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.sink64.i = load i128, ptr %5, align 16, !noalias !115 ; 2 uses
  %i.p = trunc i128 %.sroa.0.0.copyload.sink64.i to i64
  %i.q = lshr i128 %.sroa.0.0.copyload.sink64.i, 64
  %i.r = trunc nuw i128 %i.q to i64
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i = inttoptr i64 %i.p to ptr ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, i64 %i.r
  %i.t = call ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr noundef %i.s, ptr nonnull align 8 dereferenceable(32) %4), !noalias !115 ; 0 uses
  br label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !115
  store ptr %1, ptr %3, align 8, !noalias !115
  %.sroa.2.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.b, ptr %.sroa.2.0..sroa_idx.i14.i, align 8, !noalias !115
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.u, align 8, !noalias !115
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %4, ptr %i.v, align 8, !noalias !115
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 13, ptr %i.w, align 8, !noalias !115
  %.sroa.2.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %5, ptr %.sroa.2.0..sroa_idx.i15.i, align 8, !noalias !115
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr null, ptr %i.x, align 8, !noalias !115
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !115
  br label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit

_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.y = load i64, ptr %i.i, align 8, !noalias !121 ; 6 uses
  %i.z = icmp ult i64 %i.y, 4611686018427387903
  call void @llvm.assume(i1 %i.z)
  %i.aa = load ptr, ptr %4, align 8, !noalias !121 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.ab, ptr %6, align 8, !alias.scope !121
  %i.ac = icmp eq ptr %i.aa, null
  %i.ad = icmp ne i64 %i.y, 0
  %or.cond.i.i.i = and i1 %i.ad, %i.ac
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.125) #24
  unreachable

bb.f:                                             ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !121
  store i64 %i.y, ptr %i.a, align 8, !noalias !121
  %i.ae = icmp samesign ugt i64 %i.y, 15
  br i1 %i.ae, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.af, ptr %6, align 8, !alias.scope !121
  %i.ag = load i64, ptr %i.a, align 8, !noalias !121
  store i64 %i.ag, ptr %i.ab, align 8, !alias.scope !121
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %i.ah = phi ptr [ %i.af, %bb.g ], [ %i.ab, %bb.f ] ; 2 uses
  switch i64 %i.y, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ai = load i8, ptr %i.aa, align 1
  store i8 %i.ai, ptr %i.ah, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.aa, i64 %i.y, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !noalias !121 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.aj, ptr %i.ak, align 8, !alias.scope !121
  %i.al = load ptr, ptr %6, align 8, !alias.scope !121
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !121
  %i.an = load ptr, ptr %4, align 8, !noalias !115 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.j
  br i1 %.not.i.i.i, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
end_hunk_0
