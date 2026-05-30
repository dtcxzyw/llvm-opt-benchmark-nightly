inline.NumInlined: 14067
inline.NumDeleted: 5439
begin_hunk_0_@_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_:bb.a
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
  %i.eh = shl i8 %.13758, 1
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
  %i.er = shl i8 %.13758, 2                       ; 2 uses
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
  %9 = alloca %"class.std::shared_ptr.77", align 16 ; 5 uses
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

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i
  %.0.i.i3.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %i.al, %bb.n ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %.0.i.i3.i.i), !inline_history !456
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i63, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !457

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %13, align 8, !tbaa !454
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i, %bb.n
  %i.ao = phi ptr [ %.pre.i.i, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i ], [ %i.al, %bb.n ] ; 3 uses
  %.not.i.i.i.i.i64 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i64, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !188
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #30, !inline_history !458
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i

bb.p:                                             ; preds = %bb.j
  unreachable

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i: ; preds = %bb.m, %bb.o, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.l, %bb.k
  store i8 -1, ptr %i.aa, align 8, !tbaa !184
  br label %_ZN5arrow8FieldRefD2Ev.exit

_ZN5arrow8FieldRefD2Ev.exit:                      ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i, %bb.j
  %i.at = load ptr, ptr %14, align 8, !tbaa !50   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.f
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow8FieldRefD2Ev.exit
  %i.av = load i64, ptr %i.f, align 8, !tbaa !53
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN5arrow8FieldRefD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ax = load ptr, ptr %12, align 8, !tbaa !201
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.y, label %bb.q
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m:bb.a
bb.v:                                             ; preds = %_ZN5arrow8FieldRefC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %_ZN5arrow8FieldRefD2Ev.exit26 unwind label %bb.w, !inline_history !248

bb.w:                                             ; preds = %bb.v
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #31, !inline_history !248
  unreachable

_ZN5arrow8FieldRefD2Ev.exit26:                    ; preds = %bb.v
  %i.bj = load ptr, ptr %14, align 8, !tbaa !50   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.f
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26
  %i.bl = load i64, ptr %i.f, align 8, !tbaa !53
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.x:                                             ; preds = %bb.r, %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.cu

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.br = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !87, !noalias !1334
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !97, !noalias !1334 ; 3 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !88, !noalias !1334
  store <2 x ptr> %i.br, ptr %17, align 16, !tbaa !87, !alias.scope !1334
  store ptr null, ptr %i.bo, align 8, !tbaa !97, !noalias !1334
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !466, !noalias !1337 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !467, !noalias !1337
  %.not.i30 = icmp eq i32 %i.bw, 25
  br i1 %.not.i30, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1337
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1337
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void %i.bz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.bu, i1 noundef zeroext false)
          to label %.noexc32 unwind label %bb.bx, !inline_history !1340

.noexc32:                                         ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !1341
  invoke void @_ZN5arrow8internal12JoinToStringIJRA28_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(28) @.str.243, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i unwind label %bb.ae

.noexc.i:                                         ; preds = %.noexc32
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.noexc.i
  %i.ca = load ptr, ptr %3, align 8, !tbaa !50, !noalias !1341 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !53, !noalias !1341
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.ab:                                            ; preds = %.noexc.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %3, align 8, !tbaa !50, !noalias !1341 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.ab
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !53, !noalias !1341
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1341
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1341
  call void @_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  %i.cl = load ptr, ptr %4, align 8, !tbaa !201, !noalias !1337 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i31, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.ac, !prof !204

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !205, !range !36, !noundef !37
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.ad, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cp = load ptr, ptr %5, align 8, !tbaa !50, !noalias !1337 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !53, !noalias !1337
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1337
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1337
  br label %_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultISE_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit

bb.ae:                                            ; preds = %.noexc32
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cu, %bb.ae ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ]
  %i.cv = load ptr, ptr %5, align 8, !tbaa !50, !noalias !1337 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i: ; preds = %.body.i
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !53, !noalias !1337
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1337
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1337
  br label %.body

bb.af:                                            ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.db = load i8, ptr %i.da, align 8, !tbaa !298, !range !36, !noalias !1337, !noundef !37
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !1337
  invoke void @_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(16) @.str.222)
          to label %.noexc33 unwind label %bb.bx

.noexc33:                                         ; preds = %bb.ag
  call void @_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  %i.dd = load ptr, ptr %6, align 8, !tbaa !201, !noalias !1337 ; 2 uses
  %.not.i39.i = icmp eq ptr %i.dd, null
  br i1 %.not.i39.i, label %_ZN5arrow6StatusD2Ev.exit40.i, label %bb.ah, !prof !204

bb.ah:                                            ; preds = %.noexc33
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !205, !range !36, !noundef !37
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit40.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  br label %_ZN5arrow6StatusD2Ev.exit40.i

_ZN5arrow6StatusD2Ev.exit40.i:                    ; preds = %bb.ai, %bb.ah, %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1337
  br label %_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultISE_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit

bb.aj:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !1337
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !1337
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bs, i64 48 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1174, !noalias !1337 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !271
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !1346
  %.not314.i = icmp sgt i64 %i.dm, 0
  br i1 %.not314.i, label %.lr.ph.i, label %.critedge35.i

.lr.ph.i:                                         ; preds = %bb.aj
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 10 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 7 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.al

