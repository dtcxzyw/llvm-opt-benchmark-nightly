Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/algebraic_numbers?download=true
inline.NumInlined: 2967
inline.NumDeleted: 537
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN17algebraic_numbers7manager3imp3invERNS_4anumE:bb.a
  %3 = alloca %class._scoped_numeral.9, align 8   ; 12 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !82
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.19, i32 noundef 1978, ptr noundef nonnull @.str.31)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  %i.c = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN17algebraic_numbers19algebraic_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull @.str.32)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN17algebraic_numbers19algebraic_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #25
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN17algebraic_numbers7manager3imp15refine_nz_boundERNS_4anumE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = load ptr, ptr %1, align 8, !tbaa !82     ; 11 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 7
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %_ZN11mpq_managerILb0EE3invER3mpq.exit

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79, !nonnull !78, !align !80 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !115
  br label %_ZN11mpq_managerILb0EE3invER3mpq.exit

_ZN11mpq_managerILb0EE3invER3mpq.exit:            ; preds = %bb.f, %bb.g
  %i.n = phi i32 [ %.pre.i, %bb.g ], [ %i.i, %bb.f ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !115
  store i32 %i.p, ptr %i.e, align 8, !tbaa !115
  store i32 %i.n, ptr %i.o, align 8, !tbaa !115
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !141
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !141
  store ptr %i.t, ptr %i.q, align 8, !tbaa !141
  store ptr %i.s, ptr %i.r, align 8, !tbaa !141
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4               ; 2 uses
  %i.y = and i8 %i.v, -4
  %i.z = and i8 %i.x, -4
  %i.aa = and i8 %i.x, 3
  %i.ab = or disjoint i8 %i.aa, %i.y
  store i8 %i.ab, ptr %i.u, align 4
  %i.ac = and i8 %i.v, 3
  %i.ad = or disjoint i8 %i.z, %i.ac
  store i8 %i.ad, ptr %i.w, align 4
  br label %bb.y

bb.h:                                             ; preds = %bb.e
  %i.ae = and i64 %i.f, -8
  %i.af = inttoptr i64 %i.ae to ptr               ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !87
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86
  tail call void @_ZN11upolynomial7manager9p_1_div_xEjP3mpz(ptr noundef nonnull align 8 dereferenceable(312) %i.ag, i32 noundef %i.ah, ptr noundef %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !79, !nonnull !78, !align !80 ; 3 uses
  store ptr %i.al, ptr %2, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  store i32 0, ptr %i.am, align 8, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  %i.ao = load i8, ptr %i.an, align 4
  %i.ap = and i8 %i.ao, -4
  store i8 %i.ap, ptr %i.an, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  store i32 1, ptr %i.ar, align 8, !tbaa !39
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 6 uses
  %i.at = load i8, ptr %i.as, align 4
  %i.au = and i8 %i.at, -4
  store i8 %i.au, ptr %i.as, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  store ptr null, ptr %i.av, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.al, ptr %3, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = and i8 %i.ay, -4
  store i8 %i.az, ptr %i.ax, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.ba, align 8, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  store i32 1, ptr %i.bb, align 8, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  %i.bd = load i8, ptr %i.bc, align 4
  %i.be = and i8 %i.bd, -4
  store i8 %i.be, ptr %i.bc, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr null, ptr %i.bf, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  invoke void @_Z6to_mpqI11mpq_managerILb0EEEvRT_RK4mpbqR3mpq(ptr noundef nonnull align 8 dereferenceable(728) %i.al, ptr noundef nonnull align 8 dereferenceable(20) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.ak, align 8, !tbaa !79, !nonnull !78, !align !80
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 2 uses
  invoke void @_Z6to_mpqI11mpq_managerILb0EEEvRT_RK4mpbqR3mpq(ptr noundef nonnull align 8 dereferenceable(728) %i.bh, ptr noundef nonnull align 8 dereferenceable(20) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !79, !nonnull !78, !align !80 ; 3 uses
  %i.bk = load i32, ptr %i.am, align 8, !tbaa !39 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.k
  invoke void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %.noexc22 unwind label %bb.r

.noexc22:                                         ; preds = %.noexc
  %.pre.i21 = load i32, ptr %i.am, align 8, !tbaa !115
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !79
  br label %bb.l

bb.l:                                             ; preds = %.noexc22, %bb.j
  %i.bm = phi ptr [ %.pre, %.noexc22 ], [ %i.bj, %bb.j ] ; 2 uses
  %i.bn = phi i32 [ %.pre.i21, %.noexc22 ], [ %i.bk, %bb.j ] ; 2 uses
  %i.bo = load i32, ptr %i.ar, align 8, !tbaa !115 ; 2 uses
  store i32 %i.bo, ptr %i.am, align 8, !tbaa !115
  store i32 %i.bn, ptr %i.ar, align 8, !tbaa !115
  %i.bp = load ptr, ptr %i.aq, align 8, !tbaa !141 ; 2 uses
  %i.bq = load ptr, ptr %i.av, align 8, !tbaa !141 ; 2 uses
  store ptr %i.bq, ptr %i.aq, align 8, !tbaa !141
  store ptr %i.bp, ptr %i.av, align 8, !tbaa !141
  %i.br = load i8, ptr %i.an, align 4             ; 2 uses
  %i.bs = load i8, ptr %i.as, align 4             ; 2 uses
  %i.bt = and i8 %i.br, -4
  %i.bu = and i8 %i.bs, -4
  %i.bv = and i8 %i.bs, 3
  %i.bw = or disjoint i8 %i.bv, %i.bt             ; 2 uses
  store i8 %i.bw, ptr %i.an, align 4
  %i.bx = and i8 %i.br, 3
  %i.by = or disjoint i8 %i.bu, %i.bx             ; 2 uses
  store i8 %i.by, ptr %i.as, align 4
  %i.bz = load i32, ptr %i.aw, align 8, !tbaa !39 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %.noexc25 unwind label %bb.r

.noexc25:                                         ; preds = %bb.m
  invoke void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bb)
          to label %.noexc26 unwind label %bb.r

.noexc26:                                         ; preds = %.noexc25
  %.pre.i24 = load i32, ptr %i.aw, align 8, !tbaa !115
  %.pre31 = load i32, ptr %i.am, align 8, !tbaa !115
  %.pre32 = load ptr, ptr %i.aq, align 8, !tbaa !141
  %.pre33 = load i8, ptr %i.an, align 4
  %.pre34 = load i32, ptr %i.ar, align 8, !tbaa !115
  %.pre35 = load ptr, ptr %i.av, align 8, !tbaa !141
  %.pre36 = load i8, ptr %i.as, align 4
  br label %bb.n

bb.n:                                             ; preds = %.noexc26, %bb.l
  %i.cb = phi i8 [ %.pre36, %.noexc26 ], [ %i.by, %bb.l ] ; 2 uses
  %i.cc = phi ptr [ %.pre35, %.noexc26 ], [ %i.bp, %bb.l ]
  %i.cd = phi i32 [ %.pre34, %.noexc26 ], [ %i.bn, %bb.l ]
  %i.ce = phi i8 [ %.pre33, %.noexc26 ], [ %i.bw, %bb.l ] ; 2 uses
  %i.cf = phi ptr [ %.pre32, %.noexc26 ], [ %i.bq, %bb.l ]
  %i.cg = phi i32 [ %.pre31, %.noexc26 ], [ %i.bo, %bb.l ]
  %i.ch = phi i32 [ %.pre.i24, %.noexc26 ], [ %i.bz, %bb.l ]
  %i.ci = load i32, ptr %i.bb, align 8, !tbaa !115
  %i.cj = load ptr, ptr %i.ba, align 8, !tbaa !141
  %i.ck = load ptr, ptr %i.bf, align 8, !tbaa !141
  %i.cl = load i8, ptr %i.ax, align 4             ; 2 uses
  %i.cm = load i8, ptr %i.bc, align 4             ; 2 uses
  %i.cn = and i8 %i.cl, -4
  %i.co = and i8 %i.cm, -4
  store i32 %i.ci, ptr %i.am, align 8, !tbaa !115
  store i32 %i.cg, ptr %i.aw, align 8, !tbaa !115
  store ptr %i.ck, ptr %i.aq, align 8, !tbaa !141
  store ptr %i.cf, ptr %i.ba, align 8, !tbaa !141
  %4 = and i8 %i.ce, -4
  %i.cp = and i8 %i.cm, 3
  %i.cq = or disjoint i8 %4, %i.cp
  store i8 %i.cq, ptr %i.an, align 4
  %i.cr = and i8 %i.ce, 3
  %i.cs = or disjoint i8 %i.cr, %i.cn
  store i8 %i.cs, ptr %i.ax, align 4
  store i32 %i.ch, ptr %i.ar, align 8, !tbaa !115
  store i32 %i.cd, ptr %i.bb, align 8, !tbaa !115
  store ptr %i.cj, ptr %i.av, align 8, !tbaa !141
  store ptr %i.cc, ptr %i.bf, align 8, !tbaa !141
  %5 = and i8 %i.cb, -4
  %i.ct = and i8 %i.cl, 3
  %i.cu = or disjoint i8 %5, %i.ct
  store i8 %i.cu, ptr %i.as, align 4
  %i.cv = and i8 %i.cb, 3
  %i.cw = or disjoint i8 %i.cv, %i.co
  store i8 %i.cw, ptr %i.bc, align 4
  %i.cx = load i32, ptr %i.af, align 8, !tbaa !87
  %i.cy = load ptr, ptr %i.ai, align 8, !tbaa !86
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = invoke noundef zeroext i1 @_ZN11upolynomial7manager21convert_q2bq_intervalEjPK3mpzRK3mpqS6_R12mpbq_managerR4mpbqSA_(ptr noundef nonnull align 8 dereferenceable(312) %i.ag, i32 noundef %i.cx, ptr noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(208) %i.cz, ptr noundef nonnull align 8 dereferenceable(20) %i.bg, ptr noundef nonnull align 8 dereferenceable(20) %i.bi)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  br i1 %i.da, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN17algebraic_numbers19algebraic_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.db, ptr noundef nonnull @.str.33)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.db, ptr nonnull @_ZTIN17algebraic_numbers19algebraic_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #27
          to label %bb.aa unwind label %bb.r

bb.r:                                             ; preds = %bb.t, %.noexc25, %bb.m, %.noexc, %bb.k, %bb.q, %bb.n, %bb.i, %bb.h
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.s:                                             ; preds = %bb.p
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.db) #25
  br label %bb.x

bb.t:                                             ; preds = %bb.o
  %i.de = load i32, ptr %i.af, align 8, !tbaa !87
  %i.df = load ptr, ptr %i.ai, align 8, !tbaa !86
  %i.dg = invoke noundef i32 @_ZN11upolynomial7manager12eval_sign_atEjPK3mpzRK4mpbq(ptr noundef nonnull align 8 dereferenceable(312) %i.ag, i32 noundef %i.de, ptr noundef %i.df, ptr noundef nonnull align 8 dereferenceable(20) %i.bg)
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t
  %i.dh = icmp eq i32 %i.dg, -1
  %i.di = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = select i1 %i.dh, i32 2, i32 0
  %i.dl = and i32 %i.dj, -3
  %i.dm = or disjoint i32 %i.dl, %i.dk
  store i32 %i.dm, ptr %i.di, align 8
  %i.dn = load ptr, ptr %3, align 8, !tbaa !89, !nonnull !78, !align !80 ; 2 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %.noexc.i unwind label %bb.v

.noexc.i:                                         ; preds = %bb.u
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %i.bb)
          to label %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %.noexc.i, %bb.u
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #26
  unreachable

