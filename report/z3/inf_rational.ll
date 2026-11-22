Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/inf_rational?download=true
inline.NumInlined: 276
inline.NumDeleted: 70
begin_hunk_0_@_Z8sup_multRK12inf_rationalS1_:bb.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z7inf_divRK12inf_rationalS1_(ptr dead_on_unwind noalias writable sret(%class.inf_rational) align 8 initializes((0, 4), (8, 20), (24, 36), (40, 52), (56, 64)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.inf_rational, align 8        ; 21 uses
  %4 = alloca %class.rational, align 8            ; 9 uses
  %5 = alloca %class.rational, align 8            ; 8 uses
  %6 = alloca %class.rational, align 8            ; 16 uses
  %7 = alloca %class.rational, align 8            ; 12 uses
  %8 = alloca %class.inf_rational, align 8        ; 21 uses
  %9 = alloca %class.rational, align 8            ; 9 uses
  %10 = alloca %class.rational, align 8           ; 8 uses
  %11 = alloca %class.rational, align 8           ; 16 uses
  %12 = alloca %class.rational, align 8           ; 12 uses
  %13 = alloca %class.inf_rational, align 8       ; 21 uses
  store i32 0, ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 4 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 1, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4                          ; 4 uses
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr null, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 0, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, -4                          ; 4 uses
  store i8 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store ptr null, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i32 1, ptr %i.o, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, -4                          ; 4 uses
  store i8 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr null, ptr %i.s, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !13   ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %_ZNK12inf_rational6is_negEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %i.w, 0
  br i1 %i.y, label %_ZNK12inf_rational6is_negEv.exit, label %.thread

_ZNK12inf_rational6is_negEv.exit:                 ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !13
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %_ZNK12inf_rational6is_negEv.exit.thread, label %.thread

_ZNK12inf_rational6is_negEv.exit.thread:          ; preds = %bb.b, %_ZNK12inf_rational6is_negEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  store i32 0, ptr %6, align 8, !tbaa !13, !alias.scope !39
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 4, !alias.scope !39
  %i.ae = and i8 %i.ad, -4                        ; 2 uses
  store i8 %i.ae, ptr %i.ac, align 4, !alias.scope !39
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !14, !alias.scope !39
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store i32 1, ptr %i.ag, align 8, !tbaa !13, !alias.scope !39
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 4, !alias.scope !39
  %i.aj = and i8 %i.ai, -4
  store i8 %i.aj, ptr %i.ah, align 4, !alias.scope !39
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.ak, align 8, !tbaa !14, !alias.scope !39
  %i.al = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !39 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i8, ptr %i.am, align 4, !noalias !39
  %i.ao = and i8 %i.an, 1
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK12inf_rational6is_negEv.exit.thread
  %i.aq = load i32, ptr %2, align 8, !tbaa !13, !noalias !39
  store i32 %i.aq, ptr %6, align 8, !tbaa !13, !alias.scope !39
  store i8 %i.ae, ptr %i.ac, align 4, !alias.scope !39
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.e:                                             ; preds = %_ZNK12inf_rational6is_negEv.exit.thread
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.s

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.at = load i8, ptr %i.as, align 4, !noalias !39
  %i.au = and i8 %i.at, 1
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.aw = load i32, ptr %i.ar, align 8, !tbaa !13, !noalias !39
  store i32 %i.aw, ptr %i.ag, align 8, !tbaa !13, !alias.scope !39
  %i.ax = load i8, ptr %i.ah, align 4, !alias.scope !39
  %i.ay = and i8 %i.ax, -2
  store i8 %i.ay, ptr %i.ah, align 4, !alias.scope !39
  br label %_ZN8rationalC2ERKS_.exit.i

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %_ZN8rationalC2ERKS_.exit.i unwind label %bb.s

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.g, %bb.f
  %i.az = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !39
  invoke void @_ZN11mpz_managerILb1EE3absER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_Z3absRK8rational.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #14
  br label %.body

_Z3absRK8rational.exit:                           ; preds = %_ZN8rationalC2ERKS_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 4
  %i.bd = and i8 %i.bc, -4
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store i32 1, ptr %i.bf, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.bh = load i8, ptr %i.bg, align 4
  %i.bi = and i8 %i.bh, -4
  store i8 %i.bi, ptr %i.bg, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr null, ptr %i.bj, align 8, !tbaa !14
  %i.bk = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10
  store i32 2, ptr %7, align 8, !tbaa !13
  store i8 %i.bd, ptr %i.bb, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %_Z3absRK8rational.exit
  store i32 1, ptr %i.bf, align 8, !tbaa !13
  %i.bl = load i8, ptr %i.bg, align 4
  %i.bm = and i8 %i.bl, -2
  store i8 %i.bm, ptr %i.bg, align 4
  invoke void @_ZdvRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i
  invoke void @_ZmiRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN12inf_rationalC2ERKS_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc35 unwind label %bb.w

.noexc35:                                         ; preds = %bb.k
  %i.bn = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !40
  invoke void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN8rationaldVERKS_.exit.i unwind label %bb.l

_ZN8rationaldVERKS_.exit.i:                       ; preds = %.noexc35
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.bp = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !40
  invoke void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bo)
          to label %_ZdvRK12inf_rationalRK8rational.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN8rationaldVERKS_.exit.i, %.noexc35
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12inf_rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #14
  br label %.body36

_ZdvRK12inf_rationalRK8rational.exit:             ; preds = %_ZN8rationaldVERKS_.exit.i
  %i.br = load i32, ptr %3, align 8, !tbaa !15
  store i32 %i.br, ptr %0, align 8, !tbaa !15
  store i32 0, ptr %3, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !16
  store ptr %i.bt, ptr %i.d, align 8, !tbaa !16
  store ptr null, ptr %i.bs, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 4             ; 2 uses
  %i.bw = and i8 %i.bv, 3
  %14 = or disjoint i8 %i.bw, %i.c
  store i8 %14, ptr %i.a, align 4
  %15 = and i8 %i.bv, -4
  store i8 %15, ptr %i.bu, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !15
  store i32 %i.by, ptr %i.e, align 8, !tbaa !15
  store i32 1, ptr %i.bx, align 8, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !16
  store ptr %i.ca, ptr %i.i, align 8, !tbaa !16
  store ptr null, ptr %i.bz, align 8, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 4             ; 2 uses
  %i.cd = and i8 %i.cc, 3
  %16 = or disjoint i8 %i.cd, %i.h
  store i8 %16, ptr %i.f, align 4
  %17 = and i8 %i.cc, -4
  store i8 %17, ptr %i.cb, align 4
  %i.ce = load i32, ptr %i.bo, align 8, !tbaa !15
  store i32 %i.ce, ptr %i.j, align 8, !tbaa !15
  store i32 0, ptr %i.bo, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !16
  store ptr %i.cg, ptr %i.n, align 8, !tbaa !16
  store ptr null, ptr %i.cf, align 8, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 4             ; 2 uses
  %i.cj = and i8 %i.ci, 3
  %18 = or disjoint i8 %i.cj, %i.m
  store i8 %18, ptr %i.k, align 4
  %19 = and i8 %i.ci, -4
  store i8 %19, ptr %i.ch, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !15
  store i32 %i.cl, ptr %i.o, align 8, !tbaa !15
  store i32 1, ptr %i.ck, align 8, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !16
  store ptr %i.cn, ptr %i.s, align 8, !tbaa !16
  store ptr null, ptr %i.cm, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 4             ; 2 uses
  %i.cq = and i8 %i.cp, 3
  %20 = or disjoint i8 %i.cq, %i.r
  store i8 %20, ptr %i.p, align 4
  %21 = and i8 %i.cp, -4
  store i8 %21, ptr %i.co, align 4
  %i.cr = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %i.bo)
          to label %.noexc.i.i unwind label %bb.m

.noexc.i.i:                                       ; preds = %_ZdvRK12inf_rationalRK8rational.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.ck)
          to label %_ZN8rationalD2Ev.exit.i unwind label %bb.m

bb.m:                                             ; preds = %.noexc.i.i, %_ZdvRK12inf_rationalRK8rational.exit
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #13
  unreachable

_ZN8rationalD2Ev.exit.i:                          ; preds = %.noexc.i.i
  %i.cu = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %.noexc.i1.i unwind label %bb.n

