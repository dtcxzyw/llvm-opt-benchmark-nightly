Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-ot-cff2-table?download=true
inline.NumInlined: 1161
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE9hvcurvetoERS4_RS5_:bb.a
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.da
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit115

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit115: ; preds = %bb.w, %bb.x
  %.0.i.i114 = phi ptr [ @_hb_CrapPool, %bb.w ], [ %i.db, %bb.x ]
  %i.dc = or disjoint i32 %.1141, 2               ; 2 uses
  %.not.i.i116 = icmp ult i32 %i.dc, %i.cs
  br i1 %.not.i.i116, label %bb.z, label %bb.y, !prof !64

bb.y:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit115
  store i8 1, ptr %i.a, align 8, !tbaa !150
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit118

bb.z:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit115
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dd
  %.pre154 = load double, ptr %i.de, align 8, !tbaa !118
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit118

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit118: ; preds = %bb.y, %bb.z
  %i.df = phi double [ %i.k, %bb.y ], [ %.pre154, %bb.z ]
  %i.dg = load double, ptr %.0.i.i114, align 8, !tbaa !118
  %i.dh = load <2 x double>, ptr %3, align 16, !tbaa !118
  %i.di = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.df, i64 1
  %i.dk = fadd <2 x double> %i.dh, %i.dj
  store <2 x double> %i.dk, ptr %3, align 16, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !175
  %i.dl = or disjoint i32 %.1141, 3               ; 2 uses
  %.not.i.i119 = icmp ult i32 %i.dl, %i.cs
  br i1 %.not.i.i119, label %bb.ab, label %bb.aa, !prof !64

bb.aa:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit118
  store i8 1, ptr %i.a, align 8, !tbaa !150
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit121

bb.ab:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit118
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dm
  %.pre155 = load double, ptr %i.dn, align 8, !tbaa !118
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit121

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit121: ; preds = %bb.aa, %bb.ab
  %i.do = phi double [ %i.l, %bb.aa ], [ %.pre155, %bb.ab ]
  %i.dp = load double, ptr %i.h, align 8, !tbaa !118
  %i.dq = fadd double %i.dp, %i.do
  store double %i.dq, ptr %i.h, align 8, !tbaa !118
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !175
  %i.dr = or disjoint i32 %.1141, 4               ; 2 uses
  %i.ds = load i32, ptr %i.b, align 4, !tbaa !149 ; 7 uses
  %.not.i.i122 = icmp ult i32 %i.dr, %i.ds
  br i1 %.not.i.i122, label %bb.ad, label %bb.ac, !prof !64

bb.ac:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit121
  store i8 1, ptr %i.a, align 8, !tbaa !150
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit124

bb.ad:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit121
  %i.dt = zext i32 %i.dr to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dt
  %.pre156 = load double, ptr %i.du, align 8, !tbaa !118
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit124

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit124: ; preds = %bb.ac, %bb.ad
  %i.dv = phi double [ %i.m, %bb.ac ], [ %.pre156, %bb.ad ]
  %i.dw = load double, ptr %i.i, align 8, !tbaa !118
  %i.dx = fadd double %i.dw, %i.dv
  store double %i.dx, ptr %i.i, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !175
  %i.dy = or disjoint i32 %.1141, 5               ; 2 uses
  %.not.i.i125 = icmp ult i32 %i.dy, %i.ds
  br i1 %.not.i.i125, label %bb.af, label %bb.ae, !prof !64

bb.ae:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit124
  store i8 1, ptr %i.a, align 8, !tbaa !150
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit127

bb.af:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit124
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dz
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit127

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit127: ; preds = %bb.ae, %bb.af
  %.0.i.i126 = phi ptr [ @_hb_CrapPool, %bb.ae ], [ %i.ea, %bb.af ]
  %i.eb = or disjoint i32 %.1141, 6               ; 2 uses
  %.not.i.i128 = icmp ult i32 %i.eb, %i.ds
  br i1 %.not.i.i128, label %bb.ah, label %bb.ag, !prof !64

bb.ag:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit127
  store i8 1, ptr %i.a, align 8, !tbaa !150
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit130

bb.ah:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit127
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ec
  %.pre157 = load double, ptr %i.ed, align 8, !tbaa !118
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit130

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit130: ; preds = %bb.ag, %bb.ah
  %i.ee = phi double [ %i.n, %bb.ag ], [ %.pre157, %bb.ah ]
  %i.ef = load double, ptr %.0.i.i126, align 8, !tbaa !118
  %i.eg = load <2 x double>, ptr %3, align 16, !tbaa !118
  %i.eh = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ee, i64 1
  %i.ej = fadd <2 x double> %i.eg, %i.ei
  store <2 x double> %i.ej, ptr %3, align 16, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !175
  %i.ek = or disjoint i32 %.1141, 7               ; 2 uses
  %.not.i.i131 = icmp ult i32 %i.ek, %i.ds
  br i1 %.not.i.i131, label %bb.aj, label %bb.ai, !prof !64

bb.ai:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit130
  store i8 1, ptr %i.a, align 8, !tbaa !150
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit133

bb.aj:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit130
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.el
  %.pre158 = load double, ptr %i.em, align 8, !tbaa !118
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit133

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit133: ; preds = %bb.ai, %bb.aj
  %i.en = phi double [ %i.o, %bb.ai ], [ %.pre158, %bb.aj ]
  %i.eo = load double, ptr %4, align 8, !tbaa !118
  %i.ep = fadd double %i.eo, %i.en
  store double %i.ep, ptr %4, align 8, !tbaa !118
  %i.eq = sub i32 %i.ds, %.1141
  %i.er = icmp ugt i32 %i.eq, 15
  %i.es = and i32 %i.ds, 1
  %.not72 = icmp eq i32 %i.es, 0
  %or.cond = or i1 %i.er, %.not72
  br i1 %or.cond, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit133
  %.not.i.i134 = icmp ult i32 %i.ct, %i.ds
  br i1 %.not.i.i134, label %bb.am, label %bb.al, !prof !64

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.a, align 8, !tbaa !150
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136

bb.am:                                            ; preds = %bb.ak
  %i.et = zext i32 %i.ct to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.et
  %.pre159 = load double, ptr %i.eu, align 8, !tbaa !118
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136: ; preds = %bb.al, %bb.am
  %i.ev = phi double [ %i.p, %bb.al ], [ %.pre159, %bb.am ]
  %i.ew = load double, ptr %i.h, align 8, !tbaa !118
  %i.ex = fadd double %i.ew, %i.ev
  store double %i.ex, ptr %i.h, align 8, !tbaa !118
  br label %bb.an

bb.an:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit133
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.ey = add i32 %i.ct, 8                        ; 2 uses
  %i.ez = load i32, ptr %i.b, align 4, !tbaa !149 ; 2 uses
  %.not71 = icmp ugt i32 %i.ey, %i.ez
  br i1 %.not71, label %.loopexit, label %bb.t, !llvm.loop !184

