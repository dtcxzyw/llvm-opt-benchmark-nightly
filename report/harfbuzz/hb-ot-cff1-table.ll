Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-ot-cff1-table?download=true
inline.NumInlined: 1268
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE10rlinecurveERS2_RS3_:bb.a
  store double %i.ao, ptr %i.i, align 8, !tbaa !113
  %.pre.i9.i = load double, ptr %i.f, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i
  %i.aq = phi double [ %.pre.i9.i, %bb.o ], [ %i.ao, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit.i ] ; 2 uses
  %i.ar = load double, ptr %i.j, align 8, !tbaa !25
  %i.as = fcmp ogt double %i.aq, %i.ar
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %i.aq, ptr %i.j, align 8, !tbaa !113
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = load double, ptr %i.k, align 8, !tbaa !25
  %i.au = load double, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.av = fcmp ogt double %i.at, %i.au
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double %i.au, ptr %i.k, align 8, !tbaa !113
  %.pre9.i8.i = load double, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aw = phi double [ %.pre9.i8.i, %bb.s ], [ %i.au, %bb.r ] ; 2 uses
  %i.ax = load double, ptr %i.l, align 8, !tbaa !25
  %i.ay = fcmp ogt double %i.aw, %i.ax
  br i1 %i.ay, label %bb.u, label %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit

bb.u:                                             ; preds = %bb.t
  store double %i.aw, ptr %i.l, align 8, !tbaa !113
  br label %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit

_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit: ; preds = %bb.t, %bb.u
  %i.az = add i32 %i.n, 2                         ; 4 uses
  %.not = icmp ugt i32 %i.az, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !220

._crit_edge:                                      ; preds = %_ZN25cff1_path_procs_extents_t4lineERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !167
  %.not.i.i32 = icmp ult i32 %i.n, %i.c
  br i1 %.not.i.i32, label %bb.w, label %bb.v, !prof !58

bb.v:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.bb = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.bb, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34

bb.w:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = zext i32 %i.n to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34: ; preds = %bb.v, %bb.w
  %.0.i.i33 = phi ptr [ @_hb_CrapPool, %bb.v ], [ %i.be, %bb.w ]
  %i.bf = or disjoint i32 %i.n, 1                 ; 2 uses
  %.not.i.i35 = icmp ult i32 %i.bf, %i.c
  br i1 %.not.i.i35, label %bb.y, label %bb.x, !prof !58

bb.x:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.bg = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.bg, ptr @_hb_CrapPool, align 16
  %i.bh = bitcast i64 %i.bg to double
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37

bb.y:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit34
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = zext i32 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  %.pre58 = load double, ptr %i.bk, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit37: ; preds = %bb.x, %bb.y
  %i.bl = phi double [ %i.bh, %bb.x ], [ %.pre58, %bb.y ]
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
  %i.bv = add i32 %i.n, 3                         ; 2 uses
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
  %.pre59 = load double, ptr %i.ca, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit43: ; preds = %bb.ab, %bb.ac
  %i.cb = phi double [ %i.bx, %bb.ab ], [ %.pre59, %bb.ac ]
  %i.cc = load double, ptr %.0.i.i39, align 8, !tbaa !25
  %i.cd = load <2 x double>, ptr %3, align 16, !tbaa !25
  %i.ce = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.cb, i64 1
  %i.cg = fadd <2 x double> %i.cd, %i.cf
  store <2 x double> %i.cg, ptr %3, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !167
  %i.ch = add i32 %i.n, 4                         ; 2 uses
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
  %i.cm = add i32 %i.n, 5                         ; 2 uses
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
  %.pre60 = load double, ptr %i.cr, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.af, %bb.ag
  %i.cs = phi double [ %i.co, %bb.af ], [ %.pre60, %bb.ag ]
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
  %5 = and i32 %i.d, 1
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.b, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.e, align 8, !tbaa !25
  %i.f = load double, ptr %2, align 8, !tbaa !25
  %i.g = fadd double %i.f, %.pre
  store double %i.g, ptr %2, align 8, !tbaa !25
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit, %bb.a
  %.0 = phi i32 [ 1, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit ], [ 0, %bb.a ] ; 2 uses
  %i.h = or disjoint i32 %.0, 4                   ; 2 uses
  %.not1831 = icmp ugt i32 %i.h, %i.d
  br i1 %.not1831, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = load i64, ptr @_hb_NullPool, align 16    ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = bitcast i64 %i.i to double
  %i.n = bitcast i64 %i.i to double
  %i.o = bitcast i64 %i.i to double
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30
  %i.p = phi i32 [ %i.d, %.lr.ph ], [ %i.ap, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30 ] ; 4 uses
  %i.q = phi i32 [ %i.h, %.lr.ph ], [ %i.ao, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30 ] ; 2 uses
  %.132 = phi i32 [ %.0, %.lr.ph ], [ %i.q, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30 ] ; 5 uses
  %.not.i.i19 = icmp ult i32 %.132, %i.p
  br i1 %.not.i.i19, label %bb.e, label %bb.d, !prof !58

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.b, align 8, !tbaa !162
  store i64 %i.i, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21

bb.e:                                             ; preds = %bb.c
  %i.r = zext i32 %.132 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.r
  %.pre33.a = load double, ptr %i.s, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21: ; preds = %bb.d, %bb.e
  %i.t = phi double [ %i.m, %bb.d ], [ %.pre33.a, %bb.e ]
  %i.u = load double, ptr %i.k, align 8, !tbaa !25
  %i.v = fadd double %i.u, %i.t
  store double %i.v, ptr %i.k, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !167
  %i.w = add i32 %.132, 1                         ; 2 uses
  %.not.i.i22 = icmp ult i32 %i.w, %i.p
  br i1 %.not.i.i22, label %bb.g, label %bb.f, !prof !58

bb.f:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21
  store i8 1, ptr %i.b, align 8, !tbaa !162
  store i64 %i.i, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24

bb.g:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.x
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24: ; preds = %bb.f, %bb.g
  %.0.i.i23 = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.y, %bb.g ]
  %i.z = add i32 %.132, 2                         ; 2 uses
  %.not.i.i25 = icmp ult i32 %i.z, %i.p
  br i1 %.not.i.i25, label %bb.i, label %bb.h, !prof !58

bb.h:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24
  store i8 1, ptr %i.b, align 8, !tbaa !162
  store i64 %i.i, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27

bb.i:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aa
  %.pre34.a = load double, ptr %i.ab, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27: ; preds = %bb.h, %bb.i
  %i.ac = phi double [ %i.n, %bb.h ], [ %.pre34.a, %bb.i ]
  %i.ad = load double, ptr %.0.i.i23, align 8, !tbaa !25
  %i.ae = load <2 x double>, ptr %3, align 16, !tbaa !25
  %i.af = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ac, i64 1
  %i.ah = fadd <2 x double> %i.ae, %i.ag
  store <2 x double> %i.ah, ptr %3, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !167
  %i.ai = add i32 %.132, 3                        ; 2 uses
  %.not.i.i28 = icmp ult i32 %i.ai, %i.p
  br i1 %.not.i.i28, label %bb.k, label %bb.j, !prof !58

bb.j:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27
  store i8 1, ptr %i.b, align 8, !tbaa !162
  store i64 %i.i, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30