.noexc.i1.i:                                      ; preds = %_ZN8rationalD2Ev.exit.i
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.bx)
          to label %_ZN12inf_rationalD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %.noexc.i1.i, %_ZN8rationalD2Ev.exit.i
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #13
  unreachable

_ZN12inf_rationalD2Ev.exit:                       ; preds = %.noexc.i1.i
  %i.cx = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i unwind label %bb.o

.noexc.i:                                         ; preds = %_ZN12inf_rationalD2Ev.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cy)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %.noexc.i, %_ZN12inf_rationalD2Ev.exit
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #13
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  %i.db = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.db, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i38 unwind label %bb.p

.noexc.i38:                                       ; preds = %_ZN8rationalD2Ev.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.dc)
          to label %_ZN8rationalD2Ev.exit39 unwind label %bb.p

bb.p:                                             ; preds = %.noexc.i38, %_ZN8rationalD2Ev.exit
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #13
  unreachable

_ZN8rationalD2Ev.exit39:                          ; preds = %.noexc.i38
  %i.df = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.df, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i40 unwind label %bb.q

.noexc.i40:                                       ; preds = %_ZN8rationalD2Ev.exit39
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %_ZN8rationalD2Ev.exit41 unwind label %bb.q

bb.q:                                             ; preds = %.noexc.i40, %_ZN8rationalD2Ev.exit39
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #13
  unreachable

_ZN8rationalD2Ev.exit41:                          ; preds = %.noexc.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.di = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.di, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i42 unwind label %bb.r

.noexc.i42:                                       ; preds = %_ZN8rationalD2Ev.exit41
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.di, ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %_ZN8rationalD2Ev.exit43 unwind label %bb.r

bb.r:                                             ; preds = %.noexc.i42, %_ZN8rationalD2Ev.exit41
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #13
  unreachable

_ZN8rationalD2Ev.exit43:                          ; preds = %.noexc.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.be

bb.s:                                             ; preds = %bb.g, %bb.e
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %_Z3absRK8rational.exit
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %bb.j
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.k
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body36

.body36:                                          ; preds = %bb.l, %bb.w
  %eh.lpad-body37 = phi { ptr, i32 } [ %i.dp, %bb.w ], [ %i.bq, %bb.l ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #14
  br label %bb.x

bb.x:                                             ; preds = %.body36, %bb.v
  %.pn27 = phi { ptr, i32 } [ %eh.lpad-body37, %.body36 ], [ %i.do, %bb.v ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.x ], [ %i.dn, %bb.u ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.t
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn27.pn, %bb.y ], [ %i.dm, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #14
  br label %.body

.body:                                            ; preds = %bb.s, %bb.h, %bb.z
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn, %bb.z ], [ %i.dl, %bb.s ], [ %i.ba, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.bf

bb.aa:                                            ; preds = %bb.a
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dq = load i32, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %_ZNK12inf_rational6is_posEv.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ds = icmp eq i32 %i.dq, 0
  br i1 %i.ds, label %_ZNK12inf_rational6is_posEv.exit, label %.thread

_ZNK12inf_rational6is_posEv.exit:                 ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !13
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %_ZNK12inf_rational6is_posEv.exit.thread, label %.thread

_ZNK12inf_rational6is_posEv.exit.thread:          ; preds = %bb.ab, %_ZNK12inf_rational6is_posEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  store i32 0, ptr %11, align 8, !tbaa !13, !alias.scope !41
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 3 uses
  %i.dx = load i8, ptr %i.dw, align 4, !alias.scope !41
  %i.dy = and i8 %i.dx, -4                        ; 2 uses
  store i8 %i.dy, ptr %i.dw, align 4, !alias.scope !41
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.dz, align 8, !tbaa !14, !alias.scope !41
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store i32 1, ptr %i.ea, align 8, !tbaa !13, !alias.scope !41
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 4 uses
  %i.ec = load i8, ptr %i.eb, align 4, !alias.scope !41
  %i.ed = and i8 %i.ec, -4
  store i8 %i.ed, ptr %i.eb, align 4, !alias.scope !41
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr null, ptr %i.ee, align 8, !tbaa !14, !alias.scope !41
  %i.ef = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !41 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eh = load i8, ptr %i.eg, align 4, !noalias !41
  %i.ei = and i8 %i.eh, 1
  %i.ej = icmp eq i8 %i.ei, 0
  br i1 %i.ej, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNK12inf_rational6is_posEv.exit.thread
  %i.ek = load i32, ptr %2, align 8, !tbaa !13, !noalias !41
  store i32 %i.ek, ptr %11, align 8, !tbaa !13, !alias.scope !41
  store i8 %i.dy, ptr %i.dw, align 4, !alias.scope !41
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i44

bb.ae:                                            ; preds = %_ZNK12inf_rational6is_posEv.exit.thread
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i44 unwind label %bb.as

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i44: ; preds = %bb.ae, %bb.ad
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.en = load i8, ptr %i.em, align 4, !noalias !41
  %i.eo = and i8 %i.en, 1
  %i.ep = icmp eq i8 %i.eo, 0
  br i1 %i.ep, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i44
  %i.eq = load i32, ptr %i.el, align 8, !tbaa !13, !noalias !41
  store i32 %i.eq, ptr %i.ea, align 8, !tbaa !13, !alias.scope !41
  %i.er = load i8, ptr %i.eb, align 4, !alias.scope !41
  %i.es = and i8 %i.er, -2
  store i8 %i.es, ptr %i.eb, align 4, !alias.scope !41
  br label %_ZN8rationalC2ERKS_.exit.i45

bb.ag:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i44
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.el)
          to label %_ZN8rationalC2ERKS_.exit.i45 unwind label %bb.as

_ZN8rationalC2ERKS_.exit.i45:                     ; preds = %bb.ag, %bb.af
  %i.et = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !41
  invoke void @_ZN11mpz_managerILb1EE3absER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_Z3absRK8rational.exit50 unwind label %bb.ah

bb.ah:                                            ; preds = %_ZN8rationalC2ERKS_.exit.i45
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #14
  br label %.body48

_Z3absRK8rational.exit50:                         ; preds = %_ZN8rationalC2ERKS_.exit.i45
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.ev = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 4
  %i.ex = and i8 %i.ew, -4
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.ey, align 8, !tbaa !14
  %i.ez = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store i32 1, ptr %i.ez, align 8, !tbaa !13
  %i.fa = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 4 uses
  %i.fb = load i8, ptr %i.fa, align 4
  %i.fc = and i8 %i.fb, -4
  store i8 %i.fc, ptr %i.fa, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr null, ptr %i.fd, align 8, !tbaa !14
  %i.fe = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10
  store i32 2, ptr %12, align 8, !tbaa !13
  store i8 %i.ex, ptr %i.ev, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
          to label %bb.ai unwind label %bb.at

bb.ai:                                            ; preds = %_Z3absRK8rational.exit50
  store i32 1, ptr %i.ez, align 8, !tbaa !13
  %i.ff = load i8, ptr %i.fa, align 4
  %i.fg = and i8 %i.ff, -2
  store i8 %i.fg, ptr %i.fa, align 4
  invoke void @_ZdvRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.aj unwind label %bb.au

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZplRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ak unwind label %bb.av

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN12inf_rationalC2ERKS_(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc54 unwind label %bb.aw

.noexc54:                                         ; preds = %bb.ak
  %i.fh = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !42
  invoke void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN8rationaldVERKS_.exit.i53 unwind label %bb.al

_ZN8rationaldVERKS_.exit.i53:                     ; preds = %.noexc54
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  %i.fj = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !42
  invoke void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.fi)
          to label %_ZdvRK12inf_rationalRK8rational.exit57 unwind label %bb.al

bb.al:                                            ; preds = %_ZN8rationaldVERKS_.exit.i53, %.noexc54
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12inf_rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #14
  br label %.body55

_ZdvRK12inf_rationalRK8rational.exit57:           ; preds = %_ZN8rationaldVERKS_.exit.i53
  %i.fl = load i32, ptr %8, align 8, !tbaa !15
  store i32 %i.fl, ptr %0, align 8, !tbaa !15
  store i32 0, ptr %8, align 8, !tbaa !15
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !16
  store ptr %i.fn, ptr %i.d, align 8, !tbaa !16
  store ptr null, ptr %i.fm, align 8, !tbaa !16
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 4             ; 2 uses
  %i.fq = and i8 %i.fp, 3
  %22 = or disjoint i8 %i.fq, %i.c
  store i8 %22, ptr %i.a, align 4
  %23 = and i8 %i.fp, -4
  store i8 %23, ptr %i.fo, align 4
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !15
  store i32 %i.fs, ptr %i.e, align 8, !tbaa !15
  store i32 1, ptr %i.fr, align 8, !tbaa !15
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !16
  store ptr %i.fu, ptr %i.i, align 8, !tbaa !16
  store ptr null, ptr %i.ft, align 8, !tbaa !16
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 4             ; 2 uses
  %i.fx = and i8 %i.fw, 3
  %24 = or disjoint i8 %i.fx, %i.h
  store i8 %24, ptr %i.f, align 4
  %25 = and i8 %i.fw, -4
  store i8 %25, ptr %i.fv, align 4
  %i.fy = load i32, ptr %i.fi, align 8, !tbaa !15
  store i32 %i.fy, ptr %i.j, align 8, !tbaa !15
  store i32 0, ptr %i.fi, align 8, !tbaa !15
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !16
  store ptr %i.ga, ptr %i.n, align 8, !tbaa !16
  store ptr null, ptr %i.fz, align 8, !tbaa !16
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 4             ; 2 uses
  %i.gd = and i8 %i.gc, 3
  %26 = or disjoint i8 %i.gd, %i.m
  store i8 %26, ptr %i.k, align 4
  %27 = and i8 %i.gc, -4
  store i8 %27, ptr %i.gb, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !15
  store i32 %i.gf, ptr %i.o, align 8, !tbaa !15
  store i32 1, ptr %i.ge, align 8, !tbaa !15
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !16
  store ptr %i.gh, ptr %i.s, align 8, !tbaa !16
  store ptr null, ptr %i.gg, align 8, !tbaa !16
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 52 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 4             ; 2 uses
  %i.gk = and i8 %i.gj, 3
  %28 = or disjoint i8 %i.gk, %i.r
  store i8 %28, ptr %i.p, align 4
  %29 = and i8 %i.gj, -4
  store i8 %29, ptr %i.gi, align 4
  %i.gl = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gl, ptr noundef nonnull align 8 dereferenceable(32) %i.fi)
          to label %.noexc.i.i58 unwind label %bb.am

