Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/lambdarank_obj?download=true
inline.NumInlined: 8766
inline.NumDeleted: 2252
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4dmlc8DemangleB5cxx11EPKc:bb.a
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.k, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %1, align 1, !tbaa !80
  store i8 %i.p, ptr %i.o, align 1, !tbaa !80
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %1, i64 %i.k, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.q = load i64, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !79
  %i.s = load ptr, ptr %2, align 8, !tbaa !78
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  %i.u = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.24, i64 noundef 0, i64 noundef 2) #11 ; 8 uses
  %.not = icmp eq i64 %i.u, -1
  br i1 %.not, label %bb.ai, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, i64 noundef %i.u, i64 noundef 2) #11 ; 6 uses
  %.not24 = icmp eq i64 %i.v, 0
  br i1 %.not24, label %bb.ai, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !96
  %i.x = load i64, ptr %i.r, align 8, !tbaa !79
  %i.y = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %i.x) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i64 %spec.select.i.i, ptr %i.e, align 8, !tbaa !31
  %i.z = icmp ugt i64 %spec.select.i.i, 15
  br i1 %i.z, label %.noexc10.i, label %._crit_edge.i.i35

.noexc10.i:                                       ; preds = %bb.g
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc37 unwind label %bb.z   ; 2 uses

.noexc37:                                         ; preds = %.noexc10.i
  store ptr %i.aa, ptr %3, align 8, !tbaa !78
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !31
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !80
  br label %._crit_edge.i.i35

._crit_edge.i.i35:                                ; preds = %.noexc37, %bb.g
  %i.ac = phi ptr [ %i.aa, %.noexc37 ], [ %i.w, %bb.g ] ; 2 uses
  switch i64 %spec.select.i.i, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i35
  %i.ad = load i8, ptr %i.y, align 1, !tbaa !80
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !80
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.y, i64 %spec.select.i.i, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i35
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !31  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !79
  %i.ag = load ptr, ptr %3, align 8, !tbaa !78
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.ai, ptr %4, align 8, !tbaa !96
  %i.aj = load i64, ptr %i.r, align 8, !tbaa !79  ; 3 uses
  %i.ak = icmp ugt i64 %i.u, %i.aj
  br i1 %i.ak, label %.noexc.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

.noexc.i41:                                       ; preds = %bb.j
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i64 noundef %i.u, i64 noundef %i.aj) #39
          to label %.noexc42 unwind label %bb.aa

.noexc42:                                         ; preds = %.noexc.i41
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %bb.j
  %i.al = sub i64 %i.v, %i.u
  %i.am = load ptr, ptr %2, align 8, !tbaa !78
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.u ; 2 uses
  %i.ao = sub nuw i64 %i.aj, %i.u
  %spec.select.i.i38 = call noundef i64 @llvm.umin.i64(i64 %i.al, i64 %i.ao) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i64 %spec.select.i.i38, ptr %i.d, align 8, !tbaa !31
  %i.ap = icmp ugt i64 %spec.select.i.i38, 15
  br i1 %i.ap, label %.noexc10.i40, label %._crit_edge.i.i39

.noexc10.i40:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc43 unwind label %bb.aa  ; 2 uses

.noexc43:                                         ; preds = %.noexc10.i40
  store ptr %i.aq, ptr %4, align 8, !tbaa !78
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !31
  store i64 %i.ar, ptr %i.ai, align 8, !tbaa !80
  br label %._crit_edge.i.i39

._crit_edge.i.i39:                                ; preds = %.noexc43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.as = phi ptr [ %i.aq, %.noexc43 ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i ] ; 2 uses
  switch i64 %spec.select.i.i38, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i39
  %i.at = load i8, ptr %i.an, align 1, !tbaa !80
  store i8 %i.at, ptr %i.as, align 1, !tbaa !80
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.an, i64 %spec.select.i.i38, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i39
  %i.au = load i64, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !79
  %i.aw = load ptr, ptr %4, align 8, !tbaa !78
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.ay, ptr %5, align 8, !tbaa !96
  %i.az = load i64, ptr %i.r, align 8, !tbaa !79  ; 3 uses
  %i.ba = icmp ugt i64 %i.v, %i.az
  br i1 %i.ba, label %.noexc.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i45