_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.dq = load ptr, ptr %2, align 8, !tbaa !89, !nonnull !78, !align !80 ; 2 uses
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %.noexc.i29 unwind label %bb.w

.noexc.i29:                                       ; preds = %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit30 unwind label %bb.w

bb.w:                                             ; preds = %.noexc.i29, %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #26
  unreachable

_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit30: ; preds = %.noexc.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.y

bb.x:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.r ], [ %i.dd, %bb.s ]
  call void @_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.z

bb.y:                                             ; preds = %_ZN15_scoped_numeralI11mpq_managerILb0EEED2Ev.exit30, %_ZN11mpq_managerILb0EE3invER3mpq.exit
  ret void

bb.z:                                             ; preds = %bb.x, %bb.d
  %.pn19 = phi { ptr, i32 } [ %i.d, %bb.d ], [ %.pn, %bb.x ]
  resume { ptr, i32 } %.pn19

bb.aa:                                            ; preds = %bb.q
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN17algebraic_numbers7manager7compareERKNS_4anumES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = tail call noundef i32 @_ZN17algebraic_numbers7manager3imp7compareERNS_4anumES3_(ptr noundef nonnull align 8 dereferenceable(936) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN17algebraic_numbers7manager3imp7compareERNS_4anumES3_(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !82     ; 5 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 7
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load ptr, ptr %2, align 8, !tbaa !82     ; 5 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 7
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %i.a, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %.0.i = select i1 %i.i, ptr %i.j, ptr %i.a
  %i.k = icmp eq ptr %i.e, null
  %.0.i12 = select i1 %i.k, ptr %i.j, ptr %i.e
  %i.l = tail call noundef i32 @_ZN17algebraic_numbers7manager3imp7compareERK3mpqS4_(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(32) %.0.i, ptr noundef nonnull align 8 dereferenceable(32) %.0.i12)
  br label %_ZN17algebraic_numbers7manager3imp7compareEPNS_14algebraic_cellERK3mpq.exit16

bb.d:                                             ; preds = %bb.b
  %i.m = and i64 %i.f, -8
  %i.n = inttoptr i64 %i.m to ptr                 ; 5 uses
  %i.o = icmp eq ptr %i.a, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.0.i13 = select i1 %i.o, ptr %i.p, ptr %i.a    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = tail call noundef zeroext i1 @_ZN12mpbq_manager2leERK4mpbqRK3mpq(ptr noundef nonnull align 8 dereferenceable(208) %i.r, ptr noundef nonnull align 8 dereferenceable(20) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %.0.i13)
  br i1 %i.s, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = tail call noundef zeroext i1 @_ZN12mpbq_manager2ltERK4mpbqRK3mpq(ptr noundef nonnull align 8 dereferenceable(208) %i.r, ptr noundef nonnull align 8 dereferenceable(20) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %.0.i13)
  br i1 %i.u, label %bb.f, label %_ZN17algebraic_numbers7manager3imp7compareEPNS_14algebraic_cellERK3mpq.exit16

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.w = load i32, ptr %i.n, align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = tail call noundef i32 @_ZN11upolynomial7manager12eval_sign_atEjPK3mpzRK3mpq(ptr noundef nonnull align 8 dereferenceable(312) %i.v, i32 noundef %i.w, ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.0.i13) ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN17algebraic_numbers7manager3imp7compareEPNS_14algebraic_cellERK3mpq.exit16, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, 2
  %i.ae = sub nsw i32 1, %i.ad
  %i.af = icmp eq i32 %i.z, %i.ae
  br i1 %i.af, label %_ZN17algebraic_numbers7manager3imp7compareEPNS_14algebraic_cellERK3mpq.exit16, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  br label %_ZN17algebraic_numbers7manager3imp7compareEPNS_14algebraic_cellERK3mpq.exit16

bb.i:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ag = and i64 %i.b, -8
  %i.ah = inttoptr i64 %i.ag to ptr               ; 5 uses
  %i.ai = icmp eq ptr %i.e, null
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.0.i14 = select i1 %i.ai, ptr %i.aj, ptr %i.e  ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = tail call noundef zeroext i1 @_ZN12mpbq_manager2leERK4mpbqRK3mpq(ptr noundef nonnull align 8 dereferenceable(208) %i.al, ptr noundef nonnull align 8 dereferenceable(20) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %.0.i14)
  br i1 %i.am, label %_ZN17algebraic_numbers7manager3imp7compareEPNS_14algebraic_cellERK3mpq.exit16, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ao = tail call noundef zeroext i1 @_ZN12mpbq_manager2ltERK4mpbqRK3mpq(ptr noundef nonnull align 8 dereferenceable(208) %i.al, ptr noundef nonnull align 8 dereferenceable(20) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %.0.i14)
  br i1 %i.ao, label %bb.l, label %_ZN17algebraic_numbers7manager3imp7compareEPNS_14algebraic_cellERK3mpq.exit16

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aq = load i32, ptr %i.ah, align 8, !tbaa !87
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !86
  %i.at = tail call noundef i32 @_ZN11upolynomial7manager12eval_sign_atEjPK3mpzRK3mpq(ptr noundef nonnull align 8 dereferenceable(312) %i.ap, i32 noundef %i.aq, ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(32) %.0.i14) ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN17algebraic_numbers7manager3imp7compareEPNS_14algebraic_cellERK3mpq.exit16, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = and i32 %i.aw, 2
end_hunk_0
begin_hunk_1_@_ZNK17algebraic_numbers7manager3imp17mk_mul_polynomialclEPNS_14algebraic_cellES4_RN11upolynomial21scoped_numeral_vectorE:bb.a
bb.a:
  %4 = alloca %class.obj_ref, align 8             ; 7 uses
  %5 = alloca %class.obj_ref, align 8             ; 7 uses
  %6 = alloca %class.obj_ref, align 8             ; 7 uses
  %7 = alloca %class.obj_ref, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = load ptr, ptr %0, align 8, !tbaa !364, !nonnull !78, !align !80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 11 uses
  store ptr null, ptr %4, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr null, ptr %5, align 8, !tbaa !106
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr null, ptr %6, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr null, ptr %7, align 8, !tbaa !106
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.f, align 8, !tbaa !108
  %i.g = load i32, ptr %1, align 8, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 872
  %i.k = load i32, ptr %i.j, align 8, !tbaa !75
  %i.l = invoke noundef ptr @_ZN10polynomial7manager13to_polynomialEjPK3mpzj(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.g, ptr noundef %i.i, i32 noundef %i.k)
          to label %bb.b unwind label %bb.r       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.l, null                ; 2 uses
  br i1 %.not.i, label %.noexc._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.l)
          to label %.noexc._crit_edge unwind label %bb.r

.noexc._crit_edge:                                ; preds = %bb.c, %bb.b
  %.pre = load ptr, ptr %0, align 8, !tbaa !364   ; 2 uses
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %.pre, i64 876
  %.pre28 = load i32, ptr %.phi.trans.insert27, align 4, !tbaa !76
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre26 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !86
  %.pre25 = load i32, ptr %2, align 8, !tbaa !87
  store ptr %i.l, ptr %4, align 8, !tbaa !106
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 320
  %i.n = invoke noundef ptr @_ZN10polynomial7manager13to_polynomialEjPK3mpzj(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef %.pre25, ptr noundef %.pre26, i32 noundef %.pre28)
          to label %bb.d unwind label %bb.r       ; 5 uses

bb.d:                                             ; preds = %.noexc._crit_edge
  %.not.i8 = icmp eq ptr %i.n, null               ; 2 uses
  br i1 %.not.i8, label %.noexc10._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.n)
          to label %.noexc10._crit_edge unwind label %bb.r

