Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/spacer_proof_utils?download=true
inline.NumInlined: 1502
inline.NumDeleted: 791
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN6spacer17linear_combinator7add_litEP3appRK8rationalb:bb.a
_ZN6spacer17linear_combinator10scaled_litC2EbP3appRK8rational.exit: ; preds = %bb.d, %bb.e
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorIN6spacer17linear_combinator10scaled_litELb1EjE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %_ZN6spacer17linear_combinator10scaled_litC2EbP3appRK8rational.exit
  %i.ac = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc.i.i unwind label %bb.g

.noexc.i.i:                                       ; preds = %bb.f
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZN6spacer17linear_combinator10scaled_litD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %.noexc.i.i, %bb.f
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #24
  unreachable

_ZN6spacer17linear_combinator10scaled_litD2Ev.exit: ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.h:                                             ; preds = %_ZN6spacer17linear_combinator10scaled_litC2EbP3appRK8rational.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spacer17linear_combinator10scaled_litD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6spacerL9get_coeffEP4exprR7obj_refIS0_11ast_managerE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.arith_util, align 8          ; 6 uses
  %4 = alloca %class.obj_ref.46, align 16         ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167, !nonnull !74, !align !75 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN10arith_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(952) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 5 uses
  %i.e = and i32 %i.d, 65535
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNK11ast_manager6is_notEPK4expr.exit.i

_ZNK11ast_manager6is_notEPK4expr.exit.i:          ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 8, !tbaa !144
  %i.l = icmp eq i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 8
  %i.p = select i1 %i.l, i1 %i.o, i1 false
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !81
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit, label %bb.d

_ZNK11ast_manager6is_notEPK4exprRPS0_.exit:       ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZNK11ast_manager6is_notEPK4expr.exit.i, %bb.c, %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit
  %i.v = phi i32 [ %.pre, %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit ], [ %i.d, %bb.c ], [ %i.d, %_ZNK11ast_manager6is_notEPK4expr.exit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.b ]
  %.056 = phi ptr [ %i.u, %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit ], [ %1, %bb.c ], [ %1, %_ZNK11ast_manager6is_notEPK4expr.exit.i ], [ %1, %bb.a ], [ %1, %bb.b ] ; 12 uses
  %i.w = and i32 %i.v, 65535
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.056, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 11 uses
  %.not.i.i.i.i.i28 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i28, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread, label %_ZNK17arith_recognizers5is_leEPK4expr.exit.i

_ZNK17arith_recognizers5is_leEPK4expr.exit.i:     ; preds = %bb.e
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !144
  %i.ad = icmp eq i32 %i.ac, 5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp eq i32 %i.af, 2
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %bb.f, label %_ZNK17arith_recognizers5is_ltEPK4expr.exit.i

bb.f:                                             ; preds = %_ZNK17arith_recognizers5is_leEPK4expr.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.056, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !81
  %i.ak = icmp eq i32 %i.aj, 2
  br i1 %i.ak, label %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit, label %_ZNK17arith_recognizers5is_ltEPK4expr.exit.i

_ZNK17arith_recognizers5is_ltEPK4expr.exit.i:     ; preds = %bb.f, %_ZNK17arith_recognizers5is_leEPK4expr.exit.i
  %i.al = load i32, ptr %i.ab, align 8, !tbaa !144
  %i.am = icmp eq i32 %i.al, 5
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp eq i32 %i.ao, 4
  %i.aq = select i1 %i.am, i1 %i.ap, i1 false
  br i1 %i.aq, label %bb.g, label %_ZNK17arith_recognizers5is_geEPK4expr.exit.i

bb.g:                                             ; preds = %_ZNK17arith_recognizers5is_ltEPK4expr.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.056, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !81
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit, label %_ZNK17arith_recognizers5is_geEPK4expr.exit.i

_ZNK17arith_recognizers5is_geEPK4expr.exit.i:     ; preds = %bb.g, %_ZNK17arith_recognizers5is_ltEPK4expr.exit.i
  %i.au = load i32, ptr %i.ab, align 8, !tbaa !144
  %i.av = icmp eq i32 %i.au, 5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp eq i32 %i.ax, 3
  %i.az = select i1 %i.av, i1 %i.ay, i1 false
  br i1 %i.az, label %bb.h, label %_ZNK17arith_recognizers5is_gtEPK4expr.exit.i

bb.h:                                             ; preds = %_ZNK17arith_recognizers5is_geEPK4expr.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.056, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !81
  %i.bc = icmp eq i32 %i.bb, 2
  br i1 %i.bc, label %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit, label %_ZNK17arith_recognizers5is_gtEPK4expr.exit.i

