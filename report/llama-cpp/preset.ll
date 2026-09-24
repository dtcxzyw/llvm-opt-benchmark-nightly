Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/preset?download=true
inline.NumInlined: 7880
inline.NumDeleted: 3577
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNK13common_preset6to_iniB5cxx11Ev:bb.a
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !52
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25 unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.not148 = icmp eq ptr %i.k, %i.l
  br i1 %.not148, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 18
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %._crit_edge, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %.sroa.079.0149 = phi ptr [ %i.k, %.lr.ph ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.079.0149, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.m, ptr %3, align 8, !tbaa !76
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !78 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.079.0149, i64 288
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !52 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !77
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.af, ptr %3, align 8, !tbaa !78
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !77
  store i64 %i.ag, ptr %i.m, align 8, !tbaa !79
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.c
  %i.ah = phi ptr [ %i.af, %.noexc ], [ %i.m, %bb.c ] ; 2 uses
  switch i64 %i.ad, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %._crit_edge.i.i27
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !79
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !79
  br label %._crit_edge.i.i27

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %._crit_edge.i.i27

._crit_edge.i.i27:                                ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !77  ; 2 uses
  store i64 %i.aj, ptr %i.n, align 8, !tbaa !52
  %i.ak = load ptr, ptr %3, align 8, !tbaa !78
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 0, ptr %i.al, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.o, ptr %4, align 8, !tbaa !76
  store i8 10, ptr %i.o, align 8, !tbaa !79
  store i64 1, ptr %i.p, align 8, !tbaa !52
  store i8 0, ptr %i.w, align 1, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %i.q, ptr %5, align 8, !tbaa !76
  store i16 2652, ptr %i.q, align 8
  store i64 2, ptr %i.r, align 8, !tbaa !52
  store i8 0, ptr %i.x, align 2, !tbaa !79
  invoke void @_Z18string_replace_allRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_S7_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %._crit_edge.i.i27
  %i.am = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.q
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ao = load i64, ptr %i.q, align 8, !tbaa !79
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.aq = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.o
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = load i64, ptr %i.o, align 8, !tbaa !79
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.079.0149, i64 136
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !74
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !75 ; 4 uses
  store ptr %i.s, ptr %7, align 8, !tbaa !76
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.65) #28
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.az = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.az, ptr %i.b, align 8, !tbaa !77
  %i.ba = icmp ugt i64 %i.az, 15
  br i1 %i.ba, label %.noexc.i38, label %._crit_edge.i.i37

.noexc.i38:                                       ; preds = %bb.h
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc40 unwind label %.loopexit ; 2 uses

.noexc40:                                         ; preds = %.noexc.i38
  store ptr %i.bb, ptr %7, align 8, !tbaa !78
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !77
  store i64 %i.bc, ptr %i.s, align 8, !tbaa !79
  br label %._crit_edge.i.i37

._crit_edge.i.i37:                                ; preds = %.noexc40, %bb.h
  %i.bd = phi ptr [ %i.bb, %.noexc40 ], [ %i.s, %bb.h ] ; 2 uses
  switch i64 %i.az, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i37
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !79
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !79
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i37
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr nonnull align 1 %i.ax, i64 %i.az, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i37
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  store i64 %i.bf, ptr %i.t, align 8, !tbaa !52
  %i.bg = load ptr, ptr %7, align 8, !tbaa !78
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  store i8 0, ptr %i.bh, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %.val = load ptr, ptr %7, align 8               ; 2 uses
  %.val24 = load i64, ptr %i.t, align 8           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %.not.i = icmp eq i64 %.val24, 0
  br i1 %.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.l
  %.01.i = phi i64 [ %i.bl, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 %.01.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !79, !noalias !614
  %i.bk = icmp eq i8 %i.bj, 45
  br i1 %i.bk, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.bl = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bl, %.val24
  br i1 %exitcond.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, label %.lr.ph.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %bb.l, %.critedge.i, %bb.k
  %.0.lcssa5.i = phi i64 [ %.01.i, %.critedge.i ], [ 0, %bb.k ], [ %.val24, %bb.l ] ; 2 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !76, !alias.scope !616
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 %.0.lcssa5.i ; 2 uses
  %i.bn = sub nuw i64 %.val24, %.0.lcssa5.i       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !616
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !77, !noalias !616
  %i.bo = icmp ugt i64 %i.bn, 15
  br i1 %i.bo, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.bp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc43 unwind label %.loopexit82 ; 2 uses

.noexc43:                                         ; preds = %.noexc10.i.i.i
  store ptr %i.bp, ptr %6, align 8, !tbaa !78, !alias.scope !616
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !77, !noalias !616
  store i64 %i.bq, ptr %i.u, align 8, !tbaa !79, !alias.scope !616
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.br = phi ptr [ %i.bp, %.noexc43 ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %i.bn, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bs = load i8, ptr %i.bm, align 1, !tbaa !79, !noalias !614
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !79
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr readonly align 1 %i.bm, i64 %i.bn, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !77, !noalias !616 ; 2 uses
  store i64 %i.bt, ptr %i.v, align 8, !tbaa !52, !alias.scope !616
  %i.bu = load ptr, ptr %6, align 8, !tbaa !78, !alias.scope !616
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !616
  %i.bw = load ptr, ptr %6, align 8, !tbaa !78
  %i.bx = load i64, ptr %i.v, align 8, !tbaa !52
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.bw, i64 noundef %i.bx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45 unwind label %bb.r

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45: ; preds = %bb.o
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.5, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45
  %i.ca = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.u
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.cc = load i64, ptr %i.u, align 8, !tbaa !79
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.ce = load ptr, ptr %7, align 8, !tbaa !78    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.s
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.cg = load i64, ptr %i.s, align 8, !tbaa !79
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ci = load ptr, ptr %3, align 8, !tbaa !78
  %i.cj = load i64, ptr %i.n, align 8, !tbaa !52
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ci, i64 noundef %i.cj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit55 unwind label %bb.s

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit55
  %i.cm = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.m
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.co = load i64, ptr %i.m, align 8, !tbaa !79
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.cq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.079.0149) #30 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.l
  br i1 %.not, label %._crit_edge, label %bb.c

bb.p:                                             ; preds = %.noexc.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.q:                                             ; preds = %._crit_edge.i.i27
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.q
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.q
  %i.cv = load i64, ptr %i.q, align 8, !tbaa !79
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.cx = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.cz = load i64, ptr %i.o, align 8, !tbaa !79
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.t

.loopexit:                                        ; preds = %.noexc.i38
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

.loopexit82:                                      ; preds = %.noexc10.i.i.i
  %lpad.loopexit84 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.r:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45, %bb.o
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.u
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.r
  %i.de = load i64, ptr %i.u, align 8, !tbaa !79
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %.loopexit82
  %.pn17 = phi { ptr, i32 } [ %lpad.loopexit84, %.loopexit82 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.db, %bb.r ] ; 2 uses
  %i.dg = load ptr, ptr %7, align 8, !tbaa !78    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.s
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.di = load i64, ptr %i.s, align 8, !tbaa !79
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %.pn17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.t

bb.s:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %.pn20 = phi { ptr, i32 } [ %i.dk, %bb.s ], [ %.pn17.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ] ; 2 uses
  %i.dl = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.m
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.t
  %i.dn = load i64, ptr %i.m, align 8, !tbaa !79
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.p
  %.pn20.pn = phi { ptr, i32 } [ %i.cr, %bb.p ], [ %.pn20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %.pn20, %bb.t ]
end_hunk_0
begin_hunk_1_@_ZN21common_preset_contextC2E13llama_example:bb.a

bb.bo:                                            ; preds = %bb.bi
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 192 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !241 ; 3 uses
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = sub i64 %i.kb, %i.jq                    ; 5 uses
  %.not24.i46 = icmp ult i64 %i.kc, %i.jl
  br i1 %.not24.i46, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kd = icmp sgt i64 %i.jl, 8
  br i1 %i.kd, label %bb.bq, label %bb.br, !prof !243

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jo, ptr align 8 %i.ji, i64 %i.jl, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKcSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i47

bb.br:                                            ; preds = %bb.bp
  %i.ke = icmp eq i64 %i.jl, 8
  br i1 %i.ke, label %bb.bs, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKcSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i47

bb.bs:                                            ; preds = %bb.br
  %i.kf = load ptr, ptr %i.ji, align 8, !tbaa !75
  store ptr %i.kf, ptr %i.jo, align 8, !tbaa !75
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKcSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i47

bb.bt:                                            ; preds = %bb.bo
  %i.kg = icmp sgt i64 %i.kc, 8
  br i1 %i.kg, label %bb.bu, label %bb.bv, !prof !243

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jo, ptr align 8 %i.ji, i64 %i.kc, i1 false)
  %.pre.i51 = load ptr, ptr %i.au, align 8, !tbaa !230
  %.pre25.i52 = load ptr, ptr %i.jz, align 8, !tbaa !241 ; 2 uses
  %.pre26.i53 = load ptr, ptr %i.jg, align 8, !tbaa !230
  %.pre27.i54 = load ptr, ptr %i.bb, align 8, !tbaa !241
  %.pre28.i55 = ptrtoint ptr %.pre25.i52 to i64
  %.pre29.i56 = ptrtoint ptr %.pre26.i53 to i64
  %.pre31.i57 = sub i64 %.pre28.i55, %.pre29.i56
  %.pre33.i58 = ptrtoint ptr %.pre27.i54 to i64
  br label %_ZSt4copyIPPKcS2_ET0_T_S4_S3_.exit.i48

