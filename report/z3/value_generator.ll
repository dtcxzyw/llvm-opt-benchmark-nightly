inline.NumInlined: 659
inline.NumDeleted: 349
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN24datatype_value_generator9get_valueEP4sortj:bb.a
  %i.nn = icmp eq ptr %i.na, null
  br i1 %i.nn, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.no = getelementptr inbounds i8, ptr %i.na, i64 -4
  %i.np = load i32, ptr %i.no, align 4, !tbaa !15 ; 2 uses
  %i.nq = getelementptr inbounds i8, ptr %i.na, i64 -8
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !15
  %i.ns = icmp eq i32 %i.np, %i.nr
  br i1 %i.ns, label %bb.cb, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.nt = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc176 unwind label %.loopexit ; 3 uses

.noexc176:                                        ; preds = %bb.ca
  store i32 2, ptr %i.nt, align 4, !tbaa !15
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  store i32 0, ptr %i.nu, align 4, !tbaa !15
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 2 uses
  store ptr %i.nv, ptr %i.ct, align 8, !tbaa !118
  br label %.noexc118

bb.cb:                                            ; preds = %bb.bz
  %i.nw = getelementptr inbounds i8, ptr %i.na, i64 -8 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !15 ; 3 uses
  %i.ny = mul i32 %i.nx, 3
  %i.nz = add i32 %i.ny, 1
  %i.oa = lshr i32 %i.nz, 1                       ; 3 uses
  %i.ob = shl i32 %i.oa, 2
  %i.oc = add i32 %i.ob, 8                        ; 2 uses
  %.not.i166 = icmp ugt i32 %i.oa, %i.nx
  br i1 %.not.i166, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.od = shl i32 %i.nx, 2
  %i.oe = add i32 %i.od, 8
  %.not27.i175 = icmp ugt i32 %i.oc, %i.oe
  br i1 %.not27.i175, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.of = call ptr @__cxa_allocate_exception(i64 40) #19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.of, align 8, !tbaa !22
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 24 ; 3 uses
  store ptr %i.oh, ptr %i.og, align 8, !tbaa !146
  %i.oi = load ptr, ptr %6, align 8, !tbaa !148   ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.ok = icmp eq ptr %i.oi, %i.oj
  br i1 %i.ok, label %bb.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i168

bb.cf:                                            ; preds = %bb.ce
  %i.ol = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !151 ; 3 uses
  %i.on = icmp ult i64 %i.om, 16
  call void @llvm.assume(i1 %i.on)
  %i.oo = add nuw nsw i64 %i.om, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.oh, ptr noundef nonnull align 8 dereferenceable(1) %i.oj, i64 %i.oo, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i168: ; preds = %bb.ce
  store ptr %i.oi, ptr %i.og, align 8, !tbaa !148
  %i.op = load i64, ptr %i.oj, align 8, !tbaa !152
  store i64 %i.op, ptr %i.oh, align 8, !tbaa !152
  %.phi.trans.insert.i169 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i170 = load i64, ptr %.phi.trans.insert.i169, align 8, !tbaa !151
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i171

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i171: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i168, %bb.cf
  %i.oq = phi i64 [ %i.om, %bb.cf ], [ %.pre.i170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i168 ]
  %i.or = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store i64 %i.oq, ptr %i.os, align 8, !tbaa !151
  store ptr %i.oj, ptr %6, align 8, !tbaa !148
  store i64 0, ptr %i.or, align 8, !tbaa !151
  store i8 0, ptr %i.oj, align 8, !tbaa !152
  invoke void @__cxa_throw(ptr nonnull %i.of, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #22
          to label %bb.cj unwind label %bb.cg

bb.cg:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i171
  %i.ot = landingpad { ptr, i32 }
          cleanup
  %i.ou = load ptr, ptr %6, align 8, !tbaa !148   ; 2 uses
  %i.ov = icmp eq ptr %i.ou, %i.oj
  br i1 %i.ov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i172: ; preds = %bb.cg
  %i.ow = load i64, ptr %i.oj, align 8, !tbaa !152
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.ox) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i173: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body

