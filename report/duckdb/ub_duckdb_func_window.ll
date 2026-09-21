Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_window?download=true
inline.NumInlined: 11766
inline.NumDeleted: 5032
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb28WindowCollectionChunkScanner16PrefixStructTypeEmm:bb.a

.thread:                                          ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.noexc25

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.01254 = phi i64 [ %3, %.lr.ph ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  %i.p = icmp ult i64 %.01254, 10
  br i1 %i.p, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.h
  %.029.i.i = phi i32 [ %i.x, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.w, %bb.h ], [ %.01254, %bb.b ] ; 5 uses
  %i.q = icmp ult i64 %.02328.i.i, 100
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.r = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.s = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.u = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.w = udiv i64 %.02328.i.i, 10000
  %i.x = add i32 %.029.i.i, 4                     ; 2 uses
  %i.y = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.y, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !27

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.022.i.i = phi i32 [ %i.v, %bb.g ], [ %i.r, %bb.c ], [ %i.t, %bb.e ], [ 1, %bb.b ], [ %i.x, %bb.h ]
  %i.z = zext i32 %.022.i.i to i64
  store ptr %i.c, ptr %5, align 8, !tbaa !568, !alias.scope !1151
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.z, i8 noundef signext 0)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.aa = load ptr, ptr %5, align 8, !tbaa !216, !alias.scope !1151 ; 4 uses
  %i.ab = icmp ugt i64 %.01254, 99
  br i1 %i.ab, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.noexc
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !569, !alias.scope !1151
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = add i32 %i.ad, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ah, %.lr.ph.i4.i ], [ %.01254, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ar, %.lr.ph.i4.i ], [ %i.ae, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.af = urem i64 %.020.i.i, 100
  %i.ag = shl nuw nsw i64 %i.af, 1
  %i.ah = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ag ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !282, !noalias !1151
  %i.al = zext i32 %.01819.i.i to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !282
  %i.an = load i8, ptr %i.ai, align 2, !tbaa !282, !noalias !1151
  %i.ao = add i32 %.01819.i.i, -1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ap
  store i8 %i.an, ptr %i.aq, align 1, !tbaa !282
  %i.ar = add i32 %.01819.i.i, -2
  %i.as = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.as, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !28

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %.noexc
  %.0.lcssa.i.i = phi i64 [ %.01254, %.noexc ], [ %i.ah, %.lr.ph.i4.i ] ; 3 uses
  %i.at = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.au = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.av = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !282, !noalias !1151
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !282
  %i.az = load i8, ptr %i.av, align 2, !tbaa !282, !noalias !1151
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ba = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bb = or disjoint i8 %i.ba, 48
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i.i = phi i8 [ %i.bb, %bb.j ], [ %i.az, %bb.i ]
  store i8 %storemerge.i.i, ptr %i.aa, align 1, !tbaa !282
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.bc = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.01254)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store ptr %i.f, ptr %7, align 8, !tbaa !568
  %i.be = load ptr, ptr %5, align 8, !tbaa !216   ; 2 uses
  %i.bf = load i64, ptr %i.d, align 8, !tbaa !569 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !278
  %i.bg = icmp ugt i64 %i.bf, 15
  br i1 %i.bg, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.m
  %i.bh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %bb.t   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i.i
  store ptr %i.bh, ptr %7, align 8, !tbaa !216
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !278
  store i64 %i.bi, ptr %i.f, align 8, !tbaa !282
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc17, %bb.m
  %i.bj = phi ptr [ %i.bh, %.noexc17 ], [ %i.f, %bb.m ] ; 2 uses
  switch i64 %i.bf, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.bk = load i8, ptr %i.be, align 1, !tbaa !282
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !282
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.o:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.be, i64 %i.bf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !278 ; 2 uses
  store i64 %i.bl, ptr %i.g, align 8, !tbaa !569
  %i.bm = load ptr, ptr %7, align 8, !tbaa !216
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl
  store i8 0, ptr %i.bn, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2IRS5_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %7, align 8, !tbaa !216   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.f
  br i1 %i.bq, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.bp) #30
  br label %.body

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2IRS5_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE12emplace_backIJRS9_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2IRS5_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #29
  %i.br = load ptr, ptr %7, align 8, !tbaa !216   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.f
  br i1 %i.bs, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.br) #30
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.bt = load ptr, ptr %5, align 8, !tbaa !216   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.c
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.bv = add i64 %.01254, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1150

bb.r:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.s:                                             ; preds = %bb.l, %bb.k
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %.noexc.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2IRS5_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #29
  br label %.body

.body:                                            ; preds = %bb.p, %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.u ], [ %i.by, %bb.t ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bo, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #29
  br label %bb.v

bb.v:                                             ; preds = %.body, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bx, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.ca = load ptr, ptr %5, align 8, !tbaa !216   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.c
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.ca) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.body26

bb.w:                                             ; preds = %._crit_edge
  %i.cc = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 0)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i, %bb.x, %bb.w
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body26

bb.z:                                             ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %.pre, %.pre59
  br i1 %.not.i.i.i.i.i, label %.noexc25, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = icmp ugt i64 %i.m, 164703072086692425
  br i1 %i.cf, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !229

.noexc.i.i.i:                                     ; preds = %bb.aa
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc24 unwind label %bb.y

.noexc24:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #32
          to label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i..noexc25_crit_edge unwind label %bb.y

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i..noexc25_crit_edge: ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre60 = load ptr, ptr %4, align 8, !tbaa !1152
  %.pre61 = load ptr, ptr %i.i, align 8, !tbaa !1152
  br label %.noexc25

.noexc25:                                         ; preds = %.thread, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i..noexc25_crit_edge, %bb.z
  %i.ch = phi ptr [ %i.i, %bb.z ], [ %i.i, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i..noexc25_crit_edge ], [ %i.o, %.thread ] ; 2 uses
  %i.ci = phi i64 [ 0, %bb.z ], [ %i.l, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i..noexc25_crit_edge ], [ 0, %.thread ]
  %i.cj = phi ptr [ %.pre, %bb.z ], [ %.pre61, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i..noexc25_crit_edge ], [ null, %.thread ]
  %i.ck = phi ptr [ %.pre59, %bb.z ], [ %.pre60, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i..noexc25_crit_edge ], [ null, %.thread ]
  %i.cl = phi ptr [ null, %bb.z ], [ %i.cg, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i..noexc25_crit_edge ], [ null, %.thread ] ; 4 uses
  store ptr %i.cl, ptr %8, align 8, !tbaa !567
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !566
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ci
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !570
  %i.cp = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESt6vectorISB_SaISB_EEEEPSB_ET0_T_SK_SJ_(ptr %i.ck, ptr %i.cj, ptr noundef %i.cl)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc25
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %8, align 8, !tbaa !567   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i, label %.body26, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef nonnull %i.cr) #30
  br label %.body26

bb.ad:                                            ; preds = %.noexc25
  store ptr %i.cp, ptr %i.cm, align 8, !tbaa !566
  invoke void @_ZN6duckdb11LogicalType6STRUCTENS_6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_ELb1ESaIS9_EEE(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8 %0, ptr noundef nonnull %8)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cs = load ptr, ptr %8, align 8, !tbaa !567   ; 3 uses
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !566 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cs, %i.ct
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cy, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i ], [ %i.cs, %bb.ae ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cu) #29
  %i.cv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !216 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.cv) #30
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cy, %i.ct
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !567
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %bb.ae
  %i.cz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.cs, %bb.ae ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.cz) #30
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #29
  br label %.body26

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit: ; preds = %bb.af, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, %bb.x
  %i.db = phi ptr [ %i.ch, %bb.af ], [ %i.ch, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i ], [ %i.i, %bb.x ]
  %i.dc = load ptr, ptr %4, align 8, !tbaa !567   ; 3 uses
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !566 ; 2 uses
  %.not4.i.i.i28 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not4.i.i.i28, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i36, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i32
  %.05.i.i.i30 = phi ptr [ %i.di, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i32 ], [ %i.dc, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i.i30, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.de) #29
  %i.df = load ptr, ptr %.05.i.i.i30, align 8, !tbaa !216 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.05.i.i.i30, i64 16
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i29
  call void @_ZdlPv(ptr noundef %i.df) #30
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i32

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i32: ; preds = %.lr.ph.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31
  %i.di = getelementptr inbounds nuw i8, ptr %.05.i.i.i30, i64 56 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.di, %i.dd
  br i1 %.not.i.i.i33, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i34, label %.lr.ph.i.i.i29, !llvm.loop !29

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i34: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i32
  %.pr.i35 = load ptr, ptr %4, align 8, !tbaa !567
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i36

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i36: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i34, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit
  %i.dj = phi ptr [ %.pr.i35, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i34 ], [ %i.dc, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i37 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i1.i37, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit39, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i36
  call void @_ZdlPv(ptr noundef nonnull %i.dj) #30
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit39

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit39: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i36, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
end_hunk_0
begin_hunk_1_@_ZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmm:bb.a
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 3 uses
  %i.l = alloca i64, align 8                      ; 3 uses
  %i.m = alloca i64, align 8                      ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 3 uses
  %i.p = alloca i64, align 8                      ; 3 uses
  %i.q = alloca i64, align 8                      ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %i.s = alloca i64, align 8                      ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca i64, align 8                      ; 3 uses
  %i.v = alloca i64, align 8                      ; 3 uses
  %i.w = alloca i64, align 8                      ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %i.y = alloca i64, align 8                      ; 3 uses
  %i.z = alloca i64, align 8                      ; 3 uses
  %i.aa = alloca i64, align 8                     ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ab = alloca i64, align 8                     ; 4 uses
  %i.ac = alloca i64, align 8                     ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ad = alloca i64, align 8                     ; 5 uses
  %i.ae = alloca i64, align 8                     ; 3 uses
  %i.af = alloca i64, align 8                     ; 3 uses
  %i.ag = alloca i64, align 8                     ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ah = alloca i64, align 8                     ; 5 uses
  %i.ai = alloca i64, align 8                     ; 5 uses
  %i.aj = alloca i64, align 8                     ; 4 uses
  %i.ak = alloca i64, align 8                     ; 4 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.al = alloca i64, align 8                     ; 5 uses
  %i.am = alloca i64, align 8                     ; 3 uses
  %i.an = alloca i64, align 8                     ; 3 uses
  %i.ao = alloca i64, align 8                     ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ap = alloca i64, align 8                     ; 5 uses
  %i.aq = alloca i64, align 8                     ; 5 uses
  %21 = alloca %"struct.duckdb::AggregateInputData", align 8 ; 6 uses
  %22 = alloca %"struct.duckdb::AggregateInputData", align 8 ; 6 uses
  %23 = alloca %"struct.duckdb::AggregateInputData", align 8 ; 6 uses
  %24 = alloca %"struct.duckdb::AggregateInputData", align 8 ; 6 uses
  %25 = alloca %"struct.duckdb::AggregateInputData", align 8 ; 6 uses
  %i.ar = alloca i64, align 8                     ; 4 uses
  %i.as = alloca i64, align 8                     ; 4 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.at = alloca i64, align 8                     ; 4 uses
  %i.au = alloca i64, align 8                     ; 4 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"struct.duckdb::AggregateInputData", align 8 ; 6 uses
  %i.av = alloca i64, align 8                     ; 4 uses
  %i.aw = alloca i64, align 8                     ; 4 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ax = alloca i64, align 8                     ; 4 uses
  %i.ay = alloca i64, align 8                     ; 4 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 15 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !343 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 8 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !343 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 976 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !413, !nonnull !115, !align !265
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 488
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !365 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @_ZN6duckdb21WindowAggregateStates10InitializeEm(ptr noundef nonnull align 8 dereferenceable(536) %i.bk, i64 noundef %5)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 5 uses
  %i.bm = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef 6) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !343
  %i.bp = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef 7) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !343
  %i.bs = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !343
  %i.bv = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef 3) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !343
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %"_ZN6duckdb16WindowAggregator17EvaluateSubFramesIZNS_34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmE3$_0EEvSA_NS_17WindowExcludeModeEmmRNS_6vectorINS_11FrameBoundsELb1ESaISG_EEET_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.by = icmp eq i8 %i.bj, 0
  %i.bz = icmp eq i8 %i.bj, 1                     ; 2 uses
  %i.ca = icmp eq i8 %i.bj, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 1632 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 1640 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 26 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 1600 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 1520 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEm.exit.i", %.lr.ph.i
  %.059176.i = phi i64 [ %6, %.lr.ph.i ], [ %i.yf, %"_ZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEm.exit.i" ] ; 5 uses
  %.060175.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ye, %"_ZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEm.exit.i" ] ; 6 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.060175.i
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !278 ; 6 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.060175.i
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !278 ; 5 uses
  br i1 %i.by, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.bz, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.060175.i
  %i.db = load i64, ptr %i.da, align 8, !tbaa !278
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.dc = phi i64 [ %i.db, %bb.d ], [ %.059176.i, %bb.c ]
  %i.dd = call noundef i64 @llvm.umin.i64(i64 %i.dc, i64 %i.cz)
  %i.de = call noundef i64 @llvm.umax.i64(i64 %i.dd, i64 %i.cx)
  %i.df = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef 0) ; 2 uses
  store i64 %i.cx, ptr %i.df, align 8, !tbaa !278
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 %i.de, ptr %.sroa.4108.0..sroa_idx.i, align 8, !tbaa !278
  br i1 %i.ca, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.dg = call noundef i64 @llvm.umax.i64(i64 %.059176.i, i64 %i.cx)
  %i.dh = call noundef i64 @llvm.umin.i64(i64 %i.dg, i64 %i.cz)
  %i.di = add i64 %.059176.i, 1
  %i.dj = call noundef i64 @llvm.umin.i64(i64 %i.di, i64 %i.cz)
  %i.dk = call noundef i64 @llvm.umax.i64(i64 %i.dj, i64 %i.cx)
  %i.dl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef 1) ; 2 uses
  store i64 %i.dh, ptr %i.dl, align 8, !tbaa !278
  %.sroa.4106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.dk, ptr %.sroa.4106.0..sroa_idx.i, align 8, !tbaa !278
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dm = add i64 %.059176.i, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i
  %.0118.i.a = phi i64 [ 2, %.thread.i ], [ 1, %bb.f ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.060175.i
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !278
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0117.i = phi i64 [ 1, %bb.g ], [ %.0118.i.a, %bb.h ]
  %i.dp = phi i64 [ %i.dm, %bb.g ], [ %i.do, %bb.h ]
  %i.dq = call noundef i64 @llvm.umax.i64(i64 %i.dp, i64 %i.cx)
  %i.dr = call noundef i64 @llvm.umin.i64(i64 %i.dq, i64 %i.cz)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.0117.sink.i = phi i64 [ %.0117.i, %bb.i ], [ 0, %bb.b ]
  %.sink354.i = phi i64 [ %i.dr, %bb.i ], [ %i.cx, %bb.b ]
  %i.ds = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef %.0117.sink.i) ; 2 uses
  store i64 %.sink354.i, ptr %i.ds, align 8, !tbaa !278
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %i.cz, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !278
  %i.dt = load ptr, ptr %i.cn, align 8, !tbaa !328
  %i.du = load i64, ptr %i.co, align 8, !tbaa !323
  %i.dv = mul i64 %i.du, %.060175.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv ; 6 uses
  %i.dx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef 0)
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !710 ; 21 uses
  %i.dz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef 0)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !711 ; 10 uses
  %.not.i.i.i = icmp ult i64 %i.dy, %i.eb
  br i1 %.not.i.i.i, label %bb.k, label %"_ZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEm.exit.i"

bb.k:                                             ; preds = %bb.j
  %i.ec = add i64 %i.eb, -1                       ; 2 uses
  %i.ed = icmp eq i64 %i.dy, %i.ec
  br i1 %i.ed, label %.thread432.thread.i.i.i, label %.preheader448.i.i.i

.thread432.thread.i.i.i:                          ; preds = %bb.k
  %i.ee = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %i.bf, i64 noundef 0)
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !366
  br label %.preheader.i.i.i

.preheader448.i.i.i:                              ; preds = %bb.k, %.preheader448.i.i.i
  %.sroa.0398.0.i.i.i = phi i64 [ %i.eg, %.preheader448.i.i.i ], [ %i.dy, %bb.k ]
  %.sroa.7.0.i.i.i = phi i64 [ %i.eh, %.preheader448.i.i.i ], [ %i.ec, %bb.k ] ; 4 uses
  %.0115.i.i.i = phi i64 [ %i.ej, %.preheader448.i.i.i ], [ 0, %bb.k ]
  %.0.i.i.i = phi i64 [ %i.ei, %.preheader448.i.i.i ], [ 1, %bb.k ]
  %i.eg = lshr i64 %.sroa.0398.0.i.i.i, 5         ; 3 uses
  %i.eh = lshr i64 %.sroa.7.0.i.i.i, 5            ; 2 uses
  %i.ei = shl i64 %.0.i.i.i, 5                    ; 7 uses
  %i.ej = add i64 %.0115.i.i.i, 1                 ; 5 uses
  %.not133.i.i.i = icmp eq i64 %i.eg, %i.eh
  br i1 %.not133.i.i.i, label %bb.l, label %.preheader448.i.i.i, !llvm.loop !1264

bb.l:                                             ; preds = %.preheader448.i.i.i
  %i.ek = mul i64 %i.ei, %.sroa.7.0.i.i.i
  %i.el = lshr exact i64 %i.ek, 5                 ; 4 uses
  %i.em = icmp ugt i64 %i.ej, 2
  br i1 %i.em, label %bb.m, label %.loopexit447.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.en = mul i64 %i.ei, %i.eg                    ; 4 uses
  %i.eo = add i64 %i.en, %i.ei
  %i.ep = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %i.bf, i64 noundef 0) ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !368
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !366
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = ashr exact i64 %i.ev, 3
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.ew, i64 %i.eo)
  %i.ex = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %i.bf, i64 noundef %i.ej)
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !366 ; 2 uses
  %.idx438.i.i.i = shl nuw nsw i64 %i.en, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx438.i.i.i ; 2 uses
  %i.fa = sub nsw i64 %.sroa.speculated.i.i.i, %i.en ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, 0
  br i1 %i.fb, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, label %_ZSt11lower_boundIPKmmET_S2_S2_RKT0_.exit.i.i.i

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i: ; preds = %bb.m, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ %i.fa, %bb.m ] ; 2 uses
  %.01116.i.i.i.i.i = phi ptr [ %.112.i.i.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ %i.ez, %bb.m ] ; 2 uses
  %i.fc = lshr i64 %.017.i.i.i.i.i, 1             ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i.i.i, i64 %i.fc ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !278
  %.not.i.i = icmp ugt i64 %i.fe, %i.dy           ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fg = xor i64 %i.fc, -1
  %i.fh = add nsw i64 %.017.i.i.i.i.i, %i.fg
  %.112.i.i.i.i.i = select i1 %.not.i.i, ptr %.01116.i.i.i.i.i, ptr %i.ff ; 2 uses
  %.1.i.i.i.i.i = select i1 %.not.i.i, i64 %i.fc, i64 %i.fh ; 2 uses
  %i.fi = icmp sgt i64 %.1.i.i.i.i.i, 0
  br i1 %i.fi, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, label %_ZSt11lower_boundIPKmmET_S2_S2_RKT0_.exit.i.i.i, !llvm.loop !43

_ZSt11lower_boundIPKmmET_S2_S2_RKT0_.exit.i.i.i:  ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, %bb.m
  %.011.lcssa.i.i.i.i.i = phi ptr [ %i.ez, %bb.m ], [ %.112.i.i.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ]
  %i.fj = ptrtoint ptr %.011.lcssa.i.i.i.i.i to i64
  %i.fk = ptrtoint ptr %i.ey to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = ashr exact i64 %i.fl, 3
  %i.fn = call noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.fm)
  %i.fo = and i64 %i.fn, -32
  %i.fp = call range(i64 5, 65) i64 @llvm.cttz.i64(i64 %i.ei, i1 true)
  %i.fq = lshr i64 %i.en, %i.fp
  %i.fr = shl i64 %i.fq, 6
  %i.fs = add i64 %i.fo, %i.fr                    ; 2 uses
  %i.ft = and i64 %.sroa.7.0.i.i.i, 31
  %.neg.i.i.i = or i64 %.sroa.7.0.i.i.i, -32
  %i.fu = add i64 %i.fs, %.neg.i.i.i
  %i.fv = or disjoint i64 %i.fs, %i.ft
  br label %bb.n

bb.n:                                             ; preds = %bb.ax, %_ZSt11lower_boundIPKmmET_S2_S2_RKT0_.exit.i.i.i
  %.sroa.0378.0.i.i.i = phi i64 [ %i.el, %_ZSt11lower_boundIPKmmET_S2_S2_RKT0_.exit.i.i.i ], [ %.sroa.0378.1.lcssa.i.i.i, %bb.ax ] ; 3 uses
  %.sroa.12.1.i.i.i = phi i64 [ %i.el, %_ZSt11lower_boundIPKmmET_S2_S2_RKT0_.exit.i.i.i ], [ %.sroa.12.2.lcssa.i.i.i, %bb.ax ] ; 3 uses
  %.sroa.0362.0.i.i.i = phi i64 [ %i.fu, %_ZSt11lower_boundIPKmmET_S2_S2_RKT0_.exit.i.i.i ], [ %.sroa.0362.1.i.i.i, %bb.ax ]
  %.sroa.13.0.i.i.i = phi i64 [ %i.fv, %_ZSt11lower_boundIPKmmET_S2_S2_RKT0_.exit.i.i.i ], [ %.sroa.13.2.i.i.i, %bb.ax ] ; 2 uses
  %.2117.i.i.i = phi i64 [ %i.ej, %_ZSt11lower_boundIPKmmET_S2_S2_RKT0_.exit.i.i.i ], [ %i.fw, %bb.ax ] ; 3 uses
  %.2.i.i.i = phi i64 [ %i.ei, %_ZSt11lower_boundIPKmmET_S2_S2_RKT0_.exit.i.i.i ], [ %i.fx, %bb.ax ]
  %i.fw = add i64 %.2117.i.i.i, -1                ; 9 uses
  %i.fx = lshr i64 %.2.i.i.i, 5                   ; 10 uses
  %i.fy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %i.bf, i64 noundef %i.fw)
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !366 ; 8 uses
  %i.ga = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %i.bf, i64 noundef %.2117.i.i.i) ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24 ; 6 uses
  %i.gc = add i64 %.sroa.0362.0.i.i.i, 31         ; 2 uses
  %i.gd = sub i64 %.sroa.0378.0.i.i.i, %i.dy
  %.not135519.i.i.i = icmp ult i64 %i.gd, %i.fx
  br i1 %.not135519.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gf = ptrtoint ptr %i.fz to i64
  br label %bb.o

bb.o:                                             ; preds = %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit.i.i.i", %.lr.ph.i.i.i
  %storemerge134521.i.i.i = phi i64 [ %i.gc, %.lr.ph.i.i.i ], [ %i.jv, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit.i.i.i" ] ; 5 uses
  %.sroa.0378.1520.i.i.i = phi i64 [ %.sroa.0378.0.i.i.i, %.lr.ph.i.i.i ], [ %i.hy, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit.i.i.i" ]
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !368
  %i.gh = load ptr, ptr %i.gb, align 8, !tbaa !366 ; 3 uses
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = ashr exact i64 %i.gk, 3                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i64 %storemerge134521.i.i.i, ptr %i.ax, align 8, !tbaa !278
  store i64 %i.gl, ptr %i.ay, align 8, !tbaa !278
  %.not.i.i.i.i.i.i = icmp ult i64 %storemerge134521.i.i.i, %i.gl
  br i1 %.not.i.i.i.i.i.i, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit.i.i.i, label %.noexc.i.i.i.i, !prof !279

.noexc.i.i.i.i:                                   ; preds = %bb.o
  %i.gm = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #29
  %i.gn = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 3 uses
  store ptr %i.gn, ptr %30, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #29
  store i64 55, ptr %i.aq, align 8, !tbaa !278
  %i.go = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i64 noundef 0)
          to label %.noexc.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i ; 3 uses

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i
  store ptr %i.go, ptr %30, align 8, !tbaa !216
  %i.gp = load i64, ptr %i.aq, align 8, !tbaa !278 ; 3 uses
  store i64 %i.gp, ptr %i.gn, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.go, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !569
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gp
  store i8 0, ptr %i.gr, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.gm, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.r unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  br label %common.resume.sink.split.i

bb.q:                                             ; preds = %bb.p, %.noexc.i.i.i
  %.0.i.i.i.i.i.i = phi i1 [ false, %bb.p ], [ true, %.noexc.i.i.i ] ; 2 uses
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gu = load ptr, ptr %30, align 8, !tbaa !216  ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.gn
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.gu) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  br i1 %.0.i.i.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  br i1 %.0.i.i.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i339.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i338.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i334.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i331.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i330.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i325.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i323.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i317.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i315.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i314.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i310.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i307.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i306.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i301.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i299.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i298.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i293.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i291.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i290.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i286.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i283.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i277.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i190.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i189.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i185.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i182.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i177.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i267.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i266.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i262.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i154.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i153.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i149.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i
  %.sink.i = phi ptr [ %i.wy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.wy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.wy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.tr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i325.i.i.i ], [ %i.tg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i317.i.i.i ], [ %i.ro, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i310.i.i.i ], [ %i.qy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i301.i.i.i ], [ %i.ql, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i293.i.i.i ], [ %i.ni, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i286.i.i.i ], [ %i.ms, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i277.i.i.i ], [ %i.ls, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i185.i.i.i ], [ %i.lf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i177.i.i.i ], [ %i.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i262.i.i.i ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ], [ %i.gz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i149.i.i.i ], [ %i.uh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i334.i.i.i ], [ %i.gz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i154.i.i.i ], [ %i.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i153.i.i.i ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i267.i.i.i ], [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i266.i.i.i ], [ %i.lf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i182.i.i.i ], [ %i.lf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181.i.i.i ], [ %i.ls, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i190.i.i.i ], [ %i.ls, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i189.i.i.i ], [ %i.ms, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i283.i.i.i ], [ %i.ms, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282.i.i.i ], [ %i.ni, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i291.i.i.i ], [ %i.ni, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i290.i.i.i ], [ %i.ql, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i299.i.i.i ], [ %i.ql, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i298.i.i.i ], [ %i.qy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i307.i.i.i ], [ %i.qy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i306.i.i.i ], [ %i.ro, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i315.i.i.i ], [ %i.ro, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i314.i.i.i ], [ %i.tg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i323.i.i.i ], [ %i.tg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322.i.i.i ], [ %i.tr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i331.i.i.i ], [ %i.tr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i330.i.i.i ], [ %i.uh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i339.i.i.i ], [ %i.uh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i338.i.i.i ], [ %i.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.xe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.xf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.xf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.tx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i325.i.i.i ], [ %i.tm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i317.i.i.i ], [ %i.ru, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i310.i.i.i ], [ %i.re, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i301.i.i.i ], [ %i.qr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i293.i.i.i ], [ %i.no, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i286.i.i.i ], [ %i.my, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i277.i.i.i ], [ %i.ly, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i185.i.i.i ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i177.i.i.i ], [ %i.iw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i262.i.i.i ], [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ], [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i149.i.i.i ], [ %i.un, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i334.i.i.i ], [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i154.i.i.i ], [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i153.i.i.i ], [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.ix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i267.i.i.i ], [ %i.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i266.i.i.i ], [ %i.lm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i182.i.i.i ], [ %i.lm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181.i.i.i ], [ %i.lz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i190.i.i.i ], [ %i.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i189.i.i.i ], [ %i.mz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i283.i.i.i ], [ %i.mz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282.i.i.i ], [ %i.np, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i291.i.i.i ], [ %i.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i290.i.i.i ], [ %i.qs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i299.i.i.i ], [ %i.qs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i298.i.i.i ], [ %i.rf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i307.i.i.i ], [ %i.rf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i306.i.i.i ], [ %i.rv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i315.i.i.i ], [ %i.rv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i314.i.i.i ], [ %i.tn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i323.i.i.i ], [ %i.tn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322.i.i.i ], [ %i.ty, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i331.i.i.i ], [ %i.ty, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i330.i.i.i ], [ %i.uo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i339.i.i.i ], [ %i.uo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i338.i.i.i ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.gs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #29
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i339.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i338.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i331.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i330.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i323.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i315.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i314.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i307.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i306.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i299.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i298.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i291.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i290.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i283.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i190.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i189.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i182.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i267.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i266.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i154.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i153.i.i.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.xf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.ty, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i330.i.i.i ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i153.i.i.i ], [ %i.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i266.i.i.i ], [ %i.lm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181.i.i.i ], [ %i.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i189.i.i.i ], [ %i.mz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282.i.i.i ], [ %i.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i290.i.i.i ], [ %i.qs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i298.i.i.i ], [ %i.rf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i306.i.i.i ], [ %i.rv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i314.i.i.i ], [ %i.tn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322.i.i.i ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i ], [ %i.tn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i323.i.i.i ], [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i154.i.i.i ], [ %i.qs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i299.i.i.i ], [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.uo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i339.i.i.i ], [ %i.ix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i267.i.i.i ], [ %i.rf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i307.i.i.i ], [ %i.lm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i182.i.i.i ], [ %i.ty, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i331.i.i.i ], [ %i.lz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i190.i.i.i ], [ %i.rv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i315.i.i.i ], [ %i.mz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i283.i.i.i ], [ %i.uo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i338.i.i.i ], [ %i.np, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i291.i.i.i ], [ %i.xf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.r:                                             ; preds = %bb.p
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit.i.i.i:    ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %storemerge134521.i.i.i
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !278 ; 2 uses
  %i.gy = add i64 %storemerge134521.i.i.i, 32     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i64 %i.gy, ptr %i.av, align 8, !tbaa !278
  store i64 %i.gl, ptr %i.aw, align 8, !tbaa !278
  %.not.i.i.i148.i.i.i = icmp ult i64 %i.gy, %i.gl
  br i1 %.not.i.i.i148.i.i.i, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit155.i.i.i, label %.noexc.i258.i.i.i, !prof !279

.noexc.i258.i.i.i:                                ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit.i.i.i
  %i.gz = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  %i.ha = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  store ptr %i.ha, ptr %29, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #29
  store i64 55, ptr %i.ap, align 8, !tbaa !278
  %i.hb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i64 noundef 0)
          to label %.noexc259.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i149.i.i.i ; 3 uses