bb.ak:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dv = load ptr, ptr %i.dh, align 8, !tbaa !1174, !noalias !1337 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !271
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !1346
  %.not31.i = icmp sgt i64 %i.dz, %indvars.iv.next.i
  br i1 %.not31.i, label %bb.al, label %.critedge35.loopexit.i, !llvm.loop !1364

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ak ] ; 2 uses
  %i.ea = phi ptr [ %i.di, %.lr.ph.i ], [ %i.dv, %bb.ak ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !1337
  invoke void @_ZNK5arrow5Array9GetScalarEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.243") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ea, i64 noundef %indvars.iv.i)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eb = load ptr, ptr %8, align 8, !tbaa !201, !noalias !1337
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ao, label %.critedge.i, !prof !204

.critedge.i:                                      ; preds = %bb.am
  call void @_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !1337
  br label %.loopexit.i

bb.an:                                            ; preds = %bb.al
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !1337
  call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  %21 = load <2 x ptr>, ptr %i.dn, align 8, !tbaa !87, !noalias !1371 ; 3 uses
  %22 = extractelement <2 x ptr> %21, i64 1       ; 8 uses
  store ptr null, ptr %i.do, align 8, !tbaa !88, !noalias !1371
  store <2 x ptr> %21, ptr %9, align 16, !tbaa !87, !alias.scope !1372, !noalias !1337
  store ptr null, ptr %i.dn, align 8, !tbaa !97, !noalias !1371
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !1337
  %23 = extractelement <2 x ptr> %21, i64 0
  invoke fastcc void @_ZN5arrow7compute8internalL17GenericFromScalarINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr3std7is_sameIT_S8_EE5valueENS_6ResultISA_EEE4typeERKSt10shared_ptrINS_6ScalarEE(ptr dead_on_unwind noalias writable align 8 %10, ptr %23)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ee = load ptr, ptr %10, align 8, !tbaa !201, !noalias !1337
  %i.ef = icmp eq ptr %i.ee, null                 ; 2 uses
  br i1 %i.ef, label %bb.as, label %bb.aq, !prof !204

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %10) #28
  br label %bb.ax

bb.ar:                                            ; preds = %bb.ao
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.as:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28, !noalias !1337
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  store ptr %i.dq, ptr %11, align 8, !tbaa !47, !alias.scope !1379, !noalias !1337
  %i.eh = load ptr, ptr %i.dp, align 8, !tbaa !50, !noalias !1380 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.dr
  br i1 %i.ei, label %bb.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.ej = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !52, !noalias !1380 ; 3 uses
  %i.ek = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.ek)
  %i.el = add nuw nsw i64 %i.ej, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dq, ptr noundef nonnull align 8 dereferenceable(1) %i.dr, i64 %i.el, i1 false), !noalias !1337
  br label %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.as
  store ptr %i.eh, ptr %11, align 8, !tbaa !50, !alias.scope !1379, !noalias !1337
  %i.em = load i64, ptr %i.dr, align 8, !tbaa !53, !noalias !1380
  store i64 %i.em, ptr %i.dq, align 8, !tbaa !53, !alias.scope !1379, !noalias !1337
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !52, !noalias !1380
  br label %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.i

