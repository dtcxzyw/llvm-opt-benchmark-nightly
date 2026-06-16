inline.NumInlined: 1466
inline.NumDeleted: 366
begin_hunk_0_@_ZNK6Assimp12PbrtExporter20CleanTextureFilenameB5cxx11ERK8aiStringb:bb.a
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !37 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.ae, ptr %5, align 8, !alias.scope !40
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.af, align 8, !alias.scope !40
  store i8 0, ptr %i.ae, align 8, !alias.scope !40
  %i.ag = add i64 %i.ad, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ag)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %i.af, align 8, !alias.scope !40
  %i.ai = sub i64 4611686018427387903, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.ad
  br i1 %i.aj, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ab, i64 noundef %i.ad)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.k ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.al = load i64, ptr %i.af, align 8, !alias.scope !40
  %i.am = icmp eq i64 %i.al, 4611686018427387903
  br i1 %i.am, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #25
          to label %.cont.i.i unwind label %bb.k

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.l unwind label %bb.k       ; 0 uses

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %5, align 8, !alias.scope !40 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ae
  br i1 %i.aq, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.ar = load i64, ptr %i.ae, align 8, !alias.scope !40
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #26
  br label %.body

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.at = load i64, ptr %i.m, align 8, !noalias !43 ; 2 uses
  %i.au = load i64, ptr %i.af, align 8, !noalias !43
  %i.av = sub i64 4611686018427387903, %i.au
  %i.aw = icmp ult i64 %i.av, %i.at
  br i1 %i.aw, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #25
          to label %.noexc34 unwind label %bb.al

.noexc34:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.l
  %i.ax = load ptr, ptr %0, align 8, !noalias !43
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ax, i64 noundef %i.at)
          to label %.noexc35 unwind label %bb.al  ; 6 uses

.noexc35:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.az, ptr %4, align 8, !alias.scope !43
  %i.ba = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %.noexc35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false)
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc35
  store ptr %i.ba, ptr %4, align 8, !alias.scope !43
  %i.bh = load i64, ptr %i.bb, align 8
  store i64 %i.bh, ptr %i.az, align 8, !alias.scope !43
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %i.bi = phi i64 [ %i.be, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.bi, ptr %i.bk, align 8, !alias.scope !43
  store ptr %i.bb, ptr %i.ay, align 8
  store i64 0, ptr %i.bj, align 8
  store i8 0, ptr %i.bb, align 8
  %i.bl = load ptr, ptr %0, align 8               ; 6 uses
  %i.bm = icmp eq ptr %i.bl, %i.e
  %i.bn = load ptr, ptr %4, align 8               ; 6 uses
  %i.bo = icmp eq ptr %i.bn, %i.az                ; 2 uses
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.o
  br i1 %i.bo, label %bb.p, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.o
  br i1 %i.bo, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bp = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %.not21.i = icmp eq ptr %4, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.q, !prof !46

bb.q:                                             ; preds = %bb.p
  switch i64 %i.bp, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.br = load i8, ptr %i.bn, align 1
  store i8 %i.br, ptr %i.bl, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bn, i64 %i.bp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.bs = load i64, ptr %i.bk, align 8            ; 2 uses
  store i64 %i.bs, ptr %i.m, align 8
  %i.bt = load ptr, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store i8 0, ptr %i.bu, align 1
  %.pre.i36 = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bn, ptr %0, align 8
  %i.bv = load <2 x i64>, ptr %i.bk, align 8
  store <2 x i64> %i.bv, ptr %i.m, align 8
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bw = load i64, ptr %i.e, align 8
  store ptr %i.bn, ptr %0, align 8
  %i.bx = load <2 x i64>, ptr %i.bk, align 8
  store <2 x i64> %i.bx, ptr %i.m, align 8
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bl, ptr %4, align 8
  store i64 %i.bw, ptr %i.az, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.az, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.t, %bb.u
  %i.by = phi ptr [ %.pre.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bl, %bb.t ], [ %i.az, %bb.u ], [ %i.bn, %bb.p ]
  store i64 0, ptr %i.bk, align 8
  store i8 0, ptr %i.by, align 1
  %i.bz = load ptr, ptr %4, align 8               ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.az
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cb = load i64, ptr %i.az, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  %i.cd = load ptr, ptr %5, align 8               ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.ae
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = load i64, ptr %i.ae, align 8
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %3, label %bb.v, label %bb.aw

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.ch = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 46, i64 noundef -1) #24 ; 2 uses
  %.not24 = icmp eq i64 %i.ch, -1
  br i1 %.not24, label %bb.aw, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ci, ptr %6, align 8
  %i.cj = load ptr, ptr %0, align 8               ; 2 uses
  %i.ck = load i64, ptr %i.m, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.ck, ptr %i.a, align 8
  %i.cl = icmp ugt i64 %i.ck, 15
  br i1 %i.cl, label %.noexc.i42, label %._crit_edge.i.i41

