Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_seq?download=true
inline.NumInlined: 5630
inline.NumDeleted: 2057
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN3smt10theory_seq10get_lengthEP4exprR7obj_refIS1_11ast_managerER7svectorIN3sat7literalEjE:bb.a
bb.cq:                                            ; preds = %_ZN3smt10theory_seq6mk_lenEP4expr.exit249
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %.body254

bb.cr:                                            ; preds = %.noexc258, %.noexc257, %_ZN3smt10theory_seq6mk_subEP4exprS2_.exit256
  %i.pk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #26
  br label %.body254

.body254:                                         ; preds = %bb.cq, %bb.by, %bb.cr
  %.pn118 = phi { ptr, i32 } [ %i.pk, %bb.cr ], [ %i.pj, %bb.cq ], [ %i.mr, %bb.by ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  br label %bb.cs

bb.cs:                                            ; preds = %.body254, %bb.cp
  %.pn118.pn = phi { ptr, i32 } [ %.pn118, %.body254 ], [ %i.pi, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %.loopexit.split-lp333

bb.ct:                                            ; preds = %bb.bv
  %i.pl = invoke noundef zeroext i1 @_ZN3seq6skolem7is_postEP4exprRS2_S3_(ptr noundef nonnull align 8 dereferenceable(344) %i.lp, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.cu unwind label %bb.dh

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.pl, label %bb.cv, label %bb.ds

bb.cv:                                            ; preds = %bb.cu
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 3536 ; 2 uses
  %i.pn = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 4 uses
  %i.pp = invoke noundef ptr @_ZN10arith_util6mk_intEi(ptr noundef nonnull align 8 dereferenceable(16) %i.po, i32 noundef 0)
          to label %.noexc281 unwind label %bb.dh

.noexc281:                                        ; preds = %bb.cv
  %i.pq = load ptr, ptr %i.po, align 8, !tbaa !946, !nonnull !62, !align !63
  %i.pr = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.pq, i32 noundef 5, i32 noundef 3, ptr noundef %i.pn, ptr noundef %i.pp)
          to label %.noexc282 unwind label %bb.dh

.noexc282:                                        ; preds = %.noexc281
  %i.ps = invoke i32 @_ZN3smt10seq_axioms10mk_literalEP4expr(ptr noundef nonnull align 8 dereferenceable(1272) %i.pm, ptr noundef %i.pr)
          to label %_ZN3smt10seq_axioms5mk_geEP4expri.exit284 unwind label %bb.dh ; 2 uses

_ZN3smt10seq_axioms5mk_geEP4expri.exit284:        ; preds = %.noexc282
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.pt = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  invoke void @_ZN12seq_rewriter9mk_lengthEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.69) align 8 %15, ptr noundef nonnull align 8 dereferenceable(1800) %i.pu, ptr noundef %i.pt)
          to label %_ZN3smt10theory_seq6mk_lenEP4expr.exit286 unwind label %bb.di

_ZN3smt10theory_seq6mk_lenEP4expr.exit286:        ; preds = %_ZN3smt10seq_axioms5mk_geEP4expri.exit284
  %i.pv = load ptr, ptr %15, align 8, !tbaa !787
  %i.pw = load ptr, ptr %i.e, align 8, !tbaa !58
  call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !946, !noalias !1183, !nonnull !62, !align !63
  %i.pz = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.py, i32 noundef 5, i32 noundef 7, ptr noundef %i.pv, ptr noundef %i.pw)
          to label %.noexc290 unwind label %bb.dj ; 3 uses