_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.at
  %i.en = phi i64 [ %i.ej, %bb.at ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 4 uses
  store i64 %i.en, ptr %i.ds, align 8, !tbaa !52, !alias.scope !1379, !noalias !1337
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !50, !noalias !1380
  store i64 0, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !52, !noalias !1380
  store i8 0, ptr %i.dr, align 8, !tbaa !53, !noalias !1380
  %i.eo = load ptr, ptr %i.dt, align 8, !tbaa !76, !noalias !1337 ; 7 uses
  %i.ep = load ptr, ptr %i.du, align 16, !tbaa !70, !noalias !1337
  %.not.i.i.i = icmp eq ptr %i.eo, %i.ep
  br i1 %.not.i.i.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 3 uses
  store ptr %i.eq, ptr %i.eo, align 8, !tbaa !47
  %i.er = load ptr, ptr %11, align 8, !tbaa !50, !noalias !1337 ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.dq
  br i1 %i.es, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41.i

bb.av:                                            ; preds = %bb.au
  %i.et = icmp ult i64 %i.en, 16
  call void @llvm.assume(i1 %i.et)
  %i.eu = add nuw nsw i64 %i.en, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eq, ptr noundef nonnull align 8 dereferenceable(1) %i.dq, i64 %i.eu, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41.i: ; preds = %bb.au
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !50
  %i.ev = load i64, ptr %i.dq, align 8, !tbaa !53, !noalias !1337
  store i64 %i.ev, ptr %i.eq, align 8, !tbaa !53
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41.i, %bb.av
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %i.en, ptr %i.ew, align 8, !tbaa !52
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store ptr %i.ex, ptr %i.dt, align 8, !tbaa !76, !noalias !1337
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i

bb.aw:                                            ; preds = %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i unwind label %bb.bo

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i: ; preds = %bb.aw
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !50, !noalias !1337 ; 2 uses
  %i.ey = icmp eq ptr %.pre.i, %i.dq
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i
  %i.ez = load i64, ptr %i.dq, align 8, !tbaa !53, !noalias !1337
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %.pre.i, i64 noundef %i.fa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !1337
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i, %bb.aq
  %i.fb = load ptr, ptr %10, align 8, !tbaa !201, !noalias !1337 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.ay, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !204

bb.ay:                                            ; preds = %bb.ax
  %i.fd = load ptr, ptr %i.dp, align 8, !tbaa !50, !noalias !1337 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.dr
  br i1 %i.fe, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i: ; preds = %bb.ay
  %i.ff = load i64, ptr %i.dr, align 8, !tbaa !53, !noalias !1337
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #30
  %.pr.pre.i.i = load ptr, ptr %10, align 8, !tbaa !201, !noalias !1337 ; 2 uses
  %.not.i.i46.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not.i.i46.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !396

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i, %bb.ax
  %i.fh = phi ptr [ %.pr.pre.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i ], [ %i.fb, %bb.ax ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !205, !range !36, !noundef !37
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #28
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i: ; preds = %bb.ay, %bb.az, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !1337
  %.not.i.i47.i = icmp eq ptr %22, null
  br i1 %.not.i.i47.i, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  %i.fl = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.fm = load atomic i64, ptr %i.fl acquire, align 8 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 4294967297
  %i.fo = trunc i64 %i.fm to i32                  ; 2 uses
  br i1 %i.fn, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.fl, align 8, !tbaa !91
  %i.fp = getelementptr inbounds nuw i8, ptr %22, i64 12
  store i32 0, ptr %i.fp, align 4, !tbaa !93
  %i.fq = load ptr, ptr %22, align 8, !tbaa !43
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %22) #28, !inline_history !1381
  %i.ft = load ptr, ptr %22, align 8, !tbaa !43
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %22) #28, !inline_history !1381
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bc:                                            ; preds = %bb.ba
  %i.fw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !1337
  %.not.i.i.i.i = icmp eq i8 %i.fw, 0
  br i1 %.not.i.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fx = add nsw i32 %i.fo, -1
  store i32 %i.fx, ptr %i.fl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.fy = atomicrmw volatile add ptr %i.fl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i = phi i32 [ %i.fo, %bb.bd ], [ %i.fy, %bb.be ]
  %i.fz = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fz, label %bb.bf, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !59

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #28
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bb, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !1337
  %i.ga = load ptr, ptr %8, align 8, !tbaa !201, !noalias !1337 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.bg, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i, !prof !204

bb.bg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.gc = load ptr, ptr %i.do, align 8, !tbaa !88, !noalias !1337 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.gd, align 8, !tbaa !91
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !93
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !43
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #28, !inline_history !1382
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !43
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #28, !inline_history !1382
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !1337
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.gq = atomicrmw volatile add ptr %i.gd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gg, %bb.bk ], [ %i.gq, %bb.bl ]
  %i.gr = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.gr, label %bb.bm, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i, !prof !59

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i: ; preds = %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bi
  %.pr.i.pr.i = load ptr, ptr %8, align 8, !tbaa !201, !noalias !1337 ; 2 uses
  %.not.i.i48.i = icmp eq ptr %.pr.i.pr.i, null
  br i1 %.not.i.i48.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i, !prof !396

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i, %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.gs = phi ptr [ %.pr.i.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i ], [ %i.ga, %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !205, !range !36, !noundef !37
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, label %bb.bn

bb.bn:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i: ; preds = %bb.bn, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !1337
  br i1 %i.ef, label %bb.ak, label %.loopexit.i

bb.bo:                                            ; preds = %bb.aw
  %i.gw = landingpad { ptr, i32 }
          cleanup
  %i.gx = load ptr, ptr %11, align 8, !tbaa !50, !noalias !1337 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.dq
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i: ; preds = %bb.bo
  %i.gz = load i64, ptr %i.dq, align 8, !tbaa !53, !noalias !1337
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !1337
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !1337
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, %bb.ar
  %.pn.i = phi { ptr, i32 } [ %i.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i ], [ %i.eg, %bb.ar ]
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !1337
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !1337
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.an
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.bp ], [ %i.ed, %bb.an ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !1337
  br label %.body

.critedge35.loopexit.i:                           ; preds = %bb.ak
  %i.hb = load <2 x ptr>, ptr %7, align 16, !tbaa !68, !noalias !1337
  %.pre10.i = load ptr, ptr %i.du, align 16, !tbaa !70, !noalias !1337
  br label %.critedge35.i

.critedge35.i:                                    ; preds = %.critedge35.loopexit.i, %bb.aj
  %i.hc = phi ptr [ %.pre10.i, %.critedge35.loopexit.i ], [ null, %bb.aj ]
  %i.hd = phi <2 x ptr> [ %i.hb, %.critedge35.loopexit.i ], [ splat (ptr null), %bb.aj ]
  store ptr null, ptr %18, align 8, !tbaa !201, !alias.scope !1337
  %i.he = getelementptr inbounds nuw i8, ptr %18, i64 8
  store <2 x ptr> %i.hd, ptr %i.he, align 8, !tbaa !68, !alias.scope !1337
  %i.hf = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %i.hc, ptr %i.hf, align 8, !tbaa !70, !alias.scope !1337
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !1337
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, %.critedge35.i, %.critedge.i
  %i.hg = load ptr, ptr %7, align 16, !tbaa !77, !noalias !1337 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !76, !noalias !1337 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.hg, %i.hi
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ho, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.hg, %.loopexit.i ] ; 3 uses
  %i.hj = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !53
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i52.i = icmp eq ptr %i.ho, %i.hi
  br i1 %.not.i.i.i52.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i53.i = load ptr, ptr %7, align 16, !tbaa !77, !noalias !1337
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %.loopexit.i
  %i.hp = phi ptr [ %.pr.i53.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.hg, %.loopexit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.br

bb.br:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hr = load ptr, ptr %i.hq, align 16, !tbaa !70, !noalias !1337
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hp to i64
  %i.hu = sub i64 %i.hs, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.hu) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.br, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !1337
  br label %_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultISE_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit

