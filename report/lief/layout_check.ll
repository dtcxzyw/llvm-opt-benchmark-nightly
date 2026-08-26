Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/layout_check?download=true
inline.NumInlined: 4839
inline.NumDeleted: 1623
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4LIEF5MachO13LayoutChecker5errorIJjEEEbPKcDpRKT_:bb.a
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aq
  %i.as = shl nuw nsw i32 %.018.lcssa.i.i.i, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !noalias !193
  store i16 %i.av, ptr %i.ar, align 1, !noalias !193
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.aw = trunc nuw nsw i32 %.018.lcssa.i.i.i to i8
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = add i32 %.0.lcssa.i.i.i, -1
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.az
  store i8 %i.ax, ptr %i.ba, align 1, !tbaa !95, !noalias !193
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.g:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !193
  store ptr %1, ptr %4, align 8, !tbaa !130, !noalias !193
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.b, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !60, !noalias !193
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.bb, align 8, !tbaa !131, !noalias !193
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %i.bc, align 8, !tbaa !134, !noalias !193
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 2, ptr %i.bd, align 8, !tbaa !136, !noalias !193
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %6, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !95, !noalias !193
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.be, align 8, !tbaa !138, !noalias !193
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(56) %4), !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !193
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %bb.f, %bb.e, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.bf = load i64, ptr %i.f, align 8, !tbaa !142, !noalias !200 ; 6 uses
  %i.bg = icmp ult i64 %i.bf, 4611686018427387903
  call void @llvm.assume(i1 %i.bg)
  %i.bh = load ptr, ptr %5, align 8, !tbaa !128, !noalias !200 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.bi, ptr %7, align 8, !tbaa !144, !alias.scope !200
  %i.bj = icmp eq ptr %i.bh, null
  %i.bk = icmp ne i64 %i.bf, 0
  %or.cond.i.i.i = and i1 %i.bk, %i.bj
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.230) #25
  unreachable

