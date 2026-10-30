Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 273
loop-unroll.NumUnrolled: 472
begin_hunk_0_@_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE10rcurvelineERS2_RS3_:bb.a
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ai
  %.pre70 = load double, ptr %i.aj, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43: ; preds = %bb.m, %bb.n
  %i.ak = phi double [ 0.000000e+00, %bb.m ], [ %.pre70, %bb.n ]
  %i.al = load double, ptr %.0.i.i39, align 8, !tbaa !477
  %i.am = fadd double %i.ac, %i.al                ; 5 uses
  %i.an = fadd double %i.ad, %i.ak                ; 5 uses
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !1159 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  %i.ap = insertelement <4 x double> poison, double %i.ac, i64 0
  %i.aq = insertelement <4 x double> %i.ap, double %i.ad, i64 1
  %i.ar = insertelement <4 x double> %i.aq, double %i.s, i64 2
  %i.as = insertelement <4 x double> %i.ar, double %i.t, i64 3 ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43
  %i.at = load <2 x double>, ptr %i.ao, align 8, !tbaa !477 ; 3 uses
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.av = fadd <4 x double> %i.as, %i.au
  %i.aw = extractelement <2 x double> %i.at, i64 0
  %i.ax = fadd double %i.am, %i.aw
  %i.ay = extractelement <2 x double> %i.at, i64 1
  %i.az = fadd double %i.an, %i.ay
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43
  %.sroa.6.0.i = phi double [ %i.an, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43 ], [ %i.az, %bb.o ]
  %.sroa.0.0.i = phi double [ %i.am, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43 ], [ %i.ax, %bb.o ]
  %i.ba = phi <4 x double> [ %i.as, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43 ], [ %i.av, %bb.o ]
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !1156 ; 5 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !1158
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.be = load <2 x float>, ptr %i.bd, align 8, !tbaa !304 ; 3 uses
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !338 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !339 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !358
  %.not.i.i.i51 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i51, label %bb.q, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i, !prof !267

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.bg, ptr noundef %i.bi, ptr noundef nonnull align 4 dereferenceable(48) %i.bj)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i:    ; preds = %bb.q, %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !725
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !365 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i52, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit, label %bb.r

bb.r:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !726
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i, %bb.r
  %i.br = phi ptr [ %i.bq, %bb.r ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i ]
  %i.bs = fptrunc double %.sroa.6.0.i to float
  %i.bt = extractelement <2 x float> %i.be, i64 1
  %i.bu = fmul float %i.bt, %i.bs                 ; 2 uses
  %i.bv = fptrunc double %.sroa.0.0.i to float
  %i.bw = extractelement <2 x float> %i.be, i64 0
  %i.bx = fmul float %i.bw, %i.bv                 ; 2 uses
  %i.by = fptrunc <4 x double> %i.ba to <4 x float>
  %i.bz = fmul <4 x float> %i.bf, %i.by           ; 4 uses
  %i.ca = extractelement <4 x float> %i.bz, i64 0
  %i.cb = extractelement <4 x float> %i.bz, i64 1
  %i.cc = extractelement <4 x float> %i.bz, i64 2
  %i.cd = extractelement <4 x float> %i.bz, i64 3
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(72) %i.bg, ptr noundef %i.bi, ptr noundef nonnull align 4 dereferenceable(48) %i.bj, float noundef %i.cc, float noundef %i.cd, float noundef %i.ca, float noundef %i.cb, float noundef %i.bx, float noundef %i.bu, ptr noundef %i.br) #59, !inline_history !149
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  store float %i.bx, ptr %i.ce, align 4, !tbaa !360
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store float %i.bu, ptr %i.cf, align 8, !tbaa !730
  store double %i.am, ptr %i.f, align 8, !tbaa !712
  store double %i.an, ptr %.sroa.764.0..sroa_idx, align 8, !tbaa !712
  %i.cg = add i32 %i.j, 6                         ; 2 uses
  %.not = icmp ugt i32 %i.cg, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3505

._crit_edge:                                      ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit
  %.pre73 = load i32, ptr %i.b, align 4, !tbaa !1152 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4448
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %.not.i.i44 = icmp ult i32 %i.j, %.pre73
  br i1 %.not.i.i44, label %bb.t, label %bb.s, !prof !268

bb.s:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46

bb.t:                                             ; preds = %._crit_edge
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = zext i32 %i.j to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cj
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46: ; preds = %bb.s, %bb.t
  %.0.i.i45 = phi ptr [ @_hb_CrapPool, %bb.s ], [ %i.ck, %bb.t ]
  %i.cl = or disjoint i32 %i.j, 1                 ; 2 uses
  %.not.i.i47 = icmp ult i32 %i.cl, %.pre73
  br i1 %.not.i.i47, label %bb.v, label %bb.u, !prof !268

bb.u:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49

