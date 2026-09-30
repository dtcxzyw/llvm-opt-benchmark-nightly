Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-ot-cff1-table?download=true
inline.NumInlined: 1268
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE10rcurvelineERS2_RS3_:bb.a
  %.not.i.i41 = icmp ult i32 %i.an, %i.m
  br i1 %.not.i.i41, label %bb.n, label %bb.m, !prof !58

bb.m:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.g, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43

bb.n:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ao
  %.pre56 = load double, ptr %i.ap, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43: ; preds = %bb.m, %bb.n
  %i.aq = phi double [ %i.k, %bb.m ], [ %.pre56, %bb.n ]
  %i.ar = load double, ptr %.0.i.i39, align 8, !tbaa !25
  %i.as = load <2 x double>, ptr %4, align 16, !tbaa !25
  %i.at = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.aq, i64 1
  %i.av = fadd <2 x double> %i.as, %i.au
  store <2 x double> %i.av, ptr %4, align 16, !tbaa !25
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %i.aw = add i32 %i.l, 6                         ; 2 uses
  %.not = icmp ugt i32 %i.aw, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !219

._crit_edge:                                      ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43
  %.pre57 = load i32, ptr %i.b, align 4, !tbaa !109 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 4 uses
  %i.ay = load <2 x double>, ptr %i.ax, align 8, !tbaa !113
  %.not.i.i44 = icmp ult i32 %i.l, %.pre57
  br i1 %.not.i.i44, label %bb.p, label %bb.o, !prof !58

bb.o:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.az = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.az, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46

bb.p:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = zext i32 %i.l to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46: ; preds = %bb.o, %bb.p
  %.0.i.i45 = phi ptr [ @_hb_CrapPool, %bb.o ], [ %i.bc, %bb.p ]
  %i.bd = or disjoint i32 %i.l, 1                 ; 2 uses
  %.not.i.i47 = icmp ult i32 %i.bd, %.pre57
  br i1 %.not.i.i47, label %bb.r, label %bb.q, !prof !58

bb.q:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.be = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.be, ptr @_hb_CrapPool, align 16
  %i.bf = bitcast i64 %i.be to double
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49

