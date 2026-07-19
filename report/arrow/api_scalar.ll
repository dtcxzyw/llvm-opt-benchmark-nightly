inline.NumInlined: 14067
inline.NumDeleted: 5439
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !353
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1329, !nonnull !37, !align !368 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.ac, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.k, %.lr.ph ], [ %i.ab, %bb.d ] ; 2 uses
  %.03849 = phi i8 [ %i.h, %.lr.ph ], [ %i.aa, %bb.d ]
  %i.s = load i64, ptr %i.q, align 8, !tbaa !352  ; 2 uses
  %i.t = add nsw i64 %i.s, 1
  store i64 %i.t, ptr %i.q, align 8, !tbaa !352
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !tbaa !53
  %.not46 = icmp eq i8 %i.v, 0                    ; 2 uses
  %i.w = zext i1 %.not46 to i64
  %i.x = load i64, ptr %i.r, align 8, !tbaa !1295
  %i.y = add nsw i64 %i.x, %i.w
  store i64 %i.y, ptr %i.r, align 8, !tbaa !1295
  %i.z = select i1 %.not46, i8 0, i8 %.03650
  %i.aa = or i8 %i.z, %.03849                     ; 2 uses
  %i.ab = shl i8 %.03650, 1                       ; 2 uses
  %i.ac = add nsw i64 %.03551, -1                 ; 2 uses
  %i.ad = icmp ne i8 %i.ab, 0
  %i.ae = icmp samesign ugt i64 %.03551, 1
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %i.af, label %bb.d, label %._crit_edge, !llvm.loop !1330

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.038.lcssa = phi i8 [ %i.h, %bb.c ], [ %i.aa, %bb.d ]
  %.035.lcssa = phi i64 [ %2, %bb.c ], [ %i.ac, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.038.lcssa, ptr %i.c, align 1, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.040 = phi ptr [ %i.ag, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %._crit_edge ], [ %2, %bb.b ] ; 3 uses
  %i.ah = icmp sgt i64 %.1, 7
  br i1 %i.ah, label %.preheader48.lr.ph, label %._crit_edge55

.preheader48.lr.ph:                               ; preds = %bb.e
  %i.ai = lshr i64 %.1, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.ai, %.preheader48.lr.ph ], [ %i.cx, %.preheader48 ] ; 2 uses
  %.14154 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.dm, %.preheader48 ] ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !1291
  %i.am = load ptr, ptr %3, align 8, !tbaa !1328, !nonnull !37, !align !368
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !353 ; 8 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !1329, !nonnull !37, !align !368 ; 16 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 16 uses
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !352 ; 2 uses
  %i.ar = add nsw i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !352
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.at = load i8, ptr %i.as, align 1, !tbaa !53
  %i.au = icmp ne i8 %i.at, 0                     ; 2 uses
  %i.av = xor i1 %i.au, true
  %i.aw = zext i1 %i.av to i64
  %i.ax = load i64, ptr %i.ap, align 8, !tbaa !1295
  %i.ay = add nsw i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %i.ap, align 8, !tbaa !1295
  %i.az = zext i1 %i.au to i8
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !352 ; 2 uses
  %i.bb = add nsw i64 %i.ba, 1
  store i64 %i.bb, ptr %i.ao, align 8, !tbaa !352
  %i.bc = getelementptr inbounds i8, ptr %i.an, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !53
  %.not69 = icmp eq i8 %i.bd, 0                   ; 2 uses
  %i.be = zext i1 %.not69 to i64
  %i.bf = load i64, ptr %i.ap, align 8, !tbaa !1295
  %i.bg = add nsw i64 %i.bf, %i.be
  store i64 %i.bg, ptr %i.ap, align 8, !tbaa !1295
  %i.bh = load i64, ptr %i.ao, align 8, !tbaa !352 ; 2 uses
  %i.bi = add nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.ao, align 8, !tbaa !352
  %i.bj = getelementptr inbounds i8, ptr %i.an, i64 %i.bh
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !53
  %.not70 = icmp eq i8 %i.bk, 0                   ; 2 uses
  %i.bl = zext i1 %.not70 to i64
  %i.bm = load i64, ptr %i.ap, align 8, !tbaa !1295
  %i.bn = add nsw i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %i.ap, align 8, !tbaa !1295
  %i.bo = load i64, ptr %i.ao, align 8, !tbaa !352 ; 2 uses
  %i.bp = add nsw i64 %i.bo, 1
  store i64 %i.bp, ptr %i.ao, align 8, !tbaa !352
  %i.bq = getelementptr inbounds i8, ptr %i.an, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !53
  %.not71 = icmp eq i8 %i.br, 0                   ; 2 uses
  %i.bs = zext i1 %.not71 to i64
  %i.bt = load i64, ptr %i.ap, align 8, !tbaa !1295
  %i.bu = add nsw i64 %i.bt, %i.bs
  store i64 %i.bu, ptr %i.ap, align 8, !tbaa !1295
  %i.bv = load i64, ptr %i.ao, align 8, !tbaa !352 ; 2 uses
  %i.bw = add nsw i64 %i.bv, 1
  store i64 %i.bw, ptr %i.ao, align 8, !tbaa !352
  %i.bx = getelementptr inbounds i8, ptr %i.an, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !53
  %.not72 = icmp eq i8 %i.by, 0                   ; 2 uses
  %i.bz = zext i1 %.not72 to i64
  %i.ca = load i64, ptr %i.ap, align 8, !tbaa !1295
  %i.cb = add nsw i64 %i.ca, %i.bz
  store i64 %i.cb, ptr %i.ap, align 8, !tbaa !1295
  %i.cc = load i64, ptr %i.ao, align 8, !tbaa !352 ; 2 uses
  %i.cd = add nsw i64 %i.cc, 1
  store i64 %i.cd, ptr %i.ao, align 8, !tbaa !352
  %i.ce = getelementptr inbounds i8, ptr %i.an, i64 %i.cc
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !53
  %.not73 = icmp eq i8 %i.cf, 0                   ; 2 uses
  %i.cg = zext i1 %.not73 to i64
  %i.ch = load i64, ptr %i.ap, align 8, !tbaa !1295
  %i.ci = add nsw i64 %i.ch, %i.cg
  store i64 %i.ci, ptr %i.ap, align 8, !tbaa !1295
  %i.cj = load i64, ptr %i.ao, align 8, !tbaa !352 ; 2 uses
  %i.ck = add nsw i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ao, align 8, !tbaa !352
  %i.cl = getelementptr inbounds i8, ptr %i.an, i64 %i.cj
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !53
  %.not74 = icmp eq i8 %i.cm, 0                   ; 2 uses
  %i.cn = zext i1 %.not74 to i64
  %i.co = load i64, ptr %i.ap, align 8, !tbaa !1295
  %i.cp = add nsw i64 %i.co, %i.cn
  store i64 %i.cp, ptr %i.ap, align 8, !tbaa !1295
  %i.cq = load i64, ptr %i.ao, align 8, !tbaa !352 ; 2 uses
  %i.cr = add nsw i64 %i.cq, 1
  store i64 %i.cr, ptr %i.ao, align 8, !tbaa !352
  %i.cs = getelementptr inbounds i8, ptr %i.an, i64 %i.cq
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !53
  %.not75 = icmp eq i8 %i.ct, 0                   ; 2 uses
  %i.cu = zext i1 %.not75 to i64
  %i.cv = load i64, ptr %i.ap, align 8, !tbaa !1295
  %i.cw = add nsw i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.ap, align 8, !tbaa !1295
  %i.cx = add nsw i64 %.in, -1
  %i.cy = select i1 %.not69, i8 0, i8 2
  %i.cz = or disjoint i8 %i.cy, %i.az
  %i.da = select i1 %.not70, i8 0, i8 4
  %i.db = or disjoint i8 %i.cz, %i.da
  %i.dc = select i1 %.not71, i8 0, i8 8
  %i.dd = or disjoint i8 %i.db, %i.dc
  %i.de = select i1 %.not72, i8 0, i8 16
  %i.df = or disjoint i8 %i.dd, %i.de
  %i.dg = select i1 %.not73, i8 0, i8 32
  %i.dh = or disjoint i8 %i.df, %i.dg
  %i.di = select i1 %.not74, i8 0, i8 64
  %i.dj = or i8 %i.dh, %i.di
  %i.dk = select i1 %.not75, i8 0, i8 -128
  %i.dl = or i8 %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %.14154, i64 1 ; 2 uses
  store i8 %i.dl, ptr %.14154, align 1, !tbaa !53
  %i.dn = icmp samesign ugt i64 %.in, 1
  br i1 %i.dn, label %.preheader48, label %._crit_edge55, !llvm.loop !1331

