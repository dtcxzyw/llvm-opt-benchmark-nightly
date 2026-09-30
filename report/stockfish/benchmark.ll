Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/benchmark?download=true
inline.NumInlined: 1289
inline.NumDeleted: 285
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9Stockfish9Benchmark11setup_benchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSi:bb.a
bb.r:                                             ; preds = %.critedge48
  %i.dg = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.dh = load i64, ptr %i.m, align 8, !tbaa !35  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i64 %i.dh, ptr %i.e, align 8, !tbaa !16
  %i.di = icmp ugt i64 %i.dh, 15
  br i1 %i.di, label %bb.s, label %._crit_edge.i.i76

bb.s:                                             ; preds = %bb.r
  %i.dj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #18 ; 2 uses
  store ptr %i.dj, ptr %10, align 8, !tbaa !31
  %i.dk = load i64, ptr %i.e, align 8, !tbaa !16
  store i64 %i.dk, ptr %i.df, align 8, !tbaa !32
  br label %._crit_edge.i.i76

._crit_edge.i.i76:                                ; preds = %bb.s, %bb.r
  %i.dl = phi ptr [ %i.dj, %bb.s ], [ %i.df, %bb.r ] ; 2 uses
  switch i64 %i.dh, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %.critedge50
  ]

bb.t:                                             ; preds = %._crit_edge.i.i76
  %i.dm = load i8, ptr %i.dg, align 1, !tbaa !32
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !32
  br label %.critedge50

bb.u:                                             ; preds = %._crit_edge.i.i76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr align 1 %i.dg, i64 %i.dh, i1 false)
  br label %.critedge50

.critedge50.thread:                               ; preds = %.critedge48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.df, ptr noundef nonnull align 1 dereferenceable(5) @.str.317, i64 5, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 5, ptr %i.dn, align 8, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 21
  store i8 0, ptr %i.do, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread182

