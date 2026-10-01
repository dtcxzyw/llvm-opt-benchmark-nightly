Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 274
loop-unroll.NumUnrolled: 473
begin_hunk_0_@_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE10rcurvelineERS2_RS3_:bb.a

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40: ; preds = %bb.k, %bb.l
  %.0.i.i39 = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = add i32 %.054, 5                        ; 2 uses
  %.not.i.i41 = icmp ult i32 %i.aj, %i.i
  br i1 %.not.i.i41, label %bb.n, label %bb.m, !prof !268

bb.m:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43

bb.n:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ak
  %.pre56 = load double, ptr %i.al, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43: ; preds = %bb.m, %bb.n
  %i.am = phi double [ 0.000000e+00, %bb.m ], [ %.pre56, %bb.n ]
  %i.an = load double, ptr %.0.i.i39, align 8, !tbaa !477
  %i.ao = load <2 x double>, ptr %4, align 16, !tbaa !477
  %i.ap = insertelement <2 x double> poison, double %i.an, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.am, i64 1
  %i.ar = fadd <2 x double> %i.ao, %i.aq
  store <2 x double> %i.ar, ptr %4, align 16, !tbaa !477
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  %i.as = add i32 %i.h, 6                         ; 2 uses
  %.not = icmp ugt i32 %i.as, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3493

._crit_edge:                                      ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43
  %.pre57 = load i32, ptr %i.b, align 4, !tbaa !1152 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 4 uses
  %i.au = load <2 x double>, ptr %i.at, align 8, !tbaa !712
  %.not.i.i44 = icmp ult i32 %i.h, %.pre57
  br i1 %.not.i.i44, label %bb.p, label %bb.o, !prof !268

bb.o:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46

bb.p:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = zext i32 %i.h to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46: ; preds = %bb.o, %bb.p
  %.0.i.i45 = phi ptr [ @_hb_CrapPool, %bb.o ], [ %i.ax, %bb.p ]
  %i.ay = or disjoint i32 %i.h, 1                 ; 2 uses
  %.not.i.i47 = icmp ult i32 %i.ay, %.pre57
  br i1 %.not.i.i47, label %bb.r, label %bb.q, !prof !268

bb.q:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49