.noexc.i48:                                       ; preds = %bb.m
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i64 noundef %i.v, i64 noundef %i.az) #39
          to label %.noexc49 unwind label %bb.ab

.noexc49:                                         ; preds = %.noexc.i48
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i45: ; preds = %bb.m
  %i.bb = load ptr, ptr %2, align 8, !tbaa !78
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.v ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %gepdiff.i = sub nuw nsw i64 %i.az, %i.v        ; 4 uses
  store i64 %gepdiff.i, ptr %i.c, align 8, !tbaa !31
  %i.bd = icmp ugt i64 %gepdiff.i, 15
  br i1 %i.bd, label %.noexc10.i47, label %._crit_edge.i.i46

.noexc10.i47:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i45
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc50 unwind label %bb.ab  ; 2 uses

.noexc50:                                         ; preds = %.noexc10.i47
  store ptr %i.be, ptr %5, align 8, !tbaa !78
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !31
  store i64 %i.bf, ptr %i.ay, align 8, !tbaa !80
  br label %._crit_edge.i.i46

._crit_edge.i.i46:                                ; preds = %.noexc50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i45
  %i.bg = phi ptr [ %i.be, %.noexc50 ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i45 ] ; 2 uses
  switch i64 %gepdiff.i, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i46
  %i.bh = load i8, ptr %i.bc, align 1, !tbaa !80
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !80
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr nonnull align 1 %i.bc, i64 %gepdiff.i, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i46
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !79
  %i.bk = load ptr, ptr %5, align 8, !tbaa !78
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  store i32 0, ptr %i.g, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  store i64 -1, ptr %i.h, align 8, !tbaa !31
  %i.bm = load ptr, ptr %4, align 8, !tbaa !78
  %i.bn = invoke ptr @__cxa_demangle(ptr noundef %i.bm, ptr noundef null, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g)
          to label %bb.q unwind label %bb.ac      ; 7 uses

bb.q:                                             ; preds = %bb.p
  %i.bo = icmp ne ptr %i.bn, null                 ; 2 uses
  %i.bp = load i32, ptr %i.g, align 4
  %i.bq = icmp eq i32 %i.bp, 0
  %or.cond = select i1 %i.bo, i1 %i.bq, i1 false
  %i.br = load i64, ptr %i.h, align 8
  %i.bs = icmp ne i64 %i.br, 0
  %or.cond3 = select i1 %or.cond, i1 %i.bs, i1 false
  br i1 %or.cond3, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.bt, ptr %6, align 8, !tbaa !96
  %i.bu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bn) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !31
  %i.bv = icmp ugt i64 %i.bu, 15
  br i1 %i.bv, label %.noexc.i52, label %._crit_edge.i.i51

.noexc.i52:                                       ; preds = %bb.r
  %i.bw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc54 unwind label %bb.ad  ; 2 uses

.noexc54:                                         ; preds = %.noexc.i52
  store ptr %i.bw, ptr %6, align 8, !tbaa !78
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !31
  store i64 %i.bx, ptr %i.bt, align 8, !tbaa !80
  br label %._crit_edge.i.i51