.noexc.i.i58:                                     ; preds = %_ZdvRK12inf_rationalRK8rational.exit57
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gl, ptr noundef nonnull align 8 dereferenceable(16) %i.ge)
          to label %_ZN8rationalD2Ev.exit.i59 unwind label %bb.am

bb.am:                                            ; preds = %.noexc.i.i58, %_ZdvRK12inf_rationalRK8rational.exit57
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #13
  unreachable

_ZN8rationalD2Ev.exit.i59:                        ; preds = %.noexc.i.i58
  %i.go = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.go, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %.noexc.i1.i60 unwind label %bb.an

.noexc.i1.i60:                                    ; preds = %_ZN8rationalD2Ev.exit.i59
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.go, ptr noundef nonnull align 8 dereferenceable(16) %i.fr)
          to label %_ZN12inf_rationalD2Ev.exit61 unwind label %bb.an

bb.an:                                            ; preds = %.noexc.i1.i60, %_ZN8rationalD2Ev.exit.i59
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #13
  unreachable

_ZN12inf_rationalD2Ev.exit61:                     ; preds = %.noexc.i1.i60
  %i.gr = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gr, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i62 unwind label %bb.ao

.noexc.i62:                                       ; preds = %_ZN12inf_rationalD2Ev.exit61
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.gs)
          to label %_ZN8rationalD2Ev.exit63 unwind label %bb.ao

bb.ao:                                            ; preds = %.noexc.i62, %_ZN12inf_rationalD2Ev.exit61
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #13
  unreachable

_ZN8rationalD2Ev.exit63:                          ; preds = %.noexc.i62
  %i.gv = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc.i64 unwind label %bb.ap

.noexc.i64:                                       ; preds = %_ZN8rationalD2Ev.exit63
  %i.gw = getelementptr inbounds nuw i8, ptr %10, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gv, ptr noundef nonnull align 8 dereferenceable(16) %i.gw)
          to label %_ZN8rationalD2Ev.exit65 unwind label %bb.ap

bb.ap:                                            ; preds = %.noexc.i64, %_ZN8rationalD2Ev.exit63
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #13
  unreachable

_ZN8rationalD2Ev.exit65:                          ; preds = %.noexc.i64
  %i.gz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gz, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc.i66 unwind label %bb.aq

.noexc.i66:                                       ; preds = %_ZN8rationalD2Ev.exit65
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gz, ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
          to label %_ZN8rationalD2Ev.exit67 unwind label %bb.aq

bb.aq:                                            ; preds = %.noexc.i66, %_ZN8rationalD2Ev.exit65
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #13
  unreachable

_ZN8rationalD2Ev.exit67:                          ; preds = %.noexc.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.hc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hc, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc.i68 unwind label %bb.ar

.noexc.i68:                                       ; preds = %_ZN8rationalD2Ev.exit67
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %i.ea)
          to label %_ZN8rationalD2Ev.exit69 unwind label %bb.ar

bb.ar:                                            ; preds = %.noexc.i68, %_ZN8rationalD2Ev.exit67
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #13
  unreachable

_ZN8rationalD2Ev.exit69:                          ; preds = %.noexc.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.be

bb.as:                                            ; preds = %bb.ag, %bb.ae
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body48

bb.at:                                            ; preds = %_Z3absRK8rational.exit50
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.au:                                            ; preds = %bb.ai
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.av:                                            ; preds = %bb.aj
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ak
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %.body55

