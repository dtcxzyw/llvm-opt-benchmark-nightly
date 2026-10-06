Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/re2?download=true
inline.NumInlined: 826
inline.NumDeleted: 338
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK3re23RE218PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i:bb.a
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !26
  store i8 %i.ac, ptr %i.v, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !25  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !25
  %i.af = load ptr, ptr %1, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !26
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.y, ptr %1, align 8, !tbaa !32
  %i.ai = load <2 x i64>, ptr %i.s, align 8, !tbaa !26
  store <2 x i64> %i.ai, ptr %i.ah, align 8, !tbaa !26
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aj = load i64, ptr %i.w, align 8, !tbaa !26
  store ptr %i.y, ptr %1, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load <2 x i64>, ptr %i.s, align 8, !tbaa !26
  store <2 x i64> %i.al, ptr %i.ak, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.v, ptr %4, align 8, !tbaa !32
  store i64 %i.aj, ptr %i.k, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %4, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.am = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.v, %bb.i ], [ %i.k, %bb.j ], [ %i.y, %bb.e ]
  store i64 0, ptr %i.s, align 8, !tbaa !25
  store i8 0, ptr %i.am, align 1, !tbaa !26
  %i.an = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.k
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ap = load i64, ptr %i.k, align 8, !tbaa !26
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.ar = load i64, ptr %i.g, align 8, !tbaa !25, !noalias !207
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.as, ptr %5, align 8, !tbaa !23, !alias.scope !207
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !32, !noalias !207 ; 2 uses
  %spec.select.i.i.i34 = call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %i.ar) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !207
  store i64 %spec.select.i.i.i34, ptr %i.a, align 8, !tbaa !34, !noalias !207
  %i.au = icmp ugt i64 %spec.select.i.i.i34, 15
  br i1 %i.au, label %.noexc10.i.i36, label %._crit_edge.i.i.i35

.noexc10.i.i36:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.av, ptr %5, align 8, !tbaa !32, !alias.scope !207
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !34, !noalias !207
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !26, !alias.scope !207
  br label %._crit_edge.i.i.i35

._crit_edge.i.i.i35:                              ; preds = %.noexc10.i.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = phi ptr [ %i.av, %.noexc10.i.i36 ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %spec.select.i.i.i34, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i35
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !26
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37

bb.l:                                             ; preds = %._crit_edge.i.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.at, i64 %spec.select.i.i.i34, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37: ; preds = %._crit_edge.i.i.i35, %bb.k, %bb.l
  %i.az = load i64, ptr %i.a, align 8, !tbaa !34, !noalias !207 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !25, !alias.scope !207
  %i.bb = load ptr, ptr %5, align 8, !tbaa !32, !alias.scope !207
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !207
  %i.bd = load ptr, ptr %2, align 8, !tbaa !32    ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  %i.bg = load ptr, ptr %5, align 8, !tbaa !32    ; 6 uses
  %i.bh = icmp eq ptr %i.bg, %i.as                ; 2 uses
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37
  br i1 %i.bh, label %bb.m, label %.thread.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit37
  br i1 %i.bh, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i39

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44
  %i.bi = load i64, ptr %i.ba, align 8, !tbaa !25 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  %.not21.i41 = icmp eq ptr %5, %2
  br i1 %.not21.i41, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46, label %bb.n, !prof !126

bb.n:                                             ; preds = %bb.m
  switch i64 %i.bi, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !26
  store i8 %i.bk, ptr %i.bd, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bg, i64 %i.bi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42: ; preds = %bb.p, %bb.o, %bb.n
  %i.bl = load i64, ptr %i.ba, align 8, !tbaa !25 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !25
  %i.bn = load ptr, ptr %2, align 8, !tbaa !32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !26
  %.pre.i43 = load ptr, ptr %5, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46

.thread.i45:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bg, ptr %2, align 8, !tbaa !32
  %i.bq = load <2 x i64>, ptr %i.ba, align 8, !tbaa !26
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !tbaa !26
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i38
  %i.br = load i64, ptr %i.be, align 8, !tbaa !26
  store ptr %i.bg, ptr %2, align 8, !tbaa !32
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load <2 x i64>, ptr %i.ba, align 8, !tbaa !26
  store <2 x i64> %i.bt, ptr %i.bs, align 8, !tbaa !26
  %.not.i40 = icmp eq ptr %i.bd, null
  br i1 %.not.i40, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i39
  store ptr %i.bd, ptr %5, align 8, !tbaa !32
  store i64 %i.br, ptr %i.as, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i39, %.thread.i45
  store ptr %i.as, ptr %5, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42, %bb.q, %bb.r
  %i.bu = phi ptr [ %.pre.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42 ], [ %i.bd, %bb.q ], [ %i.as, %bb.r ], [ %i.bg, %bb.m ]
  store i64 0, ptr %i.ba, align 8, !tbaa !25
  store i8 0, ptr %i.bu, align 1, !tbaa !26
  %i.bv = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46
  %i.bx = load i64, ptr %i.as, align 8, !tbaa !26
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !46, !range !51, !noundef !52
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = icmp sgt i32 %spec.select, 0
  %or.cond71 = and i1 %i.cc, %i.cb
  br i1 %or.cond71, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %wide.trip.count = zext nneg i32 %spec.select to i64 ; 2 uses
  %.pre73 = load ptr, ptr %1, align 8, !tbaa !32  ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cd = icmp eq i32 %spec.select, 1
  br i1 %i.cd, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %.lr.ph.preheader.new
  %8 = phi ptr [ %.pre73, %.lr.ph.preheader.new ], [ %10, %bb.u ] ; 2 uses
  %niter.a = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.u ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.u ]
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 %niter.a ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !26  ; 2 uses
  %i.cg = add i8 %i.cf, -97
  %or.cond = icmp ult i8 %i.cg, 26
  br i1 %or.cond, label %bb.s, label %.lr.ph.1

