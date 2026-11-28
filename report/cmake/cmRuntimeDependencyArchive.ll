Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmRuntimeDependencyArchive?download=true
inline.NumInlined: 1228
inline.NumDeleted: 574
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clERKSt6vectorIN5cmsys17RegularExpressionESaISB_EE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 %i.ap, ptr %i.e, align 8, !tbaa !84
  %i.aq = icmp ugt i64 %i.ap, 15
  br i1 %i.aq, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i"
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.ad  ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i.i
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !25
  %i.as = load i64, ptr %i.e, align 8, !tbaa !84
  store i64 %i.as, ptr %i.an, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i, %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i"
  %i.at = phi ptr [ %i.ar, %.noexc.i ], [ %i.an, %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i" ] ; 2 uses
  switch i64 %i.ap, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i"
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.au = load i8, ptr %i.ao, align 1, !tbaa !20
  store i8 %i.au, ptr %i.at, align 1, !tbaa !20
  br label %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i"

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.ao, i64 %i.ap, i1 false)
  br label %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i"

"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i": ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i
  %i.av = load i64, ptr %i.e, align 8, !tbaa !84  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !19
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.az = load ptr, ptr %4, align 8, !tbaa !154, !nonnull !74, !align !75
  store ptr %i.az, ptr %3, align 8, !tbaa !86
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !16
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %i.bd = load i64, ptr %i.aw, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 %i.bd, ptr %i.d, align 8, !tbaa !84
  %i.be = icmp ugt i64 %i.bd, 15
  br i1 %i.be, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i"
  %i.bf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc.i.i5 unwind label %bb.ac ; 2 uses

.noexc.i.i5:                                      ; preds = %.noexc.i.i.i.i.i
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !25
  %i.bg = load i64, ptr %i.d, align 8, !tbaa !84
  store i64 %i.bg, ptr %i.bb, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i5, %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i"
  %i.bh = phi ptr [ %i.bf, %.noexc.i.i5 ], [ %i.bb, %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i" ] ; 2 uses
  switch i64 %i.bd, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i.i"
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bi = load i8, ptr %i.bc, align 1, !tbaa !20
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !20
  br label %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i.i"

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bc, i64 %i.bd, i1 false)
  br label %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i.i"

"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i.i": ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.bj = load i64, ptr %i.d, align 8, !tbaa !84  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !19
  %i.bl = load ptr, ptr %i.ba, align 8, !tbaa !25
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.bn = load ptr, ptr %3, align 8, !tbaa !154, !noalias !155, !nonnull !74, !align !75
  store ptr %i.bn, ptr %1, align 8, !tbaa !86, !noalias !155
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !16, !noalias !155
  %i.bq = load ptr, ptr %i.ba, align 8, !tbaa !25, !noalias !155 ; 2 uses
  %i.br = load i64, ptr %i.bk, align 8, !tbaa !19, !noalias !155 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23, !noalias !155
  store i64 %i.br, ptr %i.c, align 8, !tbaa !84, !noalias !155
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i.i"
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i.i4.i unwind label %bb.aa, !noalias !155 ; 2 uses

.noexc.i.i4.i:                                    ; preds = %.noexc.i.i.i.i.i.i
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !25, !noalias !155
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !84, !noalias !155
  store i64 %i.bu, ptr %i.bp, align 8, !tbaa !20, !noalias !155
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i4.i, %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i.i"
  %i.bv = phi ptr [ %i.bt, %.noexc.i.i4.i ], [ %i.bp, %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i.i" ] ; 2 uses
  switch i64 %i.br, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOS8_.exit.i.i.i.i"
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.bw = load i8, ptr %i.bq, align 1, !tbaa !20, !noalias !155
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !20, !noalias !155
  br label %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOS8_.exit.i.i.i.i"

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bq, i64 %i.br, i1 false), !noalias !155
  br label %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOS8_.exit.i.i.i.i"

"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOS8_.exit.i.i.i.i": ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i.i.i
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !84, !noalias !155 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !19, !noalias !155
  %i.bz = load ptr, ptr %i.bo, align 8, !tbaa !25, !noalias !155
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !20, !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23, !noalias !155
  %i.cb = load ptr, ptr %1, align 8, !tbaa !154, !noalias !155, !nonnull !74, !align !75
  store ptr %i.cb, ptr %2, align 8, !tbaa !86, !alias.scope !155
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !16, !alias.scope !155
  %i.ce = load ptr, ptr %i.bo, align 8, !tbaa !25, !noalias !155 ; 2 uses
  %i.cf = load i64, ptr %i.by, align 8, !tbaa !19, !noalias !155 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !155
  store i64 %i.cf, ptr %i.b, align 8, !tbaa !84, !noalias !155
  %i.cg = icmp ugt i64 %i.cf, 15
  br i1 %i.cg, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOS8_.exit.i.i.i.i"
  %i.ch = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i4.i.i unwind label %bb.o ; 2 uses

.noexc.i.i4.i.i:                                  ; preds = %.noexc.i.i.i.i.i.i.i
  store ptr %i.ch, ptr %i.cc, align 8, !tbaa !25, !alias.scope !155
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !84, !noalias !155
  store i64 %i.ci, ptr %i.cd, align 8, !tbaa !20, !alias.scope !155
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i4.i.i, %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOS8_.exit.i.i.i.i"
  %i.cj = phi ptr [ %i.ch, %.noexc.i.i4.i.i ], [ %i.cd, %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOS8_.exit.i.i.i.i" ] ; 2 uses
  switch i64 %i.cf, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ck = load i8, ptr %i.ce, align 1, !tbaa !20
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !20
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.ce, i64 %i.cf, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.i.i.i.i
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !84, !noalias !155 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !19, !alias.scope !155
  %i.cn = load ptr, ptr %i.cc, align 8, !tbaa !25, !alias.scope !155
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 0, ptr %i.co, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !155
  %i.cp = load ptr, ptr %i.bo, align 8, !tbaa !25, !noalias !155 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bp
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.cr = load i64, ptr %i.bp, align 8, !tbaa !20, !noalias !155
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %i.bo, align 8, !tbaa !25, !noalias !155 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.bp
  br i1 %i.cv, label %.body.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i: ; preds = %bb.o
  %i.cw = load i64, ptr %i.bp, align 8, !tbaa !20, !noalias !155
  %7 = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %7) #24
  br label %.body.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.cx = load ptr, ptr %2, align 8, !tbaa !154, !nonnull !74, !align !75
  store ptr %i.cx, ptr %0, align 8, !tbaa !86
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !16
  %i.da = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.db = load i64, ptr %i.cm, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.db, ptr %i.a, align 8, !tbaa !84
  %i.dc = icmp ugt i64 %i.db, 15
  br i1 %i.dc, label %.noexc.i.i.i.i9.i.i.i, label %._crit_edge.i.i.i.i.i7.i.i.i

.noexc.i.i.i.i9.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.dd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10.i.i.i unwind label %bb.ab ; 2 uses