bb.v:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = zext i32 %i.cl to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn
  %.pre74 = load double, ptr %i.co, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.u, %bb.v
  %i.cp = phi double [ 0.000000e+00, %bb.u ], [ %.pre74, %bb.v ]
  %i.cq = load double, ptr %.0.i.i45, align 8, !tbaa !477
  %i.cr = fadd double %i.am, %i.cq                ; 3 uses
  %i.cs = fadd double %i.an, %i.cp                ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1159 ; 3 uses
  %.not.i.i50 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i50, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !477
  %i.cw = fadd double %i.cr, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !477
  %i.cz = fadd double %i.cs, %i.cy
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49
  %.sroa.6.0.i.i = phi double [ %i.cs, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49 ], [ %i.cz, %bb.w ]
  %.sroa.0.0.i.i = phi double [ %i.cr, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49 ], [ %i.cw, %bb.w ]
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1156 ; 5 uses
  %i.dc = load ptr, ptr %1, align 8, !tbaa !1158  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.de = load float, ptr %i.dd, align 8, !tbaa !615
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 84
  %i.dg = load float, ptr %i.df, align 4, !tbaa !618
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !338 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !339 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !358
  %.not.i.i.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i.i.i, label %bb.y, label %_ZN17hb_draw_session_t7line_toEff.exit.i.i, !prof !267

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.dh, ptr noundef %i.dj, ptr noundef nonnull align 4 dereferenceable(48) %i.dk)
  br label %_ZN17hb_draw_session_t7line_toEff.exit.i.i

_ZN17hb_draw_session_t7line_toEff.exit.i.i:       ; preds = %bb.y, %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !364
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !365 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i, label %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit, label %bb.z

bb.z:                                             ; preds = %_ZN17hb_draw_session_t7line_toEff.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !367
  br label %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit

_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN17hb_draw_session_t7line_toEff.exit.i.i, %bb.z
  %i.ds = phi ptr [ %i.dr, %bb.z ], [ null, %_ZN17hb_draw_session_t7line_toEff.exit.i.i ]
  %i.dt = fptrunc double %.sroa.6.0.i.i to float
  %i.du = fmul float %i.dg, %i.dt                 ; 2 uses
  %i.dv = fptrunc double %.sroa.0.0.i.i to float
  %i.dw = fmul float %i.de, %i.dv                 ; 2 uses
  tail call void %i.dn(ptr noundef nonnull align 8 dereferenceable(72) %i.dh, ptr noundef %i.dj, ptr noundef nonnull align 4 dereferenceable(48) %i.dk, float noundef %i.dw, float noundef %i.du, ptr noundef %i.ds) #59, !inline_history !148
  %i.dx = getelementptr inbounds nuw i8, ptr %i.db, i64 28
  store float %i.dw, ptr %i.dx, align 4, !tbaa !360
  %i.dy = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  store float %i.du, ptr %i.dy, align 8, !tbaa !730
  store double %i.cr, ptr %i.ch, align 8, !tbaa !712
  store double %i.cs, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !712
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE10rlinecurveERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1152 ; 2 uses
  %i.d = icmp ult i32 %i.c, 8
  br i1 %i.d, label %bb.aa, label %.lr.ph, !prof !267

.lr.ph:                                           ; preds = %bb.a
  %i.e = add i32 %i.c, -6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = zext i32 %i.e to i64                     ; 2 uses
  %i.k = load <2 x double>, ptr %i.f, align 8, !tbaa !712
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit
  %indvars.iv70 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next71, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit ]
  %i.l = phi <2 x double> [ %i.k, %.lr.ph ], [ %i.v, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit ]
  %i.m = load i32, ptr %i.b, align 4, !tbaa !1152
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %.not.i.i = icmp samesign ult i64 %indvars.iv70, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !268

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv70
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.o, %bb.d ]
  %i.p = or disjoint i64 %indvars.iv70, 1         ; 2 uses
  %.not.i.i29 = icmp samesign ult i64 %i.p, %i.n
  br i1 %.not.i.i29, label %bb.f, label %bb.e, !prof !268

bb.e:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31

bb.f:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.p
  %.pre = load double, ptr %i.q, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31: ; preds = %bb.e, %bb.f
  %i.r = phi double [ 0.000000e+00, %bb.e ], [ %.pre, %bb.f ]
  %i.s = load double, ptr %.0.i.i, align 8, !tbaa !477
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.r, i64 1
  %i.v = fadd <2 x double> %i.l, %i.u             ; 6 uses
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !1159 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.w, null
  br i1 %.not.i.i32, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31
  %i.x = load <2 x double>, ptr %i.w, align 8, !tbaa !477
  %i.y = fadd <2 x double> %i.v, %i.x
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31
  %i.z = phi <2 x double> [ %i.v, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31 ], [ %i.y, %bb.g ]
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !1156 ; 4 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !1158
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ad = load <2 x float>, ptr %i.ac, align 8, !tbaa !304
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !338 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !339 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !358
  %.not.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZN17hb_draw_session_t7line_toEff.exit.i.i, !prof !267

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef %i.ag, ptr noundef nonnull align 4 dereferenceable(48) %i.ah)
  br label %_ZN17hb_draw_session_t7line_toEff.exit.i.i

_ZN17hb_draw_session_t7line_toEff.exit.i.i:       ; preds = %bb.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !364
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !365 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN17hb_draw_session_t7line_toEff.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !367
  br label %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit

_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN17hb_draw_session_t7line_toEff.exit.i.i, %bb.j
  %i.ap = phi ptr [ %i.ao, %bb.j ], [ null, %_ZN17hb_draw_session_t7line_toEff.exit.i.i ]
  %i.aq = fptrunc <2 x double> %i.z to <2 x float>
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.as = fmul <2 x float> %i.ad, %i.aq           ; 3 uses
  %i.at = extractelement <2 x float> %i.as, i64 0
  %i.au = extractelement <2 x float> %i.as, i64 1
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef %i.ag, ptr noundef nonnull align 4 dereferenceable(48) %i.ah, float noundef %i.at, float noundef %i.au, ptr noundef %i.ap) #59, !inline_history !148
  store <2 x float> %i.as, ptr %i.ar, align 4, !tbaa !304
  store <2 x double> %i.v, ptr %i.f, align 8, !tbaa !712
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.j
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3506

._crit_edge:                                      ; preds = %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit
  %2 = and i64 %i.j, 4294967294                   ; 3 uses
  %3 = trunc nuw i64 %2 to i32                    ; 5 uses
  %4 = trunc nuw i64 %2 to i32
  %i.av = add i32 %4, 2                           ; 2 uses
  %.pre79 = load i32, ptr %i.b, align 4, !tbaa !1152 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4448
  %.sroa.759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %.not.i.i33 = icmp ugt i32 %.pre79, %3
  br i1 %.not.i.i33, label %bb.l, label %bb.k, !prof !268

bb.k:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit35

bb.l:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %2
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit35

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit35: ; preds = %bb.k, %bb.l
  %.0.i.i34 = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.ay, %bb.l ]
  %i.az = or disjoint i32 %3, 1                   ; 2 uses
  %.not.i.i36 = icmp ult i32 %i.az, %.pre79
  br i1 %.not.i.i36, label %bb.n, label %bb.m, !prof !268

bb.m:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit35
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38

bb.n:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit35
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = zext i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  %.pre80 = load double, ptr %i.bc, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38: ; preds = %bb.m, %bb.n
  %i.bd = phi double [ 0.000000e+00, %bb.m ], [ %.pre80, %bb.n ]
  %i.be = load double, ptr %.0.i.i34, align 8, !tbaa !477
  %i.bf = extractelement <2 x double> %i.v, i64 0
  %i.bg = fadd double %i.bf, %i.be                ; 2 uses
  %i.bh = extractelement <2 x double> %i.v, i64 1
  %i.bi = fadd double %i.bh, %i.bd                ; 2 uses
  %.not.i.i39 = icmp ult i32 %i.av, %.pre79
  br i1 %.not.i.i39, label %bb.p, label %bb.o, !prof !268

bb.o:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit41

bb.p:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = zext i32 %i.av to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit41

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit41: ; preds = %bb.o, %bb.p
  %.0.i.i40 = phi ptr [ @_hb_CrapPool, %bb.o ], [ %i.bl, %bb.p ]
  %i.bm = add nuw i32 %3, 3                       ; 2 uses
  %.not.i.i42 = icmp ult i32 %i.bm, %.pre79
  br i1 %.not.i.i42, label %bb.r, label %bb.q, !prof !268

bb.q:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit41
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit44

bb.r:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit41
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = zext i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bo
  %.pre81 = load double, ptr %i.bp, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit44

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit44: ; preds = %bb.q, %bb.r
  %i.bq = phi double [ 0.000000e+00, %bb.q ], [ %.pre81, %bb.r ]
  %i.br = load double, ptr %.0.i.i40, align 8, !tbaa !477
  %i.bs = fadd double %i.bg, %i.br                ; 2 uses
  %i.bt = fadd double %i.bi, %i.bq                ; 2 uses
  %i.bu = add nuw i32 %3, 4                       ; 2 uses
  %.not.i.i45 = icmp ult i32 %i.bu, %.pre79
  br i1 %.not.i.i45, label %bb.t, label %bb.s, !prof !268

bb.s:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit44
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit47

bb.t:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit44
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit47

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit47: ; preds = %bb.s, %bb.t
  %.0.i.i46 = phi ptr [ @_hb_CrapPool, %bb.s ], [ %i.bx, %bb.t ]
  %i.by = add nuw i32 %3, 5                       ; 2 uses
  %.not.i.i48 = icmp ult i32 %i.by, %.pre79
  br i1 %.not.i.i48, label %bb.v, label %bb.u, !prof !268

bb.u:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit47
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50

bb.v:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit47
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = zext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca
  %.pre82 = load double, ptr %i.cb, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50: ; preds = %bb.u, %bb.v
  %i.cc = phi double [ 0.000000e+00, %bb.u ], [ %.pre82, %bb.v ]
  %i.cd = load double, ptr %.0.i.i46, align 8, !tbaa !477
  %i.ce = fadd double %i.bs, %i.cd                ; 3 uses
  %i.cf = fadd double %i.bt, %i.cc                ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1159 ; 2 uses
  %.not.i = icmp eq ptr %i.ch, null
  %i.ci = insertelement <4 x double> poison, double %i.bs, i64 0
  %i.cj = insertelement <4 x double> %i.ci, double %i.bt, i64 1
  %i.ck = insertelement <4 x double> %i.cj, double %i.bg, i64 2
  %i.cl = insertelement <4 x double> %i.ck, double %i.bi, i64 3 ; 2 uses
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50
  %i.cm = load <2 x double>, ptr %i.ch, align 8, !tbaa !477 ; 3 uses
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.co = fadd <4 x double> %i.cl, %i.cn
  %i.cp = extractelement <2 x double> %i.cm, i64 0
  %i.cq = fadd double %i.ce, %i.cp
  %i.cr = extractelement <2 x double> %i.cm, i64 1
  %i.cs = fadd double %i.cf, %i.cr
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50
  %.sroa.6.0.i = phi double [ %i.cf, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50 ], [ %i.cs, %bb.w ]
  %.sroa.0.0.i = phi double [ %i.ce, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50 ], [ %i.cq, %bb.w ]
  %i.ct = phi <4 x double> [ %i.cl, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50 ], [ %i.co, %bb.w ]
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1156 ; 5 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !1158
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  %i.cy = load <2 x float>, ptr %i.cx, align 8, !tbaa !304 ; 3 uses
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !338 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !339 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !358
  %.not.i.i.i51 = icmp eq i32 %i.de, 0
  br i1 %.not.i.i.i51, label %bb.y, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i, !prof !267

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.da, ptr noundef %i.dc, ptr noundef nonnull align 4 dereferenceable(48) %i.dd)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i:    ; preds = %bb.y, %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !725
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !365 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.di, null
  br i1 %.not.i.i52, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit, label %bb.z