bb.ch:                                            ; preds = %bb.cd
  %i.oy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @__cxa_free_exception(ptr %i.of) #19
  br label %.body

bb.ci:                                            ; preds = %bb.cc
  %i.oz = zext i32 %i.oc to i64
  %i.pa = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.nw, i64 noundef %i.oz)
          to label %.noexc179 unwind label %.loopexit ; 2 uses

.noexc179:                                        ; preds = %bb.ci
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8 ; 2 uses
  store ptr %i.pb, ptr %i.ct, align 8, !tbaa !118
  store i32 %i.oa, ptr %i.pa, align 4, !tbaa !15
  br label %.noexc118

bb.cj:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i171
  unreachable

.noexc118:                                        ; preds = %.noexc179, %.noexc176
  %.pre.i.i106 = phi ptr [ %i.pb, %.noexc179 ], [ %i.nv, %.noexc176 ] ; 2 uses
  %.phi.trans.insert.i.i107 = getelementptr inbounds i8, ptr %.pre.i.i106, i64 -4
  %.pre2.i.i108 = load i32, ptr %.phi.trans.insert.i.i107, align 4, !tbaa !15
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i:          ; preds = %.noexc118, %bb.bz
  %i.pc = phi ptr [ %.pre.i.i106, %.noexc118 ], [ %i.na, %bb.bz ] ; 3 uses
  %i.pd = phi i32 [ %.pre2.i.i108, %.noexc118 ], [ %i.np, %bb.bz ] ; 2 uses
  %i.pe = getelementptr inbounds i8, ptr %i.pc, i64 -4
  %i.pf = zext i32 %i.pd to i64
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %i.pf
  %i.ph = trunc nuw i64 %indvars.iv.i101 to i32
  store i32 %i.ph, ptr %i.pg, align 4, !tbaa !15
  %i.pi = add i32 %i.pd, 1
  store i32 %i.pi, ptr %i.pe, align 4, !tbaa !15
  br label %bb.ck

bb.ck:                                            ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i, %bb.bx
  %i.pj = phi ptr [ %i.na, %bb.bx ], [ %i.pc, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i ] ; 2 uses
  %.1.i = phi i32 [ %i.nm, %bb.bx ], [ %.02529.i, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i ] ; 2 uses
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i101, 1 ; 2 uses
  %exitcond.not.i105 = icmp eq i64 %indvars.iv.next.i104, %wide.trip.count.i100
  br i1 %exitcond.not.i105, label %.preheader.i, label %bb.bw, !llvm.loop !171