bb.k:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aj
  %.pre35 = load double, ptr %i.ak, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30: ; preds = %bb.j, %bb.k
  %i.al = phi double [ %i.o, %bb.j ], [ %.pre35, %bb.k ]
  %i.am = load double, ptr %i.l, align 8, !tbaa !25
  %i.an = fadd double %i.am, %i.al
  store double %i.an, ptr %i.l, align 8, !tbaa !25
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !167
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.ao = add i32 %i.q, 4                         ; 2 uses
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !109 ; 2 uses
  %.not18 = icmp ugt i32 %i.ao, %i.ap
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
  %5 = and i32 %i.d, 1
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.b, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !25
  %i.h = fadd double %i.g, %.pre
  store double %i.h, ptr %i.f, align 8, !tbaa !25
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit, %bb.a
  %.0 = phi i32 [ 1, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit ], [ 0, %bb.a ] ; 2 uses
  %i.i = or disjoint i32 %.0, 4                   ; 2 uses
  %.not1831 = icmp ugt i32 %i.i, %i.d
  br i1 %.not1831, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = load i64, ptr @_hb_NullPool, align 16    ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = bitcast i64 %i.j to double
  %i.m = bitcast i64 %i.j to double
  %i.n = bitcast i64 %i.j to double
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30
  %i.o = phi i32 [ %i.d, %.lr.ph ], [ %i.ao, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30 ] ; 4 uses
  %i.p = phi i32 [ %i.i, %.lr.ph ], [ %i.an, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30 ] ; 2 uses
  %.132 = phi i32 [ %.0, %.lr.ph ], [ %i.p, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30 ] ; 5 uses
  %.not.i.i19 = icmp ult i32 %.132, %i.o
  br i1 %.not.i.i19, label %bb.e, label %bb.d, !prof !58

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.b, align 8, !tbaa !162
  store i64 %i.j, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21

bb.e:                                             ; preds = %bb.c
  %i.q = zext i32 %.132 to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.q
  %.pre33.a = load double, ptr %i.r, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21: ; preds = %bb.d, %bb.e
  %i.s = phi double [ %i.l, %bb.d ], [ %.pre33.a, %bb.e ]
  %i.t = load double, ptr %2, align 8, !tbaa !25
  %i.u = fadd double %i.t, %i.s
  store double %i.u, ptr %2, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !167
  %i.v = add i32 %.132, 1                         ; 2 uses
  %.not.i.i22 = icmp ult i32 %i.v, %i.o
  br i1 %.not.i.i22, label %bb.g, label %bb.f, !prof !58

bb.f:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21
  store i8 1, ptr %i.b, align 8, !tbaa !162
  store i64 %i.j, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24

bb.g:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit21
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.w
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24: ; preds = %bb.f, %bb.g
  %.0.i.i23 = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.x, %bb.g ]
  %i.y = add i32 %.132, 2                         ; 2 uses
  %.not.i.i25 = icmp ult i32 %i.y, %i.o
  br i1 %.not.i.i25, label %bb.i, label %bb.h, !prof !58

bb.h:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24
  store i8 1, ptr %i.b, align 8, !tbaa !162
  store i64 %i.j, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27

bb.i:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit24
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.z
  %.pre34.a = load double, ptr %i.aa, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27: ; preds = %bb.h, %bb.i
  %i.ab = phi double [ %i.m, %bb.h ], [ %.pre34.a, %bb.i ]
  %i.ac = load double, ptr %.0.i.i23, align 8, !tbaa !25
  %i.ad = load <2 x double>, ptr %3, align 16, !tbaa !25
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ab, i64 1
  %i.ag = fadd <2 x double> %i.ad, %i.af
  store <2 x double> %i.ag, ptr %3, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !167
  %i.ah = add i32 %.132, 3                        ; 2 uses
  %.not.i.i28 = icmp ult i32 %i.ah, %i.o
  br i1 %.not.i.i28, label %bb.k, label %bb.j, !prof !58

bb.j:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27
  store i8 1, ptr %i.b, align 8, !tbaa !162
  store i64 %i.j, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30

bb.k:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit27
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ai
  %.pre35 = load double, ptr %i.aj, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30: ; preds = %bb.j, %bb.k
  %i.ak = phi double [ %i.n, %bb.j ], [ %.pre35, %bb.k ]
  %i.al = load double, ptr %4, align 8, !tbaa !25
  %i.am = fadd double %i.al, %i.ak
  store double %i.am, ptr %4, align 8, !tbaa !25
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !167
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.an = add i32 %i.p, 4                         ; 2 uses
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !109 ; 2 uses
  %.not18 = icmp ugt i32 %i.an, %i.ao
  br i1 %.not18, label %._crit_edge, label %bb.c, !llvm.loop !222

._crit_edge:                                      ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit30, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE9vhcurvetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 8     ; 11 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 12 uses
  %4 = alloca %"struct.CFF::point_t", align 8     ; 12 uses
  %5 = alloca %"struct.CFF::point_t", align 8     ; 14 uses
  %6 = alloca %"struct.CFF::point_t", align 16    ; 17 uses
  %7 = alloca %"struct.CFF::point_t", align 8     ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !109  ; 5 uses
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82

.preheader:                                       ; preds = %bb.a
  %.not71140 = icmp ult i32 %i.c, 8
  br i1 %.not71140, label %.loopexit, label %.lr.ph142

.lr.ph142:                                        ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4448
  %i.f = load i64, ptr @_hb_NullPool, align 16    ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = bitcast i64 %i.f to double
  %i.k = bitcast i64 %i.f to double
  %i.l = bitcast i64 %i.f to double
  %i.m = bitcast i64 %i.f to double
  %i.n = bitcast i64 %i.f to double
  %i.o = bitcast i64 %i.f to double
  %i.p = bitcast i64 %i.f to double
  br label %bb.t

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !167
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.r, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !25
  %i.u = fadd double %i.t, %.pre
  store double %i.u, ptr %i.s, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !167
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load <2 x double>, ptr %i.v, align 8, !tbaa !25
  %i.x = load <2 x double>, ptr %6, align 16, !tbaa !25
  %i.y = fadd <2 x double> %i.x, %i.w
  store <2 x double> %i.y, ptr %6, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !167
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre146 = load double, ptr %i.z, align 8, !tbaa !25
  %i.aa = load double, ptr %7, align 8, !tbaa !25
  %i.ab = fadd double %i.aa, %.pre146
  store double %i.ab, ptr %7, align 8, !tbaa !25
  %.not73137 = icmp ult i32 %i.c, 12
  br i1 %.not73137, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82
  %i.ac = load i64, ptr @_hb_NullPool, align 16   ; 14 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.af = bitcast i64 %i.ac to double
  %i.ag = bitcast i64 %i.ac to double
  %i.ah = bitcast i64 %i.ac to double
  %i.ai = bitcast i64 %i.ac to double
  %i.aj = bitcast i64 %i.ac to double
  %i.ak = bitcast i64 %i.ac to double
  br label %bb.b
end_hunk_0
begin_hunk_1_@_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE9vhcurvetoERS2_RS3_:bb.a
  %i.ci = fadd double %i.ch, %i.cg
  store double %i.ci, ptr %7, align 8, !tbaa !25
  %i.cj = add i32 %i.al, 8                        ; 2 uses
  %.not73 = icmp ugt i32 %i.cj, %i.bl
  br i1 %.not73, label %._crit_edge, label %bb.b, !llvm.loop !223