_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultISE_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit40.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.hv = load ptr, ptr %18, align 8, !tbaa !201
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultISE_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %.sroa.0.0.copyload.i34 = load i64, ptr %1, align 8, !tbaa !352
  %.sroa.2.0.copyload.i36 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !353
  store i64 %.sroa.0.0.copyload.i34, ptr %20, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %.sroa.2.0.copyload.i36, ptr %i.hx, align 8
  %i.hy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bt unwind label %bb.by

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZNK5arrow6Status11WithMessageIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 1 dereferenceable(26) @.str.219, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 1 dereferenceable(18) @.str.216, ptr noundef nonnull align 1 dereferenceable(18) @_ZN5arrow7compute17MakeStructOptions9kTypeNameE, ptr noundef nonnull align 1 dereferenceable(3) @.str.217, ptr noundef nonnull align 8 dereferenceable(32) %i.hy)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.hz = load ptr, ptr %i.a, align 8, !tbaa !201 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i39, label %_ZN5arrow6StatusD2Ev.exit42, label %bb.bv, !prof !204

bb.bv:                                            ; preds = %bb.bu
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 1
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m:bb.a
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i50

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i50: ; preds = %.lr.ph.i.i.i.i.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i49
  %i.jn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i48, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i51 = icmp eq ptr %i.jn, %i.jh
  br i1 %.not.i.i.i.i.i.i51, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i47, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i50
  %.pr.i.i.i.i = load ptr, ptr %i.je, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i52

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i52: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.cb
  %i.jo = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.jf, %bb.cb ] ; 3 uses
  %.not.i.i1.i.i.i.i53 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i1.i.i.i.i53, label %_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE7DestroyEv.exit.i, label %bb.cc

bb.cc:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i52
  %i.jp = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !70
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jo to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.jt) #30
  br label %_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE7DestroyEv.exit.i: ; preds = %bb.cc, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i52
  %.pr.i54 = load ptr, ptr %18, align 8, !tbaa !201 ; 2 uses
  %.not.i.i55 = icmp eq ptr %.pr.i54, null
  br i1 %.not.i.i55, label %_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev.exit, label %_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE7DestroyEv.exit.thread.i, !prof !396

_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE7DestroyEv.exit.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ju = phi ptr [ %.pr.i54, %_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE7DestroyEv.exit.i ], [ %i.jc, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ]
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !205, !range !36, !noundef !37
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %18) #28
  br label %_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev.exit

_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEE7DestroyEv.exit.thread.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %i.jy = load ptr, ptr %i.bp, align 8, !tbaa !88 ; 8 uses
  %.not.i.i57 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i57, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev.exit
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 4 uses
  %i.ka = load atomic i64, ptr %i.jz acquire, align 8 ; 2 uses
  %i.kb = icmp eq i64 %i.ka, 4294967297
  %i.kc = trunc i64 %i.ka to i32                  ; 2 uses
  br i1 %i.kb, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.jz, align 8, !tbaa !91
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  store i32 0, ptr %i.kd, align 4, !tbaa !93
  %i.ke = load ptr, ptr %i.jy, align 8, !tbaa !43
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #28, !inline_history !235
  %i.kh = load ptr, ptr %i.jy, align 8, !tbaa !43
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #28, !inline_history !235
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cg:                                            ; preds = %bb.ce
  %i.kk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i58 = icmp eq i8 %i.kk, 0
  br i1 %.not.i.i.i58, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kl = add nsw i32 %i.kc, -1
  store i32 %i.kl, ptr %i.jz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.km = atomicrmw volatile add ptr %i.jz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ci, %bb.ch
  %.0.i.i.i.i = phi i32 [ %i.kc, %bb.ch ], [ %i.km, %bb.ci ]
  %i.kn = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.kn, label %bb.cj, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !59

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #28
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev.exit, %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  %i.ko = load ptr, ptr %12, align 8, !tbaa !201  ; 2 uses
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %bb.cl, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !204

bb.cl:                                            ; preds = %bb.ck
  %i.kq = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !88 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8 ; 4 uses
  %i.kt = load atomic i64, ptr %i.ks acquire, align 8 ; 2 uses
  %i.ku = icmp eq i64 %i.kt, 4294967297
  %i.kv = trunc i64 %i.kt to i32                  ; 2 uses
  br i1 %i.ku, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store i32 0, ptr %i.ks, align 8, !tbaa !91
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 12
  store i32 0, ptr %i.kw, align 4, !tbaa !93
  %i.kx = load ptr, ptr %i.kr, align 8, !tbaa !43
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(16) %i.kr) #28, !inline_history !395
  %i.la = load ptr, ptr %i.kr, align 8, !tbaa !43
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8
  call void %i.lc(ptr noundef nonnull align 8 dereferenceable(16) %i.kr) #28, !inline_history !395
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.co:                                            ; preds = %bb.cm
  %i.ld = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i.i60 = icmp eq i8 %i.ld, 0
  br i1 %.not.i.i.i.i.i.i60, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.le = add nsw i32 %i.kv, -1
  store i32 %i.le, ptr %i.ks, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cq:                                            ; preds = %bb.co
  %i.lf = atomicrmw volatile add ptr %i.ks, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cq, %bb.cp
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.kv, %bb.cp ], [ %i.lf, %bb.cq ]
  %i.lg = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.lg, label %bb.cr, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !59

