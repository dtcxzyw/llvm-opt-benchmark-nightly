Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dd_pdd?download=true
inline.NumInlined: 3200
inline.NumDeleted: 779
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN2dd11pdd_manager7imk_valERK8rational:bb.a
          to label %.noexc.i unwind label %.body

.noexc.i:                                         ; preds = %bb.c
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ai)
          to label %bb.d unwind label %.body

bb.d:                                             ; preds = %.noexc.i
  store i32 1, ptr %i.ai, align 8, !tbaa !61, !alias.scope !223
  %i.ao = load i8, ptr %i.aj, align 4, !alias.scope !223
  %i.ap = and i8 %i.ao, -2
  store i8 %i.ap, ptr %i.aj, align 4, !alias.scope !223
  %i.aq = invoke noundef i32 @_ZN2dd11pdd_manager7imk_valERK8rational(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %bb.d
  %i.ar = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !96 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i17 unwind label %bb.f

.noexc.i17:                                       ; preds = %bb.e
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.ai)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %.noexc.i17, %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #28
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i17
  %i.au = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !96 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.au, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i18 unwind label %bb.g

.noexc.i18:                                       ; preds = %_ZN8rationalD2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %_ZN8rationalD2Ev.exit19 unwind label %bb.g

bb.g:                                             ; preds = %.noexc.i18, %_ZN8rationalD2Ev.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #28
  unreachable

_ZN8rationalD2Ev.exit19:                          ; preds = %.noexc.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.t

.body:                                            ; preds = %bb.c, %.noexc.i, %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #27
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %common.resume

bb.h:                                             ; preds = %_ZNK8rational6is_oneEv.exit.thread
  %i.ay = tail call noundef zeroext i1 @_ZltRK8rationali(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0)
  %.pre24 = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !96 ; 3 uses
  br i1 %i.ay, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bc = load i8, ptr %i.bb, align 4
  %i.bd = and i8 %i.bc, 1
  %i.be = icmp eq i8 %i.bd, 0
  %i.bf = load i32, ptr %i.ba, align 8
  %i.bg = icmp eq i32 %i.bf, 1
  %i.bh = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %i.bh, label %bb.j, label %.split

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.bk = load i8, ptr %i.bj, align 4
  %i.bl = and i8 %i.bk, 1
  %i.bm = icmp eq i8 %i.bl, 0
  %i.bn = load i32, ptr %i.bi, align 8
  %i.bo = icmp eq i32 %i.bn, 1
  %i.bp = select i1 %i.bm, i1 %i.bo, i1 false
  br i1 %i.bp, label %bb.k, label %.split

bb.k:                                             ; preds = %bb.j
  %i.bq = load i8, ptr %i.c, align 4
  %i.br = and i8 %i.bq, 1
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.l, label %.split27

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.bu = load i8, ptr %i.bt, align 4
  %i.bv = and i8 %i.bu, 1
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %_ZgeRK8rationalS1_.exit, label %.split27

.split27:                                         ; preds = %bb.l, %bb.k
  %i.bx = tail call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %.pre24, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.r, label %_ZgeRK8rationalS1_.exit._crit_edge

.split:                                           ; preds = %bb.j, %bb.i
  %i.bz = tail call noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %.pre24, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
  br i1 %i.bz, label %bb.r, label %_ZgeRK8rationalS1_.exit._crit_edge

_ZgeRK8rationalS1_.exit:                          ; preds = %bb.l
  %i.ca = load i32, ptr %1, align 8, !tbaa !61
  %i.cb = load i32, ptr %i.az, align 8, !tbaa !61
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.r, label %_ZgeRK8rationalS1_.exit._crit_edge

_ZgeRK8rationalS1_.exit._crit_edge:               ; preds = %.split27, %.split, %_ZgeRK8rationalS1_.exit
  %.pre = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !96, !noalias !224
  br label %bb.m