._crit_edge:                                      ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82
  %.0.lcssa = phi i32 [ 4, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.al, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 2 uses
  %i.ck = phi i32 [ %i.c, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.bl, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ]
  %i.cl = icmp ult i32 %.0.lcssa, %i.ck
  br i1 %i.cl, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit109, label %bb.s

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit109: ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = zext i32 %.0.lcssa to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !25
  %i.cr = load double, ptr %i.co, align 8, !tbaa !25
  %i.cs = fadd double %i.cq, %i.cr
  store double %i.cs, ptr %i.cp, align 8, !tbaa !25
  br label %bb.s

bb.s:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit109, %._crit_edge
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %.loopexit

bb.t:                                             ; preds = %.lr.ph142, %bb.an
  %i.ct = phi i32 [ %i.c, %.lr.ph142 ], [ %i.ey, %bb.an ] ; 4 uses
  %i.cu = phi i32 [ 8, %.lr.ph142 ], [ %i.ex, %bb.an ] ; 4 uses
  %.1141 = phi i32 [ 0, %.lr.ph142 ], [ %i.cu, %bb.an ] ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !167
  %.not.i.i110 = icmp ult i32 %.1141, %i.ct
  br i1 %.not.i.i110, label %bb.v, label %bb.u, !prof !58

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112

bb.v:                                             ; preds = %bb.t
  %i.cv = zext i32 %.1141 to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cv
  %.pre153 = load double, ptr %i.cw, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112: ; preds = %bb.u, %bb.v
  %i.cx = phi double [ %i.j, %bb.u ], [ %.pre153, %bb.v ]
  %i.cy = load double, ptr %i.h, align 8, !tbaa !25
  %i.cz = fadd double %i.cy, %i.cx
  store double %i.cz, ptr %i.h, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !167
  %i.da = or disjoint i32 %.1141, 1               ; 2 uses
  %.not.i.i113 = icmp ult i32 %i.da, %i.ct
  br i1 %.not.i.i113, label %bb.x, label %bb.w, !prof !58

bb.w:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115

bb.x:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.db
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115: ; preds = %bb.w, %bb.x
  %.0.i.i114 = phi ptr [ @_hb_CrapPool, %bb.w ], [ %i.dc, %bb.x ]
  %i.dd = or disjoint i32 %.1141, 2               ; 2 uses
  %.not.i.i116 = icmp ult i32 %i.dd, %i.ct
  br i1 %.not.i.i116, label %bb.z, label %bb.y, !prof !58

bb.y:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118

bb.z:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.de
  %.pre154 = load double, ptr %i.df, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118: ; preds = %bb.y, %bb.z
  %i.dg = phi double [ %i.k, %bb.y ], [ %.pre154, %bb.z ]
  %i.dh = load double, ptr %.0.i.i114, align 8, !tbaa !25
  %i.di = load <2 x double>, ptr %3, align 16, !tbaa !25
  %i.dj = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.dg, i64 1
  %i.dl = fadd <2 x double> %i.di, %i.dk
  store <2 x double> %i.dl, ptr %3, align 16, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !167
  %i.dm = or disjoint i32 %.1141, 3               ; 2 uses
  %.not.i.i119 = icmp ult i32 %i.dm, %i.ct
  br i1 %.not.i.i119, label %bb.ab, label %bb.aa, !prof !58

bb.aa:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121

bb.ab:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dn
  %.pre155 = load double, ptr %i.do, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121: ; preds = %bb.aa, %bb.ab
  %i.dp = phi double [ %i.l, %bb.aa ], [ %.pre155, %bb.ab ]
  %i.dq = load double, ptr %4, align 8, !tbaa !25
  %i.dr = fadd double %i.dq, %i.dp
  store double %i.dr, ptr %4, align 8, !tbaa !25
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !167
  %i.ds = or disjoint i32 %.1141, 4               ; 2 uses
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !109 ; 7 uses
  %.not.i.i122 = icmp ult i32 %i.ds, %i.dt
  br i1 %.not.i.i122, label %bb.ad, label %bb.ac, !prof !58

bb.ac:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124

bb.ad:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121
  %i.du = zext i32 %i.ds to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.du
  %.pre156 = load double, ptr %i.dv, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124: ; preds = %bb.ac, %bb.ad
  %i.dw = phi double [ %i.m, %bb.ac ], [ %.pre156, %bb.ad ]
  %i.dx = load double, ptr %2, align 8, !tbaa !25
  %i.dy = fadd double %i.dx, %i.dw
  store double %i.dy, ptr %2, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !167
  %i.dz = or disjoint i32 %.1141, 5               ; 2 uses
  %.not.i.i125 = icmp ult i32 %i.dz, %i.dt
  br i1 %.not.i.i125, label %bb.af, label %bb.ae, !prof !58

bb.ae:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127

bb.af:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ea
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127: ; preds = %bb.ae, %bb.af
  %.0.i.i126 = phi ptr [ @_hb_CrapPool, %bb.ae ], [ %i.eb, %bb.af ]
  %i.ec = or disjoint i32 %.1141, 6               ; 2 uses
  %.not.i.i128 = icmp ult i32 %i.ec, %i.dt
  br i1 %.not.i.i128, label %bb.ah, label %bb.ag, !prof !58

bb.ag:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130

bb.ah:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ed
  %.pre157 = load double, ptr %i.ee, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130: ; preds = %bb.ag, %bb.ah
  %i.ef = phi double [ %i.n, %bb.ag ], [ %.pre157, %bb.ah ]
  %i.eg = load double, ptr %.0.i.i126, align 8, !tbaa !25
  %i.eh = load <2 x double>, ptr %3, align 16, !tbaa !25
  %i.ei = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.ef, i64 1
  %i.ek = fadd <2 x double> %i.eh, %i.ej
  store <2 x double> %i.ek, ptr %3, align 16, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !167
  %i.el = or disjoint i32 %.1141, 7               ; 2 uses
  %.not.i.i131 = icmp ult i32 %i.el, %i.dt
  br i1 %.not.i.i131, label %bb.aj, label %bb.ai, !prof !58

bb.ai:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133

bb.aj:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.em
  %.pre158 = load double, ptr %i.en, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133: ; preds = %bb.ai, %bb.aj
  %i.eo = phi double [ %i.o, %bb.ai ], [ %.pre158, %bb.aj ]
  %i.ep = load double, ptr %i.i, align 8, !tbaa !25
  %i.eq = fadd double %i.ep, %i.eo
  store double %i.eq, ptr %i.i, align 8, !tbaa !25
  %i.er = sub i32 %i.dt, %.1141
  %8 = icmp ugt i32 %i.er, 15
  %9 = and i32 %i.dt, 1
  %.not72 = icmp eq i32 %9, 0
  %or.cond = or i1 %8, %.not72
  br i1 %or.cond, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133
  %.not.i.i134 = icmp ult i32 %i.cu, %i.dt
  br i1 %.not.i.i134, label %bb.am, label %bb.al, !prof !58

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136

bb.am:                                            ; preds = %bb.ak
  %i.es = zext i32 %i.cu to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.es
  %.pre159 = load double, ptr %i.et, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136: ; preds = %bb.al, %bb.am
  %i.eu = phi double [ %i.p, %bb.al ], [ %.pre159, %bb.am ]
  %i.ev = load double, ptr %4, align 8, !tbaa !25
  %i.ew = fadd double %i.ev, %i.eu
  store double %i.ew, ptr %4, align 8, !tbaa !25
  br label %bb.an

bb.an:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.ex = add i32 %i.cu, 8                        ; 2 uses
  %i.ey = load i32, ptr %i.b, align 4, !tbaa !109 ; 2 uses
  %.not71 = icmp ugt i32 %i.ex, %i.ey
  br i1 %.not71, label %.loopexit, label %bb.t, !llvm.loop !224

.loopexit:                                        ; preds = %bb.an, %.preheader, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE9hvcurvetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 8     ; 11 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 12 uses
  %4 = alloca %"struct.CFF::point_t", align 8     ; 10 uses
  %5 = alloca %"struct.CFF::point_t", align 8     ; 16 uses
  %6 = alloca %"struct.CFF::point_t", align 16    ; 17 uses
  %7 = alloca %"struct.CFF::point_t", align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !109  ; 5 uses
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82

.preheader:                                       ; preds = %bb.a
  %.not71140 = icmp ult i32 %i.c, 8
  br i1 %.not71140, label %.loopexit, label %.lr.ph142

.lr.ph142:                                        ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4448
  %i.f = load i64, ptr @_hb_NullPool, align 16    ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = bitcast i64 %i.f to double
  %i.k = bitcast i64 %i.f to double
  %i.l = bitcast i64 %i.f to double
  %i.m = bitcast i64 %i.f to double
  %i.n = bitcast i64 %i.f to double
  %i.o = bitcast i64 %i.f to double
  %i.p = bitcast i64 %i.f to double
  br label %bb.t

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !167
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.r, align 8, !tbaa !25
  %i.s = load double, ptr %5, align 8, !tbaa !25
  %i.t = fadd double %i.s, %.pre
  store double %i.t, ptr %5, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !167
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load <2 x double>, ptr %i.u, align 8, !tbaa !25
  %i.w = load <2 x double>, ptr %6, align 16, !tbaa !25
  %i.x = fadd <2 x double> %i.w, %i.v
  store <2 x double> %i.x, ptr %6, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !167
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre146 = load double, ptr %i.y, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !25
  %i.ab = fadd double %i.aa, %.pre146
  store double %i.ab, ptr %i.z, align 8, !tbaa !25
  %.not73137 = icmp ult i32 %i.c, 12
  br i1 %.not73137, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82
  %i.ac = load i64, ptr @_hb_NullPool, align 16   ; 14 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.af = bitcast i64 %i.ac to double
  %i.ag = bitcast i64 %i.ac to double
  %i.ah = bitcast i64 %i.ac to double
  %i.ai = bitcast i64 %i.ac to double
  %i.aj = bitcast i64 %i.ac to double
  %i.ak = bitcast i64 %i.ac to double
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106
  %i.al = phi i32 [ 12, %.lr.ph ], [ %i.cj, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 3 uses
  %.0138 = phi i32 [ 4, %.lr.ph ], [ %i.al, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 9 uses
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !167
  %i.am = load i32, ptr %i.b, align 4, !tbaa !109 ; 4 uses
  %.not.i.i83 = icmp ult i32 %.0138, %i.am
  br i1 %.not.i.i83, label %bb.d, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.ac, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit85

bb.d:                                             ; preds = %bb.b
  %i.an = zext i32 %.0138 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.an
  %.pre147 = load double, ptr %i.ao, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit85

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit85: ; preds = %bb.c, %bb.d
  %i.ap = phi double [ %i.af, %bb.c ], [ %.pre147, %bb.d ]
  %i.aq = load double, ptr %i.ae, align 8, !tbaa !25
  %i.ar = fadd double %i.aq, %i.ap
  store double %i.ar, ptr %i.ae, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !167
  %i.as = or disjoint i32 %.0138, 1               ; 2 uses
  %.not.i.i86 = icmp ult i32 %i.as, %i.am
  br i1 %.not.i.i86, label %bb.f, label %bb.e, !prof !58

bb.e:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit85
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.ac, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit88

bb.f:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit85
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.at
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit88

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit88: ; preds = %bb.e, %bb.f
  %.0.i.i87 = phi ptr [ @_hb_CrapPool, %bb.e ], [ %i.au, %bb.f ]
  %i.av = or disjoint i32 %.0138, 2               ; 2 uses
  %.not.i.i89 = icmp ult i32 %i.av, %i.am
  br i1 %.not.i.i89, label %bb.h, label %bb.g, !prof !58

bb.g:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit88
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.ac, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit91

bb.h:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit88
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aw
  %.pre148 = load double, ptr %i.ax, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit91

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit91: ; preds = %bb.g, %bb.h
  %i.ay = phi double [ %i.ag, %bb.g ], [ %.pre148, %bb.h ]
  %i.az = load double, ptr %.0.i.i87, align 8, !tbaa !25
  %i.ba = load <2 x double>, ptr %6, align 16, !tbaa !25
  %i.bb = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ay, i64 1
  %i.bd = fadd <2 x double> %i.ba, %i.bc
  store <2 x double> %i.bd, ptr %6, align 16, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !167
  %i.be = or disjoint i32 %.0138, 3               ; 2 uses
  %.not.i.i92 = icmp ult i32 %i.be, %i.am
  br i1 %.not.i.i92, label %bb.j, label %bb.i, !prof !58

bb.i:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit91
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.ac, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94

bb.j:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit91
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bf
  %.pre149 = load double, ptr %i.bg, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94: ; preds = %bb.i, %bb.j
  %i.bh = phi double [ %i.ah, %bb.i ], [ %.pre149, %bb.j ]
  %i.bi = load double, ptr %7, align 8, !tbaa !25
  %i.bj = fadd double %i.bi, %i.bh
  store double %i.bj, ptr %7, align 8, !tbaa !25
end_hunk_1
begin_hunk_2_@_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE9hvcurvetoERS2_RS3_:bb.a
  %i.ch = load double, ptr %i.z, align 8, !tbaa !25
  %i.ci = fadd double %i.ch, %i.cg
  store double %i.ci, ptr %i.z, align 8, !tbaa !25
  %i.cj = add i32 %i.al, 8                        ; 2 uses
  %.not73 = icmp ugt i32 %i.cj, %i.bl
  br i1 %.not73, label %._crit_edge, label %bb.b, !llvm.loop !225

._crit_edge:                                      ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82
  %.0.lcssa = phi i32 [ 4, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.al, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 2 uses
  %i.ck = phi i32 [ %i.c, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.bl, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ]
  %i.cl = icmp ult i32 %.0.lcssa, %i.ck
  br i1 %i.cl, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit109, label %bb.s

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit109: ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = zext i32 %.0.lcssa to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load double, ptr %7, align 8, !tbaa !25
  %i.cq = load double, ptr %i.co, align 8, !tbaa !25
  %i.cr = fadd double %i.cp, %i.cq
  store double %i.cr, ptr %7, align 8, !tbaa !25
  br label %bb.s

bb.s:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit109, %._crit_edge
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %.loopexit

bb.t:                                             ; preds = %.lr.ph142, %bb.an
  %i.cs = phi i32 [ %i.c, %.lr.ph142 ], [ %i.ex, %bb.an ] ; 4 uses
  %i.ct = phi i32 [ 8, %.lr.ph142 ], [ %i.ew, %bb.an ] ; 4 uses
  %.1141 = phi i32 [ 0, %.lr.ph142 ], [ %i.ct, %bb.an ] ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !167
  %.not.i.i110 = icmp ult i32 %.1141, %i.cs
  br i1 %.not.i.i110, label %bb.v, label %bb.u, !prof !58

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112

bb.v:                                             ; preds = %bb.t
  %i.cu = zext i32 %.1141 to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cu
  %.pre153 = load double, ptr %i.cv, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112: ; preds = %bb.u, %bb.v
  %i.cw = phi double [ %i.j, %bb.u ], [ %.pre153, %bb.v ]
  %i.cx = load double, ptr %2, align 8, !tbaa !25
  %i.cy = fadd double %i.cx, %i.cw
  store double %i.cy, ptr %2, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !167
  %i.cz = or disjoint i32 %.1141, 1               ; 2 uses
  %.not.i.i113 = icmp ult i32 %i.cz, %i.cs
  br i1 %.not.i.i113, label %bb.x, label %bb.w, !prof !58

bb.w:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115

bb.x:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.da
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115: ; preds = %bb.w, %bb.x
  %.0.i.i114 = phi ptr [ @_hb_CrapPool, %bb.w ], [ %i.db, %bb.x ]
  %i.dc = or disjoint i32 %.1141, 2               ; 2 uses
  %.not.i.i116 = icmp ult i32 %i.dc, %i.cs
  br i1 %.not.i.i116, label %bb.z, label %bb.y, !prof !58

bb.y:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118

bb.z:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dd
  %.pre154 = load double, ptr %i.de, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118: ; preds = %bb.y, %bb.z
  %i.df = phi double [ %i.k, %bb.y ], [ %.pre154, %bb.z ]
  %i.dg = load double, ptr %.0.i.i114, align 8, !tbaa !25
  %i.dh = load <2 x double>, ptr %3, align 16, !tbaa !25
  %i.di = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.df, i64 1
  %i.dk = fadd <2 x double> %i.dh, %i.dj
  store <2 x double> %i.dk, ptr %3, align 16, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !167
  %i.dl = or disjoint i32 %.1141, 3               ; 2 uses
  %.not.i.i119 = icmp ult i32 %i.dl, %i.cs
  br i1 %.not.i.i119, label %bb.ab, label %bb.aa, !prof !58

bb.aa:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121

bb.ab:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dm
  %.pre155 = load double, ptr %i.dn, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121: ; preds = %bb.aa, %bb.ab
  %i.do = phi double [ %i.l, %bb.aa ], [ %.pre155, %bb.ab ]
  %i.dp = load double, ptr %i.h, align 8, !tbaa !25
  %i.dq = fadd double %i.dp, %i.do
  store double %i.dq, ptr %i.h, align 8, !tbaa !25
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !167
  %i.dr = or disjoint i32 %.1141, 4               ; 2 uses
  %i.ds = load i32, ptr %i.b, align 4, !tbaa !109 ; 7 uses
  %.not.i.i122 = icmp ult i32 %i.dr, %i.ds
  br i1 %.not.i.i122, label %bb.ad, label %bb.ac, !prof !58

bb.ac:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124

bb.ad:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121
  %i.dt = zext i32 %i.dr to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dt
  %.pre156 = load double, ptr %i.du, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124: ; preds = %bb.ac, %bb.ad
  %i.dv = phi double [ %i.m, %bb.ac ], [ %.pre156, %bb.ad ]
  %i.dw = load double, ptr %i.i, align 8, !tbaa !25
  %i.dx = fadd double %i.dw, %i.dv
  store double %i.dx, ptr %i.i, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !167
  %i.dy = or disjoint i32 %.1141, 5               ; 2 uses
  %.not.i.i125 = icmp ult i32 %i.dy, %i.ds
  br i1 %.not.i.i125, label %bb.af, label %bb.ae, !prof !58

bb.ae:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127

bb.af:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dz
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127: ; preds = %bb.ae, %bb.af
  %.0.i.i126 = phi ptr [ @_hb_CrapPool, %bb.ae ], [ %i.ea, %bb.af ]
  %i.eb = or disjoint i32 %.1141, 6               ; 2 uses
  %.not.i.i128 = icmp ult i32 %i.eb, %i.ds
  br i1 %.not.i.i128, label %bb.ah, label %bb.ag, !prof !58

bb.ag:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130

bb.ah:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ec
  %.pre157 = load double, ptr %i.ed, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130: ; preds = %bb.ag, %bb.ah
  %i.ee = phi double [ %i.n, %bb.ag ], [ %.pre157, %bb.ah ]
  %i.ef = load double, ptr %.0.i.i126, align 8, !tbaa !25
  %i.eg = load <2 x double>, ptr %3, align 16, !tbaa !25
  %i.eh = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ee, i64 1
  %i.ej = fadd <2 x double> %i.eg, %i.ei
  store <2 x double> %i.ej, ptr %3, align 16, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !167
  %i.ek = or disjoint i32 %.1141, 7               ; 2 uses
  %.not.i.i131 = icmp ult i32 %i.ek, %i.ds
  br i1 %.not.i.i131, label %bb.aj, label %bb.ai, !prof !58

bb.ai:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133

bb.aj:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.el
  %.pre158 = load double, ptr %i.em, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133: ; preds = %bb.ai, %bb.aj
  %i.en = phi double [ %i.o, %bb.ai ], [ %.pre158, %bb.aj ]
  %i.eo = load double, ptr %4, align 8, !tbaa !25
  %i.ep = fadd double %i.eo, %i.en
  store double %i.ep, ptr %4, align 8, !tbaa !25
  %i.eq = sub i32 %i.ds, %.1141
  %8 = icmp ugt i32 %i.eq, 15
  %9 = and i32 %i.ds, 1
  %.not72 = icmp eq i32 %9, 0
  %or.cond = or i1 %8, %.not72
  br i1 %or.cond, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133
  %.not.i.i134 = icmp ult i32 %i.ct, %i.ds
  br i1 %.not.i.i134, label %bb.am, label %bb.al, !prof !58

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136

bb.am:                                            ; preds = %bb.ak
  %i.er = zext i32 %i.ct to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.er
  %.pre159 = load double, ptr %i.es, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136: ; preds = %bb.al, %bb.am
  %i.et = phi double [ %i.p, %bb.al ], [ %.pre159, %bb.am ]
  %i.eu = load double, ptr %i.h, align 8, !tbaa !25
  %i.ev = fadd double %i.eu, %i.et
  store double %i.ev, ptr %i.h, align 8, !tbaa !25
  br label %bb.an

bb.an:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.ew = add i32 %i.ct, 8                        ; 2 uses
  %i.ex = load i32, ptr %i.b, align 4, !tbaa !109 ; 2 uses
  %.not71 = icmp ugt i32 %i.ew, %i.ex
  br i1 %.not71, label %.loopexit, label %bb.t, !llvm.loop !226

.loopexit:                                        ; preds = %bb.an, %.preheader, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE5hflexERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 8     ; 8 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %5 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %6 = alloca %"struct.CFF::point_t", align 8     ; 8 uses
  %7 = alloca %"struct.CFF::point_t", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !109
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit29, label %bb.b, !prof !58

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit29: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !167
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load double, ptr %2, align 8, !tbaa !25
  %i.g = load double, ptr %i.e, align 8, !tbaa !25
  %i.h = fadd double %i.f, %i.g
  store double %i.h, ptr %2, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !167
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !25
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !25
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !167
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre30 = load double, ptr %i.m, align 8, !tbaa !25
  %i.n = load double, ptr %4, align 8, !tbaa !25
  %i.o = fadd double %i.n, %.pre30
  store double %i.o, ptr %4, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !167
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre31 = load double, ptr %i.p, align 8, !tbaa !25
  %i.q = load double, ptr %5, align 8, !tbaa !25
  %i.r = fadd double %i.q, %.pre31
  store double %i.r, ptr %5, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !167
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre32 = load double, ptr %i.s, align 8, !tbaa !25
  %i.t = load double, ptr %6, align 8, !tbaa !25
  %i.u = fadd double %i.t, %.pre32
  store double %i.u, ptr %6, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load i64, ptr %i.v, align 8, !tbaa !113
  store i64 %i.x, ptr %i.w, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !167
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre33 = load double, ptr %i.y, align 8, !tbaa !25
  %i.z = load double, ptr %7, align 8, !tbaa !25
  %i.aa = fadd double %i.z, %.pre33
  store double %i.aa, ptr %7, align 8, !tbaa !25
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !114
  %i.ad = add i32 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE4flexERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %5 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %6 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %7 = alloca %"struct.CFF::point_t", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !109
  %i.c = icmp eq i32 %i.b, 13
  br i1 %i.c, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49, label %bb.b, !prof !58

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !167
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !25
  %i.g = load <2 x double>, ptr %2, align 16, !tbaa !25
  %i.h = fadd <2 x double> %i.g, %i.f
  store <2 x double> %i.h, ptr %2, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !167
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !25
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !25
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !167
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !25
  %i.o = load <2 x double>, ptr %4, align 16, !tbaa !25
  %i.p = fadd <2 x double> %i.o, %i.n
  store <2 x double> %i.p, ptr %4, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !167
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load <2 x double>, ptr %i.q, align 8, !tbaa !25
  %i.s = load <2 x double>, ptr %5, align 16, !tbaa !25
  %i.t = fadd <2 x double> %i.s, %i.r
  store <2 x double> %i.t, ptr %5, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !167
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load <2 x double>, ptr %i.u, align 8, !tbaa !25
  %i.w = load <2 x double>, ptr %6, align 16, !tbaa !25
  %i.x = fadd <2 x double> %i.w, %i.v
  store <2 x double> %i.x, ptr %6, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !167
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !25
  %i.aa = load <2 x double>, ptr %7, align 16, !tbaa !25
  %i.ab = fadd <2 x double> %i.aa, %i.z
  store <2 x double> %i.ab, ptr %7, align 16, !tbaa !25
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !114
  %i.ae = add i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49
  ret void
}
end_hunk_2
begin_hunk_3_@_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE9vhcurvetoERS2_RS3_:bb.a
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112: ; preds = %bb.ag, %bb.ah
  %i.hj = phi double [ %i.j, %bb.ag ], [ %.pre309, %bb.ah ]
  %i.hk = fadd double %.sroa.11.0.copyload, %i.hj ; 2 uses
  %i.hl = or disjoint i32 %.1290, 1               ; 2 uses
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
  %i.ho = or disjoint i32 %.1290, 2               ; 2 uses
  %.not.i.i116 = icmp ult i32 %i.ho, %i.hf
  br i1 %.not.i.i116, label %bb.al, label %bb.ak, !prof !58

bb.ak:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118

bb.al:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.hp
  %.pre310 = load double, ptr %i.hq, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118: ; preds = %bb.ak, %bb.al
  %i.hr = phi double [ %i.k, %bb.ak ], [ %.pre310, %bb.al ]
  %i.hs = load double, ptr %.0.i.i114, align 8, !tbaa !25
  %i.ht = fadd double %.sroa.0275.0.copyload, %i.hs ; 3 uses
  %i.hu = fadd double %i.hk, %i.hr                ; 4 uses
  %i.hv = or disjoint i32 %.1290, 3               ; 2 uses
  %.not.i.i119 = icmp ult i32 %i.hv, %i.hf
  br i1 %.not.i.i119, label %bb.an, label %bb.am, !prof !58

bb.am:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121

bb.an:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.hw
  %.pre311 = load double, ptr %i.hx, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121: ; preds = %bb.am, %bb.an
  %i.hy = phi double [ %i.l, %bb.am ], [ %.pre311, %bb.an ]
  %i.hz = fadd double %i.ht, %i.hy                ; 3 uses
  %i.ia = load ptr, ptr %i.h, align 8, !tbaa !126 ; 2 uses
  %.not.i187 = icmp eq ptr %i.ia, null
  %i.ib = insertelement <2 x double> poison, double %i.hz, i64 0
  %i.ic = insertelement <2 x double> %i.ib, double %i.hu, i64 1 ; 2 uses
  %i.id = insertelement <2 x double> poison, double %.sroa.0275.0.copyload, i64 0
  %i.ie = insertelement <2 x double> %i.id, double %i.hk, i64 1 ; 2 uses
  br i1 %.not.i187, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121
  %i.if = load <2 x double>, ptr %i.ia, align 8, !tbaa !25 ; 3 uses
  %i.ig = extractelement <2 x double> %i.if, i64 0
  %i.ih = fadd <2 x double> %i.ie, %i.if
  %i.ii = fadd double %i.ht, %i.ig
  %i.ij = fadd <2 x double> %i.ic, %i.if
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121
  %.sroa.07.0.i191 = phi double [ %i.ht, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121 ], [ %i.ii, %bb.ao ]
  %i.ik = phi <2 x double> [ %i.ic, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121 ], [ %i.ij, %bb.ao ]
  %i.il = phi <2 x double> [ %i.ie, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121 ], [ %i.ih, %bb.ao ]
  %i.im = load ptr, ptr %i.i, align 8, !tbaa !123 ; 4 uses
  %i.in = load ptr, ptr %1, align 8, !tbaa !125
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 80
  %i.ip = load <2 x float>, ptr %i.io, align 8, !tbaa !27 ; 3 uses
  %i.iq = load ptr, ptr %i.im, align 8, !tbaa !130 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !131 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 3 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !132
  %.not.i.i194 = icmp eq i32 %i.iu, 0
  br i1 %.not.i.i194, label %bb.aq, label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i195, !prof !56

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.iq, ptr noundef %i.is, ptr noundef nonnull align 4 dereferenceable(48) %i.it)
  br label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i195

_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i195: ; preds = %bb.aq, %bb.ap
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !168
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 56
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !146 ; 2 uses
  %.not.i4.i196 = icmp eq ptr %i.iy, null
  br i1 %.not.i4.i196, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit197, label %bb.ar

bb.ar:                                            ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i195
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !169
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit197

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit197: ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i195, %bb.ar
  %i.jb = phi ptr [ %i.ja, %bb.ar ], [ null, %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i195 ]
  %i.jc = fptrunc <2 x double> %i.ik to <2 x float>
  %i.jd = fptrunc double %.sroa.07.0.i191 to float
  %i.je = extractelement <2 x float> %i.ip, i64 0
  %i.jf = fmul float %i.je, %i.jd
  %i.jg = fptrunc <2 x double> %i.il to <2 x float>
  %i.jh = fmul <2 x float> %i.ip, %i.jg           ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.im, i64 28
  %i.jj = fmul <2 x float> %i.ip, %i.jc           ; 3 uses
  %i.jk = extractelement <2 x float> %i.jj, i64 0
  %i.jl = extractelement <2 x float> %i.jj, i64 1 ; 2 uses
  %i.jm = extractelement <2 x float> %i.jh, i64 0
  %i.jn = extractelement <2 x float> %i.jh, i64 1
  tail call void %i.iw(ptr noundef nonnull align 8 dereferenceable(72) %i.iq, ptr noundef %i.is, ptr noundef nonnull align 4 dereferenceable(48) %i.it, float noundef %i.jm, float noundef %i.jn, float noundef %i.jf, float noundef %i.jl, float noundef %i.jk, float noundef %i.jl, ptr noundef %i.jb) #5, !inline_history !7
  store <2 x float> %i.jj, ptr %i.ji, align 4, !tbaa !27
  store double %i.hz, ptr %i.e, align 8, !tbaa !113
  store double %i.hu, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !113
  %i.jo = or disjoint i32 %.1290, 4               ; 2 uses
  %i.jp = load i32, ptr %i.b, align 4, !tbaa !109 ; 7 uses
  %.not.i.i122 = icmp ult i32 %i.jo, %i.jp
  br i1 %.not.i.i122, label %bb.at, label %bb.as, !prof !58

bb.as:                                            ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit197
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124

bb.at:                                            ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit197
  %i.jq = zext i32 %i.jo to i64
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
  %2 = icmp ugt i32 %i.kj, 15
  %3 = and i32 %i.jp, 1
  %.not72 = icmp eq i32 %3, 0
  %or.cond = or i1 %2, %.not72
  br i1 %or.cond, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133
  %.not.i.i134 = icmp ult i32 %i.hg, %i.jp
  br i1 %.not.i.i134, label %bb.bc, label %bb.bb, !prof !58

bb.bb:                                            ; preds = %bb.ba
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136

bb.bc:                                            ; preds = %bb.ba
  %i.kk = zext i32 %i.hg to i64
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.kk
  %.pre315 = load double, ptr %i.kl, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136: ; preds = %bb.bb, %bb.bc
  %i.km = phi double [ %i.p, %bb.bb ], [ %.pre315, %bb.bc ]
  %i.kn = fadd double %i.kc, %i.km
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133
  %.sroa.0254.0 = phi double [ %i.kc, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133 ], [ %i.kn, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136 ] ; 3 uses
  %i.ko = load ptr, ptr %i.h, align 8, !tbaa !126 ; 2 uses
  %.not.i207 = icmp eq ptr %i.ko, null
  %i.kp = insertelement <2 x double> poison, double %.sroa.0254.0, i64 0
  %i.kq = insertelement <2 x double> %i.kp, double %i.ki, i64 1 ; 2 uses
  %i.kr = insertelement <4 x double> poison, double %i.kc, i64 0
  %i.ks = insertelement <4 x double> %i.kr, double %i.kd, i64 1
  %i.kt = insertelement <4 x double> %i.ks, double %i.jt, i64 2
  %i.ku = insertelement <4 x double> %i.kt, double %i.hu, i64 3 ; 2 uses
  br i1 %.not.i207, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kv = load <2 x double>, ptr %i.ko, align 8, !tbaa !25 ; 2 uses
  %i.kw = shufflevector <2 x double> %i.kv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.kx = fadd <4 x double> %i.ku, %i.kw
  %i.ky = fadd <2 x double> %i.kq, %i.kv
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.kz = phi <2 x double> [ %i.kq, %bb.bd ], [ %i.ky, %bb.be ]
  %i.la = phi <4 x double> [ %i.ku, %bb.bd ], [ %i.kx, %bb.be ]
  %i.lb = load ptr, ptr %i.i, align 8, !tbaa !123 ; 4 uses
  %i.lc = load ptr, ptr %1, align 8, !tbaa !125
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 80
  %i.le = load <2 x float>, ptr %i.ld, align 8, !tbaa !27 ; 2 uses
  %i.lf = load ptr, ptr %i.lb, align 8, !tbaa !130 ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !131 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 3 uses
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !132
  %.not.i.i214 = icmp eq i32 %i.lj, 0
  br i1 %.not.i.i214, label %bb.bg, label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215, !prof !56

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.lf, ptr noundef %i.lh, ptr noundef nonnull align 4 dereferenceable(48) %i.li)
  br label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215

_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215: ; preds = %bb.bg, %bb.bf
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 40
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !168
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 56
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !146 ; 2 uses
  %.not.i4.i216 = icmp eq ptr %i.ln, null
  br i1 %.not.i4.i216, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217, label %bb.bh

bb.bh:                                            ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !169
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217: ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215, %bb.bh
  %i.lq = phi ptr [ %i.lp, %bb.bh ], [ null, %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215 ]
  %i.lr = fptrunc <2 x double> %i.kz to <2 x float>
  %i.ls = fptrunc <4 x double> %i.la to <4 x float>
  %i.lt = shufflevector <2 x float> %i.le, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lu = fmul <4 x float> %i.lt, %i.ls           ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lb, i64 28
  %i.lw = fmul <2 x float> %i.le, %i.lr           ; 3 uses
  %i.lx = extractelement <2 x float> %i.lw, i64 0
  %i.ly = extractelement <2 x float> %i.lw, i64 1
  %i.lz = extractelement <4 x float> %i.lu, i64 0
  %i.ma = extractelement <4 x float> %i.lu, i64 1
  %i.mb = extractelement <4 x float> %i.lu, i64 2
  %i.mc = extractelement <4 x float> %i.lu, i64 3
  tail call void %i.ll(ptr noundef nonnull align 8 dereferenceable(72) %i.lf, ptr noundef %i.lh, ptr noundef nonnull align 4 dereferenceable(48) %i.li, float noundef %i.mb, float noundef %i.mc, float noundef %i.lz, float noundef %i.ma, float noundef %i.lx, float noundef %i.ly, ptr noundef %i.lq) #5, !inline_history !7
  store <2 x float> %i.lw, ptr %i.lv, align 4, !tbaa !27
  store double %.sroa.0254.0, ptr %i.e, align 8, !tbaa !113
  store double %i.ki, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !113
  %i.md = add i32 %i.hg, 8                        ; 2 uses
  %i.me = load i32, ptr %i.b, align 4, !tbaa !109 ; 2 uses
  %.not71 = icmp ugt i32 %i.md, %i.me
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
  %.sroa.0249.0.copyload = load double, ptr %i.q, align 8, !tbaa !113
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 4 uses
  %.sroa.15.0.copyload = load double, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !113 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.r, align 8, !tbaa !25
  %i.s = fadd double %.sroa.0249.0.copyload, %.pre ; 3 uses
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
end_hunk_3
begin_hunk_4_@_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE9hvcurvetoERS2_RS3_:bb.a
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
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 3 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !132
  %.not.i.i194 = icmp eq i32 %i.iu, 0
  br i1 %.not.i.i194, label %bb.aq, label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i195, !prof !56

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.iq, ptr noundef %i.is, ptr noundef nonnull align 4 dereferenceable(48) %i.it)
  br label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i195