.noexc290:                                        ; preds = %_ZN3smt10theory_seq6mk_lenEP4expr.exit286
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !617, !noalias !1183, !nonnull !62, !align !63
  store ptr %i.pz, ptr %14, align 8, !tbaa !787, !alias.scope !1183
  %i.qc = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.qb, ptr %i.qc, align 8, !tbaa !618, !alias.scope !1183
  %.not.i.i.i287 = icmp eq ptr %i.pz, null
  br i1 %.not.i.i.i287, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i289, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i288

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i288:     ; preds = %.noexc290
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !65, !noalias !1183
  %i.qf = add i32 %i.qe, 1
  store i32 %i.qf, ptr %i.qd, align 4, !tbaa !65, !noalias !1183
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i289

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i289: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i288, %.noexc290
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 1200
  invoke void @_ZN11th_rewriterclER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %i.qg, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZN3smt10theory_seq6mk_subEP4exprS2_.exit293 unwind label %bb.cw

bb.cw:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i289
  %i.qh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #26
  br label %.body291

_ZN3smt10theory_seq6mk_subEP4exprS2_.exit293:     ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i289
  %i.qi = load ptr, ptr %14, align 8, !tbaa !787
  %i.qj = invoke noundef ptr @_ZN10arith_util6mk_intEi(ptr noundef nonnull align 8 dereferenceable(16) %i.po, i32 noundef 0)
          to label %.noexc294 unwind label %bb.dk

.noexc294:                                        ; preds = %_ZN3smt10theory_seq6mk_subEP4exprS2_.exit293
  %i.qk = load ptr, ptr %i.po, align 8, !tbaa !946, !nonnull !62, !align !63
  %i.ql = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.qk, i32 noundef 5, i32 noundef 3, ptr noundef %i.qi, ptr noundef %i.qj)
          to label %.noexc295 unwind label %bb.dk

.noexc295:                                        ; preds = %.noexc294
  %i.qm = invoke i32 @_ZN3smt10seq_axioms10mk_literalEP4expr(ptr noundef nonnull align 8 dereferenceable(1272) %i.pm, ptr noundef %i.ql)
          to label %_ZN3smt10seq_axioms5mk_geEP4expri.exit297 unwind label %bb.dk ; 2 uses

_ZN3smt10seq_axioms5mk_geEP4expri.exit297:        ; preds = %.noexc295
  %i.qn = load ptr, ptr %14, align 8, !tbaa !787  ; 3 uses
  %.not.i.i298 = icmp eq ptr %i.qn, null
  br i1 %.not.i.i298, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit299, label %bb.cx

bb.cx:                                            ; preds = %_ZN3smt10seq_axioms5mk_geEP4expri.exit297
  %i.qo = load ptr, ptr %i.qc, align 8, !tbaa !788, !nonnull !62, !align !63
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 8 ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !65
  %i.qr = add i32 %i.qq, -1                       ; 2 uses
  store i32 %i.qr, ptr %i.qp, align 4, !tbaa !65
  %i.qs = icmp eq i32 %i.qr, 0
  br i1 %i.qs, label %bb.cy, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit299

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.qo, ptr noundef nonnull %i.qn)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit299 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qt = landingpad { ptr, i32 }
          catch ptr null
  %i.qu = extractvalue { ptr, i32 } %i.qt, 0
  call void @__clang_call_terminate(ptr %i.qu) #29
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit299:      ; preds = %_ZN3smt10seq_axioms5mk_geEP4expri.exit297, %bb.cx, %bb.cy
  %i.qv = load ptr, ptr %15, align 8, !tbaa !787  ; 3 uses
  %.not.i.i300 = icmp eq ptr %i.qv, null
  br i1 %.not.i.i300, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit299
  %i.qw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !788, !nonnull !62, !align !63
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 8 ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !65
  %i.ra = add i32 %i.qz, -1                       ; 2 uses
  store i32 %i.ra, ptr %i.qy, align 4, !tbaa !65
  %i.rb = icmp eq i32 %i.ra, 0
  br i1 %i.rb, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.qx, ptr noundef nonnull %i.qv)
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.rc = landingpad { ptr, i32 }
          catch ptr null
  %i.rd = extractvalue { ptr, i32 } %i.rc, 0
  call void @__clang_call_terminate(ptr %i.rd) #29
  unreachable

