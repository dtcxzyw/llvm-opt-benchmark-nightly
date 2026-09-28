Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-ot-cff1-table?download=true
inline.NumInlined: 1268
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE9vhcurvetoERS2_RS3_:bb.a
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.jq
  %.pre312 = load double, ptr %i.jr, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124: ; preds = %bb.as, %bb.at
  %i.js = phi double [ %i.m, %bb.as ], [ %.pre312, %bb.at ]
  %i.jt = fadd double %i.hz, %i.js                ; 2 uses
  %i.ju = or disjoint i32 %.1290, 5               ; 2 uses
  %.not.i.i125 = icmp ult i32 %i.ju, %i.jp
  br i1 %.not.i.i125, label %bb.av, label %bb.au, !prof !58

bb.au:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127

bb.av:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.jv
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127: ; preds = %bb.au, %bb.av
  %.0.i.i126 = phi ptr [ @_hb_CrapPool, %bb.au ], [ %i.jw, %bb.av ]
  %i.jx = or disjoint i32 %.1290, 6               ; 2 uses
  %.not.i.i128 = icmp ult i32 %i.jx, %i.jp
  br i1 %.not.i.i128, label %bb.ax, label %bb.aw, !prof !58

bb.aw:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130

bb.ax:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127
  %i.jy = zext i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.jy
  %.pre313 = load double, ptr %i.jz, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130: ; preds = %bb.aw, %bb.ax
  %i.ka = phi double [ %i.n, %bb.aw ], [ %.pre313, %bb.ax ]
  %i.kb = load double, ptr %.0.i.i126, align 8, !tbaa !25
  %i.kc = fadd double %i.jt, %i.kb                ; 3 uses
  %i.kd = fadd double %i.hu, %i.ka                ; 2 uses
  %i.ke = or disjoint i32 %.1290, 7               ; 2 uses
  %.not.i.i131 = icmp ult i32 %i.ke, %i.jp
  br i1 %.not.i.i131, label %bb.az, label %bb.ay, !prof !58

bb.ay:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133

bb.az:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.kf
  %.pre314 = load double, ptr %i.kg, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133: ; preds = %bb.ay, %bb.az
  %i.kh = phi double [ %i.o, %bb.ay ], [ %.pre314, %bb.az ]
  %i.ki = fadd double %i.kd, %i.kh                ; 3 uses
  %i.kj = sub i32 %i.jp, %.1290
  %i.kk = icmp ugt i32 %i.kj, 15
  %i.kl = and i32 %i.jp, 1
  %.not72 = icmp eq i32 %i.kl, 0
  %or.cond = or i1 %i.kk, %.not72
  br i1 %or.cond, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133
  %.not.i.i134 = icmp ult i32 %i.hg, %i.jp
  br i1 %.not.i.i134, label %bb.bc, label %bb.bb, !prof !58

bb.bb:                                            ; preds = %bb.ba
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136

