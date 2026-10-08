Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-ot-cff1-table?download=true
inline.NumInlined: 1268
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE10rcurvelineERS2_RS3_:bb.a
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.az = fadd <4 x double> %i.aw, %i.ay
  %i.ba = extractelement <2 x double> %i.ax, i64 0
  %i.bb = fadd double %i.aq, %i.ba
  %i.bc = extractelement <2 x double> %i.ax, i64 1
  %i.bd = fadd double %i.ar, %i.bc
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43
  %.sroa.6.0.i = phi double [ %i.ar, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43 ], [ %i.bd, %bb.o ]
  %.sroa.0.0.i = phi double [ %i.aq, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43 ], [ %i.bb, %bb.o ]
  %i.be = phi <4 x double> [ %i.aw, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43 ], [ %i.az, %bb.o ]
  %i.bf = load ptr, ptr %i.j, align 8, !tbaa !123 ; 5 uses
  %i.bg = load ptr, ptr %1, align 8, !tbaa !125
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bi = load <2 x float>, ptr %i.bh, align 8, !tbaa !27 ; 3 uses
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !130 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !131 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !132
  %.not.i.i51 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i51, label %bb.q, label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i, !prof !56

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.bk, ptr noundef %i.bm, ptr noundef nonnull align 4 dereferenceable(48) %i.bn)
  br label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i

_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i: ; preds = %bb.q, %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !168
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !146 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.bs, null
  br i1 %.not.i4.i, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit, label %bb.r

bb.r:                                             ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !169
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit: ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i, %bb.r
  %i.bv = phi ptr [ %i.bu, %bb.r ], [ null, %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i ]
  %i.bw = fptrunc double %.sroa.6.0.i to float
  %i.bx = extractelement <2 x float> %i.bi, i64 1
  %i.by = fmul float %i.bx, %i.bw                 ; 2 uses
  %i.bz = fptrunc double %.sroa.0.0.i to float
  %i.ca = extractelement <2 x float> %i.bi, i64 0
  %i.cb = fmul float %i.ca, %i.bz                 ; 2 uses
  %i.cc = fptrunc <4 x double> %i.be to <4 x float>
  %i.cd = fmul <4 x float> %i.bj, %i.cc           ; 4 uses
  %i.ce = extractelement <4 x float> %i.cd, i64 0
  %i.cf = extractelement <4 x float> %i.cd, i64 1
  %i.cg = extractelement <4 x float> %i.cd, i64 2
  %i.ch = extractelement <4 x float> %i.cd, i64 3
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(72) %i.bk, ptr noundef %i.bm, ptr noundef nonnull align 4 dereferenceable(48) %i.bn, float noundef %i.cg, float noundef %i.ch, float noundef %i.ce, float noundef %i.cf, float noundef %i.cb, float noundef %i.by, ptr noundef %i.bv) #5, !inline_history !7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  store float %i.cb, ptr %i.ci, align 4, !tbaa !134
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store float %i.by, ptr %i.cj, align 8, !tbaa !136
  store double %i.aq, ptr %i.f, align 8, !tbaa !113
  store double %i.ar, ptr %.sroa.763.0..sroa_idx, align 8, !tbaa !113
  %i.ck = add i32 %i.n, 6                         ; 2 uses
  %.not = icmp ugt i32 %i.ck, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !232

._crit_edge:                                      ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit
  %.pre72 = load i32, ptr %i.b, align 4, !tbaa !109 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4448
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %.not.i.i44 = icmp ult i32 %i.n, %.pre72
  br i1 %.not.i.i44, label %bb.t, label %bb.s, !prof !58

bb.s:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.cm = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.cm, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46

bb.t:                                             ; preds = %._crit_edge
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = zext i32 %i.n to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.co
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46: ; preds = %bb.s, %bb.t
  %.0.i.i45 = phi ptr [ @_hb_CrapPool, %bb.s ], [ %i.cp, %bb.t ]
  %i.cq = or disjoint i32 %i.n, 1                 ; 2 uses
  %.not.i.i47 = icmp ult i32 %i.cq, %.pre72
  br i1 %.not.i.i47, label %bb.v, label %bb.u, !prof !58

bb.u:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.cr = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.cr, ptr @_hb_CrapPool, align 16
  %i.cs = bitcast i64 %i.cr to double
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49

bb.v:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit46
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cu = zext i32 %i.cq to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cu
  %.pre73 = load double, ptr %i.cv, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.u, %bb.v
  %i.cw = phi double [ %i.cs, %bb.u ], [ %.pre73, %bb.v ]
  %i.cx = load double, ptr %.0.i.i45, align 8, !tbaa !25
  %i.cy = fadd double %i.aq, %i.cx                ; 3 uses
  %i.cz = fadd double %i.ar, %i.cw                ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !126 ; 3 uses
  %.not.i.i50 = icmp eq ptr %i.db, null
  br i1 %.not.i.i50, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49
  %i.dc = load double, ptr %i.db, align 8, !tbaa !25
  %i.dd = fadd double %i.cy, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.df = load double, ptr %i.de, align 8, !tbaa !25
  %i.dg = fadd double %i.cz, %i.df
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49
  %.sroa.6.0.i.i = phi double [ %i.cz, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49 ], [ %i.dg, %bb.w ]
  %.sroa.0.0.i.i = phi double [ %i.cy, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49 ], [ %i.dd, %bb.w ]
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !123 ; 5 uses
  %i.dj = load ptr, ptr %1, align 8, !tbaa !125   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 80
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !185
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 84
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !186
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !130 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !131 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !132
  %.not.i.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i.i, label %bb.y, label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i, !prof !56

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.do, ptr noundef %i.dq, ptr noundef nonnull align 4 dereferenceable(48) %i.dr)
  br label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i

