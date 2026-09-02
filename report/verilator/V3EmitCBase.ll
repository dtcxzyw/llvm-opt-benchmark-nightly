Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3EmitCBase?download=true
inline.NumInlined: 1433
inline.NumDeleted: 361
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN21EmitCBaseVisitorConst11emitModCUseEPK13AstNodeModule8VUseType:bb.a
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.n, align 8, !tbaa !436 ; 3 uses
  %i.o = and i8 %.sroa.0.0.copyload.i.i, %2
  %.not8.i = icmp eq i8 %i.o, 0
  br i1 %.not8.i, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = and i8 %.sroa.0.0.copyload.i.i, 2
  %.not9.i = icmp eq i8 %i.p, 0
  br i1 %.not9.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN9EmitCUtil17prefixNameProtectB5cxx11EPK7AstNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull %.01732.i)
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.563, i64 noundef 10)
          to label %.noexc.i unwind label %bb.k   ; 6 uses

.noexc.i:                                         ; preds = %bb.d
  store ptr %i.b, ptr %4, align 8, !tbaa !106, !alias.scope !437
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !107  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.e:                                             ; preds = %.noexc.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !108  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i
  store ptr %i.r, ptr %4, align 8, !tbaa !107, !alias.scope !437
  %i.y = load i64, ptr %i.s, align 8, !tbaa !98
  store i64 %i.y, ptr %i.b, align 8, !tbaa !98, !alias.scope !437
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !108
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %i.z = phi i64 [ %i.v, %bb.e ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.z, ptr %i.c, align 8, !tbaa !108, !alias.scope !437
  store ptr %i.s, ptr %i.q, align 8, !tbaa !107
  store i64 0, ptr %i.aa, align 8, !tbaa !108
  store i8 0, ptr %i.s, align 8, !tbaa !98
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !108, !noalias !438
  %i.ac = and i64 %i.ab, -4
  %i.ad = icmp eq i64 %i.ac, 4611686018427387900
  br i1 %i.ad, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #21
          to label %.noexc35.i unwind label %.loopexit.split-lp.i

.noexc35.i:                                       ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %bb.f
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.564, i64 noundef 4)
          to label %.noexc36.i unwind label %.loopexit.i ; 6 uses

.noexc36.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  store ptr %i.d, ptr %3, align 8, !tbaa !106, !alias.scope !438
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !107 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i

bb.h:                                             ; preds = %.noexc36.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !108 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i: ; preds = %.noexc36.i
  store ptr %i.af, ptr %3, align 8, !tbaa !107, !alias.scope !438
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !98
  store i64 %i.am, ptr %i.d, align 8, !tbaa !98, !alias.scope !438
  %.phi.trans.insert.i33.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.pre.i34.i = load i64, ptr %.phi.trans.insert.i33.i, align 8, !tbaa !108
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i, %bb.h
  %i.an = phi i64 [ %i.aj, %bb.h ], [ %.pre.i34.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.an, ptr %i.e, align 8, !tbaa !108, !alias.scope !438
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !107
  store i64 0, ptr %i.ao, align 8, !tbaa !108
  store i8 0, ptr %i.ag, align 8, !tbaa !98
  %.val30.i = load ptr, ptr %3, align 8, !tbaa !107
  %.val28.val.i = load ptr, ptr %i.f, align 8, !tbaa !140
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %.val28.val.i, ptr noundef null, ptr noundef %.val30.i)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %3, align 8, !tbaa !107   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.d
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i: ; preds = %bb.j
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !98
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i
  %i.at = load ptr, ptr %4, align 8, !tbaa !107   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.b
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.av = load i64, ptr %i.b, align 8, !tbaa !98
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i
  %i.ax = load ptr, ptr %5, align 8, !tbaa !107   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.g
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i
  %i.az = load i64, ptr %i.g, align 8, !tbaa !98
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.w

bb.k:                                             ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i

.loopexit.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i