.noexc.i42:                                       ; preds = %bb.w
  %i.cm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc43 unwind label %bb.am  ; 2 uses

.noexc43:                                         ; preds = %.noexc.i42
  store ptr %i.cm, ptr %6, align 8
  %i.cn = load i64, ptr %i.a, align 8
  store i64 %i.cn, ptr %i.ci, align 8
  br label %._crit_edge.i.i41

._crit_edge.i.i41:                                ; preds = %.noexc43, %bb.w
  %i.co = phi ptr [ %i.cm, %.noexc43 ], [ %i.ci, %bb.w ] ; 2 uses
  switch i64 %i.ck, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i41
  %i.cp = load i8, ptr %i.cj, align 1
  store i8 %i.cp, ptr %i.co, align 1
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cj, i64 %i.ck, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i41
  %i.cq = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 %i.cq, ptr %i.cr, align 8
  %i.cs = load ptr, ptr %6, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cq
  store i8 0, ptr %i.ct, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.cu = add nuw i64 %i.ch, 1                    ; 6 uses
  %cond = icmp eq i64 %i.cu, -1
  br i1 %cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i64 0, ptr %i.cr, align 8
  %i.cv = load ptr, ptr %6, align 8
  store i8 0, ptr %i.cv, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit46

bb.ab:                                            ; preds = %bb.z
  %i.cw = load i64, ptr %i.cr, align 8
  %spec.select.i.i44 = call noundef i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cw)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef %spec.select.i.i44)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit46 unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit46: ; preds = %bb.aa, %bb.ab
  %i.cx = load ptr, ptr %6, align 8               ; 2 uses
  %i.cy = load i64, ptr %i.cr, align 8            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cy
  %.not6.i = icmp samesign eq i64 %i.cy, 0
  br i1 %.not6.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit46, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.de, %.lr.ph.i ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit46 ] ; 3 uses
  %i.da = load i8, ptr %.sroa.0.08.i, align 1
  %i.db = zext i8 %i.da to i32
  %i.dc = call i32 @tolower(i32 noundef %i.db) #28
  %i.dd = trunc i32 %i.dc to i8
  store i8 %i.dd, ptr %.sroa.0.08.i, align 1
  %i.de = getelementptr i8, ptr %.sroa.0.08.i, i64 1 ; 2 uses
  %.not.i47 = icmp eq ptr %i.de, %i.cz
  br i1 %.not.i47, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZNK6Assimp12PbrtExporter20CleanTextureFilenameERK8aiStringbE3$_0ET0_T_SH_SG_T1_.exit", label %.lr.ph.i, !llvm.loop !47

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZNK6Assimp12PbrtExporter20CleanTextureFilenameERK8aiStringbE3$_0ET0_T_SH_SG_T1_.exit": ; preds = %.lr.ph.i
  %.pr = load i64, ptr %i.cr, align 8
  %i.df = icmp eq i64 %.pr, 3
  br i1 %i.df, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZNK6Assimp12PbrtExporter20CleanTextureFilenameERK8aiStringbE3$_0ET0_T_SH_SG_T1_.exit"
  %i.dg = load ptr, ptr %6, align 8               ; 8 uses
  %i.dh = load i16, ptr %i.dg, align 1
  %i.di = xor i16 %i.dh, 26484
  %i.dj = getelementptr i8, ptr %i.dg, i64 2
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i16
  %i.dm = xor i16 %i.dl, 97
  %i.dn = or i16 %i.di, %i.dm
  %i.do = icmp ne i16 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %.not81 = icmp eq i32 %i.dp, 0
  br i1 %.not81, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread76, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dq = load i16, ptr %i.dg, align 1
  %i.dr = xor i16 %i.dq, 30821
  %i.ds = getelementptr i8, ptr %i.dg, i64 2
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = zext i8 %i.dt to i16
  %i.dv = xor i16 %i.du, 114
  %i.dw = or i16 %i.dr, %i.dv
  %i.dx = icmp ne i16 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32
  %.not82 = icmp eq i32 %i.dy, 0
  br i1 %.not82, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread76, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49
  %i.dz = load i16, ptr %i.dg, align 1
  %i.ea = xor i16 %i.dz, 28272
  %i.eb = getelementptr i8, ptr %i.dg, i64 2
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = zext i8 %i.ec to i16
  %i.ee = xor i16 %i.ed, 103
  %i.ef = or i16 %i.ea, %i.ee
  %i.eg = icmp ne i16 %i.ef, 0
  %i.eh = zext i1 %i.eg to i32
  %.not83 = icmp eq i32 %i.eh, 0
  br i1 %.not83, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread76, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51
  %i.ei = load i16, ptr %i.dg, align 1
  %i.ej = xor i16 %i.ei, 26224
  %i.ek = getelementptr i8, ptr %i.dg, i64 2
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = zext i8 %i.el to i16
  %i.en = xor i16 %i.em, 109
  %i.eo = or i16 %i.ej, %i.en
  %i.ep = icmp ne i16 %i.eo, 0
  %i.eq = zext i1 %i.ep to i32
  %.not84 = icmp eq i32 %i.eq, 0
  br i1 %.not84, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread76, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit46, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZNK6Assimp12PbrtExporter20CleanTextureFilenameERK8aiStringbE3$_0ET0_T_SH_SG_T1_.exit", %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53
  %i.er = invoke noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.109)
          to label %bb.ac unwind label %bb.an

