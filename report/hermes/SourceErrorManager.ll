inline.NumInlined: 1564
inline.NumDeleted: 774
begin_hunk_0_@_ZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsE:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !121, !alias.scope !245
  br i1 %.not.i.i, label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread, label %bb.b

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !93, !alias.scope !245
  store i8 0, ptr %i.k, align 8, !tbaa !118, !alias.scope !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr %i.k, ptr %i.b, align 8, !tbaa !134
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !245
  store i64 %i.j, ptr %i.a, align 8, !tbaa !89, !noalias !245
  %i.m = icmp ugt i64 %i.j, 15
  br i1 %i.m, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !90, !alias.scope !245
  %i.o = load i64, ptr %i.a, align 8, !tbaa !89, !noalias !245
  store i64 %i.o, ptr %i.k, align 8, !tbaa !118, !alias.scope !245
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.n, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  switch i64 %i.j, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.h, align 1, !tbaa !118
  store i8 %i.q, ptr %i.p, align 1, !tbaa !118
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %._crit_edge.i.i.i.i, %bb.d, %bb.e
  %i.r = load i64, ptr %i.a, align 8, !tbaa !89, !noalias !245 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !93, !alias.scope !245
  %i.t = load ptr, ptr %5, align 8, !tbaa !90, !alias.scope !245
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !245
  %.pre = load ptr, ptr %5, align 8, !tbaa !90    ; 3 uses
  %.pre253 = load i8, ptr %.pre, align 1, !tbaa !118 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr %.pre, ptr %i.b, align 8, !tbaa !134
  %.not210 = icmp eq i8 %.pre253, 0
  br i1 %.not210, label %._crit_edge, label %.lr.ph214

