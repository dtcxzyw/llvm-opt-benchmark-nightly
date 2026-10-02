Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/lar_solver?download=true
inline.NumInlined: 6282
inline.NumDeleted: 2310
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK2lp10lar_solver36implied_bound_is_correctly_explainedERKNS_13implied_boundERK6vectorISt4pairI8rationaljELb1EjE
define hidden noundef zeroext i1 @_ZNK2lp10lar_solver36implied_bound_is_correctly_explainedERKNS_13implied_boundERK6vectorISt4pairI8rationaljELb1EjE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unordered_map.120", align 8 ; 17 uses
  %4 = alloca %class.rational, align 8            ; 21 uses
  %5 = alloca %class.rational, align 8            ; 16 uses
  %6 = alloca %class.rational, align 8            ; 8 uses
  %7 = alloca %"class.std::optional", align 8     ; 14 uses
  %8 = alloca %class.rational, align 8            ; 17 uses
  %9 = alloca %class.rational, align 8            ; 16 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %10 = alloca %"class.std::optional", align 8    ; 10 uses
  %11 = alloca %class.rational, align 8           ; 15 uses
  %12 = alloca %"class.std::optional", align 8    ; 13 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %13 = alloca %class.rational, align 8           ; 11 uses
  %14 = alloca %class.rational, align 8           ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !304
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 1, ptr %i.d, align 8, !tbaa !305
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !133
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  store i32 0, ptr %4, align 8, !tbaa !243, !alias.scope !551
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.i = load i8, ptr %i.h, align 4, !alias.scope !551
  %i.j = and i8 %i.i, -4                          ; 2 uses
  store i8 %i.j, ptr %i.h, align 4, !alias.scope !551
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !242, !alias.scope !551
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store i32 1, ptr %i.l, align 8, !tbaa !243, !alias.scope !551
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  %i.n = load i8, ptr %i.m, align 4, !alias.scope !551
  %i.o = and i8 %i.n, -4
  store i8 %i.o, ptr %i.m, align 4, !alias.scope !551
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.p, align 8, !tbaa !242, !alias.scope !551
  %i.q = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !254, !noalias !551 ; 2 uses
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 4), align 4, !noalias !551
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load i32, ptr @_ZN8rational6m_zeroE, align 8, !tbaa !243, !noalias !551
  store i32 %i.u, ptr %4, align 8, !tbaa !243, !alias.scope !551
  store i8 %i.j, ptr %i.h, align 4, !alias.scope !551
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational6m_zeroE)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i unwind label %bb.f

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 20), align 4, !noalias !551
  %i.w = and i8 %i.v, 1
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 16), align 8, !tbaa !243, !noalias !551
  store i32 %i.y, ptr %i.l, align 8, !tbaa !243, !alias.scope !551
  %i.z = load i8, ptr %i.m, align 4, !alias.scope !551
  %i.aa = and i8 %i.z, -2
  store i8 %i.aa, ptr %i.m, align 4, !alias.scope !551
  br label %_ZN2lp12zero_of_typeI8rationalEET_v.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 16))
          to label %_ZN2lp12zero_of_typeI8rationalEET_v.exit unwind label %bb.f

_ZN2lp12zero_of_typeI8rationalEET_v.exit:         ; preds = %bb.d, %bb.e
  %i.ab = load ptr, ptr %2, align 8, !tbaa !306   ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %._crit_edge, label %_ZNK6vectorISt4pairI8rationaljELb1EjE3endEv.exit