.body55:                                          ; preds = %bb.al, %bb.aw
  %eh.lpad-body56 = phi { ptr, i32 } [ %i.hj, %bb.aw ], [ %i.fk, %bb.al ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #14
  br label %bb.ax

bb.ax:                                            ; preds = %.body55, %bb.av
  %.pn = phi { ptr, i32 } [ %eh.lpad-body56, %.body55 ], [ %i.hi, %bb.av ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #14
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.au
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ax ], [ %i.hh, %bb.au ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #14
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.at
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ay ], [ %i.hg, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #14
  br label %.body48

.body48:                                          ; preds = %bb.as, %bb.ah, %bb.az
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.az ], [ %i.hf, %bb.as ], [ %i.eu, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.bf

.thread:                                          ; preds = %bb.ac, %bb.c, %_ZNK12inf_rational6is_negEv.exit, %_ZNK12inf_rational6is_posEv.exit, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  invoke void @_ZN12inf_rationalC2ERKS_(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc71 unwind label %bb.bd

.noexc71:                                         ; preds = %.thread
  %i.hk = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !43
  invoke void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.hk, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZN8rationaldVERKS_.exit.i70 unwind label %bb.ba

_ZN8rationaldVERKS_.exit.i70:                     ; preds = %.noexc71
  %i.hl = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 5 uses
  %i.hm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !43
  invoke void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.hm, ptr noundef nonnull align 8 dereferenceable(32) %i.hl, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.hl)
          to label %_ZdvRK12inf_rationalRK8rational.exit74 unwind label %bb.ba

bb.ba:                                            ; preds = %_ZN8rationaldVERKS_.exit.i70, %.noexc71
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12inf_rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #14
  br label %.body72

_ZdvRK12inf_rationalRK8rational.exit74:           ; preds = %_ZN8rationaldVERKS_.exit.i70
  %i.ho = load i32, ptr %13, align 8, !tbaa !15
  store i32 %i.ho, ptr %0, align 8, !tbaa !15
  store i32 0, ptr %13, align 8, !tbaa !15
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !16
  store ptr %i.hq, ptr %i.d, align 8, !tbaa !16
  store ptr null, ptr %i.hp, align 8, !tbaa !16
  %i.hr = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 4             ; 2 uses
  %i.ht = and i8 %i.hs, 3
  %30 = or disjoint i8 %i.ht, %i.c
  store i8 %30, ptr %i.a, align 4
  %31 = and i8 %i.hs, -4
  store i8 %31, ptr %i.hr, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !15
  store i32 %i.hv, ptr %i.e, align 8, !tbaa !15
  store i32 1, ptr %i.hu, align 8, !tbaa !15
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !16
  store ptr %i.hx, ptr %i.i, align 8, !tbaa !16
  store ptr null, ptr %i.hw, align 8, !tbaa !16
  %i.hy = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 4             ; 2 uses
  %i.ia = and i8 %i.hz, 3
  %32 = or disjoint i8 %i.ia, %i.h
  store i8 %32, ptr %i.f, align 4
  %33 = and i8 %i.hz, -4
  store i8 %33, ptr %i.hy, align 4
  %i.ib = load i32, ptr %i.hl, align 8, !tbaa !15
  store i32 %i.ib, ptr %i.j, align 8, !tbaa !15
  store i32 0, ptr %i.hl, align 8, !tbaa !15
  %i.ic = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !16
  store ptr %i.id, ptr %i.n, align 8, !tbaa !16
  store ptr null, ptr %i.ic, align 8, !tbaa !16
  %i.ie = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 2 uses
  %i.if = load i8, ptr %i.ie, align 4             ; 2 uses
  %i.ig = and i8 %i.if, 3
  %34 = or disjoint i8 %i.ig, %i.m
  store i8 %34, ptr %i.k, align 4
  %35 = and i8 %i.if, -4
  store i8 %35, ptr %i.ie, align 4
  %i.ih = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !15
  store i32 %i.ii, ptr %i.o, align 8, !tbaa !15
  store i32 1, ptr %i.ih, align 8, !tbaa !15
  %i.ij = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !16
  store ptr %i.ik, ptr %i.s, align 8, !tbaa !16
  store ptr null, ptr %i.ij, align 8, !tbaa !16
  %i.il = getelementptr inbounds nuw i8, ptr %13, i64 52 ; 2 uses
  %i.im = load i8, ptr %i.il, align 4             ; 2 uses
  %i.in = and i8 %i.im, 3
  %36 = or disjoint i8 %i.in, %i.r
  store i8 %36, ptr %i.p, align 4
  %37 = and i8 %i.im, -4
  store i8 %37, ptr %i.il, align 4
  %i.io = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.io, ptr noundef nonnull align 8 dereferenceable(32) %i.hl)
          to label %.noexc.i.i75 unwind label %bb.bb

.noexc.i.i75:                                     ; preds = %_ZdvRK12inf_rationalRK8rational.exit74
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.io, ptr noundef nonnull align 8 dereferenceable(16) %i.ih)
          to label %_ZN8rationalD2Ev.exit.i76 unwind label %bb.bb

bb.bb:                                            ; preds = %.noexc.i.i75, %_ZdvRK12inf_rationalRK8rational.exit74
  %i.ip = landingpad { ptr, i32 }
          catch ptr null
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  call void @__clang_call_terminate(ptr %i.iq) #13
  unreachable

_ZN8rationalD2Ev.exit.i76:                        ; preds = %.noexc.i.i75
  %i.ir = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ir, ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %.noexc.i1.i77 unwind label %bb.bc

.noexc.i1.i77:                                    ; preds = %_ZN8rationalD2Ev.exit.i76
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.hu)
          to label %_ZN12inf_rationalD2Ev.exit78 unwind label %bb.bc

bb.bc:                                            ; preds = %.noexc.i1.i77, %_ZN8rationalD2Ev.exit.i76
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #13
  unreachable

_ZN12inf_rationalD2Ev.exit78:                     ; preds = %.noexc.i1.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.be

bb.bd:                                            ; preds = %.thread
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %.body72

