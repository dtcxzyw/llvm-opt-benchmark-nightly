Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/spacer_qe_project?download=true
inline.NumInlined: 2576
inline.NumDeleted: 661
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN9spacer_qe26array_project_selects_util9ackermannERK10ptr_vectorI3appE:bb.a
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !27
  %i.jx = add i32 %i.jw, -1                       ; 2 uses
  store i32 %i.jx, ptr %i.jv, align 8, !tbaa !27
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.bj, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.iz, ptr noundef nonnull %i.iy)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  call void @__clang_call_terminate(ptr %i.ka) #20
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.bp

bb.bl:                                            ; preds = %bb.ba, %.critedge
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bm:                                            ; preds = %.noexc160, %.noexc159, %bb.bb
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.be, %bb.bh, %bb.bg, %bb.bf
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #19
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn120 = phi { ptr, i32 } [ %i.kd, %bb.bn ], [ %i.kc, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %.body

bb.bp:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %i.ke = getelementptr inbounds nuw i8, ptr %.089318, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ke, %i.bb
  br i1 %.not, label %._crit_edge.loopexit, label %bb.j

bb.bq:                                            ; preds = %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit129
  %i.kf = load ptr, ptr %i.l, align 8, !tbaa !127
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !130 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kj = load i8, ptr %i.ki, align 8, !tbaa !132
  switch i8 %i.kj, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169.invoke [
    i8 1, label %bb.br
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169
  ], !prof !133

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169: ; preds = %bb.bq
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169.invoke: ; preds = %bb.bq, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169
  %.str.5.sink = phi ptr [ @.str.4, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169 ], [ @.str.5, %bb.bq ]
  %i.kk = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.kk, align 8, !tbaa !135
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store ptr %.str.5.sink, ptr %i.kl, align 8, !tbaa !138
  invoke void @__cxa_throw(ptr nonnull %i.kk, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #21
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169.cont unwind label %bb.bu

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169.invoke
  unreachable

bb.br:                                            ; preds = %bb.bq
  %i.km = icmp eq i32 %i.ak, 1
  br i1 %i.km, label %bb.bs, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.thread

bb.bs:                                            ; preds = %bb.br
  %i.kn = load ptr, ptr %i.kh, align 8, !tbaa !140
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !127 ; 3 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.thread, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i:     ; preds = %bb.bs
  %i.ks = load i32, ptr %i.kq, align 8, !tbaa !189
  %i.kt = icmp eq i32 %i.ks, 5
  br i1 %i.kt, label %_ZNK17arith_recognizers7is_realEPK4sort.exit, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.thread

_ZNK17arith_recognizers7is_realEPK4sort.exit:     ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !190
  %switch = icmp ult i32 %i.kv, 2
  br i1 %switch, label %bb.bt, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.thread

bb.bt:                                            ; preds = %_ZNK17arith_recognizers7is_realEPK4sort.exit
  %.084320 = add i32 %.0.i, 1                     ; 2 uses
  %i.kw = icmp ult i32 %.084320, %.0.i128
  br i1 %i.kw, label %.lr.ph323, label %.preheader

.lr.ph323:                                        ; preds = %bb.bt
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ld = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.li = zext i32 %.084320 to i64
  %i.lj = zext i32 %.0.i to i64                   ; 2 uses
  br label %bb.bv

.preheader:                                       ; preds = %bb.di, %bb.bt
  %i.lk = add i32 %.0.i128, -1                    ; 2 uses
  %i.ll = icmp ult i32 %.0.i, %i.lk
  br i1 %i.ll, label %.lr.ph325, label %.loopexit

.lr.ph325:                                        ; preds = %.preheader
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ln = zext i32 %.0.i to i64
  %wide.trip.count354 = zext i32 %i.lk to i64
  br label %bb.dl

bb.bu:                                            ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i169.invoke
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bv:                                            ; preds = %.lr.ph323, %bb.di
  %indvars.iv342 = phi i64 [ %i.li, %.lr.ph323 ], [ %indvars.iv.next343, %bb.di ] ; 6 uses
  %i.lp = trunc nuw i64 %indvars.iv342 to i32
  %umin = call i32 @llvm.umin.i32(i32 %.0.i, i32 %i.lp)
  %i.lq = load ptr, ptr %i.al, align 8, !tbaa !259
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %indvars.iv342
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !47
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !23 ; 3 uses
  %i.lv = load ptr, ptr %i.kx, align 8, !tbaa !259
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %indvars.iv342
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !47
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !23 ; 4 uses
  %i.ma = icmp samesign ugt i64 %indvars.iv342, %i.lj
  br i1 %i.ma, label %.lr.ph488, label %.split.loop.exit.loopexit

bb.bw:                                            ; preds = %_ZN8rationalD2Ev.exit190
  %i.mb = icmp ugt i64 %indvars.iv.next345, %i.lj
  br i1 %i.mb, label %.lr.ph488, label %.split.loop.exit.loopexit, !llvm.loop !448

.lr.ph488:                                        ; preds = %bb.bv, %bb.bw
  %indvars.iv344486 = phi i64 [ %indvars.iv.next345, %bb.bw ], [ %indvars.iv342, %bb.bv ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store i32 0, ptr %14, align 8, !tbaa !263
  %i.mc = load i8, ptr %i.ky, align 4
  %i.md = and i8 %i.mc, -4
  store i8 %i.md, ptr %i.ky, align 4
  store ptr null, ptr %i.kz, align 8, !tbaa !262
  store i32 1, ptr %i.la, align 8, !tbaa !263
  %i.me = load i8, ptr %i.lb, align 4
  %i.mf = and i8 %i.me, -4
  store i8 %i.mf, ptr %i.lb, align 4
  store ptr null, ptr %i.lc, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store i32 0, ptr %15, align 8, !tbaa !263
  %i.mg = load i8, ptr %i.ld, align 4
  %i.mh = and i8 %i.mg, -4
  store i8 %i.mh, ptr %i.ld, align 4
  store ptr null, ptr %i.le, align 8, !tbaa !262
  store i32 1, ptr %i.lf, align 8, !tbaa !263
  %i.mi = load i8, ptr %i.lg, align 4
  %i.mj = and i8 %i.mi, -4
  store i8 %i.mj, ptr %i.lg, align 4
  store ptr null, ptr %i.lh, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.mk = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.ko, ptr noundef %i.lz, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %.lr.ph488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br i1 %i.mk, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.1, i32 noundef 2052, ptr noundef nonnull @.str.22)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.cb unwind label %bb.ca

bb.ca:                                            ; preds = %bb.ck, %bb.cj, %bb.cb, %.lr.ph488, %bb.ce, %bb.cd, %bb.bz, %bb.by
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cb:                                            ; preds = %bb.bz, %bb.bx
  %indvars.iv.next345 = add nsw i64 %indvars.iv344486, -1 ; 3 uses
  %i.mm = load ptr, ptr %i.kx, align 8, !tbaa !259
  %18 = and i64 %indvars.iv.next345, 4294967295   ; 3 uses
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %18
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !47
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.mr = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.ko, ptr noundef %i.mq, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.cc unwind label %bb.ca

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.mr, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.1, i32 noundef 2054, ptr noundef nonnull @.str.23)
          to label %bb.ce unwind label %bb.ca

bb.ce:                                            ; preds = %bb.cd
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.cf unwind label %bb.ca

bb.cf:                                            ; preds = %bb.ce, %bb.cc
  %i.ms = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !194 ; 2 uses
  %i.mt = load i8, ptr %i.lb, align 4
  %i.mu = and i8 %i.mt, 1
  %i.mv = icmp eq i8 %i.mu, 0
  %i.mw = load i32, ptr %i.la, align 8
  %i.mx = icmp eq i32 %i.mw, 1
  %i.my = select i1 %i.mv, i1 %i.mx, i1 false
  br i1 %i.my, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.mz = load i8, ptr %i.lg, align 4
  %i.na = and i8 %i.mz, 1
  %i.nb = icmp eq i8 %i.na, 0
  %i.nc = load i32, ptr %i.lf, align 8
  %i.nd = icmp eq i32 %i.nc, 1
  %i.ne = select i1 %i.nb, i1 %i.nd, i1 false
  br i1 %i.ne, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.nf = load i8, ptr %i.ky, align 4
  %i.ng = and i8 %i.nf, 1
  %i.nh = icmp eq i8 %i.ng, 0
  br i1 %i.nh, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ni = load i8, ptr %i.ld, align 4
  %i.nj = and i8 %i.ni, 1
  %i.nk = icmp eq i8 %i.nj, 0
  br i1 %i.nk, label %.split, label %bb.cj

.split:                                           ; preds = %bb.ci
  %i.nl = load i32, ptr %14, align 8, !tbaa !263
  %i.nm = load i32, ptr %15, align 8, !tbaa !263
  %i.nn = icmp slt i32 %i.nl, %i.nm
  br i1 %i.nn, label %bb.cm, label %bb.cv

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.no = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.ms, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc176 unwind label %bb.ca

.noexc176:                                        ; preds = %bb.cj
  %i.np = icmp slt i32 %i.no, 0
  br i1 %i.np, label %bb.cm, label %bb.cv

bb.ck:                                            ; preds = %bb.cg, %bb.cf
  %i.nq = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.ms, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.cl unwind label %bb.ca

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.nq, label %bb.cm, label %bb.cv

bb.cm:                                            ; preds = %.split, %.noexc176, %bb.cl
  %i.nr = load ptr, ptr %i.al, align 8, !tbaa !259 ; 2 uses
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %i.nr, i64 %18
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !47
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !23 ; 3 uses
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nr, i64 %indvars.iv344486 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !47 ; 2 uses
  %i.nz = load ptr, ptr %i.nw, align 8, !tbaa !59, !nonnull !56, !align !57
  %.not.i.i178 = icmp eq ptr %i.nv, null
  br i1 %.not.i.i178, label %_ZN11ast_manager7inc_refEP3ast.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !27
  %i.oc = add i32 %i.ob, 1
  store i32 %i.oc, ptr %i.oa, align 4, !tbaa !27
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.cn, %bb.cm
  %i.od = load ptr, ptr %i.ny, align 8, !tbaa !23 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.od, null
  br i1 %.not.i3.i, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8 ; 2 uses
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !27
  %i.og = add i32 %i.of, -1                       ; 2 uses
  store i32 %i.og, ptr %i.oe, align 4, !tbaa !27
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.nz, ptr noundef nonnull %i.od)
          to label %bb.cq unwind label %bb.cy