._crit_edge55:                                    ; preds = %.preheader48, %bb.e
  %.141.lcssa = phi ptr [ %.040, %bb.e ], [ %i.dm, %.preheader48 ]
  %i.do = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.do, 0
  br i1 %.not45, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge55
  %i.dp = icmp sgt i64 %i.do, 0
  br i1 %i.dp, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.preheader
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1291
  %i.ds = load ptr, ptr %3, align 8, !tbaa !1328, !nonnull !37, !align !368
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !353 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !1329, !nonnull !37, !align !368 ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 64 ; 6 uses
  %xtraiter = and i64 %i.do, 1
  %i.dx = icmp eq i64 %i.do, 1
  br i1 %i.dx, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %i.do, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph60.new
  %.13758 = phi i8 [ 1, %.lr.ph60.new ], [ %i.er, %bb.f ] ; 3 uses
  %.13957 = phi i8 [ 0, %.lr.ph60.new ], [ %i.eq, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.1, %bb.f ]
  %i.dy = load i64, ptr %i.dv, align 8, !tbaa !352 ; 2 uses
  %i.dz = add nsw i64 %i.dy, 1
  store i64 %i.dz, ptr %i.dv, align 8, !tbaa !352
  %i.ea = getelementptr inbounds i8, ptr %i.dt, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !53
  %.not47 = icmp eq i8 %i.eb, 0                   ; 2 uses
  %i.ec = zext i1 %.not47 to i64
  %i.ed = load i64, ptr %i.dw, align 8, !tbaa !1295
  %i.ee = add nsw i64 %i.ed, %i.ec
  store i64 %i.ee, ptr %i.dw, align 8, !tbaa !1295
  %i.ef = select i1 %.not47, i8 0, i8 %.13758
  %i.eg = or i8 %i.ef, %.13957
  %i.eh = shl nuw i8 %.13758, 1
  %i.ei = load i64, ptr %i.dv, align 8, !tbaa !352 ; 2 uses
  %i.ej = add nsw i64 %i.ei, 1
  store i64 %i.ej, ptr %i.dv, align 8, !tbaa !352
  %i.ek = getelementptr inbounds i8, ptr %i.dt, i64 %i.ei
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !53
  %.not47.1 = icmp eq i8 %i.el, 0                 ; 2 uses
  %i.em = zext i1 %.not47.1 to i64
  %i.en = load i64, ptr %i.dw, align 8, !tbaa !1295
  %i.eo = add nsw i64 %i.en, %i.em
  store i64 %i.eo, ptr %i.dw, align 8, !tbaa !1295
  %i.ep = select i1 %.not47.1, i8 0, i8 %i.eh
  %i.eq = or i8 %i.ep, %i.eg                      ; 3 uses
  %i.er = shl nuw i8 %.13758, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge61.loopexit.unr-lcssa, label %bb.f, !llvm.loop !1332