bb.dd:                                            ; preds = %bb.db, %bb.da, %_ZN7obj_refI4expr11ast_managerED2Ev.exit299
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store i32 %i.ps, ptr %16, align 4, !tbaa !52
  %i.re = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 %i.qm, ptr %i.re, align 4, !tbaa !52
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !795, !nonnull !62, !align !63
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8944
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !822 ; 2 uses
  %i.rj = zext i32 %i.ps to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !106
  %i.rm = icmp eq i8 %i.rl, 1
  br i1 %i.rm, label %bb.de, label %bb.dq

bb.de:                                            ; preds = %bb.dd
  %i.rn = zext i32 %i.qm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !106
  %i.rq = icmp eq i8 %i.rp, 1
  br i1 %i.rq, label %bb.df, label %bb.dq

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.rr = load ptr, ptr %i.d, align 8, !tbaa !58
  invoke void @_ZN12seq_rewriter9mk_lengthEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.69) align 8 %18, ptr noundef nonnull align 8 dereferenceable(1800) %i.pu, ptr noundef %i.rr)
          to label %_ZN3smt10theory_seq6mk_lenEP4expr.exit303 unwind label %bb.dn

_ZN3smt10theory_seq6mk_lenEP4expr.exit303:        ; preds = %bb.df
  %i.rs = load ptr, ptr %18, align 8, !tbaa !787
  %i.rt = load ptr, ptr %i.e, align 8, !tbaa !58
  invoke void @_ZN3smt10theory_seq6mk_subEP4exprS2_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.69) align 8 %17, ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.rs, ptr noundef %i.rt)
          to label %bb.dg unwind label %bb.do

bb.dg:                                            ; preds = %_ZN3smt10theory_seq6mk_lenEP4expr.exit303
  %i.ru = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %17) #26 ; 0 uses
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #26
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  invoke void @_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull %16)
          to label %.critedge157 unwind label %bb.dm

bb.dh:                                            ; preds = %bb.bn, %bb.bp, %bb.cm, %bb.co, %bb.ck, %bb.bh, %bb.bl, %.noexc282, %.noexc281, %bb.cv, %.noexc245, %.noexc244, %.critedge153, %bb.bw, %.noexc206, %.noexc205, %.critedge149, %bb.aw, %bb.bu, %bb.ct, %bb.ds, %bb.ev, %bb.ew
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp333

bb.di:                                            ; preds = %_ZN3smt10seq_axioms5mk_geEP4expri.exit284
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dj:                                            ; preds = %_ZN3smt10theory_seq6mk_lenEP4expr.exit286
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %.body291

bb.dk:                                            ; preds = %.noexc295, %.noexc294, %_ZN3smt10theory_seq6mk_subEP4exprS2_.exit293
  %i.ry = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #26
  br label %.body291