.loopexit:                                        ; preds = %bb.an, %.preheader, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE5hflexERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 8     ; 8 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %5 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %6 = alloca %"struct.CFF::point_t", align 8     ; 8 uses
  %7 = alloca %"struct.CFF::point_t", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit29, label %bb.b, !prof !64

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit29: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load double, ptr %2, align 8, !tbaa !118
  %i.g = load double, ptr %i.e, align 8, !tbaa !118
  %i.h = fadd double %i.f, %i.g
  store double %i.h, ptr %2, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !175
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !118
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !118
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !175
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre30 = load double, ptr %i.m, align 8, !tbaa !118
  %i.n = load double, ptr %4, align 8, !tbaa !118
  %i.o = fadd double %i.n, %.pre30
  store double %i.o, ptr %4, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !175
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre31 = load double, ptr %i.p, align 8, !tbaa !118
  %i.q = load double, ptr %5, align 8, !tbaa !118
  %i.r = fadd double %i.q, %.pre31
  store double %i.r, ptr %5, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !175
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre32 = load double, ptr %i.s, align 8, !tbaa !118
  %i.t = load double, ptr %6, align 8, !tbaa !118
  %i.u = fadd double %i.t, %.pre32
  store double %i.u, ptr %6, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load i64, ptr %i.v, align 8, !tbaa !154
  store i64 %i.x, ptr %i.w, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !175
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre33 = load double, ptr %i.y, align 8, !tbaa !118
  %i.z = load double, ptr %7, align 8, !tbaa !118
  %i.aa = fadd double %i.z, %.pre33
  store double %i.aa, ptr %7, align 8, !tbaa !118
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !126
  %i.ad = add i32 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE4flexERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %5 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %6 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %7 = alloca %"struct.CFF::point_t", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149
  %i.c = icmp eq i32 %i.b, 13
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49, label %bb.b, !prof !64

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !118
  %i.g = load <2 x double>, ptr %2, align 16, !tbaa !118
  %i.h = fadd <2 x double> %i.g, %i.f
  store <2 x double> %i.h, ptr %2, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !175
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !118
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !118
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !175
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !118
  %i.o = load <2 x double>, ptr %4, align 16, !tbaa !118
  %i.p = fadd <2 x double> %i.o, %i.n
  store <2 x double> %i.p, ptr %4, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !175
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load <2 x double>, ptr %i.q, align 8, !tbaa !118
  %i.s = load <2 x double>, ptr %5, align 16, !tbaa !118
  %i.t = fadd <2 x double> %i.s, %i.r
  store <2 x double> %i.t, ptr %5, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !175
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load <2 x double>, ptr %i.u, align 8, !tbaa !118
  %i.w = load <2 x double>, ptr %6, align 16, !tbaa !118
  %i.x = fadd <2 x double> %i.w, %i.v
  store <2 x double> %i.x, ptr %6, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !175
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !118
  %i.aa = load <2 x double>, ptr %7, align 16, !tbaa !118
  %i.ab = fadd <2 x double> %i.aa, %i.z
  store <2 x double> %i.ab, ptr %7, align 16, !tbaa !118
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !126
  %i.ae = add i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE6hflex1ERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %5 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %6 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %7 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149
  %i.c = icmp eq i32 %i.b, 9
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit38, label %bb.b, !prof !64

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit38: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !118
  %i.g = load <2 x double>, ptr %2, align 16, !tbaa !118
  %i.h = fadd <2 x double> %i.g, %i.f
  store <2 x double> %i.h, ptr %2, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !175
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !118
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !118
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !175
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre40 = load double, ptr %i.m, align 8, !tbaa !118
  %i.n = load double, ptr %4, align 8, !tbaa !118
  %i.o = fadd double %i.n, %.pre40
  store double %i.o, ptr %4, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !175
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre41 = load double, ptr %i.p, align 8, !tbaa !118
  %i.q = load double, ptr %5, align 8, !tbaa !118
  %i.r = fadd double %i.q, %.pre41
  store double %i.r, ptr %5, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !175
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !118
  %i.u = load <2 x double>, ptr %6, align 16, !tbaa !118
  %i.v = fadd <2 x double> %i.u, %i.t
  store <2 x double> %i.v, ptr %6, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !175
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre43 = load double, ptr %i.w, align 8, !tbaa !118
  %i.x = load double, ptr %7, align 8, !tbaa !118
  %i.y = fadd double %i.x, %.pre43
  store double %i.y, ptr %7, align 8, !tbaa !118
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !154
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !154
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !126
  %i.ae = add i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE5flex1ERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %5 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %6 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %7 = alloca %"struct.CFF::point_t", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149
  %i.c = icmp eq i32 %i.b, 11
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50, label %bb.c, !prof !64

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load double, ptr %i.e, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !175
  %i.k = load <2 x double>, ptr %i.d, align 8, !tbaa !118 ; 2 uses
  %i.l = load <2 x double>, ptr %2, align 16, !tbaa !118
  %i.m = fadd <2 x double> %i.l, %i.k
  store <2 x double> %i.m, ptr %2, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !175
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !118
  %i.p = load <2 x double>, ptr %3, align 16, !tbaa !118
  %i.q = fadd <2 x double> %i.p, %i.o
  store <2 x double> %i.q, ptr %3, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !175
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load <2 x double>, ptr %i.r, align 8, !tbaa !118
  %i.t = load <2 x double>, ptr %4, align 16, !tbaa !118
  %i.u = fadd <2 x double> %i.t, %i.s
  store <2 x double> %i.u, ptr %4, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !175
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load <2 x double>, ptr %i.v, align 8, !tbaa !118
  %i.x = load <2 x double>, ptr %5, align 16, !tbaa !118
  %i.y = fadd <2 x double> %i.x, %i.w
  store <2 x double> %i.y, ptr %5, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !175
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !118
  %i.ab = load <2 x double>, ptr %6, align 16, !tbaa !118
  %i.ac = fadd <2 x double> %i.ab, %i.aa
  store <2 x double> %i.ac, ptr %6, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !175
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !118
  %i.ae = load <2 x double>, ptr %i.g, align 8, !tbaa !118
  %i.af = load <2 x double>, ptr %i.h, align 8, !tbaa !118
  %i.ag = load <2 x double>, ptr %i.i, align 8, !tbaa !118
  %i.ah = insertelement <2 x double> %i.k, double %.pre, i64 1
  %i.ai = fadd <2 x double> %i.ah, zeroinitializer
  %i.aj = fadd <2 x double> %i.ai, %i.ad
  %i.ak = fadd <2 x double> %i.aj, %i.ae
  %i.al = fadd <2 x double> %i.ak, %i.af
  %i.am = fadd <2 x double> %i.al, %i.ag
  %i.an = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.am) ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0
  %i.ap = extractelement <2 x double> %i.an, i64 1
  %i.aq = fcmp ogt double %i.ao, %i.ap
  br i1 %i.aq, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit59, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit62

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit59: ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre80 = load double, ptr %i.ar, align 8, !tbaa !118
  %i.as = load double, ptr %7, align 8, !tbaa !118
  %i.at = fadd double %i.as, %.pre80
  store double %i.at, ptr %7, align 8, !tbaa !118
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !154
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !154
  br label %bb.b

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit62: ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !154
  store i64 %i.ax, ptr %7, align 8, !tbaa !154
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre79 = load double, ptr %i.ay, align 8, !tbaa !118
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !118
  %i.bb = fadd double %i.ba, %.pre79
  store double %i.bb, ptr %i.az, align 8, !tbaa !118
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit62, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit59
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !126
  %i.be = add i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !71
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF7opset_tINS_8number_tEE10process_opEjRNS_12interp_env_tIS1_EE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4128) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.s [
    i32 28, label %bb.b
    i32 247, label %bb.i
    i32 248, label %bb.i
    i32 249, label %bb.i
    i32 250, label %bb.i
    i32 251, label %bb.n
    i32 252, label %bb.n
    i32 253, label %bb.n
    i32 254, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !71   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !126  ; 4 uses
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !71
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !120
  %i.h = zext i32 %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

_ZN3CFF14byte_str_ref_tixEi.exit:                 ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.f, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %.0.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.i, %bb.d ]
  %i.k = load i8, ptr %.0.i, align 1, !tbaa !121
  %i.l = zext i8 %i.k to i16
  %i.m = shl nuw i16 %i.l, 8
  %i.n = add i32 %i.j, 1                          ; 2 uses
  %.not.i18 = icmp ult i32 %i.n, %i.e
  br i1 %.not.i18, label %bb.f, label %bb.e, !prof !64