bb.z:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !726
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i, %bb.z
  %i.dl = phi ptr [ %i.dk, %bb.z ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i ]
  %i.dm = fptrunc double %.sroa.6.0.i to float
  %i.dn = extractelement <2 x float> %i.cy, i64 1
  %i.do = fmul float %i.dn, %i.dm                 ; 2 uses
  %i.dp = fptrunc double %.sroa.0.0.i to float
  %i.dq = extractelement <2 x float> %i.cy, i64 0
  %i.dr = fmul float %i.dq, %i.dp                 ; 2 uses
  %i.ds = fptrunc <4 x double> %i.ct to <4 x float>
  %i.dt = fmul <4 x float> %i.cz, %i.ds           ; 4 uses
  %i.du = extractelement <4 x float> %i.dt, i64 0
  %i.dv = extractelement <4 x float> %i.dt, i64 1
  %i.dw = extractelement <4 x float> %i.dt, i64 2
  %i.dx = extractelement <4 x float> %i.dt, i64 3
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(72) %i.da, ptr noundef %i.dc, ptr noundef nonnull align 4 dereferenceable(48) %i.dd, float noundef %i.dw, float noundef %i.dx, float noundef %i.du, float noundef %i.dv, float noundef %i.dr, float noundef %i.do, ptr noundef %i.dl) #59, !inline_history !149
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  store float %i.dr, ptr %i.dy, align 4, !tbaa !360
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store float %i.do, ptr %i.dz, align 8, !tbaa !730
  store double %i.ce, ptr %i.aw, align 8, !tbaa !712
  store double %i.cf, ptr %.sroa.759.0..sroa_idx, align 8, !tbaa !712
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE9vvcurvetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1152 ; 4 uses
  %.0 = and i32 %i.d, 1                           ; 2 uses
  %i.e = or disjoint i32 %.0, 4                   ; 2 uses
  %.not1840 = icmp ugt i32 %i.e, %i.d
  br i1 %.not1840, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = trunc i32 %i.d to i1
  %.sroa.036.0.copyload = load double, ptr %i.a, align 8, !tbaa !712 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.f, align 8
  %i.g = fadd double %.sroa.036.0.copyload, %.pre
  %.sroa.036.0 = select i1 %.not, double %i.g, double %.sroa.036.0.copyload
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !712
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit
  %i.k = phi i32 [ %i.d, %.lr.ph ], [ %i.bu, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit ] ; 4 uses
  %i.l = phi i32 [ %i.e, %.lr.ph ], [ %i.bt, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit ] ; 2 uses
  %.143 = phi i32 [ %.0, %.lr.ph ], [ %i.l, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit ] ; 5 uses
  %.sroa.036.142 = phi double [ %.sroa.036.0, %.lr.ph ], [ %i.y, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit ] ; 2 uses
  %.sroa.8.041 = phi double [ %.sroa.8.0.copyload, %.lr.ph ], [ %i.ae, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit ]
  %.not.i.i19 = icmp ult i32 %.143, %i.k
  br i1 %.not.i.i19, label %bb.d, label %bb.c, !prof !268

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21

bb.d:                                             ; preds = %bb.b
  %i.m = zext i32 %.143 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.m
  %.pre44 = load double, ptr %i.n, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21: ; preds = %bb.c, %bb.d
  %i.o = phi double [ 0.000000e+00, %bb.c ], [ %.pre44, %bb.d ]
  %i.p = fadd double %.sroa.8.041, %i.o           ; 2 uses
  %i.q = add i32 %.143, 1                         ; 2 uses
  %.not.i.i22 = icmp ult i32 %i.q, %i.k
  br i1 %.not.i.i22, label %bb.f, label %bb.e, !prof !268

bb.e:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24

bb.f:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.r
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24: ; preds = %bb.e, %bb.f
  %.0.i.i23 = phi ptr [ @_hb_CrapPool, %bb.e ], [ %i.s, %bb.f ]
  %i.t = add i32 %.143, 2                         ; 2 uses
  %.not.i.i25 = icmp ult i32 %i.t, %i.k
  br i1 %.not.i.i25, label %bb.h, label %bb.g, !prof !268

bb.g:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27