bb.ac:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread
  br i1 %i.er, label %bb.ad, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread76

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.ae unwind label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  %i.es = load i64, ptr %i.m, align 8             ; 2 uses
  %9 = icmp ugt i64 %i.cu, %i.es
  br i1 %9, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.167, i64 noundef %i.cu, i64 noundef %i.es) #25
          to label %.noexc54 unwind label %bb.ap

.noexc54:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  store i64 %i.cu, ptr %i.m, align 8
  %i.et = load ptr, ptr %0, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.cu
  store i8 0, ptr %i.eu, align 1
  %i.ev = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.107)
          to label %bb.ah unwind label %bb.ap     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 8)
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  %i.ew = load ptr, ptr %8, align 8
  %i.ex = getelementptr i8, ptr %i.ew, i64 -24
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds i8, ptr %8, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load i32, ptr %i.fa, align 8
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = load ptr, ptr %7, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.fd, i64 noundef %i.ff)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ar

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.aj
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef nonnull @.str.110, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ar ; 0 uses

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.m
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = load ptr, ptr %5, align 8               ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.ae
  br i1 %i.fl, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.al
  %i.fm = load i64, ptr %i.ae, align 8
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #26
  br label %.body

.body:                                            ; preds = %bb.al, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn = phi { ptr, i32 } [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.fi, %bb.ak ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ao, %bb.k ], [ %i.fj, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.av

bb.am:                                            ; preds = %.noexc.i42
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

bb.an:                                            ; preds = %bb.ab, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ao:                                            ; preds = %bb.ad
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.ap:                                            ; preds = %bb.af, %bb.ag
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aq:                                            ; preds = %bb.ah
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.aj
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %8) #24
  br label %bb.as

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.ai
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.fu = load ptr, ptr %7, align 8               ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.fx = load i64, ptr %i.fv, align 8
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread76

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn25 = phi { ptr, i32 } [ %i.ft, %bb.ar ], [ %i.fs, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %bb.as ], [ %i.fr, %bb.ap ] ; 2 uses
  %i.fz = load ptr, ptr %7, align 8               ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.at
  %i.gc = load i64, ptr %i.ga, align 8
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.ao
  %.pn25.pn.pn = phi { ptr, i32 } [ %i.fq, %bb.ao ], [ %.pn25.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %.pn25.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.au

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.ac, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ge = load ptr, ptr %6, align 8               ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.ci
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread76
  %i.gg = load i64, ptr %i.ci, align 8
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.aw

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.an
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.fp, %bb.an ] ; 2 uses
  %i.gi = load ptr, ptr %6, align 8               ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.ci
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.au
  %i.gk = load i64, ptr %i.ci, align 8
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.am
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fo, %bb.am ], [ %.pn25.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %.pn25.pn.pn.pn, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %.body, %bb.h
  %.pn25.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %.pn, %.body ], [ %i.t, %bb.h ]
  %i.gm = load ptr, ptr %0, align 8               ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.e
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.av
  %i.go = load i64, ptr %i.e, align 8
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.v
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 3 uses
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp12PbrtExporter13WriteMetaDataEv:bb.a
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef signext i8 %i.bf(ptr noundef nonnull align 8 dereferenceable(570) %i.ay, i8 noundef signext 10), !inline_history !53
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi i8 [ %i.bc, %bb.h ], [ %i.bg, %bb.i ]
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i8 noundef signext %.0.i.i.i)
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) ; 0 uses
  br label %bb.ar