.noexc259.i.i.i:                                  ; preds = %.noexc.i258.i.i.i
  store ptr %i.hb, ptr %29, align 8, !tbaa !216
  %i.hc = load i64, ptr %i.ap, align 8, !tbaa !278 ; 3 uses
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.hb, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !569
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hc
  store i8 0, ptr %i.he, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc259.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.gz, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.u unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i149.i.i.i: ; preds = %.noexc.i258.i.i.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br label %common.resume.sink.split.i

bb.t:                                             ; preds = %bb.s, %.noexc259.i.i.i
  %.0.i.i.i152.i.i.i = phi i1 [ false, %bb.s ], [ true, %.noexc259.i.i.i ] ; 2 uses
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hh = load ptr, ptr %29, align 8, !tbaa !216  ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.ha
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i154.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i153.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i153.i.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.hh) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br i1 %.0.i.i.i152.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i154.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br i1 %.0.i.i.i152.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.u:                                             ; preds = %bb.s
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit155.i.i.i: ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit.i.i.i
  %.idx439.i.i.i = shl nuw nsw i64 %i.gx, 3
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx439.i.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gy
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !278
  %i.hm = sub nsw i64 %i.hl, %i.gx                ; 2 uses
  %i.hn = icmp sgt i64 %i.hm, 0
  br i1 %i.hn, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i158.i.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit.i.i.i

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i158.i.i.i: ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit155.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i158.i.i.i
  %.017.i.i159.i.i.i = phi i64 [ %.1.i.i164.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i158.i.i.i ], [ %i.hm, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit155.i.i.i ] ; 2 uses
  %.01116.i.i160.i.i.i = phi ptr [ %.112.i.i163.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i158.i.i.i ], [ %i.hj, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit155.i.i.i ] ; 2 uses
  %i.ho = lshr i64 %.017.i.i159.i.i.i, 1          ; 3 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i160.i.i.i, i64 %i.ho ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !278
  %.not90.i.i = icmp ugt i64 %i.hq, %i.dy         ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hs = xor i64 %i.ho, -1
  %i.ht = add nsw i64 %.017.i.i159.i.i.i, %i.hs
  %.112.i.i163.i.i.i = select i1 %.not90.i.i, ptr %.01116.i.i160.i.i.i, ptr %i.hr ; 2 uses
  %.1.i.i164.i.i.i = select i1 %.not90.i.i, i64 %i.ho, i64 %i.ht ; 2 uses
  %i.hu = icmp sgt i64 %.1.i.i164.i.i.i, 0
  br i1 %i.hu, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i158.i.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit.i.i.i, !llvm.loop !44

_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i158.i.i.i, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit155.i.i.i
  %.011.lcssa.i.i156.i.i.i = phi ptr [ %i.hj, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit155.i.i.i ], [ %.112.i.i163.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i158.i.i.i ]
  %i.hv = ptrtoint ptr %.011.lcssa.i.i156.i.i.i to i64
  %i.hw = sub i64 %i.hv, %i.gf
  %i.hx = ashr exact i64 %i.hw, 3                 ; 4 uses
  %i.hy = sub i64 %.sroa.0378.1520.i.i.i, %i.fx   ; 4 uses
  %i.hz = icmp slt i64 %i.hx, 0
  br i1 %i.hz, label %bb.v, label %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit.i.i.i

bb.v:                                             ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 %i.hx, ptr %i.am, align 8, !tbaa !278
  store i64 0, ptr %i.an, align 8, !tbaa !278
  store i64 -1, ptr %i.ao, align 8, !tbaa !278
  %i.ia = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.ib = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store ptr %i.ib, ptr %20, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #29
  store i64 75, ptr %i.al, align 8, !tbaa !278
  %i.ic = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.al, i64 noundef 0)
          to label %.noexc.i.i.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ; 3 uses

.noexc.i.i.i.i.i:                                 ; preds = %bb.v
  store ptr %i.ic, ptr %20, align 8, !tbaa !216
  %i.id = load i64, ptr %i.al, align 8, !tbaa !278 ; 3 uses
  store i64 %i.id, ptr %i.ib, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.ic, ptr noundef nonnull align 1 dereferenceable(75) @.str.22, i64 75, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.id, ptr %i.ie, align 8, !tbaa !569
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.id
  store i8 0, ptr %i.if, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlRmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ia, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.noexc.i.i.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.ia, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.y unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i: ; preds = %bb.v
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %common.resume.sink.split.i

bb.x:                                             ; preds = %bb.w, %.noexc.i.i.i.i.i
  %.0.i.i.i.i.i = phi i1 [ false, %bb.w ], [ true, %.noexc.i.i.i.i.i ] ; 2 uses
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ii = load ptr, ptr %20, align 8, !tbaa !216  ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.ib
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.ii) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br i1 %.0.i.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br i1 %.0.i.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.y:                                             ; preds = %bb.w
  unreachable

_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit.i.i.i: ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.hx, %i.hy
  br i1 %.not.i.i.i.i, label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit.i.i.i", label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit.i.i.i
  %i.ik = load ptr, ptr %i.cq, align 8, !tbaa !368
  %i.il = load ptr, ptr %i.cp, align 8, !tbaa !366 ; 2 uses
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = ashr exact i64 %i.io, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 %i.fw, ptr %i.aj, align 8, !tbaa !278
  store i64 %i.ip, ptr %i.ak, align 8, !tbaa !278
  %.not.i.i.i261.i.i.i = icmp ult i64 %i.fw, %i.ip
  br i1 %.not.i.i.i261.i.i.i, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit268.i.i.i, label %.noexc.i342.i.i.i, !prof !279

.noexc.i342.i.i.i:                                ; preds = %bb.z
  %i.iq = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  %i.ir = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  store ptr %i.ir, ptr %19, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  store i64 55, ptr %i.g, align 8, !tbaa !278
  %i.is = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc343.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i262.i.i.i ; 3 uses

.noexc343.i.i.i:                                  ; preds = %.noexc.i342.i.i.i
  store ptr %i.is, ptr %19, align 8, !tbaa !216
  %i.it = load i64, ptr %i.g, align 8, !tbaa !278 ; 3 uses
  store i64 %i.it, ptr %i.ir, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.is, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.iu = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.it, ptr %i.iu, align 8, !tbaa !569
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.it
  store i8 0, ptr %i.iv, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.iq, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.noexc343.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.iq, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.ac unwind label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i262.i.i.i: ; preds = %.noexc.i342.i.i.i
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %common.resume.sink.split.i

bb.ab:                                            ; preds = %bb.aa, %.noexc343.i.i.i
  %.0.i.i.i265.i.i.i = phi i1 [ false, %bb.aa ], [ true, %.noexc343.i.i.i ] ; 2 uses
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.iy = load ptr, ptr %19, align 8, !tbaa !216  ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.ir
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i267.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i266.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i266.i.i.i: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.iy) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br i1 %.0.i.i.i265.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i267.i.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br i1 %.0.i.i.i265.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.ac:                                            ; preds = %bb.aa
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit268.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.fw
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !278
  %i.jc = add nsw i64 %i.hx, -1
  %i.jd = add i64 %i.jc, %i.jb
  %i.je = load ptr, ptr %i.cu, align 8, !tbaa !328
  %i.jf = load i64, ptr %i.cv, align 8, !tbaa !323
  %i.jg = mul i64 %i.jf, %i.jd
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jg
  %i.ji = load i64, ptr %i.cr, align 8, !tbaa !709 ; 3 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ji
  store ptr %i.dw, ptr %i.jj, align 8, !tbaa !344
  %i.jk = add i64 %i.ji, 1                        ; 3 uses
  store i64 %i.jk, ptr %i.cr, align 8, !tbaa !709
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ji
  store ptr %i.jh, ptr %i.jl, align 8, !tbaa !344
  %i.jm = icmp ugt i64 %i.jk, 2047
  br i1 %i.jm, label %bb.ad, label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit.i.i.i"

bb.ad:                                            ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit268.i.i.i
  %i.jn = load ptr, ptr %i.cs, align 8, !tbaa !694, !nonnull !115, !align !265 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 544
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !348 ; 2 uses
  %.not.i.i.i165.i.i.i = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i165.i.i.i, label %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i.i.i.i, label %_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit87.i

_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit87.i: ; preds = %bb.ad
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !349
  br label %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i.i.i.i

_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i.i.i.i: ; preds = %_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit87.i, %bb.ad
  %i.jr = phi ptr [ %i.jq, %_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit87.i ], [ null, %bb.ad ]
  store ptr %i.jr, ptr %28, align 8, !tbaa !349
  store ptr %i.ct, ptr %i.cb, align 8, !tbaa !351
  store i8 1, ptr %i.cc, align 8, !tbaa !355
  call void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %i.az, i64 noundef %i.jk)
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 440
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !356
  %i.ju = load i64, ptr %i.cr, align 8, !tbaa !709
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(104) %i.az, ptr noundef nonnull align 8 dereferenceable(104) %i.bc, ptr noundef nonnull align 8 dereferenceable(17) %28, i64 noundef %i.ju), !inline_history !1265
  store i64 0, ptr %i.cr, align 8, !tbaa !709
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  br label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit.i.i.i"

"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit.i.i.i": ; preds = %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i.i.i.i, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit268.i.i.i, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit.i.i.i
  %i.jv = add i64 %storemerge134521.i.i.i, -1     ; 2 uses
  %i.jw = sub i64 %i.hy, %i.dy
  %.not135.i.i.i = icmp ult i64 %i.jw, %i.fx
  br i1 %.not135.i.i.i, label %._crit_edge.i.i.i, label %bb.o, !llvm.loop !1266

._crit_edge.i.i.i:                                ; preds = %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit.i.i.i", %bb.n
  %.sroa.0378.1.lcssa.i.i.i = phi i64 [ %.sroa.0378.0.i.i.i, %bb.n ], [ %i.hy, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit.i.i.i" ] ; 3 uses
  %storemerge134.lcssa.i.i.i = phi i64 [ %i.gc, %bb.n ], [ %i.jv, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit.i.i.i" ] ; 3 uses
  %.not136.i.i.i = icmp eq i64 %.sroa.0378.1.lcssa.i.i.i, %i.dy
  br i1 %.not136.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  %i.jx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i64 noundef %storemerge134.lcssa.i.i.i)
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !278 ; 2 uses
  %.idx440.i.i.i = shl nuw nsw i64 %i.jy, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx440.i.i.i ; 2 uses
  %i.ka = add i64 %storemerge134.lcssa.i.i.i, 32
  %i.kb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i64 noundef %i.ka)
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !278
  %i.kd = sub nsw i64 %i.kc, %i.jy                ; 2 uses
  %i.ke = icmp sgt i64 %i.kd, 0
  br i1 %i.ke, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i168.i.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit175.i.i.i

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i168.i.i.i: ; preds = %bb.ae, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i168.i.i.i
  %.017.i.i169.i.i.i = phi i64 [ %.1.i.i174.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i168.i.i.i ], [ %i.kd, %bb.ae ] ; 2 uses
  %.01116.i.i170.i.i.i = phi ptr [ %.112.i.i173.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i168.i.i.i ], [ %i.jz, %bb.ae ] ; 2 uses
  %i.kf = lshr i64 %.017.i.i169.i.i.i, 1          ; 3 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i170.i.i.i, i64 %i.kf ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !278
  %.not91.i.i = icmp ugt i64 %i.kh, %i.dy         ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.kj = xor i64 %i.kf, -1
  %i.kk = add nsw i64 %.017.i.i169.i.i.i, %i.kj
  %.112.i.i173.i.i.i = select i1 %.not91.i.i, ptr %.01116.i.i170.i.i.i, ptr %i.ki ; 2 uses
  %.1.i.i174.i.i.i = select i1 %.not91.i.i, i64 %i.kf, i64 %i.kk ; 2 uses
  %i.kl = icmp sgt i64 %.1.i.i174.i.i.i, 0
  br i1 %i.kl, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i168.i.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit175.i.i.i, !llvm.loop !44

_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit175.i.i.i: ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i168.i.i.i, %bb.ae
  %.011.lcssa.i.i166.i.i.i = phi ptr [ %i.jz, %bb.ae ], [ %.112.i.i173.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i168.i.i.i ]
  %i.km = ptrtoint ptr %.011.lcssa.i.i166.i.i.i to i64
  %i.kn = ptrtoint ptr %i.fz to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = ashr exact i64 %i.ko, 3
  %i.kq = call noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.kp)
  %i.kr = and i64 %i.kq, -32
  %i.ks = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fx, i1 true)
  %i.kt = lshr i64 %i.dy, %i.ks
  %i.ku = shl i64 %i.kt, 6
  %i.kv = add i64 %i.kr, %i.ku
  br label %bb.af

bb.af:                                            ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit175.i.i.i, %._crit_edge.i.i.i
  %.sroa.0362.1.i.i.i = phi i64 [ %storemerge134.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %i.kv, %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit175.i.i.i ]
  %i.kw = sub i64 %i.eb, %.sroa.12.1.i.i.i
  %.not137523.i.i.i = icmp ult i64 %i.kw, %i.fx
  br i1 %.not137523.i.i.i, label %._crit_edge528.i.i.i, label %.lr.ph527.i.i.i

.lr.ph527.i.i.i:                                  ; preds = %bb.af
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.ky = ptrtoint ptr %i.fz to i64
  br label %bb.ag

bb.ag:                                            ; preds = %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit206.i.i.i", %.lr.ph527.i.i.i
  %.sroa.13.1525.i.i.i = phi i64 [ %.sroa.13.0.i.i.i, %.lr.ph527.i.i.i ], [ %i.oo, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit206.i.i.i" ] ; 5 uses
  %.sroa.12.2524.i.i.i = phi i64 [ %.sroa.12.1.i.i.i, %.lr.ph527.i.i.i ], [ %i.on, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit206.i.i.i" ] ; 2 uses
  %i.kz = load ptr, ptr %i.kx, align 8, !tbaa !368
  %i.la = load ptr, ptr %i.gb, align 8, !tbaa !366 ; 3 uses
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = sub i64 %i.lb, %i.lc
  %i.le = ashr exact i64 %i.ld, 3                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i64 %.sroa.13.1525.i.i.i, ptr %i.at, align 8, !tbaa !278
  store i64 %i.le, ptr %i.au, align 8, !tbaa !278
  %.not.i.i.i176.i.i.i = icmp ult i64 %.sroa.13.1525.i.i.i, %i.le
  br i1 %.not.i.i.i176.i.i.i, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit183.i.i.i, label %.noexc.i270.i.i.i, !prof !279

.noexc.i270.i.i.i:                                ; preds = %bb.ag
  %i.lf = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  %i.lg = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  store ptr %i.lg, ptr %27, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #29
  store i64 55, ptr %i.ai, align 8, !tbaa !278
  %i.lh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i64 noundef 0)
          to label %.noexc271.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i177.i.i.i ; 3 uses

.noexc271.i.i.i:                                  ; preds = %.noexc.i270.i.i.i
  store ptr %i.lh, ptr %27, align 8, !tbaa !216
  %i.li = load i64, ptr %i.ai, align 8, !tbaa !278 ; 3 uses
  store i64 %i.li, ptr %i.lg, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.lh, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.lj = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.li, ptr %i.lj, align 8, !tbaa !569
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.li
  store i8 0, ptr %i.lk, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.lf, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.au)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.noexc271.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.lf, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.aj unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i177.i.i.i: ; preds = %.noexc.i270.i.i.i
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %common.resume.sink.split.i

bb.ai:                                            ; preds = %bb.ah, %.noexc271.i.i.i
  %.0.i.i.i180.i.i.i = phi i1 [ false, %bb.ah ], [ true, %.noexc271.i.i.i ] ; 2 uses
  %i.lm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ln = load ptr, ptr %27, align 8, !tbaa !216  ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.lg
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i182.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i181.i.i.i: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.ln) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br i1 %.0.i.i.i180.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i182.i.i.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br i1 %.0.i.i.i180.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.aj:                                            ; preds = %bb.ah
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit183.i.i.i: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %.sroa.13.1525.i.i.i
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !278 ; 2 uses
  %i.lr = add i64 %.sroa.13.1525.i.i.i, 32        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i64 %i.lr, ptr %i.ar, align 8, !tbaa !278
  store i64 %i.le, ptr %i.as, align 8, !tbaa !278
  %.not.i.i.i184.i.i.i = icmp ult i64 %i.lr, %i.le
  br i1 %.not.i.i.i184.i.i.i, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit191.i.i.i, label %.noexc.i274.i.i.i, !prof !279

.noexc.i274.i.i.i:                                ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit183.i.i.i
  %i.ls = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  %i.lt = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  store ptr %i.lt, ptr %26, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #29
  store i64 55, ptr %i.ah, align 8, !tbaa !278
  %i.lu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef 0)
          to label %.noexc275.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i185.i.i.i ; 3 uses

.noexc275.i.i.i:                                  ; preds = %.noexc.i274.i.i.i
  store ptr %i.lu, ptr %26, align 8, !tbaa !216
  %i.lv = load i64, ptr %i.ah, align 8, !tbaa !278 ; 3 uses
  store i64 %i.lv, ptr %i.lt, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.lu, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.lv, ptr %i.lw, align 8, !tbaa !569
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lv
  store i8 0, ptr %i.lx, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ls, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %.noexc275.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.ls, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.am unwind label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i185.i.i.i: ; preds = %.noexc.i274.i.i.i
  %i.ly = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  br label %common.resume.sink.split.i

bb.al:                                            ; preds = %bb.ak, %.noexc275.i.i.i
  %.0.i.i.i188.i.i.i = phi i1 [ false, %bb.ak ], [ true, %.noexc275.i.i.i ] ; 2 uses
  %i.lz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ma = load ptr, ptr %26, align 8, !tbaa !216  ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.lt
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i190.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i189.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i189.i.i.i: ; preds = %bb.al
  call void @_ZdlPv(ptr noundef %i.ma) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  br i1 %.0.i.i.i188.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i190.i.i.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  br i1 %.0.i.i.i188.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.am:                                            ; preds = %bb.ak
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit191.i.i.i: ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit183.i.i.i
  %.idx441.i.i.i = shl nuw nsw i64 %i.lq, 3
  %i.mc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx441.i.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.lr
  %i.me = load i64, ptr %i.md, align 8, !tbaa !278
  %i.mf = sub nsw i64 %i.me, %i.lq                ; 2 uses
  %i.mg = icmp sgt i64 %i.mf, 0
  br i1 %i.mg, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i194.i.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit201.i.i.i

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i194.i.i.i: ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit191.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i194.i.i.i
  %.017.i.i195.i.i.i = phi i64 [ %.1.i.i200.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i194.i.i.i ], [ %i.mf, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit191.i.i.i ] ; 2 uses
  %.01116.i.i196.i.i.i = phi ptr [ %.112.i.i199.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i194.i.i.i ], [ %i.mc, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit191.i.i.i ] ; 2 uses
  %i.mh = lshr i64 %.017.i.i195.i.i.i, 1          ; 3 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i196.i.i.i, i64 %i.mh ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !278
  %.not92.i.i = icmp ugt i64 %i.mj, %i.dy         ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.ml = xor i64 %i.mh, -1
  %i.mm = add nsw i64 %.017.i.i195.i.i.i, %i.ml
  %.112.i.i199.i.i.i = select i1 %.not92.i.i, ptr %.01116.i.i196.i.i.i, ptr %i.mk ; 2 uses
  %.1.i.i200.i.i.i = select i1 %.not92.i.i, i64 %i.mh, i64 %i.mm ; 2 uses
  %i.mn = icmp sgt i64 %.1.i.i200.i.i.i, 0
  br i1 %i.mn, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i194.i.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit201.i.i.i, !llvm.loop !44

_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit201.i.i.i: ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i194.i.i.i, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit191.i.i.i
  %.011.lcssa.i.i192.i.i.i = phi ptr [ %i.mc, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit191.i.i.i ], [ %.112.i.i199.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i194.i.i.i ]
  %i.mo = ptrtoint ptr %.011.lcssa.i.i192.i.i.i to i64
  %i.mp = sub i64 %i.mo, %i.ky
  %i.mq = ashr exact i64 %i.mp, 3                 ; 4 uses
  %i.mr = icmp slt i64 %i.mq, 0
  br i1 %i.mr, label %bb.an, label %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit284.i.i.i

bb.an:                                            ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit201.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 %i.mq, ptr %i.ae, align 8, !tbaa !278
  store i64 0, ptr %i.af, align 8, !tbaa !278
  store i64 -1, ptr %i.ag, align 8, !tbaa !278
  %i.ms = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.mt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.mt, ptr %18, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #29
  store i64 75, ptr %i.ad, align 8, !tbaa !278
  %i.mu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef 0)
          to label %.noexc.i.i280.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i277.i.i.i ; 3 uses

.noexc.i.i280.i.i.i:                              ; preds = %bb.an
  store ptr %i.mu, ptr %18, align 8, !tbaa !216
  %i.mv = load i64, ptr %i.ad, align 8, !tbaa !278 ; 3 uses
  store i64 %i.mv, ptr %i.mt, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.mu, ptr noundef nonnull align 1 dereferenceable(75) @.str.22, i64 75, i1 false)
  %i.mw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.mv, ptr %i.mw, align 8, !tbaa !569
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mv
  store i8 0, ptr %i.mx, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlRmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ms, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.noexc.i.i280.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.ms, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.aq unwind label %bb.ap

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i277.i.i.i: ; preds = %bb.an
  %i.my = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %common.resume.sink.split.i

bb.ap:                                            ; preds = %bb.ao, %.noexc.i.i280.i.i.i
  %.0.i.i281.i.i.i = phi i1 [ false, %bb.ao ], [ true, %.noexc.i.i280.i.i.i ] ; 2 uses
  %i.mz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.na = load ptr, ptr %18, align 8, !tbaa !216  ; 2 uses
  %i.nb = icmp eq ptr %i.na, %i.mt
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i283.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282.i.i.i: ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef %i.na) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br i1 %.0.i.i281.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i283.i.i.i: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br i1 %.0.i.i281.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.aq:                                            ; preds = %bb.ao
  unreachable

_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit284.i.i.i: ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit201.i.i.i
  %.not.i202.i.i.i = icmp eq i64 %i.mq, %.sroa.12.2524.i.i.i
  br i1 %.not.i202.i.i.i, label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit206.i.i.i", label %bb.ar

bb.ar:                                            ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit284.i.i.i
  %i.nc = load ptr, ptr %i.cq, align 8, !tbaa !368
  %i.nd = load ptr, ptr %i.cp, align 8, !tbaa !366 ; 2 uses
  %i.ne = ptrtoint ptr %i.nc to i64
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = sub i64 %i.ne, %i.nf
  %i.nh = ashr exact i64 %i.ng, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %i.fw, ptr %i.ab, align 8, !tbaa !278
  store i64 %i.nh, ptr %i.ac, align 8, !tbaa !278
  %.not.i.i.i285.i.i.i = icmp ult i64 %i.fw, %i.nh
  br i1 %.not.i.i.i285.i.i.i, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit292.i.i.i, label %.noexc.i346.i.i.i, !prof !279

.noexc.i346.i.i.i:                                ; preds = %bb.ar
  %i.ni = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.nj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.nj, ptr %17, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  store i64 55, ptr %i.f, align 8, !tbaa !278
  %i.nk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc347.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i286.i.i.i ; 3 uses

.noexc347.i.i.i:                                  ; preds = %.noexc.i346.i.i.i
  store ptr %i.nk, ptr %17, align 8, !tbaa !216
  %i.nl = load i64, ptr %i.f, align 8, !tbaa !278 ; 3 uses
  store i64 %i.nl, ptr %i.nj, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.nk, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.nm = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.nl, ptr %i.nm, align 8, !tbaa !569
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nl
  store i8 0, ptr %i.nn, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ni, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %.noexc347.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.ni, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.au unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i286.i.i.i: ; preds = %.noexc.i346.i.i.i
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %common.resume.sink.split.i

bb.at:                                            ; preds = %bb.as, %.noexc347.i.i.i
  %.0.i.i.i289.i.i.i = phi i1 [ false, %bb.as ], [ true, %.noexc347.i.i.i ] ; 2 uses
  %i.np = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.nq = load ptr, ptr %17, align 8, !tbaa !216  ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.nj
  br i1 %i.nr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i291.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i290.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i290.i.i.i: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.nq) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br i1 %.0.i.i.i289.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i291.i.i.i: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br i1 %.0.i.i.i289.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.au:                                            ; preds = %bb.as
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit292.i.i.i: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.fw
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !278
  %i.nu = add nsw i64 %i.mq, -1
  %i.nv = add i64 %i.nu, %i.nt
  %i.nw = load ptr, ptr %i.cu, align 8, !tbaa !328
  %i.nx = load i64, ptr %i.cv, align 8, !tbaa !323
  %i.ny = mul i64 %i.nx, %i.nv
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.ny
  %i.oa = load i64, ptr %i.cr, align 8, !tbaa !709 ; 3 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.oa
  store ptr %i.dw, ptr %i.ob, align 8, !tbaa !344
  %i.oc = add i64 %i.oa, 1                        ; 3 uses
  store i64 %i.oc, ptr %i.cr, align 8, !tbaa !709
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.oa
  store ptr %i.nz, ptr %i.od, align 8, !tbaa !344
  %i.oe = icmp ugt i64 %i.oc, 2047
  br i1 %i.oe, label %bb.av, label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit206.i.i.i"

bb.av:                                            ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit292.i.i.i
  %i.of = load ptr, ptr %i.cs, align 8, !tbaa !694, !nonnull !115, !align !265 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 544
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !348 ; 2 uses
  %.not.i.i.i203.i.i.i = icmp eq ptr %i.oh, null
  br i1 %.not.i.i.i203.i.i.i, label %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i205.i.i.i, label %_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit79.i

_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit79.i: ; preds = %bb.av
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !349
  br label %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i205.i.i.i

_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i205.i.i.i: ; preds = %_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit79.i, %bb.av
  %i.oj = phi ptr [ %i.oi, %_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit79.i ], [ null, %bb.av ]
  store ptr %i.oj, ptr %25, align 8, !tbaa !349
  store ptr %i.ct, ptr %i.cd, align 8, !tbaa !351
  store i8 1, ptr %i.ce, align 8, !tbaa !355
  call void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %i.az, i64 noundef %i.oc)
  %i.ok = getelementptr inbounds nuw i8, ptr %i.of, i64 440
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !356
  %i.om = load i64, ptr %i.cr, align 8, !tbaa !709
  call void %i.ol(ptr noundef nonnull align 8 dereferenceable(104) %i.az, ptr noundef nonnull align 8 dereferenceable(104) %i.bc, ptr noundef nonnull align 8 dereferenceable(17) %25, i64 noundef %i.om), !inline_history !1265
  store i64 0, ptr %i.cr, align 8, !tbaa !709
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit206.i.i.i"

"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit206.i.i.i": ; preds = %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i205.i.i.i, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit292.i.i.i, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit284.i.i.i
  %i.on = add i64 %.sroa.12.2524.i.i.i, %i.fx     ; 3 uses
  %i.oo = add nuw i64 %.sroa.13.1525.i.i.i, 1     ; 2 uses
  %i.op = sub i64 %i.eb, %i.on
  %.not137.i.i.i = icmp ult i64 %i.op, %i.fx
  br i1 %.not137.i.i.i, label %._crit_edge528.i.i.i, label %bb.ag, !llvm.loop !1267