bb.e:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.o = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !71
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

bb.f:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !120
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

_ZN3CFF14byte_str_ref_tixEi.exit20:               ; preds = %bb.e, %bb.f
  %i.s = phi i32 [ %i.o, %bb.e ], [ %i.j, %bb.f ]
  %.0.i19 = phi ptr [ @_hb_NullPool, %bb.e ], [ %i.r, %bb.f ]
  %i.t = load i8, ptr %.0.i19, align 1, !tbaa !121
  %i.u = zext i8 %i.t to i16
  %i.v = or disjoint i16 %i.m, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !149  ; 3 uses
  %i.y = icmp ult i32 %i.x, 513
  br i1 %i.y, label %bb.g, label %bb.h, !prof !64

bb.g:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = add nuw nsw i32 %i.x, 1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !149
  %i.ab = zext nneg i32 %i.x to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit

bb.h:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  store i8 1, ptr %i.a, align 8, !tbaa !150
  %i.ad = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.ad, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ac, %bb.g ], [ @_hb_CrapPool, %bb.h ]
  %i.ae = sitofp i16 %i.v to double
  store double %i.ae, ptr %.0.i.i, align 8, !tbaa !118
  %i.af = add i32 %i.s, 2
  store i32 %i.af, ptr %i.b, align 4, !tbaa !71
  br label %bb.x

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = shl nuw nsw i32 %0, 8
  %i.ai = add nuw nsw i32 %i.ah, 2304
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !71 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !126 ; 2 uses
  %.not.i21 = icmp ult i32 %i.ak, %i.am
  br i1 %.not.i21, label %bb.k, label %bb.j, !prof !64

bb.j:                                             ; preds = %bb.i
  %i.an = add i32 %i.am, 1                        ; 2 uses
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !71
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

bb.k:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %1, align 8, !tbaa !120
  %i.ap = zext i32 %i.ak to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

_ZN3CFF14byte_str_ref_tixEi.exit23:               ; preds = %bb.j, %bb.k
  %i.ar = phi i32 [ %i.an, %bb.j ], [ %i.ak, %bb.k ]
  %.0.i22 = phi ptr [ @_hb_NullPool, %bb.j ], [ %i.aq, %bb.k ]
  %i.as = load i8, ptr %.0.i22, align 1, !tbaa !121
  %i.at = zext i8 %i.as to i32
  %.masked = and i32 %i.ai, 65280
  %i.au = or disjoint i32 %.masked, 108
  %sext17 = add nuw nsw i32 %i.au, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !149 ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 513
  br i1 %i.ax, label %bb.l, label %bb.m, !prof !64

bb.l:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = add nuw nsw i32 %i.aw, 1
  store i32 %i.az, ptr %i.av, align 4, !tbaa !149
  %i.ba = zext nneg i32 %i.aw to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ba
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  store i8 1, ptr %i.ag, align 8, !tbaa !150
  %i.bc = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.bc, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

end_hunk_0
begin_hunk_1_@_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE13process_blendERNS_20cff2_cs_interp_env_tIS3_EERS2_:bb.a
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !131
  %i.gf = fpext float %i.ge to double
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.next.i.i.us.2
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !118
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.gh, double %i.gc) ; 3 uses
  %indvars.iv.next.i.i.us.3 = add nuw nsw i64 %indvars.iv.i.i.us, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa, label %bb.f, !llvm.loop !168

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa, %.lr.ph.i.i.us
  %indvars.iv.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us.3, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa ]
  %.079.i.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.us ], [ %i.gi, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter103, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.i.i.us.epil = phi i64 [ %indvars.iv.i.i.us.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.us.epil, %bb.g ] ; 3 uses
  %.079.i.i.us.epil = phi double [ %.079.i.i.us.epil.init, %.epil.preheader ], [ %i.go, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i.i.us.epil
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !131
  %i.gl = fpext float %i.gk to double
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i.i.us.epil
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !118
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gl, double %i.gn, double %.079.i.i.us.epil) ; 2 uses
  %indvars.iv.next.i.i.us.epil = add nuw nsw i64 %indvars.iv.i.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter103
  br i1 %epil.iter.cmp.not, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us, label %bb.g, !llvm.loop !203

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us: ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa, %bb.g, %.lr.ph.split.us.split.split
  %.1.i.i.us = phi double [ 0.000000e+00, %.lr.ph.split.us.split.split ], [ %i.gi, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa ], [ %i.go, %bb.g ]
  %i.gp = fadd double %i.fb, %.1.i.i.us
  store double %i.gp, ptr %i.fa, align 8, !tbaa !118
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count51
  br i1 %exitcond47.not, label %._crit_edge, label %.lr.ph.split.us.split.split, !llvm.loop !204

._crit_edge:                                      ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol.loopexit, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol.loopexit, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol.loopexit, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us, %middle.block, %middle.block80, %middle.block93, %bb.e
  %i.gq = mul i32 %.0.i, %i.b                     ; 2 uses
  %.not.i = icmp ult i32 %i.l, %i.gq
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !122

bb.h:                                             ; preds = %._crit_edge
  %i.gr = sub nuw i32 %i.l, %i.gq
  store i32 %i.gr, ptr %i.d, align 4, !tbaa !149
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit

bb.i:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.c, align 8, !tbaa !150
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit: ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100.new ], [ %indvars.iv.next.3, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit ] ; 5 uses
  %i.gs = trunc nuw i64 %indvars.iv to i32
  %i.gt = add i32 %i.ab, %i.gs
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.gu ; 2 uses
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !118
  %i.gx = fadd double %i.gw, 0.000000e+00
  store double %i.gx, ptr %i.gv, align 8, !tbaa !118
  %i.gy = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.gy, %invariant.op
  %i.gz = zext i32 %.reass to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.gz ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !118
  %i.hc = fadd double %i.hb, 0.000000e+00
  store double %i.hc, ptr %i.ha, align 8, !tbaa !118
  %i.hd = trunc i64 %indvars.iv to i32
  %.reass116 = add i32 %i.hd, %invariant.op115
  %i.he = zext i32 %.reass116 to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.he ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !118
  %i.hh = fadd double %i.hg, 0.000000e+00
  store double %i.hh, ptr %i.hf, align 8, !tbaa !118
  %i.hi = trunc i64 %indvars.iv to i32
  %.reass118 = add i32 %i.hi, %invariant.op117
  %i.hj = zext i32 %.reass118 to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.hj ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !118
  %i.hm = fadd double %i.hl, 0.000000e+00
  store double %i.hm, ptr %i.hk, align 8, !tbaa !118
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit, !llvm.loop !205

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit: ; preds = %bb.i, %bb.h, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE7rmovetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !149  ; 3 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit.thread, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit, !prof !122

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = add i32 %i.d, -1                         ; 3 uses
  store i32 %i.f, ptr %i.c, align 4, !tbaa !149
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %.not.i.i7 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i7, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit.thread, label %bb.b, !prof !155