.body291:                                         ; preds = %bb.dj, %bb.cw, %bb.dk
  %.pn109 = phi { ptr, i32 } [ %i.ry, %bb.dk ], [ %i.rx, %bb.dj ], [ %i.qh, %bb.cw ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #26
  br label %bb.dl

bb.dl:                                            ; preds = %.body291, %bb.di
  %.pn109.pn = phi { ptr, i32 } [ %.pn109, %.body291 ], [ %i.rw, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %.loopexit.split-lp333

bb.dm:                                            ; preds = %bb.dg
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dn:                                            ; preds = %bb.df
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.do:                                            ; preds = %_ZN3smt10theory_seq6mk_lenEP4expr.exit303
  %i.sb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #26
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.pn112 = phi { ptr, i32 } [ %i.sb, %bb.do ], [ %i.sa, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dd, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread

bb.dr:                                            ; preds = %bb.dp, %bb.dm
  %.pn114 = phi { ptr, i32 } [ %i.rz, %bb.dm ], [ %.pn112, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %.loopexit.split-lp333

bb.ds:                                            ; preds = %bb.cu
  %i.sc = invoke noundef zeroext i1 @_ZNK3seq6skolem7is_tailEP4exprRS2_S3_(ptr noundef nonnull align 8 dereferenceable(344) %i.lp, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.dt unwind label %bb.dh

bb.dt:                                            ; preds = %bb.ds
  br i1 %i.sc, label %bb.du, label %bb.et

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.sd = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 1232
  invoke void @_ZN12seq_rewriter9mk_lengthEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.69) align 8 %19, ptr noundef nonnull align 8 dereferenceable(1800) %i.se, ptr noundef %i.sd)
          to label %_ZN3smt10theory_seq6mk_lenEP4expr.exit305 unwind label %bb.ea

_ZN3smt10theory_seq6mk_lenEP4expr.exit305:        ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.sf = load ptr, ptr %19, align 8, !tbaa !787
  %i.sg = load ptr, ptr %i.f, align 8, !tbaa !58
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 3176 ; 3 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !946, !noalias !1184, !nonnull !62, !align !63
  %i.sj = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.si, i32 noundef 5, i32 noundef 7, ptr noundef %i.sf, ptr noundef %i.sg)
          to label %.noexc309 unwind label %bb.eb ; 3 uses

.noexc309:                                        ; preds = %_ZN3smt10theory_seq6mk_lenEP4expr.exit305
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !617, !noalias !1184, !nonnull !62, !align !63
  store ptr %i.sj, ptr %21, align 8, !tbaa !787, !alias.scope !1184
  %i.sm = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store ptr %i.sl, ptr %i.sm, align 8, !tbaa !618, !alias.scope !1184
  %.not.i.i.i306 = icmp eq ptr %i.sj, null
  br i1 %.not.i.i.i306, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i308, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i307

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i307:     ; preds = %.noexc309
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 8 ; 2 uses
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !65, !noalias !1184
  %i.sp = add i32 %i.so, 1
  store i32 %i.sp, ptr %i.sn, align 4, !tbaa !65, !noalias !1184
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i308

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i308: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i307, %.noexc309
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 1200
  invoke void @_ZN11th_rewriterclER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %i.sq, ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %_ZN3smt10theory_seq6mk_subEP4exprS2_.exit312 unwind label %bb.dv

bb.dv:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i308
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #26
  br label %.body310

_ZN3smt10theory_seq6mk_subEP4exprS2_.exit312:     ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i308
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 3536
  %i.st = load ptr, ptr %21, align 8, !tbaa !787
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 2 uses
  %i.sv = invoke noundef ptr @_ZN10arith_util6mk_intEi(ptr noundef nonnull align 8 dereferenceable(16) %i.su, i32 noundef 1)
          to label %.noexc313 unwind label %bb.ec

.noexc313:                                        ; preds = %_ZN3smt10theory_seq6mk_subEP4exprS2_.exit312
  %i.sw = load ptr, ptr %i.su, align 8, !tbaa !946, !nonnull !62, !align !63
  %i.sx = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.sw, i32 noundef 5, i32 noundef 3, ptr noundef %i.st, ptr noundef %i.sv)
          to label %.noexc314 unwind label %bb.ec

.noexc314:                                        ; preds = %.noexc313
  %i.sy = invoke i32 @_ZN3smt10seq_axioms10mk_literalEP4expr(ptr noundef nonnull align 8 dereferenceable(1272) %i.ss, ptr noundef %i.sx)
          to label %_ZN3smt10seq_axioms5mk_geEP4expri.exit316 unwind label %bb.ec ; 3 uses

_ZN3smt10seq_axioms5mk_geEP4expri.exit316:        ; preds = %.noexc314
  store i32 %i.sy, ptr %20, align 4
  %i.sz = load ptr, ptr %21, align 8, !tbaa !787  ; 3 uses
  %.not.i.i317 = icmp eq ptr %i.sz, null
  br i1 %.not.i.i317, label %bb.dz, label %bb.dw

bb.dw:                                            ; preds = %_ZN3smt10seq_axioms5mk_geEP4expri.exit316
  %i.ta = load ptr, ptr %i.sm, align 8, !tbaa !788, !nonnull !62, !align !63
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 8 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !65
  %i.td = add i32 %i.tc, -1                       ; 2 uses
  store i32 %i.td, ptr %i.tb, align 4, !tbaa !65
  %i.te = icmp eq i32 %i.td, 0
  br i1 %i.te, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ta, ptr noundef nonnull %i.sz)
          to label %bb.dz unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.tf = landingpad { ptr, i32 }
          catch ptr null
  %i.tg = extractvalue { ptr, i32 } %i.tf, 0
  call void @__clang_call_terminate(ptr %i.tg) #29
  unreachable

