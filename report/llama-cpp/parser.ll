Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/parser?download=true
inline.NumInlined: 3913
inline.NumDeleted: 1903
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5jinja16parser_exceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_m:._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !308
  br label %_ZN5jinjaL11peak_sourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit.i

bb.a:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.i
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i64 0, ptr %i.w, align 8, !tbaa !32, !alias.scope !307, !noalias !306
  store i8 0, ptr %i.q, align 8, !tbaa !34, !alias.scope !307, !noalias !306
  %i.x = call i64 @llvm.usub.sat.i64(i64 %3, i64 40) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !308
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.y = icmp ugt i64 %i.x, %.val10.i
  br i1 %i.y, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.28, i64 noundef %i.x, i64 noundef %.val10.i) #29
          to label %.noexc37.i.i unwind label %bb.v, !noalias !306

.noexc37.i.i:                                     ; preds = %bb.b
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i: ; preds = %bb.a
  %i.z = add i64 %3, 40
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.val10.i, i64 %i.z)
  %i.aa = sub i64 %.sroa.speculated.i.i, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !30, !alias.scope !309, !noalias !308
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.x ; 2 uses
  %i.ad = sub nuw i64 %.val10.i, %i.x
  %spec.select.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ad) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !310
  store i64 %spec.select.i.i.i.i.i, ptr %i.a, align 8, !tbaa !33, !noalias !310
  %i.ae = icmp ugt i64 %spec.select.i.i.i.i.i, 15
  br i1 %i.ae, label %.noexc10.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc10.i.i.i.i:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc38.i.i unwind label %bb.v, !noalias !306 ; 2 uses

.noexc38.i.i:                                     ; preds = %.noexc10.i.i.i.i
  store ptr %i.af, ptr %5, align 8, !tbaa !31, !alias.scope !309, !noalias !308
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !310
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !34, !alias.scope !309, !noalias !308
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc38.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i
  %i.ah = phi ptr [ %i.af, %.noexc38.i.i ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !34, !noalias !308
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !34, !noalias !306
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr readonly align 1 %i.ac, i64 %spec.select.i.i.i.i.i, i1 false), !noalias !306
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !310 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !32, !alias.scope !309, !noalias !308
  %i.al = load ptr, ptr %5, align 8, !tbaa !31, !alias.scope !309, !noalias !308
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !34, !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !308
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !30, !noalias !308
  store i8 10, ptr %i.an, align 8, !tbaa !34, !noalias !308
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 1, ptr %i.ao, align 8, !tbaa !32, !noalias !308
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.ap, align 1, !tbaa !34, !noalias !308
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !308
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.aq, ptr %7, align 8, !tbaa !30, !noalias !308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.aq, ptr noundef nonnull align 1 dereferenceable(3) @.str.24, i64 3, i1 false), !noalias !308
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 3, ptr %i.ar, align 8, !tbaa !32, !noalias !308
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 19
  store i8 0, ptr %i.as, align 1, !tbaa !34, !noalias !308
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !308
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.at, ptr %4, align 8, !tbaa !30, !noalias !308
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 0, ptr %i.au, align 8, !tbaa !32, !noalias !308
  store i8 0, ptr %i.at, align 8, !tbaa !34, !noalias !308
  %i.av = load i64, ptr %i.ak, align 8, !tbaa !32, !noalias !308
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.av)
          to label %.preheader.i.i.i unwind label %bb.f, !noalias !306

.preheader.i.i.i:                                 ; preds = %bb.e
  %i.aw = load ptr, ptr %6, align 8, !tbaa !31, !noalias !308
  %i.ax = load i64, ptr %i.ao, align 8, !tbaa !32, !noalias !308
  %i.ay = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.aw, i64 noundef 0, i64 noundef %i.ax) #27, !noalias !306 ; 2 uses
  %.not42.i.i.i = icmp eq i64 %i.ay, -1
  br i1 %.not42.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %.preheader.i.i.i
  %i.az = load i64, ptr %i.ak, align 8, !tbaa !32, !noalias !308
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i25.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i
  %i.ba = phi i64 [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i ], [ %i.ay, %.preheader.i.i.i ] ; 2 uses
  %.043.i.i.i = phi i64 [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i ], [ 0, %.preheader.i.i.i ] ; 5 uses
  %i.bb = load i64, ptr %i.ak, align 8, !tbaa !32, !noalias !308 ; 3 uses
  %i.bc = icmp ugt i64 %.043.i.i.i, %i.bb
  br i1 %i.bc, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i47.i.i

