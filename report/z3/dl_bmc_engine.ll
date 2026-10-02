Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_bmc_engine?download=true
inline.NumInlined: 3093
inline.NumDeleted: 786
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7datalog3bmc7qlinear9get_modelEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !281, !noalias !653
  %i.bn = invoke noundef ptr @_ZN7bv_util7mk_sortEj(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i32 noundef %i.bm)
          to label %.noexc110 unwind label %bb.s  ; 6 uses

.noexc110:                                        ; preds = %bb.g
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !283, !noalias !653, !nonnull !225, !align !226 ; 2 uses
  store ptr %i.bn, ptr %12, align 8, !tbaa !286, !alias.scope !653
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !227, !alias.scope !653
  %.not.i.i.i = icmp eq ptr %i.bn, null           ; 2 uses
  br i1 %.not.i.i.i, label %_ZN7datalog3bmc7qlinear13mk_index_sortEv.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc110
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !252, !noalias !653
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !252, !noalias !653
  br label %_ZN7datalog3bmc7qlinear13mk_index_sortEv.exit

_ZN7datalog3bmc7qlinear13mk_index_sortEv.exit:    ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %.noexc110
  %i.bt = invoke noundef ptr @_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_P14func_decl_info(ptr noundef nonnull align 8 dereferenceable(952) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0, ptr noundef null, ptr noundef %i.bn, ptr noundef null)
          to label %.noexc111 unwind label %bb.t

.noexc111:                                        ; preds = %_ZN7datalog3bmc7qlinear13mk_index_sortEv.exit
  %i.bu = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bj, ptr noundef %i.bt, i32 noundef 0, ptr noundef null)
          to label %_ZN11ast_manager8mk_constERK6symbolP4sort.exit unwind label %bb.t ; 4 uses

_ZN11ast_manager8mk_constERK6symbolP4sort.exit:   ; preds = %.noexc111
  %.not.i113 = icmp eq ptr %i.bu, null
  br i1 %.not.i113, label %bb.h, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN11ast_manager8mk_constERK6symbolP4sort.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !252
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !252
  br label %bb.h

bb.h:                                             ; preds = %_ZN11ast_manager8mk_constERK6symbolP4sort.exit, %_ZN11ast_manager7inc_refEP3ast.exit.i
  store ptr %i.bu, ptr %3, align 8, !tbaa !245
  br i1 %.not.i.i.i, label %_ZN7obj_refI4sort11ast_managerED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !252
  %i.ca = add i32 %i.bz, -1                       ; 2 uses
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !252
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.j, label %_ZN7obj_refI4sort11ast_managerED2Ev.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bo, ptr noundef nonnull %i.bn)
          to label %_ZN7obj_refI4sort11ast_managerED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #23
  unreachable

_ZN7obj_refI4sort11ast_managerED2Ev.exit:         ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.ce = load ptr, ptr %6, align 8, !tbaa !433
  invoke void @_ZN5modelclEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.25) align 8 %13, ptr noundef nonnull align 8 dereferenceable(160) %i.ce, ptr noundef %i.bu)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.w

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN7obj_refI4sort11ast_managerED2Ev.exit
  %i.cf = load ptr, ptr %13, align 8, !tbaa !245  ; 2 uses
  store ptr %i.cf, ptr %5, align 8, !tbaa !245
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.cg = invoke noundef zeroext i1 @_ZNK14bv_recognizers10is_numeralEPK4exprR8rationalRj(ptr noundef nonnull align 4 dereferenceable(4) %i.bk, ptr noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  br i1 %i.cg, label %bb.y, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.22, i32 noundef 262, ptr noundef nonnull @.str.23)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %bb.m
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.y unwind label %bb.x