._crit_edge528.i.i.i:                             ; preds = %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit206.i.i.i", %bb.af
  %.sroa.12.2.lcssa.i.i.i = phi i64 [ %.sroa.12.1.i.i.i, %bb.af ], [ %i.on, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit206.i.i.i" ] ; 3 uses
  %.sroa.13.1.lcssa.i.i.i = phi i64 [ %.sroa.13.0.i.i.i, %bb.af ], [ %i.oo, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit206.i.i.i" ] ; 3 uses
  %.not138.i.i.i = icmp eq i64 %.sroa.12.2.lcssa.i.i.i, %i.eb
  br i1 %.not138.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge528.i.i.i
  %i.oq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i64 noundef %.sroa.13.1.lcssa.i.i.i)
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !278 ; 2 uses
  %.idx442.i.i.i = shl nuw nsw i64 %i.or, 3
  %i.os = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx442.i.i.i ; 2 uses
  %i.ot = add i64 %.sroa.13.1.lcssa.i.i.i, 32
  %i.ou = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i64 noundef %i.ot)
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !278
  %i.ow = sub nsw i64 %i.ov, %i.or                ; 2 uses
  %i.ox = icmp sgt i64 %i.ow, 0
  br i1 %i.ox, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i209.i.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit216.i.i.i

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i209.i.i.i: ; preds = %bb.aw, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i209.i.i.i
  %.017.i.i210.i.i.i = phi i64 [ %.1.i.i215.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i209.i.i.i ], [ %i.ow, %bb.aw ] ; 2 uses
  %.01116.i.i211.i.i.i = phi ptr [ %.112.i.i214.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i209.i.i.i ], [ %i.os, %bb.aw ] ; 2 uses
  %i.oy = lshr i64 %.017.i.i210.i.i.i, 1          ; 3 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i211.i.i.i, i64 %i.oy ; 2 uses
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !278
  %.not93.i.i = icmp ugt i64 %i.pa, %i.dy         ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pc = xor i64 %i.oy, -1
  %i.pd = add nsw i64 %.017.i.i210.i.i.i, %i.pc
  %.112.i.i214.i.i.i = select i1 %.not93.i.i, ptr %.01116.i.i211.i.i.i, ptr %i.pb ; 2 uses
  %.1.i.i215.i.i.i = select i1 %.not93.i.i, i64 %i.oy, i64 %i.pd ; 2 uses
  %i.pe = icmp sgt i64 %.1.i.i215.i.i.i, 0
  br i1 %i.pe, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i209.i.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit216.i.i.i, !llvm.loop !44

_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit216.i.i.i: ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i209.i.i.i, %bb.aw
  %.011.lcssa.i.i207.i.i.i = phi ptr [ %i.os, %bb.aw ], [ %.112.i.i214.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i209.i.i.i ]
  %i.pf = ptrtoint ptr %.011.lcssa.i.i207.i.i.i to i64
  %i.pg = ptrtoint ptr %i.fz to i64
  %i.ph = sub i64 %i.pf, %i.pg
  %i.pi = ashr exact i64 %i.ph, 3
  %i.pj = call noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.pi)
  %i.pk = and i64 %i.pj, -32
  %i.pl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fx, i1 true)
  %i.pm = lshr i64 %i.eb, %i.pl
  %i.pn = shl i64 %i.pm, 6
  %i.po = add i64 %i.pk, %i.pn
  br label %bb.ax

bb.ax:                                            ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit216.i.i.i, %._crit_edge528.i.i.i
  %.sroa.13.2.i.i.i = phi i64 [ %.sroa.13.1.lcssa.i.i.i, %._crit_edge528.i.i.i ], [ %i.po, %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit216.i.i.i ]
  %.not139.i.i.i = icmp ult i64 %.2117.i.i.i, 3
  br i1 %.not139.i.i.i, label %.loopexit447.i.i.i, label %bb.n, !llvm.loop !1268

.loopexit447.i.i.i:                               ; preds = %bb.ax, %bb.l
  %.sroa.0378.2.i.i.i = phi i64 [ %i.el, %bb.l ], [ %.sroa.0378.1.lcssa.i.i.i, %bb.ax ] ; 2 uses
  %.sroa.12.3.i.i.i = phi i64 [ %i.el, %bb.l ], [ %.sroa.12.2.lcssa.i.i.i, %bb.ax ] ; 2 uses
  %.3118.i.i.i = phi i64 [ %i.ej, %bb.l ], [ %i.fw, %bb.ax ] ; 2 uses
  %.3.i.i.i = phi i64 [ %i.ei, %bb.l ], [ %i.fx, %bb.ax ]
  %or.cond = icmp ult i64 %.3118.i.i.i, 2
  br i1 %or.cond, label %.thread432.i.i.i, label %.lr.ph544.i.i.i.preheader

.lr.ph544.i.i.i.preheader:                        ; preds = %.loopexit447.i.i.i
  %i.pp = add nsw i64 %.3118.i.i.i, -1
  br label %.lr.ph544.i.i.i

.loopexit445.i.i.i:                               ; preds = %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit246.i.i.i", %.preheader444.i.i.i
  %.sroa.12.5.lcssa.i.i.i = phi i64 [ %.sroa.12.4542.i.i.i, %.preheader444.i.i.i ], [ %i.vm, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit246.i.i.i" ] ; 2 uses
  %i.pq = add i64 %i.pr, -1                       ; 2 uses
  %.not141.i.i.i = icmp eq i64 %i.pq, 0
  br i1 %.not141.i.i.i, label %.thread432.i.i.i, label %.lr.ph544.i.i.i, !llvm.loop !1269

.lr.ph544.i.i.i:                                  ; preds = %.lr.ph544.i.i.i.preheader, %.loopexit445.i.i.i
  %i.pr = phi i64 [ %i.pq, %.loopexit445.i.i.i ], [ %i.pp, %.lr.ph544.i.i.i.preheader ] ; 8 uses
  %.4543.i.i.i = phi i64 [ %i.ps, %.loopexit445.i.i.i ], [ %.3.i.i.i, %.lr.ph544.i.i.i.preheader ]
  %.sroa.12.4542.i.i.i = phi i64 [ %.sroa.12.5.lcssa.i.i.i, %.loopexit445.i.i.i ], [ %.sroa.12.3.i.i.i, %.lr.ph544.i.i.i.preheader ] ; 3 uses
  %.sroa.0378.3541.i.i.i = phi i64 [ %.sroa.0378.4.lcssa.i.i.i, %.loopexit445.i.i.i ], [ %.sroa.0378.2.i.i.i, %.lr.ph544.i.i.i.preheader ] ; 3 uses
  %i.ps = lshr i64 %.4543.i.i.i, 5                ; 11 uses
  %i.pt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %i.bf, i64 noundef %i.pr)
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !366 ; 4 uses
  %i.pv = sub i64 %.sroa.0378.3541.i.i.i, %i.dy
  %.not144531.i.i.i = icmp ult i64 %i.pv, %i.ps
  br i1 %.not144531.i.i.i, label %.preheader444.i.i.i, label %.lr.ph534.i.i.i

.lr.ph534.i.i.i:                                  ; preds = %.lr.ph544.i.i.i
  %i.pw = sub nsw i64 0, %i.ps
  %invariant.gep.i.i.i = getelementptr [8 x i8], ptr %i.pu, i64 %i.pw
  %.not443.i.i.i = icmp eq i64 %i.ps, 0
  %i.px = ptrtoint ptr %i.pu to i64
  br label %bb.ay

.preheader444.i.i.i:                              ; preds = %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit231.i.i.i", %.lr.ph544.i.i.i
  %.sroa.0378.4.lcssa.i.i.i = phi i64 [ %.sroa.0378.3541.i.i.i, %.lr.ph544.i.i.i ], [ %.idx147.i.i.i, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit231.i.i.i" ] ; 2 uses
  %i.py = sub i64 %i.eb, %.sroa.12.4542.i.i.i
  %.not145536.i.i.i = icmp ult i64 %i.py, %i.ps
  br i1 %.not145536.i.i.i, label %.loopexit445.i.i.i, label %.lr.ph538.i.i.i

.lr.ph538.i.i.i:                                  ; preds = %.preheader444.i.i.i
  %i.pz = ptrtoint ptr %i.pu to i64
  br label %bb.bm

bb.ay:                                            ; preds = %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit231.i.i.i", %.lr.ph534.i.i.i
  %.sroa.0378.4532.i.i.i = phi i64 [ %.sroa.0378.3541.i.i.i, %.lr.ph534.i.i.i ], [ %.idx147.i.i.i, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit231.i.i.i" ] ; 2 uses
  %gep.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %.sroa.0378.4532.i.i.i ; 2 uses
  br i1 %.not443.i.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit226.i.i.i, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i219.i.i.i

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i219.i.i.i: ; preds = %bb.ay, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i219.i.i.i
  %.017.i.i220.i.i.i = phi i64 [ %.1.i.i225.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i219.i.i.i ], [ %i.ps, %bb.ay ] ; 2 uses
  %.01116.i.i221.i.i.i = phi ptr [ %.112.i.i224.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i219.i.i.i ], [ %gep.i.i.i, %bb.ay ] ; 2 uses
  %i.qa = lshr i64 %.017.i.i220.i.i.i, 1          ; 3 uses
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i221.i.i.i, i64 %i.qa ; 2 uses
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !278
  %.not94.i.i = icmp ugt i64 %i.qc, %i.dy         ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qe = xor i64 %i.qa, -1
  %i.qf = add nsw i64 %.017.i.i220.i.i.i, %i.qe
  %.112.i.i224.i.i.i = select i1 %.not94.i.i, ptr %.01116.i.i221.i.i.i, ptr %i.qd ; 2 uses
  %.1.i.i225.i.i.i = select i1 %.not94.i.i, i64 %i.qa, i64 %i.qf ; 2 uses
  %i.qg = icmp sgt i64 %.1.i.i225.i.i.i, 0
  br i1 %i.qg, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i219.i.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit226.i.i.i, !llvm.loop !44

_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit226.i.i.i: ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i219.i.i.i, %bb.ay
  %.011.lcssa.i.i217.i.i.i = phi ptr [ %gep.i.i.i, %bb.ay ], [ %.112.i.i224.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i219.i.i.i ]
  %i.qh = ptrtoint ptr %.011.lcssa.i.i217.i.i.i to i64
  %i.qi = sub i64 %i.qh, %i.px
  %i.qj = ashr exact i64 %i.qi, 3                 ; 4 uses
  %i.qk = icmp slt i64 %i.qj, 0
  br i1 %i.qk, label %bb.az, label %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit300.i.i.i

bb.az:                                            ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit226.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %i.qj, ptr %i.y, align 8, !tbaa !278
  store i64 0, ptr %i.z, align 8, !tbaa !278
  store i64 -1, ptr %i.aa, align 8, !tbaa !278
  %i.ql = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.qm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.qm, ptr %16, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #29
  store i64 75, ptr %i.x, align 8, !tbaa !278
  %i.qn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef 0)
          to label %.noexc.i.i296.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i293.i.i.i ; 3 uses

.noexc.i.i296.i.i.i:                              ; preds = %bb.az
  store ptr %i.qn, ptr %16, align 8, !tbaa !216
  %i.qo = load i64, ptr %i.x, align 8, !tbaa !278 ; 3 uses
  store i64 %i.qo, ptr %i.qm, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.qn, ptr noundef nonnull align 1 dereferenceable(75) @.str.22, i64 75, i1 false)
  %i.qp = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.qo, ptr %i.qp, align 8, !tbaa !569
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.qo
  store i8 0, ptr %i.qq, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlRmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ql, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %.noexc.i.i296.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.ql, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bc unwind label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i293.i.i.i: ; preds = %bb.az
  %i.qr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %common.resume.sink.split.i

bb.bb:                                            ; preds = %bb.ba, %.noexc.i.i296.i.i.i
  %.0.i.i297.i.i.i = phi i1 [ false, %bb.ba ], [ true, %.noexc.i.i296.i.i.i ] ; 2 uses
  %i.qs = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.qt = load ptr, ptr %16, align 8, !tbaa !216  ; 2 uses
  %i.qu = icmp eq ptr %i.qt, %i.qm
  br i1 %i.qu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i299.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i298.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i298.i.i.i: ; preds = %bb.bb
  call void @_ZdlPv(ptr noundef %i.qt) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br i1 %.0.i.i297.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i299.i.i.i: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br i1 %.0.i.i297.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.bc:                                            ; preds = %bb.ba
  unreachable

_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit300.i.i.i: ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit226.i.i.i
  %.idx147.i.i.i = sub i64 %.sroa.0378.4532.i.i.i, %i.ps ; 4 uses
  %i.qv = shl i64 %.idx147.i.i.i, 3
  %i.qw = ashr exact i64 %i.qv, 3                 ; 3 uses
  %i.qx = icmp slt i64 %i.qw, 0
  br i1 %i.qx, label %bb.bd, label %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit308.i.i.i

bb.bd:                                            ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit300.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 %i.qw, ptr %i.u, align 8, !tbaa !278
  store i64 0, ptr %i.v, align 8, !tbaa !278
  store i64 -1, ptr %i.w, align 8, !tbaa !278
  %i.qy = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.qz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.qz, ptr %15, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #29
  store i64 75, ptr %i.t, align 8, !tbaa !278
  %i.ra = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef 0)
          to label %.noexc.i.i304.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i301.i.i.i ; 3 uses

.noexc.i.i304.i.i.i:                              ; preds = %bb.bd
  store ptr %i.ra, ptr %15, align 8, !tbaa !216
  %i.rb = load i64, ptr %i.t, align 8, !tbaa !278 ; 3 uses
  store i64 %i.rb, ptr %i.qz, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.ra, ptr noundef nonnull align 1 dereferenceable(75) @.str.22, i64 75, i1 false)
  %i.rc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.rb, ptr %i.rc, align 8, !tbaa !569
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.rb
  store i8 0, ptr %i.rd, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlRmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.qy, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %.noexc.i.i304.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.qy, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bg unwind label %bb.bf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i301.i.i.i: ; preds = %bb.bd
  %i.re = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %common.resume.sink.split.i

bb.bf:                                            ; preds = %bb.be, %.noexc.i.i304.i.i.i
  %.0.i.i305.i.i.i = phi i1 [ false, %bb.be ], [ true, %.noexc.i.i304.i.i.i ] ; 2 uses
  %i.rf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.rg = load ptr, ptr %15, align 8, !tbaa !216  ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.qz
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i307.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i306.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i306.i.i.i: ; preds = %bb.bf
  call void @_ZdlPv(ptr noundef %i.rg) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br i1 %.0.i.i305.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i307.i.i.i: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br i1 %.0.i.i305.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.bg:                                            ; preds = %bb.be
  unreachable

_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit308.i.i.i: ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit300.i.i.i
  %.not.i227.i.i.i = icmp eq i64 %i.qj, %i.qw
  br i1 %.not.i227.i.i.i, label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit231.i.i.i", label %bb.bh

bb.bh:                                            ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit308.i.i.i
  %i.ri = load ptr, ptr %i.cq, align 8, !tbaa !368
  %i.rj = load ptr, ptr %i.cp, align 8, !tbaa !366 ; 2 uses
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl
  %i.rn = ashr exact i64 %i.rm, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %i.pr, ptr %i.r, align 8, !tbaa !278
  store i64 %i.rn, ptr %i.s, align 8, !tbaa !278
  %.not.i.i.i309.i.i.i = icmp ult i64 %i.pr, %i.rn
  br i1 %.not.i.i.i309.i.i.i, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit316.i.i.i, label %.noexc.i350.i.i.i, !prof !279

.noexc.i350.i.i.i:                                ; preds = %bb.bh
  %i.ro = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.rp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.rp, ptr %14, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  store i64 55, ptr %i.e, align 8, !tbaa !278
  %i.rq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc351.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i310.i.i.i ; 3 uses

.noexc351.i.i.i:                                  ; preds = %.noexc.i350.i.i.i
  store ptr %i.rq, ptr %14, align 8, !tbaa !216
  %i.rr = load i64, ptr %i.e, align 8, !tbaa !278 ; 3 uses
  store i64 %i.rr, ptr %i.rp, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.rq, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.rs = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.rr, ptr %i.rs, align 8, !tbaa !569
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.rr
  store i8 0, ptr %i.rt, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ro, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %.noexc351.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.ro, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bk unwind label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i310.i.i.i: ; preds = %.noexc.i350.i.i.i
  %i.ru = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %common.resume.sink.split.i

bb.bj:                                            ; preds = %bb.bi, %.noexc351.i.i.i
  %.0.i.i.i313.i.i.i = phi i1 [ false, %bb.bi ], [ true, %.noexc351.i.i.i ] ; 2 uses
  %i.rv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.rw = load ptr, ptr %14, align 8, !tbaa !216  ; 2 uses
  %i.rx = icmp eq ptr %i.rw, %i.rp
  br i1 %i.rx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i315.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i314.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i314.i.i.i: ; preds = %bb.bj
  call void @_ZdlPv(ptr noundef %i.rw) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br i1 %.0.i.i.i313.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i315.i.i.i: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br i1 %.0.i.i.i313.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.bk:                                            ; preds = %bb.bi
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit316.i.i.i: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.pr
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !278
  %i.sa = add nsw i64 %i.qj, -1
  %i.sb = add i64 %i.sa, %i.rz
  %i.sc = load ptr, ptr %i.cu, align 8, !tbaa !328
  %i.sd = load i64, ptr %i.cv, align 8, !tbaa !323
  %i.se = mul i64 %i.sd, %i.sb
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.se
  %i.sg = load i64, ptr %i.cr, align 8, !tbaa !709 ; 3 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.sg
  store ptr %i.dw, ptr %i.sh, align 8, !tbaa !344
  %i.si = add i64 %i.sg, 1                        ; 3 uses
  store i64 %i.si, ptr %i.cr, align 8, !tbaa !709
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.sg
  store ptr %i.sf, ptr %i.sj, align 8, !tbaa !344
  %i.sk = icmp ugt i64 %i.si, 2047
  br i1 %i.sk, label %bb.bl, label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit231.i.i.i"

bb.bl:                                            ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit316.i.i.i
  %i.sl = load ptr, ptr %i.cs, align 8, !tbaa !694, !nonnull !115, !align !265 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 544
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !348 ; 2 uses
  %.not.i.i.i228.i.i.i = icmp eq ptr %i.sn, null
  br i1 %.not.i.i.i228.i.i.i, label %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i230.i.i.i, label %_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit71.i

_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit71.i: ; preds = %bb.bl
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !349
  br label %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i230.i.i.i

_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i230.i.i.i: ; preds = %_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit71.i, %bb.bl
  %i.sp = phi ptr [ %i.so, %_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit71.i ], [ null, %bb.bl ]
  store ptr %i.sp, ptr %24, align 8, !tbaa !349
  store ptr %i.ct, ptr %i.cf, align 8, !tbaa !351
  store i8 1, ptr %i.cg, align 8, !tbaa !355
  call void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %i.az, i64 noundef %i.si)
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 440
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !356
  %i.ss = load i64, ptr %i.cr, align 8, !tbaa !709
  call void %i.sr(ptr noundef nonnull align 8 dereferenceable(104) %i.az, ptr noundef nonnull align 8 dereferenceable(104) %i.bc, ptr noundef nonnull align 8 dereferenceable(17) %24, i64 noundef %i.ss), !inline_history !1265
  store i64 0, ptr %i.cr, align 8, !tbaa !709
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  br label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit231.i.i.i"

"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit231.i.i.i": ; preds = %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i230.i.i.i, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit316.i.i.i, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit308.i.i.i
  %i.st = sub i64 %.idx147.i.i.i, %i.dy
  %.not144.i.i.i = icmp ult i64 %i.st, %i.ps
  br i1 %.not144.i.i.i, label %.preheader444.i.i.i, label %bb.ay, !llvm.loop !1270

bb.bm:                                            ; preds = %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit246.i.i.i", %.lr.ph538.i.i.i
  %.sroa.12.5537.i.i.i = phi i64 [ %.sroa.12.4542.i.i.i, %.lr.ph538.i.i.i ], [ %i.vm, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit246.i.i.i" ] ; 5 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %.sroa.12.5537.i.i.i
  br label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i234.i.i.i

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i234.i.i.i: ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i234.i.i.i, %bb.bm
  %.017.i.i235.i.i.i = phi i64 [ %.1.i.i240.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i234.i.i.i ], [ %i.ps, %bb.bm ] ; 2 uses
  %.01116.i.i236.i.i.i = phi ptr [ %.112.i.i239.i.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i234.i.i.i ], [ %i.su, %bb.bm ] ; 2 uses
  %i.sv = lshr i64 %.017.i.i235.i.i.i, 1          ; 3 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i236.i.i.i, i64 %i.sv ; 2 uses
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !278
  %.not95.i.i = icmp ugt i64 %i.sx, %i.dy         ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sz = xor i64 %i.sv, -1
  %i.ta = add nsw i64 %.017.i.i235.i.i.i, %i.sz
  %.112.i.i239.i.i.i = select i1 %.not95.i.i, ptr %.01116.i.i236.i.i.i, ptr %i.sy ; 2 uses
  %.1.i.i240.i.i.i = select i1 %.not95.i.i, i64 %i.sv, i64 %i.ta ; 2 uses
  %i.tb = icmp sgt i64 %.1.i.i240.i.i.i, 0
  br i1 %i.tb, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i234.i.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit241.i.i.i, !llvm.loop !44

_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit241.i.i.i: ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i234.i.i.i
  %i.tc = ptrtoint ptr %.112.i.i239.i.i.i to i64
  %i.td = sub i64 %i.tc, %i.pz
  %i.te = ashr exact i64 %i.td, 3                 ; 4 uses
  %i.tf = icmp slt i64 %i.te, 0
  br i1 %i.tf, label %bb.bn, label %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit324.i.i.i

bb.bn:                                            ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit241.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %i.te, ptr %i.o, align 8, !tbaa !278
  store i64 0, ptr %i.p, align 8, !tbaa !278
  store i64 -1, ptr %i.q, align 8, !tbaa !278
  %i.tg = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.th = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.th, ptr %13, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #29
  store i64 75, ptr %i.n, align 8, !tbaa !278
  %i.ti = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc.i.i320.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i317.i.i.i ; 3 uses

.noexc.i.i320.i.i.i:                              ; preds = %bb.bn
  store ptr %i.ti, ptr %13, align 8, !tbaa !216
  %i.tj = load i64, ptr %i.n, align 8, !tbaa !278 ; 3 uses
  store i64 %i.tj, ptr %i.th, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.ti, ptr noundef nonnull align 1 dereferenceable(75) @.str.22, i64 75, i1 false)
  %i.tk = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.tj, ptr %i.tk, align 8, !tbaa !569
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tj
  store i8 0, ptr %i.tl, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlRmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.tg, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %.noexc.i.i320.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.tg, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bq unwind label %bb.bp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i317.i.i.i: ; preds = %bb.bn
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %common.resume.sink.split.i

bb.bp:                                            ; preds = %bb.bo, %.noexc.i.i320.i.i.i
  %.0.i.i321.i.i.i = phi i1 [ false, %bb.bo ], [ true, %.noexc.i.i320.i.i.i ] ; 2 uses
  %i.tn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.to = load ptr, ptr %13, align 8, !tbaa !216  ; 2 uses
  %i.tp = icmp eq ptr %i.to, %i.th
  br i1 %i.tp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i323.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322.i.i.i: ; preds = %bb.bp
  call void @_ZdlPv(ptr noundef %i.to) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br i1 %.0.i.i321.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i323.i.i.i: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br i1 %.0.i.i321.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.bq:                                            ; preds = %bb.bo
  unreachable

_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit324.i.i.i: ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit241.i.i.i
  %i.tq = icmp slt i64 %.sroa.12.5537.i.i.i, 0
  br i1 %i.tq, label %bb.br, label %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit332.i.i.i

bb.br:                                            ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit324.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %.sroa.12.5537.i.i.i, ptr %i.k, align 8, !tbaa !278
  store i64 0, ptr %i.l, align 8, !tbaa !278
  store i64 -1, ptr %i.m, align 8, !tbaa !278
  %i.tr = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.ts = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.ts, ptr %12, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #29
  store i64 75, ptr %i.j, align 8, !tbaa !278
  %i.tt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc.i.i328.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i325.i.i.i ; 3 uses

.noexc.i.i328.i.i.i:                              ; preds = %bb.br
  store ptr %i.tt, ptr %12, align 8, !tbaa !216
  %i.tu = load i64, ptr %i.j, align 8, !tbaa !278 ; 3 uses
  store i64 %i.tu, ptr %i.ts, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.tt, ptr noundef nonnull align 1 dereferenceable(75) @.str.22, i64 75, i1 false)
  %i.tv = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.tu, ptr %i.tv, align 8, !tbaa !569
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.tu
  store i8 0, ptr %i.tw, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlRmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.tr, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %.noexc.i.i328.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.tr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bu unwind label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i325.i.i.i: ; preds = %bb.br
  %i.tx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %common.resume.sink.split.i

bb.bt:                                            ; preds = %bb.bs, %.noexc.i.i328.i.i.i
  %.0.i.i329.i.i.i = phi i1 [ false, %bb.bs ], [ true, %.noexc.i.i328.i.i.i ] ; 2 uses
  %i.ty = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.tz = load ptr, ptr %12, align 8, !tbaa !216  ; 2 uses
  %i.ua = icmp eq ptr %i.tz, %i.ts
  br i1 %i.ua, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i331.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i330.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i330.i.i.i: ; preds = %bb.bt
  call void @_ZdlPv(ptr noundef %i.tz) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br i1 %.0.i.i329.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i331.i.i.i: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br i1 %.0.i.i329.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.bu:                                            ; preds = %bb.bs
  unreachable

_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit332.i.i.i: ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit324.i.i.i
  %.not.i242.i.i.i = icmp eq i64 %i.te, %.sroa.12.5537.i.i.i
  br i1 %.not.i242.i.i.i, label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit246.i.i.i", label %bb.bv

bb.bv:                                            ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit332.i.i.i
  %i.ub = load ptr, ptr %i.cq, align 8, !tbaa !368
  %i.uc = load ptr, ptr %i.cp, align 8, !tbaa !366 ; 2 uses
  %i.ud = ptrtoint ptr %i.ub to i64
  %i.ue = ptrtoint ptr %i.uc to i64
  %i.uf = sub i64 %i.ud, %i.ue
  %i.ug = ashr exact i64 %i.uf, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.pr, ptr %i.h, align 8, !tbaa !278
  store i64 %i.ug, ptr %i.i, align 8, !tbaa !278
  %.not.i.i.i333.i.i.i = icmp ult i64 %i.pr, %i.ug
  br i1 %.not.i.i.i333.i.i.i, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit340.i.i.i, label %.noexc.i354.i.i.i, !prof !279

.noexc.i354.i.i.i:                                ; preds = %bb.bv
  %i.uh = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.ui = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.ui, ptr %11, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i64 55, ptr %i.d, align 8, !tbaa !278
  %i.uj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc355.i.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i334.i.i.i ; 3 uses

.noexc355.i.i.i:                                  ; preds = %.noexc.i354.i.i.i
  store ptr %i.uj, ptr %11, align 8, !tbaa !216
  %i.uk = load i64, ptr %i.d, align 8, !tbaa !278 ; 3 uses
  store i64 %i.uk, ptr %i.ui, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.uj, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.ul = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.uk, ptr %i.ul, align 8, !tbaa !569
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.uk
  store i8 0, ptr %i.um, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.uh, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %.noexc355.i.i.i
  invoke void @__cxa_throw(ptr nonnull %i.uh, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.by unwind label %bb.bx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i334.i.i.i: ; preds = %.noexc.i354.i.i.i
  %i.un = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %common.resume.sink.split.i

bb.bx:                                            ; preds = %bb.bw, %.noexc355.i.i.i
  %.0.i.i.i337.i.i.i = phi i1 [ false, %bb.bw ], [ true, %.noexc355.i.i.i ] ; 2 uses
  %i.uo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.up = load ptr, ptr %11, align 8, !tbaa !216  ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.ui
  br i1 %i.uq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i339.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i338.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i338.i.i.i: ; preds = %bb.bx
  call void @_ZdlPv(ptr noundef %i.up) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %.0.i.i.i337.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i339.i.i.i: ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %.0.i.i.i337.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.by:                                            ; preds = %bb.bw
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit340.i.i.i: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %i.pr
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !278
  %i.ut = add nsw i64 %i.te, -1
  %i.uu = add i64 %i.ut, %i.us
  %i.uv = load ptr, ptr %i.cu, align 8, !tbaa !328
  %i.uw = load i64, ptr %i.cv, align 8, !tbaa !323
  %i.ux = mul i64 %i.uw, %i.uu
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.ux
  %i.uz = load i64, ptr %i.cr, align 8, !tbaa !709 ; 3 uses
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.uz
  store ptr %i.dw, ptr %i.va, align 8, !tbaa !344
  %i.vb = add i64 %i.uz, 1                        ; 3 uses
  store i64 %i.vb, ptr %i.cr, align 8, !tbaa !709
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.uz
  store ptr %i.uy, ptr %i.vc, align 8, !tbaa !344
  %i.vd = icmp ugt i64 %i.vb, 2047
  br i1 %i.vd, label %bb.bz, label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit246.i.i.i"

bb.bz:                                            ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit340.i.i.i
  %i.ve = load ptr, ptr %i.cs, align 8, !tbaa !694, !nonnull !115, !align !265 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 544
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !348 ; 2 uses
  %.not.i.i.i243.i.i.i = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i243.i.i.i, label %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i245.i.i.i, label %_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit.i

_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit.i: ; preds = %bb.bz
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !349
  br label %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i245.i.i.i

_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i245.i.i.i: ; preds = %_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit.i, %bb.bz
  %i.vi = phi ptr [ %i.vh, %_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv.exit.i ], [ null, %bb.bz ]
  store ptr %i.vi, ptr %23, align 8, !tbaa !349
  store ptr %i.ct, ptr %i.ch, align 8, !tbaa !351
  store i8 1, ptr %i.ci, align 8, !tbaa !355
  call void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %i.az, i64 noundef %i.vb)
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ve, i64 440
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !356
  %i.vl = load i64, ptr %i.cr, align 8, !tbaa !709
  call void %i.vk(ptr noundef nonnull align 8 dereferenceable(104) %i.az, ptr noundef nonnull align 8 dereferenceable(104) %i.bc, ptr noundef nonnull align 8 dereferenceable(17) %23, i64 noundef %i.vl), !inline_history !1265
  store i64 0, ptr %i.cr, align 8, !tbaa !709
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit246.i.i.i"