bb.cr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kr) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cn, %bb.cl
  %.pr.i61 = load ptr, ptr %12, align 8, !tbaa !201 ; 2 uses
  %.not.i.i62 = icmp eq ptr %.pr.i61, null
  br i1 %.not.i.i62, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !396

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.ck
  %i.lh = phi ptr [ %.pr.i61, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.ko, %bb.ck ]
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 1
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !205, !range !36, !noundef !37
  %i.lk = trunc nuw i8 %i.lj to i1
  br i1 %i.lk, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.ct

bb.ct:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

.body:                                            ; preds = %bb.bx, %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i, %bb.by
  %.pn11 = phi { ptr, i32 } [ %i.if, %bb.by ], [ %i.ie, %bb.bx ], [ %eh.lpad-body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i ], [ %.pn.pn.pn.i, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.cu

bb.cu:                                            ; preds = %.body, %bb.x
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %.body ], [ %i.bn, %bb.x ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.cu
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.cu ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bg, %_ZN5arrow8FieldRefD2Ev.exit26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %7 = alloca %"class.std::vector.65", align 8    ; 12 uses
  %8 = alloca %"class.arrow::Result.243", align 8 ; 14 uses
  %9 = alloca %"class.std::shared_ptr.77", align 16 ; 5 uses
  %10 = alloca %"class.arrow::Result.278", align 8 ; 11 uses
  %11 = alloca %"class.arrow::Result.243", align 8 ; 14 uses
  %12 = alloca %"class.arrow::FieldRef", align 8  ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %16 = alloca %"class.std::shared_ptr.77", align 16 ; 6 uses
  %17 = alloca %"class.arrow::Result.695", align 8 ; 23 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.cw

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1333, !nonnull !37, !align !368
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !352 ; 9 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !353 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.f, ptr %13, align 8, !tbaa !47
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
  store ptr %i.m, ptr %13, align 8, !tbaa !50
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
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 %.sroa.0.0.copyload.i, ptr %i.p, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.copyload.i
  store i8 0, ptr %i.q, align 1, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.r, ptr %12, align 8, !tbaa !47
  %i.s = load ptr, ptr %13, align 8, !tbaa !50    ; 2 uses
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
  store ptr %i.s, ptr %12, align 8, !tbaa !50
  %i.x = load i64, ptr %i.f, align 8, !tbaa !53
  store i64 %i.x, ptr %i.r, align 8, !tbaa !53
  %.pre = load i64, ptr %i.p, align 8, !tbaa !52
  br label %_ZN5arrow8FieldRefC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5arrow8FieldRefC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.y = phi i64 [ %i.u, %bb.i ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !52
  store ptr %i.f, ptr %13, align 8, !tbaa !50
  store i64 0, ptr %i.p, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  store i8 1, ptr %i.aa, align 8, !tbaa !184
  invoke void @_ZNK5arrow12StructScalar5fieldENS_8FieldRefE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.243") align 8 %11, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %12)
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
  %i.ac = load ptr, ptr %12, align 8, !tbaa !181  ; 3 uses
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
  %i.ah = load ptr, ptr %12, align 8, !tbaa !50   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.r
  br i1 %i.ai, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.aj = load i64, ptr %i.r, align 8, !tbaa !53
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #30, !inline_history !453
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i

bb.n:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %12, align 8, !tbaa !454  ; 3 uses
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !455 ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i2.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i
  %.0.i.i3.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %i.al, %bb.n ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %.0.i.i3.i.i), !inline_history !456
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i54 = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i54, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !457

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !454
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i, %bb.n
  %i.ao = phi ptr [ %.pre.i.i, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i ], [ %i.al, %bb.n ] ; 3 uses
  %.not.i.i.i.i.i55 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i55, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !188
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #30, !inline_history !458
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i

bb.p:                                             ; preds = %bb.j
  unreachable

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i: ; preds = %bb.m, %bb.o, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.l, %bb.k
  store i8 -1, ptr %i.aa, align 8, !tbaa !184
  br label %_ZN5arrow8FieldRefD2Ev.exit

_ZN5arrow8FieldRefD2Ev.exit:                      ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i, %bb.j
  %i.at = load ptr, ptr %13, align 8, !tbaa !50   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.f
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow8FieldRefD2Ev.exit
  %i.av = load i64, ptr %i.f, align 8, !tbaa !53
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN5arrow8FieldRefD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ax = load ptr, ptr %11, align 8, !tbaa !201
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.y, label %bb.q

end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m:bb.a
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #31, !inline_history !248
  unreachable

_ZN5arrow8FieldRefD2Ev.exit26:                    ; preds = %bb.v
  %i.bj = load ptr, ptr %13, align 8, !tbaa !50   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.f
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26
  %i.bl = load i64, ptr %i.f, align 8, !tbaa !53
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.x:                                             ; preds = %bb.r, %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.cx

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.br = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !87, !noalias !1386
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !97, !noalias !1386 ; 3 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !88, !noalias !1386
  store <2 x ptr> %i.br, ptr %16, align 16, !tbaa !87, !alias.scope !1386
  store ptr null, ptr %i.bo, align 8, !tbaa !97, !noalias !1386
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !466, !noalias !1389 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !467, !noalias !1389
  %.not.i30 = icmp eq i32 %i.bw, 25
  br i1 %.not.i30, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1389
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1389
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void %i.bz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.bu, i1 noundef zeroext false)
          to label %.noexc32 unwind label %bb.ca, !inline_history !1392