bb.i:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !200
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !60, !noalias !200
  %i.bl = icmp samesign ugt i64 %i.bf, 15
  br i1 %i.bl, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.bm, ptr %7, align 8, !tbaa !94, !alias.scope !200
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !60, !noalias !200
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !95, !alias.scope !200
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %bb.i
  %i.bo = phi ptr [ %i.bm, %bb.j ], [ %i.bi, %bb.i ] ; 2 uses
  switch i64 %i.bf, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bp = load i8, ptr %i.bh, align 1, !tbaa !95
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !95
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bh, i64 %i.bf, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i.i
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !60, !noalias !200 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !145, !alias.scope !200
  %i.bs = load ptr, ptr %7, align 8, !tbaa !94, !alias.scope !200
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !200
  %i.bu = load ptr, ptr %5, align 8, !tbaa !128, !noalias !193 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bu, %i.g
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.bu) #24
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !190
  %i.bv = load ptr, ptr %0, align 8, !tbaa !94    ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  %i.by = load ptr, ptr %7, align 8, !tbaa !94    ; 5 uses
  %i.bz = icmp eq ptr %i.by, %i.bi                ; 2 uses
  br i1 %i.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  br i1 %i.bz, label %bb.n, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  br i1 %i.bz, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ca = load i64, ptr %i.br, align 8, !tbaa !145 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  switch i64 %i.ca, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !95
  store i8 %i.cc, ptr %i.bv, align 1, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.by, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.cd = load i64, ptr %i.br, align 8, !tbaa !145 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !145
  %i.cf = load ptr, ptr %0, align 8, !tbaa !94
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !95
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !94
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %0, align 8, !tbaa !94
  %i.ci = load <2 x i64>, ptr %i.br, align 8, !tbaa !95
  store <2 x i64> %i.ci, ptr %i.ch, align 8, !tbaa !95
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cj = load i64, ptr %i.bw, align 8, !tbaa !95
  store ptr %i.by, ptr %0, align 8, !tbaa !94
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = load <2 x i64>, ptr %i.br, align 8, !tbaa !95
  store <2 x i64> %i.cl, ptr %i.ck, align 8, !tbaa !95
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bv, ptr %7, align 8, !tbaa !94
  store i64 %i.cj, ptr %i.bi, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bi, ptr %7, align 8, !tbaa !94
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %i.cm = phi ptr [ %i.bv, %bb.q ], [ %i.bi, %bb.r ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.br, align 8, !tbaa !145
  store i8 0, ptr %i.cm, align 1, !tbaa !95
  %i.cn = load ptr, ptr %7, align 8, !tbaa !94    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bi
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cp = load i64, ptr %i.bi, align 8, !tbaa !95
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker14check_segmentsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8, !nonnull !16, !align !17 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = icmp eq i32 %i.f, -17958194
  %i.h = icmp eq i32 %i.f, -822415874
  %spec.select.i = or i1 %i.g, %i.h               ; 2 uses
  %.neg = select i1 %spec.select.i, i32 -56, i32 -72
  %i.i = select i1 %spec.select.i, i64 68, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31, !noalias !201 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31, !noalias !204 ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %.not7487 = icmp eq ptr %i.m, %i.k
  br i1 %.not7487, label %._crit_edge.i.i, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.a, %bb.m
  %.sroa.8.089 = phi i64 [ %i.av, %bb.m ], [ 0, %bb.a ]
  %.sroa.460.088 = phi ptr [ %i.au, %bb.m ], [ %i.k, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.460.088, align 8, !tbaa !38 ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !207  ; 2 uses
  %i.u = add i32 %i.t, %.neg                      ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.x = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  br label %.thread67

bb.c:                                             ; preds = %.lr.ph.a
  %3 = zext nneg i32 %i.u to i64                  ; 2 uses
  %4 = urem i64 %3, %i.i
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.t, ptr %i.a, align 4, !tbaa !107
  %i.z = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.thread67

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !208 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.i, %i.ac
  %.not43 = icmp eq i64 %i.ad, %3
  br i1 %.not43, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !107
  %i.af = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.thread67

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !59
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !58 ; 2 uses
  %i.ak = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not44 = icmp eq i64 %i.aj, 0
  br i1 %.not44, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 132
  %i.am = load i32, ptr %i.al, align 4, !tbaa !209
  %i.an = and i32 %i.am, 4
  %.not45 = icmp eq i32 %i.an, 0
  br i1 %.not45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.ap = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
  br label %.thread67

bb.k:                                             ; preds = %bb.i, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 124
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !210
  %.not46 = icmp ult i32 %i.ar, 8
  br i1 %.not46, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.at = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %i.as)
  br label %.thread67

bb.m:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.460.088, i64 8
  %i.av = add nuw nsw i64 %.sroa.8.089, 1         ; 2 uses
  %.not74 = icmp eq i64 %i.av, %i.q
  br i1 %.not74, label %._crit_edge.i.i, label %.lr.ph.a

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.aw, ptr %1, align 8, !tbaa !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.aw, ptr noundef nonnull align 1 dereferenceable(6) @.str.15, i64 6, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 6, ptr %i.ax, align 8, !tbaa !145
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.ay, align 2, !tbaa !95
  %i.az = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1) #24 ; 2 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !94    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.aw
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !95
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %.not47 = icmp eq ptr %i.az, null
  br i1 %.not47, label %._crit_edge.i.i52, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 124
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !210
  %.not48 = icmp eq i32 %i.bf, 5
  br i1 %.not48, label %._crit_edge.i.i52, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.16)
  br label %.thread67

._crit_edge.i.i52:                                ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !8, !nonnull !16, !align !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.bi, ptr %2, align 8, !tbaa !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bi, ptr noundef nonnull align 1 dereferenceable(10) @.str.17, i64 10, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.bj, align 8, !tbaa !145
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.bk, align 2, !tbaa !95
  %i.bl = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %2) #24 ; 2 uses
  %i.bm = load ptr, ptr %2, align 8, !tbaa !94    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.bi
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %._crit_edge.i.i52
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !95
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %._crit_edge.i.i52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not49 = icmp eq ptr %i.bl, null
  br i1 %.not49, label %.thread67, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 124
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !210
  %.not50 = icmp eq i32 %i.br, 1
  br i1 %.not50, label %.thread67, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.18)
  br label %.thread67