bb.j:                                             ; preds = %bb.b
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.bk = load ptr, ptr %i.m, align 8
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.bo) ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 240
  %i.bv = load ptr, ptr %i.bu, align 8            ; 6 uses
  %.not.i.i.i65 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i65, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i66

bb.k:                                             ; preds = %bb.j
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i66: ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bx = load i8, ptr %i.bw, align 8
  %.not.i1.i.i67 = icmp eq i8 %i.bx, 0
  br i1 %.not.i1.i.i67, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i66
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 67
  %i.bz = load i8, ptr %i.by, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit69

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i66
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bv)
  %i.ca = load ptr, ptr %i.bv, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call noundef signext i8 %i.cc(ptr noundef nonnull align 8 dereferenceable(570) %i.bv, i8 noundef signext 10), !inline_history !53
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit69

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit69: ; preds = %bb.l, %bb.m
  %.0.i.i.i68 = phi i8 [ %i.bz, %bb.l ], [ %i.cd, %bb.m ]
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i8 noundef signext %.0.i.i.i68)
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce) ; 0 uses
  br label %bb.ar

bb.n:                                             ; preds = %bb.b
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.ch = load ptr, ptr %i.m, align 8
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load float, ptr %i.ck, align 4
  %i.cm = fpext float %i.cl to double
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, double noundef %i.cm) ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr i8, ptr %i.co, i64 -24
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds i8, ptr %i.cn, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 240
  %i.ct = load ptr, ptr %i.cs, align 8            ; 6 uses
  %.not.i.i.i70 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i70, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71

bb.o:                                             ; preds = %bb.n
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71: ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.cv = load i8, ptr %i.cu, align 8
  %.not.i1.i.i72 = icmp eq i8 %i.cv, 0
  br i1 %.not.i1.i.i72, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 67
  %i.cx = load i8, ptr %i.cw, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit74

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i71
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ct)
  %i.cy = load ptr, ptr %i.ct, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = call noundef signext i8 %i.da(ptr noundef nonnull align 8 dereferenceable(570) %i.ct, i8 noundef signext 10), !inline_history !53
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit74

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit74: ; preds = %bb.p, %bb.q
  %.0.i.i.i73 = phi i8 [ %i.cx, %bb.p ], [ %i.db, %bb.q ]
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i8 noundef signext %.0.i.i.i73)
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc) ; 0 uses
  br label %bb.ar

bb.r:                                             ; preds = %bb.b
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.df = load ptr, ptr %i.m, align 8
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %indvars.iv
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = load double, ptr %i.di, align 8
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, double noundef %i.dj) ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr i8, ptr %i.dl, i64 -24
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 240
  %i.dq = load ptr, ptr %i.dp, align 8            ; 6 uses
  %.not.i.i.i75 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i75, label %bb.s, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76