_ZNK17arith_recognizers5is_gtEPK4expr.exit.i:     ; preds = %bb.h, %_ZNK17arith_recognizers5is_geEPK4expr.exit.i
  %i.bd = load i32, ptr %i.ab, align 8, !tbaa !144
  %i.be = icmp eq i32 %i.bd, 5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = icmp eq i32 %i.bg, 5
  %i.bi = select i1 %i.be, i1 %i.bh, i1 false
  br i1 %i.bi, label %bb.i, label %_ZNK11ast_manager5is_eqEPK4expr.exit.i

bb.i:                                             ; preds = %_ZNK17arith_recognizers5is_gtEPK4expr.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.056, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !81
  %i.bl = icmp eq i32 %i.bk, 2
  br i1 %i.bl, label %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit, label %_ZNK11ast_manager5is_eqEPK4expr.exit.i

_ZNK11ast_manager5is_eqEPK4expr.exit.i:           ; preds = %bb.i, %_ZNK17arith_recognizers5is_gtEPK4expr.exit.i
  %i.bm = load i32, ptr %i.ab, align 8, !tbaa !144
  %i.bn = icmp eq i32 %i.bm, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = icmp eq i32 %i.bp, 2
  %i.br = select i1 %i.bn, i1 %i.bq, i1 false
  br i1 %i.br, label %bb.j, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread

bb.j:                                             ; preds = %_ZNK11ast_manager5is_eqEPK4expr.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.056, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !81
  %i.bu = icmp eq i32 %i.bt, 2
  br i1 %i.bu, label %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread

_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.049.in = getelementptr inbounds nuw i8, ptr %.056, i64 40
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !70
  %.050.in = getelementptr inbounds nuw i8, ptr %.056, i64 32
  %.050 = load ptr, ptr %.050.in, align 8, !tbaa !70 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.050, i64 4
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.bw, 65535
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.k, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread

bb.k:                                             ; preds = %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.050, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i37, label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread, label %_ZNK10arith_util10is_numeralEPK4expr.exit

_ZNK10arith_util10is_numeralEPK4expr.exit:        ; preds = %bb.k
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !144
  %i.ce = icmp eq i32 %i.cd, 5
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = icmp eq i32 %i.cg, 0
  %i.ci = select i1 %i.ce, i1 %i.ch, i1 false
  %spec.select = select i1 %i.ci, ptr %.049, ptr %.050
  br label %_ZNK10arith_util10is_numeralEPK4expr.exit.thread