bb.r:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = zext i32 %i.bd to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  %.pre58 = load double, ptr %i.bi, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.q, %bb.r
  %i.bj = phi double [ %i.bf, %bb.q ], [ %.pre58, %bb.r ]
  %i.bk = load double, ptr %.0.i.i45, align 8, !tbaa !25
  %i.bl = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bj, i64 1
  %i.bn = fadd <2 x double> %i.ay, %i.bm          ; 2 uses
  %i.bo = load i8, ptr %1, align 8, !tbaa !105, !range !110, !noundef !111
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49
  store i8 1, ptr %1, align 8, !tbaa !105
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !25
  %i.bs = load double, ptr %i.ax, align 8         ; 3 uses
  %i.bt = fcmp ogt double %i.br, %i.bs
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double %i.bs, ptr %i.bq, align 8, !tbaa !113
  %.pre.i.i = load double, ptr %i.ax, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bu = phi double [ %.pre.i.i, %bb.t ], [ %i.bs, %bb.s ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !25
  %i.bx = fcmp ogt double %i.bu, %i.bw
  br i1 %i.bx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store double %i.bu, ptr %i.bv, align 8, !tbaa !113
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !25
  %i.ca = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.cb = fcmp ogt double %i.bz, %i.ca
  br i1 %i.cb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store double %i.ca, ptr %i.by, align 8, !tbaa !113
  %.pre9.i.i = load double, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cc = phi double [ %.pre9.i.i, %bb.x ], [ %i.ca, %bb.w ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !25
  %i.cf = fcmp ogt double %i.cc, %i.ce
  br i1 %i.cf, label %bb.z, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i

bb.z:                                             ; preds = %bb.y
  store double %i.cc, ptr %i.cd, align 8, !tbaa !113
  br label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i

_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i:      ; preds = %bb.z, %bb.y, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49
  store <2 x double> %i.bn, ptr %i.ax, align 8, !tbaa !113
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !25
  %i.ci = extractelement <2 x double> %i.bn, i64 0 ; 3 uses
  %i.cj = fcmp ogt double %i.ch, %i.ci
  br i1 %i.cj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i
  store double %i.ci, ptr %i.cg, align 8, !tbaa !113
  %.pre.i9.i = load double, ptr %i.ax, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i
  %i.ck = phi double [ %.pre.i9.i, %bb.aa ], [ %i.ci, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !25
  %i.cn = fcmp ogt double %i.ck, %i.cm
  br i1 %i.cn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store double %i.ck, ptr %i.cl, align 8, !tbaa !113
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !25
  %i.cq = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.cr = fcmp ogt double %i.cp, %i.cq
  br i1 %i.cr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store double %i.cq, ptr %i.co, align 8, !tbaa !113
  %.pre9.i8.i = load double, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cs = phi double [ %.pre9.i8.i, %bb.ae ], [ %i.cq, %bb.ad ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !25
  %i.cv = fcmp ogt double %i.cs, %i.cu
  br i1 %i.cv, label %bb.ag, label %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit

bb.ag:                                            ; preds = %bb.af
  store double %i.cs, ptr %i.ct, align 8, !tbaa !113
  br label %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit

_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit: ; preds = %bb.ag, %bb.af, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE10rlinecurveERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !109  ; 10 uses
  %i.d = icmp ult i32 %i.c, 8
  br i1 %i.d, label %bb.ah, label %.lr.ph, !prof !56

.lr.ph:                                           ; preds = %bb.a
  %i.e = add i32 %i.c, -6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 4 uses
  %i.g = load i64, ptr @_hb_NullPool, align 16    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.m = bitcast i64 %i.g to double
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit
  %5 = phi i32 [ 2, %.lr.ph ], [ %9, %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit ] ; 8 uses
  %.054 = phi i32 [ 0, %.lr.ph ], [ %5, %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit ] ; 3 uses
  %i.n = load <2 x double>, ptr %i.f, align 8, !tbaa !113
  %.not.i.i = icmp ult i32 %.054, %i.c
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.g, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

bb.d:                                             ; preds = %bb.b
  %6 = zext i32 %.054 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %6
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.o, %bb.d ]
  %7 = or disjoint i32 %.054, 1                   ; 2 uses
  %.not.i.i29 = icmp ult i32 %7, %i.c
  br i1 %.not.i.i29, label %bb.f, label %bb.e, !prof !58

bb.e:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.g, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31

bb.f:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit
  %8 = zext i32 %7 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %8
  %.pre = load double, ptr %i.p, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31: ; preds = %bb.e, %bb.f
  %i.q = phi double [ %i.m, %bb.e ], [ %.pre, %bb.f ]
  %i.r = load double, ptr %.0.i.i, align 8, !tbaa !25
  %i.s = insertelement <2 x double> poison, double %i.r, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.q, i64 1
  %i.u = fadd <2 x double> %i.n, %i.t             ; 2 uses
  %i.v = load i8, ptr %1, align 8, !tbaa !105, !range !110, !noundef !111
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31
  store i8 1, ptr %1, align 8, !tbaa !105
  %i.x = load double, ptr %i.i, align 8, !tbaa !25
  %i.y = load double, ptr %i.f, align 8           ; 3 uses
  %i.z = fcmp ogt double %i.x, %i.y
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %i.y, ptr %i.i, align 8, !tbaa !113
  %.pre.i.i = load double, ptr %i.f, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = phi double [ %.pre.i.i, %bb.h ], [ %i.y, %bb.g ] ; 2 uses
  %i.ab = load double, ptr %i.j, align 8, !tbaa !25
  %i.ac = fcmp ogt double %i.aa, %i.ab
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.aa, ptr %i.j, align 8, !tbaa !113
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = load double, ptr %i.k, align 8, !tbaa !25
  %i.ae = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.af = fcmp ogt double %i.ad, %i.ae
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.ae, ptr %i.k, align 8, !tbaa !113
  %.pre9.i.i = load double, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ag = phi double [ %.pre9.i.i, %bb.l ], [ %i.ae, %bb.k ] ; 2 uses
  %i.ah = load double, ptr %i.l, align 8, !tbaa !25
  %i.ai = fcmp ogt double %i.ag, %i.ah
  br i1 %i.ai, label %bb.n, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i

bb.n:                                             ; preds = %bb.m
  store double %i.ag, ptr %i.l, align 8, !tbaa !113
  br label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i

_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i:      ; preds = %bb.n, %bb.m, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31
  store <2 x double> %i.u, ptr %i.f, align 8, !tbaa !113
  %i.aj = load double, ptr %i.i, align 8, !tbaa !25
  %i.ak = extractelement <2 x double> %i.u, i64 0 ; 3 uses
  %i.al = fcmp ogt double %i.aj, %i.ak
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i
  store double %i.ak, ptr %i.i, align 8, !tbaa !113
  %.pre.i9.i = load double, ptr %i.f, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i
  %i.am = phi double [ %.pre.i9.i, %bb.o ], [ %i.ak, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i ] ; 2 uses
  %i.an = load double, ptr %i.j, align 8, !tbaa !25
  %i.ao = fcmp ogt double %i.am, %i.an
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %i.am, ptr %i.j, align 8, !tbaa !113
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ap = load double, ptr %i.k, align 8, !tbaa !25
  %i.aq = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.ar = fcmp ogt double %i.ap, %i.aq
  br i1 %i.ar, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double %i.aq, ptr %i.k, align 8, !tbaa !113
  %.pre9.i8.i = load double, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.as = phi double [ %.pre9.i8.i, %bb.s ], [ %i.aq, %bb.r ] ; 2 uses
  %i.at = load double, ptr %i.l, align 8, !tbaa !25
  %i.au = fcmp ogt double %i.as, %i.at
  br i1 %i.au, label %bb.u, label %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit

bb.u:                                             ; preds = %bb.t
  store double %i.as, ptr %i.l, align 8, !tbaa !113
  br label %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit

_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit: ; preds = %bb.t, %bb.u
  %9 = add i32 %5, 2                              ; 4 uses
  %.not = icmp ugt i32 %9, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !220

._crit_edge:                                      ; preds = %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !167
  %.not.i.i32 = icmp ult i32 %5, %i.c
  br i1 %.not.i.i32, label %bb.w, label %bb.v, !prof !58

bb.v:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.aw = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.aw, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34

bb.w:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = zext i32 %5 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34: ; preds = %bb.v, %bb.w
  %.0.i.i33 = phi ptr [ @_hb_CrapPool, %bb.v ], [ %i.az, %bb.w ]
  %i.ba = or disjoint i32 %5, 1                   ; 2 uses
  %.not.i.i35 = icmp ult i32 %i.ba, %i.c
  br i1 %.not.i.i35, label %bb.y, label %bb.x, !prof !58

bb.x:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.bb = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.bb, ptr @_hb_CrapPool, align 16
  %i.bc = bitcast i64 %i.bb to double
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37

bb.y:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = zext i32 %i.ba to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %.pre58 = load double, ptr %i.bf, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37: ; preds = %bb.x, %bb.y
  %i.bg = phi double [ %i.bc, %bb.x ], [ %.pre58, %bb.y ]
  %i.bh = load double, ptr %.0.i.i33, align 8, !tbaa !25
  %i.bi = load <2 x double>, ptr %2, align 16, !tbaa !25
  %i.bj = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bg, i64 1
  %i.bl = fadd <2 x double> %i.bi, %i.bk
  store <2 x double> %i.bl, ptr %2, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !167
  %.not.i.i38 = icmp ult i32 %9, %i.c
  br i1 %.not.i.i38, label %bb.aa, label %bb.z, !prof !58

bb.z:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.bm = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.bm, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40

bb.aa:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = zext i32 %9 to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bo
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40: ; preds = %bb.z, %bb.aa
  %.0.i.i39 = phi ptr [ @_hb_CrapPool, %bb.z ], [ %i.bp, %bb.aa ]
  %i.bq = add i32 %5, 3                           ; 2 uses
  %.not.i.i41 = icmp ult i32 %i.bq, %i.c
  br i1 %.not.i.i41, label %bb.ac, label %bb.ab, !prof !58

bb.ab:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.br = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.br, ptr @_hb_CrapPool, align 16
  %i.bs = bitcast i64 %i.br to double
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43

bb.ac:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = zext i32 %i.bq to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bu
  %.pre59 = load double, ptr %i.bv, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43: ; preds = %bb.ab, %bb.ac
  %i.bw = phi double [ %i.bs, %bb.ab ], [ %.pre59, %bb.ac ]
  %i.bx = load double, ptr %.0.i.i39, align 8, !tbaa !25
  %i.by = load <2 x double>, ptr %3, align 16, !tbaa !25
  %i.bz = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.bw, i64 1
  %i.cb = fadd <2 x double> %i.by, %i.ca
  store <2 x double> %i.cb, ptr %3, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !167
  %i.cc = add i32 %5, 4                           ; 2 uses
  %.not.i.i44 = icmp ult i32 %i.cc, %i.c
  br i1 %.not.i.i44, label %bb.ae, label %bb.ad, !prof !58

bb.ad:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.cd = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.cd, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46

bb.ae:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = zext i32 %i.cc to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46: ; preds = %bb.ad, %bb.ae
  %.0.i.i45 = phi ptr [ @_hb_CrapPool, %bb.ad ], [ %i.cg, %bb.ae ]
  %i.ch = add i32 %5, 5                           ; 2 uses
  %.not.i.i47 = icmp ult i32 %i.ch, %i.c
  br i1 %.not.i.i47, label %bb.ag, label %bb.af, !prof !58

bb.af:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.ci = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.ci, ptr @_hb_CrapPool, align 16
  %i.cj = bitcast i64 %i.ci to double
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49

bb.ag:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = zext i32 %i.ch to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cl
  %.pre60 = load double, ptr %i.cm, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.af, %bb.ag
  %i.cn = phi double [ %i.cj, %bb.af ], [ %.pre60, %bb.ag ]
  %i.co = load double, ptr %.0.i.i45, align 8, !tbaa !25
  %i.cp = load <2 x double>, ptr %4, align 16, !tbaa !25
  %i.cq = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cn, i64 1
  %i.cs = fadd <2 x double> %i.cp, %i.cr
  store <2 x double> %i.cs, ptr %4, align 16, !tbaa !25
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE9vvcurvetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 8     ; 9 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !167
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !109  ; 3 uses
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.f, align 8, !tbaa !25
  %i.g = load double, ptr %2, align 8, !tbaa !25
  %i.h = fadd double %i.g, %.pre
  store double %i.h, ptr %2, align 8, !tbaa !25
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit, %bb.a
  %.0 = phi i32 [ 1, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit ], [ 0, %bb.a ] ; 2 uses
  %i.i = or disjoint i32 %.0, 4                   ; 2 uses
  %.not1831 = icmp ugt i32 %i.i, %i.d
  br i1 %.not1831, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = load i64, ptr @_hb_NullPool, align 16    ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = bitcast i64 %i.j to double
  %i.o = bitcast i64 %i.j to double
  %i.p = bitcast i64 %i.j to double
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30
  %i.q = phi i32 [ %i.d, %.lr.ph ], [ %i.aq, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30 ] ; 4 uses
  %i.r = phi i32 [ %i.i, %.lr.ph ], [ %i.ap, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30 ] ; 2 uses
  %.132 = phi i32 [ %.0, %.lr.ph ], [ %i.r, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30 ] ; 5 uses
  %.not.i.i19 = icmp ult i32 %.132, %i.q
  br i1 %.not.i.i19, label %bb.e, label %bb.d, !prof !58

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.b, align 8, !tbaa !162
  store i64 %i.j, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %.132 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.s
  %.pre33 = load double, ptr %i.t, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21: ; preds = %bb.d, %bb.e
  %i.u = phi double [ %i.n, %bb.d ], [ %.pre33, %bb.e ]
  %i.v = load double, ptr %i.l, align 8, !tbaa !25
  %i.w = fadd double %i.v, %i.u
  store double %i.w, ptr %i.l, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !167
  %i.x = add i32 %.132, 1                         ; 2 uses
  %.not.i.i22 = icmp ult i32 %i.x, %i.q
  br i1 %.not.i.i22, label %bb.g, label %bb.f, !prof !58

bb.f:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21
  store i8 1, ptr %i.b, align 8, !tbaa !162
  store i64 %i.j, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24

bb.g:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.y
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24: ; preds = %bb.f, %bb.g
  %.0.i.i23 = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = add i32 %.132, 2                        ; 2 uses
  %.not.i.i25 = icmp ult i32 %i.aa, %i.q
  br i1 %.not.i.i25, label %bb.i, label %bb.h, !prof !58

bb.h:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24
  store i8 1, ptr %i.b, align 8, !tbaa !162
  store i64 %i.j, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27

bb.i:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ab
  %.pre34 = load double, ptr %i.ac, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27: ; preds = %bb.h, %bb.i
  %i.ad = phi double [ %i.o, %bb.h ], [ %.pre34, %bb.i ]
  %i.ae = load double, ptr %.0.i.i23, align 8, !tbaa !25
  %i.af = load <2 x double>, ptr %3, align 16, !tbaa !25
  %i.ag = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.ad, i64 1
  %i.ai = fadd <2 x double> %i.af, %i.ah
  store <2 x double> %i.ai, ptr %3, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !167
  %i.aj = add i32 %.132, 3                        ; 2 uses
  %.not.i.i28 = icmp ult i32 %i.aj, %i.q
  br i1 %.not.i.i28, label %bb.k, label %bb.j, !prof !58

bb.j:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27
  store i8 1, ptr %i.b, align 8, !tbaa !162
  store i64 %i.j, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30

bb.k:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ak
  %.pre35 = load double, ptr %i.al, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30: ; preds = %bb.j, %bb.k
  %i.am = phi double [ %i.p, %bb.j ], [ %.pre35, %bb.k ]
  %i.an = load double, ptr %i.m, align 8, !tbaa !25
  %i.ao = fadd double %i.an, %i.am
  store double %i.ao, ptr %i.m, align 8, !tbaa !25
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !167
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.ap = add i32 %i.r, 4                         ; 2 uses
  %i.aq = load i32, ptr %i.c, align 4, !tbaa !109 ; 2 uses
  %.not18 = icmp ugt i32 %i.ap, %i.aq
  br i1 %.not18, label %._crit_edge, label %bb.c, !llvm.loop !221

._crit_edge:                                      ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE9hhcurvetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 8     ; 9 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !167
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !109  ; 3 uses
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !25
  %i.i = fadd double %i.h, %.pre
  store double %i.i, ptr %i.g, align 8, !tbaa !25
  br label %bb.b

end_hunk_0