.noexc32:                                         ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !1393
  invoke void @_ZN5arrow8internal12JoinToStringIJRA28_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(28) @.str.243, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i unwind label %bb.ae

.noexc.i:                                         ; preds = %.noexc32
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.noexc.i
  %i.ca = load ptr, ptr %3, align 8, !tbaa !50, !noalias !1393 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !53, !noalias !1393
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.ab:                                            ; preds = %.noexc.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %3, align 8, !tbaa !50, !noalias !1393 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.ab
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !53, !noalias !1393
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1393
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1393
  call void @_ZN5arrow6ResultISt6vectorIbSaIbEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  %i.cl = load ptr, ptr %4, align 8, !tbaa !201, !noalias !1389 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i31, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.ac, !prof !204

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !205, !range !36, !noundef !37
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.ad, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cp = load ptr, ptr %5, align 8, !tbaa !50, !noalias !1389 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !53, !noalias !1389
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1389
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1389
  br label %_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorIbSaIbEEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultIS8_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit

bb.ae:                                            ; preds = %.noexc32
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cu, %bb.ae ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ]
  %i.cv = load ptr, ptr %5, align 8, !tbaa !50, !noalias !1389 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i: ; preds = %.body.i
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !53, !noalias !1389
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1389
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1389
  br label %.body

bb.af:                                            ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.db = load i8, ptr %i.da, align 8, !tbaa !298, !range !36, !noalias !1389, !noundef !37
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !1389
  invoke void @_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(16) @.str.222)
          to label %.noexc33 unwind label %bb.ca

.noexc33:                                         ; preds = %bb.ag
  call void @_ZN5arrow6ResultISt6vectorIbSaIbEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  %i.dd = load ptr, ptr %6, align 8, !tbaa !201, !noalias !1389 ; 2 uses
  %.not.i40.i = icmp eq ptr %i.dd, null
  br i1 %.not.i40.i, label %_ZN5arrow6StatusD2Ev.exit41.i, label %bb.ah, !prof !204

bb.ah:                                            ; preds = %.noexc33
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !205, !range !36, !noundef !37
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit41.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  br label %_ZN5arrow6StatusD2Ev.exit41.i

_ZN5arrow6StatusD2Ev.exit41.i:                    ; preds = %bb.ai, %bb.ah, %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1389
  br label %_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorIbSaIbEEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultIS8_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit

bb.aj:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !1389
  store ptr null, ptr %7, align 8, !tbaa !78, !noalias !1389
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.dh, align 8, !tbaa !81, !noalias !1389
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr null, ptr %i.di, align 8, !tbaa !78, !noalias !1389
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  store i32 0, ptr %i.dj, align 8, !tbaa !81, !noalias !1389
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  store ptr null, ptr %i.dk, align 8, !tbaa !82, !noalias !1389
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bs, i64 48 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1174, !noalias !1389 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !271
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !1346
  %.not324.i = icmp sgt i64 %i.dq, 0
  br i1 %.not324.i, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %bb.aj
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.al

bb.ak:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !1174, !noalias !1389 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !271
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !1346
  %.not32.i = icmp sgt i64 %i.dy, %indvars.iv.next.i
  br i1 %.not32.i, label %bb.al, label %.thread.i, !llvm.loop !1398

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ak ] ; 2 uses
  %i.dz = phi ptr [ %i.dm, %.lr.ph.i ], [ %i.du, %bb.ak ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !1389
  invoke void @_ZNK5arrow5Array9GetScalarEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.243") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 noundef %indvars.iv.i)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ea = load ptr, ptr %8, align 8, !tbaa !201, !noalias !1389
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.ao, label %.critedge.i, !prof !204

.critedge.i:                                      ; preds = %bb.am
  call void @_ZN5arrow6ResultISt6vectorIbSaIbEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !1389
  br label %.loopexit.i

bb.an:                                            ; preds = %bb.al
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !1389
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  %20 = load <2 x ptr>, ptr %i.dr, align 8, !tbaa !87, !noalias !1405 ; 3 uses
  %21 = extractelement <2 x ptr> %20, i64 1       ; 8 uses
  store ptr null, ptr %i.ds, align 8, !tbaa !88, !noalias !1405
  store <2 x ptr> %20, ptr %9, align 16, !tbaa !87, !alias.scope !1406, !noalias !1389
  store ptr null, ptr %i.dr, align 8, !tbaa !97, !noalias !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !1389
  %22 = extractelement <2 x ptr> %20, i64 0
  invoke fastcc void @_ZN5arrow7compute8internalL17GenericFromScalarIbEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE(ptr dead_on_unwind noalias writable align 8 %10, ptr %22)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ed = load ptr, ptr %10, align 8, !tbaa !201, !noalias !1389
  %i.ee = icmp eq ptr %i.ed, null                 ; 2 uses
  br i1 %i.ee, label %bb.as, label %bb.aq, !prof !204

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN5arrow6ResultISt6vectorIbSaIbEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(8) %10) #28
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i

