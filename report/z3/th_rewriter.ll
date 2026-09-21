Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/th_rewriter?download=true
inline.NumInlined: 2507
inline.NumDeleted: 857
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN12_GLOBAL__N_115th_rewriter_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E:bb.a
_ZN12_GLOBAL__N_115th_rewriter_cfg31log_rewrite_axiom_instantiationEP9func_decljPKP4exprR7obj_refIS3_11ast_managerE.exit: ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.cb

bb.cb:                                            ; preds = %_ZN12_GLOBAL__N_115th_rewriter_cfg31log_rewrite_axiom_instantiationEP9func_decljPKP4exprR7obj_refIS3_11ast_managerE.exit, %_ZN12_GLOBAL__N_115th_rewriter_cfg15reduce_app_coreEP9func_decljPKP4exprR7obj_refIS3_11ast_managerE.exit.thread
  %.not94 = icmp eq i32 %.3.i46, 4
  br i1 %.not94, label %.thread, label %_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteER7obj_refI4expr11ast_managerE.exit.thread

.thread:                                          ; preds = %bb.aq, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit, %_ZNK4decl13get_family_idEv.exit.i, %_ZN12_GLOBAL__N_115th_rewriter_cfg15reduce_app_coreEP9func_decljPKP4exprR7obj_refIS3_11ast_managerE.exit, %bb.cb
  %.3.i4758 = phi i32 [ 4, %bb.cb ], [ 5, %_ZN12_GLOBAL__N_115th_rewriter_cfg15reduce_app_coreEP9func_decljPKP4exprR7obj_refIS3_11ast_managerE.exit ], [ 5, %_ZNK4decl13get_family_idEv.exit.i ], [ 5, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit ], [ 5, %bb.aq ]
  %.not4957 = phi i1 [ false, %bb.cb ], [ true, %_ZN12_GLOBAL__N_115th_rewriter_cfg15reduce_app_coreEP9func_decljPKP4exprR7obj_refIS3_11ast_managerE.exit ], [ true, %_ZNK4decl13get_family_idEv.exit.i ], [ true, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit ], [ true, %bb.aq ]
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 4604
  %i.lc = load i8, ptr %i.lb, align 4, !tbaa !370, !range !295, !noundef !279
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.thread
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 4603
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !369, !range !295, !noundef !279
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.cd, label %_ZN12_GLOBAL__N_115th_rewriter_cfg8push_iteER7obj_refI4expr11ast_managerE.exit

bb.cd:                                            ; preds = %bb.cc, %.thread
  br i1 %.not4957, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %.val37 = load ptr, ptr %i.h, align 8, !tbaa !323
  %i.lh = call fastcc noundef i32 @_ZN12_GLOBAL__N_115th_rewriter_cfg8push_iteEP9func_decljPKP4exprR7obj_refIS3_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(4610) %0, ptr %.val37, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN12_GLOBAL__N_115th_rewriter_cfg8push_iteER7obj_refI4expr11ast_managerE.exit

bb.cf:                                            ; preds = %bb.cd
  %i.li = load ptr, ptr %4, align 8, !tbaa !284   ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.lk = load i32, ptr %i.lj, align 4
  %i.ll = and i32 %i.lk, 65535
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %bb.cg, label %_ZN12_GLOBAL__N_115th_rewriter_cfg8push_iteER7obj_refI4expr11ast_managerE.exit

bb.cg:                                            ; preds = %bb.cf
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !309
  %i.lp = getelementptr i8, ptr %i.lo, i64 24
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !323 ; 4 uses
  %.not.i.i.i.i.i41 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i.i.i41, label %_ZN12_GLOBAL__N_115th_rewriter_cfg8push_iteER7obj_refI4expr11ast_managerE.exit, label %_ZNK11ast_manager6is_iteEPK4expr.exit.i

_ZNK11ast_manager6is_iteEPK4expr.exit.i:          ; preds = %bb.cg
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !325
  %i.ls = icmp eq i32 %i.lr, 0
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.lu = load i32, ptr %i.lt, align 4
  %i.lv = icmp eq i32 %i.lu, 4
  %i.lw = select i1 %i.ls, i1 %i.lv, i1 false
  br i1 %i.lw, label %bb.ch, label %_ZN12_GLOBAL__N_115th_rewriter_cfg8push_iteER7obj_refI4expr11ast_managerE.exit