bb.dz:                                            ; preds = %bb.dx, %bb.dw, %_ZN3smt10seq_axioms5mk_geEP4expri.exit316
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !795, !nonnull !62, !align !63
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8944
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !822
  %i.tl = zext i32 %i.sy to i64
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.tl
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !106
  switch i8 %i.tn, label %bb.eq [
    i8 1, label %bb.ee
    i8 -1, label %bb.el
  ]

bb.ea:                                            ; preds = %bb.du
  %i.to = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.eb:                                            ; preds = %_ZN3smt10theory_seq6mk_lenEP4expr.exit305
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %.body310

bb.ec:                                            ; preds = %.noexc314, %.noexc313, %_ZN3smt10theory_seq6mk_subEP4exprS2_.exit312
  %i.tq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #26
  br label %.body310

.body310:                                         ; preds = %bb.eb, %bb.dv, %bb.ec
  %.pn = phi { ptr, i32 } [ %i.tq, %bb.ec ], [ %i.tp, %bb.eb ], [ %i.sr, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.er

bb.ed:                                            ; preds = %bb.em, %bb.el, %bb.eh
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.ee:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.ts = load ptr, ptr %19, align 8, !tbaa !787
  %i.tt = load ptr, ptr %i.f, align 8, !tbaa !58
  invoke void @_ZN3smt10theory_seq6mk_subEP4exprS2_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.69) align 8 %23, ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.ts, ptr noundef %i.tt)
          to label %bb.ef unwind label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.tu = load ptr, ptr %23, align 8, !tbaa !787
  %i.tv = invoke noundef ptr @_ZN10arith_util6mk_intEi(ptr noundef nonnull align 8 dereferenceable(16) %i.sh, i32 noundef 1)
          to label %bb.eg unwind label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  invoke void @_ZN3smt10theory_seq6mk_subEP4exprS2_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.69) align 8 %22, ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.tu, ptr noundef %i.tv)
          to label %bb.eh unwind label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  %i.tw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %22) #26 ; 0 uses
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #26
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.tx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %20)
          to label %.critedge159 unwind label %bb.ed ; 0 uses

bb.ei:                                            ; preds = %bb.ee
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eg, %bb.ef
  %i.tz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #26
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.pn104 = phi { ptr, i32 } [ %i.tz, %bb.ej ], [ %i.ty, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.er

bb.el:                                            ; preds = %bb.dz
  %i.ua = invoke noundef ptr @_ZN10arith_util6mk_intEi(ptr noundef nonnull align 8 dereferenceable(16) %i.sh, i32 noundef 0)
          to label %bb.em unwind label %bb.ed

bb.em:                                            ; preds = %bb.el
  %i.ub = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ua)
          to label %bb.en unwind label %bb.ed     ; 0 uses

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.uc = xor i32 %i.sy, 1
  store i32 %i.uc, ptr %24, align 4
  %i.ud = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %24)
          to label %bb.eo unwind label %bb.ep     ; 0 uses

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %.critedge159

bb.ep:                                            ; preds = %bb.en
  %i.ue = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.er