.body72:                                          ; preds = %bb.ba, %bb.bd
  %eh.lpad-body73 = phi { ptr, i32 } [ %i.iu, %bb.bd ], [ %i.hn, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.bf

bb.be:                                            ; preds = %_ZN8rationalD2Ev.exit43, %_ZN12inf_rationalD2Ev.exit78, %_ZN8rationalD2Ev.exit69
  ret void

bb.bf:                                            ; preds = %.body72, %.body48, %.body
  %.pn27.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn.pn, %.body ], [ %.pn.pn.pn.pn, %.body48 ], [ %eh.lpad-body73, %.body72 ]
  call void @_ZN12inf_rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #14
  resume { ptr, i32 } %.pn27.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZmiRK8rationalS1_(ptr dead_on_unwind noalias writable sret(%class.rational) align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i32 0, ptr %3, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store i32 1, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 8 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !14
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !13
  store i32 %i.o, ptr %3, align 8, !tbaa !13
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.u = load i32, ptr %i.p, align 8, !tbaa !13   ; 2 uses
  store i32 %i.u, ptr %i.e, align 8, !tbaa !13
  %i.v = load i8, ptr %i.f, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.f, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  %.pre = load i8, ptr %i.f, align 4
  %.pre9 = load i32, ptr %i.e, align 8
  %i.x = and i8 %.pre, 1
  %i.y = icmp eq i8 %i.x, 0
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.z = phi i32 [ %i.u, %bb.d ], [ %.pre9, %bb.e ]
  %i.aa = phi i1 [ true, %bb.d ], [ %i.y, %bb.e ]
  %i.ab = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 3 uses
  %i.ac = icmp eq i32 %i.z, 1
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = and i8 %i.ag, 1
  %i.ai = icmp eq i8 %i.ah, 0
  %i.aj = load i32, ptr %i.ae, align 8
  %i.ak = icmp eq i32 %i.aj, 1
  %i.al = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN11mpz_managerILb1EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc3 unwind label %bb.n

.noexc3:                                          ; preds = %.noexc
  store i32 1, ptr %i.e, align 8, !tbaa !13
  %i.am = load i8, ptr %i.f, align 4
  %i.an = and i8 %i.am, -2
  store i8 %i.an, ptr %i.f, align 4
  br label %_ZN8rationalmIERKS_.exit

bb.h:                                             ; preds = %bb.f, %_ZN8rationalC2ERKS_.exit
  invoke void @_ZN11mpq_managerILb1EE7rat_subERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN8rationalmIERKS_.exit unwind label %bb.n

_ZN8rationalmIERKS_.exit:                         ; preds = %.noexc3, %bb.h
  store i32 0, ptr %0, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, -4                        ; 2 uses
  store i8 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 1, ptr %i.as, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.au = load i8, ptr %i.at, align 4
  %i.av = and i8 %i.au, -4
  store i8 %i.av, ptr %i.at, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.aw, align 8, !tbaa !14
  %i.ax = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  %i.ay = load i8, ptr %i.a, align 4
  %i.az = and i8 %i.ay, 1
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN8rationalmIERKS_.exit
  %i.bb = load i32, ptr %3, align 8, !tbaa !13
  store i32 %i.bb, ptr %0, align 8, !tbaa !13
  store i8 %i.aq, ptr %i.ao, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i5

bb.j:                                             ; preds = %_ZN8rationalmIERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i5 unwind label %bb.n

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i5:  ; preds = %bb.j, %bb.i
  %i.bc = load i8, ptr %i.f, align 4
  %i.bd = and i8 %i.bc, 1
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i5
  %i.bf = load i32, ptr %i.e, align 8, !tbaa !13
  store i32 %i.bf, ptr %i.as, align 8, !tbaa !13
  %i.bg = load i8, ptr %i.at, align 4
  %i.bh = and i8 %i.bg, -2
  store i8 %i.bh, ptr %i.at, align 4
  br label %_ZN8rationalC2ERKS_.exit8

bb.l:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i5
end_hunk_0
begin_hunk_1_@_ZN8rationalC2Ei:bb.a
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z7sup_divRK12inf_rationalS1_(ptr dead_on_unwind noalias writable sret(%class.inf_rational) align 8 initializes((0, 4), (8, 20), (24, 36), (40, 52), (56, 64)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.inf_rational, align 8        ; 21 uses
  %4 = alloca %class.rational, align 8            ; 9 uses
  %5 = alloca %class.rational, align 8            ; 8 uses
  %6 = alloca %class.rational, align 8            ; 16 uses
  %7 = alloca %class.rational, align 8            ; 12 uses
  %8 = alloca %class.inf_rational, align 8        ; 21 uses
  %9 = alloca %class.rational, align 8            ; 9 uses
  %10 = alloca %class.rational, align 8           ; 8 uses
  %11 = alloca %class.rational, align 8           ; 16 uses
  %12 = alloca %class.rational, align 8           ; 12 uses
  %13 = alloca %class.inf_rational, align 8       ; 21 uses
  store i32 0, ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 4 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 1, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4                          ; 4 uses
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr null, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 0, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, -4                          ; 4 uses
  store i8 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store ptr null, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i32 1, ptr %i.o, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, -4                          ; 4 uses
  store i8 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr null, ptr %i.s, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !13   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %_ZNK12inf_rational6is_negEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %i.w, 0
  br i1 %i.y, label %_ZNK12inf_rational6is_negEv.exit, label %.thread

_ZNK12inf_rational6is_negEv.exit:                 ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !13
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %_ZNK12inf_rational6is_negEv.exit.thread, label %.thread

_ZNK12inf_rational6is_negEv.exit.thread:          ; preds = %bb.b, %_ZNK12inf_rational6is_negEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  store i32 0, ptr %6, align 8, !tbaa !13, !alias.scope !54
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 4, !alias.scope !54
  %i.ae = and i8 %i.ad, -4                        ; 2 uses
  store i8 %i.ae, ptr %i.ac, align 4, !alias.scope !54
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !14, !alias.scope !54
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store i32 1, ptr %i.ag, align 8, !tbaa !13, !alias.scope !54
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 4, !alias.scope !54
  %i.aj = and i8 %i.ai, -4
  store i8 %i.aj, ptr %i.ah, align 4, !alias.scope !54
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.ak, align 8, !tbaa !14, !alias.scope !54
  %i.al = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !54 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i8, ptr %i.am, align 4, !noalias !54
  %i.ao = and i8 %i.an, 1
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK12inf_rational6is_negEv.exit.thread
  %i.aq = load i32, ptr %2, align 8, !tbaa !13, !noalias !54
  store i32 %i.aq, ptr %6, align 8, !tbaa !13, !alias.scope !54
  store i8 %i.ae, ptr %i.ac, align 4, !alias.scope !54
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.e:                                             ; preds = %_ZNK12inf_rational6is_negEv.exit.thread
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.s

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.at = load i8, ptr %i.as, align 4, !noalias !54
  %i.au = and i8 %i.at, 1
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.aw = load i32, ptr %i.ar, align 8, !tbaa !13, !noalias !54
  store i32 %i.aw, ptr %i.ag, align 8, !tbaa !13, !alias.scope !54
  %i.ax = load i8, ptr %i.ah, align 4, !alias.scope !54
  %i.ay = and i8 %i.ax, -2
  store i8 %i.ay, ptr %i.ah, align 4, !alias.scope !54
  br label %_ZN8rationalC2ERKS_.exit.i

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %_ZN8rationalC2ERKS_.exit.i unwind label %bb.s

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.g, %bb.f
  %i.az = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !54
  invoke void @_ZN11mpz_managerILb1EE3absER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_Z3absRK8rational.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #14
  br label %.body

_Z3absRK8rational.exit:                           ; preds = %_ZN8rationalC2ERKS_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 4
  %i.bd = and i8 %i.bc, -4
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.be, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store i32 1, ptr %i.bf, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.bh = load i8, ptr %i.bg, align 4
  %i.bi = and i8 %i.bh, -4
  store i8 %i.bi, ptr %i.bg, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr null, ptr %i.bj, align 8, !tbaa !14
  %i.bk = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10
  store i32 2, ptr %7, align 8, !tbaa !13
  store i8 %i.bd, ptr %i.bb, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %_Z3absRK8rational.exit
  store i32 1, ptr %i.bf, align 8, !tbaa !13
  %i.bl = load i8, ptr %i.bg, align 4
  %i.bm = and i8 %i.bl, -2
  store i8 %i.bm, ptr %i.bg, align 4
  invoke void @_ZdvRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i
  invoke void @_ZplRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN12inf_rationalC2ERKS_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc35 unwind label %bb.w

.noexc35:                                         ; preds = %bb.k
  %i.bn = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !55
  invoke void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN8rationaldVERKS_.exit.i unwind label %bb.l

_ZN8rationaldVERKS_.exit.i:                       ; preds = %.noexc35
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.bp = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !55
  invoke void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bo)
          to label %_ZdvRK12inf_rationalRK8rational.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN8rationaldVERKS_.exit.i, %.noexc35
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12inf_rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #14
  br label %.body36

_ZdvRK12inf_rationalRK8rational.exit:             ; preds = %_ZN8rationaldVERKS_.exit.i
  %i.br = load i32, ptr %3, align 8, !tbaa !15
  store i32 %i.br, ptr %0, align 8, !tbaa !15
  store i32 0, ptr %3, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !16
  store ptr %i.bt, ptr %i.d, align 8, !tbaa !16
  store ptr null, ptr %i.bs, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 4             ; 2 uses
  %i.bw = and i8 %i.bv, 3
  %14 = or disjoint i8 %i.bw, %i.c
  store i8 %14, ptr %i.a, align 4
  %15 = and i8 %i.bv, -4
  store i8 %15, ptr %i.bu, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !15
  store i32 %i.by, ptr %i.e, align 8, !tbaa !15
  store i32 1, ptr %i.bx, align 8, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !16
  store ptr %i.ca, ptr %i.i, align 8, !tbaa !16
  store ptr null, ptr %i.bz, align 8, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 4             ; 2 uses
  %i.cd = and i8 %i.cc, 3
  %16 = or disjoint i8 %i.cd, %i.h
  store i8 %16, ptr %i.f, align 4
  %17 = and i8 %i.cc, -4
  store i8 %17, ptr %i.cb, align 4
  %i.ce = load i32, ptr %i.bo, align 8, !tbaa !15
  store i32 %i.ce, ptr %i.j, align 8, !tbaa !15
  store i32 0, ptr %i.bo, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !16
  store ptr %i.cg, ptr %i.n, align 8, !tbaa !16
  store ptr null, ptr %i.cf, align 8, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 4             ; 2 uses
  %i.cj = and i8 %i.ci, 3
  %18 = or disjoint i8 %i.cj, %i.m
  store i8 %18, ptr %i.k, align 4
  %19 = and i8 %i.ci, -4
  store i8 %19, ptr %i.ch, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !15
  store i32 %i.cl, ptr %i.o, align 8, !tbaa !15
  store i32 1, ptr %i.ck, align 8, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !16
  store ptr %i.cn, ptr %i.s, align 8, !tbaa !16
  store ptr null, ptr %i.cm, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 4             ; 2 uses
  %i.cq = and i8 %i.cp, 3
  %20 = or disjoint i8 %i.cq, %i.r
  store i8 %20, ptr %i.p, align 4
  %21 = and i8 %i.cp, -4
  store i8 %21, ptr %i.co, align 4
  %i.cr = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %i.bo)
          to label %.noexc.i.i unwind label %bb.m

.noexc.i.i:                                       ; preds = %_ZdvRK12inf_rationalRK8rational.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.ck)
          to label %_ZN8rationalD2Ev.exit.i unwind label %bb.m

bb.m:                                             ; preds = %.noexc.i.i, %_ZdvRK12inf_rationalRK8rational.exit
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #13
  unreachable

_ZN8rationalD2Ev.exit.i:                          ; preds = %.noexc.i.i
  %i.cu = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %.noexc.i1.i unwind label %bb.n

.noexc.i1.i:                                      ; preds = %_ZN8rationalD2Ev.exit.i
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.bx)
          to label %_ZN12inf_rationalD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %.noexc.i1.i, %_ZN8rationalD2Ev.exit.i
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #13
  unreachable

_ZN12inf_rationalD2Ev.exit:                       ; preds = %.noexc.i1.i
  %i.cx = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i unwind label %bb.o

.noexc.i:                                         ; preds = %_ZN12inf_rationalD2Ev.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cy)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %.noexc.i, %_ZN12inf_rationalD2Ev.exit
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #13
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  %i.db = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.db, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i38 unwind label %bb.p

.noexc.i38:                                       ; preds = %_ZN8rationalD2Ev.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.dc)
          to label %_ZN8rationalD2Ev.exit39 unwind label %bb.p

bb.p:                                             ; preds = %.noexc.i38, %_ZN8rationalD2Ev.exit
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #13
  unreachable