bb.h:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.u
  %.pre45 = load double, ptr %i.v, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27: ; preds = %bb.g, %bb.h
  %i.w = phi double [ 0.000000e+00, %bb.g ], [ %.pre45, %bb.h ]
  %i.x = load double, ptr %.0.i.i23, align 8, !tbaa !477
  %i.y = fadd double %.sroa.036.142, %i.x         ; 3 uses
  %i.z = fadd double %i.p, %i.w                   ; 3 uses
  %i.aa = add i32 %.143, 3                        ; 2 uses
  %.not.i.i28 = icmp ult i32 %i.aa, %i.k
  br i1 %.not.i.i28, label %bb.j, label %bb.i, !prof !268

bb.i:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30

bb.j:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ab
  %.pre46 = load double, ptr %i.ac, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30
end_hunk_0
begin_hunk_1_@_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE10rcurvelineERS4_RS5_:bb.a
  %.pre76 = load double, ptr %i.y, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit37

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit37: ; preds = %bb.i, %bb.j
  %i.z = phi double [ 0.000000e+00, %bb.i ], [ %.pre76, %bb.j ]
  %i.aa = load double, ptr %.0.i.i33, align 8, !tbaa !477
  %i.ab = fadd double %i.r, %i.aa                 ; 2 uses
  %i.ac = fadd double %i.s, %i.z                  ; 2 uses
  %i.ad = add i32 %.073, 4                        ; 2 uses
  %.not.i.i38 = icmp ult i32 %i.ad, %i.j
  br i1 %.not.i.i38, label %bb.l, label %bb.k, !prof !268

bb.k:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit37
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40

bb.l:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit37
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ae
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40: ; preds = %bb.k, %bb.l
  %.0.i.i39 = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = add i32 %.073, 5                        ; 2 uses
  %.not.i.i41 = icmp ult i32 %i.ag, %i.j
  br i1 %.not.i.i41, label %bb.n, label %bb.m, !prof !268

bb.m:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43

bb.n:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ah
  %.pre77 = load double, ptr %i.ai, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43: ; preds = %bb.m, %bb.n
  %i.aj = phi double [ 0.000000e+00, %bb.m ], [ %.pre77, %bb.n ]
  %i.ak = load double, ptr %.0.i.i39, align 8, !tbaa !477
  %i.al = fadd double %i.ab, %i.ak                ; 4 uses
  %i.am = fadd double %i.ac, %i.aj                ; 4 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !459   ; 5 uses
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !460
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load <2 x float>, ptr %i.ap, align 8, !tbaa !304 ; 3 uses
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !338 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !339 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !358
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i, !prof !267

bb.o:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef %i.au, ptr noundef nonnull align 4 dereferenceable(48) %i.av)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i:  ; preds = %bb.o, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !725
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !365 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !726
  br label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit

_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i, %bb.p
  %i.bd = phi ptr [ %i.bc, %bb.p ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i ]
  %i.be = fptrunc double %i.am to float
  %i.bf = extractelement <2 x float> %i.aq, i64 1
  %i.bg = fmul float %i.bf, %i.be                 ; 2 uses
  %i.bh = fptrunc double %i.al to float
  %i.bi = extractelement <2 x float> %i.aq, i64 0
  %i.bj = fmul float %i.bi, %i.bh                 ; 2 uses
  %i.bk = insertelement <4 x double> poison, double %i.ab, i64 0
  %i.bl = insertelement <4 x double> %i.bk, double %i.ac, i64 1
  %i.bm = insertelement <4 x double> %i.bl, double %i.r, i64 2
  %i.bn = insertelement <4 x double> %i.bm, double %i.s, i64 3
  %i.bo = fptrunc <4 x double> %i.bn to <4 x float>
  %i.bp = fmul <4 x float> %i.ar, %i.bo           ; 4 uses
  %i.bq = extractelement <4 x float> %i.bp, i64 0
  %i.br = extractelement <4 x float> %i.bp, i64 1
  %i.bs = extractelement <4 x float> %i.bp, i64 2
  %i.bt = extractelement <4 x float> %i.bp, i64 3
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef %i.au, ptr noundef nonnull align 4 dereferenceable(48) %i.av, float noundef %i.bs, float noundef %i.bt, float noundef %i.bq, float noundef %i.br, float noundef %i.bj, float noundef %i.bg, ptr noundef %i.bd) #59, !inline_history !212
  %i.bu = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  store float %i.bj, ptr %i.bu, align 4, !tbaa !360
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store float %i.bg, ptr %i.bv, align 8, !tbaa !730
  store double %i.al, ptr %i.f, align 8, !tbaa !712
  store double %i.am, ptr %.sroa.770.0..sroa_idx, align 8, !tbaa !712
  %i.bw = add i32 %i.i, 6                         ; 2 uses
  %.not = icmp ugt i32 %i.bw, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5870

._crit_edge:                                      ; preds = %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit
  %.pre80 = load i32, ptr %i.b, align 4, !tbaa !1152 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4448
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %.not.i.i44 = icmp ult i32 %i.i, %.pre80
  br i1 %.not.i.i44, label %bb.r, label %bb.q, !prof !268

bb.q:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46

bb.r:                                             ; preds = %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = zext i32 %i.i to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46: ; preds = %bb.q, %bb.r
  %.0.i.i45 = phi ptr [ @_hb_CrapPool, %bb.q ], [ %i.ca, %bb.r ]
  %i.cb = or disjoint i32 %i.i, 1                 ; 2 uses
  %.not.i.i47 = icmp ult i32 %i.cb, %.pre80
  br i1 %.not.i.i47, label %bb.t, label %bb.s, !prof !268

