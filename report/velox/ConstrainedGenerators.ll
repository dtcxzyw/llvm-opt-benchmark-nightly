inline.NumInlined: 6739
inline.NumDeleted: 2920
begin_hunk_0_@_ZN8facebook5velox6fuzzer25CastVarcharInputGenerator30generateValidPrimitiveAsStringB5cxx11Ev:bb.a
  store ptr null, ptr %i.ad, align 8, !tbaa !34, !alias.scope !600
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = invoke noundef i32 @_ZN8facebook5velox6fuzzer8randDateERN5folly12xoshiro256ppIjDv4_yEE(ptr noundef nonnull align 32 dereferenceable(1288) %i.ae)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK8facebook5velox8DateType8toStringB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox8DateType3getEvE9kInstance, i32 noundef %i.af)
          to label %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33 unwind label %bb.i

_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit33: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  br label %bb.cc

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 3 uses
  %.pre.i.i.i.i34 = load i64, ptr %i.ai, align 32, !tbaa !54 ; 2 uses
  %i.aj = icmp eq i64 %.pre.i.i.i.i34, 64
  br i1 %i.aj, label %bb.k, label %_ZN8facebook5velox6fuzzer4randIiEET_RN5folly12xoshiro256ppIjDv4_yEENS1_8DataSpecE.exit, !prof !57

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5folly12xoshiro256ppIjDv4_yE4calcEv(ptr noundef nonnull align 32 dereferenceable(1288) %i.ah) #42
  %.pre.i86.i.i.i.i = load i64, ptr %i.ai, align 32, !tbaa !54
  br label %_ZN8facebook5velox6fuzzer4randIiEET_RN5folly12xoshiro256ppIjDv4_yEENS1_8DataSpecE.exit

_ZN8facebook5velox6fuzzer4randIiEET_RN5folly12xoshiro256ppIjDv4_yEENS1_8DataSpecE.exit: ; preds = %bb.j, %bb.k
  %i.ak = phi i64 [ %.pre.i.i.i.i34, %bb.j ], [ %.pre.i86.i.i.i.i, %bb.k ] ; 2 uses
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.ai, align 32, !tbaa !54
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ak
  %i.an = load i32, ptr %i.am, align 4, !tbaa !37 ; 3 uses
  %i.ao = lshr i32 %i.an, 1                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.ap = icmp ult i32 %i.an, 20
  br i1 %i.ap, label %.thread, label %.lr.ph.i.i35

.thread:                                          ; preds = %_ZN8facebook5velox6fuzzer4randIiEET_RN5folly12xoshiro256ppIjDv4_yEENS1_8DataSpecE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !88, !alias.scope !603
  br label %bb.t

.lr.ph.i.i35:                                     ; preds = %_ZN8facebook5velox6fuzzer4randIiEET_RN5folly12xoshiro256ppIjDv4_yEENS1_8DataSpecE.exit, %bb.q
  %.02230.i.i36 = phi i32 [ %i.ax, %bb.q ], [ %i.ao, %_ZN8facebook5velox6fuzzer4randIiEET_RN5folly12xoshiro256ppIjDv4_yEENS1_8DataSpecE.exit ] ; 5 uses
  %.02329.i.i37 = phi i32 [ %i.ay, %bb.q ], [ 1, %_ZN8facebook5velox6fuzzer4randIiEET_RN5folly12xoshiro256ppIjDv4_yEENS1_8DataSpecE.exit ] ; 4 uses
  %i.ar = icmp samesign ult i32 %.02230.i.i36, 100
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i35
  %i.as = add i32 %.02329.i.i37, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i38

bb.m:                                             ; preds = %.lr.ph.i.i35
  %i.at = icmp samesign ult i32 %.02230.i.i36, 1000
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = add i32 %.02329.i.i37, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i38

bb.o:                                             ; preds = %bb.m
  %i.av = icmp samesign ult i32 %.02230.i.i36, 10000
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = add i32 %.02329.i.i37, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i38