_ZNK6vectorIjLb0EjE5emptyEv.exit.i:               ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i
  %i.pk = phi i32 [ %i.mx, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i ], [ %i.qb, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 2 uses
  %.2.lcssa28.i = phi i32 [ %.025.lcssa.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i ], [ %i.pz, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ]
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %_ZN24datatype_value_generator12index2vectorEjP9func_declR7svectorIjjE.exit, label %_ZN6vectorIjLb0EjE4backEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %.lr.ph36.i
  %indvars.iv42.i = phi i64 [ 1, %.lr.ph36.i ], [ %indvars.iv.next43.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ]
  %indvars.iv40.i = phi i64 [ 0, %.lr.ph36.i ], [ %indvars.iv.next41.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 2 uses
  %.23135.i = phi i32 [ %.025.lcssa.i, %.lr.ph36.i ], [ %i.pz, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv40.i
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !15
  %i.po = zext i32 %i.pn to i64
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.po
  %i.pq = shl i32 %.23135.i, 3
  %i.pr = or disjoint i32 %i.pq, 1
  %i.ps = uitofp i32 %i.pr to double
  %sqrt.i.i = call double @llvm.sqrt.f64(double %i.ps)
  %i.pt = fptoui double %sqrt.i.i to i32
  %i.pu = add i32 %i.pt, -1
  %i.pv = lshr i32 %i.pu, 1                       ; 3 uses
  %i.pw = add nuw i32 %i.pv, 1
  %i.px = mul i32 %i.pw, %i.pv
  %i.py = lshr i32 %i.px, 1
  %i.pz = sub i32 %.23135.i, %i.py                ; 3 uses
  %i.qa = sub i32 %i.pv, %i.pz
  store i32 %i.qa, ptr %i.pp, align 4, !tbaa !15
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %i.qb = load i32, ptr %i.mw, align 4, !tbaa !15 ; 2 uses
  %i.qc = zext i32 %i.qb to i64
  %i.qd = icmp samesign ult i64 %indvars.iv.next43.i, %i.qc
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  br i1 %i.qd, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i

_ZN6vectorIjLb0EjE4backEv.exit.i:                 ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i
  %i.qe = add i32 %i.pk, -1
  %i.qf = zext i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.qf
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !15
  %i.qi = load ptr, ptr %i.cs, align 8, !tbaa !118
  %i.qj = zext i32 %i.qh to i64
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.qj
  store i32 %.2.lcssa28.i, ptr %i.qk, align 4, !tbaa !15
  br label %_ZN24datatype_value_generator12index2vectorEjP9func_declR7svectorIjjE.exit

_ZN24datatype_value_generator12index2vectorEjP9func_declR7svectorIjjE.exit: ; preds = %.preheader.i, %_ZNK6vectorIjLb0EjE5emptyEv.exit.i, %_ZN6vectorIjLb0EjE4backEv.exit.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %.pre374 = load ptr, ptr %i.ck, align 8, !tbaa !70 ; 4 uses
  %i.qm = icmp eq ptr %.pre374, null
  %i.qn = getelementptr inbounds i8, ptr %.pre374, i64 -4
  br i1 %i.qm, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit121.thread

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit121.thread: ; preds = %_ZN24datatype_value_generator12index2vectorEjP9func_declR7svectorIjjE.exit, %bb.cv
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cv ], [ 0, %_ZN24datatype_value_generator12index2vectorEjP9func_declR7svectorIjjE.exit ] ; 5 uses
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !15 ; 2 uses
  %i.qp = zext i32 %i.qo to i64
  %i.qq = icmp samesign ult i64 %indvars.iv, %i.qp
  br i1 %i.qq, label %bb.cl, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

.loopexit230:                                     ; preds = %._crit_edge.i.i, %.noexc199
  %lpad.loopexit232 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp231:                            ; preds = %._crit_edge.i, %.noexc164, %bb.aq, %bb.au
  %lpad.loopexit.split-lp233 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cl:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit121.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.qr = load ptr, ptr %i.cu, align 8, !tbaa !172, !nonnull !20, !align !21 ; 4 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !111 ; 4 uses
  %i.qu = load ptr, ptr %i.cs, align 8, !tbaa !118
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  invoke void @_ZN15value_generator4initEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qr)
          to label %.noexc124 unwind label %bb.cw, !inline_history !176

.noexc124:                                        ; preds = %bb.cl
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !99, !noalias !173 ; 2 uses
  %i.qz = icmp eq ptr %i.qy, null
  br i1 %i.qz, label %_ZNK4decl13get_family_idEv.exit.i, label %bb.cm

bb.cm:                                            ; preds = %.noexc124
  %i.ra = load i32, ptr %i.qy, align 8, !tbaa !103, !noalias !173
  br label %_ZNK4decl13get_family_idEv.exit.i

_ZNK4decl13get_family_idEv.exit.i:                ; preds = %bb.cm, %.noexc124
  %i.rb = phi i32 [ %i.ra, %bb.cm ], [ -1, %.noexc124 ] ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !11, !noalias !173 ; 3 uses
  %i.re = icmp eq ptr %i.rd, null
  br i1 %i.re, label %_ZNK17scoped_ptr_vectorI20value_generator_coreE3getEjPS0_.exit.thread.i, label %_ZNK6vectorIP20value_generator_coreLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIP20value_generator_coreLb0EjE4sizeEv.exit.i.i: ; preds = %_ZNK4decl13get_family_idEv.exit.i
  %i.rf = getelementptr inbounds i8, ptr %i.rd, i64 -4
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !15, !noalias !173
  %i.rh = icmp ult i32 %i.rb, %i.rg
  br i1 %i.rh, label %_ZNK17scoped_ptr_vectorI20value_generator_coreE3getEjPS0_.exit.i, label %_ZNK17scoped_ptr_vectorI20value_generator_coreE3getEjPS0_.exit.thread.i

_ZNK17scoped_ptr_vectorI20value_generator_coreE3getEjPS0_.exit.i: ; preds = %_ZNK6vectorIP20value_generator_coreLb0EjE4sizeEv.exit.i.i
  %i.ri = zext i32 %i.rb to i64
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.ri
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !25, !noalias !173 ; 3 uses
  %.not.i123 = icmp eq ptr %i.rk, null
  br i1 %.not.i123, label %_ZNK17scoped_ptr_vectorI20value_generator_coreE3getEjPS0_.exit.thread.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNK17scoped_ptr_vectorI20value_generator_coreE3getEjPS0_.exit.i
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !22, !noalias !173
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %i.rn = load ptr, ptr %i.rm, align 8, !noalias !173
  invoke void %i.rn(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.rk, ptr noundef nonnull %i.qt, i32 noundef %i.qw)
          to label %bb.co unwind label %bb.cw, !inline_history !176

_ZNK17scoped_ptr_vectorI20value_generator_coreE3getEjPS0_.exit.thread.i: ; preds = %_ZNK17scoped_ptr_vectorI20value_generator_coreE3getEjPS0_.exit.i, %_ZNK6vectorIP20value_generator_coreLb0EjE4sizeEv.exit.i.i, %_ZNK4decl13get_family_idEv.exit.i
  %i.ro = load ptr, ptr %i.qr, align 8, !tbaa !16, !noalias !173, !nonnull !20, !align !21 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %i.rq = invoke noundef ptr @_ZN11ast_manager18mk_fresh_func_declERK6symbolS2_jPKP4sortS4_b(ptr noundef nonnull align 8 dereferenceable(952) %i.ro, ptr noundef nonnull align 8 dereferenceable(8) %i.rp, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6symbol4nullE, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.qt, i1 noundef zeroext true)
          to label %.noexc126 unwind label %bb.cw, !inline_history !176

.noexc126:                                        ; preds = %_ZNK17scoped_ptr_vectorI20value_generator_coreE3getEjPS0_.exit.thread.i
  %i.rr = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ro, ptr noundef %i.rq, i32 noundef 0, ptr noundef null)
          to label %.noexc127 unwind label %bb.cw, !inline_history !176 ; 3 uses