bb.l:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !107   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.d
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i: ; preds = %bb.l
  %i.bf = load i64, ptr %i.d, align 8, !tbaa !98
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn22.i = phi { ptr, i32 } [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %i.bc, %bb.l ] ; 2 uses
  %i.bh = load ptr, ptr %4, align 8, !tbaa !107   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.b
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !98
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i, %bb.k
  %.pn22.pn.i = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %.pn22.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i ], [ %.pn22.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i ]
  %i.bl = load ptr, ptr %5, align 8, !tbaa !107   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.g
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i
  %i.bn = load i64, ptr %i.g, align 8, !tbaa !98
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume

bb.m:                                             ; preds = %bb.c
  %10 = and i8 %.sroa.0.0.copyload.i.i, 1
  %.not10.i = icmp eq i8 %10, 0
  br i1 %.not10.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN9EmitCUtil17prefixNameProtectB5cxx11EPK7AstNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %.01732.i)
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.565, i64 noundef 6)
          to label %.noexc58.i unwind label %bb.u ; 6 uses

.noexc58.i:                                       ; preds = %bb.n
  store ptr %i.h, ptr %7, align 8, !tbaa !106, !alias.scope !439
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !107 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i

bb.o:                                             ; preds = %.noexc58.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !108 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false)
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i: ; preds = %.noexc58.i
  store ptr %i.bq, ptr %7, align 8, !tbaa !107, !alias.scope !439
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !98
  store i64 %i.bx, ptr %i.h, align 8, !tbaa !98, !alias.scope !439
  %.phi.trans.insert.i56.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.pre.i57.i = load i64, ptr %.phi.trans.insert.i56.i, align 8, !tbaa !108
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i, %bb.o
  %i.by = phi i64 [ %i.bu, %bb.o ], [ %.pre.i57.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.by, ptr %i.i, align 8, !tbaa !108, !alias.scope !439
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !107
  store i64 0, ptr %i.bz, align 8, !tbaa !108
  store i8 0, ptr %i.br, align 8, !tbaa !98
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.ca = load i64, ptr %i.i, align 8, !tbaa !108, !noalias !440
  %i.cb = and i64 %i.ca, -2
  %i.cc = icmp eq i64 %i.cb, 4611686018427387902
  br i1 %i.cc, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #21
          to label %.noexc64.i unwind label %.loopexit.split-lp12.i

.noexc64.i:                                       ; preds = %bb.q
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60.i: ; preds = %bb.p
  %i.cd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %.noexc65.i unwind label %.loopexit11.i ; 6 uses

.noexc65.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60.i
  store ptr %i.j, ptr %6, align 8, !tbaa !106, !alias.scope !440
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !107 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 5 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i

bb.r:                                             ; preds = %.noexc65.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !108 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false)
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i: ; preds = %.noexc65.i
  store ptr %i.ce, ptr %6, align 8, !tbaa !107, !alias.scope !440
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !98
  store i64 %i.cl, ptr %i.j, align 8, !tbaa !98, !alias.scope !440
  %.phi.trans.insert.i62.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.pre.i63.i = load i64, ptr %.phi.trans.insert.i62.i, align 8, !tbaa !108
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i, %bb.r
  %i.cm = phi i64 [ %i.ci, %bb.r ], [ %.pre.i63.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %i.cm, ptr %i.k, align 8, !tbaa !108, !alias.scope !440
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !107
  store i64 0, ptr %i.cn, align 8, !tbaa !108
  store i8 0, ptr %i.cf, align 8, !tbaa !98
  %.val27.i = load ptr, ptr %6, align 8, !tbaa !107
  %.val.val.i = load ptr, ptr %i.f, align 8, !tbaa !140
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %.val.val.i, ptr noundef null, ptr noundef %.val27.i)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %6, align 8, !tbaa !107   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.j
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i: ; preds = %bb.t
  %i.cq = load i64, ptr %i.j, align 8, !tbaa !98
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i
  %i.cs = load ptr, ptr %7, align 8, !tbaa !107   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.h
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i
  %i.cu = load i64, ptr %i.h, align 8, !tbaa !98
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i
  %i.cw = load ptr, ptr %8, align 8, !tbaa !107   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.l
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i
  %i.cy = load i64, ptr %i.l, align 8, !tbaa !98
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.w