bb.b:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = add i32 %i.d, -2                         ; 2 uses
  store i32 %i.j, ptr %i.c, align 4, !tbaa !149
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %.pre = load double, ptr %i.l, align 8, !tbaa !118
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit9

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit.thread: ; preds = %bb.a, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit
  %.0.i.i21 = phi ptr [ %i.h, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit ], [ @_hb_CrapPool, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.m, align 8, !tbaa !150
  %i.n = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  store i64 %i.n, ptr @_hb_CrapPool, align 16
  %i.o = bitcast i64 %i.n to double
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit9

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit9: ; preds = %bb.b, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit.thread
  %.0.i.i20 = phi ptr [ %i.h, %bb.b ], [ %.0.i.i21, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit.thread ]
  %i.p = phi double [ %.pre, %bb.b ], [ %i.o, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit.thread ]
  %i.q = load double, ptr %.0.i.i20, align 8, !tbaa !118
  %i.r = load ptr, ptr %1, align 8, !tbaa !144    ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !147
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load <2 x float>, ptr %i.u, align 8, !tbaa !131
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !206  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !210  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !211
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit, label %bb.c, !prof !64

bb.c:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !212 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !213
  %i.af = fcmp une float %i.ac, %i.ae
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 8, !tbaa !214 ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !215
  %i.ai = fcmp une float %.pre.i.i, %i.ah
  br i1 %i.ai, label %._crit_edge.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !216
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !219 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i4.i.i, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !220
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i: ; preds = %bb.e, %._crit_edge.i.i
  %i.ap = phi ptr [ %i.ao, %bb.e ], [ null, %._crit_edge.i.i ]
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef %i.y, ptr noundef nonnull align 4 dereferenceable(48) %i.z, float noundef %i.ac, float noundef %.pre.i.i, ptr noundef %i.ap) #6, !inline_history !222
  br label %bb.f

bb.f:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !223
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !219 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i5.i.i, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !224
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i: ; preds = %bb.g, %bb.f
  %i.aw = phi ptr [ %i.av, %bb.g ], [ null, %bb.f ]
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef %i.y, ptr noundef nonnull align 4 dereferenceable(48) %i.z, ptr noundef %i.aw) #6, !inline_history !225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.z, i8 0, i64 12, i1 false)
  br label %_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit

_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit9, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i
  %i.ax = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.q, i64 1
  %i.az = fadd <2 x double> %i.b, %i.ay           ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.bb = fptrunc <2 x double> %i.az to <2 x float>
  %i.bc = fmul <2 x float> %i.v, %i.bb
  store <2 x float> %i.bc, ptr %i.ba, align 4, !tbaa !131
  store <2 x double> %i.az, ptr %i.a, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE7hmovetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.a, align 8, !tbaa !154
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !154 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !149  ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !122

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !149
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.pre = load double, ptr %i.g, align 8, !tbaa !118
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.h, align 8, !tbaa !150
  %i.i = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  store i64 %i.i, ptr @_hb_CrapPool, align 16
  %i.j = bitcast i64 %i.i to double
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi double [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %1, align 8, !tbaa !144    ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load <2 x float>, ptr %i.o, align 8, !tbaa !131
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !206  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !210  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !211
  %.not.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i, label %_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit, label %bb.d, !prof !64

bb.d:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.w = load float, ptr %i.v, align 4, !tbaa !212 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.y = load float, ptr %i.x, align 4, !tbaa !213
  %i.z = fcmp une float %i.w, %i.y
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 8, !tbaa !214 ; 2 uses
  br i1 %i.z, label %._crit_edge.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !215
  %i.ac = fcmp une float %.pre.i.i, %i.ab
  br i1 %i.ac, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !216
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !219 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i4.i.i, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !220
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i: ; preds = %bb.f, %._crit_edge.i.i
  %i.aj = phi ptr [ %i.ai, %bb.f ], [ null, %._crit_edge.i.i ]
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef %i.s, ptr noundef nonnull align 4 dereferenceable(48) %i.t, float noundef %i.w, float noundef %.pre.i.i, ptr noundef %i.aj) #6, !inline_history !222
  br label %bb.g

bb.g:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !223
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !219 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i5.i.i, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !224
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i: ; preds = %bb.h, %bb.g
  %i.aq = phi ptr [ %i.ap, %bb.h ], [ null, %bb.g ]
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef %i.s, ptr noundef nonnull align 4 dereferenceable(48) %i.t, ptr noundef %i.aq) #6, !inline_history !225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, i8 0, i64 12, i1 false)
  br label %_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit

_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i
  %i.ar = fadd double %.sroa.0.0.copyload, %i.k   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.at = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.au = insertelement <2 x double> %i.at, double %.sroa.7.0.copyload, i64 1
  %i.av = fptrunc <2 x double> %i.au to <2 x float>
  %i.aw = fmul <2 x float> %i.p, %i.av
  store <2 x float> %i.aw, ptr %i.as, align 4, !tbaa !131
  store double %i.ar, ptr %i.a, align 8, !tbaa !154
  store double %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE7vmovetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.a, align 8, !tbaa !154 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !154
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !149  ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !122

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !149
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.pre = load double, ptr %i.g, align 8, !tbaa !118
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.h, align 8, !tbaa !150
  %i.i = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  store i64 %i.i, ptr @_hb_CrapPool, align 16
  %i.j = bitcast i64 %i.i to double
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi double [ %.pre, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr %1, align 8, !tbaa !144    ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load <2 x float>, ptr %i.o, align 8, !tbaa !131
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !206  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !210  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !211
  %.not.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i, label %_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit, label %bb.d, !prof !64

bb.d:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.w = load float, ptr %i.v, align 4, !tbaa !212 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.y = load float, ptr %i.x, align 4, !tbaa !213
  %i.z = fcmp une float %i.w, %i.y
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 8, !tbaa !214 ; 2 uses
  br i1 %i.z, label %._crit_edge.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !215
  %i.ac = fcmp une float %.pre.i.i, %i.ab
  br i1 %i.ac, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !216
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !219 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i4.i.i, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !220
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i: ; preds = %bb.f, %._crit_edge.i.i
  %i.aj = phi ptr [ %i.ai, %bb.f ], [ null, %._crit_edge.i.i ]
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef %i.s, ptr noundef nonnull align 4 dereferenceable(48) %i.t, float noundef %i.w, float noundef %.pre.i.i, ptr noundef %i.aj) #6, !inline_history !222
  br label %bb.g