_ZNK6vectorISt4pairI8rationaljELb1EjE3endEv.exit: ; preds = %_ZN2lp12zero_of_typeI8rationalEET_v.exit
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !246 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = mul nuw nsw i64 %i.af, 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %.not259 = icmp eq i32 %i.ae, 0
  br i1 %.not259, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorISt4pairI8rationaljELb1EjE3endEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.g:                                             ; preds = %.lr.ph, %_ZN8rationalD2Ev.exit152
  %.079263 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ci, %_ZN8rationalD2Ev.exit152 ] ; 7 uses
  %.080262 = phi i8 [ 0, %.lr.ph ], [ %.181, %_ZN8rationalD2Ev.exit152 ]
  %.082261 = phi i32 [ 0, %.lr.ph ], [ %.183, %_ZN8rationalD2Ev.exit152 ]
  %.084260 = phi i32 [ 0, %.lr.ph ], [ %.185, %_ZN8rationalD2Ev.exit152 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i32 0, ptr %5, align 8, !tbaa !243
  %i.aq = load i8, ptr %i.ai, align 4
  %i.ar = and i8 %i.aq, -4                        ; 2 uses
  store i8 %i.ar, ptr %i.ai, align 4
  store ptr null, ptr %i.aj, align 8, !tbaa !242
  store i32 1, ptr %i.ak, align 8, !tbaa !243
  %i.as = load i8, ptr %i.al, align 4
  %i.at = and i8 %i.as, -4
  store i8 %i.at, ptr %i.al, align 4
  store ptr null, ptr %i.am, align 8, !tbaa !242
  %i.au = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !254 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.079263, i64 4
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, 1
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = load i32, ptr %.079263, align 8, !tbaa !243
  store i32 %i.az, ptr %5, align 8, !tbaa !243
  store i8 %i.ar, ptr %i.ai, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.i:                                             ; preds = %bb.g
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %.079263)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i unwind label %bb.o

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.i, %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.079263, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.079263, i64 20
  %i.bc = load i8, ptr %i.bb, align 4
  %i.bd = and i8 %i.bc, 1
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.bf = load i32, ptr %i.ba, align 8, !tbaa !243
  store i32 %i.bf, ptr %i.ak, align 8, !tbaa !243
  %i.bg = load i8, ptr %i.al, align 4
  %i.bh = and i8 %i.bg, -2
  store i8 %i.bh, ptr %i.al, align 4
  br label %bb.l