bb.ar:                                            ; preds = %bb.ao
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.as:                                            ; preds = %bb.ap
  %i.eg = load i8, ptr %i.dt, align 8, !tbaa !322, !range !36, !noalias !1389, !noundef !37
  %i.eh = trunc nuw i8 %i.eg to i1                ; 2 uses
  %i.ei = load ptr, ptr %i.di, align 8, !tbaa !78, !noalias !1389 ; 7 uses
  %i.ej = load ptr, ptr %i.dk, align 8, !tbaa !82, !noalias !1389
  %.not.i42.i = icmp eq ptr %i.ei, %i.ej
  %.sroa.2.0.copyload.i11.i.i = load i32, ptr %i.dj, align 8, !noalias !1389 ; 4 uses
  br i1 %.not.i42.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ek = add i32 %.sroa.2.0.copyload.i11.i.i, 1
  store i32 %i.ek, ptr %i.dj, align 8, !tbaa !81, !noalias !1389
  %i.el = icmp eq i32 %.sroa.2.0.copyload.i11.i.i, 63
  br i1 %i.el, label %bb.au, label %_ZNSt13_Bit_iteratorppEi.exit.i.i

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.dj, align 8, !tbaa !81, !noalias !1389
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.em, ptr %i.di, align 8, !tbaa !78, !noalias !1389
  br label %_ZNSt13_Bit_iteratorppEi.exit.i.i

_ZNSt13_Bit_iteratorppEi.exit.i.i:                ; preds = %bb.au, %bb.at
  %i.en = zext nneg i32 %.sroa.2.0.copyload.i11.i.i to i64
  %i.eo = shl nuw i64 1, %i.en                    ; 2 uses
  br i1 %i.eh, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i
  %i.ep = load i64, ptr %i.ei, align 8, !tbaa !352
  %i.eq = or i64 %i.ep, %i.eo
  store i64 %i.eq, ptr %i.ei, align 8, !tbaa !352
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i

bb.aw:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i
  %i.er = xor i64 %i.eo, -1
  %i.es = load i64, ptr %i.ei, align 8, !tbaa !352
  %i.et = and i64 %i.es, %i.er
  store i64 %i.et, ptr %i.ei, align 8, !tbaa !352
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i

bb.ax:                                            ; preds = %bb.as
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr %i.ei, i32 %.sroa.2.0.copyload.i11.i.i, i1 noundef zeroext %i.eh)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i unwind label %bb.bo

_ZNSt6vectorIbSaIbEE9push_backEb.exit.i:          ; preds = %bb.ax, %bb.aw, %bb.av, %bb.aq
  %i.eu = load ptr, ptr %10, align 8, !tbaa !201, !noalias !1389 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i, label %_ZN5arrow6ResultIbED2Ev.exit.i, label %bb.ay, !prof !204

bb.ay:                                            ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !205, !range !36, !noundef !37
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %_ZN5arrow6ResultIbED2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %10) #28
  br label %_ZN5arrow6ResultIbED2Ev.exit.i

_ZN5arrow6ResultIbED2Ev.exit.i:                   ; preds = %bb.az, %bb.ay, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !1389
  %.not.i.i44.i = icmp eq ptr %21, null
  br i1 %.not.i.i44.i, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit.i
  %i.ey = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %i.ez = load atomic i64, ptr %i.ey acquire, align 8 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 4294967297
  %i.fb = trunc i64 %i.ez to i32                  ; 2 uses
  br i1 %i.fa, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.ey, align 8, !tbaa !91
  %i.fc = getelementptr inbounds nuw i8, ptr %21, i64 12
  store i32 0, ptr %i.fc, align 4, !tbaa !93
  %i.fd = load ptr, ptr %21, align 8, !tbaa !43
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %21) #28, !inline_history !1407
  %i.fg = load ptr, ptr %21, align 8, !tbaa !43
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %21) #28, !inline_history !1407
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bc:                                            ; preds = %bb.ba
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !1389
  %.not.i.i.i.i = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fk = add nsw i32 %i.fb, -1
  store i32 %i.fk, ptr %i.ey, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.fl = atomicrmw volatile add ptr %i.ey, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i = phi i32 [ %i.fb, %bb.bd ], [ %i.fl, %bb.be ]
  %i.fm = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fm, label %bb.bf, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !59

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %21) #28
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bb, %_ZN5arrow6ResultIbED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !1389
  %i.fn = load ptr, ptr %8, align 8, !tbaa !201, !noalias !1389 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.bg, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i, !prof !204