.noexc10.i.i.i:                                   ; preds = %.noexc.i.i.i.i9.i.i.i
  store ptr %i.dd, ptr %i.cy, align 8, !tbaa !25
  %i.de = load i64, ptr %i.a, align 8, !tbaa !84
  store i64 %i.de, ptr %i.cz, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i.i7.i.i.i

._crit_edge.i.i.i.i.i7.i.i.i:                     ; preds = %.noexc10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.df = phi ptr [ %i.dd, %.noexc10.i.i.i ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.db, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i"
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i7.i.i.i
  %i.dg = load i8, ptr %i.da, align 1, !tbaa !20
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !20
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i"

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i7.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.da, i64 %i.db, i1 false)
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i": ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i7.i.i.i
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !84  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !19
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dh
  store i8 0, ptr %i.dk, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.dl = ptrtoint ptr %.8.val to i64             ; 2 uses
  %i.dm = ptrtoint ptr %.0.val1 to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 2 uses
  %i.do = sdiv exact i64 %i.dn, 560
  %i.dp = ashr i64 %i.do, 2                       ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i3.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i", %bb.u
  %.049.i.i.i.i.i = phi i64 [ %i.dz, %bb.u ], [ %i.dp, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i" ] ; 2 uses
  %.sroa.038.048.i.i.i.i.i = phi ptr [ %i.dy, %bb.u ], [ %.0.val1, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i" ] ; 6 uses
  %.val27.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !154
  %.val28.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.dr = invoke noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr noundef nonnull align 8 dereferenceable(560) %.sroa.038.048.i.i.i.i.i, ptr noundef %.val28.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.val27.i.i.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %.noexc.i8.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i8.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.dr, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %.noexc.i8.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.038.048.i.i.i.i.i, i64 560 ; 2 uses
  %.val25.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !154
  %.val26.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.dt = invoke noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr noundef nonnull align 8 dereferenceable(560) %i.ds, ptr noundef %.val26.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.val25.i.i.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %.noexc4.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4.i.i.i.i:                                  ; preds = %bb.r
  br i1 %i.dt, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %.noexc4.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.038.048.i.i.i.i.i, i64 1120 ; 2 uses
  %.val23.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !154
  %.val24.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.dv = invoke noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr noundef nonnull align 8 dereferenceable(560) %i.du, ptr noundef %.val24.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.val23.i.i.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %.noexc5.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5.i.i.i.i:                                  ; preds = %bb.s
  br i1 %i.dv, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %.noexc5.i.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.038.048.i.i.i.i.i, i64 1680 ; 2 uses
  %.val21.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !154
  %.val22.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.dx = invoke noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr noundef nonnull align 8 dereferenceable(560) %i.dw, ptr noundef %.val22.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.val21.i.i.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %.noexc6.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6.i.i.i.i:                                  ; preds = %bb.t
  br i1 %i.dx, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.u

bb.u:                                             ; preds = %.noexc6.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.038.048.i.i.i.i.i, i64 2240 ; 3 uses
  %i.dz = add nsw i64 %.049.i.i.i.i.i, -1
  %i.ea = icmp sgt i64 %.049.i.i.i.i.i, 1
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !152

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.u
  %.pre.i.i.i.i.i = ptrtoint ptr %i.dy to i64
  %.pre50.i.i.i.i.i = sub i64 %i.dl, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i3.i.i

._crit_edge.i.i.i3.i.i:                           ; preds = %._crit_edge.loopexit.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i"
  %.pre-phi51.i.i.i.i.i = phi i64 [ %.pre50.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.dn, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i" ]
  %.sroa.038.0.lcssa.i.i.i.i.i = phi ptr [ %i.dy, %._crit_edge.loopexit.i.i.i.i.i ], [ %.0.val1, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i" ] ; 5 uses
  %i.eb = sdiv exact i64 %.pre-phi51.i.i.i.i.i, 560
  switch i64 %i.eb, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i" [
    i64 3, label %bb.v
    i64 2, label %bb.x
    i64 1, label %bb.z
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i3.i.i
  %.val19.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !154
  %.val20.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.ec = invoke noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr noundef nonnull align 8 dereferenceable(560) %.sroa.038.0.lcssa.i.i.i.i.i, ptr noundef %.val20.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.val19.i.i.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %.noexc7.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7.i.i.i.i:                                  ; preds = %bb.v
  br i1 %i.ec, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %.noexc7.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i.i.i, i64 560
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i3.i.i
  %.sroa.038.1.i.i.i.i.i = phi ptr [ %i.ed, %bb.w ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i3.i.i ] ; 3 uses
  %.val17.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !154
  %.val18.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.ee = invoke noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr noundef nonnull align 8 dereferenceable(560) %.sroa.038.1.i.i.i.i.i, ptr noundef %.val18.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.val17.i.i.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %.noexc8.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8.i.i.i.i:                                  ; preds = %bb.x
  br i1 %i.ee, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.y

bb.y:                                             ; preds = %.noexc8.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i.i, i64 560
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i3.i.i
  %.sroa.038.2.i.i.i.i.i = phi ptr [ %i.ef, %bb.y ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i3.i.i ] ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !154
  %.val16.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.eg = invoke noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr noundef nonnull align 8 dereferenceable(560) %.sroa.038.2.i.i.i.i.i, ptr noundef %.val16.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.val.i.i.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %.noexc9.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9.i.i.i.i:                                  ; preds = %bb.z
  %spec.select.i.i.i.i.i = select i1 %i.eg, ptr %.sroa.038.2.i.i.i.i.i, ptr %.8.val
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i": ; preds = %.noexc6.i.i.i.i, %.noexc5.i.i.i.i, %.noexc4.i.i.i.i, %.noexc.i8.i.i.i, %.noexc9.i.i.i.i, %.noexc8.i.i.i.i, %.noexc7.i.i.i.i, %._crit_edge.i.i.i3.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.038.1.i.i.i.i.i, %.noexc8.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.noexc9.i.i.i.i ], [ %.8.val, %._crit_edge.i.i.i3.i.i ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %.noexc7.i.i.i.i ], [ %.sroa.038.048.i.i.i.i.i, %.noexc.i8.i.i.i ], [ %i.ds, %.noexc4.i.i.i.i ], [ %i.du, %.noexc5.i.i.i.i ], [ %i.dw, %.noexc6.i.i.i.i ]
  %i.eh = load ptr, ptr %i.cy, align 8, !tbaa !25 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.cz
  br i1 %i.ei, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i"
  %i.ej = load i64, ptr %i.cz, align 8, !tbaa !20
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.s, %bb.r, %.lr.ph.i.i.i.i.i, %bb.z, %bb.x, %bb.v
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %i.cy, align 8, !tbaa !25 ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.cz
  br i1 %i.em, label %.body11.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.en = load i64, ptr %i.cz, align 8, !tbaa !20
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #24
  br label %.body11.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  %i.ep = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.cd
  br i1 %i.eq, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.er = load i64, ptr %i.cd, align 8, !tbaa !20
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #24
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13.i.i.i
  %i.et = load ptr, ptr %i.ba, align 8, !tbaa !25 ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.bb
  br i1 %i.eu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i.i.i"
  %i.ev = load i64, ptr %i.bb, align 8, !tbaa !20
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.aa:                                            ; preds = %.noexc.i.i.i.i.i.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ab:                                            ; preds = %.noexc.i.i.i.i9.i.i.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i.i.i

.body11.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i.i.i
  %eh.lpad-body12.i.i.i = phi { ptr, i32 } [ %i.ey, %bb.ab ], [ %lpad.loopexit.split-lp31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i.i.i ], [ %lpad.loopexit.split-lp31, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ez = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.cd
  br i1 %i.fa, label %.body.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15.i.i.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15.i.i.i.a: ; preds = %.body11.i.i.i
  %8 = load i64, ptr %i.cd, align 8, !tbaa !20
  %i.fb = add i64 %8, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fb) #24
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.body11.i.i.i, %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15.i.i.i.a, %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body12.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15.i.i.i.a ], [ %i.ex, %bb.aa ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i ], [ %i.ct, %bb.o ], [ %eh.lpad-body12.i.i.i, %.body11.i.i.i ] ; 2 uses
  %i.fc = load ptr, ptr %i.ba, align 8, !tbaa !25 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.bb
  br i1 %i.fd, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i.i.i: ; preds = %.body.i.i.i
  %i.fe = load i64, ptr %i.bb, align 8, !tbaa !20
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #24
  br label %.body.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.fg = load ptr, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.an
  br i1 %i.fh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.fi = load i64, ptr %i.an, align 8, !tbaa !20
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc.i.i.i.i.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.i, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.fk, %bb.ac ], [ %.pn.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i.i.i ], [ %.pn.i.i.i, %.body.i.i.i ] ; 2 uses
  %i.fl = load ptr, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.an
  br i1 %i.fm, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i.i: ; preds = %.body.i.i
  %i.fn = load i64, ptr %i.an, align 8, !tbaa !20
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #24
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.fp = load ptr, ptr %i.y, align 8, !tbaa !25  ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.z
  br i1 %i.fq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.fr = load i64, ptr %i.z, align 8, !tbaa !20
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.ad:                                            ; preds = %.noexc.i.i.i.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body.i.i, %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ft, %bb.ad ], [ %eh.lpad-body.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %i.fu = load ptr, ptr %i.y, align 8, !tbaa !25  ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.z
  br i1 %i.fv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i: ; preds = %.body.i
  %i.fw = load i64, ptr %i.z, align 8, !tbaa !20
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #24
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fy = load ptr, ptr %i.i, align 8, !tbaa !25  ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.k
  br i1 %i.fz, label %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ga = load i64, ptr %i.k, align 8, !tbaa !20
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #24
  br label %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit"

"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.gc = icmp ne ptr %.8.val, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  ret i1 %i.gc

bb.ae:                                            ; preds = %.noexc.i.i.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %i.gd, %bb.ae ], [ %eh.lpad-body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i ], [ %eh.lpad-body.i, %.body.i ]
  %i.ge = load ptr, ptr %i.i, align 8, !tbaa !25  ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.k
  br i1 %i.gf, label %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit8", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %.body
  %i.gg = load i64, ptr %i.k, align 8, !tbaa !20
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #24
  br label %"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit8"

"_ZZNK26cmRuntimeDependencyArchive13IsPreExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit8": ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.cmsys::RegularExpressionMatch", align 8 ; 5 uses
  %3 = alloca %class.anon.199, align 8            ; 9 uses
  %4 = alloca %class.anon.201, align 8            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %2, i8 0, i64 520, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !16
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.g, ptr %i.b, align 8, !tbaa !84
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !25
  %i.j = load i64, ptr %i.b, align 8, !tbaa !84
  store i64 %i.j, ptr %i.d, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !20
  store i8 %i.l, ptr %i.k, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !19
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !16
  %i.r = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.s = load i64, ptr %i.f, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.s, ptr %i.a, align 8, !tbaa !84
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i24, label %._crit_edge.i.i23

.noexc.i24:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i24
  store ptr %i.u, ptr %4, align 8, !tbaa !25
  %i.v = load i64, ptr %i.a, align 8, !tbaa !84
  store i64 %i.v, ptr %i.q, align 8, !tbaa !20
  br label %._crit_edge.i.i23

._crit_edge.i.i23:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = phi ptr [ %i.u, %.noexc ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i23
  %i.x = load i8, ptr %i.r, align 1, !tbaa !20
  store i8 %i.x, ptr %i.w, align 1, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.r, i64 %i.s, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i23
  %i.y = load i64, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !19
end_hunk_0
begin_hunk_1_@"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_3clERKSt6vectorIS5_SaIS5_EE":bb.a
  %i.z = load ptr, ptr %5, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %.val.i = load ptr, ptr %5, align 8, !tbaa !25  ; 2 uses
  %.val4.i = load i64, ptr %i.y, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 %.val4.i, ptr %i.e, align 8, !tbaa !84
  %i.ac = icmp ugt i64 %.val4.i, 15
  br i1 %i.ac, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i"
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.ad  ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i.i
  store ptr %i.ad, ptr %4, align 8, !tbaa !25
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !84
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i"
  %i.af = phi ptr [ %i.ad, %.noexc.i ], [ %i.ab, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i" ] ; 2 uses
  switch i64 %.val4.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i.i"
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ag = load i8, ptr %.val.i, align 1, !tbaa !20
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !20
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i.i"

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr readonly align 1 %.val.i, i64 %.val4.i, i1 false)
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i.i"

"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i.i": ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !84  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !19
  %i.aj = load ptr, ptr %4, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %.val.i.i = load ptr, ptr %4, align 8, !tbaa !25 ; 2 uses
  %.val3.i.i = load i64, ptr %i.ai, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 %.val3.i.i, ptr %i.d, align 8, !tbaa !84
  %i.am = icmp ugt i64 %.val3.i.i, 15
  br i1 %i.am, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i.i"
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc.i.i6 unwind label %bb.ac ; 2 uses

.noexc.i.i6:                                      ; preds = %.noexc.i.i.i.i.i
  store ptr %i.an, ptr %3, align 8, !tbaa !25
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !84
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i6, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i.i"
  %i.ap = phi ptr [ %i.an, %.noexc.i.i6 ], [ %i.al, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i.i" ] ; 2 uses
  switch i64 %.val3.i.i, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i.i.i"
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aq = load i8, ptr %.val.i.i, align 1, !tbaa !20
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !20
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i.i.i"

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr readonly align 1 %.val.i.i, i64 %.val3.i.i, i1 false)
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i.i.i"

"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i.i.i": ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !84  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !19
  %i.at = load ptr, ptr %3, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %.val.i.i.i = load ptr, ptr %3, align 8, !tbaa !25 ; 2 uses
  %.val7.i.i.i = load i64, ptr %i.as, align 8, !tbaa !19 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.av, ptr %1, align 8, !tbaa !16, !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23, !noalias !159
  store i64 %.val7.i.i.i, ptr %i.c, align 8, !tbaa !84, !noalias !159
  %i.aw = icmp ugt i64 %.val7.i.i.i, 15
  br i1 %i.aw, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i.i.i"
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i.i5.i unwind label %bb.aa, !noalias !159 ; 2 uses

.noexc.i.i5.i:                                    ; preds = %.noexc.i.i.i.i.i.i
  store ptr %i.ax, ptr %1, align 8, !tbaa !25, !noalias !159
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !84, !noalias !159
  store i64 %i.ay, ptr %i.av, align 8, !tbaa !20, !noalias !159
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i5.i, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i.i.i"
  %i.az = phi ptr [ %i.ax, %.noexc.i.i5.i ], [ %i.av, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2ERKS8_.exit.i.i.i" ] ; 2 uses
  switch i64 %.val7.i.i.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2EOS8_.exit.i.i.i.i"
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ba = load i8, ptr %.val.i.i.i, align 1, !tbaa !20, !noalias !159
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !20, !noalias !159
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2EOS8_.exit.i.i.i.i"

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr readonly align 1 %.val.i.i.i, i64 %.val7.i.i.i, i1 false), !noalias !159
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2EOS8_.exit.i.i.i.i"

"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2EOS8_.exit.i.i.i.i": ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i.i.i
  %i.bb = load i64, ptr %i.c, align 8, !tbaa !84, !noalias !159 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !19, !noalias !159
  %i.bd = load ptr, ptr %1, align 8, !tbaa !25, !noalias !159
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !20, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23, !noalias !159
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.bf, ptr %2, align 8, !tbaa !16, !alias.scope !159
  %i.bg = load ptr, ptr %1, align 8, !tbaa !25, !noalias !159 ; 2 uses
  %i.bh = load i64, ptr %i.bc, align 8, !tbaa !19, !noalias !159 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !159
  store i64 %i.bh, ptr %i.b, align 8, !tbaa !84, !noalias !159
  %i.bi = icmp ugt i64 %i.bh, 15
  br i1 %i.bi, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2EOS8_.exit.i.i.i.i"
  %i.bj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i5.i.i unwind label %bb.o ; 2 uses

.noexc.i.i5.i.i:                                  ; preds = %.noexc.i.i.i.i.i.i.i
  store ptr %i.bj, ptr %2, align 8, !tbaa !25, !alias.scope !159
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !84, !noalias !159
  store i64 %i.bk, ptr %i.bf, align 8, !tbaa !20, !alias.scope !159
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i5.i.i, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2EOS8_.exit.i.i.i.i"
  %i.bl = phi ptr [ %i.bj, %.noexc.i.i5.i.i ], [ %i.bf, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2C2EOS8_.exit.i.i.i.i" ] ; 2 uses
  switch i64 %i.bh, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bm = load i8, ptr %i.bg, align 1, !tbaa !20
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !20
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.i.i.i.i
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !84, !noalias !159 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !19, !alias.scope !159
  %i.bp = load ptr, ptr %2, align 8, !tbaa !25, !alias.scope !159
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  store i8 0, ptr %i.bq, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !159
  %i.br = load ptr, ptr %1, align 8, !tbaa !25, !noalias !159 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.av
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.bt = load i64, ptr %i.av, align 8, !tbaa !20, !noalias !159
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %1, align 8, !tbaa !25, !noalias !159 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.av
  br i1 %i.bx, label %.body.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i: ; preds = %bb.o
  %i.by = load i64, ptr %i.av, align 8, !tbaa !20, !noalias !159
  %7 = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %7) #24
  br label %.body.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.val8.i.i.i = load ptr, ptr %2, align 8, !tbaa !25 ; 2 uses
  %.val9.i.i.i = load i64, ptr %i.bo, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.bz, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %.val9.i.i.i, ptr %i.a, align 8, !tbaa !84
  %i.ca = icmp ugt i64 %.val9.i.i.i, 15
  br i1 %i.ca, label %.noexc.i.i.i.i12.i.i.i, label %._crit_edge.i.i.i.i.i10.i.i.i

.noexc.i.i.i.i12.i.i.i:                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.cb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13.i.i.i unwind label %bb.ab ; 2 uses

.noexc13.i.i.i:                                   ; preds = %.noexc.i.i.i.i12.i.i.i
  store ptr %i.cb, ptr %0, align 8, !tbaa !25
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !84
  store i64 %i.cc, ptr %i.bz, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i.i10.i.i.i

._crit_edge.i.i.i.i.i10.i.i.i:                    ; preds = %.noexc13.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.cd = phi ptr [ %i.cb, %.noexc13.i.i.i ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i ] ; 2 uses
  switch i64 %.val9.i.i.i, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2EC2ERKSC_.exit.i.i.i.i"
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i10.i.i.i
  %i.ce = load i8, ptr %.val8.i.i.i, align 1, !tbaa !20
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !20
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2EC2ERKSC_.exit.i.i.i.i"

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i10.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr readonly align 1 %.val8.i.i.i, i64 %.val9.i.i.i, i1 false)
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2EC2ERKSC_.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2EC2ERKSC_.exit.i.i.i.i": ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i10.i.i.i
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !84  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !19
  %i.ch = load ptr, ptr %0, align 8, !tbaa !25
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  store i8 0, ptr %i.ci, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.cj = ptrtoint ptr %.8.val to i64             ; 2 uses
  %i.ck = ptrtoint ptr %.0.val1 to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = ashr i64 %i.cl, 7                       ; 2 uses
  %i.cn = icmp sgt i64 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i4.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2EC2ERKSC_.exit.i.i.i.i", %bb.u
  %.036.i.i.i.i.i = phi i64 [ %i.cw, %bb.u ], [ %i.cm, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2EC2ERKSC_.exit.i.i.i.i" ] ; 2 uses
  %.sroa.025.035.i.i.i.i.i = phi ptr [ %i.cv, %bb.u ], [ %.0.val1, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2EC2ERKSC_.exit.i.i.i.i" ] ; 6 uses
  %i.co = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools8SameFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.025.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc.i11.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i11.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.co, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERS8_E3$_2EEET_SK_SK_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %.noexc.i11.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i.i.i.i.i, i64 32 ; 2 uses
  %i.cq = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools8SameFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc4.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4.i.i.i.i:                                  ; preds = %bb.r
  br i1 %i.cq, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERS8_E3$_2EEET_SK_SK_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %.noexc4.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i.i.i.i.i, i64 64 ; 2 uses
  %i.cs = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools8SameFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc5.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5.i.i.i.i:                                  ; preds = %bb.s
  br i1 %i.cs, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERS8_E3$_2EEET_SK_SK_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %.noexc5.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i.i.i.i.i, i64 96 ; 2 uses
  %i.cu = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools8SameFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc6.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6.i.i.i.i:                                  ; preds = %bb.t
  br i1 %i.cu, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERS8_E3$_2EEET_SK_SK_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.u

bb.u:                                             ; preds = %.noexc6.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i.i.i.i.i, i64 128 ; 3 uses
  %i.cw = add nsw i64 %.036.i.i.i.i.i, -1
  %i.cx = icmp sgt i64 %.036.i.i.i.i.i, 1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !158

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.u
  %.pre.i.i.i.i.i = ptrtoint ptr %i.cv to i64
  %.pre37.i.i.i.i.i = sub i64 %i.cj, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i4.i.i

._crit_edge.i.i.i4.i.i:                           ; preds = %._crit_edge.loopexit.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2EC2ERKSC_.exit.i.i.i.i"
  %.pre-phi38.i.i.i.i.i = phi i64 [ %.pre37.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.cl, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2EC2ERKSC_.exit.i.i.i.i" ]
  %.sroa.025.0.lcssa.i.i.i.i.i = phi ptr [ %i.cv, %._crit_edge.loopexit.i.i.i.i.i ], [ %.0.val1, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2EC2ERKSC_.exit.i.i.i.i" ] ; 5 uses
  %i.cy = ashr exact i64 %.pre-phi38.i.i.i.i.i, 5
  switch i64 %i.cy, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERS8_E3$_2EEET_SK_SK_T0_St26random_access_iterator_tag.exit.i.i.i.i" [
    i64 3, label %bb.v
    i64 2, label %bb.x
    i64 1, label %bb.z
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i4.i.i
  %i.cz = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools8SameFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.025.0.lcssa.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc7.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7.i.i.i.i:                                  ; preds = %bb.v
  br i1 %i.cz, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERS8_E3$_2EEET_SK_SK_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %.noexc7.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i, i64 32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i4.i.i
  %.sroa.025.1.i.i.i.i.i = phi ptr [ %i.da, %bb.w ], [ %.sroa.025.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i4.i.i ] ; 3 uses
  %i.db = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools8SameFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.025.1.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc8.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8.i.i.i.i:                                  ; preds = %bb.x
  br i1 %i.db, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERS8_E3$_2EEET_SK_SK_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.y

bb.y:                                             ; preds = %.noexc8.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i, i64 32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i4.i.i
  %.sroa.025.2.i.i.i.i.i = phi ptr [ %i.dc, %bb.y ], [ %.sroa.025.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i4.i.i ] ; 2 uses
  %i.dd = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools8SameFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.025.2.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc9.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9.i.i.i.i:                                  ; preds = %bb.z
  %spec.select.i.i.i.i.i = select i1 %i.dd, ptr %.sroa.025.2.i.i.i.i.i, ptr %.8.val
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERS8_E3$_2EEET_SK_SK_T0_St26random_access_iterator_tag.exit.i.i.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERS8_E3$_2EEET_SK_SK_T0_St26random_access_iterator_tag.exit.i.i.i.i": ; preds = %.noexc6.i.i.i.i, %.noexc5.i.i.i.i, %.noexc4.i.i.i.i, %.noexc.i11.i.i.i, %.noexc9.i.i.i.i, %.noexc8.i.i.i.i, %.noexc7.i.i.i.i, %._crit_edge.i.i.i4.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.025.1.i.i.i.i.i, %.noexc8.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.noexc9.i.i.i.i ], [ %.8.val, %._crit_edge.i.i.i4.i.i ], [ %.sroa.025.0.lcssa.i.i.i.i.i, %.noexc7.i.i.i.i ], [ %.sroa.025.035.i.i.i.i.i, %.noexc.i11.i.i.i ], [ %i.cp, %.noexc4.i.i.i.i ], [ %i.cr, %.noexc5.i.i.i.i ], [ %i.ct, %.noexc6.i.i.i.i ]
  %i.de = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bz
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERS8_E3$_2EEET_SK_SK_T0_St26random_access_iterator_tag.exit.i.i.i.i"
  %i.dg = load i64, ptr %i.bz, align 8, !tbaa !20
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.s, %bb.r, %.lr.ph.i.i.i.i.i, %bb.z, %bb.x, %bb.v
  %lpad.loopexit.split-lp29 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bz
  br i1 %i.dj, label %.body14.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dk = load i64, ptr %i.bz, align 8, !tbaa !20
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #24
  br label %.body14.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERS8_E3$_2EEET_SK_SK_T0_St26random_access_iterator_tag.exit.i.i.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  %i.dm = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.bf
  br i1 %i.dn, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ED2Ev.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.do = load i64, ptr %i.bf, align 8, !tbaa !20
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #24
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ED2Ev.exit.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ED2Ev.exit.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i.i.i
  %i.dq = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.al
  br i1 %i.dr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ED2Ev.exit.i.i.i"
  %i.ds = load i64, ptr %i.al, align 8, !tbaa !20
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.aa:                                            ; preds = %.noexc.i.i.i.i.i.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ab:                                            ; preds = %.noexc.i.i.i.i12.i.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i.i

.body14.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i.i.i
  %eh.lpad-body15.i.i.i = phi { ptr, i32 } [ %i.dv, %bb.ab ], [ %lpad.loopexit.split-lp29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i.i.i ], [ %lpad.loopexit.split-lp29, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.dw = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.bf
  br i1 %i.dx, label %.body.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.i.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.i.i.a: ; preds = %.body14.i.i.i
  %8 = load i64, ptr %i.bf, align 8, !tbaa !20
  %i.dy = add i64 %8, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dy) #24
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.body14.i.i.i, %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.i.i.a, %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body15.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18.i.i.i.a ], [ %i.du, %bb.aa ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i ], [ %i.bv, %bb.o ], [ %eh.lpad-body15.i.i.i, %.body14.i.i.i ] ; 2 uses
  %i.dz = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.al
  br i1 %i.ea, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i: ; preds = %.body.i.i.i
  %i.eb = load i64, ptr %i.al, align 8, !tbaa !20
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #24
  br label %.body.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_2ED2Ev.exit.i.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ed = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.ab
  br i1 %i.ee, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ef = load i64, ptr %i.ab, align 8, !tbaa !20
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc.i.i.i.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.i, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.eh, %bb.ac ], [ %.pn.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i ], [ %.pn.i.i.i, %.body.i.i.i ] ; 2 uses
  %i.ei = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ab
  br i1 %i.ej, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i.i: ; preds = %.body.i.i
  %i.ek = load i64, ptr %i.ab, align 8, !tbaa !20
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #24
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.em = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.r
  br i1 %i.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.eo = load i64, ptr %i.r, align 8, !tbaa !20
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.ad:                                            ; preds = %.noexc.i.i.i.i
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body.i.i, %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.eq, %bb.ad ], [ %eh.lpad-body.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %i.er = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.r
  br i1 %i.es, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i: ; preds = %.body.i
  %i.et = load i64, ptr %i.r, align 8, !tbaa !20
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #24
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ev = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.h
  br i1 %i.ew, label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ex = load i64, ptr %i.h, align 8, !tbaa !20
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #24
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2D2Ev.exit"

"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2D2Ev.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ez = icmp ne ptr %.8.val, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  ret i1 %i.ez

bb.ae:                                            ; preds = %.noexc.i.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %i.fa, %bb.ae ], [ %eh.lpad-body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i ], [ %eh.lpad-body.i, %.body.i ]
  %i.fb = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.h
  br i1 %i.fc, label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2D2Ev.exit9", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %.body
  %i.fd = load i64, ptr %i.h, align 8, !tbaa !20
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #24
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2D2Ev.exit9"

"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_2D2Ev.exit9": ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clERKSt6vectorIN5cmsys17RegularExpressionESaISB_EE"(ptr nofree readonly captures(none) %.0.val, ptr %.0.val1, ptr %.8.val) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %0 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.217", align 8 ; 13 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %1 = alloca %class.anon.199, align 8            ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.217", align 8 ; 7 uses
  %3 = alloca %class.anon.199, align 8            ; 7 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %class.anon.199, align 8            ; 7 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %5 = alloca %class.anon.199, align 8            ; 7 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %6 = alloca %class.anon.199, align 8            ; 5 uses
  %i.h = load ptr, ptr %.0.val, align 8, !tbaa !164, !nonnull !74, !align !75
  store ptr %i.h, ptr %6, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 7 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !16
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i64 %i.n, ptr %i.g, align 8, !tbaa !84
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %i.i, align 8, !tbaa !25
  %i.q = load i64, ptr %i.g, align 8, !tbaa !84
  store i64 %i.q, ptr %i.k, align 8, !tbaa !20
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.r = phi ptr [ %i.p, %.noexc.i.i ], [ %i.k, %bb.a ] ; 2 uses
  switch i64 %i.n, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit"
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !20
  store i8 %i.s, ptr %i.r, align 1, !tbaa !20
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit"

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit"

"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit": ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.t = load i64, ptr %i.g, align 8, !tbaa !84   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !19
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.x = load ptr, ptr %6, align 8, !tbaa !164, !nonnull !74, !align !75
  store ptr %i.x, ptr %5, align 8, !tbaa !86
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !16
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !25  ; 2 uses
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !19  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 %i.ab, ptr %i.f, align 8, !tbaa !84
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit"
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc unwind label %bb.ae    ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !25
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !84
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit"
  %i.af = phi ptr [ %i.ad, %.noexc ], [ %i.z, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit" ] ; 2 uses
  switch i64 %i.ab, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i"
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !20
end_hunk_1
begin_hunk_2_@"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clERKSt6vectorIN5cmsys17RegularExpressionESaISB_EE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 %i.ap, ptr %i.e, align 8, !tbaa !84
  %i.aq = icmp ugt i64 %i.ap, 15
  br i1 %i.aq, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i"
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.ad  ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i.i
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !25
  %i.as = load i64, ptr %i.e, align 8, !tbaa !84
  store i64 %i.as, ptr %i.an, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i"
  %i.at = phi ptr [ %i.ar, %.noexc.i ], [ %i.an, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i" ] ; 2 uses
  switch i64 %i.ap, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i"
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.au = load i8, ptr %i.ao, align 1, !tbaa !20
  store i8 %i.au, ptr %i.at, align 1, !tbaa !20
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i"

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.ao, i64 %i.ap, i1 false)
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i"

"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i": ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i
  %i.av = load i64, ptr %i.e, align 8, !tbaa !84  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !19
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.az = load ptr, ptr %4, align 8, !tbaa !164, !nonnull !74, !align !75
  store ptr %i.az, ptr %3, align 8, !tbaa !86
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !16
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %i.bd = load i64, ptr %i.aw, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 %i.bd, ptr %i.d, align 8, !tbaa !84
  %i.be = icmp ugt i64 %i.bd, 15
  br i1 %i.be, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i"
  %i.bf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc.i.i5 unwind label %bb.ac ; 2 uses

.noexc.i.i5:                                      ; preds = %.noexc.i.i.i.i.i
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !25
  %i.bg = load i64, ptr %i.d, align 8, !tbaa !84
  store i64 %i.bg, ptr %i.bb, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i5, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i"
  %i.bh = phi ptr [ %i.bf, %.noexc.i.i5 ], [ %i.bb, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i" ] ; 2 uses
  switch i64 %i.bd, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i.i"
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bi = load i8, ptr %i.bc, align 1, !tbaa !20
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !20
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i.i"

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bc, i64 %i.bd, i1 false)
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i.i"

"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i.i": ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i
  %i.bj = load i64, ptr %i.d, align 8, !tbaa !84  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !19
  %i.bl = load ptr, ptr %i.ba, align 8, !tbaa !25
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.bn = load ptr, ptr %3, align 8, !tbaa !164, !noalias !165, !nonnull !74, !align !75
  store ptr %i.bn, ptr %1, align 8, !tbaa !86, !noalias !165
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !16, !noalias !165
  %i.bq = load ptr, ptr %i.ba, align 8, !tbaa !25, !noalias !165 ; 2 uses
  %i.br = load i64, ptr %i.bk, align 8, !tbaa !19, !noalias !165 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23, !noalias !165
  store i64 %i.br, ptr %i.c, align 8, !tbaa !84, !noalias !165
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i.i"
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i.i4.i unwind label %bb.aa, !noalias !165 ; 2 uses

.noexc.i.i4.i:                                    ; preds = %.noexc.i.i.i.i.i.i
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !25, !noalias !165
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !84, !noalias !165
  store i64 %i.bu, ptr %i.bp, align 8, !tbaa !20, !noalias !165
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i4.i, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i.i"
  %i.bv = phi ptr [ %i.bt, %.noexc.i.i4.i ], [ %i.bp, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2ERKS8_.exit.i.i.i" ] ; 2 uses
  switch i64 %i.br, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOS8_.exit.i.i.i.i"
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.bw = load i8, ptr %i.bq, align 1, !tbaa !20, !noalias !165
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !20, !noalias !165
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOS8_.exit.i.i.i.i"

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bq, i64 %i.br, i1 false), !noalias !165
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOS8_.exit.i.i.i.i"

"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOS8_.exit.i.i.i.i": ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i.i.i
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !84, !noalias !165 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !19, !noalias !165
  %i.bz = load ptr, ptr %i.bo, align 8, !tbaa !25, !noalias !165
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !20, !noalias !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23, !noalias !165
  %i.cb = load ptr, ptr %1, align 8, !tbaa !164, !noalias !165, !nonnull !74, !align !75
  store ptr %i.cb, ptr %2, align 8, !tbaa !86, !alias.scope !165
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !16, !alias.scope !165
  %i.ce = load ptr, ptr %i.bo, align 8, !tbaa !25, !noalias !165 ; 2 uses
  %i.cf = load i64, ptr %i.by, align 8, !tbaa !19, !noalias !165 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !165
  store i64 %i.cf, ptr %i.b, align 8, !tbaa !84, !noalias !165
  %i.cg = icmp ugt i64 %i.cf, 15
  br i1 %i.cg, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOS8_.exit.i.i.i.i"
  %i.ch = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i4.i.i unwind label %bb.o ; 2 uses

.noexc.i.i4.i.i:                                  ; preds = %.noexc.i.i.i.i.i.i.i
  store ptr %i.ch, ptr %i.cc, align 8, !tbaa !25, !alias.scope !165
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !84, !noalias !165
  store i64 %i.ci, ptr %i.cd, align 8, !tbaa !20, !alias.scope !165
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i4.i.i, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOS8_.exit.i.i.i.i"
  %i.cj = phi ptr [ %i.ch, %.noexc.i.i4.i.i ], [ %i.cd, %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0C2EOS8_.exit.i.i.i.i" ] ; 2 uses
  switch i64 %i.cf, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ck = load i8, ptr %i.ce, align 1, !tbaa !20
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !20
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.ce, i64 %i.cf, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.i.i.i.i
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !84, !noalias !165 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !19, !alias.scope !165
  %i.cn = load ptr, ptr %i.cc, align 8, !tbaa !25, !alias.scope !165
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 0, ptr %i.co, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !165
  %i.cp = load ptr, ptr %i.bo, align 8, !tbaa !25, !noalias !165 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bp
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.cr = load i64, ptr %i.bp, align 8, !tbaa !20, !noalias !165
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %i.bo, align 8, !tbaa !25, !noalias !165 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.bp
  br i1 %i.cv, label %.body.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i: ; preds = %bb.o
  %i.cw = load i64, ptr %i.bp, align 8, !tbaa !20, !noalias !165
  %7 = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %7) #24
  br label %.body.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.cx = load ptr, ptr %2, align 8, !tbaa !164, !nonnull !74, !align !75
  store ptr %i.cx, ptr %0, align 8, !tbaa !86
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !16
  %i.da = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.db = load i64, ptr %i.cm, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.db, ptr %i.a, align 8, !tbaa !84
  %i.dc = icmp ugt i64 %i.db, 15
  br i1 %i.dc, label %.noexc.i.i.i.i9.i.i.i, label %._crit_edge.i.i.i.i.i7.i.i.i

.noexc.i.i.i.i9.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.dd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10.i.i.i unwind label %bb.ab ; 2 uses

.noexc10.i.i.i:                                   ; preds = %.noexc.i.i.i.i9.i.i.i
  store ptr %i.dd, ptr %i.cy, align 8, !tbaa !25
  %i.de = load i64, ptr %i.a, align 8, !tbaa !84
  store i64 %i.de, ptr %i.cz, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i.i7.i.i.i

._crit_edge.i.i.i.i.i7.i.i.i:                     ; preds = %.noexc10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.df = phi ptr [ %i.dd, %.noexc10.i.i.i ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.db, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i"
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i7.i.i.i
  %i.dg = load i8, ptr %i.da, align 1, !tbaa !20
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !20
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i"

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i7.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.da, i64 %i.db, i1 false)
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i": ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i7.i.i.i
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !84  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !19
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dh
  store i8 0, ptr %i.dk, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.dl = ptrtoint ptr %.8.val to i64             ; 2 uses
  %i.dm = ptrtoint ptr %.0.val1 to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 2 uses
  %i.do = sdiv exact i64 %i.dn, 560
  %i.dp = ashr i64 %i.do, 2                       ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i3.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i", %bb.u
  %.049.i.i.i.i.i = phi i64 [ %i.dz, %bb.u ], [ %i.dp, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i" ] ; 2 uses
  %.sroa.038.048.i.i.i.i.i = phi ptr [ %i.dy, %bb.u ], [ %.0.val1, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i" ] ; 6 uses
  %.val27.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !164
  %.val28.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.dr = invoke noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr noundef nonnull align 8 dereferenceable(560) %.sroa.038.048.i.i.i.i.i, ptr noundef %.val28.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.val27.i.i.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %.noexc.i8.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i8.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.dr, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %.noexc.i8.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.038.048.i.i.i.i.i, i64 560 ; 2 uses
  %.val25.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !164
  %.val26.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.dt = invoke noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr noundef nonnull align 8 dereferenceable(560) %i.ds, ptr noundef %.val26.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.val25.i.i.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %.noexc4.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4.i.i.i.i:                                  ; preds = %bb.r
  br i1 %i.dt, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %.noexc4.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.038.048.i.i.i.i.i, i64 1120 ; 2 uses
  %.val23.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !164
  %.val24.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.dv = invoke noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr noundef nonnull align 8 dereferenceable(560) %i.du, ptr noundef %.val24.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.val23.i.i.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %.noexc5.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5.i.i.i.i:                                  ; preds = %bb.s
  br i1 %i.dv, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %.noexc5.i.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.038.048.i.i.i.i.i, i64 1680 ; 2 uses
  %.val21.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !164
  %.val22.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.dx = invoke noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr noundef nonnull align 8 dereferenceable(560) %i.dw, ptr noundef %.val22.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.val21.i.i.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %.noexc6.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6.i.i.i.i:                                  ; preds = %bb.t
  br i1 %i.dx, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.u

bb.u:                                             ; preds = %.noexc6.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.038.048.i.i.i.i.i, i64 2240 ; 3 uses
  %i.dz = add nsw i64 %.049.i.i.i.i.i, -1
  %i.ea = icmp sgt i64 %.049.i.i.i.i.i, 1
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !162

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.u
  %.pre.i.i.i.i.i = ptrtoint ptr %i.dy to i64
  %.pre50.i.i.i.i.i = sub i64 %i.dl, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i3.i.i

._crit_edge.i.i.i3.i.i:                           ; preds = %._crit_edge.loopexit.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i"
  %.pre-phi51.i.i.i.i.i = phi i64 [ %.pre50.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.dn, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i" ]
  %.sroa.038.0.lcssa.i.i.i.i.i = phi ptr [ %i.dy, %._crit_edge.loopexit.i.i.i.i.i ], [ %.0.val1, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EC2ERKSC_.exit.i.i.i.i" ] ; 5 uses
  %i.eb = sdiv exact i64 %.pre-phi51.i.i.i.i.i, 560
  switch i64 %i.eb, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i" [
    i64 3, label %bb.v
    i64 2, label %bb.x
    i64 1, label %bb.z
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i3.i.i
  %.val19.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !164
  %.val20.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.ec = invoke noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr noundef nonnull align 8 dereferenceable(560) %.sroa.038.0.lcssa.i.i.i.i.i, ptr noundef %.val20.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.val19.i.i.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %.noexc7.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7.i.i.i.i:                                  ; preds = %bb.v
  br i1 %i.ec, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %.noexc7.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i.i.i, i64 560
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i3.i.i
  %.sroa.038.1.i.i.i.i.i = phi ptr [ %i.ed, %bb.w ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i3.i.i ] ; 3 uses
  %.val17.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !164
  %.val18.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.ee = invoke noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr noundef nonnull align 8 dereferenceable(560) %.sroa.038.1.i.i.i.i.i, ptr noundef %.val18.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.val17.i.i.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %.noexc8.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8.i.i.i.i:                                  ; preds = %bb.x
  br i1 %i.ee, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i", label %bb.y

bb.y:                                             ; preds = %.noexc8.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i.i, i64 560
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i3.i.i
  %.sroa.038.2.i.i.i.i.i = phi ptr [ %i.ef, %bb.y ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i3.i.i ] ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !164
  %.val16.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.eg = invoke noundef zeroext i1 @_ZNK5cmsys17RegularExpression4findEPKcRNS_22RegularExpressionMatchEmj(ptr noundef nonnull align 8 dereferenceable(560) %.sroa.038.2.i.i.i.i.i, ptr noundef %.val16.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.val.i.i.i.i.i, i64 noundef 0, i32 noundef 0)
          to label %.noexc9.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9.i.i.i.i:                                  ; preds = %bb.z
  %spec.select.i.i.i.i.i = select i1 %i.eg, ptr %.sroa.038.2.i.i.i.i.i, ptr %.8.val
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i": ; preds = %.noexc6.i.i.i.i, %.noexc5.i.i.i.i, %.noexc4.i.i.i.i, %.noexc.i8.i.i.i, %.noexc9.i.i.i.i, %.noexc8.i.i.i.i, %.noexc7.i.i.i.i, %._crit_edge.i.i.i3.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.038.1.i.i.i.i.i, %.noexc8.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.noexc9.i.i.i.i ], [ %.8.val, %._crit_edge.i.i.i3.i.i ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %.noexc7.i.i.i.i ], [ %.sroa.038.048.i.i.i.i.i, %.noexc.i8.i.i.i ], [ %i.ds, %.noexc4.i.i.i.i ], [ %i.du, %.noexc5.i.i.i.i ], [ %i.dw, %.noexc6.i.i.i.i ]
  %i.eh = load ptr, ptr %i.cy, align 8, !tbaa !25 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.cz
  br i1 %i.ei, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i"
  %i.ej = load i64, ptr %i.cz, align 8, !tbaa !20
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.s, %bb.r, %.lr.ph.i.i.i.i.i, %bb.z, %bb.x, %bb.v
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %i.cy, align 8, !tbaa !25 ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.cz
  br i1 %i.em, label %.body11.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.en = load i64, ptr %i.cz, align 8, !tbaa !20
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #24
  br label %.body11.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5cmsys17RegularExpressionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag.exit.i.i.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  %i.ep = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.cd
  br i1 %i.eq, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.er = load i64, ptr %i.cd, align 8, !tbaa !20
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #24
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i.i.i": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i13.i.i.i
  %i.et = load ptr, ptr %i.ba, align 8, !tbaa !25 ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.bb
  br i1 %i.eu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i.i.i"
  %i.ev = load i64, ptr %i.bb, align 8, !tbaa !20
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.aa:                                            ; preds = %.noexc.i.i.i.i.i.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ab:                                            ; preds = %.noexc.i.i.i.i9.i.i.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i.i.i

.body11.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i.i.i
  %eh.lpad-body12.i.i.i = phi { ptr, i32 } [ %i.ey, %bb.ab ], [ %lpad.loopexit.split-lp31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i10.i.i.i.i ], [ %lpad.loopexit.split-lp31, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ez = load ptr, ptr %i.cc, align 8, !tbaa !25 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.cd
  br i1 %i.fa, label %.body.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15.i.i.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15.i.i.i.a: ; preds = %.body11.i.i.i
  %8 = load i64, ptr %i.cd, align 8, !tbaa !20
  %i.fb = add i64 %8, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fb) #24
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.body11.i.i.i, %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15.i.i.i.a, %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body12.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15.i.i.i.a ], [ %i.ex, %bb.aa ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i ], [ %i.ct, %bb.o ], [ %eh.lpad-body12.i.i.i, %.body11.i.i.i ] ; 2 uses
  %i.fc = load ptr, ptr %i.ba, align 8, !tbaa !25 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.bb
  br i1 %i.fd, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i.i.i: ; preds = %.body.i.i.i
  %i.fe = load i64, ptr %i.bb, align 8, !tbaa !20
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #24
  br label %.body.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ED2Ev.exit.i.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.fg = load ptr, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.an
  br i1 %i.fh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.fi = load i64, ptr %i.an, align 8, !tbaa !20
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc.i.i.i.i.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.i, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.fk, %bb.ac ], [ %.pn.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i.i.i ], [ %.pn.i.i.i, %.body.i.i.i ] ; 2 uses
  %i.fl = load ptr, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.an
  br i1 %i.fm, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i.i: ; preds = %.body.i.i
  %i.fn = load i64, ptr %i.an, align 8, !tbaa !20
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #24
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.fp = load ptr, ptr %i.y, align 8, !tbaa !25  ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.z
  br i1 %i.fq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.fr = load i64, ptr %i.z, align 8, !tbaa !20
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.ad:                                            ; preds = %.noexc.i.i.i.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body.i.i, %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ft, %bb.ad ], [ %eh.lpad-body.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %i.fu = load ptr, ptr %i.y, align 8, !tbaa !25  ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.z
  br i1 %i.fv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i: ; preds = %.body.i
  %i.fw = load i64, ptr %i.z, align 8, !tbaa !20
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #24
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fy = load ptr, ptr %i.i, align 8, !tbaa !25  ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.k
  br i1 %i.fz, label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ga = load i64, ptr %i.k, align 8, !tbaa !20
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #24
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit"

"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.gc = icmp ne ptr %.8.val, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  ret i1 %i.gc

bb.ae:                                            ; preds = %.noexc.i.i.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %i.gd, %bb.ae ], [ %eh.lpad-body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i ], [ %eh.lpad-body.i, %.body.i ]
  %i.ge = load ptr, ptr %i.i, align 8, !tbaa !25  ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.k
  br i1 %i.gf, label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit8", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %.body
  %i.gg = load i64, ptr %i.k, align 8, !tbaa !20
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #24
  br label %"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit8"

"_ZZNK26cmRuntimeDependencyArchive14IsPostExcludedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit8": ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN26cmRuntimeDependencyArchive15AddResolvedPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RbSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3, ptr nofree noundef align 8 captures(none) %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::set", align 8          ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.b, ptr %i.d, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !44
  %i.f = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIS5_St4lessIS5_ESaIS5_EES8_SaISt4pairIKS5_SA_EEE7emplaceIJRSC_SA_EEESB_ISt17_Rb_tree_iteratorISD_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.h)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #25
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.b
  %.fca.0.extract = extractvalue { ptr, i8 } %i.f, 0 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  store i8 1, ptr %3, align 1, !tbaa !166
  %i.k = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 72 ; 2 uses
  %.not19 = icmp eq ptr %i.m, %i.n
  br i1 %.not19, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.o

.lr.ph:                                           ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %.critedge
  %.sroa.014.020 = phi ptr [ %i.r, %.critedge ], [ %i.m, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 32
  %i.q = call noundef zeroext i1 @_ZN5cmsys11SystemTools8SameFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
  br i1 %i.q, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  store i8 0, ptr %3, align 1, !tbaa !166
  br label %.loopexit

.critedge:                                        ; preds = %.lr.ph
  %i.r = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.014.020) #26 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.n
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.critedge, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %bb.e
  %i.s = call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_emplace_uniqueIJRKS5_EEESt4pairISt17_Rb_tree_iteratorIS5_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.u = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.aa = load <2 x ptr>, ptr %4, align 8, !tbaa !22
  store <2 x ptr> %i.aa, ptr %i.u, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !24
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !24
  %.not4.i.i.i.i.i = icmp eq ptr %i.v, %i.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.v, %.loopexit ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

end_hunk_2
