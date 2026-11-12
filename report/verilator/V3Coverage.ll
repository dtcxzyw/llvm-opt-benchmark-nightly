Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Coverage?download=true
inline.NumInlined: 4522
inline.NumDeleted: 1313
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN17AstCoverOtherDeclC2EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_iS9_S9_S9_S9_:bb.a

.noexc.i28:                                       ; preds = %bb.j
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc29 unwind label %bb.t   ; 2 uses

.noexc29:                                         ; preds = %.noexc.i28
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !30
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !118
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !32
  br label %._crit_edge.i.i27

._crit_edge.i.i27:                                ; preds = %.noexc29, %bb.j
  %i.bd = phi ptr [ %i.bb, %.noexc29 ], [ %i.aw, %bb.j ] ; 2 uses
  switch i64 %i.az, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i27
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !32
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !32
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.ax, i64 %i.az, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i27
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !118 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !31
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !33
  %i.bl = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !118
  %i.bo = icmp ugt i64 %i.bn, 15
  br i1 %i.bo, label %.noexc.i32, label %._crit_edge.i.i31

.noexc.i32:                                       ; preds = %bb.m
  %i.bp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc33 unwind label %bb.u   ; 2 uses

.noexc33:                                         ; preds = %.noexc.i32
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !30
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !118
  store i64 %i.bq, ptr %i.bk, align 8, !tbaa !32
  br label %._crit_edge.i.i31

._crit_edge.i.i31:                                ; preds = %.noexc33, %bb.m
  %i.br = phi ptr [ %i.bp, %.noexc33 ], [ %i.bk, %bb.m ] ; 2 uses
  switch i64 %i.bn, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i31
  %i.bs = load i8, ptr %i.bl, align 1, !tbaa !32
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !32
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bl, i64 %i.bn, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i31
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !31
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store i8 0, ptr %i.bw, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i32 %5, ptr %i.bx, align 8, !tbaa !644
  ret void

bb.q:                                             ; preds = %.noexc.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.r:                                             ; preds = %.noexc.i20
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.s:                                             ; preds = %.noexc.i24
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.t:                                             ; preds = %.noexc.i28
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.u:                                             ; preds = %.noexc.i32
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %i.av, align 8, !tbaa !30 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.aw
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.cf = load i64, ptr %i.aw, align 8, !tbaa !32
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.t ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cc, %bb.u ] ; 2 uses
  %i.ch = load ptr, ptr %i.ah, align 8, !tbaa !30 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ai
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cj = load i64, ptr %i.ai, align 8, !tbaa !32
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.s ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !30  ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.u
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.cn = load i64, ptr %i.u, align 8, !tbaa !32
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ] ; 2 uses
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !30  ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.g
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.cr = load i64, ptr %i.g, align 8, !tbaa !32
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.by, %bb.q ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN16AstNodeCoverDeclD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN15CoverageVisitor11newCoverIncEP8FileLineP16AstNodeCoverDeclRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %class.VAccess, align 1             ; 7 uses
  %10 = alloca %class.VAccess, align 1            ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28 ; 8 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.a, i16 416, ptr noundef %1)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV11AstCoverInc, i64 16), ptr %i.a, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %2, ptr %i.b, align 8, !tbaa !647
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
  %i.e = icmp ne i64 %i.d, 0
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1032), align 8, !range !80
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.c, label %bb.at

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !168  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN7AstNode2isI8AstClass13AstNodeModuleEEbPKT0_.exit.thread, label %_ZN7AstNode2isI8AstClass13AstNodeModuleEEbPKT0_.exit

_ZN7AstNode2isI8AstClass13AstNodeModuleEEbPKT0_.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.j, align 8, !tbaa !186
  %i.k = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 384
  br i1 %i.k, label %bb.at, label %_ZN7AstNode2isI8AstClass13AstNodeModuleEEbPKT0_.exit.thread