._crit_edge.i.i51:                                ; preds = %.noexc54, %bb.r
  %i.by = phi ptr [ %i.bw, %.noexc54 ], [ %i.bt, %bb.r ] ; 2 uses
  switch i64 %i.bu, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i51
  %i.bz = load i8, ptr %i.bn, align 1, !tbaa !80
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !80
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr nonnull align 1 %i.bn, i64 %i.bu, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i51
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !79
  %i.cc = load ptr, ptr %6, align 8, !tbaa !78
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store i8 0, ptr %i.cd, align 1, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %bb.u
  %i.ce = load ptr, ptr %3, align 8, !tbaa !78
  %i.cf = load i64, ptr %i.af, align 8, !tbaa !79
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.ce, i64 noundef %i.cf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.af

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.v
  %i.ch = load ptr, ptr %6, align 8, !tbaa !78
  %i.ci = load i64, ptr %i.cb, align 8, !tbaa !79
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef %i.ch, i64 noundef %i.ci)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58 unwind label %bb.af

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ck = load ptr, ptr %5, align 8, !tbaa !78
  %i.cl = load i64, ptr %i.bj, align 8, !tbaa !79
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef %i.ck, i64 noundef %i.cl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60 unwind label %bb.af ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !96, !alias.scope !497
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.co, align 8, !tbaa !79, !alias.scope !497
  store i8 0, ptr %i.cn, align 8, !tbaa !80, !alias.scope !497
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !112, !noalias !497 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.cq, null
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !497 ; 2 uses
  %i.ct = icmp ugt ptr %i.cq, %i.cs
  %.08.i.i.i = select i1 %i.ct, ptr %i.cq, ptr %i.cs ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !113, !noalias !497 ; 2 uses
  %i.cw = ptrtoint ptr %.08.i.i.i to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.cv, i64 noundef %i.cy)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %0, align 8, !tbaa !78, !alias.scope !497 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cn
  br i1 %i.dc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.x
  %i.dd = load i64, ptr %i.cn, align 8, !tbaa !80, !alias.scope !497
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #38
  br label %.body

bb.y:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.df)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.x

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.y, %bb.w
  %i.dg = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dg, ptr %7, align 8, !tbaa !103
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.di = getelementptr i8, ptr %i.dg, i64 -24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds i8, ptr %7, i64 %i.dj
  store ptr %i.dh, ptr %i.dk, align 8, !tbaa !103
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dl, align 8, !tbaa !103
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !78 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !80
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #38
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dl, align 8, !tbaa !103
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ds) #11
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dt) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.du = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.bt
  br i1 %i.dv, label %_ZNSt10unique_ptrIcPFvPvEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.dw = load i64, ptr %i.bt, align 8, !tbaa !80
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #38
  br label %_ZNSt10unique_ptrIcPFvPvEED2Ev.exit