bb.r:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ba
  %.pre58 = load double, ptr %i.bb, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.q, %bb.r
  %i.bc = phi double [ 0.000000e+00, %bb.q ], [ %.pre58, %bb.r ]
  %i.bd = load double, ptr %.0.i.i45, align 8, !tbaa !477
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bc, i64 1
  %i.bg = fadd <2 x double> %i.au, %i.bf          ; 2 uses
  %i.bh = load i8, ptr %1, align 8, !tbaa !1149, !range !380, !noundef !293
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49
  store i8 1, ptr %1, align 8, !tbaa !1149
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !477
  %i.bl = load double, ptr %i.at, align 8         ; 3 uses
  %i.bm = fcmp ogt double %i.bk, %i.bl
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double %i.bl, ptr %i.bj, align 8, !tbaa !712
  %.pre.i.i = load double, ptr %i.at, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bn = phi double [ %.pre.i.i, %bb.t ], [ %i.bl, %bb.s ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !477
  %i.bq = fcmp ogt double %i.bn, %i.bp
  br i1 %i.bq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store double %i.bn, ptr %i.bo, align 8, !tbaa !712
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !477
  %i.bt = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.bu = fcmp ogt double %i.bs, %i.bt
  br i1 %i.bu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store double %i.bt, ptr %i.br, align 8, !tbaa !712
  %.pre9.i.i = load double, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bv = phi double [ %.pre9.i.i, %bb.x ], [ %i.bt, %bb.w ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !477
  %i.by = fcmp ogt double %i.bv, %i.bx
  br i1 %i.by, label %bb.z, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i

bb.z:                                             ; preds = %bb.y
  store double %i.bv, ptr %i.bw, align 8, !tbaa !712
  br label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i

_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i:      ; preds = %bb.z, %bb.y, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49
  store <2 x double> %i.bg, ptr %i.at, align 8, !tbaa !712
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !477
  %i.cb = extractelement <2 x double> %i.bg, i64 0 ; 3 uses
  %i.cc = fcmp ogt double %i.ca, %i.cb
  br i1 %i.cc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i
  store double %i.cb, ptr %i.bz, align 8, !tbaa !712
  %.pre.i9.i = load double, ptr %i.at, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i
  %i.cd = phi double [ %.pre.i9.i, %bb.aa ], [ %i.cb, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !477
  %i.cg = fcmp ogt double %i.cd, %i.cf
  br i1 %i.cg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store double %i.cd, ptr %i.ce, align 8, !tbaa !712
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !477
  %i.cj = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.ck = fcmp ogt double %i.ci, %i.cj
  br i1 %i.ck, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store double %i.cj, ptr %i.ch, align 8, !tbaa !712
  %.pre9.i8.i = load double, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cl = phi double [ %.pre9.i8.i, %bb.ae ], [ %i.cj, %bb.ad ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !477
  %i.co = fcmp ogt double %i.cl, %i.cn
  br i1 %i.co, label %bb.ag, label %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit

bb.ag:                                            ; preds = %bb.af
  store double %i.cl, ptr %i.cm, align 8, !tbaa !712
  br label %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit

_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit: ; preds = %bb.ag, %bb.af, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE10rlinecurveERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1152 ; 10 uses
  %i.d = icmp ult i32 %i.c, 8
  br i1 %i.d, label %bb.ah, label %.lr.ph, !prof !267

.lr.ph:                                           ; preds = %bb.a
  %i.e = add i32 %i.c, -6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %5 = zext i32 %i.e to i64
  %6 = zext i32 %i.c to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit
  %indvars.iv58 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next59, %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit ]
  %i.l = load <2 x double>, ptr %i.f, align 8, !tbaa !712
  %.not.i.i = icmp samesign ult i64 %indvars.iv58, %6
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !268

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv58
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.m, %bb.d ]
  %7 = or disjoint i64 %indvars.iv58, 1           ; 2 uses
  %.not.i.i29 = icmp samesign ult i64 %7, %6
  br i1 %.not.i.i29, label %bb.f, label %bb.e, !prof !268

bb.e:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31

bb.f:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %7
  %.pre = load double, ptr %i.n, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31: ; preds = %bb.e, %bb.f
  %i.o = phi double [ 0.000000e+00, %bb.e ], [ %.pre, %bb.f ]
  %i.p = load double, ptr %.0.i.i, align 8, !tbaa !477
  %i.q = insertelement <2 x double> poison, double %i.p, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.o, i64 1
  %i.s = fadd <2 x double> %i.l, %i.r             ; 2 uses
  %i.t = load i8, ptr %1, align 8, !tbaa !1149, !range !380, !noundef !293
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31
  store i8 1, ptr %1, align 8, !tbaa !1149
  %i.v = load double, ptr %i.h, align 8, !tbaa !477
  %i.w = load double, ptr %i.f, align 8           ; 3 uses
  %i.x = fcmp ogt double %i.v, %i.w
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %i.w, ptr %i.h, align 8, !tbaa !712
  %.pre.i.i = load double, ptr %i.f, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = phi double [ %.pre.i.i, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  %i.z = load double, ptr %i.i, align 8, !tbaa !477
  %i.aa = fcmp ogt double %i.y, %i.z
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.y, ptr %i.i, align 8, !tbaa !712
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = load double, ptr %i.j, align 8, !tbaa !477
  %i.ac = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.ad = fcmp ogt double %i.ab, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.ac, ptr %i.j, align 8, !tbaa !712
  %.pre9.i.i = load double, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ae = phi double [ %.pre9.i.i, %bb.l ], [ %i.ac, %bb.k ] ; 2 uses
  %i.af = load double, ptr %i.k, align 8, !tbaa !477
  %i.ag = fcmp ogt double %i.ae, %i.af
  br i1 %i.ag, label %bb.n, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i

bb.n:                                             ; preds = %bb.m
  store double %i.ae, ptr %i.k, align 8, !tbaa !712
  br label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i

_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i:      ; preds = %bb.n, %bb.m, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31
  store <2 x double> %i.s, ptr %i.f, align 8, !tbaa !712
  %i.ah = load double, ptr %i.h, align 8, !tbaa !477
  %i.ai = extractelement <2 x double> %i.s, i64 0 ; 3 uses
  %i.aj = fcmp ogt double %i.ah, %i.ai
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i
  store double %i.ai, ptr %i.h, align 8, !tbaa !712
  %.pre.i9.i = load double, ptr %i.f, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i
  %i.ak = phi double [ %.pre.i9.i, %bb.o ], [ %i.ai, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i ] ; 2 uses
  %i.al = load double, ptr %i.i, align 8, !tbaa !477
  %i.am = fcmp ogt double %i.ak, %i.al
  br i1 %i.am, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %i.ak, ptr %i.i, align 8, !tbaa !712
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.an = load double, ptr %i.j, align 8, !tbaa !477
  %i.ao = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.ap = fcmp ogt double %i.an, %i.ao
  br i1 %i.ap, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double %i.ao, ptr %i.j, align 8, !tbaa !712
  %.pre9.i8.i = load double, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aq = phi double [ %.pre9.i8.i, %bb.s ], [ %i.ao, %bb.r ] ; 2 uses
  %i.ar = load double, ptr %i.k, align 8, !tbaa !477
  %i.as = fcmp ogt double %i.aq, %i.ar
  br i1 %i.as, label %bb.u, label %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit

bb.u:                                             ; preds = %bb.t
  store double %i.aq, ptr %i.k, align 8, !tbaa !712
  br label %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit

_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit: ; preds = %bb.t, %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %5
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3494

._crit_edge:                                      ; preds = %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit
  %8 = and i32 %i.c, -2                           ; 5 uses
  %9 = add i32 %8, -4                             ; 2 uses
  %10 = add i32 %8, -6                            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !1616
  %.not.i.i32 = icmp ult i32 %10, %i.c
  br i1 %.not.i.i32, label %bb.w, label %bb.v, !prof !268

bb.v:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34

bb.w:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = zext i32 %10 to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34: ; preds = %bb.v, %bb.w
  %.0.i.i33 = phi ptr [ @_hb_CrapPool, %bb.v ], [ %i.aw, %bb.w ]
  %i.ax = or disjoint i32 %10, 1                  ; 2 uses
  %.not.i.i35 = icmp ult i32 %i.ax, %i.c
  br i1 %.not.i.i35, label %bb.y, label %bb.x, !prof !268

bb.x:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37

bb.y:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %.pre58 = load double, ptr %i.ba, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37: ; preds = %bb.x, %bb.y
  %i.bb = phi double [ 0.000000e+00, %bb.x ], [ %.pre58, %bb.y ]
  %i.bc = load double, ptr %.0.i.i33, align 8, !tbaa !477
  %i.bd = load <2 x double>, ptr %2, align 16, !tbaa !477
  %i.be = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bb, i64 1
  %i.bg = fadd <2 x double> %i.bd, %i.bf
  store <2 x double> %i.bg, ptr %2, align 16, !tbaa !477
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1616
  %.not.i.i38 = icmp ult i32 %9, %i.c
  br i1 %.not.i.i38, label %bb.aa, label %bb.z, !prof !268

bb.z:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40

bb.aa:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = zext i32 %9 to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40: ; preds = %bb.z, %bb.aa
  %.0.i.i39 = phi ptr [ @_hb_CrapPool, %bb.z ], [ %i.bj, %bb.aa ]
  %i.bk = add i32 %8, -3                          ; 2 uses
  %.not.i.i41 = icmp ult i32 %i.bk, %i.c
  br i1 %.not.i.i41, label %bb.ac, label %bb.ab, !prof !268

bb.ab:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43

bb.ac:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = zext i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  %.pre59 = load double, ptr %i.bn, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43: ; preds = %bb.ab, %bb.ac
  %i.bo = phi double [ 0.000000e+00, %bb.ab ], [ %.pre59, %bb.ac ]
  %i.bp = load double, ptr %.0.i.i39, align 8, !tbaa !477
  %i.bq = load <2 x double>, ptr %3, align 16, !tbaa !477
  %i.br = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bo, i64 1
  %i.bt = fadd <2 x double> %i.bq, %i.bs
  store <2 x double> %i.bt, ptr %3, align 16, !tbaa !477
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1616
  %i.bu = add i32 %8, -2                          ; 2 uses
  %.not.i.i44 = icmp ult i32 %i.bu, %i.c
  br i1 %.not.i.i44, label %bb.ae, label %bb.ad, !prof !268

bb.ad:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46

bb.ae:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46: ; preds = %bb.ad, %bb.ae
  %.0.i.i45 = phi ptr [ @_hb_CrapPool, %bb.ad ], [ %i.bx, %bb.ae ]
  %i.by = add i32 %8, -1                          ; 2 uses
  %.not.i.i47 = icmp ult i32 %i.by, %i.c
  br i1 %.not.i.i47, label %bb.ag, label %bb.af, !prof !268

bb.af:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49

bb.ag:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = zext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca
  %.pre60 = load double, ptr %i.cb, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.af, %bb.ag
  %i.cc = phi double [ 0.000000e+00, %bb.af ], [ %.pre60, %bb.ag ]
  %i.cd = load double, ptr %.0.i.i45, align 8, !tbaa !477
  %i.ce = load <2 x double>, ptr %4, align 16, !tbaa !477
  %i.cf = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.cc, i64 1
  %i.ch = fadd <2 x double> %i.ce, %i.cg
  store <2 x double> %i.ch, ptr %4, align 16, !tbaa !477
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE9vvcurvetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 8     ; 9 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !1616
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1152 ; 3 uses
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.f, align 8, !tbaa !477
  %i.g = load double, ptr %2, align 8, !tbaa !477
  %i.h = fadd double %i.g, %.pre
  store double %i.h, ptr %2, align 8, !tbaa !477
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit, %bb.a
  %.0 = phi i32 [ 1, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit ], [ 0, %bb.a ] ; 2 uses
  %i.i = or disjoint i32 %.0, 4                   ; 2 uses
  %.not1831 = icmp ugt i32 %i.i, %i.d
  br i1 %.not1831, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30
  %i.m = phi i32 [ %i.d, %.lr.ph ], [ %i.am, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30 ] ; 4 uses
  %i.n = phi i32 [ %i.i, %.lr.ph ], [ %i.al, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30 ] ; 2 uses
  %.132 = phi i32 [ %.0, %.lr.ph ], [ %i.n, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30 ] ; 5 uses
  %.not.i.i19 = icmp ult i32 %.132, %i.m
  br i1 %.not.i.i19, label %bb.e, label %bb.d, !prof !268

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %.132 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.o
  %.pre33 = load double, ptr %i.p, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21: ; preds = %bb.d, %bb.e
  %i.q = phi double [ 0.000000e+00, %bb.d ], [ %.pre33, %bb.e ]
  %i.r = load double, ptr %i.k, align 8, !tbaa !477
  %i.s = fadd double %i.r, %i.q
  store double %i.s, ptr %i.k, align 8, !tbaa !477
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1616
  %i.t = add i32 %.132, 1                         ; 2 uses
  %.not.i.i22 = icmp ult i32 %i.t, %i.m
  br i1 %.not.i.i22, label %bb.g, label %bb.f, !prof !268

bb.f:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24

bb.g:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.u
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24: ; preds = %bb.f, %bb.g
  %.0.i.i23 = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.v, %bb.g ]
  %i.w = add i32 %.132, 2                         ; 2 uses
  %.not.i.i25 = icmp ult i32 %i.w, %i.m
  br i1 %.not.i.i25, label %bb.i, label %bb.h, !prof !268

bb.h:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27

bb.i:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.x
  %.pre34 = load double, ptr %i.y, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27: ; preds = %bb.h, %bb.i
  %i.z = phi double [ 0.000000e+00, %bb.h ], [ %.pre34, %bb.i ]
  %i.aa = load double, ptr %.0.i.i23, align 8, !tbaa !477
  %i.ab = load <2 x double>, ptr %3, align 16, !tbaa !477
  %i.ac = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.z, i64 1
  %i.ae = fadd <2 x double> %i.ab, %i.ad
  store <2 x double> %i.ae, ptr %3, align 16, !tbaa !477
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1616
  %i.af = add i32 %.132, 3                        ; 2 uses
  %.not.i.i28 = icmp ult i32 %i.af, %i.m
  br i1 %.not.i.i28, label %bb.k, label %bb.j, !prof !268

bb.j:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30

bb.k:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ag
  %.pre35 = load double, ptr %i.ah, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30: ; preds = %bb.j, %bb.k
  %i.ai = phi double [ 0.000000e+00, %bb.j ], [ %.pre35, %bb.k ]
  %i.aj = load double, ptr %i.l, align 8, !tbaa !477
  %i.ak = fadd double %i.aj, %i.ai
  store double %i.ak, ptr %i.l, align 8, !tbaa !477
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !1616
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  %i.al = add i32 %i.n, 4                         ; 2 uses
  %i.am = load i32, ptr %i.c, align 4, !tbaa !1152 ; 2 uses
  %.not18 = icmp ugt i32 %i.al, %i.am
  br i1 %.not18, label %._crit_edge, label %bb.c, !llvm.loop !3495

._crit_edge:                                      ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE9hhcurvetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 8     ; 9 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !1616
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1152 ; 3 uses
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.f, align 8, !tbaa !477
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !477
  %i.i = fadd double %i.h, %.pre
  store double %i.i, ptr %i.g, align 8, !tbaa !477
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit, %bb.a
  %.0 = phi i32 [ 1, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit ], [ 0, %bb.a ] ; 2 uses
  %i.j = or disjoint i32 %.0, 4                   ; 2 uses
  %.not1831 = icmp ugt i32 %i.j, %i.d
  br i1 %.not1831, label %._crit_edge, label %.lr.ph

end_hunk_0
begin_hunk_1_@_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE10rcurvelineERS4_RS5_:bb.a

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40: ; preds = %bb.k, %bb.l
  %.0.i.i39 = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = add i32 %.054, 5                        ; 2 uses
  %.not.i.i41 = icmp ult i32 %i.aj, %i.i
  br i1 %.not.i.i41, label %bb.n, label %bb.m, !prof !268

bb.m:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43

bb.n:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ak
  %.pre56 = load double, ptr %i.al, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43: ; preds = %bb.m, %bb.n
  %i.am = phi double [ 0.000000e+00, %bb.m ], [ %.pre56, %bb.n ]
  %i.an = load double, ptr %.0.i.i39, align 8, !tbaa !477
  %i.ao = load <2 x double>, ptr %4, align 16, !tbaa !477
  %i.ap = insertelement <2 x double> poison, double %i.an, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.am, i64 1
  %i.ar = fadd <2 x double> %i.ao, %i.aq
  store <2 x double> %i.ar, ptr %4, align 16, !tbaa !477
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  %i.as = add i32 %i.h, 6                         ; 2 uses
  %.not = icmp ugt i32 %i.as, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5842

._crit_edge:                                      ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43
  %.pre57 = load i32, ptr %i.b, align 4, !tbaa !1152 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 4 uses
  %i.au = load <2 x double>, ptr %i.at, align 8, !tbaa !712
  %.not.i.i44 = icmp ult i32 %i.h, %.pre57
  br i1 %.not.i.i44, label %bb.p, label %bb.o, !prof !268

bb.o:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46

bb.p:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = zext i32 %i.h to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46: ; preds = %bb.o, %bb.p
  %.0.i.i45 = phi ptr [ @_hb_CrapPool, %bb.o ], [ %i.ax, %bb.p ]
  %i.ay = or disjoint i32 %i.h, 1                 ; 2 uses
  %.not.i.i47 = icmp ult i32 %i.ay, %.pre57
  br i1 %.not.i.i47, label %bb.r, label %bb.q, !prof !268

bb.q:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49

bb.r:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ba
  %.pre58 = load double, ptr %i.bb, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.q, %bb.r
  %i.bc = phi double [ 0.000000e+00, %bb.q ], [ %.pre58, %bb.r ]
  %i.bd = load double, ptr %.0.i.i45, align 8, !tbaa !477
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bc, i64 1
  %i.bg = fadd <2 x double> %i.au, %i.bf          ; 2 uses
  %i.bh = load i8, ptr %1, align 8, !tbaa !476, !range !380, !noundef !293
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49
  store i8 1, ptr %1, align 8, !tbaa !476
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !477
  %i.bl = load double, ptr %i.at, align 8         ; 3 uses
  %i.bm = fcmp ogt double %i.bk, %i.bl
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double %i.bl, ptr %i.bj, align 8, !tbaa !712
  %.pre.i.i = load double, ptr %i.at, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bn = phi double [ %.pre.i.i, %bb.t ], [ %i.bl, %bb.s ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !477
  %i.bq = fcmp ogt double %i.bn, %i.bp
  br i1 %i.bq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store double %i.bn, ptr %i.bo, align 8, !tbaa !712
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !477
  %i.bt = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.bu = fcmp ogt double %i.bs, %i.bt
  br i1 %i.bu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store double %i.bt, ptr %i.br, align 8, !tbaa !712
  %.pre9.i.i = load double, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bv = phi double [ %.pre9.i.i, %bb.x ], [ %i.bt, %bb.w ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !477
  %i.by = fcmp ogt double %i.bv, %i.bx
  br i1 %i.by, label %bb.z, label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit.i

bb.z:                                             ; preds = %bb.y
  store double %i.bv, ptr %i.bw, align 8, !tbaa !712
  br label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit.i

_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit.i: ; preds = %bb.z, %bb.y, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49
  store <2 x double> %i.bg, ptr %i.at, align 8, !tbaa !712
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !477
  %i.cb = extractelement <2 x double> %i.bg, i64 0 ; 3 uses
  %i.cc = fcmp ogt double %i.ca, %i.cb
  br i1 %i.cc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit.i
  store double %i.cb, ptr %i.bz, align 8, !tbaa !712
  %.pre.i9.i = load double, ptr %i.at, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit.i
  %i.cd = phi double [ %.pre.i9.i, %bb.aa ], [ %i.cb, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !477
  %i.cg = fcmp ogt double %i.cd, %i.cf
  br i1 %i.cg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store double %i.cd, ptr %i.ce, align 8, !tbaa !712
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !477
  %i.cj = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.ck = fcmp ogt double %i.ci, %i.cj
  br i1 %i.ck, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store double %i.cj, ptr %i.ch, align 8, !tbaa !712
  %.pre9.i8.i = load double, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cl = phi double [ %.pre9.i8.i, %bb.ae ], [ %i.cj, %bb.ad ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !477
  %i.co = fcmp ogt double %i.cl, %i.cn
  br i1 %i.co, label %bb.ag, label %_ZN25cff2_path_procs_extents_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tE.exit

bb.ag:                                            ; preds = %bb.af
  store double %i.cl, ptr %i.cm, align 8, !tbaa !712
  br label %_ZN25cff2_path_procs_extents_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tE.exit

_ZN25cff2_path_procs_extents_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tE.exit: ; preds = %bb.ag, %bb.af, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE10rlinecurveERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1152 ; 10 uses
  %i.d = icmp ult i32 %i.c, 8
  br i1 %i.d, label %bb.ah, label %.lr.ph, !prof !267

.lr.ph:                                           ; preds = %bb.a
  %i.e = add i32 %i.c, -6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %5 = zext i32 %i.e to i64
  %6 = zext i32 %i.c to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN25cff2_path_procs_extents_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tE.exit
  %indvars.iv58 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next59, %_ZN25cff2_path_procs_extents_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tE.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %_ZN25cff2_path_procs_extents_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tE.exit ]
  %i.l = load <2 x double>, ptr %i.f, align 8, !tbaa !712
  %.not.i.i = icmp samesign ult i64 %indvars.iv58, %6
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !268

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv58
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.m, %bb.d ]
  %7 = or disjoint i64 %indvars.iv58, 1           ; 2 uses
  %.not.i.i29 = icmp samesign ult i64 %7, %6
  br i1 %.not.i.i29, label %bb.f, label %bb.e, !prof !268

bb.e:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit31

bb.f:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %7
  %.pre = load double, ptr %i.n, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit31

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit31: ; preds = %bb.e, %bb.f
  %i.o = phi double [ 0.000000e+00, %bb.e ], [ %.pre, %bb.f ]
  %i.p = load double, ptr %.0.i.i, align 8, !tbaa !477
  %i.q = insertelement <2 x double> poison, double %i.p, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.o, i64 1
  %i.s = fadd <2 x double> %i.l, %i.r             ; 2 uses
  %i.t = load i8, ptr %1, align 8, !tbaa !476, !range !380, !noundef !293
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit31
  store i8 1, ptr %1, align 8, !tbaa !476
  %i.v = load double, ptr %i.h, align 8, !tbaa !477
  %i.w = load double, ptr %i.f, align 8           ; 3 uses
  %i.x = fcmp ogt double %i.v, %i.w
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %i.w, ptr %i.h, align 8, !tbaa !712
  %.pre.i.i = load double, ptr %i.f, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = phi double [ %.pre.i.i, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  %i.z = load double, ptr %i.i, align 8, !tbaa !477
  %i.aa = fcmp ogt double %i.y, %i.z
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.y, ptr %i.i, align 8, !tbaa !712
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = load double, ptr %i.j, align 8, !tbaa !477
  %i.ac = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.ad = fcmp ogt double %i.ab, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.ac, ptr %i.j, align 8, !tbaa !712
  %.pre9.i.i = load double, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ae = phi double [ %.pre9.i.i, %bb.l ], [ %i.ac, %bb.k ] ; 2 uses
  %i.af = load double, ptr %i.k, align 8, !tbaa !477
  %i.ag = fcmp ogt double %i.ae, %i.af
  br i1 %i.ag, label %bb.n, label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit.i

bb.n:                                             ; preds = %bb.m
  store double %i.ae, ptr %i.k, align 8, !tbaa !712
  br label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit.i

_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit.i: ; preds = %bb.n, %bb.m, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit31
  store <2 x double> %i.s, ptr %i.f, align 8, !tbaa !712
  %i.ah = load double, ptr %i.h, align 8, !tbaa !477
  %i.ai = extractelement <2 x double> %i.s, i64 0 ; 3 uses
  %i.aj = fcmp ogt double %i.ah, %i.ai
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit.i
  store double %i.ai, ptr %i.h, align 8, !tbaa !712
  %.pre.i9.i = load double, ptr %i.f, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit.i
  %i.ak = phi double [ %.pre.i9.i, %bb.o ], [ %i.ai, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit.i ] ; 2 uses
  %i.al = load double, ptr %i.i, align 8, !tbaa !477
  %i.am = fcmp ogt double %i.ak, %i.al
  br i1 %i.am, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %i.ak, ptr %i.i, align 8, !tbaa !712
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.an = load double, ptr %i.j, align 8, !tbaa !477
  %i.ao = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.ap = fcmp ogt double %i.an, %i.ao
  br i1 %i.ap, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double %i.ao, ptr %i.j, align 8, !tbaa !712
  %.pre9.i8.i = load double, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aq = phi double [ %.pre9.i8.i, %bb.s ], [ %i.ao, %bb.r ] ; 2 uses
  %i.ar = load double, ptr %i.k, align 8, !tbaa !477
  %i.as = fcmp ogt double %i.aq, %i.ar
  br i1 %i.as, label %bb.u, label %_ZN25cff2_path_procs_extents_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tE.exit

bb.u:                                             ; preds = %bb.t
  store double %i.aq, ptr %i.k, align 8, !tbaa !712
  br label %_ZN25cff2_path_procs_extents_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tE.exit

_ZN25cff2_path_procs_extents_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tE.exit: ; preds = %bb.t, %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %5
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5843

._crit_edge:                                      ; preds = %_ZN25cff2_path_procs_extents_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tE.exit
  %8 = and i32 %i.c, -2                           ; 5 uses
  %9 = add i32 %8, -4                             ; 2 uses
  %10 = add i32 %8, -6                            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !1616
  %.not.i.i32 = icmp ult i32 %10, %i.c
  br i1 %.not.i.i32, label %bb.w, label %bb.v, !prof !268

bb.v:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit34

bb.w:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = zext i32 %10 to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit34

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit34: ; preds = %bb.v, %bb.w
  %.0.i.i33 = phi ptr [ @_hb_CrapPool, %bb.v ], [ %i.aw, %bb.w ]
  %i.ax = or disjoint i32 %10, 1                  ; 2 uses
  %.not.i.i35 = icmp ult i32 %i.ax, %i.c
  br i1 %.not.i.i35, label %bb.y, label %bb.x, !prof !268

bb.x:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit34
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit37

bb.y:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit34
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %.pre58 = load double, ptr %i.ba, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit37

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit37: ; preds = %bb.x, %bb.y
  %i.bb = phi double [ 0.000000e+00, %bb.x ], [ %.pre58, %bb.y ]
  %i.bc = load double, ptr %.0.i.i33, align 8, !tbaa !477
  %i.bd = load <2 x double>, ptr %2, align 16, !tbaa !477
  %i.be = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bb, i64 1
  %i.bg = fadd <2 x double> %i.bd, %i.bf
  store <2 x double> %i.bg, ptr %2, align 16, !tbaa !477
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1616
  %.not.i.i38 = icmp ult i32 %9, %i.c
  br i1 %.not.i.i38, label %bb.aa, label %bb.z, !prof !268

bb.z:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit37
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40

bb.aa:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit37
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = zext i32 %9 to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40: ; preds = %bb.z, %bb.aa
  %.0.i.i39 = phi ptr [ @_hb_CrapPool, %bb.z ], [ %i.bj, %bb.aa ]
  %i.bk = add i32 %8, -3                          ; 2 uses
  %.not.i.i41 = icmp ult i32 %i.bk, %i.c
  br i1 %.not.i.i41, label %bb.ac, label %bb.ab, !prof !268

bb.ab:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43

bb.ac:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = zext i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  %.pre59 = load double, ptr %i.bn, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43: ; preds = %bb.ab, %bb.ac
  %i.bo = phi double [ 0.000000e+00, %bb.ab ], [ %.pre59, %bb.ac ]
  %i.bp = load double, ptr %.0.i.i39, align 8, !tbaa !477
  %i.bq = load <2 x double>, ptr %3, align 16, !tbaa !477
  %i.br = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bo, i64 1
  %i.bt = fadd <2 x double> %i.bq, %i.bs
  store <2 x double> %i.bt, ptr %3, align 16, !tbaa !477
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1616
  %i.bu = add i32 %8, -2                          ; 2 uses
  %.not.i.i44 = icmp ult i32 %i.bu, %i.c
  br i1 %.not.i.i44, label %bb.ae, label %bb.ad, !prof !268

bb.ad:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46

bb.ae:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46: ; preds = %bb.ad, %bb.ae
  %.0.i.i45 = phi ptr [ @_hb_CrapPool, %bb.ad ], [ %i.bx, %bb.ae ]
  %i.by = add i32 %8, -1                          ; 2 uses
  %.not.i.i47 = icmp ult i32 %i.by, %i.c
  br i1 %.not.i.i47, label %bb.ag, label %bb.af, !prof !268

bb.af:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49

bb.ag:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = zext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca
  %.pre60 = load double, ptr %i.cb, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.af, %bb.ag
  %i.cc = phi double [ 0.000000e+00, %bb.af ], [ %.pre60, %bb.ag ]
  %i.cd = load double, ptr %.0.i.i45, align 8, !tbaa !477
  %i.ce = load <2 x double>, ptr %4, align 16, !tbaa !477
  %i.cf = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.cc, i64 1
  %i.ch = fadd <2 x double> %i.ce, %i.cg
  store <2 x double> %i.ch, ptr %4, align 16, !tbaa !477
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE9vvcurvetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 8     ; 9 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !1616
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1152 ; 3 uses
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.f, align 8, !tbaa !477
  %i.g = load double, ptr %2, align 8, !tbaa !477
  %i.h = fadd double %i.g, %.pre
  store double %i.h, ptr %2, align 8, !tbaa !477
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit, %bb.a
  %.0 = phi i32 [ 1, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit ], [ 0, %bb.a ] ; 2 uses
  %i.i = or disjoint i32 %.0, 4                   ; 2 uses
  %.not1831 = icmp ugt i32 %i.i, %i.d
  br i1 %.not1831, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit30
  %i.m = phi i32 [ %i.d, %.lr.ph ], [ %i.am, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit30 ] ; 4 uses
  %i.n = phi i32 [ %i.i, %.lr.ph ], [ %i.al, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit30 ] ; 2 uses
  %.132 = phi i32 [ %.0, %.lr.ph ], [ %i.n, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit30 ] ; 5 uses
  %.not.i.i19 = icmp ult i32 %.132, %i.m
  br i1 %.not.i.i19, label %bb.e, label %bb.d, !prof !268

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit21

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %.132 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.o
  %.pre33 = load double, ptr %i.p, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit21

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit21: ; preds = %bb.d, %bb.e
  %i.q = phi double [ 0.000000e+00, %bb.d ], [ %.pre33, %bb.e ]
  %i.r = load double, ptr %i.k, align 8, !tbaa !477
  %i.s = fadd double %i.r, %i.q
  store double %i.s, ptr %i.k, align 8, !tbaa !477
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1616
  %i.t = add i32 %.132, 1                         ; 2 uses
  %.not.i.i22 = icmp ult i32 %i.t, %i.m
  br i1 %.not.i.i22, label %bb.g, label %bb.f, !prof !268

bb.f:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit21
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit24

bb.g:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit21
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.u
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit24

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit24: ; preds = %bb.f, %bb.g
  %.0.i.i23 = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.v, %bb.g ]
  %i.w = add i32 %.132, 2                         ; 2 uses
  %.not.i.i25 = icmp ult i32 %i.w, %i.m
  br i1 %.not.i.i25, label %bb.i, label %bb.h, !prof !268

bb.h:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit24
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit27

bb.i:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit24
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.x
  %.pre34 = load double, ptr %i.y, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit27

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit27: ; preds = %bb.h, %bb.i
  %i.z = phi double [ 0.000000e+00, %bb.h ], [ %.pre34, %bb.i ]
  %i.aa = load double, ptr %.0.i.i23, align 8, !tbaa !477
  %i.ab = load <2 x double>, ptr %3, align 16, !tbaa !477
  %i.ac = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.z, i64 1
  %i.ae = fadd <2 x double> %i.ab, %i.ad
  store <2 x double> %i.ae, ptr %3, align 16, !tbaa !477
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1616
  %i.af = add i32 %.132, 3                        ; 2 uses
  %.not.i.i28 = icmp ult i32 %i.af, %i.m
  br i1 %.not.i.i28, label %bb.k, label %bb.j, !prof !268

bb.j:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit27
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit30

bb.k:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit27
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ag
  %.pre35 = load double, ptr %i.ah, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit30

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit30: ; preds = %bb.j, %bb.k
  %i.ai = phi double [ 0.000000e+00, %bb.j ], [ %.pre35, %bb.k ]
  %i.aj = load double, ptr %i.l, align 8, !tbaa !477
  %i.ak = fadd double %i.aj, %i.ai
  store double %i.ak, ptr %i.l, align 8, !tbaa !477
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !1616
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  %i.al = add i32 %i.n, 4                         ; 2 uses
  %i.am = load i32, ptr %i.c, align 4, !tbaa !1152 ; 2 uses
  %.not18 = icmp ugt i32 %i.al, %i.am
  br i1 %.not18, label %._crit_edge, label %bb.c, !llvm.loop !5844

._crit_edge:                                      ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit30, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE9hhcurvetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 8     ; 9 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !1616
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1152 ; 3 uses
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.f, align 8, !tbaa !477
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !477
  %i.i = fadd double %i.h, %.pre
  store double %i.i, ptr %i.g, align 8, !tbaa !477
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit, %bb.a
  %.0 = phi i32 [ 1, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit ], [ 0, %bb.a ] ; 2 uses
  %i.j = or disjoint i32 %.0, 4                   ; 2 uses
  %.not1831 = icmp ugt i32 %i.j, %i.d
  br i1 %.not1831, label %._crit_edge, label %.lr.ph

end_hunk_1