bb.s:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49

bb.t:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cd = zext i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %.pre81 = load double, ptr %i.ce, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.s, %bb.t
  %i.cf = phi double [ 0.000000e+00, %bb.s ], [ %.pre81, %bb.t ]
  %i.cg = load double, ptr %.0.i.i45, align 8, !tbaa !477
  %i.ch = fadd double %i.al, %i.cg                ; 2 uses
  %i.ci = fadd double %i.am, %i.cf                ; 2 uses
  %i.cj = load ptr, ptr %1, align 8, !tbaa !459   ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !460 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !615
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 84
  %i.cp = load float, ptr %i.co, align 4, !tbaa !618
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !338 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !339 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !358
  %.not.i.i.i.i50 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i.i50, label %bb.u, label %_ZN17hb_draw_session_t7line_toEff.exit.i.i, !prof !267

bb.u:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.cq, ptr noundef %i.cs, ptr noundef nonnull align 4 dereferenceable(48) %i.ct)
  br label %_ZN17hb_draw_session_t7line_toEff.exit.i.i

_ZN17hb_draw_session_t7line_toEff.exit.i.i:       ; preds = %bb.u, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !364
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !365 ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i51, label %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN17hb_draw_session_t7line_toEff.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !367
  br label %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit

_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN17hb_draw_session_t7line_toEff.exit.i.i, %bb.v
  %i.db = phi ptr [ %i.da, %bb.v ], [ null, %_ZN17hb_draw_session_t7line_toEff.exit.i.i ]
  %i.dc = fptrunc double %i.ci to float
  %i.dd = fmul float %i.cp, %i.dc                 ; 2 uses
  %i.de = fptrunc double %i.ch to float
  %i.df = fmul float %i.cn, %i.de                 ; 2 uses
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(72) %i.cq, ptr noundef %i.cs, ptr noundef nonnull align 4 dereferenceable(48) %i.ct, float noundef %i.df, float noundef %i.dd, ptr noundef %i.db) #59, !inline_history !211
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cj, i64 28
  store float %i.df, ptr %i.dg, align 4, !tbaa !360
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store float %i.dd, ptr %i.dh, align 8, !tbaa !730
  store double %i.ch, ptr %i.bx, align 8, !tbaa !712
  store double %i.ci, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !712
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE10rlinecurveERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1152 ; 2 uses
  %i.d = icmp ult i32 %i.c, 8
  br i1 %i.d, label %bb.w, label %.lr.ph, !prof !267

.lr.ph:                                           ; preds = %bb.a
  %i.e = add i32 %i.c, -6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  %i.j = load <2 x double>, ptr %i.f, align 8, !tbaa !712
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit
  %indvars.iv77 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next78, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit ]
  %i.k = phi <2 x double> [ %i.j, %.lr.ph ], [ %i.u, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit ]
  %i.l = load i32, ptr %i.b, align 4, !tbaa !1152
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %.not.i.i = icmp samesign ult i64 %indvars.iv77, %i.m
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !268

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv77
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.n, %bb.d ]
  %i.o = or disjoint i64 %indvars.iv77, 1         ; 2 uses
  %.not.i.i29 = icmp samesign ult i64 %i.o, %i.m
  br i1 %.not.i.i29, label %bb.f, label %bb.e, !prof !268

bb.e:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit31

bb.f:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  %.pre = load double, ptr %i.p, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit31

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit31: ; preds = %bb.e, %bb.f
  %i.q = phi double [ 0.000000e+00, %bb.e ], [ %.pre, %bb.f ]
  %i.r = load double, ptr %.0.i.i, align 8, !tbaa !477
  %i.s = insertelement <2 x double> poison, double %i.r, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.q, i64 1
  %i.u = fadd <2 x double> %i.k, %i.t             ; 5 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !459    ; 4 uses
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !460
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load <2 x float>, ptr %i.x, align 8, !tbaa !304
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !338  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !339 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !358
  %.not.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZN17hb_draw_session_t7line_toEff.exit.i.i, !prof !267

bb.g:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit31
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef %i.ab, ptr noundef nonnull align 4 dereferenceable(48) %i.ac)
  br label %_ZN17hb_draw_session_t7line_toEff.exit.i.i

_ZN17hb_draw_session_t7line_toEff.exit.i.i:       ; preds = %bb.g, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !364
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !365 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN17hb_draw_session_t7line_toEff.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !367
  br label %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit

_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN17hb_draw_session_t7line_toEff.exit.i.i, %bb.h
  %i.ak = phi ptr [ %i.aj, %bb.h ], [ null, %_ZN17hb_draw_session_t7line_toEff.exit.i.i ]
  %i.al = fptrunc <2 x double> %i.u to <2 x float>
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.an = fmul <2 x float> %i.y, %i.al            ; 3 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0
  %i.ap = extractelement <2 x float> %i.an, i64 1
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef %i.ab, ptr noundef nonnull align 4 dereferenceable(48) %i.ac, float noundef %i.ao, float noundef %i.ap, ptr noundef %i.ak) #59, !inline_history !211
  store <2 x float> %i.an, ptr %i.am, align 4, !tbaa !304
  store <2 x double> %i.u, ptr %i.f, align 8, !tbaa !712
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.i
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5871