_ZNK10arith_util10is_numeralEPK4expr.exit.thread: ; preds = %bb.e, %_ZNK10arith_util10is_numeralEPK4expr.exit, %bb.k, %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit, %bb.d, %_ZNK11ast_manager5is_eqEPK4expr.exit.i, %bb.j
  %.151 = phi ptr [ %.050, %bb.k ], [ %spec.select, %_ZNK10arith_util10is_numeralEPK4expr.exit ], [ %.056, %bb.d ], [ %.056, %bb.j ], [ %.056, %_ZNK11ast_manager5is_eqEPK4expr.exit.i ], [ %.050, %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit ], [ %.056, %bb.e ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 16, !tbaa !156
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.b, ptr %i.cj, align 8, !tbaa !154
  %i.ck = getelementptr inbounds nuw i8, ptr %.151, i64 4
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = and i32 %i.cl, 65535
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.l, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread

bb.l:                                             ; preds = %_ZNK10arith_util10is_numeralEPK4expr.exit.thread
  %i.co = getelementptr inbounds nuw i8, ptr %.151, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !30
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread, label %_ZNK17arith_recognizers6is_addEPK4expr.exit

_ZNK17arith_recognizers6is_addEPK4expr.exit:      ; preds = %bb.l
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !144
  %i.ct = icmp eq i32 %i.cs, 5
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = icmp eq i32 %i.cv, 6
  %i.cx = select i1 %i.ct, i1 %i.cw, i1 false
  br i1 %i.cx, label %bb.o, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread

_ZNK17arith_recognizers6is_addEPK4expr.exit.thread: ; preds = %bb.l, %_ZNK10arith_util10is_numeralEPK4expr.exit.thread, %_ZNK17arith_recognizers6is_addEPK4expr.exit
  %i.cy = invoke fastcc noundef zeroext i1 @_ZN6spacerL9match_mulEP4exprR7obj_refIS0_11ast_managerES5_R10arith_util(ptr noundef nonnull %.151, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread
  %.pr.pre96 = load ptr, ptr %4, align 16, !tbaa !156 ; 2 uses
  br i1 %i.cy, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  store ptr %.pr.pre96, ptr %0, align 8, !tbaa !156
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load ptr, ptr %i.cj, align 8, !tbaa !167, !nonnull !74, !align !75
  store ptr %6, ptr %5, align 8, !tbaa !154
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.o:                                             ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %.151, i64 32 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.151, i64 24
  %i.db = load i32, ptr %i.da, align 8, !tbaa !81 ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %.idx = shl nuw nsw i64 %i.dc, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx
  %.not93 = icmp eq i32 %i.db, 0
  br i1 %.not93, label %.loopexit.thread, label %.lr.ph

.loopexit.thread:                                 ; preds = %bb.o
  store ptr null, ptr %0, align 8, !tbaa !156
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.de, align 8, !tbaa !154
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.p:                                             ; preds = %.critedge
  %i.df = getelementptr inbounds nuw i8, ptr %.094, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.df, %i.dd
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.094 = phi ptr [ %i.df, %bb.p ], [ %i.cz, %bb.o ] ; 2 uses
  %i.dg = load ptr, ptr %.094, align 8, !tbaa !70
  %i.dh = invoke fastcc noundef zeroext i1 @_ZN6spacerL9match_mulEP4exprR7obj_refIS0_11ast_managerES5_R10arith_util(ptr noundef %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge:                                        ; preds = %.lr.ph
  br i1 %i.dh, label %bb.q, label %bb.p

bb.q:                                             ; preds = %.critedge
  %i.di = load <2 x ptr>, ptr %4, align 16, !tbaa !355
  store <2 x ptr> %i.di, ptr %0, align 8, !tbaa !355
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread
  %lpad.loopexit.split-lp110 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %lpad.loopexit.split-lp110

.loopexit.loopexit:                               ; preds = %bb.p
  %.pr.pre = load ptr, ptr %4, align 16, !tbaa !156
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.m
  %.pr = phi ptr [ %.pr.pre, %.loopexit.loopexit ], [ %.pr.pre96, %bb.m ] ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !156
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.dj, align 8, !tbaa !154
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.dk = load ptr, ptr %i.cj, align 8, !tbaa !167, !nonnull !74, !align !75
  %i.dl = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !76
  %i.dn = add i32 %i.dm, -1                       ; 2 uses
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !76
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.s, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dk, ptr noundef nonnull %.pr)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #24
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %.loopexit.thread, %bb.n, %bb.q, %.loopexit, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZdvRK8rationalS1_(ptr dead_on_unwind noalias writable sret(%class.rational) align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 0, ptr %3, align 8, !tbaa !181
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store i32 1, ptr %i.e, align 8, !tbaa !181
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !182
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !181
  store i32 %i.o, ptr %3, align 8, !tbaa !181
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
  %i.u = load i32, ptr %i.p, align 8, !tbaa !181
  store i32 %i.u, ptr %i.e, align 8, !tbaa !181
  %i.v = load i8, ptr %i.f, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.f, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.x = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184
  invoke void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN8rationaldVERKS_.exit unwind label %bb.k

_ZN8rationaldVERKS_.exit:                         ; preds = %_ZN8rationalC2ERKS_.exit
  store i32 0, ptr %0, align 8, !tbaa !181
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = and i8 %i.z, -4                         ; 2 uses
  store i8 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !182
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 1, ptr %i.ac, align 8, !tbaa !181
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = and i8 %i.ae, -4
  store i8 %i.af, ptr %i.ad, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ag, align 8, !tbaa !182
  %i.ah = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184 ; 2 uses
  %i.ai = load i8, ptr %i.a, align 4
  %i.aj = and i8 %i.ai, 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rationaldVERKS_.exit
  %i.al = load i32, ptr %3, align 8, !tbaa !181
  store i32 %i.al, ptr %0, align 8, !tbaa !181
  store i8 %i.aa, ptr %i.y, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3

bb.g:                                             ; preds = %_ZN8rationaldVERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3 unwind label %bb.k

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3:  ; preds = %bb.g, %bb.f
  %i.am = load i8, ptr %i.f, align 4
  %i.an = and i8 %i.am, 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3
  %i.ap = load i32, ptr %i.e, align 8, !tbaa !181
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !181
  %i.aq = load i8, ptr %i.ad, align 4
  %i.ar = and i8 %i.aq, -2
  store i8 %i.ar, ptr %i.ad, align 4
  br label %_ZN8rationalC2ERKS_.exit5

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalC2ERKS_.exit5 unwind label %bb.k

_ZN8rationalC2ERKS_.exit5:                        ; preds = %bb.h, %bb.i
  %i.as = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %_ZN8rationalC2ERKS_.exit5
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc.i, %_ZN8rationalC2ERKS_.exit5
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #24
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.k:                                             ; preds = %bb.i, %bb.g, %_ZN8rationalC2ERKS_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN11mpq_managerILb1EE3delEPS0_R3mpq.exit unwind label %bb.b

_ZN11mpq_managerILb1EE3delEPS0_R3mpq.exit:        ; preds = %.noexc
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable
}

declare noundef i32 @_Z19get_verbosity_levelv() local_unnamed_addr #2

declare noundef zeroext i1 @_Z11is_threadedv() local_unnamed_addr #2

declare void @_Z12verbose_lockv() local_unnamed_addr #2
end_hunk_0