bb.m:                                             ; preds = %_ZgeRK8rationalS1_.exit._crit_edge, %bb.h
  %i.cd = phi ptr [ %.pre, %_ZgeRK8rationalS1_.exit._crit_edge ], [ %.pre24, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 784
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  store i32 0, ptr %4, align 8, !tbaa !61, !alias.scope !224
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 4, !alias.scope !224
  %i.ch = and i8 %i.cg, -4
  store i8 %i.ch, ptr %i.cf, align 4, !alias.scope !224
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ci, align 8, !tbaa !60, !alias.scope !224
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i32 1, ptr %i.cj, align 8, !tbaa !61, !alias.scope !224
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.cl = load i8, ptr %i.ck, align 4, !alias.scope !224
  %i.cm = and i8 %i.cl, -4
  store i8 %i.cm, ptr %i.ck, align 4, !alias.scope !224
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.cn, align 8, !tbaa !60, !alias.scope !224
  invoke void @_ZN11mpz_managerILb1EE3modERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i20 unwind label %bb.n

.noexc.i20:                                       ; preds = %bb.m
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %i.cj)
          to label %_Z3modRK8rationalS1_.exit21 unwind label %bb.n

common.resume:                                    ; preds = %.body, %bb.q, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.co, %bb.n ], [ %i.ax, %.body ], [ %i.cv, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %.noexc.i20, %bb.m
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #27
  br label %common.resume

_Z3modRK8rationalS1_.exit21:                      ; preds = %.noexc.i20
  store i32 1, ptr %i.cj, align 8, !tbaa !61, !alias.scope !224
  %i.cp = load i8, ptr %i.ck, align 4, !alias.scope !224
  %i.cq = and i8 %i.cp, -2
  store i8 %i.cq, ptr %i.ck, align 4, !alias.scope !224
  %i.cr = invoke noundef i32 @_ZN2dd11pdd_manager7imk_valERK8rational(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %_Z3modRK8rationalS1_.exit21
  %i.cs = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !96 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i22 unwind label %bb.p

.noexc.i22:                                       ; preds = %bb.o
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.cj)
          to label %_ZN8rationalD2Ev.exit23 unwind label %bb.p

bb.p:                                             ; preds = %.noexc.i22, %bb.o
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #28
  unreachable

_ZN8rationalD2Ev.exit23:                          ; preds = %.noexc.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.t

bb.q:                                             ; preds = %_Z3modRK8rationalS1_.exit21
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume

bb.r:                                             ; preds = %.split27, %.split, %_ZNK8rational6is_oneEv.exit.thread, %_ZgeRK8rationalS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cx = tail call noundef ptr @_ZNK9table2mapI17default_map_entryI8rationalN2dd11pdd_manager10const_infoEENS1_9hash_procENS1_7eq_procEE9find_coreERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %.not = icmp eq ptr %i.cx, null
  br i1 %.not, label %_ZNK9table2mapI17default_map_entryI8rationalN2dd11pdd_manager10const_infoEENS1_9hash_procENS1_7eq_procEE4findERKS1_RS4_.exit, label %_ZNK9table2mapI17default_map_entryI8rationalN2dd11pdd_manager10const_infoEENS1_9hash_procENS1_7eq_procEE4findERKS1_RS4_.exit.thread

_ZNK9table2mapI17default_map_entryI8rationalN2dd11pdd_manager10const_infoEENS1_9hash_procENS1_7eq_procEE4findERKS1_RS4_.exit.thread: ; preds = %bb.r
  %i.cy = getelementptr i8, ptr %i.cx, i64 44
  %6 = load i32, ptr %i.cy, align 4, !tbaa !93
  br label %bb.s

_ZNK9table2mapI17default_map_entryI8rationalN2dd11pdd_manager10const_infoEENS1_9hash_procENS1_7eq_procEE4findERKS1_RS4_.exit: ; preds = %bb.r
  call void @_ZN2dd11pdd_manager10init_valueERNS0_10const_infoERK8rational(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.pre25 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !101
  br label %bb.s

bb.s:                                             ; preds = %_ZNK9table2mapI17default_map_entryI8rationalN2dd11pdd_manager10const_infoEENS1_9hash_procENS1_7eq_procEE4findERKS1_RS4_.exit.thread, %_ZNK9table2mapI17default_map_entryI8rationalN2dd11pdd_manager10const_infoEENS1_9hash_procENS1_7eq_procEE4findERKS1_RS4_.exit
  %i.cz = phi i32 [ %6, %_ZNK9table2mapI17default_map_entryI8rationalN2dd11pdd_manager10const_infoEENS1_9hash_procENS1_7eq_procEE4findERKS1_RS4_.exit.thread ], [ %.pre25, %_ZNK9table2mapI17default_map_entryI8rationalN2dd11pdd_manager10const_infoEENS1_9hash_procENS1_7eq_procEE4findERKS1_RS4_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.t

bb.t:                                             ; preds = %_ZNK8rational6is_oneEv.exit, %bb.a, %bb.s, %_ZN8rationalD2Ev.exit23, %_ZN8rationalD2Ev.exit19
  %.013 = phi i32 [ %i.cz, %bb.s ], [ 0, %bb.a ], [ %i.aq, %_ZN8rationalD2Ev.exit19 ], [ %i.cr, %_ZN8rationalD2Ev.exit23 ], [ 1, %_ZNK8rational6is_oneEv.exit ]
  ret i32 %.013
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2dd11pdd_manager6mk_valEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.dd::pdd") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(952) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 0, ptr %3, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 1, ptr %i.e, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !60
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !96 ; 2 uses
  %i.k = icmp sgt i32 %2, -1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %2, ptr %3, align 8, !tbaa !61
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN8rationalC2Ej.exit

bb.c:                                             ; preds = %bb.a
  %i.l = zext i32 %2 to i64
  call void @_ZN11mpz_managerILb1EE11set_big_i64ER3mpzl(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.l)
  br label %_ZN8rationalC2Ej.exit

_ZN8rationalC2Ej.exit:                            ; preds = %bb.b, %bb.c
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  store i32 1, ptr %i.e, align 8, !tbaa !61
  %i.m = load i8, ptr %i.f, align 4
  %i.n = and i8 %i.m, -2
  store i8 %i.n, ptr %i.f, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.o = invoke noundef i32 @_ZN2dd11pdd_manager7imk_valERK8rational(ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %_ZN8rationalC2Ej.exit
  store i32 %i.o, ptr %0, align 8, !tbaa !119, !alias.scope !227
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.p, align 8, !tbaa !120, !alias.scope !227
  %i.q = load ptr, ptr %1, align 8, !tbaa !98, !noalias !227
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !noalias !227 ; 3 uses
  %i.u = and i32 %i.t, 1023
  %.not.i.i.i = icmp eq i32 %i.u, 1023
  br i1 %.not.i.i.i, label %_ZN2dd11pdd_manager6mk_valERK8rational.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.v = add i32 %i.t, 1
  %i.w = and i32 %i.v, 1023
  %i.x = and i32 %i.t, -1024
  %i.y = or disjoint i32 %i.w, %i.x
  store i32 %i.y, ptr %i.s, align 4, !noalias !227
  br label %_ZN2dd11pdd_manager6mk_valERK8rational.exit

_ZN2dd11pdd_manager6mk_valERK8rational.exit:      ; preds = %bb.d, %.noexc
  %i.z = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !96 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %_ZN2dd11pdd_manager6mk_valERK8rational.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc.i, %_ZN2dd11pdd_manager6mk_valERK8rational.exit
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #28
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.f:                                             ; preds = %_ZN8rationalC2Ej.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2dd11pdd_manager3mulERK8rationalRKNS_3pddE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.dd::pdd") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2dd11pdd_manager7imk_valERK8rational(ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(32) %2), !noalias !230 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !98, !noalias !230
  %i.c = zext i32 %i.a to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noalias !230 ; 3 uses
  %i.f = and i32 %i.e, 1023
  %.not.i.i.i = icmp eq i32 %i.f, 1023
  br i1 %.not.i.i.i, label %_ZN2dd11pdd_manager6mk_valERK8rational.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, 1
  %i.h = and i32 %i.g, 1023
  %i.i = and i32 %i.e, -1024
  %i.j = or disjoint i32 %i.h, %i.i
  store i32 %i.j, ptr %i.d, align 4, !noalias !230
  br label %_ZN2dd11pdd_manager6mk_valERK8rational.exit

_ZN2dd11pdd_manager6mk_valERK8rational.exit:      ; preds = %bb.a, %bb.b
  %i.k = load i32, ptr %3, align 8, !tbaa !119
  %i.l = invoke noundef i32 @_ZN2dd11pdd_manager5applyEjjNS0_6pdd_opE(ptr noundef nonnull align 8 dereferenceable(952) %1, i32 noundef %i.a, i32 noundef %i.k, i32 noundef 5)
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %_ZN2dd11pdd_manager6mk_valERK8rational.exit
  store i32 %i.l, ptr %0, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.m, align 8, !tbaa !120
  %i.n = load ptr, ptr %1, align 8, !tbaa !98     ; 2 uses
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %i.r = and i32 %i.q, 1023
  %.not.i.i = icmp eq i32 %i.r, 1023
  br i1 %.not.i.i, label %_ZN2dd3pddC2EjPNS_11pdd_managerE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add i32 %i.q, 1
  %i.t = and i32 %i.s, 1023
  %i.u = and i32 %i.q, -1024
  %i.v = or disjoint i32 %i.t, %i.u
  store i32 %i.v, ptr %i.p, align 4
  %.pre = load ptr, ptr %1, align 8, !tbaa !98
  br label %_ZN2dd3pddC2EjPNS_11pdd_managerE.exit

_ZN2dd3pddC2EjPNS_11pdd_managerE.exit:            ; preds = %bb.d, %bb.c
  %i.w = phi ptr [ %.pre, %bb.d ], [ %i.n, %bb.c ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.c ; 2 uses
  %i.y = load i32, ptr %i.x, align 4              ; 3 uses
  %i.z = and i32 %i.y, 1023
  %.not.i.i4 = icmp eq i32 %i.z, 1023
  br i1 %.not.i.i4, label %_ZN2dd3pddD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2dd3pddC2EjPNS_11pdd_managerE.exit
  %i.aa = add i32 %i.y, 1023
  %i.ab = and i32 %i.aa, 1023
  %i.ac = and i32 %i.y, -1024
  %i.ad = or disjoint i32 %i.ab, %i.ac
  store i32 %i.ad, ptr %i.x, align 4
  br label %_ZN2dd3pddD2Ev.exit

_ZN2dd3pddD2Ev.exit:                              ; preds = %_ZN2dd3pddC2EjPNS_11pdd_managerE.exit, %bb.e
  ret void

bb.f:                                             ; preds = %_ZN2dd11pdd_manager6mk_valERK8rational.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %1, align 8, !tbaa !98
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.c ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4            ; 3 uses
  %i.ai = and i32 %i.ah, 1023
  %.not.i.i5 = icmp eq i32 %i.ai, 1023
  br i1 %.not.i.i5, label %_ZN2dd3pddD2Ev.exit6, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add i32 %i.ah, 1023
  %i.ak = and i32 %i.aj, 1023
  %i.al = and i32 %i.ah, -1024
  %i.am = or disjoint i32 %i.ak, %i.al
  store i32 %i.am, ptr %i.ag, align 4
  br label %_ZN2dd3pddD2Ev.exit6

_ZN2dd3pddD2Ev.exit6:                             ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2dd11pdd_manager3addERK8rationalRKNS_3pddE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.dd::pdd") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2dd11pdd_manager7imk_valERK8rational(ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(32) %2), !noalias !233 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !98, !noalias !233
  %i.c = zext i32 %i.a to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noalias !233 ; 3 uses
  %i.f = and i32 %i.e, 1023
  %.not.i.i.i = icmp eq i32 %i.f, 1023
  br i1 %.not.i.i.i, label %_ZN2dd11pdd_manager6mk_valERK8rational.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