bb.o:                                             ; preds = %bb.a
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.e, %bb.c
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.q:                                             ; preds = %_ZN16check_sat_result9get_modelER3refI5modelE.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.r:                                             ; preds = %bb.f
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %bb.g
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %.noexc111, %_ZN7datalog3bmc7qlinear13mk_index_sortEv.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.t ], [ %i.cl, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.ck, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.hc

bb.w:                                             ; preds = %_ZN7obj_refI4sort11ast_managerED2Ev.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.hc

bb.x:                                             ; preds = %bb.y, %bb.n, %bb.m, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.y:                                             ; preds = %bb.n, %bb.l
  %i.cp = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !445
  %i.cq = invoke noundef i64 @_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.z unwind label %bb.x

bb.z:                                             ; preds = %bb.y
  %i.cr = trunc i64 %i.cq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  store ptr null, ptr %14, align 8, !tbaa !501
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.cs, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  store ptr null, ptr %15, align 8, !tbaa !501
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.ct, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  store ptr null, ptr %16, align 8, !tbaa !501
  %i.cu = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store ptr %i.h, ptr %i.cu, align 8, !tbaa !246
  %i.cv = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 10 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit239
  %.043 = phi i32 [ %i.cr, %bb.z ], [ %.144, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit239 ] ; 6 uses
  %.042 = phi ptr [ %i.bh, %bb.z ], [ %.1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit239 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.dl = load ptr, ptr %i.k, align 8, !tbaa !283, !nonnull !225, !align !226
  %i.dm = ptrtoint ptr %i.dl to i64
  store i64 %i.dm, ptr %17, align 8, !tbaa !227
  store ptr null, ptr %i.cv, align 8, !tbaa !293
  %i.dn = load ptr, ptr %0, align 8, !tbaa !282, !nonnull !225, !align !226
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7datalog8rule_set19get_predicate_rulesEP9func_decl(ptr noundef nonnull align 8 dereferenceable(248) %i.do, ptr noundef %.042)
          to label %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.preheader unwind label %bb.ax ; 2 uses

_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.preheader: ; preds = %bb.aa
  %i.dq = icmp ult i32 %.043, 2147483647
  %i.dr = zext i32 %.043 to i64
  br label %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit

_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit:   ; preds = %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.preheader, %bb.bd
  %.040 = phi i32 [ %i.gi, %bb.bd ], [ 0, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit.preheader ] ; 6 uses
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !247
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !271
  %i.dv = icmp ult i32 %.040, %i.du
  call void @llvm.assume(i1 %i.dv)
  %i.dw = load ptr, ptr %i.k, align 8, !tbaa !283, !nonnull !225, !align !226
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZN7datalog3bmc7qlinear9mk_q_ruleEP9func_declj(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %18, ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %.042, i32 noundef %.040)
          to label %bb.ab unwind label %bb.ay

bb.ab:                                            ; preds = %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit
  %i.dx = load ptr, ptr %18, align 8, !tbaa !244
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.dy = load i32, ptr %i.bl, align 8, !tbaa !281, !noalias !654
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 0, ptr %1, align 8, !tbaa !443
  %i.dz = load i8, ptr %i.cw, align 4
  %i.ea = and i8 %i.dz, -4                        ; 2 uses
  store i8 %i.ea, ptr %i.cw, align 4
  store ptr null, ptr %i.cx, align 8, !tbaa !442
  store i32 1, ptr %i.cy, align 8, !tbaa !443
  %i.eb = load i8, ptr %i.cz, align 4
  %i.ec = and i8 %i.eb, -4
  store i8 %i.ec, ptr %i.cz, align 4
  store ptr null, ptr %i.da, align 8, !tbaa !442
  %i.ed = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !445 ; 2 uses
  br i1 %i.dq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 %.043, ptr %1, align 8, !tbaa !443
  store i8 %i.ea, ptr %i.cw, align 4
  br label %_ZN8rationalC2EmNS_4ui64E.exit.i

bb.ad:                                            ; preds = %bb.ab
  invoke void @_ZN11mpz_managerILb1EE12set_big_ui64ER3mpzm(ptr noundef nonnull align 8 dereferenceable(728) %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dr)
          to label %_ZN8rationalC2EmNS_4ui64E.exit.i unwind label %bb.az

_ZN8rationalC2EmNS_4ui64E.exit.i:                 ; preds = %bb.ad, %bb.ac
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %i.cy)
          to label %.noexc267 unwind label %bb.az

.noexc267:                                        ; preds = %_ZN8rationalC2EmNS_4ui64E.exit.i
  store i32 1, ptr %i.cy, align 8, !tbaa !443
  %i.ee = load i8, ptr %i.cz, align 4
  %i.ef = and i8 %i.ee, -2
  store i8 %i.ef, ptr %i.cz, align 4
  %i.eg = invoke noundef ptr @_ZNK7bv_util10mk_numeralERK8rationalj(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.dy)
          to label %bb.ae unwind label %bb.ag     ; 6 uses

bb.ae:                                            ; preds = %.noexc267
  %i.eh = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !445 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc.i.i unwind label %bb.af

.noexc.i.i:                                       ; preds = %bb.ae
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.eh, ptr noundef nonnull align 8 dereferenceable(16) %i.cy)
          to label %.noexc121 unwind label %bb.af