_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i195: ; preds = %bb.aq, %bb.ap
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !168
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 56
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !146 ; 2 uses
  %.not.i4.i196 = icmp eq ptr %i.iy, null
  br i1 %.not.i4.i196, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit197, label %bb.ar

bb.ar:                                            ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i195
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !169
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit197

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit197: ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i195, %bb.ar
  %i.jb = phi ptr [ %i.ja, %bb.ar ], [ null, %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i195 ]
  %i.jc = fptrunc <2 x double> %i.ik to <2 x float>
  %i.jd = fptrunc double %.sroa.69.0.i190 to float
  %i.je = extractelement <2 x float> %i.ip, i64 1
  %i.jf = fmul float %i.je, %i.jd
  %i.jg = fptrunc <2 x double> %i.il to <2 x float>
  %i.jh = fmul <2 x float> %i.ip, %i.jg           ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.im, i64 28
  %i.jj = fmul <2 x float> %i.ip, %i.jc           ; 3 uses
  %i.jk = extractelement <2 x float> %i.jj, i64 0 ; 2 uses
  %i.jl = extractelement <2 x float> %i.jj, i64 1
  %i.jm = extractelement <2 x float> %i.jh, i64 0
  %i.jn = extractelement <2 x float> %i.jh, i64 1
  tail call void %i.iw(ptr noundef nonnull align 8 dereferenceable(72) %i.iq, ptr noundef %i.is, ptr noundef nonnull align 4 dereferenceable(48) %i.it, float noundef %i.jm, float noundef %i.jn, float noundef %i.jk, float noundef %i.jf, float noundef %i.jk, float noundef %i.jl, ptr noundef %i.jb) #5, !inline_history !7
  store <2 x float> %i.jj, ptr %i.ji, align 4, !tbaa !27
  store double %i.ht, ptr %i.e, align 8, !tbaa !113
  store double %i.hz, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !113
  %i.jo = or disjoint i32 %.1289, 4               ; 2 uses
  %i.jp = load i32, ptr %i.b, align 4, !tbaa !109 ; 7 uses
  %.not.i.i122 = icmp ult i32 %i.jo, %i.jp
  br i1 %.not.i.i122, label %bb.at, label %bb.as, !prof !58