_ZN8rationalD2Ev.exit39:                          ; preds = %.noexc.i38
  %i.df = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.df, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i40 unwind label %bb.q

.noexc.i40:                                       ; preds = %_ZN8rationalD2Ev.exit39
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %_ZN8rationalD2Ev.exit41 unwind label %bb.q

bb.q:                                             ; preds = %.noexc.i40, %_ZN8rationalD2Ev.exit39
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #13
  unreachable

_ZN8rationalD2Ev.exit41:                          ; preds = %.noexc.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.di = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.di, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i42 unwind label %bb.r

.noexc.i42:                                       ; preds = %_ZN8rationalD2Ev.exit41
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.di, ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %_ZN8rationalD2Ev.exit43 unwind label %bb.r

bb.r:                                             ; preds = %.noexc.i42, %_ZN8rationalD2Ev.exit41
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #13
  unreachable

_ZN8rationalD2Ev.exit43:                          ; preds = %.noexc.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.be

bb.s:                                             ; preds = %bb.g, %bb.e
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %_Z3absRK8rational.exit
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %bb.j
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.k
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body36

.body36:                                          ; preds = %bb.l, %bb.w
  %eh.lpad-body37 = phi { ptr, i32 } [ %i.dp, %bb.w ], [ %i.bq, %bb.l ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #14
  br label %bb.x

bb.x:                                             ; preds = %.body36, %bb.v
  %.pn27 = phi { ptr, i32 } [ %eh.lpad-body37, %.body36 ], [ %i.do, %bb.v ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.x ], [ %i.dn, %bb.u ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.t
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn27.pn, %bb.y ], [ %i.dm, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #14
  br label %.body

.body:                                            ; preds = %bb.s, %bb.h, %bb.z
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn, %bb.z ], [ %i.dl, %bb.s ], [ %i.ba, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.bf

bb.aa:                                            ; preds = %bb.a
  %i.dq = icmp slt i32 %i.u, 0
  br i1 %i.dq, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dr = load i32, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %_ZNK12inf_rational6is_posEv.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dt = icmp eq i32 %i.dr, 0
  br i1 %i.dt, label %_ZNK12inf_rational6is_posEv.exit, label %.thread

_ZNK12inf_rational6is_posEv.exit:                 ; preds = %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !13
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %_ZNK12inf_rational6is_posEv.exit.thread, label %.thread

_ZNK12inf_rational6is_posEv.exit.thread:          ; preds = %bb.ab, %_ZNK12inf_rational6is_posEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  store i32 0, ptr %11, align 8, !tbaa !13, !alias.scope !56
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 3 uses
  %i.dy = load i8, ptr %i.dx, align 4, !alias.scope !56
  %i.dz = and i8 %i.dy, -4                        ; 2 uses
  store i8 %i.dz, ptr %i.dx, align 4, !alias.scope !56
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.ea, align 8, !tbaa !14, !alias.scope !56
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store i32 1, ptr %i.eb, align 8, !tbaa !13, !alias.scope !56
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 4 uses
  %i.ed = load i8, ptr %i.ec, align 4, !alias.scope !56
  %i.ee = and i8 %i.ed, -4
  store i8 %i.ee, ptr %i.ec, align 4, !alias.scope !56
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr null, ptr %i.ef, align 8, !tbaa !14, !alias.scope !56
  %i.eg = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !56 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ei = load i8, ptr %i.eh, align 4, !noalias !56
  %i.ej = and i8 %i.ei, 1
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNK12inf_rational6is_posEv.exit.thread
  %i.el = load i32, ptr %2, align 8, !tbaa !13, !noalias !56
  store i32 %i.el, ptr %11, align 8, !tbaa !13, !alias.scope !56
  store i8 %i.dz, ptr %i.dx, align 4, !alias.scope !56
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i44

bb.ae:                                            ; preds = %_ZNK12inf_rational6is_posEv.exit.thread
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i44 unwind label %bb.as

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i44: ; preds = %bb.ae, %bb.ad
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.eo = load i8, ptr %i.en, align 4, !noalias !56
  %i.ep = and i8 %i.eo, 1
  %i.eq = icmp eq i8 %i.ep, 0
  br i1 %i.eq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i44
  %i.er = load i32, ptr %i.em, align 8, !tbaa !13, !noalias !56
  store i32 %i.er, ptr %i.eb, align 8, !tbaa !13, !alias.scope !56
  %i.es = load i8, ptr %i.ec, align 4, !alias.scope !56
  %i.et = and i8 %i.es, -2
  store i8 %i.et, ptr %i.ec, align 4, !alias.scope !56
  br label %_ZN8rationalC2ERKS_.exit.i45

bb.ag:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i44
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %i.em)
          to label %_ZN8rationalC2ERKS_.exit.i45 unwind label %bb.as

_ZN8rationalC2ERKS_.exit.i45:                     ; preds = %bb.ag, %bb.af
  %i.eu = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !56
  invoke void @_ZN11mpz_managerILb1EE3absER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_Z3absRK8rational.exit50 unwind label %bb.ah

bb.ah:                                            ; preds = %_ZN8rationalC2ERKS_.exit.i45
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #14
  br label %.body48

_Z3absRK8rational.exit50:                         ; preds = %_ZN8rationalC2ERKS_.exit.i45
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.ew = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 4
  %i.ey = and i8 %i.ex, -4
  %i.ez = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.ez, align 8, !tbaa !14
  %i.fa = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store i32 1, ptr %i.fa, align 8, !tbaa !13
  %i.fb = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 4 uses
  %i.fc = load i8, ptr %i.fb, align 4
  %i.fd = and i8 %i.fc, -4
  store i8 %i.fd, ptr %i.fb, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr null, ptr %i.fe, align 8, !tbaa !14
  %i.ff = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10
  store i32 2, ptr %12, align 8, !tbaa !13
  store i8 %i.ey, ptr %i.ew, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.fa)
          to label %bb.ai unwind label %bb.at

bb.ai:                                            ; preds = %_Z3absRK8rational.exit50
  store i32 1, ptr %i.fa, align 8, !tbaa !13
  %i.fg = load i8, ptr %i.fb, align 4
  %i.fh = and i8 %i.fg, -2
  store i8 %i.fh, ptr %i.fb, align 4
  invoke void @_ZdvRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.aj unwind label %bb.au

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZmiRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ak unwind label %bb.av

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN12inf_rationalC2ERKS_(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc54 unwind label %bb.aw

.noexc54:                                         ; preds = %bb.ak
  %i.fi = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !57
  invoke void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN8rationaldVERKS_.exit.i53 unwind label %bb.al

_ZN8rationaldVERKS_.exit.i53:                     ; preds = %.noexc54
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  %i.fk = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !57
  invoke void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.fj)
          to label %_ZdvRK12inf_rationalRK8rational.exit57 unwind label %bb.al

bb.al:                                            ; preds = %_ZN8rationaldVERKS_.exit.i53, %.noexc54
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12inf_rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #14
  br label %.body55