_ZN7AstNode2isI8AstClass13AstNodeModuleEEbPKT0_.exit.thread: ; preds = %bb.c, %_ZN7AstNode2isI8AstClass13AstNodeModuleEEbPKT0_.exit
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !166  ; 7 uses
  %i.o = load <2 x i16>, ptr %i.n, align 8, !tbaa !325
  store <2 x i16> %i.o, ptr %i.l, align 8, !tbaa !325
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load i32, ptr %i.q, align 4
  store i32 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load <2 x i32>, ptr %i.t, align 8, !tbaa !34
  store <2 x i32> %i.u, ptr %i.s, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, 16777215
  %11 = getelementptr i8, ptr %i.n, i64 20
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 16777215
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 32
  %16 = or disjoint i64 %15, %i.y
  store i64 %16, ptr %i.v, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !293
  store i16 %i.ab, ptr %i.z, align 8, !tbaa !293
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !224
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !326 ; 2 uses
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !224
  %.not.i60 = icmp eq ptr %i.af, null
  br i1 %.not.i60, label %_ZN8FileLineC2EPS_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7AstNode2isI8AstClass13AstNodeModuleEEbPKT0_.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = atomicrmw add ptr %i.ag, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN8FileLineC2EPS_.exit

_ZN8FileLineC2EPS_.exit:                          ; preds = %bb.d, %_ZN7AstNode2isI8AstClass13AstNodeModuleEEbPKT0_.exit.thread
  %i.ai = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb.exit, !prof !245

bb.e:                                             ; preds = %_ZN8FileLineC2EPS_.exit
  %i.ak = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #23
  %.not.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = tail call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #23
  br label %_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb.exit

common.resume:                                    ; preds = %bb.p, %bb.q, %bb.aa, %bb.as, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.h ], [ %i.cb, %bb.p ], [ %i.cc, %bb.q ], [ %.pn52.pn.pn.pn, %bb.as ], [ %.pn49.pn, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #23
  br label %common.resume

_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb.exit:  ; preds = %_ZN8FileLineC2EPS_.exit, %bb.e, %bb.g
  %i.an = load i16, ptr %i.l, align 8, !tbaa !294
  %i.ao = tail call noundef zeroext i16 @_ZN17FileLineSingleton11msgEnSetBitEtNS_11MsgEnBitSet6SubsetE11V3ErrorCodeb(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s, i16 noundef zeroext %i.an, i8 noundef zeroext 0, i8 -124, i1 noundef zeroext false)
  store i16 %i.ao, ptr %i.l, align 8, !tbaa !294
  %i.ap = tail call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #28 ; 7 uses
  %i.aq = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i8 25)
          to label %_ZNK7AstNode15findUInt32DTypeEv.exit unwind label %bb.q

_ZNK7AstNode15findUInt32DTypeEv.exit:             ; preds = %_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb.exit
  invoke void @_ZN6AstVarC2EP8FileLine8VVarTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(280) %i.ap, ptr noundef nonnull %i.l, i8 17, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.aq)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %_ZNK7AstNode15findUInt32DTypeEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 260 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 4
  %i.at = or i64 %i.as, 72198331526283264
  store i64 %i.at, ptr %i.ar, align 4
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !168
  tail call void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(306) %i.au, ptr noundef nonnull %i.ap)
  %i.av = tail call noundef i32 @_ZL5debugv()
  %i.aw = icmp sgt i32 %i.av, 4
  br i1 %i.aw, label %bb.j, label %bb.ab, !prof !24

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.1, i32 noundef 204)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ay = load ptr, ptr %5, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !31
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.t ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.k
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.36, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull %i.ap)
          to label %bb.l unwind label %bb.t       ; 0 uses

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  %i.be = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !32
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !31 ; 2 uses
  %i.bl = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bk
  %i.bn = getelementptr i8, ptr %i.bm, i64 -1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !32
  %.not = icmp eq i8 %i.bo, 10
  %i.bp = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63: ; preds = %bb.n
  %i.bs = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bs)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.n
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !32
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bu) #24
  %.pre = load ptr, ptr %6, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  %i.bv = phi ptr [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !32
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.not, label %bb.w, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 10)
          to label %bb.w unwind label %bb.r       ; 0 uses