.noexc127:                                        ; preds = %.noexc126
  %i.rs = load ptr, ptr %i.qr, align 8, !tbaa !16, !noalias !173, !nonnull !20, !align !21
  store ptr %i.rr, ptr %12, align 8, !tbaa !107, !alias.scope !173
  store ptr %i.rs, ptr %i.cv, align 8, !tbaa !8, !alias.scope !173
  %.not.i.i.i122 = icmp eq ptr %i.rr, null
  br i1 %.not.i.i.i122, label %bb.co, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc127
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 8 ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !110, !noalias !173
  %i.rv = add i32 %i.ru, 1
  store i32 %i.rv, ptr %i.rt, align 4, !tbaa !110, !noalias !173
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.noexc127, %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %.pre374, i64 %indvars.iv ; 3 uses
  %i.rx = load ptr, ptr %11, align 8, !tbaa !143, !nonnull !20, !align !21
  %i.ry = load ptr, ptr %i.rw, align 8, !tbaa !141 ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i128, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !110
  %i.sb = add i32 %i.sa, -1                       ; 2 uses
  store i32 %i.sb, ptr %i.rz, align 4, !tbaa !110
  %i.sc = icmp eq i32 %i.sb, 0
  br i1 %i.sc, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.rx, ptr noundef nonnull %i.ry)
          to label %bb.cr unwind label %bb.cx