bb.k:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %.079263, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !308
  %i.bk = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1344
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !230
  %i.bn = zext i32 %i.bj to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !310 ; 3 uses
  %i.bq = load i32, ptr %5, align 8, !tbaa !243
  %i.br = icmp sgt i32 %i.bq, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !314 ; 2 uses
  %i.bu = sub nsw i32 0, %i.bt
  %i.bv = select i1 %i.br, i32 %i.bt, i32 %i.bu   ; 3 uses
  invoke void @_ZN2lp10lar_solver15register_in_mapERSt13unordered_mapIj8rationalSt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEERKNS_19lar_base_constraintERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(96) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  switch i32 %i.bv, label %bb.q [
    i32 -1, label %bb.n
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  br label %bb.q

bb.o:                                             ; preds = %bb.k, %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.p:                                             ; preds = %bb.l
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.q:                                             ; preds = %bb.m, %bb.n
  %.181 = phi i8 [ 1, %bb.n ], [ %.080262, %bb.m ] ; 2 uses
  %i.by = add i32 %i.bv, -1
  %or.cond9 = icmp ult i32 %i.by, 2               ; 2 uses
  %or.cond11 = icmp ugt i32 %i.bv, -3
  %i.bz = zext i1 %or.cond9 to i32
  %.185 = add i32 %.084260, %i.bz                 ; 2 uses
  %not.or.cond9 = xor i1 %or.cond9, true
  %narrow = select i1 %not.or.cond9, i1 %or.cond11, i1 false
  %spec.select142 = zext i1 %narrow to i32
  %.183 = add i32 %.082261, %spec.select142       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  invoke void @_ZmlRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cb = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !254
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN8rationalpLERKS_.exit unwind label %bb.v

_ZN8rationalpLERKS_.exit:                         ; preds = %bb.r
  %i.cc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !254 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %_ZN8rationalpLERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %.noexc.i, %_ZN8rationalpLERKS_.exit
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #29
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.cf = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !254 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i151 unwind label %bb.t

.noexc.i151:                                      ; preds = %_ZN8rationalD2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %_ZN8rationalD2Ev.exit152 unwind label %bb.t

bb.t:                                             ; preds = %.noexc.i151, %_ZN8rationalD2Ev.exit
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #29
  unreachable

_ZN8rationalD2Ev.exit152:                         ; preds = %.noexc.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ci = getelementptr inbounds nuw i8, ptr %.079263, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.ci, %i.ah
  br i1 %.not, label %._crit_edge.loopexit, label %bb.g

bb.u:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn134 = phi { ptr, i32 } [ %i.ck, %bb.v ], [ %i.cj, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.x

bb.x:                                             ; preds = %bb.p, %bb.w
  %.pn134.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.p ], [ %.pn134, %bb.w ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #28
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.o
  %.pn134.pn.pn.pn = phi { ptr, i32 } [ %.pn134.pn.pn, %bb.x ], [ %i.bw, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.do

._crit_edge.loopexit:                             ; preds = %_ZN8rationalD2Ev.exit152
  %i.cl = icmp eq i32 %.185, 0
  %i.cm = icmp eq i32 %.183, 0
  %i.cn = select i1 %i.cm, i32 0, i32 -2
  %i.co = select i1 %i.cl, i32 %i.cn, i32 2
  %i.cp = zext nneg i8 %.181 to i32
  %i.cq = ashr exact i32 %i.co, %i.cp
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2lp12zero_of_typeI8rationalEET_v.exit, %._crit_edge.loopexit, %_ZNK6vectorISt4pairI8rationaljELb1EjE3endEv.exit
  %spec.select = phi i32 [ 0, %_ZNK6vectorISt4pairI8rationaljELb1EjE3endEv.exit ], [ %i.cq, %._crit_edge.loopexit ], [ 0, %_ZN2lp12zero_of_typeI8rationalEET_v.exit ] ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !264
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !59
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !265
  %i.cx = zext i32 %i.cs to i64
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !267 ; 4 uses
  %.not225 = icmp eq ptr %i.da, null
  br i1 %.not225, label %bb.z, label %bb.bg

bb.z:                                             ; preds = %._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !315
  %.not112 = icmp eq i64 %i.dc, 1
  br i1 %.not112, label %bb.ab, label %_ZeqRK8rationalS1_.exit

bb.aa:                                            ; preds = %bb.dk, %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_Z13try_get_valueIj8rationalSt4hashIjESt8equal_toIjEESt8optionalIT0_ERKSt13unordered_mapIT_S6_T1_T2_SaISt4pairIKS9_S6_EEERSD_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.cr)
          to label %bb.ac unwind label %bb.at

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.df = load i8, ptr %i.de, align 8, !tbaa !317, !range !293, !noundef !60
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.ad, label %_ZNSt14_Optional_baseI8rationalLb0ELb0EED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i32 0, ptr %8, align 8, !tbaa !243
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 4 uses
  %i.di = load i8, ptr %i.dh, align 4
  %i.dj = and i8 %i.di, -4                        ; 2 uses
  store i8 %i.dj, ptr %i.dh, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.dk, align 8, !tbaa !242
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store i32 1, ptr %i.dl, align 8, !tbaa !243
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 5 uses
  %i.dn = load i8, ptr %i.dm, align 4
  %i.do = and i8 %i.dn, -4
  store i8 %i.do, ptr %i.dm, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr null, ptr %i.dp, align 8, !tbaa !242
  %i.dq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !254 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ds = load i8, ptr %i.dr, align 4
  %i.dt = and i8 %i.ds, 1
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dv = load i32, ptr %7, align 8, !tbaa !243
  store i32 %i.dv, ptr %8, align 8, !tbaa !243
  store i8 %i.dj, ptr %i.dh, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i153

bb.af:                                            ; preds = %bb.ad
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i153 unwind label %bb.au

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i153: ; preds = %bb.af, %bb.ae
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.dy = load i8, ptr %i.dx, align 4
  %i.dz = and i8 %i.dy, 1
  %i.ea = icmp eq i8 %i.dz, 0
  br i1 %i.ea, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i153
  %i.eb = load i32, ptr %i.dw, align 8, !tbaa !243
  store i32 %i.eb, ptr %i.dl, align 8, !tbaa !243
  %i.ec = load i8, ptr %i.dm, align 4
  %i.ed = and i8 %i.ec, -2
  store i8 %i.ed, ptr %i.dm, align 4
  br label %_ZN8rationalC2ERKS_.exit156

bb.ah:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i153
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.dw)
          to label %_ZN8rationalC2ERKS_.exit156 unwind label %bb.au

_ZN8rationalC2ERKS_.exit156:                      ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  store i32 0, ptr %9, align 8, !tbaa !243, !alias.scope !552
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 4 uses
  %i.ef = load i8, ptr %i.ee, align 4, !alias.scope !552
  %i.eg = and i8 %i.ef, -4                        ; 2 uses
  store i8 %i.eg, ptr %i.ee, align 4, !alias.scope !552
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.eh, align 8, !tbaa !242, !alias.scope !552
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store i32 1, ptr %i.ei, align 8, !tbaa !243, !alias.scope !552
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 5 uses
  %i.ek = load i8, ptr %i.ej, align 4, !alias.scope !552
  %i.el = and i8 %i.ek, -4
  store i8 %i.el, ptr %i.ej, align 4, !alias.scope !552
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr null, ptr %i.em, align 8, !tbaa !242, !alias.scope !552
  %i.en = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !254, !noalias !552 ; 2 uses
  %i.eo = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational6m_zeroE, i64 4), align 4, !noalias !552
  %i.ep = and i8 %i.eo, 1
  %i.eq = icmp eq i8 %i.ep, 0
  br i1 %i.eq, label %bb.ai, label %bb.aj
end_hunk_0