bb.p:                                             ; preds = %bb.a
  %i.cb = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #24
  br label %common.resume

bb.q:                                             ; preds = %_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb.exit, %_ZNK7AstNode15findUInt32DTypeEv.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 280) #24
  br label %common.resume

bb.r:                                             ; preds = %bb.j, %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.t:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.t
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !32
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

end_hunk_0
begin_hunk_1_@_ZN16AstNodeCoverDeclC2E6VNTypeP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_:bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !30     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.g, ptr %i.b, align 8, !tbaa !118
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !30
  %i.j = load i64, ptr %i.b, align 8, !tbaa !118
  store i64 %i.j, ptr %i.d, align 8, !tbaa !32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !32
  store i8 %i.l, ptr %i.k, align 1, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.m, ptr %i.n, align 8, !tbaa !31
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !33
  %i.s = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.u, ptr %i.a, align 8, !tbaa !118
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i9, label %._crit_edge.i.i8

.noexc.i9:                                        ; preds = %bb.d
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10 unwind label %bb.h   ; 2 uses

.noexc10:                                         ; preds = %.noexc.i9
  store ptr %i.w, ptr %i.q, align 8, !tbaa !30
  %i.x = load i64, ptr %i.a, align 8, !tbaa !118
  store i64 %i.x, ptr %i.r, align 8, !tbaa !32
  br label %._crit_edge.i.i8

._crit_edge.i.i8:                                 ; preds = %.noexc10, %bb.d
  %i.y = phi ptr [ %i.w, %.noexc10 ], [ %i.r, %bb.d ] ; 2 uses
  switch i64 %i.u, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i8
  %i.z = load i8, ptr %i.s, align 1, !tbaa !32
  store i8 %i.z, ptr %i.y, align 1, !tbaa !32
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i8
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !31
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.ag, align 8, !tbaa !31
  store i8 0, ptr %i.af, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  ret void

bb.h:                                             ; preds = %.noexc.i9
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.d
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.d, align 8, !tbaa !32
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ai
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16AstNodeCoverDeclD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 328) (i8, ptr @_ZTV16AstNodeCoverDecl, i64 16), ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !32
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !32
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

declare void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152), i16, ptr noundef) unnamed_addr #3

declare void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI8AstClass13AstNodeModuleEEbPKT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !186
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 384
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8FileLineC2EPS_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load <2 x i16>, ptr %1, align 8, !tbaa !325
  store <2 x i16> %i.a, ptr %0, align 8, !tbaa !325
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = load i32, ptr %i.b, align 4
  %i.g = and i32 %i.f, -2
  %i.h = or disjoint i32 %i.g, %i.e
  store i32 %i.h, ptr %i.b, align 4
  %i.i = load i32, ptr %i.c, align 4
  %i.j = and i32 %i.i, -2
  %i.k = or disjoint i32 %i.j, %i.e
  store i32 %i.k, ptr %i.b, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load <2 x i32>, ptr %i.m, align 8, !tbaa !34
  store <2 x i32> %i.n, ptr %i.l, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 16777215
  %i.s = load i64, ptr %i.o, align 8
  %i.t = and i64 %i.s, -16777216
  %i.u = or disjoint i64 %i.t, %i.r               ; 2 uses
  store i64 %i.u, ptr %i.o, align 8
  %2 = getelementptr i8, ptr %1, i64 20
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16777215
  %5 = zext nneg i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 32
  %i.v = and i64 %i.u, -72057589742960641
  %i.w = or disjoint i64 %6, %i.v
  store i64 %i.w, ptr %i.o, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i16, ptr %i.y, align 8, !tbaa !293
  store i16 %i.z, ptr %i.x, align 8, !tbaa !293
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !224
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !326 ; 2 uses
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !224
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = atomicrmw add ptr %i.ae, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8FileLine7warnOffE11V3ErrorCodeb.exit, !prof !245

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #23
  %.not.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZN8FileLine7warnOffE11V3ErrorCodeb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #23
  br label %_ZN8FileLine7warnOffE11V3ErrorCodeb.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #23
  resume { ptr, i32 } %i.e