bb.ch:                                            ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.ly = call fastcc noundef i32 @_ZN12_GLOBAL__N_115th_rewriter_cfg8push_iteEP9func_decljPKP4exprR7obj_refIS3_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(4610) %0, ptr nonnull %i.lq, ptr noundef nonnull %i.lx, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  br label %_ZN12_GLOBAL__N_115th_rewriter_cfg8push_iteER7obj_refI4expr11ast_managerE.exit

_ZN12_GLOBAL__N_115th_rewriter_cfg8push_iteER7obj_refI4expr11ast_managerE.exit: ; preds = %bb.ch, %_ZNK11ast_manager6is_iteEPK4expr.exit.i, %bb.cg, %bb.cf, %bb.ce, %bb.cc
  %.0 = phi i32 [ %i.lh, %bb.ce ], [ %.3.i4758, %bb.cc ], [ 4, %bb.cf ], [ 4, %bb.cg ], [ 4, %_ZNK11ast_manager6is_iteEPK4expr.exit.i ], [ 4, %bb.ch ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.ma = load i8, ptr %i.lz, align 8, !tbaa !268, !range !295, !noundef !279
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %bb.ci, label %_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteER7obj_refI4expr11ast_managerE.exit

bb.ci:                                            ; preds = %_ZN12_GLOBAL__N_115th_rewriter_cfg8push_iteER7obj_refI4expr11ast_managerE.exit
  %i.mc = icmp eq i32 %.0, 5
  br i1 %i.mc, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.md = call fastcc noundef i32 @_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteEP9func_decljPKP4exprR7obj_refIS3_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(4610) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteER7obj_refI4expr11ast_managerE.exit

bb.ck:                                            ; preds = %bb.ci
  %i.me = load ptr, ptr %4, align 8, !tbaa !284   ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  %i.mg = load i32, ptr %i.mf, align 4
  %i.mh = and i32 %i.mg, 65535
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !309
  %i.ml = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !308
  %i.mn = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.mo = call fastcc noundef i32 @_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteEP9func_decljPKP4exprR7obj_refIS3_11ast_managerE(ptr noundef nonnull readonly align 8 dereferenceable(4610) %0, ptr noundef %i.mk, i32 noundef %i.mm, ptr noundef nonnull %i.mn, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %.not.i43 = icmp eq i32 %i.mo, 5
  br i1 %.not.i43, label %bb.cm, label %_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteER7obj_refI4expr11ast_managerE.exit.thread

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  br label %_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteER7obj_refI4expr11ast_managerE.exit.thread

_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteER7obj_refI4expr11ast_managerE.exit: ; preds = %bb.cj, %_ZN12_GLOBAL__N_115th_rewriter_cfg8push_iteER7obj_refI4expr11ast_managerE.exit
  %.1 = phi i32 [ %i.md, %bb.cj ], [ %.0, %_ZN12_GLOBAL__N_115th_rewriter_cfg8push_iteER7obj_refI4expr11ast_managerE.exit ] ; 2 uses
  %i.mp = icmp eq i32 %.1, 5
  br i1 %i.mp, label %bb.cn, label %_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteER7obj_refI4expr11ast_managerE.exit.thread

bb.cn:                                            ; preds = %_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteER7obj_refI4expr11ast_managerE.exit
  %i.mq = load ptr, ptr %i.h, align 8, !tbaa !323 ; 2 uses
  %i.mr = icmp eq ptr %i.mq, null
  br i1 %i.mr, label %_ZNK4decl13get_family_idEv.exit.thread, label %_ZNK4decl13get_family_idEv.exit

_ZNK4decl13get_family_idEv.exit:                  ; preds = %bb.cn
  %i.ms = load i32, ptr %i.mq, align 8, !tbaa !325
  %i.mt = icmp eq i32 %i.ms, -1
  br i1 %i.mt, label %_ZNK4decl13get_family_idEv.exit.thread, label %_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteER7obj_refI4expr11ast_managerE.exit.thread

_ZNK4decl13get_family_idEv.exit.thread:           ; preds = %bb.cn, %_ZNK4decl13get_family_idEv.exit
  %i.mu = call noundef zeroext i1 @_Z13is_partial_eqPK9func_decl(ptr noundef nonnull %1)
  br i1 %i.mu, label %bb.co, label %_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteER7obj_refI4expr11ast_managerE.exit.thread

bb.co:                                            ; preds = %_ZNK4decl13get_family_idEv.exit.thread
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.mw = call noundef i32 @_ZN14array_rewriter11mk_app_coreEP9func_decljPKP4exprR7obj_refIS2_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(22) %i.mv, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteER7obj_refI4expr11ast_managerE.exit.thread

_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteER7obj_refI4expr11ast_managerE.exit.thread: ; preds = %bb.cl, %bb.cm, %_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteER7obj_refI4expr11ast_managerE.exit, %_ZNK4decl13get_family_idEv.exit, %_ZNK4decl13get_family_idEv.exit.thread, %bb.co, %bb.cb
  %.035 = phi i32 [ %.3.i46, %bb.cb ], [ %i.mw, %bb.co ], [ 5, %_ZNK4decl13get_family_idEv.exit.thread ], [ 5, %_ZNK4decl13get_family_idEv.exit ], [ %.1, %_ZN12_GLOBAL__N_115th_rewriter_cfg8pull_iteER7obj_refI4expr11ast_managerE.exit ], [ %i.mo, %bb.cl ], [ 4, %bb.cm ]
  ret i32 %.035
}

declare noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 4, 6) i32 @_ZN12_GLOBAL__N_115th_rewriter_cfg8push_iteEP9func_decljPKP4exprR7obj_refIS3_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(4610) %0, ptr nofree readonly captures(address_is_null) %.24.val, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %3 = alloca %class.obj_ref, align 8             ; 11 uses
  %4 = alloca %class.obj_ref, align 8             ; 11 uses
  %5 = alloca %class.obj_ref, align 8             ; 11 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = icmp eq ptr %.24.val, null
  br i1 %i.d, label %_ZNK11ast_manager6is_iteEPK9func_decl.exit.thread, label %_ZNK4decl13get_family_idEv.exit.thread.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i:       ; preds = %bb.a
  %i.e = load i32, ptr %.24.val, align 8, !tbaa !325
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK11ast_manager6is_iteEPK9func_decl.exit, label %_ZNK11ast_manager6is_iteEPK9func_decl.exit.thread