bb.s:                                             ; preds = %bb.r
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76: ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load i8, ptr %i.dr, align 8
  %.not.i1.i.i77 = icmp eq i8 %i.ds, 0
  br i1 %.not.i1.i.i77, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 67
  %i.du = load i8, ptr %i.dt, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit79

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dq)
  %i.dv = load ptr, ptr %i.dq, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef signext i8 %i.dx(ptr noundef nonnull align 8 dereferenceable(570) %i.dq, i8 noundef signext 10), !inline_history !53
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit79

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit79: ; preds = %bb.t, %bb.u
  %.0.i.i.i78 = phi i8 [ %i.du, %bb.t ], [ %i.dy, %bb.u ]
  %i.dz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, i8 noundef signext %.0.i.i.i78)
  %i.ea = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dz) ; 0 uses
  br label %bb.ar

bb.v:                                             ; preds = %bb.b
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 3 uses
  store ptr %i.n, ptr %1, align 8
  %i.ee = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ed) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %i.ee, ptr %i.c, align 8
  %i.ef = icmp ugt i64 %i.ee, 15
  br i1 %i.ef, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.v
  %i.eg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.eg, ptr %1, align 8
  %i.eh = load i64, ptr %i.c, align 8
  store i64 %i.eh, ptr %i.n, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.v
  %i.ei = phi ptr [ %i.eg, %.noexc.i ], [ %i.n, %bb.v ] ; 2 uses
  switch i64 %i.ee, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.ej = load i8, ptr %i.ed, align 1
  store i8 %i.ej, ptr %i.ei, align 1
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr nonnull align 1 %i.ed, i64 %i.ee, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i
  %i.ek = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.ek, ptr %i.o, align 8
  %i.el = load ptr, ptr %1, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 0, ptr %i.em, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.en = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 10, i64 noundef 0) #24 ; 2 uses
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %bb.y
  %.not107 = icmp eq i64 %i.en, -1
  br i1 %.not107, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %.0108 = phi i64 [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.en, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader ] ; 2 uses
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.eq = load i64, ptr %i.o, align 8, !noalias !54
  store ptr %i.p, ptr %2, align 8, !alias.scope !54
  %i.er = load ptr, ptr %1, align 8, !noalias !54 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.0108, i64 %i.eq) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !54
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !noalias !54
  %i.es = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.es, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.et = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc37 unwind label %bb.al  ; 2 uses

.noexc37:                                         ; preds = %.noexc10.i.i
  store ptr %i.et, ptr %2, align 8, !alias.scope !54
  %i.eu = load i64, ptr %i.b, align 8, !noalias !54
  store i64 %i.eu, ptr %i.p, align 8, !alias.scope !54
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc37, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.ev = phi ptr [ %i.et, %.noexc37 ], [ %i.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i
  %i.ew = load i8, ptr %i.er, align 1
  store i8 %i.ew, ptr %i.ev, align 1
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ev, ptr align 1 %i.er, i64 %spec.select.i.i.i, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i
  %i.ex = load i64, ptr %i.b, align 8, !noalias !54 ; 2 uses
  store i64 %i.ex, ptr %i.q, align 8, !alias.scope !54
  %i.ey = load ptr, ptr %2, align 8, !alias.scope !54
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  store i8 0, ptr %i.ez, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !54
  %i.fa = load ptr, ptr %2, align 8
  %i.fb = load i64, ptr %i.q, align 8
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.fa, i64 noundef %i.fb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.am

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.ab
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.fe = load ptr, ptr %2, align 8               ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.p
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  %i.fg = load i64, ptr %i.p, align 8
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.fi = add nuw i64 %.0108, 1                   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.fj = load i64, ptr %i.o, align 8, !noalias !57 ; 3 uses
  %4 = icmp ugt i64 %i.fi, %i.fj
  br i1 %4, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.165, i64 noundef %i.fi, i64 noundef %i.fj) #25
          to label %.noexc44 unwind label %.loopexit.split-lp82

.noexc44:                                         ; preds = %bb.ac
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.r, ptr %3, align 8, !alias.scope !57
  %i.fk = load ptr, ptr %1, align 8, !noalias !57
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fi ; 2 uses
  %i.fm = sub nuw i64 %i.fj, %i.fi                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !57
  store i64 %i.fm, ptr %i.a, align 8, !noalias !57
  %i.fn = icmp ugt i64 %i.fm, 15
  br i1 %i.fn, label %.noexc10.i.i43, label %._crit_edge.i.i.i42

.noexc10.i.i43:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.fo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc45 unwind label %.loopexit81 ; 2 uses