bb.g:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !223
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !219 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i5.i.i, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !224
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i: ; preds = %bb.h, %bb.g
  %i.aq = phi ptr [ %i.ap, %bb.h ], [ null, %bb.g ]
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef %i.s, ptr noundef nonnull align 4 dereferenceable(48) %i.t, ptr noundef %i.aq) #6, !inline_history !225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, i8 0, i64 12, i1 false)
  br label %_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit

_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i
  %i.ar = fadd double %.sroa.5.0.copyload, %i.k   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.at = insertelement <2 x double> poison, double %.sroa.0.0.copyload, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.ar, i64 1
  %i.av = fptrunc <2 x double> %i.au to <2 x float>
  %i.aw = fmul <2 x float> %i.p, %i.av
  store <2 x float> %i.aw, ptr %i.as, align 4, !tbaa !131
  store double %.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !154
  store double %i.ar, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE7rlinetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !149  ; 2 uses
  %.not18 = icmp ult i32 %i.c, 2
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %i.e = load i64, ptr @_hb_NullPool, align 16    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !154
  %i.i = bitcast i64 %i.e to double
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit
  %i.j = phi i32 [ %i.c, %.lr.ph ], [ %i.as, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit ] ; 2 uses
  %i.k = phi i32 [ 2, %.lr.ph ], [ %i.ar, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit ] ; 2 uses
  %.019 = phi i32 [ 0, %.lr.ph ], [ %i.k, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit ] ; 3 uses
  %i.l = phi <2 x double> [ %i.h, %.lr.ph ], [ %i.v, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit ]
  %.not.i.i = icmp ult i32 %.019, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !150
  store i64 %i.e, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit

bb.d:                                             ; preds = %bb.b
  %i.m = zext i32 %.019 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.m
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.n, %bb.d ]
  %i.o = or disjoint i32 %.019, 1                 ; 2 uses
  %.not.i.i10 = icmp ult i32 %i.o, %i.j
  br i1 %.not.i.i10, label %bb.f, label %bb.e, !prof !64

bb.e:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit
  store i8 1, ptr %i.a, align 8, !tbaa !150
  store i64 %i.e, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit12

bb.f:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.p
  %.pre = load double, ptr %i.q, align 8, !tbaa !118
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit12

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit12: ; preds = %bb.e, %bb.f
  %i.r = phi double [ %i.i, %bb.e ], [ %.pre, %bb.f ]
  %i.s = load double, ptr %.0.i.i, align 8, !tbaa !118
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.r, i64 1
  %i.v = fadd <2 x double> %i.l, %i.u             ; 3 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !144    ; 4 uses
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load <2 x float>, ptr %i.y, align 8, !tbaa !131
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !206 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !210 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !211
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.g, label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i, !prof !122

bb.g:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit12
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(48) %i.ad)
  br label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i

_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i: ; preds = %bb.g, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit12
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !216
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !219 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i3.i.i, label %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !220
  br label %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit

_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i, %bb.h
  %i.al = phi ptr [ %i.ak, %bb.h ], [ null, %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i ]
  %i.am = fptrunc <2 x double> %i.v to <2 x float>
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.ao = fmul <2 x float> %i.z, %i.am            ; 3 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 0
  %i.aq = extractelement <2 x float> %i.ao, i64 1
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(48) %i.ad, float noundef %i.ap, float noundef %i.aq, ptr noundef %i.al) #6, !inline_history !226
  store <2 x float> %i.ao, ptr %i.an, align 4, !tbaa !131
  store <2 x double> %i.v, ptr %i.d, align 8, !tbaa !154
  %i.ar = add i32 %i.k, 2                         ; 2 uses
  %i.as = load i32, ptr %i.b, align 4, !tbaa !149 ; 2 uses
  %.not = icmp ugt i32 %i.ar, %i.as
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !227
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE7hlinetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !149  ; 3 uses
  %.not53 = icmp ult i32 %i.c, 2
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 3 uses
  %i.e = load i64, ptr @_hb_NullPool, align 16    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.pre = load double, ptr %i.d, align 8, !tbaa !154
  %.sroa.15.0.copyload.pre = load double, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !154
  %i.h = bitcast i64 %i.e to double
  %i.i = bitcast i64 %i.e to double
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit25
  %i.j = phi i32 [ %i.c, %.lr.ph ], [ %i.bp, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit25 ]
  %.sroa.15.0.copyload = phi double [ %.sroa.15.0.copyload.pre, %.lr.ph ], [ %i.ar, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit25 ] ; 3 uses
  %.sroa.0.0.copyload = phi double [ %.sroa.0.0.copyload.pre, %.lr.ph ], [ %i.o, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit25 ]
  %i.k = phi i32 [ 2, %.lr.ph ], [ %i.bo, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit25 ] ; 3 uses
  %.054 = phi i32 [ 0, %.lr.ph ], [ %i.k, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit25 ] ; 3 uses
  %.not.i.i = icmp ult i32 %.054, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !150
  store i64 %i.e, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %.054 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.l
  %.pre = load double, ptr %i.m, align 8, !tbaa !118
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.c, %bb.d
  %i.n = phi double [ %i.h, %bb.c ], [ %.pre, %bb.d ]
  %i.o = fadd double %.sroa.0.0.copyload, %i.n    ; 4 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !144    ; 4 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load <2 x float>, ptr %i.r, align 8, !tbaa !131
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !206  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !210  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !211
  %.not.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i, !prof !122

bb.e:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef %i.v, ptr noundef nonnull align 4 dereferenceable(48) %i.w)
  br label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i

_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i: ; preds = %bb.e, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !216
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !219 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i3.i.i, label %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !220
  br label %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit

_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i, %bb.f
  %i.ae = phi ptr [ %i.ad, %bb.f ], [ null, %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit.i.i ]
  %i.af = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %.sroa.15.0.copyload, i64 1
  %i.ah = fptrunc <2 x double> %i.ag to <2 x float> ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE9hvcurvetoERS4_RS5_:bb.a
  %i.ho = fmul float %i.gw, %i.hn                 ; 3 uses
  %i.hp = fptrunc double %i.gn to float
  %i.hq = fmul float %i.gy, %i.hp
  %i.hr = fptrunc double %.sroa.11.0.copyload to float
  %i.hs = fmul float %i.gy, %i.hr
  %i.ht = fptrunc double %i.gd to float
  %i.hu = fmul float %i.gw, %i.ht
  tail call void %i.hf(ptr noundef nonnull align 8 dereferenceable(72) %i.gz, ptr noundef %i.hb, ptr noundef nonnull align 4 dereferenceable(48) %i.hc, float noundef %i.hu, float noundef %i.hs, float noundef %i.ho, float noundef %i.hq, float noundef %i.ho, float noundef %i.hm, ptr noundef %i.hk) #6, !inline_history !232
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gt, i64 28
  store float %i.ho, ptr %i.hv, align 4, !tbaa !213
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  store float %i.hm, ptr %i.hw, align 8, !tbaa !215
  store double %i.gm, ptr %i.e, align 8, !tbaa !154
  store double %i.gs, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !154
  %i.hx = or disjoint i32 %.1254, 4               ; 2 uses
  %i.hy = load i32, ptr %i.b, align 4, !tbaa !149 ; 7 uses
  %.not.i.i134 = icmp ult i32 %i.hx, %i.hy
  br i1 %.not.i.i134, label %bb.al, label %bb.ak, !prof !64

bb.ak:                                            ; preds = %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit133
  store i8 1, ptr %i.a, align 8, !tbaa !150
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136

bb.al:                                            ; preds = %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit133
  %i.hz = zext i32 %i.hx to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.hz
  %.pre276 = load double, ptr %i.ia, align 8, !tbaa !118
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136: ; preds = %bb.ak, %bb.al
  %i.ib = phi double [ %i.l, %bb.ak ], [ %.pre276, %bb.al ]
  %i.ic = fadd double %i.gs, %i.ib                ; 2 uses
  %i.id = or disjoint i32 %.1254, 5               ; 2 uses
  %.not.i.i137 = icmp ult i32 %i.id, %i.hy
  br i1 %.not.i.i137, label %bb.an, label %bb.am, !prof !64

bb.am:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136
  store i8 1, ptr %i.a, align 8, !tbaa !150
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit139

bb.an:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ie
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit139

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit139: ; preds = %bb.am, %bb.an
  %.0.i.i138 = phi ptr [ @_hb_CrapPool, %bb.am ], [ %i.if, %bb.an ]
  %i.ig = or disjoint i32 %.1254, 6               ; 2 uses
  %.not.i.i140 = icmp ult i32 %i.ig, %i.hy
  br i1 %.not.i.i140, label %bb.ap, label %bb.ao, !prof !64

bb.ao:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit139
  store i8 1, ptr %i.a, align 8, !tbaa !150
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit142

bb.ap:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit139
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ih
  %.pre277 = load double, ptr %i.ii, align 8, !tbaa !118
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit142

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit142: ; preds = %bb.ao, %bb.ap
  %i.ij = phi double [ %i.m, %bb.ao ], [ %.pre277, %bb.ap ]
  %i.ik = load double, ptr %.0.i.i138, align 8, !tbaa !118
  %i.il = fadd double %i.gm, %i.ik                ; 2 uses
  %i.im = fadd double %i.ic, %i.ij                ; 3 uses
  %i.in = or disjoint i32 %.1254, 7               ; 2 uses
  %.not.i.i143 = icmp ult i32 %i.in, %i.hy
  br i1 %.not.i.i143, label %bb.ar, label %bb.aq, !prof !64

bb.aq:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit142
  store i8 1, ptr %i.a, align 8, !tbaa !150
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145

bb.ar:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit142
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.io
  %.pre278 = load double, ptr %i.ip, align 8, !tbaa !118
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145: ; preds = %bb.aq, %bb.ar
  %i.iq = phi double [ %i.n, %bb.aq ], [ %.pre278, %bb.ar ]
  %i.ir = fadd double %i.il, %i.iq                ; 3 uses
  %i.is = sub i32 %i.hy, %.1254
  %i.it = icmp ugt i32 %i.is, 15
  %i.iu = and i32 %i.hy, 1
  %.not72 = icmp eq i32 %i.iu, 0
  %or.cond = or i1 %i.it, %.not72
  br i1 %or.cond, label %bb.av, label %bb.as

bb.as:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145
  %.not.i.i146 = icmp ult i32 %i.fz, %i.hy
  br i1 %.not.i.i146, label %bb.au, label %bb.at, !prof !64

bb.at:                                            ; preds = %bb.as
  store i8 1, ptr %i.a, align 8, !tbaa !150
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit148

bb.au:                                            ; preds = %bb.as
  %i.iv = zext i32 %i.fz to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.iv
  %.pre279 = load double, ptr %i.iw, align 8, !tbaa !118
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit148

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit148: ; preds = %bb.at, %bb.au
  %i.ix = phi double [ %i.o, %bb.at ], [ %.pre279, %bb.au ]
  %i.iy = fadd double %i.im, %i.ix
  br label %bb.av

bb.av:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit148, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145
  %.sroa.12.0 = phi double [ %i.im, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145 ], [ %i.iy, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit148 ] ; 3 uses
  %i.iz = load ptr, ptr %1, align 8, !tbaa !144   ; 4 uses
  %i.ja = load ptr, ptr %i.h, align 8, !tbaa !147
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 80
  %i.jc = load <2 x float>, ptr %i.jb, align 8, !tbaa !131 ; 3 uses
  %i.jd = load ptr, ptr %i.iz, align 8, !tbaa !206 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !210 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 3 uses
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !211
  %.not.i.i.i149 = icmp eq i32 %i.jh, 0
  br i1 %.not.i.i.i149, label %bb.aw, label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i150, !prof !122

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.jd, ptr noundef %i.jf, ptr noundef nonnull align 4 dereferenceable(48) %i.jg)
  br label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i150

_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i150: ; preds = %bb.aw, %bb.av
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !230
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !219 ; 2 uses
  %.not.i7.i.i151 = icmp eq ptr %i.jl, null
  br i1 %.not.i7.i.i151, label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152, label %bb.ax

bb.ax:                                            ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i150
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !231
  br label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152