"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit246.i.i.i": ; preds = %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i245.i.i.i, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit340.i.i.i, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit332.i.i.i
  %i.vm = add nuw i64 %.sroa.12.5537.i.i.i, %i.ps ; 3 uses
  %i.vn = sub i64 %i.eb, %i.vm
  %.not145.i.i.i = icmp ult i64 %i.vn, %i.ps
  br i1 %.not145.i.i.i, label %.loopexit445.i.i.i, label %bb.bm, !llvm.loop !1271

.thread432.i.i.i:                                 ; preds = %.loopexit445.i.i.i, %.loopexit447.i.i.i
  %.sroa.0378.5.i.i.i = phi i64 [ %.sroa.0378.2.i.i.i, %.loopexit447.i.i.i ], [ %.sroa.0378.4.lcssa.i.i.i, %.loopexit445.i.i.i ] ; 2 uses
  %.sroa.12.6.i.i.i = phi i64 [ %.sroa.12.3.i.i.i, %.loopexit447.i.i.i ], [ %.sroa.12.5.lcssa.i.i.i, %.loopexit445.i.i.i ] ; 2 uses
  %i.vo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %i.bf, i64 noundef 0)
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !366 ; 3 uses
  %.not142547.i.i.i = icmp eq i64 %i.dy, %.sroa.0378.5.i.i.i
  br i1 %.not142547.i.i.i, label %.preheader.i.i.i, label %.lr.ph549.i.i.i

.preheader.i.i.i:                                 ; preds = %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit251.i.i.i", %.thread432.i.i.i, %.thread432.thread.i.i.i
  %i.vq = phi ptr [ %i.ef, %.thread432.thread.i.i.i ], [ %i.vp, %.thread432.i.i.i ], [ %i.vp, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit251.i.i.i" ]
  %.sroa.12.6668.i.i.i = phi i64 [ %i.dy, %.thread432.thread.i.i.i ], [ %.sroa.12.6.i.i.i, %.thread432.i.i.i ], [ %.sroa.12.6.i.i.i, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit251.i.i.i" ] ; 2 uses
  %.not143550.i.i.i = icmp eq i64 %.sroa.12.6668.i.i.i, %i.eb
  br i1 %.not143550.i.i.i, label %"_ZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEm.exit.i", label %.lr.ph552.i.i.i

.lr.ph549.i.i.i:                                  ; preds = %.thread432.i.i.i, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit251.i.i.i"
  %.0120548.i.i.i = phi i64 [ %i.wp, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit251.i.i.i" ], [ %i.dy, %.thread432.i.i.i ] ; 3 uses
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %.0120548.i.i.i
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !278
  %.not96.i.i = icmp ugt i64 %i.vs, %i.dy
  br i1 %.not96.i.i, label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit251.i.i.i", label %bb.ca

bb.ca:                                            ; preds = %.lr.ph549.i.i.i
  %i.vt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 noundef 0)
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !278
  %i.vv = add i64 %i.vu, %.0120548.i.i.i
  %i.vw = load ptr, ptr %i.cu, align 8, !tbaa !328
  %i.vx = load i64, ptr %i.cv, align 8, !tbaa !323
  %i.vy = mul i64 %i.vx, %i.vv
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.vy
  %i.wa = load i64, ptr %i.cr, align 8, !tbaa !709 ; 3 uses
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.wa
  store ptr %i.dw, ptr %i.wb, align 8, !tbaa !344
  %i.wc = add i64 %i.wa, 1                        ; 3 uses
  store i64 %i.wc, ptr %i.cr, align 8, !tbaa !709
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.wa
  store ptr %i.vz, ptr %i.wd, align 8, !tbaa !344
  %i.we = icmp ugt i64 %i.wc, 2047
  br i1 %i.we, label %bb.cb, label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit251.i.i.i"

bb.cb:                                            ; preds = %bb.ca
  %i.wf = load ptr, ptr %i.cs, align 8, !tbaa !694, !nonnull !115, !align !265 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 544 ; 2 uses
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !348
  %.not.i.i.i248.i.i.i = icmp eq ptr %i.wh, null
  br i1 %.not.i.i.i248.i.i.i, label %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i250.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wi = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wg)
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !349
  %.pre.i.i249.i.i.i = load i64, ptr %i.cr, align 8, !tbaa !709
  br label %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i250.i.i.i

_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i250.i.i.i: ; preds = %bb.cc, %bb.cb
  %i.wk = phi i64 [ %.pre.i.i249.i.i.i, %bb.cc ], [ %i.wc, %bb.cb ]
  %i.wl = phi ptr [ %i.wj, %bb.cc ], [ null, %bb.cb ]
  store ptr %i.wl, ptr %22, align 8, !tbaa !349
  store ptr %i.ct, ptr %i.cj, align 8, !tbaa !351
  store i8 1, ptr %i.ck, align 8, !tbaa !355
  call void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %i.az, i64 noundef %i.wk)
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wf, i64 440
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !356
  %i.wo = load i64, ptr %i.cr, align 8, !tbaa !709
  call void %i.wn(ptr noundef nonnull align 8 dereferenceable(104) %i.az, ptr noundef nonnull align 8 dereferenceable(104) %i.bc, ptr noundef nonnull align 8 dereferenceable(17) %22, i64 noundef %i.wo), !inline_history !1265
  store i64 0, ptr %i.cr, align 8, !tbaa !709
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  br label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit251.i.i.i"

"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit251.i.i.i": ; preds = %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i250.i.i.i, %bb.ca, %.lr.ph549.i.i.i
  %i.wp = add i64 %.0120548.i.i.i, 1              ; 2 uses
  %.not142.i.i.i = icmp eq i64 %i.wp, %.sroa.0378.5.i.i.i
  br i1 %.not142.i.i.i, label %.preheader.i.i.i, label %.lr.ph549.i.i.i, !llvm.loop !1272

.lr.ph552.i.i.i:                                  ; preds = %.preheader.i.i.i, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit256.i.i.i"
  %.sroa.12.7551.i.i.i = phi i64 [ %i.yd, %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit256.i.i.i" ], [ %.sroa.12.6668.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %.sroa.12.7551.i.i.i
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !278
  %.not97.i.i = icmp ugt i64 %i.wr, %i.dy
  br i1 %.not97.i.i, label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit256.i.i.i", label %bb.cd

bb.cd:                                            ; preds = %.lr.ph552.i.i.i
  %i.ws = load ptr, ptr %i.cq, align 8, !tbaa !368 ; 2 uses
  %i.wt = load ptr, ptr %i.cp, align 8, !tbaa !366 ; 3 uses
  %i.wu = ptrtoint ptr %i.ws to i64
  %i.wv = ptrtoint ptr %i.wt to i64
  %i.ww = sub i64 %i.wu, %i.wv
  %i.wx = ashr exact i64 %i.ww, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !278
  store i64 %i.wx, ptr %i.c, align 8, !tbaa !278
  %.not.i.i.i62.not.i = icmp eq ptr %i.ws, %i.wt
  br i1 %.not.i.i.i62.not.i, label %.noexc.i.i, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit.i, !prof !229

.noexc.i.i:                                       ; preds = %bb.cd
  %i.wy = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.wz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.wz, ptr %10, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 55, ptr %i.a, align 8, !tbaa !278
  %i.xa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ; 3 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.xa, ptr %10, align 8, !tbaa !216
  %i.xb = load i64, ptr %i.a, align 8, !tbaa !278 ; 3 uses
  store i64 %i.xb, ptr %i.wz, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.xa, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.xc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.xb, ptr %i.xc, align 8, !tbaa !569
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xb
  store i8 0, ptr %i.xd, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.wy, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %.noexc.i
  invoke void @__cxa_throw(ptr nonnull %i.wy, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.cg unwind label %bb.cf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %.noexc.i.i
  %i.xe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %common.resume.sink.split.i

bb.cf:                                            ; preds = %bb.ce, %.noexc.i
  %.0.i.i.i.i = phi i1 [ false, %bb.ce ], [ true, %.noexc.i ] ; 2 uses
  %i.xf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xg = load ptr, ptr %10, align 8, !tbaa !216  ; 2 uses
  %i.xh = icmp eq ptr %i.xg, %i.wz
  br i1 %i.xh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.cf
  call void @_ZdlPv(ptr noundef %i.xg) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.cg:                                            ; preds = %bb.ce
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit.i:        ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.xi = load i64, ptr %i.wt, align 8, !tbaa !278
  %i.xj = add i64 %i.xi, %.sroa.12.7551.i.i.i
  %i.xk = load ptr, ptr %i.cu, align 8, !tbaa !328
  %i.xl = load i64, ptr %i.cv, align 8, !tbaa !323
  %i.xm = mul i64 %i.xl, %i.xj
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xm
  %i.xo = load i64, ptr %i.cr, align 8, !tbaa !709 ; 3 uses
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.xo
  store ptr %i.dw, ptr %i.xp, align 8, !tbaa !344
  %i.xq = add i64 %i.xo, 1                        ; 3 uses
  store i64 %i.xq, ptr %i.cr, align 8, !tbaa !709
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.xo
  store ptr %i.xn, ptr %i.xr, align 8, !tbaa !344
  %i.xs = icmp ugt i64 %i.xq, 2047
  br i1 %i.xs, label %bb.ch, label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit256.i.i.i"

bb.ch:                                            ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit.i
  %i.xt = load ptr, ptr %i.cs, align 8, !tbaa !694, !nonnull !115, !align !265 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 544 ; 2 uses
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !348
  %.not.i.i.i253.i.i.i = icmp eq ptr %i.xv, null
  br i1 %.not.i.i.i253.i.i.i, label %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i255.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.xw = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xu)
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !349
  %.pre.i.i254.i.i.i = load i64, ptr %i.cr, align 8, !tbaa !709
  br label %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i255.i.i.i

_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i255.i.i.i: ; preds = %bb.ci, %bb.ch
  %i.xy = phi i64 [ %.pre.i.i254.i.i.i, %bb.ci ], [ %i.xq, %bb.ch ]
  %i.xz = phi ptr [ %i.xx, %bb.ci ], [ null, %bb.ch ]
  store ptr %i.xz, ptr %21, align 8, !tbaa !349
  store ptr %i.ct, ptr %i.cl, align 8, !tbaa !351
  store i8 1, ptr %i.cm, align 8, !tbaa !355
  call void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %i.az, i64 noundef %i.xy)
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xt, i64 440
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !356
  %i.yc = load i64, ptr %i.cr, align 8, !tbaa !709
  call void %i.yb(ptr noundef nonnull align 8 dereferenceable(104) %i.az, ptr noundef nonnull align 8 dereferenceable(104) %i.bc, ptr noundef nonnull align 8 dereferenceable(17) %21, i64 noundef %i.yc), !inline_history !1265
  store i64 0, ptr %i.cr, align 8, !tbaa !709
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit256.i.i.i"

"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit256.i.i.i": ; preds = %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit.i255.i.i.i, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit.i, %.lr.ph552.i.i.i
  %i.yd = add i64 %.sroa.12.7551.i.i.i, 1         ; 2 uses
  %.not143.i.i.i = icmp eq i64 %i.yd, %i.eb
  br i1 %.not143.i.i.i, label %"_ZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEm.exit.i", label %.lr.ph552.i.i.i, !llvm.loop !1273

"_ZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEm.exit.i": ; preds = %"_ZZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEmENKUlmmmE_clEmmm.exit256.i.i.i", %.preheader.i.i.i, %bb.j
  %i.ye = add nuw i64 %.060175.i, 1               ; 2 uses
  %i.yf = add i64 %.059176.i, 1
  %exitcond.not.i = icmp eq i64 %i.ye, %5
  br i1 %exitcond.not.i, label %"_ZN6duckdb16WindowAggregator17EvaluateSubFramesIZNS_34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmE3$_0EEvSA_NS_17WindowExcludeModeEmmRNS_6vectorINS_11FrameBoundsELb1ESaISG_EEET_.exit", label %bb.b, !llvm.loop !1274

"_ZN6duckdb16WindowAggregator17EvaluateSubFramesIZNS_34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmE3$_0EEvSA_NS_17WindowExcludeModeEmmRNS_6vectorINS_11FrameBoundsELb1ESaISG_EEET_.exit": ; preds = %"_ZZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmENK3$_0clEm.exit.i", %bb.a
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 4 uses
  %i.yh = load i64, ptr %i.yg, align 8, !tbaa !709 ; 2 uses
  %.not.i12 = icmp eq i64 %i.yh, 0
  br i1 %.not.i12, label %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit, label %bb.cj

bb.cj:                                            ; preds = %"_ZN6duckdb16WindowAggregator17EvaluateSubFramesIZNS_34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmE3$_0EEvSA_NS_17WindowExcludeModeEmmRNS_6vectorINS_11FrameBoundsELb1ESaISG_EEET_.exit"
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !694, !nonnull !115, !align !265 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 544 ; 2 uses
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !348
  %.not.i.i.a = icmp eq ptr %i.yl, null
  br i1 %.not.i.i.a, label %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ym = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yk)
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !349
  %.pre.i = load i64, ptr %i.yg, align 8, !tbaa !709
  br label %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit.i

_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit.i: ; preds = %bb.ck, %bb.cj
  %i.yo = phi i64 [ %.pre.i, %bb.ck ], [ %i.yh, %bb.cj ]
  %i.yp = phi ptr [ %i.yn, %bb.ck ], [ null, %bb.cj ]
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.yp, ptr %9, align 8, !tbaa !349
  %i.yr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.yq, ptr %i.yr, align 8, !tbaa !351
  %i.ys = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 1, ptr %i.ys, align 8, !tbaa !355
  call void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %i.az, i64 noundef %i.yo)
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yj, i64 440
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !356
  %i.yv = load i64, ptr %i.yg, align 8, !tbaa !709
  call void %i.yu(ptr noundef nonnull align 8 dereferenceable(104) %i.az, ptr noundef nonnull align 8 dereferenceable(104) %i.bc, ptr noundef nonnull align 8 dereferenceable(17) %9, i64 noundef %i.yv), !inline_history !1275
  store i64 0, ptr %i.yg, align 8, !tbaa !709
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit

_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit: ; preds = %"_ZN6duckdb16WindowAggregator17EvaluateSubFramesIZNS_34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmmE3$_0EEvSA_NS_17WindowExcludeModeEmmRNS_6vectorINS_11FrameBoundsELb1ESaISG_EEET_.exit", %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 4 uses
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !348
  %.not.i.i13 = icmp eq ptr %i.yx, null
  br i1 %.not.i.i13, label %_ZN6duckdb21WindowAggregateStates8FinalizeERNS_6VectorE.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit
  %i.yy = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yw)
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !349
  br label %_ZN6duckdb21WindowAggregateStates8FinalizeERNS_6VectorE.exit

_ZN6duckdb21WindowAggregateStates8FinalizeERNS_6VectorE.exit: ; preds = %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit, %bb.cl
  %i.za = phi ptr [ %i.yz, %bb.cl ], [ null, %_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv.exit ]
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  store ptr %i.za, ptr %8, align 8, !tbaa !349
  %i.zc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.zb, ptr %i.zc, align 8, !tbaa !351
  %i.zd = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 1, ptr %i.zd, align 8, !tbaa !355
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !215
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.zh = call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.zg)
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 4 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 5 uses
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !346
  %i.zl = load ptr, ptr %i.zi, align 8, !tbaa !328
  %i.zm = ptrtoint ptr %i.zk to i64
  %i.zn = ptrtoint ptr %i.zl to i64
  %i.zo = sub i64 %i.zm, %i.zn
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !323
  %i.zr = udiv i64 %i.zo, %i.zq
end_hunk_1
begin_hunk_2_@_ZNK6duckdb13MergeSortTreeIjjSt4lessIjELm32ELm32EE9SelectNthERKNS_6vectorINS_11FrameBoundsELb1ESaIS5_EEEm:bb.a
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge372, %._crit_edge
  %.3293 = phi i64 [ %i.hq, %._crit_edge372 ], [ 0, %._crit_edge ] ; 2 uses
  %.3289 = phi i64 [ %.1287, %._crit_edge372 ], [ %2, %._crit_edge ] ; 2 uses
  %.2123 = phi i64 [ %i.hr, %._crit_edge372 ], [ %.lcssa555, %._crit_edge ]
  %.1 = phi i64 [ %i.hs, %._crit_edge372 ], [ %i.u, %._crit_edge ] ; 2 uses
  %.not139391 = icmp eq i64 %.1, 0
  br i1 %.not139391, label %._crit_edge398, label %.lr.ph397

.lr.ph397:                                        ; preds = %bb.r
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph397, %.thread305
  %.2395 = phi i64 [ %.1, %.lr.ph397 ], [ %i.jt, %.thread305 ] ; 2 uses
  %.3394 = phi i64 [ %.2123, %.lr.ph397 ], [ %i.js, %.thread305 ] ; 6 uses
  %.4393 = phi i64 [ %.3289, %.lr.ph397 ], [ %.5.lcssa, %.thread305 ] ; 2 uses
  %.4294392 = phi i64 [ %.3293, %.lr.ph397 ], [ %i.jr, %.thread305 ] ; 3 uses
  %i.hu = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_IjLb1ESaIjEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.2395) ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !757
  %i.hw = mul i64 %.3394, %.4294392
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.hw ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !757 ; 2 uses
  %.sroa.0251.0381 = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %.3394 ; 2 uses
  %i.ia = icmp ult ptr %.sroa.0251.0381, %i.hz
  br i1 %i.ia, label %.preheader.lr.ph, label %.thread305

.preheader.lr.ph:                                 ; preds = %bb.s
  %i.ib = load ptr, ptr %i.ht, align 8, !tbaa !407 ; 2 uses
  %i.ic = load ptr, ptr %1, align 8, !tbaa !408   ; 3 uses
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = ashr exact i64 %i.if, 4
  %.not427 = icmp eq ptr %i.ib, %i.ic
  %i.ih = icmp sgt i64 %.3394, 0
  %umax450 = tail call i64 @llvm.umax.i64(i64 %i.ig, i64 1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge379.thread
  %.sroa.0251.0385 = phi ptr [ %.sroa.0251.0381, %.preheader.lr.ph ], [ %.sroa.0251.0, %._crit_edge379.thread ] ; 3 uses
  %.sroa.0254.0384 = phi ptr [ %i.hx, %.preheader.lr.ph ], [ %.sroa.0251.0385, %._crit_edge379.thread ] ; 2 uses
  %.5383 = phi i64 [ %.4393, %.preheader.lr.ph ], [ %i.jp, %._crit_edge379.thread ] ; 3 uses
  %.5295382 = phi i64 [ %.4294392, %.preheader.lr.ph ], [ %i.jo, %._crit_edge379.thread ] ; 2 uses
  br i1 %.not427, label %._crit_edge379.thread, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph: ; preds = %.preheader
  %i.ii = ptrtoint ptr %.sroa.0251.0385 to i64
  br label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204

._crit_edge379:                                   ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224
  %i.ij = icmp ugt i64 %i.jm, %.5383
  br i1 %i.ij, label %.thread305, label %._crit_edge379.thread

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204: ; preds = %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224
  %.0125378 = phi i64 [ 0, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph ], [ %i.jn, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224 ] ; 2 uses
  %.0126377 = phi i64 [ 0, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph ], [ %i.jm, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224 ]
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.ic, i64 %.0125378 ; 2 uses
  br i1 %i.ih, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit214

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206: ; preds = %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !278
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206
  %.016.i.i208 = phi i64 [ %.3394, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206 ], [ %.1.i.i213, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207 ] ; 2 uses
  %.sroa.011.015.i.i209 = phi ptr [ %.sroa.0254.0384, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206 ], [ %.sroa.011.1.i.i212, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207 ] ; 2 uses
  %i.im = lshr i64 %.016.i.i208, 1                ; 3 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.015.i.i209, i64 %i.im ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !79
  %i.ip = zext i32 %i.io to i64
  %i.iq = icmp ugt i64 %i.il, %i.ip               ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.is = xor i64 %i.im, -1
  %i.it = add nsw i64 %.016.i.i208, %i.is
  %.sroa.011.1.i.i212 = select i1 %i.iq, ptr %i.ir, ptr %.sroa.011.015.i.i209 ; 2 uses
  %.1.i.i213 = select i1 %i.iq, i64 %i.it, i64 %i.im ; 2 uses
  %i.iu = icmp sgt i64 %.1.i.i213, 0
  br i1 %i.iu, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit214, !llvm.loop !1318

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit214: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204
  %.sroa.011.0.lcssa.i.i205 = phi ptr [ %.sroa.0254.0384, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204 ], [ %.sroa.011.1.i.i212, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207 ] ; 2 uses
  %i.iv = ptrtoint ptr %.sroa.011.0.lcssa.i.i205 to i64 ; 3 uses
  %i.iw = sub i64 %i.ii, %i.iv
  %i.ix = ashr exact i64 %i.iw, 2                 ; 2 uses
  %i.iy = icmp sgt i64 %i.ix, 0
  br i1 %i.iy, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit214
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !278
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216
  %.016.i.i218 = phi i64 [ %i.ix, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216 ], [ %.1.i.i223, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217 ] ; 2 uses
  %.sroa.011.015.i.i219 = phi ptr [ %.sroa.011.0.lcssa.i.i205, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216 ], [ %.sroa.011.1.i.i222, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217 ] ; 2 uses
  %i.jb = lshr i64 %.016.i.i218, 1                ; 3 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.015.i.i219, i64 %i.jb ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !79
  %i.je = zext i32 %i.jd to i64
  %i.jf = icmp ugt i64 %i.ja, %i.je               ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.jh = xor i64 %i.jb, -1
  %i.ji = add nsw i64 %.016.i.i218, %i.jh
  %.sroa.011.1.i.i222 = select i1 %i.jf, ptr %i.jg, ptr %.sroa.011.015.i.i219 ; 2 uses
  %.1.i.i223 = select i1 %i.jf, i64 %i.ji, i64 %i.jb ; 2 uses
  %i.jj = icmp sgt i64 %.1.i.i223, 0
  br i1 %i.jj, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224.loopexit, !llvm.loop !1318

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217
  %.pre454 = ptrtoint ptr %.sroa.011.1.i.i222 to i64
  br label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224.loopexit, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit214
  %.pre-phi = phi i64 [ %.pre454, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit224.loopexit ], [ %i.iv, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmET_S8_S8_RKT0_.exit214 ]
  %i.jk = sub i64 %.pre-phi, %i.iv
  %i.jl = ashr exact i64 %i.jk, 2
  %i.jm = add i64 %i.jl, %.0126377                ; 3 uses
  %i.jn = add nuw i64 %.0125378, 1                ; 2 uses
  %exitcond451.not = icmp eq i64 %i.jn, %umax450
  br i1 %exitcond451.not, label %._crit_edge379, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204, !llvm.loop !1327

._crit_edge379.thread:                            ; preds = %.preheader, %._crit_edge379
  %.0126.lcssa496 = phi i64 [ %i.jm, %._crit_edge379 ], [ 0, %.preheader ]
  %i.jo = add i64 %.5295382, 1                    ; 2 uses
  %i.jp = sub nuw i64 %.5383, %.0126.lcssa496     ; 2 uses
  %.sroa.0251.0 = getelementptr inbounds [4 x i8], ptr %.sroa.0251.0385, i64 %.3394 ; 2 uses
  %i.jq = icmp ult ptr %.sroa.0251.0, %i.hz
  br i1 %i.jq, label %.preheader, label %.thread305

.thread305:                                       ; preds = %._crit_edge379.thread, %._crit_edge379, %bb.s
  %.5295.lcssa = phi i64 [ %.4294392, %bb.s ], [ %.5295382, %._crit_edge379 ], [ %i.jo, %._crit_edge379.thread ]
  %.5.lcssa = phi i64 [ %.4393, %bb.s ], [ %.5383, %._crit_edge379 ], [ %i.jp, %._crit_edge379.thread ] ; 2 uses
  %i.jr = shl i64 %.5295.lcssa, 5                 ; 2 uses
  %i.js = lshr i64 %.3394, 5
  %i.jt = add i64 %.2395, -1                      ; 2 uses
  %.not139 = icmp eq i64 %i.jt, 0
  br i1 %.not139, label %._crit_edge398, label %bb.s, !llvm.loop !1328

._crit_edge398:                                   ; preds = %.thread305, %bb.b, %bb.r
  %.4294.lcssa = phi i64 [ %.3293, %bb.r ], [ 0, %bb.b ], [ %i.jr, %.thread305 ] ; 5 uses
  %.4.lcssa = phi i64 [ %.3289, %bb.r ], [ %2, %bb.b ], [ %.5.lcssa, %.thread305 ]
  %i.ju = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_IjLb1ESaIjEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !727
  %i.jw = add i64 %.4.lcssa, 1                    ; 4 uses
  %i.jx = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_IjLb1ESaIjEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !758
  %i.ka = load ptr, ptr %i.jx, align 8, !tbaa !727
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = sub i64 %i.kb, %i.kc
  %i.ke = ashr exact i64 %i.kd, 2
  %i.kf = add i64 %.4294.lcssa, 32
  %i.kg = tail call noundef i64 @llvm.umin.i64(i64 %i.kf, i64 %i.ke) ; 4 uses
  %i.kh = icmp ult i64 %.4294.lcssa, %i.kg
  br i1 %i.kh, label %.lr.ph411, label %.loopexit

.lr.ph411:                                        ; preds = %._crit_edge398
  %i.ki = load ptr, ptr %1, align 8, !tbaa !759   ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !759 ; 2 uses
  %.not313401 = icmp eq ptr %i.ki, %i.kk
  br i1 %.not313401, label %.lr.ph411.split.us, label %.lr.ph405

.lr.ph411.split.us:                               ; preds = %.lr.ph411
  %.not140.not.us = icmp eq i64 %i.jw, 0
  %spec.select = select i1 %.not140.not.us, i64 %.4294.lcssa, i64 %i.kg
  br label %.loopexit

.lr.ph405:                                        ; preds = %.lr.ph411, %bb.u
  %.8409 = phi i64 [ %i.ks, %bb.u ], [ %i.jw, %.lr.ph411 ]
  %.8298408 = phi i64 [ %i.ku, %bb.u ], [ %.4294.lcssa, %.lr.ph411 ] ; 3 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.8298408
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !79
  %i.kn = zext i32 %i.km to i64                   ; 2 uses
  br label %bb.t

._crit_edge406:                                   ; preds = %bb.t
  %.not140.not = icmp eq i64 %i.ks, 0
  br i1 %.not140.not, label %.loopexit, label %bb.u

bb.t:                                             ; preds = %.lr.ph405, %bb.t
  %.sroa.0245.0403 = phi ptr [ %i.ki, %.lr.ph405 ], [ %i.kt, %bb.t ] ; 3 uses
  %.9402 = phi i64 [ %.8409, %.lr.ph405 ], [ %i.ks, %bb.t ]
  %i.ko = load i64, ptr %.sroa.0245.0403, align 8, !tbaa !710
  %.not141 = icmp ule i64 %i.ko, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0245.0403, i64 8
  %i.kq = load i64, ptr %i.kp, align 8
  %i.kr = icmp ugt i64 %i.kq, %i.kn
  %narrow = select i1 %.not141, i1 %i.kr, i1 false
  %.neg142 = sext i1 %narrow to i64
  %i.ks = add i64 %.9402, %.neg142                ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0245.0403, i64 16 ; 2 uses
  %.not313 = icmp eq ptr %i.kt, %i.kk
  br i1 %.not313, label %._crit_edge406, label %bb.t

bb.u:                                             ; preds = %._crit_edge406
  %i.ku = add i64 %.8298408, 1                    ; 2 uses
  %exitcond452.not = icmp eq i64 %i.ku, %i.kg
  br i1 %exitcond452.not, label %.loopexit, label %.lr.ph405, !llvm.loop !1329

.loopexit:                                        ; preds = %bb.u, %._crit_edge406, %.lr.ph411.split.us, %._crit_edge398, %bb.a
  %.sroa.0279.0 = phi i64 [ 0, %bb.a ], [ %.4294.lcssa, %._crit_edge398 ], [ %spec.select, %.lr.ph411.split.us ], [ %.8298408, %._crit_edge406 ], [ %i.kg, %bb.u ]
  %.sroa.3.0 = phi i64 [ 0, %bb.a ], [ %i.jw, %._crit_edge398 ], [ %i.jw, %.lr.ph411.split.us ], [ 0, %._crit_edge406 ], [ %i.ks, %bb.u ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0279.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i64 } @_ZNK6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE9SelectNthERKNS_6vectorINS_11FrameBoundsELb1ESaIS5_EEEm(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"struct.std::array.1278", align 8  ; 11 uses
  %8 = alloca %"struct.std::array.1278", align 8  ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !641
  %i.o = load ptr, ptr %0, align 8, !tbaa !656
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 48                  ; 4 uses
  %i.t = icmp ult i64 %i.s, 2
  br i1 %i.t, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i64 %i.s, -2                     ; 6 uses
  %.not422 = icmp eq i64 %i.u, 0
  br i1 %.not422, label %._crit_edge398, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.v = add nsw i64 %i.s, -3
  %xtraiter = and i64 %i.u, 7                     ; 3 uses
  %i.w = icmp ult i64 %i.v, 7
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.u, -8
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.0121351.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.z, %._crit_edge.unr-lcssa ]
  %lcmp.mod557 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod557)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0121351.epil = phi i64 [ %i.x, %.lr.ph.epil ], [ %.0121351.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.x = shl i64 %.0121351.epil, 5                ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1330

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa555 = phi i64 [ %i.z, %._crit_edge.unr-lcssa ], [ %i.x, %.lr.ph.epil ] ; 2 uses
  %i.y = icmp ugt i64 %i.u, 2
  br i1 %i.y, label %bb.c, label %bb.r

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0121351 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.z = shl i64 %.0121351, 40                    ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !1331

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.aa = add nsw i64 %i.s, -1
  %i.ab = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aa) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !407
  %i.ae = load ptr, ptr %1, align 8, !tbaa !408
  %.not423 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not423, label %.lr.ph371.preheader, label %.lr.ph354