bb.bv:                                            ; preds = %bb.bt
  %i.kh = icmp eq i64 %i.kc, 8
  br i1 %i.kh, label %bb.bw, label %_ZSt4copyIPPKcS2_ET0_T_S4_S3_.exit.i48

bb.bw:                                            ; preds = %bb.bv
  %i.ki = load ptr, ptr %i.ji, align 8, !tbaa !75
  store ptr %i.ki, ptr %i.jo, align 8, !tbaa !75
  br label %_ZSt4copyIPPKcS2_ET0_T_S4_S3_.exit.i48

_ZSt4copyIPPKcS2_ET0_T_S4_S3_.exit.i48:           ; preds = %bb.bw, %bb.bv, %bb.bu
  %.pre-phi34.i49 = phi i64 [ %.pre33.i58, %bb.bu ], [ %i.jj, %bb.bv ], [ %i.jj, %bb.bw ]
  %.pre-phi32.i50 = phi i64 [ %.pre31.i57, %bb.bu ], [ %i.kc, %bb.bv ], [ 8, %bb.bw ]
  %i.kj = phi ptr [ %.pre25.i52, %bb.bu ], [ %i.ka, %bb.bv ], [ %i.ka, %bb.bw ] ; 2 uses
  %i.kk = phi ptr [ %.pre.i51, %bb.bu ], [ %i.ji, %bb.bv ], [ %i.ji, %bb.bw ]
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.pre-phi32.i50 ; 3 uses
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = sub i64 %.pre-phi34.i49, %i.km          ; 3 uses
  %i.ko = icmp sgt i64 %i.kn, 8
  br i1 %i.ko, label %bb.bx, label %bb.by, !prof !243

bb.bx:                                            ; preds = %_ZSt4copyIPPKcS2_ET0_T_S4_S3_.exit.i48
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kj, ptr align 8 %i.kl, i64 %i.kn, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKcSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i47

bb.by:                                            ; preds = %_ZSt4copyIPPKcS2_ET0_T_S4_S3_.exit.i48
  %i.kp = icmp eq i64 %i.kn, 8
  br i1 %i.kp, label %bb.bz, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKcSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i47

bb.bz:                                            ; preds = %bb.by
  %i.kq = load ptr, ptr %i.kl, align 8, !tbaa !75
  store ptr %i.kq, ptr %i.kj, align 8, !tbaa !75
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKcSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i47

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKcSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i47: ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bs, %bb.br, %bb.bq, %_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m.exit.i62
  %i.kr = load ptr, ptr %i.jg, align 8, !tbaa !230
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.jl
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 192
  store ptr %i.ks, ptr %i.kt, align 8, !tbaa !241
  br label %.noexc28.i

.noexc28.i:                                       ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKcSt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i47, %.noexc27.i
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ku, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 232
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.kv, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %bb.ca unwind label %.loopexit159