.noexc10._crit_edge:                              ; preds = %bb.e, %bb.d
  %.pre30 = load ptr, ptr %0, align 8, !tbaa !364 ; 2 uses
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %.pre30, i64 876
  %.pre32 = load i32, ptr %.phi.trans.insert31, align 4, !tbaa !76
  store ptr %i.n, ptr %6, align 8, !tbaa !106
  %i.o = getelementptr inbounds nuw i8, ptr %.pre30, i64 320
  %i.p = invoke noundef ptr @_ZN10polynomial7manager15compose_x_div_yEPKNS_10polynomialEj(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.l, i32 noundef %.pre32)
          to label %bb.f unwind label %bb.r       ; 5 uses

bb.f:                                             ; preds = %.noexc10._crit_edge
  %.not.i13 = icmp eq ptr %i.p, null              ; 2 uses
  br i1 %.not.i13, label %.noexc15._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.p)
          to label %.noexc15._crit_edge unwind label %bb.r

.noexc15._crit_edge:                              ; preds = %bb.g, %bb.f
  %.pre34 = load ptr, ptr %0, align 8, !tbaa !364 ; 2 uses
  %.phi.trans.insert35 = getelementptr inbounds nuw i8, ptr %.pre34, i64 876
  %.pre36 = load i32, ptr %.phi.trans.insert35, align 4, !tbaa !76
  store ptr %i.p, ptr %5, align 8, !tbaa !106
  %i.q = getelementptr inbounds nuw i8, ptr %.pre34, i64 320
  invoke void @_ZN10polynomial7manager9resultantEPKNS_10polynomialES3_jR7obj_refIS1_S0_E(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.p, ptr noundef %i.n, i32 noundef %.pre36, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %.noexc15._crit_edge
  %i.r = load ptr, ptr %0, align 8, !tbaa !364, !nonnull !78, !align !80
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 328
  invoke void @_ZN11upolynomial12core_manager17to_numeral_vectorI7obj_refIN10polynomial10polynomialENS3_7managerEEEEvRKT_R7svectorI3mpzjE(ptr noundef nonnull align 8 dereferenceable(272) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %7, align 8, !tbaa !106    ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.t, null
  br i1 %.not.i.i18, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !107, !nonnull !78, !align !80
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.t)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #26
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.not.i8, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit20, label %bb.l

bb.l:                                             ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.n)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit20 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #26
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit20: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.not.i13, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit22, label %bb.n