.invoke.i.i.i:                                    ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i
  %i.bd = phi i64 [ %i.bu, %._crit_edge.i.i.i ], [ %.043.i.i.i, %.lr.ph.i.i.i ]
  %i.be = phi i64 [ %i.by, %._crit_edge.i.i.i ], [ %i.bb, %.lr.ph.i.i.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, i64 noundef %i.bd, i64 noundef %i.be) #29
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !306

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i47.i.i: ; preds = %.lr.ph.i.i.i
  %i.bf = sub i64 %i.ba, %.043.i.i.i
  %i.bg = sub nuw i64 %i.bb, %.043.i.i.i
  %spec.select.i.i.i48.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bg) ; 2 uses
  %i.bh = load i64, ptr %i.au, align 8, !tbaa !32, !noalias !308
  %i.bi = sub i64 4611686018427387903, %i.bh
  %i.bj = icmp ult i64 %i.bi, %spec.select.i.i.i48.i.i
  br i1 %i.bj, label %.invoke81.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i

.invoke81.i.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i47.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i25.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #29
          to label %.cont82.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !306

.cont82.i.i.i:                                    ; preds = %.invoke81.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i47.i.i
  %i.bk = load ptr, ptr %5, align 8, !tbaa !31, !noalias !308
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.043.i.i.i
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.bl, i64 noundef %spec.select.i.i.i48.i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i unwind label %.loopexit.i.i.i, !noalias !306 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i
  %i.bn = load i64, ptr %i.ar, align 8, !tbaa !32, !noalias !308 ; 2 uses
  %i.bo = load i64, ptr %i.au, align 8, !tbaa !32, !noalias !308
  %i.bp = sub i64 4611686018427387903, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bn
  br i1 %i.bq, label %.invoke81.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i22.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i22.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i
  %i.br = load ptr, ptr %7, align 8, !tbaa !31, !noalias !308
  %i.bs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.br, i64 noundef %i.bn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i unwind label %.loopexit.i.i.i, !noalias !306 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i22.i.i.i
  %i.bt = load i64, ptr %i.ao, align 8, !tbaa !32, !noalias !308 ; 2 uses
  %i.bu = add i64 %i.bt, %i.ba                    ; 5 uses
  %i.bv = load ptr, ptr %6, align 8, !tbaa !31, !noalias !308
  %i.bw = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.bv, i64 noundef %i.bu, i64 noundef %i.bt) #27, !noalias !306 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bw, -1
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !291