bb.ca:                                            ; preds = %.noexc28.i
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kw, ptr noundef nonnull align 8 dereferenceable(48) %i.ax, i64 48, i1 false)
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.05.035.i, i64 32 ; 2 uses
  %.not12.i = icmp eq ptr %i.kx, %i.ap
  br i1 %.not12.i, label %._crit_edge.i, label %bb.h

.loopexit159:                                     ; preds = %.critedge.i.i, %.noexc28.i, %_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm.exit.i.i59, %_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm.exit.i.i80
  %lpad.loopexit161 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp160:                            ; preds = %.invoke
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit159, %.loopexit.split-lp160, %bb.an, %bb.n, %bb.af, %bb.t
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.eu, %bb.t ], [ %i.gq, %bb.af ], [ %i.hn, %bb.an ], [ %i.eb, %bb.n ], [ %lpad.loopexit161, %.loopexit159 ], [ %lpad.loopexit.split-lp162, %.loopexit.split-lp160 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !635
  br label %.body

.split.i:                                         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ky = load ptr, ptr %9, align 8, !tbaa !84, !noalias !635 ; 3 uses
  %i.kz = load ptr, ptr %i.ad, align 8, !tbaa !84, !noalias !635 ; 2 uses
  %.not1336.i = icmp eq ptr %i.ky, %i.kz
  br i1 %.not1336.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i38.i, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %.split.i
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.09.042.i, i64 16
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.09.042.i, i64 40
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.09.042.i, i64 48
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.09.042.i, i64 96 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.09.042.i, i64 120 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.09.042.i, i64 144
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.09.042.i, i64 168
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.09.042.i, i64 200
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.09.042.i, i64 64
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.09.042.i, i64 88
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.09.042.i, i64 104 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.09.042.i, i64 128 ; 2 uses
  br label %bb.cd

._crit_edge39.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pre47.i = load ptr, ptr %9, align 8, !tbaa !85, !noalias !635 ; 3 uses
  %.pre48.i = load ptr, ptr %i.ad, align 8, !tbaa !82, !noalias !635 ; 2 uses
  %.not4.i.i.i30.i = icmp eq ptr %.pre47.i, %.pre48.i
  br i1 %.not4.i.i.i30.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i38.i, label %.lr.ph.i.i.i31.i

.lr.ph.i.i.i31.i:                                 ; preds = %._crit_edge39.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i34.i
  %.05.i.i.i32.i = phi ptr [ %i.lr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i34.i ], [ %.pre47.i, %._crit_edge39.i ] ; 3 uses
  %i.lm = load ptr, ptr %.05.i.i.i32.i, align 8, !tbaa !78 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.05.i.i.i32.i, i64 16 ; 2 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33.i: ; preds = %.lr.ph.i.i.i31.i
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !79
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lq) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i34.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i34.i: ; preds = %.lr.ph.i.i.i31.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33.i
  %i.lr = getelementptr inbounds nuw i8, ptr %.05.i.i.i32.i, i64 32 ; 2 uses
  %.not.i.i.i35.i = icmp eq ptr %i.lr, %.pre48.i
  br i1 %.not.i.i.i35.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i36.i, label %.lr.ph.i.i.i31.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i36.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i34.i
  %.pr.i37.i = load ptr, ptr %9, align 8, !tbaa !85, !noalias !635
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i38.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i38.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i36.i, %._crit_edge39.i, %.split.i
  %i.ls = phi ptr [ %.pr.i37.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i36.i ], [ %.pre47.i, %._crit_edge39.i ], [ %i.ky, %.split.i ] ; 3 uses
  %.not.i.i1.i39.i = icmp eq ptr %i.ls, null
  br i1 %.not.i.i1.i39.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit41.i, label %bb.cb

bb.cb:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i38.i
  %i.lt = load ptr, ptr %i.aj, align 8, !tbaa !83, !noalias !635
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = ptrtoint ptr %i.ls to i64
  %i.lw = sub i64 %i.lu, %i.lv
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.lw) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit41.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit41.i: ; preds = %bb.cb, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !635
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.09.042.i, i64 248 ; 2 uses
  %.not.i = icmp eq ptr %i.lx, %.val7
  br i1 %.not.i, label %_ZL15get_map_key_optB5cxx11R21common_params_context.exit, label %bb.d

bb.cc:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.lr.ph38.i
  %.sroa.01.037.i = phi ptr [ %i.ky, %.lr.ph38.i ], [ %i.vv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !635
  %.val.i = load ptr, ptr %.sroa.01.037.i, align 8 ; 2 uses
  %i.lz = getelementptr i8, ptr %.sroa.01.037.i, i64 8
  %.val24.i = load i64, ptr %i.lz, align 8        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %.not.i.i = icmp eq i64 %.val24.i, 0
  br i1 %.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cd, %bb.ce
  %.01.i.i = phi i64 [ %i.md, %bb.ce ], [ 0, %bb.cd ] ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.01.i.i
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !79, !noalias !639
  %i.mc = icmp eq i8 %i.mb, 45
  br i1 %i.mc, label %bb.ce, label %.critedge.i42.i

bb.ce:                                            ; preds = %.lr.ph.i.i
  %i.md = add nuw i64 %.01.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.md, %.val24.i
  br i1 %exitcond.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i, label %.lr.ph.i.i, !llvm.loop !1

.critedge.i42.i:                                  ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i: ; preds = %bb.ce, %.critedge.i42.i, %bb.cd
  %.0.lcssa5.i.i = phi i64 [ %.01.i.i, %.critedge.i42.i ], [ 0, %bb.cd ], [ %.val24.i, %bb.ce ] ; 2 uses
  store ptr %i.ae, ptr %10, align 8, !tbaa !76, !alias.scope !641, !noalias !635
  %i.me = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.0.lcssa5.i.i ; 2 uses
  %i.mf = sub nuw i64 %.val24.i, %.0.lcssa5.i.i   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !642
  store i64 %i.mf, ptr %i.b, align 8, !tbaa !77, !noalias !642
  %i.mg = icmp ugt i64 %i.mf, 15
  br i1 %i.mg, label %.noexc10.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc10.i.i.i.i:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i
  %i.mh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc44.i unwind label %.loopexit.i ; 2 uses

.noexc44.i:                                       ; preds = %.noexc10.i.i.i.i
  store ptr %i.mh, ptr %10, align 8, !tbaa !78, !alias.scope !641, !noalias !635
  %i.mi = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !642
  store i64 %i.mi, ptr %i.ae, align 8, !tbaa !79, !alias.scope !641, !noalias !635
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc44.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i
  %i.mj = phi ptr [ %i.mh, %.noexc44.i ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i ] ; 2 uses
  switch i64 %i.mf, label %bb.cg [
    i64 1, label %bb.cf
    i64 0, label %bb.ch
  ]

bb.cf:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.mk = load i8, ptr %i.me, align 1, !tbaa !79, !noalias !639
  store i8 %i.mk, ptr %i.mj, align 1, !tbaa !79
  br label %bb.ch

bb.cg:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mj, ptr readonly align 1 %i.me, i64 %i.mf, i1 false)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %._crit_edge.i.i.i.i.i
  %i.ml = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !642 ; 2 uses
  store i64 %i.ml, ptr %i.af, align 8, !tbaa !52, !alias.scope !641, !noalias !635
  %i.mm = load ptr, ptr %10, align 8, !tbaa !78, !alias.scope !641, !noalias !635
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.ml
  store i8 0, ptr %i.mn, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !642
  %i.mo = load ptr, ptr %i.u, align 8, !tbaa !93, !alias.scope !635 ; 2 uses
  %.not10.i.i.i.i45.i = icmp eq ptr %i.mo, null
  br i1 %.not10.i.i.i.i45.i, label %.critedge.i66.i, label %.lr.ph.i.i.i.i46.i