.lr.ph354:                                        ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph354, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit152
  %.0127352 = phi i64 [ 0, %.lr.ph354 ], [ %i.bq, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit152 ] ; 3 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.0127352) ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.0127352 ; 3 uses
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !414 ; 3 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !414
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64               ; 4 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3                 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %bb.d
  %i.ap = load i64, ptr %i.ag, align 8, !tbaa !278
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.an, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %i.ai, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.aq = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !278
  %i.at = icmp ult i64 %i.as, %i.ap               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = xor i64 %i.aq, -1
  %i.aw = add nsw i64 %.016.i.i, %i.av
  %.sroa.011.1.i.i = select i1 %i.at, ptr %i.au, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.at, i64 %i.aw, i64 %i.aq ; 2 uses
  %i.ax = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ax, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i144, !llvm.loop !1332

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit: ; preds = %bb.d
  store i64 0, ptr %i.ah, align 8, !tbaa !544
  br label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit152

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i144: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.ay = ptrtoint ptr %.sroa.011.1.i.i to i64
  %i.az = sub i64 %i.ay, %i.al
  %i.ba = ashr exact i64 %i.az, 3
  %i.bb = and i64 %i.ba, -32
  store i64 %i.bb, ptr %i.ah, align 8, !tbaa !544
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !278
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i145

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i145: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i145, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i144
  %.016.i.i146 = phi i64 [ %i.an, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i144 ], [ %.1.i.i151, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i145 ] ; 2 uses
  %.sroa.011.015.i.i147 = phi ptr [ %i.ai, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i144 ], [ %.sroa.011.1.i.i150, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i145 ] ; 2 uses
  %i.be = lshr i64 %.016.i.i146, 1                ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i147, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !278
  %i.bh = icmp ult i64 %i.bg, %i.bd               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = xor i64 %i.be, -1
  %i.bk = add nsw i64 %.016.i.i146, %i.bj
  %.sroa.011.1.i.i150 = select i1 %i.bh, ptr %i.bi, ptr %.sroa.011.015.i.i147 ; 2 uses
  %.1.i.i151 = select i1 %i.bh, i64 %i.bk, i64 %i.be ; 2 uses
  %i.bl = icmp sgt i64 %.1.i.i151, 0
  br i1 %i.bl, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i145, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit152.loopexit, !llvm.loop !1332

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit152.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i145
  %.pre455 = ptrtoint ptr %.sroa.011.1.i.i150 to i64
  br label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit152

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit152: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit152.loopexit, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit
  %.pre-phi456 = phi i64 [ %.pre455, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit152.loopexit ], [ %i.al, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit ]
  %i.bm = sub i64 %.pre-phi456, %i.al
  %i.bn = ashr exact i64 %i.bm, 3
  %i.bo = and i64 %i.bn, -32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !545
  %i.bq = add nuw nsw i64 %.0127352, 1            ; 2 uses
  %i.br = load ptr, ptr %i.ac, align 8, !tbaa !407
  %i.bs = load ptr, ptr %1, align 8, !tbaa !408
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 4
  %i.bx = icmp ult i64 %i.bq, %i.bw
  br i1 %i.bx, label %bb.d, label %.lr.ph371.preheader, !llvm.loop !1333

.lr.ph371.preheader:                              ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit152, %bb.c
  br label %.lr.ph371

.lr.ph371:                                        ; preds = %.lr.ph371.preheader, %._crit_edge365
  %.0370 = phi i64 [ %i.hk, %._crit_edge365 ], [ %i.u, %.lr.ph371.preheader ] ; 4 uses
  %.1122369 = phi i64 [ %i.hj, %._crit_edge365 ], [ %.lcssa555, %.lr.ph371.preheader ]
  %.0286368 = phi i64 [ %.1287, %._crit_edge365 ], [ %2, %.lr.ph371.preheader ]
  %.0290367 = phi i64 [ %i.hi, %._crit_edge365 ], [ 0, %.lr.ph371.preheader ]
  %i.by = add i64 %.0370, 1
  %i.bz = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.by) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.0370)
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !366 ; 3 uses
  %i.cd = load ptr, ptr %i.ac, align 8, !tbaa !407 ; 2 uses
  %i.ce = load ptr, ptr %1, align 8, !tbaa !408   ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNK6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE9SelectNthERKNS_6vectorINS_11FrameBoundsELb1ESaIS5_EEEm:bb.a

._crit_edge372:                                   ; preds = %._crit_edge365
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge372, %._crit_edge
  %.3293 = phi i64 [ %i.hi, %._crit_edge372 ], [ 0, %._crit_edge ] ; 2 uses
  %.3289 = phi i64 [ %.1287, %._crit_edge372 ], [ %2, %._crit_edge ] ; 2 uses
  %.2123 = phi i64 [ %i.hj, %._crit_edge372 ], [ %.lcssa555, %._crit_edge ]
  %.1 = phi i64 [ %i.hk, %._crit_edge372 ], [ %i.u, %._crit_edge ] ; 2 uses
  %.not139391 = icmp eq i64 %.1, 0
  br i1 %.not139391, label %._crit_edge398, label %.lr.ph397

.lr.ph397:                                        ; preds = %bb.r
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph397, %.thread305
  %.2395 = phi i64 [ %.1, %.lr.ph397 ], [ %i.jj, %.thread305 ] ; 2 uses
  %.3394 = phi i64 [ %.2123, %.lr.ph397 ], [ %i.ji, %.thread305 ] ; 6 uses
  %.4393 = phi i64 [ %.3289, %.lr.ph397 ], [ %.5.lcssa, %.thread305 ] ; 2 uses
  %.4294392 = phi i64 [ %.3293, %.lr.ph397 ], [ %i.jh, %.thread305 ] ; 3 uses
  %i.hm = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.2395) ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !414
  %i.ho = mul i64 %.3394, %.4294392
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.ho ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !414 ; 2 uses
  %.sroa.0251.0381 = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %.3394 ; 2 uses
  %i.hs = icmp ult ptr %.sroa.0251.0381, %i.hr
  br i1 %i.hs, label %.preheader.lr.ph, label %.thread305

.preheader.lr.ph:                                 ; preds = %bb.s
  %i.ht = load ptr, ptr %i.hl, align 8, !tbaa !407 ; 2 uses
  %i.hu = load ptr, ptr %1, align 8, !tbaa !408   ; 3 uses
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = ashr exact i64 %i.hx, 4
  %.not427 = icmp eq ptr %i.ht, %i.hu
  %i.hz = icmp sgt i64 %.3394, 0
  %umax450 = tail call i64 @llvm.umax.i64(i64 %i.hy, i64 1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge379.thread
  %.sroa.0251.0385 = phi ptr [ %.sroa.0251.0381, %.preheader.lr.ph ], [ %.sroa.0251.0, %._crit_edge379.thread ] ; 3 uses
  %.sroa.0254.0384 = phi ptr [ %i.hp, %.preheader.lr.ph ], [ %.sroa.0251.0385, %._crit_edge379.thread ] ; 2 uses
  %.5383 = phi i64 [ %.4393, %.preheader.lr.ph ], [ %i.jf, %._crit_edge379.thread ] ; 3 uses
  %.5295382 = phi i64 [ %.4294392, %.preheader.lr.ph ], [ %i.je, %._crit_edge379.thread ] ; 2 uses
  br i1 %.not427, label %._crit_edge379.thread, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph: ; preds = %.preheader
  %i.ia = ptrtoint ptr %.sroa.0251.0385 to i64
  br label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204

._crit_edge379:                                   ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224
  %i.ib = icmp ugt i64 %i.jc, %.5383
  br i1 %i.ib, label %.thread305, label %._crit_edge379.thread

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204: ; preds = %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224
  %.0125378 = phi i64 [ 0, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph ], [ %i.jd, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224 ] ; 2 uses
  %.0126377 = phi i64 [ 0, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204.lr.ph ], [ %i.jc, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224 ]
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.hu, i64 %.0125378 ; 2 uses
  br i1 %i.hz, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit214

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206: ; preds = %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !278
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206
  %.016.i.i208 = phi i64 [ %.3394, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206 ], [ %.1.i.i213, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207 ] ; 2 uses
  %.sroa.011.015.i.i209 = phi ptr [ %.sroa.0254.0384, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i206 ], [ %.sroa.011.1.i.i212, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207 ] ; 2 uses
  %i.ie = lshr i64 %.016.i.i208, 1                ; 3 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i209, i64 %i.ie ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !278
  %i.ih = icmp ult i64 %i.ig, %i.id               ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ij = xor i64 %i.ie, -1
  %i.ik = add nsw i64 %.016.i.i208, %i.ij
  %.sroa.011.1.i.i212 = select i1 %i.ih, ptr %i.ii, ptr %.sroa.011.015.i.i209 ; 2 uses
  %.1.i.i213 = select i1 %i.ih, i64 %i.ik, i64 %i.ie ; 2 uses
  %i.il = icmp sgt i64 %.1.i.i213, 0
  br i1 %i.il, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit214, !llvm.loop !1332

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit214: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204
  %.sroa.011.0.lcssa.i.i205 = phi ptr [ %.sroa.0254.0384, %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204 ], [ %.sroa.011.1.i.i212, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i207 ] ; 2 uses
  %i.im = ptrtoint ptr %.sroa.011.0.lcssa.i.i205 to i64 ; 3 uses
  %i.in = sub i64 %i.ia, %i.im
  %i.io = ashr exact i64 %i.in, 3                 ; 2 uses
  %i.ip = icmp sgt i64 %i.io, 0
  br i1 %i.ip, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit214
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !278
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216
  %.016.i.i218 = phi i64 [ %i.io, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216 ], [ %.1.i.i223, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217 ] ; 2 uses
  %.sroa.011.015.i.i219 = phi ptr [ %.sroa.011.0.lcssa.i.i205, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i216 ], [ %.sroa.011.1.i.i222, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217 ] ; 2 uses
  %i.is = lshr i64 %.016.i.i218, 1                ; 3 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i219, i64 %i.is ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !278
  %i.iv = icmp ult i64 %i.iu, %i.ir               ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.ix = xor i64 %i.is, -1
  %i.iy = add nsw i64 %.016.i.i218, %i.ix
  %.sroa.011.1.i.i222 = select i1 %i.iv, ptr %i.iw, ptr %.sroa.011.015.i.i219 ; 2 uses
  %.1.i.i223 = select i1 %i.iv, i64 %i.iy, i64 %i.is ; 2 uses
  %i.iz = icmp sgt i64 %.1.i.i223, 0
  br i1 %i.iz, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224.loopexit, !llvm.loop !1332

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i217
  %.pre454 = ptrtoint ptr %.sroa.011.1.i.i222 to i64
  br label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224.loopexit, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit214
  %.pre-phi = phi i64 [ %.pre454, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit224.loopexit ], [ %i.im, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit214 ]
  %i.ja = sub i64 %.pre-phi, %i.im
  %i.jb = ashr exact i64 %i.ja, 3
  %i.jc = add i64 %i.jb, %.0126377                ; 3 uses
  %i.jd = add nuw i64 %.0125378, 1                ; 2 uses
  %exitcond451.not = icmp eq i64 %i.jd, %umax450
  br i1 %exitcond451.not, label %._crit_edge379, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit204, !llvm.loop !1340

._crit_edge379.thread:                            ; preds = %.preheader, %._crit_edge379
  %.0126.lcssa496 = phi i64 [ %i.jc, %._crit_edge379 ], [ 0, %.preheader ]
  %i.je = add i64 %.5295382, 1                    ; 2 uses
  %i.jf = sub nuw i64 %.5383, %.0126.lcssa496     ; 2 uses
  %.sroa.0251.0 = getelementptr inbounds [8 x i8], ptr %.sroa.0251.0385, i64 %.3394 ; 2 uses
  %i.jg = icmp ult ptr %.sroa.0251.0, %i.hr
  br i1 %i.jg, label %.preheader, label %.thread305

.thread305:                                       ; preds = %._crit_edge379.thread, %._crit_edge379, %bb.s
  %.5295.lcssa = phi i64 [ %.4294392, %bb.s ], [ %.5295382, %._crit_edge379 ], [ %i.je, %._crit_edge379.thread ]
  %.5.lcssa = phi i64 [ %.4393, %bb.s ], [ %.5383, %._crit_edge379 ], [ %i.jf, %._crit_edge379.thread ] ; 2 uses
  %i.jh = shl i64 %.5295.lcssa, 5                 ; 2 uses
  %i.ji = lshr i64 %.3394, 5
  %i.jj = add i64 %.2395, -1                      ; 2 uses
  %.not139 = icmp eq i64 %i.jj, 0
  br i1 %.not139, label %._crit_edge398, label %bb.s, !llvm.loop !1341

._crit_edge398:                                   ; preds = %.thread305, %bb.b, %bb.r
  %.4294.lcssa = phi i64 [ %.3293, %bb.r ], [ 0, %bb.b ], [ %i.jh, %.thread305 ] ; 5 uses
  %.4.lcssa = phi i64 [ %.3289, %bb.r ], [ %2, %bb.b ], [ %.5.lcssa, %.thread305 ]
  %i.jk = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !366
  %i.jm = add i64 %.4.lcssa, 1                    ; 4 uses
  %i.jn = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !368
  %i.jq = load ptr, ptr %i.jn, align 8, !tbaa !366
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = ashr exact i64 %i.jt, 3
  %i.jv = add i64 %.4294.lcssa, 32
  %i.jw = tail call noundef i64 @llvm.umin.i64(i64 %i.jv, i64 %i.ju) ; 4 uses
  %i.jx = icmp ult i64 %.4294.lcssa, %i.jw
  br i1 %i.jx, label %.lr.ph411, label %.loopexit

.lr.ph411:                                        ; preds = %._crit_edge398
  %i.jy = load ptr, ptr %1, align 8, !tbaa !759   ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !759 ; 2 uses
  %.not313401 = icmp eq ptr %i.jy, %i.ka
  br i1 %.not313401, label %.lr.ph411.split.us, label %.lr.ph405

.lr.ph411.split.us:                               ; preds = %.lr.ph411
  %.not140.not.us = icmp eq i64 %i.jm, 0
  %spec.select = select i1 %.not140.not.us, i64 %.4294.lcssa, i64 %i.jw
  br label %.loopexit

.lr.ph405:                                        ; preds = %.lr.ph411, %bb.u
  %.8409 = phi i64 [ %i.kh, %bb.u ], [ %i.jm, %.lr.ph411 ]
  %.8298408 = phi i64 [ %i.kj, %bb.u ], [ %.4294.lcssa, %.lr.ph411 ] ; 3 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %.8298408
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !278 ; 2 uses
  br label %bb.t

._crit_edge406:                                   ; preds = %bb.t
  %.not140.not = icmp eq i64 %i.kh, 0
  br i1 %.not140.not, label %.loopexit, label %bb.u

bb.t:                                             ; preds = %.lr.ph405, %bb.t
  %.sroa.0245.0403 = phi ptr [ %i.jy, %.lr.ph405 ], [ %i.ki, %bb.t ] ; 3 uses
  %.9402 = phi i64 [ %.8409, %.lr.ph405 ], [ %i.kh, %bb.t ]
  %i.kd = load i64, ptr %.sroa.0245.0403, align 8, !tbaa !710
  %.not141 = icmp uge i64 %i.kc, %i.kd
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0245.0403, i64 8
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = icmp ult i64 %i.kc, %i.kf
  %narrow = select i1 %.not141, i1 %i.kg, i1 false
  %.neg142 = sext i1 %narrow to i64
  %i.kh = add i64 %.9402, %.neg142                ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0245.0403, i64 16 ; 2 uses
  %.not313 = icmp eq ptr %i.ki, %i.ka
  br i1 %.not313, label %._crit_edge406, label %bb.t

bb.u:                                             ; preds = %._crit_edge406
  %i.kj = add i64 %.8298408, 1                    ; 2 uses
  %exitcond452.not = icmp eq i64 %i.kj, %i.jw
  br i1 %exitcond452.not, label %.loopexit, label %.lr.ph405, !llvm.loop !1342

.loopexit:                                        ; preds = %bb.u, %._crit_edge406, %.lr.ph411.split.us, %._crit_edge398, %bb.a
  %.sroa.0279.0 = phi i64 [ 0, %bb.a ], [ %.4294.lcssa, %._crit_edge398 ], [ %spec.select, %.lr.ph411.split.us ], [ %.8298408, %._crit_edge406 ], [ %i.jw, %bb.u ]
  %.sroa.3.0 = phi i64 [ 0, %bb.a ], [ %i.jm, %._crit_edge398 ], [ %i.jm, %.lr.ph411.split.us ], [ 0, %._crit_edge406 ], [ %i.kh, %bb.u ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0279.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i64, i64 } %.fca.1.insert
}

declare void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb13MergeSortTreeIjjSt4lessIjELm32ELm32EEESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !721    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !724  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !725  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_EEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_EEvPT_.exit.i.i.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !727  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #30
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.g = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !727 ; 2 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_EEvPT_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #30
  br label %_ZSt8_DestroyISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_EEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_EEvPT_.exit.i.i.i.i.i: ; preds = %bb.d, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !45

_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_EEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !724
  br label %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i, label %_ZNKSt14default_deleteIN6duckdb13MergeSortTreeIjjSt4lessIjELm32ELm32EEEEclEPS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #30
  br label %_ZNKSt14default_deleteIN6duckdb13MergeSortTreeIjjSt4lessIjELm32ELm32EEEEclEPS4_.exit

_ZNKSt14default_deleteIN6duckdb13MergeSortTreeIjjSt4lessIjELm32ELm32EEEEclEPS4_.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorIjLb1ESaIjEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb13MergeSortTreeIjjSt4lessIjELm32ELm32EEEEclEPS4_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EEESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !729    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !656  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !641  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyISt4pairIN6duckdb6vectorImLb1ESaImEEES4_EEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt4pairIN6duckdb6vectorImLb1ESaImEEES4_EEvPT_.exit.i.i.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !366  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.g = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !366 ; 2 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIN6duckdb6vectorImLb1ESaImEEES4_EEvPT_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #30
  br label %_ZSt8_DestroyISt4pairIN6duckdb6vectorImLb1ESaImEEES4_EEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIN6duckdb6vectorImLb1ESaImEEES4_EEvPT_.exit.i.i.i.i.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIN6duckdb6vectorImLb1ESaImEEES4_EEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !656
  br label %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i, label %_ZNKSt14default_deleteIN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EEEEclEPS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #30
  br label %_ZNKSt14default_deleteIN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EEEEclEPS4_.exit

_ZNKSt14default_deleteIN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EEEEclEPS4_.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN6duckdb6vectorImLb1ESaImEEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EEEEclEPS4_.exit, %bb.a
  ret void
}

declare void @_ZNK6duckdb16BoundOrderByNode4CopyEv(ptr dead_on_unwind writable sret(%"struct.duckdb::BoundOrderByNode") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb16BoundOrderByNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.b) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #30
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 3 uses
  %.not.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !208
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(88) %i.d) #29, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !532    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !532  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE3getILb1EEERS1_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK6duckdb15WindowTokenTree4RankEmmm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc242.i.i
  invoke void @__cxa_throw(ptr nonnull %i.ht, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.w unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i181.i.i: ; preds = %.noexc.i241.i.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %common.resume.sink.split

bb.v:                                             ; preds = %bb.u, %.noexc242.i.i
  %.0.i.i.i184.i.i = phi i1 [ false, %bb.u ], [ true, %.noexc242.i.i ] ; 2 uses
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ib = load ptr, ptr %21, align 8, !tbaa !216  ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.hu
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i186.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i185.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i185.i.i: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.ib) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br i1 %.0.i.i.i184.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i186.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br i1 %.0.i.i.i184.i.i, label %common.resume.sink.split, label %common.resume

bb.w:                                             ; preds = %bb.u
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit187.i.i:   ; preds = %.lr.ph437.i.i, %bb.t
  %.sroa.12.2434.i.i681 = phi i64 [ %i.jt, %bb.t ], [ %.sroa.12.1.i.i, %.lr.ph437.i.i ] ; 2 uses
  %.sroa.13.1435.i.i680 = phi i64 [ %i.ju, %bb.t ], [ %.sroa.13.0.i.i, %.lr.ph437.i.i ] ; 3 uses
  %.11.i679 = phi i64 [ %i.js, %bb.t ], [ %.10.i, %.lr.ph437.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.pre507.i.i, i64 %.sroa.13.1435.i.i680
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !278 ; 2 uses
  %i.if = add i64 %.sroa.13.1435.i.i680, 32       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  store i64 %i.if, ptr %i.bm, align 8, !tbaa !278
  store i64 %i.hs, ptr %i.bn, align 8, !tbaa !278
  %.not.i.i.i188.i.i = icmp ult i64 %i.if, %i.hs
  br i1 %.not.i.i.i188.i.i, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit195.i.i, label %.noexc.i245.i.i, !prof !279

.noexc.i245.i.i:                                  ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit187.i.i
  %i.ig = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.ih = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store ptr %i.ih, ptr %20, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #29
  store i64 55, ptr %i.be, align 8, !tbaa !278
  %i.ii = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.be, i64 noundef 0)
          to label %.noexc246.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i189.i.i ; 3 uses

.noexc246.i.i:                                    ; preds = %.noexc.i245.i.i
  store ptr %i.ii, ptr %20, align 8, !tbaa !216
  %i.ij = load i64, ptr %i.be, align 8, !tbaa !278 ; 3 uses
  store i64 %i.ij, ptr %i.ih, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ii, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.ik = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.ij, ptr %i.ik, align 8, !tbaa !569
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ij
  store i8 0, ptr %i.il, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.noexc246.i.i
  invoke void @__cxa_throw(ptr nonnull %i.ig, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.z unwind label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i189.i.i: ; preds = %.noexc.i245.i.i
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %common.resume.sink.split

bb.y:                                             ; preds = %bb.x, %.noexc246.i.i
  %.0.i.i.i192.i.i = phi i1 [ false, %bb.x ], [ true, %.noexc246.i.i ] ; 2 uses
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.io = load ptr, ptr %20, align 8, !tbaa !216  ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.ih
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i194.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i193.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i193.i.i: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.io) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br i1 %.0.i.i.i192.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i194.i.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br i1 %.0.i.i.i192.i.i, label %common.resume.sink.split, label %common.resume

bb.z:                                             ; preds = %bb.x
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit195.i.i:   ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit187.i.i
  %.idx369.i.i = shl nuw nsw i64 %i.ie, 3
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx369.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.pre507.i.i, i64 %i.if
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !278
  %i.it = sub nsw i64 %i.is, %i.ie                ; 2 uses
  %i.iu = icmp sgt i64 %i.it, 0
  br i1 %i.iu, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit205.i.i

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i: ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit195.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i
  %.017.i.i199.i.i = phi i64 [ %.1.i.i204.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i ], [ %i.it, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit195.i.i ] ; 2 uses
  %.01116.i.i200.i.i = phi ptr [ %.112.i.i203.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i ], [ %i.iq, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit195.i.i ] ; 2 uses
  %i.iv = lshr i64 %.017.i.i199.i.i, 1            ; 3 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i200.i.i, i64 %i.iv ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !278
  %i.iy = icmp ult i64 %i.ix, %i.bz               ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.ja = xor i64 %i.iv, -1
  %i.jb = add nsw i64 %.017.i.i199.i.i, %i.ja
  %.112.i.i203.i.i = select i1 %i.iy, ptr %i.iz, ptr %.01116.i.i200.i.i ; 2 uses
  %.1.i.i204.i.i = select i1 %i.iy, i64 %i.jb, i64 %i.iv ; 2 uses
  %i.jc = icmp sgt i64 %.1.i.i204.i.i, 0
  br i1 %i.jc, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit205.i.i, !llvm.loop !44

_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit205.i.i: ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit195.i.i
  %.011.lcssa.i.i196.i.i = phi ptr [ %i.iq, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit195.i.i ], [ %.112.i.i203.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i ]
  %i.jd = ptrtoint ptr %.011.lcssa.i.i196.i.i to i64
  %i.je = sub i64 %i.jd, %i.ho
  %i.jf = ashr exact i64 %i.je, 3                 ; 3 uses
  %i.jg = icmp slt i64 %i.jf, 0
  br i1 %i.jg, label %bb.aa, label %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i

bb.aa:                                            ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit205.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i64 %i.jf, ptr %i.bb, align 8, !tbaa !278
  store i64 0, ptr %i.bc, align 8, !tbaa !278
  store i64 -1, ptr %i.bd, align 8, !tbaa !278
  %i.jh = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.ji = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.ji, ptr %18, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #29
  store i64 75, ptr %i.ba, align 8, !tbaa !278
  %i.jj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i64 noundef 0)
          to label %.noexc.i.i251.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i248.i.i ; 3 uses

.noexc.i.i251.i.i:                                ; preds = %bb.aa
  store ptr %i.jj, ptr %18, align 8, !tbaa !216
  %i.jk = load i64, ptr %i.ba, align 8, !tbaa !278 ; 3 uses
  store i64 %i.jk, ptr %i.ji, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.jj, ptr noundef nonnull align 1 dereferenceable(75) @.str.22, i64 75, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !569
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jk
  store i8 0, ptr %i.jm, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlRmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %.noexc.i.i251.i.i
  invoke void @__cxa_throw(ptr nonnull %i.jh, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.ad unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i248.i.i: ; preds = %bb.aa
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %common.resume.sink.split

bb.ac:                                            ; preds = %bb.ab, %.noexc.i.i251.i.i
  %.0.i.i252.i.i = phi i1 [ false, %bb.ab ], [ true, %.noexc.i.i251.i.i ] ; 2 uses
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jp = load ptr, ptr %18, align 8, !tbaa !216  ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.ji
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i254.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i253.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i253.i.i: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.jp) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br i1 %.0.i.i252.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i254.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br i1 %.0.i.i252.i.i, label %common.resume.sink.split, label %common.resume

bb.ad:                                            ; preds = %bb.ab
  unreachable

_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i: ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit205.i.i
  %i.jr = sub i64 %i.jf, %.sroa.12.2434.i.i681
  %i.js = add i64 %i.jr, %.11.i679                ; 2 uses
  %i.jt = add i64 %.sroa.12.2434.i.i681, %i.dw    ; 3 uses
  %i.ju = add nuw i64 %.sroa.13.1435.i.i680, 1    ; 4 uses
  %i.jv = sub i64 %2, %i.jt
  %.not137.i.i = icmp ult i64 %i.jv, %i.dw
  br i1 %.not137.i.i, label %._crit_edge438.i.i, label %bb.t, !llvm.loop !1414

._crit_edge438.i.i:                               ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i, %bb.s
  %.12.i = phi i64 [ %.10.i, %bb.s ], [ %i.js, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i ] ; 2 uses
  %.sroa.12.2.lcssa.i.i = phi i64 [ %.sroa.12.1.i.i, %bb.s ], [ %i.jt, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i ] ; 3 uses
  %.sroa.13.1.lcssa.i.i = phi i64 [ %.sroa.13.0.i.i, %bb.s ], [ %i.ju, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i ] ; 3 uses
  %.not138.i.i = icmp eq i64 %.sroa.12.2.lcssa.i.i, %2
  br i1 %.not138.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge438.i.i
  %i.jw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i64 noundef %.sroa.13.1.lcssa.i.i)
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !278 ; 2 uses
  %.idx370.i.i = shl nuw nsw i64 %i.jx, 3
  %i.jy = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx370.i.i ; 2 uses
  %i.jz = add i64 %.sroa.13.1.lcssa.i.i, 32
  %i.ka = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i64 noundef %i.jz)
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !278
  %i.kc = sub nsw i64 %i.kb, %i.jx                ; 2 uses
  %i.kd = icmp sgt i64 %i.kc, 0
  br i1 %i.kd, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit215.i.i

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i: ; preds = %bb.ae, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i
  %.017.i.i209.i.i = phi i64 [ %.1.i.i214.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i ], [ %i.kc, %bb.ae ] ; 2 uses
  %.01116.i.i210.i.i = phi ptr [ %.112.i.i213.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i ], [ %i.jy, %bb.ae ] ; 2 uses
  %i.ke = lshr i64 %.017.i.i209.i.i, 1            ; 3 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i210.i.i, i64 %i.ke ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !278
  %i.kh = icmp ult i64 %i.kg, %i.bz               ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kj = xor i64 %i.ke, -1
  %i.kk = add nsw i64 %.017.i.i209.i.i, %i.kj
  %.112.i.i213.i.i = select i1 %i.kh, ptr %i.ki, ptr %.01116.i.i210.i.i ; 2 uses
  %.1.i.i214.i.i = select i1 %i.kh, i64 %i.kk, i64 %i.ke ; 2 uses
  %i.kl = icmp sgt i64 %.1.i.i214.i.i, 0
  br i1 %i.kl, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit215.i.i, !llvm.loop !44