bb.f:                                             ; preds = %bb.e
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.i.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i22.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp.i.i.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i27.i.i.i, %.invoke81.i.i.i, %.invoke.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i
  %i.by = load i64, ptr %i.ak, align 8, !tbaa !32, !noalias !308 ; 3 uses
  %i.bz = icmp ugt i64 %i.bu, %i.by
  br i1 %i.bz, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i25.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i25.i.i.i: ; preds = %._crit_edge.i.i.i, %._crit_edge.thread.i.i.i
  %i.ca = phi i64 [ %i.az, %._crit_edge.thread.i.i.i ], [ %i.by, %._crit_edge.i.i.i ]
  %.0.lcssa71.i.i.i = phi i64 [ 0, %._crit_edge.thread.i.i.i ], [ %i.bu, %._crit_edge.i.i.i ] ; 2 uses
  %i.cb = sub nuw i64 %i.ca, %.0.lcssa71.i.i.i    ; 2 uses
  %i.cc = load i64, ptr %i.au, align 8, !tbaa !32, !noalias !308
  %i.cd = sub i64 4611686018427387903, %i.cc
  %i.ce = icmp ult i64 %i.cd, %i.cb
  br i1 %i.ce, label %.invoke81.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i27.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i27.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i25.i.i.i
  %i.cf = load ptr, ptr %5, align 8, !tbaa !31, !noalias !308
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.0.lcssa71.i.i.i
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.cg, i64 noundef %i.cb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit31.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !306 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit31.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i27.i.i.i
  %i.ci = load ptr, ptr %5, align 8, !tbaa !31, !noalias !308 ; 6 uses
  %16 = icmp eq ptr %i.ci, %i.ab
  %i.cj = load ptr, ptr %4, align 8, !tbaa !31, !noalias !308 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, %i.at                ; 2 uses
  br i1 %16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit31.i.i.i
  br i1 %i.ck, label %bb.g, label %.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit31.i.i.i
  br i1 %i.ck, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cl = load i64, ptr %i.au, align 8, !tbaa !32, !noalias !308 ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cm)
  switch i64 %i.cl, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !34, !noalias !306
  store i8 %i.cn, ptr %i.ci, align 1, !tbaa !34, !noalias !306
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.cj, i64 %i.cl, i1 false), !noalias !306
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.co = load i64, ptr %i.au, align 8, !tbaa !32, !noalias !308 ; 2 uses
  store i64 %i.co, ptr %i.ak, align 8, !tbaa !32, !noalias !308
  %i.cp = load ptr, ptr %5, align 8, !tbaa !31, !noalias !308
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 0, ptr %i.cq, align 1, !tbaa !34, !noalias !306
  %.pre.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !31, !noalias !308
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  store ptr %i.cj, ptr %5, align 8, !tbaa !31, !noalias !308
  %i.cr = load <2 x i64>, ptr %i.au, align 8, !tbaa !34, !noalias !308
  store <2 x i64> %i.cr, ptr %i.ak, align 8, !tbaa !34, !noalias !308
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.cs = load i64, ptr %i.ab, align 8, !tbaa !34, !noalias !308
  store ptr %i.cj, ptr %5, align 8, !tbaa !31, !noalias !308
  %i.ct = load <2 x i64>, ptr %i.au, align 8, !tbaa !34, !noalias !308
  store <2 x i64> %i.ct, ptr %i.ak, align 8, !tbaa !34, !noalias !308
  %.not.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i
  store ptr %i.ci, ptr %4, align 8, !tbaa !31, !noalias !308
  store i64 %i.cs, ptr %i.at, align 8, !tbaa !34, !noalias !308
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i, %.thread.i.i.i.i
  store ptr %i.at, ptr %4, align 8, !tbaa !31, !noalias !308
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i: ; preds = %bb.k, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
  %i.cu = phi ptr [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i ], [ %i.ci, %bb.j ], [ %i.at, %bb.k ]
  store i64 0, ptr %i.au, align 8, !tbaa !32, !noalias !308
  store i8 0, ptr %i.cu, align 1, !tbaa !34, !noalias !306
  %i.cv = load ptr, ptr %4, align 8, !tbaa !31, !noalias !308 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.at
  br i1 %i.cw, label %_ZN5jinjaL18string_replace_allERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_S8_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i
  %i.cx = load i64, ptr %i.at, align 8, !tbaa !34, !noalias !308
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #28, !noalias !306
  br label %_ZN5jinjaL18string_replace_allERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_S8_.exit.i.i

bb.l:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.f
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bx, %bb.f ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  %i.cz = load ptr, ptr %4, align 8, !tbaa !31, !noalias !308 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.at
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i.i: ; preds = %bb.l
  %i.db = load i64, ptr %i.at, align 8, !tbaa !34, !noalias !308
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #28, !noalias !306
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !308
  %i.dd = load ptr, ptr %7, align 8, !tbaa !31, !noalias !308 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.aq
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i.i