.lr.ph.i.i.i.i46.i:                               ; preds = %bb.ch
  %i.mp = load i64, ptr %i.af, align 8, !tbaa !52, !noalias !635 ; 4 uses
  %i.mq = load ptr, ptr %10, align 8, !noalias !635 ; 2 uses
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i52.i, %.lr.ph.i.i.i.i46.i
  %.012.i.i.i.i47.i = phi ptr [ %i.mo, %.lr.ph.i.i.i.i46.i ], [ %.1.i.i.i.i57.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i52.i ] ; 6 uses
  %.0811.i.i.i.i48.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i46.i ], [ %.19.i.i.i.i54.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i52.i ] ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i47.i, i64 40
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !52 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i49.i = call i64 @llvm.umin.i64(i64 %i.mp, i64 %i.ms) ; 2 uses
  %i.mt = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i49.i, 0
  br i1 %i.mt, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i72.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i50.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i50.i: ; preds = %bb.ci
  %i.mu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i47.i, i64 32
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !78
  %i.mw = call i32 @memcmp(ptr noundef %i.mv, ptr noundef %i.mq, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i49.i) #27 ; 2 uses
  %.not.i.i.i.i.i.i.i51.i = icmp eq i32 %i.mw, 0
  br i1 %.not.i.i.i.i.i.i.i51.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i72.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i52.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i72.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i50.i, %bb.ci
  %i.mx = sub i64 %i.ms, %i.mp
  %spec.select7.i.i.i.i.i.i.i.i73.i = call i64 @llvm.smax.i64(i64 %i.mx, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i74.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i73.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i75.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i74.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i52.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i52.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i72.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i50.i
  %.0.i.i.i.i.i.i.i53.i = phi i32 [ %i.mw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i50.i ], [ %.0.i6.i.i.i.i.i.i.i75.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i72.i ]
  %i.my = icmp slt i32 %.0.i.i.i.i.i.i.i53.i, 0   ; 4 uses
  %.19.i.i.i.i54.i = select i1 %i.my, ptr %.0811.i.i.i.i48.i, ptr %.012.i.i.i.i47.i ; 5 uses
  %.1.in.v.i.i.i.i55.i = select i1 %i.my, i64 24, i64 16
  %.1.in.i.i.i.i56.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i47.i, i64 %.1.in.v.i.i.i.i55.i
  %.1.i.i.i.i57.i = load ptr, ptr %.1.in.i.i.i.i56.i, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i.i58.i = icmp eq ptr %.1.i.i.i.i57.i, null
  br i1 %.not.i.i.i.i58.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.i59.i, label %bb.ci, !llvm.loop !630

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.i59.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i52.i
  %i.mz = icmp eq ptr %.19.i.i.i.i54.i, %i.t
  br i1 %i.mz, label %.critedge.i66.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.i59.i
  %.19.i.i.i.i54.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.my, ptr %.0811.i.i.i.i48.i, ptr %.012.i.i.i.i47.i
  %.19.i.i.i.i54.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i54.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.na = load i64, ptr %.19.i.i.i.i54.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !52 ; 2 uses
  %.sroa.speculated.i.i.i.i60.i = call i64 @llvm.umin.i64(i64 %i.na, i64 %i.mp) ; 2 uses
  %i.nb = icmp eq i64 %.sroa.speculated.i.i.i.i60.i, 0
  br i1 %i.nb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i68.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i61.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i61.i: ; preds = %bb.cj
  %.19.i.i.i.i54.i.sroa.sel151.v.sroa.sel.v.sroa.sel.v = select i1 %i.my, ptr %.0811.i.i.i.i48.i, ptr %.012.i.i.i.i47.i
  %.19.i.i.i.i54.i.sroa.sel151.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i54.i.sroa.sel151.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.nc = load ptr, ptr %.19.i.i.i.i54.i.sroa.sel151.v.sroa.sel.v.sroa.sel, align 8, !tbaa !78
  %i.nd = call i32 @memcmp(ptr noundef %i.mq, ptr noundef %i.nc, i64 noundef %.sroa.speculated.i.i.i.i60.i) #27 ; 2 uses
  %.not.i.i.i4.i62.i = icmp eq i32 %i.nd, 0
  br i1 %.not.i.i.i4.i62.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i68.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i63.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i68.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i61.i, %bb.cj
  %i.ne = sub i64 %i.mp, %i.na
  %spec.select7.i.i.i.i.i69.i = call i64 @llvm.smax.i64(i64 %i.ne, i64 -2147483648)
  %.08.i.i.i.i.i70.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i69.i, i64 2147483647)
  %.0.i6.i.i.i.i71.i = trunc nsw i64 %.08.i.i.i.i.i70.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i63.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i63.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i68.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i61.i
  %.0.i.i.i.i64.i = phi i32 [ %i.nd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i61.i ], [ %.0.i6.i.i.i.i71.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i68.i ]
  %i.nf = icmp slt i32 %.0.i.i.i.i64.i, 0
  br i1 %i.nf, label %.critedge.i66.i, label %bb.cx