_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit215.i.i: ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i, %bb.ae
  %.011.lcssa.i.i206.i.i = phi ptr [ %i.jy, %bb.ae ], [ %.112.i.i213.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i ]
  %i.km = ptrtoint ptr %.011.lcssa.i.i206.i.i to i64
  %i.kn = ptrtoint ptr %i.dy to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = ashr exact i64 %i.ko, 3
  %i.kq = tail call noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.kp)
  %i.kr = and i64 %i.kq, -32
  %i.ks = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dw, i1 true)
  %i.kt = lshr i64 %2, %i.ks
  %i.ku = shl i64 %i.kt, 6
  %i.kv = add i64 %i.kr, %i.ku
  br label %bb.af

bb.af:                                            ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit215.i.i, %._crit_edge438.i.i
  %.sroa.13.2.i.i = phi i64 [ %.sroa.13.1.lcssa.i.i, %._crit_edge438.i.i ], [ %i.kv, %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit215.i.i ]
  %.not139.i.i = icmp ult i64 %.2117.i.i, 3
  br i1 %.not139.i.i, label %.loopexit377.i.i, label %bb.f, !llvm.loop !1415

.loopexit377.i.i:                                 ; preds = %bb.af, %bb.d
  %.0.i = phi i64 [ 1, %bb.d ], [ %.12.i, %bb.af ] ; 2 uses
  %.sroa.0309.2.i.i = phi i64 [ %i.cj, %bb.d ], [ %.sroa.0309.1.lcssa.i.i, %bb.af ] ; 2 uses
  %.sroa.12.3.i.i = phi i64 [ %i.cj, %bb.d ], [ %.sroa.12.2.lcssa.i.i, %bb.af ] ; 2 uses
  %.3118.i.i = phi i64 [ %i.ch, %bb.d ], [ %i.dv, %bb.af ] ; 2 uses
  %.3.i.i = phi i64 [ %i.cg, %bb.d ], [ %i.dw, %bb.af ]
  %or.cond.i.i = icmp ult i64 %.3118.i.i, 2
  br i1 %or.cond.i.i, label %.thread360.i.i, label %.lr.ph454.preheader.i.i

.lr.ph454.preheader.i.i:                          ; preds = %.loopexit377.i.i
  %i.kw = add nsw i64 %.3118.i.i, -1
  br label %.lr.ph454.i.i

.loopexit375.i.i:                                 ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit287.i.i, %.preheader374.i.i
  %.5.i = phi i64 [ %.3.i, %.preheader374.i.i ], [ %i.oc, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit287.i.i ] ; 2 uses
  %.sroa.12.5.lcssa.i.i = phi i64 [ %.sroa.12.4452.i.i, %.preheader374.i.i ], [ %i.od, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit287.i.i ] ; 2 uses
  %i.kx = add i64 %i.ky, -1                       ; 2 uses
  %.not141.i.i = icmp eq i64 %i.kx, 0
  br i1 %.not141.i.i, label %.thread360.i.i, label %.lr.ph454.i.i, !llvm.loop !1416

.lr.ph454.i.i:                                    ; preds = %.loopexit375.i.i, %.lr.ph454.preheader.i.i
  %.1.i = phi i64 [ %.0.i, %.lr.ph454.preheader.i.i ], [ %.5.i, %.loopexit375.i.i ] ; 2 uses
  %i.ky = phi i64 [ %i.kw, %.lr.ph454.preheader.i.i ], [ %i.kx, %.loopexit375.i.i ] ; 2 uses
  %.4453.i.i = phi i64 [ %.3.i.i, %.lr.ph454.preheader.i.i ], [ %i.kz, %.loopexit375.i.i ]
  %.sroa.12.4452.i.i = phi i64 [ %.sroa.12.3.i.i, %.lr.ph454.preheader.i.i ], [ %.sroa.12.5.lcssa.i.i, %.loopexit375.i.i ] ; 3 uses
  %.sroa.0309.3451.i.i = phi i64 [ %.sroa.0309.2.i.i, %.lr.ph454.preheader.i.i ], [ %.sroa.0309.4.lcssa.i.i, %.loopexit375.i.i ] ; 3 uses
  %i.kz = lshr i64 %.4453.i.i, 5                  ; 11 uses
  %i.la = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %i.bw, i64 noundef %i.ky)
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !366 ; 4 uses
  %i.lc = sub i64 %.sroa.0309.3451.i.i, %1
  %.not144441.i.i = icmp ult i64 %i.lc, %i.kz
  br i1 %.not144441.i.i, label %.preheader374.i.i, label %.lr.ph444.i.i

.lr.ph444.i.i:                                    ; preds = %.lr.ph454.i.i
  %i.ld = sub nsw i64 0, %i.kz
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.lb, i64 %i.ld
  %.not371.i.i = icmp eq i64 %i.kz, 0
  %i.le = ptrtoint ptr %i.lb to i64
  br label %bb.ag

.preheader374.i.i:                                ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i, %.lr.ph454.i.i
  %.3.i = phi i64 [ %.1.i, %.lr.ph454.i.i ], [ %i.mr, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i ] ; 2 uses
  %.sroa.0309.4.lcssa.i.i = phi i64 [ %.sroa.0309.3451.i.i, %.lr.ph454.i.i ], [ %.idx147.i.i, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i ] ; 2 uses
  %i.lf = sub i64 %2, %.sroa.12.4452.i.i
  %.not145446.i.i = icmp ult i64 %i.lf, %i.kz
  br i1 %.not145446.i.i, label %.loopexit375.i.i, label %.lr.ph448.i.i

.lr.ph448.i.i:                                    ; preds = %.preheader374.i.i
  %i.lg = ptrtoint ptr %i.lb to i64
  br label %bb.ap

bb.ag:                                            ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i, %.lr.ph444.i.i
  %.2.i = phi i64 [ %.1.i, %.lr.ph444.i.i ], [ %i.mr, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i ]
  %.sroa.0309.4442.i.i = phi i64 [ %.sroa.0309.3451.i.i, %.lr.ph444.i.i ], [ %.idx147.i.i, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i ] ; 2 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.sroa.0309.4442.i.i ; 2 uses
  br i1 %.not371.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit225.i.i, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i: ; preds = %bb.ag, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i
  %.017.i.i219.i.i = phi i64 [ %.1.i.i224.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i ], [ %i.kz, %bb.ag ] ; 2 uses
  %.01116.i.i220.i.i = phi ptr [ %.112.i.i223.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i ], [ %gep.i.i, %bb.ag ] ; 2 uses
  %i.lh = lshr i64 %.017.i.i219.i.i, 1            ; 3 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i220.i.i, i64 %i.lh ; 2 uses
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !278
  %i.lk = icmp ult i64 %i.lj, %i.bz               ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lm = xor i64 %i.lh, -1
  %i.ln = add nsw i64 %.017.i.i219.i.i, %i.lm
  %.112.i.i223.i.i = select i1 %i.lk, ptr %i.ll, ptr %.01116.i.i220.i.i ; 2 uses
  %.1.i.i224.i.i = select i1 %i.lk, i64 %i.ln, i64 %i.lh ; 2 uses
  %i.lo = icmp sgt i64 %.1.i.i224.i.i, 0
  br i1 %i.lo, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit225.i.i, !llvm.loop !44

_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit225.i.i: ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i, %bb.ag
  %.011.lcssa.i.i216.i.i = phi ptr [ %gep.i.i, %bb.ag ], [ %.112.i.i223.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i ]
  %i.lp = ptrtoint ptr %.011.lcssa.i.i216.i.i to i64
  %i.lq = sub i64 %i.lp, %i.le
  %i.lr = ashr exact i64 %i.lq, 3                 ; 3 uses
  %i.ls = icmp slt i64 %i.lr, 0
  br i1 %i.ls, label %bb.ah, label %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit263.i.i

bb.ah:                                            ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit225.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 %i.lr, ptr %i.ax, align 8, !tbaa !278
  store i64 0, ptr %i.ay, align 8, !tbaa !278
  store i64 -1, ptr %i.az, align 8, !tbaa !278
  %i.lt = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.lu = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.lu, ptr %17, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #29
  store i64 75, ptr %i.aw, align 8, !tbaa !278
  %i.lv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i64 noundef 0)
          to label %.noexc.i.i259.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i256.i.i ; 3 uses

.noexc.i.i259.i.i:                                ; preds = %bb.ah
  store ptr %i.lv, ptr %17, align 8, !tbaa !216
  %i.lw = load i64, ptr %i.aw, align 8, !tbaa !278 ; 3 uses
  store i64 %i.lw, ptr %i.lu, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.lv, ptr noundef nonnull align 1 dereferenceable(75) @.str.22, i64 75, i1 false)
  %i.lx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.lw, ptr %i.lx, align 8, !tbaa !569
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lw
  store i8 0, ptr %i.ly, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlRmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.lt, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc.i.i259.i.i
  invoke void @__cxa_throw(ptr nonnull %i.lt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.ak unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i256.i.i: ; preds = %bb.ah
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %common.resume.sink.split

bb.aj:                                            ; preds = %bb.ai, %.noexc.i.i259.i.i
  %.0.i.i260.i.i = phi i1 [ false, %bb.ai ], [ true, %.noexc.i.i259.i.i ] ; 2 uses
  %i.ma = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mb = load ptr, ptr %17, align 8, !tbaa !216  ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.lu
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i262.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261.i.i: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.mb) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br i1 %.0.i.i260.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i262.i.i: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br i1 %.0.i.i260.i.i, label %common.resume.sink.split, label %common.resume

bb.ak:                                            ; preds = %bb.ai
  unreachable

_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit263.i.i: ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit225.i.i
  %.idx147.i.i = sub i64 %.sroa.0309.4442.i.i, %i.kz ; 4 uses
  %i.md = shl i64 %.idx147.i.i, 3
  %i.me = ashr exact i64 %i.md, 3                 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZNK6duckdb15WindowTokenTree4RankEmmm:bb.a
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %.noexc242.i.i191
  invoke void @__cxa_throw(ptr nonnull %i.xc, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bt unwind label %bb.bs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i181.i.i190: ; preds = %.noexc.i241.i.i189
  %i.xi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %common.resume.sink.split

bb.bs:                                            ; preds = %bb.br, %.noexc242.i.i191
  %.0.i.i.i184.i.i192 = phi i1 [ false, %bb.br ], [ true, %.noexc242.i.i191 ] ; 2 uses
  %i.xj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xk = load ptr, ptr %11, align 8, !tbaa !216  ; 2 uses
  %i.xl = icmp eq ptr %i.xk, %i.xd
  br i1 %i.xl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i186.i.i194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i185.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i185.i.i193: ; preds = %bb.bs
  call void @_ZdlPv(ptr noundef %i.xk) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %.0.i.i.i184.i.i192, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i186.i.i194: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %.0.i.i.i184.i.i192, label %common.resume.sink.split, label %common.resume

bb.bt:                                            ; preds = %bb.br
  unreachable

_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit187.i.i:   ; preds = %.lr.ph437.i.i146, %bb.bq
  %.sroa.12.2434.i.i150685 = phi i64 [ %i.ze, %bb.bq ], [ %.sroa.12.1.i.i108, %.lr.ph437.i.i146 ] ; 2 uses
  %.sroa.13.1435.i.i149684 = phi i64 [ %i.zf, %bb.bq ], [ %.sroa.13.0.i.i110, %.lr.ph437.i.i146 ] ; 3 uses
  %.11.i148683 = phi i64 [ %i.zd, %bb.bq ], [ %.10.i138, %.lr.ph437.i.i146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %.pre511.i.i, i64 %.sroa.13.1435.i.i149684
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !79
  %i.xo = add i64 %.sroa.13.1435.i.i149684, 32    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 %i.xo, ptr %i.ac, align 8, !tbaa !278
  store i64 %i.xb, ptr %i.ad, align 8, !tbaa !278
  %.not.i.i.i188.i.i152 = icmp ult i64 %i.xo, %i.xb
  br i1 %.not.i.i.i188.i.i152, label %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit195.i.i, label %.noexc.i245.i.i153, !prof !279

.noexc.i245.i.i153:                               ; preds = %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit187.i.i
  %i.xp = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.xq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.xq, ptr %10, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #29
  store i64 55, ptr %i.u, align 8, !tbaa !278
  %i.xr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef 0)
          to label %.noexc246.i.i155 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i189.i.i154 ; 3 uses

.noexc246.i.i155:                                 ; preds = %.noexc.i245.i.i153
  store ptr %i.xr, ptr %10, align 8, !tbaa !216
  %i.xs = load i64, ptr %i.u, align 8, !tbaa !278 ; 3 uses
  store i64 %i.xs, ptr %i.xq, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.xr, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.xt = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.xs, ptr %i.xt, align 8, !tbaa !569
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xs
  store i8 0, ptr %i.xu, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.xp, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %.noexc246.i.i155
  invoke void @__cxa_throw(ptr nonnull %i.xp, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bw unwind label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i189.i.i154: ; preds = %.noexc.i245.i.i153
  %i.xv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %common.resume.sink.split

bb.bv:                                            ; preds = %bb.bu, %.noexc246.i.i155
  %.0.i.i.i192.i.i156 = phi i1 [ false, %bb.bu ], [ true, %.noexc246.i.i155 ] ; 2 uses
  %i.xw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xx = load ptr, ptr %10, align 8, !tbaa !216  ; 2 uses
  %i.xy = icmp eq ptr %i.xx, %i.xq
  br i1 %i.xy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i194.i.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i193.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i193.i.i157: ; preds = %bb.bv
  call void @_ZdlPv(ptr noundef %i.xx) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.0.i.i.i192.i.i156, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i194.i.i158: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.0.i.i.i192.i.i156, label %common.resume.sink.split, label %common.resume

bb.bw:                                            ; preds = %bb.bu
  unreachable

_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit195.i.i:   ; preds = %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit187.i.i
  %i.xz = zext i32 %i.xn to i64                   ; 2 uses
  %.idx369.i.i159 = shl nuw nsw i64 %i.xz, 2
  %i.ya = getelementptr inbounds nuw i8, ptr %i.td, i64 %.idx369.i.i159 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %.pre511.i.i, i64 %i.xo
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !79
  %i.yd = zext i32 %i.yc to i64
  %i.ye = sub nsw i64 %i.yd, %i.xz                ; 2 uses
  %i.yf = icmp sgt i64 %i.ye, 0
  br i1 %i.yf, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i, label %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit205.i.i

_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i: ; preds = %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit195.i.i, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i
  %.017.i.i199.i.i183 = phi i64 [ %.1.i.i204.i.i188, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i ], [ %i.ye, %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit195.i.i ] ; 2 uses
  %.01116.i.i200.i.i184 = phi ptr [ %.112.i.i203.i.i187, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i ], [ %i.ya, %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit195.i.i ] ; 2 uses
  %i.yg = lshr i64 %.017.i.i199.i.i183, 1         ; 3 uses
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i200.i.i184, i64 %i.yg ; 2 uses
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !79
  %i.yj = icmp ult i32 %i.yi, %i.re               ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 4
  %i.yl = xor i64 %i.yg, -1
  %i.ym = add nsw i64 %.017.i.i199.i.i183, %i.yl
  %.112.i.i203.i.i187 = select i1 %i.yj, ptr %i.yk, ptr %.01116.i.i200.i.i184 ; 2 uses
  %.1.i.i204.i.i188 = select i1 %i.yj, i64 %i.ym, i64 %i.yg ; 2 uses
  %i.yn = icmp sgt i64 %.1.i.i204.i.i188, 0
  br i1 %i.yn, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i, label %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit205.i.i, !llvm.loop !51

_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit205.i.i: ; preds = %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i, %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit195.i.i
  %.011.lcssa.i.i196.i.i160 = phi ptr [ %i.ya, %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit195.i.i ], [ %.112.i.i203.i.i187, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i ]
  %i.yo = ptrtoint ptr %.011.lcssa.i.i196.i.i160 to i64
  %i.yp = sub i64 %i.yo, %i.wx
  %i.yq = ashr exact i64 %i.yp, 2                 ; 3 uses
  %i.yr = icmp slt i64 %i.yq, 0
  br i1 %i.yr, label %bb.bx, label %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i161

bb.bx:                                            ; preds = %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit205.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 %i.yq, ptr %i.r, align 8, !tbaa !278
  store i64 0, ptr %i.s, align 8, !tbaa !278
  store i64 -1, ptr %i.t, align 8, !tbaa !278
  %i.ys = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.yt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.yt, ptr %8, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #29
  store i64 75, ptr %i.q, align 8, !tbaa !278
  %i.yu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc.i.i251.i.i179 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i248.i.i178 ; 3 uses

.noexc.i.i251.i.i179:                             ; preds = %bb.bx
  store ptr %i.yu, ptr %8, align 8, !tbaa !216
  %i.yv = load i64, ptr %i.q, align 8, !tbaa !278 ; 3 uses
  store i64 %i.yv, ptr %i.yt, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.yu, ptr noundef nonnull align 1 dereferenceable(75) @.str.22, i64 75, i1 false)
  %i.yw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.yv, ptr %i.yw, align 8, !tbaa !569
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 %i.yv
  store i8 0, ptr %i.yx, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlRmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ys, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %.noexc.i.i251.i.i179
  invoke void @__cxa_throw(ptr nonnull %i.ys, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.ca unwind label %bb.bz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i248.i.i178: ; preds = %bb.bx
  %i.yy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %common.resume.sink.split

bb.bz:                                            ; preds = %bb.by, %.noexc.i.i251.i.i179
  %.0.i.i252.i.i180 = phi i1 [ false, %bb.by ], [ true, %.noexc.i.i251.i.i179 ] ; 2 uses
  %i.yz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.za = load ptr, ptr %8, align 8, !tbaa !216   ; 2 uses
  %i.zb = icmp eq ptr %i.za, %i.yt
  br i1 %i.zb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i254.i.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i253.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i253.i.i181: ; preds = %bb.bz
  call void @_ZdlPv(ptr noundef %i.za) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br i1 %.0.i.i252.i.i180, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i254.i.i182: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br i1 %.0.i.i252.i.i180, label %common.resume.sink.split, label %common.resume

bb.ca:                                            ; preds = %bb.by
  unreachable

_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i161: ; preds = %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit205.i.i
  %i.zc = sub i64 %i.yq, %.sroa.12.2434.i.i150685
  %i.zd = add i64 %i.zc, %.11.i148683             ; 2 uses
  %i.ze = add i64 %.sroa.12.2434.i.i150685, %i.tb ; 3 uses
  %i.zf = add nuw i64 %.sroa.13.1435.i.i149684, 1 ; 4 uses
  %i.zg = sub i64 %2, %i.ze
  %.not137.i.i162 = icmp ult i64 %i.zg, %i.tb
  br i1 %.not137.i.i162, label %._crit_edge438.i.i163, label %bb.bq, !llvm.loop !1425

._crit_edge438.i.i163:                            ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i161, %bb.bp
  %.12.i164 = phi i64 [ %.10.i138, %bb.bp ], [ %i.zd, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i161 ] ; 2 uses
  %.sroa.12.2.lcssa.i.i165 = phi i64 [ %.sroa.12.1.i.i108, %bb.bp ], [ %i.ze, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i161 ] ; 3 uses
  %.sroa.13.1.lcssa.i.i166 = phi i64 [ %.sroa.13.0.i.i110, %bb.bp ], [ %i.zf, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i161 ] ; 3 uses
  %.not138.i.i167 = icmp eq i64 %.sroa.12.2.lcssa.i.i165, %2
  br i1 %.not138.i.i167, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge438.i.i163
  %i.zh = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK6duckdb6vectorIjLb1ESaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.tf, i64 noundef %.sroa.13.1.lcssa.i.i166)
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !79
  %i.zj = zext i32 %i.zi to i64                   ; 2 uses
  %.idx370.i.i168 = shl nuw nsw i64 %i.zj, 2
  %i.zk = getelementptr inbounds nuw i8, ptr %i.td, i64 %.idx370.i.i168 ; 2 uses
  %i.zl = add i64 %.sroa.13.1.lcssa.i.i166, 32
  %i.zm = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK6duckdb6vectorIjLb1ESaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.tf, i64 noundef %i.zl)
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !79
  %i.zo = zext i32 %i.zn to i64
  %i.zp = sub nsw i64 %i.zo, %i.zj                ; 2 uses
  %i.zq = icmp sgt i64 %i.zp, 0
  br i1 %i.zq, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i, label %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit215.i.i

_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i: ; preds = %bb.cb, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i
  %.017.i.i209.i.i172 = phi i64 [ %.1.i.i214.i.i177, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i ], [ %i.zp, %bb.cb ] ; 2 uses
  %.01116.i.i210.i.i173 = phi ptr [ %.112.i.i213.i.i176, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i ], [ %i.zk, %bb.cb ] ; 2 uses
  %i.zr = lshr i64 %.017.i.i209.i.i172, 1         ; 3 uses
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i210.i.i173, i64 %i.zr ; 2 uses
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !79
  %i.zu = icmp ult i32 %i.zt, %i.re               ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  %i.zw = xor i64 %i.zr, -1
  %i.zx = add nsw i64 %.017.i.i209.i.i172, %i.zw
  %.112.i.i213.i.i176 = select i1 %i.zu, ptr %i.zv, ptr %.01116.i.i210.i.i173 ; 2 uses
  %.1.i.i214.i.i177 = select i1 %i.zu, i64 %i.zx, i64 %i.zr ; 2 uses
  %i.zy = icmp sgt i64 %.1.i.i214.i.i177, 0
  br i1 %i.zy, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i, label %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit215.i.i, !llvm.loop !51

_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit215.i.i: ; preds = %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i, %bb.cb
  %.011.lcssa.i.i206.i.i169 = phi ptr [ %i.zk, %bb.cb ], [ %.112.i.i213.i.i176, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i ]
  %i.zz = ptrtoint ptr %.011.lcssa.i.i206.i.i169 to i64
  %i.aaa = ptrtoint ptr %i.td to i64
  %i.aab = sub i64 %i.zz, %i.aaa
  %i.aac = ashr exact i64 %i.aab, 2
  %i.aad = tail call noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.aac)
  %i.aae = and i64 %i.aad, -32
  %i.aaf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.tb, i1 true)
  %i.aag = lshr i64 %2, %i.aaf
  %i.aah = shl i64 %i.aag, 6
  %i.aai = add i64 %i.aae, %i.aah
  br label %bb.cc

bb.cc:                                            ; preds = %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit215.i.i, %._crit_edge438.i.i163
  %.sroa.13.2.i.i170 = phi i64 [ %.sroa.13.1.lcssa.i.i166, %._crit_edge438.i.i163 ], [ %i.aai, %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit215.i.i ]
  %.not139.i.i171 = icmp ult i64 %.2117.i.i111, 3
  br i1 %.not139.i.i171, label %.loopexit377.i.i15, label %bb.bc, !llvm.loop !1426

.loopexit377.i.i15:                               ; preds = %bb.cc, %bb.ba
  %.0.i16 = phi i64 [ 1, %bb.ba ], [ %.12.i164, %bb.cc ] ; 2 uses
  %.sroa.0309.2.i.i17 = phi i64 [ %i.ro, %bb.ba ], [ %.sroa.0309.1.lcssa.i.i139, %bb.cc ] ; 2 uses
  %.sroa.12.3.i.i18 = phi i64 [ %i.ro, %bb.ba ], [ %.sroa.12.2.lcssa.i.i165, %bb.cc ] ; 2 uses
  %.3118.i.i19 = phi i64 [ %i.rm, %bb.ba ], [ %i.ta, %bb.cc ] ; 2 uses
  %.3.i.i20 = phi i64 [ %i.rl, %bb.ba ], [ %i.tb, %bb.cc ]
  %or.cond.i.i21 = icmp ult i64 %.3118.i.i19, 2
  br i1 %or.cond.i.i21, label %.thread360.i.i66, label %.lr.ph454.preheader.i.i22

.lr.ph454.preheader.i.i22:                        ; preds = %.loopexit377.i.i15
  %i.aaj = add nsw i64 %.3118.i.i19, -1
  br label %.lr.ph454.i.i23

.loopexit375.i.i62:                               ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit287.i.i60, %.preheader374.i.i46
  %.5.i63 = phi i64 [ %.3.i47, %.preheader374.i.i46 ], [ %i.adp, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit287.i.i60 ] ; 2 uses
  %.sroa.12.5.lcssa.i.i64 = phi i64 [ %.sroa.12.4452.i.i26, %.preheader374.i.i46 ], [ %i.adq, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit287.i.i60 ] ; 2 uses
  %i.aak = add i64 %i.aal, -1                     ; 2 uses
  %.not141.i.i65 = icmp eq i64 %i.aak, 0
  br i1 %.not141.i.i65, label %.thread360.i.i66, label %.lr.ph454.i.i23, !llvm.loop !1427

.lr.ph454.i.i23:                                  ; preds = %.loopexit375.i.i62, %.lr.ph454.preheader.i.i22
  %.1.i24 = phi i64 [ %.0.i16, %.lr.ph454.preheader.i.i22 ], [ %.5.i63, %.loopexit375.i.i62 ] ; 2 uses
  %i.aal = phi i64 [ %i.aaj, %.lr.ph454.preheader.i.i22 ], [ %i.aak, %.loopexit375.i.i62 ] ; 2 uses
  %.4453.i.i25 = phi i64 [ %.3.i.i20, %.lr.ph454.preheader.i.i22 ], [ %i.aam, %.loopexit375.i.i62 ]
  %.sroa.12.4452.i.i26 = phi i64 [ %.sroa.12.3.i.i18, %.lr.ph454.preheader.i.i22 ], [ %.sroa.12.5.lcssa.i.i64, %.loopexit375.i.i62 ] ; 3 uses
  %.sroa.0309.3451.i.i27 = phi i64 [ %.sroa.0309.2.i.i17, %.lr.ph454.preheader.i.i22 ], [ %.sroa.0309.4.lcssa.i.i48, %.loopexit375.i.i62 ] ; 3 uses
  %i.aam = lshr i64 %.4453.i.i25, 5               ; 11 uses
  %i.aan = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_IjLb1ESaIjEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %i.rb, i64 noundef %i.aal)
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !727 ; 4 uses
  %i.aap = sub i64 %.sroa.0309.3451.i.i27, %1
  %.not144441.i.i28 = icmp ult i64 %i.aap, %i.aam
  br i1 %.not144441.i.i28, label %.preheader374.i.i46, label %.lr.ph444.i.i29

.lr.ph444.i.i29:                                  ; preds = %.lr.ph454.i.i23
  %i.aaq = sub nsw i64 0, %i.aam
  %invariant.gep.i.i30 = getelementptr [4 x i8], ptr %i.aao, i64 %i.aaq
  %.not371.i.i31 = icmp eq i64 %i.aam, 0
  %i.aar = ptrtoint ptr %i.aao to i64
  br label %bb.cd

.preheader374.i.i46:                              ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i44, %.lr.ph454.i.i23
  %.3.i47 = phi i64 [ %.1.i24, %.lr.ph454.i.i23 ], [ %i.ace, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i44 ] ; 2 uses
  %.sroa.0309.4.lcssa.i.i48 = phi i64 [ %.sroa.0309.3451.i.i27, %.lr.ph454.i.i23 ], [ %.idx147.i.i43, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i44 ] ; 2 uses
  %i.aas = sub i64 %2, %.sroa.12.4452.i.i26
  %.not145446.i.i49 = icmp ult i64 %i.aas, %i.aam
  br i1 %.not145446.i.i49, label %.loopexit375.i.i62, label %.lr.ph448.i.i50

.lr.ph448.i.i50:                                  ; preds = %.preheader374.i.i46
  %i.aat = ptrtoint ptr %i.aao to i64
  br label %bb.cm

bb.cd:                                            ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i44, %.lr.ph444.i.i29
  %.2.i32 = phi i64 [ %.1.i24, %.lr.ph444.i.i29 ], [ %i.ace, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i44 ]
  %.sroa.0309.4442.i.i33 = phi i64 [ %.sroa.0309.3451.i.i27, %.lr.ph444.i.i29 ], [ %.idx147.i.i43, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i44 ] ; 2 uses
  %gep.i.i34 = getelementptr [4 x i8], ptr %invariant.gep.i.i30, i64 %.sroa.0309.4442.i.i33 ; 2 uses
  br i1 %.not371.i.i31, label %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit225.i.i, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i