bb.bc:                                            ; preds = %bb.ba
  %i.km = zext i32 %i.hg to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.km
  %.pre315 = load double, ptr %i.kn, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136: ; preds = %bb.bb, %bb.bc
  %i.ko = phi double [ %i.p, %bb.bb ], [ %.pre315, %bb.bc ]
  %i.kp = fadd double %i.kc, %i.ko
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133
  %.sroa.0254.0 = phi double [ %i.kc, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133 ], [ %i.kp, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136 ] ; 3 uses
  %i.kq = load ptr, ptr %i.h, align 8, !tbaa !126 ; 2 uses
  %.not.i207 = icmp eq ptr %i.kq, null
  %i.kr = insertelement <2 x double> poison, double %.sroa.0254.0, i64 0
  %i.ks = insertelement <2 x double> %i.kr, double %i.ki, i64 1 ; 2 uses
  %i.kt = insertelement <4 x double> poison, double %i.kc, i64 0
  %i.ku = insertelement <4 x double> %i.kt, double %i.kd, i64 1
  %i.kv = insertelement <4 x double> %i.ku, double %i.jt, i64 2
  %i.kw = insertelement <4 x double> %i.kv, double %i.hu, i64 3 ; 2 uses
  br i1 %.not.i207, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kx = load <2 x double>, ptr %i.kq, align 8, !tbaa !25 ; 2 uses
  %i.ky = shufflevector <2 x double> %i.kx, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.kz = fadd <4 x double> %i.kw, %i.ky
  %i.la = fadd <2 x double> %i.ks, %i.kx
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.lb = phi <2 x double> [ %i.ks, %bb.bd ], [ %i.la, %bb.be ]
  %i.lc = phi <4 x double> [ %i.kw, %bb.bd ], [ %i.kz, %bb.be ]
  %i.ld = load ptr, ptr %i.i, align 8, !tbaa !123 ; 4 uses
  %i.le = load ptr, ptr %1, align 8, !tbaa !125
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 80
  %i.lg = load <2 x float>, ptr %i.lf, align 8, !tbaa !27 ; 2 uses
  %i.lh = load ptr, ptr %i.ld, align 8, !tbaa !130 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !131 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ld, i64 16 ; 3 uses
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !132
  %.not.i.i214 = icmp eq i32 %i.ll, 0
  br i1 %.not.i.i214, label %bb.bg, label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215, !prof !56

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.lh, ptr noundef %i.lj, ptr noundef nonnull align 4 dereferenceable(48) %i.lk)
  br label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215

_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215: ; preds = %bb.bg, %bb.bf
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 40
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !168
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lh, i64 56
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !146 ; 2 uses
  %.not.i4.i216 = icmp eq ptr %i.lp, null
  br i1 %.not.i4.i216, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217, label %bb.bh

bb.bh:                                            ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !169
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217: ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215, %bb.bh
  %i.ls = phi ptr [ %i.lr, %bb.bh ], [ null, %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215 ]
  %i.lt = fptrunc <2 x double> %i.lb to <2 x float>
  %i.lu = fptrunc <4 x double> %i.lc to <4 x float>
  %i.lv = shufflevector <2 x float> %i.lg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lw = fmul <4 x float> %i.lv, %i.lu           ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ld, i64 28
  %i.ly = fmul <2 x float> %i.lg, %i.lt           ; 3 uses
  %i.lz = extractelement <2 x float> %i.ly, i64 0
  %i.ma = extractelement <2 x float> %i.ly, i64 1
  %i.mb = extractelement <4 x float> %i.lw, i64 0
  %i.mc = extractelement <4 x float> %i.lw, i64 1
  %i.md = extractelement <4 x float> %i.lw, i64 2
  %i.me = extractelement <4 x float> %i.lw, i64 3
  tail call void %i.ln(ptr noundef nonnull align 8 dereferenceable(72) %i.lh, ptr noundef %i.lj, ptr noundef nonnull align 4 dereferenceable(48) %i.lk, float noundef %i.md, float noundef %i.me, float noundef %i.mb, float noundef %i.mc, float noundef %i.lz, float noundef %i.ma, ptr noundef %i.ls) #5, !inline_history !7
  store <2 x float> %i.ly, ptr %i.lx, align 4, !tbaa !27
  store double %.sroa.0254.0, ptr %i.e, align 8, !tbaa !113
  store double %i.ki, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !113
  %i.mf = add i32 %i.hg, 8                        ; 2 uses
  %i.mg = load i32, ptr %i.b, align 4, !tbaa !109 ; 2 uses
  %.not71 = icmp ugt i32 %i.mf, %i.mg
  br i1 %.not71, label %.loopexit, label %bb.af, !llvm.loop !237

.loopexit:                                        ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217, %.preheader, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit177
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE9hvcurvetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !109  ; 5 uses
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82

.preheader:                                       ; preds = %bb.a
  %.not71288 = icmp ult i32 %i.c, 8
  br i1 %.not71288, label %.loopexit, label %.lr.ph290

