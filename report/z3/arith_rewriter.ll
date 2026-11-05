Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/arith_rewriter?download=true
inline.NumInlined: 3767
inline.NumDeleted: 664
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 104
begin_hunk_0_@_ZN14arith_rewriter12mk_sin_valueERK8rational:bb.a

bb.gt:                                            ; preds = %bb.gs, %bb.gn
  %.pn123.pn.pn = phi { ptr, i32 } [ %.pn123.pn, %bb.gs ], [ %i.wf, %bb.gn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %bb.hh

bb.gu:                                            ; preds = %bb.gg
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.gv:                                            ; preds = %bb.gh
  %i.wk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.gw:                                            ; preds = %bb.gi
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.gx:                                            ; preds = %bb.gk, %bb.gj
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %bb.hb

bb.gy:                                            ; preds = %_ZNK10arith_util6mk_addEP4exprS1_.exit
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gm, %bb.gl
  %i.wo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %40) #22
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.pn127 = phi { ptr, i32 } [ %i.wo, %bb.gz ], [ %i.wn, %bb.gy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gx
  %.pn127.pn = phi { ptr, i32 } [ %.pn127, %bb.ha ], [ %i.wm, %bb.gx ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %39) #22
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.gw
  %.pn127.pn.pn = phi { ptr, i32 } [ %.pn127.pn, %bb.hb ], [ %i.wl, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.gv
  %.pn127.pn.pn.pn = phi { ptr, i32 } [ %.pn127.pn.pn, %bb.hc ], [ %i.wk, %bb.gv ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %38) #22
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.gu
  %.pn127.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn127.pn.pn.pn, %bb.hd ], [ %i.wj, %bb.gu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %bb.hh

bb.hf:                                            ; preds = %.invoke
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

_ZNK10arith_util9mk_uminusEP4expr.exit:           ; preds = %.invoke, %.critedge168, %_ZN10arith_util6mk_divEP4exprS1_.exit284, %_ZN10arith_util6mk_divEP4exprS1_.exit279, %_ZN10arith_util6mk_divEP4exprS1_.exit, %_ZN8rationalD2Ev.exit263, %_ZN8rationalD2Ev.exit241, %_ZN8rationalD2Ev.exit213, %_ZN8rationalD2Ev.exit198
  %.096 = phi ptr [ %i.gh, %_ZN8rationalD2Ev.exit198 ], [ %i.iz, %_ZN8rationalD2Ev.exit213 ], [ %i.nl, %_ZN8rationalD2Ev.exit241 ], [ %i.wb, %_ZN10arith_util6mk_divEP4exprS1_.exit284 ], [ %i.se, %_ZN8rationalD2Ev.exit263 ], [ %i.up, %_ZN10arith_util6mk_divEP4exprS1_.exit ], [ %i.vh, %_ZN10arith_util6mk_divEP4exprS1_.exit279 ], [ null, %.critedge168 ], [ %i.we, %.invoke ]
  %i.wq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.wq, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i287 unwind label %bb.hg

.noexc.i287:                                      ; preds = %_ZNK10arith_util9mk_uminusEP4expr.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.wq, ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
          to label %_ZN8rationalD2Ev.exit288 unwind label %bb.hg

bb.hg:                                            ; preds = %.noexc.i287, %_ZNK10arith_util9mk_uminusEP4expr.exit
  %i.wr = landingpad { ptr, i32 }
          catch ptr null
  %i.ws = extractvalue { ptr, i32 } %i.wr, 0
  call void @__clang_call_terminate(ptr %i.ws) #24
  unreachable

_ZN8rationalD2Ev.exit288:                         ; preds = %.noexc.i287
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  ret ptr %.096

bb.hh:                                            ; preds = %bb.he, %bb.hf, %bb.ga, %bb.ew, %bb.dt, %bb.gt, %bb.fp, %bb.ep, %bb.dq, %bb.cm, %bb.cj, %bb.bi, %bb.bf, %bb.aq, %bb.ah, %bb.ae
  %.pn157.pn = phi { ptr, i32 } [ %.pn157, %bb.aq ], [ %.pn155, %bb.bi ], [ %.pn153, %bb.cm ], [ %.pn101, %bb.ae ], [ %.pn149, %bb.dt ], [ %.pn143.pn.pn, %bb.ew ], [ %.pn135.pn.pn.pn.pn, %bb.ga ], [ %.pn123.pn.pn, %bb.gt ], [ %.pn119.pn.pn, %bb.fp ], [ %.pn115.pn.pn, %bb.ep ], [ %.pn111.pn.pn, %bb.dq ], [ %.pn107.pn.pn, %bb.cj ], [ %.pn105, %bb.bf ], [ %.pn127.pn.pn.pn.pn, %bb.he ], [ %.pn103, %bb.ah ], [ %i.wp, %bb.hf ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #22
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.ab
  %.pn157.pn.pn = phi { ptr, i32 } [ %.pn157.pn, %bb.hh ], [ %.pn.pn.pn.pn, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(952) ptr @_ZN13poly_rewriterI19arith_rewriter_coreE1MEv(ptr noundef nonnull align 8 dereferenceable(84) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38, !nonnull !39, !align !40
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK13poly_rewriterI19arith_rewriter_coreE14is_int_numeralEP4exprR8rational(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = call noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, 1
  %i.h = icmp eq i8 %i.g, 0
  %i.i = load i32, ptr %i.d, align 8
  %i.j = icmp eq i32 %i.i, 1
  %i.k = select i1 %i.h, i1 %i.j, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK13poly_rewriterI19arith_rewriter_coreE12is_minus_oneEP4expr(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef zeroext i1 @_ZNK10arith_util12is_minus_oneEP4expr(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %1)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN13poly_rewriterI19arith_rewriter_coreE9normalizeER8rational(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN13poly_rewriterI19arith_rewriter_coreE10mk_numeralERK8rational(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i: ; preds = %bb.a
  %i.g = load i32, ptr %i.e, align 8, !tbaa !132
  %i.h = icmp eq i32 %i.g, 5
  br i1 %i.h, label %bb.b, label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i

bb.b:                                             ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !95
  %i.k = icmp eq i32 %i.j, 1
  br label %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i

_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i:  ; preds = %bb.b, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i, %bb.a
  %i.l = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i ], [ %i.k, %bb.b ], [ false, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !113  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit

bb.c:                                             ; preds = %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i
  tail call void @_ZN10arith_util11init_pluginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %.pre.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !113
  br label %_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit

_ZN19arith_rewriter_core10mk_numeralERK8rationalP4sort.exit: ; preds = %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i, %bb.c
  %i.o = phi ptr [ %.pre.i.i.i.i, %bb.c ], [ %i.n, %_ZNK17arith_recognizers6is_intEPK4sort.exit.i.i ]
  %i.p = tail call noundef ptr @_ZN17arith_decl_plugin10mk_numeralERK8rationalb(ptr noundef nonnull align 8 dereferenceable(457) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %i.l)
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK13poly_rewriterI19arith_rewriter_coreE13add_decl_kindEv(ptr noundef nonnull align 8 dereferenceable(84) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK13poly_rewriterI19arith_rewriter_coreE13mul_decl_kindEv(ptr noundef nonnull align 8 dereferenceable(84) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 9
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK13poly_rewriterI19arith_rewriter_coreE9use_powerEv(ptr noundef nonnull align 8 dereferenceable(84) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %2 = load i8, ptr %1, align 1, !tbaa !76, !range !86, !noundef !39
  %3 = trunc nuw i8 %2 to i1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !86
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  %4 = select i1 %3, i1 %i.d, i1 false
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK13poly_rewriterI19arith_rewriter_coreE15power_decl_kindEv(ptr noundef nonnull align 8 dereferenceable(84) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 22
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_Z9is_app_ofPK4exprii.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_Z9is_app_ofPK4exprii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !132
  %i.j = icmp eq i32 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 22
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br label %_Z9is_app_ofPK4exprii.exit

_Z9is_app_ofPK4exprii.exit:                       ; preds = %bb.a, %bb.b, %bb.c
  %i.o = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.n, %bb.c ]
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN13poly_rewriterI19arith_rewriter_coreE14get_power_bodyEP4exprR8rational(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %3 = alloca %class.rational, align 8            ; 11 uses
  %4 = alloca %class.rational, align 8            ; 14 uses
  %5 = alloca %class.rational, align 8            ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !91   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr.exit.thread, label %_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr.exit

_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr.exit: ; preds = %bb.b
  %i.j = load i32, ptr %i.i, align 8, !tbaa !132
  %i.k = icmp eq i32 %i.j, 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 22
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %bb.d, label %_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr.exit.thread

_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, -4
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr null, ptr %i.s, align 8, !tbaa !121
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 1, ptr %i.t, align 8, !tbaa !120
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, -4
  store i8 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr null, ptr %i.x, align 8, !tbaa !121
  %i.y = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128
  store i32 1, ptr %3, align 8, !tbaa !120
  store i8 %i.r, ptr %i.p, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
  %i.z = load i8, ptr %i.u, align 4               ; 2 uses
  %i.aa = load i32, ptr %2, align 8, !tbaa !108
  %i.ab = load i32, ptr %3, align 8, !tbaa !108
  store i32 %i.ab, ptr %2, align 8, !tbaa !108
  store i32 %i.aa, ptr %3, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !212
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !212
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !212
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !212
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4             ; 2 uses
  %i.ah = load i8, ptr %i.p, align 4              ; 2 uses
  %i.ai = and i8 %i.ag, -4
  %i.aj = and i8 %i.ah, -4
  %i.ak = and i8 %i.ah, 3
  %i.al = or disjoint i8 %i.ak, %i.ai
  store i8 %i.al, ptr %i.af, align 4
  %i.am = and i8 %i.ag, 3
  %i.an = or disjoint i8 %i.aj, %i.am
  store i8 %i.an, ptr %i.p, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !108
  store i32 1, ptr %i.ao, align 8, !tbaa !108
  store i32 %i.ap, ptr %i.t, align 8, !tbaa !108
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !212
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !212
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !212
  store ptr %i.ar, ptr %i.x, align 8, !tbaa !212
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.au = load i8, ptr %i.at, align 4             ; 2 uses
  %i.av = and i8 %i.z, 2
  %i.aw = and i8 %i.au, -4
  %i.ax = or disjoint i8 %i.aw, %i.av
  %i.ay = and i8 %i.z, -4
  store i8 %i.ax, ptr %i.at, align 4
  %i.az = and i8 %i.au, 3
  %i.ba = or disjoint i8 %i.az, %i.ay
  store i8 %i.ba, ptr %i.u, align 4
  %i.bb = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr.exit.thread
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr.exit.thread
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #24
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.q

bb.d:                                             ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr.exit
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !97
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bi = call noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %i.bi, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 4
  %i.bm = and i8 %i.bl, 1
  %i.bn = icmp eq i8 %i.bm, 0
  %i.bo = load i32, ptr %i.bj, align 8
  %i.bp = icmp eq i32 %i.bo, 1
  %i.bq = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %i.bq, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.bs = load i8, ptr %i.br, align 4
  %i.bt = and i8 %i.bs, -4
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.bu, align 8, !tbaa !121
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i32 1, ptr %i.bv, align 8, !tbaa !120
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.bx = load i8, ptr %i.bw, align 4
  %i.by = and i8 %i.bx, -4
  store i8 %i.by, ptr %i.bw, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.bz, align 8, !tbaa !121
  %i.ca = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128
  store i32 1, ptr %4, align 8, !tbaa !120
  store i8 %i.bt, ptr %i.br, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.bv)
  store i32 1, ptr %i.bv, align 8, !tbaa !120
  %i.cb = load i8, ptr %i.bw, align 4
  %i.cc = and i8 %i.cb, -2
  store i8 %i.cc, ptr %i.bw, align 4
  %i.cd = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128 ; 2 uses
  %i.ce = load i8, ptr %i.bk, align 4
  %i.cf = and i8 %i.ce, 1
  %i.cg = icmp eq i8 %i.cf, 0
  %i.ch = load i32, ptr %i.bj, align 8
  %i.ci = icmp eq i32 %i.ch, 1
  %i.cj = select i1 %i.cg, i1 %i.ci, i1 false
  br i1 %i.cj, label %bb.g, label %bb.k

end_hunk_0
begin_hunk_1_@_ZN13poly_rewriterI19arith_rewriter_coreE17mk_nflat_mul_coreEjPKP4exprR7obj_refIS2_11ast_managerE:bb.a

bb.bz:                                            ; preds = %.lr.ph418
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !137
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i.i.i.i.i203 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i.i.i.i.i203, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204

_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204: ; preds = %bb.bz
  %i.np = load i32, ptr %i.no, align 8, !tbaa !132
  %i.nq = icmp eq i32 %i.np, 5
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.ns = load i32, ptr %i.nr, align 4
  %i.nt = icmp eq i32 %i.ns, 0
  %i.nu = select i1 %i.nq, i1 %i.nt, i1 false
  br i1 %i.nu, label %bb.ch, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread

_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread: ; preds = %bb.bz, %.lr.ph418, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204
  %.not = icmp eq ptr %.095414, null
  br i1 %.not, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread
  %i.nv = load ptr, ptr %4, align 8, !tbaa !245, !nonnull !39, !align !40
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 82
  %i.nx = load i8, ptr %i.nw, align 2, !tbaa !87, !range !86, !noundef !39
  %i.ny = trunc nuw i8 %i.nx to i1
  br i1 %i.ny, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.nz = invoke noundef zeroext i1 @_Z2ltP3astS0_(ptr noundef nonnull %i.ng, ptr noundef nonnull %.095414)
          to label %_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_ltclEP4exprS4_.exit unwind label %.loopexit.split-lp395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %bb.ca
  %i.oa = invoke noundef i32 @_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_lt7ordinalEP4expr(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.ng)
          to label %.noexc206 unwind label %.loopexit.split-lp395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc206:                                        ; preds = %bb.cc
  %i.ob = invoke noundef i32 @_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_lt7ordinalEP4expr(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.095414)
          to label %.noexc207 unwind label %.loopexit.split-lp395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc207:                                        ; preds = %.noexc206
  %i.oc = icmp slt i32 %i.oa, %i.ob
  br label %_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_ltclEP4exprS4_.exit

_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_ltclEP4exprS4_.exit: ; preds = %.noexc207, %bb.cb
  %.0.i = phi i1 [ %i.oc, %.noexc207 ], [ %i.nz, %bb.cb ]
  %not..0.i = xor i1 %.0.i, true
  %spec.select144 = select i1 %not..0.i, i1 %.092415, i1 false
  %.pre = load i32, ptr %i.my, align 8, !tbaa !111
  %.pre482 = load i32, ptr %i.mz, align 4, !tbaa !112
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_ltclEP4exprS4_.exit, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread
  %i.od = phi i32 [ %i.nd, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread ], [ %.pre482, %_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_ltclEP4exprS4_.exit ] ; 3 uses
  %i.oe = phi i32 [ %i.ne, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread ], [ %.pre, %_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_ltclEP4exprS4_.exit ] ; 2 uses
  %.193 = phi i1 [ %.092415, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204.thread ], [ %spec.select144, %_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_ltclEP4exprS4_.exit ]
  %.not.i208 = icmp ult i32 %i.oe, %i.od
  br i1 %.not.i208, label %._crit_edge.i222, label %bb.ce

._crit_edge.i222:                                 ; preds = %bb.cd
  %.pre.i223 = load ptr, ptr %10, align 8, !tbaa !110
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.of = shl i32 %i.od, 1                        ; 3 uses
  %i.og = zext i32 %i.of to i64
  %i.oh = shl nuw nsw i64 %i.og, 3
  %i.oi = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.oh)
          to label %.noexc224 unwind label %.loopexit.split-lp395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc224:                                        ; preds = %bb.ce
  %i.oj = load i32, ptr %i.my, align 8, !tbaa !111 ; 4 uses
  %.not.i.i209 = icmp eq i32 %i.oj, 0
  %.pre.i.i210 = load ptr, ptr %10, align 8, !tbaa !110 ; 10 uses
  br i1 %.not.i.i209, label %._crit_edge.i.i216, label %.lr.ph.i.i211

.lr.ph.i.i211:                                    ; preds = %.noexc224
  %.pre.i.i210594 = ptrtoaddr ptr %.pre.i.i210 to i64
  %i.ok = ptrtoaddr ptr %i.oi to i64
  %wide.trip.count.i.i212 = zext i32 %i.oj to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.oj, 4
  %i.ol = sub i64 %.pre.i.i210594, %i.ok
  %diff.check = icmp ugt i64 %i.ol, -32
  %or.cond759.a = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond759.a, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i211
  %n.vec = and i64 %wide.trip.count.i.i212, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %index ; 2 uses
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i210, i64 %index ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %wide.load = load <2 x ptr>, ptr %i.on, align 8, !tbaa !97
  %wide.load595 = load <2 x ptr>, ptr %i.oo, align 8, !tbaa !97
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  store <2 x ptr> %wide.load, ptr %i.om, align 8, !tbaa !97
  store <2 x ptr> %wide.load595, ptr %i.op, align 8, !tbaa !97
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oq = icmp eq i64 %index.next, %n.vec
  br i1 %i.oq, label %middle.block, label %vector.body, !llvm.loop !689

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i212
  br i1 %cmp.n, label %._crit_edge.i.i216, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i211, %middle.block
  %indvars.iv.i.i213.ph = phi i64 [ 0, %.lr.ph.i.i211 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i212, 3  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i213.prol = phi i64 [ %indvars.iv.next.i.i214.prol, %scalar.ph.prol ], [ %indvars.iv.i.i213.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %indvars.iv.i.i213.prol
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i210, i64 %indvars.iv.i.i213.prol
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !97
  store ptr %i.ot, ptr %i.or, align 8, !tbaa !97
  %indvars.iv.next.i.i214.prol = add nuw nsw i64 %indvars.iv.i.i213.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !690

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i213.unr = phi i64 [ %indvars.iv.i.i213.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i214.prol, %scalar.ph.prol ]
  %i.ou = sub nsw i64 %indvars.iv.i.i213.ph, %wide.trip.count.i.i212
  %i.ov = icmp ugt i64 %i.ou, -4
  br i1 %i.ov, label %._crit_edge.i.i216, label %scalar.ph

._crit_edge.i.i216:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc224
  %.not.i.i.i217 = icmp eq ptr %.pre.i.i210, %i.mx
  %i.ow = icmp eq ptr %.pre.i.i210, null
  %or.cond.i.i.i218 = or i1 %.not.i.i.i217, %i.ow
  br i1 %or.cond.i.i.i218, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i220, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.i.i216
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i210)
          to label %.noexc225 unwind label %.loopexit.split-lp395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc225:                                        ; preds = %bb.cf
  %.pre2.pre.i219 = load i32, ptr %i.my, align 8, !tbaa !111
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i220

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i213 = phi i64 [ %indvars.iv.next.i.i214.3, %scalar.ph ], [ %indvars.iv.i.i213.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %indvars.iv.i.i213
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i210, i64 %indvars.iv.i.i213
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !97
  store ptr %i.oz, ptr %i.ox, align 8, !tbaa !97
  %indvars.iv.next.i.i214 = add nuw nsw i64 %indvars.iv.i.i213, 1 ; 2 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %indvars.iv.next.i.i214
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i210, i64 %indvars.iv.next.i.i214
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !97
  store ptr %i.pc, ptr %i.pa, align 8, !tbaa !97
  %indvars.iv.next.i.i214.1 = add nuw nsw i64 %indvars.iv.i.i213, 2 ; 2 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %indvars.iv.next.i.i214.1
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i210, i64 %indvars.iv.next.i.i214.1
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !97
  store ptr %i.pf, ptr %i.pd, align 8, !tbaa !97
  %indvars.iv.next.i.i214.2 = add nuw nsw i64 %indvars.iv.i.i213, 3 ; 2 uses
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %indvars.iv.next.i.i214.2
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i210, i64 %indvars.iv.next.i.i214.2
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !97
  store ptr %i.pi, ptr %i.pg, align 8, !tbaa !97
  %indvars.iv.next.i.i214.3 = add nuw nsw i64 %indvars.iv.i.i213, 4 ; 2 uses
  %exitcond.not.i.i215.3 = icmp eq i64 %indvars.iv.next.i.i214.3, %wide.trip.count.i.i212
  br i1 %exitcond.not.i.i215.3, label %._crit_edge.i.i216, label %scalar.ph, !llvm.loop !691

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i220:   ; preds = %.noexc225, %._crit_edge.i.i216
  %.pre2.i221 = phi i32 [ %i.oj, %._crit_edge.i.i216 ], [ %.pre2.pre.i219, %.noexc225 ]
  store ptr %i.oi, ptr %10, align 8, !tbaa !110
  store i32 %i.of, ptr %i.mz, align 4, !tbaa !112
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i220, %._crit_edge.i222
  %i.pj = phi i32 [ %i.od, %._crit_edge.i222 ], [ %i.of, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i220 ]
  %i.pk = phi i32 [ %i.oe, %._crit_edge.i222 ], [ %.pre2.i221, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i220 ] ; 2 uses
  %i.pl = phi ptr [ %.pre.i223, %._crit_edge.i222 ], [ %i.oi, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i220 ] ; 2 uses
  %i.pm = zext i32 %i.pk to i64
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %i.pm
  store ptr %i.ng, ptr %i.pn, align 8, !tbaa !97
  %i.po = add i32 %i.pk, 1                        ; 2 uses
  store i32 %i.po, ptr %i.my, align 8, !tbaa !111
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204, %bb.cg
  %i.pp = phi ptr [ %i.pl, %bb.cg ], [ %i.nc, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204 ] ; 5 uses
  %i.pq = phi i32 [ %i.pj, %bb.cg ], [ %i.nd, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204 ]
  %i.pr = phi i32 [ %i.po, %bb.cg ], [ %i.ne, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204 ] ; 4 uses
  %.196 = phi ptr [ %i.ng, %bb.cg ], [ %.095414, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204 ]
  %.294 = phi i1 [ %.193, %bb.cg ], [ %.092415, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit204 ] ; 3 uses
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge419, label %.lr.ph418, !llvm.loop !692

bb.ci:                                            ; preds = %._crit_edge419.thread, %._crit_edge419
  %i.ps = phi ptr [ %i.mx, %._crit_edge419.thread ], [ %i.pp, %._crit_edge419 ] ; 2 uses
  %i.pt = phi i32 [ 0, %._crit_edge419.thread ], [ %i.pr, %._crit_edge419 ]
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 33
  %16 = load i8, ptr %i.pu, align 1, !tbaa !76, !range !86, !noundef !39
  %17 = trunc nuw i8 %16 to i1
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pv = load i8, ptr %18, align 8, !range !86
  %i.pw = trunc nuw i8 %i.pv to i1
  %not. = xor i1 %17, true
  %19 = select i1 %not., i1 true, i1 %i.pw
  br i1 %19, label %bb.co, label %.thread379

.loopexit.split-lp395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cb, %bb.cc, %.noexc206, %bb.ce, %bb.cf, %bb.cn, %bb.cm, %bb.cl, %.thread379, %bb.ck
  %lpad.loopexit.split-lp782 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.loopexit.split-lp400

bb.cj:                                            ; preds = %._crit_edge419
  br i1 %.294, label %.thread379, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.px = zext i32 %i.pr to i64
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.px
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8, !tbaa !238
  invoke void @_ZSt4sortIPP4exprN13poly_rewriterI19arith_rewriter_coreE6mon_ltEEvT_S7_T0_(ptr noundef %i.pp, ptr noundef %i.py, ptr %.sroa.0.0.copyload)
          to label %..thread379_crit_edge unwind label %.loopexit.split-lp395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

..thread379_crit_edge:                            ; preds = %bb.ck
  %.pre483 = load i32, ptr %i.my, align 8, !tbaa !111
  %.pre484 = load ptr, ptr %10, align 8, !tbaa !110
  br label %.thread379

.thread379:                                       ; preds = %._crit_edge419.thread, %..thread379_crit_edge, %bb.ci, %bb.cj
  %i.pz = phi ptr [ %.pre484, %..thread379_crit_edge ], [ %i.ps, %bb.ci ], [ %i.pp, %bb.cj ], [ %i.mx, %._crit_edge419.thread ]
  %i.qa = phi i32 [ %.pre483, %..thread379_crit_edge ], [ %i.pt, %bb.ci ], [ %i.pr, %bb.cj ], [ 0, %._crit_edge419.thread ]
  %i.qb = invoke noundef ptr @_ZN13poly_rewriterI19arith_rewriter_coreE10mk_mul_appEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(84) %0, i32 noundef %i.qa, ptr noundef %i.pz)
          to label %bb.cl unwind label %.loopexit.split-lp395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %.thread379
  %i.qc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.qb)
          to label %bb.cm unwind label %.loopexit.split-lp395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cm:                                            ; preds = %bb.cl
  %i.qd = load ptr, ptr %3, align 8, !tbaa !101
  %i.qe = invoke noundef ptr @_ZN13poly_rewriterI19arith_rewriter_coreE10mk_mul_appERK8rationalP4expr(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.qd)
          to label %bb.cn unwind label %.loopexit.split-lp395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cn:                                            ; preds = %bb.cm
  %i.qf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.qe)
          to label %._crit_edge485 unwind label %.loopexit.split-lp395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge485:                                   ; preds = %bb.cn
  %.pre486.a = load ptr, ptr %10, align 8, !tbaa !110
  br label %bb.co

bb.co:                                            ; preds = %._crit_edge485, %bb.ci
  %20 = phi ptr [ %i.ps, %bb.ci ], [ %.pre486.a, %._crit_edge485 ] ; 3 uses
  %.1 = phi i32 [ 5, %bb.ci ], [ 4, %._crit_edge485 ]
  %.not.i.i.i227 = icmp eq ptr %20, %i.mx
  %i.qg = icmp eq ptr %20, null
  %or.cond.i.i.i228 = or i1 %.not.i.i.i227, %i.qg
  br i1 %or.cond.i.i.i228, label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit229, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %20)
          to label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit229 unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.qh = landingpad { ptr, i32 }
          catch ptr null
  %i.qi = extractvalue { ptr, i32 } %i.qh, 0
  call void @__clang_call_terminate(ptr %i.qi) #24
  unreachable

_ZN6bufferIP4exprLb0ELj16EED2Ev.exit229:          ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ek

bb.cr:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.qj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.qj, ptr %11, align 8, !tbaa !247
  %i.qk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 10 uses
  store i32 0, ptr %i.qk, align 8, !tbaa !717
  %i.ql = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 5 uses
  store i32 16, ptr %i.ql, align 4, !tbaa !718
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.qm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.qm, ptr %12, align 8, !tbaa !247
  %i.qn = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  store i32 0, ptr %i.qn, align 8, !tbaa !717
  %i.qo = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 3 uses
  store i32 16, ptr %i.qo, align 4, !tbaa !718
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.qp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.qp, ptr %13, align 8, !tbaa !251
  %i.qq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 10 uses
  store i32 0, ptr %i.qq, align 8, !tbaa !719
  %i.qr = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 5 uses
  store i32 16, ptr %i.qr, align 4, !tbaa !720
  br i1 %.not436, label %._crit_edge424, label %.lr.ph423.preheader

.lr.ph423.preheader:                              ; preds = %bb.cr
  %wide.trip.count465 = zext i32 %1 to i64
  br label %.lr.ph423

.lr.ph423:                                        ; preds = %.lr.ph423.preheader, %bb.di
  %indvars.iv462 = phi i64 [ 0, %.lr.ph423.preheader ], [ %indvars.iv.next463, %bb.di ] ; 2 uses
  %i.qs = load i32, ptr %i.qn, align 8, !tbaa !717 ; 2 uses
  %i.qt = load i32, ptr %i.qo, align 4, !tbaa !718 ; 2 uses
  %.not.i230 = icmp ult i32 %i.qs, %i.qt
  br i1 %.not.i230, label %._crit_edge.i243, label %bb.cs

._crit_edge.i243:                                 ; preds = %.lr.ph423
  %.pre.i244 = load ptr, ptr %12, align 8, !tbaa !247
  br label %bb.cu

bb.cs:                                            ; preds = %.lr.ph423
  %i.qu = shl i32 %i.qt, 1                        ; 2 uses
  %i.qv = zext i32 %i.qu to i64
  %i.qw = shl nuw nsw i64 %i.qv, 2
  %i.qx = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.qw)
          to label %.noexc245 unwind label %bb.dh ; 9 uses

.noexc245:                                        ; preds = %bb.cs
  %i.qy = load i32, ptr %i.qn, align 8, !tbaa !717 ; 4 uses
  %.not.i.i231 = icmp eq i32 %i.qy, 0
  %.pre.i.i232 = load ptr, ptr %12, align 8, !tbaa !247 ; 10 uses
  br i1 %.not.i.i231, label %._crit_edge.i.i238, label %.lr.ph.i.i233

.lr.ph.i.i233:                                    ; preds = %.noexc245
  %.pre.i.i232671 = ptrtoaddr ptr %.pre.i.i232 to i64
  %i.qz = ptrtoaddr ptr %i.qx to i64
  %wide.trip.count.i.i234 = zext i32 %i.qy to i64 ; 5 uses
  %min.iters.check673 = icmp ult i32 %i.qy, 8
  %i.ra = sub i64 %.pre.i.i232671, %i.qz
  %diff.check675 = icmp ugt i64 %i.ra, -32
  %or.cond760.a = select i1 %min.iters.check673, i1 true, i1 %diff.check675
  br i1 %or.cond760.a, label %scalar.ph672.preheader, label %vector.ph676

vector.ph676:                                     ; preds = %.lr.ph.i.i233
  %n.vec677 = and i64 %wide.trip.count.i.i234, 4294967288 ; 3 uses
  br label %vector.body678

vector.body678:                                   ; preds = %vector.body678, %vector.ph676
  %index679 = phi i64 [ 0, %vector.ph676 ], [ %index.next682, %vector.body678 ] ; 3 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %index679 ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i232, i64 %index679 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %wide.load680.a = load <4 x i32>, ptr %i.rc, align 4, !tbaa !108
  %wide.load681 = load <4 x i32>, ptr %i.rd, align 4, !tbaa !108
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  store <4 x i32> %wide.load680.a, ptr %i.rb, align 4, !tbaa !108
  store <4 x i32> %wide.load681, ptr %i.re, align 4, !tbaa !108
  %index.next682 = add nuw i64 %index679, 8       ; 2 uses
  %i.rf = icmp eq i64 %index.next682, %n.vec677
  br i1 %i.rf, label %middle.block683, label %vector.body678, !llvm.loop !693

middle.block683:                                  ; preds = %vector.body678
  %cmp.n684 = icmp eq i64 %n.vec677, %wide.trip.count.i.i234
  br i1 %cmp.n684, label %._crit_edge.i.i238, label %scalar.ph672.preheader

scalar.ph672.preheader:                           ; preds = %.lr.ph.i.i233, %middle.block683
  %indvars.iv.i.i235.ph = phi i64 [ 0, %.lr.ph.i.i233 ], [ %n.vec677, %middle.block683 ] ; 3 uses
  %xtraiter788 = and i64 %wide.trip.count.i.i234, 3 ; 2 uses
  %lcmp.mod789.not = icmp eq i64 %xtraiter788, 0
  br i1 %lcmp.mod789.not, label %scalar.ph672.prol.loopexit, label %scalar.ph672.prol

scalar.ph672.prol:                                ; preds = %scalar.ph672.preheader, %scalar.ph672.prol
  %indvars.iv.i.i235.prol = phi i64 [ %indvars.iv.next.i.i236.prol, %scalar.ph672.prol ], [ %indvars.iv.i.i235.ph, %scalar.ph672.preheader ] ; 3 uses
  %prol.iter790 = phi i64 [ %prol.iter790.next, %scalar.ph672.prol ], [ 0, %scalar.ph672.preheader ]
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.i.i235.prol
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i232, i64 %indvars.iv.i.i235.prol
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !108
  store i32 %i.ri, ptr %i.rg, align 4, !tbaa !108
  %indvars.iv.next.i.i236.prol = add nuw nsw i64 %indvars.iv.i.i235.prol, 1 ; 2 uses
  %prol.iter790.next = add i64 %prol.iter790, 1   ; 2 uses
  %prol.iter790.cmp.not = icmp eq i64 %prol.iter790.next, %xtraiter788
  br i1 %prol.iter790.cmp.not, label %scalar.ph672.prol.loopexit, label %scalar.ph672.prol, !llvm.loop !694

scalar.ph672.prol.loopexit:                       ; preds = %scalar.ph672.prol, %scalar.ph672.preheader
  %indvars.iv.i.i235.unr = phi i64 [ %indvars.iv.i.i235.ph, %scalar.ph672.preheader ], [ %indvars.iv.next.i.i236.prol, %scalar.ph672.prol ]
  %i.rj = sub nsw i64 %indvars.iv.i.i235.ph, %wide.trip.count.i.i234
  %i.rk = icmp ugt i64 %i.rj, -4
  br i1 %i.rk, label %._crit_edge.i.i238, label %scalar.ph672

._crit_edge.i.i238:                               ; preds = %scalar.ph672.prol.loopexit, %scalar.ph672, %middle.block683, %.noexc245
  %.not.i.i.i239 = icmp eq ptr %.pre.i.i232, %i.qm
  %i.rl = icmp eq ptr %.pre.i.i232, null
  %or.cond.i.i.i240 = or i1 %.not.i.i.i239, %i.rl
  br i1 %or.cond.i.i.i240, label %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i, label %bb.ct

bb.ct:                                            ; preds = %._crit_edge.i.i238
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i232)
          to label %.noexc246 unwind label %bb.dh

.noexc246:                                        ; preds = %bb.ct
  %.pre2.pre.i241 = load i32, ptr %i.qn, align 8, !tbaa !717
  br label %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i

scalar.ph672:                                     ; preds = %scalar.ph672.prol.loopexit, %scalar.ph672
  %indvars.iv.i.i235 = phi i64 [ %indvars.iv.next.i.i236.3, %scalar.ph672 ], [ %indvars.iv.i.i235.unr, %scalar.ph672.prol.loopexit ] ; 6 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.i.i235
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i232, i64 %indvars.iv.i.i235
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !108
  store i32 %i.ro, ptr %i.rm, align 4, !tbaa !108
  %indvars.iv.next.i.i236 = add nuw nsw i64 %indvars.iv.i.i235, 1 ; 2 uses
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next.i.i236
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i232, i64 %indvars.iv.next.i.i236
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !108
  store i32 %i.rr, ptr %i.rp, align 4, !tbaa !108
  %indvars.iv.next.i.i236.1 = add nuw nsw i64 %indvars.iv.i.i235, 2 ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next.i.i236.1
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i232, i64 %indvars.iv.next.i.i236.1
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !108
  store i32 %i.ru, ptr %i.rs, align 4, !tbaa !108
  %indvars.iv.next.i.i236.2 = add nuw nsw i64 %indvars.iv.i.i235, 3 ; 2 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next.i.i236.2
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i232, i64 %indvars.iv.next.i.i236.2
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !108
  store i32 %i.rx, ptr %i.rv, align 4, !tbaa !108
  %indvars.iv.next.i.i236.3 = add nuw nsw i64 %indvars.iv.i.i235, 4 ; 2 uses
  %exitcond.not.i.i237.3 = icmp eq i64 %indvars.iv.next.i.i236.3, %wide.trip.count.i.i234
  br i1 %exitcond.not.i.i237.3, label %._crit_edge.i.i238, label %scalar.ph672, !llvm.loop !695

_ZN6bufferIjLb0ELj16EE6expandEv.exit.i:           ; preds = %.noexc246, %._crit_edge.i.i238
  %.pre2.i242 = phi i32 [ %i.qy, %._crit_edge.i.i238 ], [ %.pre2.pre.i241, %.noexc246 ]
  store ptr %i.qx, ptr %12, align 8, !tbaa !247
  store i32 %i.qu, ptr %i.qo, align 4, !tbaa !718
  br label %bb.cu

bb.cu:                                            ; preds = %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i, %._crit_edge.i243
  %i.ry = phi i32 [ %i.qs, %._crit_edge.i243 ], [ %.pre2.i242, %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i ]
  %i.rz = phi ptr [ %.pre.i244, %._crit_edge.i243 ], [ %i.qx, %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i ]
  %i.sa = zext i32 %i.ry to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.sa
  store i32 0, ptr %i.sb, align 4, !tbaa !108
  %i.sc = load i32, ptr %i.qn, align 8, !tbaa !717
  %i.sd = add i32 %i.sc, 1
  store i32 %i.sd, ptr %i.qn, align 8, !tbaa !717
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv462 ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !97 ; 4 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.sh = load i32, ptr %i.sg, align 4
  %i.si = and i32 %i.sh, 65535
  %i.sj = icmp eq i32 %i.si, 0
  br i1 %i.sj, label %bb.cv, label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_addEP4expr.exit248.thread

bb.cv:                                            ; preds = %bb.cu
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !137
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i.i247 = icmp eq ptr %i.sn, null
  br i1 %.not.i.i.i.i247, label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_addEP4expr.exit248.thread, label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_addEP4expr.exit248

_ZNK13poly_rewriterI19arith_rewriter_coreE6is_addEP4expr.exit248: ; preds = %bb.cv
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !132
  %i.sp = icmp eq i32 %i.so, 5
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  %i.sr = load i32, ptr %i.sq, align 4
  %i.ss = icmp eq i32 %i.sr, 6
  %i.st = select i1 %i.sp, i1 %i.ss, i1 false
  br i1 %i.st, label %bb.cw, label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_addEP4expr.exit248.thread

end_hunk_1
begin_hunk_2_@_ZN13poly_rewriterI19arith_rewriter_coreE10merge_mulsEP4exprS3_:.lr.ph173.preheader
  %i.ij = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ii, i32 noundef 5, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %i.a)
          to label %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_add_appEjPKP4expr.exit unwind label %bb.u

_ZN13poly_rewriterI19arith_rewriter_coreE10mk_add_appEjPKP4expr.exit: ; preds = %bb.v
  %i.ik = load ptr, ptr %3, align 8, !tbaa !110   ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.hd
  store ptr %i.ij, ptr %i.il, align 8, !tbaa !97
  %i.im = add i32 %.049.lcssa, 1
  %i.in = invoke noundef ptr @_ZN13poly_rewriterI19arith_rewriter_coreE10mk_mul_appEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(84) %0, i32 noundef %i.im, ptr noundef nonnull %i.ik)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %_ZN13poly_rewriterI19arith_rewriter_coreE10mk_add_appEjPKP4expr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.io = load ptr, ptr %4, align 8, !tbaa !110   ; 3 uses
  %.not.i.i.i150 = icmp eq ptr %i.io, %i.e
  %i.ip = icmp eq ptr %i.io, null
  %or.cond.i.i.i151 = or i1 %.not.i.i.i150, %i.ip
  br i1 %or.cond.i.i.i151, label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.io)
          to label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #24
  unreachable

_ZN6bufferIP4exprLb0ELj16EED2Ev.exit:             ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.is = load ptr, ptr %3, align 8, !tbaa !110   ; 3 uses
  %.not.i.i.i152 = icmp eq ptr %i.is, %i.b
  %i.it = icmp eq ptr %i.is, null
  %or.cond.i.i.i153 = or i1 %.not.i.i.i152, %i.it
  br i1 %or.cond.i.i.i153, label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit154, label %bb.z

bb.z:                                             ; preds = %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.is)
          to label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit154 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #24
  unreachable

_ZN6bufferIP4exprLb0ELj16EED2Ev.exit154:          ; preds = %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %i.in

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.u
  %.pn68.pn = phi { ptr, i32 } [ %i.ih, %bb.u ], [ %lpad.loopexit.split-lp320, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn68.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_mapI4exprjED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !228    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN14core_hashtableIN7obj_mapI4exprjE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN14core_hashtableIN7obj_mapI4exprjE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZN14core_hashtableIN7obj_mapI4exprjE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6bufferIbLb1ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !254    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.a, %i.b
  %i.c = icmp eq ptr %i.a, null
  %or.cond.i.i = or i1 %.not.i.i, %i.c
  br i1 %or.cond.i.i, label %_ZN6bufferIbLb1ELj16EE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN6bufferIbLb1ELj16EE7destroyEv.exit unwind label %bb.c

_ZN6bufferIbLb1ELj16EE7destroyEv.exit:            ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4exprR8rationalRS3_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !91   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit.thread, label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit

_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit: ; preds = %bb.b
  %i.j = load i32, ptr %i.i, align 8, !tbaa !132
  %i.k = icmp eq i32 %i.j, 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 9
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %bb.c, label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit.thread

bb.c:                                             ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !139
  %.not = icmp eq i32 %i.q, 2
  br i1 %.not, label %bb.d, label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !97
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.u = call noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %i.u, label %bb.e, label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
  store ptr %i.w, ptr %3, align 8, !tbaa !97
  br label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit.thread

_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit.thread: ; preds = %bb.b, %bb.a, %bb.d, %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit, %bb.c, %bb.e
  %.0 = phi i1 [ false, %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit ], [ true, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK13poly_rewriterI19arith_rewriter_coreE6mon_lt7ordinalEP4expr(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %2 = alloca %class.rational, align 8            ; 13 uses
  %3 = alloca %class.rational, align 8            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store i32 0, ptr %2, align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, -4
  store i8 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !121
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 1, ptr %i.f, align 8, !tbaa !120
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, -4
  store i8 %i.i, ptr %i.g, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.j, align 8, !tbaa !121
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 65535                      ; 2 uses
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !137
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !91   ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.sink.split, label %_Z18is_essentially_varP4expri.exit

_Z18is_essentially_varP4expri.exit:               ; preds = %bb.b
  %i.t = load i32, ptr %i.r, align 8, !tbaa !132
  %.not39 = icmp eq i32 %i.t, 5
  %i.u = icmp eq i32 %i.m, 0
  %or.cond = and i1 %.not39, %i.u
  br i1 %or.cond, label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit, label %.sink.split

bb.c:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit: ; preds = %_Z18is_essentially_varP4expri.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, 9
  br i1 %i.y, label %bb.d, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit27

bb.d:                                             ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 65535
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !137
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split, label %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit

_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit: ; preds = %bb.e
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !132
  %i.ak = icmp eq i32 %i.aj, 5
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %.sink.split.sink.split, label %.sink.split

_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit27: ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.o, label %.thread33

.thread33:                                        ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit27
  %i.as = load ptr, ptr %0, align 8, !tbaa !245, !nonnull !39, !align !40 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.as, i64 33
  %5 = load i8, ptr %4, align 1, !tbaa !76, !range !86, !noundef !39
  %6 = trunc nuw i8 %5 to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i8, ptr %i.at, align 8, !range !86
  %i.av = trunc nuw i8 %i.au to i1
  %not. = xor i1 %6, true
  %7 = select i1 %not., i1 true, i1 %i.av
  br i1 %7, label %.sink.split, label %_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr.exit

_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr.exit: ; preds = %.thread33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp eq i32 %i.ax, 22
  br i1 %i.ay, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !97
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bc = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %i.bc, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN8rationalC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bd = invoke noundef zeroext i1 @_ZgtRK8rationalS1_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.be, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %.critedge unwind label %bb.k

bb.k:                                             ; preds = %.noexc.i, %bb.j
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #24
  unreachable

.critedge:                                        ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.bd, label %.sink.split.sink.split, label %.sink.split

bb.l:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.m ], [ %i.bi, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.q

.sink.split.sink.split:                           ; preds = %.critedge, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit
  %.sink45 = phi i64 [ 40, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit ], [ 32, %.critedge ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %.sink45
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !97
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %.critedge, %.thread33, %_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr.exit, %bb.g, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit, %bb.d, %bb.e, %_Z18is_essentially_varP4expri.exit, %bb.a, %bb.b
  %.sink = phi ptr [ %1, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit ], [ %1, %.thread33 ], [ %1, %_Z18is_essentially_varP4expri.exit ], [ %1, %.critedge ], [ %1, %bb.b ], [ %1, %bb.a ], [ %1, %bb.e ], [ %1, %bb.d ], [ %i.bl, %.sink.split.sink.split ], [ %1, %bb.g ], [ %1, %_ZNK13poly_rewriterI19arith_rewriter_coreE8is_powerEP4expr.exit ]
  %i.bm = load i32, ptr %.sink, align 4, !tbaa !215
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit27
  %.022 = phi i32 [ -1, %_ZNK13poly_rewriterI19arith_rewriter_coreE10is_numeralEP4expr.exit27 ], [ %i.bm, %.sink.split ]
  %i.bn = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !128 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i29 unwind label %bb.p

.noexc.i29:                                       ; preds = %bb.o
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZN8rationalD2Ev.exit30 unwind label %bb.p

bb.p:                                             ; preds = %.noexc.i29, %bb.o
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #24
  unreachable

_ZN8rationalD2Ev.exit30:                          ; preds = %.noexc.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %.022

bb.q:                                             ; preds = %bb.n, %bb.c
  %.pn24 = phi { ptr, i32 } [ %i.v, %bb.c ], [ %.pn, %bb.n ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN13poly_rewriterI19arith_rewriter_coreE6mon_ltC2ERS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(84) %1) unnamed_addr #3 comdat($_ZN13poly_rewriterI19arith_rewriter_coreE6mon_ltC5ERS1_) align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !238
  ret void
}

declare noundef zeroext i1 @_Z2ltP3astS0_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN13poly_rewriterI19arith_rewriter_coreEC2ER11ast_managerRK10params_ref(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat($_ZN13poly_rewriterI19arith_rewriter_coreEC5ER11ast_managerRK10params_ref) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN10arith_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(952) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.b, i8 0, i64 11, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.c, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 8, ptr %i.e, align 8, !tbaa !229
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.f, align 4, !tbaa !227
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.g, align 8, !tbaa !234
  %i.h = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 128)
          to label %.lr.ph.i.i.i.i.i.i.i.preheader unwind label %bb.c ; 9 uses

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.a
  store ptr null, ptr %i.h, align 8, !tbaa !233
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr null, ptr %i.i, align 8, !tbaa !233
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !233
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr null, ptr %i.k, align 8, !tbaa !233
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr null, ptr %i.l, align 8, !tbaa !233
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr null, ptr %i.m, align 8, !tbaa !233
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store ptr null, ptr %i.n, align 8, !tbaa !233
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store ptr null, ptr %i.o, align 8, !tbaa !233
  store ptr %i.h, ptr %i.d, align 8, !tbaa !228
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.p, align 8, !tbaa !80
  invoke void @_ZN13poly_rewriterI19arith_rewriter_coreE11updt_paramsERK10params_ref(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7obj_mapI4exprjED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.q, %bb.c ]
  tail call void @_ZN19arith_rewriter_coreD2Ev(ptr noundef nonnull align 8 dead_on_return(35) dereferenceable(35) %0) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN19arith_rewriter_coreD2Ev(ptr noundef nonnull align 8 dead_on_return(35) dereferenceable(35) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  invoke void @_Z7deallocI8seq_utilEvPT_(ptr noundef %i.b)
          to label %_ZN10scoped_ptrI8seq_utilED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZN10scoped_ptrI8seq_utilED2Ev.exit:              ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN13poly_rewriterI19arith_rewriter_coreE8set_flatEb(ptr noundef nonnull align 8 dereferenceable(84) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.a, ptr %i.b, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK13poly_rewriterI19arith_rewriter_coreE6is_addEP9func_decl(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_Z10is_decl_ofPK9func_declii.exit, label %_ZNK4decl13get_family_idEv.exit.thread.i

_ZNK4decl13get_family_idEv.exit.thread.i:         ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 8, !tbaa !132
  %i.e = icmp eq i32 %i.d, 5
  br i1 %i.e, label %bb.b, label %_Z10is_decl_ofPK9func_declii.exit

bb.b:                                             ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !95
  %i.h = icmp eq i32 %i.g, 6
  br label %_Z10is_decl_ofPK9func_declii.exit

_Z10is_decl_ofPK9func_declii.exit:                ; preds = %bb.a, %_ZNK4decl13get_family_idEv.exit.thread.i, %bb.b
  %i.i = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i ], [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP9func_decl(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_Z10is_decl_ofPK9func_declii.exit, label %_ZNK4decl13get_family_idEv.exit.thread.i

_ZNK4decl13get_family_idEv.exit.thread.i:         ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 8, !tbaa !132
  %i.e = icmp eq i32 %i.d, 5
  br i1 %i.e, label %bb.b, label %_Z10is_decl_ofPK9func_declii.exit

bb.b:                                             ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !95
  %i.h = icmp eq i32 %i.g, 9
  br label %_Z10is_decl_ofPK9func_declii.exit

_Z10is_decl_ofPK9func_declii.exit:                ; preds = %bb.a, %_ZNK4decl13get_family_idEv.exit.thread.i, %bb.b
  %i.i = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i ], [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK13poly_rewriterI19arith_rewriter_coreE18is_times_minus_oneEP4exprRS3_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit.thread, label %_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit

_ZNK13poly_rewriterI19arith_rewriter_coreE6is_mulEP4expr.exit: ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !132
  %i.j = icmp eq i32 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
end_hunk_2