.critedge.i66.i:                                  ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i63.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.i59.i, %bb.ch
  %.08.lcssa.i.i.i12.i67.i = phi ptr [ %.19.i.i.i.i54.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i63.i ], [ %.19.i.i.i.i54.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.i59.i ], [ %i.t, %bb.ch ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !635
  store ptr %11, ptr %5, align 8, !tbaa !636, !noalias !635
  %i.ng = invoke noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #32
          to label %.noexc112.i unwind label %.loopexit ; 31 uses

.noexc112.i:                                      ; preds = %.critedge.i66.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 32 ; 6 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 48 ; 7 uses
  store ptr %i.ni, ptr %i.nh, align 8, !tbaa !76
  %i.nj = load ptr, ptr %10, align 8, !tbaa !78   ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.ae
  br i1 %i.nk, label %bb.ck, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41

bb.ck:                                            ; preds = %.noexc112.i
  %i.nl = load i64, ptr %i.af, align 8, !tbaa !52 ; 3 uses
  %i.nm = icmp ult i64 %i.nl, 16
  call void @llvm.assume(i1 %i.nm)
  %i.nn = add nuw nsw i64 %i.nl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ni, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.nn, i1 false)
  br label %_ZNSt8_Rb_treeI13llama_exampleS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE10_M_insert_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41: ; preds = %.noexc112.i
  store ptr %i.nj, ptr %i.nh, align 8, !tbaa !78
  %i.no = load i64, ptr %i.ae, align 8, !tbaa !79
  store i64 %i.no, ptr %i.ni, align 8, !tbaa !79
  %.pre = load i64, ptr %i.af, align 8, !tbaa !52
  br label %_ZNSt8_Rb_treeI13llama_exampleS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE10_M_insert_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeI13llama_exampleS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE10_M_insert_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41, %bb.ck
  %i.np = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41 ], [ %i.nl, %bb.ck ]
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ng, i64 40 ; 2 uses
  store i64 %i.np, ptr %i.nq, align 8, !tbaa !52
  store ptr %i.ae, ptr %10, align 8, !tbaa !78
  store i64 0, ptr %i.af, align 8, !tbaa !52
  store i8 0, ptr %i.ae, align 8, !tbaa !79
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ng, i64 64 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ng, i64 72 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ng, i64 80
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ng, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.nr, i8 0, i64 248, i1 false)
  store ptr %i.ns, ptr %i.nu, align 8, !tbaa !57
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ng, i64 96
  store ptr %i.ns, ptr %i.nv, align 8, !tbaa !100
  %i.nw = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %_ZNSt8_Rb_treeI13llama_exampleS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE17_M_insert_unique_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_ESt23_Rb_tree_const_iteratorIS0_EOT_RT0_.exit.i.i unwind label %.body115 ; 2 uses

_ZNSt8_Rb_treeI13llama_exampleS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE17_M_insert_unique_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_ESt23_Rb_tree_const_iteratorIS0_EOT_RT0_.exit.i.i: ; preds = %_ZNSt8_Rb_treeI13llama_exampleS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE10_M_insert_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i.i
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ng, i64 104 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 32
  store i32 2, ptr %i.ny, align 4, !tbaa !226
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext true, ptr noundef nonnull %i.nw, ptr noundef nonnull %i.ns, ptr noundef nonnull align 8 dereferenceable(32) %i.ns) #27
  %i.nz = load i64, ptr %i.nx, align 8, !tbaa !97
  %i.oa = add i64 %i.nz, 1
  store i64 %i.oa, ptr %i.nx, align 8, !tbaa !97
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ng, i64 112 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ng, i64 120 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ng, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ob, i8 0, i64 24, i1 false)
  store ptr %i.oc, ptr %i.od, align 8, !tbaa !57
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ng, i64 144
  store ptr %i.oc, ptr %i.oe, align 8, !tbaa !100
  %i.of = getelementptr inbounds nuw i8, ptr %i.ng, i64 152
  %i.og = getelementptr inbounds nuw i8, ptr %i.ng, i64 232 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ng, i64 248 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.of, i8 0, i64 80, i1 false)
  store ptr %i.oh, ptr %i.og, align 8, !tbaa !76
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ng, i64 240
  store i64 0, ptr %i.oi, align 8, !tbaa !52
  store i8 0, ptr %i.oh, align 8, !tbaa !79
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ng, i64 264
  store i8 0, ptr %i.oj, align 8, !tbaa !637
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ng, i64 265
  store i8 0, ptr %i.ok, align 1, !tbaa !638
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ng, i64 266
  store i8 0, ptr %i.ol, align 2, !tbaa !71
  %i.om = getelementptr inbounds nuw i8, ptr %i.ng, i64 272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.om, i8 0, i64 40, i1 false)
  store ptr %i.ng, ptr %i.ag, align 8, !tbaa !229, !noalias !635
  %i.on = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10common_argESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr %.08.lcssa.i.i.i12.i67.i, ptr noundef nonnull align 8 dereferenceable(32) %i.nh)
          to label %bb.co unwind label %bb.cr     ; 2 uses

.body115:                                         ; preds = %_ZNSt8_Rb_treeI13llama_exampleS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE10_M_insert_IRKS0_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS0_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i.i
  %i.oo = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZNK21common_preset_context13load_from_iniERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER13common_preset:bb.a

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i147: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i165, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i145
  %.0.i.i.i.i.i.i148 = phi i32 [ %i.sb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i145 ], [ %.0.i6.i.i.i.i.i.i168, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i165 ]
  %i.sd = icmp slt i32 %.0.i.i.i.i.i.i148, 0      ; 2 uses
  %.19.i.i.i149 = select i1 %i.sd, ptr %.0811.i.i.i143, ptr %.012.i.i.i142 ; 4 uses
  %.1.in.v.i.i.i150 = select i1 %i.sd, i64 24, i64 16
  %.1.in.i.i.i151 = getelementptr inbounds nuw i8, ptr %.012.i.i.i142, i64 %.1.in.v.i.i.i150
  %.1.i.i.i152 = load ptr, ptr %.1.in.i.i.i151, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i153 = icmp eq ptr %.1.i.i.i152, null
  br i1 %.not.i.i.i153, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10common_argESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.ds, !llvm.loop !2

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10common_argESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i147
  %i.se = icmp eq ptr %.19.i.i.i149, %i.hm
  br i1 %i.se, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit.thread, label %bb.dt