bb.cq:                                            ; preds = %bb.cp, %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.co
  store ptr %i.nv, ptr %i.ny, align 8, !tbaa !23
  %i.oi = load ptr, ptr %i.kx, align 8, !tbaa !259 ; 2 uses
  %i.oj = getelementptr inbounds nuw [16 x i8], ptr %i.oi, i64 %18
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !47
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !23 ; 3 uses
  %i.on = getelementptr inbounds nuw [16 x i8], ptr %i.oi, i64 %indvars.iv344486 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !47 ; 2 uses
  %i.oq = load ptr, ptr %i.on, align 8, !tbaa !59, !nonnull !56, !align !57
  %.not.i.i183 = icmp eq ptr %i.om, null
  br i1 %.not.i.i183, label %_ZN11ast_manager7inc_refEP3ast.exit.i184, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.or = getelementptr inbounds nuw i8, ptr %i.om, i64 8 ; 2 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !27
  %i.ot = add i32 %i.os, 1
  store i32 %i.ot, ptr %i.or, align 4, !tbaa !27
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i184

_ZN11ast_manager7inc_refEP3ast.exit.i184:         ; preds = %bb.cr, %bb.cq
  %i.ou = load ptr, ptr %i.op, align 8, !tbaa !23 ; 3 uses
  %.not.i3.i185 = icmp eq ptr %i.ou, null
  br i1 %.not.i3.i185, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i184
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !27
  %i.ox = add i32 %i.ow, -1                       ; 2 uses
  store i32 %i.ox, ptr %i.ov, align 4, !tbaa !27
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.oq, ptr noundef nonnull %i.ou)
          to label %bb.cu unwind label %bb.cz