.thread67:                                        ; preds = %bb.q, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.b, %bb.d, %bb.f, %bb.j, %bb.l, %bb.o
  %.5 = phi i1 [ %i.bg, %bb.o ], [ %i.x, %bb.b ], [ %i.at, %bb.l ], [ %i.ap, %bb.j ], [ %i.af, %bb.f ], [ %i.z, %bb.d ], [ %i.bs, %bb.q ], [ true, %bb.p ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer.737", align 8 ; 11 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.1416", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !211
  %i.c = load ptr, ptr %2, align 8, !tbaa !94, !noalias !211
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !145, !noalias !211
  store ptr %i.c, ptr %5, align 16, !tbaa !95, !noalias !211
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !95, !noalias !211
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !214
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !noalias !214
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.h, align 8, !tbaa !126, !noalias !214
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !128, !noalias !214
  store i64 500, ptr %i.g, align 8, !tbaa !129, !noalias !214
  %i.k = icmp eq i64 %i.b, 2
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = load i16, ptr %1, align 1
  %i.m = icmp ne i16 %i.l, 32123
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %5, align 16, !tbaa !95, !noalias !214 ; 2 uses
  %i.p = trunc i128 %.sroa.0.0.copyload.sink66.i to i64
  %i.q = lshr i128 %.sroa.0.0.copyload.sink66.i, 64
  %i.r = trunc nuw i128 %i.q to i64
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i = inttoptr i64 %i.p to ptr ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, i64 %i.r
  %i.t = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr noundef %i.s, ptr nonnull align 8 dereferenceable(32) %4), !noalias !214 ; 0 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !214
  store ptr %1, ptr %3, align 8, !tbaa !130, !noalias !214
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.b, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !60, !noalias !214
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !131, !noalias !214
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %4, ptr %i.v, align 8, !tbaa !134, !noalias !214
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 13, ptr %i.w, align 8, !tbaa !136, !noalias !214
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %5, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !95, !noalias !214
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr null, ptr %i.x, align 8, !tbaa !138, !noalias !214
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !214
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !214
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.y = load i64, ptr %i.i, align 8, !tbaa !142, !noalias !220 ; 6 uses
  %i.z = icmp ult i64 %i.y, 4611686018427387903
  call void @llvm.assume(i1 %i.z)
  %i.aa = load ptr, ptr %4, align 8, !tbaa !128, !noalias !220 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.ab, ptr %6, align 8, !tbaa !144, !alias.scope !220
  %i.ac = icmp eq ptr %i.aa, null
  %i.ad = icmp ne i64 %i.y, 0
  %or.cond.i.i.i = and i1 %i.ad, %i.ac
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.230) #25
  unreachable

bb.f:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !220
  store i64 %i.y, ptr %i.a, align 8, !tbaa !60, !noalias !220
  %i.ae = icmp samesign ugt i64 %i.y, 15
  br i1 %i.ae, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.af, ptr %6, align 8, !tbaa !94, !alias.scope !220
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !60, !noalias !220
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !95, !alias.scope !220
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %i.ah = phi ptr [ %i.af, %bb.g ], [ %i.ab, %bb.f ] ; 2 uses
  switch i64 %i.y, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !95
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !95
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.aa, i64 %i.y, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !60, !noalias !220 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !145, !alias.scope !220
  %i.al = load ptr, ptr %6, align 8, !tbaa !94, !alias.scope !220
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !220
  %i.an = load ptr, ptr %4, align 8, !tbaa !128, !noalias !214 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.j
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO13LayoutChecker27check_lazy_load_dylib_infosEv:bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit401: ; preds = %bb.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit403: ; preds = %bb.j
  %i.dt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit:                ; preds = %bb.g, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit401, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit403, %bb.l, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %.029.lcssa.i.i.i, %bb.l ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %i.dt, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit403 ], [ %i.dr, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %i.ds, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit401 ], [ %.02946.i.i.i, %bb.g ]
  %i.du = icmp eq ptr %.028.i.i.i, %i.cp
  br i1 %i.du, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread, label %bb.o

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread:         ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit
  %i.dv = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.115)
  br label %.thread106

bb.o:                                             ; preds = %_ZSt4findIPKhcET_S2_S2_RKT0_.exit
  %i.dw = load i32, ptr %i.al, align 4, !tbaa !752
  %i.dx = zext i32 %i.dw to i64
  %i.dy = load i64, ptr %i.b, align 8, !tbaa !60  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  br i1 %i.dz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ea = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.116, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %.thread106

bb.q:                                             ; preds = %bb.o
  %i.eb = load i32, ptr %i.am, align 4, !tbaa !753
  %i.ec = zext i32 %i.eb to i64
  %i.ed = icmp ult i64 %i.dy, %i.ec
  br i1 %i.ed, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ee = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.117, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %.thread106