bb.bg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.fp = load ptr, ptr %i.ds, align 8, !tbaa !88, !noalias !1389 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq acquire, align 8 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4294967297
  %i.ft = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.fs, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.fq, align 8, !tbaa !91
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fu, align 4, !tbaa !93
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !43
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #28, !inline_history !1408
  %i.fy = load ptr, ptr %i.fp, align 8, !tbaa !43
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #28, !inline_history !1408
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.gb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !1389
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.gb, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gc = add nsw i32 %i.ft, -1
  store i32 %i.gc, ptr %i.fq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.gd = atomicrmw volatile add ptr %i.fq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ft, %bb.bk ], [ %i.gd, %bb.bl ]
  %i.ge = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ge, label %bb.bm, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i, !prof !59

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i: ; preds = %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bi
  %.pr.i.pr.i = load ptr, ptr %8, align 8, !tbaa !201, !noalias !1389 ; 2 uses
  %.not.i.i45.i = icmp eq ptr %.pr.i.pr.i, null
  br i1 %.not.i.i45.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i, !prof !396

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i, %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.gf = phi ptr [ %.pr.i.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i ], [ %i.fn, %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 1
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !205, !range !36, !noundef !37
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, label %bb.bn

bb.bn:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i: ; preds = %bb.bn, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !1389
  br i1 %i.ee, label %bb.ak, label %.loopexit.i

bb.bo:                                            ; preds = %bb.ax
  %i.gj = landingpad { ptr, i32 }
          cleanup
  %i.gk = load ptr, ptr %10, align 8, !tbaa !201, !noalias !1389 ; 2 uses
  %.not.i.i46.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i46.i, label %_ZN5arrow6ResultIbED2Ev.exit47.i, label %bb.bp, !prof !204

bb.bp:                                            ; preds = %bb.bo
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !205, !range !36, !noundef !37
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %_ZN5arrow6ResultIbED2Ev.exit47.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %10) #28
  br label %_ZN5arrow6ResultIbED2Ev.exit47.i

_ZN5arrow6ResultIbED2Ev.exit47.i:                 ; preds = %bb.bq, %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !1389
  br label %bb.br

bb.br:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit47.i, %bb.ar
  %.pn.i = phi { ptr, i32 } [ %i.gj, %_ZN5arrow6ResultIbED2Ev.exit47.i ], [ %i.ef, %bb.ar ]
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !1389
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !1389
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.an
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.br ], [ %i.ec, %bb.an ]
  %i.go = load ptr, ptr %7, align 8, !tbaa !78, !noalias !1389 ; 2 uses
  %.not.i.i48.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i48.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gp = load ptr, ptr %i.dk, align 8, !tbaa !82, !noalias !1389 ; 2 uses
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.go to i64
  %i.gs = sub i64 %i.gq, %i.gr                    ; 2 uses
  %i.gt = ashr exact i64 %i.gs, 3
  %i.gu = sub nsw i64 0, %i.gt
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.gu
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gs) #30
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !1389
  br label %.body

.thread.i:                                        ; preds = %bb.ak, %bb.aj
  store ptr null, ptr %17, align 8, !tbaa !201, !alias.scope !1389
  %i.gw = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gw, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit50.i

.loopexit.i:                                      ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, %.critedge.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !78, !noalias !1389 ; 2 uses
  %.not.i.i49.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i49.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit50.i, label %bb.bu

bb.bu:                                            ; preds = %.loopexit.i
  %i.gx = load ptr, ptr %i.dk, align 8, !tbaa !82, !noalias !1389 ; 2 uses
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %.pr.i to i64
  %i.ha = sub i64 %i.gy, %i.gz                    ; 2 uses
  %i.hb = ashr exact i64 %i.ha, 3
  %i.hc = sub nsw i64 0, %i.hb
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.hc
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.ha) #30
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit50.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit50.i:         ; preds = %bb.bu, %.loopexit.i, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !1389
  br label %_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorIbSaIbEEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultIS8_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit

_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorIbSaIbEEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultIS8_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit50.i, %_ZN5arrow6StatusD2Ev.exit41.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.he = load ptr, ptr %17, align 8, !tbaa !201
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.cc, label %bb.bv

bb.bv:                                            ; preds = %_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorIbSaIbEEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultIS8_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %.sroa.0.0.copyload.i34 = load i64, ptr %1, align 8, !tbaa !352
  %.sroa.2.0.copyload.i36 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !353
  store i64 %.sroa.0.0.copyload.i34, ptr %19, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %.sroa.2.0.copyload.i36, ptr %i.hg, align 8
  %i.hh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bw unwind label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZNK5arrow6Status11WithMessageIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 1 dereferenceable(26) @.str.219, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 1 dereferenceable(18) @.str.216, ptr noundef nonnull align 1 dereferenceable(18) @_ZN5arrow7compute17MakeStructOptions9kTypeNameE, ptr noundef nonnull align 1 dereferenceable(3) @.str.217, ptr noundef nonnull align 8 dereferenceable(32) %i.hh)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.hi = load ptr, ptr %i.a, align 8, !tbaa !201 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i39, label %_ZN5arrow6StatusD2Ev.exit42, label %bb.by, !prof !204

bb.by:                                            ; preds = %bb.bx
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !205, !range !36, !noundef !37
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %_ZN5arrow6StatusD2Ev.exit42, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br label %_ZN5arrow6StatusD2Ev.exit42

_ZN5arrow6StatusD2Ev.exit42:                      ; preds = %bb.bz, %bb.by, %bb.bx
  %i.hm = load ptr, ptr %18, align 8, !tbaa !201
  store ptr %i.hm, ptr %i.a, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.ce

bb.ca:                                            ; preds = %bb.ag, %bb.z
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_3