.noexc45:                                         ; preds = %.noexc10.i.i43
  store ptr %i.fo, ptr %3, align 8, !alias.scope !57
  %i.fp = load i64, ptr %i.a, align 8, !noalias !57
  store i64 %i.fp, ptr %i.r, align 8, !alias.scope !57
  br label %._crit_edge.i.i.i42

._crit_edge.i.i.i42:                              ; preds = %.noexc45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.fq = phi ptr [ %i.fo, %.noexc45 ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.fm, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i42
  %i.fr = load i8, ptr %i.fl, align 1
  store i8 %i.fr, ptr %i.fq, align 1
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i42
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr nonnull align 1 %i.fl, i64 %i.fm, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i42
  %i.fs = load i64, ptr %i.a, align 8, !noalias !57 ; 2 uses
  store i64 %i.fs, ptr %i.s, align 8, !alias.scope !57
  %i.ft = load ptr, ptr %3, align 8, !alias.scope !57
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fs
  store i8 0, ptr %i.fu, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !57
  %i.fv = load ptr, ptr %1, align 8               ; 6 uses
  %i.fw = icmp eq ptr %i.fv, %i.n
  %i.fx = load ptr, ptr %3, align 8               ; 5 uses
  %i.fy = icmp eq ptr %i.fx, %i.r                 ; 2 uses
  br i1 %i.fw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.af
  br i1 %i.fy, label %bb.ag, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.af
  br i1 %i.fy, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fz = load i64, ptr %i.s, align 8             ; 3 uses
  %i.ga = icmp ult i64 %i.fz, 16
  call void @llvm.assume(i1 %i.ga)
  switch i64 %i.fz, label %bb.ai [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.gb = load i8, ptr %i.fx, align 1
  store i8 %i.gb, ptr %i.fv, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fv, ptr align 1 %i.fx, i64 %i.fz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.gc = load i64, ptr %i.s, align 8             ; 2 uses
  store i64 %i.gc, ptr %i.o, align 8
  %i.gd = load ptr, ptr %1, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gc
  store i8 0, ptr %i.ge, align 1
  %.pre.i = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.fx, ptr %1, align 8
  %i.gf = load <2 x i64>, ptr %i.s, align 8
  store <2 x i64> %i.gf, ptr %i.o, align 8
  br label %bb.ak

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.gg = load i64, ptr %i.n, align 8
  store ptr %i.fx, ptr %1, align 8
  %i.gh = load <2 x i64>, ptr %i.s, align 8
  store <2 x i64> %i.gh, ptr %i.o, align 8
  %.not.i = icmp eq ptr %i.fv, null
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fv, ptr %3, align 8
  store i64 %i.gg, ptr %i.r, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.r, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.aj, %bb.ak
  %i.gi = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.fv, %bb.aj ], [ %i.r, %bb.ak ]
  store i64 0, ptr %i.s, align 8
  store i8 0, ptr %i.gi, align 1
  %i.gj = load ptr, ptr %3, align 8               ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.r
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.gl = load i64, ptr %i.r, align 8
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.gn = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 10, i64 noundef 0) #24 ; 2 uses
  %.not = icmp eq i64 %i.gn, -1
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, label %.lr.ph, !llvm.loop !60

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.al:                                            ; preds = %.noexc10.i.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.am:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.ab
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gq = load ptr, ptr %2, align 8               ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.p
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.am
  %i.gs = load i64, ptr %i.p, align 8
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.al
  %.pn = phi { ptr, i32 } [ %i.go, %bb.al ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.gp, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.ao

.loopexit81:                                      ; preds = %.noexc10.i.i43
  %lpad.loopexit83 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp82:                             ; preds = %bb.ac
  %lpad.loopexit.split-lp84 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp82, %.loopexit81
  %lpad.phi85 = phi { ptr, i32 } [ %lpad.loopexit83, %.loopexit81 ], [ %lpad.loopexit.split-lp84, %.loopexit.split-lp82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ao

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
  %i.gv = load ptr, ptr %1, align 8
  %i.gw = load i64, ptr %i.o, align 8
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.gv, i64 noundef %i.gw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56 unwind label %.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit56
  %i.gz = load ptr, ptr %1, align 8               ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.n
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

end_hunk_1