bb.cr:                                            ; preds = %bb.cp, %bb.co, %bb.cq
  %i.sd = load ptr, ptr %12, align 8, !tbaa !107
  store ptr null, ptr %12, align 8, !tbaa !107
  store ptr %i.sd, ptr %i.rw, align 8, !tbaa !141
  %i.se = load ptr, ptr %12, align 8, !tbaa !107  ; 3 uses
  %.not.i.i131 = icmp eq ptr %i.se, null
  br i1 %.not.i.i131, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.sf = load ptr, ptr %i.cv, align 8, !tbaa !177, !nonnull !20, !align !21
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 8 ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !110
  %i.si = add i32 %i.sh, -1                       ; 2 uses
  store i32 %i.si, ptr %i.sg, align 4, !tbaa !110
  %i.sj = icmp eq i32 %i.si, 0
  br i1 %i.sj, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.sf, ptr noundef nonnull %i.se)
          to label %bb.cv unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.sk = landingpad { ptr, i32 }
          catch ptr null
  %i.sl = extractvalue { ptr, i32 } %i.sk, 0
  call void @__clang_call_terminate(ptr %i.sl) #20
  unreachable

bb.cv:                                            ; preds = %bb.ct, %bb.cs, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.sm = load ptr, ptr %i.rw, align 8, !tbaa !141
  %.not306 = icmp eq ptr %i.sm, null
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not306, label %.critedge70, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit121.thread, !llvm.loop !178

bb.cw:                                            ; preds = %.noexc126, %_ZNK17scoped_ptr_vectorI20value_generator_coreE3getEjPS0_.exit.thread.i, %bb.cn, %bb.cl
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cq
  %i.so = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #19
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.pn = phi { ptr, i32 } [ %i.so, %bb.cx ], [ %i.sn, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %.body

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit121.thread, %_ZN24datatype_value_generator12index2vectorEjP9func_declR7svectorIjjE.exit
  %.0.i.i.i = phi i32 [ 0, %_ZN24datatype_value_generator12index2vectorEjP9func_declR7svectorIjjE.exit ], [ %i.qo, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit121.thread ]
  %i.sp = load ptr, ptr %i.ch, align 8, !tbaa !125, !nonnull !20, !align !21
  %i.sq = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.sp, ptr noundef nonnull %i.dv, i32 noundef %.0.i.i.i, ptr noundef %.pre374)
          to label %_ZN11ast_manager6mk_appEP9func_declRK10ref_vectorI4exprS_E.exit unwind label %bb.dc ; 3 uses

_ZN11ast_manager6mk_appEP9func_declRK10ref_vectorI4exprS_E.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %.not.i.i.i.i133 = icmp eq ptr %i.sq, null
  br i1 %.not.i.i.i.i133, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i134, label %bb.cz

bb.cz:                                            ; preds = %_ZN11ast_manager6mk_appEP9func_declRK10ref_vectorI4exprS_E.exit
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8 ; 2 uses
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !110
  %i.st = add i32 %i.ss, 1
  store i32 %i.st, ptr %i.sr, align 4, !tbaa !110
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i134

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i134: ; preds = %bb.cz, %_ZN11ast_manager6mk_appEP9func_declRK10ref_vectorI4exprS_E.exit
  %i.su = load ptr, ptr %i.cl, align 8, !tbaa !70 ; 4 uses
  %i.sv = icmp eq ptr %i.su, null
  br i1 %i.sv, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i134
  %i.sw = getelementptr inbounds i8, ptr %i.su, i64 -4
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !15 ; 2 uses
  %i.sy = getelementptr inbounds i8, ptr %i.su, i64 -8
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !15
  %i.ta = icmp eq i32 %i.sx, %i.sz
  br i1 %i.ta, label %bb.db, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit139