_ZN5jinjaL18string_replace_allERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_S8_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !308
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !31, !noalias !308 ; 2 uses
  %i.df = icmp eq ptr %.pre.i.i, %i.aq
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i.i: ; preds = %_ZN5jinjaL18string_replace_allERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_S8_.exit.i.i
  %i.dg = load i64, ptr %i.aq, align 8, !tbaa !34, !noalias !308
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %.pre.i.i, i64 noundef %i.dh) #28, !noalias !306
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN5jinjaL18string_replace_allERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_S8_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !308
  %i.di = load ptr, ptr %6, align 8, !tbaa !31, !noalias !308 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.an
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.dk = load i64, ptr %i.an, align 8, !tbaa !34, !noalias !308
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #28, !noalias !306
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !308
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !308
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27, !noalias !308
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %i.dm = load ptr, ptr %5, align 8, !tbaa !31, !noalias !312
  %i.dn = load i64, ptr %i.ak, align 8, !tbaa !32, !noalias !312 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.do, ptr %9, align 8, !tbaa !30, !alias.scope !313, !noalias !308
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.dp, align 8, !tbaa !32, !alias.scope !313, !noalias !308
  store i8 0, ptr %i.do, align 8, !tbaa !34, !alias.scope !313, !noalias !308
  %i.dq = add i64 %i.dn, 3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.dq)
          to label %bb.m unwind label %bb.n, !noalias !306

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i.i
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !32, !alias.scope !313, !noalias !308
  %i.ds = add i64 %i.dr, -4611686018427387901
  %i.dt = icmp ult i64 %i.ds, 3
  br i1 %i.dt, label %.invoke.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i: ; preds = %bb.m
  %i.du = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.25, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i54.i.i unwind label %bb.n, !noalias !306 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i54.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.dv = load i64, ptr %i.dp, align 8, !tbaa !32, !alias.scope !313, !noalias !308
  %i.dw = sub i64 4611686018427387903, %i.dv
  %i.dx = icmp ult i64 %i.dw, %i.dn
  br i1 %i.dx, label %.invoke.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i54.i.i, %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #29
          to label %.cont.i.i.i.i unwind label %bb.n, !noalias !306

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i54.i.i
  %i.dy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.dm, i64 noundef %i.dn)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i unwind label %bb.n, !noalias !306 ; 0 uses

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i, %.invoke.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i.i
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load ptr, ptr %9, align 8, !tbaa !31, !alias.scope !313, !noalias !308 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.do
  br i1 %i.eb, label %.body55.i.i, label %.body55.i.i.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.ec = load i64, ptr %i.dp, align 8, !tbaa !32, !noalias !315
  %i.ed = and i64 %i.ec, -4
  %i.ee = icmp eq i64 %i.ed, 4611686018427387900
  br i1 %i.ee, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i

bb.o:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #29
          to label %.noexc58.i.i unwind label %bb.w, !noalias !306

.noexc58.i.i:                                     ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i
  %i.ef = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.26, i64 noundef 4)
          to label %.noexc59.i.i unwind label %bb.w, !noalias !306 ; 6 uses

.noexc59.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.eg, ptr %8, align 8, !tbaa !30, !alias.scope !314, !noalias !308
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !31, !noalias !306 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 5 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i

bb.p:                                             ; preds = %.noexc59.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !32, !noalias !306 ; 3 uses
  %i.em = icmp ult i64 %i.el, 16
  call void @llvm.assume(i1 %i.em)
  %i.en = add nuw nsw i64 %i.el, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eg, ptr noundef nonnull align 8 dereferenceable(1) %i.ei, i64 %i.en, i1 false), !noalias !306
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i: ; preds = %.noexc59.i.i
  store ptr %i.eh, ptr %8, align 8, !tbaa !31, !alias.scope !314, !noalias !308
  %i.eo = load i64, ptr %i.ei, align 8, !tbaa !34, !noalias !306
  store i64 %i.eo, ptr %i.eg, align 8, !tbaa !34, !alias.scope !314, !noalias !308
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !32, !noalias !306
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i, %bb.p
  %i.ep = phi i64 [ %i.el, %bb.p ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.ep, ptr %i.er, align 8, !tbaa !32, !alias.scope !314, !noalias !308
  store ptr %i.ei, ptr %i.ef, align 8, !tbaa !31, !noalias !306
  store i64 0, ptr %i.eq, align 8, !tbaa !32, !noalias !306
  store i8 0, ptr %i.ei, align 8, !tbaa !34, !noalias !306
  %i.es = load i64, ptr %i.er, align 8, !tbaa !32, !noalias !308 ; 2 uses
  %i.et = load i64, ptr %i.w, align 8, !tbaa !32, !alias.scope !307, !noalias !306
  %i.eu = sub i64 4611686018427387903, %i.et
  %i.ev = icmp ult i64 %i.eu, %i.es
  br i1 %i.ev, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i60.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #29
          to label %.noexc61.i.i unwind label %bb.x, !noalias !306

.noexc61.i.i:                                     ; preds = %bb.r
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i60.i.i: ; preds = %bb.q
  %i.ew = load ptr, ptr %8, align 8, !tbaa !31, !noalias !308
  %i.ex = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.ew, i64 noundef %i.es)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i unwind label %bb.x, !noalias !306 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i60.i.i
  %i.ey = load ptr, ptr %8, align 8, !tbaa !31, !noalias !308 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.eg
end_hunk_0
