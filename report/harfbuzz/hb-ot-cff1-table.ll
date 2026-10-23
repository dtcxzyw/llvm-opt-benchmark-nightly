Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-ot-cff1-table?download=true
inline.NumInlined: 1268
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE10rcurvelineERS2_RS3_:bb.a
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
  %i.m = zext i32 %i.e to i64
  %i.n = zext i32 %i.c to i64                     ; 2 uses
  %i.o = bitcast i64 %i.g to double
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit
  %indvars.iv58 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next59, %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit ]
  %i.p = load <2 x double>, ptr %i.f, align 8, !tbaa !113
  %.not.i.i = icmp samesign ult i64 %indvars.iv58, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.g, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv58
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.q, %bb.d ]
  %i.r = or disjoint i64 %indvars.iv58, 1         ; 2 uses
  %.not.i.i29 = icmp samesign ult i64 %i.r, %i.n
  br i1 %.not.i.i29, label %bb.f, label %bb.e, !prof !58

bb.e:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.g, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31

bb.f:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.r
  %.pre = load double, ptr %i.s, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31: ; preds = %bb.e, %bb.f
  %i.t = phi double [ %i.o, %bb.e ], [ %.pre, %bb.f ]
  %i.u = load double, ptr %.0.i.i, align 8, !tbaa !25
  %i.v = insertelement <2 x double> poison, double %i.u, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.t, i64 1
  %i.x = fadd <2 x double> %i.p, %i.w             ; 2 uses
  %i.y = load i8, ptr %1, align 8, !tbaa !105, !range !110, !noundef !111
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31
  store i8 1, ptr %1, align 8, !tbaa !105
  %i.aa = load double, ptr %i.i, align 8, !tbaa !25
  %i.ab = load double, ptr %i.f, align 8          ; 3 uses
  %i.ac = fcmp ogt double %i.aa, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %i.ab, ptr %i.i, align 8, !tbaa !113
  %.pre.i.i = load double, ptr %i.f, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi double [ %.pre.i.i, %bb.h ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ae = load double, ptr %i.j, align 8, !tbaa !25
  %i.af = fcmp ogt double %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.ad, ptr %i.j, align 8, !tbaa !113
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = load double, ptr %i.k, align 8, !tbaa !25
  %i.ah = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.ai = fcmp ogt double %i.ag, %i.ah
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.ah, ptr %i.k, align 8, !tbaa !113
  %.pre9.i.i = load double, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aj = phi double [ %.pre9.i.i, %bb.l ], [ %i.ah, %bb.k ] ; 2 uses
  %i.ak = load double, ptr %i.l, align 8, !tbaa !25
  %i.al = fcmp ogt double %i.aj, %i.ak
  br i1 %i.al, label %bb.n, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i

bb.n:                                             ; preds = %bb.m
  store double %i.aj, ptr %i.l, align 8, !tbaa !113
  br label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i

_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i:      ; preds = %bb.n, %bb.m, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31
  store <2 x double> %i.x, ptr %i.f, align 8, !tbaa !113
  %i.am = load double, ptr %i.i, align 8, !tbaa !25
  %i.an = extractelement <2 x double> %i.x, i64 0 ; 3 uses
  %i.ao = fcmp ogt double %i.am, %i.an
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i
  store double %i.an, ptr %i.i, align 8, !tbaa !113
  %.pre.i9.i = load double, ptr %i.f, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i
  %i.ap = phi double [ %.pre.i9.i, %bb.o ], [ %i.an, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i ] ; 2 uses
  %i.aq = load double, ptr %i.j, align 8, !tbaa !25
  %i.ar = fcmp ogt double %i.ap, %i.aq
  br i1 %i.ar, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %i.ap, ptr %i.j, align 8, !tbaa !113
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.as = load double, ptr %i.k, align 8, !tbaa !25
  %i.at = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.au = fcmp ogt double %i.as, %i.at
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double %i.at, ptr %i.k, align 8, !tbaa !113
  %.pre9.i8.i = load double, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.av = phi double [ %.pre9.i8.i, %bb.s ], [ %i.at, %bb.r ] ; 2 uses
  %i.aw = load double, ptr %i.l, align 8, !tbaa !25
  %i.ax = fcmp ogt double %i.av, %i.aw
  br i1 %i.ax, label %bb.u, label %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit

bb.u:                                             ; preds = %bb.t
  store double %i.av, ptr %i.l, align 8, !tbaa !113
  br label %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit

_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit: ; preds = %bb.t, %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.m
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !220

._crit_edge:                                      ; preds = %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit
  %i.ay = and i32 %i.c, -2                        ; 6 uses
  %i.az = add i32 %i.ay, -4                       ; 2 uses
  %i.ba = add i32 %i.ay, -6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !167
  %.not.i.i32 = icmp ult i32 %i.ba, %i.c
  br i1 %.not.i.i32, label %bb.w, label %bb.v, !prof !58

bb.v:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.bc = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.bc, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34

bb.w:                                             ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = zext i32 %i.ba to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34: ; preds = %bb.v, %bb.w
  %.0.i.i33 = phi ptr [ @_hb_CrapPool, %bb.v ], [ %i.bf, %bb.w ]
  %5 = add i32 %i.ay, -5                          ; 2 uses
  %.not.i.i35 = icmp ult i32 %5, %i.c
  br i1 %.not.i.i35, label %bb.y, label %bb.x, !prof !58

bb.x:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.bg = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.bg, ptr @_hb_CrapPool, align 16
  %i.bh = bitcast i64 %i.bg to double
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37

bb.y:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = zext i32 %5 to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  %.pre63 = load double, ptr %i.bk, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37: ; preds = %bb.x, %bb.y
  %i.bl = phi double [ %i.bh, %bb.x ], [ %.pre63, %bb.y ]
  %i.bm = load double, ptr %.0.i.i33, align 8, !tbaa !25
  %i.bn = load <2 x double>, ptr %2, align 16, !tbaa !25
  %i.bo = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bl, i64 1
  %i.bq = fadd <2 x double> %i.bn, %i.bp
  store <2 x double> %i.bq, ptr %2, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !167
  %.not.i.i38 = icmp ult i32 %i.az, %i.c
  br i1 %.not.i.i38, label %bb.aa, label %bb.z, !prof !58

bb.z:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.br = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.br, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40

bb.aa:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bt = zext i32 %i.az to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40: ; preds = %bb.z, %bb.aa
  %.0.i.i39 = phi ptr [ @_hb_CrapPool, %bb.z ], [ %i.bu, %bb.aa ]
  %i.bv = add i32 %i.ay, -3                       ; 2 uses
  %.not.i.i41 = icmp ult i32 %i.bv, %i.c
  br i1 %.not.i.i41, label %bb.ac, label %bb.ab, !prof !58

bb.ab:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.bw = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.bw, ptr @_hb_CrapPool, align 16
  %i.bx = bitcast i64 %i.bw to double
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43

bb.ac:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit40
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = zext i32 %i.bv to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  %.pre64 = load double, ptr %i.ca, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43: ; preds = %bb.ab, %bb.ac
  %i.cb = phi double [ %i.bx, %bb.ab ], [ %.pre64, %bb.ac ]
  %i.cc = load double, ptr %.0.i.i39, align 8, !tbaa !25
  %i.cd = load <2 x double>, ptr %3, align 16, !tbaa !25
  %i.ce = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.cb, i64 1
  %i.cg = fadd <2 x double> %i.cd, %i.cf
  store <2 x double> %i.cg, ptr %3, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !167
  %i.ch = add i32 %i.ay, -2                       ; 2 uses
  %.not.i.i44 = icmp ult i32 %i.ch, %i.c
  br i1 %.not.i.i44, label %bb.ae, label %bb.ad, !prof !58

bb.ad:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.ci = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.ci, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46

bb.ae:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = zext i32 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46: ; preds = %bb.ad, %bb.ae
  %.0.i.i45 = phi ptr [ @_hb_CrapPool, %bb.ad ], [ %i.cl, %bb.ae ]
  %i.cm = add i32 %i.ay, -1                       ; 2 uses
  %.not.i.i47 = icmp ult i32 %i.cm, %i.c
  br i1 %.not.i.i47, label %bb.ag, label %bb.af, !prof !58

bb.af:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.cn = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.cn, ptr @_hb_CrapPool, align 16
  %i.co = bitcast i64 %i.cn to double
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49

bb.ag:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cq = zext i32 %i.cm to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cq
  %.pre65 = load double, ptr %i.cr, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.af, %bb.ag
  %i.cs = phi double [ %i.co, %bb.af ], [ %.pre65, %bb.ag ]
  %i.ct = load double, ptr %.0.i.i45, align 8, !tbaa !25
  %i.cu = load <2 x double>, ptr %4, align 16, !tbaa !25
  %i.cv = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cs, i64 1
  %i.cx = fadd <2 x double> %i.cu, %i.cw
  store <2 x double> %i.cx, ptr %4, align 16, !tbaa !25
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

end_hunk_0