.loopexit188:                                     ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit
  %i.v = phi ptr [ %i.bc, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ], [ %i.bv, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %.sroa.9.1.lcssa = phi ptr [ %.sroa.9.0211, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ], [ %.sroa.9.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %.sroa.15.1.lcssa = phi ptr [ %.sroa.15.0212, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ], [ %.sroa.15.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0213, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ], [ %.sroa.0.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !118   ; 2 uses
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph214, !llvm.loop !246

.lr.ph214:                                        ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit, %.loopexit188
  %i.x = phi i8 [ %i.w, %.loopexit188 ], [ %.pre253, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ] ; 2 uses
  %i.y = phi ptr [ %i.v, %.loopexit188 ], [ %.pre, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ] ; 3 uses
  %.sroa.0.0213 = phi ptr [ %.sroa.0.1.lcssa, %.loopexit188 ], [ null, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ] ; 2 uses
  %.sroa.15.0212 = phi ptr [ %.sroa.15.1.lcssa, %.loopexit188 ], [ null, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ] ; 2 uses
  %.sroa.9.0211 = phi ptr [ %.sroa.9.1.lcssa, %.loopexit188 ], [ null, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ] ; 2 uses
  %i.z = icmp sgt i8 %i.x, -1
  br i1 %i.z, label %bb.f, label %bb.g, !prof !190

bb.f:                                             ; preds = %.lr.ph214
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !134
  %i.ab = zext nneg i8 %i.x to i32
  br label %"_ZN6hermes10decodeUTF8ILb1EZNS_18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEE3$_0EEjRPKcT0_.exit"

bb.g:                                             ; preds = %.lr.ph214
  %i.ac = call fastcc noundef i32 @"_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEE3$_0EEjRPKcT0_"(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %"_ZN6hermes10decodeUTF8ILb1EZNS_18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEE3$_0EEjRPKcT0_.exit"

"_ZN6hermes10decodeUTF8ILb1EZNS_18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEE3$_0EEjRPKcT0_.exit": ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.ab, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !235 ; 6 uses
  %i.ae = add i64 %i.ad, 1                        ; 7 uses
  %i.af = load ptr, ptr %4, align 8, !tbaa !247   ; 6 uses
  %i.ag = icmp eq ptr %i.af, %i.e                 ; 2 uses
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.thread

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i: ; preds = %"_ZN6hermes10decodeUTF8ILb1EZNS_18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEE3$_0EEjRPKcT0_.exit"
  %i.ah = icmp samesign ult i64 %i.ad, 4
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp samesign ugt i64 %i.ae, 3
  br i1 %i.ai, label %bb.h, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.thread: ; preds = %"_ZN6hermes10decodeUTF8ILb1EZNS_18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEE3$_0EEjRPKcT0_.exit"
  %i.aj = load i64, ptr %i.e, align 8             ; 3 uses
  %i.ak = icmp ugt i64 %i.ae, %i.aj
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i109, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  %i.al = load i64, ptr %i.e, align 8
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i109

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i109: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.thread, %bb.h
  %i.am = phi i64 [ %i.aj, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.thread ], [ %i.al, %bb.h ]
  %i.an = phi i64 [ %i.aj, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.thread ], [ 3, %bb.h ]
  %i.ao = icmp ugt i64 %i.ae, 1152921504606846975
  br i1 %i.ao, label %bb.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i109
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i109
  %i.ap = shl nuw nsw i64 %i.an, 1                ; 2 uses
  %i.aq = icmp samesign ult i64 %i.ae, %i.ap
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %.0.i110 = select i1 %i.aq, i64 %spec.store.select.i.i, i64 %i.ae ; 2 uses
  %i.ar = shl nuw nsw i64 %.0.i110, 2
  %i.as = add nuw nsw i64 %i.ar, 4
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #23 ; 4 uses
  switch i64 %i.ad, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i
  %i.au = load i32, ptr %i.af, align 4, !tbaa !237
  store i32 %i.au, ptr %i.at, align 4, !tbaa !237
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i
  %i.av = shl nuw nsw i64 %i.ad, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.af, i64 %i.av, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i, %bb.j, %bb.k
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i112, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i
  %i.aw = icmp samesign ult i64 %i.ad, 4
  call void @llvm.assume(i1 %i.aw)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i
  %i.ax = shl i64 %i.am, 2
  %i.ay = add i64 %i.ax, 4
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ay) #25
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i112, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i111
  store ptr %i.at, ptr %4, align 8, !tbaa !247
  store i64 %.0.i110, ptr %i.e, align 8, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.thread, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim.exit
  %i.az = phi ptr [ %i.at, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim.exit ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.thread ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ad
  store i32 %.0.i, ptr %i.ba, align 4, !tbaa !237
  store i64 %i.ae, ptr %i.f, align 8, !tbaa !235
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ae
  store i32 0, ptr %i.bb, align 4, !tbaa !237
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !134 ; 4 uses
  %i.bd = icmp ult ptr %i.y, %i.bc
  br i1 %i.bd, label %.lr.ph, label %.loopexit188

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %.pre254258 = phi ptr [ %.pre254259, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ] ; 2 uses
  %i.be = phi ptr [ %i.bv, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ]
  %.0207 = phi ptr [ %i.bf, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %i.y, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ]
  %.sroa.0.1206 = phi ptr [ %.sroa.0.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %.sroa.0.0213, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ] ; 5 uses
  %.sroa.15.1205 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %.sroa.15.0212, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ] ; 3 uses
  %.sroa.9.1204 = phi ptr [ %.sroa.9.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %.sroa.9.0211, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9push_backEDi.exit ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0207, i64 1 ; 2 uses
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !235
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = add i32 %i.bh, -1                       ; 2 uses
  %.not.i.i72 = icmp eq ptr %.sroa.9.1204, %.sroa.15.1205
  br i1 %.not.i.i72, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  store i32 %i.bi, ptr %.sroa.9.1204, align 4, !tbaa !3
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bj = ptrtoint ptr %.sroa.15.1205 to i64
  %i.bk = ptrtoint ptr %.sroa.0.1206 to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 6 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775804
  br i1 %i.bm, label %bb.n, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.bn = ashr exact i64 %i.bl, 2                 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bn ; 2 uses
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bo, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #23 ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bl ; 2 uses
  store i32 %i.bi, ptr %i.bs, align 4, !tbaa !3
  %i.bt = icmp sgt i64 %i.bl, 0
  br i1 %i.bt, label %bb.o, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.br, ptr align 4 %.sroa.0.1206, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.o, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.1206, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1206, i64 noundef %i.bl) #25
  %.pre254.pre = load ptr, ptr %i.b, align 8, !tbaa !134
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %.pre254 = phi ptr [ %.pre254.pre, %bb.p ], [ %.pre254258, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bp
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.l, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %.pre254259 = phi ptr [ %.pre254, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.pre254258, %bb.l ]
  %i.bv = phi ptr [ %.pre254, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.be, %bb.l ] ; 3 uses
  %.pn = phi ptr [ %i.bs, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.9.1204, %bb.l ]
  %.sroa.15.2 = phi ptr [ %i.bu, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.15.1205, %bb.l ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.br, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.0.1206, %bb.l ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.bw = icmp ult ptr %i.bf, %i.bv
  br i1 %i.bw, label %.lr.ph, label %.loopexit188, !llvm.loop !248

._crit_edge.loopexit:                             ; preds = %.loopexit188
  %i.bx = ptrtoint ptr %.sroa.9.1.lcssa to i64
  %i.by = ptrtoint ptr %.sroa.15.1.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread, %._crit_edge.loopexit, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %.sroa.9.0.lcssa = phi i64 [ 0, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ], [ %i.bx, %._crit_edge.loopexit ], [ 0, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread ]
  %.sroa.15.0.lcssa = phi i64 [ 0, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ], [ %i.by, %._crit_edge.loopexit ], [ 0, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread ]
  %.sroa.0.0.lcssa = phi ptr [ null, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ], [ %.sroa.0.1.lcssa, %._crit_edge.loopexit ], [ null, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread ] ; 6 uses
  %i.bz = load i64, ptr %i.f, align 8, !tbaa !235 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !110
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = ptrtoint ptr %.sroa.0.0.lcssa to i64    ; 2 uses
  %i.ce = sub i64 %.sroa.9.0.lcssa, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2                 ; 3 uses
  %i.cg = icmp ugt i64 %i.cf, %i.cc
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %i.cc
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  br label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit"

bb.r:                                             ; preds = %._crit_edge
  %i.cj = trunc i64 %i.bz to i32
  br label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit"

"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit": ; preds = %bb.q, %bb.r
  %i.ck = phi i32 [ %i.ci, %bb.q ], [ %i.cj, %bb.r ] ; 5 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !249 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !250 ; 2 uses
  %.not62218 = icmp eq ptr %i.cn, %i.cp
  br i1 %.not62218, label %._crit_edge224, label %.lr.ph223

.lr.ph223:                                        ; preds = %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit"
  %i.cq = trunc i64 %i.bz to i32                  ; 2 uses
  br label %bb.s

._crit_edge224.loopexit:                          ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit
  %i.cr = ptrtoint ptr %.sroa.13.1 to i64
  br label %._crit_edge224

._crit_edge224:                                   ; preds = %._crit_edge224.loopexit, %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit"
  %.sroa.13.0.lcssa = phi i64 [ 0, %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit" ], [ %i.cr, %._crit_edge224.loopexit ]
  %.sroa.8.0.lcssa = phi ptr [ null, %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit" ], [ %.sroa.8.1, %._crit_edge224.loopexit ] ; 3 uses
  %.sroa.0157.0.lcssa = phi ptr [ null, %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit" ], [ %.sroa.0157.1, %._crit_edge224.loopexit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.cs = add i64 %i.bz, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ct, ptr %6, align 8, !tbaa !121
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.cs, i8 noundef signext 32) #24
  %.not184228 = icmp eq ptr %.sroa.0157.0.lcssa, %.sroa.8.0.lcssa ; 2 uses
  br i1 %.not184228, label %._crit_edge232, label %.lr.ph231

.lr.ph231:                                        ; preds = %._crit_edge224
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.ac

bb.s:                                             ; preds = %.lr.ph223, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit
  %.052222 = phi ptr [ %i.cn, %.lr.ph223 ], [ %i.el, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit ] ; 3 uses
  %.sroa.0157.0221 = phi ptr [ null, %.lr.ph223 ], [ %.sroa.0157.1, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit ] ; 8 uses
  %.sroa.8.0220 = phi ptr [ null, %.lr.ph223 ], [ %.sroa.8.1, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit ] ; 7 uses
  %.sroa.13.0219 = phi ptr [ null, %.lr.ph223 ], [ %.sroa.13.1, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit ] ; 2 uses
  %i.cv = load i32, ptr %.052222, align 4, !tbaa !251
  %i.cw = zext i32 %i.cv to i64                   ; 2 uses
  %i.cx = icmp ugt i64 %i.cf, %i.cw
  br i1 %i.cx, label %bb.t, label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75"

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %i.cw
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  br label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75"

"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75": ; preds = %bb.s, %bb.t
  %i.da = phi i32 [ %i.cz, %bb.t ], [ %i.cq, %bb.s ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.052222, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !253
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = icmp ugt i64 %i.cf, %i.dd
  br i1 %i.de, label %bb.u, label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit76"

bb.u:                                             ; preds = %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75"
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %i.dd
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  br label %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit76"

"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit76": ; preds = %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75", %bb.u
  %i.dh = phi i32 [ %i.dg, %bb.u ], [ %i.cq, %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit75" ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.8.0220, %.sroa.13.0219
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit76"
  store i32 %i.da, ptr %.sroa.8.0220, align 4, !tbaa !251
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.8.0220, i64 4
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !253
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit

bb.w:                                             ; preds = %"_ZZN6hermes18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEENK3$_1clEj.exit76"
  %i.dj = ptrtoint ptr %.sroa.8.0220 to i64       ; 2 uses
  %i.dk = ptrtoint ptr %.sroa.0157.0221 to i64    ; 3 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 4 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775800
  br i1 %i.dm, label %bb.x, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.dn = ashr exact i64 %i.dl, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.do = add nsw i64 %.sroa.speculated.i.i.i, %i.dn ; 2 uses
  %i.dp = call i64 @llvm.umin.i64(i64 %i.do, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dq = shl nuw nsw i64 %i.dp, 3
  %i.dr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #23 ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dl ; 2 uses
  store i32 %i.da, ptr %i.ds, align 4, !tbaa !251
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %i.dh, ptr %i.dt, align 4, !tbaa !253
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0157.0221, %.sroa.8.0220
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.du = ptrtoaddr ptr %i.dr to i64
  %i.dv = add i64 %i.dj, -8
  %i.dw = sub i64 %i.dv, %i.dk                    ; 2 uses
  %i.dx = lshr i64 %i.dw, 3
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dw, 24
  %i.dz = sub i64 %i.du, %i.dk
  %diff.check = icmp ult i64 %i.dz, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader343, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.dy, 4611686018427387900     ; 3 uses
  %i.ea = shl i64 %n.vec, 3                       ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dr, i64 %i.ea  ; 2 uses
  %i.ec = getelementptr i8, ptr %.sroa.0157.0221, i64 %i.ea
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ed = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dr, i64 %i.ed ; 2 uses
  %next.gep335 = getelementptr i8, ptr %.sroa.0157.0221, i64 %i.ed ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.ee = getelementptr i8, ptr %next.gep335, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep335, align 4, !alias.scope !257, !noalias !254
  %wide.load336 = load <2 x i64>, ptr %i.ee, align 4, !alias.scope !257, !noalias !254
  %i.ef = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !254, !noalias !257
  store <2 x i64> %wide.load336, ptr %i.ef, align 4, !alias.scope !254, !noalias !257
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !259

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dy, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i.preheader343

.lr.ph.i.i.i.i.i.preheader343:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eb, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.0157.0221, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader343, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader343 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader343 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.eh = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !257, !noalias !254
  store i64 %i.eh, ptr %.012.i.i.i.i.i, align 4, !alias.scope !254, !noalias !257
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ei, %.sroa.8.0220
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !262

_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dr, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.eb, %middle.block ], [ %i.ej, %.lr.ph.i.i.i.i.i ]
  %.not.i24.i.i = icmp eq ptr %.sroa.0157.0221, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0157.0221, i64 noundef %i.dl) #25
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorISt4pairIjjESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dp
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJjjEEERS1_DpOT_.exit: ; preds = %bb.v, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.13.1 = phi ptr [ %i.ek, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.13.0219, %bb.v ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.8.0220, %bb.v ]
  %.sroa.0157.1 = phi ptr [ %i.dr, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_M_realloc_insertIJjjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0157.0221, %bb.v ] ; 2 uses
  %.sroa.8.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.052222, i64 8 ; 2 uses
  %.not62 = icmp eq ptr %i.el, %i.cp
  br i1 %.not62, label %._crit_edge224.loopexit, label %bb.s

._crit_edge232:                                   ; preds = %_ZSt4fillIPccEvT_S1_RKT0_.exit, %._crit_edge224
  %.sroa.speculated135 = call i64 @llvm.umin.i64(i64 %i.bz, i64 %i.cl)
  %i.em = load ptr, ptr %6, align 8, !tbaa !90
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sroa.speculated135
  store i8 94, ptr %i.en, align 1, !tbaa !118
  %i.eo = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 32, i64 noundef -1) #24
  %i.ep = add i64 %i.eo, 1                        ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !93 ; 2 uses
  %i.es = icmp ugt i64 %i.ep, %i.er
  br i1 %i.es, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.z:                                             ; preds = %._crit_edge232
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i64 noundef %i.ep, i64 noundef %i.er) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %._crit_edge232
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !93
  %i.et = load ptr, ptr %6, align 8, !tbaa !90
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ep
  store i8 0, ptr %i.eu, align 1, !tbaa !118
  %i.ev = load i64, ptr %i.f, align 8, !tbaa !235 ; 4 uses
  %.not185 = icmp eq i64 %i.ev, 0
  br i1 %.not185, label %.preheader, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.ew = load ptr, ptr %4, align 8, !tbaa !247   ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab, %bb.aa
  %.0915.i.i = phi i64 [ %i.fa, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.0915.i.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !237
  %i.ez = icmp eq i32 %i.ey, 9
  br i1 %i.ez, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit.split.loop.exit, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.fa = add nuw i64 %.0915.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fa, %i.ev
  br i1 %exitcond.not.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit, label %.lr.ph.i.i, !llvm.loop !263

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit.split.loop.exit: ; preds = %.lr.ph.i.i
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.0915.i.i
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit.split.loop.exit
  %i.fc = phi ptr [ %i.fb, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit.split.loop.exit ], [ null, %bb.ab ] ; 2 uses
  %.not.i77 = icmp eq ptr %i.fc, null
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.ew to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 2
  %.0.i78 = select i1 %.not.i77, i64 -1, i64 %i.fg ; 2 uses
  %i.fh = icmp ult i64 %.0.i78, %i.ev
  br i1 %i.fh, label %.lr.ph238, label %.preheader

bb.ac:                                            ; preds = %.lr.ph231, %_ZSt4fillIPccEvT_S1_RKT0_.exit
  %.sroa.0147.0229 = phi ptr [ %.sroa.0157.0.lcssa, %.lr.ph231 ], [ %i.fr, %_ZSt4fillIPccEvT_S1_RKT0_.exit ] ; 3 uses
  %i.fi = load i32, ptr %.sroa.0147.0229, align 4, !tbaa !251 ; 2 uses
  %i.fj = zext i32 %i.fi to i64                   ; 3 uses
  %i.fk = load i64, ptr %i.cu, align 8, !tbaa !93 ; 2 uses
  %i.fl = icmp ugt i64 %i.fk, %i.fj
  br i1 %i.fl, label %bb.ad, label %_ZSt4fillIPccEvT_S1_RKT0_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0147.0229, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !253 ; 2 uses
  %.not.i.i.i80 = icmp eq i32 %i.fn, %i.fi
  br i1 %.not.i.i.i80, label %_ZSt4fillIPccEvT_S1_RKT0_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fo = zext i32 %i.fn to i64
  %.sroa.speculated141 = call i64 @llvm.umin.i64(i64 %i.fk, i64 %i.fo)
  %i.fp = load ptr, ptr %6, align 8, !tbaa !90
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fj
  %gepdiff = sub nsw i64 %.sroa.speculated141, %i.fj
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fq, i8 126, i64 %gepdiff, i1 false)
  br label %_ZSt4fillIPccEvT_S1_RKT0_.exit

_ZSt4fillIPccEvT_S1_RKT0_.exit:                   ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0147.0229, i64 8 ; 2 uses
  %.not184 = icmp eq ptr %i.fr, %.sroa.8.0.lcssa
  br i1 %.not184, label %._crit_edge232, label %bb.ac

.preheader:                                       ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit
  %.lcssa190 = phi i64 [ %i.ev, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89 ], [ %i.gc, %bb.af ]
  br i1 %.not184228, label %.loopexit, label %.lr.ph242

.lr.ph238:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89
  %.053237 = phi i64 [ %.0.i87, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89 ], [ %.0.i78, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit ] ; 6 uses
  %i.fs = and i64 %.053237, 7
  %i.ft = sub nuw nsw i64 8, %i.fs                ; 3 uses
  %i.fu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7replaceEmmmDi(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.053237, i64 noundef 1, i64 noundef %i.ft, i32 noundef zeroext 32) ; 0 uses
  %i.fv = load i64, ptr %i.eq, align 8, !tbaa !93
  %i.fw = icmp ult i64 %.053237, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmmc.exit, label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmmc.exit: ; preds = %.lr.ph238
  %i.fx = load ptr, ptr %6, align 8, !tbaa !90
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.053237
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !118
  %i.ga = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %.053237, i64 noundef 1, i64 noundef %i.ft, i8 noundef signext %i.fz) #24 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmmc.exit, %.lr.ph238
  %i.gb = add nsw i64 %i.ft, %.053237             ; 3 uses
  %i.gc = load i64, ptr %i.f, align 8, !tbaa !235 ; 5 uses
  %i.gd = icmp ult i64 %i.gb, %i.gc
  br i1 %i.gd, label %bb.ag, label %.preheader

bb.ag:                                            ; preds = %bb.af
  %i.ge = load ptr, ptr %4, align 8, !tbaa !247   ; 2 uses
  %i.gf = sub nuw i64 %i.gc, %i.gb
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gb ; 2 uses
  br label %.lr.ph.i.i82

.lr.ph.i.i82:                                     ; preds = %bb.ah, %bb.ag
  %.0915.i.i83 = phi i64 [ %i.gk, %bb.ah ], [ 0, %bb.ag ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %.0915.i.i83
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !237
  %i.gj = icmp eq i32 %i.gi, 9
  br i1 %i.gj, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89.split.loop.exit, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i82
  %i.gk = add nuw i64 %.0915.i.i83, 1             ; 2 uses
  %exitcond.not.i.i84 = icmp eq i64 %i.gk, %i.gf
  br i1 %exitcond.not.i.i84, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89, label %.lr.ph.i.i82, !llvm.loop !263

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89.split.loop.exit: ; preds = %.lr.ph.i.i82
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %.0915.i.i83
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89.split.loop.exit
  %i.gm = phi ptr [ %i.gl, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4findEDim.exit89.split.loop.exit ], [ null, %bb.ah ] ; 2 uses
  %.not.i86 = icmp eq ptr %i.gm, null
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.ge to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = ashr exact i64 %i.gp, 2
  %.0.i87 = select i1 %.not.i86, i64 -1, i64 %i.gq ; 2 uses
  %i.gr = icmp ult i64 %.0.i87, %i.gc
  br i1 %i.gr, label %.lr.ph238, label %.preheader, !llvm.loop !264

.lr.ph242:                                        ; preds = %.preheader, %bb.ak
  %.sroa.0131.0241 = phi ptr [ %i.gx, %bb.ak ], [ %.sroa.0157.0.lcssa, %.preheader ] ; 3 uses
  %i.gs = load i32, ptr %.sroa.0131.0241, align 4, !tbaa !251 ; 3 uses
  %.not63 = icmp ugt i32 %i.gs, %i.ck
  br i1 %.not63, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph242
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0131.0241, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !253 ; 2 uses
  %i.gv = icmp ult i32 %i.ck, %i.gu
  br i1 %i.gv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gw = sub i32 %i.gu, %i.gs
  br label %.loopexit

bb.ak:                                            ; preds = %bb.ai, %.lr.ph242
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0131.0241, i64 8 ; 2 uses
  %.not186 = icmp eq ptr %i.gx, %.sroa.8.0.lcssa
  br i1 %.not186, label %.loopexit, label %.lr.ph242

.loopexit:                                        ; preds = %bb.ak, %.preheader, %bb.aj
  %.257 = phi i32 [ %i.gw, %bb.aj ], [ 1, %.preheader ], [ 1, %bb.ak ] ; 2 uses
  %.2 = phi i32 [ %i.gs, %bb.aj ], [ %i.ck, %.preheader ], [ %i.ck, %bb.ak ]
  %i.gy = sext i32 %.257 to i64
  %i.gz = add nsw i64 %i.gy, 16
  %.sroa.speculated122 = call i64 @llvm.umax.i64(i64 %3, i64 %i.gz) ; 8 uses
  %i.ha = icmp ugt i64 %.lcssa190, %.sroa.speculated122
  br i1 %i.ha, label %bb.al, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPDiNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEEcEvT_SA_RKT0_.exit102

bb.al:                                            ; preds = %.loopexit
  %i.hb = sdiv i32 %.257, 2
  %i.hc = add nsw i32 %.2, %i.hb
  %i.hd = lshr i64 %.sroa.speculated122, 1
  %i.he = trunc i64 %i.hd to i32
  %i.hf = sub i32 %i.hc, %i.he                    ; 2 uses
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit92, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit92: ; preds = %bb.al
  %i.hh = zext nneg i32 %i.hf to i64              ; 3 uses
  %i.hi = load i64, ptr %i.eq, align 8, !tbaa !93
  %spec.select.i.i91 = call noundef i64 @llvm.umin.i64(i64 %i.hh, i64 %i.hi)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef %spec.select.i.i91) #24
  %i.hj = load i64, ptr %i.f, align 8, !tbaa !235 ; 6 uses
  %spec.select.i.i93 = call noundef i64 @llvm.umin.i64(i64 %i.hh, i64 %i.hj) ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNSt5tupleIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEaSIS5_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E:bb.a
  %i.ai = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ai, label %bb.h, label %.thread.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !93 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %.not21.i6 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not21.i6, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit11, label %bb.i, !prof !207

bb.i:                                             ; preds = %bb.h
  switch i64 %i.ak, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !118
  store i8 %i.am, ptr %i.ad, align 1, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7: ; preds = %bb.k, %bb.j, %bb.i
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !93 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !93
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !90
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !118
  %.pre.i8 = load ptr, ptr %i.ab, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit11

.thread.i10:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !90
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !93
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !93
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !118
  store i64 %i.au, ptr %i.ae, align 8, !tbaa !118
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !118
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !90
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !93
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !93
  %i.az = load i64, ptr %i.ah, align 8, !tbaa !118
  store i64 %i.az, ptr %i.ae, align 8, !tbaa !118
  %.not.i5 = icmp eq ptr %i.ad, null
  br i1 %.not.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !90
  store i64 %i.av, ptr %i.ah, align 8, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit11

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4, %.thread.i10
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit11: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7, %bb.l, %bb.m
  %i.ba = phi ptr [ %i.ad, %bb.l ], [ %i.ah, %bb.m ], [ %i.ag, %bb.h ], [ %.pre.i8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.bb, align 8, !tbaa !93
  store i8 0, ptr %i.ba, align 1, !tbaa !118
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden ptr @_ZN6hermes18SourceErrorManager20convertEndToLocationEN4llvh7SMRangeE(ptr readnone captures(address, ret: address, provenance) %0, ptr readnone captures(address, ret: address, provenance) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  %i.b = getelementptr inbounds i8, ptr %1, i64 -1
  %spec.select = select i1 %i.a, ptr %0, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE7emplaceIJRS1_RjEEES4_ISt17_Rb_tree_iteratorIS6_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !272  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !134   ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.f = icmp ult ptr %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !273 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !274

_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !275
  %i.j = icmp ult ptr %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit, %bb.b
  %.08.lcssa.i.i.i20 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store ptr %.pre, ptr %i.l, align 8, !tbaa !275
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.n = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.n, ptr %i.m, align 8, !tbaa !277
  %i.o = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20, ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.o, 1        ; 4 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not.i.i.i.i = icmp ne ptr %i.p, null
  %i.r = icmp eq ptr %i.q, %i.c
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.r
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !134
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !134
  %i.v = icmp ult ptr %i.s, %i.u
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d, %bb.c
  %i.w = phi i1 [ %i.v, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.w, ptr noundef nonnull %i.k, ptr noundef nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !278
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !278
  br label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

bb.e:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #25
  br label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.b, %bb.e, %.thread.i.i
  %.sroa.018.0 = phi ptr [ %i.p, %bb.e ], [ %i.k, %.thread.i.i ], [ %.19.i.i.i, %bb.b ]
  %.sroa.3.0 = phi i8 [ 1, %bb.e ], [ 1, %.thread.i.i ], [ 0, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.018.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nounwind
declare void @_ZN4llvh9SourceMgr9SrcBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !158    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %i.j, 24
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  tail call void @_ZN4llvh9SourceMgr9SrcBufferC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not7.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.n, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @_ZN4llvh9SourceMgr9SrcBufferC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i) #24
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !279

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not7.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not7.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i19
  %.09.i.i.i.i.i20 = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i19 ], [ %i.r, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i21 = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i19 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  tail call void @_ZN4llvh9SourceMgr9SrcBufferC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i20, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i21) #24
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i21, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i20, i64 24 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.s, %i.b
  br i1 %.not.i.i.i.i.i22, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19, !llvm.loop !279

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24: ; preds = %.lr.ph.i.i.i.i.i19, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i23 = phi ptr [ %i.r, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.t, %.lr.ph.i.i.i.i.i19 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24 ] ; 2 uses
  tail call void @_ZN4llvh9SourceMgr9SrcBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i) #24
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !280

_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !157
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.y) #25
  br label %_ZNSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !158
  store ptr %.0.lcssa.i.i.i.i.i23, ptr %i.a, align 8, !tbaa !156
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !157
  ret void
}

declare void @_ZN4llvh9SourceMgr9SrcBufferC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !278
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !273  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !134
  %i.i = load ptr, ptr %2, align 8, !tbaa !134
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !273 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !134    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134  ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !273 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !281

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !7
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #26 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load ptr, ptr %.phi.trans.insert80, align 8, !tbaa !134
  %.pre82 = load ptr, ptr %2, align 8, !tbaa !134
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi ptr [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi ptr [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult ptr %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %2, align 8, !tbaa !134    ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !134  ; 2 uses
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !273 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #26 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !134
  %i.ag = icmp ult ptr %i.af, %i.w
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !282
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !273 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !134 ; 2 uses
  %i.an = icmp ult ptr %i.w, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !273 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !281

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #26 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load ptr, ptr %.phi.trans.insert78, align 8, !tbaa !134
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi ptr [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult ptr %i.aq, %i.w                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult ptr %i.y, %i.w
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !273 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #26 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !134
  %i.az = icmp ult ptr %i.w, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !282
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !273 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !134 ; 2 uses
  %i.bg = icmp ult ptr %i.w, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !273 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !281

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !7
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
end_hunk_1
begin_hunk_2_@_ZN4llvh8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_jEEE4growEj:_ZN4llvh8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_jEEE15allocateBucketsEj.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.aa = add nsw i64 %.idx.i, -24                ; 2 uses
  %i.ab = udiv i64 %i.aa, 24
  %i.ac = add nuw nsw i64 %i.ab, 1
  %xtraiter11 = and i64 %i.ac, 7                  ; 2 uses
  %lcmp.mod12.not = icmp eq i64 %xtraiter11, 0
  br i1 %lcmp.mod12.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi ptr [ %i.ad, %.lr.ph.i.prol ], [ %i.u, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter13 = phi i64 [ %prol.iter13.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.prol, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.prol, align 8, !tbaa !89
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 24 ; 2 uses
  %prol.iter13.next = add i64 %prol.iter13, 1     ; 2 uses
  %prol.iter13.cmp.not = icmp eq i64 %prol.iter13.next, %xtraiter11
  br i1 %prol.iter13.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !290

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi ptr [ %i.u, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
  %i.ae = icmp ult i64 %i.aa, 168
  br i1 %i.ae, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 17 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  store ptr inttoptr (i64 -1 to ptr), ptr %i.af, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.06.i, i64 32
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.1, align 8, !tbaa !89
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ag, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.06.i, i64 56
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.2, align 8, !tbaa !89
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i, i64 72
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ah, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.06.i, i64 80
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.3, align 8, !tbaa !89
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i, i64 96
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ai, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.06.i, i64 104
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.4, align 8, !tbaa !89
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i, i64 120
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aj, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.06.i, i64 128
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.5, align 8, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i, i64 144
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ak, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.06.i, i64 152
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.6, align 8, !tbaa !89
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i, i64 168
  store ptr inttoptr (i64 -1 to ptr), ptr %i.al, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.06.i, i64 176
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.7, align 8, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i, i64 192 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.am, %i.z
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !291

bb.b:                                             ; preds = %_ZN4llvh8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_jEEE15allocateBucketsEj.exit
  %i.an = zext i32 %i.c to i64
  %.idx = mul nuw nsw i64 %i.an, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !288
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !289
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !161 ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %.idx.i.i = mul nuw nsw i64 %i.as, 24           ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i
  %.not5.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not5.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.au = add nsw i64 %.idx.i.i, -24              ; 2 uses
  %i.av = udiv i64 %i.au, 24
  %i.aw = add nuw nsw i64 %i.av, 1
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.06.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.prol ], [ %i.u, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i.prol, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.prol, align 8, !tbaa !89
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !292

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.06.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.prol ]
  %i.ay = icmp ult i64 %i.au, 168
  br i1 %i.ay, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 17 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.06.i.i, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !89
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  store ptr inttoptr (i64 -1 to ptr), ptr %i.az, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.1, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ba, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.2, align 8, !tbaa !89
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 72
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bb, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 80
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.3, align 8, !tbaa !89
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 96
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bc, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 104
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.4, align 8, !tbaa !89
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 120
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bd, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 128
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.5, align 8, !tbaa !89
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 144
  store ptr inttoptr (i64 -1 to ptr), ptr %i.be, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 152
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.6, align 8, !tbaa !89
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 168
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bf, align 8, !tbaa !134
  %.sroa.4.0..sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 176
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.7, align 8, !tbaa !89
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 192 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bg, %i.at
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !291

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not27.i = icmp eq i32 %i.c, 0
  br i1 %.not27.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E18moveFromOldBucketsEPS7_SA_.exit, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E9initEmptyEv.exit.i, %bb.d
  %.028.i = phi ptr [ %i.bo, %bb.d ], [ %i.d, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E9initEmptyEv.exit.i ] ; 5 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %.028.i, align 8, !tbaa !134
  %switch.i = icmp ugt ptr %.sroa.05.0.copyload.i, inttoptr (i64 -3 to ptr)
  br i1 %switch.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bh = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %.028.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !159 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %.028.i, i64 16, i1 false), !tbaa.struct !179
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.028.i, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !3
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !3
  %i.bm = load i32, ptr %i.ap, align 8, !tbaa !288
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.ap, align 8, !tbaa !288
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.028.i, i64 24 ; 2 uses
  %.not.i6 = icmp eq ptr %i.bo, %i.ao
  br i1 %.not.i6, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E18moveFromOldBucketsEPS7_SA_.exit, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.i, !llvm.loop !293

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E18moveFromOldBucketsEPS7_SA_.exit: ; preds = %bb.d, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E9initEmptyEv.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #24
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E18moveFromOldBucketsEPS7_SA_.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE17_M_realloc_insertIJRNS0_18SourceErrorManager8DiagKindERN4llvh5SMLocERNS9_7SMRangeERKNS9_5TwineEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(18) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !294    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %i.j, 6
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 4 uses
  %i.p = load i32, ptr %2, align 4, !tbaa !127
  %.sroa.01.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !134
  store i32 %i.p, ptr %i.o, align 8, !tbaa !219
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.01.0.copyload.i, ptr %i.q, align 8, !tbaa !134
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load <2 x ptr>, ptr %4, align 8, !tbaa !134
  store <2 x ptr> %i.s, ptr %i.r, align 8, !tbaa !134
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  tail call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.t, ptr noundef nonnull align 8 dereferenceable(18) %5) #24
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.n, %_ZNKSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i, i64 32, i1 false), !alias.scope !300
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !121, !alias.scope !295, !noalias !298
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !90, !alias.scope !298, !noalias !295 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !93, !alias.scope !298, !noalias !295 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !300
  br label %_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %i.u, align 8, !tbaa !90, !alias.scope !295, !noalias !298
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !118, !alias.scope !298, !noalias !295
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !118, !alias.scope !295, !noalias !298
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !93, !alias.scope !298, !noalias !295
  br label %_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.af = phi i64 [ %i.ab, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !93, !alias.scope !295, !noalias !298
  store ptr %i.y, ptr %i.v, align 8, !tbaa !90, !alias.scope !298, !noalias !295
  store i64 0, ptr %i.ag, align 8, !tbaa !93, !alias.scope !298, !noalias !295
  store i8 0, ptr %i.y, align 8, !tbaa !118, !alias.scope !298, !noalias !295
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !301

_ZNSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aj, %_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i20 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i20, label %_ZNSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30, label %.lr.ph.i.i.i21

.lr.ph.i.i.i21:                                   ; preds = %_ZNSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27
  %.012.i.i.i22 = phi ptr [ %i.ba, %_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %i.ak, %_ZNSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i23 = phi ptr [ %i.az, %_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %1, %_ZNSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i22, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i23, i64 32, i1 false), !alias.scope !307
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i22, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i22, i64 48 ; 3 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !121, !alias.scope !302, !noalias !305
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !90, !alias.scope !305, !noalias !302 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 48 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i24

bb.d:                                             ; preds = %.lr.ph.i.i.i21
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !93, !alias.scope !305, !noalias !302 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  tail call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.au, i1 false), !alias.scope !307
  br label %_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i24: ; preds = %.lr.ph.i.i.i21
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !90, !alias.scope !302, !noalias !305
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !118, !alias.scope !305, !noalias !302
  store i64 %i.av, ptr %i.an, align 8, !tbaa !118, !alias.scope !302, !noalias !305
  %.phi.trans.insert.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 40
  %.pre.i.i.i.i26 = load i64, ptr %.phi.trans.insert.i.i.i.i25, align 8, !tbaa !93, !alias.scope !305, !noalias !302
  br label %_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27

_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i24, %bb.d
  %i.aw = phi i64 [ %i.as, %bb.d ], [ %.pre.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i24 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i22, i64 40
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !93, !alias.scope !302, !noalias !305
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !90, !alias.scope !305, !noalias !302
  store i64 0, ptr %i.ax, align 8, !tbaa !93, !alias.scope !305, !noalias !302
  store i8 0, ptr %i.ap, align 8, !tbaa !118, !alias.scope !305, !noalias !302
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i22, i64 64 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.az, %i.b
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30, label %.lr.ph.i.i.i21, !llvm.loop !301

_ZNSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30: ; preds = %_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27, %_ZNSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i29 = phi ptr [ %i.ak, %_ZNSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ba, %_ZSt19__relocate_object_aIN6hermes19CollectMessagesRAII13StoredMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !218
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.be) #25
  br label %_ZNSt12_Vector_baseIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6hermes19CollectMessagesRAII13StoredMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30, %bb.e
  store ptr %i.n, ptr %0, align 8, !tbaa !294
  store ptr %.0.lcssa.i.i.i29, ptr %i.a, align 8, !tbaa !215
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %i.j
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !218
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36), i8 noundef zeroext) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE17_M_realloc_insertIJRNS1_8DiagKindERN4llvh5SMLocERNS8_7SMRangeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !137    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %i.j, 6
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 6 uses
  %i.p = load i32, ptr %2, align 4, !tbaa !127
  %.sroa.01.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !134
  store i32 %i.p, ptr %i.o, align 8, !tbaa !131
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.01.0.copyload.i, ptr %i.q, align 8, !tbaa !134
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load <2 x ptr>, ptr %4, align 8, !tbaa !134
  store <2 x ptr> %i.s, ptr %i.r, align 8, !tbaa !134
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 3 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !121
  %i.v = load ptr, ptr %5, align 8, !tbaa !90     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !93   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.v, ptr %i.t, align 8, !tbaa !90
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !118
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !118
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = phi i64 [ %i.z, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !93
  store ptr %i.w, ptr %5, align 8, !tbaa !90
  store i64 0, ptr %i.ae, align 8, !tbaa !93
  store i8 0, ptr %i.w, align 8, !tbaa !118
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.n, %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i, i64 32, i1 false), !alias.scope !313
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !121, !alias.scope !308, !noalias !311
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !90, !alias.scope !311, !noalias !308 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !93, !alias.scope !311, !noalias !308 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false), !alias.scope !313
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !90, !alias.scope !308, !noalias !311
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !118, !alias.scope !311, !noalias !308
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !118, !alias.scope !308, !noalias !311
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !93, !alias.scope !311, !noalias !308
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.ar = phi i64 [ %i.an, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !93, !alias.scope !308, !noalias !311
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !90, !alias.scope !311, !noalias !308
  store i64 0, ptr %i.as, align 8, !tbaa !93, !alias.scope !311, !noalias !308
  store i8 0, ptr %i.ak, align 8, !tbaa !118, !alias.scope !311, !noalias !308
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !314

_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.av, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i20 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i20, label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30, label %.lr.ph.i.i.i21

.lr.ph.i.i.i21:                                   ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27
  %.012.i.i.i22 = phi ptr [ %i.bm, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %i.aw, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i23 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %1, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i22, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i23, i64 32, i1 false), !alias.scope !320
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i22, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i22, i64 48 ; 3 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !121, !alias.scope !315, !noalias !318
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !90, !alias.scope !318, !noalias !315 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 48 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i24

bb.e:                                             ; preds = %.lr.ph.i.i.i21
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !93, !alias.scope !318, !noalias !315 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false), !alias.scope !320
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i24: ; preds = %.lr.ph.i.i.i21
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !90, !alias.scope !315, !noalias !318
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !118, !alias.scope !318, !noalias !315
  store i64 %i.bh, ptr %i.az, align 8, !tbaa !118, !alias.scope !315, !noalias !318
  %.phi.trans.insert.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 40
  %.pre.i.i.i.i26 = load i64, ptr %.phi.trans.insert.i.i.i.i25, align 8, !tbaa !93, !alias.scope !318, !noalias !315
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27

_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i24, %bb.e
  %i.bi = phi i64 [ %i.be, %bb.e ], [ %.pre.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i24 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i22, i64 40
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !93, !alias.scope !315, !noalias !318
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !90, !alias.scope !318, !noalias !315
  store i64 0, ptr %i.bj, align 8, !tbaa !93, !alias.scope !318, !noalias !315
  store i8 0, ptr %i.bb, align 8, !tbaa !118, !alias.scope !318, !noalias !315
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 64 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i22, i64 64 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bl, %i.b
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30, label %.lr.ph.i.i.i21, !llvm.loop !314

_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30: ; preds = %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i29 = phi ptr [ %i.aw, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bm, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN6hermes18SourceErrorManager11MessageDataESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !130
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bq) #25
  br label %_ZNSt12_Vector_baseIN6hermes18SourceErrorManager11MessageDataESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6hermes18SourceErrorManager11MessageDataESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30, %bb.f
  store ptr %i.n, ptr %0, align 8, !tbaa !137
  store ptr %.0.lcssa.i.i.i29, ptr %i.a, align 8, !tbaa !129
  %i.br = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %i.j
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 9 uses
  %4 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 8 uses
  %5 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 8 uses
  %6 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 7 uses
  %7 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 1152
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.p = icmp eq i64 %2, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph95

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEET_SE_SE_T0_.exit"
  %i.q = icmp eq i64 %i.di, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph95, !llvm.loop !321

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa90 = phi i64 [ %i.c, %.lr.ph ], [ %i.os, %bb.b ]
  %storemerge33.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.022.1.i.i, %bb.b ]
  %i.r = udiv exact i64 %.lcssa90, 72             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.s = add nsw i64 %i.r, -2
  %i.t = lshr i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 64
  br label %bb.c

bb.c:                                             ; preds = %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit14.i.i.i, %._crit_edge
  %.08.i.i.i = phi i64 [ %i.t, %._crit_edge ], [ %i.az, %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit14.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ac = getelementptr inbounds [72 x i8], ptr %0, i64 %.08.i.i.i ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !90 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !93 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !90
  %i.al = load i64, ptr %i.af, align 8, !tbaa !118
  store i64 %i.al, ptr %i.v, align 8, !tbaa !118
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !93
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit.i.i.i

_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.am = phi ptr [ %i.v, %bb.d ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ] ; 2 uses
  %i.an = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !90
  store i64 0, ptr %i.ao, align 8, !tbaa !93
  store i8 0, ptr %i.af, align 8, !tbaa !118
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  store i64 %i.aq, ptr %i.x, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  store ptr %i.z, ptr %i.y, align 8, !tbaa !121
  %i.ar = icmp eq ptr %i.am, %i.v
  br i1 %i.ar, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i.i.i

bb.e:                                             ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit.i.i.i
  %i.as = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.at, i1 false)
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit10.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i.i.i: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit.i.i.i
  store ptr %i.am, ptr %i.y, align 8, !tbaa !90
  %i.au = load i64, ptr %i.v, align 8, !tbaa !118
  store i64 %i.au, ptr %i.z, align 8, !tbaa !118
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit10.i.i.i

_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit10.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i.i.i, %bb.e
  store i64 %i.an, ptr %i.aa, align 8, !tbaa !93
  store ptr %i.v, ptr %i.u, align 8, !tbaa !90
  store i64 0, ptr %i.w, align 8, !tbaa !93
  store i8 0, ptr %i.v, align 8, !tbaa !118
  store i64 %i.aq, ptr %i.ab, align 8
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_T0_SF_T1_T2_"(ptr nonnull %0, i64 noundef %.08.i.i.i, i64 noundef %i.r, ptr noundef %7)
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !90  ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.z
  br i1 %i.aw, label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i.i.i: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit10.i.i.i
  %i.ax = load i64, ptr %i.z, align 8, !tbaa !118
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #25
  br label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit.i.i.i

_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit.i.i.i: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i.i.i
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.az = add nsw i64 %.08.i.i.i, -1
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !90  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.v
  br i1 %i.bb, label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit14.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i.i.i: ; preds = %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit.i.i.i
  %i.bc = load i64, ptr %i.v, align 8, !tbaa !118
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #25
  br label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit14.i.i.i

_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit14.i.i.i: ; preds = %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_RT0_.exit.i.i", label %bb.c, !llvm.loop !322

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_RT0_.exit.i.i": ; preds = %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 10 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.bo, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_RT0_.exit" ], [ %storemerge33.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_RT0_.exit.i.i" ] ; 7 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -72 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.bo, i64 32, i1 false)
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -40 ; 3 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !121
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !90 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 9 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i9.i
  %i.bt = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !93 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.bq, ptr %i.be, align 8, !tbaa !90
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !118
  store i64 %i.bx, ptr %i.bf, align 8, !tbaa !118
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !93
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %i.by = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bu, %bb.f ]
  %i.bz = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 3 uses
  store i64 %i.by, ptr %i.bg, align 8, !tbaa !93
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !90
  store i64 0, ptr %i.bz, align 8, !tbaa !93
  store i8 0, ptr %i.br, align 8, !tbaa !118
  %i.ca = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8
  store i64 %i.cb, ptr %i.bh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 32, i1 false)
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !90  ; 5 uses
end_hunk_2
begin_hunk_3_@"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_T0_":bb.a
"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i
  %.old = icmp ult ptr %i.v, %i.al
  br i1 %.old, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.015.0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0, i64 32, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 32 ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -40 ; 4 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !90 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 48 ; 4 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !90 ; 5 uses
  %i.bh = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -24 ; 6 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh                ; 2 uses
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread"
  br i1 %i.bi, label %bb.d, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread"
  br i1 %i.bi, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.bj = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.bj)
  switch i64 %i.ao, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !118
  store i8 %i.bk, ptr %i.bd, align 1, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bg, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.bl = load i64, ptr %i.an, align 8, !tbaa !93 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !93
  %i.bn = load ptr, ptr %i.bb, align 8, !tbaa !90
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !118
  %.pre.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !90
  store i64 %i.ao, ptr %i.bp, align 8, !tbaa !93
  %i.bq = load i64, ptr %i.bh, align 8, !tbaa !118
  store i64 %i.bq, ptr %i.be, align 8, !tbaa !118
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.br = load i64, ptr %i.be, align 8, !tbaa !118
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !90
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store i64 %i.ao, ptr %i.bs, align 8, !tbaa !93
  %i.bt = load i64, ptr %i.bh, align 8, !tbaa !118
  store i64 %i.bt, ptr %i.be, align 8, !tbaa !118
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !90
  store i64 %i.br, ptr %i.bh, align 8, !tbaa !118
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.g, %bb.h
  %i.bu = phi ptr [ %i.bd, %bb.g ], [ %i.bh, %bb.h ], [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ]
  store i64 0, ptr %i.an, align 8, !tbaa !93
  store i8 0, ptr %i.bu, align 1, !tbaa !118
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 64
  %i.bw = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -8
  %i.bx = load i64, ptr %i.bw, align 8
  store i64 %i.bx, ptr %i.bv, align 8
  %.pre21 = load i64, ptr %i.n, align 8
  br label %bb.c, !llvm.loop !331

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.015.0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 32 ; 4 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !90 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 48 ; 4 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !90  ; 6 uses
  %i.cd = icmp eq ptr %i.cc, %i.c                 ; 2 uses
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19"
  br i1 %i.cd, label %bb.i, label %.thread.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19"
  br i1 %i.cd, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i3

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  %i.ce = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.ce)
  %.not21.i.i.i5 = icmp eq ptr %1, %.sroa.015.0
  br i1 %.not21.i.i.i5, label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10, label %bb.j, !prof !207

bb.j:                                             ; preds = %bb.i
  switch i64 %i.s, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.cf = load i8, ptr %i.cc, align 1, !tbaa !118
  store i8 %i.cf, ptr %i.bz, align 1, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.cc, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6: ; preds = %bb.l, %bb.k, %bb.j
  %i.cg = load i64, ptr %i.n, align 8, !tbaa !93  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !93
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !90
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !118
  %.pre.i.i.i7 = load ptr, ptr %i.a, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10

.thread.i.i.i9:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !90
  store i64 %i.s, ptr %i.ck, align 8, !tbaa !93
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !118
  store i64 %i.cl, ptr %i.ca, align 8, !tbaa !118
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2
  %i.cm = load i64, ptr %i.ca, align 8, !tbaa !118
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !90
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store i64 %i.s, ptr %i.cn, align 8, !tbaa !93
  %i.co = load i64, ptr %i.c, align 8, !tbaa !118
  store i64 %i.co, ptr %i.ca, align 8, !tbaa !118
  %.not.i.i.i4 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i3
  store ptr %i.bz, ptr %i.a, align 8, !tbaa !90
  store i64 %i.cm, ptr %i.c, align 8, !tbaa !118
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i3, %.thread.i.i.i9
  store ptr %i.c, ptr %i.a, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6, %bb.m, %bb.n
  %i.cp = phi ptr [ %i.bz, %bb.m ], [ %i.c, %bb.n ], [ %i.cc, %bb.i ], [ %.pre.i.i.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6 ]
  store i64 0, ptr %i.n, align 8, !tbaa !93
  store i8 0, ptr %i.cp, align 1, !tbaa !118
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 64
  %i.cr = load i64, ptr %i.o, align 8
  store i64 %i.cr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !90  ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.c
  br i1 %i.ct, label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10
  %i.cu = load i64, ptr %i.c, align 8, !tbaa !118
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #25
  br label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit

_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE17_M_realloc_insertIJRNS1_8DiagKindERN4llvh5SMLocERNS8_7SMRangeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !141    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %i.j, 72
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 7 uses
  %i.p = load i32, ptr %2, align 4, !tbaa !127
  %.sroa.01.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !134
  store i32 %i.p, ptr %i.o, align 8, !tbaa !131
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.01.0.copyload.i, ptr %i.q, align 8, !tbaa !134
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load <2 x ptr>, ptr %4, align 8, !tbaa !134
  store <2 x ptr> %i.s, ptr %i.r, align 8, !tbaa !134
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 3 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !121
  %i.v = load ptr, ptr %5, align 8, !tbaa !90     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !93   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.v, ptr %i.t, align 8, !tbaa !90
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !118
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !118
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ad = phi i64 [ %i.z, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !93
  store ptr %i.w, ptr %5, align 8, !tbaa !90
  store i64 0, ptr %i.ae, align 8, !tbaa !93
  store i8 0, ptr %i.w, align 8, !tbaa !118
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i32 0, ptr %i.ag, align 8, !tbaa !135
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.az, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.n, %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ay, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i, i64 32, i1 false), !alias.scope !337
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !121, !alias.scope !332, !noalias !335
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !90, !alias.scope !335, !noalias !332 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !93, !alias.scope !335, !noalias !332 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !337
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !90, !alias.scope !332, !noalias !335
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !118, !alias.scope !335, !noalias !332
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !118, !alias.scope !332, !noalias !335
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !93, !alias.scope !335, !noalias !332
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.as = phi i64 [ %i.ao, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.as, ptr %i.au, align 8, !tbaa !93, !alias.scope !332, !noalias !335
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !90, !alias.scope !335, !noalias !332
  store i64 0, ptr %i.at, align 8, !tbaa !93, !alias.scope !335, !noalias !332
  store i8 0, ptr %i.al, align 8, !tbaa !118, !alias.scope !335, !noalias !332
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !335, !noalias !332
  store i64 %i.ax, ptr %i.av, align 8, !alias.scope !332, !noalias !335
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !338

_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.az, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i19 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i19, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26
  %.012.i.i.i21 = phi ptr [ %i.bt, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26 ], [ %i.ba, %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  %.0911.i.i.i22 = phi ptr [ %i.bs, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26 ], [ %1, %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i21, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i22, i64 32, i1 false), !alias.scope !344
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 48 ; 3 uses
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !121, !alias.scope !339, !noalias !342
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !90, !alias.scope !342, !noalias !339 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 48 ; 5 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i23

bb.e:                                             ; preds = %.lr.ph.i.i.i20
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !93, !alias.scope !342, !noalias !339 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bk, i1 false), !alias.scope !344
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i23: ; preds = %.lr.ph.i.i.i20
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !90, !alias.scope !339, !noalias !342
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !118, !alias.scope !342, !noalias !339
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !118, !alias.scope !339, !noalias !342
  %.phi.trans.insert.i.i.i.i24 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 40
  %.pre.i.i.i.i25 = load i64, ptr %.phi.trans.insert.i.i.i.i24, align 8, !tbaa !93, !alias.scope !342, !noalias !339
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26

_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i23, %bb.e
  %i.bm = phi i64 [ %i.bi, %bb.e ], [ %.pre.i.i.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i23 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 40
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !93, !alias.scope !339, !noalias !342
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !90, !alias.scope !342, !noalias !339
  store i64 0, ptr %i.bn, align 8, !tbaa !93, !alias.scope !342, !noalias !339
  store i8 0, ptr %i.bf, align 8, !tbaa !118, !alias.scope !342, !noalias !339
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 64
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !342, !noalias !339
  store i64 %i.br, ptr %i.bp, align 8, !alias.scope !339, !noalias !342
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 72 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 72 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.bs, %i.b
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29, label %.lr.ph.i.i.i20, !llvm.loop !338

_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29: ; preds = %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26, %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i28 = phi ptr [ %i.ba, %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bt, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i30 = icmp eq ptr %i.c, null
  br i1 %.not.i30, label %_ZNSt12_Vector_baseIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !208
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bx) #25
  br label %_ZNSt12_Vector_baseIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29, %bb.f
  store ptr %i.n, ptr %0, align 8, !tbaa !141
  store ptr %.0.lcssa.i.i.i28, ptr %i.a, align 8, !tbaa !142
  %i.by = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %i.j
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !208
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !235  ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !247    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 4
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 3, i64 %i.k          ; 2 uses
  %i.m = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.p = icmp samesign ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = shl nuw nsw i64 %.0, 2
  %i.r = add nuw nsw i64 %i.q, 4
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #23 ; 5 uses
  switch i64 %1, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit
  %i.t = load i32, ptr %i.g, align 4, !tbaa !237
  store i32 %i.t, ptr %i.s, align 4, !tbaa !237
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit
  %i.u = shl i64 %1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 4 %i.g, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit, %bb.h, %bb.g
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = load i32, ptr %3, align 4, !tbaa !237
  store i32 %i.y, ptr %i.x, align 4, !tbaa !237
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26

bb.k:                                             ; preds = %bb.i
  %i.z = shl i64 %4, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.x, ptr nonnull align 4 %3, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26: ; preds = %bb.k, %bb.j, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %4 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !237
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !237
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27

bb.n:                                             ; preds = %bb.l
  %i.af = shl i64 %i.d, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27: ; preds = %bb.n, %bb.m, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27
  %i.ag = icmp ult i64 %i.b, 4
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27
  %i.ah = shl i64 %i.k, 2
  %i.ai = add i64 %i.ah, 4
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !247
  store i64 %.0, ptr %i.h, align 8, !tbaa !118
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2097152) i32 @"_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_18SourceErrorManager23buildSourceAndCaretLineB5cxx11ERKN4llvh12SMDiagnosticENS_24SourceErrorOutputOptionsEE3$_0EEjRPKcT0_"(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 3 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 3 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !134    ; 10 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !118   ; 2 uses
  %i.e = sext i8 %i.d to i32                      ; 6 uses
  %i.f = and i32 %i.e, 224
  %i.g = icmp eq i32 %i.f, 192
  br i1 %i.g, label %bb.b, label %bb.e, !prof !190

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !118
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 192
  %.not77 = icmp eq i32 %i.k, 128
  br i1 %.not77, label %bb.d, label %bb.c, !prof !190

bb.c:                                             ; preds = %bb.b
  store ptr %i.h, ptr %0, align 8, !tbaa !134
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store ptr %i.l, ptr %0, align 8, !tbaa !134
  %i.m = shl nsw i32 %i.e, 6
  %i.n = and i32 %i.m, 1984                       ; 2 uses
  %i.o = and i32 %i.j, 63
  %i.p = or disjoint i32 %i.o, %i.n
  %i.q = icmp samesign ult i32 %i.n, 128
  br i1 %i.q, label %.thread, label %.critedge, !prof !207

.thread:                                          ; preds = %bb.j, %bb.c, %bb.d
  br label %.critedge

bb.e:                                             ; preds = %bb.a
  %i.r = and i32 %i.e, 240
  %i.s = icmp eq i32 %i.r, 224
  br i1 %i.s, label %bb.f, label %bb.k, !prof !190

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !118   ; 2 uses
  %.not75 = icmp slt i8 %i.u, -64
  br i1 %.not75, label %bb.h, label %bb.g, !prof !190

bb.g:                                             ; preds = %bb.f
  store ptr %i.t, ptr %0, align 8, !tbaa !134
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !118   ; 2 uses
  %.not76 = icmp slt i8 %i.w, -64
  br i1 %.not76, label %bb.j, label %bb.i, !prof !190

bb.i:                                             ; preds = %bb.h
  store ptr %i.v, ptr %0, align 8, !tbaa !134
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store ptr %i.x, ptr %0, align 8, !tbaa !134
end_hunk_3