_ZNK11ast_manager6is_iteEPK9func_decl.exit:       ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.24.val, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !381
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %bb.b, label %_ZNK11ast_manager6is_iteEPK9func_decl.exit.thread

bb.b:                                             ; preds = %_ZNK11ast_manager6is_iteEPK9func_decl.exit
  %i.j = load ptr, ptr %1, align 8, !tbaa !289    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !289  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !289  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %.val24 = load ptr, ptr %0, align 8, !tbaa !331 ; 3 uses
  store ptr null, ptr %3, align 8, !tbaa !284
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %.val24, ptr %i.o, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !284
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.val24, ptr %i.p, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !284
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.val24, ptr %i.q, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 65535
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !309  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !323  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK3app13get_family_idEv.exit.thread.i.i, label %_ZNK3app13get_family_idEv.exit.i.i

_ZNK3app13get_family_idEv.exit.i.i:               ; preds = %bb.c
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !325 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 5
  br i1 %i.ab, label %bb.d, label %_ZNK3app13get_family_idEv.exit.thread.i.i

bb.d:                                             ; preds = %_ZNK3app13get_family_idEv.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4603
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !369, !range !295, !noundef !279
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.thread25.i, label %_ZNK3app13get_family_idEv.exit.thread.i.i

_ZNK3app13get_family_idEv.exit.thread.i.i:        ; preds = %bb.d, %_ZNK3app13get_family_idEv.exit.i.i, %bb.c
  %i.af = phi i32 [ %i.aa, %_ZNK3app13get_family_idEv.exit.i.i ], [ 5, %bb.d ], [ -1, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !382
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.i, label %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.thread.i

_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.i: ; preds = %_ZNK3app13get_family_idEv.exit.thread.i.i
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4604
  %7 = load i8, ptr %6, align 4, !tbaa !370, !range !295, !noundef !279
  %8 = trunc nuw i8 %7 to i1
  br i1 %8, label %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.thread25.i, label %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.thread.i

_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.thread25.i: ; preds = %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.i, %bb.d
  %i.aj = invoke fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115th_rewriter_cfg10unify_coreEP3appP4exprR7obj_refIS3_11ast_managerES8_S8_Rb(ptr noundef nonnull align 8 dereferenceable(4610) %0, ptr noundef nonnull %i.l, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit unwind label %bb.m

_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.thread.i: ; preds = %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.i, %_ZNK3app13get_family_idEv.exit.thread.i.i, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.al, 65535
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.e, label %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread

bb.e:                                             ; preds = %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.thread.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !309 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !323 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZNK3app13get_family_idEv.exit.thread.i22.i, label %_ZNK3app13get_family_idEv.exit.i21.i

_ZNK3app13get_family_idEv.exit.i21.i:             ; preds = %bb.e
  %i.at = load i32, ptr %i.ar, align 8, !tbaa !325 ; 2 uses
  %i.au = icmp eq i32 %i.at, 5
  br i1 %i.au, label %bb.f, label %_ZNK3app13get_family_idEv.exit.thread.i22.i

bb.f:                                             ; preds = %_ZNK3app13get_family_idEv.exit.i21.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4603
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !369, !range !295, !noundef !279
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit23.thread28.i, label %_ZNK3app13get_family_idEv.exit.thread.i22.i

_ZNK3app13get_family_idEv.exit.thread.i22.i:      ; preds = %bb.f, %_ZNK3app13get_family_idEv.exit.i21.i, %bb.e
  %i.ay = phi i32 [ %i.at, %_ZNK3app13get_family_idEv.exit.i21.i ], [ 5, %bb.f ], [ -1, %bb.e ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !382
  %i.bb = icmp eq i32 %i.ay, %i.ba
  br i1 %i.bb, label %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit23.i, label %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread

_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit23.i: ; preds = %_ZNK3app13get_family_idEv.exit.thread.i22.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4604
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !370, !range !295, !noundef !279
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit23.thread28.i, label %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread

_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit23.thread28.i: ; preds = %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit23.i, %bb.f
  %i.bf = invoke fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115th_rewriter_cfg10unify_coreEP3appP4exprR7obj_refIS3_11ast_managerES8_S8_Rb(ptr noundef nonnull align 8 dereferenceable(4610) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit unwind label %bb.m

_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit: ; preds = %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.thread25.i, %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit23.thread28.i
  %.0 = phi ptr [ %i.ap, %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit23.thread28.i ], [ %i.w, %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.thread25.i ] ; 2 uses
  %.0.i = phi i1 [ %i.bf, %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit23.thread28.i ], [ %i.aj, %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.thread25.i ]
  br i1 %.0.i, label %bb.g, label %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit
  %i.bg = load i8, ptr %i.c, align 1, !tbaa !397, !range !295, !noundef !279
  %i.bh = trunc nuw i8 %i.bg to i1
  %.val21 = load ptr, ptr %0, align 8, !tbaa !331 ; 4 uses
  br i1 %i.bh, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.bi = load ptr, ptr %5, align 8, !tbaa !284
  %i.bj = load ptr, ptr %3, align 8, !tbaa !284
  %i.bk = load ptr, ptr %4, align 8, !tbaa !284
  %i.bl = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_S1_(ptr noundef nonnull align 8 dereferenceable(952) %.val21, i32 noundef 0, i32 noundef 4, ptr noundef %i.j, ptr noundef %i.bj, ptr noundef %i.bk)
          to label %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit unwind label %bb.m

_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit:        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %i.bi, ptr %i.b, align 16, !tbaa !289
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !289
  %i.bn = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %.val21, ptr noundef nonnull %.0, i32 noundef 2, ptr noundef nonnull %i.b)
          to label %bb.i unwind label %bb.m       ; 5 uses

bb.i:                                             ; preds = %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %bb.j, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !286
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !286
  br label %bb.j

bb.j:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.i
  %i.br = load ptr, ptr %2, align 8, !tbaa !284   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.br, null
  br i1 %.not.i4.i, label %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !283, !nonnull !279, !align !280
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !286
  %i.bw = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !286
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.l, label %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread.sink.split

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bt, ptr noundef nonnull %i.br)
          to label %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread.sink.split unwind label %bb.m

bb.m:                                             ; preds = %bb.r, %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit31, %bb.n, %bb.l, %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit, %bb.h, %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit23.thread28.i, %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.thread25.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.by

bb.n:                                             ; preds = %bb.g
  %i.bz = load ptr, ptr %3, align 8, !tbaa !284
  %i.ca = load ptr, ptr %4, align 8, !tbaa !284
  %i.cb = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_S1_(ptr noundef nonnull align 8 dereferenceable(952) %.val21, i32 noundef 0, i32 noundef 4, ptr noundef %i.j, ptr noundef %i.bz, ptr noundef %i.ca)
          to label %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit31 unwind label %bb.m

_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit31:      ; preds = %bb.n
  %i.cc = load ptr, ptr %5, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %i.cb, ptr %i.a, align 16, !tbaa !289
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !289
  %i.ce = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %.val21, ptr noundef nonnull %.0, i32 noundef 2, ptr noundef nonnull %i.a)
          to label %bb.o unwind label %bb.m       ; 5 uses

bb.o:                                             ; preds = %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i34 = icmp eq ptr %i.ce, null
  br i1 %.not.i34, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i35

_ZN11ast_manager7inc_refEP3ast.exit.i35:          ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !286
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !286
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i35, %bb.o
  %i.ci = load ptr, ptr %2, align 8, !tbaa !284   ; 3 uses
  %.not.i4.i36 = icmp eq ptr %i.ci, null
  br i1 %.not.i4.i36, label %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !283, !nonnull !279, !align !280
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !286
  %i.cn = add i32 %i.cm, -1                       ; 2 uses
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !286
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.r, label %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread.sink.split

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ck, ptr noundef nonnull %i.ci)
          to label %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread.sink.split unwind label %bb.m