bb.as:                                            ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit197
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124

bb.at:                                            ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit197
  %i.jq = zext i32 %i.jo to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.jq
  %.pre311 = load double, ptr %i.jr, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124: ; preds = %bb.as, %bb.at
  %i.js = phi double [ %i.m, %bb.as ], [ %.pre311, %bb.at ]
  %i.jt = fadd double %i.hz, %i.js                ; 2 uses
  %i.ju = or disjoint i32 %.1289, 5               ; 2 uses
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
  %i.jx = or disjoint i32 %.1289, 6               ; 2 uses
  %.not.i.i128 = icmp ult i32 %i.jx, %i.jp
  br i1 %.not.i.i128, label %bb.ax, label %bb.aw, !prof !58

bb.aw:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130

bb.ax:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127
  %i.jy = zext i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.jy
  %.pre312 = load double, ptr %i.jz, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130: ; preds = %bb.aw, %bb.ax
  %i.ka = phi double [ %i.n, %bb.aw ], [ %.pre312, %bb.ax ]
  %i.kb = load double, ptr %.0.i.i126, align 8, !tbaa !25
  %i.kc = fadd double %i.ht, %i.kb                ; 2 uses
  %i.kd = fadd double %i.jt, %i.ka                ; 3 uses
  %i.ke = or disjoint i32 %.1289, 7               ; 2 uses
  %.not.i.i131 = icmp ult i32 %i.ke, %i.jp
  br i1 %.not.i.i131, label %bb.az, label %bb.ay, !prof !58