bb.dt:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_10common_argESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.sf = getelementptr inbounds nuw i8, ptr %.19.i.i.i149, i64 40
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !52 ; 2 uses
  %.sroa.speculated.i.i.i.i.i154 = call i64 @llvm.umin.i64(i64 %i.sg, i64 %i.ru) ; 2 uses
  %i.sh = icmp eq i64 %.sroa.speculated.i.i.i.i.i154, 0
  br i1 %i.sh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i161, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i155

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i155: ; preds = %bb.dt
  %i.si = getelementptr inbounds nuw i8, ptr %.19.i.i.i149, i64 32
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !78
  %i.sk = call i32 @memcmp(ptr noundef %i.rv, ptr noundef %i.sj, i64 noundef %.sroa.speculated.i.i.i.i.i154) #27 ; 2 uses
  %.not.i.i.i.i.i156 = icmp eq i32 %i.sk, 0
  br i1 %.not.i.i.i.i.i156, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i161, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i161: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i155, %bb.dt
  %i.sl = sub i64 %i.ru, %i.sg
  %spec.select7.i.i.i.i.i.i162 = call i64 @llvm.smax.i64(i64 %i.sl, i64 -2147483648)
  %.08.i.i.i.i.i.i163 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i162, i64 2147483647)
  %.0.i6.i.i.i.i.i164 = trunc nsw i64 %.08.i.i.i.i.i.i163 to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i155, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i161
  %.0.i.i.i.i.i158 = phi i32 [ %i.sk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i155 ], [ %.0.i6.i.i.i.i.i164, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i161 ]
  %i.sm = icmp slt i32 %.0.i.i.i.i.i158, 0
  br i1 %i.sm, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i.i169

.lr.ph.i.i.i.i169:                                ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.rt, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.hm, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE4findERSA_.exit ]
  %i.sn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !52 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ru, i64 %i.so) ; 2 uses
  %i.sp = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.sp, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i169
  %i.sq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !78
  %i.ss = call i32 @memcmp(ptr noundef %i.sr, ptr noundef %i.rv, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ss, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i169
  %i.st = sub i64 %i.so, %i.ru
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.st, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ss, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.su = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.su, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 13 uses
  %.1.in.v.i.i.i.i = select i1 %i.su, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i.i170 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i170, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.i, label %.lr.ph.i.i.i.i169, !llvm.loop !2

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.sv = icmp eq ptr %.19.i.i.i.i, %i.hm
  br i1 %i.sv, label %.critedge.i, label %bb.du

bb.du:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.i
  %i.sw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !52 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.sx, i64 %i.ru) ; 2 uses
  %i.sy = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.sy, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.du
  %i.sz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !78
  %i.tb = call i32 @memcmp(ptr noundef %i.rv, ptr noundef %i.ta, i64 noundef %.sroa.speculated.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i3.i = icmp eq i32 %i.tb, 0
  br i1 %.not.i.i.i3.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.du
  %i.tc = sub i64 %i.ru, %i.sx
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.tc, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.tb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.td = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.td, label %.critedge.i, label %bb.dv

.critedge.i:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10common_argSt4lessIS5_ESaISt4pairIKS5_S6_EEE11lower_boundERSA_.exit.i
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.245) #28
          to label %.noexc171 unwind label %.loopexit.split-lp328

.noexc171:                                        ; preds = %.critedge.i
  unreachable

bb.dv:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %i.te = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 3 uses
  %i.tf = getelementptr i8, ptr %.19.i.i.i.i, i64 184 ; 2 uses
  %.val = load ptr, ptr %i.tf, align 8, !tbaa !74
  %i.tg = getelementptr i8, ptr %.19.i.i.i.i, i64 192 ; 2 uses
  %.val82 = load ptr, ptr %i.tg, align 8, !tbaa !74
  %.not323 = icmp eq ptr %.val, %.val82
  br i1 %.not323, label %bb.et, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  %.val83 = load ptr, ptr %i.tf, align 8, !tbaa !74 ; 2 uses
  %.val84 = load ptr, ptr %i.tg, align 8, !tbaa !74 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %.not16.i = icmp eq ptr %.val83, %.val84
  br i1 %.not16.i, label %._crit_edge.i, label %.lr.ph.i172

bb.dx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.03.017.i, i64 8 ; 2 uses
  %.not.i178 = icmp eq ptr %i.th, %.val84
  br i1 %.not.i178, label %._crit_edge.i, label %.lr.ph.i172

.lr.ph.i172:                                      ; preds = %bb.dw, %bb.dx
  %.sroa.03.017.i = phi ptr [ %i.th, %bb.dx ], [ %.val83, %bb.dw ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !783
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !783
  %i.ti = load ptr, ptr %.sroa.03.017.i, align 8, !tbaa !75, !noalias !783 ; 4 uses
  store ptr %i.hn, ptr %11, align 8, !tbaa !76, !noalias !783
  %i.tj = icmp eq ptr %i.ti, null
  br i1 %i.tj, label %.noexc.i182, label %bb.dy

.noexc.i182:                                      ; preds = %.lr.ph.i172
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.65) #28
          to label %.noexc183.a unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc183.a:                                      ; preds = %.noexc.i182
  unreachable

bb.dy:                                            ; preds = %.lr.ph.i172
  %i.tk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ti) #27, !noalias !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27, !noalias !783
  store i64 %i.tk, ptr %i.c, align 8, !tbaa !77, !noalias !783
  %i.tl = icmp ugt i64 %i.tk, 15
  br i1 %i.tl, label %.noexc.i.i181, label %._crit_edge.i.i.i173

.noexc.i.i181:                                    ; preds = %bb.dy
  %i.tm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc184.a unwind label %.loopexit ; 2 uses

.noexc184.a:                                      ; preds = %.noexc.i.i181
  store ptr %i.tm, ptr %11, align 8, !tbaa !78, !noalias !783
  %i.tn = load i64, ptr %i.c, align 8, !tbaa !77, !noalias !783
  store i64 %i.tn, ptr %i.hn, align 8, !tbaa !79, !noalias !783
  br label %._crit_edge.i.i.i173