bb.n:                                             ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit20
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.p)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit22 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit22: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit20, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.not.i, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit24, label %bb.p

bb.p:                                             ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit22
  invoke void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.l)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit24 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #26
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit24: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit22, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.r:                                             ; preds = %bb.g, %bb.e, %bb.c, %bb.h, %.noexc15._crit_edge, %.noexc10._crit_edge, %.noexc._crit_edge, %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.ad
}

declare noundef ptr @_ZN10polynomial7manager15compose_x_div_yEPKNS_10polynomialEj(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN22basic_interval_managerI12mpbq_managerLb0EE3mulERKNS1_8intervalES4_RS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !98, !nonnull !78, !align !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  tail call void @_ZN12mpbq_manager3mulERK4mpbqS2_RS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = and i8 %i.e, 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -2
  store i8 %i.k, ptr %i.i, align 4
  br label %_ZN22basic_interval_managerI12mpbq_managerLb0EE16init_mul_max_minEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !98, !nonnull !78, !align !80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93, !nonnull !78, !align !80
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.m, ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !115
  %.pre1.i = load i8, ptr %i.d, align 4           ; 2 uses
  %.pre2.i = and i8 %.pre1.i, 1
  br label %_ZN22basic_interval_managerI12mpbq_managerLb0EE16init_mul_max_minEv.exit

_ZN22basic_interval_managerI12mpbq_managerLb0EE16init_mul_max_minEv.exit: ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i8 [ 0, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.n = phi i8 [ %i.e, %bb.b ], [ %.pre1.i, %bb.c ] ; 2 uses
  %i.o = phi i32 [ %i.h, %bb.b ], [ %.pre.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !42   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 %i.q, ptr %i.r, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !115
  store i32 %i.o, ptr %i.s, align 8, !tbaa !115
  store i32 %i.t, ptr %i.b, align 8, !tbaa !115
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !141
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !141
  store ptr %i.x, ptr %i.u, align 8, !tbaa !141
  store ptr %i.w, ptr %i.v, align 8, !tbaa !141
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.z = load i8, ptr %i.y, align 4               ; 2 uses
  %i.aa = and i8 %i.n, 2
  %i.ab = and i8 %i.z, -4
  %i.ac = and i8 %i.n, -4
  %4 = or disjoint i8 %i.aa, %.pre-phi.i
  %i.ad = or disjoint i8 %4, %i.ab
  store i8 %i.ad, ptr %i.y, align 4
  %i.ae = and i8 %i.z, 3
  %i.af = or disjoint i8 %i.ae, %i.ac
  store i8 %i.af, ptr %i.d, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !115
  store i32 %i.q, ptr %i.ag, align 8, !tbaa !115
  store i32 %i.ah, ptr %i.p, align 8, !tbaa !115
  %i.ai = load ptr, ptr %0, align 8, !tbaa !98, !nonnull !78, !align !80
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  tail call void @_ZN12mpbq_manager3mulERK4mpbqS2_RS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ai, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %i.aj, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  tail call void @_ZN22basic_interval_managerI12mpbq_managerLb0EE18update_mul_max_minEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ak = load ptr, ptr %0, align 8, !tbaa !98, !nonnull !78, !align !80
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @_ZN12mpbq_manager3mulERK4mpbqS2_RS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ak, ptr noundef nonnull align 8 dereferenceable(20) %i.al, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  tail call void @_ZN22basic_interval_managerI12mpbq_managerLb0EE18update_mul_max_minEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.am = load ptr, ptr %0, align 8, !tbaa !98, !nonnull !78, !align !80
  tail call void @_ZN12mpbq_manager3mulERK4mpbqS2_RS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.am, ptr noundef nonnull align 8 dereferenceable(20) %i.al, ptr noundef nonnull align 8 dereferenceable(20) %i.aj, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  tail call void @_ZN22basic_interval_managerI12mpbq_managerLb0EE18update_mul_max_minEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.an = load i32, ptr %3, align 8, !tbaa !115
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !115
  store i32 %i.ao, ptr %3, align 8, !tbaa !115
  store i32 %i.an, ptr %i.c, align 8, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !141
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !141
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !141
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !141
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.au = load i8, ptr %i.at, align 4             ; 2 uses
  %i.av = and i8 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 5 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = and i8 %i.ax, 2
  %i.az = and i8 %i.au, -3
  %i.ba = or disjoint i8 %i.ay, %i.az
  store i8 %i.ba, ptr %i.at, align 4
  %i.bb = load i8, ptr %i.aw, align 4             ; 2 uses
  %i.bc = and i8 %i.bb, -3
  %i.bd = or disjoint i8 %i.bc, %i.av
  store i8 %i.bd, ptr %i.aw, align 4
  %i.be = load i8, ptr %i.at, align 4             ; 2 uses
  %i.bf = and i8 %i.be, 1
  %i.bg = and i8 %i.bb, 1
  %i.bh = and i8 %i.be, -2
  %i.bi = or disjoint i8 %i.bh, %i.bg
  store i8 %i.bi, ptr %i.at, align 4
  %i.bj = load i8, ptr %i.aw, align 4
  %i.bk = and i8 %i.bj, -2
  %i.bl = or disjoint i8 %i.bk, %i.bf
  store i8 %i.bl, ptr %i.aw, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !115
  %i.bo = load i32, ptr %i.r, align 8, !tbaa !115
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !115
  store i32 %i.bn, ptr %i.r, align 8, !tbaa !115
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !115
  %i.br = load i32, ptr %i.s, align 8, !tbaa !115
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !115
  store i32 %i.bq, ptr %i.s, align 8, !tbaa !115
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !141
  %i.bu = load ptr, ptr %i.u, align 8, !tbaa !141
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !141
  store ptr %i.bt, ptr %i.u, align 8, !tbaa !141
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  %i.bw = load i8, ptr %i.bv, align 4             ; 2 uses
  %i.bx = and i8 %i.bw, 2
  %i.by = load i8, ptr %i.y, align 4
  %i.bz = and i8 %i.by, 2
  %i.ca = and i8 %i.bw, -3
  %i.cb = or disjoint i8 %i.bz, %i.ca
  store i8 %i.cb, ptr %i.bv, align 4
  %i.cc = load i8, ptr %i.y, align 4              ; 2 uses
  %i.cd = and i8 %i.cc, -3
  %i.ce = or disjoint i8 %i.cd, %i.bx
  store i8 %i.ce, ptr %i.y, align 4
  %i.cf = load i8, ptr %i.bv, align 4             ; 2 uses
  %i.cg = and i8 %i.cf, 1
  %i.ch = and i8 %i.cc, 1
  %i.ci = and i8 %i.cf, -2
  %i.cj = or disjoint i8 %i.ci, %i.ch
  store i8 %i.cj, ptr %i.bv, align 4
  %i.ck = load i8, ptr %i.y, align 4
  %i.cl = and i8 %i.ck, -2
  %i.cm = or disjoint i8 %i.cl, %i.cg
  store i8 %i.cm, ptr %i.y, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !115
  %i.cp = load i32, ptr %i.ag, align 8, !tbaa !115
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !115
  store i32 %i.co, ptr %i.ag, align 8, !tbaa !115
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN22basic_interval_managerI12mpbq_managerLb0EE18update_mul_max_minEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !98, !nonnull !78, !align !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = tail call noundef zeroext i1 @_ZN12mpbq_manager2ltERK4mpbqS2_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %i.c)
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 8, !tbaa !39
  store i32 %i.i, ptr %i.c, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -2
  store i8 %i.l, ptr %i.j, align 4
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !98, !nonnull !78, !align !80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93, !nonnull !78, !align !80
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.n, ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  br label %_ZN12mpbq_manager3setER4mpbqRKS0_.exit

_ZN12mpbq_manager3setER4mpbqRKS0_.exit:           ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.p, ptr %i.q, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %_ZN12mpbq_manager3setER4mpbqRKS0_.exit, %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !98, !nonnull !78, !align !80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.t = tail call noundef zeroext i1 @_ZN12mpbq_manager2ltERK4mpbqS2_(ptr noundef nonnull align 8 dereferenceable(208) %i.r, ptr noundef nonnull align 8 dereferenceable(20) %i.s, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.s, align 8, !tbaa !115
  %i.v = load i32, ptr %i.b, align 8, !tbaa !115
  store i32 %i.v, ptr %i.s, align 8, !tbaa !115
  store i32 %i.u, ptr %i.b, align 8, !tbaa !115
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !141
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !141
  store ptr %i.z, ptr %i.w, align 8, !tbaa !141
  store ptr %i.y, ptr %i.x, align 8, !tbaa !141
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4             ; 2 uses
  %i.ae = and i8 %i.ab, -4
  %i.af = and i8 %i.ad, -4
  %i.ag = and i8 %i.ad, 3
  %i.ah = or disjoint i8 %i.ag, %i.ae
  store i8 %i.ah, ptr %i.aa, align 4
  %i.ai = and i8 %i.ab, 3
  %i.aj = or disjoint i8 %i.af, %i.ai
  store i8 %i.aj, ptr %i.ac, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !115
  %i.an = load i32, ptr %i.al, align 8, !tbaa !115
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !115
  store i32 %i.am, ptr %i.al, align 8, !tbaa !115
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN11upolynomial7manager9p_minus_xEjP3mpz(ptr noundef nonnull align 8 dereferenceable(312), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN17algebraic_numbers7manager3imp15refine_nz_boundERNS_4anumE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class._scoped_numeral.9, align 8   ; 12 uses
  %3 = alloca %class._scoped_numeral.9, align 8   ; 12 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !82
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 7
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.b, -8
  %i.f = inttoptr i64 %i.e to ptr                 ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 8 uses
  %i.i = load i32, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.h, align 8, !tbaa !39
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.o, label %.thread

end_hunk_1