bb.ay:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133

bb.az:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.kf
  %.pre313 = load double, ptr %i.kg, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133: ; preds = %bb.ay, %bb.az
  %i.kh = phi double [ %i.o, %bb.ay ], [ %.pre313, %bb.az ]
  %i.ki = fadd double %i.kc, %i.kh                ; 3 uses
  %i.kj = sub i32 %i.jp, %.1289
  %2 = icmp ugt i32 %i.kj, 15
  %3 = and i32 %i.jp, 1
  %.not72 = icmp eq i32 %3, 0
  %or.cond = or i1 %2, %.not72
  br i1 %or.cond, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133
  %.not.i.i134 = icmp ult i32 %i.hg, %i.jp
  br i1 %.not.i.i134, label %bb.bc, label %bb.bb, !prof !58

bb.bb:                                            ; preds = %bb.ba
  store i8 1, ptr %i.a, align 8, !tbaa !162
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136

bb.bc:                                            ; preds = %bb.ba
  %i.kk = zext i32 %i.hg to i64
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.kk
  %.pre314 = load double, ptr %i.kl, align 8, !tbaa !25
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136: ; preds = %bb.bb, %bb.bc
  %i.km = phi double [ %i.p, %bb.bb ], [ %.pre314, %bb.bc ]
  %i.kn = fadd double %i.kd, %i.km
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133
  %.sroa.12.0 = phi double [ %i.kd, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133 ], [ %i.kn, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136 ] ; 3 uses
  %i.ko = load ptr, ptr %i.h, align 8, !tbaa !126 ; 2 uses
  %.not.i207 = icmp eq ptr %i.ko, null
  %i.kp = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.kq = insertelement <2 x double> %i.kp, double %.sroa.12.0, i64 1 ; 2 uses
  %i.kr = insertelement <4 x double> poison, double %i.kc, i64 0
  %i.ks = insertelement <4 x double> %i.kr, double %i.kd, i64 1
  %i.kt = insertelement <4 x double> %i.ks, double %i.ht, i64 2
  %i.ku = insertelement <4 x double> %i.kt, double %i.jt, i64 3 ; 2 uses
  br i1 %.not.i207, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kv = load <2 x double>, ptr %i.ko, align 8, !tbaa !25 ; 2 uses
  %i.kw = shufflevector <2 x double> %i.kv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.kx = fadd <4 x double> %i.ku, %i.kw
  %i.ky = fadd <2 x double> %i.kq, %i.kv
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.kz = phi <2 x double> [ %i.kq, %bb.bd ], [ %i.ky, %bb.be ]
  %i.la = phi <4 x double> [ %i.ku, %bb.bd ], [ %i.kx, %bb.be ]
  %i.lb = load ptr, ptr %i.i, align 8, !tbaa !123 ; 4 uses
  %i.lc = load ptr, ptr %1, align 8, !tbaa !125
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 80
  %i.le = load <2 x float>, ptr %i.ld, align 8, !tbaa !27 ; 2 uses
  %i.lf = load ptr, ptr %i.lb, align 8, !tbaa !130 ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !131 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 3 uses
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !132
  %.not.i.i214 = icmp eq i32 %i.lj, 0
  br i1 %.not.i.i214, label %bb.bg, label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215, !prof !56

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.lf, ptr noundef %i.lh, ptr noundef nonnull align 4 dereferenceable(48) %i.li)
  br label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215