._crit_edge61.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge61, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge61.loopexit.unr-lcssa, %.lr.ph60
  %.13758.epil.init = phi i8 [ 1, %.lr.ph60 ], [ %i.er, %._crit_edge61.loopexit.unr-lcssa ]
  %.13957.epil.init = phi i8 [ 0, %.lr.ph60 ], [ %i.eq, %._crit_edge61.loopexit.unr-lcssa ]
  %lcmp.mod86 = trunc i64 %i.do to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.es = load i64, ptr %i.dv, align 8, !tbaa !352 ; 2 uses
  %i.et = add nsw i64 %i.es, 1
  store i64 %i.et, ptr %i.dv, align 8, !tbaa !352
  %i.eu = getelementptr inbounds i8, ptr %i.dt, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !53
  %.not47.epil = icmp eq i8 %i.ev, 0              ; 2 uses
  %i.ew = zext i1 %.not47.epil to i64
  %i.ex = load i64, ptr %i.dw, align 8, !tbaa !1295
  %i.ey = add nsw i64 %i.ex, %i.ew
  store i64 %i.ey, ptr %i.dw, align 8, !tbaa !1295
  %i.ez = select i1 %.not47.epil, i8 0, i8 %.13758.epil.init
  %i.fa = or i8 %i.ez, %.13957.epil.init
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %.epil.preheader, %._crit_edge61.loopexit.unr-lcssa, %.preheader
  %.139.lcssa = phi i8 [ 0, %.preheader ], [ %i.eq, %._crit_edge61.loopexit.unr-lcssa ], [ %i.fa, %.epil.preheader ]
  store i8 %.139.lcssa, ptr %.141.lcssa, align 1, !tbaa !53
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge55, %._crit_edge61, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %7 = alloca %"class.std::vector", align 16      ; 14 uses
  %8 = alloca %"class.arrow::Result.243", align 8 ; 14 uses
  %9 = alloca %"class.std::shared_ptr.77", align 8 ; 6 uses
  %10 = alloca %"class.arrow::Result.366", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.arrow::Result.243", align 8 ; 14 uses
  %13 = alloca %"class.arrow::FieldRef", align 8  ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %17 = alloca %"class.std::shared_ptr.77", align 16 ; 6 uses
  %18 = alloca %"class.arrow::Result.674", align 8 ; 22 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.ct

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1333, !nonnull !37, !align !368
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !352 ; 9 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !353 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 12 uses
  store ptr %i.f, ptr %14, align 8, !tbaa !47
  %i.g = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.h = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.h, %i.g
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.200) #27
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.j, label %.noexc.i.i.i, label %bb.e