bb.cu:                                            ; preds = %bb.cs, %_ZN11ast_manager7inc_refEP3ast.exit.i184, %bb.ct
  store ptr %i.om, ptr %i.op, align 8, !tbaa !23
  br label %bb.cv

bb.cv:                                            ; preds = %.split, %.noexc176, %bb.cl, %bb.cu
  %.0.i.i.i458 = phi i1 [ false, %.noexc176 ], [ false, %bb.cl ], [ true, %bb.cu ], [ false, %.split ]
  %i.oz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !194 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.oz, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc.i unwind label %bb.cw

.noexc.i:                                         ; preds = %bb.cv
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.oz, ptr noundef nonnull align 8 dereferenceable(16) %i.lf)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.cw

bb.cw:                                            ; preds = %.noexc.i, %bb.cv
  %i.pa = landingpad { ptr, i32 }
          catch ptr null
  %i.pb = extractvalue { ptr, i32 } %i.pa, 0
  call void @__clang_call_terminate(ptr %i.pb) #20
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.pc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !194 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.pc, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.noexc.i189 unwind label %bb.cx

.noexc.i189:                                      ; preds = %_ZN8rationalD2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.pc, ptr noundef nonnull align 8 dereferenceable(16) %i.la)
          to label %_ZN8rationalD2Ev.exit190 unwind label %bb.cx

bb.cx:                                            ; preds = %.noexc.i189, %_ZN8rationalD2Ev.exit
  %i.pd = landingpad { ptr, i32 }
          catch ptr null
  %i.pe = extractvalue { ptr, i32 } %i.pd, 0
  call void @__clang_call_terminate(ptr %i.pe) #20
  unreachable

_ZN8rationalD2Ev.exit190:                         ; preds = %.noexc.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br i1 %.0.i.i.i458, label %bb.bw, label %.split.loop.exit, !llvm.loop !448