bb.af:                                            ; preds = %.noexc.i.i, %bb.ae
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #23
  unreachable

bb.ag:                                            ; preds = %.noexc267
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %.body268

.noexc121:                                        ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.el = load ptr, ptr %i.k, align 8, !tbaa !283, !noalias !654, !nonnull !225, !align !226 ; 2 uses
  store ptr %i.eg, ptr %19, align 8, !tbaa !245, !alias.scope !654
  store ptr %i.el, ptr %i.db, align 8, !tbaa !227, !alias.scope !654
  %.not.i.i.i119 = icmp eq ptr %i.eg, null        ; 2 uses
  br i1 %.not.i.i.i119, label %_ZN7datalog3bmc7qlinear8mk_q_numEj.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i120

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i120:     ; preds = %.noexc121
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !252, !noalias !654
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !252, !noalias !654
  br label %_ZN7datalog3bmc7qlinear8mk_q_numEj.exit

_ZN7datalog3bmc7qlinear8mk_q_numEj.exit:          ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i120, %.noexc121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.eg, ptr %i.a, align 8, !tbaa !287
  %i.ep = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.dw, ptr noundef %i.dx, i32 noundef 1, ptr noundef nonnull %i.a)
          to label %bb.ah unwind label %bb.ba     ; 4 uses

bb.ah:                                            ; preds = %_ZN7datalog3bmc7qlinear8mk_q_numEj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i123 = icmp eq ptr %i.ep, null
  br i1 %.not.i123, label %bb.ai, label %_ZN11ast_manager7inc_refEP3ast.exit.i124

_ZN11ast_manager7inc_refEP3ast.exit.i124:         ; preds = %bb.ah
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !252
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !252
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i124, %bb.ah
  %i.et = load ptr, ptr %4, align 8, !tbaa !245   ; 3 uses
  %.not.i4.i125 = icmp eq ptr %i.et, null
  br i1 %.not.i4.i125, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eu = load ptr, ptr %i.n, align 8, !tbaa !250, !nonnull !225, !align !226
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !252
  %i.ex = add i32 %i.ew, -1                       ; 2 uses
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !252
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.eu, ptr noundef nonnull %i.et)
          to label %bb.al unwind label %bb.ba

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ak
  store ptr %i.ep, ptr %4, align 8, !tbaa !245
  br i1 %.not.i.i.i119, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit129, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !252
  %i.fb = add i32 %i.fa, -1                       ; 2 uses
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !252
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.an, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit129

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.el, ptr noundef nonnull %i.eg)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit129 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #23
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit129:      ; preds = %bb.al, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.ff = load ptr, ptr %18, align 8, !tbaa !244  ; 3 uses
  %.not.i.i130 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i130, label %_ZN7obj_refI9func_decl11ast_managerED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit129
  %i.fg = load ptr, ptr %i.dc, align 8, !tbaa !253, !nonnull !225, !align !226
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !252
  %i.fj = add i32 %i.fi, -1                       ; 2 uses
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !252
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.aq, label %_ZN7obj_refI9func_decl11ast_managerED2Ev.exit

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fg, ptr noundef nonnull %i.ff)
          to label %_ZN7obj_refI9func_decl11ast_managerED2Ev.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #23
  unreachable

_ZN7obj_refI9func_decl11ast_managerED2Ev.exit:    ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit129, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.fn = load ptr, ptr %i.k, align 8, !tbaa !283, !nonnull !225, !align !226
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  invoke void @_ZN7datalog3bmc7qlinear6eval_qER3refI5modelEP4exprj(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.25) align 8 %20, ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.ep, i32 noundef %.043)
          to label %bb.as unwind label %bb.bc

bb.as:                                            ; preds = %_ZN7obj_refI9func_decl11ast_managerED2Ev.exit
  %i.fo = load ptr, ptr %20, align 8, !tbaa !245  ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 832
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !412
  %i.fr = icmp eq ptr %i.fo, %i.fq
  %.not.i.i131 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i131, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit132, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fs = load ptr, ptr %i.dd, align 8, !tbaa !250, !nonnull !225, !align !226
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !252
  %i.fv = add i32 %i.fu, -1                       ; 2 uses
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !252
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.au, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit132

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fs, ptr noundef nonnull %i.fo)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit132 unwind label %bb.av

end_hunk_0