.critedge50:                                      ; preds = %._crit_edge.i.i76, %bb.t, %bb.u
  %i.dp = load i64, ptr %i.e, align 8, !tbaa !16  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !35
  %i.dr = load ptr, ptr %10, align 8, !tbaa !31
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dp
  store i8 0, ptr %i.ds, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %.pre = load i64, ptr %i.dq, align 8, !tbaa !35 ; 2 uses
  %.pre191.pre = load ptr, ptr %10, align 8, !tbaa !31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.dt = icmp eq i64 %.pre, 4
  br i1 %i.dt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread182

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.critedge50
  %i.du = load i32, ptr %.pre191.pre, align 1
  %i.dv = icmp ne i32 %i.du, 1818326629
  %i.dw = zext i1 %i.dv to i32
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread182

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.dy, ptr %11, align 8, !tbaa !34
  store i32 1818326629, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 4, ptr %i.dz, align 8, !tbaa !35
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i8 0, ptr %i.ea, align 4, !tbaa !32
  br label %bb.ab

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread182: ; preds = %.critedge50.thread, %.critedge50, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.eb = phi i64 [ 5, %.critedge50.thread ], [ %.pre, %.critedge50 ], [ 4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 3 uses
  %.pre191283 = phi ptr [ %i.df, %.critedge50.thread ], [ %.pre191.pre, %.critedge50 ], [ %.pre191.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.ec, ptr %13, align 8, !tbaa !34, !alias.scope !85
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.ed, align 8, !tbaa !35, !alias.scope !85
  store i8 0, ptr %i.ec, align 8, !tbaa !32, !alias.scope !85
  %i.ee = add i64 %i.eb, 3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.ee) #18
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !35, !alias.scope !85
  %i.eg = add i64 %i.ef, -4611686018427387901
  %i.eh = icmp ult i64 %i.eg, 3
  br i1 %i.eh, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.v:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread182
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.333) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread182
  %i.ei = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.319, i64 noundef 3) #18 ; 0 uses
  %i.ej = load i64, ptr %i.ed, align 8, !tbaa !35, !alias.scope !85
  %i.ek = sub i64 4611686018427387903, %i.ej
  %i.el = icmp ult i64 %i.ek, %i.eb
  br i1 %i.el, label %bb.w, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.333) #23
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.em = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %.pre191283, i64 noundef %i.eb) #18 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.en = load i64, ptr %i.ed, align 8, !tbaa !35, !noalias !86
  %i.eo = icmp eq i64 %i.en, 4611686018427387903
  br i1 %i.eo, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.x:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.333) #23, !noalias !86
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ep = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.320, i64 noundef 1) #18, !noalias !86 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.eq, ptr %12, align 8, !tbaa !34, !alias.scope !86
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !31 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 5 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !35 ; 3 uses
  %i.ew = icmp ult i64 %i.ev, 16
  call void @llvm.assume(i1 %i.ew)
  %i.ex = add nuw nsw i64 %i.ev, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eq, ptr noundef nonnull align 8 dereferenceable(1) %i.es, i64 %i.ex, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.er, ptr %12, align 8, !tbaa !31, !alias.scope !86
  %i.ey = load i64, ptr %i.es, align 8, !tbaa !32
  store i64 %i.ey, ptr %i.eq, align 8, !tbaa !32, !alias.scope !86
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !35
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ez = phi i64 [ %i.ev, %bb.y ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.ez, ptr %i.fb, align 8, !tbaa !35, !alias.scope !86
  store ptr %i.es, ptr %i.ep, align 8, !tbaa !31
  store i64 0, ptr %i.fa, align 8, !tbaa !35
  store i8 0, ptr %i.es, align 8, !tbaa !32
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !35, !noalias !87 ; 2 uses
  %i.fe = load i64, ptr %i.fb, align 8, !tbaa !35, !noalias !87
  %i.ff = sub i64 4611686018427387903, %i.fe
  %i.fg = icmp ult i64 %i.ff, %i.fd
  br i1 %i.fg, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.z:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.333) #23, !noalias !87
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.fh = load ptr, ptr %8, align 8, !tbaa !31, !noalias !87
  %i.fi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.fh, i64 noundef %i.fd) #18, !noalias !87 ; 6 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.fj, ptr %11, align 8, !tbaa !34, !alias.scope !87
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !31 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 5 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !35 ; 3 uses
  %i.fp = icmp ult i64 %i.fo, 16
  call void @llvm.assume(i1 %i.fp)
  %i.fq = add nuw nsw i64 %i.fo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fj, ptr noundef nonnull align 8 dereferenceable(1) %i.fl, i64 %i.fq, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.fk, ptr %11, align 8, !tbaa !31, !alias.scope !87
  %i.fr = load i64, ptr %i.fl, align 8, !tbaa !32
  store i64 %i.fr, ptr %i.fj, align 8, !tbaa !32, !alias.scope !87
  %.phi.trans.insert.i83 = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.pre.i84 = load i64, ptr %.phi.trans.insert.i83, align 8, !tbaa !35
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  %i.fs = phi i64 [ %i.fo, %bb.aa ], [ %.pre.i84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.fs, ptr %i.fu, align 8, !tbaa !35, !alias.scope !87
  store ptr %i.fl, ptr %i.fi, align 8, !tbaa !31
  store i64 0, ptr %i.ft, align 8, !tbaa !35
  store i8 0, ptr %i.fl, align 8, !tbaa !32
  br label %bb.ab

bb.ab:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.fv = phi i1 [ false, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %i.fw = load ptr, ptr %4, align 8, !tbaa !31    ; 6 uses
  %19 = icmp eq ptr %i.fw, %i.j
  %i.fx = load ptr, ptr %11, align 8, !tbaa !31   ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy                ; 2 uses
  br i1 %19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ab
  br i1 %i.fz, label %bb.ac, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ab
  br i1 %i.fz, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !35 ; 3 uses
  %i.gc = icmp ult i64 %i.gb, 16
  call void @llvm.assume(i1 %i.gc)
  switch i64 %i.gb, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.gd = load i8, ptr %i.fx, align 1, !tbaa !32
  store i8 %i.gd, ptr %i.fw, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fw, ptr align 1 %i.fx, i64 %i.gb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.ge = load i64, ptr %i.ga, align 8, !tbaa !35 ; 2 uses
  store i64 %i.ge, ptr %i.k, align 8, !tbaa !35
  %i.gf = load ptr, ptr %4, align 8, !tbaa !31
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ge
  store i8 0, ptr %i.gg, align 1, !tbaa !32
  %.pre.i86 = load ptr, ptr %11, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.fx, ptr %4, align 8, !tbaa !31
  %i.gh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gi = load <2 x i64>, ptr %i.gh, align 8, !tbaa !32
  store <2 x i64> %i.gi, ptr %i.k, align 8, !tbaa !32
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.gj = load i64, ptr %i.j, align 8, !tbaa !32
  store ptr %i.fx, ptr %4, align 8, !tbaa !31
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gl = load <2 x i64>, ptr %i.gk, align 8, !tbaa !32
  store <2 x i64> %i.gl, ptr %i.k, align 8, !tbaa !32
  %.not.i85 = icmp eq ptr %i.fw, null
  br i1 %.not.i85, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fw, ptr %11, align 8, !tbaa !31
  store i64 %i.gj, ptr %i.fy, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.fy, ptr %11, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.af, %bb.ag
  %i.gm = phi ptr [ %i.fw, %bb.af ], [ %i.fy, %bb.ag ], [ %.pre.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.gn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.gn, align 8, !tbaa !35
  store i8 0, ptr %i.gm, align 1, !tbaa !32
  %i.go = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !32
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  br i1 %i.fv, label %.critedge57, label %.critedge52

.critedge52:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gt = load ptr, ptr %12, align 8, !tbaa !31   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %.critedge52
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !32
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %.critedge52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  %i.gy = load ptr, ptr %13, align 8, !tbaa !31   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !32
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %.critedge57

.critedge57:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !35
  %cond186 = icmp eq i64 %i.he, 7
  br i1 %cond186, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97.thread184

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95: ; preds = %.critedge57
  %i.hf = load ptr, ptr %9, align 8, !tbaa !31    ; 4 uses
  %i.hg = load i32, ptr %i.hf, align 1
  %i.hh = xor i32 %i.hg, 1634100580
  %i.hi = getelementptr i8, ptr %i.hf, i64 3
  %i.hj = load i32, ptr %i.hi, align 1
  %i.hk = xor i32 %i.hj, 1953264993
  %i.hl = or i32 %i.hh, %i.hk
  %i.hm = icmp ne i32 %i.hl, 0
  %i.hn = zext i1 %i.hm to i32
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95
  %i.hp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_18DefaultsB5cxx11E) ; 0 uses
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95
  %i.hq = load i32, ptr %i.hf, align 1
  %i.hr = xor i32 %i.hq, 1920103779
  %i.hs = getelementptr i8, ptr %i.hf, i64 3
  %i.ht = load i32, ptr %i.hs, align 1
  %i.hu = xor i32 %i.ht, 1953391986
  %i.hv = or i32 %i.hr, %i.hu
  %i.hw = icmp ne i32 %i.hv, 0
  %i.hx = zext i1 %i.hw to i32
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97.thread184

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !27 ; 8 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !33
  %.not.i98 = icmp eq ptr %i.ia, %i.ic
  br i1 %.not.i98, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97.thread
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 16 ; 3 uses
  store ptr %i.id, ptr %i.ia, align 8, !tbaa !34
  %i.ie = load ptr, ptr %1, align 8, !tbaa !31    ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i64 %i.ig, ptr %i.d, align 8, !tbaa !16
  %i.ih = icmp ugt i64 %i.ig, 15
  br i1 %i.ih, label %bb.ai, label %._crit_edge.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.ii = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ia, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #18 ; 2 uses
  store ptr %i.ii, ptr %i.ia, align 8, !tbaa !31
  %i.ij = load i64, ptr %i.d, align 8, !tbaa !16
  store i64 %i.ij, ptr %i.id, align 8, !tbaa !32
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ai, %bb.ah
  %i.ik = phi ptr [ %i.ii, %bb.ai ], [ %i.id, %bb.ah ] ; 2 uses
  switch i64 %i.ig, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i
  %i.il = load i8, ptr %i.ie, align 1, !tbaa !32
  store i8 %i.il, ptr %i.ik, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ik, ptr align 1 %i.ie, i64 %i.ig, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i
  %i.im = load i64, ptr %i.d, align 8, !tbaa !16  ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store i64 %i.im, ptr %i.in, align 8, !tbaa !35
  %i.io = load ptr, ptr %i.ia, align 8, !tbaa !31
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.im
  store i8 0, ptr %i.ip, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.iq = load ptr, ptr %i.hz, align 8, !tbaa !27
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  store ptr %i.ir, ptr %i.hz, align 8, !tbaa !27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.al:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97.thread
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ia, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97.thread184: ; preds = %.critedge57, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.is = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.is, ptr %14, align 8, !tbaa !34
  %i.it = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 0, ptr %i.it, align 8, !tbaa !35
  store i8 0, ptr %i.is, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %15, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 8)
  %i.iu = getelementptr inbounds nuw i8, ptr %15, i64 120 ; 2 uses
  %i.iv = call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.iu) #20
  br i1 %i.iv, label %.preheader, label %bb.am

.preheader:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97.thread184
  %i.iw = load ptr, ptr %15, align 8, !tbaa !42
  %i.ix = getelementptr i8, ptr %i.iw, i64 -24
  %i.iy = load i64, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds i8, ptr %15, i64 %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 240
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i187 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i187, label %._crit_edge, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.lr.ph: ; preds = %.preheader
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.am:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97.thread184
  %i.je = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.322)
  %i.jf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull align 8 dereferenceable(32) %9)
  %i.jg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.jf) #18, !inline_history !70 ; 0 uses
  call void @exit(i32 noundef 1) #19
end_hunk_0