bb.eq:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread

bb.er:                                            ; preds = %bb.ep, %bb.ek, %bb.ed, %.body310
  %.pn106 = phi { ptr, i32 } [ %i.tr, %bb.ed ], [ %.pn104, %bb.ek ], [ %i.ue, %bb.ep ], [ %.pn, %.body310 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #26
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.ea
  %.pn106.pn = phi { ptr, i32 } [ %.pn106, %bb.er ], [ %i.to, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %.loopexit.split-lp333

bb.et:                                            ; preds = %bb.dt
  %i.uf = load i32, ptr %i.p, align 8, !tbaa !758
  %i.ug = load i32, ptr %i.r, align 4
  %i.uh = and i32 %i.ug, 65535
  %i.ui = icmp eq i32 %i.uh, 0
  br i1 %i.ui, label %bb.eu, label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread

bb.eu:                                            ; preds = %bb.et
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !813
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !816 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.um, null
  br i1 %.not.i.i.i.i, label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread, label %_ZNK8seq_util3str7is_unitEPK4expr.exit

_ZNK8seq_util3str7is_unitEPK4expr.exit:           ; preds = %bb.eu
  %i.un = load i32, ptr %i.um, align 8, !tbaa !820
  %i.uo = icmp eq i32 %i.un, %i.uf
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  %i.uq = load i32, ptr %i.up, align 4
  %i.ur = icmp eq i32 %i.uq, 0
  %i.us = select i1 %i.uo, i1 %i.ur, i1 false
  br i1 %i.us, label %bb.ev, label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread

bb.ev:                                            ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.uu = invoke noundef ptr @_ZN10arith_util6mk_intEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ut, i32 noundef 1)
          to label %bb.ew unwind label %bb.dh

bb.ew:                                            ; preds = %bb.ev
  %i.uv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.uu)
          to label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread unwind label %bb.dh ; 0 uses

bb.ex:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.3
  %i.uw = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !65
  %i.uy = add i32 %i.ux, -1                       ; 2 uses
  store i32 %i.uy, ptr %i.uw, align 4, !tbaa !65
  %i.uz = icmp eq i32 %i.uy, 0
  br i1 %i.uz, label %bb.ey, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit320

bb.ey:                                            ; preds = %bb.ex
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bn, ptr noundef nonnull %i.bm)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit320 unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.va = landingpad { ptr, i32 }
          catch ptr null
  %i.vb = extractvalue { ptr, i32 } %i.va, 0
  call void @__clang_call_terminate(ptr %i.vb) #29
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit320:      ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.3, %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.vc = load ptr, ptr %5, align 8, !tbaa !787   ; 3 uses
  %.not.i.i321 = icmp eq ptr %i.vc, null
  br i1 %.not.i.i321, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit322, label %bb.fa

bb.fa:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit320
  %i.vd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !788, !nonnull !62, !align !63
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 8 ; 2 uses
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !65
  %i.vh = add i32 %i.vg, -1                       ; 2 uses
  store i32 %i.vh, ptr %i.vf, align 4, !tbaa !65
  %i.vi = icmp eq i32 %i.vh, 0
  br i1 %i.vi, label %bb.fb, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit322

bb.fb:                                            ; preds = %bb.fa
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ve, ptr noundef nonnull %i.vc)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit322 unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.vj = landingpad { ptr, i32 }
          catch ptr null
  %i.vk = extractvalue { ptr, i32 } %i.vj, 0
  call void @__clang_call_terminate(ptr %i.vk) #29
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit322:      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit320, %bb.fa, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread

.critedge157:                                     ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread

.critedge159:                                     ; preds = %bb.eo, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.vl = load ptr, ptr %19, align 8, !tbaa !787  ; 3 uses
  %.not.i.i323 = icmp eq ptr %i.vl, null
  br i1 %.not.i.i323, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit324, label %bb.fd