_ZN8FileLine7warnOffE11V3ErrorCodeb.exit:         ; preds = %bb.a, %bb.b, %bb.d
  %i.f = xor i1 %2, true
  %i.g = load i16, ptr %0, align 8, !tbaa !294
  %i.h = tail call noundef zeroext i16 @_ZN17FileLineSingleton11msgEnSetBitEtNS_11MsgEnBitSet6SubsetE11V3ErrorCodeb(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s, i16 noundef zeroext %i.g, i8 noundef zeroext 0, i8 %1, i1 noundef zeroext %i.f)
  store i16 %i.h, ptr %0, align 8, !tbaa !294
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8VVarTypeC2ENS_2enE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1) unnamed_addr #4 comdat align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !330
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6AstVarC2EP8FileLine8VVarTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1, i8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 68, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 328) (i8, ptr @_ZTV6AstVar, i64 16), ptr %0, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !33
  %i.e = load ptr, ptr %3, align 8, !tbaa !30     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.g, ptr %i.b, align 8, !tbaa !118
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !30
  %i.j = load i64, ptr %i.b, align 8, !tbaa !118
  store i64 %i.j, ptr %i.d, align 8, !tbaa !32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !32
  store i8 %i.l, ptr %i.k, align 1, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.m, ptr %i.n, align 8, !tbaa !31
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !33
  %i.s = load ptr, ptr %3, align 8, !tbaa !30     ; 2 uses
  %i.t = load i64, ptr %i.f, align 8, !tbaa !31   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.t, ptr %i.a, align 8, !tbaa !118
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i13, label %._crit_edge.i.i12

.noexc.i13:                                       ; preds = %bb.d
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc14 unwind label %bb.m   ; 2 uses

.noexc14:                                         ; preds = %.noexc.i13
  store ptr %i.v, ptr %i.q, align 8, !tbaa !30
  %i.w = load i64, ptr %i.a, align 8, !tbaa !118
  store i64 %i.w, ptr %i.r, align 8, !tbaa !32
  br label %._crit_edge.i.i12

._crit_edge.i.i12:                                ; preds = %.noexc14, %bb.d
  %i.x = phi ptr [ %i.v, %.noexc14 ], [ %i.r, %bb.d ] ; 2 uses
  switch i64 %i.t, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i12
  %i.y = load i8, ptr %i.s, align 1, !tbaa !32
  store i8 %i.y, ptr %i.x, align 1, !tbaa !32
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i12
  %i.z = load i64, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !31
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.af, align 8, !tbaa !31
  store i8 0, ptr %i.ae, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 0, ptr %i.ah, align 8, !tbaa !337
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr null, ptr %i.ai, align 8, !tbaa !338
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ag, i8 0, i64 5, i1 false)
  %i.ak = load i64, ptr %i.aj, align 4
  %i.al = and i64 %i.ak, -9223372036854775808
  store i64 %i.al, ptr %i.aj, align 4
  invoke void @_ZN6AstVar11combineTypeE8VVarType(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 %2)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.i, label %bb.o, !prof !24

bb.i:                                             ; preds = %bb.h
  %i.am = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.37, i32 noundef 2275)
          to label %bb.j unwind label %bb.n       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.an = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.k unwind label %bb.n       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.38, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.an) #27
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  unreachable

bb.m:                                             ; preds = %.noexc.i13
end_hunk_1