_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152: ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i150, %bb.ax
  %i.jo = phi ptr [ %i.jn, %bb.ax ], [ null, %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i150 ]
  %i.jp = insertelement <2 x double> poison, double %i.ir, i64 0
  %i.jq = insertelement <2 x double> %i.jp, double %.sroa.12.0, i64 1
  %i.jr = fptrunc <2 x double> %i.jq to <2 x float>
  %i.js = fptrunc double %i.im to float
  %i.jt = extractelement <2 x float> %i.jc, i64 1 ; 2 uses
  %i.ju = fmul float %i.jt, %i.js
  %i.jv = fptrunc double %i.il to float
  %i.jw = extractelement <2 x float> %i.jc, i64 0 ; 2 uses
  %i.jx = fmul float %i.jw, %i.jv
  %i.jy = fptrunc double %i.ic to float
  %i.jz = fmul float %i.jt, %i.jy
  %i.ka = fmul float %i.jw, %i.hn
  %i.kb = getelementptr inbounds nuw i8, ptr %i.iz, i64 28
  %i.kc = fmul <2 x float> %i.jc, %i.jr           ; 3 uses
  %i.kd = extractelement <2 x float> %i.kc, i64 0
  %i.ke = extractelement <2 x float> %i.kc, i64 1
  tail call void %i.jj(ptr noundef nonnull align 8 dereferenceable(72) %i.jd, ptr noundef %i.jf, ptr noundef nonnull align 4 dereferenceable(48) %i.jg, float noundef %i.ka, float noundef %i.jz, float noundef %i.jx, float noundef %i.ju, float noundef %i.kd, float noundef %i.ke, ptr noundef %i.jo) #6, !inline_history !232
  store <2 x float> %i.kc, ptr %i.kb, align 4, !tbaa !131
  store double %i.ir, ptr %i.e, align 8, !tbaa !154
  store double %.sroa.12.0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !154
  %i.kf = add i32 %i.fz, 8                        ; 2 uses
  %i.kg = load i32, ptr %i.b, align 4, !tbaa !149 ; 2 uses
  %.not71 = icmp ugt i32 %i.kf, %i.kg
  br i1 %.not71, label %.loopexit, label %bb.z, !llvm.loop !243

.loopexit:                                        ; preds = %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152, %.preheader, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit117
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE5hflexERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 8     ; 8 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %5 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %6 = alloca %"struct.CFF::point_t", align 8     ; 8 uses
  %7 = alloca %"struct.CFF::point_t", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit29, label %bb.b, !prof !64

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit29: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load double, ptr %2, align 8, !tbaa !118
  %i.g = load double, ptr %i.e, align 8, !tbaa !118
  %i.h = fadd double %i.f, %i.g
  store double %i.h, ptr %2, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !175
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !118
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !118
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !175
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre30 = load double, ptr %i.m, align 8, !tbaa !118
  %i.n = load double, ptr %4, align 8, !tbaa !118
  %i.o = fadd double %i.n, %.pre30
  store double %i.o, ptr %4, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !175
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre31 = load double, ptr %i.p, align 8, !tbaa !118
  %i.q = load double, ptr %5, align 8, !tbaa !118
  %i.r = fadd double %i.q, %.pre31
  store double %i.r, ptr %5, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !175
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre32 = load double, ptr %i.s, align 8, !tbaa !118
  %i.t = load double, ptr %6, align 8, !tbaa !118
  %i.u = fadd double %i.t, %.pre32
  store double %i.u, ptr %6, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load i64, ptr %i.v, align 8, !tbaa !154
  store i64 %i.x, ptr %i.w, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !175
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre33 = load double, ptr %i.y, align 8, !tbaa !118
  %i.z = load double, ptr %7, align 8, !tbaa !118
  %i.aa = fadd double %i.z, %.pre33
  store double %i.aa, ptr %7, align 8, !tbaa !118
  call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE6curve2ERS4_RS5_RKNS_7point_tESB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !126
  %i.ad = add i32 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE4flexERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %5 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %6 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %7 = alloca %"struct.CFF::point_t", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149
  %i.c = icmp eq i32 %i.b, 13
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49, label %bb.b, !prof !64

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !118
  %i.g = load <2 x double>, ptr %2, align 16, !tbaa !118
  %i.h = fadd <2 x double> %i.g, %i.f
  store <2 x double> %i.h, ptr %2, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !175
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !118
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !118
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !175
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !118
  %i.o = load <2 x double>, ptr %4, align 16, !tbaa !118
  %i.p = fadd <2 x double> %i.o, %i.n
  store <2 x double> %i.p, ptr %4, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !175
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load <2 x double>, ptr %i.q, align 8, !tbaa !118
  %i.s = load <2 x double>, ptr %5, align 16, !tbaa !118
  %i.t = fadd <2 x double> %i.s, %i.r
  store <2 x double> %i.t, ptr %5, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !175
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load <2 x double>, ptr %i.u, align 8, !tbaa !118
  %i.w = load <2 x double>, ptr %6, align 16, !tbaa !118
  %i.x = fadd <2 x double> %i.w, %i.v
  store <2 x double> %i.x, ptr %6, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !175
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !118
  %i.aa = load <2 x double>, ptr %7, align 16, !tbaa !118
  %i.ab = fadd <2 x double> %i.aa, %i.z
  store <2 x double> %i.ab, ptr %7, align 16, !tbaa !118
  call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE6curve2ERS4_RS5_RKNS_7point_tESB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !126
  %i.ae = add i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE6hflex1ERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %5 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %6 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %7 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149
  %i.c = icmp eq i32 %i.b, 9
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit38, label %bb.b, !prof !64

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit38: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !118
  %i.g = load <2 x double>, ptr %2, align 16, !tbaa !118
  %i.h = fadd <2 x double> %i.g, %i.f
  store <2 x double> %i.h, ptr %2, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !175
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !118
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !118
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !175
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre40 = load double, ptr %i.m, align 8, !tbaa !118
  %i.n = load double, ptr %4, align 8, !tbaa !118
  %i.o = fadd double %i.n, %.pre40
  store double %i.o, ptr %4, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !175
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre41 = load double, ptr %i.p, align 8, !tbaa !118
  %i.q = load double, ptr %5, align 8, !tbaa !118
  %i.r = fadd double %i.q, %.pre41
  store double %i.r, ptr %5, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !175
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !118
  %i.u = load <2 x double>, ptr %6, align 16, !tbaa !118
  %i.v = fadd <2 x double> %i.u, %i.t
  store <2 x double> %i.v, ptr %6, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !175
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre43 = load double, ptr %i.w, align 8, !tbaa !118
  %i.x = load double, ptr %7, align 8, !tbaa !118
  %i.y = fadd double %i.x, %.pre43
  store double %i.y, ptr %7, align 8, !tbaa !118
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !154
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !154
  call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE6curve2ERS4_RS5_RKNS_7point_tESB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !126
  %i.ae = add i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE5flex1ERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %5 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %6 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %7 = alloca %"struct.CFF::point_t", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149
  %i.c = icmp eq i32 %i.b, 11
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50, label %bb.c, !prof !64

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load double, ptr %i.e, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !175
  %i.k = load <2 x double>, ptr %i.d, align 8, !tbaa !118 ; 2 uses
  %i.l = load <2 x double>, ptr %2, align 16, !tbaa !118
  %i.m = fadd <2 x double> %i.l, %i.k
  store <2 x double> %i.m, ptr %2, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !175
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !118
  %i.p = load <2 x double>, ptr %3, align 16, !tbaa !118
  %i.q = fadd <2 x double> %i.p, %i.o
  store <2 x double> %i.q, ptr %3, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !175
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load <2 x double>, ptr %i.r, align 8, !tbaa !118
  %i.t = load <2 x double>, ptr %4, align 16, !tbaa !118
  %i.u = fadd <2 x double> %i.t, %i.s
  store <2 x double> %i.u, ptr %4, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !175
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load <2 x double>, ptr %i.v, align 8, !tbaa !118
  %i.x = load <2 x double>, ptr %5, align 16, !tbaa !118
  %i.y = fadd <2 x double> %i.x, %i.w
  store <2 x double> %i.y, ptr %5, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !175
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !118
  %i.ab = load <2 x double>, ptr %6, align 16, !tbaa !118
  %i.ac = fadd <2 x double> %i.ab, %i.aa
  store <2 x double> %i.ac, ptr %6, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !175
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !118
  %i.ae = load <2 x double>, ptr %i.g, align 8, !tbaa !118
  %i.af = load <2 x double>, ptr %i.h, align 8, !tbaa !118
  %i.ag = load <2 x double>, ptr %i.i, align 8, !tbaa !118
  %i.ah = insertelement <2 x double> %i.k, double %.pre, i64 1
  %i.ai = fadd <2 x double> %i.ah, zeroinitializer
  %i.aj = fadd <2 x double> %i.ai, %i.ad
  %i.ak = fadd <2 x double> %i.aj, %i.ae
  %i.al = fadd <2 x double> %i.ak, %i.af
  %i.am = fadd <2 x double> %i.al, %i.ag
  %i.an = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.am) ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0
  %i.ap = extractelement <2 x double> %i.an, i64 1
  %i.aq = fcmp ogt double %i.ao, %i.ap
  br i1 %i.aq, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit59, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit62

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit59: ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre80 = load double, ptr %i.ar, align 8, !tbaa !118
  %i.as = load double, ptr %7, align 8, !tbaa !118
  %i.at = fadd double %i.as, %.pre80
  store double %i.at, ptr %7, align 8, !tbaa !118
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !154
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !154
  br label %bb.b

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit62: ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !154
  store i64 %i.ax, ptr %7, align 8, !tbaa !154
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre79 = load double, ptr %i.ay, align 8, !tbaa !118
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !118
  %i.bb = fadd double %i.ba, %.pre79
  store double %i.bb, ptr %i.az, align 8, !tbaa !118
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit62, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit59
  call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE6curve2ERS4_RS5_RKNS_7point_tESB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !126
  %i.be = add i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !71
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !213
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !215
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !244
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !219  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN15hb_draw_funcs_t12emit_move_toEPvR15hb_draw_state_tff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !245
  br label %_ZN15hb_draw_funcs_t12emit_move_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_move_toEPvR15hb_draw_state_tff.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2, float noundef %i.b, float noundef %i.d, ptr noundef %i.j) #6, !inline_history !246
  store i32 1, ptr %2, align 4, !tbaa !211
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load <2 x float>, ptr %i.a, align 4, !tbaa !131
  store <2 x float> %i.l, ptr %i.k, align 4, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE6curve2ERS4_RS5_RKNS_7point_tESB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !144    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load <2 x double>, ptr %2, align 8, !tbaa !118
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.g = load <2 x double>, ptr %3, align 8, !tbaa !118
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.i = load <2 x float>, ptr %i.d, align 8, !tbaa !131 ; 2 uses
  %i.j = load <2 x double>, ptr %4, align 8, !tbaa !118
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !206  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !210  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !211
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i, !prof !122

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef %i.m, ptr noundef nonnull align 4 dereferenceable(48) %i.n)
  br label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i