._crit_edge.i.i.i173:                             ; preds = %.noexc184.a, %bb.dy
  %i.to = phi ptr [ %i.tm, %.noexc184.a ], [ %i.hn, %bb.dy ] ; 2 uses
  switch i64 %i.tk, label %bb.ea [
    i64 1, label %bb.dz
    i64 0, label %bb.eb
  ]

bb.dz:                                            ; preds = %._crit_edge.i.i.i173
  %i.tp = load i8, ptr %i.ti, align 1, !tbaa !79, !noalias !783
  store i8 %i.tp, ptr %i.to, align 1, !tbaa !79, !noalias !783
  br label %bb.eb

bb.ea:                                            ; preds = %._crit_edge.i.i.i173
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.to, ptr nonnull align 1 %i.ti, i64 %i.tk, i1 false), !noalias !783
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %._crit_edge.i.i.i173
  %i.tq = load i64, ptr %i.c, align 8, !tbaa !77, !noalias !783 ; 2 uses
  store i64 %i.tq, ptr %i.ho, align 8, !tbaa !52, !noalias !783
  %i.tr = load ptr, ptr %11, align 8, !tbaa !78, !noalias !783
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.tq
  store i8 0, ptr %i.ts, align 1, !tbaa !79, !noalias !783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27, !noalias !783
  %.val.i = load ptr, ptr %11, align 8, !noalias !783 ; 2 uses
  %.val17.i = load i64, ptr %i.ho, align 8, !noalias !783 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %.not.i.i174 = icmp eq i64 %.val17.i, 0
  br i1 %.not.i.i174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.eb, %bb.ec
  %.01.i.i = phi i64 [ %i.tw, %bb.ec ], [ 0, %bb.eb ] ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.01.i.i
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !79, !noalias !785
  %i.tv = icmp eq i8 %i.tu, 45
  br i1 %i.tv, label %bb.ec, label %.critedge.i.i

bb.ec:                                            ; preds = %.lr.ph.i.i
  %i.tw = add nuw i64 %.01.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.tw, %.val17.i
  br i1 %exitcond.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i, label %.lr.ph.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i: ; preds = %bb.ec, %.critedge.i.i, %bb.eb
  %.0.lcssa5.i.i = phi i64 [ %.01.i.i, %.critedge.i.i ], [ 0, %bb.eb ], [ %.val17.i, %bb.ec ] ; 2 uses
  store ptr %i.hp, ptr %10, align 8, !tbaa !76, !alias.scope !787, !noalias !783
  %i.tx = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.0.lcssa5.i.i ; 2 uses
  %i.ty = sub nuw i64 %.val17.i, %.0.lcssa5.i.i   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !788
  store i64 %i.ty, ptr %i.b, align 8, !tbaa !77, !noalias !788
  %i.tz = icmp ugt i64 %i.ty, 15
  br i1 %i.tz, label %.noexc10.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc10.i.i.i.i:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i
  %i.ua = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc20.i unwind label %.loopexit.i180, !noalias !783 ; 2 uses

.noexc20.i:                                       ; preds = %.noexc10.i.i.i.i
  store ptr %i.ua, ptr %10, align 8, !tbaa !78, !alias.scope !787, !noalias !783
  %i.ub = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !788
  store i64 %i.ub, ptr %i.hp, align 8, !tbaa !79, !alias.scope !787, !noalias !783
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc20.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i
  %i.uc = phi ptr [ %i.ua, %.noexc20.i ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i ] ; 2 uses
  switch i64 %i.ty, label %bb.ee [
    i64 1, label %bb.ed
    i64 0, label %bb.ef
  ]

bb.ed:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.ud = load i8, ptr %i.tx, align 1, !tbaa !79, !noalias !785
  store i8 %i.ud, ptr %i.uc, align 1, !tbaa !79, !noalias !783
  br label %bb.ef

bb.ee:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uc, ptr readonly align 1 %i.tx, i64 %i.ty, i1 false), !noalias !783
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %._crit_edge.i.i.i.i.i
  %i.ue = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !788 ; 2 uses
  store i64 %i.ue, ptr %i.hq, align 8, !tbaa !52, !alias.scope !787, !noalias !783
  %i.uf = load ptr, ptr %10, align 8, !tbaa !78, !alias.scope !787, !noalias !783
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 %i.ue
  store i8 0, ptr %i.ug, align 1, !tbaa !79, !noalias !783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !788
  %i.uh = load i64, ptr %i.hq, align 8, !tbaa !52, !noalias !783 ; 4 uses
  %i.ui = load i64, ptr %i.pv, align 8, !tbaa !52, !noalias !783
  %i.uj = icmp eq i64 %i.uh, %i.ui
  br i1 %i.uj, label %bb.eg, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i: ; preds = %bb.ef
  %.pre.i175 = load ptr, ptr %10, align 8, !tbaa !78, !noalias !783
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

bb.eg:                                            ; preds = %bb.ef
  %i.uk = icmp eq i64 %i.uh, 0
  %.pre19.i = load ptr, ptr %10, align 8, !tbaa !78, !noalias !783 ; 3 uses
  br i1 %i.uk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ul = load ptr, ptr %i.pt, align 8, !tbaa !78, !noalias !783
  %bcmp.i.i179 = call i32 @bcmp(ptr %.pre19.i, ptr %i.ul, i64 %i.uh), !noalias !783
  %i.um = icmp eq i32 %bcmp.i.i179, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.eh, %bb.eg, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i
  %i.un = phi ptr [ %.pre.i175, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i ], [ %.pre19.i, %bb.eh ], [ %.pre19.i, %bb.eg ] ; 2 uses
  %i.uo = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i ], [ %i.um, %bb.eh ], [ true, %bb.eg ]
  %i.up = icmp eq ptr %i.un, %i.hp
  br i1 %i.up, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.uq = icmp ult i64 %i.uh, 16
  call void @llvm.assume(i1 %i.uq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.ur = load i64, ptr %i.hp, align 8, !tbaa !79, !noalias !783
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.un, i64 noundef %i.us) #29, !noalias !783
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ut = load ptr, ptr %11, align 8, !tbaa !78, !noalias !783 ; 2 uses
  %i.uu = icmp eq ptr %i.ut, %i.hn
  br i1 %i.uu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177
  %i.uv = load i64, ptr %i.hn, align 8, !tbaa !79, !noalias !783
  %i.uw = add i64 %i.uv, 1
  call void @_ZdlPvm(ptr noundef %i.ut, i64 noundef %i.uw) #29, !noalias !783
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !783
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !783
  br i1 %i.uo, label %._crit_edge.i.i24.i, label %bb.dx