bb.q:                                             ; preds = %bb.o
  %i.ax = udiv i32 %.02230.i.i36, 10000
  %i.ay = add i32 %.02329.i.i37, 4                ; 2 uses
  %i.az = icmp samesign ult i32 %.02230.i.i36, 100000
  br i1 %i.az, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i38, label %.lr.ph.i.i35, !llvm.loop !606

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i38:  ; preds = %bb.q, %bb.p, %bb.n, %bb.l
  %.0.i.i39 = phi i32 [ %i.aw, %bb.p ], [ %i.as, %bb.l ], [ %i.au, %bb.n ], [ %i.ay, %bb.q ] ; 4 uses
  %i.ba = zext i32 %.0.i.i39 to i64               ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.bb, ptr %0, align 8, !tbaa !88, !alias.scope !603
  %i.bc = icmp ugt i32 %.0.i.i39, 15
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i38
  %i.bd = add nuw nsw i64 %i.ba, 1
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #44
          to label %.noexc.i48 unwind label %bb.y ; 2 uses

.noexc.i48:                                       ; preds = %bb.r
  store ptr %i.be, ptr %0, align 8, !tbaa !91, !alias.scope !603
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !37, !alias.scope !603
  br label %bb.u

bb.s:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i38
  switch i32 %.0.i.i39, label %bb.u [
    i32 0, label %bb.v
    i32 1, label %bb.t
  ]