_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i: ; preds = %bb.y, %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !145
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !146 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i2.i.i, label %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit, label %bb.z

bb.z:                                             ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !148
  br label %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit

_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i, %bb.z
  %i.dz = phi ptr [ %i.dy, %bb.z ], [ null, %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i ]
  %i.ea = fptrunc double %.sroa.6.0.i.i to float
  %i.eb = fmul float %i.dn, %i.ea                 ; 2 uses
  %i.ec = fptrunc double %.sroa.0.0.i.i to float
  %i.ed = fmul float %i.dl, %i.ec                 ; 2 uses
  tail call void %i.du(ptr noundef nonnull align 8 dereferenceable(72) %i.do, ptr noundef %i.dq, ptr noundef nonnull align 4 dereferenceable(48) %i.dr, float noundef %i.ed, float noundef %i.eb, ptr noundef %i.dz) #5, !inline_history !6
  %i.ee = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  store float %i.ed, ptr %i.ee, align 4, !tbaa !134
  %i.ef = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  store float %i.eb, ptr %i.ef, align 8, !tbaa !136
  store double %i.cy, ptr %i.cl, align 8, !tbaa !113
  store double %i.cz, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !113
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE10rlinecurveERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !109  ; 2 uses
  %i.d = icmp ult i32 %i.c, 8
  br i1 %i.d, label %bb.aa, label %.lr.ph, !prof !56

.lr.ph:                                           ; preds = %bb.a
  %i.e = add i32 %i.c, -6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %i.g = load i64, ptr @_hb_NullPool, align 16    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = zext i32 %i.e to i64                     ; 2 uses
  %i.l = load <2 x double>, ptr %i.f, align 8, !tbaa !113
  %i.m = bitcast i64 %i.g to double
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit
  %indvars.iv69 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next70, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit ] ; 5 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit ]
  %i.n = phi <2 x double> [ %i.l, %.lr.ph ], [ %i.x, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit ]
  %i.o = load i32, ptr %i.b, align 4, !tbaa !109
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.not.i.i = icmp samesign ult i64 %indvars.iv69, %i.p
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.g, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv69
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.q, %bb.d ]
  %i.r = or disjoint i64 %indvars.iv69, 1
  %.not.i.i29 = icmp samesign ult i64 %i.r, %i.p
  br i1 %.not.i.i29, label %bb.f, label %bb.e, !prof !58

bb.e:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.g, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31

bb.f:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv69
  %2 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.pre = load double, ptr %2, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31: ; preds = %bb.e, %bb.f
  %i.t = phi double [ %i.m, %bb.e ], [ %.pre, %bb.f ]
  %i.u = load double, ptr %.0.i.i, align 8, !tbaa !25
  %i.v = insertelement <2 x double> poison, double %i.u, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.t, i64 1
  %i.x = fadd <2 x double> %i.n, %i.w             ; 6 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !126  ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.y, null
  br i1 %.not.i.i32, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !25
  %i.aa = fadd <2 x double> %i.x, %i.z
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31
  %i.ab = phi <2 x double> [ %i.x, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit31 ], [ %i.aa, %bb.g ]
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !123 ; 4 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !125
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.af = load <2 x float>, ptr %i.ae, align 8, !tbaa !27
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !130 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !131 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !132
  %.not.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i, !prof !56

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef %i.ai, ptr noundef nonnull align 4 dereferenceable(48) %i.aj)
  br label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i

_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i: ; preds = %bb.i, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !145
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !146 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i2.i.i, label %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !148
  br label %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit

_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i, %bb.j
  %i.ar = phi ptr [ %i.aq, %bb.j ], [ null, %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i ]
  %i.as = fptrunc <2 x double> %i.ab to <2 x float>
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.au = fmul <2 x float> %i.af, %i.as           ; 3 uses
  %i.av = extractelement <2 x float> %i.au, i64 0
  %i.aw = extractelement <2 x float> %i.au, i64 1
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef %i.ai, ptr noundef nonnull align 4 dereferenceable(48) %i.aj, float noundef %i.av, float noundef %i.aw, ptr noundef %i.ar) #5, !inline_history !6
  store <2 x float> %i.au, ptr %i.at, align 4, !tbaa !27
  store <2 x double> %i.x, ptr %i.f, align 8, !tbaa !113
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.k
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !233