bb.u:                                             ; preds = %bb.n
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i

.loopexit11.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i60.i
  %lpad.loopexit13.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i

.loopexit.split-lp12.i:                           ; preds = %bb.q
  %lpad.loopexit.split-lp14.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i

bb.v:                                             ; preds = %bb.s
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %6, align 8, !tbaa !107   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.j
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i: ; preds = %bb.v
  %i.de = load i64, ptr %i.j, align 8, !tbaa !98
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i, %.loopexit.split-lp12.i, %.loopexit11.i
  %.pn.i = phi { ptr, i32 } [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i ], [ %lpad.loopexit.split-lp14.i, %.loopexit.split-lp12.i ], [ %lpad.loopexit13.i, %.loopexit11.i ], [ %i.db, %bb.v ] ; 2 uses
  %i.dg = load ptr, ptr %7, align 8, !tbaa !107   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.h
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i
  %i.di = load i64, ptr %i.h, align 8, !tbaa !98
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i, %bb.u
  %.pn.pn.i = phi { ptr, i32 } [ %i.da, %bb.u ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i ]
  %i.dk = load ptr, ptr %8, align 8, !tbaa !107   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.l
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i
  %i.dm = load i64, ptr %i.l, align 8, !tbaa !98
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i, %bb.b, %_ZN7AstNode4castI7AstCUseS_EEPKT_PKT0_.exit.i
  %.1 = phi i1 [ %.0, %bb.b ], [ %.0, %bb.m ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i ], [ %.0, %_ZN7AstNode4castI7AstCUseS_EEPKT_PKT0_.exit.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01732.i, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !105 ; 2 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %"_ZN21EmitCBaseVisitorConst10forModCUseIZNS_11emitModCUseEPK13AstNodeModule8VUseTypeE3$_0EEvS3_S4_T_.exit", label %_ZN7AstNode4castI7AstCUseS_EEPKT_PKT0_.exit.i, !llvm.loop !434

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %common.resume.op = phi { ptr, i32 } [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ], [ %.pn22.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i ]
  resume { ptr, i32 } %common.resume.op

"_ZN21EmitCBaseVisitorConst10forModCUseIZNS_11emitModCUseEPK13AstNodeModule8VUseTypeE3$_0EEvS3_S4_T_.exit": ; preds = %bb.w
  br i1 %.1, label %._crit_edge.i.i, label %"_ZN21EmitCBaseVisitorConst10forModCUseIZNS_11emitModCUseEPK13AstNodeModule8VUseTypeE3$_0EEvS3_S4_T_.exit.thread"

._crit_edge.i.i:                                  ; preds = %"_ZN21EmitCBaseVisitorConst10forModCUseIZNS_11emitModCUseEPK13AstNodeModule8VUseTypeE3$_0EEvS3_S4_T_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.dq, ptr %9, align 8, !tbaa !106
  store i8 10, ptr %i.dq, align 8, !tbaa !98
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %i.dr, align 8, !tbaa !108
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 0, ptr %i.ds, align 1, !tbaa !98
  %i.dt = load ptr, ptr %i.f, align 8, !tbaa !140
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.dt, ptr noundef null, ptr noundef nonnull %i.dq)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.x

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i
  %i.du = load ptr, ptr %9, align 8, !tbaa !107   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.dq
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dw = load i64, ptr %i.dq, align 8, !tbaa !98
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %"_ZN21EmitCBaseVisitorConst10forModCUseIZNS_11emitModCUseEPK13AstNodeModule8VUseTypeE3$_0EEvS3_S4_T_.exit.thread"