bb.fd:                                            ; preds = %.critedge159
  %i.vm = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !788, !nonnull !62, !align !63
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 8 ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !65
  %i.vq = add i32 %i.vp, -1                       ; 2 uses
  store i32 %i.vq, ptr %i.vo, align 4, !tbaa !65
  %i.vr = icmp eq i32 %i.vq, 0
  br i1 %i.vr, label %bb.fe, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit324

bb.fe:                                            ; preds = %bb.fd
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.vn, ptr noundef nonnull %i.vl)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit324 unwind label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.vs = landingpad { ptr, i32 }
          catch ptr null
  %i.vt = extractvalue { ptr, i32 } %i.vs, 0
  call void @__clang_call_terminate(ptr %i.vt) #29
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit324:      ; preds = %.critedge159, %bb.fd, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread

_ZNK8seq_util3str7is_unitEPK4expr.exit.thread:    ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i234.1, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i273.1, %bb.eu, %bb.et, %bb.cg, %bb.cf, %bb.bg, %bb.bf, %_ZNK8seq_util3str7is_unitEPK4expr.exit, %_ZN7obj_refI4expr11ast_managerED2Ev.exit200, %bb.dq, %bb.eq, %bb.ew, %_ZN7obj_refI4expr11ast_managerED2Ev.exit324, %.critedge157, %_ZN7obj_refI4expr11ast_managerED2Ev.exit322
  %.5 = phi i1 [ true, %bb.ew ], [ true, %_ZN7obj_refI4expr11ast_managerED2Ev.exit322 ], [ false, %bb.eu ], [ true, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i273.1 ], [ true, %.critedge157 ], [ true, %_ZN7obj_refI4expr11ast_managerED2Ev.exit324 ], [ false, %bb.eq ], [ false, %bb.dq ], [ false, %bb.bg ], [ false, %_ZNK8seq_util3str7is_unitEPK4expr.exit ], [ false, %_ZN7obj_refI4expr11ast_managerED2Ev.exit200 ], [ false, %bb.bf ], [ false, %bb.cf ], [ false, %bb.cg ], [ false, %bb.et ], [ true, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i234.1 ]
  %i.vu = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !848 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.vu, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i unwind label %bb.fg

.noexc.i:                                         ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.vu, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.fg

bb.fg:                                            ; preds = %.noexc.i, %_ZNK8seq_util3str7is_unitEPK4expr.exit.thread
  %i.vv = landingpad { ptr, i32 }
          catch ptr null
  %i.vw = extractvalue { ptr, i32 } %i.vv, 0
  call void @__clang_call_terminate(ptr %i.vw) #29
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  ret i1 %.5