.lr.ph290:                                        ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 3 uses
  %i.f = load i64, ptr @_hb_NullPool, align 16    ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0274.0.copyload.pre = load double, ptr %i.e, align 8, !tbaa !113
  %.sroa.11.0.copyload.pre = load double, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !113
  %i.j = bitcast i64 %i.f to double
  %i.k = bitcast i64 %i.f to double
  %i.l = bitcast i64 %i.f to double
  %i.m = bitcast i64 %i.f to double
  %i.n = bitcast i64 %i.f to double
  %i.o = bitcast i64 %i.f to double
  %i.p = bitcast i64 %i.f to double
  br label %bb.af

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 4 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 4 uses
  %.sroa.15.0.copyload = load double, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !113 ; 3 uses
  %.sroa.15.0.copyload.a = load double, ptr %i.q, align 8, !tbaa !113
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.r, align 8, !tbaa !25
  %i.s = fadd double %.sroa.15.0.copyload.a, %.pre ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre298 = load double, ptr %i.u, align 8, !tbaa !25
  %i.v = load double, ptr %i.t, align 8, !tbaa !25
  %i.w = fadd double %i.s, %i.v                   ; 2 uses
  %i.x = fadd double %.sroa.15.0.copyload, %.pre298 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre299 = load double, ptr %i.y, align 8, !tbaa !25
  %i.z = fadd double %i.x, %.pre299               ; 2 uses
  %.not73275 = icmp ult i32 %i.c, 12
  br i1 %.not73275, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i64, ptr @_hb_NullPool, align 16   ; 14 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.ae = bitcast i64 %i.ac to double
  %i.af = bitcast i64 %i.ac to double
  %i.ag = bitcast i64 %i.ac to double
  %i.ah = bitcast i64 %i.ac to double
  %i.ai = bitcast i64 %i.ac to double
  %i.aj = bitcast i64 %i.ac to double
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106
  %i.ak = phi i32 [ 12, %.lr.ph ], [ %i.fd, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 3 uses
  %.0281 = phi i32 [ 4, %.lr.ph ], [ %i.ak, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 9 uses
  %.sroa.16.0280 = phi double [ %i.z, %.lr.ph ], [ %i.fc, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 4 uses
  %.sroa.0238.0279 = phi double [ %i.w, %.lr.ph ], [ %i.ew, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 5 uses
  %.sroa.17.0278 = phi double [ %i.x, %.lr.ph ], [ %i.ex, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 2 uses
  %.sroa.0249.0277 = phi double [ %i.s, %.lr.ph ], [ %i.en, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ]
  %.sroa.15.0276 = phi double [ %.sroa.15.0.copyload, %.lr.ph ], [ %i.co, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ]
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !126 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  %i.am = insertelement <2 x double> poison, double %.sroa.0249.0277, i64 0
  %i.an = insertelement <2 x double> %i.am, double %.sroa.15.0276, i64 1 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !25 ; 3 uses
  %i.ap = fadd <2 x double> %i.an, %i.ao
  %i.aq = extractelement <2 x double> %i.ao, i64 0
  %i.ar = fadd double %.sroa.0238.0279, %i.aq
  %i.as = extractelement <2 x double> %i.ao, i64 1 ; 2 uses
  %i.at = fadd double %.sroa.17.0278, %i.as
  %i.au = fadd double %.sroa.16.0280, %i.as
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.69.0.i = phi double [ %.sroa.17.0278, %bb.b ], [ %i.at, %bb.c ]
  %.sroa.07.0.i = phi double [ %.sroa.0238.0279, %bb.b ], [ %i.ar, %bb.c ]
  %.sroa.6.0.i = phi double [ %.sroa.16.0280, %bb.b ], [ %i.au, %bb.c ]
  %i.av = phi <2 x double> [ %i.an, %bb.b ], [ %i.ap, %bb.c ]
  %i.aw = load ptr, ptr %i.ab, align 8, !tbaa !123 ; 5 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !125
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.az = load <2 x float>, ptr %i.ay, align 8, !tbaa !27 ; 3 uses
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !130 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !131 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !132
  %.not.i.i137 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i137, label %bb.e, label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i, !prof !56

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.ba, ptr noundef %i.bc, ptr noundef nonnull align 4 dereferenceable(48) %i.bd)
  br label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i

_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i: ; preds = %bb.e, %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !168
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !146 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.bi, null
  br i1 %.not.i4.i, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !169
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit: ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i, %bb.f
  %i.bl = phi ptr [ %i.bk, %bb.f ], [ null, %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i ]
  %i.bm = fptrunc double %.sroa.6.0.i to float
  %i.bn = extractelement <2 x float> %i.az, i64 1 ; 2 uses
  %i.bo = fmul float %i.bn, %i.bm                 ; 2 uses
  %i.bp = fptrunc double %.sroa.07.0.i to float
  %i.bq = extractelement <2 x float> %i.az, i64 0
  %i.br = fmul float %i.bq, %i.bp                 ; 3 uses
  %i.bs = fptrunc double %.sroa.69.0.i to float
  %i.bt = fmul float %i.bn, %i.bs
  %i.bu = fptrunc <2 x double> %i.av to <2 x float>
  %i.bv = fmul <2 x float> %i.az, %i.bu           ; 2 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 0
  %i.bx = extractelement <2 x float> %i.bv, i64 1
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(72) %i.ba, ptr noundef %i.bc, ptr noundef nonnull align 4 dereferenceable(48) %i.bd, float noundef %i.bw, float noundef %i.bx, float noundef %i.br, float noundef %i.bt, float noundef %i.br, float noundef %i.bo, ptr noundef %i.bl) #5, !inline_history !7
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 28
  store float %i.br, ptr %i.by, align 4, !tbaa !134
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store float %i.bo, ptr %i.bz, align 8, !tbaa !136
  store double %.sroa.0238.0279, ptr %i.q, align 8, !tbaa !113
  store double %.sroa.16.0280, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !113
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !109 ; 4 uses
  %.not.i.i83 = icmp ult i32 %.0281, %i.ca
  br i1 %.not.i.i83, label %bb.h, label %bb.g, !prof !58

bb.g:                                             ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.ac, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit85

bb.h:                                             ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit
  %i.cb = zext i32 %.0281 to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cb
  %.pre300 = load double, ptr %i.cc, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit85

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit85: ; preds = %bb.g, %bb.h
  %i.cd = phi double [ %i.ae, %bb.g ], [ %.pre300, %bb.h ]
  %i.ce = fadd double %.sroa.16.0280, %i.cd       ; 2 uses
  %i.cf = or disjoint i32 %.0281, 1               ; 2 uses
  %.not.i.i86 = icmp ult i32 %i.cf, %i.ca
  br i1 %.not.i.i86, label %bb.j, label %bb.i, !prof !58

bb.i:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit85
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.ac, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit88

bb.j:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit85
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cg
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit88

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit88: ; preds = %bb.i, %bb.j
  %.0.i.i87 = phi ptr [ @_hb_CrapPool, %bb.i ], [ %i.ch, %bb.j ]
  %i.ci = or disjoint i32 %.0281, 2               ; 2 uses
  %.not.i.i89 = icmp ult i32 %i.ci, %i.ca
  br i1 %.not.i.i89, label %bb.l, label %bb.k, !prof !58

bb.k:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit88
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.ac, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit91

bb.l:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit88
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cj
  %.pre301 = load double, ptr %i.ck, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit91

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit91: ; preds = %bb.k, %bb.l
  %i.cl = phi double [ %i.af, %bb.k ], [ %.pre301, %bb.l ]
  %i.cm = load double, ptr %.0.i.i87, align 8, !tbaa !25
  %i.cn = fadd double %.sroa.0238.0279, %i.cm     ; 3 uses
  %i.co = fadd double %i.ce, %i.cl                ; 5 uses
  %i.cp = or disjoint i32 %.0281, 3               ; 2 uses
  %.not.i.i92 = icmp ult i32 %i.cp, %i.ca
  br i1 %.not.i.i92, label %bb.n, label %bb.m, !prof !58

bb.m:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit91
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.ac, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94

bb.n:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit91
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cq
  %.pre302 = load double, ptr %i.cr, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94: ; preds = %bb.m, %bb.n
  %i.cs = phi double [ %i.ag, %bb.m ], [ %.pre302, %bb.n ]
  %i.ct = fadd double %i.cn, %i.cs                ; 3 uses
  %i.cu = load ptr, ptr %i.aa, align 8, !tbaa !126 ; 2 uses
  %.not.i147 = icmp eq ptr %i.cu, null
  %i.cv = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.co, i64 1 ; 2 uses
  %i.cx = insertelement <2 x double> poison, double %.sroa.0238.0279, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.ce, i64 1 ; 2 uses
  br i1 %.not.i147, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94
  %i.cz = load <2 x double>, ptr %i.cu, align 8, !tbaa !25 ; 3 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = fadd <2 x double> %i.cy, %i.cz
  %i.dc = fadd double %i.cn, %i.da
  %i.dd = fadd <2 x double> %i.cw, %i.cz
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94
  %.sroa.07.0.i151 = phi double [ %i.cn, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94 ], [ %i.dc, %bb.o ]
  %i.de = phi <2 x double> [ %i.cw, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94 ], [ %i.dd, %bb.o ]
  %i.df = phi <2 x double> [ %i.cy, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94 ], [ %i.db, %bb.o ]
  %i.dg = load ptr, ptr %i.ab, align 8, !tbaa !123 ; 4 uses
  %i.dh = load ptr, ptr %1, align 8, !tbaa !125
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  %i.dj = load <2 x float>, ptr %i.di, align 8, !tbaa !27 ; 3 uses
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !130 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !131 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 3 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !132
  %.not.i.i154 = icmp eq i32 %i.do, 0
  br i1 %.not.i.i154, label %bb.q, label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i155, !prof !56

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.dk, ptr noundef %i.dm, ptr noundef nonnull align 4 dereferenceable(48) %i.dn)
  br label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i155

_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i155: ; preds = %bb.q, %bb.p
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !168
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !146 ; 2 uses
  %.not.i4.i156 = icmp eq ptr %i.ds, null
  br i1 %.not.i4.i156, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit157, label %bb.r

bb.r:                                             ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i155
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !169
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit157

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit157: ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i155, %bb.r
  %i.dv = phi ptr [ %i.du, %bb.r ], [ null, %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i155 ]
  %i.dw = fptrunc <2 x double> %i.de to <2 x float>
  %i.dx = fptrunc double %.sroa.07.0.i151 to float
  %i.dy = extractelement <2 x float> %i.dj, i64 0
  %i.dz = fmul float %i.dy, %i.dx
  %i.ea = fptrunc <2 x double> %i.df to <2 x float>
  %i.eb = fmul <2 x float> %i.dj, %i.ea           ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  %i.ed = fmul <2 x float> %i.dj, %i.dw           ; 3 uses
  %i.ee = extractelement <2 x float> %i.ed, i64 0
  %i.ef = extractelement <2 x float> %i.ed, i64 1 ; 2 uses
  %i.eg = extractelement <2 x float> %i.eb, i64 0
  %i.eh = extractelement <2 x float> %i.eb, i64 1
  tail call void %i.dq(ptr noundef nonnull align 8 dereferenceable(72) %i.dk, ptr noundef %i.dm, ptr noundef nonnull align 4 dereferenceable(48) %i.dn, float noundef %i.eg, float noundef %i.eh, float noundef %i.dz, float noundef %i.ef, float noundef %i.ee, float noundef %i.ef, ptr noundef %i.dv) #5, !inline_history !7
  store <2 x float> %i.ed, ptr %i.ec, align 4, !tbaa !27
  store double %i.ct, ptr %i.q, align 8, !tbaa !113
  store double %i.co, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !113
  %i.ei = add i32 %.0281, 4                       ; 2 uses
  %i.ej = load i32, ptr %i.b, align 4, !tbaa !109 ; 6 uses
  %.not.i.i95 = icmp ult i32 %i.ei, %i.ej
  br i1 %.not.i.i95, label %bb.t, label %bb.s, !prof !58

bb.s:                                             ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit157
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.ac, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit97

bb.t:                                             ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit157
  %i.ek = zext i32 %i.ei to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ek
  %.pre303 = load double, ptr %i.el, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit97

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit97: ; preds = %bb.s, %bb.t
  %i.em = phi double [ %i.ah, %bb.s ], [ %.pre303, %bb.t ]
  %i.en = fadd double %i.ct, %i.em                ; 3 uses
  %i.eo = add i32 %.0281, 5                       ; 2 uses
  %.not.i.i98 = icmp ult i32 %i.eo, %i.ej
  br i1 %.not.i.i98, label %bb.v, label %bb.u, !prof !58

bb.u:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit97
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.ac, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit100

bb.v:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit97
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ep
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit100

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit100: ; preds = %bb.u, %bb.v
  %.0.i.i99 = phi ptr [ @_hb_CrapPool, %bb.u ], [ %i.eq, %bb.v ]
  %i.er = add i32 %.0281, 6                       ; 2 uses
  %.not.i.i101 = icmp ult i32 %i.er, %i.ej
  br i1 %.not.i.i101, label %bb.x, label %bb.w, !prof !58

bb.w:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit100
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.ac, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit103

bb.x:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit100
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.es
  %.pre304 = load double, ptr %i.et, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit103

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit103: ; preds = %bb.w, %bb.x
  %i.eu = phi double [ %i.ai, %bb.w ], [ %.pre304, %bb.x ]
  %i.ev = load double, ptr %.0.i.i99, align 8, !tbaa !25
  %i.ew = fadd double %i.en, %i.ev                ; 2 uses
  %i.ex = fadd double %i.co, %i.eu                ; 3 uses
  %i.ey = add i32 %.0281, 7                       ; 2 uses
  %.not.i.i104 = icmp ult i32 %i.ey, %i.ej
  br i1 %.not.i.i104, label %bb.z, label %bb.y, !prof !58

bb.y:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit103
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.ac, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106

bb.z:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit103
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ez
  %.pre305 = load double, ptr %i.fa, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106: ; preds = %bb.y, %bb.z
  %i.fb = phi double [ %i.aj, %bb.y ], [ %.pre305, %bb.z ]
  %i.fc = fadd double %i.ex, %i.fb                ; 2 uses
  %i.fd = add i32 %i.ak, 8                        ; 2 uses
  %.not73 = icmp ugt i32 %i.fd, %i.ej
  br i1 %.not73, label %._crit_edge, label %bb.b, !llvm.loop !238

._crit_edge:                                      ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82
  %.sroa.15.0.lcssa = phi double [ %.sroa.15.0.copyload, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.co, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ]
  %.sroa.0249.0.lcssa = phi double [ %i.s, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.en, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ]
  %.sroa.17.0.lcssa = phi double [ %i.x, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.ex, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ]
  %.sroa.0238.0.lcssa = phi double [ %i.w, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.ew, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 3 uses
  %.sroa.16.0.lcssa = phi double [ %i.z, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.fc, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 3 uses
  %.0.lcssa = phi i32 [ 4, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.ak, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 2 uses
  %i.fe = phi i32 [ %i.c, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.ej, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ]
  %i.ff = icmp ult i32 %.0.lcssa, %i.fe
  br i1 %i.ff, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit109, label %bb.aa

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit109: ; preds = %._crit_edge
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fh = zext i32 %.0.lcssa to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !25
  %i.fk = fadd double %.sroa.0238.0.lcssa, %i.fj
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit109, %._crit_edge
  %.sroa.0.1 = phi double [ %i.fk, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit109 ], [ %.sroa.0238.0.lcssa, %._crit_edge ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !126 ; 2 uses
  %.not.i167 = icmp eq ptr %i.fm, null
  %i.fn = insertelement <4 x double> poison, double %.sroa.0238.0.lcssa, i64 0
  %i.fo = insertelement <4 x double> %i.fn, double %.sroa.17.0.lcssa, i64 1
  %i.fp = insertelement <4 x double> %i.fo, double %.sroa.0249.0.lcssa, i64 2
  %i.fq = insertelement <4 x double> %i.fp, double %.sroa.15.0.lcssa, i64 3 ; 2 uses
  br i1 %.not.i167, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fr = load <2 x double>, ptr %i.fm, align 8, !tbaa !25 ; 3 uses
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ft = fadd <4 x double> %i.fq, %i.fs
  %i.fu = extractelement <2 x double> %i.fr, i64 0
  %i.fv = fadd double %.sroa.0.1, %i.fu
  %i.fw = extractelement <2 x double> %i.fr, i64 1
  %i.fx = fadd double %.sroa.16.0.lcssa, %i.fw
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.6.0.i172 = phi double [ %.sroa.16.0.lcssa, %bb.aa ], [ %i.fx, %bb.ab ]
  %.sroa.0.0.i173 = phi double [ %.sroa.0.1, %bb.aa ], [ %i.fv, %bb.ab ]
  %i.fy = phi <4 x double> [ %i.fq, %bb.aa ], [ %i.ft, %bb.ab ]
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !123 ; 5 uses
  %i.gb = load ptr, ptr %1, align 8, !tbaa !125
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 80
  %i.gd = load <2 x float>, ptr %i.gc, align 8, !tbaa !27 ; 3 uses
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gf = load ptr, ptr %i.ga, align 8, !tbaa !130 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !131 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 3 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !132
  %.not.i.i174 = icmp eq i32 %i.gj, 0
  br i1 %.not.i.i174, label %bb.ad, label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i175, !prof !56

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.gf, ptr noundef %i.gh, ptr noundef nonnull align 4 dereferenceable(48) %i.gi)
  br label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i175

_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i175: ; preds = %bb.ad, %bb.ac
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !168
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !146 ; 2 uses
  %.not.i4.i176 = icmp eq ptr %i.gn, null
  br i1 %.not.i4.i176, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit177, label %bb.ae

bb.ae:                                            ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i175
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !169
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit177

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit177: ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i175, %bb.ae
  %i.gq = phi ptr [ %i.gp, %bb.ae ], [ null, %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i175 ]
  %i.gr = fptrunc double %.sroa.6.0.i172 to float
  %i.gs = extractelement <2 x float> %i.gd, i64 1
  %i.gt = fmul float %i.gs, %i.gr                 ; 2 uses
  %i.gu = fptrunc double %.sroa.0.0.i173 to float
  %i.gv = extractelement <2 x float> %i.gd, i64 0
  %i.gw = fmul float %i.gv, %i.gu                 ; 2 uses
  %i.gx = fptrunc <4 x double> %i.fy to <4 x float>
  %i.gy = fmul <4 x float> %i.ge, %i.gx           ; 4 uses
  %i.gz = extractelement <4 x float> %i.gy, i64 0
  %i.ha = extractelement <4 x float> %i.gy, i64 1
  %i.hb = extractelement <4 x float> %i.gy, i64 2
  %i.hc = extractelement <4 x float> %i.gy, i64 3
  tail call void %i.gl(ptr noundef nonnull align 8 dereferenceable(72) %i.gf, ptr noundef %i.gh, ptr noundef nonnull align 4 dereferenceable(48) %i.gi, float noundef %i.hb, float noundef %i.hc, float noundef %i.gz, float noundef %i.ha, float noundef %i.gw, float noundef %i.gt, ptr noundef %i.gq) #5, !inline_history !7
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ga, i64 28
  store float %i.gw, ptr %i.hd, align 4, !tbaa !134
  %i.he = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  store float %i.gt, ptr %i.he, align 8, !tbaa !136
  store double %.sroa.0.1, ptr %i.q, align 8, !tbaa !113
  store double %.sroa.16.0.lcssa, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !113
  br label %.loopexit

bb.af:                                            ; preds = %.lr.ph290, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217
  %i.hf = phi i32 [ %i.c, %.lr.ph290 ], [ %i.mg, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217 ] ; 4 uses
  %.sroa.11.0.copyload = phi double [ %.sroa.11.0.copyload.pre, %.lr.ph290 ], [ %.sroa.12.0, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217 ] ; 2 uses
  %.sroa.0274.0.copyload = phi double [ %.sroa.0274.0.copyload.pre, %.lr.ph290 ], [ %i.ki, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217 ]
  %i.hg = phi i32 [ 8, %.lr.ph290 ], [ %i.mf, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217 ] ; 4 uses
  %.1289 = phi i32 [ 0, %.lr.ph290 ], [ %i.hg, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217 ] ; 10 uses
  %.not.i.i110 = icmp ult i32 %.1289, %i.hf
  br i1 %.not.i.i110, label %bb.ah, label %bb.ag, !prof !58

bb.ag:                                            ; preds = %bb.af
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112

bb.ah:                                            ; preds = %bb.af
  %i.hh = zext i32 %.1289 to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.hh
  %.pre308 = load double, ptr %i.hi, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112: ; preds = %bb.ag, %bb.ah
  %i.hj = phi double [ %i.j, %bb.ag ], [ %.pre308, %bb.ah ]
  %i.hk = fadd double %.sroa.0274.0.copyload, %i.hj ; 2 uses
  %i.hl = or disjoint i32 %.1289, 1               ; 2 uses
  %.not.i.i113 = icmp ult i32 %i.hl, %i.hf
  br i1 %.not.i.i113, label %bb.aj, label %bb.ai, !prof !58

bb.ai:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115

bb.aj:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.hm
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115: ; preds = %bb.ai, %bb.aj
  %.0.i.i114 = phi ptr [ @_hb_CrapPool, %bb.ai ], [ %i.hn, %bb.aj ]
  %i.ho = or disjoint i32 %.1289, 2               ; 2 uses
  %.not.i.i116 = icmp ult i32 %i.ho, %i.hf
  br i1 %.not.i.i116, label %bb.al, label %bb.ak, !prof !58

bb.ak:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118

bb.al:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.hp
  %.pre309 = load double, ptr %i.hq, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118: ; preds = %bb.ak, %bb.al
  %i.hr = phi double [ %i.k, %bb.ak ], [ %.pre309, %bb.al ]
  %i.hs = load double, ptr %.0.i.i114, align 8, !tbaa !25
  %i.ht = fadd double %i.hk, %i.hs                ; 4 uses
  %i.hu = fadd double %.sroa.11.0.copyload, %i.hr ; 3 uses
  %i.hv = or disjoint i32 %.1289, 3               ; 2 uses
  %.not.i.i119 = icmp ult i32 %i.hv, %i.hf
  br i1 %.not.i.i119, label %bb.an, label %bb.am, !prof !58

bb.am:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121

bb.an:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.hw
  %.pre310 = load double, ptr %i.hx, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121: ; preds = %bb.am, %bb.an
  %i.hy = phi double [ %i.l, %bb.am ], [ %.pre310, %bb.an ]
  %i.hz = fadd double %i.hu, %i.hy                ; 3 uses
  %i.ia = load ptr, ptr %i.h, align 8, !tbaa !126 ; 2 uses
  %.not.i187 = icmp eq ptr %i.ia, null
  %i.ib = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.ic = insertelement <2 x double> %i.ib, double %i.hz, i64 1 ; 2 uses
  %i.id = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.ie = insertelement <2 x double> %i.id, double %.sroa.11.0.copyload, i64 1 ; 2 uses
  br i1 %.not.i187, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121
  %i.if = load <2 x double>, ptr %i.ia, align 8, !tbaa !25 ; 3 uses
  %i.ig = extractelement <2 x double> %i.if, i64 1
  %i.ih = fadd <2 x double> %i.ie, %i.if
  %i.ii = fadd double %i.hu, %i.ig
  %i.ij = fadd <2 x double> %i.ic, %i.if
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121
  %.sroa.69.0.i190 = phi double [ %i.hu, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121 ], [ %i.ii, %bb.ao ]
  %i.ik = phi <2 x double> [ %i.ic, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121 ], [ %i.ij, %bb.ao ]
  %i.il = phi <2 x double> [ %i.ie, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121 ], [ %i.ih, %bb.ao ]
  %i.im = load ptr, ptr %i.i, align 8, !tbaa !123 ; 4 uses
  %i.in = load ptr, ptr %1, align 8, !tbaa !125
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 80
  %i.ip = load <2 x float>, ptr %i.io, align 8, !tbaa !27 ; 3 uses
  %i.iq = load ptr, ptr %i.im, align 8, !tbaa !130 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !131 ; 2 uses
end_hunk_0