bb.s:                                             ; preds = %.lr.ph
  %narrow = add nsw i8 %i.cf, -32
  store i8 %narrow, ptr %i.ce, align 1, !tbaa !26
  %.pre = load ptr, ptr %1, align 8, !tbaa !32
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.s, %.lr.ph
  %9 = phi ptr [ %.pre, %bb.s ], [ %8, %.lr.ph ]  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 %niter.a
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !26  ; 2 uses
  %i.ck = add i8 %i.cj, -97
  %or.cond.1 = icmp ult i8 %i.ck, 26
  br i1 %or.cond.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.1
  %narrow.1 = add nsw i8 %i.cj, -32
  store i8 %narrow.1, ptr %i.ci, align 1, !tbaa !26
  %.pre.1 = load ptr, ptr %1, align 8, !tbaa !32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.1
  %10 = phi ptr [ %.pre.1, %bb.t ], [ %9, %.lr.ph.1 ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %niter.a, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !205

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %.pre73, %.lr.ph.preheader ], [ %10, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod109 = trunc i32 %spec.select to i1
  call void @llvm.assume(i1 %lcmp.mod109)
  %i.cl = getelementptr inbounds nuw i8, ptr %.epil.init, i64 %indvars.iv.epil.init ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !26  ; 2 uses
  %i.cn = add i8 %i.cm, -97
  %or.cond.epil = icmp ult i8 %i.cn, 26
  br i1 %or.cond.epil, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %.lr.ph.epil.preheader
  %narrow.epil = add nsw i8 %i.cm, -32
  store i8 %narrow.epil, ptr %i.cl, align 1, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.v, %.lr.ph.epil.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.co, ptr %6, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.cp, align 8, !tbaa !25
  store i8 0, ptr %i.co, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.cq, ptr %7, align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.cr, align 8, !tbaa !25
  store i8 0, ptr %i.cq, align 8, !tbaa !26
  %i.cs = sub nsw i32 %3, %spec.select            ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %.loopexit
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.cv = invoke noundef zeroext i1 @_ZN3re24Prog18PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i(ptr noundef nonnull align 8 dereferenceable(432) %i.cu, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %i.cs)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %i.cv, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cw = load i64, ptr %i.cp, align 8, !tbaa !25 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !25
  %i.cz = sub i64 4611686018427387903, %i.cy
  %i.da = icmp ult i64 %i.cz, %i.cw
  br i1 %i.da, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.y
  %i.db = load ptr, ptr %6, align 8, !tbaa !32
  %i.dc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.db, i64 noundef %i.cw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %bb.z ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.dd = load i64, ptr %i.cr, align 8, !tbaa !25 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !25
  %i.dg = sub i64 4611686018427387903, %i.df
  %i.dh = icmp ult i64 %i.dg, %i.dd
  br i1 %i.dh, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i51

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #32
          to label %.cont unwind label %bb.z

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.di = load ptr, ptr %7, align 8, !tbaa !32
  %i.dj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.di, i64 noundef %i.dd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit54 unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.ab, %bb.w
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = load ptr, ptr %7, align 8, !tbaa !32    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.cq
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.z
  %i.dn = load i64, ptr %i.cq, align 8, !tbaa !26
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.dp = load ptr, ptr %6, align 8, !tbaa !32    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.co
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.dr = load i64, ptr %i.co, align 8, !tbaa !26
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %i.dk

bb.aa:                                            ; preds = %bb.x, %.loopexit
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !25
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN3re215PrefixSuccessorEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit54 unwind label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !25
  %i.dy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.dx, ptr noundef nonnull @.str.8, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.z ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.ac
  %i.dz = load i64, ptr %i.dt, align 8, !tbaa !25
  %i.ea = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.dz, ptr noundef nonnull @.str.8, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit54 unwind label %bb.z ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i51, %bb.ab
  %.0 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i51 ], [ true, %bb.ab ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  %i.eb = load ptr, ptr %7, align 8, !tbaa !32    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.cq
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit54
  %i.ed = load i64, ptr %i.cq, align 8, !tbaa !26
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ef = load ptr, ptr %6, align 8, !tbaa !32    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.co
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.eh = load i64, ptr %i.co, align 8, !tbaa !26
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %.1 = phi i1 [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN3re24Prog18PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN3re215PrefixSuccessorEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

declare noundef zeroext i1 @_ZN3re24Prog9SearchDFAERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_PbPNS_10SparseSetTIvEE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN3re24Prog13SearchOnePassERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN3re24Prog14SearchBitStateERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN3re24Prog9SearchNFAERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3re23RE218CheckRewriteStringERKNS_11StringPieceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(212) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 2 uses
  %.not3849.not = icmp eq i64 %i.c, 0
  br i1 %.not3849.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.02551 = phi ptr [ %i.q, %bb.h ], [ %i.a, %bb.a ] ; 3 uses
  %.02750 = phi i32 [ %.2.ph, %bb.h ], [ -1, %bb.a ] ; 3 uses
  %i.e = load i8, ptr %.02551, align 1, !tbaa !26
  %.not = icmp eq i8 %i.e, 92
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.02551, i64 1 ; 4 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