_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread.sink.split: ; preds = %bb.q, %bb.p, %bb.r, %bb.k, %bb.j, %bb.l
  %.sink = phi ptr [ %i.bn, %bb.k ], [ %i.bn, %bb.l ], [ %i.bn, %bb.j ], [ %i.ce, %bb.r ], [ %i.ce, %bb.p ], [ %i.ce, %bb.q ]
  store ptr %.sink, ptr %2, align 8, !tbaa !284
  br label %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread

_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread: ; preds = %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread.sink.split, %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.thread.i, %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit23.i, %_ZNK3app13get_family_idEv.exit.thread.i22.i, %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit
  %.015 = phi i32 [ 5, %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit23.i ], [ 5, %_ZNK12_GLOBAL__N_115th_rewriter_cfg15is_arith_bv_appEP4expr.exit.thread.i ], [ 5, %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit ], [ 5, %_ZNK3app13get_family_idEv.exit.thread.i22.i ], [ 4, %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.cp = load ptr, ptr %5, align 8, !tbaa !284   ; 3 uses
  %.not.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread
  %i.cq = load ptr, ptr %i.q, align 8, !tbaa !283, !nonnull !279, !align !280
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !286
  %i.ct = add i32 %i.cs, -1                       ; 2 uses
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !286
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.t, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cq, ptr noundef nonnull %i.cp)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #20
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN12_GLOBAL__N_115th_rewriter_cfg5unifyEP4exprS2_RP9func_declR7obj_refIS1_11ast_managerES9_S9_Rb.exit.thread, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.cx = load ptr, ptr %4, align 8, !tbaa !284   ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i39, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit40, label %bb.v

bb.v:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.cy = load ptr, ptr %i.p, align 8, !tbaa !283, !nonnull !279, !align !280
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !286
  %i.db = add i32 %i.da, -1                       ; 2 uses
end_hunk_0