._crit_edge:                                      ; preds = %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit
  %2 = and i64 %i.i, 4294967294                   ; 3 uses
  %3 = trunc nuw i64 %2 to i32                    ; 5 uses
  %4 = trunc nuw i64 %2 to i32
  %i.aq = add i32 %4, 2                           ; 2 uses
  %.pre86 = load i32, ptr %i.b, align 4, !tbaa !1152 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4448
  %.sroa.763.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %.not.i.i32 = icmp ugt i32 %.pre86, %3
  br i1 %.not.i.i32, label %bb.j, label %bb.i, !prof !268

bb.i:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit34

bb.j:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %2
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit34

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit34: ; preds = %bb.i, %bb.j
  %.0.i.i33 = phi ptr [ @_hb_CrapPool, %bb.i ], [ %i.at, %bb.j ]
  %i.au = or disjoint i32 %3, 1                   ; 2 uses
  %.not.i.i35 = icmp ult i32 %i.au, %.pre86
  br i1 %.not.i.i35, label %bb.l, label %bb.k, !prof !268

bb.k:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit34
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit37

bb.l:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit34
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %.pre87 = load double, ptr %i.ax, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit37

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit37: ; preds = %bb.k, %bb.l
  %i.ay = phi double [ 0.000000e+00, %bb.k ], [ %.pre87, %bb.l ]
  %i.az = load double, ptr %.0.i.i33, align 8, !tbaa !477
  %i.ba = extractelement <2 x double> %i.u, i64 0
  %i.bb = fadd double %i.ba, %i.az                ; 2 uses
  %i.bc = extractelement <2 x double> %i.u, i64 1
  %i.bd = fadd double %i.bc, %i.ay                ; 2 uses
  %.not.i.i38 = icmp ult i32 %i.aq, %.pre86
  br i1 %.not.i.i38, label %bb.n, label %bb.m, !prof !268

bb.m:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit37
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40

bb.n:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit37
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = zext i32 %i.aq to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40: ; preds = %bb.m, %bb.n
  %.0.i.i39 = phi ptr [ @_hb_CrapPool, %bb.m ], [ %i.bg, %bb.n ]
  %i.bh = add nuw i32 %3, 3                       ; 2 uses
  %.not.i.i41 = icmp ult i32 %i.bh, %.pre86
  br i1 %.not.i.i41, label %bb.p, label %bb.o, !prof !268

bb.o:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43

bb.p:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit40
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = zext i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  %.pre88 = load double, ptr %i.bk, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43: ; preds = %bb.o, %bb.p
  %i.bl = phi double [ 0.000000e+00, %bb.o ], [ %.pre88, %bb.p ]
  %i.bm = load double, ptr %.0.i.i39, align 8, !tbaa !477
  %i.bn = fadd double %i.bb, %i.bm                ; 2 uses
  %i.bo = fadd double %i.bd, %i.bl                ; 2 uses
  %i.bp = add nuw i32 %3, 4                       ; 2 uses
  %.not.i.i44 = icmp ult i32 %i.bp, %.pre86
  br i1 %.not.i.i44, label %bb.r, label %bb.q, !prof !268

bb.q:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46

bb.r:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit43
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = zext i32 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46: ; preds = %bb.q, %bb.r
  %.0.i.i45 = phi ptr [ @_hb_CrapPool, %bb.q ], [ %i.bs, %bb.r ]
  %i.bt = add nuw i32 %3, 5                       ; 2 uses
  %.not.i.i47 = icmp ult i32 %i.bt, %.pre86
  br i1 %.not.i.i47, label %bb.t, label %bb.s, !prof !268

bb.s:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49

bb.t:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit46
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = zext i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bv
  %.pre89 = load double, ptr %i.bw, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.s, %bb.t
  %i.bx = phi double [ 0.000000e+00, %bb.s ], [ %.pre89, %bb.t ]
  %i.by = load double, ptr %.0.i.i45, align 8, !tbaa !477
  %i.bz = fadd double %i.bn, %i.by                ; 2 uses
  %i.ca = fadd double %i.bo, %i.bx                ; 2 uses
  %i.cb = load ptr, ptr %1, align 8, !tbaa !459   ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !460
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  %i.cf = load <2 x float>, ptr %i.ce, align 8, !tbaa !304 ; 3 uses
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !338 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !339 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !358
  %.not.i.i.i.i50 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i.i50, label %bb.u, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i, !prof !267

bb.u:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.ch, ptr noundef %i.cj, ptr noundef nonnull align 4 dereferenceable(48) %i.ck)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i:  ; preds = %bb.u, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !725
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !365 ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i51, label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !726
  br label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit

_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i, %bb.v
  %i.cs = phi ptr [ %i.cr, %bb.v ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i ]
  %i.ct = fptrunc double %i.ca to float
  %i.cu = extractelement <2 x float> %i.cf, i64 1
  %i.cv = fmul float %i.cu, %i.ct                 ; 2 uses
  %i.cw = fptrunc double %i.bz to float
  %i.cx = extractelement <2 x float> %i.cf, i64 0
  %i.cy = fmul float %i.cx, %i.cw                 ; 2 uses
  %i.cz = insertelement <4 x double> poison, double %i.bn, i64 0
  %i.da = insertelement <4 x double> %i.cz, double %i.bo, i64 1
  %i.db = insertelement <4 x double> %i.da, double %i.bb, i64 2
  %i.dc = insertelement <4 x double> %i.db, double %i.bd, i64 3
  %i.dd = fptrunc <4 x double> %i.dc to <4 x float>
  %i.de = fmul <4 x float> %i.cg, %i.dd           ; 4 uses
  %i.df = extractelement <4 x float> %i.de, i64 0
  %i.dg = extractelement <4 x float> %i.de, i64 1
  %i.dh = extractelement <4 x float> %i.de, i64 2
  %i.di = extractelement <4 x float> %i.de, i64 3
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(72) %i.ch, ptr noundef %i.cj, ptr noundef nonnull align 4 dereferenceable(48) %i.ck, float noundef %i.dh, float noundef %i.di, float noundef %i.df, float noundef %i.dg, float noundef %i.cy, float noundef %i.cv, ptr noundef %i.cs) #59, !inline_history !212
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  store float %i.cy, ptr %i.dj, align 4, !tbaa !360
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store float %i.cv, ptr %i.dk, align 8, !tbaa !730
  store double %i.bz, ptr %i.ar, align 8, !tbaa !712
  store double %i.ca, ptr %.sroa.763.0..sroa_idx, align 8, !tbaa !712
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE9vvcurvetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1152 ; 4 uses
  %.0 = and i32 %i.d, 1                           ; 2 uses
  %i.e = or disjoint i32 %.0, 4                   ; 2 uses
  %.not1844 = icmp ugt i32 %i.e, %i.d
  br i1 %.not1844, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = trunc i32 %i.d to i1
  %.sroa.038.0.copyload = load double, ptr %i.a, align 8, !tbaa !712 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.f, align 8
  %i.g = fadd double %.sroa.038.0.copyload, %.pre
  %.sroa.038.0 = select i1 %.not, double %i.g, double %.sroa.038.0.copyload
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !712
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit
  %i.j = phi i32 [ %i.d, %.lr.ph ], [ %i.bl, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit ] ; 4 uses
  %i.k = phi i32 [ %i.e, %.lr.ph ], [ %i.bk, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit ] ; 2 uses
  %.147 = phi i32 [ %.0, %.lr.ph ], [ %i.k, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit ] ; 5 uses
  %.sroa.038.146 = phi double [ %.sroa.038.0, %.lr.ph ], [ %i.x, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit ] ; 2 uses
  %.sroa.8.045 = phi double [ %.sroa.8.0.copyload, %.lr.ph ], [ %i.ad, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit ]
  %.not.i.i19 = icmp ult i32 %.147, %i.j
  br i1 %.not.i.i19, label %bb.d, label %bb.c, !prof !268

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit21

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %.147 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %.pre48 = load double, ptr %i.m, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit21

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit21: ; preds = %bb.c, %bb.d
  %i.n = phi double [ 0.000000e+00, %bb.c ], [ %.pre48, %bb.d ]
  %i.o = fadd double %.sroa.8.045, %i.n           ; 2 uses
  %i.p = add i32 %.147, 1                         ; 2 uses
  %.not.i.i22 = icmp ult i32 %i.p, %i.j
  br i1 %.not.i.i22, label %bb.f, label %bb.e, !prof !268

bb.e:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit21
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit24

bb.f:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit21
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.q
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit24

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit24: ; preds = %bb.e, %bb.f
  %.0.i.i23 = phi ptr [ @_hb_CrapPool, %bb.e ], [ %i.r, %bb.f ]
  %i.s = add i32 %.147, 2                         ; 2 uses
  %.not.i.i25 = icmp ult i32 %i.s, %i.j
  br i1 %.not.i.i25, label %bb.h, label %bb.g, !prof !268

bb.g:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit24
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit27

bb.h:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit24
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.t
  %.pre49 = load double, ptr %i.u, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit27

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit27: ; preds = %bb.g, %bb.h
  %i.v = phi double [ 0.000000e+00, %bb.g ], [ %.pre49, %bb.h ]
  %i.w = load double, ptr %.0.i.i23, align 8, !tbaa !477
  %i.x = fadd double %.sroa.038.146, %i.w         ; 3 uses
  %i.y = fadd double %i.o, %i.v                   ; 2 uses
  %i.z = add i32 %.147, 3                         ; 2 uses
  %.not.i.i28 = icmp ult i32 %i.z, %i.j
  br i1 %.not.i.i28, label %bb.j, label %bb.i, !prof !268

bb.i:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit27
  store i8 1, ptr %i.b, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit30

bb.j:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit27
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aa
  %.pre50 = load double, ptr %i.ab, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit30

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit30: ; preds = %bb.i, %bb.j
  %i.ac = phi double [ 0.000000e+00, %bb.i ], [ %.pre50, %bb.j ]
  %i.ad = fadd double %i.y, %i.ac                 ; 3 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !459   ; 4 uses
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !460
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load <2 x float>, ptr %i.ag, align 8, !tbaa !304 ; 3 uses
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !338 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !339 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !358
  %.not.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i, !prof !267

bb.k:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit30
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr noundef %i.ak, ptr noundef nonnull align 4 dereferenceable(48) %i.al)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i

end_hunk_1