._crit_edge.i.i24.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i
  %i.ux = invoke noundef zeroext i1 @_ZN16common_arg_utils9is_truthyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.pu)
          to label %.noexc185 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc185:                                        ; preds = %._crit_edge.i.i24.i
  %i.uy = select i1 %i.ux, ptr @.str.232, ptr @.str.233
  store ptr %i.hr, ptr %34, align 8, !tbaa !76, !alias.scope !783
  %i.uz = select i1 %i.ux, i64 5, i64 4           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.hr, ptr noundef nonnull align 1 dereferenceable(4) %i.uy, i64 %i.uz, i1 false)
  store i64 %i.uz, ptr %i.hs, align 8, !tbaa !52, !alias.scope !783
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ux, i64 21, i64 20
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %34, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !79, !alias.scope !783
  br label %_ZL14parse_bool_argRK10common_argRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

.loopexit.i180:                                   ; preds = %.noexc10.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  %i.va = load ptr, ptr %11, align 8, !tbaa !78, !noalias !783 ; 2 uses
  %i.vb = icmp eq ptr %i.va, %i.hn
  br i1 %i.vb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i: ; preds = %.loopexit.i180
  %i.vc = load i64, ptr %i.hn, align 8, !tbaa !79, !noalias !783
  %i.vd = add i64 %i.vc, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.vd) #29, !noalias !783
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i: ; preds = %.loopexit.i180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !783
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !783
  br label %.body186

._crit_edge.i:                                    ; preds = %bb.dx, %bb.dw
  store ptr %i.hr, ptr %34, align 8, !tbaa !76, !alias.scope !783
  %i.ve = load ptr, ptr %i.pu, align 8, !tbaa !78, !noalias !783 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.0290.0411, i64 72
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !52, !noalias !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !783
  store i64 %i.vg, ptr %i.a, align 8, !tbaa !77, !noalias !783
  %i.vh = icmp ugt i64 %i.vg, 15
  br i1 %i.vh, label %.noexc.i32.i, label %._crit_edge.i.i31.i

.noexc.i32.i:                                     ; preds = %._crit_edge.i
  %i.vi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc188 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc188:                                        ; preds = %.noexc.i32.i
  store ptr %i.vi, ptr %34, align 8, !tbaa !78, !alias.scope !783
  %i.vj = load i64, ptr %i.a, align 8, !tbaa !77, !noalias !783
  store i64 %i.vj, ptr %i.hr, align 8, !tbaa !79, !alias.scope !783
  br label %._crit_edge.i.i31.i

._crit_edge.i.i31.i:                              ; preds = %.noexc188, %._crit_edge.i
  %i.vk = phi ptr [ %i.vi, %.noexc188 ], [ %i.hr, %._crit_edge.i ] ; 2 uses
  switch i64 %i.vg, label %bb.ej [
    i64 1, label %bb.ei
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.ei:                                            ; preds = %._crit_edge.i.i31.i
  %i.vl = load i8, ptr %i.ve, align 1, !tbaa !79
  store i8 %i.vl, ptr %i.vk, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.ej:                                            ; preds = %._crit_edge.i.i31.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vk, ptr align 1 %i.ve, i64 %i.vg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.ej, %bb.ei, %._crit_edge.i.i31.i
  %i.vm = load i64, ptr %i.a, align 8, !tbaa !77, !noalias !783 ; 2 uses
  store i64 %i.vm, ptr %i.hs, align 8, !tbaa !52, !alias.scope !783
  %i.vn = load ptr, ptr %34, align 8, !tbaa !78, !alias.scope !783
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vm
  store i8 0, ptr %i.vo, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !783
  br label %_ZL14parse_bool_argRK10common_argRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

_ZL14parse_bool_argRK10common_argRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %.noexc185
  %i.vp = load ptr, ptr %i.go, align 8, !tbaa !93 ; 3 uses
  %.not11.i.i.i.i = icmp eq ptr %i.vp, null
  br i1 %.not11.i.i.i.i, label %.critedge.i193, label %.lr.ph.i.i.i.i189

.lr.ph.i.i.i.i189:                                ; preds = %_ZL14parse_bool_argRK10common_argRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit
  %i.vq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 160
  %i.vr = load ptr, ptr %i.vq, align 8            ; 3 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 168
  %i.vt = load ptr, ptr %i.vs, align 8
  %i.vu = icmp eq ptr %i.vr, %i.vt
  %.fr.i.i.i.i = freeze i1 %i.vu
  br i1 %.fr.i.i.i.i, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i189, %.lr.ph.split.us.i.i.i.i
  %.013.us.i.i.i.i = phi ptr [ %.1.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i ], [ %i.vp, %.lr.ph.i.i.i.i189 ] ; 4 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.013.us.i.i.i.i, i64 16
  %.1.us.i.i.i.i = load ptr, ptr %i.vv, align 8, !tbaa !94 ; 2 uses
  %.not.us.i.i.i.i = icmp eq ptr %.1.us.i.i.i.i, null
  br i1 %.not.us.i.i.i.i, label %_ZNSt3mapI10common_argNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS0_ESaISt4pairIKS0_S6_EEE11lower_boundERSA_.exit.thread.i, label %.lr.ph.split.us.i.i.i.i, !llvm.loop !3

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i189, %_ZNKSt4lessI10common_argEclERKS0_S3_.exit.thread.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.1.i.i.i.i191, %_ZNKSt4lessI10common_argEclERKS0_S3_.exit.thread.i.i.i.i ], [ %i.vp, %.lr.ph.i.i.i.i189 ] ; 5 uses
  %.0812.i.i.i.i = phi ptr [ %.19.i.i.i.i190, %_ZNKSt4lessI10common_argEclERKS0_S3_.exit.thread.i.i.i.i ], [ %i.gn, %.lr.ph.i.i.i.i189 ]
  %i.vw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 128
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !74 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 136
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !74
end_hunk_2