_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215: ; preds = %bb.bg, %bb.bf
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 40
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !168
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 56
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !146 ; 2 uses
  %.not.i4.i216 = icmp eq ptr %i.ln, null
  br i1 %.not.i4.i216, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217, label %bb.bh

bb.bh:                                            ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !169
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217: ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215, %bb.bh
  %i.lq = phi ptr [ %i.lp, %bb.bh ], [ null, %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i215 ]
  %i.lr = fptrunc <2 x double> %i.kz to <2 x float>
  %i.ls = fptrunc <4 x double> %i.la to <4 x float>
  %i.lt = shufflevector <2 x float> %i.le, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lu = fmul <4 x float> %i.lt, %i.ls           ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lb, i64 28
  %i.lw = fmul <2 x float> %i.le, %i.lr           ; 3 uses
  %i.lx = extractelement <2 x float> %i.lw, i64 0
  %i.ly = extractelement <2 x float> %i.lw, i64 1
  %i.lz = extractelement <4 x float> %i.lu, i64 0
  %i.ma = extractelement <4 x float> %i.lu, i64 1
  %i.mb = extractelement <4 x float> %i.lu, i64 2
  %i.mc = extractelement <4 x float> %i.lu, i64 3
  tail call void %i.ll(ptr noundef nonnull align 8 dereferenceable(72) %i.lf, ptr noundef %i.lh, ptr noundef nonnull align 4 dereferenceable(48) %i.li, float noundef %i.mb, float noundef %i.mc, float noundef %i.lz, float noundef %i.ma, float noundef %i.lx, float noundef %i.ly, ptr noundef %i.lq) #5, !inline_history !7
  store <2 x float> %i.lw, ptr %i.lv, align 4, !tbaa !27
  store double %i.ki, ptr %i.e, align 8, !tbaa !113
  store double %.sroa.12.0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !113
  %i.md = add i32 %i.hg, 8                        ; 2 uses
  %i.me = load i32, ptr %i.b, align 4, !tbaa !109 ; 2 uses
  %.not71 = icmp ugt i32 %i.md, %i.me
  br i1 %.not71, label %.loopexit, label %bb.af, !llvm.loop !239