bb.db:                                            ; preds = %bb.da, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i134
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %.noexc138 unwind label %bb.dc

.noexc138:                                        ; preds = %bb.db
  %.pre.i.i135 = load ptr, ptr %i.cl, align 8, !tbaa !70 ; 2 uses
  %.phi.trans.insert.i.i136 = getelementptr inbounds i8, ptr %.pre.i.i135, i64 -4
  %.pre2.i.i137 = load i32, ptr %.phi.trans.insert.i.i136, align 4, !tbaa !15
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit139

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit139: ; preds = %bb.da, %.noexc138
  %i.tb = phi i32 [ %.pre2.i.i137, %.noexc138 ], [ %i.sx, %bb.da ] ; 2 uses
  %i.tc = phi ptr [ %.pre.i.i135, %.noexc138 ], [ %i.su, %bb.da ] ; 2 uses
  %i.td = getelementptr inbounds i8, ptr %i.tc, i64 -4
  %i.te = zext i32 %i.tb to i64
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %i.te
  store ptr %i.sq, ptr %i.tf, align 8, !tbaa !141
  %i.tg = add i32 %i.tb, 1
  store i32 %i.tg, ptr %i.td, align 4, !tbaa !15
  br label %.critedge70

bb.dc:                                            ; preds = %bb.db, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge70:                                      ; preds = %bb.an, %bb.cv, %..thread_crit_edge.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit139, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit77
  %.4 = phi i8 [ %.1302, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit77 ], [ %.1302, %..thread_crit_edge.i ], [ 1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit139 ], [ %.1302, %bb.cv ], [ %.1302, %bb.an ] ; 2 uses
  %i.ti = add i32 %.049301, 1
  %i.tj = load ptr, ptr %i.de, align 8, !tbaa !135 ; 2 uses
  %i.tk = icmp eq ptr %i.tj, null
  br i1 %i.tk, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.backedge, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread, !llvm.loop !179

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i140:      ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread
  %.not.i.i141 = icmp ult i32 %3, %i.da
  %.pre367 = load ptr, ptr %i.ch, align 8, !tbaa !125 ; 2 uses
  br i1 %.not.i.i141, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3getEjPS0_.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3getEjPS0_.exit.thread

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3getEjPS0_.exit.thread.loopexit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.pre = load ptr, ptr %i.ch, align 8, !tbaa !125
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3getEjPS0_.exit.thread

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3getEjPS0_.exit.thread: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3getEjPS0_.exit.thread.loopexit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i140
  %i.tl = phi ptr [ %.pre, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3getEjPS0_.exit.thread.loopexit ], [ %.pre367, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i140 ]
  store ptr null, ptr %0, align 8, !tbaa !107
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.tl, ptr %i.tm, align 8, !tbaa !8
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3getEjPS0_.exit: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i140
  %i.tn = zext i32 %3 to i64
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.tn
  %.0.i.sroa.speculate.load..i = load ptr, ptr %i.to, align 8, !tbaa !141 ; 3 uses
  store ptr %.0.i.sroa.speculate.load..i, ptr %0, align 8, !tbaa !107
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pre367, ptr %i.tp, align 8, !tbaa !8
  %.not.i.i142 = icmp eq ptr %.0.i.sroa.speculate.load..i, null
  br i1 %.not.i.i142, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3getEjPS0_.exit
  %i.tq = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculate.load..i, i64 8 ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !110
  %i.ts = add i32 %i.tr, 1
  store i32 %i.ts, ptr %i.tq, align 4, !tbaa !110
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3getEjPS0_.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3getEjPS0_.exit.thread
  %i.tt = load ptr, ptr %i.ck, align 8, !tbaa !70 ; 5 uses
  %i.tu = icmp eq ptr %i.tt, null
  br i1 %i.tu, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i143

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i143:        ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %i.tv = getelementptr inbounds i8, ptr %i.tt, i64 -4
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !15 ; 2 uses
  %i.tx = zext i32 %i.tw to i64
  %i.ty = shl nuw nsw i64 %i.tx, 3
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.ty
  %.not.i144 = icmp eq i32 %i.tw, 0
  br i1 %.not.i144, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i145.preheader