_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i: ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !230
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !219  ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i7.i.i, label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !231
  br label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit

_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit: ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i, %bb.c
  %i.v = phi ptr [ %i.u, %bb.c ], [ null, %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i ]
  %i.w = fptrunc <2 x double> %i.j to <2 x float>
  %i.x = shufflevector <2 x double> %i.h, <2 x double> %i.f, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.y = fptrunc <4 x double> %i.x to <4 x float>
  %i.z = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.aa = fmul <4 x float> %i.z, %i.y             ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ac = fmul <2 x float> %i.i, %i.w             ; 3 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 0
  %i.ae = extractelement <2 x float> %i.ac, i64 1
  %i.af = extractelement <4 x float> %i.aa, i64 0
  %i.ag = extractelement <4 x float> %i.aa, i64 1
  %i.ah = extractelement <4 x float> %i.aa, i64 2
  %i.ai = extractelement <4 x float> %i.aa, i64 3
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef %i.m, ptr noundef nonnull align 4 dereferenceable(48) %i.n, float noundef %i.ai, float noundef %i.ah, float noundef %i.ag, float noundef %i.af, float noundef %i.ad, float noundef %i.ae, ptr noundef %i.v) #6, !inline_history !232
  store <2 x float> %i.ac, ptr %i.ab, align 4, !tbaa !131
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !175
  %i.ak = load ptr, ptr %1, align 8, !tbaa !144   ; 4 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !147
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.an = load <2 x double>, ptr %5, align 8, !tbaa !118
  %i.ao = load <2 x double>, ptr %6, align 8, !tbaa !118
  %i.ap = load <2 x float>, ptr %i.am, align 8, !tbaa !131 ; 2 uses
  %i.aq = load <2 x double>, ptr %7, align 8, !tbaa !118
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !206 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !210 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !211
  %.not.i.i.i10 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i10, label %bb.d, label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i11, !prof !122

bb.d:                                             ; preds = %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef %i.at, ptr noundef nonnull align 4 dereferenceable(48) %i.au)
  br label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i11

_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i11: ; preds = %bb.d, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !230
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !219 ; 2 uses
  %.not.i7.i.i12 = icmp eq ptr %i.az, null
  br i1 %.not.i7.i.i12, label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !231
  br label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit13

_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit13: ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i11, %bb.e
  %i.bc = phi ptr [ %i.bb, %bb.e ], [ null, %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit.i.i11 ]
  %i.bd = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.be = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = fptrunc <2 x double> %i.aq to <2 x float>
  %i.bg = shufflevector <2 x double> %i.bd, <2 x double> %i.be, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bh = fptrunc <4 x double> %i.bg to <4 x float>
  %i.bi = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.bj = fmul <4 x float> %i.bi, %i.bh           ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.bl = fmul <2 x float> %i.ap, %i.bf           ; 3 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 0
  %i.bn = extractelement <2 x float> %i.bl, i64 1
  %i.bo = extractelement <4 x float> %i.bj, i64 0
  %i.bp = extractelement <4 x float> %i.bj, i64 1
  %i.bq = extractelement <4 x float> %i.bj, i64 2
  %i.br = extractelement <4 x float> %i.bj, i64 3
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef %i.at, ptr noundef nonnull align 4 dereferenceable(48) %i.au, float noundef %i.br, float noundef %i.bq, float noundef %i.bp, float noundef %i.bo, float noundef %i.bm, float noundef %i.bn, ptr noundef %i.bc) #6, !inline_history !232
  store <2 x float> %i.bl, ptr %i.bk, align 4, !tbaa !131
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !175
  ret void
}
end_hunk_2