_ZNSt10unique_ptrIcPFvPvEED2Ev.exit:              ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @free(ptr noundef nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  %i.dy = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.ay
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt10unique_ptrIcPFvPvEED2Ev.exit
  %i.ea = load i64, ptr %i.ay, align 8, !tbaa !80
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt10unique_ptrIcPFvPvEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.ec = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.ai
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.ee = load i64, ptr %i.ai, align 8, !tbaa !80
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.eg = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.w
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.ei = load i64, ptr %i.w, align 8, !tbaa !80
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.an

bb.z:                                             ; preds = %.noexc10.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

bb.aa:                                            ; preds = %.noexc10.i40, %.noexc.i41
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.ab:                                            ; preds = %.noexc10.i47, %.noexc.i48
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.ac:                                            ; preds = %bb.p
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIcPFvPvEED2Ev.exit74

bb.ad:                                            ; preds = %.noexc.i52
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i71

bb.ae:                                            ; preds = %bb.u
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.v
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.eq, %bb.af ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.da, %bb.x ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #11
  br label %bb.ag

bb.ag:                                            ; preds = %.body, %bb.ae
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ep, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.er = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.bt
  br i1 %i.es, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.ag
  %i.et = load i64, ptr %i.bt, align 8, !tbaa !80
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i71: ; preds = %bb.ag, %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  %.pn.pn = phi { ptr, i32 } [ %i.eo, %bb.ad ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %.pn, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @free(ptr noundef nonnull %i.bn)
  br label %_ZNSt10unique_ptrIcPFvPvEED2Ev.exit74

_ZNSt10unique_ptrIcPFvPvEED2Ev.exit74:            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i71, %bb.ac
  %.pn.pn.pn = phi { ptr, i32 } [ %i.en, %bb.ac ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i71 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  %i.ev = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.ay
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt10unique_ptrIcPFvPvEED2Ev.exit74
  %i.ex = load i64, ptr %i.ay, align 8, !tbaa !80
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt10unique_ptrIcPFvPvEED2Ev.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.ab
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.em, %bb.ab ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %.pn.pn.pn, %_ZNSt10unique_ptrIcPFvPvEED2Ev.exit74 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.ez = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.ai
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.fb = load i64, ptr %i.ai, align 8, !tbaa !80
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.aa
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.el, %bb.aa ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.fd = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.w
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.ff = load i64, ptr %i.w, align 8, !tbaa !80
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %bb.z
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.z ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.ao

.critedge:                                        ; preds = %bb.q
  br i1 %i.bo, label %bb.ah, label %_ZNSt10unique_ptrIcPFvPvEED2Ev.exit85

bb.ah:                                            ; preds = %.critedge
  call void @free(ptr noundef nonnull %i.bn)
  br label %_ZNSt10unique_ptrIcPFvPvEED2Ev.exit85

_ZNSt10unique_ptrIcPFvPvEED2Ev.exit85:            ; preds = %bb.ah, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  %i.fh = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.ay
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt10unique_ptrIcPFvPvEED2Ev.exit85
  %i.fj = load i64, ptr %i.ay, align 8, !tbaa !80
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZNSt10unique_ptrIcPFvPvEED2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.fl = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.ai
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.fn = load i64, ptr %i.ai, align 8, !tbaa !80
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.fp = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.w
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.fr = load i64, ptr %i.w, align 8, !tbaa !80
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.e, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ft, ptr %0, align 8, !tbaa !96
  %i.fu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.fu, ptr %i.a, align 8, !tbaa !31
  %i.fv = icmp ugt i64 %i.fu, 15
  br i1 %i.fv, label %.noexc.i96, label %._crit_edge.i.i95

.noexc.i96:                                       ; preds = %bb.ai
  %i.fw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc98 unwind label %bb.am  ; 2 uses

.noexc98:                                         ; preds = %.noexc.i96
  store ptr %i.fw, ptr %0, align 8, !tbaa !78
  %i.fx = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.fx, ptr %i.ft, align 8, !tbaa !80
  br label %._crit_edge.i.i95

._crit_edge.i.i95:                                ; preds = %.noexc98, %bb.ai
  %i.fy = phi ptr [ %i.fw, %.noexc98 ], [ %i.ft, %bb.ai ] ; 2 uses
  switch i64 %i.fu, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i95
  %i.fz = load i8, ptr %1, align 1, !tbaa !80
  store i8 %i.fz, ptr %i.fy, align 1, !tbaa !80
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i95
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fy, ptr nonnull align 1 %1, i64 %i.fu, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i95
  %i.ga = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !79
  %i.gc = load ptr, ptr %0, align 8, !tbaa !78
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga
  store i8 0, ptr %i.gd, align 1, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.an

bb.am:                                            ; preds = %.noexc.i96
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.al
  %i.gf = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.i
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.an
  %i.gh = load i64, ptr %i.i, align 8, !tbaa !80
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void

bb.ao:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %.pn31 = phi { ptr, i32 } [ %i.ge, %bb.am ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ]
  %i.gj = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.i
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.ao
  %i.gl = load i64, ptr %i.i, align 8, !tbaa !80
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %.pn31
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #19

declare ptr @__cxa_demangle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #13

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4dmlc5ErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #38
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !31
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.b)
          to label %_ZNSolsEm.exit unwind label %bb.f ; 2 uses
end_hunk_0