.loopexit.split-lp333:                            ; preds = %bb.dh, %bb.dr, %bb.dl, %bb.cs, %bb.bt, %bb.es, %bb.au
  %.pn137.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn137.pn.pn.pn.pn.pn.pn, %bb.au ], [ %.pn109.pn, %bb.dl ], [ %.pn125.pn, %bb.bt ], [ %.pn118.pn, %bb.cs ], [ %.pn106.pn, %bb.es ], [ %.pn114, %bb.dr ], [ %i.rv, %bb.dh ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  resume { ptr, i32 } %.pn137.pn.pn.pn.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK3seq9eq_solver6is_varEP4expr(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.svector.301, align 8         ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.ptr_vector, align 8          ; 13 uses
  %6 = alloca %class.obj_ref.69, align 8          ; 9 uses
  %i.b = icmp ne ptr %1, %2                       ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5561
  store i8 1, ptr %i.c, align 1, !tbaa !772
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN3smt10theory_seq12solution_map6updateEP4exprS3_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.e = tail call noundef ptr @_ZN3smt6theory12ensure_enodeEP4expr(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef %1) ; 2 uses
  %i.f = tail call noundef ptr @_ZN3smt6theory12ensure_enodeEP4expr(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef %2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr null, ptr %5, align 8, !tbaa !56
  %i.g = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !816  ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit53", label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i:   ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.l = load i32, ptr %i.k, align 8, !tbaa !755
  %i.m = load i32, ptr %i.i, align 8, !tbaa !820
  %i.n = icmp eq i32 %i.m, %i.l
  br i1 %i.n, label %_ZNK8seq_util6is_seqEP4expr.exit, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit53"

_ZNK8seq_util6is_seqEP4expr.exit:                 ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !840
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit53"

bb.c:                                             ; preds = %_ZNK8seq_util6is_seqEP4expr.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !791  ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit", label %_ZNK3smt5enode7parents3endEv.exit.i

_ZNK3smt5enode7parents3endEv.exit.i:              ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !52   ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x
  %.not2.i = icmp eq i32 %i.v, 0
  br i1 %.not2.i, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK3smt5enode7parents3endEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3080
  br label %bb.d

bb.d:                                             ; preds = %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i, %.lr.ph.i
  %.03.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.be, %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i ] ; 2 uses
  %i.aa = load ptr, ptr %.03.i, align 8, !tbaa !823
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !839 ; 3 uses
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !758
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, 65535
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !813
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !816 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.i

_ZNK8seq_util3str9is_lengthEPK4expr.exit.i:       ; preds = %bb.e
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !820
  %i.am = icmp eq i32 %i.al, %i.ac
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp eq i32 %i.ao, 12
  %i.aq = select i1 %i.am, i1 %i.ap, i1 false
  br i1 %i.aq, label %bb.f, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i

bb.f:                                             ; preds = %_ZNK8seq_util3str9is_lengthEPK4expr.exit.i
  %i.ar = load ptr, ptr %5, align 8, !tbaa !56    ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !52 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !52
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %bb.h, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !56 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !52
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit.i

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit.i:    ; preds = %.noexc39, %bb.g
  %i.ay = phi i32 [ %.pre2.i.i, %.noexc39 ], [ %i.au, %bb.g ] ; 2 uses
  %i.az = phi ptr [ %.pre.i.i, %.noexc39 ], [ %i.ar, %bb.g ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4
  %i.bb = zext i32 %i.ay to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bb
  store ptr %i.ab, ptr %i.bc, align 8, !tbaa !58
  %i.bd = add i32 %i.ay, 1
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !52
  br label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i

_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i: ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit.i, %_ZNK8seq_util3str9is_lengthEPK4expr.exit.i, %bb.e, %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %.03.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.y
  br i1 %.not.i, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit", label %bb.d

"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit": ; preds = %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i, %_ZNK3smt5enode7parents3endEv.exit.i, %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !791 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit53", label %_ZNK3smt5enode7parents3endEv.exit.i40

_ZNK3smt5enode7parents3endEv.exit.i40:            ; preds = %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit"
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !52 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bl
  %.not2.i41 = icmp eq i32 %i.bj, 0
  br i1 %.not2.i41, label %"_ZZN3smt10theory_seq12add_solutionEP4exprS2_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyEENK3$_0clEPNS_5enodeE.exit53", label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %_ZNK3smt5enode7parents3endEv.exit.i40
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3080
  br label %bb.i

bb.i:                                             ; preds = %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i44, %.lr.ph.i42
  %.03.i43 = phi ptr [ %i.bg, %.lr.ph.i42 ], [ %i.cs, %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i44 ] ; 2 uses
  %i.bo = load ptr, ptr %.03.i43, align 8, !tbaa !823
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !839 ; 3 uses
  %i.bq = load i32, ptr %i.bn, align 8, !tbaa !758
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = and i32 %i.bs, 65535
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.j, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i44

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !813
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !816 ; 3 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i46, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.thread.i44, label %_ZNK8seq_util3str9is_lengthEPK4expr.exit.i47

_ZNK8seq_util3str9is_lengthEPK4expr.exit.i47:     ; preds = %bb.j
end_hunk_0