.lr.ph.i.i145.preheader:                          ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i143
  %.pre368 = load ptr, ptr %11, align 8, !tbaa !143
  br label %.lr.ph.i.i145

.lr.ph.i.i145:                                    ; preds = %.lr.ph.i.i145.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i148
  %.06.i.i146 = phi ptr [ %i.uf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i148 ], [ %i.tt, %.lr.ph.i.i145.preheader ] ; 2 uses
  %i.ua = load ptr, ptr %.06.i.i146, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i.i.i147 = icmp eq ptr %i.ua, null
  br i1 %.not.i.i.i.i.i147, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i148, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph.i.i145
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8 ; 2 uses
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !110
  %i.ud = add i32 %i.uc, -1                       ; 2 uses
  store i32 %i.ud, ptr %i.ub, align 4, !tbaa !110
  %i.ue = icmp eq i32 %i.ud, 0
  br i1 %i.ue, label %bb.de, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i148

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %.pre368, ptr noundef nonnull %i.ua)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i148 unwind label %bb.dg

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i148: ; preds = %bb.de, %bb.dd, %.lr.ph.i.i145
  %i.uf = getelementptr inbounds nuw i8, ptr %.06.i.i146, i64 8 ; 2 uses
  %i.ug = icmp ult ptr %i.uf, %i.tz
  br i1 %i.ug, label %.lr.ph.i.i145, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, !llvm.loop !144

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i148, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i143
  %i.uh = getelementptr inbounds i8, ptr %i.tt, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.uh)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.df

bb.df:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.ui = landingpad { ptr, i32 }
          catch ptr null
  %i.uj = extractvalue { ptr, i32 } %i.ui, 0
  call void @__clang_call_terminate(ptr %i.uj) #20
  unreachable

bb.dg:                                            ; preds = %bb.de
  %i.uk = landingpad { ptr, i32 }
          catch ptr null
  %i.ul = extractvalue { ptr, i32 } %i.uk, 0
  call void @__clang_call_terminate(ptr %i.ul) #20
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  ret void

.body:                                            ; preds = %.loopexit230, %.loopexit.split-lp231, %.loopexit, %.loopexit.split-lp, %.loopexit238, %.loopexit.split-lp239, %bb.cy, %bb.dc, %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i187, %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.ad, %bb.s
  %.pn63.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oy, %bb.ch ], [ %i.dq, %bb.s ], [ %i.fz, %bb.ad ], [ %i.mc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i187 ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn, %bb.cy ], [ %i.th, %bb.dc ], [ %i.ot, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i173 ], [ %i.mh, %bb.br ], [ %lpad.loopexit.split-lp241, %.loopexit.split-lp239 ], [ %lpad.loopexit240, %.loopexit238 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit232, %.loopexit230 ], [ %lpad.loopexit.split-lp233, %.loopexit.split-lp231 ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  resume { ptr, i32 } %.pn63.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare void @_ZN6memory10deallocateEPv(ptr noundef) local_unnamed_addr #2

declare void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z7deallocI10ref_vectorI4expr11ast_managerEEvPT_(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15   ; 2 uses
end_hunk_0