_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i: ; preds = %bb.cd, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i
  %.017.i.i219.i.i35 = phi i64 [ %.1.i.i224.i.i40, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i ], [ %i.aam, %bb.cd ] ; 2 uses
  %.01116.i.i220.i.i36 = phi ptr [ %.112.i.i223.i.i39, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i ], [ %gep.i.i34, %bb.cd ] ; 2 uses
  %i.aau = lshr i64 %.017.i.i219.i.i35, 1         ; 3 uses
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i220.i.i36, i64 %i.aau ; 2 uses
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !79
  %i.aax = icmp ult i32 %i.aaw, %i.re             ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aav, i64 4
  %i.aaz = xor i64 %i.aau, -1
  %i.aba = add nsw i64 %.017.i.i219.i.i35, %i.aaz
  %.112.i.i223.i.i39 = select i1 %i.aax, ptr %i.aay, ptr %.01116.i.i220.i.i36 ; 2 uses
  %.1.i.i224.i.i40 = select i1 %i.aax, i64 %i.aba, i64 %i.aau ; 2 uses
  %i.abb = icmp sgt i64 %.1.i.i224.i.i40, 0
  br i1 %i.abb, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i, label %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit225.i.i, !llvm.loop !51

_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit225.i.i: ; preds = %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i, %bb.cd
  %.011.lcssa.i.i216.i.i41 = phi ptr [ %gep.i.i34, %bb.cd ], [ %.112.i.i223.i.i39, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i ]
  %i.abc = ptrtoint ptr %.011.lcssa.i.i216.i.i41 to i64
  %i.abd = sub i64 %i.abc, %i.aar
  %i.abe = ashr exact i64 %i.abd, 2               ; 3 uses
  %i.abf = icmp slt i64 %i.abe, 0
  br i1 %i.abf, label %bb.ce, label %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit263.i.i42

bb.ce:                                            ; preds = %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit225.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %i.abe, ptr %i.n, align 8, !tbaa !278
  store i64 0, ptr %i.o, align 8, !tbaa !278
  store i64 -1, ptr %i.p, align 8, !tbaa !278
  %i.abg = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.abh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.abh, ptr %7, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #29
  store i64 75, ptr %i.m, align 8, !tbaa !278
  %i.abi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc.i.i259.i.i98 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i256.i.i97 ; 3 uses

.noexc.i.i259.i.i98:                              ; preds = %bb.ce
  store ptr %i.abi, ptr %7, align 8, !tbaa !216
  %i.abj = load i64, ptr %i.m, align 8, !tbaa !278 ; 3 uses
  store i64 %i.abj, ptr %i.abh, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.abi, ptr noundef nonnull align 1 dereferenceable(75) @.str.22, i64 75, i1 false)
  %i.abk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.abj, ptr %i.abk, align 8, !tbaa !569
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.abj
  store i8 0, ptr %i.abl, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlRmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.abg, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %.noexc.i.i259.i.i98
  invoke void @__cxa_throw(ptr nonnull %i.abg, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.ch unwind label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i256.i.i97: ; preds = %bb.ce
  %i.abm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %common.resume.sink.split

bb.cg:                                            ; preds = %bb.cf, %.noexc.i.i259.i.i98
  %.0.i.i260.i.i99 = phi i1 [ false, %bb.cf ], [ true, %.noexc.i.i259.i.i98 ] ; 2 uses
  %i.abn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.abo = load ptr, ptr %7, align 8, !tbaa !216  ; 2 uses
  %i.abp = icmp eq ptr %i.abo, %i.abh
  br i1 %i.abp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i262.i.i101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261.i.i100: ; preds = %bb.cg
  call void @_ZdlPv(ptr noundef %i.abo) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br i1 %.0.i.i260.i.i99, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i262.i.i101: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br i1 %.0.i.i260.i.i99, label %common.resume.sink.split, label %common.resume

bb.ch:                                            ; preds = %bb.cf
  unreachable

_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit263.i.i42: ; preds = %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit225.i.i
  %.idx147.i.i43 = sub i64 %.sroa.0309.4442.i.i33, %i.aam ; 4 uses
end_hunk_5
begin_hunk_6_@_ZNK6duckdb15WindowTokenTree7PeerEndEmmm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc242.i.i
  invoke void @__cxa_throw(ptr nonnull %i.hu, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.w unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i181.i.i: ; preds = %.noexc.i241.i.i
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %common.resume.sink.split

bb.v:                                             ; preds = %bb.u, %.noexc242.i.i
  %.0.i.i.i184.i.i = phi i1 [ false, %bb.u ], [ true, %.noexc242.i.i ] ; 2 uses
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ic = load ptr, ptr %21, align 8, !tbaa !216  ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.hv
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i186.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i185.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i185.i.i: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.ic) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br i1 %.0.i.i.i184.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i186.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br i1 %.0.i.i.i184.i.i, label %common.resume.sink.split, label %common.resume

bb.w:                                             ; preds = %bb.u
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit187.i.i:   ; preds = %.lr.ph437.i.i, %bb.t
  %.sroa.12.2434.i.i682 = phi i64 [ %i.ju, %bb.t ], [ %.sroa.12.1.i.i, %.lr.ph437.i.i ] ; 2 uses
  %.sroa.13.1435.i.i681 = phi i64 [ %i.jv, %bb.t ], [ %.sroa.13.0.i.i, %.lr.ph437.i.i ] ; 3 uses
  %.11.i680 = phi i64 [ %i.jt, %bb.t ], [ %.10.i, %.lr.ph437.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.pre507.i.i, i64 %.sroa.13.1435.i.i681
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !278 ; 2 uses
  %i.ig = add i64 %.sroa.13.1435.i.i681, 32       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  store i64 %i.ig, ptr %i.bm, align 8, !tbaa !278
  store i64 %i.ht, ptr %i.bn, align 8, !tbaa !278
  %.not.i.i.i188.i.i = icmp ult i64 %i.ig, %i.ht
  br i1 %.not.i.i.i188.i.i, label %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit195.i.i, label %.noexc.i245.i.i, !prof !279

.noexc.i245.i.i:                                  ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit187.i.i
  %i.ih = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.ii = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store ptr %i.ii, ptr %20, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #29
  store i64 55, ptr %i.be, align 8, !tbaa !278
  %i.ij = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.be, i64 noundef 0)
          to label %.noexc246.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i189.i.i ; 3 uses

.noexc246.i.i:                                    ; preds = %.noexc.i245.i.i
  store ptr %i.ij, ptr %20, align 8, !tbaa !216
  %i.ik = load i64, ptr %i.be, align 8, !tbaa !278 ; 3 uses
  store i64 %i.ik, ptr %i.ii, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ij, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.ik, ptr %i.il, align 8, !tbaa !569
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ik
  store i8 0, ptr %i.im, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.noexc246.i.i
  invoke void @__cxa_throw(ptr nonnull %i.ih, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.z unwind label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i189.i.i: ; preds = %.noexc.i245.i.i
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %common.resume.sink.split

bb.y:                                             ; preds = %bb.x, %.noexc246.i.i
  %.0.i.i.i192.i.i = phi i1 [ false, %bb.x ], [ true, %.noexc246.i.i ] ; 2 uses
  %i.io = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ip = load ptr, ptr %20, align 8, !tbaa !216  ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.ii
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i194.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i193.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i193.i.i: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.ip) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br i1 %.0.i.i.i192.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i194.i.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br i1 %.0.i.i.i192.i.i, label %common.resume.sink.split, label %common.resume

bb.z:                                             ; preds = %bb.x
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit195.i.i:   ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit187.i.i
  %.idx369.i.i = shl nuw nsw i64 %i.if, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx369.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.pre507.i.i, i64 %i.ig
  %i.it = load i64, ptr %i.is, align 8, !tbaa !278
  %i.iu = sub nsw i64 %i.it, %i.if                ; 2 uses
  %i.iv = icmp sgt i64 %i.iu, 0
  br i1 %i.iv, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit205.i.i

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i: ; preds = %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit195.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i
  %.017.i.i199.i.i = phi i64 [ %.1.i.i204.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i ], [ %i.iu, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit195.i.i ] ; 2 uses
  %.01116.i.i200.i.i = phi ptr [ %.112.i.i203.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i ], [ %i.ir, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit195.i.i ] ; 2 uses
  %i.iw = lshr i64 %.017.i.i199.i.i, 1            ; 3 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i200.i.i, i64 %i.iw ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !278
  %i.iz = icmp ult i64 %i.iy, %i.ca               ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jb = xor i64 %i.iw, -1
  %i.jc = add nsw i64 %.017.i.i199.i.i, %i.jb
  %.112.i.i203.i.i = select i1 %i.iz, ptr %i.ja, ptr %.01116.i.i200.i.i ; 2 uses
  %.1.i.i204.i.i = select i1 %i.iz, i64 %i.jc, i64 %i.iw ; 2 uses
  %i.jd = icmp sgt i64 %.1.i.i204.i.i, 0
  br i1 %i.jd, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit205.i.i, !llvm.loop !44

_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit205.i.i: ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit195.i.i
  %.011.lcssa.i.i196.i.i = phi ptr [ %i.ir, %_ZNK6duckdb6vectorImLb1ESaImEEixEm.exit195.i.i ], [ %.112.i.i203.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i ]
  %i.je = ptrtoint ptr %.011.lcssa.i.i196.i.i to i64
  %i.jf = sub i64 %i.je, %i.hp
  %i.jg = ashr exact i64 %i.jf, 3                 ; 3 uses
  %i.jh = icmp slt i64 %i.jg, 0
  br i1 %i.jh, label %bb.aa, label %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i

bb.aa:                                            ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit205.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i64 %i.jg, ptr %i.bb, align 8, !tbaa !278
  store i64 0, ptr %i.bc, align 8, !tbaa !278
  store i64 -1, ptr %i.bd, align 8, !tbaa !278
  %i.ji = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.jj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.jj, ptr %18, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #29
  store i64 75, ptr %i.ba, align 8, !tbaa !278
  %i.jk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i64 noundef 0)
          to label %.noexc.i.i251.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i248.i.i ; 3 uses

.noexc.i.i251.i.i:                                ; preds = %bb.aa
  store ptr %i.jk, ptr %18, align 8, !tbaa !216
  %i.jl = load i64, ptr %i.ba, align 8, !tbaa !278 ; 3 uses
  store i64 %i.jl, ptr %i.jj, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.jk, ptr noundef nonnull align 1 dereferenceable(75) @.str.22, i64 75, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.jl, ptr %i.jm, align 8, !tbaa !569
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jl
  store i8 0, ptr %i.jn, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlRmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %.noexc.i.i251.i.i
  invoke void @__cxa_throw(ptr nonnull %i.ji, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.ad unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i248.i.i: ; preds = %bb.aa
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %common.resume.sink.split

bb.ac:                                            ; preds = %bb.ab, %.noexc.i.i251.i.i
  %.0.i.i252.i.i = phi i1 [ false, %bb.ab ], [ true, %.noexc.i.i251.i.i ] ; 2 uses
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jq = load ptr, ptr %18, align 8, !tbaa !216  ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.jj
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i254.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i253.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i253.i.i: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.jq) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br i1 %.0.i.i252.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i254.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br i1 %.0.i.i252.i.i, label %common.resume.sink.split, label %common.resume

bb.ad:                                            ; preds = %bb.ab
  unreachable

_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i: ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit205.i.i
  %i.js = sub i64 %i.jg, %.sroa.12.2434.i.i682
  %i.jt = add i64 %i.js, %.11.i680                ; 2 uses
  %i.ju = add i64 %.sroa.12.2434.i.i682, %i.dx    ; 3 uses
  %i.jv = add nuw i64 %.sroa.13.1435.i.i681, 1    ; 4 uses
  %i.jw = sub i64 %2, %i.ju
  %.not137.i.i = icmp ult i64 %i.jw, %i.dx
  br i1 %.not137.i.i, label %._crit_edge438.i.i, label %bb.t, !llvm.loop !1449

._crit_edge438.i.i:                               ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i, %bb.s
  %.12.i = phi i64 [ %.10.i, %bb.s ], [ %i.jt, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i ] ; 2 uses
  %.sroa.12.2.lcssa.i.i = phi i64 [ %.sroa.12.1.i.i, %bb.s ], [ %i.ju, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i ] ; 3 uses
  %.sroa.13.1.lcssa.i.i = phi i64 [ %.sroa.13.0.i.i, %bb.s ], [ %i.jv, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i ] ; 3 uses
  %.not138.i.i = icmp eq i64 %.sroa.12.2.lcssa.i.i, %2
  br i1 %.not138.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge438.i.i
  %i.jx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 noundef %.sroa.13.1.lcssa.i.i)
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !278 ; 2 uses
  %.idx370.i.i = shl nuw nsw i64 %i.jy, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx370.i.i ; 2 uses
  %i.ka = add i64 %.sroa.13.1.lcssa.i.i, 32
  %i.kb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 noundef %i.ka)
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !278
  %i.kd = sub nsw i64 %i.kc, %i.jy                ; 2 uses
  %i.ke = icmp sgt i64 %i.kd, 0
  br i1 %i.ke, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit215.i.i

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i: ; preds = %bb.ae, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i
  %.017.i.i209.i.i = phi i64 [ %.1.i.i214.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i ], [ %i.kd, %bb.ae ] ; 2 uses
  %.01116.i.i210.i.i = phi ptr [ %.112.i.i213.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i ], [ %i.jz, %bb.ae ] ; 2 uses
  %i.kf = lshr i64 %.017.i.i209.i.i, 1            ; 3 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i210.i.i, i64 %i.kf ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !278
  %i.ki = icmp ult i64 %i.kh, %i.ca               ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.kk = xor i64 %i.kf, -1
  %i.kl = add nsw i64 %.017.i.i209.i.i, %i.kk
  %.112.i.i213.i.i = select i1 %i.ki, ptr %i.kj, ptr %.01116.i.i210.i.i ; 2 uses
  %.1.i.i214.i.i = select i1 %i.ki, i64 %i.kl, i64 %i.kf ; 2 uses
  %i.km = icmp sgt i64 %.1.i.i214.i.i, 0
  br i1 %i.km, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit215.i.i, !llvm.loop !44

_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit215.i.i: ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i, %bb.ae
  %.011.lcssa.i.i206.i.i = phi ptr [ %i.jz, %bb.ae ], [ %.112.i.i213.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i ]
  %i.kn = ptrtoint ptr %.011.lcssa.i.i206.i.i to i64
  %i.ko = ptrtoint ptr %i.dz to i64
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = ashr exact i64 %i.kp, 3
  %i.kr = tail call noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.kq)
  %i.ks = and i64 %i.kr, -32
  %i.kt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dx, i1 true)
  %i.ku = lshr i64 %2, %i.kt
  %i.kv = shl i64 %i.ku, 6
  %i.kw = add i64 %i.ks, %i.kv
  br label %bb.af

bb.af:                                            ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit215.i.i, %._crit_edge438.i.i
  %.sroa.13.2.i.i = phi i64 [ %.sroa.13.1.lcssa.i.i, %._crit_edge438.i.i ], [ %i.kw, %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit215.i.i ]
  %.not139.i.i = icmp ult i64 %.2117.i.i, 3
  br i1 %.not139.i.i, label %.loopexit377.i.i, label %bb.f, !llvm.loop !1450

.loopexit377.i.i:                                 ; preds = %bb.af, %bb.d
  %.0.i = phi i64 [ %1, %bb.d ], [ %.12.i, %bb.af ] ; 2 uses
  %.sroa.0309.2.i.i = phi i64 [ %i.ck, %bb.d ], [ %.sroa.0309.1.lcssa.i.i, %bb.af ] ; 2 uses
  %.sroa.12.3.i.i = phi i64 [ %i.ck, %bb.d ], [ %.sroa.12.2.lcssa.i.i, %bb.af ] ; 2 uses
  %.3118.i.i = phi i64 [ %i.ci, %bb.d ], [ %i.dw, %bb.af ] ; 2 uses
  %.3.i.i = phi i64 [ %i.ch, %bb.d ], [ %i.dx, %bb.af ]
  %or.cond.i.i = icmp ult i64 %.3118.i.i, 2
  br i1 %or.cond.i.i, label %.thread360.i.i, label %.lr.ph454.preheader.i.i

.lr.ph454.preheader.i.i:                          ; preds = %.loopexit377.i.i
  %i.kx = add nsw i64 %.3118.i.i, -1
  br label %.lr.ph454.i.i

.loopexit375.i.i:                                 ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit287.i.i, %.preheader374.i.i
  %.5.i = phi i64 [ %.3.i, %.preheader374.i.i ], [ %i.od, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit287.i.i ] ; 2 uses
  %.sroa.12.5.lcssa.i.i = phi i64 [ %.sroa.12.4452.i.i, %.preheader374.i.i ], [ %i.oe, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit287.i.i ] ; 2 uses
  %i.ky = add i64 %i.kz, -1                       ; 2 uses
  %.not141.i.i = icmp eq i64 %i.ky, 0
  br i1 %.not141.i.i, label %.thread360.i.i, label %.lr.ph454.i.i, !llvm.loop !1451

.lr.ph454.i.i:                                    ; preds = %.loopexit375.i.i, %.lr.ph454.preheader.i.i
  %.1.i = phi i64 [ %.0.i, %.lr.ph454.preheader.i.i ], [ %.5.i, %.loopexit375.i.i ] ; 2 uses
  %i.kz = phi i64 [ %i.kx, %.lr.ph454.preheader.i.i ], [ %i.ky, %.loopexit375.i.i ] ; 2 uses
  %.4453.i.i = phi i64 [ %.3.i.i, %.lr.ph454.preheader.i.i ], [ %i.la, %.loopexit375.i.i ]
  %.sroa.12.4452.i.i = phi i64 [ %.sroa.12.3.i.i, %.lr.ph454.preheader.i.i ], [ %.sroa.12.5.lcssa.i.i, %.loopexit375.i.i ] ; 3 uses
  %.sroa.0309.3451.i.i = phi i64 [ %.sroa.0309.2.i.i, %.lr.ph454.preheader.i.i ], [ %.sroa.0309.4.lcssa.i.i, %.loopexit375.i.i ] ; 3 uses
  %i.la = lshr i64 %.4453.i.i, 5                  ; 11 uses
  %i.lb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %i.bw, i64 noundef %i.kz)
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !366 ; 4 uses
  %i.ld = sub i64 %.sroa.0309.3451.i.i, %1
  %.not144441.i.i = icmp ult i64 %i.ld, %i.la
  br i1 %.not144441.i.i, label %.preheader374.i.i, label %.lr.ph444.i.i

.lr.ph444.i.i:                                    ; preds = %.lr.ph454.i.i
  %i.le = sub nsw i64 0, %i.la
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.lc, i64 %i.le
  %.not371.i.i = icmp eq i64 %i.la, 0
  %i.lf = ptrtoint ptr %i.lc to i64
  br label %bb.ag

.preheader374.i.i:                                ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i, %.lr.ph454.i.i
  %.3.i = phi i64 [ %.1.i, %.lr.ph454.i.i ], [ %i.ms, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i ] ; 2 uses
  %.sroa.0309.4.lcssa.i.i = phi i64 [ %.sroa.0309.3451.i.i, %.lr.ph454.i.i ], [ %.idx147.i.i, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i ] ; 2 uses
  %i.lg = sub i64 %2, %.sroa.12.4452.i.i
  %.not145446.i.i = icmp ult i64 %i.lg, %i.la
  br i1 %.not145446.i.i, label %.loopexit375.i.i, label %.lr.ph448.i.i

.lr.ph448.i.i:                                    ; preds = %.preheader374.i.i
  %i.lh = ptrtoint ptr %i.lc to i64
  br label %bb.ap

bb.ag:                                            ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i, %.lr.ph444.i.i
  %.2.i = phi i64 [ %.1.i, %.lr.ph444.i.i ], [ %i.ms, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i ]
  %.sroa.0309.4442.i.i = phi i64 [ %.sroa.0309.3451.i.i, %.lr.ph444.i.i ], [ %.idx147.i.i, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i ] ; 2 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.sroa.0309.4442.i.i ; 2 uses
  br i1 %.not371.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit225.i.i, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i

_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i: ; preds = %bb.ag, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i
  %.017.i.i219.i.i = phi i64 [ %.1.i.i224.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i ], [ %i.la, %bb.ag ] ; 2 uses
  %.01116.i.i220.i.i = phi ptr [ %.112.i.i223.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i ], [ %gep.i.i, %bb.ag ] ; 2 uses
  %i.li = lshr i64 %.017.i.i219.i.i, 1            ; 3 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i220.i.i, i64 %i.li ; 2 uses
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !278
  %i.ll = icmp ult i64 %i.lk, %i.ca               ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ln = xor i64 %i.li, -1
  %i.lo = add nsw i64 %.017.i.i219.i.i, %i.ln
  %.112.i.i223.i.i = select i1 %i.ll, ptr %i.lm, ptr %.01116.i.i220.i.i ; 2 uses
  %.1.i.i224.i.i = select i1 %i.ll, i64 %i.lo, i64 %i.li ; 2 uses
  %i.lp = icmp sgt i64 %.1.i.i224.i.i, 0
  br i1 %i.lp, label %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i, label %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit225.i.i, !llvm.loop !44

_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit225.i.i: ; preds = %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i, %bb.ag
  %.011.lcssa.i.i216.i.i = phi ptr [ %gep.i.i, %bb.ag ], [ %.112.i.i223.i.i, %_ZSt9__advanceIPKmlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i ]
  %i.lq = ptrtoint ptr %.011.lcssa.i.i216.i.i to i64
  %i.lr = sub i64 %i.lq, %i.lf
  %i.ls = ashr exact i64 %i.lr, 3                 ; 3 uses
  %i.lt = icmp slt i64 %i.ls, 0
  br i1 %i.lt, label %bb.ah, label %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit263.i.i

bb.ah:                                            ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit225.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 %i.ls, ptr %i.ax, align 8, !tbaa !278
  store i64 0, ptr %i.ay, align 8, !tbaa !278
  store i64 -1, ptr %i.az, align 8, !tbaa !278
  %i.lu = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.lv = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.lv, ptr %17, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #29
  store i64 75, ptr %i.aw, align 8, !tbaa !278
  %i.lw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i64 noundef 0)
          to label %.noexc.i.i259.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i256.i.i ; 3 uses

.noexc.i.i259.i.i:                                ; preds = %bb.ah
  store ptr %i.lw, ptr %17, align 8, !tbaa !216
  %i.lx = load i64, ptr %i.aw, align 8, !tbaa !278 ; 3 uses
  store i64 %i.lx, ptr %i.lv, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.lw, ptr noundef nonnull align 1 dereferenceable(75) @.str.22, i64 75, i1 false)
  %i.ly = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.lx, ptr %i.ly, align 8, !tbaa !569
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lx
  store i8 0, ptr %i.lz, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlRmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.lu, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc.i.i259.i.i
  invoke void @__cxa_throw(ptr nonnull %i.lu, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.ak unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i256.i.i: ; preds = %bb.ah
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %common.resume.sink.split

bb.aj:                                            ; preds = %bb.ai, %.noexc.i.i259.i.i
  %.0.i.i260.i.i = phi i1 [ false, %bb.ai ], [ true, %.noexc.i.i259.i.i ] ; 2 uses
  %i.mb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mc = load ptr, ptr %17, align 8, !tbaa !216  ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.lv
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i262.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261.i.i: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.mc) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br i1 %.0.i.i260.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i262.i.i: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br i1 %.0.i.i260.i.i, label %common.resume.sink.split, label %common.resume

bb.ak:                                            ; preds = %bb.ai
  unreachable

_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit263.i.i: ; preds = %_ZSt11lower_boundIPKmmSt4lessImEET_S4_S4_RKT0_T1_.exit225.i.i
  %.idx147.i.i = sub i64 %.sroa.0309.4442.i.i, %i.la ; 4 uses
  %i.me = shl i64 %.idx147.i.i, 3
  %i.mf = ashr exact i64 %i.me, 3                 ; 3 uses