bb.s:                                             ; preds = %bb.q
  %i.ef = load i32, ptr %i.an, align 4, !tbaa !754
  %i.eg = zext i32 %i.ef to i64                   ; 2 uses
  %i.eh = load i32, ptr %i.ao, align 4, !tbaa !755 ; 2 uses
  %i.ei = zext i32 %i.eh to i64
  %i.ej = shl nuw nsw i64 %i.ei, 2
  %i.ek = icmp ult i64 %i.cg, %i.eg
  %i.el = sub nuw i64 %i.cg, %i.eg
  %i.em = icmp ugt i64 %i.ej, %i.el
  %i.en = select i1 %i.ek, i1 true, i1 %i.em
  br i1 %i.en, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i64 %i.cg, ptr %i.e, align 8, !tbaa !60
  %i.eo = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.118, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %.thread106

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 0, ptr %i.f, align 4, !tbaa !107
  %.not169.not = icmp eq i32 %i.eh, 0
  br i1 %.not169.not, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.u, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 0, %bb.u ] ; 2 uses
  %i.ep = load i32, ptr %i.an, align 4, !tbaa !754
  %i.eq = zext i32 %i.ep to i64
  %i.er = shl nuw nsw i64 %indvars.iv, 2
  %i.es = add nuw nsw i64 %i.er, %i.eq            ; 3 uses
  store i64 %i.es, ptr %i.af, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !107
  %i.et = load ptr, ptr %1, align 8, !tbaa !24
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call i64 %i.ev(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, i64 noundef %i.es, i64 noundef 4, i64 noundef 0) #24, !inline_history !756
  %i.ex = and i64 %i.ew, 4294967296
  %.not.i.i = icmp eq i64 %i.ex, 0
  store i64 %i.es, ptr %i.af, align 8, !tbaa !97
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit.thread, label %bb.v

_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit.thread: ; preds = %.lr.ph172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.af, align 8, !tbaa !97
  br label %.thread109

bb.v:                                             ; preds = %.lr.ph172
  %i.ey = load i8, ptr %i.ag, align 8, !tbaa !101, !range !109, !noundef !16
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.w, label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit

bb.w:                                             ; preds = %bb.v
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #24
  br label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit

_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit: ; preds = %bb.v, %bb.w
  %i.fa = load i32, ptr %i.a, align 4, !tbaa !107 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.af, align 8, !tbaa !97
  %i.fb = zext i32 %i.fa to i64
  %i.fc = icmp ult i64 %i.cg, %i.fb
  br i1 %i.fc, label %.thread109, label %bb.x