_ZdvRK12inf_rationalRK8rational.exit57:           ; preds = %_ZN8rationaldVERKS_.exit.i53
  %i.fm = load i32, ptr %8, align 8, !tbaa !15
  store i32 %i.fm, ptr %0, align 8, !tbaa !15
  store i32 0, ptr %8, align 8, !tbaa !15
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !16
  store ptr %i.fo, ptr %i.d, align 8, !tbaa !16
  store ptr null, ptr %i.fn, align 8, !tbaa !16
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 4             ; 2 uses
  %i.fr = and i8 %i.fq, 3
  %22 = or disjoint i8 %i.fr, %i.c
  store i8 %22, ptr %i.a, align 4
  %23 = and i8 %i.fq, -4
  store i8 %23, ptr %i.fp, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !15
  store i32 %i.ft, ptr %i.e, align 8, !tbaa !15
  store i32 1, ptr %i.fs, align 8, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !16
  store ptr %i.fv, ptr %i.i, align 8, !tbaa !16
  store ptr null, ptr %i.fu, align 8, !tbaa !16
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 4             ; 2 uses
  %i.fy = and i8 %i.fx, 3
  %24 = or disjoint i8 %i.fy, %i.h
  store i8 %24, ptr %i.f, align 4
  %25 = and i8 %i.fx, -4
  store i8 %25, ptr %i.fw, align 4
  %i.fz = load i32, ptr %i.fj, align 8, !tbaa !15
  store i32 %i.fz, ptr %i.j, align 8, !tbaa !15
  store i32 0, ptr %i.fj, align 8, !tbaa !15
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !16
  store ptr %i.gb, ptr %i.n, align 8, !tbaa !16
  store ptr null, ptr %i.ga, align 8, !tbaa !16
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 4             ; 2 uses
  %i.ge = and i8 %i.gd, 3
  %26 = or disjoint i8 %i.ge, %i.m
  store i8 %26, ptr %i.k, align 4
  %27 = and i8 %i.gd, -4
  store i8 %27, ptr %i.gc, align 4
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !15
  store i32 %i.gg, ptr %i.o, align 8, !tbaa !15
  store i32 1, ptr %i.gf, align 8, !tbaa !15
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !16
  store ptr %i.gi, ptr %i.s, align 8, !tbaa !16
  store ptr null, ptr %i.gh, align 8, !tbaa !16
  %i.gj = getelementptr inbounds nuw i8, ptr %8, i64 52 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 4             ; 2 uses
  %i.gl = and i8 %i.gk, 3
  %28 = or disjoint i8 %i.gl, %i.r
  store i8 %28, ptr %i.p, align 4
  %29 = and i8 %i.gk, -4
  store i8 %29, ptr %i.gj, align 4
  %i.gm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %i.fj)
          to label %.noexc.i.i58 unwind label %bb.am

.noexc.i.i58:                                     ; preds = %_ZdvRK12inf_rationalRK8rational.exit57
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %i.gf)
          to label %_ZN8rationalD2Ev.exit.i59 unwind label %bb.am

bb.am:                                            ; preds = %.noexc.i.i58, %_ZdvRK12inf_rationalRK8rational.exit57
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #13
  unreachable

_ZN8rationalD2Ev.exit.i59:                        ; preds = %.noexc.i.i58
  %i.gp = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gp, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %.noexc.i1.i60 unwind label %bb.an

.noexc.i1.i60:                                    ; preds = %_ZN8rationalD2Ev.exit.i59
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gp, ptr noundef nonnull align 8 dereferenceable(16) %i.fs)
          to label %_ZN12inf_rationalD2Ev.exit61 unwind label %bb.an

bb.an:                                            ; preds = %.noexc.i1.i60, %_ZN8rationalD2Ev.exit.i59
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #13
  unreachable

_ZN12inf_rationalD2Ev.exit61:                     ; preds = %.noexc.i1.i60
  %i.gs = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i62 unwind label %bb.ao

.noexc.i62:                                       ; preds = %_ZN12inf_rationalD2Ev.exit61
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %i.gt)
          to label %_ZN8rationalD2Ev.exit63 unwind label %bb.ao

bb.ao:                                            ; preds = %.noexc.i62, %_ZN12inf_rationalD2Ev.exit61
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #13
  unreachable

_ZN8rationalD2Ev.exit63:                          ; preds = %.noexc.i62
  %i.gw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gw, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc.i64 unwind label %bb.ap

.noexc.i64:                                       ; preds = %_ZN8rationalD2Ev.exit63
  %i.gx = getelementptr inbounds nuw i8, ptr %10, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gw, ptr noundef nonnull align 8 dereferenceable(16) %i.gx)
          to label %_ZN8rationalD2Ev.exit65 unwind label %bb.ap

bb.ap:                                            ; preds = %.noexc.i64, %_ZN8rationalD2Ev.exit63
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #13
  unreachable

_ZN8rationalD2Ev.exit65:                          ; preds = %.noexc.i64
  %i.ha = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ha, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc.i66 unwind label %bb.aq

.noexc.i66:                                       ; preds = %_ZN8rationalD2Ev.exit65
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ha, ptr noundef nonnull align 8 dereferenceable(16) %i.fa)
          to label %_ZN8rationalD2Ev.exit67 unwind label %bb.aq

bb.aq:                                            ; preds = %.noexc.i66, %_ZN8rationalD2Ev.exit65
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #13
  unreachable

_ZN8rationalD2Ev.exit67:                          ; preds = %.noexc.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.hd = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hd, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc.i68 unwind label %bb.ar

.noexc.i68:                                       ; preds = %_ZN8rationalD2Ev.exit67
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hd, ptr noundef nonnull align 8 dereferenceable(16) %i.eb)
          to label %_ZN8rationalD2Ev.exit69 unwind label %bb.ar

bb.ar:                                            ; preds = %.noexc.i68, %_ZN8rationalD2Ev.exit67
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #13
  unreachable

_ZN8rationalD2Ev.exit69:                          ; preds = %.noexc.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.be

bb.as:                                            ; preds = %bb.ag, %bb.ae
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body48

bb.at:                                            ; preds = %_Z3absRK8rational.exit50
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.au:                                            ; preds = %bb.ai
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.av:                                            ; preds = %bb.aj
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ak
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %.body55

.body55:                                          ; preds = %bb.al, %bb.aw
  %eh.lpad-body56 = phi { ptr, i32 } [ %i.hk, %bb.aw ], [ %i.fl, %bb.al ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #14
  br label %bb.ax

bb.ax:                                            ; preds = %.body55, %bb.av
  %.pn = phi { ptr, i32 } [ %eh.lpad-body56, %.body55 ], [ %i.hj, %bb.av ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #14
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.au
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ax ], [ %i.hi, %bb.au ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #14
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.at
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ay ], [ %i.hh, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #14
  br label %.body48

.body48:                                          ; preds = %bb.as, %bb.ah, %bb.az
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.az ], [ %i.hg, %bb.as ], [ %i.ev, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.bf

.thread:                                          ; preds = %bb.ac, %bb.c, %_ZNK12inf_rational6is_negEv.exit, %_ZNK12inf_rational6is_posEv.exit, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  invoke void @_ZN12inf_rationalC2ERKS_(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc71 unwind label %bb.bd

.noexc71:                                         ; preds = %.thread
  %i.hl = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !58
  invoke void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.hl, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZN8rationaldVERKS_.exit.i70 unwind label %bb.ba

_ZN8rationaldVERKS_.exit.i70:                     ; preds = %.noexc71
  %i.hm = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 5 uses
  %i.hn = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !58
  invoke void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.hn, ptr noundef nonnull align 8 dereferenceable(32) %i.hm, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.hm)
          to label %_ZdvRK12inf_rationalRK8rational.exit74 unwind label %bb.ba

bb.ba:                                            ; preds = %_ZN8rationaldVERKS_.exit.i70, %.noexc71
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12inf_rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #14
  br label %.body72

_ZdvRK12inf_rationalRK8rational.exit74:           ; preds = %_ZN8rationaldVERKS_.exit.i70
  %i.hp = load i32, ptr %13, align 8, !tbaa !15
  store i32 %i.hp, ptr %0, align 8, !tbaa !15
  store i32 0, ptr %13, align 8, !tbaa !15
  %i.hq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !16
  store ptr %i.hr, ptr %i.d, align 8, !tbaa !16
  store ptr null, ptr %i.hq, align 8, !tbaa !16
  %i.hs = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 4             ; 2 uses
  %i.hu = and i8 %i.ht, 3
  %30 = or disjoint i8 %i.hu, %i.c
  store i8 %30, ptr %i.a, align 4
  %31 = and i8 %i.ht, -4
  store i8 %31, ptr %i.hs, align 4
  %i.hv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !15
  store i32 %i.hw, ptr %i.e, align 8, !tbaa !15
  store i32 1, ptr %i.hv, align 8, !tbaa !15
  %i.hx = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !16
  store ptr %i.hy, ptr %i.i, align 8, !tbaa !16
  store ptr null, ptr %i.hx, align 8, !tbaa !16
  %i.hz = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.ia = load i8, ptr %i.hz, align 4             ; 2 uses
  %i.ib = and i8 %i.ia, 3
  %32 = or disjoint i8 %i.ib, %i.h
  store i8 %32, ptr %i.f, align 4
  %33 = and i8 %i.ia, -4
  store i8 %33, ptr %i.hz, align 4
  %i.ic = load i32, ptr %i.hm, align 8, !tbaa !15
  store i32 %i.ic, ptr %i.j, align 8, !tbaa !15
  store i32 0, ptr %i.hm, align 8, !tbaa !15
  %i.id = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !16
  store ptr %i.ie, ptr %i.n, align 8, !tbaa !16
  store ptr null, ptr %i.id, align 8, !tbaa !16
  %i.if = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 2 uses
  %i.ig = load i8, ptr %i.if, align 4             ; 2 uses
  %i.ih = and i8 %i.ig, 3
  %34 = or disjoint i8 %i.ih, %i.m
  store i8 %34, ptr %i.k, align 4
  %35 = and i8 %i.ig, -4
  store i8 %35, ptr %i.if, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !15
  store i32 %i.ij, ptr %i.o, align 8, !tbaa !15
  store i32 1, ptr %i.ii, align 8, !tbaa !15
  %i.ik = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !16
  store ptr %i.il, ptr %i.s, align 8, !tbaa !16
  store ptr null, ptr %i.ik, align 8, !tbaa !16
  %i.im = getelementptr inbounds nuw i8, ptr %13, i64 52 ; 2 uses
  %i.in = load i8, ptr %i.im, align 4             ; 2 uses
  %i.io = and i8 %i.in, 3
  %36 = or disjoint i8 %i.io, %i.r
  store i8 %36, ptr %i.p, align 4
  %37 = and i8 %i.in, -4
  store i8 %37, ptr %i.im, align 4
  %i.ip = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ip, ptr noundef nonnull align 8 dereferenceable(32) %i.hm)
          to label %.noexc.i.i75 unwind label %bb.bb

.noexc.i.i75:                                     ; preds = %_ZdvRK12inf_rationalRK8rational.exit74
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ip, ptr noundef nonnull align 8 dereferenceable(16) %i.ii)
          to label %_ZN8rationalD2Ev.exit.i76 unwind label %bb.bb