._crit_edge:                                      ; preds = %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit
  %i.ax = and i64 %i.k, 4294967294                ; 3 uses
  %i.ay = trunc nuw i64 %i.ax to i32              ; 5 uses
  %i.az = trunc nuw i64 %i.ax to i32
  %i.ba = add i32 %i.az, 2                        ; 2 uses
  %.pre78 = load i32, ptr %i.b, align 4, !tbaa !109 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4448
  %.sroa.758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %.not.i.i33 = icmp ugt i32 %.pre78, %i.ay
  br i1 %.not.i.i33, label %bb.l, label %bb.k, !prof !58

bb.k:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.bc = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.bc, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit35

bb.l:                                             ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ax
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit35

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit35: ; preds = %bb.k, %bb.l
  %.0.i.i34 = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.be, %bb.l ]
  %i.bf = or disjoint i32 %i.ay, 1                ; 2 uses
  %.not.i.i36 = icmp ult i32 %i.bf, %.pre78
  br i1 %.not.i.i36, label %bb.n, label %bb.m, !prof !58

bb.m:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit35
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.bg = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.bg, ptr @_hb_CrapPool, align 16
  %i.bh = bitcast i64 %i.bg to double
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38

bb.n:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit35
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = zext i32 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  %.pre79 = load double, ptr %i.bk, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38: ; preds = %bb.m, %bb.n
  %i.bl = phi double [ %i.bh, %bb.m ], [ %.pre79, %bb.n ]
  %i.bm = load double, ptr %.0.i.i34, align 8, !tbaa !25
  %i.bn = extractelement <2 x double> %i.x, i64 0
  %i.bo = fadd double %i.bn, %i.bm                ; 2 uses
  %i.bp = extractelement <2 x double> %i.x, i64 1
  %i.bq = fadd double %i.bp, %i.bl                ; 2 uses
  %.not.i.i39 = icmp ult i32 %i.ba, %.pre78
  br i1 %.not.i.i39, label %bb.p, label %bb.o, !prof !58

bb.o:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.br = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.br, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit41

bb.p:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bt = zext i32 %i.ba to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit41

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit41: ; preds = %bb.o, %bb.p
  %.0.i.i40 = phi ptr [ @_hb_CrapPool, %bb.o ], [ %i.bu, %bb.p ]
  %i.bv = add i32 %i.ay, 3                        ; 2 uses
  %.not.i.i42 = icmp ult i32 %i.bv, %.pre78
  br i1 %.not.i.i42, label %bb.r, label %bb.q, !prof !58

bb.q:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit41
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.bw = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.bw, ptr @_hb_CrapPool, align 16
  %i.bx = bitcast i64 %i.bw to double
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit44

bb.r:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit41
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = zext i32 %i.bv to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  %.pre80 = load double, ptr %i.ca, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit44

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit44: ; preds = %bb.q, %bb.r
  %i.cb = phi double [ %i.bx, %bb.q ], [ %.pre80, %bb.r ]
  %i.cc = load double, ptr %.0.i.i40, align 8, !tbaa !25
  %i.cd = fadd double %i.bo, %i.cc                ; 2 uses
  %i.ce = fadd double %i.bq, %i.cb                ; 2 uses
  %i.cf = add i32 %i.ay, 4                        ; 2 uses
  %.not.i.i45 = icmp ult i32 %i.cf, %.pre78
  br i1 %.not.i.i45, label %bb.t, label %bb.s, !prof !58

bb.s:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit44
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.cg = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.cg, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit47

bb.t:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit44
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = zext i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit47

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit47: ; preds = %bb.s, %bb.t
  %.0.i.i46 = phi ptr [ @_hb_CrapPool, %bb.s ], [ %i.cj, %bb.t ]
  %i.ck = add i32 %i.ay, 5                        ; 2 uses
  %.not.i.i48 = icmp ult i32 %i.ck, %.pre78
  br i1 %.not.i.i48, label %bb.v, label %bb.u, !prof !58

bb.u:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit47
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.cl = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.cl, ptr @_hb_CrapPool, align 16
  %i.cm = bitcast i64 %i.cl to double
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50

bb.v:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit47
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = zext i32 %i.ck to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.co
  %.pre81 = load double, ptr %i.cp, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50: ; preds = %bb.u, %bb.v
  %i.cq = phi double [ %i.cm, %bb.u ], [ %.pre81, %bb.v ]
  %i.cr = load double, ptr %.0.i.i46, align 8, !tbaa !25
  %i.cs = fadd double %i.cd, %i.cr                ; 3 uses
  %i.ct = fadd double %i.ce, %i.cq                ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !126 ; 2 uses
  %.not.i = icmp eq ptr %i.cv, null
  %i.cw = insertelement <4 x double> poison, double %i.cd, i64 0
  %i.cx = insertelement <4 x double> %i.cw, double %i.ce, i64 1
  %i.cy = insertelement <4 x double> %i.cx, double %i.bo, i64 2
  %i.cz = insertelement <4 x double> %i.cy, double %i.bq, i64 3 ; 2 uses
end_hunk_0