.loopexit:                                        ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217, %.preheader, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit177
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE5hflexERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !109
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit29, label %bb.j, !prof !58

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit29: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 3 uses
  %.sroa.064.0.copyload = load double, ptr %i.d, align 8, !tbaa !113
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 3 uses
  %.sroa.765.0.copyload = load double, ptr %.sroa.765.0..sroa_idx, align 8, !tbaa !113 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !25
  %i.g = fadd double %.sroa.064.0.copyload, %i.f  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load double, ptr %i.i, align 8, !tbaa !25
  %i.j = load double, ptr %i.h, align 8, !tbaa !25
  %i.k = fadd double %i.g, %i.j                   ; 3 uses
  %i.l = fadd double %.sroa.765.0.copyload, %.pre ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre66 = load double, ptr %i.m, align 8, !tbaa !25
  %i.n = fadd double %i.k, %.pre66                ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre67 = load double, ptr %i.o, align 8, !tbaa !25
  %i.p = fadd double %i.n, %.pre67                ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre68 = load double, ptr %i.q, align 8, !tbaa !25
  %i.r = fadd double %i.p, %.pre68                ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre69 = load double, ptr %i.s, align 8, !tbaa !25
  %i.t = fadd double %i.r, %.pre69                ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !126  ; 3 uses
  %.not.i40 = icmp eq ptr %i.v, null
  br i1 %.not.i40, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit29
  %i.w = load double, ptr %i.v, align 8, !tbaa !25 ; 3 uses
  %i.x = fadd double %i.g, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !25 ; 2 uses
  %i.aa = fadd double %.sroa.765.0.copyload, %i.z
  %i.ab = fadd double %i.k, %i.w
  %i.ac = fadd double %i.l, %i.z
  %i.ad = fadd double %i.n, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit29
  %.sroa.613.0.i41 = phi double [ %.sroa.765.0.copyload, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit29 ], [ %i.aa, %bb.b ]
  %.sroa.011.0.i42 = phi double [ %i.g, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit29 ], [ %i.x, %bb.b ]
  %.sroa.69.0.i43 = phi double [ %i.l, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit29 ], [ %i.ac, %bb.b ]
  %.sroa.07.0.i44 = phi double [ %i.k, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit29 ], [ %i.ab, %bb.b ]
  %.sroa.0.0.i46 = phi double [ %i.n, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit29 ], [ %i.ad, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !123 ; 5 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !125   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !185 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 84
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !186 ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !130 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !131 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !132
  %.not.i.i47 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i47, label %bb.d, label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i48, !prof !56

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef %i.an, ptr noundef nonnull align 4 dereferenceable(48) %i.ao)
  br label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i48

_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i48: ; preds = %bb.d, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !168
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !146 ; 2 uses
  %.not.i4.i49 = icmp eq ptr %i.at, null
  br i1 %.not.i4.i49, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit50, label %bb.e

bb.e:                                             ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i48
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !169
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit50

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit50: ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i48, %bb.e
  %i.aw = phi ptr [ %i.av, %bb.e ], [ null, %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i48 ]
  %i.ax = fptrunc double %.sroa.69.0.i43 to float
  %i.ay = fmul float %i.ak, %i.ax                 ; 3 uses
  %i.az = fptrunc double %.sroa.0.0.i46 to float
  %i.ba = fmul float %i.ai, %i.az                 ; 2 uses
  %i.bb = fptrunc double %.sroa.07.0.i44 to float
  %i.bc = fmul float %i.ai, %i.bb
  %i.bd = fptrunc double %.sroa.613.0.i41 to float
  %i.be = fmul float %i.ak, %i.bd
  %i.bf = fptrunc double %.sroa.011.0.i42 to float
  %i.bg = fmul float %i.ai, %i.bf
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef %i.an, ptr noundef nonnull align 4 dereferenceable(48) %i.ao, float noundef %i.bg, float noundef %i.be, float noundef %i.bc, float noundef %i.ay, float noundef %i.ba, float noundef %i.ay, ptr noundef %i.aw) #5, !inline_history !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  store float %i.ba, ptr %i.bh, align 4, !tbaa !134
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store float %i.ay, ptr %i.bi, align 8, !tbaa !136
  store double %i.n, ptr %i.d, align 8, !tbaa !113
  store double %i.l, ptr %.sroa.765.0..sroa_idx, align 8, !tbaa !113
  %i.bj = load ptr, ptr %i.u, align 8, !tbaa !126 ; 3 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit50
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !25 ; 3 uses
  %i.bl = fadd double %i.p, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !25 ; 2 uses
  %i.bo = fadd double %i.l, %i.bn
  %i.bp = fadd double %i.r, %i.bk
  %i.bq = fadd double %.sroa.765.0.copyload, %i.bn
  %i.br = fadd double %i.t, %i.bk
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit50
  %.sroa.613.0.i = phi double [ %i.l, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit50 ], [ %i.bo, %bb.f ]
end_hunk_4