bb.bb:                                            ; preds = %.noexc.i.i75, %_ZdvRK12inf_rationalRK8rational.exit74
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #13
  unreachable

_ZN8rationalD2Ev.exit.i76:                        ; preds = %.noexc.i.i75
  %i.is = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.is, ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %.noexc.i1.i77 unwind label %bb.bc

.noexc.i1.i77:                                    ; preds = %_ZN8rationalD2Ev.exit.i76
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.is, ptr noundef nonnull align 8 dereferenceable(16) %i.hv)
          to label %_ZN12inf_rationalD2Ev.exit78 unwind label %bb.bc

bb.bc:                                            ; preds = %.noexc.i1.i77, %_ZN8rationalD2Ev.exit.i76
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  %i.iu = extractvalue { ptr, i32 } %i.it, 0
  call void @__clang_call_terminate(ptr %i.iu) #13
  unreachable

_ZN12inf_rationalD2Ev.exit78:                     ; preds = %.noexc.i1.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.be

bb.bd:                                            ; preds = %.thread
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.body72

.body72:                                          ; preds = %bb.ba, %bb.bd
  %eh.lpad-body73 = phi { ptr, i32 } [ %i.iv, %bb.bd ], [ %i.ho, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.bf

bb.be:                                            ; preds = %_ZN8rationalD2Ev.exit43, %_ZN12inf_rationalD2Ev.exit78, %_ZN8rationalD2Ev.exit69
  ret void

bb.bf:                                            ; preds = %.body72, %.body48, %.body
  %.pn27.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn.pn, %.body ], [ %.pn.pn.pn.pn, %.body48 ], [ %eh.lpad-body73, %.body72 ]
  call void @_ZN12inf_rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #14
  resume { ptr, i32 } %.pn27.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z9inf_powerRK12inf_rationalj(ptr dead_on_unwind noalias writable sret(%class.inf_rational) align 8 initializes((0, 4), (8, 20), (24, 36), (40, 52), (56, 64)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 14 uses
  %4 = alloca %class.rational, align 8            ; 6 uses
  %5 = alloca %class.rational, align 8            ; 7 uses
  %6 = alloca %class.rational, align 8            ; 7 uses
  %7 = alloca %class.rational, align 8            ; 7 uses
  %8 = alloca %class.rational, align 8            ; 6 uses
  %9 = alloca %class.rational, align 8            ; 7 uses
  %10 = alloca %class.rational, align 8           ; 7 uses
  %11 = alloca %class.rational, align 8           ; 7 uses
  %i.a = and i32 %2, 1
  %i.b = icmp eq i32 %i.a, 0                      ; 4 uses
  store i32 0, ptr %0, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, -4                          ; 2 uses
  store i8 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i32 1, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, -4
  store i8 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, -4
  store i8 %i.o, ptr %i.m, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.p, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.q, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, -4
  store i8 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.u, align 8, !tbaa !14
  %i.v = icmp eq i32 %2, 1
  br i1 %i.v, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.w = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN12inf_rationalaSERKS_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN8rationalaSERKS_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.n, %bb.l, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !13   ; 3 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp sgt i32 %i.z, 0
  br i1 %i.ad, label %bb.i, label %.thread

bb.g:                                             ; preds = %bb.e
  %i.ae = icmp slt i32 %i.ab, 0
  br i1 %i.ae, label %bb.h, label %.thread41

bb.h:                                             ; preds = %bb.g
  %i.af = icmp slt i32 %i.z, 0
  %or.cond = and i1 %i.b, %i.af
  br i1 %or.cond, label %bb.i, label %.thread.thread

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  store i32 0, ptr %3, align 8, !tbaa !13, !alias.scope !61
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 4, !alias.scope !61
  %i.ai = and i8 %i.ah, -4
  store i8 %i.ai, ptr %i.ag, align 4, !alias.scope !61
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !14, !alias.scope !61
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 1, ptr %i.ak, align 8, !tbaa !13, !alias.scope !61
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.am = load i8, ptr %i.al, align 4, !alias.scope !61
  %i.an = and i8 %i.am, -4
  store i8 %i.an, ptr %i.al, align 4, !alias.scope !61
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !14, !alias.scope !61
  %i.ap = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !10, !noalias !61
  invoke void @_ZN11mpq_managerILb1EE5powerERK3mpqjRS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNK8rational4exptEi.exit unwind label %.body

.body:                                            ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.am

_ZNK8rational4exptEi.exit:                        ; preds = %bb.i
  %i.ar = load i32, ptr %0, align 8, !tbaa !15
  %i.as = load i32, ptr %3, align 8, !tbaa !15
  store i32 %i.as, ptr %0, align 8, !tbaa !15
  store i32 %i.ar, ptr %3, align 8, !tbaa !15
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !16
  store ptr %i.au, ptr %i.f, align 8, !tbaa !16
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !16
  %i.av = load i8, ptr %i.c, align 4              ; 2 uses
  %i.aw = load i8, ptr %i.ag, align 4             ; 2 uses
  %i.ax = and i8 %i.av, -4
  %i.ay = and i8 %i.aw, -4
  %i.az = and i8 %i.aw, 3
  %i.ba = or disjoint i8 %i.az, %i.ax
  store i8 %i.ba, ptr %i.c, align 4
  %i.bb = and i8 %i.av, 3
  %i.bc = or disjoint i8 %i.ay, %i.bb
  store i8 %i.bc, ptr %i.ag, align 4
  %i.bd = load i32, ptr %i.g, align 8, !tbaa !15
  %i.be = load i32, ptr %i.ak, align 8, !tbaa !15
  store i32 %i.be, ptr %i.g, align 8, !tbaa !15
  store i32 %i.bd, ptr %i.ak, align 8, !tbaa !15
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !16
  store ptr %i.bg, ptr %i.k, align 8, !tbaa !16
  store ptr %i.bf, ptr %i.ao, align 8, !tbaa !16
  %i.bh = load i8, ptr %i.h, align 4              ; 2 uses
  %i.bi = load i8, ptr %i.al, align 4             ; 2 uses
  %i.bj = and i8 %i.bh, -4
  %i.bk = and i8 %i.bi, -4
  %i.bl = and i8 %i.bi, 3
  %i.bm = or disjoint i8 %i.bl, %i.bj
  store i8 %i.bm, ptr %i.h, align 4
  %i.bn = and i8 %i.bh, 3
  %i.bo = or disjoint i8 %i.bk, %i.bn
end_hunk_1