bb.t:                                             ; preds = %.thread, %bb.s
  %i.bf = phi i64 [ 1, %.thread ], [ %i.ba, %bb.s ]
  %i.bg = phi ptr [ %i.aq, %.thread ], [ %i.bb, %bb.s ] ; 2 uses
  store i8 45, ptr %i.bg, align 1, !tbaa !37, !alias.scope !603
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %.noexc.i48
  %i.bh = phi ptr [ %i.be, %.noexc.i48 ], [ %i.bb, %bb.s ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bh, i8 45, i64 %i.ba, i1 false)
  %i.bi = add i32 %.0.i.i39, -1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.bj = phi i64 [ %i.ba, %bb.s ], [ %i.ba, %bb.u ], [ %i.bf, %bb.t ] ; 2 uses
  %.0.i.i39198 = phi i32 [ -1, %bb.s ], [ %i.bi, %bb.u ], [ 0, %bb.t ]
  %i.bk = phi ptr [ %i.bb, %bb.s ], [ %i.bh, %bb.u ], [ %i.bg, %bb.t ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !93, !alias.scope !603
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !37
  %i.bn = load ptr, ptr %0, align 8, !tbaa !91, !alias.scope !603 ; 4 uses
  %i.bo = icmp ugt i32 %i.an, 199
  br i1 %i.bo, label %.lr.ph.i11.i45, label %._crit_edge.i.i41

.lr.ph.i11.i45:                                   ; preds = %bb.v, %.lr.ph.i11.i45
  %.020.i.i46 = phi i32 [ %i.br, %.lr.ph.i11.i45 ], [ %i.ao, %bb.v ] ; 3 uses
  %.01819.i.i47 = phi i32 [ %i.cc, %.lr.ph.i11.i45 ], [ %.0.i.i39198, %bb.v ] ; 3 uses
  %i.bp = urem i32 %.020.i.i46, 100
  %i.bq = shl nuw nsw i32 %i.bp, 1
  %i.br = udiv i32 %.020.i.i46, 100               ; 2 uses
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !37, !noalias !603
  %i.bw = zext i32 %.01819.i.i47 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bw
  store i8 %i.bv, ptr %i.bx, align 1, !tbaa !37
  %i.by = load i8, ptr %i.bt, align 2, !tbaa !37, !noalias !603
  %i.bz = add i32 %.01819.i.i47, -1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ca
  store i8 %i.by, ptr %i.cb, align 1, !tbaa !37
  %i.cc = add i32 %.01819.i.i47, -2
  %i.cd = icmp samesign ugt i32 %.020.i.i46, 9999
  br i1 %i.cd, label %.lr.ph.i11.i45, label %._crit_edge.i.i41, !llvm.loop !607

._crit_edge.i.i41:                                ; preds = %.lr.ph.i11.i45, %bb.v
  %.0.lcssa.i.i42 = phi i32 [ %i.ao, %bb.v ], [ %i.br, %.lr.ph.i11.i45 ] ; 3 uses
  %i.ce = icmp samesign ugt i32 %.0.lcssa.i.i42, 9
  br i1 %i.ce, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i41
  %i.cf = shl nuw nsw i32 %.0.lcssa.i.i42, 1
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !37, !noalias !603
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !37
  %i.cl = load i8, ptr %i.ch, align 2, !tbaa !37, !noalias !603
  br label %_ZNSt7__cxx119to_stringEi.exit49

bb.x:                                             ; preds = %._crit_edge.i.i41
  %i.cm = trunc nuw nsw i32 %.0.lcssa.i.i42 to i8
  %i.cn = or disjoint i8 %i.cm, 48
  br label %_ZNSt7__cxx119to_stringEi.exit49

bb.y:                                             ; preds = %bb.r
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  tail call void @__clang_call_terminate(ptr %i.cp) #43
  unreachable

_ZNSt7__cxx119to_stringEi.exit49:                 ; preds = %bb.w, %bb.x
  %storemerge.i.i43 = phi i8 [ %i.cn, %bb.x ], [ %i.cl, %bb.w ]
  store i8 %storemerge.i.i43, ptr %i.bn, align 1, !tbaa !37
  br label %bb.cc

bb.z:                                             ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 3 uses
  %.pre.i.i.i.i50 = load i64, ptr %i.cr, align 32, !tbaa !54 ; 2 uses
  %i.cs = icmp eq i64 %.pre.i.i.i.i50, 64
  br i1 %i.cs, label %bb.aa, label %_ZN8facebook5velox6fuzzer4randIaTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit, !prof !57

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN5folly12xoshiro256ppIjDv4_yE4calcEv(ptr noundef nonnull align 32 dereferenceable(1288) %i.cq) #42
  %.pre.i89.i.i.i.i = load i64, ptr %i.cr, align 32, !tbaa !54
  br label %_ZN8facebook5velox6fuzzer4randIaTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit

_ZN8facebook5velox6fuzzer4randIaTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit: ; preds = %bb.z, %bb.aa
  %i.ct = phi i64 [ %.pre.i.i.i.i50, %bb.z ], [ %.pre.i89.i.i.i.i, %bb.aa ] ; 2 uses
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.cr, align 32, !tbaa !54
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ct
  %.shift121 = getelementptr inbounds nuw i8, ptr %i.cv, i64 3
  %10 = load i8, ptr %.shift121, align 1, !tbaa !37
  %.0.i92.i.i.i.i = xor i8 %10, -128
  %11 = sext i8 %.0.i92.i.i.i.i to i32            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.cw = tail call i32 @llvm.abs.i32(i32 %11, i1 true) ; 7 uses
  %12 = icmp samesign ult i32 %i.cw, 10
  %i.cx = icmp samesign ult i32 %i.cw, 100
  %spec.select = select i1 %i.cx, i32 2, i32 3
  %.0.i.i55 = select i1 %12, i32 1, i32 %spec.select ; 3 uses
  %.lobit.i56 = lshr i32 %11, 31                  ; 2 uses
  %13 = add nuw nsw i32 %.0.i.i55, %.lobit.i56    ; 2 uses
  %14 = zext nneg i32 %13 to i64                  ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %15, ptr %0, align 8, !tbaa !88, !alias.scope !608
  %cond222 = icmp eq i32 %13, 1
  br i1 %cond222, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN8facebook5velox6fuzzer4randIaTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit
  store i8 45, ptr %15, align 8, !tbaa !37, !alias.scope !608
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN8facebook5velox6fuzzer4randIaTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %15, i8 45, i64 %14, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %14, ptr %i.cy, align 8, !tbaa !93, !alias.scope !608
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 %14
  store i8 0, ptr %i.cz, align 1, !tbaa !37
  %i.da = zext nneg i32 %.lobit.i56 to i64
  %i.db = load ptr, ptr %0, align 8, !tbaa !91, !alias.scope !608
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da ; 4 uses
  %i.dd = icmp samesign ugt i32 %i.cw, 99
  br i1 %i.dd, label %.lr.ph.i11.i61, label %._crit_edge.i.i57

.lr.ph.i11.i61:                                   ; preds = %bb.ad
  %i.de = shl nuw nsw i32 %i.cw, 1
  %16 = zext nneg i32 %i.de to i64
  %17 = getelementptr i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %16 ; 2 uses
  %i.df = getelementptr i8, ptr %17, i64 -200
  %i.dg = getelementptr i8, ptr %17, i64 -199
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !37, !noalias !608
  %i.di = zext nneg i32 %.0.i.i55 to i64
  %18 = getelementptr i8, ptr %i.dc, i64 %i.di
  %i.dj = getelementptr i8, ptr %18, i64 -1
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !37
  %i.dk = load i8, ptr %i.df, align 2, !tbaa !37, !noalias !608
  %i.dl = add nsw i32 %.0.i.i55, -2
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dm
  store i8 %i.dk, ptr %i.dn, align 1, !tbaa !37
  br label %bb.af

._crit_edge.i.i57:                                ; preds = %bb.ad
  %i.do = icmp samesign ugt i32 %i.cw, 9
  br i1 %i.do, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i57
  %i.dp = shl nuw nsw i32 %i.cw, 1
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !37, !noalias !608
  %i.du = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !37
  %i.dv = load i8, ptr %i.dr, align 2, !tbaa !37, !noalias !608
  br label %_ZNSt7__cxx119to_stringEi.exit65

bb.af:                                            ; preds = %.lr.ph.i11.i61, %._crit_edge.i.i57
  %.0.lcssa.i.i58205 = phi i32 [ 1, %.lr.ph.i11.i61 ], [ %i.cw, %._crit_edge.i.i57 ]
  %i.dw = trunc nuw nsw i32 %.0.lcssa.i.i58205 to i8
  %i.dx = or disjoint i8 %i.dw, 48
  br label %_ZNSt7__cxx119to_stringEi.exit65

_ZNSt7__cxx119to_stringEi.exit65:                 ; preds = %bb.ae, %bb.af
  %storemerge.i.i59 = phi i8 [ %i.dx, %bb.af ], [ %i.dv, %bb.ae ]
  store i8 %storemerge.i.i59, ptr %i.dc, align 1, !tbaa !37
  br label %bb.cc

bb.ag:                                            ; preds = %bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 3 uses
  %.pre.i.i.i.i66 = load i64, ptr %i.dz, align 32, !tbaa !54 ; 2 uses
  %i.ea = icmp eq i64 %.pre.i.i.i.i66, 64
  br i1 %i.ea, label %bb.ah, label %_ZN8facebook5velox6fuzzer4randIsTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit, !prof !57

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZN5folly12xoshiro256ppIjDv4_yE4calcEv(ptr noundef nonnull align 32 dereferenceable(1288) %i.dy) #42
  %.pre.i89.i.i.i.i69 = load i64, ptr %i.dz, align 32, !tbaa !54
  br label %_ZN8facebook5velox6fuzzer4randIsTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit

_ZN8facebook5velox6fuzzer4randIsTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit: ; preds = %bb.ag, %bb.ah
  %i.eb = phi i64 [ %.pre.i.i.i.i66, %bb.ag ], [ %.pre.i89.i.i.i.i69, %bb.ah ] ; 2 uses
  %i.ec = add i64 %i.eb, 1
  store i64 %i.ec, ptr %i.dz, align 32, !tbaa !54
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.eb
  %.shift = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %19 = load i16, ptr %.shift, align 2, !tbaa !37
  %.0.i92.i.i.i.i68 = xor i16 %19, -32768
  %20 = sext i16 %.0.i92.i.i.i.i68 to i32         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.ee = tail call i32 @llvm.abs.i32(i32 %20, i1 true) ; 7 uses
  %i.ef = icmp samesign ult i32 %i.ee, 10
  br i1 %i.ef, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i73, label %bb.ai

bb.ai:                                            ; preds = %_ZN8facebook5velox6fuzzer4randIsTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit
  %i.eg = icmp samesign ult i32 %i.ee, 100
  br i1 %i.eg, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i73, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eh = icmp samesign ult i32 %i.ee, 1000
  br i1 %i.eh, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i73, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %21 = icmp samesign ult i32 %i.ee, 10000
  %spec.select223 = select i1 %21, i32 4, i32 5
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i73

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i73:  ; preds = %bb.ak, %_ZN8facebook5velox6fuzzer4randIsTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit, %bb.ai, %bb.aj
  %.0.i.i74 = phi i32 [ 3, %bb.aj ], [ %spec.select223, %bb.ak ], [ 2, %bb.ai ], [ 1, %_ZN8facebook5velox6fuzzer4randIsTnNSt9enable_ifIXsr3stdE15is_arithmetic_vIT_EEiE4typeELi0EEES4_RN5folly12xoshiro256ppIjDv4_yEES4_S4_.exit ] ; 2 uses
  %.lobit.i75 = lshr i32 %20, 31                  ; 2 uses
  %i.ei = add nuw nsw i32 %.0.i.i74, %.lobit.i75  ; 2 uses
  %i.ej = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ek, ptr %0, align 8, !tbaa !88, !alias.scope !611
  %cond = icmp eq i32 %i.ei, 1
  br i1 %cond, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i73
  store i8 45, ptr %i.ek, align 8, !tbaa !37, !alias.scope !611
  br label %bb.an

bb.am:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ek, i8 45, i64 %i.ej, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ej, ptr %i.el, align 8, !tbaa !93, !alias.scope !611
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ej
  store i8 0, ptr %i.em, align 1, !tbaa !37
  %i.en = zext nneg i32 %.lobit.i75 to i64
  %i.eo = load ptr, ptr %0, align 8, !tbaa !91, !alias.scope !611
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.en ; 4 uses
  %i.eq = icmp samesign ugt i32 %i.ee, 99
  br i1 %i.eq, label %.lr.ph.preheader.i.i79, label %._crit_edge.i.i76

.lr.ph.preheader.i.i79:                           ; preds = %bb.an
  %i.er = add nsw i32 %.0.i.i74, -1
  br label %.lr.ph.i11.i80

.lr.ph.i11.i80:                                   ; preds = %.lr.ph.i11.i80, %.lr.ph.preheader.i.i79
  %.020.i.i81 = phi i32 [ %i.eu, %.lr.ph.i11.i80 ], [ %i.ee, %.lr.ph.preheader.i.i79 ] ; 3 uses
  %.01819.i.i82 = phi i32 [ %i.ff, %.lr.ph.i11.i80 ], [ %i.er, %.lr.ph.preheader.i.i79 ] ; 3 uses
  %i.es = urem i32 %.020.i.i81, 100
  %i.et = shl nuw nsw i32 %i.es, 1
  %i.eu = udiv i32 %.020.i.i81, 100               ; 2 uses
  %i.ev = zext nneg i32 %i.et to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !37, !noalias !611
  %i.ez = zext i32 %.01819.i.i82 to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ez
  store i8 %i.ey, ptr %i.fa, align 1, !tbaa !37
  %i.fb = load i8, ptr %i.ew, align 2, !tbaa !37, !noalias !611
  %i.fc = add i32 %.01819.i.i82, -1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fd
  store i8 %i.fb, ptr %i.fe, align 1, !tbaa !37
  %i.ff = add i32 %.01819.i.i82, -2
  %i.fg = icmp samesign ugt i32 %.020.i.i81, 9999
  br i1 %i.fg, label %.lr.ph.i11.i80, label %._crit_edge.i.i76, !llvm.loop !607

._crit_edge.i.i76:                                ; preds = %.lr.ph.i11.i80, %bb.an
  %.0.lcssa.i.i77 = phi i32 [ %i.ee, %bb.an ], [ %i.eu, %.lr.ph.i11.i80 ] ; 3 uses
  %i.fh = icmp samesign ugt i32 %.0.lcssa.i.i77, 9
  br i1 %i.fh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge.i.i76
  %i.fi = shl nuw nsw i32 %.0.lcssa.i.i77, 1
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !37, !noalias !611
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !37
  %i.fo = load i8, ptr %i.fk, align 2, !tbaa !37, !noalias !611
  br label %_ZNSt7__cxx119to_stringEi.exit84

bb.ap:                                            ; preds = %._crit_edge.i.i76
  %i.fp = trunc nuw nsw i32 %.0.lcssa.i.i77 to i8
  %i.fq = or disjoint i8 %i.fp, 48
  br label %_ZNSt7__cxx119to_stringEi.exit84

_ZNSt7__cxx119to_stringEi.exit84:                 ; preds = %bb.ao, %bb.ap
  %storemerge.i.i78 = phi i8 [ %i.fq, %bb.ap ], [ %i.fo, %bb.ao ]
  store i8 %storemerge.i.i78, ptr %i.ep, align 1, !tbaa !37
  br label %bb.cc

bb.aq:                                            ; preds = %bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fs = tail call noundef i64 @_ZN5boost6random6detail20generate_uniform_intIN5folly12xoshiro256ppIjDv4_yEElEET0_RT_S7_S7_NS_17integral_constantIbLb1EEE(ptr noundef nonnull align 32 dereferenceable(1288) %i.fr, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.ft = tail call i64 @llvm.abs.i64(i64 %i.fs, i1 false) ; 5 uses
  %i.fu = icmp ult i64 %i.ft, 10
  br i1 %i.fu, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i85

.lr.ph.i.i85:                                     ; preds = %bb.aq, %bb.aw
  %.02229.i.i = phi i64 [ %i.gb, %bb.aw ], [ %i.ft, %bb.aq ] ; 5 uses
  %.02328.i.i = phi i32 [ %i.gc, %bb.aw ], [ 1, %bb.aq ] ; 4 uses
  %i.fv = icmp ult i64 %.02229.i.i, 100
  br i1 %i.fv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.i.i85
  %i.fw = add i32 %.02328.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.as:                                            ; preds = %.lr.ph.i.i85
  %i.fx = icmp ult i64 %.02229.i.i, 1000
  br i1 %i.fx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fy = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.au:                                            ; preds = %bb.as
  %i.fz = icmp ult i64 %.02229.i.i, 10000
  br i1 %i.fz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ga = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.gb = udiv i64 %.02229.i.i, 10000
  %i.gc = add i32 %.02328.i.i, 4                  ; 2 uses
  %i.gd = icmp ult i64 %.02229.i.i, 100000
  br i1 %i.gd, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i85, !llvm.loop !617

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.aw, %bb.av, %bb.at, %bb.ar, %bb.aq
  %.0.i.i86 = phi i32 [ %i.ga, %bb.av ], [ %i.fw, %bb.ar ], [ %i.fy, %bb.at ], [ 1, %bb.aq ], [ %i.gc, %bb.aw ] ; 2 uses
  %.lobit.i87 = lshr i64 %i.fs, 63                ; 2 uses
  %i.ge = trunc nuw nsw i64 %.lobit.i87 to i32
  %i.gf = add i32 %.0.i.i86, %i.ge                ; 3 uses
  %i.gg = zext i32 %i.gf to i64                   ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.gh, ptr %0, align 8, !tbaa !88, !alias.scope !614
  %i.gi = icmp ugt i32 %i.gf, 15
  br i1 %i.gi, label %.noexc.i94, label %bb.ax

.noexc.i94:                                       ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.gj = add nuw nsw i64 %i.gg, 1
  %i.gk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #44 ; 2 uses
  store ptr %i.gk, ptr %0, align 8, !tbaa !91, !alias.scope !614
  store i64 %i.gg, ptr %i.gh, align 8, !tbaa !37, !alias.scope !614
  br label %bb.az

bb.ax:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  switch i32 %i.gf, label %bb.az [
    i32 0, label %bb.ba
    i32 1, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax
  store i8 45, ptr %i.gh, align 8, !tbaa !37, !alias.scope !614
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax, %.noexc.i94
  %i.gl = phi ptr [ %i.gk, %.noexc.i94 ], [ %i.gh, %bb.ax ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gl, i8 45, i64 %i.gg, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.gm = phi ptr [ %i.gh, %bb.ax ], [ %i.gl, %bb.az ], [ %i.gh, %bb.ay ]
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gg, ptr %i.gn, align 8, !tbaa !93, !alias.scope !614
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gg
  store i8 0, ptr %i.go, align 1, !tbaa !37
  %i.gp = load ptr, ptr %0, align 8, !tbaa !91, !alias.scope !614
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.lobit.i87 ; 4 uses
  %i.gr = icmp ugt i64 %i.ft, 99
  br i1 %i.gr, label %.lr.ph.preheader.i.i91, label %._crit_edge.i.i88

.lr.ph.preheader.i.i91:                           ; preds = %bb.ba
  %i.gs = add i32 %.0.i.i86, -1
  br label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.lr.ph.i13.i, %.lr.ph.preheader.i.i91
  %.020.i.i92 = phi i64 [ %i.gv, %.lr.ph.i13.i ], [ %i.ft, %.lr.ph.preheader.i.i91 ] ; 3 uses
  %.01819.i.i93 = phi i32 [ %i.hf, %.lr.ph.i13.i ], [ %i.gs, %.lr.ph.preheader.i.i91 ] ; 3 uses
  %i.gt = urem i64 %.020.i.i92, 100
  %i.gu = shl nuw nsw i64 %i.gt, 1
  %i.gv = udiv i64 %.020.i.i92, 100               ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.gu ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !37, !noalias !614
  %i.gz = zext i32 %.01819.i.i93 to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gz
  store i8 %i.gy, ptr %i.ha, align 1, !tbaa !37
  %i.hb = load i8, ptr %i.gw, align 2, !tbaa !37, !noalias !614
  %i.hc = add i32 %.01819.i.i93, -1
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.hd
  store i8 %i.hb, ptr %i.he, align 1, !tbaa !37
  %i.hf = add i32 %.01819.i.i93, -2
  %i.hg = icmp ugt i64 %.020.i.i92, 9999
  br i1 %i.hg, label %.lr.ph.i13.i, label %._crit_edge.i.i88, !llvm.loop !618

._crit_edge.i.i88:                                ; preds = %.lr.ph.i13.i, %bb.ba
  %.0.lcssa.i.i89 = phi i64 [ %i.ft, %bb.ba ], [ %i.gv, %.lr.ph.i13.i ] ; 3 uses
  %i.hh = icmp samesign ugt i64 %.0.lcssa.i.i89, 9
  br i1 %i.hh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %._crit_edge.i.i88
  %i.hi = shl nuw nsw i64 %.0.lcssa.i.i89, 1
  %i.hj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.hi ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !37, !noalias !614
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !37
  %i.hn = load i8, ptr %i.hj, align 2, !tbaa !37, !noalias !614
  br label %_ZNSt7__cxx119to_stringEl.exit

bb.bc:                                            ; preds = %._crit_edge.i.i88
  %i.ho = trunc nuw nsw i64 %.0.lcssa.i.i89 to i8
  %i.hp = or disjoint i8 %i.ho, 48
  br label %_ZNSt7__cxx119to_stringEl.exit

_ZNSt7__cxx119to_stringEl.exit:                   ; preds = %bb.bb, %bb.bc
  %storemerge.i.i90 = phi i8 [ %i.hp, %bb.bc ], [ %i.hn, %bb.bb ]
  store i8 %storemerge.i.i90, ptr %i.gq, align 1, !tbaa !37
  br label %bb.cc

bb.bd:                                            ; preds = %bb.a
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hr = tail call noundef i128 @_ZN5boost6random6detail20generate_uniform_intIN5folly12xoshiro256ppIjDv4_yEEnEET0_RT_S7_S7_NS_17integral_constantIbLb1EEE(ptr noundef nonnull align 32 dereferenceable(1288) %i.hq, i128 noundef -9223372036854775808, i128 noundef 9223372036854775807)
  tail call void @_ZSt9to_stringB5cxx11n(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i128 noundef %i.hr)
  br label %bb.cc

bb.be:                                            ; preds = %bb.a
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 3 uses
  %.pre.i.i = load i64, ptr %i.ht, align 32, !tbaa !54
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i, %bb.be
  %i.hu = phi i64 [ %i.hx, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i ], [ %.pre.i.i, %bb.be ] ; 2 uses
  %i.hv = icmp eq i64 %i.hu, 64
  br i1 %i.hv, label %bb.bg, label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i, !prof !57

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZN5folly12xoshiro256ppIjDv4_yE4calcEv(ptr noundef nonnull align 32 dereferenceable(1288) %i.hs) #42, !inline_history !619
  %.pre.i.i.i = load i64, ptr %i.ht, align 32, !tbaa !54
  br label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i

_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i:     ; preds = %bb.bg, %bb.bf
  %i.hw = phi i64 [ %i.hu, %bb.bf ], [ %.pre.i.i.i, %bb.bg ] ; 2 uses
  %i.hx = add i64 %i.hw, 1                        ; 2 uses
  store i64 %i.hx, ptr %i.ht, align 32, !tbaa !54
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hw
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !37
  %i.ia = uitofp i32 %i.hz to float
  %i.ib = fmul nnan float %i.ia, f0x2F800000
  %i.ic = fmul nnan float %i.ib, 2.000000e+06
  %i.id = fadd float %i.ic, -1.000000e+06         ; 2 uses
  %i.ie = fcmp uge float %i.id, 1.000000e+06
  br i1 %i.ie, label %bb.bf, label %_ZN5boost6random6detail21generate_uniform_realIN5folly12xoshiro256ppIjDv4_yEEfEET0_RT_S7_S7_.exit

_ZN5boost6random6detail21generate_uniform_realIN5folly12xoshiro256ppIjDv4_yEEfEET0_RT_S7_S7_.exit: ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i
  %i.if = fpext float %i.id to double
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull @vsnprintf, i64 noundef 58, ptr noundef nonnull @.str.163, double noundef %i.if)
  br label %bb.cc

bb.bh:                                            ; preds = %bb.a
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 3 uses
  %.pre.i.i113 = load i64, ptr %i.ih, align 32, !tbaa !54
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i114, %bb.bh
  %i.ii = phi i64 [ %i.il, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i114 ], [ %.pre.i.i113, %bb.bh ] ; 2 uses
  %i.ij = icmp eq i64 %i.ii, 64
  br i1 %i.ij, label %bb.bj, label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i114, !prof !57

bb.bj:                                            ; preds = %bb.bi
  tail call void @_ZN5folly12xoshiro256ppIjDv4_yE4calcEv(ptr noundef nonnull align 32 dereferenceable(1288) %i.ig) #42, !inline_history !194
  %.pre.i.i.i115 = load i64, ptr %i.ih, align 32, !tbaa !54
  br label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i114

_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i114:  ; preds = %bb.bj, %bb.bi
  %i.ik = phi i64 [ %i.ii, %bb.bi ], [ %.pre.i.i.i115, %bb.bj ] ; 2 uses
  %i.il = add i64 %i.ik, 1                        ; 2 uses
  store i64 %i.il, ptr %i.ih, align 32, !tbaa !54
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ik
end_hunk_0