bb.cy:                                            ; preds = %bb.cp
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cz:                                            ; preds = %bb.ct
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.ca
  %.pn109 = phi { ptr, i32 } [ %i.pg, %bb.cz ], [ %i.pf, %bb.cy ], [ %i.ml, %bb.ca ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %.body

.split.loop.exit.loopexit:                        ; preds = %bb.bw, %bb.bv
  %i.ph = zext i32 %umin to i64
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %_ZN8rationalD2Ev.exit190, %.split.loop.exit.loopexit
  %.083.lcssa = phi i64 [ %i.ph, %.split.loop.exit.loopexit ], [ %indvars.iv344486, %_ZN8rationalD2Ev.exit190 ] ; 2 uses
  %i.pi = load ptr, ptr %i.al, align 8, !tbaa !259
  %i.pj = getelementptr inbounds nuw [16 x i8], ptr %i.pi, i64 %.083.lcssa ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !47 ; 2 uses
  %i.pm = load ptr, ptr %i.pj, align 8, !tbaa !59, !nonnull !56, !align !57
  %.not.i.i193 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i193, label %_ZN11ast_manager7inc_refEP3ast.exit.i194, label %bb.db

bb.db:                                            ; preds = %.split.loop.exit
  %i.pn = getelementptr inbounds nuw i8, ptr %i.lu, i64 8 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !27
  %i.pp = add i32 %i.po, 1
  store i32 %i.pp, ptr %i.pn, align 4, !tbaa !27
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i194

_ZN11ast_manager7inc_refEP3ast.exit.i194:         ; preds = %bb.db, %.split.loop.exit
  %i.pq = load ptr, ptr %i.pl, align 8, !tbaa !23 ; 3 uses
  %.not.i3.i195 = icmp eq ptr %i.pq, null
  br i1 %.not.i3.i195, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i194
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8 ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !27
  %i.pt = add i32 %i.ps, -1                       ; 2 uses
  store i32 %i.pt, ptr %i.pr, align 4, !tbaa !27
  %i.pu = icmp eq i32 %i.pt, 0
  br i1 %i.pu, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.pm, ptr noundef nonnull %i.pq)
          to label %bb.de unwind label %bb.dj

bb.de:                                            ; preds = %bb.dd, %_ZN11ast_manager7inc_refEP3ast.exit.i194, %bb.dc
  store ptr %i.lu, ptr %i.pl, align 8, !tbaa !23
  %i.pv = load ptr, ptr %i.kx, align 8, !tbaa !259
  %i.pw = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %.083.lcssa ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !47 ; 2 uses
  %i.pz = load ptr, ptr %i.pw, align 8, !tbaa !59, !nonnull !56, !align !57
  %.not.i.i201 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i201, label %_ZN11ast_manager7inc_refEP3ast.exit.i202, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.qa = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !27
  %i.qc = add i32 %i.qb, 1
  store i32 %i.qc, ptr %i.qa, align 4, !tbaa !27
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i202

_ZN11ast_manager7inc_refEP3ast.exit.i202:         ; preds = %bb.df, %bb.de
  %i.qd = load ptr, ptr %i.py, align 8, !tbaa !23 ; 3 uses
  %.not.i3.i203 = icmp eq ptr %i.qd, null
  br i1 %.not.i3.i203, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i202
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !27
  %i.qg = add i32 %i.qf, -1                       ; 2 uses
  store i32 %i.qg, ptr %i.qe, align 4, !tbaa !27
  %i.qh = icmp eq i32 %i.qg, 0
  br i1 %i.qh, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.pz, ptr noundef nonnull %i.qd)
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %bb.dg, %_ZN11ast_manager7inc_refEP3ast.exit.i202, %bb.dh
  store ptr %i.lz, ptr %i.py, align 8, !tbaa !23
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next343 to i32
  %exitcond349.not = icmp eq i32 %.0.i128, %lftr.wideiv
  br i1 %exitcond349.not, label %.preheader, label %bb.bv, !llvm.loop !449

bb.dj:                                            ; preds = %bb.dd
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dk:                                            ; preds = %bb.dh
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dl:                                            ; preds = %.lr.ph325, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit214
  %indvars.iv350 = phi i64 [ %i.ln, %.lr.ph325 ], [ %indvars.iv.next351, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit214 ] ; 2 uses
  %i.qk = load ptr, ptr %i.al, align 8, !tbaa !259 ; 2 uses
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.qk, i64 %indvars.iv350
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !47
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !23
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 3 uses
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %i.qk, i64 %indvars.iv.next351
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !47
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !23
  %i.qt = load ptr, ptr %i.ko, align 8, !tbaa !267, !nonnull !56, !align !57
  %i.qu = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.qt, i32 noundef 5, i32 noundef 4, ptr noundef %i.qo, ptr noundef %i.qs)
          to label %_ZNK10arith_util5mk_ltEP4exprS1_.exit unwind label %bb.dp ; 3 uses

_ZNK10arith_util5mk_ltEP4exprS1_.exit:            ; preds = %bb.dl
end_hunk_0