.noexc.i.i.i:                                     ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.201) #27
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i64 %.sroa.0.0.copyload.i, 1     ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !59

.noexc9.i.i.i:                                    ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.e
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #29 ; 2 uses
  store ptr %i.m, ptr %14, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i, ptr %i.f, align 8, !tbaa !53
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.c
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.f, %bb.c ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !53
  store i8 %i.o, ptr %i.n, align 1, !tbaa !53
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 %.sroa.0.0.copyload.i, ptr %i.p, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.copyload.i
  store i8 0, ptr %i.q, align 1, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.r, ptr %13, align 8, !tbaa !47
  %i.s = load ptr, ptr %14, align 8, !tbaa !50    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.f
  br i1 %i.t, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i64, ptr %i.p, align 8, !tbaa !52   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.w, i1 false)
  br label %_ZN5arrow8FieldRefC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  store ptr %i.s, ptr %13, align 8, !tbaa !50
  %i.x = load i64, ptr %i.f, align 8, !tbaa !53
  store i64 %i.x, ptr %i.r, align 8, !tbaa !53
  %.pre = load i64, ptr %i.p, align 8, !tbaa !52
  br label %_ZN5arrow8FieldRefC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5arrow8FieldRefC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.y = phi i64 [ %i.u, %bb.i ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !52
  store ptr %i.f, ptr %14, align 8, !tbaa !50
  store i64 0, ptr %i.p, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  store i8 1, ptr %i.aa, align 8, !tbaa !184
  invoke void @_ZNK5arrow12StructScalar5fieldENS_8FieldRefE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.243") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %13)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %_ZN5arrow8FieldRefC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !184
  switch i8 %i.ab, label %bb.p [
    i8 -1, label %_ZN5arrow8FieldRefD2Ev.exit
    i8 0, label %bb.k
    i8 1, label %bb.m
    i8 2, label %bb.n
  ], !prof !452

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %13, align 8, !tbaa !181  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !177
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #30, !inline_history !453
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i

bb.m:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %13, align 8, !tbaa !50   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.r
  br i1 %i.ai, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.aj = load i64, ptr %i.r, align 8, !tbaa !53
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #30, !inline_history !453
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i

bb.n:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %13, align 8, !tbaa !454  ; 3 uses
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !455 ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i2.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i, label %.lr.ph.i.i

end_hunk_0