.thread109:                                       ; preds = %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit.thread
  %i.fd = phi i32 [ 0, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit.thread ], [ %i.fa, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i32 %i.fd, ptr %i.g, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i64 %i.cg, ptr %i.h, align 8, !tbaa !60
  %i.fe = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.119, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.loopexit

bb.x:                                             ; preds = %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ff = trunc nuw i64 %indvars.iv.next to i32
  store i32 %i.ff, ptr %i.f, align 4, !tbaa !107
  %i.fg = load i32, ptr %i.ao, align 4, !tbaa !755
  %i.fh = zext i32 %i.fg to i64
  %.not = icmp samesign ult i64 %indvars.iv.next, %i.fh
  br i1 %.not, label %.lr.ph172, label %._crit_edge173, !llvm.loop !757

.thread106:                                       ; preds = %bb.e, %_ZNK4LIEF10SpanStream7read_atEmmm.exit.thread, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread, %bb.p, %bb.r, %bb.t
  %.6.ph = phi i1 [ %i.eo, %bb.t ], [ %i.ee, %bb.r ], [ %i.ea, %bb.p ], [ %i.dv, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread ], [ %i.cj, %_ZNK4LIEF10SpanStream7read_atEmmm.exit.thread ], [ %i.cn, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.loopexit

._crit_edge173:                                   ; preds = %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread101

.thread101:                                       ; preds = %bb.b, %._crit_edge173
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.468.0175, i64 8
  %i.fj = add nuw nsw i64 %.sroa.8.0176, 1        ; 2 uses
  %.not114 = icmp eq i64 %i.fj, %i.ae
  br i1 %.not114, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.thread101, %._crit_edge, %.thread109, %.thread106, %.thread98
  %.not114126 = phi i1 [ %i.fe, %.thread109 ], [ %.6.ph, %.thread106 ], [ %i.ci, %.thread98 ], [ true, %._crit_edge ], [ true, %.thread101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret i1 %.not114126
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker9check_tlsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.LIEF::optional", align 8    ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"struct.LIEF::MachO::ThreadLocalVariables::Thunk", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8, !nonnull !16, !align !17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load i32, ptr %i.f, align 8, !tbaa !18
  %.fr = freeze i32 %i.g
  %i.h = tail call { i64, i64 } @_ZNK4LIEF5MachO6Binary25tlv_initial_content_rangeEv(ptr noundef nonnull align 8 dereferenceable(552) %i.e) #24 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !8, !nonnull !16, !align !17 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81, !noalias !758 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81, !noalias !761 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %.not95105 = icmp eq ptr %i.o, %i.m
  br i1 %.not95105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.034108 = phi ptr [ %spec.select, %.thread ], [ null, %bb.a ]
  %.sroa.866.0107 = phi i64 [ %i.au, %.thread ], [ 0, %bb.a ]
  %.sroa.465.0106 = phi ptr [ %i.at, %.thread ], [ %i.m, %bb.a ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.465.0106, align 8, !tbaa !89 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 116
  %i.v = load i32, ptr %i.u, align 4, !tbaa !91
  %i.w = and i32 %i.v, 255
  %i.x = icmp eq i32 %i.w, 19
  %..i = select i1 %i.x, ptr %i.t, ptr null       ; 2 uses
  %.not = icmp eq ptr %..i, null
  %spec.select = select i1 %.not, ptr %.034108, ptr %..i ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -17958194
  %i.ac = icmp eq i32 %i.aa, -822415874
  %spec.select.i.i48 = or i1 %i.ab, %i.ac
  %i.ad = select i1 %spec.select.i.i48, i64 12, i64 24 ; 2 uses
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !60
  %.not43 = icmp eq ptr %spec.select, null
  br i1 %.not43, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ae = load ptr, ptr %spec.select, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call { ptr, i64 } %i.ag(ptr noundef nonnull align 8 dereferenceable(192) %spec.select) #24
  %i.ai = extractvalue { ptr, i64 } %i.ah, 1      ; 2 uses
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !60
  %i.aj = urem i64 %i.ai, %i.ad
  %.not44 = icmp eq i64 %i.aj, 0
  br i1 %.not44, label %.thread82, label %bb.c

.thread82:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = load ptr, ptr %spec.select, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %spec.select) #24
  %i.an = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.120, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ao = load ptr, ptr %2, align 8, !tbaa !94    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %.thread84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !95
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #27
  br label %.thread84

.thread84:                                        ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.loopexit

.thread:                                          ; preds = %.lr.ph, %.thread82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.465.0106, i64 8
  %i.au = add nuw nsw i64 %.sroa.866.0107, 1      ; 2 uses
  %.not95 = icmp eq i64 %i.au, %i.s
  br i1 %.not95, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread, %bb.a
  %.034.lcssa = phi ptr [ null, %bb.a ], [ %spec.select, %.thread ] ; 4 uses
  %i.av = sub i64 %i.j, %i.i
  %.fr122 = freeze i64 %i.av                      ; 4 uses
  %i.aw = icmp ugt i64 %.fr122, 4294967296
  br i1 %i.aw, label %switch.early.test, label %bb.d

switch.early.test:                                ; preds = %._crit_edge
  %i.ax = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.121)
  br label %.loopexit

bb.d:                                             ; preds = %._crit_edge
  %.not45 = icmp eq ptr %.034.lcssa, null
  br i1 %.not45, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = tail call noundef i64 @_ZNK4LIEF5MachO20ThreadLocalVariables9nb_thunksEv(ptr noundef nonnull align 8 dereferenceable(192) %.034.lcssa) #24, !noalias !764 ; 3 uses
  %.not96109 = icmp eq i64 %i.ay, 0
  br i1 %.not96109, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  switch i32 %.fr, label %.lr.ph112.split.split [
    i32 -17958194, label %.lr.ph112.split.us.preheader
    i32 -822415874, label %.lr.ph112.split.us.preheader
  ]

.lr.ph112.split.us.preheader:                     ; preds = %.lr.ph112, %.lr.ph112
  br label %.lr.ph112.split.us

.lr.ph112.split.us:                               ; preds = %.lr.ph112.split.us.preheader, %bb.g
  %.sroa.4.0110.us = phi i64 [ %i.bf, %bb.g ], [ 0, %.lr.ph112.split.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !767
  call void @_ZNK4LIEF5MachO20ThreadLocalVariables3getEm(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::optional") align 8 %1, ptr noundef nonnull align 8 dereferenceable(192) %.034.lcssa, i64 noundef %.sroa.4.0110.us) #24, !noalias !767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !767
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !770
  %i.bc = icmp ugt i64 %i.bb, %.fr122
  br i1 %i.bc, label %.split.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph112.split.us
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !772
  %i.be = icmp ugt i64 %i.bd, 65535
  br i1 %i.be, label %.split114.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bf = add i64 %.sroa.4.0110.us, 1             ; 2 uses
  %.not96.us = icmp eq i64 %i.bf, %i.ay
  br i1 %.not96.us, label %.loopexit, label %.lr.ph112.split.us

.lr.ph112.split.split:                            ; preds = %.lr.ph112, %bb.i
  %.sroa.4.0110 = phi i64 [ %i.bm, %bb.i ], [ 0, %.lr.ph112 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !767
  call void @_ZNK4LIEF5MachO20ThreadLocalVariables3getEm(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::optional") align 8 %1, ptr noundef nonnull align 8 dereferenceable(192) %.034.lcssa, i64 noundef %.sroa.4.0110) #24, !noalias !767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !61
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !767
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !770
  %i.bh = icmp ugt i64 %i.bg, %.fr122
  br i1 %i.bh, label %.split.us, label %bb.h

.split.us:                                        ; preds = %.lr.ph112.split.us, %.lr.ph112.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %.fr122, ptr %i.c, align 8, !tbaa !60
  %i.bi = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.122, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.thread90

bb.h:                                             ; preds = %.lr.ph112.split.split
  %i.bj = load i64, ptr %i.ba, align 8, !tbaa !772
  %i.bk = icmp ugt i64 %i.bj, 4294967295
  br i1 %i.bk, label %.split120.us, label %bb.i

.split120.us:                                     ; preds = %bb.h
  %i.bl = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.123, ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  br label %.thread90

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bm = add nuw i64 %.sroa.4.0110, 1            ; 2 uses
  %.not96 = icmp eq i64 %i.bm, %i.ay
  br i1 %.not96, label %.loopexit, label %.lr.ph112.split.split

.split114.us:                                     ; preds = %bb.f
  %i.bn = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.124, ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  br label %.thread90

.thread90:                                        ; preds = %.split114.us, %.split120.us, %.split.us
  %.6.ph = phi i1 [ %i.bn, %.split114.us ], [ %i.bl, %.split120.us ], [ %i.bi, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.i, %switch.early.test, %bb.e, %bb.d, %.thread90, %.thread84
  %.8 = phi i1 [ %i.ax, %switch.early.test ], [ true, %bb.e ], [ %i.an, %.thread84 ], [ %.6.ph, %.thread90 ], [ true, %bb.d ], [ true, %bb.i ], [ true, %bb.g ]
  ret i1 %.8
}

; Function Attrs: nounwind
declare void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare noundef ptr @_ZNK4LIEF5MachO6Binary9dyld_infoEv(ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %5 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer.737", align 8 ; 11 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.1464", align 16 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !773
  %i.c = load i64, ptr %2, align 8, !tbaa !60, !noalias !773
  store i64 %i.c, ptr %7, align 16, !tbaa !95, !noalias !773
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.e = load i32, ptr %3, align 4, !tbaa !107, !noalias !773
  store i32 %i.e, ptr %i.d, align 16, !tbaa !95, !noalias !773
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !776
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.h, align 8, !noalias !776
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.g, align 8, !tbaa !126, !noalias !776
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !128, !noalias !776
  store i64 500, ptr %i.f, align 8, !tbaa !129, !noalias !776
  %i.j = icmp eq i64 %i.b, 2
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = load i16, ptr %1, align 1
  %i.l = icmp ne i16 %i.k, 32123
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %7, align 16, !tbaa !95, !noalias !776
  %i.o = trunc i128 %.sroa.0.0.copyload.sink66.i to i64 ; 5 uses
  %i.p = or i64 %i.o, 1
  %i.q = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = xor i64 %i.q, 63
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !95, !noalias !776 ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = zext i8 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !60, !noalias !776
  %i.y = icmp ugt i64 %i.x, %i.o
  %.neg.i.i.i.i = sext i1 %i.y to i32
  %i.z = add nsw i32 %.neg.i.i.i.i, %i.u          ; 4 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = icmp ugt i32 %i.z, 500
  br i1 %i.ab, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.c
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 750) ; 2 uses
end_hunk_1
