Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Const__gen?download=true
inline.NumInlined: 16874
inline.NumDeleted: 2188
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN15SimulateVisitor5visitEP12AstNodeTriop:bb.a
  %i.i = tail call noundef ptr @_ZN15SimulateVisitor8newConstEP7AstNode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !177
  %i.m = tail call noundef ptr @_ZN15SimulateVisitor10fetchConstEP7AstNode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !170
  %i.q = tail call noundef ptr @_ZN15SimulateVisitor10fetchConstEP7AstNode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.u = tail call noundef ptr @_ZN15SimulateVisitor10fetchConstEP7AstNode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.w = load ptr, ptr %1, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 384
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.v)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15SimulateVisitor5visitEP12AstNodeUniop(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !469
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN15SimulateVisitor13checkNodeInfoEP7AstNodeb(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i1 noundef zeroext false)
  tail call void @_ZN7AstNode20iterateChildrenConstER14VNVisitorConst(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i8, ptr %i.d, align 8, !tbaa !465, !range !115, !noundef !116
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !469
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_ZN15SimulateVisitor8newConstEP7AstNode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !177
  %i.m = tail call noundef ptr @_ZN15SimulateVisitor10fetchConstEP7AstNode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.o = load ptr, ptr %1, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 384
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.n)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15SimulateVisitor5visitEP13AstSFormatArg(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN15SimulateVisitor13checkNodeInfoEP7AstNodeb(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i1 noundef zeroext false)
  tail call void @_ZN7AstNode20iterateChildrenConstER14VNVisitorConst(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15SimulateVisitor5visitEP11AstSFormatF(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %class.VFormatAttr, align 1         ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !468
  %.not168 = icmp eq ptr %i.e, null
  br i1 %.not168, label %bb.b, label %bb.be

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !469
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.be

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN15SimulateVisitor13checkNodeInfoEP7AstNodeb(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i1 noundef zeroext false)
  tail call void @_ZN7AstNode20iterateChildrenConstER14VNVisitorConst(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load i8, ptr %i.i, align 8, !tbaa !465, !range !115, !noundef !116
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.be, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !469
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.be

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !97
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 0, ptr %i.q, align 8, !tbaa !99
  store i8 0, ptr %i.p, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !97, !alias.scope !1152
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !98, !noalias !1152 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.v = load i64, ptr %i.u, align 8, !tbaa !99, !noalias !1152 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !1152
  store i64 %i.v, ptr %i.c, align 8, !tbaa !50, !noalias !1152
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.x, ptr %3, align 8, !tbaa !98, !alias.scope !1152
  %i.y = load i64, ptr %i.c, align 8, !tbaa !50, !noalias !1152
  store i64 %i.y, ptr %i.s, align 8, !tbaa !100, !alias.scope !1152
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.e
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %bb.e ] ; 2 uses
  switch i64 %i.v, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !100
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !100
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !50, !noalias !1152 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !99, !alias.scope !1152
  %i.ad = load ptr, ptr %3, align 8, !tbaa !98, !alias.scope !1152
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !1152
  %i.af = load ptr, ptr %3, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !99
  store i8 0, ptr %i.ag, align 8, !tbaa !100
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !99
  %.not169211 = icmp samesign eq i64 %i.ai, 0
  br i1 %.not169211, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 17
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.028214 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  %.043213 = phi ptr [ %i.o, %.lr.ph ], [ %.144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 10 uses
  %.sroa.0158.0212 = phi ptr [ %i.af, %.lr.ph ], [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 4 uses
  %i.az = load i8, ptr %.sroa.0158.0212, align 1, !tbaa !100 ; 4 uses
  br i1 %.028214, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = icmp eq i8 %i.az, 37
  br i1 %i.ba, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bb = load i64, ptr %i.ah, align 8, !tbaa !99
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.bb, ptr noundef nonnull @.str.6, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %.noexc.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.m:                                             ; preds = %bb.j
  %i.be = load i64, ptr %i.q, align 8, !tbaa !99  ; 4 uses
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  %i.bg = load ptr, ptr %2, align 8, !tbaa !98    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.p
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.m
  %i.bi = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bi)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.bj = load i64, ptr %i.p, align 8, !tbaa !100
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bk = phi i64 [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bl = icmp ugt i64 %i.bf, %i.bk
  br i1 %i.bl, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.be, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc66:                                         ; preds = %bb.n
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc66
  %i.bm = phi ptr [ %.pre.i.i, %.noexc66 ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  store i8 %i.az, ptr %i.bn, align 1, !tbaa !100
  store i64 %i.bf, ptr %i.q, align 8, !tbaa !99
  %i.bo = load ptr, ptr %2, align 8, !tbaa !98
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bf
  store i8 0, ptr %i.bp, align 1, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

.critedge:                                        ; preds = %bb.i
  %12 = sext i8 %i.az to i32                      ; 2 uses
  %isdigittmp = add nsw i32 %12, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.critedge
  %i.bq = load i64, ptr %i.ah, align 8, !tbaa !99 ; 4 uses
  %i.br = add i64 %i.bq, 1                        ; 3 uses
  %i.bs = load ptr, ptr %4, align 8, !tbaa !98    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ag
  br i1 %i.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i70: ; preds = %bb.o
  %i.bu = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.bu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67: ; preds = %bb.o
  %i.bv = load i64, ptr %i.ag, align 8, !tbaa !100
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i68: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i70
  %i.bw = phi i64 [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i70 ]
  %i.bx = icmp ugt i64 %i.br, %i.bw
  br i1 %i.bx, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit72

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i68
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bq, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc71:                                         ; preds = %bb.p
  %.pre.i.i69 = load ptr, ptr %4, align 8, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit72: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i68, %.noexc71
  %i.by = phi ptr [ %.pre.i.i69, %.noexc71 ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i68 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bq
  store i8 %i.az, ptr %i.bz, align 1, !tbaa !100
  store i64 %i.br, ptr %i.ah, align 8, !tbaa !99
  %i.ca = load ptr, ptr %4, align 8, !tbaa !98
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.br
  store i8 0, ptr %i.cb, align 1, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.q:                                             ; preds = %.critedge
  %i.cc = call i32 @tolower(i32 noundef %12) #29
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = invoke noundef zeroext i1 @_ZN8V3Number18displayedFmtHasArgEcb(i8 noundef signext %i.cd, i1 noundef zeroext false)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  br i1 %i.ce, label %bb.s, label %bb.aq

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %.043213, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !194
  %i.ch = getelementptr inbounds nuw i8, ptr %.043213, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ch, align 8, !tbaa !36
  %i.ci = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 173
  %spec.select.i = select i1 %i.ci, ptr %.043213, ptr null ; 2 uses
  %.not = icmp eq ptr %spec.select.i, null
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %.043213, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !177
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.cl = phi ptr [ %i.ck, %bb.t ], [ %.043213, %bb.s ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 112 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !471
  %i.co = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !96
  %i.cp = icmp ne i32 %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 104 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = inttoptr i64 %i.cr to ptr
  %.not7.i.i.i = icmp eq i64 %i.cr, 0
  %.not.i.i.i = select i1 %i.cp, i1 true, i1 %.not7.i.i.i
  br i1 %.not.i.i.i, label %bb.v, label %_ZN15SimulateVisitor14fetchValueNullEP7AstNode.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ct = load ptr, ptr %i.am, align 8, !tbaa !472 ; 2 uses
  %i.cu = load ptr, ptr %i.an, align 8, !tbaa !473
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -24
  %.not.i.i.i.i = icmp eq ptr %i.ct, %i.cv
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  %i.cw = load ptr, ptr %i.am, align 8, !tbaa !472
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  store ptr %i.cx, ptr %i.am, align 8, !tbaa !472
  br label %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  invoke void @_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE16_M_push_back_auxIJEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.al)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %bb.x
  %.pre.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !474, !noalias !1153
  br label %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit.i.i.i

_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit.i.i.i: ; preds = %.noexc73, %bb.w
  %i.cy = phi ptr [ %.pre.i.i.i, %.noexc73 ], [ %i.cx, %bb.w ] ; 2 uses
  %i.cz = load ptr, ptr %i.ao, align 8, !tbaa !475, !noalias !1154
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %bb.y, label %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE4backEv.exit.i.i.i

bb.y:                                             ; preds = %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit.i.i.i
  %i.db = load ptr, ptr %i.ap, align 8, !tbaa !476, !noalias !1153
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !477
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 504
  br label %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE4backEv.exit.i.i.i

_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE4backEv.exit.i.i.i: ; preds = %bb.y, %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit.i.i.i
  %i.df = phi ptr [ %i.de, %bb.y ], [ %i.cy, %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit.i.i.i ]
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -24 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  store i64 %i.dh, ptr %i.cq, align 8, !tbaa !100
  %i.di = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !96
  store i32 %i.di, ptr %i.cm, align 8, !tbaa !471
  br label %_ZN15SimulateVisitor14fetchValueNullEP7AstNode.exit.i

_ZN15SimulateVisitor14fetchValueNullEP7AstNode.exit.i: ; preds = %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE4backEv.exit.i.i.i, %bb.u
  %.0.i.i.i = phi ptr [ %i.cs, %bb.u ], [ %i.dg, %_ZNSt5dequeIN15SimulateVisitor11AuxVariableESaIS1_EE4backEv.exit.i.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !479 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %_ZN15SimulateVisitor14fetchConstNullEP7AstNode.exit, label %bb.z

bb.z:                                             ; preds = %_ZN15SimulateVisitor14fetchValueNullEP7AstNode.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.dl, align 8, !tbaa !36
  %i.dm = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 121
  %spec.select.i.i = select i1 %i.dm, ptr %i.dk, ptr null
  br label %_ZN15SimulateVisitor14fetchConstNullEP7AstNode.exit

_ZN15SimulateVisitor14fetchConstNullEP7AstNode.exit: ; preds = %bb.z, %_ZN15SimulateVisitor14fetchValueNullEP7AstNode.exit.i
  %i.dn = phi ptr [ null, %_ZN15SimulateVisitor14fetchValueNullEP7AstNode.exit.i ], [ %spec.select.i.i, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.do = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !172
  %i.dq = invoke i8 @_ZN13AstSFormatArg18formatAttrDefauledEPKS_PK12AstNodeDType(ptr noundef %spec.select.i, ptr noundef %i.dp)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %_ZN15SimulateVisitor14fetchConstNullEP7AstNode.exit
  store i8 %i.dq, ptr %5, align 1
  %.not48 = icmp eq ptr %i.dn, null
  br i1 %.not48, label %.noexc.i, label %bb.af

.noexc.i:                                         ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.dr, ptr %6, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 52, ptr %i.b, align 8, !tbaa !50
  %i.ds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc74 unwind label %bb.ad  ; 3 uses

.noexc74:                                         ; preds = %.noexc.i
  store ptr %i.ds, ptr %6, align 8, !tbaa !98
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !50  ; 3 uses
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.ds, ptr noundef nonnull align 1 dereferenceable(52) @.str.783, i64 52, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !99
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dt
  store i8 0, ptr %i.dv, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  invoke void @_ZN15SimulateVisitor16clearOptimizableEP7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %.noexc74
  %i.dw = load ptr, ptr %6, align 8, !tbaa !98    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.dr
  br i1 %i.dx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.dy = load i64, ptr %i.dr, align 8, !tbaa !100
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.ac:                                            ; preds = %_ZN15SimulateVisitor14fetchConstNullEP7AstNode.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ad:                                            ; preds = %.noexc.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.ae:                                            ; preds = %.noexc74
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = load ptr, ptr %6, align 8, !tbaa !98    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.dr
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.ae
  %i.ef = load i64, ptr %i.dr, align 8, !tbaa !100
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.ad
  %.pn49 = phi { ptr, i32 } [ %i.eb, %bb.ad ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %i.ec, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ap

bb.af:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %i.aq, ptr %9, align 8, !tbaa !97, !alias.scope !1155
  store i8 37, ptr %i.aq, align 8, !tbaa !100
  store i64 1, ptr %i.ar, align 8, !tbaa !99, !alias.scope !1155
  store i8 0, ptr %i.as, align 1, !tbaa !100
  call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  %i.eh = load i64, ptr %i.ah, align 8, !tbaa !99, !noalias !1156 ; 2 uses
  %i.ei = icmp ugt i64 %i.eh, 4611686018427387902
  br i1 %i.ei, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.525) #27
          to label %.noexc80 unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp

.noexc80:                                         ; preds = %bb.ag
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.af
  %i.ej = load ptr, ptr %4, align 8, !tbaa !98, !noalias !1156
  %i.ek = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.ej, i64 noundef %i.eh)
          to label %.noexc81 unwind label %.loopexit.split-lp172.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc81:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.at, ptr %8, align 8, !tbaa !97, !alias.scope !1156
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !98 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 5 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

bb.ah:                                            ; preds = %.noexc81
end_hunk_0