bb.x:                                             ; preds = %._crit_edge.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %i.dz = load ptr, ptr %9, align 8, !tbaa !107   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dq
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.x
  %i.eb = load i64, ptr %i.dq, align 8, !tbaa !98
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %common.resume

"_ZN21EmitCBaseVisitorConst10forModCUseIZNS_11emitModCUseEPK13AstNodeModule8VUseTypeE3$_0EEvS3_S4_T_.exit.thread": ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %"_ZN21EmitCBaseVisitorConst10forModCUseIZNS_11emitModCUseEPK13AstNodeModule8VUseTypeE3$_0EEvS3_S4_T_.exit"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21EmitCBaseVisitorConst9scSectionB5cxx11EPK13AstNodeModule19VSystemCSectionType(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.113") align 8 %0, ptr noundef %1, i8 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 58), align 2, !tbaa !157, !range !114, !noundef !115
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !108
  store i8 0, ptr %i.d, align 8, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.f, align 8, !tbaa !451
  br label %bb.af

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store i64 0, ptr %i.h, align 8, !tbaa !108
  store i8 0, ptr %i.g, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.021140 = load ptr, ptr %i.i, align 8, !tbaa !84 ; 2 uses
  %.not141 = icmp eq ptr %.021140, null
  br i1 %.not141, label %._crit_edge.i.i.i.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit71
  %.pre = load i64, ptr %i.h, align 8, !tbaa !108 ; 3 uses
  %i.o = icmp eq i64 %.pre, 0
  br i1 %i.o, label %._crit_edge.i.i.i.i.thread, label %bb.t

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.b, %._crit_edge
  %.0.lcssa190 = phi ptr [ %.2, %._crit_edge ], [ null, %bb.b ]
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !106, !alias.scope !452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !452
  store i64 0, ptr %i.a, align 8, !tbaa !109, !noalias !452
  br label %bb.ad

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit71
  %.021144 = phi ptr [ %.021140, %.lr.ph ], [ %.021, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit71 ] ; 7 uses
  %.022143 = phi i32 [ -999, %.lr.ph ], [ %.123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit71 ] ; 3 uses
  %.0142 = phi ptr [ null, %.lr.ph ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit71 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.021144, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.q, align 8, !tbaa !93
  %.not99 = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 58
  br i1 %.not99, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit71

.loopexit100:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i68
  %lpad.loopexit102 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp101:                            ; preds = %.invoke
  %lpad.loopexit.split-lp103 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.021144, i64 152
  %.sroa.0.0.copyload.i = load i8, ptr %i.r, align 8, !tbaa !454
  %.not29 = icmp eq i8 %.sroa.0.0.copyload.i, %2
  br i1 %.not29, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit71

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.h, align 8, !tbaa !108
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.021144, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !158  ; 2 uses
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.18, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit100 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 981), align 1, !tbaa !159, !range !114, !noundef !115
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.z = load i64, ptr %i.h, align 8, !tbaa !108
  %i.aa = add i64 %i.z, -4611686018427387856
  %i.ab = icmp ult i64 %i.aa, 48
  br i1 %i.ab, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39

.invoke:                                          ; preds = %bb.s, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #21
          to label %.cont unwind label %.loopexit.split-lp101

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39: ; preds = %bb.f
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.53, i64 noundef 48)
          to label %bb.g unwind label %.loopexit100 ; 0 uses

bb.g:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39
  %.1 = phi ptr [ %.0142, %bb.e ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.021144, i64 88 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !158 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !163
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !164
  %i.aj = zext i16 %i.ai to i32
  %i.ak = add nsw i32 %i.ag, %i.aj
  %i.al = add nsw i32 %.022143, 1
  %.not30 = icmp ne i32 %i.al, %i.ak
  %i.am = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 981), align 1, !range !114
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond = select i1 %.not30, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
end_hunk_0