end_hunk_6
begin_hunk_7_@_ZNK6duckdb15WindowTokenTree7PeerEndEmmm:bb.a
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %.noexc242.i.i191
  invoke void @__cxa_throw(ptr nonnull %i.xe, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bt unwind label %bb.bs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i181.i.i190: ; preds = %.noexc.i241.i.i189
  %i.xk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %common.resume.sink.split

bb.bs:                                            ; preds = %bb.br, %.noexc242.i.i191
  %.0.i.i.i184.i.i192 = phi i1 [ false, %bb.br ], [ true, %.noexc242.i.i191 ] ; 2 uses
  %i.xl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xm = load ptr, ptr %11, align 8, !tbaa !216  ; 2 uses
  %i.xn = icmp eq ptr %i.xm, %i.xf
  br i1 %i.xn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i186.i.i194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i185.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i185.i.i193: ; preds = %bb.bs
  call void @_ZdlPv(ptr noundef %i.xm) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %.0.i.i.i184.i.i192, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i186.i.i194: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %.0.i.i.i184.i.i192, label %common.resume.sink.split, label %common.resume

bb.bt:                                            ; preds = %bb.br
  unreachable

_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit187.i.i:   ; preds = %.lr.ph437.i.i146, %bb.bq
  %.sroa.12.2434.i.i150686 = phi i64 [ %i.zg, %bb.bq ], [ %.sroa.12.1.i.i108, %.lr.ph437.i.i146 ] ; 2 uses
  %.sroa.13.1435.i.i149685 = phi i64 [ %i.zh, %bb.bq ], [ %.sroa.13.0.i.i110, %.lr.ph437.i.i146 ] ; 3 uses
  %.11.i148684 = phi i64 [ %i.zf, %bb.bq ], [ %.10.i138, %.lr.ph437.i.i146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %.pre511.i.i, i64 %.sroa.13.1435.i.i149685
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !79
  %i.xq = add i64 %.sroa.13.1435.i.i149685, 32    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 %i.xq, ptr %i.ac, align 8, !tbaa !278
  store i64 %i.xd, ptr %i.ad, align 8, !tbaa !278
  %.not.i.i.i188.i.i152 = icmp ult i64 %i.xq, %i.xd
  br i1 %.not.i.i.i188.i.i152, label %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit195.i.i, label %.noexc.i245.i.i153, !prof !279

.noexc.i245.i.i153:                               ; preds = %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit187.i.i
  %i.xr = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.xs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.xs, ptr %10, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #29
  store i64 55, ptr %i.u, align 8, !tbaa !278
  %i.xt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef 0)
          to label %.noexc246.i.i155 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i189.i.i154 ; 3 uses

.noexc246.i.i155:                                 ; preds = %.noexc.i245.i.i153
  store ptr %i.xt, ptr %10, align 8, !tbaa !216
  %i.xu = load i64, ptr %i.u, align 8, !tbaa !278 ; 3 uses
  store i64 %i.xu, ptr %i.xs, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.xt, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.xv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.xu, ptr %i.xv, align 8, !tbaa !569
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.xu
  store i8 0, ptr %i.xw, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.xr, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %.noexc246.i.i155
  invoke void @__cxa_throw(ptr nonnull %i.xr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bw unwind label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i189.i.i154: ; preds = %.noexc.i245.i.i153
  %i.xx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %common.resume.sink.split

bb.bv:                                            ; preds = %bb.bu, %.noexc246.i.i155
  %.0.i.i.i192.i.i156 = phi i1 [ false, %bb.bu ], [ true, %.noexc246.i.i155 ] ; 2 uses
  %i.xy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xz = load ptr, ptr %10, align 8, !tbaa !216  ; 2 uses
  %i.ya = icmp eq ptr %i.xz, %i.xs
  br i1 %i.ya, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i194.i.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i193.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i193.i.i157: ; preds = %bb.bv
  call void @_ZdlPv(ptr noundef %i.xz) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.0.i.i.i192.i.i156, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i194.i.i158: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.0.i.i.i192.i.i156, label %common.resume.sink.split, label %common.resume

bb.bw:                                            ; preds = %bb.bu
  unreachable

_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit195.i.i:   ; preds = %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit187.i.i
  %i.yb = zext i32 %i.xp to i64                   ; 2 uses
  %.idx369.i.i159 = shl nuw nsw i64 %i.yb, 2
  %i.yc = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.idx369.i.i159 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %.pre511.i.i, i64 %i.xq
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !79
  %i.yf = zext i32 %i.ye to i64
  %i.yg = sub nsw i64 %i.yf, %i.yb                ; 2 uses
  %i.yh = icmp sgt i64 %i.yg, 0
  br i1 %i.yh, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i, label %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit205.i.i

_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i: ; preds = %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit195.i.i, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i
  %.017.i.i199.i.i183 = phi i64 [ %.1.i.i204.i.i188, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i ], [ %i.yg, %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit195.i.i ] ; 2 uses
  %.01116.i.i200.i.i184 = phi ptr [ %.112.i.i203.i.i187, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i ], [ %i.yc, %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit195.i.i ] ; 2 uses
  %i.yi = lshr i64 %.017.i.i199.i.i183, 1         ; 3 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i200.i.i184, i64 %i.yi ; 2 uses
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !79
  %i.yl = icmp ult i32 %i.yk, %i.rg               ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yj, i64 4
  %i.yn = xor i64 %i.yi, -1
  %i.yo = add nsw i64 %.017.i.i199.i.i183, %i.yn
  %.112.i.i203.i.i187 = select i1 %i.yl, ptr %i.ym, ptr %.01116.i.i200.i.i184 ; 2 uses
  %.1.i.i204.i.i188 = select i1 %i.yl, i64 %i.yo, i64 %i.yi ; 2 uses
  %i.yp = icmp sgt i64 %.1.i.i204.i.i188, 0
  br i1 %i.yp, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i, label %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit205.i.i, !llvm.loop !51

_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit205.i.i: ; preds = %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i, %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit195.i.i
  %.011.lcssa.i.i196.i.i160 = phi ptr [ %i.yc, %_ZNK6duckdb6vectorIjLb1ESaIjEEixEm.exit195.i.i ], [ %.112.i.i203.i.i187, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i198.i.i ]
  %i.yq = ptrtoint ptr %.011.lcssa.i.i196.i.i160 to i64
  %i.yr = sub i64 %i.yq, %i.wz
  %i.ys = ashr exact i64 %i.yr, 2                 ; 3 uses
  %i.yt = icmp slt i64 %i.ys, 0
  br i1 %i.yt, label %bb.bx, label %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i161

bb.bx:                                            ; preds = %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit205.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 %i.ys, ptr %i.r, align 8, !tbaa !278
  store i64 0, ptr %i.s, align 8, !tbaa !278
  store i64 -1, ptr %i.t, align 8, !tbaa !278
  %i.yu = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.yv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.yv, ptr %8, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #29
  store i64 75, ptr %i.q, align 8, !tbaa !278
  %i.yw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc.i.i251.i.i179 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i248.i.i178 ; 3 uses

.noexc.i.i251.i.i179:                             ; preds = %bb.bx
  store ptr %i.yw, ptr %8, align 8, !tbaa !216
  %i.yx = load i64, ptr %i.q, align 8, !tbaa !278 ; 3 uses
  store i64 %i.yx, ptr %i.yv, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.yw, ptr noundef nonnull align 1 dereferenceable(75) @.str.22, i64 75, i1 false)
  %i.yy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.yx, ptr %i.yy, align 8, !tbaa !569
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.yx
  store i8 0, ptr %i.yz, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlRmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.yu, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %.noexc.i.i251.i.i179
  invoke void @__cxa_throw(ptr nonnull %i.yu, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.ca unwind label %bb.bz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i248.i.i178: ; preds = %bb.bx
  %i.za = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %common.resume.sink.split

bb.bz:                                            ; preds = %bb.by, %.noexc.i.i251.i.i179
  %.0.i.i252.i.i180 = phi i1 [ false, %bb.by ], [ true, %.noexc.i.i251.i.i179 ] ; 2 uses
  %i.zb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.zc = load ptr, ptr %8, align 8, !tbaa !216   ; 2 uses
  %i.zd = icmp eq ptr %i.zc, %i.yv
  br i1 %i.zd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i254.i.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i253.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i253.i.i181: ; preds = %bb.bz
  call void @_ZdlPv(ptr noundef %i.zc) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br i1 %.0.i.i252.i.i180, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i254.i.i182: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br i1 %.0.i.i252.i.i180, label %common.resume.sink.split, label %common.resume

bb.ca:                                            ; preds = %bb.by
  unreachable

_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i161: ; preds = %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit205.i.i
  %i.ze = sub i64 %i.ys, %.sroa.12.2434.i.i150686
  %i.zf = add i64 %i.ze, %.11.i148684             ; 2 uses
  %i.zg = add i64 %.sroa.12.2434.i.i150686, %i.td ; 3 uses
  %i.zh = add nuw i64 %.sroa.13.1435.i.i149685, 1 ; 4 uses
  %i.zi = sub i64 %2, %i.zg
  %.not137.i.i162 = icmp ult i64 %i.zi, %i.td
  br i1 %.not137.i.i162, label %._crit_edge438.i.i163, label %bb.bq, !llvm.loop !1460

._crit_edge438.i.i163:                            ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i161, %bb.bp
  %.12.i164 = phi i64 [ %.10.i138, %bb.bp ], [ %i.zf, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i161 ] ; 2 uses
  %.sroa.12.2.lcssa.i.i165 = phi i64 [ %.sroa.12.1.i.i108, %bb.bp ], [ %i.zg, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i161 ] ; 3 uses
  %.sroa.13.1.lcssa.i.i166 = phi i64 [ %.sroa.13.0.i.i110, %bb.bp ], [ %i.zh, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit255.i.i161 ] ; 3 uses
  %.not138.i.i167 = icmp eq i64 %.sroa.12.2.lcssa.i.i165, %2
  br i1 %.not138.i.i167, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge438.i.i163
  %i.zj = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK6duckdb6vectorIjLb1ESaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.th, i64 noundef %.sroa.13.1.lcssa.i.i166)
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !79
  %i.zl = zext i32 %i.zk to i64                   ; 2 uses
  %.idx370.i.i168 = shl nuw nsw i64 %i.zl, 2
  %i.zm = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.idx370.i.i168 ; 2 uses
  %i.zn = add i64 %.sroa.13.1.lcssa.i.i166, 32
  %i.zo = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK6duckdb6vectorIjLb1ESaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.th, i64 noundef %i.zn)
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !79
  %i.zq = zext i32 %i.zp to i64
  %i.zr = sub nsw i64 %i.zq, %i.zl                ; 2 uses
  %i.zs = icmp sgt i64 %i.zr, 0
  br i1 %i.zs, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i, label %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit215.i.i

_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i: ; preds = %bb.cb, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i
  %.017.i.i209.i.i172 = phi i64 [ %.1.i.i214.i.i177, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i ], [ %i.zr, %bb.cb ] ; 2 uses
  %.01116.i.i210.i.i173 = phi ptr [ %.112.i.i213.i.i176, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i ], [ %i.zm, %bb.cb ] ; 2 uses
  %i.zt = lshr i64 %.017.i.i209.i.i172, 1         ; 3 uses
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i210.i.i173, i64 %i.zt ; 2 uses
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !79
  %i.zw = icmp ult i32 %i.zv, %i.rg               ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 4
  %i.zy = xor i64 %i.zt, -1
  %i.zz = add nsw i64 %.017.i.i209.i.i172, %i.zy
  %.112.i.i213.i.i176 = select i1 %i.zw, ptr %i.zx, ptr %.01116.i.i210.i.i173 ; 2 uses
  %.1.i.i214.i.i177 = select i1 %i.zw, i64 %i.zz, i64 %i.zt ; 2 uses
  %i.aaa = icmp sgt i64 %.1.i.i214.i.i177, 0
  br i1 %i.aaa, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i, label %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit215.i.i, !llvm.loop !51

_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit215.i.i: ; preds = %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i, %bb.cb
  %.011.lcssa.i.i206.i.i169 = phi ptr [ %i.zm, %bb.cb ], [ %.112.i.i213.i.i176, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i208.i.i ]
  %i.aab = ptrtoint ptr %.011.lcssa.i.i206.i.i169 to i64
  %i.aac = ptrtoint ptr %i.tf to i64
  %i.aad = sub i64 %i.aab, %i.aac
  %i.aae = ashr exact i64 %i.aad, 2
  %i.aaf = tail call noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.aae)
  %i.aag = and i64 %i.aaf, -32
  %i.aah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.td, i1 true)
  %i.aai = lshr i64 %2, %i.aah
  %i.aaj = shl i64 %i.aai, 6
  %i.aak = add i64 %i.aag, %i.aaj
  br label %bb.cc

bb.cc:                                            ; preds = %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit215.i.i, %._crit_edge438.i.i163
  %.sroa.13.2.i.i170 = phi i64 [ %.sroa.13.1.lcssa.i.i166, %._crit_edge438.i.i163 ], [ %i.aak, %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit215.i.i ]
  %.not139.i.i171 = icmp ult i64 %.2117.i.i111, 3
  br i1 %.not139.i.i171, label %.loopexit377.i.i15, label %bb.bc, !llvm.loop !1461

.loopexit377.i.i15:                               ; preds = %bb.cc, %bb.ba
  %.0.i16 = phi i64 [ %1, %bb.ba ], [ %.12.i164, %bb.cc ] ; 2 uses
  %.sroa.0309.2.i.i17 = phi i64 [ %i.rq, %bb.ba ], [ %.sroa.0309.1.lcssa.i.i139, %bb.cc ] ; 2 uses
  %.sroa.12.3.i.i18 = phi i64 [ %i.rq, %bb.ba ], [ %.sroa.12.2.lcssa.i.i165, %bb.cc ] ; 2 uses
  %.3118.i.i19 = phi i64 [ %i.ro, %bb.ba ], [ %i.tc, %bb.cc ] ; 2 uses
  %.3.i.i20 = phi i64 [ %i.rn, %bb.ba ], [ %i.td, %bb.cc ]
  %or.cond.i.i21 = icmp ult i64 %.3118.i.i19, 2
  br i1 %or.cond.i.i21, label %.thread360.i.i66, label %.lr.ph454.preheader.i.i22

.lr.ph454.preheader.i.i22:                        ; preds = %.loopexit377.i.i15
  %i.aal = add nsw i64 %.3118.i.i19, -1
  br label %.lr.ph454.i.i23

.loopexit375.i.i62:                               ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit287.i.i60, %.preheader374.i.i46
  %.5.i63 = phi i64 [ %.3.i47, %.preheader374.i.i46 ], [ %i.adr, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit287.i.i60 ] ; 2 uses
  %.sroa.12.5.lcssa.i.i64 = phi i64 [ %.sroa.12.4452.i.i26, %.preheader374.i.i46 ], [ %i.ads, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit287.i.i60 ] ; 2 uses
  %i.aam = add i64 %i.aan, -1                     ; 2 uses
  %.not141.i.i65 = icmp eq i64 %i.aam, 0
  br i1 %.not141.i.i65, label %.thread360.i.i66, label %.lr.ph454.i.i23, !llvm.loop !1462

.lr.ph454.i.i23:                                  ; preds = %.loopexit375.i.i62, %.lr.ph454.preheader.i.i22
  %.1.i24 = phi i64 [ %.0.i16, %.lr.ph454.preheader.i.i22 ], [ %.5.i63, %.loopexit375.i.i62 ] ; 2 uses
  %i.aan = phi i64 [ %i.aal, %.lr.ph454.preheader.i.i22 ], [ %i.aam, %.loopexit375.i.i62 ] ; 2 uses
  %.4453.i.i25 = phi i64 [ %.3.i.i20, %.lr.ph454.preheader.i.i22 ], [ %i.aao, %.loopexit375.i.i62 ]
  %.sroa.12.4452.i.i26 = phi i64 [ %.sroa.12.3.i.i18, %.lr.ph454.preheader.i.i22 ], [ %.sroa.12.5.lcssa.i.i64, %.loopexit375.i.i62 ] ; 3 uses
  %.sroa.0309.3451.i.i27 = phi i64 [ %.sroa.0309.2.i.i17, %.lr.ph454.preheader.i.i22 ], [ %.sroa.0309.4.lcssa.i.i48, %.loopexit375.i.i62 ] ; 3 uses
  %i.aao = lshr i64 %.4453.i.i25, 5               ; 11 uses
  %i.aap = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorISt4pairINS0_IjLb1ESaIjEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %i.rc, i64 noundef %i.aan)
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !727 ; 4 uses
  %i.aar = sub i64 %.sroa.0309.3451.i.i27, %1
  %.not144441.i.i28 = icmp ult i64 %i.aar, %i.aao
  br i1 %.not144441.i.i28, label %.preheader374.i.i46, label %.lr.ph444.i.i29

.lr.ph444.i.i29:                                  ; preds = %.lr.ph454.i.i23
  %i.aas = sub nsw i64 0, %i.aao
  %invariant.gep.i.i30 = getelementptr [4 x i8], ptr %i.aaq, i64 %i.aas
  %.not371.i.i31 = icmp eq i64 %i.aao, 0
  %i.aat = ptrtoint ptr %i.aaq to i64
  br label %bb.cd

.preheader374.i.i46:                              ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i44, %.lr.ph454.i.i23
  %.3.i47 = phi i64 [ %.1.i24, %.lr.ph454.i.i23 ], [ %i.acg, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i44 ] ; 2 uses
  %.sroa.0309.4.lcssa.i.i48 = phi i64 [ %.sroa.0309.3451.i.i27, %.lr.ph454.i.i23 ], [ %.idx147.i.i43, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i44 ] ; 2 uses
  %i.aau = sub i64 %2, %.sroa.12.4452.i.i26
  %.not145446.i.i49 = icmp ult i64 %i.aau, %i.aao
  br i1 %.not145446.i.i49, label %.loopexit375.i.i62, label %.lr.ph448.i.i50

.lr.ph448.i.i50:                                  ; preds = %.preheader374.i.i46
  %i.aav = ptrtoint ptr %i.aaq to i64
  br label %bb.cm

bb.cd:                                            ; preds = %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i44, %.lr.ph444.i.i29
  %.2.i32 = phi i64 [ %.1.i24, %.lr.ph444.i.i29 ], [ %i.acg, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i44 ]
  %.sroa.0309.4442.i.i33 = phi i64 [ %.sroa.0309.3451.i.i27, %.lr.ph444.i.i29 ], [ %.idx147.i.i43, %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit271.i.i44 ] ; 2 uses
  %gep.i.i34 = getelementptr [4 x i8], ptr %invariant.gep.i.i30, i64 %.sroa.0309.4442.i.i33 ; 2 uses
  br i1 %.not371.i.i31, label %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit225.i.i, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i

_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i: ; preds = %bb.cd, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i
  %.017.i.i219.i.i35 = phi i64 [ %.1.i.i224.i.i40, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i ], [ %i.aao, %bb.cd ] ; 2 uses
  %.01116.i.i220.i.i36 = phi ptr [ %.112.i.i223.i.i39, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i ], [ %gep.i.i34, %bb.cd ] ; 2 uses
  %i.aaw = lshr i64 %.017.i.i219.i.i35, 1         ; 3 uses
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i220.i.i36, i64 %i.aaw ; 2 uses
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !79
  %i.aaz = icmp ult i32 %i.aay, %i.rg             ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aax, i64 4
  %i.abb = xor i64 %i.aaw, -1
  %i.abc = add nsw i64 %.017.i.i219.i.i35, %i.abb
  %.112.i.i223.i.i39 = select i1 %i.aaz, ptr %i.aba, ptr %.01116.i.i220.i.i36 ; 2 uses
  %.1.i.i224.i.i40 = select i1 %i.aaz, i64 %i.abc, i64 %i.aaw ; 2 uses
  %i.abd = icmp sgt i64 %.1.i.i224.i.i40, 0
  br i1 %i.abd, label %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i, label %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit225.i.i, !llvm.loop !51

_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit225.i.i: ; preds = %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i, %bb.cd
  %.011.lcssa.i.i216.i.i41 = phi ptr [ %gep.i.i34, %bb.cd ], [ %.112.i.i223.i.i39, %_ZSt9__advanceIPKjlEvRT_T0_St26random_access_iterator_tag.exit.i.i218.i.i ]
  %i.abe = ptrtoint ptr %.011.lcssa.i.i216.i.i41 to i64
  %i.abf = sub i64 %i.abe, %i.aat
  %i.abg = ashr exact i64 %i.abf, 2               ; 3 uses
  %i.abh = icmp slt i64 %i.abg, 0
  br i1 %i.abh, label %bb.ce, label %_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit263.i.i42

bb.ce:                                            ; preds = %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit225.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %i.abg, ptr %i.n, align 8, !tbaa !278
  store i64 0, ptr %i.o, align 8, !tbaa !278
  store i64 -1, ptr %i.p, align 8, !tbaa !278
  %i.abi = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.abj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.abj, ptr %7, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #29
  store i64 75, ptr %i.m, align 8, !tbaa !278
  %i.abk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc.i.i259.i.i98 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i256.i.i97 ; 3 uses

.noexc.i.i259.i.i98:                              ; preds = %bb.ce
  store ptr %i.abk, ptr %7, align 8, !tbaa !216
  %i.abl = load i64, ptr %i.m, align 8, !tbaa !278 ; 3 uses
  store i64 %i.abl, ptr %i.abj, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.abk, ptr noundef nonnull align 1 dereferenceable(75) @.str.22, i64 75, i1 false)
  %i.abm = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.abl, ptr %i.abm, align 8, !tbaa !569
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.abl
  store i8 0, ptr %i.abn, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlRmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.abi, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %.noexc.i.i259.i.i98
  invoke void @__cxa_throw(ptr nonnull %i.abi, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.ch unwind label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i256.i.i97: ; preds = %bb.ce
  %i.abo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %common.resume.sink.split

bb.cg:                                            ; preds = %bb.cf, %.noexc.i.i259.i.i98
  %.0.i.i260.i.i99 = phi i1 [ false, %bb.cf ], [ true, %.noexc.i.i259.i.i98 ] ; 2 uses
  %i.abp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.abq = load ptr, ptr %7, align 8, !tbaa !216  ; 2 uses
  %i.abr = icmp eq ptr %i.abq, %i.abj
  br i1 %i.abr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i262.i.i101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261.i.i100: ; preds = %bb.cg
  call void @_ZdlPv(ptr noundef %i.abq) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br i1 %.0.i.i260.i.i99, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i262.i.i101: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br i1 %.0.i.i260.i.i99, label %common.resume.sink.split, label %common.resume

bb.ch:                                            ; preds = %bb.cf
  unreachable

_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl.exit263.i.i42: ; preds = %_ZSt11lower_boundIPKjjSt4lessIjEET_S4_S4_RKT0_T1_.exit225.i.i
  %.idx147.i.i43 = sub i64 %.sroa.0309.4442.i.i33, %i.aao ; 4 uses
end_hunk_7
begin_hunk_8_@_ZNK6duckdb21WindowLeadLagExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputE:bb.a
  %.1152234239 = phi i64 [ %.0151, %.thread ], [ %.1152, %bb.ay ]
  %i.jk = tail call noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %.1152234239) ; 2 uses
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !278
  %i.jm = sub i64 %i.jl, %i.jk
  %i.jn = tail call noundef i64 @llvm.umin.i64(i64 %i.jm, i64 %i.ji) ; 2 uses
  %.not168276 = icmp eq i64 %i.jn, 0
  br i1 %.not168276, label %.loopexit, label %.lr.ph281

.lr.ph281:                                        ; preds = %bb.az, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit
  %.2280 = phi i64 [ %i.ku, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit ], [ %.1285, %bb.az ]
  %.0149279 = phi i64 [ %i.kw, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit ], [ %i.jn, %bb.az ] ; 2 uses
  %.0150278 = phi i64 [ %i.kv, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit ], [ %i.jk, %bb.az ] ; 5 uses
  %.1155277 = phi i64 [ %i.kt, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit ], [ %.0154284, %bb.az ] ; 2 uses
  %i.jo = load i64, ptr %i.fc, align 8, !tbaa !483
  %i.jp = icmp ult i64 %.0150278, %i.jo
  %i.jq = load i64, ptr %i.fd, align 8            ; 2 uses
  %i.jr = icmp ule i64 %i.jq, %.0150278
  %i.js = select i1 %i.jp, i1 %i.jr, i1 false
  br i1 %i.js, label %_ZN6duckdb12WindowCursor4SeekEm.exit, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph281
  %i.jt = load ptr, ptr %i.h, align 8, !tbaa !484, !nonnull !115, !align !265
  %i.ju = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jt)
  %i.jv = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.ju, i64 noundef %.0150278, ptr noundef nonnull align 8 dereferenceable(144) %i.fe, ptr noundef nonnull align 8 dereferenceable(72) %i.ff) ; 0 uses
  %.pre.i = load i64, ptr %i.fd, align 8, !tbaa !485
  br label %_ZN6duckdb12WindowCursor4SeekEm.exit

_ZN6duckdb12WindowCursor4SeekEm.exit:             ; preds = %.lr.ph281, %bb.ba
  %i.jw = phi i64 [ %.pre.i, %bb.ba ], [ %i.jq, %.lr.ph281 ]
  %i.jx = load ptr, ptr %i.fg, align 8, !tbaa !494 ; 2 uses
  %i.jy = load ptr, ptr %i.ff, align 8, !tbaa !495 ; 3 uses
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = sdiv exact i64 %i.kb, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !278
  store i64 %i.kc, ptr %i.c, align 8, !tbaa !278
  %.not.i.i.i189.not = icmp eq ptr %i.jx, %i.jy
  br i1 %.not.i.i.i189.not, label %.noexc.i, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit, !prof !229

.noexc.i:                                         ; preds = %_ZN6duckdb12WindowCursor4SeekEm.exit
  %i.kd = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.ke = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ke, ptr %7, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 55, ptr %i.a, align 8, !tbaa !278
  %i.kf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.kf, ptr %7, align 8, !tbaa !216
  %i.kg = load i64, ptr %i.a, align 8, !tbaa !278 ; 3 uses
  store i64 %i.kg, ptr %i.ke, align 8, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.kf, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.kg, ptr %i.kh, align 8, !tbaa !569
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kg
  store i8 0, ptr %i.ki, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.kd, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.kd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bf unwind label %bb.bc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.kj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.bb ], [ true, %.noexc ] ; 2 uses
  %i.kk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kl = load ptr, ptr %7, align 8, !tbaa !216   ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.ke
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bc
  call void @_ZdlPv(ptr noundef %i.kl) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br i1 %.0.i.i.i, label %bb.bd, label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br i1 %.0.i.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.kj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.kk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.kk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.kd) #29
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.pn7.i.i.i = phi { ptr, i32 } [ %i.kk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.bd ], [ %i.kk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i.i

bb.bf:                                            ; preds = %bb.bb
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit: ; preds = %_ZN6duckdb12WindowCursor4SeekEm.exit
  %i.kn = sub i64 %.0150278, %i.jw
  %i.ko = and i64 %i.kn, 4294967295               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.kp = load i64, ptr %i.fh, align 8, !tbaa !469
  %i.kq = sub i64 %i.kp, %i.ko
  %i.kr = tail call noundef i64 @llvm.umin.i64(i64 %i.kq, i64 %.0149279) ; 5 uses
  %i.ks = add i64 %i.kr, %i.ko
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.jy, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.ks, i64 noundef %i.ko, i64 noundef %.1155277)
  %i.kt = add i64 %i.kr, %.1155277                ; 2 uses
  %i.ku = add i64 %i.kr, %.2280                   ; 2 uses
  %i.kv = add i64 %i.kr, %.0150278
  %i.kw = sub nuw i64 %.0149279, %i.kr            ; 2 uses
  %.not168 = icmp eq i64 %i.kw, 0
  br i1 %.not168, label %.loopexit, label %.lr.ph281, !llvm.loop !1575

bb.bg:                                            ; preds = %bb.ay
  %i.kx = load ptr, ptr %i.fa, align 8, !tbaa !264, !nonnull !115, !align !265
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 240
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !206
  %.not250 = icmp eq ptr %i.kz, null
  %i.la = tail call noundef i64 @llvm.umin.i64(i64 %.0221, i64 %i.jh) ; 5 uses
  br i1 %.not250, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lb = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.y)
  %i.lc = select i1 %.sroa.4200.0.shrunk, i64 0, i64 %.0154284 ; 2 uses
  %i.ld = add i64 %i.la, %i.lc
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.lb, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.ld, i64 noundef %i.lc, i64 noundef %.0154284)
  %i.le = add i64 %i.la, %.0154284
  %i.lf = add i64 %i.la, %.1285
  br label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %.not169270 = icmp eq i64 %i.jh, 0
  br i1 %.not169270, label %.loopexit, label %.lr.ph274

.lr.ph274:                                        ; preds = %bb.bi, %.lr.ph274
  %.0273 = phi i64 [ %i.lg, %.lr.ph274 ], [ %i.la, %bb.bi ]
  %.2156271 = phi i64 [ %i.lh, %.lr.ph274 ], [ %.0154284, %bb.bi ] ; 2 uses
  %i.lg = add i64 %.0273, -1                      ; 2 uses
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.2156271, i1 noundef zeroext true)
  %i.lh = add i64 %.2156271, 1                    ; 2 uses
  %.not169 = icmp eq i64 %i.lg, 0
  br i1 %.not169, label %.loopexit.loopexit290, label %.lr.ph274, !llvm.loop !1576

bb.bj:                                            ; preds = %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit
  %.not = icmp eq i64 %.0221, 0
  br i1 %.not, label %.thread240, label %bb.bl

.thread240:                                       ; preds = %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.thread, %bb.bj
  %.1152235244 = phi i64 [ %.1152, %bb.bj ], [ %.0151, %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.thread ]
  %i.li = tail call noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %.1152235244) ; 4 uses
  %i.lj = load i64, ptr %i.fc, align 8, !tbaa !483
  %i.lk = icmp ult i64 %i.li, %i.lj
  %i.ll = load i64, ptr %i.fd, align 8            ; 2 uses
  %i.lm = icmp ule i64 %i.ll, %i.li
  %i.ln = select i1 %i.lk, i1 %i.lm, i1 false
  br i1 %i.ln, label %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit191, label %bb.bk

bb.bk:                                            ; preds = %.thread240
  %i.lo = load ptr, ptr %i.h, align 8, !tbaa !484, !nonnull !115, !align !265
  %i.lp = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lo)
  %i.lq = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.lp, i64 noundef %i.li, ptr noundef nonnull align 8 dereferenceable(144) %i.fe, ptr noundef nonnull align 8 dereferenceable(72) %i.ff) ; 0 uses
  %.pre.i.i190 = load i64, ptr %i.fd, align 8, !tbaa !485
  br label %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit191

_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit191: ; preds = %.thread240, %bb.bk
  %i.lr = phi i64 [ %.pre.i.i190, %bb.bk ], [ %i.ll, %.thread240 ]
  %i.ls = sub i64 %i.li, %i.lr
  %i.lt = and i64 %i.ls, 4294967295               ; 2 uses
  %i.lu = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 noundef 0)
  %i.lv = add nuw nsw i64 %i.lt, 1
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.lu, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.lv, i64 noundef %i.lt, i64 noundef %.0154284)
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bj
  %i.lw = load ptr, ptr %i.fa, align 8, !tbaa !264, !nonnull !115, !align !265
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 240
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !206
  %.not249 = icmp eq ptr %i.ly, null
  br i1 %.not249, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lz = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.y)
  %i.ma = select i1 %.sroa.4200.0.shrunk, i64 0, i64 %.0154284 ; 2 uses
  %i.mb = add i64 %i.ma, 1
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.lz, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.mb, i64 noundef %i.ma, i64 noundef %.0154284)
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.0154284, i1 noundef zeroext true)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit191
  %i.mc = add nuw i64 %.0154284, 1
  %i.md = add i64 %.1285, 1
  br label %.loopexit

.loopexit.loopexit290:                            ; preds = %.lr.ph274
  %i.me = add i64 %.1285, %i.la
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit, %.loopexit.loopexit290, %bb.bi, %bb.az, %bb.bo, %bb.bh, %bb.ah
  %.5159 = phi i64 [ %i.fx, %bb.ah ], [ %i.mc, %bb.bo ], [ %i.le, %bb.bh ], [ %i.lh, %.loopexit.loopexit290 ], [ %.0154284, %bb.az ], [ %.0154284, %bb.bi ], [ %i.kt, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit ] ; 2 uses
  %.6 = phi i64 [ %i.fy, %bb.ah ], [ %i.md, %bb.bo ], [ %i.lf, %bb.bh ], [ %i.me, %.loopexit.loopexit290 ], [ %.1285, %bb.az ], [ %.1285, %bb.bi ], [ %i.ku, %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit ]
  %i.mf = icmp ult i64 %.5159, %4
  br i1 %i.mf, label %bb.ad, label %.loopexit256

.loopexit256:                                     ; preds = %bb.w, %.loopexit, %bb.f, %bb.ac
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !407  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !408    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !590
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb11FrameBoundsEmS1_ET_S3_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb11FrameBoundsEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 4                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !407
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb11FrameBoundsESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #31
  unreachable

_ZNKSt6vectorIN6duckdb11FrameBoundsESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #32 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6duckdb11FrameBoundsESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN6duckdb11FrameBoundsESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb11FrameBoundsESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !881, !alias.scope !1581
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1580

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6duckdb11FrameBoundsESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE13_M_deallocateEPS1_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE13_M_deallocateEPS1_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE13_M_deallocateEPS1_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !408
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !407
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !590
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.ad = icmp ult i64 %1, %i.g
  br i1 %i.ad, label %bb.g, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ae
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN6duckdb11FrameBoundsES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11FrameBoundsES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !407
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11FrameBoundsES1_EvT_S3_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE13_M_deallocateEPS1_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb11FrameBoundsEmS1_ET_S3_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !407
  %i.e = load ptr, ptr %0, align 8, !tbaa !408    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !278
  store i64 %i.i, ptr %i.b, align 8, !tbaa !278
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !279

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !216    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb24AddOperatorOverflowCheck9OperationIlllEET1_T_T0_(i64 noundef %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
end_hunk_8
